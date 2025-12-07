uint64_t SyncEngine.syncService(_:didUpdatePairedDevice:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v8 = *a3;
  v7 = a3[1];
  v9 = *(a3 + 8);
  v10 = *(v3 + 120);
  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *(v11 + 24) = a1;
  *(v11 + 32) = a2;
  *(v11 + 40) = v8;
  *(v11 + 48) = v7;
  *(v11 + 56) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2657EF26C;
  *(v12 + 24) = v11;
  v15[4] = sub_2657F06A0;
  v15[5] = v12;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_2657CF61C;
  v15[3] = &block_descriptor_254;
  v13 = _Block_copy(v15);

  swift_unknownObjectRetain();

  dispatch_sync(v10, v13);
  _Block_release(v13);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

void sub_2657DC9B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_2657F2414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v38[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *a3;
  v12 = *(a3 + 8);
  v13 = *(a3 + 16);
  v14 = *(v4 + 120);
  *v10 = v14;
  (*(v8 + 104))(v10, *MEMORY[0x277D85200], v7);
  v15 = v14;
  LOBYTE(v14) = sub_2657F2434();
  (*(v8 + 8))(v10, v7);
  if ((v14 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
LABEL_4:
    v16 = sub_2657F2344();
    __swift_project_value_buffer(v16, qword_281446410);

    v17 = sub_2657F2334();
    v18 = sub_2657F2574();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v38[0] = v20;
      *v19 = 136380675;
      v21 = *(v4 + 208);
      if (v21)
      {
        v22 = *(v4 + 200);
        v23 = v21;
      }

      else
      {
        v28 = IDSCopyLocalDeviceUniqueID();
        if (v28)
        {
          v29 = v28;
          v22 = sub_2657F2484();
          v23 = v30;
        }

        else
        {
          v22 = 0xD000000000000017;
          v23 = 0x80000002657F8510;
        }
      }

      v31 = sub_2657B7F9C(v22, v23, v38);

      *(v19 + 4) = v31;
      v32 = "(%{private}s) Ignoring message send callback as it is from an unknown sync service";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v17, v18, v32, v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x266760A30](v20, -1, -1);
      MEMORY[0x266760A30](v19, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (*(v4 + 24) != a1)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  if ((~*(v4 + 248) & 3) == 0)
  {
    v38[0] = v11;
    v38[1] = v12;
    v39 = v13;
    sub_2657DCE48(v38);
    return;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v24 = sub_2657F2344();
  __swift_project_value_buffer(v24, qword_281446410);

  v17 = sub_2657F2334();
  v18 = sub_2657F2574();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v38[0] = v20;
    *v19 = 136380675;
    v25 = *(v4 + 208);
    if (v25)
    {
      v26 = *(v4 + 200);
      v27 = v25;
    }

    else
    {
      v33 = IDSCopyLocalDeviceUniqueID();
      if (v33)
      {
        v34 = v33;
        v26 = sub_2657F2484();
        v27 = v35;
      }

      else
      {
        v26 = 0xD000000000000017;
        v27 = 0x80000002657F8510;
      }
    }

    v36 = sub_2657B7F9C(v26, v27, v38);

    *(v19 + 4) = v36;
    v32 = "(%{private}s) Ignoring message send callback as the sync engine is disabled";
    goto LABEL_22;
  }

LABEL_23:
}

void sub_2657DCE48(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(v2 + 120);
  *v7 = v11;
  v13 = v5 + 104;
  v12 = *(v5 + 104);
  v72 = *MEMORY[0x277D85200];
  v71 = v12;
  v12(v7);
  v69 = v11;
  LOBYTE(v11) = sub_2657F2434();
  v70 = *(v5 + 8);
  v70(v7, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v67 = v5 + 104;
  v68 = v4;
  v73 = v10;
  v14 = *(*(v2 + 216) + 16);

  os_unfair_lock_lock(v14);
  v16 = *(v2 + 224);
  v15 = *(v2 + 232);
  v17 = *(v2 + 240);

  os_unfair_lock_unlock(v14);

  v4 = 0x281446000uLL;
  if (!v8)
  {
    if (!v15)
    {

      goto LABEL_22;
    }

    goto LABEL_12;
  }

  if (!v15)
  {

LABEL_12:
    v13 = v73;

    goto LABEL_13;
  }

  v13 = v73;
  if ((v9 != v16 || v8 != v15) && (sub_2657F2864() & 1) == 0 || v17 != v13)
  {
    swift_bridgeObjectRetain_n();

    swift_bridgeObjectRelease_n();
    goto LABEL_13;
  }

  if ((((v17 & 0x100) == 0) ^ ((v13 & 0x100) >> 8)))
  {
LABEL_22:
    if ((~*(v2 + 248) & 3) == 0)
    {
      return;
    }

    goto LABEL_31;
  }

LABEL_13:
  if (qword_281446408 != -1)
  {
LABEL_43:
    swift_once();
  }

  v18 = sub_2657F2344();
  __swift_project_value_buffer(v18, qword_281446410);

  v19 = sub_2657F2334();
  v20 = sub_2657F2584();

  if (os_log_type_enabled(v19, v20))
  {
    v64 = v20;
    v66 = v9;
    v21 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v77 = v63;
    *v21 = 136381187;
    v22 = *(v2 + 208);
    v65 = v19;
    if (v22)
    {
      v23 = *(v2 + 200);
      v24 = v22;
    }

    else
    {
      v25 = IDSCopyLocalDeviceUniqueID();
      if (v25)
      {
        v26 = v25;
        v23 = sub_2657F2484();
        v24 = v27;
      }

      else
      {
        v23 = 0xD000000000000017;
        v24 = 0x80000002657F8510;
      }
    }

    v28 = sub_2657B7F9C(v23, v24, &v77);

    *(v21 + 4) = v28;
    *(v21 + 12) = 2082;
    v29 = *(*(v2 + 216) + 16);

    os_unfair_lock_lock(v29);
    v31 = *(v2 + 224);
    v30 = *(v2 + 232);
    v32 = *(v2 + 240);

    os_unfair_lock_unlock(v29);

    v74 = v31;
    v75 = v30;
    v76 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023900, &qword_2657F42F0);
    v33 = sub_2657F24A4();
    v35 = sub_2657B7F9C(v33, v34, &v77);

    *(v21 + 14) = v35;
    *(v21 + 22) = 2082;
    v9 = v66;
    v74 = v66;
    v75 = v8;
    v13 = v73;
    v76 = v73;

    v36 = sub_2657F24A4();
    v38 = sub_2657B7F9C(v36, v37, &v77);

    *(v21 + 24) = v38;
    v39 = v65;
    _os_log_impl(&dword_2657B5000, v65, v64, "(%{private}s) Paired device changed from %{public}s to %{public}s ", v21, 0x20u);
    v40 = v63;
    swift_arrayDestroy();
    MEMORY[0x266760A30](v40, -1, -1);
    MEMORY[0x266760A30](v21, -1, -1);

    v4 = 0x281446000;
  }

  else
  {
  }

  v41 = v72;
  v42 = v71;
  v44 = v68;
  v43 = v69;
  *v7 = v69;
  v42(v7, v41, v44);
  v45 = v43;
  LOBYTE(v43) = sub_2657F2434();
  v70(v7, v44);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v46 = *(v2 + 136);
  ObjectType = swift_getObjectType();
  (*(v46 + 24))(ObjectType, v46);
  v48 = *(*(v2 + 216) + 16);

  os_unfair_lock_lock(v48);
  *(v2 + 224) = v9;
  *(v2 + 232) = v8;
  *(v2 + 240) = v13;

  os_unfair_lock_unlock(v48);

  if ((~*(v2 + 248) & 3) == 0)
  {
    sub_2657DA250();
    if (v8)
    {
      v49 = *(v2 + 64);
      v50 = *(v2 + 72);
      __swift_project_boxed_opaque_existential_1((v2 + 40), v49);
      if ((*(v50 + 136))(v9, v8, v49, v50))
      {
        LOBYTE(v74) = HIBYTE(v13) & 1;
        sub_2657B8A48(v9, v8, &v74);
      }

      else
      {
        LOBYTE(v74) = HIBYTE(v13) & 1;
        sub_2657E4628(v9, v8, &v74);
      }
    }

    return;
  }

LABEL_31:
  if (*(v4 + 1032) != -1)
  {
LABEL_45:
    swift_once();
  }

  v51 = sub_2657F2344();
  __swift_project_value_buffer(v51, qword_281446410);

  v52 = sub_2657F2334();
  v53 = sub_2657F2584();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v74 = v55;
    *v54 = 136380675;
    v56 = *(v2 + 208);
    if (v56)
    {
      v57 = *(v2 + 200);
      v58 = v56;
    }

    else
    {
      v59 = IDSCopyLocalDeviceUniqueID();
      if (v59)
      {
        v60 = v59;
        v57 = sub_2657F2484();
        v58 = v61;
      }

      else
      {
        v57 = 0xD000000000000017;
        v58 = 0x80000002657F8510;
      }
    }

    v62 = sub_2657B7F9C(v57, v58, &v74);

    *(v54 + 4) = v62;
    _os_log_impl(&dword_2657B5000, v52, v53, "(%{private}s) Ignoring paired device/enabled channge as the sync engine is not available", v54, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v55);
    MEMORY[0x266760A30](v55, -1, -1);
    MEMORY[0x266760A30](v54, -1, -1);
  }
}

void sub_2657DD5D4(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a1;
  v13 = *(v4 + 120);
  *v11 = v13;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_2657F2434();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_5;
  }

  if ((~*(v4 + 248) & 3) == 0)
  {
    sub_2657F21B4();
    swift_allocObject();
    sub_2657F21A4();
    sub_2657F0480();
    sub_2657F2194();
    v23 = v31;
    if (v32 > 1u)
    {
      if (v32 == 2)
      {
        v32 = 2;
        v30[0] = v31 & 1;
        v29 = v12;
        sub_2657D3AC0(v31, *(&v31 + 1), 2u);
        sub_2657DDC2C(&v31, v30, *(&v23 + 1), a2, a3, &v29);

        sub_2657D3E70(v23, *(&v23 + 1), 2u);
        sub_2657D3E70(v23, *(&v23 + 1), 2u);
      }

      else
      {
        v32 = 3;
        v30[0] = v12;
        if (v31 == 0)
        {
          sub_2657DE2E4(&v31, a2, a3, v30);
        }

        else
        {
          sub_2657DE5E0(&v31, a2, a3, v30);
        }

        sub_2657D3E70(v23, *(&v23 + 1), 3u);
      }
    }

    else if (v32)
    {
      v32 = 1;
      v30[0] = v12;
      sub_2657D3AC0(v31, *(&v31 + 1), 1u);
      sub_2657DE8EC(&v31, v23, *(&v23 + 1), a2, a3, v30);

      sub_2657D3E70(v23, *(&v23 + 1), 1u);
    }

    else
    {
      v32 = 0;
      v30[0] = v12;
      sub_2657D3AC0(v31, *(&v31 + 1), 0);
      sub_2657DEFA0(&v31, v23, *(&v23 + 1), a2, a3, v30);

      sub_2657D3E70(v23, *(&v23 + 1), 0);
    }

    return;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_24;
  }

LABEL_5:
  v15 = sub_2657F2344();
  __swift_project_value_buffer(v15, qword_281446410);

  v16 = sub_2657F2334();
  v17 = sub_2657F2574();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v31 = v19;
    *v18 = 136380675;
    v20 = *(v4 + 208);
    if (v20)
    {
      v21 = *(v4 + 200);
      v22 = v20;
    }

    else
    {
      v24 = IDSCopyLocalDeviceUniqueID();
      if (v24)
      {
        v25 = v24;
        v21 = sub_2657F2484();
        v22 = v26;
      }

      else
      {
        v21 = 0xD000000000000017;
        v22 = 0x80000002657F8510;
      }
    }

    v27 = sub_2657B7F9C(v21, v22, &v31);

    *(v18 + 4) = v27;
    _os_log_impl(&dword_2657B5000, v16, v17, "(%{private}s) Will not handle message because sync is inactive", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x266760A30](v19, -1, -1);
    MEMORY[0x266760A30](v18, -1, -1);
  }
}

uint64_t sub_2657DDC2C(unint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v73 = a4;
  v74 = a3;
  v11 = sub_2657F22A4();
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2657F2414();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v68 = *(a1 + 8);
  v69 = v17;
  LODWORD(a1) = *(a1 + 16);
  v19 = *a2;
  v20 = *a6;
  v21 = *(v7 + 120);
  *v16 = v21;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v22 = v21;
  LOBYTE(v21) = sub_2657F2434();
  (*(v14 + 8))(v16, v13);
  if (v21)
  {
    v67 = v20;
    v72 = a5;
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v23 = sub_2657F2344();
  v24 = __swift_project_value_buffer(v23, qword_281446410);

  v25 = sub_2657F2334();
  v26 = sub_2657F2584();

  if (os_log_type_enabled(v25, v26))
  {
    v66 = v11;
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v76[0] = v28;
    *v27 = 136380931;
    v29 = *(v7 + 208);
    v65 = a1;
    if (v29)
    {
      v30 = *(v7 + 200);
      v31 = v29;
    }

    else
    {
      v64[1] = v24;
      v32 = IDSCopyLocalDeviceUniqueID();
      if (v32)
      {
        v33 = v32;
        v30 = sub_2657F2484();
        v31 = v34;
      }

      else
      {
        v30 = 0xD000000000000017;
        v31 = 0x80000002657F8510;
      }
    }

    v35 = sub_2657B7F9C(v30, v31, v76);

    *(v27 + 4) = v35;
    *(v27 + 12) = 2082;
    if (v19)
    {
      v36 = 0x6563616C706572;
    }

    else
    {
      v36 = 0x657461647075;
    }

    if (v19)
    {
      v37 = 0xE700000000000000;
    }

    else
    {
      v37 = 0xE600000000000000;
    }

    a1 = sub_2657B7F9C(v36, v37, v76);

    *(v27 + 14) = a1;
    _os_log_impl(&dword_2657B5000, v25, v26, "(%{private}s) Received ack message for action %{public}s", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266760A30](v28, -1, -1);
    MEMORY[0x266760A30](v27, -1, -1);

    v11 = v66;
    LOBYTE(a1) = v65;
  }

  else
  {
  }

  v38 = *(v7 + 256);
  v39 = v72;
  v40 = v73;
  if (v38)
  {
    v41 = *(v7 + 264);
    v76[0] = v69;
    v76[1] = v68;
    v77 = a1;
    v75 = v19;

    v38(v76, &v75, v74, v40, v39);
    sub_2657BA1AC(v38, v41);
  }

  if (v19)
  {

    v42 = sub_2657F2334();
    v43 = sub_2657F2584();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = v11;
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v76[0] = v46;
      *v45 = 136380675;
      if (*(v7 + 208))
      {
        v47 = *(v7 + 200);
        v48 = *(v7 + 208);
      }

      else
      {
        v49 = IDSCopyLocalDeviceUniqueID();
        if (v49)
        {
          v50 = v49;
          v47 = sub_2657F2484();
          v48 = v51;
        }

        else
        {
          v47 = 0xD000000000000017;
          v48 = 0x80000002657F8510;
        }
      }

      v52 = sub_2657B7F9C(v47, v48, v76);

      *(v45 + 4) = v52;
      _os_log_impl(&dword_2657B5000, v42, v43, "(%{private}s) Paired device has performed an initial sync", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x266760A30](v46, -1, -1);
      MEMORY[0x266760A30](v45, -1, -1);

      v11 = v44;
      v39 = v72;
      v40 = v73;
    }

    else
    {
    }

    v53 = *(v7 + 64);
    v54 = *(v7 + 72);
    __swift_project_boxed_opaque_existential_1((v7 + 40), v53);
    (*(v54 + 144))(v40, v39, v53, v54);
  }

  v55 = v70;
  sub_2657F2284();
  v56 = *(v7 + 16);
  v57 = *(v7 + 64);
  v58 = *(v7 + 72);
  __swift_project_boxed_opaque_existential_1((v7 + 40), v57);
  if (v56)
  {
    (*(v58 + 64))(v55, v74, v40, v39, v57, v58);
    v59 = *(v7 + 64);
    v60 = *(v7 + 72);
    __swift_project_boxed_opaque_existential_1((v7 + 40), v59);
    if (((*(v60 + 136))(v40, v39, v59, v60) & 1) == 0)
    {
      LOBYTE(v76[0]) = v67;
      sub_2657E4628(v40, v39, v76);
    }
  }

  else if ((*(v58 + 136))(v40, v39, v57, v58))
  {
    v61 = *(v7 + 64);
    v62 = *(v7 + 72);
    __swift_project_boxed_opaque_existential_1((v7 + 40), v61);
    (*(v62 + 64))(v55, v74, v40, v39, v61, v62);
  }

  return (*(v71 + 8))(v55, v11);
}

void sub_2657DE2E4(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a4;
  v14 = v5[15];
  *v12 = v14;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_2657F2434();
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_2657F2344();
  __swift_project_value_buffer(v16, qword_281446410);

  v17 = sub_2657F2334();
  v18 = sub_2657F2584();

  if (!os_log_type_enabled(v17, v18))
  {

    v23 = v5[34];
    if (!v23)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v30 = a2;
  v31 = a3;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v32 = v20;
  *v19 = 136380675;
  if (v5[26])
  {
    v21 = v5[25];
    v22 = v5[26];
  }

  else
  {
    v24 = IDSCopyLocalDeviceUniqueID();
    if (v24)
    {
      v25 = v24;
      v21 = sub_2657F2484();
      v22 = v26;
    }

    else
    {
      v22 = 0x80000002657F8510;
      v21 = 0xD000000000000017;
    }
  }

  v27 = sub_2657B7F9C(v21, v22, &v32);

  *(v19 + 4) = v27;
  _os_log_impl(&dword_2657B5000, v17, v18, "(%{private}s) Received unlock message", v19, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v20);
  MEMORY[0x266760A30](v20, -1, -1);
  MEMORY[0x266760A30](v19, -1, -1);

  a2 = v30;
  a3 = v31;
  v23 = v5[34];
  if (v23)
  {
LABEL_12:
    v28 = v5[35];

    v23(v29);
    sub_2657BA1AC(v23, v28);
  }

LABEL_13:
  sub_2657E4CAC();
  sub_2657E4F94();
  v33 = v13;
  sub_2657B8A48(a2, a3, &v33);
}

void sub_2657DE5E0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  v5 = v4;
  v9 = sub_2657F2414();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a4;
  v14 = v5[15];
  *v12 = v14;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v15 = v14;
  LOBYTE(v14) = sub_2657F2434();
  (*(v10 + 8))(v12, v9);
  if (v14)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = sub_2657F2344();
  __swift_project_value_buffer(v16, qword_281446410);

  v17 = sub_2657F2334();
  v18 = sub_2657F2584();

  if (os_log_type_enabled(v17, v18))
  {
    HIDWORD(v29) = v13;
    v30 = a3;
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v31 = v20;
    *v19 = 136380675;
    if (v5[26])
    {
      v21 = v5[25];
      v22 = v5[26];
    }

    else
    {
      v23 = IDSCopyLocalDeviceUniqueID();
      if (v23)
      {
        v24 = v23;
        v21 = sub_2657F2484();
        v22 = v25;
      }

      else
      {
        v22 = 0x80000002657F8510;
        v21 = 0xD000000000000017;
      }
    }

    v26 = sub_2657B7F9C(v21, v22, &v31);

    *(v19 + 4) = v26;
    _os_log_impl(&dword_2657B5000, v17, v18, "(%{private}s) Received resync message", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x266760A30](v20, -1, -1);
    MEMORY[0x266760A30](v19, -1, -1);

    a3 = v30;
    LOBYTE(v13) = BYTE4(v29);
  }

  else
  {
  }

  v27 = v5[8];
  v28 = v5[9];
  __swift_project_boxed_opaque_existential_1(v5 + 5, v27);
  (*(v28 + 120))(a2, a3, v27, v28);
  sub_2657E4CAC();
  sub_2657E4F94();
  v32 = v13;
  sub_2657B8A48(a2, a3, &v32);
}

void sub_2657DE8EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 *a6)
{
  v7 = v6;
  v70 = a4;
  v71 = a5;
  v11 = sub_2657F2414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a6;
  v16 = *(v7 + 120);
  *v14 = v16;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v17 = v16;
  LOBYTE(v16) = sub_2657F2434();
  (*(v12 + 8))(v14, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_42;
  }

  v66 = v15;
  v67 = a2;
  v68 = a3;
  if (qword_281446408 != -1)
  {
    goto LABEL_43;
  }

  while (1)
  {
    v18 = sub_2657F2344();
    __swift_project_value_buffer(v18, qword_281446410);

    v19 = sub_2657F2334();
    v20 = sub_2657F2584();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v73[0] = v22;
      *v21 = 136380675;
      if (*(v7 + 208))
      {
        v23 = *(v7 + 200);
        v24 = *(v7 + 208);
      }

      else
      {
        v25 = IDSCopyLocalDeviceUniqueID();
        if (v25)
        {
          v26 = v25;
          v23 = sub_2657F2484();
          v24 = v27;
        }

        else
        {
          v23 = 0xD000000000000017;
          v24 = 0x80000002657F8510;
        }
      }

      v28 = sub_2657B7F9C(v23, v24, v73);

      *(v21 + 4) = v28;
      _os_log_impl(&dword_2657B5000, v19, v20, "(%{private}s) Received replace message", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x266760A30](v22, -1, -1);
      MEMORY[0x266760A30](v21, -1, -1);
    }

    if ((~*(v7 + 248) & 3) != 0)
    {

      v36 = sub_2657F2334();
      v37 = sub_2657F2574();

      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_40;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v73[0] = v39;
      *v38 = 136380675;
      v40 = *(v7 + 208);
      if (v40)
      {
        v41 = *(v7 + 200);
        v42 = v40;
      }

      else
      {
        v56 = IDSCopyLocalDeviceUniqueID();
        if (v56)
        {
          v57 = v56;
          v41 = sub_2657F2484();
          v42 = v58;
        }

        else
        {
          v41 = 0xD000000000000017;
          v42 = 0x80000002657F8510;
        }
      }

      v62 = sub_2657B7F9C(v41, v42, v73);

      *(v38 + 4) = v62;
      v63 = "(%{private}s) Will not handle message because sync is inactive";
      goto LABEL_39;
    }

    if (*(v7 + 16) != 1)
    {
      break;
    }

    swift_beginAccess();
    v29 = *(v7 + 144);
    v30 = v29 + 64;
    v31 = 1 << *(v29 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v29 + 64);
    v34 = (v31 + 63) >> 6;

    v35 = 0;
    v65 = v29;
    while (v33)
    {
LABEL_25:
      v44 = *(*(v29 + 56) + ((v35 << 9) | (8 * __clz(__rbit64(v33)))));
      v73[3] = type metadata accessor for SyncEngine();
      v73[4] = &protocol witness table for SyncEngine;
      v73[0] = v7;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v45 = *(v44 + 24);
        ObjectType = swift_getObjectType();
        v69 = *(v45 + 48);

        v69(v73, v70, v71, ObjectType, v45);
        v29 = v65;
        swift_unknownObjectRelease();
      }

      else
      {
      }

      v33 &= v33 - 1;
      __swift_destroy_boxed_opaque_existential_1(v73);
    }

    while (1)
    {
      v43 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v43 >= v34)
      {

        v50 = *(v7 + 64);
        v51 = *(v7 + 72);
        __swift_project_boxed_opaque_existential_1((v7 + 40), v50);
        (*(v51 + 80))(v50, v51);
        v52 = *(v7 + 64);
        v53 = *(v7 + 72);
        __swift_project_boxed_opaque_existential_1((v7 + 40), v52);
        v55 = v70;
        v54 = v71;
        (*(v53 + 144))(v70, v71, v52, v53);
        LOBYTE(v73[0]) = v66;
        v72 = 1;
        sub_2657DF400(v67, v68, v55, v54, v73, &v72);
        return;
      }

      v33 = *(v30 + 8 * v43);
      ++v35;
      if (v33)
      {
        v35 = v43;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
  }

  v36 = sub_2657F2334();
  v37 = sub_2657F2574();

  if (!os_log_type_enabled(v36, v37))
  {
    goto LABEL_40;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  v73[0] = v39;
  *v38 = 136380675;
  v47 = *(v7 + 208);
  if (v47)
  {
    v48 = *(v7 + 200);
    v49 = v47;
  }

  else
  {
    v59 = IDSCopyLocalDeviceUniqueID();
    if (v59)
    {
      v60 = v59;
      v48 = sub_2657F2484();
      v49 = v61;
    }

    else
    {
      v48 = 0xD000000000000017;
      v49 = 0x80000002657F8510;
    }
  }

  v64 = sub_2657B7F9C(v48, v49, v73);

  *(v38 + 4) = v64;
  v63 = "(%{private}s) Paired device should never send a replace message";
LABEL_39:
  _os_log_impl(&dword_2657B5000, v36, v37, v63, v38, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v39);
  MEMORY[0x266760A30](v39, -1, -1);
  MEMORY[0x266760A30](v38, -1, -1);
LABEL_40:
}

