id sub_29D9F0F44()
{
  v24[1] = *MEMORY[0x29EDCA608];
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = *(v0 + 32);
  v6 = sub_29DA33694();
  v7 = sub_29DA34824();
  v24[0] = 0;
  LODWORD(v5) = [v5 setDate:v6 forKey:v7 error:v24];

  v8 = v24[0];
  if (v5)
  {

    return v8;
  }

  else
  {
    v23 = v24[0];
    v10 = v24[0];
    v11 = sub_29DA335D4();

    swift_willThrow();
    sub_29DA34614();

    v12 = v11;
    v13 = sub_29DA34634();
    v14 = sub_29DA34B84();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v24[0] = v16;
      *v15 = 136446466;
      v17 = HighlightAlertStateManager.description.getter();
      v19 = sub_29D9EBB44(v17, v18, v24);

      *(v15 + 4) = v19;
      *(v15 + 12) = 2082;
      swift_getErrorValue();
      v20 = sub_29DA35154();
      v22 = sub_29D9EBB44(v20, v21, v24);

      *(v15 + 14) = v22;
      _os_log_impl(&dword_29D9BB000, v13, v14, "%{public}s: failed to set migration completion date with error: %{public}s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v16, -1, -1);
      MEMORY[0x29ED6E4C0](v15, -1, -1);
    }

    else
    {
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t HighlightAlertStateManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29D9F131C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();

  v9 = sub_29DA34634();
  v10 = sub_29DA34B64();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v18 = a2;
    v12 = v11;
    v13 = swift_slowAlloc();
    v19 = v13;
    *v12 = 136446467;
    v14 = HighlightAlertStateManager.description.getter();
    v16 = sub_29D9EBB44(v14, v15, &v19);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2081;
    *(v12 + 14) = sub_29D9EBB44(v18, a3, &v19);
    _os_log_impl(&dword_29D9BB000, v9, v10, "%{public}s: finished alert state migration with key: %{private}s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v13, -1, -1);
    MEMORY[0x29ED6E4C0](v12, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_29D9F151C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_29D9F30D0(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x2A1C7C4A8](v8);
  (*(v10 + 16))(aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v9);
  v12 = (*(v10 + 80) + 40) & ~*(v10 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = a2;
  *(v13 + 3) = a3;
  *(v13 + 4) = a4;
  (*(v10 + 32))(&v13[v12], aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
  v14 = *(a2 + 24);

  v15 = sub_29DA34824();
  v16 = swift_allocObject();
  v16[2] = a2;
  v16[3] = a3;
  v16[4] = a4;
  v16[5] = sub_29D9F315C;
  v16[6] = v13;
  aBlock[4] = sub_29D9F31D4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29D9F2C98;
  aBlock[3] = &unk_2A24615D0;
  v17 = _Block_copy(aBlock);

  [v14 valueForKey:v15 callback:v17];
  _Block_release(v17);
}

uint64_t sub_29D9F1758(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v68 = a5;
  v62 = a3;
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v65 = &v61 - v8;
  v9 = sub_29DA34644();
  v66 = *(v9 - 8);
  v67 = v9;
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v61 = &v61 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v14 = &v61 - v13;
  MEMORY[0x2A1C7C4A8](v12);
  v16 = &v61 - v15;
  sub_29D9F31FC(0);
  v18 = MEMORY[0x2A1C7C4A8](v17);
  v20 = (&v61 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = MEMORY[0x2A1C7C4A8](v18);
  v23 = (&v61 - v22);
  MEMORY[0x2A1C7C4A8](v21);
  v25 = &v61 - v24;
  v26 = type metadata accessor for HighlightAlertState(0);
  v63 = *(v26 - 8);
  v64 = v26;
  MEMORY[0x2A1C7C4A8](v26);
  v28 = &v61 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F2F34(a1, v25, sub_29D9F31FC);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_29D9EE9AC(v25, v28);
    sub_29DA34614();

    v37 = sub_29DA34634();
    v38 = sub_29DA34B64();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v70 = v40;
      *v39 = 136446467;
      v41 = HighlightAlertStateManager.description.getter();
      v43 = sub_29D9EBB44(v41, v42, &v70);

      *(v39 + 4) = v43;
      *(v39 + 12) = 2081;
      *(v39 + 14) = sub_29D9EBB44(v62, a4, &v70);
      _os_log_impl(&dword_29D9BB000, v37, v38, "%{public}s: found existing alert state for migration with key: %{private}s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v40, -1, -1);
      MEMORY[0x29ED6E4C0](v39, -1, -1);
    }

    (*(v66 + 8))(v16, v67);
    v44 = v65;
    sub_29D9F2F34(v28, v65, type metadata accessor for HighlightAlertState);
    (*(v63 + 56))(v44, 0, 1, v64);
    sub_29D9F30D0(0);
    sub_29DA349E4();
    v45 = type metadata accessor for HighlightAlertState;
    v46 = v28;
    return sub_29D9F3070(v46, v45);
  }

  sub_29D9F3070(v25, sub_29D9F31FC);
  sub_29D9F2F34(a1, v23, sub_29D9F31FC);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v70 = *v23;
    sub_29D9C6144();
    if ((swift_dynamicCast() & 1) != 0 && !v69)
    {
      sub_29DA34614();

      v29 = sub_29DA34634();
      v30 = sub_29DA34B64();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v70 = v32;
        *v31 = 136446467;
        v33 = HighlightAlertStateManager.description.getter();
        v35 = sub_29D9EBB44(v33, v34, &v70);

        *(v31 + 4) = v35;
        *(v31 + 12) = 2081;
        *(v31 + 14) = sub_29D9EBB44(v62, a4, &v70);
        _os_log_impl(&dword_29D9BB000, v29, v30, "%{public}s: no existing alert state for migration with key: %{private}s", v31, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v32, -1, -1);
        MEMORY[0x29ED6E4C0](v31, -1, -1);
      }

      (*(v66 + 8))(v14, v67);
      (*(v63 + 56))(v65, 1, 1, v64);
      sub_29D9F30D0(0);
      return sub_29DA349E4();
    }
  }

  else
  {
    sub_29D9F3070(v23, sub_29D9F31FC);
  }

  sub_29D9F2F34(a1, v20, sub_29D9F31FC);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v45 = sub_29D9F31FC;
    v46 = v20;
    return sub_29D9F3070(v46, v45);
  }

  v47 = *v20;
  v48 = v61;
  sub_29DA34614();

  v49 = a4;

  v50 = v47;
  v51 = sub_29DA34634();
  v52 = sub_29DA34B84();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v70 = v54;
    *v53 = 136446723;
    v55 = HighlightAlertStateManager.description.getter();
    v57 = sub_29D9EBB44(v55, v56, &v70);

    *(v53 + 4) = v57;
    *(v53 + 12) = 2081;
    *(v53 + 14) = sub_29D9EBB44(v62, v49, &v70);
    *(v53 + 22) = 2082;
    swift_getErrorValue();
    v58 = sub_29DA35154();
    v60 = sub_29D9EBB44(v58, v59, &v70);

    *(v53 + 24) = v60;
    _os_log_impl(&dword_29D9BB000, v51, v52, "%{public}s: failure fetching alert state for migration with key: %{private}s, error: %{public}s", v53, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v54, -1, -1);
    MEMORY[0x29ED6E4C0](v53, -1, -1);
  }

  (*(v66 + 8))(v48, v67);
  v70 = v47;
  sub_29D9F30D0(0);
  return sub_29DA349D4();
}

uint64_t sub_29D9F1FCC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *), uint64_t a7)
{
  v99 = a7;
  v100 = a6;
  v96 = a5;
  v93 = a4;
  v92 = a1;
  v94 = sub_29DA34644();
  v95 = *(v94 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v94);
  v91 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  v12 = &v87 - v11;
  v13 = MEMORY[0x2A1C7C4A8](v10);
  v15 = &v87 - v14;
  MEMORY[0x2A1C7C4A8](v13);
  v17 = &v87 - v16;
  sub_29D9F31FC(0);
  v97 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v98 = (&v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29D9F33D4(0, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
  MEMORY[0x2A1C7C4A8](v20 - 8);
  v22 = &v87 - v21;
  v23 = type metadata accessor for HighlightAlertState(0);
  v24 = *(v23 - 8);
  MEMORY[0x2A1C7C4A8](v23);
  v26 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_29DA34884();
  v28 = MEMORY[0x2A1C7C4A8](v27);
  v31 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v32 = v91;
    sub_29DA34614();
    v33 = v96;

    v34 = a2;
    v35 = sub_29DA34634();
    v36 = sub_29DA34B84();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v103[0] = v38;
      *v37 = 136446723;
      v39 = HighlightAlertStateManager.description.getter();
      v41 = sub_29D9EBB44(v39, v40, v103);

      *(v37 + 4) = v41;
      *(v37 + 12) = 2081;
      *(v37 + 14) = sub_29D9EBB44(v93, v33, v103);
      *(v37 + 22) = 2082;
      swift_getErrorValue();
      v42 = sub_29DA35154();
      v44 = v36;
      v45 = sub_29D9EBB44(v42, v43, v103);

      *(v37 + 24) = v45;
      _os_log_impl(&dword_29D9BB000, v35, v44, "%{public}s: received error fetching alert state with key: %{private}s, error: %{public}s", v37, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v38, -1, -1);
      MEMORY[0x29ED6E4C0](v37, -1, -1);
    }

    (*(v95 + 8))(v32, v94);
    v46 = v98;
    *v98 = a2;
    swift_storeEnumTagMultiPayload();
    v47 = a2;
    goto LABEL_20;
  }

  v90 = v24;
  v91 = v23;
  v88 = v26;
  v48 = v12;
  v89 = v17;
  v49 = v92;
  if (!v92)
  {
    v104 = 0u;
    v105 = 0u;
    v52 = v93;
    v53 = v96;
    goto LABEL_15;
  }

  v50 = v29;
  v51 = v28;
  v52 = v93;
  v101 = v93;
  v102 = v96;
  v53 = v96;

  sub_29DA34D84();
  if (!*(v49 + 16) || (v54 = sub_29DA1EE9C(v103), (v55 & 1) == 0))
  {
    sub_29D9F3314(v103);
    v104 = 0u;
    v105 = 0u;
    goto LABEL_15;
  }

  sub_29D9C790C(*(v92 + 56) + 32 * v54, &v104);
  sub_29D9F3314(v103);
  if (!*(&v105 + 1))
  {
LABEL_15:
    sub_29D9F3070(&v104, sub_29D9F326C);
    goto LABEL_16;
  }

  if (swift_dynamicCast())
  {
    v56 = v103[0];
    v57 = v103[1];
    sub_29DA34874();
    v58 = sub_29DA34864();
    v60 = v59;
    (*(v50 + 8))(v31, v51);
    if (v60 >> 60 != 15)
    {

      sub_29DA33474();
      swift_allocObject();
      sub_29DA33464();
      sub_29D9F3368();
      v82 = v22;
      v83 = v91;
      sub_29DA33454();

      (*(v90 + 56))(v82, 0, 1, v83);
      v85 = v88;
      sub_29D9EE9AC(v82, v88);
      v86 = v98;
      sub_29D9F2F34(v85, v98, type metadata accessor for HighlightAlertState);
      swift_storeEnumTagMultiPayload();
      v100(v86);
      sub_29D9CFBBC(v58, v60);
      sub_29D9F3070(v86, sub_29D9F31FC);
      v79 = type metadata accessor for HighlightAlertState;
      v80 = v85;
      return sub_29D9F3070(v80, v79);
    }

    sub_29DA34614();

    v61 = sub_29DA34634();
    v62 = sub_29DA34B84();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = v15;
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v103[0] = v65;
      *v64 = 136446467;
      v66 = HighlightAlertStateManager.description.getter();
      v68 = sub_29D9EBB44(v66, v67, v103);

      *(v64 + 4) = v68;
      *(v64 + 12) = 2081;
      v69 = sub_29D9EBB44(v56, v57, v103);

      *(v64 + 14) = v69;
      _os_log_impl(&dword_29D9BB000, v61, v62, "%{public}s: unable to create data object from alert state value: %{private}s", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v65, -1, -1);
      MEMORY[0x29ED6E4C0](v64, -1, -1);

      (*(v95 + 8))(v63, v94);
    }

    else
    {

      (*(v95 + 8))(v15, v94);
    }

    sub_29D9F32C0();
    v77 = swift_allocError();
    *v84 = 1;
    goto LABEL_19;
  }

LABEL_16:
  sub_29DA34614();

  v70 = sub_29DA34634();
  v71 = sub_29DA34B74();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v103[0] = v73;
    *v72 = 136446467;
    v74 = HighlightAlertStateManager.description.getter();
    v76 = sub_29D9EBB44(v74, v75, v103);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2081;
    *(v72 + 14) = sub_29D9EBB44(v52, v53, v103);
    _os_log_impl(&dword_29D9BB000, v70, v71, "%{public}s: alert state value not found for key: %{private}s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v73, -1, -1);
    MEMORY[0x29ED6E4C0](v72, -1, -1);
  }

  (*(v95 + 8))(v48, v94);
  sub_29D9F32C0();
  v77 = swift_allocError();
  *v78 = 0;
LABEL_19:
  v46 = v98;
  *v98 = v77;
  swift_storeEnumTagMultiPayload();
LABEL_20:
  v100(v46);
  v79 = sub_29D9F31FC;
  v80 = v46;
  return sub_29D9F3070(v80, v79);
}

uint64_t sub_29D9F2C98(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = sub_29DA347A4();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_29D9F2D44(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_29D9F2E3C;

  return v6(a1);
}

uint64_t sub_29D9F2E3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_29D9F2F34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29D9F2FA8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29D9F33D4(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29D9F3014(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9F33D4(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29D9F3070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_29D9F30D0(uint64_t a1)
{
  if (!qword_2A1A2CB70)
  {
    sub_29D9F33D4(255, qword_2A1A2D230, type metadata accessor for HighlightAlertState);
    sub_29D9C6144();
    v1 = sub_29DA349F4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CB70);
    }
  }
}

uint64_t sub_29D9F315C(uint64_t a1)
{
  sub_29D9F30D0(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(*(v3 - 8) + 80) + 40) & ~*(*(v3 - 8) + 80));

  return sub_29D9F1758(a1, v4, v5, v6, v7);
}

uint64_t sub_29D9F31E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29D9F31FC(uint64_t a1)
{
  if (!qword_2A1A2C9E8)
  {
    type metadata accessor for HighlightAlertState(255);
    sub_29D9C6144();
    v1 = sub_29DA35204();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2C9E8);
    }
  }
}

void sub_29D9F326C()
{
  if (!qword_2A1A2DA78)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2DA78);
    }
  }
}

unint64_t sub_29D9F32C0()
{
  result = qword_2A1A2D1A0;
  if (!qword_2A1A2D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D1A0);
  }

  return result;
}

unint64_t sub_29D9F3368()
{
  result = qword_2A1A2D280;
  if (!qword_2A1A2D280)
  {
    type metadata accessor for HighlightAlertState(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D280);
  }

  return result;
}

uint64_t sub_29D9F33C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_29D9E2040(result, a2);
  }

  return result;
}

void sub_29D9F33D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29DA34CC4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_29D9F3428(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_29D9F3434(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D9D02DC;

  return sub_29D9F2D44(a1, v4);
}

uint64_t sub_29D9F34EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_29D9CFE50;

  return sub_29D9F2D44(a1, v4);
}

id sub_29D9F35A4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for HighlightAlertConfiguration(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_29D9F7A34(a3, aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for HighlightAlertConfiguration);
  v12 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v13 = swift_allocObject();
  v13[2] = v9;
  v13[3] = v10;
  v13[4] = v11;
  sub_29D9F7B00(aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);
  aBlock[4] = sub_29D9F7B64;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x29EDCA5F8];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_29DA05EEC;
  aBlock[3] = &unk_2A24616E8;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();

  v16 = [v15 blockOperationWithBlock_];
  _Block_release(v14);

  v17 = v16;
  [v17 addDependency_];
  [a2 addDependency_];

  return v17;
}

void sub_29D9F3834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v101 = a4;
  v4 = sub_29DA336F4();
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v95 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v98 = sub_29DA33554();
  v97 = *(v98 - 8);
  MEMORY[0x2A1C7C4A8](v98);
  v96 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HighlightAlertConfiguration(0);
  v9 = MEMORY[0x2A1C7C4A8](v8 - 8);
  v11 = (&v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = MEMORY[0x2A1C7C4A8](v9);
  v14 = (&v91 - v13);
  v15 = MEMORY[0x2A1C7C4A8](v12);
  v93 = (&v91 - v16);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = (&v91 - v17);
  v19 = sub_29DA34644();
  v20 = *(v19 - 8);
  v99 = v19;
  v100 = v20;
  v21 = MEMORY[0x2A1C7C4A8](v19);
  v23 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v26 = &v91 - v25;
  v27 = MEMORY[0x2A1C7C4A8](v24);
  v94 = &v91 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v30 = &v91 - v29;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v32 = Strong;
    swift_beginAccess();
    v33 = swift_unknownObjectWeakLoadStrong();
    if (!v33)
    {
LABEL_27:

      return;
    }

    v34 = v33;
    swift_beginAccess();
    v35 = swift_unknownObjectWeakLoadStrong();
    if (!v35)
    {
LABEL_26:

      v32 = v34;
      goto LABEL_27;
    }

    v92 = v35;

    sub_29DA33B44();

    v36 = v102;
    if (v103 == 1)
    {
      v37 = v32;
      sub_29DA34614();
      sub_29D9F7A34(v101, v18, type metadata accessor for HighlightAlertConfiguration);
      v38 = v36;
      v39 = v36;
      v40 = sub_29DA34634();
      v41 = sub_29DA34B84();
      sub_29D9DC0B0(v36);
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v91 = v34;
        v43 = v42;
        v44 = swift_slowAlloc();
        v102 = v44;
        *v43 = 136380931;
        v45 = *v18;
        v46 = v18[1];

        sub_29D9DC190(v18, type metadata accessor for HighlightAlertConfiguration);
        v47 = sub_29D9EBB44(v45, v46, &v102);

        *(v43 + 4) = v47;
        *(v43 + 12) = 2082;
        swift_getErrorValue();
        v48 = sub_29DA35154();
        v50 = sub_29D9EBB44(v48, v49, &v102);

        *(v43 + 14) = v50;
        _os_log_impl(&dword_29D9BB000, v40, v41, "HighlightAlert query operation for %{private}s returned error: %{public}s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v44, -1, -1);
        v51 = v43;
        v34 = v91;
        MEMORY[0x29ED6E4C0](v51, -1, -1);

        sub_29D9DC0B0(v39);
      }

      else
      {

        sub_29D9DC0B0(v36);
        sub_29D9DC190(v18, type metadata accessor for HighlightAlertConfiguration);
      }

      (*(v100 + 8))(v30, v99);
      v57 = v92;
      [v92 cancel];
      v32 = v37;
    }

    else
    {
      if (v102)
      {
        v91 = v34;
        v52 = v102;
        v53 = [v102 sampleType];
        v54 = v32;

        sub_29DA33B44();

        sub_29D9C706C(&v102, v104);
        v55 = sub_29DA33984();
        v56 = [v53 hk:v55 metadataValueDisplayTypeInStore:?];

        sub_29D9C7968(&v102);
        if (v56)
        {
          v57 = [v56 objectType];

          if (v57)
          {
            objc_opt_self();
            v58 = swift_dynamicCastObjCClass();
            if (v58)
            {
              v59 = v58;
              v60 = [v52 startDate];
              sub_29DA336C4();

              v61 = [v52 endDate];
              sub_29DA336C4();

              v62 = v96;
              sub_29DA33504();
              v63 = sub_29DA33534();
              *v64 = *v64 + 0.001;
              v63(&v102, 0);
              v65 = v92;
              if (HighlightAlertDailyAveragesOperation.configure(quantityType:dateInterval:)(v59, v62))
              {
                (*(v97 + 8))(v62, v98);
                sub_29D9DC0B0(v52);

                v34 = v65;
              }

              else
              {
                v83 = v94;
                sub_29DA34614();
                v84 = v93;
                sub_29D9F7A34(v101, v93, type metadata accessor for HighlightAlertConfiguration);
                v85 = sub_29DA34634();
                v86 = sub_29DA34B84();
                if (os_log_type_enabled(v85, v86))
                {
                  v87 = swift_slowAlloc();
                  v88 = swift_slowAlloc();
                  v102 = v88;
                  *v87 = 136380675;
                  v89 = v84[1];
                  v101 = *v84;

                  sub_29D9DC190(v84, type metadata accessor for HighlightAlertConfiguration);
                  v90 = sub_29D9EBB44(v101, v89, &v102);

                  *(v87 + 4) = v90;
                  _os_log_impl(&dword_29D9BB000, v85, v86, "HighlightAlert query for %{private}s passed invalid configuration to dailyAveragesOperation", v87, 0xCu);
                  sub_29D9C7968(v88);
                  MEMORY[0x29ED6E4C0](v88, -1, -1);
                  MEMORY[0x29ED6E4C0](v87, -1, -1);
                  sub_29D9DC0B0(v52);

                  (*(v100 + 8))(v94, v99);
                }

                else
                {
                  sub_29D9DC0B0(v52);

                  sub_29D9DC190(v84, type metadata accessor for HighlightAlertConfiguration);
                  (*(v100 + 8))(v83, v99);
                }

                (*(v97 + 8))(v62, v98);
                v32 = v54;
                v57 = v92;
                [v92 cancel];
                v34 = v91;
              }

              goto LABEL_25;
            }
          }
        }

        sub_29DA34614();
        sub_29D9F7A34(v101, v14, type metadata accessor for HighlightAlertConfiguration);
        v76 = sub_29DA34634();
        v77 = sub_29DA34BA4();
        if (os_log_type_enabled(v76, v77))
        {
          v78 = swift_slowAlloc();
          v79 = swift_slowAlloc();
          v102 = v79;
          *v78 = 136380675;
          v80 = *v14;
          v81 = v14[1];

          sub_29D9DC190(v14, type metadata accessor for HighlightAlertConfiguration);
          v82 = sub_29D9EBB44(v80, v81, &v102);

          *(v78 + 4) = v82;
          _os_log_impl(&dword_29D9BB000, v76, v77, "HighlightAlert query for %{private}s returned non-quantity primary metadata type.", v78, 0xCu);
          sub_29D9C7968(v79);
          MEMORY[0x29ED6E4C0](v79, -1, -1);
          MEMORY[0x29ED6E4C0](v78, -1, -1);
          sub_29D9DC0B0(v52);
        }

        else
        {
          sub_29D9DC0B0(v52);

          sub_29D9DC190(v14, type metadata accessor for HighlightAlertConfiguration);
        }

        (*(v100 + 8))(v26, v99);
        v32 = v54;
        v34 = v91;
      }

      else
      {
        sub_29DA34614();
        sub_29D9F7A34(v101, v11, type metadata accessor for HighlightAlertConfiguration);
        v66 = sub_29DA34634();
        v67 = sub_29DA34BA4();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          v69 = v34;
          v70 = swift_slowAlloc();
          v102 = v70;
          *v68 = 136380675;
          v71 = v32;
          v72 = *v11;
          v73 = v11[1];

          sub_29D9DC190(v11, type metadata accessor for HighlightAlertConfiguration);
          v74 = sub_29D9EBB44(v72, v73, &v102);

          *(v68 + 4) = v74;
          v32 = v71;
          _os_log_impl(&dword_29D9BB000, v66, v67, "HighlightAlert query for %{private}s returned no samples", v68, 0xCu);
          sub_29D9C7968(v70);
          v75 = v70;
          v34 = v69;
          MEMORY[0x29ED6E4C0](v75, -1, -1);
          MEMORY[0x29ED6E4C0](v68, -1, -1);
        }

        else
        {

          sub_29D9DC190(v11, type metadata accessor for HighlightAlertConfiguration);
        }

        (*(v100 + 8))(v23, v99);
      }

      v57 = v92;
      [v92 cancel];
    }

LABEL_25:

    v34 = v57;
    goto LABEL_26;
  }
}