void sub_2657DEFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6)
{
  v7 = v6;
  v13 = sub_2657F2414();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a6;
  v18 = *(v7 + 120);
  *v16 = v18;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v19 = v18;
  LOBYTE(v18) = sub_2657F2434();
  (*(v14 + 8))(v16, v13);
  if ((v18 & 1) == 0)
  {
    __break(1u);
    goto LABEL_24;
  }

  if ((~*(v7 + 248) & 3) == 0)
  {
    v47 = a2;
    if (qword_281446408 == -1)
    {
LABEL_4:
      v20 = sub_2657F2344();
      __swift_project_value_buffer(v20, qword_281446410);

      v21 = sub_2657F2334();
      v22 = sub_2657F2584();

      if (os_log_type_enabled(v21, v22))
      {
        v45 = a4;
        v46 = a5;
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v49 = v24;
        *v23 = 136380675;
        v25 = *(v7 + 208);
        v44 = a3;
        if (v25)
        {
          v26 = *(v7 + 200);
          v27 = v25;
        }

        else
        {
          v36 = IDSCopyLocalDeviceUniqueID();
          if (v36)
          {
            v37 = v36;
            v26 = sub_2657F2484();
            v27 = v38;
          }

          else
          {
            v26 = 0xD000000000000017;
            v27 = 0x80000002657F8510;
          }
        }

        v42 = sub_2657B7F9C(v26, v27, &v49);

        *(v23 + 4) = v42;
        _os_log_impl(&dword_2657B5000, v21, v22, "(%{private}s) Received update message", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x266760A30](v24, -1, -1);
        MEMORY[0x266760A30](v23, -1, -1);

        a4 = v45;
        a5 = v46;
        a3 = v44;
      }

      else
      {
      }

      LOBYTE(v49) = v17;
      v48 = 0;
      sub_2657DF400(v47, a3, a4, a5, &v49, &v48);
      return;
    }

LABEL_24:
    swift_once();
    goto LABEL_4;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v28 = sub_2657F2344();
  __swift_project_value_buffer(v28, qword_281446410);

  v29 = sub_2657F2334();
  v30 = sub_2657F2574();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v49 = v32;
    *v31 = 136380675;
    v33 = *(v7 + 208);
    if (v33)
    {
      v34 = *(v7 + 200);
      v35 = v33;
    }

    else
    {
      v39 = IDSCopyLocalDeviceUniqueID();
      if (v39)
      {
        v40 = v39;
        v34 = sub_2657F2484();
        v35 = v41;
      }

      else
      {
        v34 = 0xD000000000000017;
        v35 = 0x80000002657F8510;
      }
    }

    v43 = sub_2657B7F9C(v34, v35, &v49);

    *(v31 + 4) = v43;
    _os_log_impl(&dword_2657B5000, v29, v30, "(%{private}s) Will not handle message because sync is inactive", v31, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v32);
    MEMORY[0x266760A30](v32, -1, -1);
    MEMORY[0x266760A30](v31, -1, -1);
  }
}

void sub_2657DF400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v7 = v6;
  v614 = a4;
  v613 = a3;
  v576 = a2;
  v611 = type metadata accessor for RecordMetadata(0);
  v603 = *(v611 - 8);
  v11 = MEMORY[0x28223BE20](v611);
  v620 = &v557 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v610 = &v557 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v609 = &v557 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v600 = &v557 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v604 = &v557 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v621 = (&v557 - v22);
  v23 = MEMORY[0x28223BE20](v21);
  v608 = &v557 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v572 = &v557 - v26;
  MEMORY[0x28223BE20](v25);
  v571 = &v557 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v29 = MEMORY[0x28223BE20](v28 - 8);
  v574 = &v557 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v586 = &v557 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v561 = &v557 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v567 = (&v557 - v36);
  v37 = MEMORY[0x28223BE20](v35);
  v566 = (&v557 - v38);
  v39 = MEMORY[0x28223BE20](v37);
  v569 = &v557 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v573 = &v557 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v585 = &v557 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v587 = &v557 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v593 = &v557 - v48;
  MEMORY[0x28223BE20](v47);
  v618 = &v557 - v49;
  v564 = type metadata accessor for Record(0);
  v50 = *(v564 - 8);
  v51 = MEMORY[0x28223BE20](v564);
  v602 = (&v557 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = MEMORY[0x28223BE20](v51);
  v584 = &v557 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v582 = &v557 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v581 = &v557 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v563 = &v557 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v565 = &v557 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v562 = &v557 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v568 = &v557 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v570 = &v557 - v68;
  v69 = MEMORY[0x28223BE20](v67);
  v583 = &v557 - v70;
  v71 = MEMORY[0x28223BE20](v69);
  v596 = &v557 - v72;
  v73 = MEMORY[0x28223BE20](v71);
  v595 = &v557 - v74;
  v75 = MEMORY[0x28223BE20](v73);
  v589 = &v557 - v76;
  v77 = MEMORY[0x28223BE20](v75);
  v588 = &v557 - v78;
  MEMORY[0x28223BE20](v77);
  v80 = (&v557 - v79);
  v601 = sub_2657F22A4();
  v81 = *(v601 - 8);
  v82 = MEMORY[0x28223BE20](v601);
  v599 = &v557 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = MEMORY[0x28223BE20](v82);
  v612 = &v557 - v85;
  MEMORY[0x28223BE20](v84);
  v615 = &v557 - v86;
  v87 = sub_2657F2414();
  v88 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v90 = (&v557 - ((v89 + 15) & 0xFFFFFFFFFFFFFFF0));
  v578 = *a5;
  v577 = *a6;
  v91 = v7[15];
  *v90 = v91;
  (*(v88 + 104))(v90, *MEMORY[0x277D85200], v87);
  v92 = v91;
  LOBYTE(v91) = sub_2657F2434();
  (*(v88 + 8))(v90, v87);
  if ((v91 & 1) == 0)
  {
    __break(1u);
    goto LABEL_201;
  }

  if ((v7[2] & 1) == 0)
  {
    v93 = v7[8];
    v94 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v93);
    if (((*(v94 + 136))(v613, v614, v93, v94) & 1) == 0)
    {
      if (qword_281446408 == -1)
      {
LABEL_192:
        v546 = sub_2657F2344();
        __swift_project_value_buffer(v546, qword_281446410);

        v547 = sub_2657F2334();
        v548 = sub_2657F2574();

        if (os_log_type_enabled(v547, v548))
        {
          v549 = swift_slowAlloc();
          v550 = swift_slowAlloc();
          v624[0] = v550;
          *v549 = 136380675;
          if (v7[26])
          {
            v551 = v7[25];
            v552 = v7[26];
          }

          else
          {
            v553 = IDSCopyLocalDeviceUniqueID();
            if (v553)
            {
              v554 = v553;
              v551 = sub_2657F2484();
              v552 = v555;
            }

            else
            {
              v551 = 0xD000000000000017;
              v552 = 0x80000002657F8510;
            }
          }

          v556 = sub_2657B7F9C(v551, v552, v624);

          *(v549 + 4) = v556;
          _os_log_impl(&dword_2657B5000, v547, v548, "(%{private}s) Ignoring update from paired device that we have never synced with", v549, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v550);
          MEMORY[0x266760A30](v550, -1, -1);
          MEMORY[0x266760A30](v549, -1, -1);
        }

        return;
      }

LABEL_201:
      swift_once();
      goto LABEL_192;
    }
  }

  sub_2657F2284();
  v95 = v599;
  sub_2657F2284();
  sub_2657F2224();
  v96 = *(v81 + 8);
  v598 = v81 + 8;
  v597 = v96;
  v96(v95, v601);
  v97 = *(a1 + 16);
  v98 = &unk_2657F5000;
  v617 = v7;
  if (!v97)
  {
    v101 = MEMORY[0x277D84F90];
    v104 = v621;
LABEL_156:
    v459 = *(v576 + 16);
    if (!v459)
    {
LABEL_190:
      LOBYTE(v624[0]) = v577;
      LOBYTE(v623[0]) = v578;
      sub_2657E3DBC(v624, v101, v613, v614, v623);

      v544 = v601;
      v545 = v597;
      v597(v612, v601);
      v545(v615, v544);
      return;
    }

    v460 = v603;
    v461 = *(v603 + 80);
    v616 = v461;
    v462 = (v461 + 32) & ~v461;
    v463 = v98;
    v464 = v576 + v462;
    swift_beginAccess();
    v465 = *(v460 + 72);
    v602 = 0x80000002657F8510;
    v619 = v463[23];
    *(&v466 + 1) = *(&v619 + 1);
    *&v466 = 136381187;
    v606 = v466;
    v611 = v462;
    v608 = v465;
    while (1)
    {
      v618 = v459;
      v622 = v101;
      sub_2657EF7EC(v464, v104, type metadata accessor for RecordMetadata);
      v467 = v7[8];
      v468 = v7[9];
      __swift_project_boxed_opaque_existential_1(v7 + 5, v467);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
      v469 = v7;
      v470 = swift_allocObject();
      *(v470 + 16) = v619;
      sub_2657EF7EC(v104, v470 + v462, type metadata accessor for RecordMetadata);
      (*(v468 + 88))(v470, v467, v468);

      v471 = v469[8];
      v472 = v469[9];
      __swift_project_boxed_opaque_existential_1(v469 + 5, v471);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
      v473 = swift_allocObject();
      v474 = v104;
      v475 = v473;
      *(v473 + 16) = v619;
      v476 = v474[1];
      v478 = v474[2];
      v477 = v474[3];
      v475[4] = *v474;
      v475[5] = v476;
      v475[6] = v478;
      v475[7] = v477;
      v479 = *(v472 + 56);

      swift_bridgeObjectRetain_n();
      v479(v615, v475, v613, v614, v471, v472);

      v480 = v469[18];
      if (*(v480 + 16) && (, v481 = sub_2657C8374(v478, v477), v483 = v482, , v484 = v604, (v483 & 1) != 0))
      {
        v485 = *(*(v480 + 56) + 8 * v481);

        v486 = v621;
        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v487 = sub_2657F2344();
        __swift_project_value_buffer(v487, qword_281446410);
        sub_2657EF7EC(v486, v484, type metadata accessor for RecordMetadata);
        v488 = v600;
        sub_2657EF7EC(v486, v600, type metadata accessor for RecordMetadata);

        v489 = sub_2657F2334();
        v490 = sub_2657F2584();

        if (os_log_type_enabled(v489, v490))
        {
          LODWORD(v605) = v490;
          v491 = swift_slowAlloc();
          v603 = swift_slowAlloc();
          v623[0] = v603;
          *v491 = v606;
          if (v469[26])
          {
            v492 = v469[25];
            v493 = v469[26];
          }

          else
          {
            v508 = IDSCopyLocalDeviceUniqueID();
            if (v508)
            {
              v509 = v508;
              v492 = sub_2657F2484();
              v493 = v510;
            }

            else
            {
              v492 = 0xD000000000000017;
              v493 = v602;
            }
          }

          v522 = sub_2657B7F9C(v492, v493, v623);

          *(v491 + 4) = v522;
          *(v491 + 12) = 2082;
          v524 = *v484;
          v523 = v484[1];
          v525 = v484[2];
          v526 = v484[3];
          v624[0] = 0;
          v624[1] = 0xE000000000000000;

          sub_2657F2704();

          strcpy(v624, "identifier: ");
          BYTE5(v624[1]) = 0;
          HIWORD(v624[1]) = -5120;
          MEMORY[0x26675FFF0](v524, v523);
          MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x26675FFF0](v525, v526);
          v528 = v624[0];
          v527 = v624[1];
          sub_2657EF854(v484, type metadata accessor for RecordMetadata);

          v529 = sub_2657B7F9C(v528, v527, v623);

          *(v491 + 14) = v529;
          *(v491 + 22) = 2082;
          v530 = v600;
          v531 = *(v600 + 16);
          v532 = *(v600 + 24);

          sub_2657EF854(v530, type metadata accessor for RecordMetadata);
          v533 = sub_2657B7F9C(v531, v532, v623);

          *(v491 + 24) = v533;
          _os_log_impl(&dword_2657B5000, v489, v605, "(%{private}s) Sending deleted recordID %{public}s to data source for zone %{public}s", v491, 0x20u);
          v534 = v603;
          swift_arrayDestroy();
          MEMORY[0x266760A30](v534, -1, -1);
          MEMORY[0x266760A30](v491, -1, -1);

          v469 = v617;
          v486 = v621;
        }

        else
        {

          sub_2657EF854(v488, type metadata accessor for RecordMetadata);
          sub_2657EF854(v484, type metadata accessor for RecordMetadata);
        }

        v535 = *v486;
        v536 = v486[1];
        v537 = v486[2];
        v538 = v486[3];
        v626 = type metadata accessor for SyncEngine();
        v627 = &protocol witness table for SyncEngine;
        v624[0] = v469;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v539 = *(v485 + 24);
          ObjectType = swift_getObjectType();
          v623[0] = v535;
          v623[1] = v536;
          v623[2] = v537;
          v623[3] = v538;
          v541 = *(v539 + 24);

          v541(v624, v623, ObjectType, v539);
          swift_unknownObjectRelease();
        }

        else
        {
        }

        v101 = v622;
        v7 = v469;
        v462 = v611;
        __swift_destroy_boxed_opaque_existential_1(v624);
        v104 = v621;
        v504 = v618;
      }

      else
      {

        v494 = v610;
        v104 = v621;
        v495 = v609;
        if (qword_281446408 != -1)
        {
          swift_once();
        }

        v496 = sub_2657F2344();
        __swift_project_value_buffer(v496, qword_281446410);
        sub_2657EF7EC(v104, v495, type metadata accessor for RecordMetadata);
        sub_2657EF7EC(v104, v494, type metadata accessor for RecordMetadata);

        v497 = sub_2657F2334();
        v498 = sub_2657F2574();

        if (os_log_type_enabled(v497, v498))
        {
          v499 = swift_slowAlloc();
          v500 = swift_slowAlloc();
          v624[0] = v500;
          *v499 = v606;
          v501 = v469[26];
          v607 = v464;
          if (v501)
          {
            v502 = v469[25];
            v503 = v501;
          }

          else
          {
            v505 = IDSCopyLocalDeviceUniqueID();
            if (v505)
            {
              v506 = v505;
              v502 = sub_2657F2484();
              v503 = v507;
            }

            else
            {
              v502 = 0xD000000000000017;
              v503 = v602;
            }
          }

          v511 = sub_2657B7F9C(v502, v503, v624);

          *(v499 + 4) = v511;
          *(v499 + 12) = 2082;
          v512 = v609;
          v513 = RecordMetadata.description.getter();
          v515 = v514;
          sub_2657EF854(v512, type metadata accessor for RecordMetadata);
          v516 = sub_2657B7F9C(v513, v515, v624);

          *(v499 + 14) = v516;
          *(v499 + 22) = 2082;
          v517 = v610;
          v518 = *(v610 + 2);
          v519 = *(v610 + 3);

          sub_2657EF854(v517, type metadata accessor for RecordMetadata);
          v520 = sub_2657B7F9C(v518, v519, v624);

          *(v499 + 24) = v520;
          _os_log_impl(&dword_2657B5000, v497, v498, "(%{private}s) Could not find data source for incoming deleted metadata %{public}s for zone %{public}s", v499, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x266760A30](v500, -1, -1);
          MEMORY[0x266760A30](v499, -1, -1);

          v104 = v621;
          v101 = v622;
          v7 = v469;
          v504 = v618;
          v462 = v611;
          v521 = v608;
          v464 = v607;
          goto LABEL_185;
        }

        sub_2657EF854(v494, type metadata accessor for RecordMetadata);
        sub_2657EF854(v495, type metadata accessor for RecordMetadata);
        v101 = v622;
        v7 = v469;
        v504 = v618;
        v462 = v611;
      }

      v521 = v608;
LABEL_185:
      sub_2657EF7EC(v104, v620, type metadata accessor for RecordMetadata);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v101 = sub_2657CFDD8(0, v101[2] + 1, 1, v101);
      }

      v543 = v101[2];
      v542 = v101[3];
      if (v543 >= v542 >> 1)
      {
        v101 = sub_2657CFDD8((v542 > 1), v543 + 1, 1, v101);
      }

      sub_2657EF854(v104, type metadata accessor for RecordMetadata);
      v101[2] = v543 + 1;
      sub_2657F03E8(v620, v101 + v462 + v543 * v521, type metadata accessor for RecordMetadata);
      v464 += v521;
      v459 = v504 - 1;
      if (!v459)
      {
        goto LABEL_190;
      }
    }
  }

  v99 = v97;
  v559 = (*(v50 + 80) + 32) & ~*(v50 + 80);
  v100 = a1 + v559;
  swift_beginAccess();
  v575 = 0x80000002657F8510;
  *&v606 = v603 + 48;
  v594 = (v81 + 16);
  v607 = *(v50 + 72);
  v101 = MEMORY[0x277D84F90];
  *&v102 = 136381187;
  v592 = v102;
  v103 = v99;
  *(&v102 + 1) = 2;
  v580 = xmmword_2657F5170;
  *&v102 = 136380931;
  v591 = v102;
  v104 = v621;
  v605 = v80;
  while (1)
  {
    *&v619 = v100;
    sub_2657EF7EC(v100, v80, type metadata accessor for Record);
    v106 = v611;
    if ((sub_2657F2244() & 1) == 0)
    {
      v135 = v104;
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v136 = sub_2657F2344();
      __swift_project_value_buffer(v136, qword_281446410);
      v137 = v602;
      sub_2657EF7EC(v80, v602, type metadata accessor for Record);

      v138 = sub_2657F2334();
      v139 = sub_2657F2574();

      if (os_log_type_enabled(v138, v139))
      {
        v622 = v101;
        v140 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v623[0] = v141;
        *v140 = v591;
        v142 = v7[26];
        v616 = v103;
        if (v142)
        {
          v143 = v7[25];
          v144 = v142;
        }

        else
        {
          v170 = IDSCopyLocalDeviceUniqueID();
          if (v170)
          {
            v171 = v170;
            v143 = sub_2657F2484();
            v144 = v172;

            v137 = v602;
          }

          else
          {
            v143 = 0xD000000000000017;
            v144 = v575;
          }
        }

        v187 = sub_2657B7F9C(v143, v144, v623);

        *(v140 + 4) = v187;
        *(v140 + 12) = 2082;
        v189 = *v137;
        v188 = v137[1];
        v190 = v137;
        v192 = v137[2];
        v191 = v137[3];
        v624[0] = 0;
        v624[1] = 0xE000000000000000;

        sub_2657F2704();

        strcpy(v624, "identifier: ");
        BYTE5(v624[1]) = 0;
        HIWORD(v624[1]) = -5120;
        MEMORY[0x26675FFF0](v189, v188);
        MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x26675FFF0](v192, v191);
        v193 = v624[0];
        v194 = v624[1];
        sub_2657EF854(v190, type metadata accessor for Record);

        v195 = sub_2657B7F9C(v193, v194, v623);

        *(v140 + 14) = v195;
        _os_log_impl(&dword_2657B5000, v138, v139, "(%{private}s) Detected record from the future; dropping record %{public}s", v140, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266760A30](v141, -1, -1);
        MEMORY[0x266760A30](v140, -1, -1);

        v80 = v605;
        sub_2657EF854(v605, type metadata accessor for Record);
        v7 = v617;
        v104 = v621;
        v101 = v622;
        v98 = &unk_2657F5000;
        v103 = v616;
        v105 = v619;
      }

      else
      {

        sub_2657EF854(v137, type metadata accessor for Record);
        sub_2657EF854(v80, type metadata accessor for Record);
        v105 = v619;
        v104 = v135;
      }

      goto LABEL_7;
    }

    v616 = v103;
    v622 = v101;
    v107 = v7[8];
    v108 = v7[9];
    __swift_project_boxed_opaque_existential_1(v7 + 5, v107);
    v109 = v80[1];
    v110 = v80[2];
    v111 = v80[3];
    v624[0] = *v80;
    v624[1] = v109;
    v625 = v110;
    v626 = v111;
    v112 = *(v108 + 72);

    v113 = v618;
    v112(v624, v107, v108);
    v80 = v605;

    v114 = *v606;
    if ((*v606)(v113, 1, v106) == 1)
    {
LABEL_12:
      v120 = v617;
      v121 = v617[18];
      v122 = v621;
      if (*(v121 + 16))
      {

        v123 = sub_2657C8374(v110, v111);
        if (v124)
        {
          v590 = *(*(v121 + 56) + 8 * v123);

          if (qword_281446408 != -1)
          {
            swift_once();
          }

          v125 = sub_2657F2344();
          __swift_project_value_buffer(v125, qword_281446410);
          v126 = v588;
          sub_2657EF7EC(v80, v588, type metadata accessor for Record);
          v127 = v589;
          sub_2657EF7EC(v80, v589, type metadata accessor for Record);

          v128 = sub_2657F2334();
          v129 = sub_2657F2584();

          if (os_log_type_enabled(v128, v129))
          {
            v130 = swift_slowAlloc();
            v131 = swift_slowAlloc();
            v624[0] = v131;
            *v130 = v592;
            v132 = v120[26];
            v579 = v131;
            if (v132)
            {
              v133 = v120[25];
              v134 = v132;
            }

            else
            {
              v196 = IDSCopyLocalDeviceUniqueID();
              if (v196)
              {
                v197 = v196;
                v133 = sub_2657F2484();
                v134 = v198;
              }

              else
              {
                v133 = 0xD000000000000017;
                v134 = v575;
              }

              v120 = v617;
            }

            v221 = sub_2657B7F9C(v133, v134, v624);

            *(v130 + 4) = v221;
            *(v130 + 12) = 2082;
            v222 = v588;
            v223 = RecordMetadata.description.getter();
            v225 = v224;
            sub_2657EF854(v222, type metadata accessor for Record);
            v226 = sub_2657B7F9C(v223, v225, v624);

            *(v130 + 14) = v226;
            *(v130 + 22) = 2082;
            v227 = v589;
            v228 = *(v589 + 16);
            v229 = *(v589 + 24);

            sub_2657EF854(v227, type metadata accessor for Record);
            v230 = sub_2657B7F9C(v228, v229, v624);

            *(v130 + 24) = v230;
            _os_log_impl(&dword_2657B5000, v128, v129, "(%{private}s) Sending modified record %{public}s to data source for zone %{public}s", v130, 0x20u);
            v231 = v579;
            swift_arrayDestroy();
            MEMORY[0x266760A30](v231, -1, -1);
            MEMORY[0x266760A30](v130, -1, -1);
          }

          else
          {

            sub_2657EF854(v127, type metadata accessor for Record);
            sub_2657EF854(v126, type metadata accessor for Record);
          }

          v626 = type metadata accessor for SyncEngine();
          v627 = &protocol witness table for SyncEngine;
          v624[0] = v120;
          v232 = v590;
          Strong = swift_unknownObjectWeakLoadStrong();
          v104 = v621;
          v103 = v616;
          if (!Strong)
          {
            goto LABEL_131;
          }

          v234 = *(v232 + 24);
          v235 = swift_getObjectType();
          v236 = *(v234 + 16);

          LOBYTE(v234) = v236(v624, v80, v235, v234);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v624);
          if (v234)
          {
            v237 = v120[8];
            v238 = v120[9];
            __swift_project_boxed_opaque_existential_1(v120 + 5, v237);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
            v239 = (*(v603 + 80) + 32) & ~*(v603 + 80);
            v240 = swift_allocObject();
            *(v240 + 16) = v580;
            sub_2657EF7EC(v80, v240 + v239, type metadata accessor for RecordMetadata);
            (*(v238 + 88))(v240, v237, v238);

            v241 = v120[8];
            v242 = v120[9];
            __swift_project_boxed_opaque_existential_1(v120 + 5, v241);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
            v243 = swift_allocObject();
            *(v243 + 16) = v580;
            v244 = v80[1];
            v245 = v80[2];
            v246 = v80[3];
            *(v243 + 32) = *v80;
            *(v243 + 40) = v244;
            *(v243 + 48) = v245;
            *(v243 + 56) = v246;
            v247 = v104;
            v248 = *(v242 + 56);

            v248(v615, v243, v613, v614, v241, v242);
            v104 = v247;

            goto LABEL_118;
          }

LABEL_132:
          v410 = v120[8];
          v411 = v120[9];
          __swift_project_boxed_opaque_existential_1(v120 + 5, v410);
          v412 = v80[1];
          v413 = v80[2];
          v414 = v80[3];
          v624[0] = *v80;
          v624[1] = v412;
          v625 = v413;
          v626 = v414;
          v415 = *(v411 + 128);

          v415(v624, v410, v411);

          goto LABEL_133;
        }
      }

      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v161 = sub_2657F2344();
      __swift_project_value_buffer(v161, qword_281446410);
      v162 = v595;
      sub_2657EF7EC(v80, v595, type metadata accessor for Record);
      v163 = v596;
      sub_2657EF7EC(v80, v596, type metadata accessor for Record);

      v164 = sub_2657F2334();
      v165 = sub_2657F2574();

      if (os_log_type_enabled(v164, v165))
      {
        v166 = swift_slowAlloc();
        v167 = swift_slowAlloc();
        v624[0] = v167;
        *v166 = v592;
        if (v120[26])
        {
          v168 = v120[25];
          v169 = v120[26];
        }

        else
        {
          v184 = IDSCopyLocalDeviceUniqueID();
          if (v184)
          {
            v185 = v184;
            v168 = sub_2657F2484();
            v169 = v186;
          }

          else
          {
            v168 = 0xD000000000000017;
            v169 = v575;
          }

          v120 = v617;
        }

        v199 = sub_2657B7F9C(v168, v169, v624);

        *(v166 + 4) = v199;
        *(v166 + 12) = 2082;
        v200 = v595;
        v201 = RecordMetadata.description.getter();
        v203 = v202;
        sub_2657EF854(v200, type metadata accessor for Record);
        v204 = sub_2657B7F9C(v201, v203, v624);

        *(v166 + 14) = v204;
        *(v166 + 22) = 2082;
        v205 = v596;
        v206 = *(v596 + 16);
        v207 = *(v596 + 24);

        sub_2657EF854(v205, type metadata accessor for Record);
        v208 = sub_2657B7F9C(v206, v207, v624);

        *(v166 + 24) = v208;
        _os_log_impl(&dword_2657B5000, v164, v165, "(%{private}s) Could not find data source for incoming modified record %{public}s for zone %{public}s", v166, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266760A30](v167, -1, -1);
        MEMORY[0x266760A30](v166, -1, -1);

        goto LABEL_57;
      }

      sub_2657EF854(v163, type metadata accessor for Record);
      sub_2657EF854(v162, type metadata accessor for Record);
      v104 = v122;