char *sub_29D9F449C(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, char *a5, uint64_t a6)
{
  v182 = a6;
  v189 = a5;
  v201 = a4;
  v184 = sub_29DA336F4();
  v183 = *(v184 - 8);
  MEMORY[0x2A1C7C4A8](v184);
  v193 = &v175 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v192 = sub_29DA33754();
  v181 = *(v192 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v192);
  v180 = &v175 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v191 = &v175 - v10;
  v11 = MEMORY[0x29EDC9C68];
  sub_29D9F7A9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v188 = &v175 - v13;
  v195 = sub_29DA33964();
  v194 = *(v195 - 8);
  MEMORY[0x2A1C7C4A8](v195);
  v190 = &v175 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F7A9C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v11);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v196 = (&v175 - v16);
  v17 = type metadata accessor for HighlightAlertSampleInfo(0);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v175 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for HighlightAlertConfiguration(0);
  v21 = MEMORY[0x2A1C7C4A8](v20 - 8);
  v23 = (&v175 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = MEMORY[0x2A1C7C4A8](v21);
  v178 = (&v175 - v25);
  v26 = MEMORY[0x2A1C7C4A8](v24);
  v179 = (&v175 - v27);
  v28 = MEMORY[0x2A1C7C4A8](v26);
  v30 = (&v175 - v29);
  MEMORY[0x2A1C7C4A8](v28);
  v32 = (&v175 - v31);
  v33 = sub_29DA34644();
  v34 = *(v33 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v33);
  v37 = &v175 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x2A1C7C4A8](v35);
  v185 = &v175 - v39;
  v40 = MEMORY[0x2A1C7C4A8](v38);
  v186 = &v175 - v41;
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v187 = &v175 - v43;
  v44 = MEMORY[0x2A1C7C4A8](v42);
  v197 = &v175 - v45;
  MEMORY[0x2A1C7C4A8](v44);
  v198 = &v175 - v46;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v176 = v19;
  v199 = v33;
  v200 = v34;
  v48 = *a2;
  v49 = *(a2 + 8);
  v202 = result;
  v177 = a2;
  if (*(a2 + 16))
  {
    v50 = 0;
  }

  else
  {
    v50 = 0x7961446E65766553;
  }

  if (*(a2 + 16))
  {
    v51 = 0;
  }

  else
  {
    v51 = 0xE800000000000000;
  }

  v52 = v49;
  v53 = v202;
  sub_29D9D5C44(v48, v52, v50, v51, v208);
  v55 = v208[4];
  v54 = v208[5];

  sub_29D9D6630(v208);
  sub_29DA34B34();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {

LABEL_17:
    v67 = v199;
    sub_29DA34614();
    v68 = sub_29DA34634();
    v69 = sub_29DA34B84();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_29D9BB000, v68, v69, "HighlightAlert query operations went away unexpectedly", v70, 2u);
      MEMORY[0x29ED6E4C0](v70, -1, -1);
    }

    else
    {
    }

    return (*(v200 + 8))(v37, v67);
  }

  v57 = Strong;

  sub_29DA33B44();

  v58 = v206;
  v59 = v207;
  swift_beginAccess();
  v60 = swift_unknownObjectWeakLoadStrong();
  if (!v60)
  {

    sub_29D9DC0B0(v58);
    goto LABEL_17;
  }

  v201 = v58;
  v61 = v60;
  swift_beginAccess();

  sub_29DA33B44();

  v62 = v204;
  v63 = v205;
  v175 = v55;
  if (v205 == 1)
  {
    sub_29D9E5CE0(v204, 1);
    v64 = v62;
    sub_29D9C6144();
    if ((swift_dynamicCast() & 1) != 0 && ObjectType <= 1u)
    {
      sub_29D9E5CEC(v62, 1);
      v65 = 0;
      v66 = MEMORY[0x29EDCA190];
      if (!v59)
      {
        goto LABEL_25;
      }

LABEL_22:
      v71 = v201;
      v72 = v201;

      v73 = v198;
      sub_29DA34614();
      sub_29D9F7A34(v177, v32, type metadata accessor for HighlightAlertConfiguration);
      v74 = v71;
      v75 = sub_29DA34634();
      v76 = sub_29DA34B84();
      sub_29D9DC0B0(v71);
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v189 = v62;
        v78 = v77;
        v79 = swift_slowAlloc();
        LODWORD(v197) = v63;
        v80 = v79;
        v204 = v79;
        *v78 = 136380931;
        v81 = v66;
        v82 = *v32;
        v83 = v32[1];

        sub_29D9DC190(v32, type metadata accessor for HighlightAlertConfiguration);
        v84 = sub_29D9EBB44(v82, v83, &v204);

        *(v78 + 4) = v84;
        *(v78 + 12) = 2082;
        swift_getErrorValue();
        v85 = sub_29DA35154();
        v87 = sub_29D9EBB44(v85, v86, &v204);

        *(v78 + 14) = v87;
        _os_log_impl(&dword_29D9BB000, v75, v76, "HighlightAlert query operation for %{private}s returned error: %{public}s", v78, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v80, -1, -1);
        MEMORY[0x29ED6E4C0](v78, -1, -1);

        sub_29D9DC0B0(v71);
        sub_29D9E5CEC(v81, v65);
        sub_29D9DC0B0(v71);
        sub_29D9E5CEC(v189, v197);
        v88 = *(v200 + 8);
        v89 = v198;
      }

      else
      {

        sub_29D9DC0B0(v71);
        sub_29D9E5CEC(v66, v65);
        sub_29D9DC0B0(v71);
        sub_29D9E5CEC(v62, v63);
        sub_29D9DC190(v32, type metadata accessor for HighlightAlertConfiguration);
        v88 = *(v200 + 8);
        v89 = v73;
      }

      return v88(v89, v199);
    }

    v65 = 1;
    v66 = v62;
    if (v59)
    {
      goto LABEL_22;
    }
  }

  else
  {

    v65 = 0;
    v66 = v62;
    if (v59)
    {
      goto LABEL_22;
    }
  }

LABEL_25:
  if (v65)
  {
    v90 = v66;

    v91 = v197;
    sub_29DA34614();
    sub_29D9F7A34(v177, v30, type metadata accessor for HighlightAlertConfiguration);
    v92 = v66;
    v93 = sub_29DA34634();
    v94 = sub_29DA34B84();
    sub_29D9E5CEC(v66, 1);
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      v189 = v62;
      v96 = v95;
      v97 = v66;
      v98 = swift_slowAlloc();
      v204 = v98;
      *v96 = 136380931;
      v99 = *v30;
      v100 = v30[1];

      sub_29D9DC190(v30, type metadata accessor for HighlightAlertConfiguration);
      v101 = sub_29D9EBB44(v99, v100, &v204);

      *(v96 + 4) = v101;
      *(v96 + 12) = 2082;
      swift_getErrorValue();
      v102 = sub_29DA35154();
      v104 = sub_29D9EBB44(v102, v103, &v204);

      *(v96 + 14) = v104;
      _os_log_impl(&dword_29D9BB000, v93, v94, "HighlightAlert quantity distribution query operation for %{private}s returned error: %{public}s", v96, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v98, -1, -1);
      MEMORY[0x29ED6E4C0](v96, -1, -1);

      sub_29D9E5CEC(v97, 1);
      sub_29D9E5CEC(v97, 1);
      sub_29D9DC0B0(v201);
      sub_29D9E5CEC(v189, v63);
    }

    else
    {

      sub_29D9E5CEC(v66, 1);
      sub_29D9E5CEC(v66, 1);
      sub_29D9DC0B0(v201);
      sub_29D9E5CEC(v62, v63);
      sub_29D9DC190(v30, type metadata accessor for HighlightAlertConfiguration);
    }

    v88 = *(v200 + 8);
    v89 = v91;
    return v88(v89, v199);
  }

  v105 = v201;
  v106 = v177;
  if (v201)
  {
    v198 = v54;
    sub_29D9DC0BC(v201);
    sub_29D9DC0BC(v105);
    sub_29D9DC0BC(v105);
    sub_29D9E5CE0(v66, 0);
    sub_29D9DC0D4();
    v107 = v176;
    sub_29DA34794();
    v108 = v196;
    v109 = v202;
    sub_29D9F5D00(v107, v66, v106, v189, v196);
    sub_29D9E5CEC(v66, 0);
    v110 = v188;
    sub_29DA1AF88(v107, v108, v106, v188);
    v111 = v194;
    v112 = v195;
    if ((*(v194 + 48))(v110, 1, v195) == 1)
    {

      sub_29D9F797C(v110, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
      v113 = v186;
      sub_29DA34614();
      v114 = v106;
      v115 = v178;
      sub_29D9F7A34(v114, v178, type metadata accessor for HighlightAlertConfiguration);
      v116 = sub_29DA34634();
      v117 = sub_29DA34B84();
      if (os_log_type_enabled(v116, v117))
      {
        v118 = swift_slowAlloc();
        v119 = swift_slowAlloc();
        v189 = v62;
        v120 = v119;
        v204 = v119;
        *v118 = 136380675;
        v121 = v66;
        v122 = *v115;
        v123 = v115[1];

        sub_29D9DC190(v115, type metadata accessor for HighlightAlertConfiguration);
        v124 = sub_29D9EBB44(v122, v123, &v204);

        *(v118 + 4) = v124;
        _os_log_impl(&dword_29D9BB000, v116, v117, "HighlightAlert was unable to create a feed item for %{private}s", v118, 0xCu);
        sub_29D9C7968(v120);
        MEMORY[0x29ED6E4C0](v120, -1, -1);
        MEMORY[0x29ED6E4C0](v118, -1, -1);

        v125 = v201;
        sub_29D9DC0B0(v201);
        sub_29D9DC0B0(v125);
        sub_29D9E5CEC(v121, 0);
        sub_29D9DC0B0(v125);
        sub_29D9E5CEC(v189, v63);
        (*(v200 + 8))(v186, v199);
      }

      else
      {

        v169 = v201;
        sub_29D9DC0B0(v201);
        sub_29D9DC0B0(v169);
        sub_29D9E5CEC(v66, 0);
        sub_29D9DC0B0(v169);
        sub_29D9E5CEC(v62, v63);
        sub_29D9DC190(v115, type metadata accessor for HighlightAlertConfiguration);
        (*(v200 + 8))(v113, v199);
      }

      v170 = v108;
    }

    else
    {
      LODWORD(v197) = v63;
      (*(v111 + 32))(v190, v110, v112);
      sub_29D9F7A9C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
      v137 = sub_29DA34774();
      v138 = [v137 UUID];

      v139 = v191;
      sub_29DA33744();

      v140 = sub_29DA34774();
      v141 = [v140 endDate];

      sub_29DA336C4();
      v142 = v187;
      sub_29DA34614();
      v143 = v179;
      sub_29D9F7A34(v106, v179, type metadata accessor for HighlightAlertConfiguration);
      v144 = v181;
      v145 = v180;
      v146 = v192;
      (*(v181 + 16))(v180, v139, v192);
      v147 = v109;
      v148 = sub_29DA34634();
      v149 = sub_29DA34BA4();

      if (os_log_type_enabled(v148, v149))
      {
        v150 = swift_slowAlloc();
        v189 = v62;
        v151 = v150;
        v152 = swift_slowAlloc();
        v188 = v66;
        v153 = v152;
        v204 = v152;
        *v151 = 136446723;
        ObjectType = swift_getObjectType();
        sub_29D9F79EC();
        v154 = sub_29DA34894();
        LODWORD(v186) = v149;
        v156 = sub_29D9EBB44(v154, v155, &v204);

        *(v151 + 4) = v156;
        *(v151 + 12) = 2081;
        v157 = *v143;
        v158 = v143[1];

        sub_29D9DC190(v143, type metadata accessor for HighlightAlertConfiguration);
        v159 = sub_29D9EBB44(v157, v158, &v204);

        *(v151 + 14) = v159;
        *(v151 + 22) = 2081;
        v161 = MEMORY[0x29ED6C290](v160);
        v163 = v162;
        v202 = *(v144 + 8);
        (v202)(v145, v192);
        v164 = sub_29D9EBB44(v161, v163, &v204);
        v146 = v192;

        *(v151 + 24) = v164;
        _os_log_impl(&dword_29D9BB000, v148, v186, "[%{public}s]: Creating new %{private}s alert for daily averages with uuid %{private}s", v151, 0x20u);
        swift_arrayDestroy();
        v165 = v153;
        v66 = v188;
        MEMORY[0x29ED6E4C0](v165, -1, -1);
        v166 = v151;
        v62 = v189;
        MEMORY[0x29ED6E4C0](v166, -1, -1);

        (*(v200 + 8))(v187, v199);
      }

      else
      {

        v202 = *(v144 + 8);
        (v202)(v145, v146);
        sub_29D9DC190(v143, type metadata accessor for HighlightAlertConfiguration);
        (*(v200 + 8))(v142, v199);
      }

      v171 = v190;
      v172 = v191;
      v173 = v193;
      sub_29DA15594(v190, v191, v193, v182);
      sub_29DA34B34();

      v174 = v201;
      sub_29D9DC0B0(v201);
      sub_29D9DC0B0(v174);
      sub_29D9E5CEC(v66, 0);
      sub_29D9DC0B0(v174);
      sub_29D9E5CEC(v62, v197);

      (*(v183 + 8))(v173, v184);
      (v202)(v172, v146);
      (*(v194 + 8))(v171, v195);
      v170 = v196;
    }

    sub_29D9F797C(v170, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo);
    return sub_29D9DC190(v176, type metadata accessor for HighlightAlertSampleInfo);
  }

  else
  {

    v126 = v185;
    sub_29DA34614();
    sub_29D9F7A34(v106, v23, type metadata accessor for HighlightAlertConfiguration);
    v127 = sub_29DA34634();
    v128 = sub_29DA34BA4();
    if (os_log_type_enabled(v127, v128))
    {
      v129 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      v189 = v62;
      v131 = v130;
      v204 = v130;
      *v129 = 136380675;
      v132 = v66;
      v133 = *v23;
      v134 = v23[1];

      sub_29D9DC190(v23, type metadata accessor for HighlightAlertConfiguration);
      v135 = sub_29D9EBB44(v133, v134, &v204);

      *(v129 + 4) = v135;
      v66 = v132;
      v106 = v177;
      _os_log_impl(&dword_29D9BB000, v127, v128, "HighlightAlert query for %{private}s returned no samples; marking this feed item for deletion.", v129, 0xCu);
      sub_29D9C7968(v131);
      v136 = v131;
      v62 = v189;
      MEMORY[0x29ED6E4C0](v136, -1, -1);
      MEMORY[0x29ED6E4C0](v129, -1, -1);
    }

    else
    {

      sub_29D9DC190(v23, type metadata accessor for HighlightAlertConfiguration);
    }

    v167 = (*(v200 + 8))(v126, v199);
    v168 = v202;
    MEMORY[0x2A1C7C4A8](v167);
    *(&v175 - 2) = v106;

    sub_29DA33B54();
    sub_29D9E5CEC(v66, 0);
    sub_29D9DC0B0(0);
    sub_29D9E5CEC(v62, v63);
  }
}

uint64_t sub_29D9F5D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v167 = a4;
  v202 = a1;
  v10 = type metadata accessor for HighlightAlertSampleInfo(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v192 = &v142 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29DA34644();
  v193 = *(v12 - 8);
  v194 = v12;
  MEMORY[0x2A1C7C4A8](v12);
  v201 = (&v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v182 = sub_29DA34384();
  v181 = *(v182 - 8);
  MEMORY[0x2A1C7C4A8](v182);
  v180 = &v142 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = sub_29DA34274();
  v177 = *(v179 - 8);
  MEMORY[0x2A1C7C4A8](v179);
  v178 = &v142 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_29DA34234();
  v174 = *(v176 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v176);
  v175 = &v142 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v173 = &v142 - v18;
  v170 = sub_29DA34204();
  v169 = *(v170 - 8);
  MEMORY[0x2A1C7C4A8](v170);
  v172 = &v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_29DA34394();
  v163 = *(v164 - 8);
  MEMORY[0x2A1C7C4A8](v164);
  v165 = &v142 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x29EDC9C68];
  sub_29D9F7A9C(0, &qword_2A1A2CCB0, MEMORY[0x29EDC4B40], MEMORY[0x29EDC9C68]);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v168 = &v142 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v23);
  v166 = &v142 - v25;
  sub_29D9F7A9C(0, &qword_2A1A2CC98, MEMORY[0x29EDC4C80], v21);
  MEMORY[0x2A1C7C4A8](v26 - 8);
  v171 = &v142 - v27;
  v162 = sub_29DA340E4();
  v161 = *(v162 - 8);
  MEMORY[0x2A1C7C4A8](v162);
  v160 = &v142 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9F7A9C(0, &qword_2A1A2CCB8, MEMORY[0x29EDC4B00], v21);
  MEMORY[0x2A1C7C4A8](v29 - 8);
  v158 = &v142 - v30;
  v188 = sub_29DA34264();
  v159 = *(v188 - 8);
  MEMORY[0x2A1C7C4A8](v188);
  v189 = &v142 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_29DA341E4();
  v154 = *(v186 - 8);
  v32 = MEMORY[0x2A1C7C4A8](v186);
  v155 = &v142 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v32);
  v187 = &v142 - v34;
  v157 = sub_29DA34374();
  v156 = *(v157 - 8);
  v35 = MEMORY[0x2A1C7C4A8](v157);
  v153 = &v142 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x2A1C7C4A8](v35);
  v196 = &v142 - v38;
  MEMORY[0x2A1C7C4A8](v37);
  v195 = &v142 - v39;
  v191 = sub_29DA343A4();
  v190 = *(v191 - 8);
  v40 = MEMORY[0x2A1C7C4A8](v191);
  v185 = &v142 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x2A1C7C4A8](v40);
  v184 = &v142 - v43;
  MEMORY[0x2A1C7C4A8](v42);
  v199 = &v142 - v44;
  v200 = sub_29DA342F4();
  v198 = *(v200 - 8);
  v45 = MEMORY[0x2A1C7C4A8](v200);
  v183 = &v142 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v45);
  v197 = &v142 - v47;
  v48 = sub_29DA336F4();
  v49 = MEMORY[0x2A1C7C4A8](v48 - 8);
  MEMORY[0x2A1C7C4A8](v49);
  v204 = sub_29DA33554();
  v50 = *(v204 - 8);
  v51 = MEMORY[0x2A1C7C4A8](v204);
  v53 = &v142 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v51);
  v203 = &v142 - v54;
  sub_29D9F7A9C(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v21);
  MEMORY[0x2A1C7C4A8](v55 - 8);
  v57 = (&v142 - v56);
  if (*(a3 + 17) != 1)
  {
    goto LABEL_10;
  }

  v149 = a3;
  v151 = a2;
  v152 = a5;
  v150 = v6;

  sub_29DA33B44();

  sub_29D9C706C(v206, v206[3]);
  v58 = sub_29DA33984();
  sub_29D9F7A9C(0, &qword_2A1A2D4C8, sub_29D9DC0D4, MEMORY[0x29EDBA1D0]);
  v59 = v202;
  v60 = sub_29DA34774();
  v61 = [v60 sampleType];

  v62 = [v61 hk:v58 metadataValueDisplayTypeInStore:?];
  if (!v62)
  {

    sub_29D9C7968(v206);
    a5 = v152;
LABEL_10:
    v139 = type metadata accessor for HighlightAlertDiagramInfo(0);
    (*(*(v139 - 8) + 56))(v57, 1, 1, v139);
    return sub_29D9E9400(v57, a5);
  }

  v63 = [v62 objectType];

  v64 = [v63 identifier];
  v145 = sub_29DA34854();
  v148 = v65;

  sub_29D9C7968(v206);
  v66 = sub_29DA34774();
  v67 = [v66 startDate];

  sub_29DA336C4();
  v68 = sub_29DA34774();
  v69 = [v68 endDate];

  sub_29DA336C4();
  v70 = v203;
  sub_29DA33504();
  sub_29DA33544();
  v72 = v71;
  v147 = *(v50 + 8);
  result = v147(v70, v204);
  v74 = *MEMORY[0x29EDBA3B0] + *MEMORY[0x29EDBA3B8];
  if (__OFADD__(*MEMORY[0x29EDBA3B0], *MEMORY[0x29EDBA3B8]))
  {
    __break(1u);
  }

  else
  {
    v146 = v50 + 8;
    if (v72 > v74 && *(v151 + 16))
    {

      v75 = sub_29DA34774();
      v76 = [v75 startDate];

      sub_29DA336C4();
      v77 = sub_29DA34774();
      v78 = [v77 endDate];

      sub_29DA336C4();
      sub_29DA33504();
      v79 = v203;
      sub_29D9F75F8(v203);
      v80 = v53;
      v81 = v204;
      v147(v80, v204);
      v82 = type metadata accessor for HighlightAlertDiagramInfo(0);
      v83 = *(v82 + 20);
      v84 = v82;
      v194 = v82;
      (*(v50 + 16))(v57 + v83, v79, v81);
      v85 = type metadata accessor for HighlightAlertDailyAveragesConfiguration(0);
      v86 = *(v85 + 20);
      v143 = *(v85 + 24);
      v201 = type metadata accessor for HighlightAlertConfiguration(0);
      v87 = v201[11];
      v144 = v201[12];
      v150 = v87;
      (*(v198 + 104))(v197, *MEMORY[0x29EDC4C60], v200);
      v88 = v190;
      v89 = v191;
      (*(v190 + 104))(v199, *MEMORY[0x29EDC4D80], v191);
      v193 = *(v84 + 24);
      sub_29D9F7A9C(0, &qword_2A17D1628, MEMORY[0x29EDC4B60], MEMORY[0x29EDC9E90]);
      v90 = *(sub_29DA34254() - 8);
      v192 = (*(v90 + 80) + 32) & ~*(v90 + 80);
      v202 = swift_allocObject();
      *(v202 + 16) = xmmword_29DA3AB40;
      v91 = *(v88 + 16);
      v92 = v167;
      v91(v184, v167, v89);
      v93 = v156;
      v94 = *(v156 + 16);
      v95 = v157;
      v94(v195, v92 + v86, v157);
      v96 = v154;
      (*(v154 + 16))(v187, v92 + v143, v186);
      (*(v198 + 16))(v183, v197, v200);
      v97 = v149;
      v94(v196, v149 + v144, v95);
      v91(v185, v199, v89);
      v98 = v159;
      v99 = &v150[v97];
      v100 = v189;
      (*(v159 + 16))(v189, v99, v188);
      v101 = sub_29DA34194();
      (*(*(v101 - 8) + 56))(v158, 1, 1, v101);
      v102 = *(v93 + 104);
      v102(v153, *MEMORY[0x29EDC4CA8], v95);
      (*(v96 + 104))(v155, *MEMORY[0x29EDC4B20], v186);
      (*(v161 + 104))(v160, *MEMORY[0x29EDC4918], v162);
      v103 = v195;
      v104 = v196;
      sub_29DA34244();
      (*(v163 + 104))(v165, *MEMORY[0x29EDC4D38], v164);
      (*(v98 + 104))(v100, *MEMORY[0x29EDC4B68], v188);
      v102(v103, *MEMORY[0x29EDC4CA0], v95);
      v102(v104, *MEMORY[0x29EDC4CB0], v95);
      (*(v169 + 104))(v172, *MEMORY[0x29EDC4B38], v170);
      v105 = *(v174 + 104);
      v106 = v176;
      v105(v173, *MEMORY[0x29EDC4B48], v176);
      v105(v175, *MEMORY[0x29EDC4B50], v106);
      v107 = v166;
      sub_29DA34214();
      v108 = sub_29DA34224();
      v109 = *(*(v108 - 8) + 56);
      v109(v107, 0, 1, v108);
      v109(v168, 1, 1, v108);
      v110 = v171;
      sub_29DA34324();
      v111 = sub_29DA34334();
      (*(*(v111 - 8) + 56))(v110, 0, 1, v111);
      v112 = v178;
      (*(v177 + 104))(v178, *MEMORY[0x29EDC4BF8], v179);
      v113 = v180;
      (*(v181 + 104))(v180, *MEMORY[0x29EDC4D20], v182);
      v114 = v193;
      MEMORY[0x29ED6CEB0](v202, v110, v112, v113);
      (*(v190 + 8))(v199, v191);
      (*(v198 + 8))(v197, v200);
      v115 = *MEMORY[0x29EDC4C88];
      v116 = sub_29DA343B4();
      (*(*(v116 - 8) + 104))(v57 + v114, v115, v116);
      v117 = v149 + v201[10];
      v118 = *v117;
      LOBYTE(v115) = *(v117 + 8);
      v147(v203, v204);
      v119 = v148;
      *v57 = v145;
      v57[1] = v119;
      v120 = v194;
      v121 = v57 + *(v194 + 28);
      *v121 = v118;
      v121[8] = v115;
      *(v57 + *(v120 + 32)) = v151;
      *(v57 + *(v120 + 36)) = MEMORY[0x29EDCA190];
      (*(*(v120 - 8) + 56))(v57, 0, 1, v120);
      a5 = v152;
      return sub_29D9E9400(v57, a5);
    }

    v122 = v201;
    sub_29DA34614();
    v123 = v192;
    sub_29D9F7A34(v59, v192, type metadata accessor for HighlightAlertSampleInfo);
    v124 = v150;
    v125 = sub_29DA34634();
    v126 = sub_29DA34B84();

    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v206[0] = v128;
      *v127 = 136446466;
      ObjectType = swift_getObjectType();
      sub_29D9F79EC();
      v129 = sub_29DA34894();
      v131 = sub_29D9EBB44(v129, v130, v206);

      *(v127 + 4) = v131;
      *(v127 + 12) = 2050;
      v132 = sub_29DA34774();
      v133 = [v132 startDate];

      sub_29DA336C4();
      v134 = sub_29DA34774();
      v135 = [v134 endDate];

      sub_29DA336C4();
      v136 = v203;
      sub_29DA33504();
      sub_29DA33544();
      v138 = v137;
      v147(v136, v204);
      sub_29D9DC190(v123, type metadata accessor for HighlightAlertSampleInfo);
      *(v127 + 14) = v138;
      _os_log_impl(&dword_29D9BB000, v125, v126, "[%{public}s]: HighlightAlert omitting daily average diagram due to low duration / points: %{public}f", v127, 0x16u);
      sub_29D9C7968(v128);
      MEMORY[0x29ED6E4C0](v128, -1, -1);
      MEMORY[0x29ED6E4C0](v127, -1, -1);

      (*(v193 + 8))(v201, v194);
    }

    else
    {

      sub_29D9DC190(v123, type metadata accessor for HighlightAlertSampleInfo);
      (*(v193 + 8))(v122, v194);
    }

    v140 = v152;
    v141 = type metadata accessor for HighlightAlertDiagramInfo(0);
    return (*(*(v141 - 8) + 56))(v140, 1, 1, v141);
  }

  return result;
}

void sub_29D9F75F8(uint64_t a1@<X8>)
{
  v33 = a1;
  v1 = sub_29DA336F4();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x2A1C7C4A8](v1);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v28 = &v28 - v6;
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v31 = &v28 - v8;
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v28 - v10;
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v28 - v12;
  v14 = sub_29DA337A4();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33784();
  v18 = sub_29DA33764();
  (*(v15 + 8))(v17, v14);
  sub_29DA33524();
  v19 = sub_29DA33694();
  v20 = *(v2 + 8);
  v20(v11, v1);
  v21 = [v18 startOfDayForDate_];

  v29 = v13;
  sub_29DA336C4();

  sub_29DA334F4();
  v22 = sub_29DA33694();
  v20(v11, v1);
  v30 = v18;
  v23 = [v18 hk:v22 startOfTomorrowForDate:?];

  if (v23)
  {
    v24 = v28;
    sub_29DA336C4();

    v25 = v31;
    sub_29DA33664();
    v20(v24, v1);
    v26 = *(v2 + 16);
    v27 = v29;
    v26(v11, v29, v1);
    v26(v32, v25, v1);
    sub_29DA33504();

    v20(v25, v1);
    v20(v27, v1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29D9F797C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29D9F7A9C(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_29D9F79EC()
{
  result = qword_2A1A2CD30;
  if (!qword_2A1A2CD30)
  {
    type metadata accessor for HighlightAlertsFeedItemGenerator(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2CD30);
  }

  return result;
}

uint64_t sub_29D9F7A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29D9F7A9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29D9F7B00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29D9F7B64()
{
  v1 = *(type metadata accessor for HighlightAlertConfiguration(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  sub_29D9F3834(v2, v3, v4, v5);
}

uint64_t sub_29D9F7BCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_29D9F7BE4()
{
  v1 = v0;
  sub_29D9C79FC(0, &qword_2A1A2D478, 0x29EDBA088);
  v0[2] = sub_29DA34BE4();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_29DA33F94();
  swift_allocObject();
  v5 = sub_29DA33F84();
  type metadata accessor for HighlightAlertsFeedItemGenerator(0);
  sub_29DA33F74();
  v1[6] = v4;
  v1[7] = sub_29D9FA650(&qword_2A1A2D508, MEMORY[0x29EDC3D50], MEMORY[0x29EDC3D48]);
  v1[3] = v5;
  return v1;
}

uint64_t sub_29D9F7D24(uint64_t a1)
{
  v2 = sub_29DA33A54();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v61 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9FA528(0, &qword_2A1A2CC30, &qword_2A1A2D2A0, MEMORY[0x29EDC3C90], MEMORY[0x29EDB8AB0]);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v55 = &v54 - v5;
  v6 = sub_29DA339F4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29DA33A24();
  v63 = *(v10 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x2A1C7C4A8](v11);
  v62 = &v54 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v54 - v16;
  v18 = sub_29DA33A44();
  v19 = sub_29DA338B4();
  v20 = sub_29DA338A4();

  if ((v20 & 1) == 0)
  {
    return MEMORY[0x29EDCA190];
  }

  v58 = v10;
  sub_29DA338B4();
  v21 = sub_29D9FA3BC(MEMORY[0x29EDCA190], &qword_2A1A2DB10, 0x29EDBAD78, &qword_2A1A2DB08, &qword_2A17D1638);
  sub_29D9F860C(v21);

  v22 = *(v7 + 104);
  v22(v9, *MEMORY[0x29EDC38A8], v6);
  sub_29DA33A14();
  sub_29DA33A34();
  sub_29D9C706C(v66, v66[3]);
  if (sub_29DA33974())
  {
    v57 = a1;
    sub_29D9C706C((v64 + 24), *(v64 + 48));
    if (sub_29DA33834() == 0xD000000000000020 && 0x800000029DA371A0 == v23)
    {

      v24 = v17;
    }

    else
    {
      v38 = sub_29DA35114();

      v24 = v17;
      if ((v38 & 1) == 0)
      {
        sub_29D9FA528(0, &qword_2A1A2CA20, &qword_2A1A2D2F0, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
        v26 = swift_allocObject();
        *(v26 + 16) = xmmword_29DA3AB40;
        v48 = *(v64 + 16);
        sub_29D9FA5EC(v64 + 24, v65);
        v49 = v63;
        v50 = v58;
        (*(v63 + 16))(v62, v17, v58);
        (*(v59 + 16))(v61, v57, v60);
        v51 = sub_29DA33FD4();
        swift_allocObject();
        v52 = v48;
        v53 = sub_29DA33FC4();
        *(v26 + 56) = v51;
        *(v26 + 64) = sub_29D9FA650(&qword_2A17D1630, MEMORY[0x29EDC3D70], MEMORY[0x29EDC3D68]);
        *(v26 + 32) = v53;
        (*(v49 + 8))(v17, v50);
        goto LABEL_11;
      }
    }

    v54 = v24;
    v39 = v62;
    v40 = v63;
    v41 = *(v63 + 16);
    v41(v62, v24, v58);
    v22(v9, *MEMORY[0x29EDC3898], v6);
    sub_29DA33A04();
    sub_29D9FA528(0, &qword_2A1A2CA20, &qword_2A1A2D2F0, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29DA3AB40;
    v42 = *(v64 + 16);
    sub_29D9FA5EC(v64 + 24, v65);
    v43 = v58;
    v41(v13, v39, v58);
    (*(v59 + 16))(v61, v57, v60);
    v44 = sub_29DA33FF4();
    swift_allocObject();
    v45 = v42;
    v46 = sub_29DA33FE4();
    *(v26 + 56) = v44;
    *(v26 + 64) = sub_29D9FA650(&qword_2A1A2CCC0, MEMORY[0x29EDC3D80], MEMORY[0x29EDC3D78]);
    *(v26 + 32) = v46;
    v47 = *(v40 + 8);
    v47(v39, v43);
    v47(v54, v43);
  }

  else
  {
    sub_29D9FA528(0, &qword_2A1A2CA20, &qword_2A1A2D2F0, MEMORY[0x29EDC38F8], MEMORY[0x29EDC9E90]);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_29DA3AB40;
    v27 = *(v64 + 16);
    sub_29D9FA5EC(v64 + 24, v65);
    v28 = v62;
    v29 = v63;
    v64 = *(v63 + 16);
    (v64)(v62, v17, v58);
    (*(v59 + 16))(v61, a1, v60);
    v30 = sub_29DA33FB4();
    swift_allocObject();
    v31 = v27;
    v32 = sub_29DA33FA4();
    v65[3] = v30;
    v65[4] = sub_29D9FA650(&qword_2A1A2CCC8, MEMORY[0x29EDC3D60], MEMORY[0x29EDC3D58]);
    v65[0] = v32;
    sub_29D9FA590(0, &qword_2A1A2D2A0, MEMORY[0x29EDC3C90]);
    v33 = v55;
    sub_29DA346B4();
    sub_29D9FA698();
    v34 = v57;
    sub_29DA34704();
    (*(v56 + 8))(v33, v34);
    v35 = v58;
    (v64)(v28, v17, v58);
    v36 = sub_29DA33B24();
    v37 = MEMORY[0x29EDC3A48];
    *(v26 + 56) = v36;
    *(v26 + 64) = v37;
    sub_29D9E1E30((v26 + 32));
    sub_29DA33B14();
    (*(v29 + 8))(v17, v35);
  }

LABEL_11:
  sub_29D9C7968(v66);
  return v26;
}

void sub_29D9F860C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x29EDCA1A0];
    goto LABEL_6;
  }

  if (!sub_29DA34D34())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_29D9FA774(0, &qword_2A1A2CA90, &qword_2A1A2CB38, 0x29EDBACB8, &qword_2A1A2CB30);
  v3 = sub_29DA34DC4();
LABEL_6:
  if (sub_29D9C79FC(0, &qword_2A1A2CB38, 0x29EDBACB8) == MEMORY[0x29EDC99B0])
  {
    if (v2)
    {

      sub_29DA34D24();
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      sub_29D9FA71C(&qword_2A1A2DB08, &qword_2A1A2DB10, 0x29EDBAD78);
      sub_29DA34AD4();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_29D9FA12C(v35);
    }

    if (sub_29DA34D54())
    {
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_29D9FA76C(v37);
LABEL_57:

    return;
  }

  if (v2)
  {

    sub_29DA34D24();
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9FA71C(&qword_2A1A2DB08, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29DA34AD4();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_29DA34D54())
    {
LABEL_38:
      sub_29D9FA76C(v1);
      goto LABEL_57;
    }

    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_29DA34CA4();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_29D9F8B30()
{
  sub_29D9C7968((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_29D9F8B94()
{
  v0 = swift_allocObject();
  sub_29D9F7BE4();
  return v0;
}

void *sub_29D9F8BCC@<X0>(uint64_t *a1@<X8>)
{
  v2 = swift_allocObject();
  result = sub_29D9F7BE4();
  *a1 = v2;
  return result;
}

uint64_t sub_29D9F8C54(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_29DA351B4();
  sub_29DA348D4();
  v8 = sub_29DA351E4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_29DA35114() & 1) != 0)
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

    sub_29D9F972C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_29D9F8DA4(uint64_t *a1, void *a2, unint64_t *a3, void *a4, unint64_t *a5, unint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_29DA34D44();

    if (v17)
    {

      sub_29D9C79FC(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_29DA34D34();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_29D9F9020(v15, result + 1, a5, a3, a4, a6);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_29D9F948C(v28 + 1, a5, a3, a4, a6);
        }

        v29 = v16;
        sub_29D9F96A8(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_29D9C79FC(0, a3, a4);
    v19 = sub_29DA34CA4();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_29DA34CB4();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_29D9F98AC(v26, v21, isUniquelyReferenced_nonNull_native, a5, a3, a4, a6);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_29D9F9020(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, void *a5, unint64_t *a6)
{
  if (a2)
  {
    sub_29D9FA774(0, a3, a4, a5, a6);
    v10 = sub_29DA34DB4();
    v23 = v10;
    sub_29DA34D24();
    if (sub_29DA34D54())
    {
      sub_29D9C79FC(0, a4, a5);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_29D9F948C(v17 + 1, a3, a4, a5, a6);
        }

        v10 = v23;
        result = sub_29DA34CA4();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_29DA34D54());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA1A0];
  }

  return v10;
}

uint64_t sub_29D9F9238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D9FA800();
  result = sub_29DA34DA4();
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
      sub_29DA351B4();
      sub_29DA348D4();
      result = sub_29DA351E4();
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

uint64_t sub_29D9F948C(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D9FA774(0, a2, a3, a4, a5);
  result = sub_29DA34DA4();
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
      result = sub_29DA34CA4();
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

unint64_t sub_29D9F96A8(uint64_t a1, uint64_t a2)
{
  sub_29DA34CA4();
  result = sub_29DA34D14();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_29D9F972C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_29D9F9238(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_29D9F9A54();
      goto LABEL_16;
    }

    sub_29D9F9CF8(v8 + 1);
  }

  v10 = *v4;
  sub_29DA351B4();
  sub_29DA348D4();
  result = sub_29DA351E4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_29DA35114();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_29DA35134();
  __break(1u);
  return result;
}

void sub_29D9F98AC(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_29D9F948C(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_29D9F9BA4(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_29D9F9F24(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = sub_29DA34CA4();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_29D9C79FC(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_29DA34CB4();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_29DA35134();
  __break(1u);
}

void *sub_29D9F9A54()
{
  v1 = v0;
  sub_29D9FA800();
  v2 = *v0;
  v3 = sub_29DA34D94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
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

  return result;
}

id sub_29D9F9BA4(unint64_t *a1, unint64_t *a2, void *a3, unint64_t *a4)
{
  v5 = v4;
  sub_29D9FA774(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_29DA34D94();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

uint64_t sub_29D9F9CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_29D9FA800();
  result = sub_29DA34DA4();
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
      sub_29DA351B4();

      sub_29DA348D4();
      result = sub_29DA351E4();
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

uint64_t sub_29D9F9F24(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  sub_29D9FA774(0, a2, a3, a4, a5);
  result = sub_29DA34DA4();
  v9 = result;
  if (*(v7 + 16))
  {
    v28 = v5;
    v10 = 0;
    v11 = 1 << *(v7 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v7 + 56);
    v14 = (v11 + 63) >> 6;
    v15 = result + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(*(v7 + 48) + 8 * (v17 | (v10 << 6)));
      result = sub_29DA34CA4();
      v21 = -1 << *(v9 + 32);
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
      *(*(v9 + 48) + 8 * v16) = v20;
      ++*(v9 + 16);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {

        v6 = v28;
        goto LABEL_26;
      }

      v19 = *(v7 + 56 + 8 * v10);
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
    *v6 = v9;
  }

  return result;
}

void sub_29D9FA12C(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_29DA34CA4();
  v5 = v3 + 56;
  v6 = -1 << *(v3 + 32);
  v7 = v4 & ~v6;
  v8 = v7 >> 6;
  v9 = *(v3 + 56 + 8 * (v7 >> 6));
  v10 = 1 << v7;
  if (((1 << v7) & v9) != 0)
  {
    v11 = ~v6;
    sub_29D9C79FC(0, &qword_2A1A2CB38, 0x29EDBACB8);
    while (1)
    {
      v12 = *(*(v3 + 48) + 8 * v7);
      v13 = sub_29DA34CB4();

      if (v13)
      {
        break;
      }

      v7 = (v7 + 1) & v11;
      v8 = v7 >> 6;
      v9 = *(v5 + 8 * (v7 >> 6));
      v10 = 1 << v7;
      if (((1 << v7) & v9) == 0)
      {
        goto LABEL_5;
      }
    }

    v15 = *(v3 + 48);
    v16 = *(v15 + 8 * v7);
    *(v15 + 8 * v7) = a1;
  }

  else
  {
LABEL_5:
    v14 = *(v3 + 16);
    if (v14 >= *(v3 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v8) = v10 | v9;
      *(*(v3 + 48) + 8 * v7) = a1;
      *(v3 + 16) = v14 + 1;
    }
  }
}

void (*sub_29D9FA26C(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6D970](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D9FA858;
  }

  __break(1u);
  return result;
}

void (*sub_29D9FA2EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x29ED6D970](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_29D9FA36C;
  }

  __break(1u);
  return result;
}

uint64_t sub_29D9FA3BC(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_29DA34D34())
  {
    v11 = sub_29D9C79FC(0, a2, a3);
    v12 = sub_29D9FA71C(a4, a2, a3);
    result = MEMORY[0x29ED6D630](i, v11, v12);
    v20 = result;
    if (j)
    {
      break;
    }

    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x29ED6D970](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * j + 32);
      }

      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_29D9F8DA4(&v19, v16, a2, a3, a5, a4);

      if (v17 == v14)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v15 = result;
  v14 = sub_29DA34D34();
  result = v15;
  if (v14)
  {
    goto LABEL_7;
  }

  return result;
}

void sub_29D9FA528(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9FA590(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29D9FA590(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_29D9FA5EC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29D9FA650(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29D9FA698()
{
  result = qword_2A1A2CC38;
  if (!qword_2A1A2CC38)
  {
    sub_29D9FA528(255, &qword_2A1A2CC30, &qword_2A1A2D2A0, MEMORY[0x29EDC3C90], MEMORY[0x29EDB8AB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CC38);
  }

  return result;
}

uint64_t sub_29D9FA71C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_29D9C79FC(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_29D9FA774(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_29D9C79FC(255, a3, a4);
    sub_29D9FA71C(a5, a3, a4);
    v9 = sub_29DA34DD4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29D9FA800()
{
  if (!qword_2A1A2D438)
  {
    v0 = sub_29DA34DD4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D438);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for HighlightAlertReferenceLineKind(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for HighlightAlertReferenceLineKind(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for HighlightAlertReferenceLineKind(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_29D9FA8C0(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29D9FA8DC(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_29D9FA918()
{
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

uint64_t sub_29D9FA9F4(uint64_t a1)
{
  sub_29DA348D4();
}

uint64_t sub_29D9FAABC(uint64_t a1)
{
  sub_29DA351B4();
  sub_29DA348D4();

  return sub_29DA351E4();
}

unint64_t sub_29D9FAB94@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_29D9FD4FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_29D9FABC4(unint64_t *a1@<X8>)
{
  v2 = 0xEF656E694C65636ELL;
  v3 = 0x6572656665526F6ELL;
  v4 = 0x800000029DA369D0;
  v5 = 0xD00000000000001ALL;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000012;
    v4 = 0x800000029DA369F0;
  }

  if (*v1)
  {
    v3 = 0xD00000000000001ELL;
    v2 = 0x800000029DA369B0;
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

unint64_t sub_29D9FAD0C()
{
  v1 = 0x6572656665526F6ELL;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001ELL;
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

unint64_t sub_29D9FADA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_29D9FD4FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_29D9FADC8(uint64_t a1)
{
  v2 = sub_29D9FD868();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9FAE04(uint64_t a1)
{
  v2 = sub_29D9FD868();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9FAE4C@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_29D9FAE7C(uint64_t a1)
{
  v2 = sub_29D9FE14C();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9FAEB8(uint64_t a1)
{
  v2 = sub_29D9FE14C();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9FAF1C(void *a1)
{
  sub_29D9FE0E4(0, &qword_2A1A2CA40, sub_29D9FE14C, &type metadata for HighlightAlertReferenceLineKind.NoExtraData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FE14C();
  sub_29DA35224();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D9FB078@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x800000029DA376E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_29DA35114();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_29D9FB10C(uint64_t a1)
{
  v2 = sub_29D9FE090();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29D9FB148(uint64_t a1)
{
  v2 = sub_29D9FE090();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t sub_29D9FB184@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  sub_29D9FE0E4(0, &qword_2A17D1668, sub_29D9FE090, &type metadata for HighlightAlertReferenceLineKind.ReferenceLineData.CodingKeys, MEMORY[0x29EDC9E80]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13 - v7;
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FE090();
  sub_29DA35214();
  if (v2)
  {
    return sub_29D9C7968(a1);
  }

  v9 = v14;
  sub_29DA35044();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_29D9C7968(a1);
  *v9 = v11;
  return result;
}

uint64_t sub_29D9FB33C(void *a1)
{
  sub_29D9FE0E4(0, &qword_2A17D1678, sub_29D9FE090, &type metadata for HighlightAlertReferenceLineKind.ReferenceLineData.CodingKeys, MEMORY[0x29EDC9E88]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v6 = &v8 - v5;
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FE090();
  sub_29DA35224();
  sub_29DA350C4();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_29D9FB4A8(void *a1, uint64_t a2, char a3)
{
  sub_29D9FE0E4(0, &qword_2A1A2CA48, sub_29D9FD868, &type metadata for HighlightAlertReferenceLineKind.CodingKeys, MEMORY[0x29EDC9E88]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v12 - v9;
  sub_29D9C706C(a1, a1[3]);
  sub_29D9FD868();
  sub_29DA35224();
  if (a3)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v14 = 1;
      }

      else
      {
        v15 = 2;
      }

      sub_29D9FD9B8();
    }

    else
    {
      v13 = 0;
      sub_29D9FD9B8();
    }
  }

  else
  {
    v17 = a2;
    v16 = 3;
    sub_29D9FD964();
  }

  sub_29DA350D4();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_29D9FB6A8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_29D9FD548(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5 & 1;
  }

  return result;
}

void *sub_29D9FB6FC()
{
  v228 = *MEMORY[0x29EDCA608];
  v0 = type metadata accessor for HighlightAlertConfiguration(0);
  v1 = *(v0 - 1);
  v2 = MEMORY[0x2A1C7C4A8](v0);
  v181 = &v180 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v180 = &v180 - v5;
  MEMORY[0x2A1C7C4A8](v4);
  v186 = &v180 - v6;
  v185 = MEMORY[0x29EDC9E90];
  sub_29D9FDA4C(0, &qword_2A1A2DA98, type metadata accessor for HighlightAlertConfiguration, MEMORY[0x29EDC9E90]);
  v219 = *(v1 + 72);
  v7 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v188 = v7 + 6 * v219;
  v8 = swift_allocObject();
  v187 = v8;
  *(v8 + 16) = xmmword_29DA3AF70;
  v189 = v7;
  v9 = v8 + v7;
  v198 = sub_29DA34854();
  v197 = v10;
  v11 = (v9 + v0[7]);
  v12 = type metadata accessor for HighlightAlertDistributionConfiguration(0);
  v13 = v12[7];
  LODWORD(v194) = *MEMORY[0x29EDC4D08];
  v14 = v194;
  v15 = sub_29DA34374();
  v16 = *(v15 - 8);
  v17 = *(v16 + 104);
  v18 = v16 + 104;
  v218 = v15;
  v17(&v11[v13], v14, v15);
  v216 = v18;
  v217 = v17;
  v19 = v12[8];
  v196 = *MEMORY[0x29EDC4C10];
  v20 = v196;
  v210 = sub_29DA34284();
  v21 = *(v210 - 8);
  v22 = *(v21 + 104);
  v208 = v21 + 104;
  v209 = v22;
  (v22)(&v11[v19], v20, v210);
  v23 = v12[9];
  v192 = *MEMORY[0x29EDC48E8];
  v24 = v192;
  v207 = sub_29DA34064();
  v25 = *(v207 - 8);
  v206 = *(v25 + 104);
  v201 = v25 + 104;
  v206(&v11[v23], v24, v207);
  v26 = v12[5];
  v205 = *MEMORY[0x29EDC4CD0];
  (v17)(&v11[v26]);
  *v11 = 0;
  v27 = &v11[v12[6]];
  *v27 = 3;
  v27[8] = 0;
  v11[v12[10]] = 2;
  v28 = &v11[v12[11]];
  *v28 = 0;
  v28[8] = 1;
  v226 = type metadata accessor for HighlightAlertKind(0);
  swift_storeEnumTagMultiPayload();
  v29 = v0[11];
  LODWORD(v190) = *MEMORY[0x29EDC4B90];
  v30 = v190;
  v31 = sub_29DA34264();
  v32 = *(v31 - 8);
  v33 = *(v32 + 104);
  v33(v9 + v29, v30, v31);
  v224 = v33;
  v225 = v32 + 104;
  v217((v9 + v0[12]), v194, v218);
  v34 = v0[9];
  v203 = sub_29DA34394();
  v35 = *(v203 - 8);
  v202 = *(v35 + 56);
  v211 = v35 + 56;
  v202(v9 + v34, 1, 1, v203);
  v36 = v0[14];
  v191 = *MEMORY[0x29EDC4B98];
  v199 = v31;
  (v33)(v9 + v36);
  v37 = *(v32 + 56);
  v200 = v32 + 56;
  v204 = v37;
  v37(v9 + v36, 0, 1, v31);
  v37(v9 + v0[15], 1, 1, v31);
  v37(v9 + v0[16], 1, 1, v31);
  v38 = v0[13];
  v215 = *MEMORY[0x29EDC4920];
  v39 = v215;
  v223 = sub_29DA340E4();
  v40 = *(v223 - 8);
  v41 = *(v40 + 104);
  v221 = v40 + 104;
  v222 = v41;
  v41(v9 + v38, v39, v223);
  sub_29DA342D4();
  v42 = v0[18];
  v214 = *MEMORY[0x29EDC4BF8];
  v43 = v214;
  v213 = sub_29DA34274();
  v44 = *(v213 - 8);
  v212 = *(v44 + 104);
  v220 = v44 + 104;
  v212(v9 + v42, v43, v213);
  v193 = v9;
  v45 = v197;
  *v9 = v198;
  *(v9 + 8) = v45;
  *(v9 + 16) = 257;
  v46 = v9 + v0[19];
  strcpy(v46, "HighHeartRate");
  *(v46 + 14) = -4864;
  v47 = v9 + v0[10];
  *v47 = 1;
  *(v47 + 8) = 1;
  *(v9 + v0[8]) = 2;
  v48 = v9 + v219;
  v198 = sub_29DA34854();
  v197 = v49;
  v50 = (v48 + v0[7]);
  v51 = v194;
  v52 = v217;
  v53 = v218;
  v217(&v50[v12[7]], v194, v218);
  (v209)(&v50[v12[8]], v196, v210);
  v206(&v50[v12[9]], v192, v207);
  v52(&v50[v12[5]], v205, v53);
  *v50 = 0;
  v195 = v12;
  v54 = &v50[v12[6]];
  *v54 = 4;
  v54[8] = 0;
  v50[v12[10]] = 2;
  v55 = &v50[v12[11]];
  *v55 = 0;
  v55[8] = 1;
  swift_storeEnumTagMultiPayload();
  v56 = v199;
  v57 = v224;
  v224(v48 + v0[11], v190, v199);
  v52((v48 + v0[12]), v51, v53);
  v58 = v203;
  v59 = v202;
  v202(v48 + v0[9], 1, 1, v203);
  v60 = v56;
  v61 = v56;
  v62 = v204;
  v204(v48 + v0[14], 1, 1, v60);
  v63 = v0[15];
  v57(v48 + v63, v191, v61);
  v62(v48 + v63, 0, 1, v61);
  v62(v48 + v0[16], 1, 1, v61);
  v222(v48 + v0[13], v215, v223);
  sub_29DA342D4();
  v212(v48 + v0[18], v214, v213);
  v64 = v197;
  *v48 = v198;
  *(v48 + 8) = v64;
  *(v48 + 16) = 257;
  v65 = v48 + v0[19];
  strcpy(v65, "LowHeartRate");
  *(v65 + 13) = 0;
  *(v65 + 14) = -5120;
  v66 = v48 + v0[10];
  *v66 = 1;
  *(v66 + 8) = 1;
  *(v48 + v0[8]) = 2;
  v184 = 2 * v219;
  v67 = v193 + 2 * v219;
  v183 = sub_29DA34854();
  v182 = v68;
  v59(v67 + v0[9], 1, 1, v58);
  v62(v67 + v0[14], 1, 1, v61);
  v62(v67 + v0[15], 1, 1, v61);
  v62(v67 + v0[16], 1, 1, v61);
  v69 = (v67 + v0[7]);
  v70 = v195;
  v71 = v217;
  v72 = v218;
  v217(&v69[v195[5]], v205, v218);
  v73 = v70[7];
  v192 = *MEMORY[0x29EDC4CC8];
  v71(&v69[v73]);
  v74 = v70[8];
  v191 = *MEMORY[0x29EDC4C20];
  v209(&v69[v74]);
  v75 = v70[9];
  LODWORD(v198) = *MEMORY[0x29EDC48E0];
  (v206)(&v69[v75]);
  *v69 = 0;
  v76 = &v69[v70[6]];
  *v76 = 0;
  v76[8] = 1;
  v69[v70[10]] = 0;
  v77 = &v69[v70[11]];
  *v77 = 0;
  v77[8] = 1;
  swift_storeEnumTagMultiPayload();
  v78 = v0[11];
  LODWORD(v197) = *MEMORY[0x29EDC4B68];
  (v224)(v67 + v78);
  v79 = v0[12];
  v196 = *MEMORY[0x29EDC4CF0];
  v80 = v71;
  v71((v67 + v79));
  v222(v67 + v0[13], v215, v223);
  sub_29DA342D4();
  v212(v67 + v0[18], v214, v213);
  v81 = v182;
  *v67 = v183;
  *(v67 + 8) = v81;
  *(v67 + 16) = 1;
  v82 = (v67 + v0[19]);
  *v82 = 5132873;
  v82[1] = 0xE300000000000000;
  v83 = v67 + v0[10];
  *v83 = 0;
  *(v83 + 8) = 1;
  *(v67 + v0[8]) = 0;
  v84 = v193 + v184 + v219;
  v184 = sub_29DA34854();
  v183 = v85;
  v86 = (v84 + v0[7]);
  v87 = *MEMORY[0x29EDC4D00];
  v80(&v86[v70[7]], v87, v72);
  (v209)(&v86[v70[8]], *MEMORY[0x29EDC4C00], v210);
  v206(&v86[v70[9]], v198, v207);
  v88 = v199;
  v89 = v72;
  v80(&v86[v70[5]], v205, v72);
  *v86 = 0;
  v90 = &v86[v70[6]];
  *v90 = 5;
  v90[8] = 0;
  v86[v70[10]] = 1;
  v91 = &v86[v70[11]];
  *v91 = 0;
  v91[8] = 1;
  swift_storeEnumTagMultiPayload();
  v92 = v224;
  v224(v84 + v0[11], *MEMORY[0x29EDC4B80], v88);
  v80((v84 + v0[12]), v87, v89);
  v202(v84 + v0[9], 1, 1, v203);
  v222(v84 + v0[13], *MEMORY[0x29EDC4918], v223);
  v93 = v204;
  v204(v84 + v0[14], 1, 1, v88);
  v93(v84 + v0[15], 1, 1, v88);
  v94 = v93;
  v95 = v0[16];
  v92(v84 + v95, *MEMORY[0x29EDC4B88], v88);
  v94(v84 + v95, 0, 1, v88);
  v96 = MEMORY[0x29EDC4C50];
  sub_29D9FDA4C(0, &qword_2A1A2DA90, MEMORY[0x29EDC4C50], v185);
  sub_29DA342E4();
  v97 = swift_allocObject();
  *(v97 + 16) = xmmword_29DA3AB40;
  sub_29DA342C4();
  v227 = v97;
  sub_29D9FDAB0();
  sub_29D9FDA4C(0, &qword_2A1A2DB58, v96, MEMORY[0x29EDC9A40]);
  sub_29D9FDB08();
  sub_29DA34CD4();
  v98 = v214;
  v99 = v212;
  v100 = v213;
  v212(v84 + v0[18], v214, v213);
  v101 = v183;
  *v84 = v184;
  *(v84 + 8) = v101;
  *(v84 + 16) = 1;
  *(v84 + 17) = 1;
  v102 = (v84 + v0[19]);
  *v102 = 0x6573696F4ELL;
  v102[1] = 0xE500000000000000;
  v103 = v84 + v0[10];
  *v103 = 2;
  *(v103 + 8) = 1;
  *(v84 + v0[8]) = 1;
  v185 = (4 * v219);
  v104 = v193;
  v105 = v193 + 4 * v219;
  v184 = sub_29DA34854();
  v183 = v106;
  swift_storeEnumTagMultiPayload();
  v202(v105 + v0[9], 1, 1, v203);
  v107 = v204;
  v204(v105 + v0[14], 1, 1, v88);
  v107(v105 + v0[15], 1, 1, v88);
  v107(v105 + v0[16], 1, 1, v88);
  v224(v105 + v0[11], v197, v88);
  v108 = v217;
  v109 = v218;
  v217((v105 + v0[12]), v196, v218);
  v222(v105 + v0[13], v215, v223);
  sub_29DA342D4();
  v99(v105 + v0[18], v98, v100);
  v110 = v183;
  *v105 = v184;
  *(v105 + 8) = v110;
  *(v105 + 16) = 0;
  *(v105 + 17) = 1;
  v111 = (v105 + v0[19]);
  strcpy(v111, "HeadphoneAudio");
  v111[15] = -18;
  v112 = v105 + v0[10];
  *v112 = 0;
  *(v112 + 8) = 1;
  *(v105 + v0[8]) = 0;
  v113 = v185 + v219 + v104;
  v185 = sub_29DA34854();
  v184 = v114;
  v193 = 0x800000029DA376A0;
  v115 = &v113[v0[7]];
  v116 = type metadata accessor for HighlightAlertDailyAveragesConfiguration(0);
  v117 = v194;
  v118 = v109;
  v108(&v115[*(v116 + 20)], v194, v109);
  v119 = v195;
  v120 = *MEMORY[0x29EDC4D70];
  v121 = sub_29DA343A4();
  (*(*(v121 - 8) + 104))(v115, v120, v121);
  v122 = *(v116 + 24);
  v123 = *MEMORY[0x29EDC4B10];
  v124 = sub_29DA341E4();
  (*(*(v124 - 8) + 104))(&v115[v122], v123, v124);
  swift_storeEnumTagMultiPayload();
  v125 = v199;
  v224(&v113[v0[11]], v190, v199);
  v108(&v113[v0[12]], v117, v118);
  v126 = v203;
  v127 = v202;
  v202(&v113[v0[9]], 1, 1, v203);
  v128 = v204;
  v204(&v113[v0[14]], 1, 1, v125);
  v128(&v113[v0[15]], 1, 1, v125);
  v129 = v125;
  v128(&v113[v0[16]], 1, 1, v125);
  v222(&v113[v0[13]], v215, v223);
  sub_29DA342D4();
  v212(&v113[v0[18]], v214, v213);
  v130 = v184;
  *v113 = v185;
  *(v113 + 1) = v130;
  v113[16] = 1;
  v113[17] = 1;
  v131 = &v113[v0[19]];
  *v131 = 0xD000000000000010;
  *(v131 + 1) = v193;
  v132 = &v113[v0[10]];
  *v132 = 2;
  v132[8] = 1;
  v113[v0[8]] = 0;
  v193 = sub_29DA34854();
  v190 = v133;
  v194 = 0x800000029DA376C0;
  v134 = v186;
  v127(&v186[v0[9]], 1, 1, v126);
  v128((v134 + v0[14]), 1, 1, v129);
  v128((v134 + v0[15]), 1, 1, v129);
  v128((v134 + v0[16]), 1, 1, v129);
  v135 = (v134 + v0[7]);
  v137 = v217;
  v136 = v218;
  v217(&v135[v119[5]], v205, v218);
  v137(&v135[v119[7]], v192, v136);
  (v209)(&v135[v119[8]], v191, v210);
  v206(&v135[v119[9]], v198, v207);
  *v135 = 0;
  v138 = &v135[v119[6]];
  *v138 = 0;
  v138[8] = 1;
  v135[v119[10]] = 0;
  v139 = &v135[v119[11]];
  *v139 = 0;
  v139[8] = 1;
  swift_storeEnumTagMultiPayload();
  v224(v134 + v0[11], v197, v129);
  v137((v134 + v0[12]), v196, v136);
  v222(v134 + v0[13], v215, v223);
  sub_29DA342D4();
  v212(v134 + v0[18], v214, v213);
  v140 = v190;
  *v134 = v193;
  *(v134 + 8) = v140;
  *(v134 + 16) = 1;
  v141 = (v134 + v0[19]);
  *v141 = 0xD000000000000014;
  v141[1] = v194;
  v142 = v134 + v0[10];
  *v142 = 0;
  *(v142 + 8) = 1;
  *(v134 + v0[8]) = 0;
  v143 = sub_29D9D5360(1, 7, 1, v187);
  v143[2] = 7;
  sub_29D9F7B00(v134, v143 + v188);
  v144 = [objc_opt_self() sharedBehavior];
  if (!v144)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  v145 = v144;
  v146 = [v144 features];

  if (!v146)
  {
    goto LABEL_11;
  }

  v147 = [v146 hermit];

  v148 = v181;
  if (v147)
  {
    v194 = sub_29DA34854();
    v193 = v149;
    v150 = v180;
    v202(v180 + v0[9], 1, 1, v203);
    v151 = v199;
    v152 = v204;
    v204(v150 + v0[14], 1, 1, v199);
    v152(v150 + v0[15], 1, 1, v151);
    v152(v150 + v0[16], 1, 1, v151);
    v153 = v143;
    v154 = (v150 + v0[7]);
    v155 = v195;
    v157 = v217;
    v156 = v218;
    v217(&v154[v195[5]], v205, v218);
    v157(&v154[v155[7]], v192, v156);
    (v209)(&v154[v155[8]], v191, v210);
    v206(&v154[v155[9]], v198, v207);
    *v154 = 0;
    v158 = &v154[v155[6]];
    *v158 = 0;
    v158[8] = 1;
    v154[v155[10]] = 0;
    v159 = &v154[v155[11]];
    *v159 = 0;
    v159[8] = 1;
    swift_storeEnumTagMultiPayload();
    v224(v150 + v0[11], v197, v151);
    v157((v150 + v0[12]), v196, v156);
    v222(v150 + v0[13], v215, v223);
    sub_29DA342D4();
    v212(v150 + v0[18], v214, v213);
    v160 = v193;
    *v150 = v194;
    *(v150 + 8) = v160;
    *(v150 + 16) = 1;
    v161 = v150 + v0[19];
    strcpy(v161, "Hypertension");
    *(v161 + 13) = 0;
    *(v161 + 14) = -5120;
    v162 = v150 + v0[10];
    *v162 = 0;
    *(v162 + 8) = 1;
    *(v150 + v0[8]) = 0;
    v164 = v143[2];
    v163 = v143[3];
    if (v164 >= v163 >> 1)
    {
      v153 = sub_29D9D5360((v163 > 1), v164 + 1, 1, v143);
    }

    v153[2] = v164 + 1;
    sub_29D9F7B00(v180, v153 + v189 + v164 * v219);
    v143 = v153;
  }

  v194 = sub_29DA34854();
  v193 = v165;
  v202(v148 + v0[9], 1, 1, v203);
  v166 = v199;
  v167 = v204;
  v204(v148 + v0[14], 1, 1, v199);
  v167(v148 + v0[15], 1, 1, v166);
  v167(v148 + v0[16], 1, 1, v166);
  v168 = (v148 + v0[7]);
  v169 = v195;
  v170 = v217;
  v171 = v218;
  v217(&v168[v195[5]], v205, v218);
  v170(&v168[v169[7]], v192, v171);
  (v209)(&v168[v169[8]], v191, v210);
  v206(&v168[v169[9]], v198, v207);
  *v168 = 0;
  v172 = &v168[v169[6]];
  *v172 = 0;
  v172[8] = 1;
  v168[v169[10]] = 0;
  v173 = &v168[v169[11]];
  *v173 = 0;
  v173[8] = 1;
  swift_storeEnumTagMultiPayload();
  v224(v148 + v0[11], v197, v166);
  v170((v148 + v0[12]), v196, v171);
  v222(v148 + v0[13], v215, v223);
  sub_29DA342D4();
  v212(v148 + v0[18], v214, v213);
  v174 = v193;
  *v148 = v194;
  *(v148 + 8) = v174;
  *(v148 + 16) = 1;
  v175 = (v148 + v0[19]);
  *v175 = 0x6E70417065656C53;
  v175[1] = 0xEA00000000006165;
  v176 = v148 + v0[10];
  *v176 = 0;
  *(v176 + 8) = 1;
  *(v148 + v0[8]) = 0;
  v178 = v143[2];
  v177 = v143[3];
  if (v178 >= v177 >> 1)
  {
    v143 = sub_29D9D5360((v177 > 1), v178 + 1, 1, v143);
  }

  v143[2] = v178 + 1;
  sub_29D9F7B00(v148, v143 + v189 + v178 * v219);
  return v143;
}

unint64_t sub_29D9FD4FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_29DA34FE4();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_29D9FD548(void *a1)
{
  sub_29D9FE0E4(0, &qword_2A1A2DAA8, sub_29D9FD868, &type metadata for HighlightAlertReferenceLineKind.CodingKeys, MEMORY[0x29EDC9E80]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v14[-v6];
  v8 = sub_29D9C706C(a1, a1[3]);
  sub_29D9FD868();
  v9 = v8;
  sub_29DA35214();
  if (v1)
  {
    goto LABEL_10;
  }

  v10 = sub_29DA35064();
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = *(v10 + v11 + 31);

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v14[14] = 2;
        sub_29D9FD910();
        sub_29DA35054();
        (*(v5 + 8))(v7, v4);
        v9 = 2;
      }

      else
      {
        v14[15] = 3;
        sub_29D9FD8BC();
        sub_29DA35054();
        (*(v5 + 8))(v7, v4);
        v9 = v15;
      }
    }

    else if (v12)
    {
      v14[13] = 1;
      sub_29D9FD910();
      sub_29DA35054();
      (*(v5 + 8))(v7, v4);
      v9 = 1;
    }

    else
    {
      v14[12] = 0;
      sub_29D9FD910();
      sub_29DA35054();
      (*(v5 + 8))(v7, v4);
      v9 = 0;
    }

LABEL_10:
    sub_29D9C7968(a1);
    return v9;
  }

  __break(1u);
  return result;
}

unint64_t sub_29D9FD868()
{
  result = qword_2A1A2DD98[0];
  if (!qword_2A1A2DD98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2A1A2DD98);
  }

  return result;
}

unint64_t sub_29D9FD8BC()
{
  result = qword_2A17D1640;
  if (!qword_2A17D1640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1640);
  }

  return result;
}

unint64_t sub_29D9FD910()
{
  result = qword_2A1A2DD80;
  if (!qword_2A1A2DD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD80);
  }

  return result;
}

unint64_t sub_29D9FD964()
{
  result = qword_2A17D1648;
  if (!qword_2A17D1648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1648);
  }

  return result;
}

unint64_t sub_29D9FD9B8()
{
  result = qword_2A1A2CF80;
  if (!qword_2A1A2CF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF80);
  }

  return result;
}

void sub_29D9FDA4C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_29D9FDAB0()
{
  result = qword_2A1A2DB88;
  if (!qword_2A1A2DB88)
  {
    sub_29DA342E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB88);
  }

  return result;
}

unint64_t sub_29D9FDB08()
{
  result = qword_2A1A2DB50;
  if (!qword_2A1A2DB50)
  {
    sub_29D9FDA4C(255, &qword_2A1A2DB58, MEMORY[0x29EDC4C50], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DB50);
  }

  return result;
}

uint64_t sub_29D9FDBE0(uint64_t a1)
{
  result = type metadata accessor for HighlightAlertDistributionConfiguration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HighlightAlertDailyAveragesConfiguration(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_29D9FDCAC(uint64_t a1)
{
  sub_29D9FDE68();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HighlightAlertKind(319);
    if (v2 <= 0x3F)
    {
      sub_29D9FDA4C(319, &qword_2A1A2DB80, MEMORY[0x29EDC4D60], MEMORY[0x29EDC9C68]);
      if (v3 <= 0x3F)
      {
        sub_29DA34264();
        if (v4 <= 0x3F)
        {
          sub_29DA34374();
          if (v5 <= 0x3F)
          {
            sub_29DA340E4();
            if (v6 <= 0x3F)
            {
              sub_29D9FDA4C(319, &qword_2A1A2DB90, MEMORY[0x29EDC4BE0], MEMORY[0x29EDC9C68]);
              if (v7 <= 0x3F)
              {
                sub_29DA342E4();
                if (v8 <= 0x3F)
                {
                  sub_29DA34274();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
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

void sub_29D9FDE68()
{
  if (!qword_2A1A2D010)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2D010);
    }
  }
}

unint64_t sub_29D9FDEDC()
{
  result = qword_2A17D1650;
  if (!qword_2A17D1650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1650);
  }

  return result;
}

unint64_t sub_29D9FDF34()
{
  result = qword_2A17D1658;
  if (!qword_2A17D1658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1658);
  }

  return result;
}

unint64_t sub_29D9FDF8C()
{
  result = qword_2A17D1660;
  if (!qword_2A17D1660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1660);
  }

  return result;
}

unint64_t sub_29D9FDFE4()
{
  result = qword_2A1A2DD88;
  if (!qword_2A1A2DD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD88);
  }

  return result;
}

unint64_t sub_29D9FE03C()
{
  result = qword_2A1A2DD90;
  if (!qword_2A1A2DD90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2DD90);
  }

  return result;
}

unint64_t sub_29D9FE090()
{
  result = qword_2A17D1670;
  if (!qword_2A17D1670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1670);
  }

  return result;
}

void sub_29D9FE0E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

unint64_t sub_29D9FE14C()
{
  result = qword_2A1A2CF98;
  if (!qword_2A1A2CF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF98);
  }

  return result;
}

unint64_t sub_29D9FE1A0()
{
  result = qword_2A17D1680;
  if (!qword_2A17D1680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1680);
  }

  return result;
}

unint64_t sub_29D9FE218()
{
  result = qword_2A17D1688;
  if (!qword_2A17D1688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1688);
  }

  return result;
}

unint64_t sub_29D9FE270()
{
  result = qword_2A1A2CF88;
  if (!qword_2A1A2CF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF88);
  }

  return result;
}

unint64_t sub_29D9FE2C8()
{
  result = qword_2A1A2CF90;
  if (!qword_2A1A2CF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2CF90);
  }

  return result;
}

unint64_t sub_29D9FE320()
{
  result = qword_2A17D1690;
  if (!qword_2A17D1690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1690);
  }

  return result;
}

unint64_t sub_29D9FE378()
{
  result = qword_2A17D1698;
  if (!qword_2A17D1698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1698);
  }

  return result;
}

uint64_t type metadata accessor for HighlightAlertEventQueryOperation(uint64_t a1)
{
  result = qword_2A1A2D6F0;
  if (!qword_2A1A2D6F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29D9FE428(uint64_t a1)
{
  result = sub_29DA336F4();
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

id sub_29D9FE508()
{
  v1 = qword_2A1A2D728;
  v2 = *&v0[qword_2A1A2D728];
  if (v2)
  {
    v3 = *&v0[qword_2A1A2D728];
  }

  else
  {
    v4 = sub_29D9FE56C(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_29D9FE56C(char *a1)
{
  v62 = a1;
  v1 = sub_29DA33554();
  v58 = *(v1 - 8);
  v59 = v1;
  MEMORY[0x2A1C7C4A8](v1);
  v61 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29DA33794();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9FF56C(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29DA336F4();
  v63 = *(v9 - 8);
  v10 = v63;
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v54 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x2A1C7C4A8](v11);
  v53 = &v52 - v14;
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v17 = &v52 - v16;
  MEMORY[0x2A1C7C4A8](v15);
  v19 = &v52 - v18;
  v20 = sub_29DA337A4();
  v56 = *(v20 - 8);
  v57 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33784();
  v23 = *(v10 + 16);
  v23(v19, &v62[qword_2A1A2D720], v9);
  (*(v4 + 104))(v6, *MEMORY[0x29EDB9CB8], v3);
  v24 = v60;
  v52 = v19;
  v55 = v22;
  sub_29DA33774();
  v25 = v6;
  v26 = v63;
  (*(v4 + 8))(v25, v3);
  result = (*(v26 + 48))(v24, 1, v9);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v26 + 32))(v17, v24, v9);
    v23(v53, v17, v9);
    v28 = v52;
    v60 = v9;
    v23(v54, v52, v9);
    sub_29DA33504();
    v29 = objc_opt_self();
    v30 = sub_29DA334D4();
    v31 = [v29 predicateForSamplesWithinDateInterval:v30 options:0];

    v32 = v62;
    v33 = v62[qword_2A1A2D700 + 8];
    v34 = v28;
    v54 = v31;
    if (v33)
    {
      v35 = v31;
      v53 = 0;
    }

    else
    {
      v36 = [v29 predicateForCategorySamplesWithOperatorType:4 value:*&v62[qword_2A1A2D700]];
      sub_29D9FF658();
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_29DA3B570;
      *(v37 + 32) = v31;
      *(v37 + 40) = v36;
      sub_29D9C79FC(0, &qword_2A1A2CB48, 0x29EDBA0A8);
      v38 = v36;
      v39 = v31;
      v40 = sub_29DA34944();

      v35 = [objc_opt_self() andPredicateWithSubpredicates_];
      v53 = v38;
    }

    v41 = *&v32[qword_2A1A2D710];
    v42 = [v32 name];
    if (v42)
    {
      v43 = v42;
      sub_29DA34854();
    }

    v44 = *&v32[qword_2A1A2D718];
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_29D9FF5D0(0);
    v46 = objc_allocWithZone(v45);
    v47 = v44;
    v48 = v35;
    v49 = sub_29DA344C4();

    (*(v58 + 8))(v61, v59);
    v50 = *(v63 + 8);
    v51 = v60;
    v50(v17, v60);
    v50(v34, v51);
    (*(v56 + 8))(v55, v57);
    return v49;
  }

  return result;
}

void sub_29D9FEC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if ([Strong isCancelled] || (v5 = objc_msgSend(v4, sel_isFinished), v5))
    {
    }

    else
    {
      MEMORY[0x2A1C7C4A8](v5);
      sub_29DA33BF4();
    }
  }
}

void sub_29D9FECF8()
{
  v1 = [objc_opt_self() currentQueue];
  if (v1)
  {
    v2 = v1;
    v3 = [*(v0 + qword_2A1A2D710) identifier];
    sub_29DA34854();

    sub_29DA34B04();

    v5 = sub_29D9FE508();
    [v2 addOperation_];
  }

  else
  {
    sub_29DA34DF4();
    swift_getObjectType();
    v4 = sub_29DA35254();
    MEMORY[0x29ED6D450](v4);

    MEMORY[0x29ED6D450](0xD000000000000031, 0x800000029DA373C0);
    sub_29DA34F64();
    __break(1u);
  }
}

void sub_29D9FEE6C(void *a1)
{
  v1 = a1;
  sub_29D9FECF8();
}

id sub_29D9FEEB4()
{
  v1 = v0;
  sub_29DA34AF4();
  result = [v0 isCancelled];
  if (result)
  {
    v3 = sub_29D9FE508();
    v4 = [v3 isCancelled];

    if ((v4 & 1) == 0)
    {
      [*&v1[qword_2A1A2D728] cancel];
    }

    sub_29D9FF514();
    v5 = swift_allocError();
    *v6 = 1;
    MEMORY[0x2A1C7C4A8](v5);

    sub_29DA33B54();

    return sub_29DA34B24();
  }

  return result;
}

uint64_t sub_29D9FEFE8(void *a1, char a2, char *a3)
{
  v6 = sub_29DA34644();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v27[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a2)
  {
    sub_29DA34614();
    v11 = a3;
    sub_29D9DC0BC(a1);
    v12 = sub_29DA34634();
    v13 = sub_29DA34B84();

    sub_29D9DC0B0(a1);
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v14 = 136380931;
      v15 = [*&v11[qword_2A1A2D710] identifier];
      v28 = v13;
      v16 = v15;
      v17 = sub_29DA34854();
      v30 = v11;
      v19 = v18;

      v20 = sub_29D9EBB44(v17, v19, &v31);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2082;
      swift_getErrorValue();
      v21 = sub_29DA35154();
      v23 = sub_29D9EBB44(v21, v22, &v31);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_29D9BB000, v12, v28, "HighlightAlert process query result failed for type: %{private}s, error: %{public}s", v14, 0x16u);
      v24 = v29;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v24, -1, -1);
      MEMORY[0x29ED6E4C0](v14, -1, -1);
    }

    v25 = (*(v7 + 8))(v10, v6);
    MEMORY[0x2A1C7C4A8](v25);
    *&v27[-16] = a1;
    v27[-8] = 1;
    sub_29D9DC0BC(a1);

    sub_29DA33B54();

    sub_29D9DC0B0(a1);
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v8);
    *&v27[-16] = a1;
    v27[-8] = 0;

    sub_29DA33B54();
  }

  return sub_29DA34B14();
}

void sub_29D9FF380()
{

  v1 = qword_2A1A2D720;
  v2 = sub_29DA336F4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + qword_2A1A2D728);
}

id sub_29D9FF428()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HighlightAlertEventQueryOperation(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29D9FF460(uint64_t a1)
{

  v2 = qword_2A1A2D720;
  v3 = sub_29DA336F4();
  (*(*(v3 - 8) + 8))(a1 + v2, v3);
  v4 = *(a1 + qword_2A1A2D728);
}

unint64_t sub_29D9FF514()
{
  result = qword_2A1A2D6E8;
  if (!qword_2A1A2D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D6E8);
  }

  return result;
}

void sub_29D9FF56C(uint64_t a1)
{
  if (!qword_2A1A2E148)
  {
    sub_29DA336F4();
    v1 = sub_29DA34CC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2E148);
    }
  }
}

void sub_29D9FF5D0(uint64_t a1)
{
  if (!qword_2A1A2D4D8)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2E010, 0x29EDBAD60);
    v1 = sub_29DA344D4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D4D8);
    }
  }
}

void sub_29D9FF658()
{
  if (!qword_2A1A2E000)
  {
    v0 = sub_29DA35104();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2E000);
    }
  }
}

id sub_29D9FF6BC(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  sub_29D9DC0B0(*a1);
  *a1 = v3;
  *(a1 + 8) = v4;

  return sub_29D9DC0BC(v3);
}

unint64_t sub_29D9FF72C()
{
  result = qword_2A17D16A0;
  if (!qword_2A17D16A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D16A0);
  }

  return result;
}

uint64_t ChangeDetectorError.hashValue.getter(unsigned __int8 a1)
{
  sub_29DA351B4();
  MEMORY[0x29ED6DD30](a1);
  return sub_29DA351E4();
}

uint64_t AggregateChangeDetector.dispatchPending.getter()
{
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

  sub_29DA33F54();

  return 0;
}

char *AggregateChangeDetector.__allocating_init(types:highFrequencyTypes:anchor:includeChangeDetails:name:healthStore:deliveryQueue:otherChangePublishers:changesHandler:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v15 = objc_allocWithZone(v11);
  v16 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler;
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler] = 0;
  v17 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries;
  v18 = MEMORY[0x29EDCA190];
  sub_29D9C64B8(0);
  swift_allocObject();
  *&v15[v17] = sub_29DA33B74();
  v19 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges;
  v35 = v18;
  v20 = MEMORY[0x29EDC3C80];
  sub_29DA05504(0, &qword_2A1A2D2C0, sub_29D9C6624, MEMORY[0x29EDC3C80]);
  swift_allocObject();
  *&v15[v19] = sub_29DA33B74();
  v21 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock;
  sub_29DA33854();
  swift_allocObject();
  *&v15[v21] = sub_29DA33844();
  v22 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  v23 = sub_29DA33A94();
  (*(*(v23 - 8) + 56))(&v15[v22], 1, 1, v23);
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError] = 0;
  v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 0;
  v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state] = 0;
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore] = a7;
  v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_includeChangeDetails] = a4;
  v24 = &v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name];
  *v24 = a5;
  v24[1] = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = a10;
  *(v25 + 24) = a11;
  v36 = v25;
  sub_29DA05504(0, &qword_2A1A2D2A8, sub_29DA0001C, v20);
  swift_allocObject();
  v26 = a7;

  *&v15[v16] = sub_29DA33B74();

  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue] = a8;
  v35 = a9;
  sub_29DA05504(0, &qword_2A1A2D2C8, sub_29DA000EC, v20);
  swift_allocObject();
  v27 = a8;
  *&v15[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers] = sub_29DA33B74();
  v34.receiver = v15;
  v34.super_class = v32;
  v28 = objc_msgSendSuper2(&v34, sel_init);

  sub_29DA33B54();

  return v28;
}

char *AggregateChangeDetector.init(types:highFrequencyTypes:anchor:includeChangeDetails:name:healthStore:deliveryQueue:otherChangePublishers:changesHandler:)(uint64_t a1, uint64_t a2, void *a3, char a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v16 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler;
  *&v11[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler] = 0;
  v17 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_queries;
  v18 = MEMORY[0x29EDCA190];
  sub_29D9C64B8(0);
  swift_allocObject();
  *&v11[v17] = sub_29DA33B74();
  v19 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChanges;
  v34 = v18;
  v20 = MEMORY[0x29EDC3C80];
  sub_29DA05504(0, &qword_2A1A2D2C0, sub_29D9C6624, MEMORY[0x29EDC3C80]);
  swift_allocObject();
  *&v11[v19] = sub_29DA33B74();
  v21 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock;
  sub_29DA33854();
  swift_allocObject();
  *&v11[v21] = sub_29DA33844();
  v22 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  v23 = sub_29DA33A94();
  (*(*(v23 - 8) + 56))(&v12[v22], 1, 1, v23);
  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError] = 0;
  v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 0;
  v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state] = 0;
  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore] = a7;
  v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_includeChangeDetails] = a4;
  v24 = &v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name];
  *v24 = a5;
  v24[1] = a6;
  v25 = swift_allocObject();
  *(v25 + 16) = a10;
  *(v25 + 24) = a11;
  v35 = v25;
  sub_29DA05504(0, &qword_2A1A2D2A8, sub_29DA0001C, v20);
  swift_allocObject();
  v26 = a7;

  *&v12[v16] = sub_29DA33B74();

  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue] = a8;
  v34 = a9;
  sub_29DA05504(0, &qword_2A1A2D2C8, sub_29DA000EC, v20);
  swift_allocObject();
  v27 = a8;
  *&v12[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_otherChangePublishers] = sub_29DA33B74();
  v33.receiver = v12;
  v33.super_class = type metadata accessor for AggregateChangeDetector(0);
  v28 = objc_msgSendSuper2(&v33, sel_init);

  sub_29DA33B54();

  return v28;
}