LABEL_58:
      v209 = v120[8];
      v210 = v120[9];
      __swift_project_boxed_opaque_existential_1(v120 + 5, v209);
      v211 = v80[1];
      v212 = v80[2];
      v213 = v80[3];
      v624[0] = *v80;
      v624[1] = v211;
      v625 = v212;
      v626 = v213;
      v214 = *(v210 + 128);

      v214(v624, v209, v210);

      v101 = v622;
LABEL_59:
      v103 = v616;
      goto LABEL_134;
    }

    v115 = v593;
    sub_2657F04D4(v618, v593);
    if (v114(v115, 1, v106) == 1)
    {
      break;
    }

    v116 = *v594;
    v117 = v599;
    v118 = v601;
    (*v594)(v599, v115 + *(v106 + 20), v601);
    sub_2657EF854(v115, type metadata accessor for RecordMetadata);
    v119 = sub_2657F2244();
    v597(v117, v118);
    if (v119)
    {
      goto LABEL_12;
    }

    v145 = v587;
    sub_2657F04D4(v618, v587);
    if (v114(v145, 1, v106) == 1)
    {
      goto LABEL_203;
    }

    v146 = v599;
    v147 = v601;
    v116(v599, v145 + *(v106 + 20), v601);
    sub_2657EF854(v145, type metadata accessor for RecordMetadata);
    v148 = sub_2657F2234();
    v597(v146, v147);
    if (v148)
    {
      v149 = v585;
      v150 = v583;
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v151 = sub_2657F2344();
      v152 = __swift_project_value_buffer(v151, qword_281446410);
      sub_2657EF7EC(v80, v150, type metadata accessor for Record);
      sub_2657F04D4(v618, v149);
      v153 = v617;

      v154 = sub_2657F2334();
      v155 = sub_2657F2574();

      if (os_log_type_enabled(v154, v155))
      {
        LODWORD(v579) = v155;
        v156 = swift_slowAlloc();
        v157 = swift_slowAlloc();
        v624[0] = v157;
        *v156 = v592;
        v158 = v153[26];
        v590 = v152;
        v560 = v157;
        if (v158)
        {
          v159 = v153[25];
          v160 = v158;
        }

        else
        {
          v215 = IDSCopyLocalDeviceUniqueID();
          if (v215)
          {
            v216 = v215;
            v159 = sub_2657F2484();
            v160 = v217;
          }

          else
          {
            v159 = 0xD000000000000017;
            v160 = v575;
          }
        }

        v249 = sub_2657B7F9C(v159, v160, v624);

        *(v156 + 4) = v249;
        *(v156 + 12) = 2082;
        v250 = v583;
        v251 = RecordMetadata.description.getter();
        v253 = v252;
        sub_2657EF854(v250, type metadata accessor for Record);
        v254 = sub_2657B7F9C(v251, v253, v624);

        *(v156 + 14) = v254;
        *(v156 + 22) = 2082;
        v255 = v585;
        v256 = v573;
        sub_2657F04D4(v585, v573);
        if (v114(v256, 1, v611) == 1)
        {
          goto LABEL_205;
        }

        v257 = v571;
        sub_2657F03E8(v256, v571, type metadata accessor for RecordMetadata);
        v258 = RecordMetadata.description.getter();
        v260 = v259;
        sub_2657EF854(v257, type metadata accessor for RecordMetadata);
        sub_2657CC304(v255, &unk_280023C10, &qword_2657F4100);
        v261 = sub_2657B7F9C(v258, v260, v624);

        *(v156 + 24) = v261;
        _os_log_impl(&dword_2657B5000, v154, v579, "(%{private}s) Incoming modified record %{public}s has an older lastModified date than the existing record %{public}s", v156, 0x20u);
        v262 = v560;
        swift_arrayDestroy();
        MEMORY[0x266760A30](v262, -1, -1);
        MEMORY[0x266760A30](v156, -1, -1);

        v80 = v605;
        v152 = v590;
      }

      else
      {

        sub_2657CC304(v149, &unk_280023C10, &qword_2657F4100);
        sub_2657EF854(v150, type metadata accessor for Record);
      }

      v263 = v617[18];
      v264 = v582;
      v265 = v581;
      if (*(v263 + 16))
      {

        v266 = sub_2657C8374(v110, v111);
        if (v267)
        {
          v268 = *(*(v263 + 56) + 8 * v266);

          v269 = v569;
          sub_2657F04D4(v618, v569);
          v270 = v611;
          if (v114(v269, 1, v611) == 1)
          {
            goto LABEL_206;
          }

          v271 = *(v269 + *(v270 + 24));
          sub_2657EF854(v269, type metadata accessor for RecordMetadata);
          v272 = v570;
          if (v271 == 1)
          {
            sub_2657EF7EC(v80, v570, type metadata accessor for Record);
            v273 = v617;

            v274 = sub_2657F2334();
            v275 = sub_2657F2584();

            if (os_log_type_enabled(v274, v275))
            {
              v579 = v268;
              v276 = swift_slowAlloc();
              v277 = swift_slowAlloc();
              v624[0] = v277;
              *v276 = v591;
              v278 = v273[26];
              if (v278)
              {
                v279 = v273[25];
                v280 = v278;
              }

              else
              {
                v361 = IDSCopyLocalDeviceUniqueID();
                if (v361)
                {
                  v362 = v361;
                  v279 = sub_2657F2484();
                  v280 = v363;

                  v80 = v605;
                }

                else
                {
                  v279 = 0xD000000000000017;
                  v280 = v575;
                }
              }

              v365 = sub_2657B7F9C(v279, v280, v624);

              *(v276 + 4) = v365;
              *(v276 + 12) = 2082;
              v366 = v570;
              v367 = RecordMetadata.description.getter();
              v369 = v368;
              sub_2657EF854(v366, type metadata accessor for Record);
              v370 = sub_2657B7F9C(v367, v369, v624);

              *(v276 + 14) = v370;
              _os_log_impl(&dword_2657B5000, v274, v275, "(%{private}s) Resyncing local deletion for modified record %{public}s", v276, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x266760A30](v277, -1, -1);
              MEMORY[0x266760A30](v276, -1, -1);

              v104 = v621;
            }

            else
            {

              sub_2657EF854(v272, type metadata accessor for Record);
              v104 = v621;
            }

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
            v371 = swift_allocObject();
            *(v371 + 16) = v580;
            v372 = v566;
            sub_2657F04D4(v618, v566);
            v373 = v114(v372, 1, v611);
            v103 = v616;
            if (v373 == 1)
            {
              goto LABEL_208;
            }

            v374 = v372;
            v376 = *v372;
            v375 = v372[1];
            v378 = *(v374 + 16);
            v377 = *(v374 + 24);

            sub_2657EF854(v374, type metadata accessor for RecordMetadata);
            *(v371 + 32) = v376;
            *(v371 + 40) = v375;
            *(v371 + 48) = v378;
            *(v371 + 56) = v377;
            sub_2657B6C0C(MEMORY[0x277D84F90], v371);

LABEL_118:

LABEL_133:
            v101 = v622;
LABEL_134:
            v105 = v619;
            goto LABEL_135;
          }

          v590 = v152;
          v579 = v268;
          v287 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023960, &qword_2657F4330);
          inited = swift_initStackObject();
          *(inited + 16) = v580;
          v289 = v567;
          sub_2657F04D4(v618, v567);
          if (v114(v289, 1, v270) == 1)
          {
            goto LABEL_207;
          }

          v560 = v287;
          v291 = *v289;
          v290 = v289[1];
          v293 = v289[2];
          v292 = v289[3];

          sub_2657EF854(v289, type metadata accessor for RecordMetadata);
          *(inited + 32) = v291;
          *(inited + 40) = v290;
          *(inited + 48) = v293;
          *(inited + 56) = v292;
          v294 = v617;
          v295 = sub_2657E3448(inited);
          swift_setDeallocating();
          sub_2657F0544(inited + 32);
          if (v295[2])
          {
            v296 = v568;
            sub_2657EF7EC(v295 + v559, v568, type metadata accessor for Record);

            v297 = type metadata accessor for SyncEngine();
            v626 = v297;
            v627 = &protocol witness table for SyncEngine;
            v624[0] = v294;
            v298 = v579;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v299 = *(v298 + 24);
              v300 = swift_getObjectType();
              v301 = *(v299 + 40);

              v302 = v301(v624, v80, v296, v300, v299);
              v304 = v303;
              swift_unknownObjectRelease();
              v305 = v564;
            }

            else
            {
              v305 = v564;
              v339 = (v80 + *(v564 + 20));
              v302 = *v339;
              v304 = v339[1];

              sub_2657BB26C(v302, v304);
            }

            v340 = v565;
            __swift_destroy_boxed_opaque_existential_1(v624);
            v341 = (v80 + *(v305 + 20));
            v342 = *v341;
            v343 = v341[1];
            v557 = v304;
            v344 = sub_2657BE32C(v302, v304, v342, v343);
            v558 = v302;
            if (v344)
            {
              sub_2657EF7EC(v80, v340, type metadata accessor for Record);
              v345 = v617;

              v346 = sub_2657F2334();
              v347 = sub_2657F2584();

              if (os_log_type_enabled(v346, v347))
              {
                v348 = swift_slowAlloc();
                v349 = swift_slowAlloc();
                v624[0] = v349;
                *v348 = v591;
                v350 = v345[26];
                v103 = v616;
                v590 = v349;
                if (v350)
                {
                  v351 = v345[25];
                  v352 = v350;
                }

                else
                {
                  v382 = IDSCopyLocalDeviceUniqueID();
                  if (v382)
                  {
                    v383 = v382;
                    v351 = sub_2657F2484();
                    v352 = v384;

                    v340 = v565;
                  }

                  else
                  {
                    v351 = 0xD000000000000017;
                    v352 = v575;
                  }

                  v345 = v617;
                }

                v418 = sub_2657B7F9C(v351, v352, v624);

                *(v348 + 4) = v418;
                *(v348 + 12) = 2082;
                v419 = RecordMetadata.description.getter();
                v421 = v420;
                sub_2657EF854(v340, type metadata accessor for Record);
                v422 = sub_2657B7F9C(v419, v421, v624);

                *(v348 + 14) = v422;
                _os_log_impl(&dword_2657B5000, v346, v347, "(%{private}s) Resolved conflict to remote record; updating local record %{public}s", v348, 0x16u);
                v423 = v590;
                swift_arrayDestroy();
                MEMORY[0x266760A30](v423, -1, -1);
                MEMORY[0x266760A30](v348, -1, -1);
              }

              else
              {

                sub_2657EF854(v340, type metadata accessor for Record);
                v103 = v616;
              }

              v626 = v297;
              v627 = &protocol witness table for SyncEngine;
              v624[0] = v345;
              v424 = v579;
              v425 = swift_unknownObjectWeakLoadStrong();
              v104 = v621;
              if (v425)
              {
                v426 = *(v424 + 24);
                v427 = swift_getObjectType();
                v428 = *(v426 + 16);

                LOBYTE(v426) = v428(v624, v80, v427, v426);
                swift_unknownObjectRelease();
                __swift_destroy_boxed_opaque_existential_1(v624);
                if (v426)
                {
                  v429 = v345[8];
                  v430 = v345[9];
                  __swift_project_boxed_opaque_existential_1(v345 + 5, v429);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
                  v431 = (*(v603 + 80) + 32) & ~*(v603 + 80);
                  v432 = swift_allocObject();
                  *(v432 + 16) = v580;
                  sub_2657EF7EC(v80, v432 + v431, type metadata accessor for RecordMetadata);
                  (*(v430 + 88))(v432, v429, v430);

                  v433 = v345[8];
                  v434 = v345[9];
                  __swift_project_boxed_opaque_existential_1(v345 + 5, v433);
                  v435 = swift_allocObject();
                  *(v435 + 16) = v580;
                  v436 = v80[1];
                  v437 = v80[2];
                  v438 = v80[3];
                  *(v435 + 32) = *v80;
                  *(v435 + 40) = v436;
                  *(v435 + 48) = v437;
                  *(v435 + 56) = v438;
                  v439 = v104;
                  v440 = *(v434 + 56);

                  v440(v615, v435, v613, v614, v433, v434);
                  v104 = v439;
                  sub_2657BB314(v558, v557);

                  goto LABEL_148;
                }
              }

              else
              {

                __swift_destroy_boxed_opaque_existential_1(v624);
              }

              v441 = v345[8];
              v442 = v345[9];
              __swift_project_boxed_opaque_existential_1(v345 + 5, v441);
              v443 = v80[1];
              v444 = v80[2];
              v445 = v80[3];
              v624[0] = *v80;
              v624[1] = v443;
              v625 = v444;
              v626 = v445;
              v446 = *(v442 + 128);

              v446(v624, v441, v442);
              sub_2657BB314(v558, v557);

LABEL_148:
            }

            else
            {
              v353 = v562;
              sub_2657EF7EC(v80, v562, type metadata accessor for Record);
              v354 = v617;

              v355 = sub_2657F2334();
              v356 = sub_2657F2584();

              if (os_log_type_enabled(v355, v356))
              {
                v357 = swift_slowAlloc();
                v358 = swift_slowAlloc();
                v624[0] = v358;
                *v357 = v591;
                if (v354[26])
                {
                  v359 = v354[25];
                  v360 = v354[26];
                }

                else
                {
                  v385 = IDSCopyLocalDeviceUniqueID();
                  if (v385)
                  {
                    v386 = v385;
                    v359 = sub_2657F2484();
                    v360 = v387;

                    v353 = v562;
                  }

                  else
                  {
                    v359 = 0xD000000000000017;
                    v360 = v575;
                  }

                  v80 = v605;
                }

                v447 = sub_2657B7F9C(v359, v360, v624);

                *(v357 + 4) = v447;
                *(v357 + 12) = 2082;
                v448 = RecordMetadata.description.getter();
                v450 = v449;
                sub_2657EF854(v353, type metadata accessor for Record);
                v451 = sub_2657B7F9C(v448, v450, v624);

                *(v357 + 14) = v451;
                _os_log_impl(&dword_2657B5000, v355, v356, "(%{private}s) Resolved conflict to local record; resyncing modified record %{public}s", v357, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x266760A30](v358, -1, -1);
                MEMORY[0x266760A30](v357, -1, -1);

                v104 = v621;
                v364 = v561;
              }

              else
              {

                sub_2657EF854(v353, type metadata accessor for Record);
                v364 = v561;
                v104 = v621;
              }

              v452 = swift_allocObject();
              *(v452 + 16) = v580;
              sub_2657F04D4(v618, v364);
              v453 = v114(v364, 1, v611);
              v103 = v616;
              if (v453 == 1)
              {
                goto LABEL_209;
              }

              v454 = v364;
              v456 = *v364;
              v455 = v364[1];
              v458 = *(v454 + 16);
              v457 = *(v454 + 24);

              sub_2657EF854(v454, type metadata accessor for RecordMetadata);
              *(v452 + 32) = v456;
              *(v452 + 40) = v455;
              *(v452 + 48) = v458;
              *(v452 + 56) = v457;
              sub_2657B6C0C(v452, MEMORY[0x277D84F90]);

              sub_2657BB314(v558, v557);
            }

            sub_2657EF854(v568, type metadata accessor for Record);
            goto LABEL_133;
          }

          v322 = v563;
          sub_2657EF7EC(v80, v563, type metadata accessor for Record);

          v323 = sub_2657F2334();
          v324 = sub_2657F2584();

          v120 = v294;
          if (os_log_type_enabled(v323, v324))
          {
            v325 = swift_slowAlloc();
            v326 = swift_slowAlloc();
            v624[0] = v326;
            *v325 = v591;
            if (v120[26])
            {
              v327 = v120[25];
              v328 = v120[26];
            }

            else
            {
              v379 = IDSCopyLocalDeviceUniqueID();
              if (v379)
              {
                v380 = v379;
                v327 = sub_2657F2484();
                v328 = v381;

                v322 = v563;
              }

              else
              {
                v327 = 0xD000000000000017;
                v328 = v575;
              }

              v120 = v617;
            }

            v388 = sub_2657B7F9C(v327, v328, v624);

            *(v325 + 4) = v388;
            *(v325 + 12) = 2082;
            v389 = RecordMetadata.description.getter();
            v391 = v390;
            sub_2657EF854(v322, type metadata accessor for Record);
            v392 = sub_2657B7F9C(v389, v391, v624);

            *(v325 + 14) = v392;
            _os_log_impl(&dword_2657B5000, v323, v324, "(%{private}s) Resolved conflict to remote record because local record is missing; updating local record %{public}s", v325, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x266760A30](v326, -1, -1);
            MEMORY[0x266760A30](v325, -1, -1);
          }

          else
          {

            sub_2657EF854(v322, type metadata accessor for Record);
          }

          v104 = v621;
          v626 = type metadata accessor for SyncEngine();
          v627 = &protocol witness table for SyncEngine;
          v624[0] = v120;
          v393 = v579;
          v394 = swift_unknownObjectWeakLoadStrong();
          v103 = v616;
          if (v394)
          {
            v395 = *(v393 + 24);
            v396 = swift_getObjectType();
            v397 = *(v395 + 16);

            LOBYTE(v395) = v397(v624, v80, v396, v395);
            swift_unknownObjectRelease();
            __swift_destroy_boxed_opaque_existential_1(v624);
            if (v395)
            {
              v398 = v120[8];
              v399 = v120[9];
              __swift_project_boxed_opaque_existential_1(v120 + 5, v398);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023950, &qword_2657F4320);
              v400 = (*(v603 + 80) + 32) & ~*(v603 + 80);
              v401 = swift_allocObject();
              *(v401 + 16) = v580;
              sub_2657EF7EC(v80, v401 + v400, type metadata accessor for RecordMetadata);
              (*(v399 + 88))(v401, v398, v399);

              v402 = v120[8];
              v403 = v120[9];
              __swift_project_boxed_opaque_existential_1(v120 + 5, v402);
              v404 = swift_allocObject();
              *(v404 + 16) = v580;
              v405 = v80[1];
              v406 = v80[2];
              v407 = v80[3];
              *(v404 + 32) = *v80;
              *(v404 + 40) = v405;
              *(v404 + 48) = v406;
              *(v404 + 56) = v407;
              v408 = v104;
              v409 = *(v403 + 56);

              v409(v615, v404, v613, v614, v402, v403);
              v104 = v408;

              goto LABEL_118;
            }

            goto LABEL_132;
          }

LABEL_131:

          __swift_destroy_boxed_opaque_existential_1(v624);
          goto LABEL_132;
        }
      }

      sub_2657EF7EC(v80, v265, type metadata accessor for Record);
      sub_2657EF7EC(v80, v264, type metadata accessor for Record);
      v120 = v617;

      v281 = sub_2657F2334();
      v282 = sub_2657F2574();

      if (os_log_type_enabled(v281, v282))
      {
        v283 = swift_slowAlloc();
        v284 = swift_slowAlloc();
        v624[0] = v284;
        *v283 = v592;
        if (v120[26])
        {
          v285 = v120[25];
          v286 = v120[26];
        }

        else
        {
          v306 = IDSCopyLocalDeviceUniqueID();
          if (v306)
          {
            v307 = v306;
            v285 = sub_2657F2484();
            v286 = v308;
          }

          else
          {
            v285 = 0xD000000000000017;
            v286 = v575;
          }

          v120 = v617;
        }

        v329 = sub_2657B7F9C(v285, v286, v624);

        *(v283 + 4) = v329;
        *(v283 + 12) = 2082;
        v330 = v581;
        v331 = RecordMetadata.description.getter();
        v333 = v332;
        sub_2657EF854(v330, type metadata accessor for Record);
        v334 = sub_2657B7F9C(v331, v333, v624);

        *(v283 + 14) = v334;
        *(v283 + 22) = 2082;
        v335 = v582;
        v336 = *(v582 + 2);
        v337 = *(v582 + 3);

        sub_2657EF854(v335, type metadata accessor for Record);
        v338 = sub_2657B7F9C(v336, v337, v624);

        *(v283 + 24) = v338;
        _os_log_impl(&dword_2657B5000, v281, v282, "(%{private}s) Could not find data source for incoming modified record %{public}s for zone %{public}s", v283, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266760A30](v284, -1, -1);
        MEMORY[0x266760A30](v283, -1, -1);

LABEL_57:
        v104 = v621;
        v80 = v605;
      }

      else
      {

        sub_2657EF854(v264, type metadata accessor for Record);
        sub_2657EF854(v265, type metadata accessor for Record);
        v104 = v621;
      }

      goto LABEL_58;
    }

    v173 = v586;
    v174 = v584;
    v105 = v619;
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v175 = sub_2657F2344();
    __swift_project_value_buffer(v175, qword_281446410);
    sub_2657EF7EC(v80, v174, type metadata accessor for Record);
    sub_2657F04D4(v618, v173);
    v176 = v617;

    v177 = sub_2657F2334();
    v178 = sub_2657F2574();

    if (os_log_type_enabled(v177, v178))
    {
      v179 = swift_slowAlloc();
      v180 = swift_slowAlloc();
      v624[0] = v180;
      *v179 = v592;
      v181 = v176[26];
      if (v181)
      {
        v182 = v176[25];
        v183 = v181;
      }

      else
      {
        v218 = IDSCopyLocalDeviceUniqueID();
        if (v218)
        {
          v219 = v218;
          v182 = sub_2657F2484();
          v183 = v220;
        }

        else
        {
          v182 = 0xD000000000000017;
          v183 = v575;
        }
      }

      v309 = sub_2657B7F9C(v182, v183, v624);

      *(v179 + 4) = v309;
      *(v179 + 12) = 2082;
      v310 = v584;
      v311 = RecordMetadata.description.getter();
      v313 = v312;
      sub_2657EF854(v310, type metadata accessor for Record);
      v314 = sub_2657B7F9C(v311, v313, v624);

      *(v179 + 14) = v314;
      *(v179 + 22) = 2082;
      v315 = v586;
      v316 = v574;
      sub_2657F04D4(v586, v574);
      if (v114(v316, 1, v611) == 1)
      {
        goto LABEL_204;
      }

      v317 = v572;
      sub_2657F03E8(v316, v572, type metadata accessor for RecordMetadata);
      v318 = RecordMetadata.description.getter();
      v320 = v319;
      sub_2657EF854(v317, type metadata accessor for RecordMetadata);
      sub_2657CC304(v315, &unk_280023C10, &qword_2657F4100);
      v321 = sub_2657B7F9C(v318, v320, v624);

      *(v179 + 24) = v321;
      _os_log_impl(&dword_2657B5000, v177, v178, "(%{private}s) Incoming modified record %{public}s has an identical lastModified date to the existing record %{public}s", v179, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v180, -1, -1);
      MEMORY[0x266760A30](v179, -1, -1);

      v104 = v621;
      v101 = v622;
      v80 = v605;
      goto LABEL_59;
    }

    sub_2657CC304(v173, &unk_280023C10, &qword_2657F4100);
    sub_2657EF854(v174, type metadata accessor for Record);
    v104 = v621;
    v101 = v622;
    v103 = v616;
LABEL_135:
    sub_2657EF7EC(v80, v608, type metadata accessor for RecordMetadata);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v101 = sub_2657CFDD8(0, v101[2] + 1, 1, v101);
    }

    v7 = v617;
    v417 = v101[2];
    v416 = v101[3];
    if (v417 >= v416 >> 1)
    {
      v101 = sub_2657CFDD8((v416 > 1), v417 + 1, 1, v101);
    }

    v101[2] = v417 + 1;
    sub_2657F03E8(v608, v101 + ((*(v603 + 80) + 32) & ~*(v603 + 80)) + *(v603 + 72) * v417, type metadata accessor for RecordMetadata);
    sub_2657EF854(v80, type metadata accessor for Record);
    sub_2657CC304(v618, &unk_280023C10, &qword_2657F4100);
    v98 = &unk_2657F5000;