unint64_t sub_29DA0001C()
{
  result = qword_2A1A2C9C8;
  if (!qword_2A1A2C9C8)
  {
    sub_29DA0007C(255);
    result = swift_getFunctionTypeMetadata1();
    atomic_store(result, &qword_2A1A2C9C8);
  }

  return result;
}

void sub_29DA0007C(uint64_t a1)
{
  if (!qword_2A1A2D3E0)
  {
    sub_29DA33A94();
    sub_29D9C6144();
    v1 = sub_29DA35204();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2D3E0);
    }
  }
}

void sub_29DA00120(uint64_t a1)
{
  if (!qword_2A1A2CC40)
  {
    sub_29DA33A94();
    v1 = sub_29DA34694();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CC40);
    }
  }
}

void sub_29DA00188(void *a1, char *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  AggregateChangeDetector.databaseChangesQuery(for:anchor:)(a3, a4);
  MEMORY[0x29ED6D4A0]();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29DA34974();
  }

  sub_29DA34994();
  v8 = a5;
  if (a5 >> 62)
  {
    v24 = sub_29DA34D34();
    v8 = a5;
    v9 = v24;
    if (!v24)
    {
      return;
    }
  }

  else
  {
    v9 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v9)
    {
      return;
    }
  }

  if (v9 < 1)
  {
    __break(1u);
  }

  else
  {
    v10 = 0;
    v11 = *&a2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name + 8];
    v25 = v8 & 0xC000000000000001;
    v12 = v8;
    do
    {
      if (v25)
      {
        v13 = MEMORY[0x29ED6D970](v10);
      }

      else
      {
        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      v15 = swift_allocObject();
      *(v15 + 16) = 1;
      v16 = swift_allocObject();
      v16[2] = a2;
      v16[3] = v15;
      v16[4] = v14;
      v17 = objc_allocWithZone(MEMORY[0x29EDBACC0]);
      aBlock[4] = sub_29DA054D8;
      aBlock[5] = v16;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DA04AD8;
      aBlock[3] = &unk_2A2461D88;
      v18 = _Block_copy(aBlock);
      v19 = a2;

      v20 = v14;
      v21 = [v17 initWithSampleType:v20 predicate:0 updateHandler:v18];
      _Block_release(v18);

      v22 = v21;
      if (v11)
      {
        v23 = sub_29DA34824();
      }

      else
      {
        v23 = 0;
      }

      [v22 setDebugIdentifier_];

      [v22 setObserveUnfrozenSeries_];

      MEMORY[0x29ED6D4A0]();
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29DA34974();
      }

      ++v10;
      sub_29DA34994();

      v8 = v12;
    }

    while (v9 != v10);
  }
}

uint64_t type metadata accessor for AggregateChangeDetector(uint64_t a1)
{
  result = qword_2A1A2CD00;
  if (!qword_2A1A2CD00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AggregateChangeDetector.start()()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v18 = *&v0[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  v15 = v0;
  v16 = &v19;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

  sub_29DA33F54();

  if (v19)
  {
    swift_willThrow();
  }

  else
  {
    MEMORY[0x2A1C7C4A8](v5);
    *(&v14 - 2) = v0;

    sub_29DA33B54();

    sub_29DA34614();
    v6 = v0;
    v7 = sub_29DA34634();
    v8 = sub_29DA34BA4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136446210;
      ObjectType = swift_getObjectType();
      sub_29DA04CAC();
      v11 = sub_29DA34894();
      v13 = sub_29D9EBB44(v11, v12, &v18);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_29D9BB000, v7, v8, "%{public}s Started.", v9, 0xCu);
      sub_29D9C7968(v10);
      MEMORY[0x29ED6E4C0](v10, -1, -1);
      MEMORY[0x29ED6E4C0](v9, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_29DA007C8(uint64_t a1, void **a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state);
  if (v3 == 1)
  {
    sub_29DA052B8();
    v4 = swift_allocError();
    *v6 = 0;
    goto LABEL_5;
  }

  if (v3 != 2)
  {
    *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) = 1;

    sub_29DA33B44();

    if (v15 >> 62)
    {
      v9 = sub_29DA34D34();
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v9 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_17;
      }
    }

    if (v9 < 1)
    {
      __break(1u);
      return;
    }

    v10 = a1;
    v11 = 0;
    v12 = *(v10 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore);
    do
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x29ED6D970](v11);
      }

      else
      {
        v13 = *(v15 + 8 * v11 + 32);
      }

      v14 = v13;
      ++v11;
      [v12 executeQuery_];
    }

    while (v9 != v11);
LABEL_17:

    return;
  }

  sub_29DA052B8();
  v4 = swift_allocError();
  *v5 = 2;
LABEL_5:
  v7 = *a2;
  *a2 = v4;
}

uint64_t sub_29DA00984(void *a1, uint64_t a2)
{
  sub_29DA33B44();
  v3 = *(v7 + 16);
  if (v3)
  {
    v4 = v7 + 32;
    do
    {
      swift_allocObject();
      swift_unknownObjectWeakInit();
      sub_29DA00120(0);
      sub_29DA05484(&qword_2A1A2CC48, sub_29DA00120, MEMORY[0x29EDB8A00]);

      sub_29DA34734();

      MEMORY[0x29ED6D4A0](v5);
      if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29DA34974();
      }

      sub_29DA34994();

      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

Swift::Void __swiftcall AggregateChangeDetector.stop()()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v13[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = *&v0[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  v14 = v0;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

  sub_29DA33F54();

  sub_29DA34614();
  v5 = v0;
  v6 = sub_29DA34634();
  v7 = sub_29DA34BA4();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    ObjectType = swift_getObjectType();
    sub_29DA04CAC();
    v10 = sub_29DA34894();
    v12 = sub_29D9EBB44(v10, v11, &v16);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29D9BB000, v6, v7, "%{public}s Stopped.", v8, 0xCu);
    sub_29D9C7968(v9);
    MEMORY[0x29ED6E4C0](v9, -1, -1);
    MEMORY[0x29ED6E4C0](v8, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AggregateChangeDetector.dispatchChanges()()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = 0;
  sub_29DA0007C(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  sub_29DA34614();
  v9 = v0;
  v10 = sub_29DA34634();
  v11 = sub_29DA34BA4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v28 = v7;
    v13 = v12;
    v25 = swift_slowAlloc();
    v29 = v25;
    *v13 = 136446210;
    v14 = v9;
    v26 = v1;
    v15 = v14;
    v16 = [v14 description];
    v17 = v2;
    v18 = sub_29DA34854();
    v27 = v9;
    v20 = v19;

    v21 = sub_29D9EBB44(v18, v20, &v29);
    v9 = v27;

    *(v13 + 4) = v21;
    _os_log_impl(&dword_29D9BB000, v10, v11, "%{public}s dispatching changes", v13, 0xCu);
    v22 = v25;
    sub_29D9C7968(v25);
    MEMORY[0x29ED6E4C0](v22, -1, -1);
    v23 = v13;
    v7 = v28;
    MEMORY[0x29ED6E4C0](v23, -1, -1);

    v24 = (*(v17 + 8))(v4, v26);
  }

  else
  {

    v24 = (*(v2 + 8))(v4, v1);
  }

  v29 = *&v9[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  MEMORY[0x2A1C7C4A8](v24);
  *(&v25 - 4) = v7;
  *(&v25 - 3) = v9;
  *(&v25 - 2) = &v30;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

  sub_29DA33F54();

  if (v30)
  {
    swift_willThrow();
  }

  else
  {
    AggregateChangeDetector.send(_:)(v7);
  }

  sub_29DA055F8(v7, sub_29DA04D18);
}

void sub_29DA0115C(uint64_t a1, uint64_t a2, void **a3)
{
  sub_29DA04EAC(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  v10 = MEMORY[0x2A1C7C4A8](v9 - 8);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v29 - v13;
  v15 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending;
  if ((*(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) & 1) == 0)
  {
    v24 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state);
    if (v24 == 2)
    {
      sub_29DA052B8();
      v25 = swift_allocError();
      v27 = 2;
    }

    else
    {
      if (v24 == 1)
      {
        AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(1, (&v29 - v13));
        sub_29DA0530C(v14, a1, sub_29DA04D18);
LABEL_10:
        sub_29DA02618(a1, a2);
        return;
      }

      sub_29DA052B8();
      v25 = swift_allocError();
      v27 = 1;
    }

    *v26 = v27;
    v28 = *a3;
    *a3 = v25;

    goto LABEL_10;
  }

  sub_29DA052B8();
  v16 = swift_allocError();
  *v17 = 0;
  v18 = *a3;
  *a3 = v16;

  sub_29DA05184(a1, v12, sub_29DA04D18);
  sub_29DA0007C(0);
  v20 = (*(*(v19 - 8) + 48))(v12, 1, v19);
  sub_29DA055F8(v12, sub_29DA04D18);
  if (v20 != 1)
  {
    *(a2 + v15) = 0;
    v21 = sub_29DA33A94();
    (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
    v22 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
    swift_beginAccess();
    sub_29DA0530C(v8, a2 + v22, sub_29DA04EAC);
    swift_endAccess();
    v23 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
    *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = 0;
  }
}

uint64_t sub_29DA01460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v46 = a7;
  v10 = sub_29DA34644();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v14 - 8);
  v16 = &v39[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29DA0007C(0);
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_29DA34614();
  v18 = a5;
  v19 = sub_29DA34634();
  v20 = sub_29DA34BA4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v41 = v21;
    v43 = swift_slowAlloc();
    v47 = v43;
    *v21 = 136446210;
    v22 = v18;
    v44 = v10;
    v23 = v22;
    v24 = [v22 description];
    v42 = v11;
    v25 = v24;
    v26 = sub_29DA34854();
    v40 = v20;
    v27 = a4;
    v28 = v26;
    v45 = a6;
    v30 = v29;

    v31 = v28;
    a4 = v27;
    v32 = sub_29D9EBB44(v31, v30, &v47);

    v33 = v41;
    *(v41 + 1) = v32;
    v34 = v33;
    _os_log_impl(&dword_29D9BB000, v19, v40, "%{public}s received Observer changes", v33, 0xCu);
    v35 = v43;
    sub_29D9C7968(v43);
    MEMORY[0x29ED6E4C0](v35, -1, -1);
    MEMORY[0x29ED6E4C0](v34, -1, -1);

    v36 = (*(v42 + 8))(v13, v44);
  }

  else
  {

    v36 = (*(v11 + 8))(v13, v10);
  }

  v47 = *&v18[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
  MEMORY[0x2A1C7C4A8](v36);
  *&v39[-48] = v18;
  *&v39[-40] = v37;
  *&v39[-32] = v16;
  *&v39[-24] = a4;
  *&v39[-16] = v46;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

  sub_29DA33F54();

  AggregateChangeDetector.send(_:)(v16);
  return sub_29DA055F8(v16, sub_29DA04D18);
}

void sub_29DA01810(uint64_t a1, _BYTE *a2, uint64_t a3, void *a4, void *a5)
{
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) == 2 || (swift_beginAccess(), (*a2 & 1) != 0))
  {
    swift_beginAccess();
    *a2 = 0;
  }

  else
  {
    v13 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
    *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = a4;
    v14 = a4;

    sub_29DA05504(0, &qword_2A17D1710, sub_29DA05568, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DA3AB40;
    *(inited + 32) = a5;
    *(inited + 40) = [objc_opt_self() sampleTypeChangeWithSampleType:a5 dateInterval:0 hasUnfrozenSeries:0];
    v16 = sub_29DA21630(inited);
    swift_setDeallocating();
    sub_29DA055F8(inited + 32, sub_29DA05568);
    AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(v16, 0);

    if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) == 1)
    {
      AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(0, v12);
      sub_29DA0530C(v12, a3, sub_29DA04D18);
    }

    sub_29DA02618(a3, a1);
  }
}

id AggregateChangeDetector.databaseChangesQuery(for:anchor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  v5 = objc_allocWithZone(MEMORY[0x29EDBAEC8]);
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  v6 = v2;
  v7 = sub_29DA34944();
  v13[4] = sub_29DA05288;
  v13[5] = v4;
  v13[0] = MEMORY[0x29EDCA5F8];
  v13[1] = 1107296256;
  v13[2] = sub_29DA04BAC;
  v13[3] = &unk_2A2461C98;
  v8 = _Block_copy(v13);
  v9 = [v5 initWithTypes:v7 anchor:a2 resultsHandler:v8];

  _Block_release(v8);

  [v9 setIncludeChangeDetails_];
  v10 = *&v6[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_name + 8];
  v11 = v9;
  if (v10)
  {
    v10 = sub_29DA34824();
  }

  [v9 setDebugIdentifier_];

  return v9;
}

uint64_t sub_29DA01BD8(uint64_t a1, NSObject *a2, NSObject *a3, NSObject *a4, void *a5)
{
  v49 = a4;
  v8 = sub_29DA34644();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = (&v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29DA0007C(0);
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_29DA34614();
  v16 = a2;
  v17 = a5;
  v18 = sub_29DA34634();
  v19 = sub_29DA34BA4();
  v48 = v16;

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v47 = v11;
    v43 = v19;
    v21 = v20;
    v44 = swift_slowAlloc();
    v51 = v44;
    *v21 = 136446466;
    v22 = v17;
    v46 = v9;
    v23 = a3;
    v24 = v22;
    v25 = [v22 description];
    v45 = v8;
    v26 = v25;
    v27 = sub_29DA34854();
    v42 = v18;
    v28 = v27;
    v29 = v14;
    v30 = a2;
    v32 = v31;

    a3 = v23;
    v33 = sub_29D9EBB44(v28, v32, &v51);
    a2 = v30;
    v14 = v29;

    *(v21 + 4) = v33;
    *(v21 + 12) = 2082;
    v50 = a2;
    sub_29D9E2188(0, &qword_2A1A2DAF8, &qword_2A1A2DB00, 0x29EDBAD38, MEMORY[0x29EDC9C68]);
    v34 = v48;
    v35 = sub_29DA34894();
    v37 = sub_29D9EBB44(v35, v36, &v51);

    *(v21 + 14) = v37;
    v38 = v42;
    _os_log_impl(&dword_29D9BB000, v42, v43, "%{public}s received DB Changes for anchor %{public}s", v21, 0x16u);
    v39 = v44;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v39, -1, -1);
    MEMORY[0x29ED6E4C0](v21, -1, -1);

    v40 = (*(v46 + 8))(v47, v45);
  }

  else
  {

    v40 = (*(v9 + 8))(v11, v8);
  }

  v51 = *(&v17->isa + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock);
  MEMORY[0x2A1C7C4A8](v40);
  *(&v42 - 6) = v17;
  *(&v42 - 5) = v14;
  *(&v42 - 4) = a3;
  *(&v42 - 3) = a2;
  *(&v42 - 2) = v49;
  sub_29DA33854();
  sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

  sub_29DA33F54();

  AggregateChangeDetector.send(_:)(v14);
  return sub_29DA055F8(v14, sub_29DA04D18);
}

void sub_29DA02020(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, void *a5)
{
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) != 2)
  {
    if (a3)
    {
      AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(a3, a4);
    }

    else
    {
      v13 = a5;
      if (!a5)
      {
        sub_29DA052B8();
        v13 = swift_allocError();
        *v14 = 3;
      }

      v15 = *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
      *(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = v13;
      v16 = a5;
    }

    if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) == 1)
    {
      AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(0, v12);
      sub_29DA0530C(v12, a2, sub_29DA04D18);
    }

    sub_29DA02618(a2, a1);
  }
}