LABEL_7:
    v100 = v105 + v607;
    if (!--v103)
    {
      goto LABEL_156;
    }
  }

  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  __break(1u);
LABEL_208:
  __break(1u);
LABEL_209:
  __break(1u);
}

void *sub_2657E3448(uint64_t a1)
{
  v2 = v1;
  v67 = type metadata accessor for Record(0);
  v66 = *(v67 - 8);
  v4 = MEMORY[0x28223BE20](v67);
  v69 = &v64 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v68 = &v64 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v7 - 8);
  v77 = &v64 - v8;
  v76 = type metadata accessor for RecordMetadata(0);
  v9 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v78 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2657F2414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = v2[15];
  *v14 = v15;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v16 = v15;
  LOBYTE(v15) = sub_2657F2434();
  result = (*(v12 + 8))(v14, v11);
  if (v15)
  {
    v18 = *(a1 + 16);
    if (v18)
    {
      swift_beginAccess();
      v75 = (v9 + 48);
      v65 = 0x80000002657F8510;
      v19 = (a1 + 56);
      v71 = MEMORY[0x277D84F90];
      *&v20 = 136380931;
      v72 = v20;
      v70 = v2;
      while (1)
      {
        v22 = v18;
        v23 = *(v19 - 3);
        v24 = *(v19 - 2);
        v25 = *(v19 - 1);
        v26 = *v19;
        v81 = v19;
        v27 = v2[8];
        v28 = v2[9];
        __swift_project_boxed_opaque_existential_1(v2 + 5, v27);
        v79 = v23;
        v80 = v25;
        v83[0] = v23;
        v83[1] = v24;
        v83[2] = v25;
        v84 = v26;
        v29 = v2;
        v30 = *(v28 + 72);

        v31 = v77;
        v30(v83, v27, v28);
        if ((*v75)(v31, 1, v76) != 1)
        {
          break;
        }

        sub_2657CC304(v31, &unk_280023C10, &qword_2657F4100);
        v2 = v29;
        v21 = v22;
LABEL_5:
        v19 = v81 + 4;
        v18 = v21 - 1;
        if (!v18)
        {
          return v71;
        }
      }

      v32 = v26;
      sub_2657F03E8(v31, v78, type metadata accessor for RecordMetadata);
      v33 = v29[18];
      v2 = v29;
      v21 = v22;
      if (*(v33 + 16))
      {

        v34 = v80;
        v35 = sub_2657C8374(v80, v32);
        v36 = v24;
        if (v37)
        {
          v38 = *(*(v33 + 56) + 8 * v35);

          v84 = type metadata accessor for SyncEngine();
          v85 = &protocol witness table for SyncEngine;
          v83[0] = v2;
          if (swift_unknownObjectWeakLoadStrong())
          {
            v39 = *(v38 + 24);
            ObjectType = swift_getObjectType();
            v82[0] = v79;
            v82[1] = v24;
            v82[2] = v34;
            v82[3] = v32;
            v40 = v32;
            v41 = *(v39 + 8);

            v42 = v41(v83, v82, ObjectType, v39);
            v44 = v43;
            swift_unknownObjectRelease();

            __swift_destroy_boxed_opaque_existential_1(v83);
            if (v44 >> 60 != 15)
            {

              v55 = v68;
              sub_2657EF7EC(v78, v68, type metadata accessor for RecordMetadata);
              v56 = (v55 + *(v67 + 20));
              *v56 = v42;
              v56[1] = v44;
              sub_2657EF7EC(v55, v69, type metadata accessor for Record);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v71 = sub_2657CFDB0(0, v71[2] + 1, 1, v71);
              }

              v2 = v70;
              v58 = v71[2];
              v57 = v71[3];
              if (v58 >= v57 >> 1)
              {
                v71 = sub_2657CFDB0((v57 > 1), v58 + 1, 1, v71);
              }

              sub_2657EF854(v68, type metadata accessor for Record);
              sub_2657EF854(v78, type metadata accessor for RecordMetadata);
              v59 = v71;
              v71[2] = v58 + 1;
              sub_2657F03E8(v69, v59 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v58, type metadata accessor for Record);
              goto LABEL_5;
            }

            v2 = v70;
            goto LABEL_16;
          }

          __swift_destroy_boxed_opaque_existential_1(v83);
        }

        else
        {
        }

        v40 = v32;
      }

      else
      {
        v36 = v24;
        v40 = v26;
        v34 = v80;
      }

LABEL_16:
      if (qword_281446408 != -1)
      {
        swift_once();
      }

      v45 = sub_2657F2344();
      __swift_project_value_buffer(v45, qword_281446410);

      v46 = sub_2657F2334();
      v47 = sub_2657F2584();

      if (os_log_type_enabled(v46, v47))
      {
        LODWORD(ObjectType) = v47;
        v48 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v82[0] = v73;
        *v48 = v72;
        v49 = v2[26];
        v80 = v46;
        if (v49)
        {
          v50 = v2[25];
          v51 = v49;
        }

        else
        {
          v52 = IDSCopyLocalDeviceUniqueID();
          if (v52)
          {
            v53 = v52;
            v50 = sub_2657F2484();
            v51 = v54;
          }

          else
          {
            v50 = 0xD000000000000017;
            v51 = v65;
          }

          v2 = v70;
        }

        v60 = sub_2657B7F9C(v50, v51, v82);

        *(v48 + 4) = v60;
        *(v48 + 12) = 2082;
        v83[0] = 0;
        v83[1] = 0xE000000000000000;
        sub_2657F2704();

        strcpy(v83, "identifier: ");
        BYTE5(v83[1]) = 0;
        HIWORD(v83[1]) = -5120;
        MEMORY[0x26675FFF0](v79, v36);
        MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
        MEMORY[0x26675FFF0](v34, v40);

        v61 = sub_2657B7F9C(v83[0], v83[1], v82);

        *(v48 + 14) = v61;
        v62 = v80;
        _os_log_impl(&dword_2657B5000, v80, ObjectType, "(%{private}s) Data source failed to provide data for %{public}s", v48, 0x16u);
        v63 = v73;
        swift_arrayDestroy();
        MEMORY[0x266760A30](v63, -1, -1);
        MEMORY[0x266760A30](v48, -1, -1);
      }

      else
      {
      }

      sub_2657EF854(v78, type metadata accessor for RecordMetadata);
      goto LABEL_5;
    }

    return MEMORY[0x277D84F90];
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2657E3DBC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v6 = v5;
  v74 = a3;
  v11 = sub_2657F2414();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *a1;
  v16 = *a5;
  v17 = *(v6 + 120);
  *v14 = v17;
  (*(v12 + 104))(v14, *MEMORY[0x277D85200], v11);
  v18 = v17;
  LOBYTE(v17) = sub_2657F2434();
  (*(v12 + 8))(v14, v11);
  if ((v17 & 1) == 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v19 = *(v6 + 104);
  v20 = *(v6 + 112);
  __swift_project_boxed_opaque_existential_1((v6 + 80), v19);
  if (((*(v20 + 16))(v19, v20) & 1) == 0)
  {
    if (qword_281446408 == -1)
    {
LABEL_10:
      v29 = sub_2657F2344();
      __swift_project_value_buffer(v29, qword_281446410);

      v30 = sub_2657F2334();
      v31 = sub_2657F2584();

      if (!os_log_type_enabled(v30, v31))
      {
LABEL_39:

        return;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v79 = v33;
      *v32 = 136380675;
      v34 = *(v6 + 208);
      if (v34)
      {
        v35 = *(v6 + 200);
        v36 = v34;
      }

      else
      {
        v41 = IDSCopyLocalDeviceUniqueID();
        if (v41)
        {
          v42 = v41;
          v35 = sub_2657F2484();
          v36 = v43;
        }

        else
        {
          v35 = 0xD000000000000017;
          v36 = 0x80000002657F8510;
        }
      }

      v50 = sub_2657B7F9C(v35, v36, &v79);

      *(v32 + 4) = v50;
      v51 = "(%{private}s) Will not send ack message because keybag is locked";
LABEL_38:
      _os_log_impl(&dword_2657B5000, v30, v31, v51, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x266760A30](v33, -1, -1);
      MEMORY[0x266760A30](v32, -1, -1);
      goto LABEL_39;
    }

LABEL_41:
    swift_once();
    goto LABEL_10;
  }

  if ((~*(v6 + 248) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v37 = sub_2657F2344();
    __swift_project_value_buffer(v37, qword_281446410);

    v30 = sub_2657F2334();
    v31 = sub_2657F2584();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_39;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v79 = v33;
    *v32 = 136380675;
    v38 = *(v6 + 208);
    if (v38)
    {
      v39 = *(v6 + 200);
      v40 = v38;
    }

    else
    {
      v47 = IDSCopyLocalDeviceUniqueID();
      if (v47)
      {
        v48 = v47;
        v39 = sub_2657F2484();
        v40 = v49;
      }

      else
      {
        v39 = 0xD000000000000017;
        v40 = 0x80000002657F8510;
      }
    }

    v68 = sub_2657B7F9C(v39, v40, &v79);

    *(v32 + 4) = v68;
    v51 = "(%{private}s) Will not send ack message because sync is inactive";
    goto LABEL_38;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v21 = sub_2657F2344();
  v22 = __swift_project_value_buffer(v21, qword_281446410);
  swift_bridgeObjectRetain_n();

  v23 = sub_2657F2334();
  v24 = sub_2657F2584();

  if (os_log_type_enabled(v23, v24))
  {
    v71 = v24;
    v25 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v79 = v70;
    *v25 = 136381187;
    v26 = *(v6 + 208);
    v72 = v22;
    v73 = a4;
    if (v26)
    {
      v27 = *(v6 + 200);
      v28 = v26;
    }

    else
    {
      v44 = IDSCopyLocalDeviceUniqueID();
      if (v44)
      {
        v45 = v44;
        v27 = sub_2657F2484();
        v28 = v46;
      }

      else
      {
        v27 = 0xD000000000000017;
        v28 = 0x80000002657F8510;
      }
    }

    v52 = sub_2657B7F9C(v27, v28, &v79);

    *(v25 + 4) = v52;
    *(v25 + 12) = 2082;
    if (v15)
    {
      v53 = 0x6563616C706572;
    }

    else
    {
      v53 = 0x657461647075;
    }

    if (v15)
    {
      v54 = 0xE700000000000000;
    }

    else
    {
      v54 = 0xE600000000000000;
    }

    v55 = sub_2657B7F9C(v53, v54, &v79);

    *(v25 + 14) = v55;
    *(v25 + 22) = 2048;
    v56 = *(a2 + 16);

    *(v25 + 24) = v56;

    _os_log_impl(&dword_2657B5000, v23, v71, "(%{private}s) Sending ack message for action %{public}s with %ld metadata items", v25, 0x20u);
    v57 = v70;
    swift_arrayDestroy();
    MEMORY[0x266760A30](v57, -1, -1);
    MEMORY[0x266760A30](v25, -1, -1);

    a4 = v73;
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  v78 = v16;
  v75 = v15;
  v76 = a2;
  v77 = 2;

  sub_2657E8044(&v78, &v75, &v79);
  sub_2657D3E70(v75, v76, v77);
  v58 = v79;
  v59 = v80;
  v60 = v81;
  v61 = v82;
  v62 = v83;
  v63 = *(v6 + 32);
  ObjectType = swift_getObjectType();
  LOBYTE(v79) = v58;
  v80 = v59;
  v81 = v60;
  v82 = v61;
  v83 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2657F5170;
  *(inited + 32) = v74;
  *(inited + 40) = a4;

  v66 = sub_2657D00E8(inited);
  swift_setDeallocating();
  sub_2657EF8B4(inited + 32);
  v67 = *(v63 + 24);

  v67(&v79, v66, sub_2657F0598, v6, ObjectType, v63);

  sub_2657BB314(v61, v62);
}

void sub_2657E4628(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = v3;
  v8 = sub_2657F2414();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&ObjectType - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *a3;
  v13 = *(v4 + 120);
  *v11 = v13;
  (*(v9 + 104))(v11, *MEMORY[0x277D85200], v8);
  v14 = v13;
  LOBYTE(v13) = sub_2657F2434();
  (*(v9 + 8))(v11, v8);
  if ((v13 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v15 = *(v4 + 104);
  v16 = *(v4 + 112);
  __swift_project_boxed_opaque_existential_1((v4 + 80), v15);
  if ((*(v16 + 16))(v15, v16))
  {
    if ((~*(v4 + 248) & 3) == 0)
    {
      v50 = v12;
      v48 = xmmword_2657F5180;
      v49 = 3;
      sub_2657E8044(&v50, &v48, &v51);
      sub_2657D3E70(v48, *(&v48 + 1), v49);
      v29 = v51;
      v31 = v52;
      v30 = v53;
      v32 = v54;
      v33 = v55;
      v34 = *(v4 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v51) = v29;
      v52 = v31;
      v53 = v30;
      v54 = v32;
      v55 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2657F5170;
      *(inited + 32) = a1;
      *(inited + 40) = a2;

      v36 = sub_2657D00E8(inited);
      swift_setDeallocating();
      sub_2657EF8B4(inited + 32);
      v37 = *(v34 + 24);

      v37(&v51, v36, sub_2657F0450, v4, ObjectType, v34);

      sub_2657BB314(v32, v33);
      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v25 = sub_2657F2344();
    __swift_project_value_buffer(v25, qword_281446410);

    v18 = sub_2657F2334();
    v19 = sub_2657F2584();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 136380675;
      v26 = *(v4 + 208);
      if (v26)
      {
        v27 = *(v4 + 200);
        v28 = v26;
      }

      else
      {
        v41 = IDSCopyLocalDeviceUniqueID();
        if (v41)
        {
          v42 = v41;
          v27 = sub_2657F2484();
          v28 = v43;
        }

        else
        {
          v27 = 0xD000000000000017;
          v28 = 0x80000002657F8510;
        }
      }

      v46 = sub_2657B7F9C(v27, v28, &v51);

      *(v20 + 4) = v46;
      v45 = "(%{private}s) Will not send resync message because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v18, v19, v45, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x266760A30](v21, -1, -1);
      MEMORY[0x266760A30](v20, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v17 = sub_2657F2344();
  __swift_project_value_buffer(v17, qword_281446410);

  v18 = sub_2657F2334();
  v19 = sub_2657F2584();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v51 = v21;
    *v20 = 136380675;
    v22 = *(v4 + 208);
    if (v22)
    {
      v23 = *(v4 + 200);
      v24 = v22;
    }

    else
    {
      v38 = IDSCopyLocalDeviceUniqueID();
      if (v38)
      {
        v39 = v38;
        v23 = sub_2657F2484();
        v24 = v40;
      }

      else
      {
        v23 = 0xD000000000000017;
        v24 = 0x80000002657F8510;
      }
    }

    v44 = sub_2657B7F9C(v23, v24, &v51);

    *(v20 + 4) = v44;
    v45 = "(%{private}s) Will not send resync message because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t sub_2657E4CAC()
{
  v1 = v0;
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = v1[15];
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_2657F2434();
  (*(v3 + 8))(v5, v2);
  if (v6)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = sub_2657F2344();
  __swift_project_value_buffer(v8, qword_281446410);

  v9 = sub_2657F2334();
  v10 = sub_2657F2584();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v22[0] = v12;
    *v11 = 136380675;
    if (v1[26])
    {
      v13 = v1[25];
      v14 = v1[26];
    }

    else
    {
      v15 = IDSCopyLocalDeviceUniqueID();
      if (v15)
      {
        v16 = v15;
        v13 = sub_2657F2484();
        v14 = v17;
      }

      else
      {
        v14 = 0x80000002657F8510;
        v13 = 0xD000000000000017;
      }
    }

    v18 = sub_2657B7F9C(v13, v14, v22);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2657B5000, v9, v10, "(%{private}s) Removing all inflight metadata", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x266760A30](v12, -1, -1);
    MEMORY[0x266760A30](v11, -1, -1);
  }

  v1[23] = MEMORY[0x277D84FA0];

  swift_beginAccess();
  v19 = MEMORY[0x277D84F98];
  v1[21] = MEMORY[0x277D84F98];

  swift_beginAccess();
  v1[22] = v19;
}

void sub_2657E4F94()
{
  v1 = v0;
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = v1[15];
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  LOBYTE(v6) = sub_2657F2434();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
LABEL_15:
    swift_once();
    goto LABEL_4;
  }

  if (!v1[19])
  {
    return;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_15;
  }

LABEL_4:
  v8 = sub_2657F2344();
  __swift_project_value_buffer(v8, qword_281446410);

  v9 = sub_2657F2334();
  v10 = sub_2657F2584();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v20 = v12;
    *v11 = 136380675;
    if (v1[26])
    {
      v13 = v1[25];
      v14 = v1[26];
    }

    else
    {
      v15 = IDSCopyLocalDeviceUniqueID();
      if (v15)
      {
        v16 = v15;
        v13 = sub_2657F2484();
        v14 = v17;
      }

      else
      {
        v14 = 0x80000002657F8510;
        v13 = 0xD000000000000017;
      }
    }

    v18 = sub_2657B7F9C(v13, v14, &v20);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_2657B5000, v9, v10, "(%{private}s) Cancelling expiration timer", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x266760A30](v12, -1, -1);
    MEMORY[0x266760A30](v11, -1, -1);
  }

  if (v1[19])
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_2657F2624();
    swift_unknownObjectRelease();
    v1[19] = 0;
    swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }
}

char *sub_2657E526C(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2657CFFDC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 3) >> 1) - *(v3 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 2);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 2) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void sub_2657E5360(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 *a5)
{
  v6 = v5;
  v272 = a4;
  v271 = a3;
  v295 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v255 - v10;
  v269 = sub_2657F22D4();
  v268 = *(v269 - 8);
  MEMORY[0x28223BE20](v269);
  v264 = &v255 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v13 - 8);
  v278 = &v255 - v14;
  v294 = type metadata accessor for RecordMetadata(0);
  v279 = *(v294 - 8);
  v15 = MEMORY[0x28223BE20](v294);
  v285 = &v255 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v296 = &v255 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v293 = (&v255 - v20);
  v21 = MEMORY[0x28223BE20](v19);
  v277 = (&v255 - v22);
  MEMORY[0x28223BE20](v21);
  v276 = &v255 - v23;
  v24 = type metadata accessor for Record(0);
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v255 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2657F2414();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = (&v255 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = *a5;
  v33 = *(v6 + 15);
  *v31 = v33;
  v34 = *(v29 + 104);
  v266 = *MEMORY[0x277D85200];
  v267 = v29 + 104;
  v265 = v34;
  v34(v31);
  v262 = v33;
  LOBYTE(v33) = sub_2657F2434();
  v36 = *(v29 + 8);
  v35 = v29 + 8;
  v270 = v31;
  v263 = v36;
  v36(v31, v28);
  if ((v33 & 1) == 0)
  {
    __break(1u);
    goto LABEL_144;
  }

  v260 = v35;
  v261 = v28;
  v37 = *(v6 + 13);
  v38 = *(v6 + 14);
  __swift_project_boxed_opaque_existential_1(v6 + 10, v37);
  if (((*(v38 + 16))(v37, v38) & 1) == 0)
  {
    v27 = v6;
    if (qword_281446408 == -1)
    {
LABEL_10:
      v49 = sub_2657F2344();
      __swift_project_value_buffer(v49, qword_281446410);

      v50 = sub_2657F2334();
      v51 = sub_2657F2584();

      if (!os_log_type_enabled(v50, v51))
      {
LABEL_129:

        return;
      }

      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v297[0] = v53;
      *v52 = 136380675;
      v54 = *(v27 + 26);
      if (v54)
      {
        v55 = *(v27 + 25);
        v56 = v54;
      }

      else
      {
        v60 = IDSCopyLocalDeviceUniqueID();
        if (v60)
        {
          v61 = v60;
          v55 = sub_2657F2484();
          v56 = v62;
        }

        else
        {
          v55 = 0xD000000000000017;
          v56 = 0x80000002657F8510;
        }
      }

      v69 = sub_2657B7F9C(v55, v56, v297);

      *(v52 + 4) = v69;
      v70 = "(%{private}s) Will not send records because keybag is locked";
LABEL_100:
      _os_log_impl(&dword_2657B5000, v50, v51, v70, v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v53);
      MEMORY[0x266760A30](v53, -1, -1);
      MEMORY[0x266760A30](v52, -1, -1);
      goto LABEL_129;
    }

LABEL_144:
    swift_once();
    goto LABEL_10;
  }

  ObjectType = v25;
  v39 = v6;
  if ((~*(v6 + 62) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v57 = sub_2657F2344();
    __swift_project_value_buffer(v57, qword_281446410);

    v50 = sub_2657F2334();
    v51 = sub_2657F2584();

    if (!os_log_type_enabled(v50, v51))
    {
      goto LABEL_129;
    }

    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v297[0] = v53;
    *v52 = 136380675;
    if (v39[26])
    {
      v58 = v39[25];
      v59 = v39[26];
    }

    else
    {
      v66 = IDSCopyLocalDeviceUniqueID();
      if (v66)
      {
        v67 = v66;
        v58 = sub_2657F2484();
        v59 = v68;
      }

      else
      {
        v58 = 0xD000000000000017;
        v59 = 0x80000002657F8510;
      }
    }

    v192 = sub_2657B7F9C(v58, v59, v297);

    *(v52 + 4) = v192;
    v70 = "(%{private}s) Will not send records because sync is inactive";
    goto LABEL_100;
  }

  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v255 = v11;
  v40 = sub_2657F2344();
  v41 = __swift_project_value_buffer(v40, qword_281446410);
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();

  v275 = v41;
  v42 = sub_2657F2334();
  v43 = sub_2657F2584();

  v44 = os_log_type_enabled(v42, v43);
  v274 = v6;
  v45 = v277;
  v257 = v32;
  if (v44)
  {
    v46 = swift_slowAlloc();
    v291 = swift_slowAlloc();
    v297[0] = v291;
    *v46 = 136381187;
    if (*(v6 + 26))
    {
      v47 = *(v6 + 25);
      v48 = *(v6 + 26);
    }

    else
    {
      v63 = IDSCopyLocalDeviceUniqueID();
      if (v63)
      {
        v64 = v63;
        v47 = sub_2657F2484();
        v48 = v65;
      }

      else
      {
        v47 = 0xD000000000000017;
        v48 = 0x80000002657F8510;
      }

      v39 = v274;
    }

    v71 = sub_2657B7F9C(v47, v48, v297);

    *(v46 + 4) = v71;
    *(v46 + 12) = 2050;
    v72 = *(a1 + 16);

    *(v46 + 14) = v72;

    *(v46 + 22) = 2050;
    v73 = *(v295 + 16);

    *(v46 + 24) = v73;

    _os_log_impl(&dword_2657B5000, v42, v43, "(%{private}s) Sending %{public}ld modified records and %{public}ld deleted records", v46, 0x20u);
    v74 = v291;
    __swift_destroy_boxed_opaque_existential_1(v291);
    MEMORY[0x266760A30](v74, -1, -1);
    MEMORY[0x266760A30](v46, -1, -1);

    v45 = v277;
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  v75 = swift_allocObject();
  v258 = v75;
  *(v75 + 16) = MEMORY[0x277D84FA0];
  v76 = v75 + 16;
  v77 = sub_2657E3448(a1);
  v78 = sub_2657E7728(v77);

  v259 = v78;
  v80 = v78[2];
  v81 = v276;
  if (v80)
  {
    v82 = v259 + ((*(ObjectType + 80) + 32) & ~*(ObjectType + 80));
    v83 = *(ObjectType + 72);
    do
    {
      sub_2657EF7EC(v82, v27, type metadata accessor for Record);
      sub_2657EF7EC(v27, v45, type metadata accessor for RecordMetadata);
      sub_2657EF854(v27, type metadata accessor for Record);
      sub_2657C62B8(v81, v45);
      sub_2657EF854(v81, type metadata accessor for RecordMetadata);
      v82 += v83;
      --v80;
    }

    while (v80);
  }

  v84 = *(v295 + 16);
  v289 = v76;
  v284 = v84;
  if (v84)
  {
    v85 = 0;
    v283 = v295 + 32;
    v282 = (v279 + 48);
    v288 = MEMORY[0x277D84F90];
    v256 = 0x80000002657F8510;
    *&v79 = 136380931;
    v273 = v79;
    v86 = v278;
    v87 = v293;
    v88 = v39;
    while (1)
    {
      v291 = v85;
      v91 = (v283 + 32 * v85);
      v92 = *v91;
      v93 = v91[1];
      v94 = v91[2];
      v95 = v91[3];
      v96 = v88[8];
      v97 = v88[9];
      __swift_project_boxed_opaque_existential_1(v88 + 5, v96);
      v286 = v92;
      v297[0] = v92;
      v297[1] = v93;
      v287 = v94;
      v298 = v94;
      v299 = v95;
      v98 = v88;
      v99 = *(v97 + 72);

      v99(v297, v96, v97);
      if ((*v282)(v86, 1, v294) == 1)
      {
        sub_2657CC304(v86, &unk_280023C10, &qword_2657F4100);

        v100 = sub_2657F2334();
        v101 = sub_2657F2584();

        v102 = v93;
        v88 = v98;
        if (os_log_type_enabled(v100, v101))
        {
          v103 = v98;
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v301 = v105;
          *v104 = v273;
          if (v98[26])
          {
            v106 = v98[25];
            v107 = v103[26];
          }

          else
          {
            v146 = IDSCopyLocalDeviceUniqueID();
            if (v146)
            {
              v147 = v146;
              v106 = sub_2657F2484();
              v107 = v148;
            }

            else
            {
              v106 = 0xD000000000000017;
              v107 = v256;
            }
          }

          v149 = sub_2657B7F9C(v106, v107, &v301);

          *(v104 + 4) = v149;
          *(v104 + 12) = 2082;
          v297[0] = 0;
          v297[1] = 0xE000000000000000;
          sub_2657F2704();

          strcpy(v297, "identifier: ");
          BYTE5(v297[1]) = 0;
          HIWORD(v297[1]) = -5120;
          MEMORY[0x26675FFF0](v286, v102);
          MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
          MEMORY[0x26675FFF0](v287, v95);

          v150 = sub_2657B7F9C(v297[0], v297[1], &v301);

          *(v104 + 14) = v150;
          _os_log_impl(&dword_2657B5000, v100, v101, "(%{private}s) Metadata store does not contain an entry for deleted record %{public}s", v104, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x266760A30](v105, -1, -1);
          MEMORY[0x266760A30](v104, -1, -1);

          v90 = v289;
          v86 = v278;
          v87 = v293;
          v89 = v291;
          v88 = v274;
        }

        else
        {

          v87 = v293;
          v89 = v291;
          v90 = v289;
        }

        goto LABEL_36;
      }

      v281 = v95;
      v280 = v93;
      v108 = v289;
      sub_2657F03E8(v86, v87, type metadata accessor for RecordMetadata);
      v109 = v87;
      v110 = v98[23];
      v88 = v98;
      v111 = v288;
      if (!*(v110 + 16))
      {
        goto LABEL_62;
      }

      sub_2657F28D4();
      v112 = *v109;
      v113 = v109[1];
      v114 = v109[2];
      v115 = v109[3];

      sub_2657F24C4();
      v295 = v114;
      v116 = v115;
      sub_2657F24C4();
      v117 = v294;
      v118 = *(v294 + 20);
      sub_2657F22A4();
      sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      ObjectType = v118;
      sub_2657F2464();
      v290 = *(v109 + *(v117 + 24));
      sub_2657F28F4();
      v119 = sub_2657F2904();
      v120 = -1 << *(v110 + 32);
      v121 = v119 & ~v120;
      if (((*(v110 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
      {
LABEL_61:

        v88 = v274;
        v108 = v289;
        v111 = v288;
        v86 = v278;
        v109 = v293;
LABEL_62:

        sub_2657EF7EC(v109, v285, type metadata accessor for RecordMetadata);
        v87 = v109;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v111 = sub_2657CFDD8(0, v111[2] + 1, 1, v111);
        }

        v141 = v276;
        v90 = v108;
        v143 = v111[2];
        v142 = v111[3];
        if (v143 >= v142 >> 1)
        {
          v111 = sub_2657CFDD8((v142 > 1), v143 + 1, 1, v111);
        }

        v111[2] = v143 + 1;
        v144 = (*(v279 + 80) + 32) & ~*(v279 + 80);
        v288 = v111;
        sub_2657F03E8(v285, v111 + v144 + *(v279 + 72) * v143, type metadata accessor for RecordMetadata);
        v145 = v277;
        sub_2657EF7EC(v87, v277, type metadata accessor for RecordMetadata);
        sub_2657C62B8(v141, v145);
        sub_2657EF854(v141, type metadata accessor for RecordMetadata);
        sub_2657EF854(v87, type metadata accessor for RecordMetadata);
LABEL_67:
        v89 = v291;
        goto LABEL_36;
      }

      v122 = ~v120;
      v123 = *(v279 + 72);
      while (1)
      {
        v124 = v296;
        sub_2657EF7EC(*(v110 + 48) + v123 * v121, v296, type metadata accessor for RecordMetadata);
        v125 = *v124;
        v126 = v124[1];
        v127 = v124[2];
        v128 = v124[3];
        v129 = v125 == v112 && v126 == v113;
        if (v129 || (sub_2657F2864() & 1) != 0)
        {
          v130 = v127 == v295 && v128 == v116;
          if (v130 || (sub_2657F2864()) && (sub_2657F2274())
          {
            break;
          }
        }

        sub_2657EF854(v296, type metadata accessor for RecordMetadata);
LABEL_45:
        v121 = (v121 + 1) & v122;
        if (((*(v110 + 56 + ((v121 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v121) & 1) == 0)
        {
          goto LABEL_61;
        }
      }

      v131 = *(v296 + *(v294 + 24));
      sub_2657EF854(v296, type metadata accessor for RecordMetadata);
      if (v290 != v131)
      {
        goto LABEL_45;
      }

      v88 = v274;

      v132 = v280;

      v133 = sub_2657F2334();
      v134 = sub_2657F2584();

      if (!os_log_type_enabled(v133, v134))
      {

        v87 = v293;
        sub_2657EF854(v293, type metadata accessor for RecordMetadata);
        v90 = v289;
        v86 = v278;
        goto LABEL_67;
      }

      v135 = v88;
      v136 = swift_slowAlloc();
      v137 = swift_slowAlloc();
      v301 = v137;
      *v136 = v273;
      if (v135[26])
      {
        v138 = v135;
        v139 = v135[25];
        v140 = v135[26];
      }

      else
      {
        v138 = v135;
        v151 = IDSCopyLocalDeviceUniqueID();
        if (v151)
        {
          v152 = v151;
          v139 = sub_2657F2484();
          v140 = v153;
        }

        else
        {
          v139 = 0xD000000000000017;
          v140 = v256;
        }
      }

      v154 = sub_2657B7F9C(v139, v140, &v301);

      *(v136 + 4) = v154;
      *(v136 + 12) = 2082;
      v297[0] = 0;
      v297[1] = 0xE000000000000000;
      sub_2657F2704();

      strcpy(v297, "identifier: ");
      BYTE5(v297[1]) = 0;
      HIWORD(v297[1]) = -5120;
      MEMORY[0x26675FFF0](v286, v132);
      MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
      MEMORY[0x26675FFF0](v287, v281);

      v155 = sub_2657B7F9C(v297[0], v297[1], &v301);

      *(v136 + 14) = v155;
      _os_log_impl(&dword_2657B5000, v133, v134, "(%{private}s) Metadata for deleted record %{public}s is already syncing", v136, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v137, -1, -1);
      MEMORY[0x266760A30](v136, -1, -1);

      v87 = v293;
      sub_2657EF854(v293, type metadata accessor for RecordMetadata);
      v90 = v289;
      v86 = v278;
      v89 = v291;
      v88 = v138;
LABEL_36:
      v85 = (v89 + 1);
      if (v85 == v284)
      {
        goto LABEL_78;
      }
    }
  }

  v90 = v76;
  v288 = MEMORY[0x277D84F90];
  v88 = v39;
LABEL_78:
  if (!*(*v90 + 16))
  {

    v50 = sub_2657F2334();
    v166 = sub_2657F2584();

    if (os_log_type_enabled(v50, v166))
    {
      v167 = swift_slowAlloc();
      v168 = swift_slowAlloc();
      v297[0] = v168;
      *v167 = 136380675;
      v169 = v88[26];
      if (v169)
      {
        v170 = v88[25];
        v171 = v169;
      }

      else
      {
        v193 = IDSCopyLocalDeviceUniqueID();
        if (v193)
        {
          v194 = v193;
          v170 = sub_2657F2484();
          v171 = v195;
        }

        else
        {
          v170 = 0xD000000000000017;
          v171 = 0x80000002657F8510;
        }
      }

      v205 = sub_2657B7F9C(v170, v171, v297);

      *(v167 + 4) = v205;
      _os_log_impl(&dword_2657B5000, v50, v166, "(%{private}s) Update message is empty; will not send", v167, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v168);
      MEMORY[0x266760A30](v168, -1, -1);
      MEMORY[0x266760A30](v167, -1, -1);
    }

    goto LABEL_129;
  }

  v156 = v259;
  swift_bridgeObjectRetain_n();
  v157 = v288;
  swift_bridgeObjectRetain_n();

  v158 = sub_2657F2334();
  v159 = sub_2657F2584();

  if (os_log_type_enabled(v158, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v297[0] = v161;
    *v160 = 136381187;
    v162 = v88[26];
    if (v162)
    {
      v163 = v88;
      v164 = v88[25];
      v165 = v162;
    }

    else
    {
      v163 = v88;
      v188 = IDSCopyLocalDeviceUniqueID();
      if (v188)
      {
        v189 = v188;
        v164 = sub_2657F2484();
        v165 = v190;
      }

      else
      {
        v164 = 0xD000000000000017;
        v165 = 0x80000002657F8510;
      }
    }

    v157 = v288;

    v196 = sub_2657B7F9C(v164, v165, v297);

    *(v160 + 4) = v196;
    *(v160 + 12) = 2050;
    v156 = v259;
    v197 = v259[2];

    *(v160 + 14) = v197;

    *(v160 + 22) = 2050;
    v198 = *(v157 + 16);

    *(v160 + 24) = v198;

    _os_log_impl(&dword_2657B5000, v158, v159, "(%{private}s) Syncing %{public}ld modifications and %{public}ld deletions", v160, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x266760A30](v161, -1, -1);
    MEMORY[0x266760A30](v160, -1, -1);

    v88 = v163;
    if (v163[2])
    {
      goto LABEL_105;
    }
  }

  else
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (v88[2])
    {
LABEL_105:
      v191 = 0;
      goto LABEL_119;
    }
  }

  v172 = v88[8];
  v173 = v88[9];
  __swift_project_boxed_opaque_existential_1(v88 + 5, v172);
  LOBYTE(v172) = (*(v173 + 136))(v271, v272, v172, v173);

  v174 = sub_2657F2334();
  v175 = sub_2657F2584();

  v176 = os_log_type_enabled(v174, v175);
  if (v172)
  {
    if (v176)
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v297[0] = v178;
      *v177 = 136380675;
      v179 = v88[26];
      if (v179)
      {
        v180 = v88;
        v181 = v88[25];
        v182 = v179;
      }

      else
      {
        v180 = v88;
        v288 = v157;
        v199 = IDSCopyLocalDeviceUniqueID();
        if (v199)
        {
          v200 = v199;
          v181 = sub_2657F2484();
          v182 = v201;
        }

        else
        {
          v181 = 0xD000000000000017;
          v182 = 0x80000002657F8510;
        }

        v157 = v288;
      }

      v206 = sub_2657B7F9C(v181, v182, v297);

      *(v177 + 4) = v206;
      _os_log_impl(&dword_2657B5000, v174, v175, "(%{private}s) Paired device has synced before; sending as update", v177, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v178);
      MEMORY[0x266760A30](v178, -1, -1);
      MEMORY[0x266760A30](v177, -1, -1);

      v191 = 0;
LABEL_118:
      v156 = v259;
      v88 = v180;
      goto LABEL_119;
    }

    v191 = 0;
  }

  else
  {
    if (v176)
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v297[0] = v184;
      *v183 = 136380675;
      v185 = v88[26];
      if (v185)
      {
        v180 = v88;
        v186 = v88[25];
        v187 = v185;
      }

      else
      {
        v180 = v88;
        v288 = v157;
        v202 = IDSCopyLocalDeviceUniqueID();
        if (v202)
        {
          v203 = v202;
          v186 = sub_2657F2484();
          v187 = v204;
        }

        else
        {
          v186 = 0xD000000000000017;
          v187 = 0x80000002657F8510;
        }

        v157 = v288;
      }

      v207 = sub_2657B7F9C(v186, v187, v297);

      *(v183 + 4) = v207;
      _os_log_impl(&dword_2657B5000, v174, v175, "(%{private}s) Paired device has never synced; sending as replace", v183, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v184);
      MEMORY[0x266760A30](v184, -1, -1);
      MEMORY[0x266760A30](v183, -1, -1);

      v191 = 1;
      goto LABEL_118;
    }

    v191 = 1;
  }

  v156 = v259;
LABEL_119:
  v304 = v257;
  v301 = v156;
  v302 = v157;
  v303 = v191;
  sub_2657E8044(&v304, &v301, v297);
  sub_2657D3E70(v301, v302, v303);
  LODWORD(v208) = LOBYTE(v297[0]);
  v209 = v297[1];
  v294 = v298;
  v295 = v299;
  v296 = v300;
  v210 = v264;
  sub_2657F22C4();
  v211 = sub_2657F22B4();
  v213 = v212;
  (*(v268 + 8))(v210, v269);
  v214 = *v90;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v301 = v88[21];
  v88[21] = 0x8000000000000000;
  sub_2657C97D0(v214, v211, v213, isUniquelyReferenced_nonNull_native);

  v88[21] = v301;
  swift_endAccess();

  v216 = v255;
  sub_2657F2284();
  v217 = sub_2657F22A4();
  (*(*(v217 - 8) + 56))(v216, 0, 1, v217);
  swift_beginAccess();
  sub_2657C163C(v216, v211, v213);
  swift_endAccess();
  v218 = v88[23];

  v88[23] = sub_2657D5518(v219, v218);

  v220 = v270;
  v221 = v262;
  *v270 = v262;
  v222 = v261;
  v265(v220, v266, v261);
  v223 = v221;
  v224 = sub_2657F2434();
  v263(v220, v222);
  if (v224)
  {
    sub_2657E4F94();
    sub_2657EA2F0();
    swift_retain_n();
    swift_retain_n();
    v225 = sub_2657F2334();
    v226 = sub_2657F2584();
    v227 = os_log_type_enabled(v225, v226);
    v293 = v209;
    if (v227)
    {
      LODWORD(ObjectType) = v208;
      v228 = swift_slowAlloc();
      v229 = swift_slowAlloc();
      v297[0] = v229;
      *v228 = 136381187;
      if (v88[26])
      {
        v230 = v88[25];
        v231 = v88[26];
      }

      else
      {
        v232 = IDSCopyLocalDeviceUniqueID();
        if (v232)
        {
          v233 = v232;
          v230 = sub_2657F2484();
          v231 = v234;
        }

        else
        {
          v230 = 0xD000000000000017;
          v231 = 0x80000002657F8510;
        }

        v88 = v274;
      }

      v235 = sub_2657B7F9C(v230, v231, v297);

      *(v228 + 4) = v235;
      *(v228 + 12) = 2050;
      swift_beginAccess();
      v208 = *(*(v258 + 16) + 16);

      *(v228 + 14) = v208;

      *(v228 + 22) = 2050;
      v236 = *(v88[23] + 16);

      *(v228 + 24) = v236;

      _os_log_impl(&dword_2657B5000, v225, v226, "(%{private}s) Added %{public}ld inflight records; %{public}ld remaining", v228, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v229);
      MEMORY[0x266760A30](v229, -1, -1);
      MEMORY[0x266760A30](v228, -1, -1);

      LOBYTE(v208) = ObjectType;
      v209 = v293;
    }

    else
    {
    }

    swift_retain_n();
    v237 = sub_2657F2334();
    v238 = sub_2657F2584();
    if (os_log_type_enabled(v237, v238))
    {
      ObjectType = v211;
      v239 = swift_slowAlloc();
      v240 = swift_slowAlloc();
      v297[0] = v240;
      *v239 = 136380931;
      if (v88[26])
      {
        v241 = v208;
        v242 = v88[25];
        v208 = v88[26];
      }

      else
      {
        v241 = v208;
        v243 = IDSCopyLocalDeviceUniqueID();
        if (v243)
        {
          v244 = v243;
          v242 = sub_2657F2484();
          v208 = v245;
        }

        else
        {
          v242 = 0xD000000000000017;
          v208 = 0x80000002657F8510;
        }

        v88 = v274;
      }

      v246 = sub_2657B7F9C(v242, v208, v297);

      *(v239 + 4) = v246;
      *(v239 + 12) = 2050;
      v247 = *(v88[21] + 16);

      *(v239 + 14) = v247;

      _os_log_impl(&dword_2657B5000, v237, v238, "(%{private}s) %{public}ld outstanding request identifiers", v239, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v240);
      MEMORY[0x266760A30](v240, -1, -1);
      MEMORY[0x266760A30](v239, -1, -1);

      LOBYTE(v208) = v241;
      v211 = ObjectType;
      v209 = v293;
    }

    else
    {
    }

    v248 = v88[4];
    ObjectType = swift_getObjectType();
    LOBYTE(v297[0]) = v208;
    v297[1] = v209;
    v298 = v294;
    v249 = v295;
    v299 = v295;
    v300 = v296;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2657F5170;
    *(inited + 32) = v271;
    *(inited + 40) = v272;

    v251 = v88;
    v252 = sub_2657D00E8(inited);
    swift_setDeallocating();
    sub_2657EF8B4(inited + 32);
    v253 = swift_allocObject();
    v253[2] = v251;
    v253[3] = v211;
    v253[4] = v213;
    v253[5] = v258;
    v254 = *(v248 + 24);

    v254(v297, v252, sub_2657EF908, v253, ObjectType, v248);

    sub_2657BB314(v249, v296);
  }

  else
  {
    __break(1u);
  }
}

void *sub_2657E7728(uint64_t a1)
{
  v2 = v1;
  v82 = type metadata accessor for RecordMetadata(0);
  v70 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v5 = (&v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Record(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6 - 8);
  v69 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v73 = &v66 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = (&v66 - v12);
  v14 = sub_2657F2414();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (&v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = v2[15];
  *v17 = v18;
  (*(v15 + 104))(v17, *MEMORY[0x277D85200], v14);
  v19 = v18;
  LOBYTE(v18) = sub_2657F2434();
  result = (*(v15 + 8))(v17, v14);
  if (v18)
  {
    v76 = *(a1 + 16);
    if (!v76)
    {
      return MEMORY[0x277D84F90];
    }

    v22 = 0;
    v74 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v75 = a1 + v74;
    v23 = *(v7 + 72);
    v67 = 0x80000002657F8510;
    v24 = MEMORY[0x277D84F90];
    *&v21 = 136380931;
    v68 = v21;
    v25 = v73;
    v71 = v2;
    v81 = v13;
    v72 = v23;
    do
    {
      sub_2657EF7EC(v75 + v23 * v22, v13, type metadata accessor for Record);
      v26 = v2[23];
      if (*(v26 + 16))
      {
        v77 = v22;
        v78 = v24;
        sub_2657F28D4();
        v27 = *v13;
        v28 = v13[1];
        v29 = v13[2];
        v30 = v13[3];

        sub_2657F24C4();
        v83 = v30;
        v84 = v29;
        sub_2657F24C4();
        v31 = v82;
        v32 = *(v82 + 20);
        sub_2657F22A4();
        sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
        v80 = v32;
        sub_2657F2464();
        v79 = *(v13 + *(v31 + 24));
        sub_2657F28F4();
        v33 = sub_2657F2904();
        v34 = -1 << *(v26 + 32);
        v35 = v33 & ~v34;
        if ((*(v26 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35))
        {
          v36 = ~v34;
          v37 = *(v70 + 72);
          do
          {
            sub_2657EF7EC(*(v26 + 48) + v37 * v35, v5, type metadata accessor for RecordMetadata);
            v38 = v5[2];
            v39 = v5[3];
            v40 = *v5 == v27 && v5[1] == v28;
            if (v40 || (sub_2657F2864()) && (v38 == v84 ? (v41 = v39 == v83) : (v41 = 0), (v41 || (sub_2657F2864()) && (sub_2657F2274()))
            {
              v42 = *(v5 + *(v82 + 24));
              sub_2657EF854(v5, type metadata accessor for RecordMetadata);
              if (v79 == v42)
              {

                v43 = v69;
                if (qword_281446408 != -1)
                {
                  swift_once();
                }

                v44 = sub_2657F2344();
                __swift_project_value_buffer(v44, qword_281446410);
                v13 = v81;
                sub_2657EF7EC(v81, v43, type metadata accessor for Record);
                v2 = v71;

                v45 = sub_2657F2334();
                v46 = sub_2657F2584();

                v47 = os_log_type_enabled(v45, v46);
                v23 = v72;
                v24 = v78;
                if (v47)
                {
                  v48 = swift_slowAlloc();
                  v83 = swift_slowAlloc();
                  v85 = v83;
                  *v48 = v68;
                  v49 = v2[26];
                  LODWORD(v84) = v46;
                  if (v49)
                  {
                    v50 = v2[25];
                    v51 = v49;
                  }

                  else
                  {
                    v54 = IDSCopyLocalDeviceUniqueID();
                    if (v54)
                    {
                      v55 = v54;
                      v50 = sub_2657F2484();
                      v51 = v56;
                    }

                    else
                    {
                      v50 = 0xD000000000000017;
                      v51 = v67;
                    }
                  }

                  v57 = sub_2657B7F9C(v50, v51, &v85);

                  *(v48 + 4) = v57;
                  *(v48 + 12) = 2082;
                  v58 = *v43;
                  v59 = v43[1];
                  v60 = v43[2];
                  v61 = v43[3];
                  v86[0] = 0;
                  v86[1] = 0xE000000000000000;

                  sub_2657F2704();

                  strcpy(v86, "identifier: ");
                  BYTE5(v86[1]) = 0;
                  HIWORD(v86[1]) = -5120;
                  MEMORY[0x26675FFF0](v58, v59);
                  MEMORY[0x26675FFF0](0x203A656E6F7A203BLL, 0xE800000000000000);
                  MEMORY[0x26675FFF0](v60, v61);
                  v62 = v86[0];
                  v63 = v86[1];
                  sub_2657EF854(v43, type metadata accessor for Record);

                  v64 = sub_2657B7F9C(v62, v63, &v85);

                  *(v48 + 14) = v64;
                  _os_log_impl(&dword_2657B5000, v45, v84, "(%{private}s) Metadata for record %{public}s is already syncing", v48, 0x16u);
                  v65 = v83;
                  swift_arrayDestroy();
                  MEMORY[0x266760A30](v65, -1, -1);
                  MEMORY[0x266760A30](v48, -1, -1);

                  v13 = v81;
                  sub_2657EF854(v81, type metadata accessor for Record);
                  v25 = v73;
                  v22 = v77;
                  v24 = v78;
                  v23 = v72;
                }

                else
                {

                  sub_2657EF854(v43, type metadata accessor for Record);
                  sub_2657EF854(v13, type metadata accessor for Record);
                  v25 = v73;
                  v22 = v77;
                }

                goto LABEL_32;
              }
            }

            else
            {
              sub_2657EF854(v5, type metadata accessor for RecordMetadata);
            }

            v35 = (v35 + 1) & v36;
          }

          while (((*(v26 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0);
        }

        v2 = v71;
        v25 = v73;
        v13 = v81;
        v22 = v77;
        v24 = v78;
        v23 = v72;
      }

      sub_2657EF7EC(v13, v25, type metadata accessor for Record);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_2657CFDB0(0, v24[2] + 1, 1, v24);
      }

      v53 = v24[2];
      v52 = v24[3];
      if (v53 >= v52 >> 1)
      {
        v24 = sub_2657CFDB0((v52 > 1), v53 + 1, 1, v24);
      }

      v24[2] = v53 + 1;
      sub_2657F03E8(v25, v24 + v74 + v53 * v23, type metadata accessor for Record);
      sub_2657EF854(v13, type metadata accessor for Record);
LABEL_32:
      ++v22;
    }

    while (v22 != v76);
    return v24;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2657E8044@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v7 = *a1;
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  sub_2657F21E4();
  swift_allocObject();
  sub_2657F21D4();
  v32[0] = v8;
  v32[1] = v9;
  v33 = v10;
  sub_2657F0394();
  v11 = sub_2657F21C4();
  if (v4)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v13 = sub_2657F2344();
    __swift_project_value_buffer(v13, qword_281446410);

    v14 = v4;
    v15 = sub_2657F2334();
    v16 = sub_2657F2574();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32[0] = v31;
      *v17 = 136380931;
      if (*(v5 + 208))
      {
        v18 = *(v5 + 200);
        v19 = *(v5 + 208);
      }

      else
      {
        v23 = IDSCopyLocalDeviceUniqueID();
        if (v23)
        {
          v24 = v23;
          v18 = sub_2657F2484();
          v19 = v25;
        }

        else
        {
          v19 = 0x80000002657F8510;
          v18 = 0xD000000000000017;
        }
      }

      v26 = sub_2657B7F9C(v18, v19, v32);

      *(v17 + 4) = v26;
      *(v17 + 12) = 2082;
      v34 = v4;
      v27 = v4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
      v28 = sub_2657F24A4();
      v30 = sub_2657B7F9C(v28, v29, v32);

      *(v17 + 14) = v30;
      _os_log_impl(&dword_2657B5000, v15, v16, "(%{private}s) Failed to encode message: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v31, -1, -1);
      MEMORY[0x266760A30](v17, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    v20 = v11;
    v21 = v12;

    *a3 = v7;
    *(a3 + 8) = 0x69676E45636E7953;
    *(a3 + 16) = 0xEA0000000000656ELL;
    *(a3 + 24) = v20;
    *(a3 + 32) = v21;
  }

  return result;
}

uint64_t sub_2657E831C(void *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = a7 + 16;
  v14 = *(a4 + 120);
  v15 = swift_allocObject();
  *(v15 + 16) = a4;
  *(v15 + 24) = a5;
  *(v15 + 32) = a6;
  *(v15 + 40) = a1;
  *(v15 + 48) = a2;
  a3 &= 1u;
  *(v15 + 56) = a3;
  *(v15 + 64) = v13;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2657EF960;
  *(v16 + 24) = v15;
  v19[4] = sub_2657F06A0;
  v19[5] = v16;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 1107296256;
  v19[2] = sub_2657CF61C;
  v19[3] = &block_descriptor_397;
  v17 = _Block_copy(v19);

  sub_2657EF978(a1, a2, a3);

  dispatch_sync(v14, v17);
  _Block_release(v17);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  return result;
}

void sub_2657E84C4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6, void *a7)
{
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  swift_beginAccess();

  sub_2657C14F4(0, a2, a3);
  swift_endAccess();
  v17 = sub_2657F22A4();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  swift_beginAccess();

  sub_2657C163C(v16, a2, a3);
  swift_endAccess();
  if (a6)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v18 = sub_2657F2344();
    __swift_project_value_buffer(v18, qword_281446410);

    sub_2657EF978(a4, a5, 1);
    v19 = sub_2657F2334();
    v20 = sub_2657F2574();

    sub_2657D1110(a4, a5, 1);
    if (os_log_type_enabled(v19, v20))
    {
      v38 = a7;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v40[0] = v22;
      *v21 = 136380931;
      if (a1[26])
      {
        v23 = a1[25];
        v24 = a1[26];
      }

      else
      {
        v25 = IDSCopyLocalDeviceUniqueID();
        if (v25)
        {
          v26 = v25;
          v23 = sub_2657F2484();
          v24 = v27;
        }

        else
        {
          v24 = 0x80000002657F8510;
          v23 = 0xD000000000000017;
        }
      }

      v28 = sub_2657B7F9C(v23, v24, v40);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2080;
      v39 = a4;
      v29 = a4;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
      v30 = sub_2657F24A4();
      v32 = sub_2657B7F9C(v30, v31, v40);

      *(v21 + 14) = v32;
      _os_log_impl(&dword_2657B5000, v19, v20, "(%{private}s) Error sending record modifications: %s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v22, -1, -1);
      MEMORY[0x266760A30](v21, -1, -1);

      a7 = v38;
    }

    else
    {
    }

    v33 = a1[23];
    swift_beginAccess();
    if (*(*a7 + 16) <= *(v33 + 16) >> 3)
    {
      v39 = v33;

      sub_2657ECF6C(v36);

      v35 = v39;
    }

    else
    {

      v35 = sub_2657ED164(v34, v33);
    }

    a1[23] = v35;

    sub_2657E88B0();
  }
}

void sub_2657E88B0()
{
  v1 = v0;
  v2 = sub_2657F2414();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v1 + 120);
  *v5 = v6;
  (*(v3 + 104))(v5, *MEMORY[0x277D85200], v2);
  v7 = v6;
  v8 = sub_2657F2434();
  (*(v3 + 8))(v5, v2);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v9 = *(v1 + 104);
  v10 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1((v1 + 80), v9);
  if ((*(v10 + 16))(v9, v10))
  {
    if ((~*(v1 + 248) & 3) == 0)
    {
      v11 = *(v1 + 136);
      ObjectType = swift_getObjectType();
      v13 = *(v11 + 8);

      v13(v7, sub_2657EF990, v1, ObjectType, v11);

      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v22 = sub_2657F2344();
    __swift_project_value_buffer(v22, qword_281446410);

    v15 = sub_2657F2334();
    v16 = sub_2657F2574();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v36 = v18;
      *v17 = 136380675;
      v23 = *(v1 + 208);
      if (v23)
      {
        v24 = *(v1 + 200);
        v25 = v23;
      }

      else
      {
        v29 = IDSCopyLocalDeviceUniqueID();
        if (v29)
        {
          v30 = v29;
          v24 = sub_2657F2484();
          v25 = v31;
        }

        else
        {
          v24 = 0xD000000000000017;
          v25 = 0x80000002657F8510;
        }
      }

      v34 = sub_2657B7F9C(v24, v25, &v36);

      *(v17 + 4) = v34;
      v33 = "(%{private}s) Will not set retry timer because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v15, v16, v33, v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v18);
      MEMORY[0x266760A30](v18, -1, -1);
      MEMORY[0x266760A30](v17, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v14 = sub_2657F2344();
  __swift_project_value_buffer(v14, qword_281446410);

  v15 = sub_2657F2334();
  v16 = sub_2657F2574();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v36 = v18;
    *v17 = 136380675;
    v19 = *(v1 + 208);
    if (v19)
    {
      v20 = *(v1 + 200);
      v21 = v19;
    }

    else
    {
      v26 = IDSCopyLocalDeviceUniqueID();
      if (v26)
      {
        v27 = v26;
        v20 = sub_2657F2484();
        v21 = v28;
      }

      else
      {
        v20 = 0xD000000000000017;
        v21 = 0x80000002657F8510;
      }
    }

    v32 = sub_2657B7F9C(v20, v21, &v36);

    *(v17 + 4) = v32;
    v33 = "(%{private}s) Will not set retry timer because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

void sub_2657E8D08(void *a1, uint64_t a2, char a3, uint64_t a4, const char *a5, const char *a6)
{
  if (a3)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v10 = sub_2657F2344();
    __swift_project_value_buffer(v10, qword_281446410);

    sub_2657EF978(a1, a2, 1);
    oslog = sub_2657F2334();
    v11 = sub_2657F2574();

    sub_2657D1110(a1, a2, 1);
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v39 = v13;
      *v12 = 136380931;
      v14 = *(a4 + 208);
      if (v14)
      {
        v15 = *(a4 + 200);
        v16 = v14;
      }

      else
      {
        v25 = IDSCopyLocalDeviceUniqueID();
        if (v25)
        {
          v26 = v25;
          v15 = sub_2657F2484();
          v16 = v27;
        }

        else
        {
          v15 = 0xD000000000000017;
          v16 = 0x80000002657F8510;
        }
      }

      v31 = sub_2657B7F9C(v15, v16, &v39);

      *(v12 + 4) = v31;
      *(v12 + 12) = 2082;
      v32 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023928, &qword_2657F4300);
      v33 = sub_2657F24A4();
      v35 = sub_2657B7F9C(v33, v34, &v39);

      *(v12 + 14) = v35;
      _os_log_impl(&dword_2657B5000, oslog, v11, a5, v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266760A30](v13, -1, -1);
      v36 = v12;
LABEL_23:
      MEMORY[0x266760A30](v36, -1, -1);

      return;
    }
  }

  else
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v18 = sub_2657F2344();
    __swift_project_value_buffer(v18, qword_281446410);

    oslog = sub_2657F2334();
    v19 = sub_2657F2584();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = 136380675;
      v22 = *(a4 + 208);
      if (v22)
      {
        v23 = *(a4 + 200);
        v24 = v22;
      }

      else
      {
        v28 = IDSCopyLocalDeviceUniqueID();
        if (v28)
        {
          v29 = v28;
          v23 = sub_2657F2484();
          v24 = v30;
        }

        else
        {
          v23 = 0xD000000000000017;
          v24 = 0x80000002657F8510;
        }
      }

      v37 = sub_2657B7F9C(v23, v24, &v39);

      *(v20 + 4) = v37;
      _os_log_impl(&dword_2657B5000, oslog, v19, a6, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x266760A30](v21, -1, -1);
      v36 = v20;
      goto LABEL_23;
    }
  }
}

uint64_t sub_2657E90E0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F8, &qword_2657F41A8);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v98 - v4;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
  v5 = MEMORY[0x28223BE20](v113);
  v112 = (&v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = MEMORY[0x28223BE20](v5);
  v111 = &v98 - v8;
  MEMORY[0x28223BE20](v7);
  v110 = &v98 - v9;
  v115 = sub_2657F22A4();
  v10 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2657F2414();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = (&v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v99 = v1;
  v17 = v1[15];
  *v16 = v17;
  (*(v14 + 104))(v16, *MEMORY[0x277D85200], v13);
  v18 = v17;
  LOBYTE(v17) = sub_2657F2434();
  (*(v14 + 8))(v16, v13);
  if ((v17 & 1) == 0)
  {
    goto LABEL_57;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_58;
  }

  while (1)
  {
    v19 = sub_2657F2344();
    __swift_project_value_buffer(v19, qword_281446410);
    v20 = *(v10 + 2);
    v21 = v115;
    v109 = v10 + 16;
    v108 = v20;
    v20(v12, a1, v115);
    v22 = v99;

    v23 = sub_2657F2334();
    v24 = sub_2657F2584();

    v25 = os_log_type_enabled(v23, v24);
    v114 = v10;
    if (v25)
    {
      v26 = swift_slowAlloc();
      v119 = swift_slowAlloc();
      v123[0] = v119;
      *v26 = 136380931;
      if (v22[26])
      {
        v27 = v22[25];
        v28 = v22[26];
      }

      else
      {
        v29 = IDSCopyLocalDeviceUniqueID();
        if (v29)
        {
          v30 = v29;
          v27 = sub_2657F2484();
          v28 = v31;
        }

        else
        {
          v28 = 0x80000002657F8510;
          v27 = 0xD000000000000017;
        }
      }

      v32 = sub_2657B7F9C(v27, v28, v123);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2082;
      sub_2657EF918(&unk_281446F40, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v33 = v115;
      v34 = sub_2657F2854();
      v36 = v35;
      v107 = *(v114 + 1);
      v107(v12, v33);
      v37 = sub_2657B7F9C(v34, v36, v123);

      *(v26 + 14) = v37;
      _os_log_impl(&dword_2657B5000, v23, v24, "(%{private}s) Removing all inflight metadata before %{public}s", v26, 0x16u);
      v38 = v119;
      swift_arrayDestroy();
      MEMORY[0x266760A30](v38, -1, -1);
      MEMORY[0x266760A30](v26, -1, -1);
    }

    else
    {

      v107 = *(v10 + 1);
      v107(v12, v21);
    }

    v39 = swift_beginAccess();
    MEMORY[0x28223BE20](v39);
    *(&v98 - 2) = v40;
    *(&v98 - 1) = a1;

    v42 = sub_2657F01AC(v41, sub_2657EF9A0);

    v43 = *(v42 + 2);
    if (!v43)
    {
      break;
    }

    v122[0] = MEMORY[0x277D84F90];
    sub_2657CB09C(0, v43, 0);
    v44 = v122[0];
    v10 = v42 + 64;
    v45 = sub_2657F2674();
    v46 = 0;
    v106 = v114 + 32;
    v105 = v114 + 8;
    v101 = v42 + 72;
    v102 = v43;
    v103 = v42 + 64;
    v104 = v42;
    v47 = v113;
    while ((v45 & 0x8000000000000000) == 0 && v45 < 1 << v42[32])
    {
      a1 = 1 << v45;
      if ((*&v10[8 * (v45 >> 6)] & (1 << v45)) == 0)
      {
        goto LABEL_53;
      }

      v116 = v46;
      v117 = *(v42 + 9);
      v118 = v45 >> 6;
      v49 = *(v47 + 48);
      v50 = *(v42 + 7);
      v51 = (*(v42 + 6) + 16 * v45);
      v53 = *v51;
      v52 = v51[1];
      v54 = v114;
      v55 = v115;
      v56 = v110;
      v108(&v110[v49], v50 + *(v114 + 9) * v45, v115);
      v119 = v44;
      v57 = v111;
      *v111 = v53;
      *(v57 + 1) = v52;
      v54[4](&v57[*(v47 + 48)], &v56[v49], v55);
      v58 = v57;
      v59 = v112;
      sub_2657F032C(v58, v112, &unk_280023C70, &unk_2657F5380);
      v61 = *v59;
      v60 = v59[1];
      v62 = *(v47 + 48);

      v63 = v59 + v62;
      v44 = v119;
      v107(v63, v55);
      v122[0] = v44;
      v12 = *(v44 + 16);
      v64 = *(v44 + 24);
      v10 = (v12 + 1);
      if (v12 >= v64 >> 1)
      {
        sub_2657CB09C((v64 > 1), v12 + 1, 1);
        v44 = v122[0];
      }

      *(v44 + 16) = v10;
      v65 = v44 + 16 * v12;
      *(v65 + 32) = v61;
      *(v65 + 40) = v60;
      v42 = v104;
      v48 = 1 << v104[32];
      if (v45 >= v48)
      {
        goto LABEL_54;
      }

      v10 = v103;
      v66 = *&v103[8 * v118];
      if ((v66 & a1) == 0)
      {
        goto LABEL_55;
      }

      if (v117 != *(v104 + 9))
      {
        goto LABEL_56;
      }

      v67 = v66 & (-2 << (v45 & 0x3F));
      if (v67)
      {
        v48 = __clz(__rbit64(v67)) | v45 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v68 = v118 << 6;
        v69 = v118 + 1;
        v70 = &v101[8 * v118];
        while (v69 < (v48 + 63) >> 6)
        {
          v71 = *v70++;
          v12 = v71;
          v68 += 64;
          ++v69;
          if (v71)
          {
            sub_2657CC3CC(v45, v117, 0);
            v48 = __clz(__rbit64(v12)) + v68;
            goto LABEL_14;
          }
        }

        sub_2657CC3CC(v45, v117, 0);
      }

LABEL_14:
      v46 = v116 + 1;
      v45 = v48;
      if (v116 + 1 == v102)
      {

        goto LABEL_31;
      }
    }

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
    swift_once();
  }

  v44 = MEMORY[0x277D84F90];
LABEL_31:
  v119 = v44;
  v72 = *(v44 + 16);
  v73 = v99;
  if (v72)
  {
    swift_beginAccess();
    v74 = (v114 + 56);
    v118 = (v114 + 32);
    v75 = (v119 + 40);
    do
    {
      v76 = v73[21];
      if (*(v76 + 16))
      {
        v78 = *(v75 - 1);
        v77 = *v75;

        v79 = sub_2657C8374(v78, v77);
        if (v80)
        {
          v81 = *(*(v76 + 56) + 8 * v79);

          swift_beginAccess();

          v82 = sub_2657C8374(v78, v77);
          v84 = v83;

          if (v84)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v86 = v73[21];
            v120 = v86;
            v73[21] = 0x8000000000000000;
            if (!isUniquelyReferenced_nonNull_native)
            {
              sub_2657CA74C();
              v86 = v120;
            }

            sub_2657EC628(v82, v86);
            v73[21] = v86;
          }

          swift_endAccess();
          swift_beginAccess();
          v87 = sub_2657C8374(v78, v77);
          v89 = v88;

          if (v89)
          {
            v90 = swift_isUniquelyReferenced_nonNull_native();
            v91 = v73[22];
            v120 = v91;
            v73[22] = 0x8000000000000000;
            v92 = v100;
            v93 = v115;
            if (!v90)
            {
              sub_2657CA4CC();
              v91 = v120;
            }

            (*(v114 + 4))(v92, *(v91 + 56) + *(v114 + 9) * v87, v93);
            sub_2657EC43C(v87, v91);
            v73[22] = v91;

            v94 = 0;
          }

          else
          {
            v94 = 1;
            v92 = v100;
            v93 = v115;
          }

          (*v74)(v92, v94, 1, v93);
          sub_2657CC304(v92, &qword_2800237F8, &qword_2657F41A8);
          swift_endAccess();
          v95 = v73[23];
          if (*(v81 + 16) <= *(v95 + 16) >> 3)
          {
            v121 = v73[23];

            sub_2657ECF6C(v81);

            v96 = v121;
          }

          else
          {

            v96 = sub_2657ED164(v81, v95);
          }

          v73[23] = v96;
        }

        else
        {
        }
      }

      v75 += 2;
      --v72;
    }

    while (v72);
  }
}

uint64_t sub_2657E9C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_2657F22A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2657F2224();
  v9 = sub_2657F2244();
  (*(v6 + 8))(v8, v5);
  return v9 & 1;
}

uint64_t sub_2657E9D30@<X0>(uint64_t a1@<X8>)
{
  v63[2] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C88, &qword_2657F5390);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v71 = v63 - v6;
  v7 = sub_2657F22A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v72 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v69 = v63 - v12;
  MEMORY[0x28223BE20](v11);
  v14 = v63 - v13;
  v15 = sub_2657F2414();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = (v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v1 + 120);
  *v18 = v19;
  (*(v16 + 104))(v18, *MEMORY[0x277D85200], v15);
  v20 = v19;
  v21 = sub_2657F2434();
  result = (*(v16 + 8))(v18, v15);
  if (v21)
  {
    v23 = v14;
    sub_2657F2214();
    swift_beginAccess();
    v63[1] = v1;
    v24 = *(v1 + 176);
    v25 = *(v24 + 64);
    v64 = v24 + 64;
    v26 = 1 << *(v24 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & v25;
    v29 = v26 + 63;
    v30 = v8;
    v31 = v29 >> 6;
    v66 = v30 + 16;
    v32 = (v30 + 32);
    v68 = v30;
    v73 = (v30 + 8);
    v70 = v24;

    v33 = 0;
    v34 = v71;
    v74 = v23;
    v75 = v7;
    v67 = v5;
    v35 = v5;
    v36 = v32;
    v65 = v32;
    while (v28)
    {
      v37 = v33;
LABEL_16:
      v40 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v41 = v40 | (v37 << 6);
      v42 = v69;
      v43 = (*(v70 + 48) + 16 * v41);
      v45 = *v43;
      v44 = v43[1];
      v46 = v68;
      v47 = v75;
      (*(v68 + 16))(v69, *(v70 + 56) + *(v68 + 72) * v41, v75);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
      v49 = *(v48 + 48);
      v50 = v67;
      *v67 = v45;
      *(v50 + 1) = v44;
      v51 = v42;
      v35 = v50;
      v52 = v47;
      v36 = v65;
      (*(v46 + 32))(&v50[v49], v51, v52);
      (*(*(v48 - 8) + 56))(v35, 0, 1, v48);

      v39 = v37;
      v34 = v71;
LABEL_17:
      sub_2657F032C(v35, v34, &qword_280023C88, &qword_2657F5390);
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
      if ((*(*(v53 - 8) + 48))(v34, 1, v53) == 1)
      {

        v62 = v74;
        sub_2657F2224();
        return (*v73)(v62, v75);
      }

      v54 = *v36;
      v55 = v36;
      v56 = v72;
      v57 = v75;
      v54(v72, v34 + *(v53 + 48), v75);
      v58 = v74;
      v59 = sub_2657F2244();
      v60 = *v73;
      if (v59)
      {
        v60(v58, v57);
        result = (v54)(v58, v56, v57);
      }

      else
      {
        result = v60(v56, v57);
      }

      v33 = v39;
      v36 = v55;
    }

    if (v31 <= v33 + 1)
    {
      v38 = v33 + 1;
    }

    else
    {
      v38 = v31;
    }

    v39 = v38 - 1;
    while (1)
    {
      v37 = v33 + 1;
      if (__OFADD__(v33, 1))
      {
        break;
      }

      if (v37 >= v31)
      {
        v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C70, &unk_2657F5380);
        (*(*(v61 - 8) + 56))(v35, 1, 1, v61);
        v28 = 0;
        goto LABEL_17;
      }

      v28 = *(v64 + 8 * v37);
      ++v33;
      if (v28)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_2657EA2F0()
{
  v1 = v0;
  v2 = sub_2657F23B4();
  v93 = *(v2 - 8);
  v94 = v2;
  MEMORY[0x28223BE20](v2);
  v91 = &v80 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_2657F23E4();
  v90 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v89 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2657F23A4();
  v85 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v86 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v80 - v8;
  v98 = sub_2657F2404();
  v100 = *(v98 - 8);
  v10 = MEMORY[0x28223BE20](v98);
  v96 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v97 = &v80 - v12;
  v13 = sub_2657F25F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = sub_2657F22A4();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v99 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2657F2414();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = (&v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = *(v1 + 120);
  *v21 = v22;
  (*(v19 + 104))(v21, *MEMORY[0x277D85200], v18);
  v95 = v22;
  LOBYTE(v22) = sub_2657F2434();
  (*(v19 + 8))(v21, v18);
  if ((v22 & 1) == 0)
  {
    __break(1u);
    goto LABEL_47;
  }

  if (!*(*(v1 + 184) + 16))
  {
    if (qword_281446408 == -1)
    {
LABEL_11:
      v33 = sub_2657F2344();
      __swift_project_value_buffer(v33, qword_281446410);

      v34 = sub_2657F2334();
      v35 = sub_2657F2584();

      if (!os_log_type_enabled(v34, v35))
      {
LABEL_45:

        return;
      }

      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      aBlock[0] = v37;
      *v36 = 136380675;
      v38 = *(v1 + 208);
      if (v38)
      {
        v39 = *(v1 + 200);
        v40 = v38;
      }

      else
      {
        v49 = IDSCopyLocalDeviceUniqueID();
        if (v49)
        {
          v50 = v49;
          v39 = sub_2657F2484();
          v40 = v51;
        }

        else
        {
          v39 = 0xD000000000000017;
          v40 = 0x80000002657F8510;
        }
      }

      v60 = sub_2657B7F9C(v39, v40, aBlock);

      *(v36 + 4) = v60;
      v61 = "(%{private}s) No inflight metadata; will not start expiration timer";
LABEL_44:
      _os_log_impl(&dword_2657B5000, v34, v35, v61, v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x266760A30](v37, -1, -1);
      MEMORY[0x266760A30](v36, -1, -1);
      goto LABEL_45;
    }

LABEL_47:
    swift_once();
    goto LABEL_11;
  }

  v23 = *(v1 + 104);
  v24 = *(v1 + 112);
  __swift_project_boxed_opaque_existential_1((v1 + 80), v23);
  if (((*(v24 + 16))(v23, v24) & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v41 = sub_2657F2344();
    __swift_project_value_buffer(v41, qword_281446410);

    v34 = sub_2657F2334();
    v35 = sub_2657F2584();

    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_45;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136380675;
    v42 = *(v1 + 208);
    if (v42)
    {
      v43 = *(v1 + 200);
      v44 = v42;
    }

    else
    {
      v52 = IDSCopyLocalDeviceUniqueID();
      if (v52)
      {
        v53 = v52;
        v43 = sub_2657F2484();
        v44 = v54;
      }

      else
      {
        v43 = 0xD000000000000017;
        v44 = 0x80000002657F8510;
      }
    }

    v62 = sub_2657B7F9C(v43, v44, aBlock);

    *(v36 + 4) = v62;
    v61 = "(%{private}s) Will not set expiration timer because keybag is locked";
    goto LABEL_44;
  }

  if ((~*(v1 + 248) & 3) != 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v45 = sub_2657F2344();
    __swift_project_value_buffer(v45, qword_281446410);

    v34 = sub_2657F2334();
    v35 = sub_2657F2584();

    if (!os_log_type_enabled(v34, v35))
    {
      goto LABEL_45;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136380675;
    v46 = *(v1 + 208);
    if (v46)
    {
      v47 = *(v1 + 200);
      v48 = v46;
    }

    else
    {
      v57 = IDSCopyLocalDeviceUniqueID();
      if (v57)
      {
        v58 = v57;
        v47 = sub_2657F2484();
        v48 = v59;
      }

      else
      {
        v47 = 0xD000000000000017;
        v48 = 0x80000002657F8510;
      }
    }

    v79 = sub_2657B7F9C(v47, v48, aBlock);

    *(v36 + 4) = v79;
    v61 = "(%{private}s) Will not set expiration timer because sync is inactive";
    goto LABEL_44;
  }

  sub_2657E9D30(v99);
  sub_2657F2254();
  v26 = v25;
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v27 = sub_2657F2344();
  __swift_project_value_buffer(v27, qword_281446410);

  v28 = sub_2657F2334();
  v29 = sub_2657F2584();

  if (os_log_type_enabled(v28, v29))
  {
    LODWORD(v84) = v29;
    v30 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    aBlock[0] = v83;
    *v30 = 136380931;
    v31 = *(v1 + 208);
    if (v31)
    {
      v82 = *(v1 + 200);
      v32 = v31;
    }

    else
    {
      v55 = IDSCopyLocalDeviceUniqueID();
      if (v55)
      {
        v81 = v55;
        v82 = sub_2657F2484();
        v32 = v56;
      }

      else
      {
        v82 = 0xD000000000000017;
        v32 = 0x80000002657F8510;
      }
    }

    v63 = sub_2657B7F9C(v82, v32, aBlock);

    *(v30 + 4) = v63;
    *(v30 + 12) = 2048;
    *(v30 + 14) = v26;
    _os_log_impl(&dword_2657B5000, v28, v84, "(%{private}s) Expiration timer will fire in %fs", v30, 0x16u);
    v64 = v83;
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x266760A30](v64, -1, -1);
    MEMORY[0x266760A30](v30, -1, -1);
  }

  v84 = sub_2657D0F44(0, &qword_280023C38, 0x277D85CA0);
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_280023C40, MEMORY[0x277D85278], MEMORY[0x277D85280]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C48, &unk_2657F5370);
  sub_2657D53B4(&qword_280023C50, &qword_280023C48, &unk_2657F5370, MEMORY[0x277D83970]);
  sub_2657F2664();
  v65 = sub_2657F2604();
  (*(v14 + 8))(v16, v13);
  v66 = v96;
  sub_2657F23F4();
  if ((*&v26 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v26 > -9.22337204e18)
  {
    v95 = v65;
    if (v26 < 9.22337204e18)
    {
      *v9 = v26;
      v67 = *MEMORY[0x277D85188];
      v68 = v85;
      v69 = *(v85 + 104);
      v69(v9, v67, v5);
      MEMORY[0x26675FF40](v66, v9);
      v70 = *(v68 + 8);
      v70(v9, v5);
      v71 = v5;
      v85 = *(v100 + 8);
      v100 += 8;
      (v85)(v66, v98);
      v72 = v95;
      ObjectType = swift_getObjectType();
      *v9 = 10;
      v69(v9, v67, v71);
      v74 = v86;
      v69(v86, *MEMORY[0x277D85180], v71);
      v75 = v97;
      MEMORY[0x266760160](v97, v74, v9, ObjectType);
      v70(v74, v71);
      v70(v9, v71);
      aBlock[4] = sub_2657EF998;
      aBlock[5] = v1;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2657CE9D4;
      aBlock[3] = &block_descriptor_400;
      v76 = _Block_copy(aBlock);

      v77 = v89;
      sub_2657F23C4();
      v78 = v91;
      sub_2657EB4F0();
      sub_2657F2614();
      _Block_release(v76);
      (*(v93 + 8))(v78, v94);
      (*(v90 + 8))(v77, v92);

      *(v1 + 152) = v72;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      sub_2657F2634();
      swift_unknownObjectRelease_n();
      (v85)(v75, v98);
      (*(v87 + 8))(v99, v88);
      return;
    }

    goto LABEL_50;
  }

  __break(1u);
LABEL_50:
  __break(1u);
}

uint64_t sub_2657EB10C@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D85180];
  v3 = sub_2657F23A4();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_2657EB180(void *a1)
{
  v2 = sub_2657F22A4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2657F2414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = a1[15];
  *v9 = v10;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v11 = v10;
  LOBYTE(v10) = sub_2657F2434();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_281446408 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = sub_2657F2344();
  __swift_project_value_buffer(v12, qword_281446410);

  v13 = sub_2657F2334();
  v14 = sub_2657F2584();

  if (os_log_type_enabled(v13, v14))
  {
    v28 = v3;
    v29 = v2;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30 = v16;
    *v15 = 136380675;
    if (a1[26])
    {
      v17 = a1[25];
      v18 = a1[26];
    }

    else
    {
      v19 = IDSCopyLocalDeviceUniqueID();
      if (v19)
      {
        v20 = v19;
        v17 = sub_2657F2484();
        v18 = v21;
      }

      else
      {
        v18 = 0x80000002657F8510;
        v17 = 0xD000000000000017;
      }
    }

    v22 = sub_2657B7F9C(v17, v18, &v30);

    *(v15 + 4) = v22;
    _os_log_impl(&dword_2657B5000, v13, v14, "(%{private}s) Expiration timer fired", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x266760A30](v16, -1, -1);
    MEMORY[0x266760A30](v15, -1, -1);

    v3 = v28;
    v2 = v29;
  }

  else
  {
  }

  sub_2657E4F94();
  sub_2657F2284();
  sub_2657E90E0(v5);
  result = (*(v3 + 8))(v5, v2);
  v24 = a1[36];
  if (v24)
  {
    v25 = a1[37];

    v24(v26);
    return sub_2657BA1AC(v24, v25);
  }

  return result;
}

uint64_t sub_2657EB4F0()
{
  sub_2657F23B4();
  sub_2657EF918(&qword_2814463D0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C60, &qword_2657F4228);
  sub_2657D53B4(&unk_2814463C0, &unk_280023C60, &qword_2657F4228, MEMORY[0x277D83970]);
  return sub_2657F2664();
}

uint64_t sub_2657EB5DC(char a1, uint64_t a2)
{
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(a2 + 120);
  *v7 = v8;
  v9 = *MEMORY[0x277D85200];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  v30 = v8;
  LOBYTE(v8) = sub_2657F2434();
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v29 = v10;
  v13 = a1;
  v14 = *(a2 + 304);
  if (v14)
  {
    v15 = *(a2 + 312);

    v14(v16);
    sub_2657BA1AC(v14, v15);
  }

  v17 = *(a2 + 320);
  if (v17 && (v13 & 1) != 0)
  {
    v18 = *(a2 + 328);

    v17(v19);
    sub_2657BA1AC(v17, v18);
  }

  v20 = v29;
  *v7 = v30;
  v20(v7, v9, v4);
  v21 = sub_2657F2434();
  result = v11(v7, v4);
  if ((v21 & 1) == 0)
  {
    goto LABEL_12;
  }

  v22 = *(a2 + 136);
  ObjectType = swift_getObjectType();
  (*(v22 + 16))(ObjectType, v22);
  v24 = *(*(a2 + 216) + 16);

  os_unfair_lock_lock(v24);
  v25 = *(a2 + 224);
  v26 = *(a2 + 232);
  v27 = *(a2 + 240);

  os_unfair_lock_unlock(v24);

  if (v26)
  {
    v31 = HIBYTE(v27) & 1;

    sub_2657B8A48(v25, v26, &v31);
    return swift_bridgeObjectRelease_n();
  }

  return result;
}

void sub_2657EB840(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_2657F2414();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&ObjectType - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *a1;
  v8 = a1[1];
  v10 = *(a1 + 17);
  v11 = *(v2 + 120);
  *v7 = v11;
  (*(v5 + 104))(v7, *MEMORY[0x277D85200], v4);
  v12 = v11;
  LOBYTE(v11) = sub_2657F2434();
  (*(v5 + 8))(v7, v4);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v13 = *(v2 + 104);
  v14 = *(v2 + 112);
  __swift_project_boxed_opaque_existential_1((v2 + 80), v13);
  if ((*(v14 + 16))(v13, v14))
  {
    if ((~*(v2 + 248) & 3) == 0)
    {
      v49 = v10;
      v46 = 0;
      v47 = 0;
      v48 = 3;
      sub_2657E8044(&v49, &v46, &v50);
      sub_2657D3E70(v46, v47, v48);
      v27 = v50;
      v29 = v51;
      v28 = v52;
      v30 = v53;
      v31 = v54;
      v32 = *(v2 + 32);
      ObjectType = swift_getObjectType();
      LOBYTE(v50) = v27;
      v51 = v29;
      v52 = v28;
      v53 = v30;
      v54 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800237F0, &qword_2657F41A0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2657F5170;
      *(inited + 32) = v9;
      *(inited + 40) = v8;

      v34 = sub_2657D00E8(inited);
      swift_setDeallocating();
      sub_2657EF8B4(inited + 32);
      v35 = *(v32 + 24);

      v35(&v50, v34, sub_2657F05C8, v2, ObjectType, v32);

      sub_2657BB314(v30, v31);
      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v23 = sub_2657F2344();
    __swift_project_value_buffer(v23, qword_281446410);

    v16 = sub_2657F2334();
    v17 = sub_2657F2584();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v50 = v19;
      *v18 = 136380675;
      v24 = *(v2 + 208);
      if (v24)
      {
        v25 = *(v2 + 200);
        v26 = v24;
      }

      else
      {
        v39 = IDSCopyLocalDeviceUniqueID();
        if (v39)
        {
          v40 = v39;
          v25 = sub_2657F2484();
          v26 = v41;
        }

        else
        {
          v25 = 0xD000000000000017;
          v26 = 0x80000002657F8510;
        }
      }

      v44 = sub_2657B7F9C(v25, v26, &v50);

      *(v18 + 4) = v44;
      v43 = "(%{private}s) Will not send unlock message because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v16, v17, v43, v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x266760A30](v19, -1, -1);
      MEMORY[0x266760A30](v18, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v15 = sub_2657F2344();
  __swift_project_value_buffer(v15, qword_281446410);

  v16 = sub_2657F2334();
  v17 = sub_2657F2584();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v50 = v19;
    *v18 = 136380675;
    v20 = *(v2 + 208);
    if (v20)
    {
      v21 = *(v2 + 200);
      v22 = v20;
    }

    else
    {
      v36 = IDSCopyLocalDeviceUniqueID();
      if (v36)
      {
        v37 = v36;
        v21 = sub_2657F2484();
        v22 = v38;
      }

      else
      {
        v21 = 0xD000000000000017;
        v22 = 0x80000002657F8510;
      }
    }

    v42 = sub_2657B7F9C(v21, v22, &v50);

    *(v18 + 4) = v42;
    v43 = "(%{private}s) Will not send unlock message because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

void *sub_2657EBEB8(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2657EBED8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2657EBF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v8 = sub_2657B830C(a1, a2, a3, a4);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v5;
    v22 = *v6;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2657CA0DC();
      v12 = v22;
    }

    v13 = *(v12 + 56);
    v14 = type metadata accessor for RecordMetadata(0);
    v21 = *(v14 - 8);
    sub_2657F03E8(v13 + *(v21 + 72) * v10, a5, type metadata accessor for RecordMetadata);
    sub_2657EC21C(v10, v12, type metadata accessor for RecordMetadata);
    *v6 = v12;
    v15 = *(v21 + 56);
    v16 = a5;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for RecordMetadata(0);
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a5;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_2657EC094@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_2657C8374(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_2657CA4CC();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = sub_2657F22A4();
    v19 = *(v12 - 8);
    (*(v19 + 32))(a3, v11 + *(v19 + 72) * v8, v12);
    sub_2657EC43C(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = sub_2657F22A4();
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

unint64_t sub_2657EC21C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_2657F2684() + 1) & ~v6;
    while (1)
    {
      sub_2657F28D4();

      sub_2657F24C4();
      sub_2657F24C4();
      v10 = sub_2657F2904();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v11 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v12 = *(a2 + 48);
      v13 = (v12 + 32 * v4);
      v14 = (v12 + 32 * v7);
      if (v4 != v7 || v13 >= v14 + 2)
      {
        v15 = v14[1];
        *v13 = *v14;
        v13[1] = v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v11 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v11)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_2657EC43C(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2657F2684() + 1) & ~v5;
    while (1)
    {
      sub_2657F28D4();

      sub_2657F24C4();
      v9 = sub_2657F2904();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v10 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + 16 * v3);
      v13 = (v11 + 16 * v6);
      if (v3 != v6 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_2657F22A4() - 8) + 72);
      v16 = v15 * v3;
      result = v14 + v15 * v3;
      v17 = v15 * v6;
      v18 = v14 + v15 * v6 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_2657EC628(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_2657F2684() + 1) & ~v5;
    do
    {
      sub_2657F28D4();

      sub_2657F24C4();
      v9 = sub_2657F2904();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void *sub_2657EC7D8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_2657EFF60(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_2657EC868(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v7 = type metadata accessor for RecordMetadata(0);
  v45 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = &v40 - v10;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v43 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023840, &unk_2657F41F0);
  result = sub_2657F27A4();
  v12 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *v42;
  }

  v14 = 0;
  v15 = result + 64;
  v16 = v43;
  v40 = a4;
  v41 = result;
  while (v13)
  {
    v17 = v16;
    v18 = __clz(__rbit64(v13));
    v46 = (v13 - 1) & v13;
LABEL_16:
    v21 = v18 | (v14 << 6);
    v22 = a4[7];
    v23 = (a4[6] + 32 * v21);
    v25 = *v23;
    v24 = v23[1];
    v26 = v23[2];
    v27 = v23[3];
    v28 = v44;
    v48 = *(v45 + 72);
    sub_2657EF7EC(v22 + v48 * v21, v44, type metadata accessor for RecordMetadata);
    sub_2657F03E8(v28, v17, type metadata accessor for RecordMetadata);
    v12 = v41;
    sub_2657F28D4();

    sub_2657F24C4();
    v47 = v26;
    sub_2657F24C4();
    result = sub_2657F2904();
    v29 = -1 << *(v12 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      v16 = v43;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v15 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    v16 = v43;
LABEL_26:
    *(v15 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    v37 = (*(v12 + 48) + 32 * v32);
    *v37 = v25;
    v37[1] = v24;
    v38 = v48;
    v37[2] = v47;
    v37[3] = v27;
    result = sub_2657F03E8(v16, *(v12 + 56) + v32 * v38, type metadata accessor for RecordMetadata);
    ++*(v12 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v40;
    v13 = v46;
    if (!a3)
    {
      return v12;
    }
  }

  v19 = v14;
  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      return v12;
    }

    v20 = v42[v14];
    ++v19;
    if (v20)
    {
      v17 = v16;
      v18 = __clz(__rbit64(v20));
      v46 = (v20 - 1) & v20;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2657ECBEC(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_2657F22A4();
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C80, &qword_2657F4198);
  result = sub_2657F27A4();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_2657F28D4();

    v52 = v27;
    sub_2657F24C4();
    result = sub_2657F2904();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_2657ECF6C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for RecordMetadata(0);
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;

    for (i = 0; v13; result = sub_2657CC304(v5, &unk_280023C10, &qword_2657F4100))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      sub_2657EF7EC(*(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for RecordMetadata);
      sub_2657C66F8(v10, v5);
      sub_2657EF854(v10, type metadata accessor for RecordMetadata);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_2657ED164(uint64_t a1, unint64_t a2)
{
  v125 = *MEMORY[0x277D85DE8];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v95 = &v93 - v9;
  v10 = type metadata accessor for RecordMetadata(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x28223BE20](v11);
  v114 = (&v93 - v15);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = (&v93 - v17);
  MEMORY[0x28223BE20](v16);
  v112 = (&v93 - v20);
  if (!*(a2 + 16))
  {

    return MEMORY[0x277D84FA0];
  }

  v97 = v8;
  v94 = 0;
  v22 = a1 + 56;
  v21 = *(a1 + 56);
  v23 = -1 << *(a1 + 32);
  v107 = ~v23;
  if (-v23 < 64)
  {
    v24 = ~(-1 << -v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v21;
  v98 = (63 - v23) >> 6;
  v106 = (v19 + 56);
  v96 = v19;
  v105 = (v19 + 48);
  v118 = (a2 + 56);
  v119 = a2;

  v27 = 0;
  v104 = a1;
  v115 = v10;
  for (i = a1 + 56; ; v22 = i)
  {
    v28 = v25;
    v29 = v27;
    if (v25)
    {
LABEL_15:
      v33 = (v28 - 1) & v28;
      v34 = *(a1 + 48) + v96[9] * (__clz(__rbit64(v28)) | (v29 << 6));
      v35 = a1;
      v36 = v95;
      sub_2657EF7EC(v34, v95, type metadata accessor for RecordMetadata);
      v37 = 0;
    }

    else
    {
      v30 = v98 <= v27 + 1 ? v27 + 1 : v98;
      v31 = v30 - 1;
      v32 = v27;
      while (1)
      {
        v29 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          goto LABEL_79;
        }

        if (v29 >= v98)
        {
          break;
        }

        v28 = *(v22 + 8 * v29);
        ++v32;
        if (v28)
        {
          goto LABEL_15;
        }
      }

      v33 = 0;
      v37 = 1;
      v29 = v31;
      v35 = a1;
      v36 = v95;
    }

    v102 = *v106;
    v102(v36, v37, 1, v10);
    v120 = v35;
    v121 = v22;
    v122 = v107;
    v123 = v29;
    v110 = v29;
    v109 = v33;
    v124 = v33;
    v101 = *v105;
    v52 = v101(v36, 1, v10) == 1;
    v38 = v36;
    if (v52)
    {
      sub_2657CC304(v36, &unk_280023C10, &qword_2657F4100);
      sub_2657EF988();
      return v119;
    }

    v39 = v112;
    sub_2657F03E8(v38, v112, type metadata accessor for RecordMetadata);
    v40 = v119;
    sub_2657F28D4();
    v2 = v39[1];
    v41 = v39[2];
    v42 = v39[3];
    v43 = *v39;
    sub_2657F24C4();
    v116 = v41;
    v113 = v42;
    sub_2657F24C4();
    v44 = *(v10 + 20);
    v45 = sub_2657F22A4();
    v46 = sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    v111 = v44;
    v100 = v45;
    v99 = v46;
    sub_2657F2464();
    LODWORD(v108) = *(v39 + *(v10 + 24));
    sub_2657F28F4();
    v47 = sub_2657F2904();
    v48 = -1 << *(v40 + 32);
    v8 = v47 & ~v48;
    v22 = v8 >> 6;
    v10 = 1 << v8;
    if (((1 << v8) & v118[v8 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_2657EF854(v112, type metadata accessor for RecordMetadata);
    v27 = v110;
    v25 = v109;
    a1 = v104;
    v10 = v115;
  }

  v49 = ~v48;
  v117 = v96[9];
  while (1)
  {
    sub_2657EF7EC(*(v119 + 48) + v117 * v8, v18, type metadata accessor for RecordMetadata);
    v50 = v18[2];
    v51 = v18[3];
    v52 = *v18 == v43 && v18[1] == v2;
    if (v52 || (sub_2657F2864() & 1) != 0)
    {
      v53 = v50 == v116 && v51 == v113;
      if (v53 || (sub_2657F2864()) && (sub_2657F2274())
      {
        break;
      }
    }

    sub_2657EF854(v18, type metadata accessor for RecordMetadata);
LABEL_20:
    v8 = (v8 + 1) & v49;
    v22 = v8 >> 6;
    v10 = 1 << v8;
    if ((v118[v8 >> 6] & (1 << v8)) == 0)
    {
      goto LABEL_6;
    }
  }

  v54 = *(v18 + *(v115 + 24));
  sub_2657EF854(v18, type metadata accessor for RecordMetadata);
  if (v108 != v54)
  {
    goto LABEL_20;
  }

  v55 = sub_2657EF854(v112, type metadata accessor for RecordMetadata);
  v25 = v119;
  v56 = *(v119 + 32);
  v95 = ((1 << v56) + 63) >> 6;
  v26 = 8 * v95;
  v27 = v97;
  v2 = v115;
  if ((v56 & 0x3Fu) > 0xD)
  {
    goto LABEL_80;
  }

  while (1)
  {
    v96 = &v93;
    MEMORY[0x28223BE20](v55);
    v58 = &v93 - ((v57 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v58, v118, v57);
    v59 = *&v58[8 * v22] & ~v10;
    v60 = *(v25 + 16);
    v111 = v58;
    *&v58[8 * v22] = v59;
    v61 = v60 - 1;
    v62 = v104;
    v8 = i;
    v63 = v98;
    v64 = v110;
    v10 = v109;
LABEL_37:
    v108 = v61;
LABEL_39:
    while (2)
    {
      if (v10)
      {
        v65 = v64;
LABEL_49:
        v68 = __clz(__rbit64(v10));
        v69 = (v10 - 1) & v10;
        sub_2657EF7EC(*(v62 + 48) + (v68 | (v65 << 6)) * v117, v27, type metadata accessor for RecordMetadata);
        v70 = 0;
LABEL_50:
        v102(v27, v70, 1, v2);
        v120 = v62;
        v121 = v8;
        v122 = v107;
        v123 = v64;
        v124 = v69;
        if (v101(v27, 1, v2) == 1)
        {
          sub_2657CC304(v27, &unk_280023C10, &qword_2657F4100);
          v88 = sub_2657EE3D8(v111, v95, v108, v25);
          goto LABEL_74;
        }

        v109 = v69;
        v110 = v64;
        v71 = v114;
        sub_2657F03E8(v27, v114, type metadata accessor for RecordMetadata);
        sub_2657F28D4();
        v72 = *v71;
        v22 = v71[1];
        v73 = v71[2];
        v74 = v71[3];
        sub_2657F24C4();
        v116 = v73;
        v75 = v74;
        sub_2657F24C4();
        v113 = *(v2 + 20);
        sub_2657F2464();
        LODWORD(v112) = *(v71 + *(v2 + 24));
        sub_2657F28F4();
        v76 = sub_2657F2904();
        v77 = -1 << *(v25 + 32);
        v78 = v76 & ~v77;
        v79 = v78 >> 6;
        v80 = 1 << v78;
        if (((1 << v78) & v118[v78 >> 6]) == 0)
        {
LABEL_38:
          sub_2657EF854(v114, type metadata accessor for RecordMetadata);
          v25 = v119;
          v62 = v104;
          v27 = v97;
          v2 = v115;
          v8 = i;
          v63 = v98;
          v64 = v110;
          v10 = v109;
          continue;
        }

        v81 = ~v77;
        while (1)
        {
          sub_2657EF7EC(*(v119 + 48) + v78 * v117, v13, type metadata accessor for RecordMetadata);
          v82 = v13[2];
          v83 = v13[3];
          v84 = *v13 == v72 && v13[1] == v22;
          if (v84 || (sub_2657F2864()) && (v82 == v116 ? (v85 = v83 == v75) : (v85 = 0), (v85 || (sub_2657F2864()) && (sub_2657F2274()))
          {
            v86 = *(v13 + *(v115 + 24));
            sub_2657EF854(v13, type metadata accessor for RecordMetadata);
            if (v112 == v86)
            {
              sub_2657EF854(v114, type metadata accessor for RecordMetadata);
              v87 = v111[v79];
              v111[v79] = v87 & ~v80;
              v52 = (v87 & v80) == 0;
              v25 = v119;
              v62 = v104;
              v27 = v97;
              v2 = v115;
              v8 = i;
              v63 = v98;
              v64 = v110;
              v10 = v109;
              if (!v52)
              {
                v61 = v108 - 1;
                if (__OFSUB__(v108, 1))
                {
                  __break(1u);
                }

                if (v108 == 1)
                {

                  v88 = MEMORY[0x277D84FA0];
                  goto LABEL_74;
                }

                goto LABEL_37;
              }

              goto LABEL_39;
            }
          }

          else
          {
            sub_2657EF854(v13, type metadata accessor for RecordMetadata);
          }

          v78 = (v78 + 1) & v81;
          v79 = v78 >> 6;
          v80 = 1 << v78;
          if ((v118[v78 >> 6] & (1 << v78)) == 0)
          {
            goto LABEL_38;
          }
        }
      }

      break;
    }

    v66 = v63 <= v64 + 1 ? v64 + 1 : v63;
    v67 = v66 - 1;
    while (1)
    {
      v65 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        break;
      }

      if (v65 >= v63)
      {
        v69 = 0;
        v70 = 1;
        v64 = v67;
        goto LABEL_50;
      }

      v10 = *(v8 + 8 * v65);
      ++v64;
      if (v10)
      {
        v64 = v65;
        goto LABEL_49;
      }
    }

    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    v90 = v26;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v91 = swift_slowAlloc();
  memcpy(v91, v118, v90);
  v92 = v94;
  v88 = sub_2657EDE28(v91, v95, v25, v8, &v120);

  if (v92)
  {

    result = MEMORY[0x266760A30](v91, -1, -1);
    __break(1u);
  }

  else
  {

    MEMORY[0x266760A30](v91, -1, -1);
LABEL_74:
    sub_2657EF988();
    return v88;
  }

  return result;
}

uint64_t sub_2657EDE28(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v54 - v10;
  v66 = type metadata accessor for RecordMetadata(0);
  v12 = MEMORY[0x28223BE20](v66);
  v14 = (&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v12);
  v65 = (&v54 - v16);
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18) & ((-1 << a4) - 1);
  v57 = a1;
  *(a1 + v18) = v19;
  v20 = v17 - 1;
  v61 = (v21 + 56);
  v62 = v21;
  v59 = a5;
  v60 = (v21 + 48);
  v68 = a3 + 56;
  v69 = a3;
  v58 = v11;
LABEL_2:
  v56 = v20;
LABEL_4:
  while (2)
  {
    v22 = *a5;
    v23 = a5[1];
    v25 = a5[2];
    v24 = a5[3];
    v26 = a5[4];
    if (v26)
    {
      v27 = a5[3];
LABEL_13:
      v31 = (v26 - 1) & v26;
      sub_2657EF7EC(*(v22 + 48) + *(v62 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v11, type metadata accessor for RecordMetadata);
      v32 = 0;
      v30 = v27;
LABEL_14:
      v33 = v66;
      (*v61)(v11, v32, 1, v66);
      *a5 = v22;
      a5[1] = v23;
      a5[2] = v25;
      a5[3] = v30;
      a5[4] = v31;
      if ((*v60)(v11, 1, v33) == 1)
      {
        sub_2657CC304(v11, &unk_280023C10, &qword_2657F4100);
        v53 = v69;

        return sub_2657EE3D8(v57, v55, v56, v53);
      }

      v34 = v65;
      sub_2657F03E8(v11, v65, type metadata accessor for RecordMetadata);
      v35 = v69;
      sub_2657F28D4();
      v36 = *v34;
      v37 = v34[1];
      v38 = v34[2];
      v39 = v34[3];
      sub_2657F24C4();
      v71 = v38;
      v70 = v39;
      sub_2657F24C4();
      v40 = *(v33 + 20);
      sub_2657F22A4();
      sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
      v64 = v40;
      sub_2657F2464();
      v63 = *(v34 + *(v33 + 24));
      sub_2657F28F4();
      v41 = sub_2657F2904();
      v42 = -1 << *(v35 + 32);
      v43 = v41 & ~v42;
      v44 = v43 >> 6;
      v45 = 1 << v43;
      if (((1 << v43) & *(v68 + 8 * (v43 >> 6))) == 0)
      {
LABEL_3:
        result = sub_2657EF854(v65, type metadata accessor for RecordMetadata);
        a5 = v59;
        v11 = v58;
        continue;
      }

      v67 = ~v42;
      v46 = *(v62 + 72);
      while (1)
      {
        sub_2657EF7EC(*(v69 + 48) + v46 * v43, v14, type metadata accessor for RecordMetadata);
        v47 = v14[2];
        v48 = v14[3];
        v49 = *v14 == v36 && v14[1] == v37;
        if (v49 || (sub_2657F2864()) && (v47 == v71 ? (v50 = v48 == v70) : (v50 = 0), (v50 || (sub_2657F2864()) && (sub_2657F2274()))
        {
          v51 = *(v14 + *(v66 + 24));
          sub_2657EF854(v14, type metadata accessor for RecordMetadata);
          if (v63 == v51)
          {
            result = sub_2657EF854(v65, type metadata accessor for RecordMetadata);
            v52 = v57[v44];
            v57[v44] = v52 & ~v45;
            a5 = v59;
            v11 = v58;
            if ((v52 & v45) != 0)
            {
              v20 = v56 - 1;
              if (__OFSUB__(v56, 1))
              {
                goto LABEL_40;
              }

              if (v56 == 1)
              {
                return MEMORY[0x277D84FA0];
              }

              goto LABEL_2;
            }

            goto LABEL_4;
          }
        }

        else
        {
          sub_2657EF854(v14, type metadata accessor for RecordMetadata);
        }

        v43 = (v43 + 1) & v67;
        v44 = v43 >> 6;
        v45 = 1 << v43;
        if ((*(v68 + 8 * (v43 >> 6)) & (1 << v43)) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    break;
  }

  v28 = (v25 + 64) >> 6;
  if (v28 <= v24 + 1)
  {
    v29 = v24 + 1;
  }

  else
  {
    v29 = (v25 + 64) >> 6;
  }

  v30 = v29 - 1;
  while (1)
  {
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v27 >= v28)
    {
      v31 = 0;
      v32 = 1;
      goto LABEL_14;
    }

    v26 = *(v23 + 8 * v27);
    ++v24;
    if (v26)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2657EE3D8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RecordMetadata(0);
  v30 = *(v8 - 8);
  v31 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C30, &qword_2657F4188);
  result = sub_2657F26E4();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v29 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v32 = (v13 - 1) & v13;
LABEL_16:
    v19 = *(a4 + 48);
    v33 = *(v30 + 72);
    sub_2657EF7EC(v19 + v33 * (v16 | (v14 << 6)), v10, type metadata accessor for RecordMetadata);
    sub_2657F28D4();
    sub_2657F24C4();
    sub_2657F24C4();
    sub_2657F22A4();
    sub_2657EF918(&unk_280023C20, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
    sub_2657F2464();
    sub_2657F28F4();
    result = sub_2657F2904();
    v20 = -1 << *(v11 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      a4 = v29;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
    a4 = v29;
LABEL_26:
    *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = sub_2657F03E8(v10, *(v11 + 48) + v23 * v33, type metadata accessor for RecordMetadata);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v13 = v32;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v32 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_2657EE73C(uint64_t *a1)
{
  v1 = *a1;
  if ((*a1 & 1) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v2 = sub_2657F2344();
    __swift_project_value_buffer(v2, qword_281446410);
    v3 = sub_2657F2334();
    v4 = sub_2657F2584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2657B5000, v3, v4, "Sync engine is disabled because of unsupported device", v5, 2u);
      MEMORY[0x266760A30](v5, -1, -1);
    }
  }

  if ((v1 & 2) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v6 = sub_2657F2344();
    __swift_project_value_buffer(v6, qword_281446410);
    v7 = sub_2657F2334();
    v8 = sub_2657F2584();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_2657B5000, v7, v8, "Sync engine is disabled because of preference", v9, 2u);
      MEMORY[0x266760A30](v9, -1, -1);
    }
  }

  if ((~v1 & 3) == 0)
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v10 = sub_2657F2344();
    __swift_project_value_buffer(v10, qword_281446410);
    oslog = sub_2657F2334();
    v11 = sub_2657F2584();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_2657B5000, oslog, v11, "Sync engine is enabled", v12, 2u);
      MEMORY[0x266760A30](v12, -1, -1);
    }
  }
}

void *sub_2657EE9C4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v12 = v11;
  v68 = a4;
  v69 = a2;
  v70 = a3;
  v62 = a11;
  v63 = a6;
  v60 = a10;
  v61 = a5;
  v58 = a1;
  v59 = a9;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD0, &qword_2657F51A0);
  MEMORY[0x28223BE20](v15 - 8);
  v64 = &v52 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023BD8, &unk_2657F51A8);
  v18 = *(v17 - 8);
  v66 = v17;
  v67 = v18;
  MEMORY[0x28223BE20](v17);
  v65 = &v52 - v19;
  v20 = sub_2657F25B4();
  v53 = *(v20 - 8);
  v54 = v20;
  MEMORY[0x28223BE20](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2657F2594();
  MEMORY[0x28223BE20](v23);
  v24 = sub_2657F23E4();
  MEMORY[0x28223BE20](v24 - 8);
  v55 = *a7;
  v57 = *a8;
  v56 = sub_2657D0F44(0, &qword_281446370, 0x277D85C78);
  v52 = "ictionary=}12";
  sub_2657F23D4();
  v72 = MEMORY[0x277D84F90];
  sub_2657EF918(&qword_281446390, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BE0, &qword_2657F4220);
  sub_2657D53B4(&unk_2814463B0, &unk_280023BE0, &qword_2657F4220, MEMORY[0x277D83970]);
  sub_2657F2664();
  (*(v53 + 104))(v22, *MEMORY[0x277D85268], v54);
  v11[15] = sub_2657F25E4();
  v25 = MEMORY[0x277D84F98];
  v11[18] = MEMORY[0x277D84F98];
  v11[19] = 0;
  v11[21] = v25;
  v11[22] = v25;
  v11[23] = MEMORY[0x277D84FA0];
  type metadata accessor for UnfairLock();
  v11[25] = 0;
  v11[26] = 0;
  v11[24] = 0;
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  *v27 = 0;
  v12[28] = 0;
  v12[29] = 0;
  v12[27] = v26;
  *(v12 + 120) = 0;
  *(v12 + 16) = 0u;
  *(v12 + 17) = 0u;
  *(v12 + 18) = 0u;
  *(v12 + 19) = 0u;
  *(v12 + 20) = 0u;
  v29 = v69;
  v28 = v70;
  v12[3] = v58;
  v12[4] = v29;
  sub_2657BF854(v28, (v12 + 5));
  v30 = v68;
  sub_2657BF854(v68, (v12 + 10));
  v31 = v63;
  v12[16] = v61;
  v12[17] = v31;
  *(v12 + 16) = v55;
  v32 = v60;
  v12[20] = v59;
  v33 = v62;
  v12[25] = v32;
  v12[26] = v33;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();

  v34 = v57;
  v12[31] = v57;
  v35 = v30;
  v36 = v30[3];
  v37 = v35[4];
  __swift_project_boxed_opaque_existential_1(v35, v36);
  v38 = (*(v37 + 24))(v36, v37);
  v71 = v12[15];
  v39 = v71;
  v72 = v38;
  v40 = sub_2657F25A4();
  v41 = v64;
  (*(*(v40 - 8) + 56))(v64, 1, 1, v40);
  v42 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BF0, &qword_2657F51B8);
  sub_2657D53B4(&unk_2814463E8, &unk_280023BF0, &qword_2657F51B8, MEMORY[0x277CBCD90]);
  sub_2657EF098();
  v43 = v65;
  sub_2657F2384();
  sub_2657CC304(v41, &qword_280023BD0, &qword_2657F51A0);

  v44 = swift_allocObject();
  *(v44 + 16) = sub_2657F0704;
  *(v44 + 24) = v12;
  sub_2657D53B4(&unk_2814463F8, &qword_280023BD8, &unk_2657F51A8, MEMORY[0x277CBCD60]);

  v45 = v66;
  v46 = sub_2657F2394();

  (*(v67 + 8))(v43, v45);
  v12[24] = v46;

  v72 = v34;
  sub_2657EE73C(&v72);
  ObjectType = swift_getObjectType();
  v48 = v69;
  v49 = *(v69 + 8);

  v49(v50, &protocol witness table for SyncEngine, ObjectType, v48);

  __swift_destroy_boxed_opaque_existential_1(v70);
  __swift_destroy_boxed_opaque_existential_1(v68);
  return v12;
}

unint64_t sub_2657EF098()
{
  result = qword_281446380;
  if (!qword_281446380)
  {
    sub_2657D0F44(255, &qword_281446370, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281446380);
  }

  return result;
}

void sub_2657EF1D8()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 56);
  v4[0] = *(v0 + 40);
  v4[1] = v3;
  v5 = *(v0 + 72);
  sub_2657EFB10(v4, v1, v2);
}

void sub_2657EF26C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  v4 = *(v0 + 40);
  v5 = v3;
  sub_2657DC9B8(v1, v2, &v4);
}

unint64_t sub_2657EF2B8()
{
  result = qword_280023C00;
  if (!qword_280023C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C00);
  }

  return result;
}

uint64_t sub_2657EF6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 16);
  v8[1] = a5;
  v9 = a3;
  v8[0] = a4;
  return v6(a1, a2, &v9, v8);
}

uint64_t sub_2657EF700@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  result = SyncEngine._queue_syncService(_:shouldAcceptIncomingMessage:from:)(*(v2 + 24), a1, *(v2 + 40), *(v2 + 48), *(v2 + 56));
  *a2 = result & 1;
  return result;
}

uint64_t objectdestroy_213Tm(uint64_t a1)
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2657EF7EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2657EF854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2657EF918(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2657EF978(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t sub_2657EF9A8()
{
  v1 = sub_2657F2414();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v13[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + 120);
  *v4 = v5;
  (*(v2 + 104))(v4, *MEMORY[0x277D85200], v1);
  v6 = v5;
  LOBYTE(v5) = sub_2657F2434();
  result = (*(v2 + 8))(v4, v1);
  if (v5)
  {
    v8 = *(*(v0 + 216) + 16);

    os_unfair_lock_lock(v8);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 240);

    os_unfair_lock_unlock(v8);

    if (v9)
    {
      v13[0] = v10;
      v13[1] = v9;
      v14 = v11 & 0x1FF;
      sub_2657EB840(v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_2657EFB10(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a2;
  v44 = a3;
  v6 = sub_2657F2414();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = (&v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *a1;
  v11 = *(a1 + 1);
  v12 = *(a1 + 2);
  v14 = *(a1 + 3);
  v13 = *(a1 + 4);
  v15 = *(v4 + 120);
  *v9 = v15;
  (*(v7 + 104))(v9, *MEMORY[0x277D85200], v6);
  v16 = v15;
  LOBYTE(v15) = sub_2657F2434();
  (*(v7 + 8))(v9, v6);
  if ((v15 & 1) == 0)
  {
    __break(1u);
LABEL_25:
    swift_once();
    goto LABEL_6;
  }

  v17 = *(v4 + 104);
  v18 = *(v4 + 112);
  __swift_project_boxed_opaque_existential_1((v4 + 80), v17);
  if ((*(v18 + 16))(v17, v18))
  {
    if ((~*(v4 + 248) & 3) == 0)
    {
      LOBYTE(v45[0]) = v10;
      v45[1] = v11;
      v45[2] = v12;
      v45[3] = v14;
      v45[4] = v13;
      v20 = v43;
      v19 = v44;
      sub_2657DD5D4(v45, v43, v44);
      LOBYTE(v45[0]) = v10;
      sub_2657B8A48(v20, v19, v45);
      return;
    }

    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v29 = sub_2657F2344();
    __swift_project_value_buffer(v29, qword_281446410);

    v22 = sub_2657F2334();
    v23 = sub_2657F2574();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v45[0] = v25;
      *v24 = 136380675;
      v30 = *(v4 + 208);
      if (v30)
      {
        v31 = *(v4 + 200);
        v32 = v30;
      }

      else
      {
        v36 = IDSCopyLocalDeviceUniqueID();
        if (v36)
        {
          v37 = v36;
          v31 = sub_2657F2484();
          v32 = v38;
        }

        else
        {
          v31 = 0xD000000000000017;
          v32 = 0x80000002657F8510;
        }
      }

      v41 = sub_2657B7F9C(v31, v32, v45);

      *(v24 + 4) = v41;
      v40 = "(%{private}s) Will not handle message because sync is inactive";
LABEL_22:
      _os_log_impl(&dword_2657B5000, v22, v23, v40, v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x266760A30](v25, -1, -1);
      MEMORY[0x266760A30](v24, -1, -1);
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  if (qword_281446408 != -1)
  {
    goto LABEL_25;
  }

LABEL_6:
  v21 = sub_2657F2344();
  __swift_project_value_buffer(v21, qword_281446410);

  v22 = sub_2657F2334();
  v23 = sub_2657F2584();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45[0] = v25;
    *v24 = 136380675;
    v26 = *(v4 + 208);
    if (v26)
    {
      v27 = *(v4 + 200);
      v28 = v26;
    }

    else
    {
      v33 = IDSCopyLocalDeviceUniqueID();
      if (v33)
      {
        v34 = v33;
        v27 = sub_2657F2484();
        v28 = v35;
      }

      else
      {
        v27 = 0xD000000000000017;
        v28 = 0x80000002657F8510;
      }
    }

    v39 = sub_2657B7F9C(v27, v28, v45);

    *(v24 + 4) = v39;
    v40 = "(%{private}s) Will not handle message because keybag is locked";
    goto LABEL_22;
  }

LABEL_23:
}

uint64_t sub_2657EFF60(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, char *))
{
  v26 = a2;
  v35 = a4;
  v27 = a1;
  v34 = sub_2657F22A4();
  result = MEMORY[0x28223BE20](v34);
  v32 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = v6;
  v8 = 0;
  v36 = a3;
  v9 = *(a3 + 64);
  v28 = 0;
  v29 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v9;
  v13 = (v10 + 63) >> 6;
  v30 = v6 + 8;
  v31 = v6 + 16;
  v14 = v32;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v37 = (v12 - 1) & v12;
LABEL_11:
    v18 = v15 | (v8 << 6);
    v19 = (v36[6] + 16 * v18);
    v20 = *v19;
    v21 = v19[1];
    v23 = v33;
    v22 = v34;
    v24 = v18;
    (*(v33 + 16))(v14, v36[7] + *(v33 + 72) * v18, v34);

    LOBYTE(v20) = v35(v20, v21, v14);
    (*(v23 + 8))(v14, v22);

    v12 = v37;
    if (v20)
    {
      *(v27 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
        return sub_2657ECBEC(v27, v26, v28, v36);
      }
    }
  }

  v16 = v8;
  while (1)
  {
    v8 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v8 >= v13)
    {
      return sub_2657ECBEC(v27, v26, v28, v36);
    }

    v17 = *(v29 + 8 * v8);
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v37 = (v17 - 1) & v17;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_2657F01AC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, char *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_2657EFF60(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_2657EC7D8(v10, v6, v4, a2);
  result = MEMORY[0x266760A30](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_2657F032C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_2657F0394()
{
  result = qword_280023C90;
  if (!qword_280023C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C90);
  }

  return result;
}

uint64_t sub_2657F03E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_2657F0480()
{
  result = qword_280023CA0;
  if (!qword_280023CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023CA0);
  }

  return result;
}

uint64_t sub_2657F04D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023C10, &qword_2657F4100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t LinearRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = xmmword_2657F3400;
  return v0;
}

uint64_t LinearRetryTimer.init()()
{
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

void *LinearRetryTimer.__allocating_init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[6] = v5;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  return v4;
}

void *LinearRetryTimer.init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[6] = v5;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t LinearRetryTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t LinearRetryTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

SessionSyncEngine::SyncProtocolVersion_optional __swiftcall SyncProtocolVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_2657F0A80()
{
  result = qword_280023CA8;
  if (!qword_280023CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023CA8);
  }

  return result;
}

void *sub_2657F0AD4@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_2657F0C10()
{
  result = qword_280023CB0;
  if (!qword_280023CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023CB0);
  }

  return result;
}

uint64_t sub_2657F0C68()
{

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t sub_2657F0CDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280023BB0, &qword_2657F5148);
  sub_2657F0D38();
  return sub_2657F2374();
}

unint64_t sub_2657F0D38()
{
  result = qword_2814463D8;
  if (!qword_2814463D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280023BB0, &qword_2657F5148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814463D8);
  }

  return result;
}

uint64_t CustomizableRetryTimer.init()()
{
  *(v0 + 40) = 0;
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = 3;
  return v0;
}

void *CustomizableRetryTimer.init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v2[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v2[6] = v5;
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = a1;
  return v2;
}

uint64_t CustomizableRetryTimer.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_2657F0F74(void (*a1)(char *, os_log_t), uint64_t a2, uint64_t a3)
{
  v7 = *(*(v3 + 48) + 16);

  os_unfair_lock_lock(v7);
  sub_2657F1084(a1, a2, a3);
  os_unfair_lock_unlock(v7);
}

uint64_t sub_2657F1020(void (*a1)(void))
{
  v3 = *(*(v1 + 48) + 16);

  os_unfair_lock_lock(v3);
  a1();
  os_unfair_lock_unlock(v3);
}

void sub_2657F1084(void (*a1)(char *, os_log_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v58 = a3;
  v54 = a2;
  v61 = a1;
  v5 = sub_2657F23B4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v59 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2657F23E4();
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v56 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_2657F23A4();
  v53 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51);
  v52 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = (&v47 - v11);
  v63 = sub_2657F2404();
  isa = v63[-1].isa;
  v13 = MEMORY[0x28223BE20](v63);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v62 = &v47 - v16;
  v17 = sub_2657F25F4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v47 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  os_unfair_lock_assert_owner(*(v4[6] + 16));
  v21 = v4[4];
  v22 = v21 - 1;
  if (v21 >= 1)
  {
    v49 = v6;
    v50 = v5;
    v23 = (*(*v4 + 232))();
    v4[4] = v22;
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v24 = sub_2657F2344();
    __swift_project_value_buffer(v24, qword_281446410);
    v25 = sub_2657F2334();
    v26 = sub_2657F2584();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 134349056;
      *(v27 + 4) = v23;
      _os_log_impl(&dword_2657B5000, v25, v26, "Retry timer will fire in %{public}llus", v27, 0xCu);
      MEMORY[0x266760A30](v27, -1, -1);
    }

    sub_2657F1DC4();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_2657F1E10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280023C48, &unk_2657F5370);
    sub_2657F1E68();
    sub_2657F2664();
    v28 = sub_2657F2604();
    (*(v18 + 8))(v20, v17);
    sub_2657F23F4();
    if ((v23 & 0x8000000000000000) == 0)
    {
      *v12 = v23;
      v29 = *MEMORY[0x277D85188];
      v30 = v53;
      v48 = v4;
      v31 = v51;
      v32 = *(v53 + 104);
      v32(v12, v29, v51);
      MEMORY[0x26675FF40](v15, v12);
      v33 = *(v30 + 8);
      v33(v12, v31);
      v61 = *(isa + 1);
      v61(v15, v63);
      ObjectType = swift_getObjectType();
      *v12 = 10;
      v32(v12, v29, v31);
      v35 = v52;
      sub_2657EB10C(v52);
      v36 = v62;
      MEMORY[0x266760160](v62, v35, v12, ObjectType);
      v33(v35, v31);
      v33(v12, v31);
      v37 = swift_allocObject();
      v38 = v48;
      v39 = v54;
      v37[2] = v48;
      v37[3] = v39;
      v37[4] = v58;
      aBlock[4] = sub_2657F1ECC;
      aBlock[5] = v37;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2657CE9D4;
      aBlock[3] = &block_descriptor_2;
      v40 = _Block_copy(aBlock);

      v41 = v56;
      sub_2657EB4EC(ObjectType);
      v42 = v59;
      sub_2657EB4F0();
      sub_2657F2614();
      _Block_release(v40);
      (*(v49 + 8))(v42, v50);
      (*(v57 + 8))(v41, v60);

      v38[5] = v28;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      sub_2657F2634();
      swift_unknownObjectRelease_n();
      v61(v36, v63);
      return;
    }

    __break(1u);
    goto LABEL_15;
  }

  if (qword_281446408 != -1)
  {
LABEL_15:
    swift_once();
  }

  v43 = sub_2657F2344();
  __swift_project_value_buffer(v43, qword_281446410);
  v63 = sub_2657F2334();
  v44 = sub_2657F2574();
  if (os_log_type_enabled(v63, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_2657B5000, v63, v44, "Exhausted retry attempts; will not try again", v45, 2u);
    MEMORY[0x266760A30](v45, -1, -1);
  }

  v46 = v63;
}

void sub_2657F186C()
{
  v1 = v0;
  os_unfair_lock_assert_owner(*(*(v0 + 48) + 16));
  if (*(v0 + 40))
  {
    if (qword_281446408 != -1)
    {
      swift_once();
    }

    v2 = sub_2657F2344();
    __swift_project_value_buffer(v2, qword_281446410);
    v3 = sub_2657F2334();
    v4 = sub_2657F2584();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_2657B5000, v3, v4, "Cancelling retry timer", v5, 2u);
      MEMORY[0x266760A30](v5, -1, -1);
    }

    if (*(v1 + 40))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_2657F2624();
      swift_unknownObjectRelease();
    }

    *(v1 + 40) = 0;

    swift_unknownObjectRelease();
  }
}

uint64_t CustomizableRetryTimer.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *(v1 + 16) = v2;
  *v2 = 0;
  *(v0 + 48) = v1;
  *(v0 + 16) = xmmword_2657F3330;
  *(v0 + 32) = xmmword_2657F3400;
  return v0;
}

void *CustomizableRetryTimer.__allocating_init(maxRetries:retryTimeInSeconds:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[5] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v4[6] = v5;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a1;
  return v4;
}

uint64_t sub_2657F1AB0(uint64_t a1, uint64_t (*a2)(BOOL))
{
  v4 = *(*(a1 + 48) + 16);

  os_unfair_lock_lock(v4);
  sub_2657F1B4C(a1, &v6);
  os_unfair_lock_unlock(v4);

  return a2(v6);
}

void sub_2657F1B4C(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
    __break(1u);
  }

  else if (qword_281446408 == -1)
  {
    goto LABEL_3;
  }

  swift_once();
LABEL_3:
  v6 = sub_2657F2344();
  __swift_project_value_buffer(v6, qword_281446410);
  v7 = sub_2657F2334();
  v8 = sub_2657F2584();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    *(v9 + 4) = v5;
    _os_log_impl(&dword_2657B5000, v7, v8, "Retry timer fired (attempt #%{public}ld)", v9, 0xCu);
    MEMORY[0x266760A30](v9, -1, -1);
  }

  sub_2657F186C();
  *a2 = v4 == 0;
}

uint64_t CustomizableRetryTimer.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

unint64_t sub_2657F1DC4()
{
  result = qword_280023C38;
  if (!qword_280023C38)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280023C38);
  }

  return result;
}

unint64_t sub_2657F1E10()
{
  result = qword_280023C40;
  if (!qword_280023C40)
  {
    sub_2657F25F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C40);
  }

  return result;
}

unint64_t sub_2657F1E68()
{
  result = qword_280023C50;
  if (!qword_280023C50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280023C48, &unk_2657F5370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280023C50);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2657F1EF0()
{
  MEMORY[0x266760A30](*(v0 + 16), -1, -1);

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_2657F1F54()
{
  v0 = sub_2657F22E4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2657F2344();
  __swift_allocate_value_buffer(v4, qword_281446410);
  __swift_project_value_buffer(v4, qword_281446410);
  (*(v1 + 104))(v3, *MEMORY[0x277CB96A8], v0);
  return sub_2657F2324();
}

uint64_t static Logger.syncEngine.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_281446408 != -1)
  {
    swift_once();
  }

  v2 = sub_2657F2344();
  v3 = __swift_project_value_buffer(v2, qword_281446410);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}