char *sub_29DA02168(uint64_t a1, uint64_t a2)
{
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    sub_29DA0007C(0);
    v9 = (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v10 = *&v7[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock];
    MEMORY[0x2A1C7C4A8](v9);
    *(&v10 - 4) = v7;
    *(&v10 - 3) = v5;
    *(&v10 - 2) = a1;
    sub_29DA33854();
    sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

    sub_29DA33F54();

    AggregateChangeDetector.send(_:)(v5);

    return sub_29DA055F8(v5, sub_29DA04D18);
  }

  return result;
}

void sub_29DA0233C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_29DA34644();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v31[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (*(a1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) != 2)
  {
    sub_29DA34614();
    v13 = a1;
    v14 = sub_29DA34634();
    v15 = sub_29DA34BA4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v33 = v16;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v16 = 136446210;
      v17 = v13;
      v36 = v8;
      v18 = v17;
      v19 = [v17 description];
      v35 = a3;
      v20 = v19;
      v21 = sub_29DA34854();
      v32 = v15;
      v22 = a2;
      v23 = v21;
      v25 = v24;

      v8 = v36;
      v26 = v23;
      a2 = v22;
      v27 = sub_29D9EBB44(v26, v25, &v37);

      v28 = v33;
      *(v33 + 1) = v27;
      _os_log_impl(&dword_29D9BB000, v14, v32, "%{public}s received Changes for publisher", v28, 0xCu);
      v29 = v34;
      sub_29D9C7968(v34);
      MEMORY[0x29ED6E4C0](v29, -1, -1);
      MEMORY[0x29ED6E4C0](v28, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v30 = sub_29DA33A74();
    AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(v30, 0);

    if (*(v13 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) == 1)
    {
      AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)(0, v8);
      sub_29DA0530C(v8, a2, sub_29DA04D18);
    }

    sub_29DA02618(a2, v13);
  }
}

void sub_29DA02618(uint64_t a1, uint64_t a2)
{
  sub_29DA04EAC(0);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA05184(a1, v9, sub_29DA04D18);
  sub_29DA0007C(0);
  LODWORD(a1) = (*(*(v10 - 8) + 48))(v9, 1, v10);
  sub_29DA055F8(v9, sub_29DA04D18);
  if (a1 != 1)
  {
    *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) = 0;
    v11 = sub_29DA33A94();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
    swift_beginAccess();
    sub_29DA0530C(v6, a2 + v12, sub_29DA04EAC);
    swift_endAccess();
    v13 = *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError);
    *(a2 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError) = 0;
  }
}

uint64_t AggregateChangeDetector.send(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29DA34644();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x2A1C7C4A8](v4);
  v38 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DA34744();
  v45 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v43 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_29DA34764();
  v42 = *(v44 - 8);
  MEMORY[0x2A1C7C4A8](v44);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04D18(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA0007C(0);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x2A1C7C4A8](v12);
  v17 = v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v20 = v37 - v19;
  (*((*MEMORY[0x29EDCA1E8] & *v1) + 0x1B8))(v18);
  sub_29DA05184(a1, v11, sub_29DA04D18);
  if ((*(v14 + 48))(v11, 1, v13) == 1)
  {
    v21 = sub_29DA04D18;
    v22 = v11;
  }

  else
  {
    v37[0] = v6;
    v23 = sub_29DA05374(v11, v20, sub_29DA0007C);
    v37[1] = v37;
    v48 = 0;
    aBlock[0] = *(v1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock);
    MEMORY[0x2A1C7C4A8](v23);
    v37[-2] = v1;
    v37[-1] = &v48;
    sub_29DA33854();
    sub_29DA05484(&qword_2A1A2D318, MEMORY[0x29EDC36C8], MEMORY[0x29EDC36C0]);

    sub_29DA33F54();

    v24 = v48;
    if (v48)
    {
      v40 = *(v1 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_deliveryQueue);
      sub_29DA05184(v20, v17, sub_29DA0007C);
      v25 = (*(v14 + 80) + 32) & ~*(v14 + 80);
      v26 = swift_allocObject();
      *(v26 + 16) = v2;
      *(v26 + 24) = v24;
      sub_29DA05374(v17, v26 + v25, sub_29DA0007C);
      aBlock[4] = sub_29DA053E4;
      aBlock[5] = v26;
      aBlock[0] = MEMORY[0x29EDCA5F8];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_29DA05EEC;
      aBlock[3] = &unk_2A2461CE8;
      v27 = _Block_copy(aBlock);
      swift_retain_n();
      v28 = v2;
      v29 = v41;
      sub_29DA34754();
      v46 = MEMORY[0x29EDCA190];
      sub_29DA05484(&qword_2A1A2CC10, MEMORY[0x29EDCA248], MEMORY[0x29EDCA250]);
      sub_29DA05448(0);
      sub_29DA05484(&qword_2A1A2CBB0, sub_29DA05448, MEMORY[0x29EDC9A70]);
      v30 = v43;
      v31 = v37[0];
      sub_29DA34CD4();
      MEMORY[0x29ED6D7A0](0, v29, v30, v27);
      _Block_release(v27);

      (*(v45 + 8))(v30, v31);
      (*(v42 + 8))(v29, v44);
      sub_29DA055F8(v20, sub_29DA0007C);
    }

    v33 = v38;
    sub_29DA34614();
    v34 = sub_29DA34634();
    v35 = sub_29DA34B94();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_29D9BB000, v34, v35, "AggregateChangeDetector alive without a handler", v36, 2u);
      MEMORY[0x29ED6E4C0](v36, -1, -1);
    }

    (*(v39 + 8))(v33, v40);
    v21 = sub_29DA0007C;
    v22 = v20;
  }

  return sub_29DA055F8(v22, v21);
}

uint64_t sub_29DA02F28(uint64_t result, uint64_t *a2)
{
  if (*(result + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) != 2)
  {
    *a2 = *(result + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler);
  }

  return result;
}

uint64_t sub_29DA02F88(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v9 = a1;
  v10 = sub_29DA34634();
  v11 = sub_29DA34BA4();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v25 = v5;
    v13 = v12;
    v24 = swift_slowAlloc();
    v27 = v24;
    *v13 = 136446210;
    v14 = v9;
    v15 = [v14 description];
    v16 = sub_29DA34854();
    v26 = a3;
    v17 = v16;
    v19 = v18;

    v20 = sub_29D9EBB44(v17, v19, &v27);

    *(v13 + 4) = v20;
    a3 = v26;
    _os_log_impl(&dword_29D9BB000, v10, v11, "%{public}s calling handler", v13, 0xCu);
    v21 = v24;
    sub_29D9C7968(v24);
    MEMORY[0x29ED6E4C0](v21, -1, -1);
    MEMORY[0x29ED6E4C0](v13, -1, -1);

    (*(v6 + 8))(v8, v25);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  sub_29DA33B44();
  v27(a3);
}

uint64_t AggregateChangeDetector.lock_stop()()
{
  *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_state) = 2;
  *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending) = 0;
  *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_changesHandler) = 0;

  sub_29DA33B44();

  if (v9 >> 62)
  {
    result = sub_29DA34D34();
    v2 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    goto LABEL_21;
  }

  v3 = 0;
  v4 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_healthStore);
  do
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x29ED6D970](v3);
    }

    else
    {
      v5 = *(v9 + 8 * v3 + 32);
    }

    v6 = v5;
    ++v3;
    [v4 stopQuery_];
  }

  while (v2 != v3);
LABEL_10:

  sub_29DA33B44();

  if (!(v9 >> 62))
  {
    v7 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_12;
    }
  }

  result = sub_29DA34D34();
  v7 = result;
  if (!result)
  {
  }

LABEL_12:
  if (v7 >= 1)
  {
    for (i = 0; i != v7; ++i)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        MEMORY[0x29ED6D970](i);
      }

      else
      {
      }

      sub_29DA346A4();
    }
  }

LABEL_21:
  __break(1u);
  return result;
}

id AggregateChangeDetector.lock_createResultFromPendingInfo(setDispatchFlagOnEmptyChanges:)@<X0>(char a1@<W0>, void *a2@<X8>)
{
  v5 = sub_29DA34644();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA04EAC(0);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29DA33A94();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&v2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingError];
  if (!v16)
  {
    v47 = a2;
    v48 = 0;
    v45 = v8;
    v46 = v6;
    v20 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
    swift_beginAccess();
    sub_29DA05184(&v2[v20], v11, sub_29DA04EAC);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_29DA055F8(v11, sub_29DA04EAC);
      if (a1)
      {
LABEL_5:
        v2[OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_dispatchPending] = 1;
      }
    }

    else
    {
      v43 = v5;
      v44 = v2;
      v34 = *(v13 + 32);
      v34(v15, v11, v12);
      v35 = sub_29DA33A74();
      if ((v35 & 0xC000000000000001) != 0)
      {
        v36 = sub_29DA34D34();
      }

      else
      {
        v36 = *(v35 + 16);
      }

      v2 = v44;
      if (v36)
      {
        v39 = v47;
        v34(v47, v15, v12);
        sub_29DA0007C(0);
        v41 = v40;
        swift_storeEnumTagMultiPayload();
        (*(*(v41 - 8) + 56))(v39, 0, 1, v41);
LABEL_15:
        v17 = v48;
        return v17;
      }

      (*(v13 + 8))(v15, v12);
      v5 = v43;
      if (a1)
      {
        goto LABEL_5;
      }
    }

    v21 = v45;
    sub_29DA34614();
    v22 = v2;
    v23 = sub_29DA34634();
    v24 = sub_29DA34BA4();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v49 = v26;
      *v25 = 136446210;
      v27 = v22;
      v28 = [v27 description];
      v29 = sub_29DA34854();
      v30 = v5;
      v32 = v31;

      v33 = sub_29D9EBB44(v29, v32, &v49);

      *(v25 + 4) = v33;
      _os_log_impl(&dword_29D9BB000, v23, v24, "%{public}s not creating result. No pending change set.", v25, 0xCu);
      sub_29D9C7968(v26);
      MEMORY[0x29ED6E4C0](v26, -1, -1);
      MEMORY[0x29ED6E4C0](v25, -1, -1);

      (*(v46 + 8))(v21, v30);
    }

    else
    {

      (*(v46 + 8))(v21, v5);
    }

    v37 = v47;
    sub_29DA0007C(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
    goto LABEL_15;
  }

  *a2 = v16;
  v17 = v16;
  sub_29DA0007C(0);
  v19 = v18;
  swift_storeEnumTagMultiPayload();
  (*(*(v19 - 8) + 56))(a2, 0, 1, v19);
  return v17;
}

uint64_t AggregateChangeDetector.lock_mergePendingWith(sampleTypeChangeSet:anchor:)(unint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_29DA336F4();
  v195 = *(v6 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v171 = &v157 - v11;
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v174 = &v157 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v173 = &v157 - v15;
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v172 = &v157 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v178 = &v157 - v18;
  v180 = sub_29DA33554();
  v194 = *(v180 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v180);
  v177 = &v157 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v187 = &v157 - v21;
  sub_29D9E5E4C(0);
  v23 = MEMORY[0x2A1C7C4A8](v22 - 8);
  v183 = &v157 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x2A1C7C4A8](v23);
  v170 = &v157 - v26;
  v27 = MEMORY[0x2A1C7C4A8](v25);
  v181 = &v157 - v28;
  MEMORY[0x2A1C7C4A8](v27);
  v186 = &v157 - v29;
  sub_29DA04EAC(0);
  v31 = MEMORY[0x2A1C7C4A8](v30 - 8);
  v182 = &v157 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v31);
  v34 = &v157 - v33;
  v35 = sub_29DA33A94();
  v36 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v38 = &v157 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = OBJC_IVAR____TtC15HighlightAlerts23AggregateChangeDetector_lock_pendingChangeSet;
  swift_beginAccess();
  sub_29DA05184(v3 + v39, v34, sub_29DA04EAC);
  if ((*(v36 + 48))(v34, 1, v35) == 1)
  {
    sub_29DA055F8(v34, sub_29DA04EAC);
    v40 = a2;

    v41 = v182;
    sub_29DA33A64();
    (*(v36 + 56))(v41, 0, 1, v35);
    swift_beginAccess();
    sub_29DA0530C(v41, v3 + v39, sub_29DA04EAC);
    return swift_endAccess();
  }

  v190 = v36;
  v191 = v39;
  (*(v36 + 32))(v38, v34, v35);
  v43 = a2;
  v164 = v35;
  if (!a2)
  {
    v43 = sub_29DA33A84();
  }

  v166 = v43;
  v162 = v9;
  v168 = v3;
  v44 = a2;
  v197 = sub_29DA33A74();
  v163 = v6;
  v167 = v38;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v45 = 0;
    v46 = 0;
    v192 = sub_29DA34EB4() | 0x8000000000000000;
    v193 = 0;
  }

  else
  {
    v47 = -1 << *(a1 + 32);
    v45 = ~v47;
    v48 = *(a1 + 64);
    v192 = a1;
    v193 = a1 + 64;
    v49 = -v47;
    if (v49 < 64)
    {
      v50 = ~(-1 << v49);
    }

    else
    {
      v50 = -1;
    }

    v46 = v50 & v48;
  }

  v51 = v180;

  v52 = 0;
  v165 = v45;
  v53 = (v45 + 64) >> 6;
  v184 = (v194 + 56);
  v161 = v195 + 8;
  v160 = v195 + 32;
  v176 = (v194 + 8);
  v175 = (v194 + 48);
  v55 = v190;
  v54 = v191;
  v57 = v192;
  v56 = v193;
  v189 = v53;
  while ((v57 & 0x8000000000000000) != 0)
  {
    v66 = sub_29DA34F44();
    if (!v66 || (v68 = v67, v196 = v66, sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78), swift_dynamicCast(), v65 = v198, v196 = v68, sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80), swift_dynamicCast(), v194 = v46, v195 = v198, v62 = v52, !v65))
    {
LABEL_93:
      sub_29D9FA76C(v192);

      v154 = v182;
      sub_29DA33A64();
      v155 = v164;
      (*(v55 + 8))(v167, v164);
      (*(v55 + 56))(v154, 0, 1, v155);
      v156 = v168;
      swift_beginAccess();
      sub_29DA0530C(v154, v156 + v54, sub_29DA04EAC);
      swift_endAccess();
    }

LABEL_24:
    v69 = v197;
    if ((v197 & 0xC000000000000001) != 0)
    {
      v185 = v197 & 0xC000000000000001;
      if (v197 < 0)
      {
        v70 = v197;
      }

      else
      {
        v70 = v197 & 0xFFFFFFFFFFFFFF8;
      }

      v71 = v65;
      v72 = sub_29DA34F34();

      v73 = 0x29F359000;
      if (!v72 || (v196 = v72, sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80), swift_dynamicCast(), (v74 = v198) == 0))
      {
        v75 = v195;
        v76 = v195;
        v77 = sub_29DA34D34();
        if (__OFADD__(v77, 1))
        {
          goto LABEL_96;
        }

        v69 = sub_29DA04F48(v70, v77 + 1);
        v197 = v69;
LABEL_39:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v198 = v69;
        v88 = sub_29DA1EE58(v65);
        v90 = *(v69 + 16);
        v91 = (v89 & 1) == 0;
        v92 = __OFADD__(v90, v91);
        v93 = v90 + v91;
        if (v92)
        {
          goto LABEL_95;
        }

        v94 = v89;
        if (*(v69 + 24) >= v93)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          v152 = v88;
          sub_29DA2AE60();
          v88 = v152;
          v96 = v198;
          if (v94)
          {
            goto LABEL_12;
          }

LABEL_45:
          v96[(v88 >> 6) + 8] |= 1 << v88;
          *(v96[6] + 8 * v88) = v65;
          *(v96[7] + 8 * v88) = v75;
          v59 = v65;

          v97 = v96[2];
          v92 = __OFADD__(v97, 1);
          v98 = v97 + 1;
          if (v92)
          {
            goto LABEL_97;
          }

          v96[2] = v98;
        }

        else
        {
          sub_29DA29EB0(v93, isUniquelyReferenced_nonNull_native);
          v88 = sub_29DA1EE58(v65);
          if ((v94 & 1) != (v95 & 1))
          {
            goto LABEL_101;
          }

LABEL_44:
          v96 = v198;
          if ((v94 & 1) == 0)
          {
            goto LABEL_45;
          }

LABEL_12:
          v58 = v96[7];
          v59 = *(v58 + 8 * v88);
          *(v58 + 8 * v88) = v75;
        }

        v197 = v96;
        goto LABEL_14;
      }
    }

    else
    {
      v73 = 0x29F359000uLL;
      if (!*(v197 + 16) || (v78 = sub_29DA1EE58(v65), (v79 & 1) == 0) || (v80 = *(*(v69 + 56) + 8 * v78), v74 = v80, !v80))
      {
        v75 = v195;
        v86 = v195;
        goto LABEL_39;
      }

      v185 = 0;
    }

    v81 = *(v73 + 3600);
    v188 = v74;
    v82 = [v74 v81];
    v83 = v183;
    v84 = v181;
    if (v82)
    {
      v179 = 1;
      v85 = v195;
    }

    else
    {
      v99 = *(v73 + 3600);
      v85 = v195;
      v179 = [v195 v99];
    }

    v100 = [v188 dateInterval];
    if (v100)
    {
      v101 = v100;
      sub_29DA334E4();

      v102 = 0;
    }

    else
    {
      v102 = 1;
    }

    v103 = *v184;
    (*v184)(v84, v102, 1, v51);
    v104 = v84;
    v105 = v186;
    sub_29DA05374(v104, v186, sub_29D9E5E4C);
    v106 = [v85 dateInterval];
    if (!v106)
    {
      goto LABEL_67;
    }

    v169 = v103;
    v107 = v106;
    sub_29DA334E4();

    v108 = [v188 dateInterval];
    if (!v108)
    {
      (*v176)(v187, v51);
      v103 = v169;
LABEL_67:
      sub_29DA055F8(v105, sub_29D9E5E4C);
      v103(v105, 1, 1, v51);
      goto LABEL_68;
    }

    v109 = v108;
    sub_29DA334E4();

    v110 = v172;
    sub_29DA33524();
    v111 = v173;
    sub_29DA33524();
    v159 = sub_29DA05484(&qword_2A17D1700, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BE0]);
    v112 = v163;
    v113 = sub_29DA347F4();
    v114 = *v161;
    v158 = *v161;
    v115 = (v113 & 1) == 0;
    if (v113)
    {
      v116 = v110;
    }

    else
    {
      v116 = v111;
    }

    if (v115)
    {
      v117 = v110;
    }

    else
    {
      v117 = v111;
    }

    v114(v116, v112);
    v118 = *v160;
    (*v160)(v178, v117, v112);
    v119 = v171;
    sub_29DA334F4();
    v120 = v162;
    sub_29DA334F4();
    v121 = sub_29DA34804();
    v122 = (v121 & 1) == 0;
    if (v121)
    {
      v123 = v119;
    }

    else
    {
      v123 = v120;
    }

    if (v122)
    {
      v124 = v119;
    }

    else
    {
      v124 = v120;
    }

    v158(v123, v112);
    v125 = v112;
    v51 = v180;
    v118(v174, v124, v125);
    v126 = v170;
    v105 = v186;
    v83 = v183;
    sub_29DA33504();
    v127 = *v176;
    (*v176)(v177, v51);
    v127(v187, v51);
    sub_29DA055F8(v105, sub_29D9E5E4C);
    v169(v126, 0, 1, v51);
    v128 = v126;
    v85 = v195;
    sub_29DA05374(v128, v105, sub_29D9E5E4C);
LABEL_68:
    sub_29DA05184(v105, v83, sub_29D9E5E4C);
    v129 = (*v175)(v83, 1, v51);
    v130 = v65;
    if (v129 == 1)
    {
      v131 = 0;
    }

    else
    {
      v131 = sub_29DA334D4();
      (*v176)(v83, v51);
    }

    v132 = [objc_opt_self() sampleTypeChangeWithSampleType:v130 dateInterval:v131 hasUnfrozenSeries:v179];

    if (v132)
    {
      if (v185)
      {
        if (v69 < 0)
        {
          v133 = v69;
        }

        else
        {
          v133 = v69 & 0xFFFFFFFFFFFFFF8;
        }

        v134 = sub_29DA34D34();
        if (__OFADD__(v134, 1))
        {
          goto LABEL_99;
        }

        v135 = sub_29DA04F48(v133, v134 + 1);
        v197 = v135;
      }

      else
      {
        v135 = v197;
      }

      v137 = swift_isUniquelyReferenced_nonNull_native();
      v198 = v135;
      v138 = sub_29DA1EE58(v130);
      v140 = *(v135 + 16);
      v141 = (v139 & 1) == 0;
      v92 = __OFADD__(v140, v141);
      v142 = v140 + v141;
      if (v92)
      {
        goto LABEL_98;
      }

      v143 = v139;
      if (*(v135 + 24) >= v142)
      {
        if ((v137 & 1) == 0)
        {
          v153 = v138;
          sub_29DA2AE60();
          v138 = v153;
        }
      }

      else
      {
        sub_29DA29EB0(v142, v137);
        v138 = sub_29DA1EE58(v130);
        if ((v143 & 1) != (v144 & 1))
        {
          goto LABEL_101;
        }
      }

      v145 = v186;
      v146 = v198;
      if (v143)
      {
        v147 = v198[7];
        v148 = *(v147 + 8 * v138);
        *(v147 + 8 * v138) = v132;

        sub_29DA055F8(v145, sub_29D9E5E4C);
      }

      else
      {
        v198[(v138 >> 6) + 8] |= 1 << v138;
        *(v146[6] + 8 * v138) = v130;
        *(v146[7] + 8 * v138) = v132;
        v149 = v130;

        sub_29DA055F8(v145, sub_29D9E5E4C);
        v150 = v146[2];
        v92 = __OFADD__(v150, 1);
        v151 = v150 + 1;
        if (v92)
        {
          goto LABEL_100;
        }

        v146[2] = v151;
      }

      v197 = v146;
    }

    else
    {
      v136 = sub_29DA1F38C(v130);

      sub_29DA055F8(v105, sub_29D9E5E4C);
    }

LABEL_14:
    v52 = v62;
    v56 = v193;
    v46 = v194;
    v55 = v190;
    v54 = v191;
    v57 = v192;
    v53 = v189;
  }

  v60 = v52;
  v61 = v46;
  v62 = v52;
  if (v46)
  {
LABEL_20:
    v194 = (v61 - 1) & v61;
    v63 = (v62 << 9) | (8 * __clz(__rbit64(v61)));
    v64 = *(*(v57 + 56) + v63);
    v65 = *(*(v57 + 48) + v63);
    v195 = v64;
    if (!v65)
    {
      goto LABEL_93;
    }

    goto LABEL_24;
  }

  while (1)
  {
    v62 = v60 + 1;
    if (__OFADD__(v60, 1))
    {
      break;
    }

    if (v62 >= v53)
    {
      goto LABEL_93;
    }

    v61 = *(v56 + 8 * v62);
    ++v60;
    if (v61)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
  result = sub_29DA35144();
  __break(1u);
  return result;
}

id AggregateChangeDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AggregateChangeDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AggregateChangeDetector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29DA04AD8(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v6 = *(a1 + 32);
  v7 = _Block_copy(aBlock);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;

  v10 = a2;
  v9 = a4;
  v6(v10, sub_29DA054E4, v8, a4);
}

uint64_t sub_29DA04BAC(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v6 = a4;
  v9 = *(a1 + 32);
  if (a4)
  {
    sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80);
    sub_29D9D0160();
    v6 = sub_29DA347A4();
  }

  v10 = a2;
  v11 = a3;
  v12 = a5;
  v9(v10, a3, v6, a5);
}

unint64_t sub_29DA04CAC()
{
  result = qword_2A1A2CCF8;
  if (!qword_2A1A2CCF8)
  {
    type metadata accessor for AggregateChangeDetector(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1A2CCF8);
  }

  return result;
}

unint64_t sub_29DA04D5C()
{
  result = qword_2A17D16F0;
  if (!qword_2A17D16F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D16F0);
  }

  return result;
}

void sub_29DA04DC8(uint64_t a1)
{
  sub_29DA04EAC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_29DA04EF4()
{
  result = qword_2A17D16F8;
  if (!qword_2A17D16F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D16F8);
  }

  return result;
}

uint64_t sub_29DA04F48(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_29DA051EC(0);
    v2 = sub_29DA34FA4();
    v19 = v2;
    sub_29DA34EB4();
    v3 = sub_29DA34F44();
    if (v3)
    {
      v4 = v3;
      sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_29D9C79FC(0, &qword_2A1A2D460, 0x29EDBAD80);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_29DA29EB0(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_29DA34CA4();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_29DA34F44();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x29EDCA198];
  }

  return v2;
}

uint64_t sub_29DA05184(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DA051EC(uint64_t a1)
{
  if (!qword_2A1A2CA70)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    sub_29D9D0160();
    v1 = sub_29DA34FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CA70);
    }
  }
}

uint64_t sub_29DA05290(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_29DA052B8()
{
  result = qword_2A17D1708;
  if (!qword_2A17D1708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1708);
  }

  return result;
}

uint64_t sub_29DA0530C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA05374(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA053E4()
{
  sub_29DA0007C(0);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = v0 + ((*(v2 + 80) + 32) & ~*(v2 + 80));

  return sub_29DA02F88(v3, v4, v5);
}

uint64_t sub_29DA05484(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29DA05504(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DA05568(uint64_t a1)
{
  if (!qword_2A17D1718)
  {
    sub_29D9C79FC(255, &qword_2A1A2DB10, 0x29EDBAD78);
    sub_29D9C79FC(255, &qword_2A1A2D460, 0x29EDBAD80);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A17D1718);
    }
  }
}

uint64_t sub_29DA055F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for HighlightAlertsFeedItemGenerator(uint64_t a1)
{
  result = qword_2A1A2E130;
  if (!qword_2A1A2E130)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DA056BC(uint64_t a1)
{
  sub_29DA1BF9C(319, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

uint64_t sub_29DA057BC(uint64_t a1)
{
  v23 = *(a1 + 16);
  if (!v23)
  {
    return MEMORY[0x29EDCA190];
  }

  v1 = 0;
  v2 = MEMORY[0x29EDCA190];
  v22 = a1 + 32;
  while (1)
  {
    v4 = *(v22 + 8 * v1);
    v5 = v4 >> 62;
    if (v4 >> 62)
    {
      v6 = sub_29DA34D34();
    }

    else
    {
      v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v7 = v2 >> 62;
    if (v2 >> 62)
    {
      v21 = sub_29DA34D34();
      v9 = v21 + v6;
      if (__OFADD__(v21, v6))
      {
LABEL_32:
        __break(1u);
        return MEMORY[0x29EDCA190];
      }
    }

    else
    {
      v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v8 + v6;
      if (__OFADD__(v8, v6))
      {
        goto LABEL_32;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (result)
    {
      if (!v7)
      {
        v10 = v2 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_29DA34D34();
      goto LABEL_15;
    }

    if (v7)
    {
      goto LABEL_14;
    }

LABEL_15:
    result = sub_29DA34E14();
    v2 = result;
    v10 = result & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v11 = *(v10 + 16);
    v12 = *(v10 + 24);
    if (v5)
    {
      break;
    }

    v13 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v12 >> 1) - v11) < v6)
    {
      goto LABEL_36;
    }

    v27 = v6;
    v24 = v2;
    v25 = v1;
    if (v5)
    {
      if (v13 < 1)
      {
        goto LABEL_38;
      }

      sub_29D9D5EE4(0);
      sub_29DA243A0(&qword_2A17D1720, sub_29D9D5EE4, MEMORY[0x29EDC9A88]);
      for (i = 0; i != v13; ++i)
      {
        v15 = sub_29D9FA2EC(v26, i, v4);
        v17 = *v16;
        (v15)(v26, 0);
        *(v10 + 8 * v11 + 32 + 8 * i) = v17;
      }
    }

    else
    {
      sub_29D9C79FC(0, &qword_2A1A2D480, 0x29EDBA080);
      swift_arrayInitWithCopy();
    }

    v2 = v24;
    v1 = v25;
    if (v27 >= 1)
    {
      v18 = *(v10 + 16);
      v19 = __OFADD__(v18, v27);
      v20 = v18 + v27;
      if (v19)
      {
        goto LABEL_37;
      }

      *(v10 + 16) = v20;
    }

LABEL_4:
    if (++v1 == v23)
    {
      return v2;
    }
  }

  result = sub_29DA34D34();
  v13 = result;
  if (result)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v6 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t sub_29DA05A90@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v19[1] = a2;
  v20 = a1;
  v7 = sub_29DA336F4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x29EDB9BC8];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = v19 - v13;
  sub_29DA22690(v5, v19 - v13, &qword_2A1A2E148, v11);
  v15 = 1;
  if ((*(v8 + 48))(v14, 1, v7) == 1)
  {
    v16 = a3;
LABEL_5:
    v17 = sub_29DA33554();
    return (*(*(v17 - 8) + 56))(v16, v15, 1, v17);
  }

  (*(v8 + 32))(v10, v14, v7);
  v16 = a3;
  v20(v10);
  if (!v4)
  {
    (*(v8 + 8))(v10, v7);
    v15 = 0;
    goto LABEL_5;
  }

  result = (*(v8 + 8))(v10, v7);
  __break(1u);
  return result;
}

uint64_t sub_29DA05CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29DA1BF9C(0, &qword_2A1A2DA38, MEMORY[0x29EDC3840], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v9 = &v17 - v8;
  v10 = sub_29DA33964();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    v14 = MEMORY[0x29EDC3840];
    sub_29DA243E8(a1, &qword_2A1A2DA38, MEMORY[0x29EDC3840]);
    sub_29DA1F4D8(a2, a3, v9);

    return sub_29DA243E8(v9, &qword_2A1A2DA38, v14);
  }

  else
  {
    (*(v11 + 32))(v13, a1, v10);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    sub_29DA2AB3C(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v18;
  }

  return result;
}

uint64_t sub_29DA05EEC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_29DA05F30(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x29EDCA190];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = type metadata accessor for HighlightAlertConfiguration(0);
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      result = v6(&v17, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      v13 = v17;
      if (v17)
      {
        break;
      }

      if (v7 == v4)
      {
        return v8;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_29D9D5394(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v15 = v8[2];
    v14 = v8[3];
    v16 = v15 + 1;
    if (v15 >= v14 >> 1)
    {
      result = sub_29D9D5394((v14 > 1), v15 + 1, 1, v8);
      v16 = v15 + 1;
      v8 = result;
    }

    v8[2] = v16;
    v8[v15 + 4] = v13;
  }

  while (v7 != v4);
  return v8;
}

uint64_t sub_29DA060C0(uint64_t a1)
{
  v1 = a1;
  v20 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_29DA34D34();
    result = MEMORY[0x29EDCA190];
    if (!v2)
    {
      return result;
    }

    v25 = MEMORY[0x29EDCA190];
    sub_29DA34E64();
    result = sub_29DA34EA4();
    v22 = result;
    v23 = v4;
    v24 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x29EDCA190];
  if (!v2)
  {
    return result;
  }

  v25 = MEMORY[0x29EDCA190];
  sub_29DA34E64();
  result = sub_29DA34CE4();
  v5 = *(v1 + 36);
  v22 = result;
  v23 = v5;
  v24 = 0;
LABEL_7:
  v6 = 0;
  v19 = v2;
  while (v6 < v2)
  {
    v13 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v22;
    v15 = v23;
    v16 = v24;
    sub_29DA21110(v22, v23, v24, v1);
    sub_29DA34E44();
    v17 = v1;
    sub_29DA34E74();
    sub_29DA34E84();
    result = sub_29DA34E54();
    if (v20)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_29DA34EE4())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v19;
      sub_29DA24068(0, &qword_2A1A2D4C0, MEMORY[0x29EDC98D0]);
      v18 = sub_29DA347B4();
      sub_29DA34F54();
      result = v18(v21, 0);
    }

    else
    {
      sub_29DA20FAC(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_29DA2410C(v14, v15, v16);
      v22 = v8;
      v23 = v10;
      v24 = v12 & 1;
      v1 = v17;
      v2 = v19;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_29DA2410C(v22, v23, v24);
      return v25;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_29DA06358(uint64_t a1, uint64_t a2)
{
  sub_29DA1E70C(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  sub_29DA33B84();

  return v5;
}

uint64_t sub_29DA06454(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3, uint64_t a4)
{
  sub_29DA1E934(0, a1, a2);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  sub_29DA33B84();

  return v7;
}

id sub_29DA064F8(void *a1, uint64_t a2)
{
  v27 = a1;
  v28 = a2;
  v26 = sub_29DA34C24();
  v3 = *(v26 - 8);
  MEMORY[0x2A1C7C4A8](v26);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DA34C14();
  MEMORY[0x2A1C7C4A8](v6);
  v7 = sub_29DA34764();
  MEMORY[0x2A1C7C4A8](v7 - 8);
  *&v2[qword_2A1A2D568] = 0;
  v25 = qword_2A1A2E140;
  sub_29D9C79FC(0, &qword_2A1A2DAE8, 0x29EDCA548);
  sub_29DA34754();
  v30[0] = MEMORY[0x29EDCA190];
  sub_29DA243A0(&qword_2A1A2DAF0, MEMORY[0x29EDCA288], MEMORY[0x29EDCA290]);
  sub_29DA1BF9C(0, &qword_2A1A2DB38, MEMORY[0x29EDCA288], MEMORY[0x29EDC9A40]);
  sub_29DA1C000();
  sub_29DA34CD4();
  (*(v3 + 104))(v5, *MEMORY[0x29EDCA2A8], v26);
  *&v2[v25] = sub_29DA34C44();
  v8 = qword_2A1A2D560;
  *&v2[v8] = [objc_allocWithZone(MEMORY[0x29EDBA088]) init];
  v9 = qword_2A1A2D598;
  sub_29DA1E70C(0);
  swift_allocObject();
  *&v2[v9] = sub_29DA33BB4();
  v10 = qword_2A1A2D570;
  swift_allocObject();
  *&v2[v10] = sub_29DA33BB4();
  v11 = qword_2A1A2D588;
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_allocObject();
  *&v2[v11] = sub_29DA33BB4();
  v12 = qword_2A1A2D590;
  sub_29DA1E934(0, &qword_2A1A2CCF0, type metadata accessor for HighlightAlertStateChanges);
  swift_allocObject();
  *&v2[v12] = sub_29DA33BB4();
  v13 = qword_2A1A2D5A0;
  v14 = MEMORY[0x29EDCA190];
  v30[0] = MEMORY[0x29EDCA190];
  sub_29DA1BF9C(0, &qword_2A1A2DFC8, sub_29DA1EAAC, MEMORY[0x29EDC3C80]);
  swift_allocObject();
  *&v2[v13] = sub_29DA33B74();
  v15 = qword_2A1A2D578;
  v30[0] = MEMORY[0x29EDCA1A0];
  sub_29DA1EAE0(0);
  swift_allocObject();
  *&v2[v15] = sub_29DA33B74();
  v16 = qword_2A1A2D5A8;
  v30[0] = sub_29DA21738(v14);
  sub_29DA21930(0);
  swift_allocObject();
  *&v2[v16] = sub_29DA33B74();
  v17 = v27;
  sub_29D9FA5EC(v27, v30);
  sub_29DA219A4(0);
  swift_allocObject();
  *&v2[qword_2A1A2D580] = sub_29DA33B74();
  v18 = MEMORY[0x29EDB9BC8];
  v19 = v28;
  sub_29DA22690(v28, &v2[qword_2A1A312F0], &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
  v20 = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
  v29.receiver = v2;
  v29.super_class = v20;
  v21 = objc_msgSendSuper2(&v29, sel_init);
  v22 = sub_29DA34024();
  sub_29DA34B44();

  sub_29DA34B34();
  sub_29DA243E8(v19, &qword_2A1A2E148, v18);
  sub_29D9C7968(v17);
  return v21;
}

uint64_t sub_29DA06AAC()
{

  return sub_29DA243E8(v0 + qword_2A1A312F0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
}

id sub_29DA06B9C()
{
  v1 = sub_29DA34024();
  sub_29DA34B54();

  sub_29DA34B34();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_29DA06C18(void *a1)
{
  v1 = a1;
  v2 = sub_29DA34024();
  sub_29DA34B54();

  sub_29DA34B34();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for HighlightAlertsFeedItemGenerator(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_29DA06C9C(uint64_t a1)
{

  return sub_29DA243E8(a1 + qword_2A1A312F0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
}

uint64_t sub_29DA06D98()
{
  sub_29DA1BF9C(0, &qword_2A1A2CB58, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = v11 - v2;
  sub_29DA34B34();
  sub_29DA1E934(0, &qword_2A1A2CCE8, type metadata accessor for HighlightAlertStateManager);
  swift_getKeyPath();
  swift_getKeyPath();
  v11[0] = v0;
  v4 = v0;
  sub_29DA33B84();

  v5 = v11[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  v7 = v4;
  if (sub_29D9EED98())
  {
    sub_29DA06FC8(v7);
  }

  else
  {
    v8 = sub_29DA34A34();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v5;
    v9[5] = sub_29DA22048;
    v9[6] = v6;
    sub_29D9ED414(0, 0, v3, &unk_29DA3B998, v9);
  }
}

uint64_t sub_29DA06FC8(uint64_t a1)
{

  sub_29DA33B44();

  sub_29D9C706C(v2, v2[3]);
  if (sub_29DA33974())
  {
    sub_29DA34B34();
    sub_29DA0A7D8();
  }

  else
  {
    sub_29DA34B34();
    sub_29DA0A304();
  }

  return sub_29D9C7968(v2);
}

void sub_29DA070B0(void *a1)
{
  v1 = a1;
  sub_29DA06D98();
}

id sub_29DA070F8()
{
  v1 = v0;
  sub_29DA34AF4();
  v2 = qword_2A1A2D568;
  v3 = *&v0[qword_2A1A2D568];
  if (v3)
  {
    v4 = v3;
    AggregateChangeDetector.stop()();

    v3 = *&v1[v2];
  }

  *&v1[v2] = 0;

  sub_29DA34B34();
  v5 = objc_opt_self();
  v6 = [v5 defaultCenter];
  if (qword_2A1A2E018 != -1)
  {
    swift_once();
  }

  [v6 removeObserver:v1 name:qword_2A1A31338 object:0];

  v7 = [v5 defaultCenter];
  if (qword_2A1A2CB18 != -1)
  {
    swift_once();
  }

  [v7 removeObserver:v1 name:qword_2A1A312D0 object:0];

  v8 = [v5 defaultCenter];
  if (qword_2A1A2DAE0 != -1)
  {
    swift_once();
  }

  [v8 removeObserver:v1 name:qword_2A1A31330 object:0];

  sub_29DA1E70C(0);
  swift_getKeyPath();
  swift_getKeyPath();
  v9 = v1;
  sub_29DA33B84();

  [v18 setSuspended_];

  v10 = *&v9[qword_2A1A2D560];
  [v10 setSuspended_];
  swift_getKeyPath();
  swift_getKeyPath();
  v15 = v9;
  v11 = v9;
  sub_29DA33B84();

  [v18 setSuspended_];

  result = [v11 isCancelled];
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v11;
    v13 = v11;
    sub_29DA33B84();

    [v18 cancelAllOperations];

    [v10 cancelAllOperations];
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v13;
    v14 = v13;
    sub_29DA33B84();

    [v18 cancelAllOperations];

    return sub_29DA34B24();
  }

  return result;
}

void sub_29DA074E4()
{
  sub_29DA1BF9C(0, &qword_2A1A2D360, MEMORY[0x29EDB9918], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v37 - v1;
  v3 = sub_29DA33594();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v37 - v8;
  if (qword_2A1A2E018 != -1)
  {
    swift_once();
  }

  v49 = qword_2A1A31338;
  v10 = qword_2A1A2CB18;
  v39 = qword_2A1A31338;
  if (v10 != -1)
  {
    swift_once();
  }

  v37 = v7;
  v50 = qword_2A1A312D0;
  v11 = qword_2A1A2DAE0;
  v40 = qword_2A1A312D0;
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_2A1A31330;
  v51 = qword_2A1A31330;
  v45 = sub_29DA33814();
  v13 = (v4 + 32);
  v38 = v12;
  v14 = MEMORY[0x29EDCA190];
  v15 = 32;
  v44 = v9;
  do
  {
    v16 = *&v48[v15];
    sub_29DA33804();
    sub_29DA337F4();

    if ((*(v4 + 48))(v2, 1, v3) == 1)
    {
      sub_29DA243E8(v2, &qword_2A1A2D360, MEMORY[0x29EDB9918]);
    }

    else
    {
      v17 = *v13;
      (*v13)(v9, v2, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_29D9D54CC(0, v14[2] + 1, 1, v14);
      }

      v19 = v14[2];
      v18 = v14[3];
      if (v19 >= v18 >> 1)
      {
        v14 = sub_29D9D54CC((v18 > 1), v19 + 1, 1, v14);
      }

      v14[2] = v19 + 1;
      v20 = v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v19;
      v9 = v44;
      v17(v20, v44, v3);
    }

    v15 += 8;
  }

  while (v15 != 56);
  type metadata accessor for Name(0);
  swift_arrayDestroy();
  v21 = v14[2];
  if (v21)
  {
    v23 = *(v4 + 16);
    v22 = v4 + 16;
    v24 = v14 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v44 = 0x800000029DA38060;
    v45 = v23;
    v25 = *(v22 + 56);
    v42 = v22;
    v43 = v25;
    v26 = (v22 - 8);
    v27 = v41;
    v28 = v37;
    do
    {
      v45(v28, v24, v3);
      v46 = 0;
      v47 = 0xE000000000000000;
      sub_29DA34DF4();

      v46 = 0xD00000000000001FLL;
      v47 = v44;
      v29 = sub_29DA33574();
      v30 = sub_29DA34854();
      v32 = v31;

      MEMORY[0x29ED6D450](v30, v32);

      sub_29DA34B34();

      sub_29DA07ABC(v28);
      (*v26)(v28, v3);
      v24 += v43;
      --v21;
    }

    while (v21);
  }

  else
  {

    v27 = v41;
    sub_29DA34B34();
  }

  sub_29DA34B34();
  v33 = objc_opt_self();
  v34 = [v33 defaultCenter];
  [v34 addObserver:v27 selector:sel_handleNotification_ name:v39 object:0];

  v35 = [v33 defaultCenter];
  [v35 addObserver:v27 selector:sel_handleNotification_ name:v40 object:0];

  v36 = [v33 defaultCenter];
  [v36 addObserver:v27 selector:sel_handleNotification_ name:v38 object:0];
}

uint64_t sub_29DA07ABC(void *a1)
{
  v161 = a1;
  v157 = sub_29DA33594();
  v160 = *(v157 - 8);
  v2 = MEMORY[0x2A1C7C4A8](v157);
  v147 = &v141[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v141[-v4];
  v6 = sub_29DA34644();
  v155 = *(v6 - 8);
  v156 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v148 = &v141[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v7);
  v159 = &v141[-v9];
  v10 = MEMORY[0x29EDB9BC8];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v141[-v12];
  v14 = sub_29DA336F4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x2A1C7C4A8](v14);
  v152 = &v141[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x2A1C7C4A8](v16);
  v158 = &v141[-v19];
  v20 = MEMORY[0x2A1C7C4A8](v18);
  v22 = &v141[-v21];
  v151 = v23;
  MEMORY[0x2A1C7C4A8](v20);
  v25 = &v141[-v24];
  sub_29DA22690(v1 + qword_2A1A312F0, v13, &qword_2A1A2E148, v10);
  v26 = *(v15 + 48);
  v27 = v22;
  if (v26(v13, 1, v14) == 1)
  {
    sub_29DA336E4();
    if (v26(v13, 1, v14) != 1)
    {
      sub_29DA243E8(v13, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    (*(v15 + 32))(v25, v13, v14);
  }

  sub_29DA34614();
  v28 = v160[2];
  v29 = v157;
  v146 = (v160 + 2);
  v145 = v28;
  v28(v5, v161, v157);
  v30 = *(v15 + 16);
  v30(v22, v25, v14);
  v154 = v25;
  v149 = v30;
  v150 = v15 + 16;
  v30(v158, v25, v14);
  v31 = v1;
  v32 = v15;
  v33 = sub_29DA34634();
  v34 = sub_29DA34BA4();

  v35 = os_log_type_enabled(v33, v34);
  v153 = v31;
  if (v35)
  {
    v36 = v29;
    v37 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    aBlock = v143;
    *v37 = 136446978;
    v38 = [v31 description];
    v39 = sub_29DA34854();
    v142 = v34;
    v40 = v39;
    v42 = v41;

    v43 = sub_29D9EBB44(v40, v42, &aBlock);

    *(v37 + 4) = v43;
    *(v37 + 12) = 2082;
    v44 = sub_29DA33574();
    v45 = sub_29DA34854();
    v47 = v46;

    v144 = v160[1];
    v144(v5, v36);
    v48 = sub_29D9EBB44(v45, v47, &aBlock);

    *(v37 + 14) = v48;
    *(v37 + 22) = 2082;
    sub_29DA243A0(&qword_2A1A2D350, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9C00]);
    v49 = sub_29DA350F4();
    v51 = v50;
    v52 = *(v32 + 8);
    (v52)(v27, v14);
    v53 = sub_29D9EBB44(v49, v51, &aBlock);

    *(v37 + 24) = v53;
    *(v37 + 32) = 2082;
    v54 = v158;
    sub_29DA33644();
    v55 = sub_29DA34A44();
    v57 = v56;
    (v52)(v54, v14);
    v58 = v52;
    v59 = sub_29D9EBB44(v55, v57, &aBlock);

    *(v37 + 34) = v59;
    _os_log_impl(&dword_29D9BB000, v33, v142, "%{public}s: handling notification %{public}s at target date: %{public}s (%{public}s)", v37, 0x2Au);
    v60 = v143;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v60, -1, -1);
    MEMORY[0x29ED6E4C0](v37, -1, -1);
  }

  else
  {

    v58 = *(v32 + 8);
    (v58)(v158, v14);
    (v58)(v27, v14);
    v144 = v160[1];
    v144(v5, v29);
  }

  v61 = *(v155 + 8);
  v61(v159, v156);
  v62 = v14;
  v63 = sub_29DA33574();
  v64 = qword_2A1A2E018;
  v65 = v63;
  if (v64 != -1)
  {
    swift_once();
  }

  v66 = sub_29DA34854();
  v68 = v67;
  if (v66 == sub_29DA34854() && v68 == v69)
  {

    goto LABEL_15;
  }

  v70 = sub_29DA35114();

  if (v70)
  {

LABEL_15:
    v71 = v153;
    v72 = sub_29DA08A88(v161, v153);
    if (v73)
    {
      v74 = v72;
      v75 = v73;
      sub_29DA1E70C(0);
      swift_getKeyPath();
      swift_getKeyPath();
      v162 = v71;
      v76 = v71;
      v160 = v58;
      v77 = v76;
      sub_29DA33B84();

      v78 = aBlock;
      v79 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v80 = v152;
      v81 = v154;
      v149(v152, v154, v62);
      v82 = (*(v32 + 80) + 40) & ~*(v32 + 80);
      v83 = swift_allocObject();
      *(v83 + 2) = v79;
      *(v83 + 3) = v74;
      *(v83 + 4) = v75;
      (*(v32 + 32))(&v83[v82], v80, v62);
      v167 = sub_29DA242A0;
      v168 = v83;
      aBlock = MEMORY[0x29EDCA5F8];
      v164 = 1107296256;
      v165 = sub_29DA05EEC;
      v166 = &unk_2A2462910;
      v84 = _Block_copy(&aBlock);

      [v78 addOperationWithBlock_];
      _Block_release(v84);

      v85 = v81;
      v86 = v62;
      return (v160)(v85, v86);
    }

    return (v58)(v154, v62);
  }

  v88 = qword_2A1A2CB18;
  v89 = v65;
  if (v88 != -1)
  {
    swift_once();
  }

  v90 = sub_29DA34854();
  v92 = v91;
  if (v90 == sub_29DA34854() && v92 == v93)
  {
  }

  else
  {
    v94 = sub_29DA35114();

    if ((v94 & 1) == 0)
    {
      if (qword_2A1A2DAE0 != -1)
      {
        swift_once();
      }

      v108 = sub_29DA34854();
      v110 = v109;
      if (v108 == sub_29DA34854() && v110 == v111)
      {
      }

      else
      {
        v112 = sub_29DA35114();

        if ((v112 & 1) == 0)
        {
          v159 = v62;
          v160 = v58;
          v122 = v148;
          sub_29DA34614();
          v123 = v147;
          v124 = v157;
          v145(v147, v161, v157);
          v125 = v153;
          v126 = sub_29DA34634();
          v127 = sub_29DA34B84();

          if (os_log_type_enabled(v126, v127))
          {
            v128 = v123;
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            aBlock = v130;
            *v129 = 136446466;
            v131 = [v125 description];
            v132 = sub_29DA34854();
            v161 = v32;
            v134 = v133;

            v135 = sub_29D9EBB44(v132, v134, &aBlock);

            *(v129 + 4) = v135;
            *(v129 + 12) = 2082;
            v136 = sub_29DA33574();
            v137 = sub_29DA34854();
            v139 = v138;

            v144(v128, v157);
            v140 = sub_29D9EBB44(v137, v139, &aBlock);

            *(v129 + 14) = v140;
            _os_log_impl(&dword_29D9BB000, v126, v127, "%{public}s: received unsupported notification %{public}s", v129, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x29ED6E4C0](v130, -1, -1);
            MEMORY[0x29ED6E4C0](v129, -1, -1);

            v61(v148, v156);
          }

          else
          {

            v144(v123, v124);
            v61(v122, v156);
          }

          v85 = v154;
          v86 = v159;
          return (v160)(v85, v86);
        }
      }

      v113 = v153;
      v114 = sub_29DA08A88(v161, v153);
      if (v115)
      {
        v116 = v114;
        v117 = v115;
        v118 = *&v113[qword_2A1A2D560];
        v119 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v120 = swift_allocObject();
        *(v120 + 2) = v119;
        *(v120 + 3) = v116;
        *(v120 + 4) = v117;
        v167 = sub_29DA241B0;
        v168 = v120;
        aBlock = MEMORY[0x29EDCA5F8];
        v164 = 1107296256;
        v165 = sub_29DA05EEC;
        v166 = &unk_2A2462870;
        v121 = _Block_copy(&aBlock);

        [v118 addOperationWithBlock_];
        _Block_release(v121);
      }

      return (v58)(v154, v62);
    }
  }

  v95 = v153;
  v96 = sub_29DA08A88(v161, v153);
  if (v97)
  {
    v98 = v96;
    v99 = v97;
    v161 = *&v95[qword_2A1A2D560];
    v100 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v101 = v152;
    v102 = v32;
    v103 = v154;
    v149(v152, v154, v62);
    v104 = v58;
    v105 = (*(v102 + 80) + 40) & ~*(v102 + 80);
    v106 = swift_allocObject();
    *(v106 + 2) = v100;
    *(v106 + 3) = v98;
    *(v106 + 4) = v99;
    (*(v102 + 32))(&v106[v105], v101, v62);
    v167 = sub_29DA241BC;
    v168 = v106;
    aBlock = MEMORY[0x29EDCA5F8];
    v164 = 1107296256;
    v165 = sub_29DA05EEC;
    v166 = &unk_2A24628C0;
    v107 = _Block_copy(&aBlock);

    [v161 addOperationWithBlock_];
    _Block_release(v107);
    return v104(v103, v62);
  }

  return (v58)(v154, v62);
}

unint64_t sub_29DA08A88(uint64_t a1, void *a2)
{
  v4 = sub_29DA33594();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_29DA34644();
  v8 = *(v33 - 8);
  MEMORY[0x2A1C7C4A8](v33);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_29DA33584();
  if (v11)
  {
    v12 = v11;
    v34 = 0xD000000000000023;
    v35 = 0x800000029DA38030;
    sub_29DA34D84();
    if (*(v12 + 16) && (v13 = sub_29DA1EE9C(v36), (v14 & 1) != 0))
    {
      sub_29D9C790C(*(v12 + 56) + 32 * v13, v37);
      sub_29D9F3314(v36);

      if (swift_dynamicCast())
      {
        return v34;
      }
    }

    else
    {

      sub_29D9F3314(v36);
    }
  }

  sub_29DA34614();
  (*(v5 + 16))(v7, a1, v4);
  v16 = a2;
  v17 = sub_29DA34634();
  v18 = sub_29DA34B84();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32 = v8;
    v36[0] = v31;
    *v19 = 136446466;
    v20 = [v16 description];
    v21 = sub_29DA34854();
    v23 = v22;

    v24 = sub_29D9EBB44(v21, v23, v36);

    *(v19 + 4) = v24;
    *(v19 + 12) = 2082;
    v25 = sub_29DA33574();
    v26 = sub_29DA34854();
    v28 = v27;

    (*(v5 + 8))(v7, v4);
    v29 = sub_29D9EBB44(v26, v28, v36);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_29D9BB000, v17, v18, "%{public}s: received notification %{public}s missing expected user info.", v19, 0x16u);
    v30 = v31;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v30, -1, -1);
    MEMORY[0x29ED6E4C0](v19, -1, -1);

    (*(v32 + 8))(v10, v33);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v8 + 8))(v10, v33);
  }

  return 0;
}

uint64_t sub_29DA08E6C(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v107 = a3;
  v118 = a1;
  v108 = sub_29DA336F4();
  v106 = *(v108 - 8);
  MEMORY[0x2A1C7C4A8](v108);
  v104 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = sub_29DA33754();
  v103 = *(v105 - 8);
  MEMORY[0x2A1C7C4A8](v105);
  v102 = &v96 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29DA33864();
  v113 = *(v8 - 8);
  v114 = v8;
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v112 = &v96 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v111 = &v96 - v11;
  sub_29DA1BF9C(0, &qword_2A1A2D308, sub_29DA22118, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v117 = &v96 - v13;
  sub_29DA24324(0, &qword_2A1A2D300, MEMORY[0x29EDC3840], type metadata accessor for HighlightAlert);
  v110 = v14;
  MEMORY[0x2A1C7C4A8](v14);
  v109 = &v96 - v15;
  v99 = type metadata accessor for HighlightAlert(0);
  MEMORY[0x2A1C7C4A8](v99);
  v17 = &v96 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29DA33964();
  v121 = *(v18 - 8);
  v19 = MEMORY[0x2A1C7C4A8](v18);
  v21 = &v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v19);
  v115 = &v96 - v22;
  v23 = sub_29DA34644();
  v120 = *(v23 - 8);
  v24 = MEMORY[0x2A1C7C4A8](v23);
  v26 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v24);
  v28 = &v96 - v27;
  sub_29DA34614();
  v29 = v4;

  v30 = sub_29DA34634();
  v31 = sub_29DA34BA4();
  v119 = a2;

  v32 = os_log_type_enabled(v30, v31);
  v116 = v17;
  v101 = v26;
  v100 = v21;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v98 = v18;
    v34 = v33;
    v97 = swift_slowAlloc();
    v122[0] = v97;
    *v34 = 136446467;
    v35 = [v29 description];
    v36 = v29;
    v37 = sub_29DA34854();
    v38 = v23;
    v40 = v39;

    v41 = sub_29D9EBB44(v37, v40, v122);
    v23 = v38;
    v42 = v120;

    *(v34 + 4) = v41;
    v29 = v36;
    *(v34 + 12) = 2081;
    v44 = v118;
    v43 = v119;
    *(v34 + 14) = sub_29D9EBB44(v118, v119, v122);
    _os_log_impl(&dword_29D9BB000, v30, v31, "%{public}s: handling acknowledge alert for %{private}s", v34, 0x16u);
    v45 = v97;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v45, -1, -1);
    v46 = v34;
    v18 = v98;
    MEMORY[0x29ED6E4C0](v46, -1, -1);

    v47 = *(v42 + 8);
    v47(v28, v23);
    v48 = v43;
    v49 = v44;
  }

  else
  {

    v47 = *(v120 + 8);
    v47(v28, v23);
    v49 = v118;
    v48 = v119;
  }

  v50 = v117;
  sub_29DA1A1D4(v49, v48, v117);
  sub_29DA22118(0);
  v52 = v51;
  if ((*(*(v51 - 8) + 48))(v50, 1, v51) == 1)
  {
    return sub_29DA243E8(v50, &qword_2A1A2D308, sub_29DA22118);
  }

  v118 = v23;
  v119 = v29;
  v54 = *(v52 + 48);
  v56 = v109;
  v55 = v110;
  v57 = *(v110 + 48);
  v58 = *(v121 + 32);
  v58(v109, v50, v18);
  sub_29DA23828(v50 + v54, &v56[v57], type metadata accessor for HighlightAlert);
  v59 = *(v55 + 48);
  v60 = v115;
  v58(v115, v56, v18);
  v61 = &v56[v59];
  v62 = v116;
  sub_29DA23828(v61, v116, type metadata accessor for HighlightAlert);
  v63 = v111;
  sub_29DA338E4();
  v65 = v112;
  v64 = v113;
  v66 = v114;
  (*(v113 + 104))(v112, *MEMORY[0x29EDC3720], v114);
  sub_29DA243A0(&qword_2A1A2DFE0, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A8]);
  LOBYTE(v59) = sub_29DA34814();
  v67 = *(v64 + 8);
  v67(v65, v66);
  v67(v63, v66);
  if (v59)
  {
    v68 = v62;
    v69 = v101;
    sub_29DA34614();
    v70 = v121;
    v71 = v100;
    (*(v121 + 16))(v100, v60, v18);
    v72 = v119;
    v73 = sub_29DA34634();
    v74 = sub_29DA34BA4();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v122[0] = v76;
      *v75 = 136446467;
      v77 = [v72 description];
      LODWORD(v117) = v74;
      v78 = v77;
      v79 = sub_29DA34854();
      v119 = v47;
      v81 = v80;

      v82 = sub_29D9EBB44(v79, v81, v122);

      *(v75 + 4) = v82;
      *(v75 + 12) = 2081;
      v83 = sub_29DA33924();
      v85 = v84;
      v86 = *(v70 + 8);
      v86(v71, v18);
      v87 = sub_29D9EBB44(v83, v85, v122);

      *(v75 + 14) = v87;
      _os_log_impl(&dword_29D9BB000, v73, v117, "%{public}s: skipping processing for previously acknowledged feed item with identifier %{private}s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v76, -1, -1);
      MEMORY[0x29ED6E4C0](v75, -1, -1);

      v119(v69, v118);
      sub_29DA23BC0(v116, type metadata accessor for HighlightAlert);
      return (v86)(v115, v18);
    }

    else
    {

      v95 = *(v70 + 8);
      v95(v71, v18);
      v47(v69, v118);
      sub_29DA23BC0(v68, type metadata accessor for HighlightAlert);
      return (v95)(v60, v18);
    }
  }

  else
  {
    sub_29D9CC410(0);
    v88 = sub_29DA34774();
    v89 = v60;
    v90 = [v88 UUID];

    v91 = v102;
    sub_29DA33744();

    v92 = sub_29DA34774();
    v93 = [v92 endDate];

    v94 = v104;
    sub_29DA336C4();

    sub_29DA1066C(v89, v91, v94, v107);
    (*(v106 + 8))(v94, v108);
    (*(v103 + 8))(v91, v105);
    sub_29DA23BC0(v62, type metadata accessor for HighlightAlert);
    return (*(v121 + 8))(v89, v18);
  }
}

void sub_29DA099F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t, uint64_t))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    a5(a2, a3, a4);
  }
}

uint64_t sub_29DA09A78(uint64_t a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v4 = v3;
  v62 = a3;
  v7 = sub_29DA336F4();
  v70 = *(v7 - 8);
  v71 = v7;
  MEMORY[0x2A1C7C4A8](v7);
  v68 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_29DA33754();
  v67 = *(v69 - 8);
  MEMORY[0x2A1C7C4A8](v69);
  v66 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2D308, sub_29DA22118, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v55 - v11;
  sub_29DA24324(0, &qword_2A1A2D300, MEMORY[0x29EDC3840], type metadata accessor for HighlightAlert);
  v60 = v13;
  MEMORY[0x2A1C7C4A8](v13);
  v59 = &v55 - v14;
  v58 = type metadata accessor for HighlightAlert(0);
  MEMORY[0x2A1C7C4A8](v58);
  v64 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_29DA33964();
  v63 = *(v65 - 8);
  MEMORY[0x2A1C7C4A8](v65);
  v61 = &v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29DA34644();
  v18 = *(v17 - 8);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34614();
  v21 = v4;

  v22 = sub_29DA34634();
  v23 = sub_29DA34BA4();

  v24 = os_log_type_enabled(v22, v23);
  v72 = v21;
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57 = v17;
    v26 = v25;
    v56 = swift_slowAlloc();
    v73[0] = v56;
    *v26 = 136446467;
    v27 = [v21 description];
    v28 = a1;
    v29 = sub_29DA34854();
    v55 = v18;
    v30 = v12;
    v32 = v31;

    v33 = v29;
    a1 = v28;
    v34 = sub_29D9EBB44(v33, v32, v73);
    v12 = v30;

    *(v26 + 4) = v34;
    *(v26 + 12) = 2081;
    *(v26 + 14) = sub_29D9EBB44(v28, a2, v73);
    _os_log_impl(&dword_29D9BB000, v22, v23, "%{public}s: handling dismiss alert for %{private}s", v26, 0x16u);
    v35 = v56;
    swift_arrayDestroy();
    MEMORY[0x29ED6E4C0](v35, -1, -1);
    MEMORY[0x29ED6E4C0](v26, -1, -1);

    (*(v55 + 8))(v20, v57);
  }

  else
  {

    (*(v18 + 8))(v20, v17);
  }

  sub_29DA1A1D4(a1, a2, v12);
  sub_29DA22118(0);
  v37 = v36;
  if ((*(*(v36 - 8) + 48))(v12, 1, v36) == 1)
  {
    return sub_29DA243E8(v12, &qword_2A1A2D308, sub_29DA22118);
  }

  v39 = *(v37 + 48);
  v41 = v59;
  v40 = v60;
  v42 = *(v60 + 48);
  v43 = v63;
  v44 = *(v63 + 32);
  v45 = v65;
  v44(v59, v12, v65);
  sub_29DA23828(&v12[v39], &v41[v42], type metadata accessor for HighlightAlert);
  v46 = *(v40 + 48);
  v47 = v61;
  v44(v61, v41, v45);
  v48 = v64;
  sub_29DA23828(&v41[v46], v64, type metadata accessor for HighlightAlert);
  sub_29D9CC410(0);
  v49 = sub_29DA34774();
  v50 = [v49 UUID];

  v51 = v66;
  sub_29DA33744();

  v52 = sub_29DA34774();
  v53 = [v52 endDate];

  v54 = v68;
  sub_29DA336C4();

  sub_29DA10E4C(v47, v51, v54, v62);
  (*(v70 + 8))(v54, v71);
  (*(v67 + 8))(v51, v69);
  sub_29DA23BC0(v48, type metadata accessor for HighlightAlert);
  return (*(v43 + 8))(v47, v45);
}

void sub_29DA0A1AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_29DA19C04(a2, a3);
  }
}

uint64_t sub_29DA0A21C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_29DA33594();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33564();
  v8 = a1;
  sub_29DA07ABC(v7);

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_29DA0A304()
{
  v31 = MEMORY[0x29EDB9BC8];
  sub_29DA1BF9C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v29 - v2;
  v4 = sub_29DA336F4();
  v30 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29DA34604();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x2A1C7C4A8](v34);
  v33 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v29 - v10;
  sub_29DA34034();
  swift_unknownObjectRetain();
  sub_29DA345E4();
  v12 = sub_29DA34C64();
  v13 = sub_29DA34034();
  sub_29DA23E28(0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_29DA3AB40;
  *(v14 + 56) = MEMORY[0x29EDC99B0];
  *(v14 + 64) = sub_29DA23E90();
  *(v14 + 32) = 0x6867696C68676948;
  *(v14 + 40) = 0xEF737472656C4174;
  sub_29DA345C4(v12, &dword_29D9BB000, v13, "BackgroundGeneration", 20, 2, v11, "generatorType=%{public}@", 24, 2, v14);

  v15 = sub_29D9FB6FC();
  v32 = v0;
  v16 = v0 + qword_2A1A312F0;
  v17 = v30;
  sub_29DA22690(v16, v3, &qword_2A1A2E148, v31);
  v18 = *(v17 + 48);
  v19 = v18(v3, 1, v4);
  v29 = v4;
  if (v19 == 1)
  {
    sub_29DA336E4();
    v20 = v18(v3, 1, v4);
    v21 = v17;
    if (v20 != 1)
    {
      sub_29DA243E8(v3, &qword_2A1A2E148, MEMORY[0x29EDB9BC8]);
    }
  }

  else
  {
    (*(v17 + 32))(v6, v3, v4);
    v21 = v17;
  }

  v22 = v33;
  v23 = v34;
  (*(v7 + 16))(v33, v11, v34);
  v24 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v25 = swift_allocObject();
  v26 = v32;
  *(v25 + 16) = v32;
  (*(v7 + 32))(v25 + v24, v22, v23);
  v27 = v26;
  sub_29DA0CC00(v15, v6, 0, sub_29DA24118, v25);

  (*(v21 + 8))(v6, v29);
  return (*(v7 + 8))(v11, v23);
}

uint64_t sub_29DA0A764(uint64_t a1)
{
  sub_29DA34C54();
  v1 = sub_29DA34034();
  sub_29DA345D4();

  return sub_29DA34B14();
}

void sub_29DA0A7D8()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2CBF0, sub_29D9C8864, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v45 - v6;
  v8 = type metadata accessor for HighlightAlertPluginData(0);
  MEMORY[0x2A1C7C4A8](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for HighlightAlertConfiguration(0);
  v12 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + qword_2A1A2D568))
  {
    sub_29DA34614();
    v15 = sub_29DA34634();
    v16 = sub_29DA34B84();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_29D9BB000, v15, v16, "HighlightAlertsFeedItemGenerator already has detector running.", v17, 2u);
      MEMORY[0x29ED6E4C0](v17, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return;
  }

  v47 = v10;
  sub_29DA074E4();
  v18 = sub_29D9FB6FC();
  v19 = MEMORY[0x29EDCA190];
  v50 = v0;
  v51[0] = MEMORY[0x29EDCA190];
  v20 = v18[2];
  v48 = v7;
  if (v20)
  {
    v21 = *(v12 + 80);
    v49 = v18;
    v22 = v18 + ((v21 + 32) & ~v21);
    v23 = *(v12 + 72);
    v24 = MEMORY[0x29EDCA190];
    do
    {
      sub_29DA23890(v22, v14, type metadata accessor for HighlightAlertConfiguration);
      sub_29DA243A0(qword_2A1A2DE08, type metadata accessor for HighlightAlertConfiguration, &unk_29DA3AFF0);
      v25 = sub_29DA34454();
      sub_29DA23BC0(v14, type metadata accessor for HighlightAlertConfiguration);
      if (v25)
      {
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          MEMORY[0x29ED6D4A0]();
          if (*((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v51[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_29DA34974();
          }

          sub_29DA34994();
          v24 = v51[0];
        }

        else
        {
        }
      }

      v22 += v23;
      --v20;
    }

    while (v20);

    v26 = v24;
    v19 = MEMORY[0x29EDCA190];
  }

  else
  {

    v26 = MEMORY[0x29EDCA190];
  }

  v52 = v19;
  if (v26 >> 62)
  {
LABEL_38:
    v49 = v26 & 0xFFFFFFFFFFFFFF8;
    v27 = sub_29DA34D34();
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_39:
    v29 = MEMORY[0x29EDCA190];
    goto LABEL_40;
  }

  v49 = v26 & 0xFFFFFFFFFFFFFF8;
  v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_39;
  }

LABEL_18:
  v28 = 0;
  v29 = MEMORY[0x29EDCA190];
  do
  {
    v46 = v29;
    v30 = v28;
    while (1)
    {
      if ((v26 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x29ED6D970](v30, v26);
      }

      else
      {
        if (v30 >= *(v49 + 16))
        {
          goto LABEL_37;
        }

        v31 = *(v26 + 8 * v30 + 32);
      }

      v32 = v31;
      v28 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      sub_29DA33B44();

      sub_29D9C706C(v51, v51[3]);
      v33 = sub_29DA33984();
      v34 = [v32 hk:v33 metadataValueDisplayTypeInStore:?];

      sub_29D9C7968(v51);
      if (v34)
      {
        v35 = [v34 objectType];

        if (!v35)
        {
          goto LABEL_21;
        }

        objc_opt_self();
        v32 = v35;
        if (swift_dynamicCastObjCClass())
        {
          break;
        }
      }

LABEL_21:
      ++v30;
      if (v28 == v27)
      {
        v29 = v46;
        goto LABEL_40;
      }
    }

    MEMORY[0x29ED6D4A0]();
    if (*((v52 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v52 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29DA34974();
    }

    sub_29DA34994();
    v29 = v52;
  }

  while (v28 != v27);
LABEL_40:
  v36 = sub_29D9FA398(v29);

  v37 = sub_29DA1F9C0(v36);

  v51[0] = v26;
  sub_29DA2BA8C(v37);
  v38 = v51[0];
  v39 = v47;
  sub_29DA0AF34(v47);
  v40 = v48;
  sub_29DA22690(v39, v48, &qword_2A1A2CBF0, sub_29D9C8864);
  sub_29D9C8864(0);
  v42 = v41;
  v43 = *(v41 - 8);
  if ((*(v43 + 48))(v40, 1, v41) == 1)
  {
    sub_29DA23BC0(v39, type metadata accessor for HighlightAlertPluginData);
    sub_29DA243E8(v40, &qword_2A1A2CBF0, sub_29D9C8864);
    v44 = 0;
  }

  else
  {
    v44 = sub_29DA34774();
    sub_29DA23BC0(v39, type metadata accessor for HighlightAlertPluginData);
    (*(v43 + 8))(v40, v42);
  }

  sub_29DA0B7DC(v38, v44);
}

uint64_t sub_29DA0AF34@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = sub_29DA34644();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v44 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v42 = &v42 - v5;
  v6 = MEMORY[0x29EDC9C68];
  sub_29DA1BF9C(0, &qword_2A1A2DF88, type metadata accessor for HighlightAlertPluginData, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v43 = &v42 - v8;
  v9 = sub_29DA33754();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA1BF9C(0, &qword_2A1A2DFD8, MEMORY[0x29EDC37D8], v6);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v42 - v14;

  sub_29DA33B44();

  sub_29D9C706C(v50, v50[3]);
  v45 = v1;

  sub_29DA33B44();

  sub_29D9C706C(v49, v49[3]);
  v16 = sub_29DA33984();
  v17 = [v16 profileIdentifier];

  v18 = [v17 identifier];
  sub_29DA33744();

  sub_29DA33714();
  (*(v10 + 8))(v12, v9);
  sub_29DA33994();

  sub_29D9C7968(v49);
  v19 = sub_29DA33894();
  v20 = *(v19 - 8);
  if ((*(v20 + 48))(v15, 1, v19) == 1)
  {
    sub_29D9C7968(v50);
    sub_29DA243E8(v15, &qword_2A1A2DFD8, MEMORY[0x29EDC37D8]);
  }

  else
  {
    v21 = sub_29DA33884();
    v23 = v22;
    (*(v20 + 8))(v15, v19);
    sub_29D9C7968(v50);
    if (v23 >> 60 != 15)
    {
      sub_29DA33474();
      swift_allocObject();
      sub_29DA33464();
      v40 = type metadata accessor for HighlightAlertPluginData(0);
      sub_29DA243A0(&qword_2A1A2DFA0, type metadata accessor for HighlightAlertPluginData, &unk_29DA38FDC);
      v41 = v43;
      sub_29DA33454();
      sub_29D9CFBBC(v21, v23);

      (*(*(v40 - 8) + 56))(v41, 0, 1, v40);
      return sub_29DA23828(v41, v48, type metadata accessor for HighlightAlertPluginData);
    }
  }

  v24 = v44;
  sub_29DA34614();
  v25 = v45;
  v26 = sub_29DA34634();
  v27 = sub_29DA34BA4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v50[0] = v29;
    *v28 = 136446210;
    v30 = [v25 description];
    v31 = sub_29DA34854();
    v33 = v32;

    v34 = sub_29D9EBB44(v31, v33, v50);

    *(v28 + 4) = v34;
    _os_log_impl(&dword_29D9BB000, v26, v27, "%{public}s: feed item context did not have plugin data; creating new plugin data", v28, 0xCu);
    sub_29D9C7968(v29);
    MEMORY[0x29ED6E4C0](v29, -1, -1);
    MEMORY[0x29ED6E4C0](v28, -1, -1);
  }

  (*(v46 + 8))(v24, v47);
  sub_29D9C8864(0);
  v36 = v35;
  v37 = *(*(v35 - 8) + 56);
  v38 = v48;
  v37(v48, 1, 1, v35);
  sub_29DA243E8(v38, &qword_2A1A2CBF0, sub_29D9C8864);
  return (v37)(v38, 1, 1, v36);
}