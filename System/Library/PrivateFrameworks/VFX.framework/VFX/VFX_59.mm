uint64_t sub_1AF5BF4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v16 = *(v8 + 16);
  v17 = *(v8 + 24);

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v18 = sub_1AF65A4B4(v17, a6, a7, 0, 0, &v49, v56);

  sub_1AF5C43E8(v56, sub_1AF5C4448);
  sub_1AF5C43E8(&v49, sub_1AF5C4448);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC(v18) & 1) != 0)
  {
    return sub_1AF649D40(v18, a5);
  }

  v43 = *(v12 + 120);
  v20 = *(v12 + 28);
  v21 = *(v12 + 32);
  v22 = *(v12 + 40);
  v23 = *(v22 + 200);
  v48 = *(*(v16 + 88) + 8 * v18 + 32);

  if ((v23 & 1) != 0 || *(v48 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v22 = *(v12 + 40);
  }

  v47 = *(v12 + 128);
  v24 = *(v12 + 256);
  sub_1AF5B4FCC(v22, a1, a2, 0, v12);
  v45 = *(v12 + 256);
  v25 = v45 - v24;
  v44 = v24;
  if (v45 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v46 = v26;
  *&v56[0] = v26;
  v27 = *(*(v12 + 40) + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v42 = v12;
    v29 = v27 + 32;

    for (i = 0; i != v28; ++i)
    {
      v31 = (v29 + 40 * i);
      if ((v31[4] & 1) == 0)
      {
        v32 = *v31;
        v34 = v31[2];
        v33 = v31[3];
        v35 = *(v48 + 24);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = (v35 + 32);
          while (*v37 != v32)
          {
            v37 += 5;
            if (!--v36)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8(v47 + v34 * v46 + v33, v25);
        }
      }
    }

    v12 = v42;
  }

  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v25);
  }

  if (*(v12 + 184))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v12 + 168);
  }

  v55 = 0;

  MEMORY[0x1EEE9AC00](v39);
  DWORD2(v50) = -1;
  v51 = v44;
  v52 = v45;
  v53 = v44;
  v54 = v45;
  *&v49 = v44;
  *(&v49 + 1) = v45;
  *&v50 = v38;
  if (v25 >= 1)
  {
    do
    {
      sub_1AF6248A8(v18, v20 | (v21 << 32), v43, v16, &v49, a8);
    }

    while ((*(&v49 + 1) - v49) > 0);
  }

  v40 = *(v12 + 192);
  if (v40)
  {
    v41 = *(v12 + 208);
    sub_1AF75D364(v44, v45, v40);
    sub_1AF75D364(v44, v45, v41);
  }
}

uint64_t sub_1AF5BF9C8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v60 = a4;
  v62 = a2;
  v17 = *(v9 + 16);
  v18 = *(v9 + 24);

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v19 = sub_1AF65A4B4(v18, a7, a8, 0, 0, &v65, v72);

  sub_1AF5C43E8(v72, sub_1AF5C4448);
  sub_1AF5C43E8(&v65, sub_1AF5C4448);
  if (*(v12 + 240) - *(v12 + 232) == a3 && (sub_1AF649CEC(v19) & 1) != 0)
  {
    return sub_1AF649D40(v19, a6);
  }

  v57 = a7;
  v58 = a8;
  v59 = a6;
  v52 = *(v12 + 120);
  v21 = *(v12 + 28);
  v22 = *(v12 + 32);
  if (v60)
  {
    v23 = v60 + 8 * a5;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v12 + 40);
  v25 = v24[200];
  v63 = *(*(v17 + 88) + 8 * v19 + 32);

  if ((v25 & 1) != 0 || *(v63 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v24 = *(v12 + 40);
  }

  v26 = v24[212];
  v55 = v23;
  if (v26)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v63 + 212);
  }

  v27 = v62;
  v53 = v24[208];
  v62 = *(v12 + 128);
  v28 = *(v12 + 256);
  sub_1AF5B5880(v24, a1, v27, a3, 0, v12);
  v29 = *(v12 + 256);
  v30 = v29 - v28;
  v56 = v28;
  if (v29 == v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v61 = v31;
  *&v72[0] = v31;
  v32 = *(*(v12 + 40) + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v50 = v29;
    v51 = v12;
    v34 = v32 + 32;
    v49[1] = v32;

    for (i = 0; i != v33; ++i)
    {
      v36 = (v34 + 40 * i);
      if ((v36[4] & 1) == 0)
      {
        v37 = *v36;
        v39 = v36[2];
        v38 = v36[3];
        v40 = *(v63 + 24);
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = (v40 + 32);
          while (*v42 != v37)
          {
            v42 += 5;
            if (!--v41)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v62 + v39 * v61 + v38, v30);
        }
      }
    }

    v12 = v51;
    v29 = v50;
  }

  v43 = v56;
  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v30);
  }

  if (*(v12 + 184))
  {
    v44 = 0;
  }

  else
  {
    v44 = *(v12 + 168);
  }

  v71 = 0;

  MEMORY[0x1EEE9AC00](v45);
  *(&v65 + 1) = v29;
  *&v66 = v44;
  DWORD2(v66) = -1;
  v67 = v56;
  v68 = v29;
  v69 = v56;
  v70 = v29;
  *&v65 = v56;
  if (v30 < 1)
  {
  }

  else
  {
    v62 = v49;
    v46 = v52;
    do
    {
      v64 = v22;
      sub_1AF6248A8(v19, v21 | (v22 << 32), v46, v17, &v65, a9);
    }

    while ((*(&v65 + 1) - v65) > 0);
  }

  v47 = *(v12 + 192);
  if (v47)
  {
    v48 = *(v12 + 208);
    sub_1AF75D364(v43, v29, v47);
    sub_1AF75D364(v43, v29, v48);
  }
}

uint64_t sub_1AF5BFE98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v16 = *(v8 + 16);
  v17 = *(v8 + 24);

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v18 = sub_1AF65A4B4(v17, a6, a7, 0, 0, &v49, v56);

  sub_1AF5C43E8(v56, sub_1AF5C4448);
  sub_1AF5C43E8(&v49, sub_1AF5C4448);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC(v18) & 1) != 0)
  {
    return sub_1AF649D40(v18, a5);
  }

  v43 = *(v12 + 120);
  v20 = *(v12 + 28);
  v21 = *(v12 + 32);
  v22 = *(v12 + 40);
  v23 = *(v22 + 200);
  v48 = *(*(v16 + 88) + 8 * v18 + 32);

  if ((v23 & 1) != 0 || *(v48 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v22 = *(v12 + 40);
  }

  v47 = *(v12 + 128);
  v24 = *(v12 + 256);
  sub_1AF5B4FCC(v22, a1, a2, 0, v12);
  v45 = *(v12 + 256);
  v25 = v45 - v24;
  v44 = v24;
  if (v45 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v46 = v26;
  *&v56[0] = v26;
  v27 = *(*(v12 + 40) + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v42 = v12;
    v29 = v27 + 32;

    for (i = 0; i != v28; ++i)
    {
      v31 = (v29 + 40 * i);
      if ((v31[4] & 1) == 0)
      {
        v32 = *v31;
        v34 = v31[2];
        v33 = v31[3];
        v35 = *(v48 + 24);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = (v35 + 32);
          while (*v37 != v32)
          {
            v37 += 5;
            if (!--v36)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8(v47 + v34 * v46 + v33, v25);
        }
      }
    }

    v12 = v42;
  }

  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v25);
  }

  if (*(v12 + 184))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v12 + 168);
  }

  v55 = 0;

  MEMORY[0x1EEE9AC00](v39);
  DWORD2(v50) = -1;
  v51 = v44;
  v52 = v45;
  v53 = v44;
  v54 = v45;
  *&v49 = v44;
  *(&v49 + 1) = v45;
  *&v50 = v38;
  if (v25 >= 1)
  {
    do
    {
      sub_1AF6248A8(v18, v20 | (v21 << 32), v43, v16, &v49, a8);
    }

    while ((*(&v49 + 1) - v49) > 0);
  }

  v40 = *(v12 + 192);
  if (v40)
  {
    v41 = *(v12 + 208);
    sub_1AF75D364(v44, v45, v40);
    sub_1AF75D364(v44, v45, v41);
  }
}

uint64_t sub_1AF5C0700(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t (*a8)(uint64_t), uint64_t a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t))
{
  v11 = v10;
  sub_1AF5C5A68(0, a7, a8, a9);
  v16 = v15;
  v17 = *(v10 + 16);
  v18 = *(v10 + 24);

  v54 = 0;
  v52 = 0u;
  v53 = 0u;
  v60 = 0;
  memset(v59, 0, sizeof(v59));
  v19 = sub_1AF65A4B4(v18, v16, &off_1F2559388, 0, 0, &v52, v59);

  sub_1AF5C43E8(v59, sub_1AF5C4448);
  sub_1AF5C43E8(&v52, sub_1AF5C4448);
  if (*(v11 + 240) - *(v11 + 232) == a3 && (sub_1AF649CEC(v19) & 1) != 0)
  {
    return sub_1AF649D40(v19, a6);
  }

  v48 = a3;
  v21 = a2;
  v45 = *(v11 + 120);
  v22 = *(v11 + 28);
  v23 = *(v11 + 32);
  v24 = *(v11 + 40);
  v25 = *(v24 + 200);
  v51 = *(*(v17 + 88) + 8 * v19 + 32);

  if ((v25 & 1) != 0 || *(v51 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v24 = *(v11 + 40);
  }

  v50 = *(v11 + 128);
  v26 = *(v11 + 256);
  sub_1AF5B5880(v24, a1, v21, v48, 0, v11);
  v46 = *(v11 + 256);
  v27 = v46 - v26;
  if (v46 == v26)
  {
    v28 = 0;
  }

  else
  {
    v28 = v26;
  }

  v49 = v28;
  *&v59[0] = v28;
  v29 = *(*(v11 + 40) + 24);
  v30 = *(v29 + 16);
  if (v30)
  {
    v44 = v26;
    v31 = v29 + 32;

    for (i = 0; i != v30; ++i)
    {
      v33 = (v31 + 40 * i);
      if ((v33[4] & 1) == 0)
      {
        v34 = *v33;
        v36 = v33[2];
        v35 = v33[3];
        v37 = *(v51 + 24);
        v38 = *(v37 + 16);
        if (v38)
        {
          v39 = (v37 + 32);
          while (*v39 != v34)
          {
            v39 += 5;
            if (!--v38)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8(v50 + v36 * v49 + v35, v27);
        }
      }
    }

    v26 = v44;
  }

  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v11 + 72) * v27);
  }

  if (*(v11 + 184))
  {
    v40 = 0;
  }

  else
  {
    v40 = *(v11 + 168);
  }

  v58 = 0;

  MEMORY[0x1EEE9AC00](v41);
  DWORD2(v53) = -1;
  v54 = v26;
  v55 = v46;
  v56 = v26;
  v57 = v46;
  *&v52 = v26;
  *(&v52 + 1) = v46;
  *&v53 = v40;
  if (v27 >= 1)
  {
    do
    {
      sub_1AF6248A8(v19, v22 | (v23 << 32), v45, v17, &v52, a10);
    }

    while ((*(&v52 + 1) - v52) > 0);
  }

  v42 = *(v11 + 192);
  if (v42)
  {
    v43 = *(v11 + 208);
    sub_1AF75D364(v26, v46, v42);
    sub_1AF75D364(v26, v46, v43);
  }
}

uint64_t sub_1AF5C0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v10 = v9;
  sub_1AF5C5A68(0, a6, a7, a8);
  v15 = v14;
  v16 = *(v9 + 16);
  v17 = *(v9 + 24);

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v18 = sub_1AF65A4B4(v17, v15, &off_1F2559388, 0, 0, &v49, v56);

  sub_1AF5C43E8(v56, sub_1AF5C4448);
  sub_1AF5C43E8(&v49, sub_1AF5C4448);
  if (a2 - a1 == *(v10 + 240) - *(v10 + 232) && (sub_1AF649CEC(v18) & 1) != 0)
  {
    return sub_1AF649D40(v18, a5);
  }

  v44 = *(v10 + 120);
  v20 = *(v10 + 28);
  v21 = *(v10 + 32);
  v22 = *(v10 + 40);
  v23 = *(v22 + 200);
  v48 = *(*(v16 + 88) + 8 * v18 + 32);

  if ((v23 & 1) != 0 || *(v48 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v22 = *(v10 + 40);
  }

  v47 = *(v10 + 128);
  v24 = a1;
  v25 = *(v10 + 256);
  sub_1AF5B4FCC(v22, v24, a2, 0, v10);
  v45 = *(v10 + 256);
  v26 = v45 - v25;
  if (v45 == v25)
  {
    v27 = 0;
  }

  else
  {
    v27 = v25;
  }

  v46 = v27;
  *&v56[0] = v27;
  v28 = *(*(v10 + 40) + 24);
  v29 = *(v28 + 16);
  if (v29)
  {
    v43 = v25;
    v30 = v28 + 32;

    for (i = 0; i != v29; ++i)
    {
      v32 = (v30 + 40 * i);
      if ((v32[4] & 1) == 0)
      {
        v33 = *v32;
        v35 = v32[2];
        v34 = v32[3];
        v36 = *(v48 + 24);
        v37 = *(v36 + 16);
        if (v37)
        {
          v38 = (v36 + 32);
          while (*v38 != v33)
          {
            v38 += 5;
            if (!--v37)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8(v47 + v35 * v46 + v34, v26);
        }
      }
    }

    v25 = v43;
  }

  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v10 + 72) * v26);
  }

  if (*(v10 + 184))
  {
    v39 = 0;
  }

  else
  {
    v39 = *(v10 + 168);
  }

  v55 = 0;

  MEMORY[0x1EEE9AC00](v40);
  DWORD2(v50) = -1;
  v51 = v25;
  v52 = v45;
  v53 = v25;
  v54 = v45;
  *&v49 = v25;
  *(&v49 + 1) = v45;
  *&v50 = v39;
  if (v26 >= 1)
  {
    do
    {
      sub_1AF6248A8(v18, v20 | (v21 << 32), v44, v16, &v49, a9);
    }

    while ((*(&v49 + 1) - v49) > 0);
  }

  v41 = *(v10 + 192);
  if (v41)
  {
    v42 = *(v10 + 208);
    sub_1AF75D364(v25, v45, v41);
    sub_1AF75D364(v25, v45, v42);
  }
}

uint64_t sub_1AF5C1144(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v60 = a4;
  v62 = a2;
  v17 = *(v9 + 16);
  v18 = *(v9 + 24);

  v67 = 0;
  v65 = 0u;
  v66 = 0u;
  v73 = 0;
  memset(v72, 0, sizeof(v72));
  v19 = sub_1AF65A4B4(v18, a7, a8, 0, 0, &v65, v72);

  sub_1AF5C43E8(v72, sub_1AF5C4448);
  sub_1AF5C43E8(&v65, sub_1AF5C4448);
  if (*(v12 + 240) - *(v12 + 232) == a3 && (sub_1AF649CEC(v19) & 1) != 0)
  {
    return sub_1AF649D40(v19, a6);
  }

  v57 = a7;
  v58 = a8;
  v59 = a6;
  v52 = *(v12 + 120);
  v21 = *(v12 + 28);
  v22 = *(v12 + 32);
  if (v60)
  {
    v23 = v60 + 4 * a5;
  }

  else
  {
    v23 = 0;
  }

  v24 = *(v12 + 40);
  v25 = v24[200];
  v63 = *(*(v17 + 88) + 8 * v19 + 32);

  if ((v25 & 1) != 0 || *(v63 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v24 = *(v12 + 40);
  }

  v26 = v24[212];
  v55 = v23;
  if (v26)
  {
    v54 = 0;
  }

  else
  {
    v54 = *(v63 + 212);
  }

  v27 = v62;
  v53 = v24[208];
  v62 = *(v12 + 128);
  v28 = *(v12 + 256);
  sub_1AF5B5880(v24, a1, v27, a3, 0, v12);
  v29 = *(v12 + 256);
  v30 = v29 - v28;
  v56 = v28;
  if (v29 == v28)
  {
    v31 = 0;
  }

  else
  {
    v31 = v28;
  }

  v61 = v31;
  *&v72[0] = v31;
  v32 = *(*(v12 + 40) + 24);
  v33 = *(v32 + 16);
  if (v33)
  {
    v50 = v29;
    v51 = v12;
    v34 = v32 + 32;
    v49[1] = v32;

    for (i = 0; i != v33; ++i)
    {
      v36 = (v34 + 40 * i);
      if ((v36[4] & 1) == 0)
      {
        v37 = *v36;
        v39 = v36[2];
        v38 = v36[3];
        v40 = *(v63 + 24);
        v41 = *(v40 + 16);
        if (v41)
        {
          v42 = (v40 + 32);
          while (*v42 != v37)
          {
            v42 += 5;
            if (!--v41)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v62 + v39 * v61 + v38, v30);
        }
      }
    }

    v12 = v51;
    v29 = v50;
  }

  v43 = v56;
  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v30);
  }

  if (*(v12 + 184))
  {
    v44 = 0;
  }

  else
  {
    v44 = *(v12 + 168);
  }

  v71 = 0;

  MEMORY[0x1EEE9AC00](v45);
  *(&v65 + 1) = v29;
  *&v66 = v44;
  DWORD2(v66) = -1;
  v67 = v56;
  v68 = v29;
  v69 = v56;
  v70 = v29;
  *&v65 = v56;
  if (v30 < 1)
  {
  }

  else
  {
    v62 = v49;
    v46 = v52;
    do
    {
      v64 = v22;
      sub_1AF6248A8(v19, v21 | (v22 << 32), v46, v17, &v65, a9);
    }

    while ((*(&v65 + 1) - v65) > 0);
  }

  v47 = *(v12 + 192);
  if (v47)
  {
    v48 = *(v12 + 208);
    sub_1AF75D364(v43, v29, v47);
    sub_1AF75D364(v43, v29, v48);
  }
}

uint64_t sub_1AF5C1614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v16 = *(v8 + 16);
  v17 = *(v8 + 24);

  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v57 = 0;
  memset(v56, 0, sizeof(v56));
  v18 = sub_1AF65A4B4(v17, a6, a7, 0, 0, &v49, v56);

  sub_1AF5C43E8(v56, sub_1AF5C4448);
  sub_1AF5C43E8(&v49, sub_1AF5C4448);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC(v18) & 1) != 0)
  {
    return sub_1AF649D40(v18, a5);
  }

  v43 = *(v12 + 120);
  v20 = *(v12 + 28);
  v21 = *(v12 + 32);
  v22 = *(v12 + 40);
  v23 = *(v22 + 200);
  v48 = *(*(v16 + 88) + 8 * v18 + 32);

  if ((v23 & 1) != 0 || *(v48 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v22 = *(v12 + 40);
  }

  v47 = *(v12 + 128);
  v24 = *(v12 + 256);
  sub_1AF5B4FCC(v22, a1, a2, 0, v12);
  v45 = *(v12 + 256);
  v25 = v45 - v24;
  v44 = v24;
  if (v45 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v46 = v26;
  *&v56[0] = v26;
  v27 = *(*(v12 + 40) + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v42 = v12;
    v29 = v27 + 32;

    for (i = 0; i != v28; ++i)
    {
      v31 = (v29 + 40 * i);
      if ((v31[4] & 1) == 0)
      {
        v32 = *v31;
        v34 = v31[2];
        v33 = v31[3];
        v35 = *(v48 + 24);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = (v35 + 32);
          while (*v37 != v32)
          {
            v37 += 5;
            if (!--v36)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
LABEL_12:
          sub_1AF640BC8(v47 + v34 * v46 + v33, v25);
        }
      }
    }

    v12 = v42;
  }

  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v25);
  }

  if (*(v12 + 184))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v12 + 168);
  }

  v55 = 0;

  MEMORY[0x1EEE9AC00](v39);
  DWORD2(v50) = -1;
  v51 = v44;
  v52 = v45;
  v53 = v44;
  v54 = v45;
  *&v49 = v44;
  *(&v49 + 1) = v45;
  *&v50 = v38;
  if (v25 >= 1)
  {
    do
    {
      sub_1AF6248A8(v18, v20 | (v21 << 32), v43, v16, &v49, a8);
    }

    while ((*(&v49 + 1) - v49) > 0);
  }

  v40 = *(v12 + 192);
  if (v40)
  {
    v41 = *(v12 + 208);
    sub_1AF75D364(v44, v45, v40);
    sub_1AF75D364(v44, v45, v41);
  }
}

uint64_t sub_1AF5C1B20(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v14 = sub_1AF65A4B4(v13, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v57, v64);

  sub_1AF5C43E8(v64, sub_1AF5C4448);
  sub_1AF5C43E8(&v57, sub_1AF5C4448);
  v15 = *(v7 + 192);
  if (v15 && a3)
  {
    v16 = *(v7 + 208);
    v17 = a1;
    v18 = a3;
    do
    {
      v19 = *v17++;
      *(v15 + 8 * (v19 >> 6)) |= 1 << v19;
      --v18;
    }

    while (v18);
    v20 = a1;
    v21 = a3;
    do
    {
      v22 = *v20++;
      *(v16 + 8 * (v22 >> 6)) &= (-1 << v22) - 1;
      --v21;
    }

    while (v21);
  }

  sub_1AF5C3B0C(*(v7 + 40), v7, a1, a2, a3, a6);
  if (*(v7 + 240) - *(v7 + 232) == a3 && (sub_1AF649CEC(v14) & 1) != 0)
  {
    return sub_1AF649D40(v14, a6);
  }

  v24 = a1;
  v53 = a2;
  v25 = *(v7 + 120);
  v26 = *(v7 + 28);
  v27 = *(v7 + 32);
  v52 = v14;
  v28 = *(v12 + 88) + 8 * v14;
  v29 = *(v7 + 40);
  v30 = *(v29 + 200);
  v56 = *(v28 + 32);

  if ((v30 & 1) != 0 || *(v56 + 200) == 1)
  {
    *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v29 = *(v7 + 40);
  }

  v55 = *(v7 + 128);
  v31 = *(v7 + 256);
  sub_1AF5B5880(v29, v24, v53, a3, 0, v7);
  v50 = *(v7 + 256);
  v32 = v50 - v31;
  v51 = v31;
  if (v50 == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  v54 = v33;
  *&v64[0] = v33;
  v34 = *(*(v7 + 40) + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v49 = v7;
    v36 = v34 + 32;

    for (i = 0; i != v35; ++i)
    {
      v38 = (v36 + 40 * i);
      if ((v38[4] & 1) == 0)
      {
        v39 = *v38;
        v41 = v38[2];
        v40 = v38[3];
        v42 = *(v56 + 24);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 32);
          while (*v44 != v39)
          {
            v44 += 5;
            if (!--v43)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v55 + v41 * v54 + v40, v32);
        }
      }
    }

    v7 = v49;
  }

  if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v32);
  }

  if (*(v7 + 184))
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v7 + 168);
  }

  v63 = 0;

  MEMORY[0x1EEE9AC00](v46);
  *(&v57 + 1) = v50;
  *&v58 = v45;
  DWORD2(v58) = -1;
  v59 = v51;
  v60 = v50;
  v61 = v51;
  v62 = v50;
  *&v57 = v51;
  if (v32 >= 1)
  {
    do
    {
      sub_1AF6248A8(v52, v26 | (v27 << 32), v25, v12, &v57, sub_1AF5C5E08);
    }

    while ((*(&v57 + 1) - v57) > 0);
  }

  v47 = *(v7 + 192);
  if (v47)
  {
    v48 = *(v7 + 208);
    sub_1AF75D364(v51, v50, v47);
    sub_1AF75D364(v51, v50, v48);
  }
}

uint64_t sub_1AF5C204C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v12 = sub_1AF65A4B4(v11, &type metadata for TextureLoadingOptions, &off_1F2543FE0, 0, 0, &v48, v55);

  sub_1AF5C43E8(v55, sub_1AF5C4448);
  sub_1AF5C43E8(&v48, sub_1AF5C4448);
  v13 = *(v6 + 192);
  if (v13 && a2 != a1)
  {
    v14 = *(v6 + 208);
    v15 = a1;
    do
    {
      *(v13 + 8 * (v15 >> 6)) |= 1 << v15;
      ++v15;
    }

    while (a2 != v15);
    v16 = a1;
    do
    {
      *(v14 + 8 * (v16 >> 6)) &= (-1 << v16) - 1;
      ++v16;
    }

    while (a2 != v16);
  }

  sub_1AF705690(a1, a2);
  if (a2 - a1 == *(v6 + 240) - *(v6 + 232) && (sub_1AF649CEC(v12) & 1) != 0)
  {
    return sub_1AF649D40(v12, a5);
  }

  v18 = *(v6 + 120);
  v19 = *(v6 + 28);
  v20 = *(v6 + 32);
  v44 = v12;
  v21 = *(v10 + 88) + 8 * v12;
  v22 = *(v6 + 40);
  v23 = *(v22 + 200);
  v47 = *(v21 + 32);

  if ((v23 & 1) != 0 || *(v47 + 200) == 1)
  {
    *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v22 = *(v6 + 40);
  }

  v46 = *(v6 + 128);
  v24 = *(v6 + 256);
  sub_1AF5B4FCC(v22, a1, a2, 0, v6);
  v42 = *(v6 + 256);
  v25 = v42 - v24;
  v43 = v24;
  if (v42 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v45 = v26;
  *&v55[0] = v26;
  v27 = *(*(v6 + 40) + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;

    for (i = 0; i != v28; ++i)
    {
      v31 = (v29 + 40 * i);
      if ((v31[4] & 1) == 0)
      {
        v32 = *v31;
        v34 = v31[2];
        v33 = v31[3];
        v35 = *(v47 + 24);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = (v35 + 32);
          while (*v37 != v32)
          {
            v37 += 5;
            if (!--v36)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v46 + v34 * v45 + v33, v25);
        }
      }
    }
  }

  if (*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v6 + 72) * v25);
  }

  if (*(v6 + 184))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v6 + 168);
  }

  v54 = 0;

  MEMORY[0x1EEE9AC00](v39);
  *(&v48 + 1) = v42;
  *&v49 = v38;
  DWORD2(v49) = -1;
  v50 = v43;
  v51 = v42;
  v52 = v43;
  v53 = v42;
  *&v48 = v43;
  if (v25 >= 1)
  {
    do
    {
      sub_1AF6248A8(v44, v19 | (v20 << 32), v18, v10, &v48, sub_1AF5C5E08);
    }

    while ((*(&v48 + 1) - v48) > 0);
  }

  v40 = *(v6 + 192);
  if (v40)
  {
    v41 = *(v6 + 208);
    sub_1AF75D364(v43, v42, v40);
    sub_1AF75D364(v43, v42, v41);
  }
}

uint64_t sub_1AF5C2558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v12 = *(v6 + 16);
  v13 = *(v6 + 24);

  v59 = 0;
  v57 = 0u;
  v58 = 0u;
  v65 = 0;
  memset(v64, 0, sizeof(v64));
  v14 = sub_1AF65A4B4(v13, &type metadata for TextureLoadPolicy, &off_1F2543D30, 0, 0, &v57, v64);

  sub_1AF5C43E8(v64, sub_1AF5C4448);
  sub_1AF5C43E8(&v57, sub_1AF5C4448);
  v15 = *(v7 + 192);
  if (v15 && a3)
  {
    v16 = *(v7 + 208);
    v17 = a1;
    v18 = a3;
    do
    {
      v19 = *v17++;
      *(v15 + 8 * (v19 >> 6)) |= 1 << v19;
      --v18;
    }

    while (v18);
    v20 = a1;
    v21 = a3;
    do
    {
      v22 = *v20++;
      *(v16 + 8 * (v22 >> 6)) &= (-1 << v22) - 1;
      --v21;
    }

    while (v21);
  }

  sub_1AF5C3B0C(*(v7 + 40), v7, a1, a2, a3, a6);
  if (*(v7 + 240) - *(v7 + 232) == a3 && (sub_1AF649CEC(v14) & 1) != 0)
  {
    return sub_1AF649D40(v14, a6);
  }

  v24 = a1;
  v53 = a2;
  v25 = *(v7 + 120);
  v26 = *(v7 + 28);
  v27 = *(v7 + 32);
  v52 = v14;
  v28 = *(v12 + 88) + 8 * v14;
  v29 = *(v7 + 40);
  v30 = *(v29 + 200);
  v56 = *(v28 + 32);

  if ((v30 & 1) != 0 || *(v56 + 200) == 1)
  {
    *(v12 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v29 = *(v7 + 40);
  }

  v55 = *(v7 + 128);
  v31 = *(v7 + 256);
  sub_1AF5B5880(v29, v24, v53, a3, 0, v7);
  v50 = *(v7 + 256);
  v32 = v50 - v31;
  v51 = v31;
  if (v50 == v31)
  {
    v33 = 0;
  }

  else
  {
    v33 = v31;
  }

  v54 = v33;
  *&v64[0] = v33;
  v34 = *(*(v7 + 40) + 24);
  v35 = *(v34 + 16);
  if (v35)
  {
    v49 = v7;
    v36 = v34 + 32;

    for (i = 0; i != v35; ++i)
    {
      v38 = (v36 + 40 * i);
      if ((v38[4] & 1) == 0)
      {
        v39 = *v38;
        v41 = v38[2];
        v40 = v38[3];
        v42 = *(v56 + 24);
        v43 = *(v42 + 16);
        if (v43)
        {
          v44 = (v42 + 32);
          while (*v44 != v39)
          {
            v44 += 5;
            if (!--v43)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v55 + v41 * v54 + v40, v32);
        }
      }
    }

    v7 = v49;
  }

  if (*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v12 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v7 + 72) * v32);
  }

  if (*(v7 + 184))
  {
    v45 = 0;
  }

  else
  {
    v45 = *(v7 + 168);
  }

  v63 = 0;

  MEMORY[0x1EEE9AC00](v46);
  *(&v57 + 1) = v50;
  *&v58 = v45;
  DWORD2(v58) = -1;
  v59 = v51;
  v60 = v50;
  v61 = v51;
  v62 = v50;
  *&v57 = v51;
  if (v32 >= 1)
  {
    do
    {
      sub_1AF6248A8(v52, v26 | (v27 << 32), v25, v12, &v57, sub_1AF5C5E08);
    }

    while ((*(&v57 + 1) - v57) > 0);
  }

  v47 = *(v7 + 192);
  if (v47)
  {
    v48 = *(v7 + 208);
    sub_1AF75D364(v51, v50, v47);
    sub_1AF75D364(v51, v50, v48);
  }
}

uint64_t sub_1AF5C2A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(v5 + 16);
  v11 = *(v5 + 24);

  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v12 = sub_1AF65A4B4(v11, &type metadata for TextureLoadPolicy, &off_1F2543D30, 0, 0, &v48, v55);

  sub_1AF5C43E8(v55, sub_1AF5C4448);
  sub_1AF5C43E8(&v48, sub_1AF5C4448);
  v13 = *(v6 + 192);
  if (v13 && a2 != a1)
  {
    v14 = *(v6 + 208);
    v15 = a1;
    do
    {
      *(v13 + 8 * (v15 >> 6)) |= 1 << v15;
      ++v15;
    }

    while (a2 != v15);
    v16 = a1;
    do
    {
      *(v14 + 8 * (v16 >> 6)) &= (-1 << v16) - 1;
      ++v16;
    }

    while (a2 != v16);
  }

  sub_1AF705690(a1, a2);
  if (a2 - a1 == *(v6 + 240) - *(v6 + 232) && (sub_1AF649CEC(v12) & 1) != 0)
  {
    return sub_1AF649D40(v12, a5);
  }

  v18 = *(v6 + 120);
  v19 = *(v6 + 28);
  v20 = *(v6 + 32);
  v44 = v12;
  v21 = *(v10 + 88) + 8 * v12;
  v22 = *(v6 + 40);
  v23 = *(v22 + 200);
  v47 = *(v21 + 32);

  if ((v23 & 1) != 0 || *(v47 + 200) == 1)
  {
    *(v10 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v22 = *(v6 + 40);
  }

  v46 = *(v6 + 128);
  v24 = *(v6 + 256);
  sub_1AF5B4FCC(v22, a1, a2, 0, v6);
  v42 = *(v6 + 256);
  v25 = v42 - v24;
  v43 = v24;
  if (v42 == v24)
  {
    v26 = 0;
  }

  else
  {
    v26 = v24;
  }

  v45 = v26;
  *&v55[0] = v26;
  v27 = *(*(v6 + 40) + 24);
  v28 = *(v27 + 16);
  if (v28)
  {
    v29 = v27 + 32;

    for (i = 0; i != v28; ++i)
    {
      v31 = (v29 + 40 * i);
      if ((v31[4] & 1) == 0)
      {
        v32 = *v31;
        v34 = v31[2];
        v33 = v31[3];
        v35 = *(v47 + 24);
        v36 = *(v35 + 16);
        if (v36)
        {
          v37 = (v35 + 32);
          while (*v37 != v32)
          {
            v37 += 5;
            if (!--v36)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v46 + v34 * v45 + v33, v25);
        }
      }
    }
  }

  if (*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v10 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v6 + 72) * v25);
  }

  if (*(v6 + 184))
  {
    v38 = 0;
  }

  else
  {
    v38 = *(v6 + 168);
  }

  v54 = 0;

  MEMORY[0x1EEE9AC00](v39);
  *(&v48 + 1) = v42;
  *&v49 = v38;
  DWORD2(v49) = -1;
  v50 = v43;
  v51 = v42;
  v52 = v43;
  v53 = v42;
  *&v48 = v43;
  if (v25 >= 1)
  {
    do
    {
      sub_1AF6248A8(v44, v19 | (v20 << 32), v18, v10, &v48, sub_1AF5C5E08);
    }

    while ((*(&v48 + 1) - v48) > 0);
  }

  v40 = *(v6 + 192);
  if (v40)
  {
    v41 = *(v6 + 208);
    sub_1AF75D364(v43, v42, v40);
    sub_1AF75D364(v43, v42, v41);
  }
}

uint64_t sub_1AF5C2FD4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t, uint64_t, uint64_t))
{
  v12 = v9;
  v71 = a4;
  v72 = a1;
  v17 = *(v9 + 16);
  v18 = *(v9 + 24);

  v78 = 0;
  v76 = 0u;
  v77 = 0u;
  v84 = 0;
  memset(v83, 0, sizeof(v83));
  v19 = sub_1AF65A4B4(v18, a7, a8, 0, 0, &v76, v83);

  sub_1AF5C43E8(v83, sub_1AF5C4448);
  sub_1AF5C43E8(&v76, sub_1AF5C4448);
  v20 = *(v12 + 192);
  if (v20 && a3)
  {
    v21 = *(v12 + 208);
    v22 = v72;
    v23 = a3;
    do
    {
      v24 = *v22++;
      *(v20 + 8 * (v24 >> 6)) |= 1 << v24;
      --v23;
    }

    while (v23);
    v25 = v72;
    v26 = a3;
    do
    {
      v27 = *v25++;
      *(v21 + 8 * (v27 >> 6)) &= (-1 << v27) - 1;
      --v26;
    }

    while (v26);
  }

  v28 = *(v12 + 40);
  v69 = a2;
  sub_1AF5C3B0C(v28, v12, v72, a2, a3, a6);
  if (*(v12 + 240) - *(v12 + 232) == a3 && (sub_1AF649CEC(v19) & 1) != 0)
  {
    return sub_1AF649D40(v19, a6);
  }

  v66 = a7;
  v67 = a8;
  v68 = a6;
  v30 = *(v12 + 120);
  v31 = *(v12 + 28);
  v32 = *(v12 + 32);
  if (v71)
  {
    v33 = v71 + 8 * a5;
  }

  else
  {
    v33 = 0;
  }

  v34 = *(v17 + 88);
  v70 = v19;
  v35 = v34 + 8 * v19;
  v36 = *(v12 + 40);
  v37 = v36[200];
  v74 = *(v35 + 32);

  if ((v37 & 1) != 0 || *(v74 + 200) == 1)
  {
    *(v17 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v36 = *(v12 + 40);
  }

  v38 = v36[212];
  v65 = v33;
  if (v38)
  {
    v64 = 0;
  }

  else
  {
    v64 = *(v74 + 212);
  }

  v63 = v36[208];
  v73 = *(v12 + 128);
  v39 = *(v12 + 256);
  sub_1AF5B5880(v36, v72, v69, a3, 0, v12);
  v40 = *(v12 + 256);
  v41 = v40 - v39;
  v69 = v39;
  if (v40 == v39)
  {
    v42 = 0;
  }

  else
  {
    v42 = v39;
  }

  v72 = v42;
  *&v83[0] = v42;
  v43 = *(*(v12 + 40) + 24);
  v44 = *(v43 + 16);
  if (v44)
  {
    v61 = v40;
    v62 = v12;
    v45 = v43 + 32;
    v60[1] = v43;

    for (i = 0; i != v44; ++i)
    {
      v47 = (v45 + 40 * i);
      if ((v47[4] & 1) == 0)
      {
        v48 = *v47;
        v50 = v47[2];
        v49 = v47[3];
        v51 = *(v74 + 24);
        v52 = *(v51 + 16);
        if (v52)
        {
          v53 = (v51 + 32);
          while (*v53 != v48)
          {
            v53 += 5;
            if (!--v52)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
LABEL_24:
          sub_1AF640BC8(v73 + v50 * v72 + v49, v41);
        }
      }
    }

    v12 = v62;
    v40 = v61;
  }

  v54 = v69;
  if (*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v41);
  }

  if (*(v12 + 184))
  {
    v55 = 0;
  }

  else
  {
    v55 = *(v12 + 168);
  }

  v82 = 0;

  MEMORY[0x1EEE9AC00](v56);
  *(&v76 + 1) = v40;
  *&v77 = v55;
  DWORD2(v77) = -1;
  v78 = v69;
  v79 = v40;
  v80 = v69;
  v81 = v40;
  *&v76 = v69;
  if (v41 < 1)
  {
  }

  else
  {
    v73 = v60;
    v57 = v70;
    do
    {
      v75 = v32;
      sub_1AF6248A8(v57, v31 | (v32 << 32), v30, v17, &v76, a9);
    }

    while ((*(&v76 + 1) - v76) > 0);
  }

  v58 = *(v12 + 192);
  if (v58)
  {
    v59 = *(v12 + 208);
    sub_1AF75D364(v54, v40, v58);
    sub_1AF75D364(v54, v40, v59);
  }
}

uint64_t sub_1AF5C3538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t))
{
  v12 = v8;
  v16 = *(v8 + 16);
  v17 = *(v8 + 24);

  v57 = 0;
  v55 = 0u;
  v56 = 0u;
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v18 = sub_1AF65A4B4(v17, a6, a7, 0, 0, &v55, v62);

  sub_1AF5C43E8(v62, sub_1AF5C4448);
  sub_1AF5C43E8(&v55, sub_1AF5C4448);
  v19 = *(v12 + 192);
  if (v19 && a2 != a1)
  {
    v20 = *(v12 + 208);
    v21 = a1;
    do
    {
      *(v19 + 8 * (v21 >> 6)) |= 1 << v21;
      ++v21;
    }

    while (a2 != v21);
    v22 = a1;
    do
    {
      *(v20 + 8 * (v22 >> 6)) &= (-1 << v22) - 1;
      ++v22;
    }

    while (a2 != v22);
  }

  sub_1AF705690(a1, a2);
  if (a2 - a1 == *(v12 + 240) - *(v12 + 232) && (sub_1AF649CEC(v18) & 1) != 0)
  {
    return sub_1AF649D40(v18, a5);
  }

  v24 = *(v12 + 120);
  v25 = *(v12 + 28);
  v26 = *(v12 + 32);
  v51 = v18;
  v27 = *(*(v16 + 88) + 8 * v18 + 32);
  v28 = *(v12 + 40);
  v29 = *(v28 + 200);
  v54 = v27;

  if ((v29 & 1) != 0 || *(v54 + 200) == 1)
  {
    *(v16 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
    v28 = *(v12 + 40);
  }

  v53 = *(v12 + 128);
  v30 = *(v12 + 256);
  sub_1AF5B4FCC(v28, a1, a2, 0, v12);
  v50 = *(v12 + 256);
  v31 = v50 - v30;
  v49 = v30;
  if (v50 == v30)
  {
    v32 = 0;
  }

  else
  {
    v32 = v30;
  }

  v52 = v32;
  *&v62[0] = v32;
  v33 = *(*(v12 + 40) + 24);
  v34 = *(v33 + 16);
  if (v34)
  {
    v48 = v12;
    v35 = v33 + 32;

    for (i = 0; i != v34; ++i)
    {
      v37 = (v35 + 40 * i);
      if ((v37[4] & 1) == 0)
      {
        v38 = *v37;
        v40 = v37[2];
        v39 = v37[3];
        v41 = *(v54 + 24);
        v42 = *(v41 + 16);
        if (v42)
        {
          v43 = (v41 + 32);
          while (*v43 != v38)
          {
            v43 += 5;
            if (!--v42)
            {
              goto LABEL_18;
            }
          }
        }

        else
        {
LABEL_18:
          sub_1AF640BC8(v53 + v40 * v52 + v39, v31);
        }
      }
    }

    v12 = v48;
  }

  if (*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
  {
    vfx_counters.add(_:_:)(*(v16 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v12 + 72) * v31);
  }

  if (*(v12 + 184))
  {
    v44 = 0;
  }

  else
  {
    v44 = *(v12 + 168);
  }

  v61 = 0;

  MEMORY[0x1EEE9AC00](v45);
  DWORD2(v56) = -1;
  v57 = v49;
  v58 = v50;
  v59 = v49;
  v60 = v50;
  *&v55 = v49;
  *(&v55 + 1) = v50;
  *&v56 = v44;
  if (v31 >= 1)
  {
    do
    {
      sub_1AF6248A8(v51, v25 | (v26 << 32), v24, v16, &v55, a8);
    }

    while ((*(&v55 + 1) - v55) > 0);
  }

  v46 = *(v12 + 192);
  if (v46)
  {
    v47 = *(v12 + 208);
    sub_1AF75D364(v49, v50, v46);
    sub_1AF75D364(v49, v50, v47);
  }
}

uint64_t *sub_1AF5C3A64(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    v9 = result;
    v10 = a3;
    do
    {
      v11 = *v9++;
      *(a7 + 8 * (v11 >> 6)) |= 1 << v11;
      --v10;
    }

    while (v10);
  }

  if (a6 == 3 && a4 == 2 && !a5)
  {
    for (; a3; --a3)
    {
      v12 = *result++;
      *(a9 + 8 * (v12 >> 6)) |= 1 << v12;
    }
  }

  else
  {
    for (; a3; --a3)
    {
      v13 = *result++;
      *(a9 + 8 * (v13 >> 6)) &= (-1 << v13) - 1;
    }
  }

  return result;
}

uint64_t sub_1AF5C3B0C(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a6;
  if (*(result + 213) == 1)
  {
    v6 = a5;
    v9 = *(a2 + 48);
    v10 = (v9 + 32);
    v11 = *(v9 + 16) + 1;
    while (--v11)
    {
      v12 = v10 + 5;
      v13 = *v10;
      v10 += 5;
      if (v13 == &type metadata for PropagateDirtiness)
      {
        v11 = *(v12 - 2);
        break;
      }
    }

    if (a5)
    {
      v14 = *(a2 + 128) + v11;
      while (1)
      {
        v16 = *a3++;
        v15 = v16;

        if (*(a2 + 184))
        {
          break;
        }

        v18 = *(*(a2 + 168) + 4 * v15);
        v19 = (v14 + 8 * v15);
        v20 = *(*(v17 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v18 + 8);

        v21 = *v19;
        v22 = v19[1];
        if (v21 != -1 || v22 != 0)
        {
          result = sub_1AF70D248(v24, v18 | (v20 << 32), v21 | (v22 << 32));
        }

        if (!--v6)
        {
          return result;
        }
      }

      result = sub_1AFDFE518();
      __break(1u);
    }
  }

  return result;
}

void sub_1AF5C3C90()
{
  if (!qword_1ED725EA0)
  {
    v0 = sub_1AFDFDD58();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED725EA0);
    }
  }
}

uint64_t sub_1AF5C3CE0@<X0>(unsigned __int8 *a1@<X0>, size_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v8 = *a5 + 41;
  v31 = *(*a5 + 24);
  v22 = *(*a5 + 26);
  v30 = *(*a5 + 28);
  v23 = *(*a5 + 30);
  v9 = *(*a5 + 30) / 0x18uLL;
  v26 = *(a5 + 12);
  v27 = *(a5 + 8);
  v28 = *(a5 + 32);
  v25 = *(a5 + 16);
  v24 = *(a5 + 24);
  v10 = 16 * a4;
  v11 = a2 + 16 * a4 + 7;
  v29 = v11 & 0xFFFFFFFFFFFFFFF8;
  v12 = 16 * (v22 >> 4);
  v13 = (v12 + v11) & 0xFFFFFFFFFFFFFFF8;
  type metadata accessor for QueryBuffer(0);
  v14 = swift_allocObject();
  v19 = a4;
  v20 = sub_1AF6B7B38(a3, a4, a1, a2, (v8 + v31), v22 >> 4, v8 + v30, v9, v15);
  result = sub_1AF6B7AA0(a1, a2, a3, a4);
  *(v14 + 16) = 0;
  *(v14 + 18) = v10;
  *(v14 + 20) = v10;
  *(v14 + 22) = a2;
  *(v14 + 24) = v29;
  *(v14 + 26) = v12;
  *(v14 + 28) = v13;
  *(v14 + 30) = 24 * v9;
  *(v14 + 32) = v20;
  v17 = v14 + 41;
  *(v14 + 40) = result & 1;
  if (v10)
  {
    v18 = v10 >> 4;
    if (v10 >> 4 >= v19)
    {
      v18 = v19;
    }

    result = memcpy((v14 + 41), a3, 16 * v18);
  }

  if (a2)
  {
    result = memcpy((v17 + v10), a1, a2);
  }

  if (v22 > 0xF)
  {
    result = memcpy((v17 + v29), (v8 + v31), 16 * (v22 >> 4));
  }

  if (v23 > 0x17)
  {
    result = memcpy((v17 + v13), (v8 + v30), 24 * v9);
  }

  *a6 = v14;
  *(a6 + 8) = v27;
  *(a6 + 12) = v26;
  *(a6 + 16) = v25;
  *(a6 + 24) = v24;
  *(a6 + 32) = v28;
  return result;
}

uint64_t sub_1AF5C3F28(uint64_t *a1, uint64_t *a2, void (*a3)(void *, uint64_t, uint64_t, uint64_t), uint64_t a4)
{
  v67[7] = a4;
  v6 = a1[11];
  v5 = a1[12];
  v7 = a1[13];
  v9 = a1[1];
  v8 = a1[2];

  v10 = sub_1AF64B110(&type metadata for Skybox, &off_1F25304A0, v6, v5, v7, v8);
  v11 = sub_1AF64B110(&type metadata for IBLGenerator, &off_1F252A618, v6, v5, v7, v8);
  v12 = v58;
  sub_1AF649C6C(v9[5], &type metadata for IBLRuntime, &v63);
  if (v63 == 1)
  {
    v57 = v58;
    a2[9] = &type metadata for IBLRuntime;
    a2[10] = &off_1F252A6C8;
    v13 = sub_1AF64B110(&type metadata for IBLRuntime, &off_1F252A6C8, v6, v5, v7, v8);
    v14 = v13;
    if (v6)
    {
      if (v7)
      {
        v59 = v8;
        v15 = a1[3];
        v16 = *a1;
        do
        {
          v17 = *v6++;
          v64[0] = v16;
          v64[1] = v9;
          v64[2] = v59;
          v64[3] = v15;
          v64[4] = v17;
          a3(v64, v10, v11, v14);
          if (v12)
          {
            break;
          }

          v14 += 16;
          v11 += 4;
          ++v15;
          v10 += 32;
          --v7;
        }

        while (v7);
      }
    }

    else
    {
      v60 = v8;
      v23 = a1[6];
      v24 = a1[7];
      v25 = &v10[32 * v23];
      v26 = a1[3];
      v27 = &v11[4 * v23];
      v28 = &v13[16 * v23];
      do
      {
        if (v24 == v23)
        {
          break;
        }

        v29 = v23 + 1;
        v65[0] = *a1;
        v65[1] = v9;
        v65[2] = v60;
        v65[3] = v26;
        v65[4] = v23;
        a3(v65, v25, v27, v28);
        v25 += 32;
        ++v26;
        v27 += 4;
        v28 += 16;
        v23 = v29;
      }

      while (!v57);
    }
  }

  v18 = v8;
  v19 = v7;
  if (!v6)
  {
    v19 = a1[7] - a1[6];
  }

  v55 = 16 * v19;
  v20 = ecs_stack_allocator_allocate(a2[4], 16 * v19, 4);
  v21 = v5;
  if (v19)
  {
    if (v19 > 0x1B)
    {
      v22 = 0;
      v30 = 2 * (v19 - 1);
      if (&v20[v30] >= v20 && &v20[v30] + 4 >= v20 + 4 && &v20[v30 + 1] >= v20 + 1 && &v20[v30 + 1] + 4 >= v20 + 12 && !((v19 - 1) >> 60))
      {
        v22 = v19 & 0x1FFFFFFFFFFFFFF8;
        v31 = v20 + 8;
        *&v32 = 0xFFFFFFFFLL;
        *(&v32 + 1) = 0xFFFFFFFFLL;
        v33 = v19 & 0x1FFFFFFFFFFFFFF8;
        do
        {
          *(v31 - 2) = v32;
          *(v31 - 1) = v32;
          *(v31 - 4) = v32;
          *(v31 - 3) = v32;
          v31[2] = v32;
          v31[3] = v32;
          *v31 = v32;
          v31[1] = v32;
          v31 += 8;
          v33 -= 8;
        }

        while (v33);
        if (v19 == v22)
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
      v22 = 0;
    }

    v34 = v19 - v22;
    v35 = &v20[2 * v22];
    *&v36 = 0xFFFFFFFFLL;
    *(&v36 + 1) = 0xFFFFFFFFLL;
    do
    {
      *v35++ = v36;
      --v34;
    }

    while (v34);
  }

LABEL_27:
  v53 = v19;
  v54 = v20;
  v61 = v18;
  v37 = 0;
  if (v6)
  {
    v38 = v20;
    while (v7 != v37)
    {
      v39 = v6[v37];
      v40 = v37 + 1;
      v41 = v37 + a1[3];
      v66[0] = *a1;
      v66[1] = v9;
      v66[2] = v61;
      v66[3] = v41;
      v66[4] = v39;
      a3(v66, v10, v11, v38);
      v21 = v5;
      v10 += 32;
      v11 += 4;
      v38 += 16;
      v37 = v40;
      if (v12)
      {
        goto LABEL_35;
      }
    }

    v50 = v54;
    v51 = a2;
    sub_1AF5B8104(v6, v21, v7, v54, v53, a2, &type metadata for IBLRuntime, &off_1F252A6C8, sub_1AF5C44B0);
  }

  else
  {
    v42 = a1[6];
    v43 = &v10[32 * v42];
    v44 = &v11[4 * v42];
    v45 = v42 - a1[7];
    v46 = v20;
    while (v45 + v37)
    {
      v47 = v42 + v37;
      v48 = v37 + 1;
      v49 = v37 + a1[3];
      v67[0] = *a1;
      v67[1] = v9;
      v67[2] = v61;
      v67[3] = v49;
      v67[4] = v47;
      a3(v67, v43, v44, v46);
      v46 += 16;
      v43 += 32;
      v44 += 4;
      v37 = v48;
      if (v12)
      {
LABEL_35:
        ecs_stack_allocator_deallocate(a2[4], v54, v55);
      }
    }

    v51 = a2;
    v50 = v54;
    sub_1AF5B85D4(v9[29], v9[30], v54, v19, a2, &type metadata for IBLRuntime, &off_1F252A6C8, sub_1AF5C5E08);
  }

  ecs_stack_allocator_deallocate(v51[4], v50, v55);
}

uint64_t sub_1AF5C43E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1AF5C4448(uint64_t a1)
{
  if (!qword_1ED72C1C0)
  {
    sub_1AF5C5358(255, &qword_1ED72C1D0, &protocol descriptor for ClassComponent);
    v1 = sub_1AFDFDD58();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED72C1C0);
    }
  }
}

float sub_1AF5C44EC(void *a1)
{
  sub_1AF5C5A00(0, &qword_1EB63BFD0, sub_1AF5C59AC, &type metadata for IBLGenerator.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5C59AC();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v10 = sub_1AFDFE6C8();
    (*(v6 + 8))(v8, v5);
    if ((v10 & 0x100000000) != 0)
    {
      v2 = 1.0;
    }

    else
    {
      v2 = *&v10;
    }
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

uint64_t sub_1AF5C46A8(void *a1)
{
  sub_1AF5C5A00(0, &qword_1EB63BFA8, sub_1AF5C5958, &type metadata for IBLRuntime.CodingKeys, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1AF441150(a1, v8);
  sub_1AF5C5958();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v11 = 0;
    sub_1AF47FEB4();
    sub_1AFDFE768();
    v8 = v12;
    v11 = 1;
    sub_1AFDFE768();
    (*(v5 + 8))(v7, v4);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v8;
}

double sub_1AF5C48B4(void *a1, uint64_t a2, unsigned __int8 *a3, uint64_t a4, uint64_t a5, void *a6)
{
  v89 = *MEMORY[0x1E69E9840];
  LODWORD(v79) = 256;
  v68 = *(a2 + 16);
  v9 = CFXGPUDeviceGetMTLDevice(v68);
  swift_getObjectType();
  v10 = sub_1AF47625C();
  swift_unknownObjectRelease();
  v11 = *a3;
  v12 = *(a3 + 1);
  if (v10)
  {
    sub_1AFDFF308();
    v13 = v12;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v14 = sub_1AFDFF2E8();
    *&v84 = 0xD000000000000022;
    *(&v84 + 1) = 0x80000001AFF2C280;
    v85 = 0uLL;
    *&v86 = MEMORY[0x1E69E7CC0];
    *(&v86 + 1) = v14;
    v15 = sub_1AF73BD84(&v84, 0, v11, v12);
    v17 = v16;

    if (!v15)
    {
      return result;
    }

    swift_getObjectType();
    [a1 setBytes:&v79 length:4 atIndex:0];
    v19 = a4;
    [a1 setTexture:a4 atIndex:0];
    [a1 setTexture:a5 atIndex:1];
    sub_1AF6F4400(v15, a5, 0);
  }

  else
  {
    v67 = a3;
    sub_1AFDFF308();
    v35 = v12;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v86 = v76;
    v87 = v77;
    v88 = v78;
    v84 = v74;
    v85 = v75;
    v36 = sub_1AFDFF2E8();
    *&v74 = 0xD00000000000002ELL;
    *(&v74 + 1) = 0x80000001AFF2C1F0;
    v75 = 0uLL;
    *&v76 = MEMORY[0x1E69E7CC0];
    *(&v76 + 1) = v36;
    v37 = sub_1AF73BD84(&v74, 0, v11, v12);
    v39 = v38;

    if (!v37)
    {
      return result;
    }

    swift_getObjectType();
    [a1 setBytes:&v79 length:4 atIndex:0];
    v19 = a4;
    [a1 setTexture:a4 atIndex:0];
    ObjectType = swift_getObjectType();
    v41 = sub_1AF4736A0(0, ObjectType);
    if (!v41)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v41 atIndex:1];
    swift_unknownObjectRelease();
    v42 = swift_getObjectType();
    v43 = sub_1AF4736A0(1, v42);
    if (!v43)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v43 atIndex:2];
    swift_unknownObjectRelease();
    v44 = swift_getObjectType();
    v45 = sub_1AF4736A0(2, v44);
    if (!v45)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v45 atIndex:3];
    swift_unknownObjectRelease();
    v46 = swift_getObjectType();
    v47 = sub_1AF4736A0(3, v46);
    if (!v47)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v47 atIndex:4];
    swift_unknownObjectRelease();
    v48 = swift_getObjectType();
    v49 = sub_1AF4736A0(4, v48);
    if (!v49)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v49 atIndex:5];
    swift_unknownObjectRelease();
    v50 = swift_getObjectType();
    v51 = sub_1AF4736A0(5, v50);
    if (!v51)
    {
      goto LABEL_32;
    }

    [a1 setTexture:v51 atIndex:6];
    swift_unknownObjectRelease();
    sub_1AF6F4400(v37, a5, 0);
  }

  swift_unknownObjectRelease();
  swift_getObjectType();
  [a1 setTexture:v19 atIndex:0];
  v20 = CFXGPUDeviceGetMTLDevice(v68);
  swift_getObjectType();
  v21 = sub_1AF47625C();
  swift_unknownObjectRelease();
  v22 = *a3;
  v23 = *(a3 + 1);
  if (v21)
  {
    sub_1AFDFF308();
    v24 = v23;

    sub_1AFDFD038();
    MEMORY[0x1B271ACB0](0);
    MEMORY[0x1B271ACB0](0);
    v25 = sub_1AFDFF2E8();
    *&v79 = 0xD000000000000023;
    *(&v79 + 1) = 0x80000001AFF2C250;
    v80 = 0;
    v81 = 0;
    v82 = MEMORY[0x1E69E7CC0];
    v83 = v25;
    v26 = sub_1AF73BD84(&v79, 0, v22, v23);
    v28 = v27;

    if (!v26)
    {
      return result;
    }

    v73 = 0;
    swift_getObjectType();
    v29 = [a6 mipmapLevelCount];
    if (v29)
    {
      v30 = v29;
      v31 = 0;
      do
      {
        [a6 pixelFormat];
        v32 = (v31 + 1);
        v33 = sub_1AFDFD9B8();
        if (!v33)
        {
          break;
        }

        v34 = v33;
        [a1 setTexture:v33 atIndex:1];
        v73 = v31 | 0x10000000000;
        [a1 setBytes:&v73 length:8 atIndex:0];
        sub_1AF6F4400(v26, v34, 0);
        swift_unknownObjectRelease();
        ++v31;
      }

      while (v32 != v30);
    }

    goto LABEL_32;
  }

  sub_1AFDFF308();
  v52 = v23;

  sub_1AFDFD038();
  MEMORY[0x1B271ACB0](0);
  MEMORY[0x1B271ACB0](0);
  v53 = sub_1AFDFF2E8();
  *&v79 = 0xD00000000000002FLL;
  *(&v79 + 1) = 0x80000001AFF2C220;
  v80 = 0;
  v81 = 0;
  v82 = MEMORY[0x1E69E7CC0];
  v83 = v53;
  v54 = sub_1AF73BD84(&v79, 0, v22, v23);
  v56 = v55;

  v71 = v54;
  if (!v54)
  {
    return result;
  }

  v73 = 0;
  swift_getObjectType();
  v69 = [a6 mipmapLevelCount];
  if (v69)
  {
    v57 = 0;
    do
    {
      v59 = (v57 + 1);
      [a6 pixelFormat];
      v58 = sub_1AFDFD9B8();
      if (!v58)
      {
        goto LABEL_24;
      }

      [a1 setTexture:v58 atIndex:1];
      [a6 pixelFormat];
      v60 = sub_1AFDFD9B8();
      if (!v60)
      {
        goto LABEL_24;
      }

      v61 = v60;
      [a1 setTexture:v60 atIndex:2];
      swift_unknownObjectRelease();
      [a6 pixelFormat];
      v62 = sub_1AFDFD9B8();
      if (v62)
      {
        v58 = v62;
        [a1 setTexture:v62 atIndex:3];
        swift_unknownObjectRelease();
        [a6 pixelFormat];
        v63 = sub_1AFDFD9B8();
        if (!v63)
        {
          goto LABEL_24;
        }

        v61 = v63;
        [a1 setTexture:v63 atIndex:4];
        swift_unknownObjectRelease();
        [a6 pixelFormat];
        v64 = sub_1AFDFD9B8();
        if (v64)
        {
          v58 = v64;
          [a1 setTexture:v64 atIndex:5];
          swift_unknownObjectRelease();
          [a6 pixelFormat];
          v65 = sub_1AFDFD9B8();
          if (v65)
          {
            v66 = v65;
            [a1 setTexture:v65 atIndex:6];
            swift_unknownObjectRelease();
            v58 = v66;
          }

          goto LABEL_24;
        }
      }

      v58 = v61;
LABEL_24:
      v73 = v57 | 0x10000000000;
      [a1 setBytes:&v73 length:8 atIndex:0];
      sub_1AF6F4400(v71, v58, 0);
      swift_unknownObjectRelease();
      ++v57;
    }

    while (v69 != v59);
  }

LABEL_32:
  swift_unknownObjectRelease();
  return result;
}

void sub_1AF5C52A8(uint64_t a1)
{
  if (!qword_1ED7269A0)
  {
    sub_1AF5C5300();
    v1 = sub_1AFDFEA18();
    if (!v2)
    {
      atomic_store(v1, &qword_1ED7269A0);
    }
  }
}

unint64_t sub_1AF5C5300()
{
  result = qword_1ED7270C0;
  if (!qword_1ED7270C0)
  {
    sub_1AF5C5358(255, &qword_1ED7270D0, &protocol descriptor for Component);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ED7270C0);
  }

  return result;
}

uint64_t sub_1AF5C5358(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1AF5C53B4(uint64_t a1)
{
  if (!qword_1ED7287C0)
  {
    v2 = MEMORY[0x1E69E74A8];
    sub_1AF5C5A00(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v4 = v3;
    v5 = sub_1AF5C5554(&unk_1ED72F720, &qword_1ED72F6E0, v2, byte_1AFE6CAB0);
    v7 = type metadata accessor for BasicAnimationRuntime(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1ED7287C0);
    }
  }
}

void sub_1AF5C5484(uint64_t a1)
{
  if (!qword_1ED7287D0)
  {
    v2 = MEMORY[0x1E69E7450];
    sub_1AF5C5A00(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v4 = v3;
    v5 = sub_1AF5C5554(&qword_1ED72F760, &qword_1ED72F740, v2, asc_1AFE6CA88);
    v7 = type metadata accessor for BasicAnimationRuntime(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1ED7287D0);
    }
  }
}

uint64_t sub_1AF5C5554(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    sub_1AF5C5A00(255, a2, sub_1AF43A0C8, MEMORY[0x1E69E6448], a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

void sub_1AF5C55B8(uint64_t a1)
{
  if (!qword_1ED7287D8)
  {
    v2 = MEMORY[0x1E69E7428];
    sub_1AF5C5A00(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v4 = v3;
    v5 = sub_1AF5C5554(&qword_1ED72F7A0, &unk_1ED72F770, v2, aD_11);
    v7 = type metadata accessor for BasicAnimationRuntime(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1ED7287D8);
    }
  }
}

void sub_1AF5C5688(uint64_t a1)
{
  if (!qword_1EB63BF88)
  {
    v2 = MEMORY[0x1E69E74A8];
    sub_1AF5C5A00(255, &qword_1ED72F6E0, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E74A8]);
    v4 = v3;
    v5 = sub_1AF5C5554(&unk_1ED72F720, &qword_1ED72F6E0, v2, byte_1AFE6CAB0);
    v7 = type metadata accessor for KeyframeAnimationRuntime(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB63BF88);
    }
  }
}

void sub_1AF5C5758(uint64_t a1)
{
  if (!qword_1EB63BF90)
  {
    v2 = MEMORY[0x1E69E7450];
    sub_1AF5C5A00(255, &qword_1ED72F740, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7450]);
    v4 = v3;
    v5 = sub_1AF5C5554(&qword_1ED72F760, &qword_1ED72F740, v2, asc_1AFE6CA88);
    v7 = type metadata accessor for KeyframeAnimationRuntime(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB63BF90);
    }
  }
}

void sub_1AF5C5828(uint64_t a1)
{
  if (!qword_1EB63BF98)
  {
    v2 = MEMORY[0x1E69E7428];
    sub_1AF5C5A00(255, &unk_1ED72F770, sub_1AF43A0C8, MEMORY[0x1E69E6448], MEMORY[0x1E69E7428]);
    v4 = v3;
    v5 = sub_1AF5C5554(&qword_1ED72F7A0, &unk_1ED72F770, v2, aD_11);
    v7 = type metadata accessor for KeyframeAnimationRuntime(a1, v4, v5, v6);
    if (!v8)
    {
      atomic_store(v7, &qword_1EB63BF98);
    }
  }
}

void sub_1AF5C58F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, _UNKNOWN **))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6448], &off_1F2532E98);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF5C5958()
{
  result = qword_1EB63BFB0;
  if (!qword_1EB63BFB0)
  {
    result = swift_getWitnessTable(byte_1AFE62A10, &type metadata for IBLRuntime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63BFB0);
  }

  return result;
}

unint64_t sub_1AF5C59AC()
{
  result = qword_1EB63BFD8;
  if (!qword_1EB63BFD8)
  {
    result = swift_getWitnessTable(byte_1AFE629C0, &type metadata for IBLGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63BFD8);
  }

  return result;
}

void sub_1AF5C5A00(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

void sub_1AF5C5A68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    v7 = a3(255);
    v9 = type metadata accessor for ScriptStateRestoration(a1, v7, a4, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_1AF5C5ACC(uint64_t a1, uint64_t a2, void *a3)
{
  LOBYTE(v6) = *(v3 + 96);
  *v5 = *(v3 + 56);
  *&v5[16] = *(v3 + 72);
  return sub_1AF64A7E0(a1, a2, a3, *(v3 + 16) | (*(v3 + 20) << 32), *(v3 + 24), *(v3 + 32), *(v3 + 40), *(v3 + 48), *(v3 + 56), *&v5[8], *(v3 + 80), *(v3 + 88), v6, *(v3 + 100), *(v3 + 104), *(v3 + 112));
}

unint64_t sub_1AF5C5B60()
{
  result = qword_1EB63BFE8;
  if (!qword_1EB63BFE8)
  {
    result = swift_getWitnessTable(byte_1AFE628A8, &type metadata for IBLRuntime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63BFE8);
  }

  return result;
}

unint64_t sub_1AF5C5BB8()
{
  result = qword_1EB63BFF0;
  if (!qword_1EB63BFF0)
  {
    result = swift_getWitnessTable(byte_1AFE62998, &type metadata for IBLGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63BFF0);
  }

  return result;
}

unint64_t sub_1AF5C5C10()
{
  result = qword_1EB63BFF8;
  if (!qword_1EB63BFF8)
  {
    result = swift_getWitnessTable(aR_12, &type metadata for IBLGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63BFF8);
  }

  return result;
}

unint64_t sub_1AF5C5C68()
{
  result = qword_1EB63C000;
  if (!qword_1EB63C000)
  {
    result = swift_getWitnessTable(a9n, &type metadata for IBLGenerator.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C000);
  }

  return result;
}

unint64_t sub_1AF5C5CC0()
{
  result = qword_1EB63C008;
  if (!qword_1EB63C008)
  {
    result = swift_getWitnessTable(byte_1AFE62818, &type metadata for IBLRuntime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C008);
  }

  return result;
}

unint64_t sub_1AF5C5D18()
{
  result = qword_1EB63C010;
  if (!qword_1EB63C010)
  {
    result = swift_getWitnessTable(byte_1AFE62840, &type metadata for IBLRuntime.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C010);
  }

  return result;
}

double sub_1AF5C5D6C(float32x4_t _Q0)
{
  _S4 = _Q0.i32[1];
  _S5 = _Q0.i32[2];
  __asm { FMLS            S3, S5, V0.S[2] }

  _S6 = _Q0.i32[3];
  __asm { FMLA            S3, S6, V0.S[3] }

  v10 = vmuls_lane_f32(_Q0.f32[2], _Q0, 3);
  __asm
  {
    FMLA            S2, S4, V0.S[1]
    FMLA            S2, S6, V0.S[3]
    FMLA            S2, S5, V0.S[1]
    FMLA            S6, S5, V0.S[2]
  }

  *(&_D3 + 1) = (v10 + (_Q0.f32[0] * _Q0.f32[1])) + (v10 + (_Q0.f32[0] * _Q0.f32[1]));
  __asm { FMLS            S5, S4, V0.S[1] }

  return _D3;
}

double sub_1AF5C5E24@<D0>(uint64_t a1@<X0>, void (*a2)(_OWORD *__return_ptr, uint64_t, void, uint64_t *, char *)@<X1>, uint64_t a3@<X8>)
{
  v5 = v3;
  v6 = a1;
  v8 = *v3;
  v9 = *(*v3 + 26);
  if (v9 > 0xF)
  {
    v10 = *(a1 + 16);
    v11 = sub_1AFC0592C((v8 + *(v8 + 24) + 41), v9 >> 4);
    if (v10)
    {
      *&v16[0] = v11;

      sub_1AF48FC80(v12);
      v6 = *&v16[0];
    }

    else
    {
      v6 = v11;
    }
  }

  else
  {
  }

  a2(v16, v6 + 32, *(v6 + 16), v5, v15);

  result = *v16;
  v14 = v16[1];
  *a3 = v16[0];
  *(a3 + 16) = v14;
  *(a3 + 32) = v17;
  return result;
}

double sub_1AF5C5EFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = *v2;
  v7 = *(*v2 + 26);
  if (v7 > 0xF)
  {
    v8 = *(a1 + 16);
    v9 = sub_1AFC0592C((v6 + *(v6 + 24) + 41), v7 >> 4);
    if (v8)
    {
      *&v13[0] = v9;

      sub_1AF48FC80(v10);
      v4 = *&v13[0];
    }

    else
    {
      v4 = v9;
    }
  }

  else
  {
  }

  sub_1AF5D0980((v4 + 32), *(v4 + 16), v3, v13);

  result = *v13;
  v12 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v12;
  *(a2 + 32) = v14;
  return result;
}

double sub_1AF5C5FC4@<D0>(_OWORD *a1@<X8>)
{
  result = 524288.135;
  *a1 = xmmword_1AFE62A60;
  return result;
}

uint64_t sub_1AF5C5FE0()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5C60A4(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5C6154(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF5C6214@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5D0B28(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF5C6244(uint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x7469736E65746E69;
  v4 = 0xE500000000000000;
  v5 = 0x7261654E7ALL;
  if (*v1 != 2)
  {
    v5 = 1918977658;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0x6152776F64616873;
    v2 = 0xEC00000073756964;
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

uint64_t sub_1AF5C62C4()
{
  v1 = 0x7469736E65746E69;
  v2 = 0x7261654E7ALL;
  if (*v0 != 2)
  {
    v2 = 1918977658;
  }

  if (*v0)
  {
    v1 = 0x6152776F64616873;
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

unint64_t sub_1AF5C6340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5D0B28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5C6368(uint64_t a1)
{
  v2 = sub_1AF5D0E60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C63A4(uint64_t a1)
{
  v2 = sub_1AF5D0E60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1AF5C6464@<D0>(_OWORD *a1@<X8>)
{
  result = 524288.138;
  *a1 = xmmword_1AFE62A70;
  return result;
}

uint64_t sub_1AF5C6480()
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

uint64_t sub_1AF5C6540(uint64_t a1)
{
  sub_1AFDFD038();
}

uint64_t sub_1AF5C65EC(uint64_t a1)
{
  sub_1AFDFF288();
  sub_1AFDFD038();

  return sub_1AFDFF2F8();
}

unint64_t sub_1AF5C66A8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5D0ADC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF5C66D8(unint64_t *a1@<X8>)
{
  v2 = 0xE900000000000079;
  v3 = 0x7469736E65746E69;
  v4 = 0xE500000000000000;
  v5 = 0x7261654E7ALL;
  if (*v1 != 2)
  {
    v5 = 1918977658;
    v4 = 0xE400000000000000;
  }

  if (*v1)
  {
    v3 = 0xD000000000000011;
    v2 = 0x80000001AFF22AF0;
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

unint64_t sub_1AF5C6754()
{
  v1 = 0x7469736E65746E69;
  v2 = 0x7261654E7ALL;
  if (*v0 != 2)
  {
    v2 = 1918977658;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

unint64_t sub_1AF5C67CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5D0ADC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5C67F4(uint64_t a1)
{
  v2 = sub_1AF5D1138();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C6830(uint64_t a1)
{
  v2 = sub_1AF5D1138();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5C686C(void *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(void), float a6, float a7, float a8, float a9)
{
  sub_1AF5D180C(0, a2, a3, a4, MEMORY[0x1E69E6F58]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18 - v15;
  sub_1AF441150(a1, a1[3]);
  a5();
  sub_1AFDFF3F8();
  v22 = 0;
  sub_1AFDFE8E8();
  if (!v9)
  {
    v21 = 1;
    sub_1AFDFE8E8();
    v20 = 2;
    sub_1AFDFE8E8();
    v19 = 3;
    sub_1AFDFE8E8();
  }

  return (*(v14 + 8))(v16, v13);
}

uint64_t sub_1AF5C6A68@<X0>(uint64_t (*a1)(void)@<X3>, _DWORD *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = v5;
    a2[1] = v6;
    a2[2] = v7;
    a2[3] = v8;
  }

  return result;
}

uint64_t sub_1AF5C6AF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7469736E65746E69 && a2 == 0xE900000000000079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1AFDFEE28();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1AF5C6B84(uint64_t a1)
{
  v2 = sub_1AF5D17B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C6BC0(uint64_t a1)
{
  v2 = sub_1AF5D17B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5C6BFC@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v14 = a2;
  sub_1AF5D180C(0, &qword_1EB6328B0, sub_1AF5D17B8, &type metadata for AmbientLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D17B8();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v14;
  sub_1AFDFE738();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v11;
  return result;
}

uint64_t sub_1AF5C6DB4(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB63C048, sub_1AF5D17B8, &type metadata for AmbientLight.CodingKeys, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D17B8();
  sub_1AFDFF3F8();
  sub_1AFDFE8E8();
  return (*(v4 + 8))(v6, v3);
}

double sub_1AF5C6F30@<D0>(uint64_t a1@<X8>)
{
  *a1 = xmmword_1AFE62A80;
  result = 524288.117;
  *(a1 + 16) = 0x412000003C23D70ALL;
  return result;
}

uint64_t sub_1AF5C6F60(uint64_t a1)
{
  sub_1AFDFD038();
}

unint64_t sub_1AF5C705C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1AF5D0B74(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1AF5C708C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000079;
  v4 = 0x7469736E65746E69;
  v5 = 0x676E4172656E6E69;
  v6 = 0xEA0000000000656CLL;
  v7 = 0xE500000000000000;
  v8 = 0x7261654E7ALL;
  if (v2 != 4)
  {
    v8 = 1918977658;
    v7 = 0xE400000000000000;
  }

  if (v2 != 3)
  {
    v5 = v8;
    v6 = v7;
  }

  v9 = 0x80000001AFF22AF0;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x676E41726574756FLL;
    v9 = 0xEA0000000000656CLL;
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
    v11 = v5;
  }

  if (*v1 > 2u)
  {
    v3 = v6;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_1AF5C7150()
{
  v1 = *v0;
  v2 = 0x7469736E65746E69;
  v3 = 0x676E4172656E6E69;
  v4 = 0x7261654E7ALL;
  if (v1 != 4)
  {
    v4 = 1918977658;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000011;
  if (v1 != 1)
  {
    v5 = 0x676E41726574756FLL;
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

unint64_t sub_1AF5C7210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1AF5D0B74(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1AF5C7238(uint64_t a1)
{
  v2 = sub_1AF5D14A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5C7274(uint64_t a1)
{
  v2 = sub_1AF5D14A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5C72B0(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB63C040, sub_1AF5D14A0, &type metadata for SpotLight.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D14A0();
  sub_1AFDFF3F8();
  v15 = 0;
  sub_1AFDFE8E8();
  if (!v1)
  {
    v14 = 1;
    sub_1AFDFE8E8();
    v13 = 2;
    sub_1AFDFE8E8();
    v12 = 3;
    sub_1AFDFE8E8();
    v11 = 4;
    sub_1AFDFE8E8();
    v10 = 5;
    sub_1AFDFE8E8();
  }

  return (*(v5 + 8))(v7, v4);
}

double sub_1AF5C74BC@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1AF5D118C(a2, &v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

double sub_1AF5C7518@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 31) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

void *sub_1AF5C7528@<X0>(__n128 *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v60 = *MEMORY[0x1E69E9840];
  v50 = sub_1AF19BBC0(a1, a2);
  v49 = sub_1AF19C46C(a1, v10);
  v12 = sub_1AF19BC08(a1, v11);
  v47 = v13;
  v48 = v12;
  v45 = v15;
  v46 = v14;
  v17 = sub_1AF19C1FC(a1, v16);
  v40 = sub_1AF5D18E4(a2, v18);
  v41 = v19;
  v53 = v21;
  v55 = v20;
  v20.i64[0] = vsubq_f32(v19, vsubq_f32(0, a7)).u64[0];
  v20.f32[2] = v19.f32[2] - (0.0 - a7.f32[2]);
  v20.i32[3] = 0;
  v57 = v20;
  bzero(&__src[2], 0x250uLL);
  *&v22 = vmulq_n_f32(v50, v49 * 0.00011651).u64[0];
  *(&v22 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v49 * 0.00011651, v50, 2));
  __src[0] = v22;
  __src[1] = v57;
  *(&__src[36] + 1) = 1.0 / (v17 * v17);
  if (sub_1AF19B994(a1, v23) && (v25 = sub_1AF19ECC8(a1, v24)) != 0)
  {
    v26 = v25;
    v27 = 0;
    v58 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v40.n128_f32[0]), a5, v40.n128_u64[0], 1), a6, v40, 2), a7, v40, 3);
    v56 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v55.f32[0]), a5, *v55.f32, 1), a6, v55, 2), a7, v55, 3);
    v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v53.f32[0]), a5, *v53.f32, 1), a6, v53, 2), a7, v53, 3);
    v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v41.f32[0]), a5, *v41.f32, 1), a6, v41, 2), a7, v41, 3);
    v28 = &__src[3];
    do
    {
      v29 = sub_1AF5D1904(v27++);
      v61.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v29.n128_f32[0]), v56, v29.n128_u64[0], 1), v54, v29, 2), v52, v29, 3);
      v61.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v30.f32[0]), v56, *v30.f32, 1), v54, v30, 2), v52, v30, 3);
      v61.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v31.f32[0]), v56, *v31.f32, 1), v54, v31, 2), v52, v31, 3);
      v61.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v32.f32[0]), v56, *v32.f32, 1), v54, v32, 2), v52, v32, 3);
      *(v28 - 1) = __invert_f4(v61);
      v28 += 4;
    }

    while (v27 != 6);
    v34 = v26[1];
    __src[30] = *v26;
    __src[31] = v34;
    v35 = v26[3];
    __src[32] = v26[2];
    __src[33] = v35;
    v36 = v26[5];
    __src[34] = v26[4];
    __src[35] = v36;
    __src[26] = v48;
    __src[27] = v47;
    __src[28] = v46;
    __src[29] = v45;
    v37 = sub_1AF19C608(a1, v33);
    *&__src[36] = v37 * 0.01;
  }

  else
  {
    memset(&__src[30], 0, 100);
  }

  *&v38 = vmulq_f32(vmulq_n_f32(v50, v49), vdupq_n_s32(0x3ABFE803u)).u64[0];
  *(&v38 + 2) = (v50.n128_f32[2] * v49) * 0.0014641;
  HIDWORD(v38) = 0;
  __src[0] = v38;
  return memcpy(a3, __src, 0x270uLL);
}

float sub_1AF5C7818@<S0>(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  v56 = sub_1AF19BBC0(a1, a2);
  v55 = sub_1AF19C46C(a1, v10);
  v12 = sub_1AF19BC08(a1, v11);
  v63 = v13;
  v64 = v12;
  v61 = v15;
  v62 = v14;
  v17 = sub_1AF19C1FC(a1, v16);
  v19 = sub_1AF19C9F0(a1, v18);
  v21 = sub_1AF19BFD8(a1, v20);
  v43 = sub_1AF5D18E4(a2, v22);
  v45 = v23;
  v47 = v24;
  v59 = v25;
  v27 = sub_1AF19B994(a1, v26);
  v29 = 0uLL;
  v30 = 0.0;
  if (v27)
  {
    v31 = sub_1AF19ECC8(a1, v28);
    v29 = 0uLL;
    if (v31)
    {
      v57 = *v31;
      v33 = sub_1AF19C608(a1, v32);
      v30 = v33 * 0.01;
      v29 = v57;
    }
  }

  v58 = v29;
  v65.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v43.n128_f32[0]), a5, v43.n128_u64[0], 1), a6, v43, 2), a7, v43, 3);
  v65.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v45.f32[0]), a5, *v45.f32, 1), a6, v45, 2), a7, v45, 3);
  v65.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v47.f32[0]), a5, *v47.f32, 1), a6, v47, 2), a7, v47, 3);
  v65.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, v59.f32[0]), a5, *v59.f32, 1), a6, v59, 2), a7, v59, 3);
  v66 = __invert_f4(v65);
  v50 = v66.columns[0];
  v54 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v66.columns[0].f32[0]), v63, *v66.columns[0].f32, 1), v62, v66.columns[0], 2), v61, v66.columns[0], 3);
  v52 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v66.columns[1].f32[0]), v63, *v66.columns[1].f32, 1), v62, v66.columns[1], 2), v61, v66.columns[1], 3);
  v41 = v66.columns[3];
  v42 = v66.columns[2];
  v46 = v66.columns[1];
  v48 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v66.columns[2].f32[0]), v63, *v66.columns[2].f32, 1), v62, v66.columns[2], 2), v61, v66.columns[2], 3);
  v44 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v64, v66.columns[3].f32[0]), v63, *v66.columns[3].f32, 1), v62, v66.columns[3], 2), v61, v66.columns[3], 3);
  v34 = 1.0 / (v17 * v17);
  v35 = cosf(((v19 * 3.1416) / 180.0) * 0.5);
  v36 = cosf(((v21 * 3.1416) / 180.0) * 0.5);
  *&v37 = vsubq_f32(v59, vsubq_f32(0, a7)).u64[0];
  *(&v37 + 2) = v59.f32[2] - (0.0 - a7.f32[2]);
  HIDWORD(v37) = 0;
  *&v38 = vdivq_f32(vmulq_f32(vmulq_n_f32(v56, v55), vdupq_n_s32(0x3ABFE803u)), vdupq_n_s32(0x40490FDAu)).u64[0];
  *(&v38 + 1) = COERCE_UNSIGNED_INT((vmuls_lane_f32(v55, v56, 2) * 0.0014641) / 3.1416);
  *a3 = v38;
  *(a3 + 16) = v37;
  *(a3 + 32) = v50;
  *(a3 + 48) = v46;
  *(a3 + 64) = v42;
  *(a3 + 80) = v41;
  *(a3 + 96) = v64;
  *(a3 + 112) = v63;
  *(a3 + 128) = v62;
  *(a3 + 144) = v61;
  v39 = 1.0 / fmaxf(v35 - v36, 0.00000011921);
  *(a3 + 160) = v54;
  *(a3 + 176) = v52;
  *(a3 + 192) = v48;
  *(a3 + 208) = v44;
  *(a3 + 224) = v58;
  *(a3 + 240) = v30;
  *(a3 + 244) = v34;
  result = -(v36 * v39);
  *(a3 + 248) = v39;
  *(a3 + 252) = result;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  return result;
}

double sub_1AF5C7B28@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = a1;
  inited[5] = a2;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for Color;
  inited[9] = &off_1F252CA08;
  if (v11 > 0xF)
  {
    *&v19[0] = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v19[0];
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 3;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 3;
  *(v16 + 32) = 771;
  *(v16 + 34) = 3;
  if (v14)
  {
    *&v19[0] = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = *&v19[0];
    v15 = *(*&v19[0] + 16);
  }

  sub_1AF5C3CE0((v16 + 32), v15, inited + 4, inited[2], v6, v19);

  result = *v19;
  v18 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C7CD0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for Position;
  inited[5] = &off_1F252EDF0;
  inited[6] = &type metadata for Orientation;
  inited[7] = &off_1F252C828;
  inited[8] = &type metadata for LookAt;
  inited[9] = &off_1F25620B0;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C7EC8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ForceField;
  inited[5] = &off_1F2560E90;
  inited[6] = &type metadata for ForceFieldRuntime;
  inited[7] = &off_1F2560F40;
  inited[8] = &type metadata for WorldTransform;
  inited[9] = &off_1F2529AF8;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C80C0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ClampBox;
  inited[5] = &off_1F255F630;
  inited[6] = &type metadata for Position;
  inited[7] = &off_1F252EDF0;
  inited[8] = &type metadata for Velocity;
  inited[9] = &off_1F2530A78;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C82B8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleBoxCollider;
  inited[5] = &off_1F2552780;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C84B0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleCylinderCollider;
  inited[5] = &off_1F2552958;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

uint64_t sub_1AF5C86A8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C680;
  inited[4] = &type metadata for ParticleSDFCollider;
  inited[5] = &off_1F2553190;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for LastFrameWorldTransform;
  inited[9] = &off_1F2529E30;
  if (v7 > 0xF)
  {
    v25 = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = v25;
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 3;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 3;
  *(v12 + 32) = 771;
  *(v12 + 34) = 3;
  if (v10)
  {
    v25 = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = v25;
    v11 = v25[2];
  }

  v13 = *v2 + 41;
  v14 = (*v2)[12];
  v15 = (*v2)[13] >> 4;
  v16 = (*v2)[14];
  v17 = (*v2)[15] / 0x18u;
  v18 = *(v2 + 2);
  v19 = *(v2 + 12);
  v20 = v2[4];
  v21 = v2[2];
  v22 = *(v2 + 24);
  v23 = sub_1AF6B7F4C(inited + 4, inited[2], (v12 + 32), v11, (v13 + v14), v15, (v13 + v16), v17);

  *a1 = v23;
  *(a1 + 8) = v18;
  *(a1 + 12) = v19;
  *(a1 + 13) = v26;
  *(a1 + 15) = v27;
  *(a1 + 16) = v21;
  *(a1 + 24) = v22;
  *(a1 + 25) = v25;
  *(a1 + 28) = *(&v25 + 3);
  *(a1 + 32) = v20;
  return result;
}

double sub_1AF5C88A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  v8 = *v3;
  v9 = *v3 + 41;
  v10 = (*v3)[8];
  v11 = v8[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C6B0;
  inited[4] = a1;
  inited[5] = a2;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  inited[8] = &type metadata for Color;
  inited[9] = &off_1F252CA08;
  inited[10] = &type metadata for Shadow;
  inited[11] = &off_1F2530098;
  if (v11 > 0xF)
  {
    *&v19[0] = sub_1AFC0592C((v9 + v10), v11 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v19[0];
  }

  v13 = v8[10];
  v14 = v8[11];
  v15 = 4;
  v16 = sub_1AFDFD488();
  *(v16 + 16) = 4;
  *(v16 + 32) = 50529027;
  if (v14)
  {
    *&v19[0] = sub_1AFC0587C((v9 + v13), v14);
    sub_1AF48FBC0(v16);
    v16 = *&v19[0];
    v15 = *(*&v19[0] + 16);
  }

  sub_1AF5C3CE0((v16 + 32), v15, inited + 4, inited[2], v6, v19);

  result = *v19;
  v18 = v19[1];
  *a3 = v19[0];
  *(a3 + 16) = v18;
  *(a3 + 32) = v20;
  return result;
}

double sub_1AF5C8A44@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1 + 41;
  v6 = (*v1)[8];
  v7 = v4[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = &type metadata for AmbientLight;
  inited[5] = &off_1F252AC40;
  inited[6] = &type metadata for Color;
  inited[7] = &off_1F252CA08;
  if (v7 > 0xF)
  {
    *&v15[0] = sub_1AFC0592C((v5 + v6), v7 >> 4);
    sub_1AF48FC80(inited);
    inited = *&v15[0];
  }

  v9 = v4[10];
  v10 = v4[11];
  v11 = 2;
  v12 = sub_1AFDFD488();
  *(v12 + 16) = 2;
  *(v12 + 32) = 771;
  if (v10)
  {
    *&v15[0] = sub_1AFC0587C((v5 + v9), v10);
    sub_1AF48FBC0(v12);
    v12 = *&v15[0];
    v11 = *(*&v15[0] + 16);
  }

  sub_1AF5C3CE0((v12 + 32), v11, inited + 4, inited[2], v2, v15);

  result = *v15;
  v14 = v15[1];
  *a1 = v15[0];
  *(a1 + 16) = v14;
  *(a1 + 32) = v16;
  return result;
}

uint64_t sub_1AF5C8BC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SceneKitRenderer(0);
  v5 = *v2;
  v6 = *v2 + 41;
  v7 = *(*v2 + 16);
  v8 = *(*v2 + 18);
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = v4;
  inited[5] = &off_1F2546F88;
  inited[6] = &type metadata for WorldTransform;
  inited[7] = &off_1F2529AF8;
  if (v8 > 0xF)
  {
    v26 = sub_1AFC0592C((v6 + v7), v8 >> 4);
    sub_1AF48FC80(inited);
    inited = v26;
  }

  v10 = *(v5 + 20);
  v11 = *(v5 + 22);
  v12 = 2;
  v13 = sub_1AFDFD488();
  *(v13 + 16) = 2;
  *(v13 + 32) = 771;
  if (v11)
  {
    v26 = sub_1AFC0587C((v6 + v10), v11);
    sub_1AF48FBC0(v13);
    v13 = v26;
    v12 = v26[2];
  }

  v14 = *v2 + 41;
  v15 = *(*v2 + 24);
  v16 = *(*v2 + 26) >> 4;
  v17 = *(*v2 + 28);
  v18 = *(*v2 + 30) / 0x18u;
  v19 = *(v2 + 2);
  v20 = *(v2 + 12);
  v21 = v2[4];
  v22 = v2[2];
  v23 = *(v2 + 24);
  v24 = sub_1AF6B7F4C(inited + 4, inited[2], (v13 + 32), v12, (v14 + v15), v16, (v14 + v17), v18);

  *a1 = v24;
  *(a1 + 8) = v19;
  *(a1 + 12) = v20;
  *(a1 + 13) = v27;
  *(a1 + 15) = v28;
  *(a1 + 16) = v22;
  *(a1 + 24) = v23;
  *(a1 + 25) = v26;
  *(a1 + 28) = *(&v26 + 3);
  *(a1 + 32) = v21;
  return result;
}

uint64_t sub_1AF5C8DEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = v5;
  v11 = *v5;
  v12 = *v5 + 41;
  v13 = (*v5)[8];
  v14 = v11[9];
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 1) = xmmword_1AFE4C620;
  inited[4] = a1;
  inited[5] = a2;
  inited[6] = a3;
  inited[7] = a4;
  if (v14 > 0xF)
  {
    v34 = sub_1AFC0592C((v12 + v13), v14 >> 4);
    sub_1AF48FC80(inited);
    inited = v34;
  }

  v16 = v12;
  v17 = v11[10];
  v18 = v11[11];
  v19 = 2;
  v20 = sub_1AFDFD488();
  *(v20 + 16) = 2;
  *(v20 + 32) = 771;
  if (v18)
  {
    v34 = sub_1AFC0587C((v16 + v17), v18);
    sub_1AF48FBC0(v20);
    v20 = v34;
    v19 = v34[2];
  }

  v21 = *v9 + 41;
  v22 = (*v9)[12];
  v23 = (*v9)[13] >> 4;
  v24 = (*v9)[14];
  v25 = (*v9)[15] / 0x18u;
  v26 = *(v9 + 2);
  v27 = *(v9 + 12);
  v28 = v9[4];
  v29 = v9[2];
  v30 = *(v9 + 24);
  v31 = sub_1AF6B7F4C(inited + 4, inited[2], (v20 + 32), v19, (v21 + v22), v23, (v21 + v24), v25);

  *a5 = v31;
  *(a5 + 8) = v26;
  *(a5 + 12) = v27;
  *(a5 + 13) = v35;
  *(a5 + 15) = v36;
  *(a5 + 16) = v29;
  *(a5 + 24) = v30;
  *(a5 + 25) = v34;
  *(a5 + 28) = *(&v34 + 3);
  *(a5 + 32) = v28;
  return result;
}

void sub_1AF5C94F8(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v1331 = *MEMORY[0x1E69E9840];
  if (!v3)
  {
    return;
  }

  v4 = v1;
  v5 = v3;
  v910 = v2;
  v6 = *(v2 + 184);

  os_unfair_recursive_lock_lock_with_options();
  v7 = sub_1AF6D2A6C(&type metadata for FrameConstantsStorage);
  if (v8 == 2 || (v8 & 1) == 0)
  {
    os_unfair_recursive_lock_unlock();
    v1103 = 0u;
  }

  else
  {
    v10 = (*(v6 + 16) + v7);
    v11 = v5;
    v12 = 32 * v9;
    os_unfair_lock_lock(*(*(v6 + 32) + 32 * v9 + 24));
    os_unfair_recursive_lock_unlock();
    v1103 = v10[53];
    v13 = *(v6 + 32) + v12;
    v5 = v11;
    os_unfair_lock_unlock(*(v13 + 24));
  }

  bzero(v1223, 0x65C0uLL);
  v14 = v5[41];
  v1226[6] = v5[40];
  v1226[7] = v14;
  v1227[0] = v5[42];
  *(v1227 + 9) = *(v5 + 681);
  v15 = v5[37];
  v1226[2] = v5[36];
  v1226[3] = v15;
  v16 = v5[39];
  v1226[4] = v5[38];
  v1226[5] = v16;
  v17 = v5[35];
  v1226[0] = v5[34];
  v1226[1] = v17;
  if (sub_1AF448314(v1226) == 1)
  {
    sub_1AFDFE518();
    __break(1u);
    return;
  }

  v18 = *(&v1226[0] + 1);
  ObjectType = swift_getObjectType();
  v20 = *(v18 + 152);
  swift_unknownObjectRetain();
  v21 = v20(ObjectType, v18);
  swift_unknownObjectRelease();
  v22 = *(v4 + 32);
  v1208[0] = *(v4 + 16);
  v1208[1] = v22;
  v1209 = *(v4 + 48);
  sub_1AF6B06C0(v910, v1208, v21 & 0xFFFFFFFFFFLL, &v1228);
  v23 = v1228;
  if (v1228)
  {
    v24 = v1236;
    v1030 = v1235;
    v1092 = v1234;
    v1007 = v1233;
    v999 = v1232;
    v1120 = v1231;
    v1107 = v1229;
    v25 = BYTE12(v1228);
    v1073 = DWORD2(v1228);
    v1082 = v1230;
  }

  else
  {
    v1107 = 0;
    v1120 = 0;
    v999 = 0;
    v1007 = 0;
    v1092 = 0;
    v1030 = 0;
    v24 = 0;
    v1082 = 0;
    v1073 = 0;
    v25 = 0;
  }

  v26 = *(v4 + 72);
  v1206[0] = *(v4 + 56);
  v1206[1] = v26;
  v1207 = *(v4 + 88);
  sub_1AF6B06C0(v910, v1206, v21 & 0xFFFFFFFFFFLL, &v1237);
  v979 = v1237;
  if (v1237)
  {
    v27 = v1245;
    v962 = v1244;
    v929 = v1243;
    v931 = v1242;
    v916 = v1241;
    v976 = v1240;
    v971 = v1238;
    v950 = DWORD2(v1237);
    v945 = BYTE12(v1237);
    v967 = v1239;
  }

  else
  {
    v971 = 0;
    v976 = 0;
    v916 = 0;
    v929 = 0;
    v931 = 0;
    v962 = 0;
    v967 = 0;
    v950 = 0;
    v945 = 0;
    v27 = 0;
  }

  v938 = v27;
  if (v27 >= 8)
  {
    v28 = 8;
  }

  else
  {
    v28 = v27;
  }

  if (v24 >= 8)
  {
    v29 = 8;
  }

  else
  {
    v29 = v24;
  }

  if (!v23)
  {
    v29 = 0;
  }

  v1223[1] = v28;
  v1223[0] = v29;
  v30 = *(v4 + 112);
  v1204[0] = *(v4 + 96);
  v1204[1] = v30;
  v1205 = *(v4 + 128);
  sub_1AF6B06C0(v910, v1204, v21 & 0xFFFFFFFFFFLL, &v1246);
  v31 = v1246;
  v901 = v1246;
  if (v1246)
  {
    v964 = v1253;
    v933 = v1251;
    v927 = v1250;
    v888 = v1249;
    v886 = v1252;
    v887 = v1247;
    v884 = BYTE12(v1246);
    LOBYTE(v885) = v1248;
    HIDWORD(v885) = DWORD2(v1246);
    if (v1254 >= 8)
    {
      v31 = 8;
    }

    else
    {
      v31 = v1254;
    }

    v898 = v1254 > 0;
  }

  else
  {
    v887 = 0;
    v888 = 0;
    v927 = 0;
    v933 = 0;
    v885 = 0;
    v886 = 0;
    v964 = 0;
    v898 = 0;
    v884 = 0;
  }

  v1223[2] = v31;
  v32 = *(v4 + 152);
  v1202[0] = *(v4 + 136);
  v1202[1] = v32;
  v1203 = *(v4 + 168);
  sub_1AF6B06C0(v910, v1202, v21 & 0xFFFFFFFFFFLL, &v1255);
  v33 = v1255;
  v926 = v1255;
  if (v1255)
  {
    v935 = v1262;
    v919 = v1261;
    v921 = v1260;
    v914 = v1259;
    v915 = v1258;
    v913 = v1256;
    v33 = v1263;
    HIDWORD(v912) = DWORD2(v1255);
    LOBYTE(v912) = BYTE12(v1255);
    v911 = v1257;
  }

  else
  {
    v913 = 0;
    v914 = 0;
    v915 = 0;
    v921 = 0;
    v919 = 0;
    v935 = 0;
    v911 = 0;
    v912 = 0;
  }

  v924 = v33;
  if (v33 >= 1)
  {
    v34 = 1;
  }

  else
  {
    v34 = v33;
  }

  v1223[3] = v34;
  v35 = *(v4 + 272);
  v1200[0] = *(v4 + 256);
  v1200[1] = v35;
  v1201 = *(v4 + 288);
  sub_1AF6B06C0(v910, v1200, v21 & 0xFFFFFFFFFFLL, &v1264);
  if (v1264)
  {
    v36 = v1271;
    v37 = v1270;
    v38 = v1269;
    v39 = v1268;
    v40 = v1267;
    v41 = v1266;
    v42 = v1265;
    if (v1270 >= 8)
    {
      v43 = 8;
    }

    else
    {
      v43 = v1270;
    }
  }

  else
  {
    v38 = 0;
    v37 = 0;
    v36 = 0;
    v43 = 0;
    v42 = 0uLL;
    v41 = 0uLL;
    v40 = 0uLL;
    v39 = 0uLL;
  }

  v1104 = vsubq_f32(0, v1103);
  v1296 = v42;
  v1297 = v41;
  v1298 = v40;
  v1299 = v39;
  v1295 = v1264;
  v1300 = v38;
  v1301 = v37;
  v1302 = v36;
  v1223[6] = v43;
  v44 = *(v4 + 192);
  v1198[0] = *(v4 + 176);
  v1198[1] = v44;
  v1199 = *(v4 + 208);
  sub_1AF6B06C0(v910, v1198, v21 & 0xFFFFFFFFFFLL, &v1272);
  v45 = v1272;
  v900 = v1272;
  if (v1272)
  {
    v936 = v1279;
    v922 = v1277;
    v917 = v1276;
    v893 = v1275;
    v891 = v1278;
    v892 = v1273;
    v889 = BYTE12(v1272);
    LOBYTE(v890) = v1274;
    HIDWORD(v890) = DWORD2(v1272);
    if (v1280 >= 8)
    {
      v45 = 8;
    }

    else
    {
      v45 = v1280;
    }

    v899 = v1280 > 0;
  }

  else
  {
    v892 = 0;
    v893 = 0;
    v917 = 0;
    v922 = 0;
    v890 = 0;
    v891 = 0;
    v936 = 0;
    v899 = 0;
    v889 = 0;
  }

  v46 = v1104;
  v46.f32[2] = 0.0 - v1103.f32[2];
  v1105 = v46;
  v1223[4] = v45;
  v47 = *(v4 + 232);
  v1196[0] = *(v4 + 216);
  v1196[1] = v47;
  v1197 = *(v4 + 248);
  sub_1AF6B06C0(v910, v1196, v21 & 0xFFFFFFFFFFLL, &v1281);
  v48 = v1281;
  v902 = v1281;
  if (v1281)
  {
    v937 = v1288;
    v920 = v1287;
    v923 = v1286;
    v918 = v1285;
    v896 = v1282;
    v897 = v1284;
    v894 = BYTE12(v1281);
    LOBYTE(v895) = v1283;
    HIDWORD(v895) = DWORD2(v1281);
    v925 = v1289;
    if (v1289 >= 8)
    {
      v48 = 8;
    }

    else
    {
      v48 = v1289;
    }
  }

  else
  {
    v896 = 0;
    v897 = 0;
    v918 = 0;
    v923 = 0;
    v920 = 0;
    v937 = 0;
    v925 = 0;
    v895 = 0;
    v894 = 0;
  }

  _Q0 = v1105;
  _Q0.i32[3] = 1.0;
  v1106 = _Q0;
  v1223[5] = v48;
  v1159 = MEMORY[0x1E69E7CC0];
  *&v50 = 0;
  *(&v50 + 2) = 1.0 / ceilf(sqrtf((v28 + 6 * v34 + v48)));
  *(&v50 + 3) = *(&v50 + 2);
  v991 = v50;
  v1158 = v50;
  __asm { FMOV            V0.2S, #1.0 }

  v1132 = _Q0.i32[0];
  if (v23)
  {
    v55 = v938;
    if (v24 >= 1 && v1007)
    {
      v56 = *(v1030 + 32);
      v57 = *(v1092 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v1190 = v23;
      v1191 = v1073;
      v1192 = v25;
      v1193 = v1107;
      v1194 = v1082;
      v1195 = v1120;
      sub_1AF5D15C0(&v1228, v1218);
      v58 = 0;
      v59 = 0;
      v1054 = vdupq_n_s32(0x3ABFE803u);
      v989 = v57;
      v993 = v56;
      while (1)
      {
        v1037 = v59;
        v1022 = v58;
        v60 = (v999 + 48 * v58);
        v61 = *v60;
        v62 = v60[2];
        v63 = *(v60 + 2);
        v1143 = *(v60 + 3);
        v65 = *(v60 + 4);
        v64 = *(v60 + 5);
        v1121 = v60[1];
        if (v57)
        {
          v66 = *(v64 + 376);

          os_unfair_lock_lock(v66);
          os_unfair_lock_lock(*(v64 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v56);
        v67 = *(v1030 + 64);
        v1329[0] = *(v1030 + 48);
        v1329[1] = v67;
        v1330 = *(v1030 + 80);
        v68 = *(v1030 + 32);
        v69 = *(*(*(*(v64 + 40) + 16) + 32) + 16) + 1;
        v70 = v64;

        *(v1030 + 48) = ecs_stack_allocator_allocate(v68, 48 * v69, 8);
        *(v1030 + 56) = v69;
        *(v1030 + 72) = 0;
        *(v1030 + 80) = 0;
        *(v1030 + 64) = 0;

        v71 = sub_1AF64B110(&type metadata for DirectionalLight, &off_1F252AAB0, v63, v1143, v65, v1030);
        v72 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v63, v1143, v65, v1030);
        v1014 = v70;
        v73 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v63, v1143, v65, v1030);
        v74 = v73;
        if (v63)
        {
          if (v65)
          {
            v75 = &v1223[64 * v62 + 28];
            v76 = v72 + 32;
            v77 = (v71 + 8);
            v56 = v993;
            v78 = v1022;
            do
            {
              if (v62 <= 7)
              {
                v95 = *v76;
                v96 = vabsq_f32(*v76);
                if (v96.f32[0] > 0.00000011921 || v96.f32[1] > 0.00000011921 || v96.f32[2] > 0.00000011921)
                {
                  v99 = vmulq_f32(v95, v95);
                  *&v100 = v99.f32[2] + vaddv_f32(*v99.f32);
                  *v99.f32 = vrsqrte_f32(v100);
                  *v99.f32 = vmul_f32(*v99.f32, vrsqrts_f32(v100, vmul_f32(*v99.f32, *v99.f32)));
                  v101 = vmulq_n_f32(v95, vmul_f32(*v99.f32, vrsqrts_f32(v100, vmul_f32(*v99.f32, *v99.f32))).f32[0]);
                  v101.i32[3] = v1049.i32[3];
                  v1144 = v101;
                }

                else
                {
                  v1144 = 0u;
                }

                v79 = *(v77 - 1);
                v80 = *v77;
                v81 = v77[1];
                v1108 = *v74;
                v1122 = *(v77 - 2);
                v1332.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v76 - 2))), xmmword_1AFE20160, *(v76 - 32), 1), xmmword_1AFE20180, *(v76 - 2), 2), v1106, *(v76 - 2), 3);
                v1332.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v76 - 1))), xmmword_1AFE20160, *(v76 - 16), 1), xmmword_1AFE20180, *(v76 - 1), 2), v1106, *(v76 - 1), 3);
                v1332.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v95.f32[0]), xmmword_1AFE20160, *v95.f32, 1), xmmword_1AFE20180, v95, 2), v1106, v95, 3);
                v1332.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v76 + 1))), xmmword_1AFE20160, *(v76 + 16), 1), xmmword_1AFE20180, *(v76 + 1), 2), v1106, *(v76 + 1), 3);
                v1333 = __invert_f4(v1332);
                v83 = v80 + 0.0001;
                if (v80 < -100000.0)
                {
                  v83 = -100000.0;
                }

                *v82.i32 = fmaxf(v80, -100000.0);
                if (v81 > v83)
                {
                  v83 = v81;
                }

                *v82.i32 = v83 - *v82.i32;
                *v84.i8 = vdiv_f32(__PAIR64__(LODWORD(v83), v1132), vdup_lane_s32(v82, 0));
                v85.i64[0] = 0;
                v85.i32[2] = 0;
                *&v85.i32[3] = (v79 - v79) / (-v79 - v79);
                v86.i32[0] = 0;
                v86.i32[2] = 0;
                *&v86.i32[1] = 2.0 / (v79 + v79);
                v84.i64[1] = v84.i64[0];
                v87 = vzip1q_s32(v86.u64[0], 0);
                v86.i32[3] = v85.i32[3];
                *&v88 = vmulq_f32(vmulq_n_f32(v1108, v1122), v1054).u64[0];
                *(&v88 + 2) = vmuls_lane_f32(v1122, v1108, 2) * 0.0014641;
                HIDWORD(v88) = 0;
                *(v75 - 3) = v88;
                *(v75 - 2) = v1144;
                *(v75 - 4) = v1333;
                v89 = 0;
                v90 = v86.i32[1];
                v91 = vzip2q_s32(v85, v84);
                v92 = (v75 + 12);
                vst2_f32(v92, *(&v87 - 8));
                *(v75 + 4) = vzip2q_s32(0, v87);
                v93 = vzip2q_s32(v86, xmmword_1AFE201A0);
                v94 = (v75 + 20);
                vst2_f32(v94, v91);
                *(v75 + 6) = vzip2q_s32(v91, v93);
                *(v75 + 7) = 0u;
                *(v75 + 8) = 0u;
                *(v75 + 9) = 0u;
                *(v75 + 10) = 0u;
                *(v75 + 11) = 0u;
                *(v75 + 12) = 0u;
              }

              ++v74;
              v75 += 64;
              v76 += 64;
              ++v62;
              v77 += 4;
              --v65;
            }

            while (v65);
            v59 = v1037;
            goto LABEL_97;
          }

          v59 = v1037;
        }

        else
        {
          v102 = v62 - v61;
          v103 = v62 - v61 - 1;
          v104 = v71 - 8;
          v105 = v73 - 16;
          v106 = v72 - 32;
          v59 = v1037;
LABEL_78:
          v107 = &v104[16 * v61];
          v108 = &v1218[16 * (v102 + v61) + 37];
          v109 = &v106[64 * v61];
          while (v1121 != v61)
          {
            ++v61;
            v107 += 4;
            v108 += 4;
            v109 += 64;
            if (v103 + v61 <= 7)
            {
              v110 = *v109;
              v111 = vabsq_f32(*v109);
              if (v111.f32[0] > 0.00000011921 || v111.f32[1] > 0.00000011921 || v111.f32[2] > 0.00000011921)
              {
                v114 = vmulq_f32(v110, v110);
                *&v115 = v114.f32[2] + vaddv_f32(*v114.f32);
                *v114.f32 = vrsqrte_f32(v115);
                *v114.f32 = vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32)));
                v116 = vmulq_n_f32(v110, vmul_f32(*v114.f32, vrsqrts_f32(v115, vmul_f32(*v114.f32, *v114.f32))).f32[0]);
                v116.i32[3] = v986;
                v1145 = v116;
              }

              else
              {
                v1145 = 0u;
              }

              v117 = *(v107 - 1);
              v1109 = *(v107 - 2);
              v118 = *v107;
              v119 = v107[1];
              v1038 = *&v105[16 * v61];
              v1334.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v109 - 2))), xmmword_1AFE20160, *(v109 - 32), 1), xmmword_1AFE20180, *(v109 - 2), 2), v1106, *(v109 - 2), 3);
              v1334.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v109 - 1))), xmmword_1AFE20160, *(v109 - 16), 1), xmmword_1AFE20180, *(v109 - 1), 2), v1106, *(v109 - 1), 3);
              v1334.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v110.f32[0]), xmmword_1AFE20160, *v110.f32, 1), xmmword_1AFE20180, v110, 2), v1106, v110, 3);
              v1334.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*(v109 + 1))), xmmword_1AFE20160, *(v109 + 16), 1), xmmword_1AFE20180, *(v109 + 1), 2), v1106, *(v109 + 1), 3);
              v1335 = __invert_f4(v1334);
              v121 = v118 + 0.0001;
              if (v118 < -100000.0)
              {
                v121 = -100000.0;
              }

              *v120.i32 = fmaxf(v118, -100000.0);
              if (v119 > v121)
              {
                v121 = v119;
              }

              *v120.i32 = v121 - *v120.i32;
              *v122.i8 = vdiv_f32(__PAIR64__(LODWORD(v121), v1132), vdup_lane_s32(v120, 0));
              v123.i64[0] = 0;
              v123.i32[2] = 0;
              *&v123.i32[3] = (v117 - v117) / (-v117 - v117);
              v124.i32[0] = 0;
              v124.i32[2] = 0;
              *&v124.i32[1] = 2.0 / (v117 + v117);
              v122.i64[1] = v122.i64[0];
              v125 = vzip1q_s32(v124.u64[0], 0);
              v124.i32[3] = v123.i32[3];
              v126.i64[0] = vmulq_f32(vmulq_n_f32(v1038, v1109), v1054).u64[0];
              v126.f32[2] = vmuls_lane_f32(v1109, v1038, 2) * 0.0014641;
              v126.i32[3] = 0;
              v108[-2].columns[2] = v126;
              v108[-2].columns[3] = v1145;
              v108[-1] = v1335;
              v127 = 0;
              v128 = v124.i32[1];
              v129 = vzip2q_s32(v123, v122);
              v130 = v108;
              vst2_f32(v130, *(&v125 - 8));
              v130 += 4;
              *v130 = vzip2q_s32(0, v125);
              v131 = vzip2q_s32(v124, xmmword_1AFE201A0);
              f32 = v108->columns[2].f32;
              vst2_f32(f32, v129);
              v108->columns[3] = vzip2q_s32(v129, v131);
              v108[1].columns[0] = 0u;
              v108[1].columns[1] = 0u;
              v108[1].columns[2] = 0u;
              v108[1].columns[3] = 0u;
              v108[2].columns[0] = 0u;
              v108[2].columns[1] = 0u;
              goto LABEL_78;
            }
          }
        }

        v56 = v993;
        v78 = v1022;
LABEL_97:
        sub_1AF630994(v1030, &v1190, v1329);
        sub_1AF62D29C(v1014);
        ecs_stack_allocator_pop_snapshot(v56);
        v57 = v989;
        if (v989)
        {
          os_unfair_lock_unlock(*(v1014 + 344));
          os_unfair_lock_unlock(*(v1014 + 376));
        }

        v58 = v78 + 1;
        if (v58 == v1007)
        {
          sub_1AF5D1564(&v1228);
          goto LABEL_103;
        }
      }
    }

    v59 = 0;
    v133 = v979;
    if (!v979)
    {
      goto LABEL_161;
    }

LABEL_104:
    if (v55 >= 1 && v931)
    {
      v959 = v962[4];
      v955 = *(v929 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
      v1184 = v133;
      v1185 = v950;
      v1186 = v945;
      v1187 = v971;
      v1188 = v967;
      v1189 = v976;
      sub_1AF5D15C0(&v1237, v1218);
      v134 = 0;
      v135 = MEMORY[0x1E69E7CC0];
      v980 = vdupq_n_s32(0x3ABFE803u);
      while (1)
      {
        v1039 = v59;
        v951 = v134;
        v136 = (v916 + 48 * v134);
        v137 = *v136;
        v138 = v136[1];
        v139 = v136[2];
        v141 = *(v136 + 2);
        v140 = *(v136 + 3);
        v142 = *(v136 + 4);
        v143 = *(v136 + 5);
        if (v955)
        {
          v144 = *(v143 + 376);

          os_unfair_lock_lock(v144);
          os_unfair_lock_lock(*(v143 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v959);

        sub_1AF630914(v145, v962, v1290);

        LOBYTE(v1218[0]) = 1;
        v1317[0] = v929;
        v1317[1] = v143;
        v1317[2] = v962;
        v1318 = v139;
        v1319 = (v138 - v137 + v139);
        v1320 = v938;
        v1321 = v137;
        v1322 = v138;
        v1323 = 0;
        v1324 = 0;
        v1325 = 1;
        v1326 = v141;
        v1327 = v140;
        v1328 = v142;
        v59 = v1039;
        v146 = sub_1AF705A48(v143, v1317);
        v147 = sub_1AF705994(v143, v1317);
        v148 = sub_1AF70596C(v143, v1317);
        v149 = sub_1AF705944(v143, v1317);
        if (!v1326)
        {
          break;
        }

        v150 = v1328;
        if (v1328)
        {
          v977 = v148;
          v940 = v143;
          v946 = v1039;
          v151 = 0;
          v152 = v149 + 8;
          v153 = v146 + 4;
          v154 = (v147 + 32);
          v972 = v1328;
          do
          {
            v164 = v151 + v1318;
            if (v151 + v1318 <= 7)
            {
              v165 = *v154;
              v166 = vabsq_f32(*v154);
              if (v166.f32[0] > 0.00000011921 || v166.f32[1] > 0.00000011921 || v166.f32[2] > 0.00000011921)
              {
                v169 = vmulq_f32(v165, v165);
                *&v170 = v169.f32[2] + vaddv_f32(*v169.f32);
                *v169.f32 = vrsqrte_f32(v170);
                *v169.f32 = vmul_f32(*v169.f32, vrsqrts_f32(v170, vmul_f32(*v169.f32, *v169.f32)));
                v171 = vmulq_n_f32(v165, vmul_f32(*v169.f32, vrsqrts_f32(v170, vmul_f32(*v169.f32, *v169.f32))).f32[0]);
                v171.i32[3] = v969;
                v1123 = v171;
              }

              else
              {
                v1123 = 0u;
              }

              v172 = *v153;
              v1146 = *(v153 + 4);
              v1055 = *&v977[16 * v151];
              v1064 = *(v153 - 1);
              v173 = *(v152 - 2);
              v174 = *v152;
              v1074 = v154[-1];
              v1083 = v154[-2];
              v1338.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1083.f32[0]), xmmword_1AFE20160, *v1083.f32, 1), xmmword_1AFE20180, v1083, 2), v1106, v1083, 3);
              v1338.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1074.f32[0]), xmmword_1AFE20160, *v1074.f32, 1), xmmword_1AFE20180, v1074, 2), v1106, v1074, 3);
              v1110 = *v154;
              v1338.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v165.f32[0]), xmmword_1AFE20160, *v165.f32, 1), xmmword_1AFE20180, v165, 2), v1106, v165, 3);
              v1093 = v154[1];
              v1338.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1093.f32[0]), xmmword_1AFE20160, *v1093.f32, 1), xmmword_1AFE20180, v1093, 2), v1106, v1093, 3);
              v1339 = __invert_f4(v1338);
              v1040 = v1339.columns[1];
              v1049 = v1339.columns[0];
              v1023 = v1339.columns[3];
              v1031 = v1339.columns[2];
              v1210 = 0u;
              v1211 = 0u;
              v1212 = 0u;
              memset(v1213, 0, 28);
              v175 = *&v1146 + 0.0001;
              if (*&v1146 < -100000.0)
              {
                v175 = -100000.0;
              }

              if (*(&v1146 + 1) > v175)
              {
                v175 = *(&v1146 + 1);
              }

              v1016 = v175;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v135 = sub_1AF4229F8(0, *(v135 + 2) + 1, 1, v135);
              }

              v177 = *(v135 + 2);
              v176 = *(v135 + 3);
              if (v177 >= v176 >> 1)
              {
                v135 = sub_1AF4229F8(v176 > 1, v177 + 1, 1, v135);
              }

              v155.i32[1] = HIDWORD(v1146);
              *v155.i32 = v1016 - fmaxf(*&v1146, -100000.0);
              *v156.i8 = vdiv_f32(__PAIR64__(LODWORD(v1016), v1132), vdup_lane_s32(v155, 0));
              v157.i64[0] = 0;
              v157.i32[2] = 0;
              *&v157.i32[3] = (v172 - v172) / (-v172 - v172);
              v158.i32[0] = 0;
              v158.i32[2] = 0;
              *&v158.i32[1] = 2.0 / (v172 + v172);
              v156.i64[1] = v156.i64[0];
              v159 = vzip2q_s32(v157, v156);
              v158.i32[3] = v157.i32[3];
              v160 = vzip2q_s32(v158, xmmword_1AFE201A0);
              v1008 = vzip1q_s32(v159, v160);
              v1015 = vzip2q_s32(v158.u32[1], vzip1q_s32(v158.u64[0], 0));
              v994 = v158.u32[1];
              v1000 = vzip2q_s32(v159, v160);
              *&v161 = vmulq_f32(vmulq_n_f32(v1055, v1064), v980).u64[0];
              *(&v161 + 2) = vmuls_lane_f32(v1064, v1055, 2) * 0.0014641;
              HIDWORD(v161) = 0;
              v1063 = v161;
              v1336.columns[1] = v1074;
              v1336.columns[0] = v1083;
              v1336.columns[2] = v1110;
              v1336.columns[3] = v1093;
              v1337 = __invert_f4(v1336);
              *(v135 + 2) = v177 + 1;
              v162 = &v135[160 * v177];
              *(v162 + 32) = v1337;
              *(v162 + 6) = v994;
              *(v162 + 7) = v1015;
              *(v162 + 8) = v1008;
              *(v162 + 9) = v1000;
              *(v162 + 20) = v1146;
              *(v162 + 11) = v991;
              v1159 = v135;
              v1337.columns[0] = *(v174 + 32);
              v163 = &v1223[64 * v164 + 528];
              *v163 = v1063;
              *(v163 + 1) = v1123;
              *(v163 + 2) = v1049;
              *(v163 + 3) = v1040;
              *(v163 + 4) = v1031;
              *(v163 + 5) = v1023;
              *(v163 + 6) = v994;
              *(v163 + 7) = v1015;
              *(v163 + 8) = v1008;
              *(v163 + 9) = v1000;
              *(v163 + 10) = v1337.columns[0];
              v163[44] = v173;
              v1337.columns[1] = v1211;
              *(v163 + 45) = v1210;
              *(v163 + 15) = *(v1213 + 12);
              v1337.columns[2] = v1212;
              *(v163 + 57) = v1213[0];
              *(v163 + 53) = v1337.columns[2];
              *(v163 + 49) = v1337.columns[1];
              v150 = v972;
            }

            ++v151;
            v152 += 2;
            v153 += 16;
            v154 += 4;
          }

          while (v150 != v151);
          v143 = v940;
LABEL_135:
          v59 = v946;
        }

        sub_1AF630994(v962, &v1184, v1290);
        sub_1AF62D29C(v143);
        ecs_stack_allocator_pop_snapshot(v959);
        if (v955)
        {
          os_unfair_lock_unlock(*(v143 + 344));
          os_unfair_lock_unlock(*(v143 + 376));
        }

        v134 = v951 + 1;
        if (v951 + 1 == v931)
        {
          sub_1AF5D1564(&v1237);
          goto LABEL_161;
        }
      }

      v946 = v1039;
      v178 = v1321;
      v179 = -v1322;
      v180 = v1318 - v1321;
      v181 = v1318 - v1321 - 1;
      v182 = v147 - 32;
      v183 = v148 - 16;
LABEL_139:
      v184 = -v178;
      v185 = v181 + v178;
      v186 = &v1223[64 * (v180 + v178) + 509];
      v187 = v149;
      v188 = v183;
      v189 = v146;
      v190 = &v182[64 * v178];
      while (v179 != v184)
      {
        v189 += 16;
        --v184;
        ++v185;
        v186 += 64;
        v190 += 4;
        v188 += 16;
        v187 += 16;
        if (v185 <= 7)
        {
          v191 = *v190;
          v192 = vabsq_f32(*v190);
          v194 = v192.f32[0] > 0.00000011921 || v192.f32[1] > 0.00000011921 || v192.f32[2] > 0.00000011921;
          v1124 = v149;
          v941 = v143;
          v1111 = v180;
          v1094 = v181;
          if (v194)
          {
            v195 = vmulq_f32(v191, v191);
            *&v196 = v195.f32[2] + vaddv_f32(*v195.f32);
            *v195.f32 = vrsqrte_f32(v196);
            *v195.f32 = vmul_f32(*v195.f32, vrsqrts_f32(v196, vmul_f32(*v195.f32, *v195.f32)));
            v197 = vmulq_n_f32(v191, vmul_f32(*v195.f32, vrsqrts_f32(v196, vmul_f32(*v195.f32, *v195.f32))).f32[0]);
            v197.i32[3] = v903;
            v1056 = v197;
          }

          else
          {
            v1056 = 0u;
          }

          v198 = &v187[16 * v178];
          v199 = &v189[16 * v178];
          v200 = *(v199 - 3);
          v1147 = *(v199 - 1);
          v1017 = *&v188[16 * v178];
          v1024 = *(v199 - 4);
          v201 = *(v198 - 4);
          v202 = *(v198 - 1);
          v1032 = v190[-1];
          v1041 = v190[-2];
          v1340.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1041.f32[0]), xmmword_1AFE20160, *v1041.f32, 1), xmmword_1AFE20180, v1041, 2), v1106, v1041, 3);
          v1340.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1032.f32[0]), xmmword_1AFE20160, *v1032.f32, 1), xmmword_1AFE20180, v1032, 2), v1106, v1032, 3);
          v1065 = *v190;
          v1340.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v191.f32[0]), xmmword_1AFE20160, *v191.f32, 1), xmmword_1AFE20180, v191, 2), v1106, v191, 3);
          v1049 = v190[1];
          v1340.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1049.f32[0]), xmmword_1AFE20160, *v1049.f32, 1), xmmword_1AFE20180, v1049, 2), v1106, v1049, 3);
          v1341 = __invert_f4(v1340);
          v1001 = v1341.columns[1];
          v1009 = v1341.columns[0];
          v995 = v1341.columns[2];
          v978 = v1341.columns[3];
          v1214 = 0u;
          v1215 = 0u;
          v1216 = 0u;
          memset(v1217, 0, 28);
          v203 = *&v1147 + 0.0001;
          if (*&v1147 < -100000.0)
          {
            v203 = -100000.0;
          }

          if (*(&v1147 + 1) > v203)
          {
            v203 = *(&v1147 + 1);
          }

          v973 = v203;
          v1084 = v182;
          v204 = v146;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v135 = sub_1AF4229F8(0, *(v135 + 2) + 1, 1, v135);
          }

          v206 = *(v135 + 2);
          v205 = *(v135 + 3);
          if (v206 >= v205 >> 1)
          {
            v135 = sub_1AF4229F8(v205 > 1, v206 + 1, 1, v135);
          }

          v178 = -v184;
          v207.i32[1] = HIDWORD(v1147);
          *v207.i32 = v973 - fmaxf(*&v1147, -100000.0);
          *v208.i8 = vdiv_f32(__PAIR64__(LODWORD(v973), v1132), vdup_lane_s32(v207, 0));
          v209.i64[0] = 0;
          v209.i32[2] = 0;
          *&v209.i32[3] = (v200 - v200) / (-v200 - v200);
          v210.i32[0] = 0;
          v210.i32[2] = 0;
          *&v210.i32[1] = 2.0 / (v200 + v200);
          v208.i64[1] = v208.i64[0];
          v211 = vzip2q_s32(v209, v208);
          v210.i32[3] = v209.i32[3];
          v212 = vzip2q_s32(v210, xmmword_1AFE201A0);
          v974 = vzip2q_s32(v210.u32[1], vzip1q_s32(v210.u64[0], 0));
          v907 = vzip1q_s32(v211, v212);
          v904 = v210.u32[1];
          v905 = vzip2q_s32(v211, v212);
          *&v213 = vmulq_f32(vmulq_n_f32(v1017, v1024), v980).u64[0];
          *(&v213 + 2) = vmuls_lane_f32(v1024, v1017, 2) * 0.0014641;
          HIDWORD(v213) = 0;
          v1025 = v213;
          v1342.columns[1] = v1032;
          v1342.columns[0] = v1041;
          v1342.columns[2] = v1065;
          v1342.columns[3] = v1049;
          v1343 = __invert_f4(v1342);
          *(v135 + 2) = v206 + 1;
          v214 = &v135[160 * v206];
          *(v214 + 32) = v1343;
          *(v214 + 6) = v904;
          *(v214 + 7) = v974;
          *(v214 + 8) = v907;
          *(v214 + 9) = v905;
          *(v214 + 20) = v1147;
          *(v214 + 11) = v991;
          v1159 = v135;
          v1343.columns[0] = *(v202 + 32);
          *(v186 - 45) = v1025;
          *(v186 - 41) = v1056;
          *(v186 - 37) = v1009;
          *(v186 - 33) = v1001;
          *(v186 - 29) = v995;
          *(v186 - 25) = v978;
          *(v186 - 21) = v904;
          *(v186 - 17) = v974;
          *(v186 - 13) = v907;
          *(v186 - 9) = v905;
          *(v186 - 5) = v1343.columns[0];
          *(v186 - 1) = v201;
          *(v186 + 15) = *(v1217 + 12);
          v1343.columns[0] = v1217[0];
          *(v186 + 2) = v1216;
          *(v186 + 3) = v1343.columns[0];
          v1343.columns[1] = v1215;
          *v186 = v1214;
          *(v186 + 1) = v1343.columns[1];
          v149 = v1124;
          v143 = v941;
          v146 = v204;
          v180 = v1111;
          v181 = v1094;
          v182 = v1084;
          goto LABEL_139;
        }
      }

      goto LABEL_135;
    }

    goto LABEL_161;
  }

  v59 = 0;
LABEL_103:
  v55 = v938;
  v133 = v979;
  if (v979)
  {
    goto LABEL_104;
  }

LABEL_161:
  if (v901 != 0 && v898 && v933)
  {
    v215 = *(v964 + 32);
    v216 = *(v886 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v1178 = v901;
    v1179 = HIDWORD(v885);
    v1180 = v884;
    v1181 = v887;
    v1182 = v885;
    v1183 = v888;
    sub_1AF5D15C0(&v1246, v1218);
    v217 = 0;
    v1066 = v216;
    v1075 = v215;
    while (1)
    {
      v1042 = v59;
      v1085 = v217;
      v218 = (v927 + 48 * v217);
      v1148 = *v218;
      v219 = v218[2];
      v1133 = v218[1];
      v220 = *(v218 + 2);
      v221 = *(v218 + 3);
      v223 = *(v218 + 4);
      v222 = *(v218 + 5);
      if (v216)
      {
        v224 = *(v222 + 376);

        os_unfair_lock_lock(v224);
        os_unfair_lock_lock(*(v222 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v215);
      v225 = *(v964 + 64);
      v1315[0] = *(v964 + 48);
      v1315[1] = v225;
      v1316 = *(v964 + 80);
      v226 = *(v964 + 32);
      v227 = *(*(*(*(v222 + 40) + 16) + 32) + 16) + 1;

      *(v964 + 48) = ecs_stack_allocator_allocate(v226, 48 * v227, 8);
      *(v964 + 56) = v227;
      *(v964 + 72) = 0;
      *(v964 + 80) = 0;
      *(v964 + 64) = 0;

      v228 = sub_1AF64B110(&type metadata for PointLight, &off_1F252AB60, v220, v221, v223, v964);
      v229 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v220, v221, v223, v964);
      v230 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v220, v221, v223, v964);
      v233 = v230;
      if (v220)
      {
        if (v223)
        {
          v234 = (v229 + 48);
          v235 = &v1223[156 * v219 + 1186];
          v236 = v228 + 8;
          v215 = v1075;
          v237 = v1085;
          do
          {
            if (v219 <= 7)
            {
              v238 = *(v236 - 2);
              v239 = *(v236 - 1);
              LODWORD(v232) = *(v236 + 1);
              v1134 = *v234;
              v1149 = *v233;
              *&v231 = fmaxf(*v236, 0.0001);
              if (*&v232 <= (*&v231 + 0.0001))
              {
                *&v232 = *&v231 + 0.0001;
              }

              sub_1AF6A6AFC(1, v231, v232, xmmword_1AFE62A90);
              v240 = vsubq_f32(v1134, v1103);
              v240.i32[3] = 0;
              *&v241 = vmulq_n_f32(v1149, v238 * 0.00011651).u64[0];
              *(&v241 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v238 * 0.00011651, v1149, 2));
              *(v235 - 146) = v241;
              *(v235 - 142) = v240;
              bzero(v235 - 138, 0x224uLL);
              *(v235 - 1) = 1.0 / (v239 * v239);
              HIDWORD(v231) = 0;
              *v235 = 0u;
              *(v235 + 1) = 0u;
              *(v235 + 4) = 0;
            }

            ++v233;
            v234 += 4;
            v235 += 156;
            v236 += 16;
            ++v219;
            --v223;
          }

          while (v223);
          goto LABEL_185;
        }

        v215 = v1075;
      }

      else
      {
        v242 = &v229[64 * v1148 + 48];
        v243 = v1133 - v1148;
        v244 = &v1223[156 * v219 + 1186];
        v245 = &v228[16 * v1148 + 8];
        v246 = &v230[16 * v1148];
        v215 = v1075;
        while (v243)
        {
          if (v219 < 8)
          {
            v247 = *(v245 - 8);
            v248 = *(v245 - 4);
            LODWORD(v232) = *(v245 + 4);
            v1135 = *v242;
            v1150 = *v246;
            *&v231 = fmaxf(*v245, 0.0001);
            if (*&v232 <= (*&v231 + 0.0001))
            {
              *&v232 = *&v231 + 0.0001;
            }

            sub_1AF6A6AFC(1, v231, v232, xmmword_1AFE62A90);
            v249 = vsubq_f32(v1135, v1103);
            v249.i32[3] = 0;
            *&v250 = vmulq_n_f32(v1150, v247 * 0.00011651).u64[0];
            *(&v250 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v247 * 0.00011651, v1150, 2));
            *(v244 - 146) = v250;
            *(v244 - 142) = v249;
            bzero(v244 - 138, 0x224uLL);
            *(v244 - 1) = 1.0 / (v248 * v248);
            HIDWORD(v231) = 0;
            *v244 = 0u;
            *(v244 + 1) = 0u;
            *(v244 + 4) = 0;
          }

          v242 += 4;
          --v243;
          ++v219;
          v244 += 156;
          v245 += 16;
          ++v246;
        }
      }

      v237 = v1085;
LABEL_185:
      v59 = v1042;
      sub_1AF630994(v964, &v1178, v1315);
      sub_1AF62D29C(v222);
      ecs_stack_allocator_pop_snapshot(v215);
      v216 = v1066;
      if (v1066)
      {
        os_unfair_lock_unlock(*(v222 + 344));
        os_unfair_lock_unlock(*(v222 + 376));
      }

      v217 = v237 + 1;
      if (v217 == v933)
      {
        sub_1AF5D1564(&v1246);
        break;
      }
    }
  }

  if (v926 && v924 >= 1 && v921)
  {
    v251 = v935[4];
    v932 = *(v919 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    sub_1AF5D15C0(&v1255, v1218);
    v252 = 0;
    v253 = vrsqrteq_f32(xmmword_1AFE208C0);
    v254 = vmulq_f32(v253, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v253, v253)));
    v990 = vmulq_f32(v254, vrsqrtsq_f32(xmmword_1AFE208C0, vmulq_f32(v254, v254)));
    v255 = vmulq_f32(v990, xmmword_1AFE20650);
    v256 = v255.f32[2];
    v983 = vextq_s8(vuzp1q_s32(v255, v255), v255, 0xCuLL);
    v257 = vmlaq_f32(vmulq_f32(v983, xmmword_1AFE213C0), xmmword_1AFE20180, v255);
    v258 = vextq_s8(vuzp1q_s32(v257, v257), v257, 0xCuLL);
    v259 = vmulq_f32(v257, v257);
    v968 = v259.f32[2];
    v970 = v259.i64[0];
    v975 = v258;
    v965 = v259.f32[1];
    v987 = v255;
    v960 = vnegq_f32(v255);
    v963 = vextq_s8(vextq_s8(v255, v255, 0xCuLL), v255, 8uLL);
    v934 = v251;
    while (1)
    {
      v260 = v59;
      v930 = v252;
      v261 = (v914 + 48 * v252);
      v262 = *v261;
      v263 = v261[1];
      v264 = v261[2];
      v265 = *(v261 + 2);
      v266 = *(v261 + 3);
      v267 = *(v261 + 4);
      v268 = *(v261 + 5);
      if (v932)
      {
        v269 = *(v268 + 376);

        os_unfair_lock_lock(v269);
        os_unfair_lock_lock(*(v268 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v934);

      sub_1AF630914(v270, v935, v1291);

      LOBYTE(v1218[0]) = 1;
      v1303[0] = v919;
      v1303[1] = v268;
      v1303[2] = v935;
      v1304 = v264;
      v1305 = (v263 - v262 + v264);
      v1306 = v924;
      v1307 = v262;
      v1308 = v263;
      v1309 = 0;
      v1310 = 0;
      v1311 = 1;
      v1312 = v265;
      v1313 = v266;
      v1314 = v267;
      v59 = v260;
      v271 = sub_1AF705A20(v268, v1303);
      v272 = sub_1AF705994(v268, v1303);
      v273 = sub_1AF70596C(v268, v1303);
      v928 = v268;
      v274 = sub_1AF705944(v268, v1303);
      if (!v1312)
      {
        break;
      }

      v275 = v1314;
      if (v1314)
      {
        v276 = 0;
        v277 = v1304;
        v952 = v272;
        v956 = v271;
        v942 = v274;
        v947 = v273;
        while (v277 + v276 > 0)
        {
LABEL_199:
          if (++v276 == v275)
          {
            goto LABEL_317;
          }
        }

        v278 = &v274[16 * v276];
        v279 = &v272[64 * v276];
        v280 = &v271[16 * v276];
        v281 = *v280;
        v282 = v280[1];
        v283 = v280[2];
        v284 = v280[3];
        v1136 = v279[1];
        v1151 = *v279;
        v288 = *&v273[16 * v276];
        v287 = v279[3];
        v1112 = v288;
        v1125 = v279[2];
        v1095 = v287;
        v285 = *v278;
        v286 = *(v278 + 1);
        v287.f32[0] = fmaxf(v283, 0.0001);
        v288.f32[0] = v287.f32[0] + 0.0001;
        if (v284 > (v287.f32[0] + 0.0001))
        {
          v288.f32[0] = v280[3];
        }

        v289.n128_f64[0] = sub_1AF6A6AFC(1, *v287.i64, *v288.i64, xmmword_1AFE62A90);
        v1057 = v290;
        v1067 = v289;
        v1076 = v292;
        v1086 = v291;
        v293 = vsubq_f32(v1095, v1103);
        v293.i32[3] = 0;
        v1043 = v293;
        bzero(&v1218[2], 0x250uLL);
        *&v294 = vmulq_n_f32(v1112, v281 * 0.00011651).u64[0];
        *(&v294 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v281 * 0.00011651, v1112, 2));
        v1218[0] = v294;
        v1218[1] = v1043;
        *(&v1218[36] + 1) = 1.0 / (v282 * v282);
        sub_1AF5D1624(0, &qword_1EB638540, type metadata accessor for simd_quatf);
        v295 = swift_allocObject();
        v296 = v295;
        v297.i32[1] = HIDWORD(v970);
        *v297.i32 = v965 + (v968 + *&v970);
        v298 = vdupq_lane_s32(v297, 0);
        v298.i32[3] = 0;
        v299 = vrsqrteq_f32(v298);
        v300 = vmulq_f32(v299, vrsqrtsq_f32(v298, vmulq_f32(v299, v299)));
        v301 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v297.i32 != 0.0)), 0x1FuLL));
        v301.i32[3] = 0;
        v302 = vbslq_s8(vcltzq_s32(v301), vmulq_f32(vmulq_f32(v300, vrsqrtsq_f32(v298, vmulq_f32(v300, v300))), v975), v963);
        v303 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v302, v302), v302, 0xCuLL), v960), v302, v983);
        v304 = vextq_s8(vuzp1q_s32(v303, v303), v303, 0xCuLL);
        v305 = vmulq_f32(v303, v303);
        *&v306 = v305.f32[1] + (v305.f32[2] + v305.f32[0]);
        *v305.f32 = vrsqrte_f32(v306);
        *v305.f32 = vmul_f32(*v305.f32, vrsqrts_f32(v306, vmul_f32(*v305.f32, *v305.f32)));
        v307 = vmulq_n_f32(v304, vmul_f32(*v305.f32, vrsqrts_f32(v306, vmul_f32(*v305.f32, *v305.f32))).f32[0]);
        v308 = v256 + (v302.f32[0] + *&v307.i32[1]);
        if (v308 > 0.0)
        {
          v309 = sqrtf(v308 + 1.0);
          v310 = vzip2q_s32(v307, vuzp1q_s32(v307, v987));
          v310.i32[2] = v302.i32[1];
          v311 = vtrn2q_s32(v987, vzip2q_s32(v987, v302));
          v311.i32[2] = v307.i32[0];
          v312 = vsubq_f32(v310, v311);
          v310.f32[3] = v309;
          v311.f32[3] = v309;
          v312.i32[3] = vmulq_f32(v310, v311).i32[3];
          v313 = vmulq_n_f32(v312, 0.5 / v309);
          v314 = v990;
          v316 = xmmword_1AFE20180;
          v315 = xmmword_1AFE213C0;
          goto LABEL_212;
        }

        v314 = v990;
        v316 = xmmword_1AFE20180;
        v315 = xmmword_1AFE213C0;
        if (v302.f32[0] >= v256 && v302.f32[0] >= *&v307.i32[1])
        {
          v317 = sqrtf(((v302.f32[0] + 1.0) - *&v307.i32[1]) - v256);
          v318 = vdup_lane_s32(*v307.i8, 0);
          v319 = vadd_f32(*v302.f32, v318);
          v318.f32[0] = v317;
          v320.i32[0] = vmul_f32(__PAIR64__(v302.u32[1], LODWORD(v317)), v318).u32[0];
          v320.i32[1] = v319.i32[1];
          v320.f32[2] = *v987.i32 + v302.f32[2];
          v320.f32[3] = *&v307.i32[2] - *&v987.i32[1];
          goto LABEL_211;
        }

        v321 = vextq_s8(v302, v302, 8uLL).u64[0];
        if (*&v307.i32[1] <= v256)
        {
          v317 = sqrtf(((v256 + 1.0) - v302.f32[0]) - *&v307.i32[1]);
          v324 = vzip1_s32(v321, *&vextq_s8(v307, v307, 8uLL));
          v325 = __PAIR64__(v302.u32[1], LODWORD(v317));
          v326 = vdup_lane_s32(*v307.i8, 0);
          *v320.f32 = vadd_f32(*v987.i8, v324);
          v327 = vsub_f32(*v302.f32, v326);
          v326.f32[0] = v317;
          v326.i32[0] = vmul_f32(v325, v326).u32[0];
          v326.i32[1] = v327.i32[1];
          *&v320.u32[2] = v326;
LABEL_211:
          v313 = vmulq_n_f32(v320, 0.5 / v317);
        }

        else
        {
          v322 = sqrtf(((*&v307.i32[1] + 1.0) - v302.f32[0]) - v256);
          v323.f32[0] = v302.f32[1] + *v307.i32;
          v323.f32[1] = v322 * v322;
          *&v323.u32[2] = vext_s8(vadd_f32(*v987.i8, vdup_laneq_s32(v307, 2)), vsub_f32(*v987.i8, v321), 4uLL);
          v313 = vmulq_n_f32(v323, 0.5 / v322);
        }

LABEL_212:
        v295[2] = v313;
        v328 = vmulq_f32(v314, xmmword_1AFE20150);
        v329 = vextq_s8(vuzp1q_s32(v328, v328), v328, 0xCuLL);
        v330 = vmlaq_f32(vmulq_f32(v329, v315), v316, v328);
        v331 = vextq_s8(vuzp1q_s32(v330, v330), v330, 0xCuLL);
        v332 = vmulq_f32(v330, v330);
        v332.f32[0] = v332.f32[1] + (v332.f32[2] + v332.f32[0]);
        v333 = vdupq_lane_s32(*v332.f32, 0);
        v333.i32[3] = 0;
        v334 = vrsqrteq_f32(v333);
        v335 = vmulq_f32(v334, vrsqrtsq_f32(v333, vmulq_f32(v334, v334)));
        v336 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v332.f32[0] != 0.0)), 0x1FuLL));
        v336.i32[3] = 0;
        v337 = vbslq_s8(vcltzq_s32(v336), vmulq_f32(v331, vmulq_f32(v335, vrsqrtsq_f32(v333, vmulq_f32(v335, v335)))), vextq_s8(vextq_s8(v328, v328, 0xCuLL), v328, 8uLL));
        v338 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v337, v337), v337, 0xCuLL), vnegq_f32(v328)), v337, v329);
        v339 = vextq_s8(vuzp1q_s32(v338, v338), v338, 0xCuLL);
        v340 = vmulq_f32(v338, v338);
        *&v341 = v340.f32[1] + (v340.f32[2] + v340.f32[0]);
        *v340.f32 = vrsqrte_f32(v341);
        *v340.f32 = vmul_f32(*v340.f32, vrsqrts_f32(v341, vmul_f32(*v340.f32, *v340.f32)));
        v342 = vmulq_n_f32(v339, vmul_f32(*v340.f32, vrsqrts_f32(v341, vmul_f32(*v340.f32, *v340.f32))).f32[0]);
        v343 = v328.f32[2] + (v337.f32[0] + *&v342.i32[1]);
        if (v343 <= 0.0)
        {
          if (v337.f32[0] < v328.f32[2] || v337.f32[0] < *&v342.i32[1])
          {
            v352 = vextq_s8(v337, v337, 8uLL).u64[0];
            if (*&v342.i32[1] <= v328.f32[2])
            {
              v355 = vzip1_s32(v352, *&vextq_s8(v342, v342, 8uLL));
              v356 = __PAIR64__(v337.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v328.f32[2] + 1.0) - v337.f32[0]) - *&v342.i32[1])));
              v357 = vdup_lane_s32(*v342.i8, 0);
              *v358.f32 = vadd_f32(*v328.f32, v355);
              v359 = vsub_f32(*v337.f32, v357);
              v357.i32[0] = v356.i32[0];
              v357.i32[0] = vmul_f32(v356, v357).u32[0];
              v357.i32[1] = v359.i32[1];
              *&v358.u32[2] = v357;
              v347 = vmulq_n_f32(v358, 0.5 / v356.f32[0]);
            }

            else
            {
              v353 = sqrtf(((*&v342.i32[1] + 1.0) - v337.f32[0]) - v328.f32[2]);
              v354.f32[0] = v337.f32[1] + *v342.i32;
              v354.f32[1] = v353 * v353;
              *&v354.u32[2] = vext_s8(vadd_f32(*v328.f32, vdup_laneq_s32(v342, 2)), vsub_f32(*v328.f32, v352), 4uLL);
              v347 = vmulq_n_f32(v354, 0.5 / v353);
            }
          }

          else
          {
            v348 = sqrtf(((v337.f32[0] + 1.0) - *&v342.i32[1]) - v328.f32[2]);
            v349 = vdup_lane_s32(*v342.i8, 0);
            v350 = vadd_f32(*v337.f32, v349);
            v349.f32[0] = v348;
            v351.i32[0] = vmul_f32(__PAIR64__(v337.u32[1], LODWORD(v348)), v349).u32[0];
            v351.i32[1] = v350.i32[1];
            v351.f32[2] = v328.f32[0] + v337.f32[2];
            v351.f32[3] = *&v342.i32[2] - v328.f32[1];
            v347 = vmulq_n_f32(v351, 0.5 / v348);
          }
        }

        else
        {
          v344 = vzip2q_s32(v342, vuzp1q_s32(v342, v328));
          v344.i32[2] = v337.i32[1];
          v345 = vtrn2q_s32(v328, vzip2q_s32(v328, v337));
          v345.i32[2] = v342.i32[0];
          v346 = vsubq_f32(v344, v345);
          v344.i32[3] = sqrtf(v343 + 1.0);
          v345.i32[3] = v344.i32[3];
          v346.i32[3] = vmulq_f32(v344, v345).i32[3];
          v347 = vmulq_n_f32(v346, 0.5 / v344.f32[3]);
        }

        v295[3] = v347;
        v360 = vmulq_f32(v314, xmmword_1AFE20B60);
        v361 = vextq_s8(vuzp1q_s32(v360, v360), v360, 0xCuLL);
        v362 = vmlaq_f32(vmulq_f32(v361, xmmword_1AFE213B0), xmmword_1AFE20150, v360);
        v363 = vextq_s8(vuzp1q_s32(v362, v362), v362, 0xCuLL);
        v364 = vmulq_f32(v362, v362);
        v364.f32[0] = v364.f32[1] + (v364.f32[2] + v364.f32[0]);
        v365 = vdupq_lane_s32(*v364.f32, 0);
        v365.i32[3] = 0;
        v366 = vrsqrteq_f32(v365);
        v367 = vmulq_f32(v366, vrsqrtsq_f32(v365, vmulq_f32(v366, v366)));
        v368 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v364.f32[0] != 0.0)), 0x1FuLL));
        v368.i32[3] = 0;
        v369 = vbslq_s8(vcltzq_s32(v368), vmulq_f32(v363, vmulq_f32(v367, vrsqrtsq_f32(v365, vmulq_f32(v367, v367)))), vextq_s8(vextq_s8(v360, v360, 0xCuLL), v360, 8uLL));
        v370 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v369, v369), v369, 0xCuLL), vnegq_f32(v360)), v369, v361);
        v371 = vextq_s8(vuzp1q_s32(v370, v370), v370, 0xCuLL);
        v372 = vmulq_f32(v370, v370);
        *&v373 = v372.f32[1] + (v372.f32[2] + v372.f32[0]);
        *v372.f32 = vrsqrte_f32(v373);
        *v372.f32 = vmul_f32(*v372.f32, vrsqrts_f32(v373, vmul_f32(*v372.f32, *v372.f32)));
        v374 = vmulq_n_f32(v371, vmul_f32(*v372.f32, vrsqrts_f32(v373, vmul_f32(*v372.f32, *v372.f32))).f32[0]);
        v375 = v360.f32[2] + (v369.f32[0] + *&v374.i32[1]);
        if (v375 > 0.0)
        {
          v376 = sqrtf(v375 + 1.0);
          v377 = vzip2q_s32(v374, vuzp1q_s32(v374, v360));
          v377.i32[2] = v369.i32[1];
          v378 = vtrn2q_s32(v360, vzip2q_s32(v360, v369));
          v378.i32[2] = v374.i32[0];
          v379 = vsubq_f32(v377, v378);
          v377.f32[3] = v376;
          v378.f32[3] = v376;
          v379.i32[3] = vmulq_f32(v377, v378).i32[3];
          goto LABEL_222;
        }

        if (v369.f32[0] < v360.f32[2] || v369.f32[0] < *&v374.i32[1])
        {
          v385 = vextq_s8(v369, v369, 8uLL).u64[0];
          if (*&v374.i32[1] <= v360.f32[2])
          {
            v376 = sqrtf(((v360.f32[2] + 1.0) - v369.f32[0]) - *&v374.i32[1]);
            v415 = vzip1_s32(v385, *&vextq_s8(v374, v374, 8uLL));
            v416 = __PAIR64__(v369.u32[1], LODWORD(v376));
            v417 = vdup_lane_s32(*v374.i8, 0);
            *v379.f32 = vadd_f32(*v360.f32, v415);
            v418 = vsub_f32(*v369.f32, v417);
            v417.f32[0] = v376;
            v417.i32[0] = vmul_f32(v416, v417).u32[0];
            v417.i32[1] = v418.i32[1];
            *&v379.u32[2] = v417;
LABEL_222:
            v380 = vmulq_n_f32(v379, 0.5 / v376);
          }

          else
          {
            v386 = sqrtf(((*&v374.i32[1] + 1.0) - v369.f32[0]) - v360.f32[2]);
            v387.f32[0] = v369.f32[1] + *v374.i32;
            v387.f32[1] = v386 * v386;
            *&v387.u32[2] = vext_s8(vadd_f32(*v360.f32, vdup_laneq_s32(v374, 2)), vsub_f32(*v360.f32, v385), 4uLL);
            v380 = vmulq_n_f32(v387, 0.5 / v386);
          }
        }

        else
        {
          v381 = sqrtf(((v369.f32[0] + 1.0) - *&v374.i32[1]) - v360.f32[2]);
          v382 = vdup_lane_s32(*v374.i8, 0);
          v383 = vadd_f32(*v369.f32, v382);
          v382.f32[0] = v381;
          v384.i32[0] = vmul_f32(__PAIR64__(v369.u32[1], LODWORD(v381)), v382).u32[0];
          v384.i32[1] = v383.i32[1];
          v384.f32[2] = v360.f32[0] + v369.f32[2];
          v384.f32[3] = *&v374.i32[2] - v360.f32[1];
          v380 = vmulq_n_f32(v384, 0.5 / v381);
        }

        v295[4] = v380;
        v388 = vmulq_f32(v314, xmmword_1AFE20160);
        v389 = vextq_s8(vuzp1q_s32(v388, v388), v388, 0xCuLL);
        v390 = vmlaq_f32(vmulq_f32(v389, xmmword_1AFE62AC0), xmmword_1AFE20650, v388);
        v391 = vextq_s8(vuzp1q_s32(v390, v390), v390, 0xCuLL);
        v392 = vmulq_f32(v390, v390);
        v392.f32[0] = v392.f32[1] + (v392.f32[2] + v392.f32[0]);
        v393 = vdupq_lane_s32(*v392.f32, 0);
        v393.i32[3] = 0;
        v394 = vrsqrteq_f32(v393);
        v395 = vmulq_f32(v394, vrsqrtsq_f32(v393, vmulq_f32(v394, v394)));
        v396 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v392.f32[0] != 0.0)), 0x1FuLL));
        v396.i32[3] = 0;
        v397 = vbslq_s8(vcltzq_s32(v396), vmulq_f32(v391, vmulq_f32(v395, vrsqrtsq_f32(v393, vmulq_f32(v395, v395)))), vextq_s8(vextq_s8(v388, v388, 0xCuLL), v388, 8uLL));
        v398 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v397, v397), v397, 0xCuLL), vnegq_f32(v388)), v397, v389);
        v399 = vextq_s8(vuzp1q_s32(v398, v398), v398, 0xCuLL);
        v400 = vmulq_f32(v398, v398);
        *&v401 = v400.f32[1] + (v400.f32[2] + v400.f32[0]);
        *v400.f32 = vrsqrte_f32(v401);
        *v400.f32 = vmul_f32(*v400.f32, vrsqrts_f32(v401, vmul_f32(*v400.f32, *v400.f32)));
        v402 = vmulq_n_f32(v399, vmul_f32(*v400.f32, vrsqrts_f32(v401, vmul_f32(*v400.f32, *v400.f32))).f32[0]);
        v403 = v388.f32[2] + (v397.f32[0] + *&v402.i32[1]);
        if (v403 <= 0.0)
        {
          if (v397.f32[0] < v388.f32[2] || v397.f32[0] < *&v402.i32[1])
          {
            v412 = vextq_s8(v397, v397, 8uLL).u64[0];
            if (*&v402.i32[1] <= v388.f32[2])
            {
              v419 = vzip1_s32(v412, *&vextq_s8(v402, v402, 8uLL));
              v420 = __PAIR64__(v397.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v388.f32[2] + 1.0) - v397.f32[0]) - *&v402.i32[1])));
              v421 = vdup_lane_s32(*v402.i8, 0);
              *v422.f32 = vadd_f32(*v388.f32, v419);
              v423 = vsub_f32(*v397.f32, v421);
              v421.i32[0] = v420.i32[0];
              v421.i32[0] = vmul_f32(v420, v421).u32[0];
              v421.i32[1] = v423.i32[1];
              *&v422.u32[2] = v421;
              v407 = vmulq_n_f32(v422, 0.5 / v420.f32[0]);
            }

            else
            {
              v413 = sqrtf(((*&v402.i32[1] + 1.0) - v397.f32[0]) - v388.f32[2]);
              v414.f32[0] = v397.f32[1] + *v402.i32;
              v414.f32[1] = v413 * v413;
              *&v414.u32[2] = vext_s8(vadd_f32(*v388.f32, vdup_laneq_s32(v402, 2)), vsub_f32(*v388.f32, v412), 4uLL);
              v407 = vmulq_n_f32(v414, 0.5 / v413);
            }
          }

          else
          {
            v408 = sqrtf(((v397.f32[0] + 1.0) - *&v402.i32[1]) - v388.f32[2]);
            v409 = vdup_lane_s32(*v402.i8, 0);
            v410 = vadd_f32(*v397.f32, v409);
            v409.f32[0] = v408;
            v411.i32[0] = vmul_f32(__PAIR64__(v397.u32[1], LODWORD(v408)), v409).u32[0];
            v411.i32[1] = v410.i32[1];
            v411.f32[2] = v388.f32[0] + v397.f32[2];
            v411.f32[3] = *&v402.i32[2] - v388.f32[1];
            v407 = vmulq_n_f32(v411, 0.5 / v408);
          }
        }

        else
        {
          v404 = vzip2q_s32(v402, vuzp1q_s32(v402, v388));
          v404.i32[2] = v397.i32[1];
          v405 = vtrn2q_s32(v388, vzip2q_s32(v388, v397));
          v405.i32[2] = v402.i32[0];
          v406 = vsubq_f32(v404, v405);
          v404.i32[3] = sqrtf(v403 + 1.0);
          v405.i32[3] = v404.i32[3];
          v406.i32[3] = vmulq_f32(v404, v405).i32[3];
          v407 = vmulq_n_f32(v406, 0.5 / v404.f32[3]);
        }

        v295[5] = v407;
        v424 = vmulq_f32(v314, xmmword_1AFE206C0);
        v425 = vextq_s8(vuzp1q_s32(v424, v424), v424, 0xCuLL);
        v426 = vmlaq_f32(vmulq_f32(v425, v315), v316, v424);
        v427 = vextq_s8(vuzp1q_s32(v426, v426), v426, 0xCuLL);
        v428 = vmulq_f32(v426, v426);
        v428.f32[0] = v428.f32[1] + (v428.f32[2] + v428.f32[0]);
        v429 = vdupq_lane_s32(*v428.f32, 0);
        v429.i32[3] = 0;
        v430 = vrsqrteq_f32(v429);
        v431 = vmulq_f32(v430, vrsqrtsq_f32(v429, vmulq_f32(v430, v430)));
        v432 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v428.f32[0] != 0.0)), 0x1FuLL));
        v432.i32[3] = 0;
        v433 = vbslq_s8(vcltzq_s32(v432), vmulq_f32(v427, vmulq_f32(v431, vrsqrtsq_f32(v429, vmulq_f32(v431, v431)))), vextq_s8(vextq_s8(v424, v424, 0xCuLL), v424, 8uLL));
        v434 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v433, v433), v433, 0xCuLL), vnegq_f32(v424)), v433, v425);
        v435 = vextq_s8(vuzp1q_s32(v434, v434), v434, 0xCuLL);
        v436 = vmulq_f32(v434, v434);
        *&v437 = v436.f32[1] + (v436.f32[2] + v436.f32[0]);
        *v436.f32 = vrsqrte_f32(v437);
        *v436.f32 = vmul_f32(*v436.f32, vrsqrts_f32(v437, vmul_f32(*v436.f32, *v436.f32)));
        v438 = vmulq_n_f32(v435, vmul_f32(*v436.f32, vrsqrts_f32(v437, vmul_f32(*v436.f32, *v436.f32))).f32[0]);
        v439 = v424.f32[2] + (v433.f32[0] + *&v438.i32[1]);
        if (v439 <= 0.0)
        {
          if (v433.f32[0] < v424.f32[2] || v433.f32[0] < *&v438.i32[1])
          {
            v448 = vextq_s8(v433, v433, 8uLL).u64[0];
            if (*&v438.i32[1] <= v424.f32[2])
            {
              v451 = vzip1_s32(v448, *&vextq_s8(v438, v438, 8uLL));
              v452 = __PAIR64__(v433.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v424.f32[2] + 1.0) - v433.f32[0]) - *&v438.i32[1])));
              v453 = vdup_lane_s32(*v438.i8, 0);
              *v454.f32 = vadd_f32(*v424.f32, v451);
              v455 = vsub_f32(*v433.f32, v453);
              v453.i32[0] = v452.i32[0];
              v453.i32[0] = vmul_f32(v452, v453).u32[0];
              v453.i32[1] = v455.i32[1];
              *&v454.u32[2] = v453;
              v443 = vmulq_n_f32(v454, 0.5 / v452.f32[0]);
            }

            else
            {
              v449 = sqrtf(((*&v438.i32[1] + 1.0) - v433.f32[0]) - v424.f32[2]);
              v450.f32[0] = v433.f32[1] + *v438.i32;
              v450.f32[1] = v449 * v449;
              *&v450.u32[2] = vext_s8(vadd_f32(*v424.f32, vdup_laneq_s32(v438, 2)), vsub_f32(*v424.f32, v448), 4uLL);
              v443 = vmulq_n_f32(v450, 0.5 / v449);
            }
          }

          else
          {
            v444 = sqrtf(((v433.f32[0] + 1.0) - *&v438.i32[1]) - v424.f32[2]);
            v445 = vdup_lane_s32(*v438.i8, 0);
            v446 = vadd_f32(*v433.f32, v445);
            v445.f32[0] = v444;
            v447.i32[0] = vmul_f32(__PAIR64__(v433.u32[1], LODWORD(v444)), v445).u32[0];
            v447.i32[1] = v446.i32[1];
            v447.f32[2] = v424.f32[0] + v433.f32[2];
            v447.f32[3] = *&v438.i32[2] - v424.f32[1];
            v443 = vmulq_n_f32(v447, 0.5 / v444);
          }
        }

        else
        {
          v440 = vzip2q_s32(v438, vuzp1q_s32(v438, v424));
          v440.i32[2] = v433.i32[1];
          v441 = vtrn2q_s32(v424, vzip2q_s32(v424, v433));
          v441.i32[2] = v438.i32[0];
          v442 = vsubq_f32(v440, v441);
          v440.i32[3] = sqrtf(v439 + 1.0);
          v441.i32[3] = v440.i32[3];
          v442.i32[3] = vmulq_f32(v440, v441).i32[3];
          v443 = vmulq_n_f32(v442, 0.5 / v440.f32[3]);
        }

        v295[6] = v443;
        v456 = vmulq_f32(v314, v316);
        v457 = vextq_s8(vuzp1q_s32(v456, v456), v456, 0xCuLL);
        v458 = vmlaq_f32(vmulq_f32(v457, v315), v316, v456);
        v459 = vextq_s8(vuzp1q_s32(v458, v458), v458, 0xCuLL);
        v460 = vmulq_f32(v458, v458);
        v460.f32[0] = v460.f32[1] + (v460.f32[2] + v460.f32[0]);
        v461 = vdupq_lane_s32(*v460.f32, 0);
        v461.i32[3] = 0;
        v462 = vrsqrteq_f32(v461);
        v463 = vmulq_f32(v462, vrsqrtsq_f32(v461, vmulq_f32(v462, v462)));
        v464 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v460.f32[0] != 0.0)), 0x1FuLL));
        v464.i32[3] = 0;
        v465 = vbslq_s8(vcltzq_s32(v464), vmulq_f32(v459, vmulq_f32(v463, vrsqrtsq_f32(v461, vmulq_f32(v463, v463)))), vextq_s8(vextq_s8(v456, v456, 0xCuLL), v456, 8uLL));
        v466 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v465, v465), v465, 0xCuLL), vnegq_f32(v456)), v465, v457);
        v467 = vextq_s8(vuzp1q_s32(v466, v466), v466, 0xCuLL);
        v468 = vmulq_f32(v466, v466);
        *&v469 = v468.f32[1] + (v468.f32[2] + v468.f32[0]);
        *v468.f32 = vrsqrte_f32(v469);
        *v468.f32 = vmul_f32(*v468.f32, vrsqrts_f32(v469, vmul_f32(*v468.f32, *v468.f32)));
        v470 = vmulq_n_f32(v467, vmul_f32(*v468.f32, vrsqrts_f32(v469, vmul_f32(*v468.f32, *v468.f32))).f32[0]);
        v471 = v456.f32[2] + (v465.f32[0] + *&v470.i32[1]);
        if (v471 <= 0.0)
        {
          if (v465.f32[0] < v456.f32[2] || v465.f32[0] < *&v470.i32[1])
          {
            v481 = vextq_s8(v465, v465, 8uLL).u64[0];
            v476 = v1095;
            if (*&v470.i32[1] <= v456.f32[2])
            {
              v484 = vzip1_s32(v481, *&vextq_s8(v470, v470, 8uLL));
              v485 = __PAIR64__(v465.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v456.f32[2] + 1.0) - v465.f32[0]) - *&v470.i32[1])));
              v486 = vdup_lane_s32(*v470.i8, 0);
              *v487.f32 = vadd_f32(*v456.f32, v484);
              v488 = vsub_f32(*v465.f32, v486);
              v486.i32[0] = v485.i32[0];
              v486.i32[0] = vmul_f32(v485, v486).u32[0];
              v486.i32[1] = v488.i32[1];
              *&v487.u32[2] = v486;
              v475 = vmulq_n_f32(v487, 0.5 / v485.f32[0]);
            }

            else
            {
              v482 = sqrtf(((*&v470.i32[1] + 1.0) - v465.f32[0]) - v456.f32[2]);
              v483.f32[0] = v465.f32[1] + *v470.i32;
              v483.f32[1] = v482 * v482;
              *&v483.u32[2] = vext_s8(vadd_f32(*v456.f32, vdup_laneq_s32(v470, 2)), vsub_f32(*v456.f32, v481), 4uLL);
              v475 = vmulq_n_f32(v483, 0.5 / v482);
            }
          }

          else
          {
            v477 = sqrtf(((v465.f32[0] + 1.0) - *&v470.i32[1]) - v456.f32[2]);
            v478 = vdup_lane_s32(*v470.i8, 0);
            v479 = vadd_f32(*v465.f32, v478);
            v478.f32[0] = v477;
            v480.i32[0] = vmul_f32(__PAIR64__(v465.u32[1], LODWORD(v477)), v478).u32[0];
            v480.i32[1] = v479.i32[1];
            v480.f32[2] = v456.f32[0] + v465.f32[2];
            v480.f32[3] = *&v470.i32[2] - v456.f32[1];
            v475 = vmulq_n_f32(v480, 0.5 / v477);
            v476 = v1095;
          }
        }

        else
        {
          v472 = vzip2q_s32(v470, vuzp1q_s32(v470, v456));
          v472.i32[2] = v465.i32[1];
          v473 = vtrn2q_s32(v456, vzip2q_s32(v456, v465));
          v473.i32[2] = v470.i32[0];
          v474 = vsubq_f32(v472, v473);
          v472.i32[3] = sqrtf(v471 + 1.0);
          v473.i32[3] = v472.i32[3];
          v474.i32[3] = vmulq_f32(v472, v473).i32[3];
          v475 = vmulq_n_f32(v474, 0.5 / v472.f32[3]);
          v476 = v1095;
        }

        v1152 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1151.f32[0]), xmmword_1AFE20160, *v1151.f32, 1), xmmword_1AFE20180, v1151, 2), v1106, v1151, 3);
        v1137 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1136.f32[0]), xmmword_1AFE20160, *v1136.f32, 1), xmmword_1AFE20180, v1136, 2), v1106, v1136, 3);
        v1113 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v476.f32[0]), xmmword_1AFE20160, *v476.f32, 1), xmmword_1AFE20180, v476, 2), v1106, v476, 3);
        v1126 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1125.f32[0]), xmmword_1AFE20160, *v1125.f32, 1), xmmword_1AFE20180, v1125, 2), v1106, v1125, 3);
        v476.i32[3] = v1049.i32[3];
        v1096 = v476;
        v295[7] = v475;
        v489 = &v1218[3];
        for (i = 2; i != 8; ++i)
        {
          *v491.i64 = sub_1AF5B1F1C(v296[i]);
          v1344.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1152, v491.f32[0]), v1137, *v491.f32, 1), v1126, v491, 2), v1113, v491, 3);
          v1344.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1152, v492.f32[0]), v1137, *v492.f32, 1), v1126, v492, 2), v1113, v492, 3);
          v1344.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1152, v493.f32[0]), v1137, *v493.f32, 1), v1126, v493, 2), v1113, v493, 3);
          v1344.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1152, v494.f32[0]), v1137, *v494.f32, 1), v1126, v494, 2), v1113, v494, 3);
          *(v489 - 1) = __invert_f4(v1344);
          v489 += 4;
        }

        swift_getKeyPath();
        v495 = swift_modifyAtWritableKeyPath();
        *&v496 = v281;
        *&v497 = v282;
        sub_1AF5CE944(v498, 6, &v1159, v296, &v1158, v286, v1096, v1067, v1086, v1057, v1076, v496, v497, v283, v499, v500, LODWORD(v284));
        v495(v1293, 0);
        swift_setDeallocating();
        swift_deallocClassInstance();

        v1218[26] = v1067;
        v1218[27] = v1086;
        v1218[28] = v1057;
        v1218[29] = v1076;
        LODWORD(v1218[36]) = v285;
        memcpy(&v1223[156 * v277 + 2288 + 156 * v276], v1218, 0x270uLL);
        v1049.i32[3] = v1096.i32[3];
        v272 = v952;
        v271 = v956;
        v274 = v942;
        v273 = v947;
        goto LABEL_199;
      }

LABEL_317:
      v1172 = v926;
      v1173 = HIDWORD(v912);
      v1174 = v912;
      v1175 = v913;
      v1176 = v911;
      v1177 = v915;
      sub_1AF630994(v935, &v1172, v1291);
      sub_1AF62D29C(v928);
      ecs_stack_allocator_pop_snapshot(v934);
      if (v932)
      {
        os_unfair_lock_unlock(*(v928 + 344));
        os_unfair_lock_unlock(*(v928 + 376));
      }

      v252 = v930 + 1;
      if (v930 + 1 == v921)
      {
        sub_1AF5D1564(&v1255);
        goto LABEL_320;
      }
    }

    v501 = v1307;
    v502 = v1304 - v1307;
    v503 = v1304 - v1307 - 1;
    v504 = v1308;
    v505 = v271 - 8;
    v506 = v274 - 8;
    v507 = v272 - 32;
    v508 = v273 - 16;
    while (2)
    {
      v509 = &v505[16 * v501];
      v510 = &v1223[156 * v502 + 2132 + 156 * v501];
      v511 = &v506[16 * v501];
      v512 = &v507[64 * v501];
      do
      {
        if (v504 == v501)
        {
          goto LABEL_317;
        }

        ++v501;
        v509 += 4;
        v510 += 156;
        v511 += 2;
        v512 += 4;
      }

      while (v503 + v501 > 0);
      v953 = v506;
      v957 = v505;
      v513 = *(v509 - 2);
      v514 = *(v509 - 1);
      v515 = *v509;
      v516 = v509[1];
      v1138 = v512[-1];
      v1153 = v512[-2];
      v943 = v508;
      v519 = *&v508[16 * v501];
      v518 = v512[1];
      v1114 = v519;
      v1127 = *v512;
      v1097 = v518;
      v517 = *(v511 - 2);
      v908 = *v511;
      v518.f32[0] = fmaxf(*v509, 0.0001);
      v519.f32[0] = v518.f32[0] + 0.0001;
      if (v516 > (v518.f32[0] + 0.0001))
      {
        v519.f32[0] = v509[1];
      }

      v520.n128_f64[0] = sub_1AF6A6AFC(1, *v518.i64, *v519.i64, xmmword_1AFE62A90);
      v1058 = v521;
      v1068 = v520;
      v1077 = v523;
      v1087 = v522;
      v524 = vsubq_f32(v1097, v1103);
      v524.i32[3] = 0;
      v906 = v524;
      bzero(&v1218[2], 0x250uLL);
      *&v525 = vmulq_n_f32(v1114, v513 * 0.00011651).u64[0];
      *(&v525 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(v513 * 0.00011651, v1114, 2));
      v1218[0] = v525;
      v1218[1] = v906;
      *(&v1218[36] + 1) = 1.0 / (v514 * v514);
      sub_1AF5D1624(0, &qword_1EB638540, type metadata accessor for simd_quatf);
      v526 = swift_allocObject();
      v527 = v526;
      v528.i32[1] = HIDWORD(v970);
      *v528.i32 = v965 + (v968 + *&v970);
      v529 = vdupq_lane_s32(v528, 0);
      v529.i32[3] = 0;
      v530 = vrsqrteq_f32(v529);
      v531 = vmulq_f32(v530, vrsqrtsq_f32(v529, vmulq_f32(v530, v530)));
      v532 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(*v528.i32 != 0.0)), 0x1FuLL));
      v532.i32[3] = 0;
      v533 = vbslq_s8(vcltzq_s32(v532), vmulq_f32(vmulq_f32(v531, vrsqrtsq_f32(v529, vmulq_f32(v531, v531))), v975), v963);
      v534 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v533, v533), v533, 0xCuLL), v960), v533, v983);
      v535 = vextq_s8(vuzp1q_s32(v534, v534), v534, 0xCuLL);
      v536 = vmulq_f32(v534, v534);
      *&v537 = v536.f32[1] + (v536.f32[2] + v536.f32[0]);
      *v536.f32 = vrsqrte_f32(v537);
      *v536.f32 = vmul_f32(*v536.f32, vrsqrts_f32(v537, vmul_f32(*v536.f32, *v536.f32)));
      v538 = vmulq_n_f32(v535, vmul_f32(*v536.f32, vrsqrts_f32(v537, vmul_f32(*v536.f32, *v536.f32))).f32[0]);
      v539 = v256 + (v533.f32[0] + *&v538.i32[1]);
      if (v539 > 0.0)
      {
        v540 = sqrtf(v539 + 1.0);
        v541 = vzip2q_s32(v538, vuzp1q_s32(v538, v987));
        v541.i32[2] = v533.i32[1];
        v542 = vtrn2q_s32(v987, vzip2q_s32(v987, v533));
        v542.i32[2] = v538.i32[0];
        v543 = vsubq_f32(v541, v542);
        v541.f32[3] = v540;
        v542.f32[3] = v540;
        v543.i32[3] = vmulq_f32(v541, v542).i32[3];
        v544 = vmulq_n_f32(v543, 0.5 / v540);
        v545 = v990;
        v547 = xmmword_1AFE20180;
        v546 = xmmword_1AFE213C0;
        goto LABEL_272;
      }

      v545 = v990;
      v547 = xmmword_1AFE20180;
      v546 = xmmword_1AFE213C0;
      if (v533.f32[0] < v256 || v533.f32[0] < *&v538.i32[1])
      {
        if (*&v538.i32[1] > v256)
        {
          v552 = sqrtf(((*&v538.i32[1] + 1.0) - v533.f32[0]) - v256);
          v551.f32[0] = v533.f32[1] + *v538.i32;
          v551.f32[1] = v552 * v552;
          *&v551.u32[2] = vext_s8(vadd_f32(*v987.i8, vdup_laneq_s32(v538, 2)), vsub_f32(*v987.i8, *&vextq_s8(v533, v533, 8uLL)), 4uLL);
          v553 = 0.5 / v552;
LABEL_271:
          v544 = vmulq_n_f32(v551, v553);
LABEL_272:
          v526[2] = v544;
          v558 = vmulq_f32(v545, xmmword_1AFE20150);
          v559 = vextq_s8(vuzp1q_s32(v558, v558), v558, 0xCuLL);
          v560 = vmlaq_f32(vmulq_f32(v559, v546), v547, v558);
          v561 = vextq_s8(vuzp1q_s32(v560, v560), v560, 0xCuLL);
          v562 = vmulq_f32(v560, v560);
          v562.f32[0] = v562.f32[1] + (v562.f32[2] + v562.f32[0]);
          v563 = vdupq_lane_s32(*v562.f32, 0);
          v563.i32[3] = 0;
          v564 = vrsqrteq_f32(v563);
          v565 = vmulq_f32(v564, vrsqrtsq_f32(v563, vmulq_f32(v564, v564)));
          v566 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v562.f32[0] != 0.0)), 0x1FuLL));
          v566.i32[3] = 0;
          v567 = vbslq_s8(vcltzq_s32(v566), vmulq_f32(v561, vmulq_f32(v565, vrsqrtsq_f32(v563, vmulq_f32(v565, v565)))), vextq_s8(vextq_s8(v558, v558, 0xCuLL), v558, 8uLL));
          v568 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v567, v567), v567, 0xCuLL), vnegq_f32(v558)), v567, v559);
          v569 = vextq_s8(vuzp1q_s32(v568, v568), v568, 0xCuLL);
          v570 = vmulq_f32(v568, v568);
          *&v571 = v570.f32[1] + (v570.f32[2] + v570.f32[0]);
          *v570.f32 = vrsqrte_f32(v571);
          *v570.f32 = vmul_f32(*v570.f32, vrsqrts_f32(v571, vmul_f32(*v570.f32, *v570.f32)));
          v572 = vmulq_n_f32(v569, vmul_f32(*v570.f32, vrsqrts_f32(v571, vmul_f32(*v570.f32, *v570.f32))).f32[0]);
          v573 = v558.f32[2] + (v567.f32[0] + *&v572.i32[1]);
          if (v573 <= 0.0)
          {
            if (v567.f32[0] < v558.f32[2] || v567.f32[0] < *&v572.i32[1])
            {
              if (*&v572.i32[1] <= v558.f32[2])
              {
                v584 = vzip1_s32(*&vextq_s8(v567, v567, 8uLL), *&vextq_s8(v572, v572, 8uLL));
                v585 = __PAIR64__(v567.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v558.f32[2] + 1.0) - v567.f32[0]) - *&v572.i32[1])));
                v586 = vdup_lane_s32(*v572.i8, 0);
                *v587.f32 = vadd_f32(*v558.f32, v584);
                v588 = vsub_f32(*v567.f32, v586);
                v586.i32[0] = v585.i32[0];
                v586.i32[0] = vmul_f32(v585, v586).u32[0];
                v586.i32[1] = v588.i32[1];
                *&v587.u32[2] = v586;
                v577 = vmulq_n_f32(v587, 0.5 / v585.f32[0]);
              }

              else
              {
                v582 = sqrtf(((*&v572.i32[1] + 1.0) - v567.f32[0]) - v558.f32[2]);
                v583.f32[0] = v567.f32[1] + *v572.i32;
                v583.f32[1] = v582 * v582;
                *&v583.u32[2] = vext_s8(vadd_f32(*v558.f32, vdup_laneq_s32(v572, 2)), vsub_f32(*v558.f32, *&vextq_s8(v567, v567, 8uLL)), 4uLL);
                v577 = vmulq_n_f32(v583, 0.5 / v582);
              }
            }

            else
            {
              v578 = sqrtf(((v567.f32[0] + 1.0) - *&v572.i32[1]) - v558.f32[2]);
              v579 = vdup_lane_s32(*v572.i8, 0);
              v580 = vadd_f32(*v567.f32, v579);
              v579.f32[0] = v578;
              v581.i32[0] = vmul_f32(__PAIR64__(v567.u32[1], LODWORD(v578)), v579).u32[0];
              v581.i32[1] = v580.i32[1];
              v581.f32[2] = v558.f32[0] + v567.f32[2];
              v581.f32[3] = *&v572.i32[2] - v558.f32[1];
              v577 = vmulq_n_f32(v581, 0.5 / v578);
            }
          }

          else
          {
            v574 = vzip2q_s32(v572, vuzp1q_s32(v572, v558));
            v574.i32[2] = v567.i32[1];
            v575 = vtrn2q_s32(v558, vzip2q_s32(v558, v567));
            v575.i32[2] = v572.i32[0];
            v576 = vsubq_f32(v574, v575);
            v574.i32[3] = sqrtf(v573 + 1.0);
            v575.i32[3] = v574.i32[3];
            v576.i32[3] = vmulq_f32(v574, v575).i32[3];
            v577 = vmulq_n_f32(v576, 0.5 / v574.f32[3]);
          }

          v526[3] = v577;
          v589 = vmulq_f32(v545, xmmword_1AFE20B60);
          v590 = vextq_s8(vuzp1q_s32(v589, v589), v589, 0xCuLL);
          v591 = vmlaq_f32(vmulq_f32(v590, xmmword_1AFE213B0), xmmword_1AFE20150, v589);
          v592 = vextq_s8(vuzp1q_s32(v591, v591), v591, 0xCuLL);
          v593 = vmulq_f32(v591, v591);
          v593.f32[0] = v593.f32[1] + (v593.f32[2] + v593.f32[0]);
          v594 = vdupq_lane_s32(*v593.f32, 0);
          v594.i32[3] = 0;
          v595 = vrsqrteq_f32(v594);
          v596 = vmulq_f32(v595, vrsqrtsq_f32(v594, vmulq_f32(v595, v595)));
          v597 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v593.f32[0] != 0.0)), 0x1FuLL));
          v597.i32[3] = 0;
          v598 = vbslq_s8(vcltzq_s32(v597), vmulq_f32(v592, vmulq_f32(v596, vrsqrtsq_f32(v594, vmulq_f32(v596, v596)))), vextq_s8(vextq_s8(v589, v589, 0xCuLL), v589, 8uLL));
          v599 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v598, v598), v598, 0xCuLL), vnegq_f32(v589)), v598, v590);
          v600 = vextq_s8(vuzp1q_s32(v599, v599), v599, 0xCuLL);
          v601 = vmulq_f32(v599, v599);
          *&v602 = v601.f32[1] + (v601.f32[2] + v601.f32[0]);
          *v601.f32 = vrsqrte_f32(v602);
          *v601.f32 = vmul_f32(*v601.f32, vrsqrts_f32(v602, vmul_f32(*v601.f32, *v601.f32)));
          v603 = vmulq_n_f32(v600, vmul_f32(*v601.f32, vrsqrts_f32(v602, vmul_f32(*v601.f32, *v601.f32))).f32[0]);
          v604 = v589.f32[2] + (v598.f32[0] + *&v603.i32[1]);
          if (v604 > 0.0)
          {
            v605 = sqrtf(v604 + 1.0);
            v606 = vzip2q_s32(v603, vuzp1q_s32(v603, v589));
            v606.i32[2] = v598.i32[1];
            v607 = vtrn2q_s32(v589, vzip2q_s32(v589, v598));
            v607.i32[2] = v603.i32[0];
            v608 = vsubq_f32(v606, v607);
            v606.f32[3] = v605;
            v607.f32[3] = v605;
            v608.i32[3] = vmulq_f32(v606, v607).i32[3];
LABEL_282:
            v609 = vmulq_n_f32(v608, 0.5 / v605);
LABEL_289:
            v526[4] = v609;
            v616 = vmulq_f32(v545, xmmword_1AFE20160);
            v617 = vextq_s8(vuzp1q_s32(v616, v616), v616, 0xCuLL);
            v618 = vmlaq_f32(vmulq_f32(v617, xmmword_1AFE62AC0), xmmword_1AFE20650, v616);
            v619 = vextq_s8(vuzp1q_s32(v618, v618), v618, 0xCuLL);
            v620 = vmulq_f32(v618, v618);
            v620.f32[0] = v620.f32[1] + (v620.f32[2] + v620.f32[0]);
            v621 = vdupq_lane_s32(*v620.f32, 0);
            v621.i32[3] = 0;
            v622 = vrsqrteq_f32(v621);
            v623 = vmulq_f32(v622, vrsqrtsq_f32(v621, vmulq_f32(v622, v622)));
            v624 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v620.f32[0] != 0.0)), 0x1FuLL));
            v624.i32[3] = 0;
            v625 = vbslq_s8(vcltzq_s32(v624), vmulq_f32(v619, vmulq_f32(v623, vrsqrtsq_f32(v621, vmulq_f32(v623, v623)))), vextq_s8(vextq_s8(v616, v616, 0xCuLL), v616, 8uLL));
            v626 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v625, v625), v625, 0xCuLL), vnegq_f32(v616)), v625, v617);
            v627 = vextq_s8(vuzp1q_s32(v626, v626), v626, 0xCuLL);
            v628 = vmulq_f32(v626, v626);
            *&v629 = v628.f32[1] + (v628.f32[2] + v628.f32[0]);
            *v628.f32 = vrsqrte_f32(v629);
            *v628.f32 = vmul_f32(*v628.f32, vrsqrts_f32(v629, vmul_f32(*v628.f32, *v628.f32)));
            v630 = vmulq_n_f32(v627, vmul_f32(*v628.f32, vrsqrts_f32(v629, vmul_f32(*v628.f32, *v628.f32))).f32[0]);
            v631 = v616.f32[2] + (v625.f32[0] + *&v630.i32[1]);
            if (v631 <= 0.0)
            {
              if (v625.f32[0] < v616.f32[2] || v625.f32[0] < *&v630.i32[1])
              {
                if (*&v630.i32[1] <= v616.f32[2])
                {
                  v646 = vzip1_s32(*&vextq_s8(v625, v625, 8uLL), *&vextq_s8(v630, v630, 8uLL));
                  v647 = __PAIR64__(v625.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v616.f32[2] + 1.0) - v625.f32[0]) - *&v630.i32[1])));
                  v648 = vdup_lane_s32(*v630.i8, 0);
                  *v649.f32 = vadd_f32(*v616.f32, v646);
                  v650 = vsub_f32(*v625.f32, v648);
                  v648.i32[0] = v647.i32[0];
                  v648.i32[0] = vmul_f32(v647, v648).u32[0];
                  v648.i32[1] = v650.i32[1];
                  *&v649.u32[2] = v648;
                  v635 = vmulq_n_f32(v649, 0.5 / v647.f32[0]);
                }

                else
                {
                  v640 = sqrtf(((*&v630.i32[1] + 1.0) - v625.f32[0]) - v616.f32[2]);
                  v641.f32[0] = v625.f32[1] + *v630.i32;
                  v641.f32[1] = v640 * v640;
                  *&v641.u32[2] = vext_s8(vadd_f32(*v616.f32, vdup_laneq_s32(v630, 2)), vsub_f32(*v616.f32, *&vextq_s8(v625, v625, 8uLL)), 4uLL);
                  v635 = vmulq_n_f32(v641, 0.5 / v640);
                }
              }

              else
              {
                v636 = sqrtf(((v625.f32[0] + 1.0) - *&v630.i32[1]) - v616.f32[2]);
                v637 = vdup_lane_s32(*v630.i8, 0);
                v638 = vadd_f32(*v625.f32, v637);
                v637.f32[0] = v636;
                v639.i32[0] = vmul_f32(__PAIR64__(v625.u32[1], LODWORD(v636)), v637).u32[0];
                v639.i32[1] = v638.i32[1];
                v639.f32[2] = v616.f32[0] + v625.f32[2];
                v639.f32[3] = *&v630.i32[2] - v616.f32[1];
                v635 = vmulq_n_f32(v639, 0.5 / v636);
              }
            }

            else
            {
              v632 = vzip2q_s32(v630, vuzp1q_s32(v630, v616));
              v632.i32[2] = v625.i32[1];
              v633 = vtrn2q_s32(v616, vzip2q_s32(v616, v625));
              v633.i32[2] = v630.i32[0];
              v634 = vsubq_f32(v632, v633);
              v632.i32[3] = sqrtf(v631 + 1.0);
              v633.i32[3] = v632.i32[3];
              v634.i32[3] = vmulq_f32(v632, v633).i32[3];
              v635 = vmulq_n_f32(v634, 0.5 / v632.f32[3]);
            }

            v526[5] = v635;
            v651 = vmulq_f32(v545, xmmword_1AFE206C0);
            v652 = vextq_s8(vuzp1q_s32(v651, v651), v651, 0xCuLL);
            v653 = vmlaq_f32(vmulq_f32(v652, v546), v547, v651);
            v654 = vextq_s8(vuzp1q_s32(v653, v653), v653, 0xCuLL);
            v655 = vmulq_f32(v653, v653);
            v655.f32[0] = v655.f32[1] + (v655.f32[2] + v655.f32[0]);
            v656 = vdupq_lane_s32(*v655.f32, 0);
            v656.i32[3] = 0;
            v657 = vrsqrteq_f32(v656);
            v658 = vmulq_f32(v657, vrsqrtsq_f32(v656, vmulq_f32(v657, v657)));
            v659 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v655.f32[0] != 0.0)), 0x1FuLL));
            v659.i32[3] = 0;
            v660 = vbslq_s8(vcltzq_s32(v659), vmulq_f32(v654, vmulq_f32(v658, vrsqrtsq_f32(v656, vmulq_f32(v658, v658)))), vextq_s8(vextq_s8(v651, v651, 0xCuLL), v651, 8uLL));
            v661 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v660, v660), v660, 0xCuLL), vnegq_f32(v651)), v660, v652);
            v662 = vextq_s8(vuzp1q_s32(v661, v661), v661, 0xCuLL);
            v663 = vmulq_f32(v661, v661);
            *&v664 = v663.f32[1] + (v663.f32[2] + v663.f32[0]);
            *v663.f32 = vrsqrte_f32(v664);
            *v663.f32 = vmul_f32(*v663.f32, vrsqrts_f32(v664, vmul_f32(*v663.f32, *v663.f32)));
            v665 = vmulq_n_f32(v662, vmul_f32(*v663.f32, vrsqrts_f32(v664, vmul_f32(*v663.f32, *v663.f32))).f32[0]);
            v666 = v651.f32[2] + (v660.f32[0] + *&v665.i32[1]);
            if (v666 <= 0.0)
            {
              if (v660.f32[0] < v651.f32[2] || v660.f32[0] < *&v665.i32[1])
              {
                if (*&v665.i32[1] <= v651.f32[2])
                {
                  v677 = vzip1_s32(*&vextq_s8(v660, v660, 8uLL), *&vextq_s8(v665, v665, 8uLL));
                  v678 = __PAIR64__(v660.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v651.f32[2] + 1.0) - v660.f32[0]) - *&v665.i32[1])));
                  v679 = vdup_lane_s32(*v665.i8, 0);
                  *v680.f32 = vadd_f32(*v651.f32, v677);
                  v681 = vsub_f32(*v660.f32, v679);
                  v679.i32[0] = v678.i32[0];
                  v679.i32[0] = vmul_f32(v678, v679).u32[0];
                  v679.i32[1] = v681.i32[1];
                  *&v680.u32[2] = v679;
                  v670 = vmulq_n_f32(v680, 0.5 / v678.f32[0]);
                }

                else
                {
                  v675 = sqrtf(((*&v665.i32[1] + 1.0) - v660.f32[0]) - v651.f32[2]);
                  v676.f32[0] = v660.f32[1] + *v665.i32;
                  v676.f32[1] = v675 * v675;
                  *&v676.u32[2] = vext_s8(vadd_f32(*v651.f32, vdup_laneq_s32(v665, 2)), vsub_f32(*v651.f32, *&vextq_s8(v660, v660, 8uLL)), 4uLL);
                  v670 = vmulq_n_f32(v676, 0.5 / v675);
                }
              }

              else
              {
                v671 = sqrtf(((v660.f32[0] + 1.0) - *&v665.i32[1]) - v651.f32[2]);
                v672 = vdup_lane_s32(*v665.i8, 0);
                v673 = vadd_f32(*v660.f32, v672);
                v672.f32[0] = v671;
                v674.i32[0] = vmul_f32(__PAIR64__(v660.u32[1], LODWORD(v671)), v672).u32[0];
                v674.i32[1] = v673.i32[1];
                v674.f32[2] = v651.f32[0] + v660.f32[2];
                v674.f32[3] = *&v665.i32[2] - v651.f32[1];
                v670 = vmulq_n_f32(v674, 0.5 / v671);
              }
            }

            else
            {
              v667 = vzip2q_s32(v665, vuzp1q_s32(v665, v651));
              v667.i32[2] = v660.i32[1];
              v668 = vtrn2q_s32(v651, vzip2q_s32(v651, v660));
              v668.i32[2] = v665.i32[0];
              v669 = vsubq_f32(v667, v668);
              v667.i32[3] = sqrtf(v666 + 1.0);
              v668.i32[3] = v667.i32[3];
              v669.i32[3] = vmulq_f32(v667, v668).i32[3];
              v670 = vmulq_n_f32(v669, 0.5 / v667.f32[3]);
            }

            v526[6] = v670;
            v682 = vmulq_f32(v545, v547);
            v683 = vextq_s8(vuzp1q_s32(v682, v682), v682, 0xCuLL);
            v684 = vmlaq_f32(vmulq_f32(v683, v546), v547, v682);
            v685 = vextq_s8(vuzp1q_s32(v684, v684), v684, 0xCuLL);
            v686 = vmulq_f32(v684, v684);
            v686.f32[0] = v686.f32[1] + (v686.f32[2] + v686.f32[0]);
            v687 = vdupq_lane_s32(*v686.f32, 0);
            v687.i32[3] = 0;
            v688 = vrsqrteq_f32(v687);
            v689 = vmulq_f32(v688, vrsqrtsq_f32(v687, vmulq_f32(v688, v688)));
            v690 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_n_s16(v686.f32[0] != 0.0)), 0x1FuLL));
            v690.i32[3] = 0;
            v691 = vbslq_s8(vcltzq_s32(v690), vmulq_f32(v685, vmulq_f32(v689, vrsqrtsq_f32(v687, vmulq_f32(v689, v689)))), vextq_s8(vextq_s8(v682, v682, 0xCuLL), v682, 8uLL));
            v692 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v691, v691), v691, 0xCuLL), vnegq_f32(v682)), v691, v683);
            v693 = vextq_s8(vuzp1q_s32(v692, v692), v692, 0xCuLL);
            v694 = vmulq_f32(v692, v692);
            *&v695 = v694.f32[1] + (v694.f32[2] + v694.f32[0]);
            *v694.f32 = vrsqrte_f32(v695);
            *v694.f32 = vmul_f32(*v694.f32, vrsqrts_f32(v695, vmul_f32(*v694.f32, *v694.f32)));
            v696 = vmulq_n_f32(v693, vmul_f32(*v694.f32, vrsqrts_f32(v695, vmul_f32(*v694.f32, *v694.f32))).f32[0]);
            v697 = v682.f32[2] + (v691.f32[0] + *&v696.i32[1]);
            v1044 = v502;
            v948 = v507;
            if (v697 <= 0.0)
            {
              if (v691.f32[0] < v682.f32[2] || v691.f32[0] < *&v696.i32[1])
              {
                v702 = v1097;
                if (*&v696.i32[1] <= v682.f32[2])
                {
                  v709 = vzip1_s32(*&vextq_s8(v691, v691, 8uLL), *&vextq_s8(v696, v696, 8uLL));
                  v710 = __PAIR64__(v691.u32[1], COERCE_UNSIGNED_INT(sqrtf(((v682.f32[2] + 1.0) - v691.f32[0]) - *&v696.i32[1])));
                  v711 = vdup_lane_s32(*v696.i8, 0);
                  *v712.f32 = vadd_f32(*v682.f32, v709);
                  v713 = vsub_f32(*v691.f32, v711);
                  v711.i32[0] = v710.i32[0];
                  v711.i32[0] = vmul_f32(v710, v711).u32[0];
                  v711.i32[1] = v713.i32[1];
                  *&v712.u32[2] = v711;
                  v701 = vmulq_n_f32(v712, 0.5 / v710.f32[0]);
                }

                else
                {
                  v707 = sqrtf(((*&v696.i32[1] + 1.0) - v691.f32[0]) - v682.f32[2]);
                  v708.f32[0] = v691.f32[1] + *v696.i32;
                  v708.f32[1] = v707 * v707;
                  *&v708.u32[2] = vext_s8(vadd_f32(*v682.f32, vdup_laneq_s32(v696, 2)), vsub_f32(*v682.f32, *&vextq_s8(v691, v691, 8uLL)), 4uLL);
                  v701 = vmulq_n_f32(v708, 0.5 / v707);
                }
              }

              else
              {
                v703 = sqrtf(((v691.f32[0] + 1.0) - *&v696.i32[1]) - v682.f32[2]);
                v704 = vdup_lane_s32(*v696.i8, 0);
                v705 = vadd_f32(*v691.f32, v704);
                v704.f32[0] = v703;
                v706.i32[0] = vmul_f32(__PAIR64__(v691.u32[1], LODWORD(v703)), v704).u32[0];
                v706.i32[1] = v705.i32[1];
                v706.f32[2] = v682.f32[0] + v691.f32[2];
                v706.f32[3] = *&v696.i32[2] - v682.f32[1];
                v701 = vmulq_n_f32(v706, 0.5 / v703);
                v702 = v1097;
              }
            }

            else
            {
              v698 = vzip2q_s32(v696, vuzp1q_s32(v696, v682));
              v698.i32[2] = v691.i32[1];
              v699 = vtrn2q_s32(v682, vzip2q_s32(v682, v691));
              v699.i32[2] = v696.i32[0];
              v700 = vsubq_f32(v698, v699);
              v698.i32[3] = sqrtf(v697 + 1.0);
              v699.i32[3] = v698.i32[3];
              v700.i32[3] = vmulq_f32(v698, v699).i32[3];
              v701 = vmulq_n_f32(v700, 0.5 / v698.f32[3]);
              v702 = v1097;
            }

            v1154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1153.f32[0]), xmmword_1AFE20160, *v1153.f32, 1), xmmword_1AFE20180, v1153, 2), v1106, v1153, 3);
            v1139 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1138.f32[0]), xmmword_1AFE20160, *v1138.f32, 1), xmmword_1AFE20180, v1138, 2), v1106, v1138, 3);
            v1115 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v702.f32[0]), xmmword_1AFE20160, *v702.f32, 1), xmmword_1AFE20180, v702, 2), v1106, v702, 3);
            v1128 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v1127.f32[0]), xmmword_1AFE20160, *v1127.f32, 1), xmmword_1AFE20180, v1127, 2), v1106, v1127, 3);
            v702.i32[3] = v909;
            v1098 = v702;
            v526[7] = v701;
            v714 = &v1218[3];
            for (j = 2; j != 8; ++j)
            {
              *v716.i64 = sub_1AF5B1F1C(v527[j]);
              v1345.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1154, v716.f32[0]), v1139, *v716.f32, 1), v1128, v716, 2), v1115, v716, 3);
              v1345.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1154, v717.f32[0]), v1139, *v717.f32, 1), v1128, v717, 2), v1115, v717, 3);
              v1345.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1154, v718.f32[0]), v1139, *v718.f32, 1), v1128, v718, 2), v1115, v718, 3);
              v1345.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1154, v719.f32[0]), v1139, *v719.f32, 1), v1128, v719, 2), v1115, v719, 3);
              *(v714 - 1) = __invert_f4(v1345);
              v714 += 4;
            }

            swift_getKeyPath();
            v720 = swift_modifyAtWritableKeyPath();
            *&v721 = v513;
            *&v722 = v514;
            sub_1AF5CE944(v723, 6, &v1159, v527, &v1158, v908, v1098, v1068, v1087, v1058, v1077, v721, v722, v515, v724, v725, LODWORD(v516));
            v720(v1293, 0);
            swift_setDeallocating();
            swift_deallocClassInstance();

            v1218[26] = v1068;
            v1218[27] = v1087;
            v1218[28] = v1058;
            v1218[29] = v1077;
            LODWORD(v1218[36]) = v517;
            memcpy(v510, v1218, 0x270uLL);
            v909 = v1098.i32[3];
            v502 = v1044;
            v506 = v953;
            v505 = v957;
            v508 = v943;
            v507 = v948;
            continue;
          }

          if (v598.f32[0] < v589.f32[2] || v598.f32[0] < *&v603.i32[1])
          {
            if (*&v603.i32[1] <= v589.f32[2])
            {
              v605 = sqrtf(((v589.f32[2] + 1.0) - v598.f32[0]) - *&v603.i32[1]);
              v642 = vzip1_s32(*&vextq_s8(v598, v598, 8uLL), *&vextq_s8(v603, v603, 8uLL));
              v643 = __PAIR64__(v598.u32[1], LODWORD(v605));
              v644 = vdup_lane_s32(*v603.i8, 0);
              *v608.f32 = vadd_f32(*v589.f32, v642);
              v645 = vsub_f32(*v598.f32, v644);
              v644.f32[0] = v605;
              v644.i32[0] = vmul_f32(v643, v644).u32[0];
              v644.i32[1] = v645.i32[1];
              *&v608.u32[2] = v644;
              goto LABEL_282;
            }

            v615 = sqrtf(((*&v603.i32[1] + 1.0) - v598.f32[0]) - v589.f32[2]);
            v613.f32[0] = v598.f32[1] + *v603.i32;
            v613.f32[1] = v615 * v615;
            *&v613.u32[2] = vext_s8(vadd_f32(*v589.f32, vdup_laneq_s32(v603, 2)), vsub_f32(*v589.f32, *&vextq_s8(v598, v598, 8uLL)), 4uLL);
            v614 = 0.5 / v615;
          }

          else
          {
            v610 = sqrtf(((v598.f32[0] + 1.0) - *&v603.i32[1]) - v589.f32[2]);
            v611 = vdup_lane_s32(*v603.i8, 0);
            v612 = vadd_f32(*v598.f32, v611);
            v611.f32[0] = v610;
            v613.i32[0] = vmul_f32(__PAIR64__(v598.u32[1], LODWORD(v610)), v611).u32[0];
            v613.i32[1] = v612.i32[1];
            v613.f32[2] = v589.f32[0] + v598.f32[2];
            v613.f32[3] = *&v603.i32[2] - v589.f32[1];
            v614 = 0.5 / v610;
          }

          v609 = vmulq_n_f32(v613, v614);
          goto LABEL_289;
        }

        v548 = sqrtf(((v256 + 1.0) - v533.f32[0]) - *&v538.i32[1]);
        v554 = vzip1_s32(*&vextq_s8(v533, v533, 8uLL), *&vextq_s8(v538, v538, 8uLL));
        v555 = __PAIR64__(v533.u32[1], LODWORD(v548));
        v556 = vdup_lane_s32(*v538.i8, 0);
        *v551.f32 = vadd_f32(*v987.i8, v554);
        v557 = vsub_f32(*v533.f32, v556);
        v556.f32[0] = v548;
        v556.i32[0] = vmul_f32(v555, v556).u32[0];
        v556.i32[1] = v557.i32[1];
        *&v551.u32[2] = v556;
      }

      else
      {
        v548 = sqrtf(((v533.f32[0] + 1.0) - *&v538.i32[1]) - v256);
        v549 = vdup_lane_s32(*v538.i8, 0);
        v550 = vadd_f32(*v533.f32, v549);
        v549.f32[0] = v548;
        v551.i32[0] = vmul_f32(__PAIR64__(v533.u32[1], LODWORD(v548)), v549).u32[0];
        v551.i32[1] = v550.i32[1];
        v551.f32[2] = *v987.i32 + v533.f32[2];
        v551.f32[3] = *&v538.i32[2] - *&v987.i32[1];
      }

      break;
    }

    v553 = 0.5 / v548;
    goto LABEL_271;
  }

LABEL_320:
  v726 = sub_1AF5CEBA8(&v1224, &v1225, &v1295);
  if (v900 != 0 && v899 && v922)
  {
    v727 = *(v936 + 32);
    v728 = *(v891 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v1166 = v900;
    v1167 = HIDWORD(v890);
    v1168 = v889;
    v1169 = v892;
    v1170 = v890;
    v1171 = v893;
    sub_1AF5D15C0(&v1272, v1218);
    v729 = 0;
    v1002 = vdupq_n_s32(0x40490FDAu);
    v1010 = vdupq_n_s32(0x3ABFE803u);
    v981 = v728;
    v984 = v727;
    do
    {
      v988 = v729;
      v730 = (v917 + 48 * v729);
      v1140 = *v730;
      v731 = v730[2];
      v1129 = v730[1];
      v733 = *(v730 + 2);
      v732 = *(v730 + 3);
      v735 = *(v730 + 4);
      v734 = *(v730 + 5);
      if (v728)
      {
        v736 = *(v734 + 376);

        os_unfair_lock_lock(v736);
        os_unfair_lock_lock(*(v734 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v727);
      v737 = *(v936 + 64);
      v1293[0] = *(v936 + 48);
      v1293[1] = v737;
      v1294 = *(v936 + 80);
      v738 = *(v936 + 32);
      v739 = *(*(*(*(v734 + 40) + 16) + 32) + 16) + 1;

      *(v936 + 48) = ecs_stack_allocator_allocate(v738, 48 * v739, 8);
      *(v936 + 56) = v739;
      *(v936 + 72) = 0;
      *(v936 + 80) = 0;
      *(v936 + 64) = 0;

      v740 = sub_1AF64B110(&type metadata for SpotLight, &off_1F252AC10, v733, v732, v735, v936);
      v741 = sub_1AF64B110(&type metadata for WorldTransform, &off_1F2529FC0, v733, v732, v735, v936);
      v742 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v733, v732, v735, v936);
      v743 = v742;
      if (v733)
      {
        if (v735)
        {
          v744 = &v1223[72 * v731];
          v745 = (v741 + 32);
          v746 = (v740 + 12);
          v727 = v984;
          do
          {
            if (v731 <= 7)
            {
              v747 = *(v746 - 3);
              v748 = *(v746 - 2);
              v749 = *(v746 - 1);
              v750 = *v746;
              v751 = v746[1];
              v752 = v746[2];
              v753 = *v745[2].f32;
              *&v754 = vdivq_f32(vmulq_f32(vmulq_n_f32(*v743, v747), v1010), v1002).u64[0];
              *(&v754 + 2) = (vmuls_lane_f32(v747, *v743, 2) * 0.0014641) / 3.1416;
              HIDWORD(v754) = 0;
              v1099 = v754;
              v755 = vsubq_f32(v753, v1103);
              v1346.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v745[-4].f32)), xmmword_1AFE20160, v745[-4], 1), xmmword_1AFE20180, *v745[-4].f32, 2), v1106, *v745[-4].f32, 3);
              v1346.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v745[-2].f32)), xmmword_1AFE20160, v745[-2], 1), xmmword_1AFE20180, *v745[-2].f32, 2), v1106, *v745[-2].f32, 3);
              v1346.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v745->f32)), xmmword_1AFE20160, *v745, 1), xmmword_1AFE20180, *v745->f32, 2), v1106, *v745->f32, 3);
              v1346.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v753.f32[0]), xmmword_1AFE20160, *v753.f32, 1), xmmword_1AFE20180, v753, 2), v1106, v753, 3);
              v755.i32[3] = 0;
              v1088 = v755;
              v1116 = __invert_f4(v1346);
              v756 = fmaxf(v751, 0.0001);
              if (v752 <= (v756 + 0.0001))
              {
                v752 = v756 + 0.0001;
              }

              v757 = v749 * 0.5;
              *&v758 = 1.0 / tanf(v757);
              *&v759 = v756;
              *&v760 = v752;
              *v761.i64 = sub_1AF6A6AFC(1, v759, v760, v758);
              v1033 = v762;
              v1045 = v761;
              v1078 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v761, v1116.columns[0].f32[0]), v762, *v1116.columns[0].f32, 1), v763, v1116.columns[0], 2), v764, v1116.columns[0], 3);
              v1018 = v764;
              v1026 = v763;
              v1069 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v761, v1116.columns[1].f32[0]), v762, *v1116.columns[1].f32, 1), v763, v1116.columns[1], 2), v764, v1116.columns[1], 3);
              v1059 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v761, v1116.columns[2].f32[0]), v762, *v1116.columns[2].f32, 1), v763, v1116.columns[2], 2), v764, v1116.columns[2], 3);
              v1050 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v761, v1116.columns[3].f32[0]), v762, *v1116.columns[3].f32, 1), v763, v1116.columns[3], 2), v764, v1116.columns[3], 3);
              v765 = cosf(v757);
              v766 = cosf(v750 * 0.5);
              *(v744 + 611) = v1099;
              *(v744 + 612) = v1088;
              *(v744 + 2452) = v1116;
              *(v744 + 617) = v1045;
              *(v744 + 618) = v1033;
              *(v744 + 619) = v1026;
              *(v744 + 620) = v1018;
              *(v744 + 621) = v1078;
              v767 = 1.0 / fmaxf(v766 - v765, 0.00000011921);
              *(v744 + 622) = v1069;
              *(v744 + 623) = v1059;
              *(v744 + 624) = v1050;
              *(v744 + 625) = 0u;
              v744[2504] = 0;
              *(v744 + 2505) = 1.0 / (v748 * v748);
              *(v744 + 2506) = v767;
              *(v744 + 2507) = -(v765 * v767);
              *(v744 + 628) = 0u;
              *(v744 + 627) = 0u;
            }

            ++v743;
            v744 += 72;
            v745 += 8;
            ++v731;
            v746 += 6;
            --v735;
          }

          while (v735);
        }

        else
        {
          v727 = v984;
        }
      }

      else
      {
        v768 = v1129 - v1140;
        v769 = &v1223[72 * v731];
        v770 = &v740[24 * v1140 + 12];
        v771 = &v742[16 * v1140];
        v772 = &v741[64 * v1140 + 32];
        v727 = v984;
        while (v768)
        {
          if (v731 < 8)
          {
            v773 = *(v770 - 12);
            v774 = *(v770 - 8);
            v775 = *(v770 - 4);
            v776 = *v770;
            v777 = *(v770 + 4);
            v778 = *(v770 + 8);
            v779 = *v772[2].f32;
            *&v780 = vdivq_f32(vmulq_f32(vmulq_n_f32(*v771, v773), v1010), v1002).u64[0];
            *(&v780 + 2) = (vmuls_lane_f32(v773, *v771, 2) * 0.0014641) / 3.1416;
            HIDWORD(v780) = 0;
            v1100 = v780;
            v781 = vsubq_f32(v779, v1103);
            v1347.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v772[-4].f32)), xmmword_1AFE20160, v772[-4], 1), xmmword_1AFE20180, *v772[-4].f32, 2), v1106, *v772[-4].f32, 3);
            v1347.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v772[-2].f32)), xmmword_1AFE20160, v772[-2], 1), xmmword_1AFE20180, *v772[-2].f32, 2), v1106, *v772[-2].f32, 3);
            v1347.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, COERCE_FLOAT(*v772->f32)), xmmword_1AFE20160, *v772, 1), xmmword_1AFE20180, *v772->f32, 2), v1106, *v772->f32, 3);
            v1347.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v779.f32[0]), xmmword_1AFE20160, *v779.f32, 1), xmmword_1AFE20180, v779, 2), v1106, v779, 3);
            v781.i32[3] = 0;
            v1089 = v781;
            v1117 = __invert_f4(v1347);
            v782 = fmaxf(v777, 0.0001);
            if (v778 <= (v782 + 0.0001))
            {
              v778 = v782 + 0.0001;
            }

            v783 = v775 * 0.5;
            *&v784 = 1.0 / tanf(v783);
            *&v785 = v782;
            *&v786 = v778;
            *v787.i64 = sub_1AF6A6AFC(1, v785, v786, v784);
            v1034 = v788;
            v1046 = v787;
            v1079 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v787, v1117.columns[0].f32[0]), v788, *v1117.columns[0].f32, 1), v789, v1117.columns[0], 2), v790, v1117.columns[0], 3);
            v1019 = v790;
            v1027 = v789;
            v1070 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v787, v1117.columns[1].f32[0]), v788, *v1117.columns[1].f32, 1), v789, v1117.columns[1], 2), v790, v1117.columns[1], 3);
            v1060 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v787, v1117.columns[2].f32[0]), v788, *v1117.columns[2].f32, 1), v789, v1117.columns[2], 2), v790, v1117.columns[2], 3);
            v1051 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v787, v1117.columns[3].f32[0]), v788, *v1117.columns[3].f32, 1), v789, v1117.columns[3], 2), v790, v1117.columns[3], 3);
            v791 = cosf(v783);
            v792 = cosf(v776 * 0.5);
            *(v769 + 611) = v1100;
            *(v769 + 612) = v1089;
            *(v769 + 2452) = v1117;
            *(v769 + 617) = v1046;
            *(v769 + 618) = v1034;
            *(v769 + 619) = v1027;
            *(v769 + 620) = v1019;
            *(v769 + 621) = v1079;
            v793 = 1.0 / fmaxf(v792 - v791, 0.00000011921);
            *(v769 + 622) = v1070;
            *(v769 + 623) = v1060;
            *(v769 + 624) = v1051;
            *(v769 + 625) = 0u;
            v769[2504] = 0;
            *(v769 + 2505) = 1.0 / (v774 * v774);
            *(v769 + 2506) = v793;
            *(v769 + 2507) = -(v791 * v793);
            *(v769 + 628) = 0u;
            *(v769 + 627) = 0u;
          }

          --v768;
          ++v731;
          v769 += 72;
          v770 += 24;
          ++v771;
          v772 += 8;
        }
      }

      sub_1AF630994(v936, &v1166, v1293);
      sub_1AF62D29C(v734);
      ecs_stack_allocator_pop_snapshot(v727);
      v728 = v981;
      if (v981)
      {
        os_unfair_lock_unlock(*(v734 + 344));
        os_unfair_lock_unlock(*(v734 + 376));
      }

      v729 = v988 + 1;
    }

    while (v988 + 1 != v922);
    v726 = sub_1AF5D1564(&v1272);
  }

  if (v902 && v925 >= 1 && v923)
  {
    v794 = v937[4];
    v795 = *(v920 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
    v1160 = v902;
    v1161 = HIDWORD(v895);
    v1162 = v894;
    v1163 = v896;
    v1164 = v895;
    v1165 = v897;
    sub_1AF5D15C0(&v1281, v1218);
    v796 = 0;
    v982 = vdupq_n_s32(0x40490FDAu);
    v985 = vdupq_n_s32(0x3ABFE803u);
    v939 = v795;
    v944 = v794;
    do
    {
      v1155 = v59;
      v958 = v796;
      v797 = (v918 + 48 * v796);
      v798 = *v797;
      v799 = v797[1];
      v800 = v797[2];
      v802 = *(v797 + 2);
      v801 = *(v797 + 3);
      v804 = *(v797 + 4);
      v803 = *(v797 + 5);
      if (v795)
      {
        v805 = *(v803 + 376);

        os_unfair_lock_lock(v805);
        os_unfair_lock_lock(*(v803 + 344));
      }

      else
      {
      }

      ecs_stack_allocator_push_snapshot(v794);

      sub_1AF630914(v806, v937, v1292);

      *&v1218[0] = v920;
      *(&v1218[0] + 1) = v803;
      *&v1218[1] = v937;
      *(&v1218[1] + 1) = v800;
      *&v1218[2] = (v799 - v798 + v800);
      *(&v1218[2] + 1) = v925;
      *&v1218[3] = v798;
      *(&v1218[3] + 1) = v799;
      v1218[4] = 0uLL;
      LOBYTE(v1218[5]) = 1;
      *(&v1218[5] + 1) = v802;
      *&v1218[6] = v801;
      *(&v1218[6] + 1) = v804;
      v807 = v1155;
      v808 = sub_1AF7059F8(v803, v1218);
      v809 = sub_1AF705994(v803, v1218);
      v1156 = sub_1AF70596C(v803, v1218);
      v954 = v803;
      v810 = sub_1AF705944(v803, v1218);
      v811 = v810;
      v949 = v807;
      if (*(&v1218[5] + 1))
      {
        v812 = *(&v1218[6] + 1);
        v813 = v1156;
        if (*(&v1218[6] + 1))
        {
          v814 = 0;
          v815 = v810 + 8;
          v816 = v808 + 8;
          v817 = (v809 + 32);
          v966 = *(&v1218[6] + 1);
          do
          {
            v823 = v814 + *(&v1218[1] + 1);
            if (v814 + *(&v1218[1] + 1) <= 7)
            {
              v824 = *(v816 - 1);
              v825 = *v816;
              v826 = *(v816 + 1);
              v1141 = *(v816 + 1);
              v827 = v817[-2];
              v828 = v817[-1];
              v829 = *v817;
              v830 = v817[1];
              v1004 = *&v813[16 * v814];
              v1012 = *(v816 - 2);
              v831 = *(v815 - 2);
              v832 = *v815;
              v1219 = 0u;
              v1220 = 0u;
              v1035 = v828;
              v1047 = v827;
              v1350.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v827.f32[0]), xmmword_1AFE20160, *v827.f32, 1), xmmword_1AFE20180, v827, 2), v1106, v827, 3);
              v1350.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v828.f32[0]), xmmword_1AFE20160, *v828.f32, 1), xmmword_1AFE20180, v828, 2), v1106, v828, 3);
              v1020 = v830;
              v1028 = v829;
              v1350.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v829.f32[0]), xmmword_1AFE20160, *v829.f32, 1), xmmword_1AFE20180, v829, 2), v1106, v829, 3);
              v1350.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v830.f32[0]), xmmword_1AFE20160, *v830.f32, 1), xmmword_1AFE20180, v830, 2), v1106, v830, 3);
              v1351 = __invert_f4(v1350);
              v1118 = v1351.columns[1];
              v1130 = v1351.columns[0];
              v1090 = v1351.columns[3];
              v1101 = v1351.columns[2];
              v833 = fmaxf(*&v1141, 0.0001);
              if (*(&v1141 + 1) > (v833 + 0.0001))
              {
                v834 = *(&v1141 + 1);
              }

              else
              {
                v834 = v833 + 0.0001;
              }

              v835 = v825 * 0.5;
              *&v836 = 1.0 / tanf(v835);
              *&v837 = v833;
              *&v838 = v834;
              *v839.i64 = sub_1AF6A6AFC(1, v837, v838, v836);
              v1071 = v840;
              v1080 = v839;
              v1052 = v842;
              v1061 = v841;
              v843 = cosf(v835);
              v844 = cosf(v826 * 0.5);
              v996 = v1158;
              v845 = v1159;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v845 = sub_1AF4229F8(0, *(v845 + 2) + 1, 1, v845);
              }

              v847 = *(v845 + 2);
              v846 = *(v845 + 3);
              if (v847 >= v846 >> 1)
              {
                v845 = sub_1AF4229F8(v846 > 1, v847 + 1, 1, v845);
              }

              v818.i64[0] = vdivq_f32(vmulq_f32(vmulq_n_f32(v1004, v1012), v985), v982).u64[0];
              v818.f32[2] = (vmuls_lane_f32(v1012, v1004, 2) * 0.0014641) / 3.1416;
              v818.i32[3] = 0;
              v1348.columns[3] = v1020;
              v819 = vsubq_f32(v1020, v1103);
              v819.i32[3] = 0;
              v1003 = v819;
              v1011 = v818;
              v820 = 1.0 / fmaxf(v844 - v843, 0.00000011921);
              v1348.columns[1] = v1035;
              v1348.columns[0] = v1047;
              v1348.columns[2] = v1028;
              v1349 = __invert_f4(v1348);
              *(v845 + 2) = v847 + 1;
              v821 = &v845[160 * v847];
              *(v821 + 32) = v1349;
              *(v821 + 6) = v1080;
              *(v821 + 7) = v1071;
              *(v821 + 8) = v1061;
              *(v821 + 9) = v1052;
              *(v821 + 20) = v1141;
              *(v821 + 11) = v996;
              v1159 = v845;
              v1349.columns[0] = *(v832 + 32);
              v822 = &v1223[72 * v823 + 3020];
              *v822 = v1011;
              v822[1] = v1003;
              v822[2] = v1130;
              v822[3] = v1118;
              v822[4] = v1101;
              v822[5] = v1090;
              v822[6] = v1080;
              v822[7] = v1071;
              v822[8] = v1061;
              v822[9] = v1052;
              v822[10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1080, v1130.f32[0]), v1071, *v1130.f32, 1), v1061, v1130, 2), v1052, v1130, 3);
              v822[11] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1080, v1118.f32[0]), v1071, *v1118.f32, 1), v1061, v1118, 2), v1052, v1118, 3);
              v822[12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1080, v1101.f32[0]), v1071, *v1101.f32, 1), v1061, v1101, 2), v1052, v1101, 3);
              v822[13] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1080, v1090.f32[0]), v1071, *v1090.f32, 1), v1061, v1090, 2), v1052, v1090, 3);
              v822[14] = v1349.columns[0];
              v822[15].i32[0] = v831;
              v822[15].f32[1] = 1.0 / (v824 * v824);
              v822[15].f32[2] = v820;
              v822[15].f32[3] = -(v843 * v820);
              v1349.columns[0] = v1220;
              v822[16] = v1219;
              v822[17] = v1349.columns[0];
              v813 = v1156;
              v812 = v966;
            }

            ++v814;
            v815 += 2;
            v816 += 24;
            v817 += 4;
          }

          while (v812 != v814);
        }
      }

      else
      {
        v848 = *(&v1218[1] + 1);
        v849 = &v808[24 * *&v1218[3] + 8];
        v850 = *(&v1218[3] + 1) - *&v1218[3];
        v851 = &v1223[72 * *(&v1218[1] + 1)];
        v852 = &v809[64 * *&v1218[3] + 32];
        v961 = 16 * *&v1218[3];
        v853 = v1156;
        while (v850)
        {
          if (v848 < 8)
          {
            v858 = *(v849 - 4);
            v859 = *v849;
            v860 = *(v849 + 4);
            v1142 = *(v849 + 8);
            v861 = v852[-2];
            v862 = v852[-1];
            v863 = *v852;
            v864 = v852[1];
            v1157 = v853;
            v998 = *&v853[v961];
            v1006 = *(v849 - 8);
            v865 = *&v811[v961];
            v1048 = *&v811[v961 + 8];
            v1221 = 0u;
            v1222 = 0u;
            v1029 = v862;
            v1036 = v861;
            v1354.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v861.f32[0]), xmmword_1AFE20160, *v861.f32, 1), xmmword_1AFE20180, v861, 2), v1106, v861, 3);
            v1354.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v862.f32[0]), xmmword_1AFE20160, *v862.f32, 1), xmmword_1AFE20180, v862, 2), v1106, v862, 3);
            v1013 = v864;
            v1021 = v863;
            v1354.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v863.f32[0]), xmmword_1AFE20160, *v863.f32, 1), xmmword_1AFE20180, v863, 2), v1106, v863, 3);
            v1354.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1AFE20150, v864.f32[0]), xmmword_1AFE20160, *v864.f32, 1), xmmword_1AFE20180, v864, 2), v1106, v864, 3);
            v1355 = __invert_f4(v1354);
            v1119 = v1355.columns[1];
            v1131 = v1355.columns[0];
            v1091 = v1355.columns[3];
            v1102 = v1355.columns[2];
            v866 = fmaxf(*&v1142, 0.0001);
            if (*(&v1142 + 1) > (v866 + 0.0001))
            {
              v867 = *(&v1142 + 1);
            }

            else
            {
              v867 = v866 + 0.0001;
            }

            v868 = v859 * 0.5;
            *&v869 = 1.0 / tanf(v868);
            *&v870 = v866;
            *&v871 = v867;
            *v872.i64 = sub_1AF6A6AFC(1, v870, v871, v869);
            v1072 = v873;
            v1081 = v872;
            v1053 = v875;
            v1062 = v874;
            v876 = cosf(v868);
            v877 = cosf(v860 * 0.5);
            v992 = v1158;
            v878 = v1159;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v878 = sub_1AF4229F8(0, *(v878 + 2) + 1, 1, v878);
            }

            v880 = *(v878 + 2);
            v879 = *(v878 + 3);
            if (v880 >= v879 >> 1)
            {
              v878 = sub_1AF4229F8(v879 > 1, v880 + 1, 1, v878);
            }

            *&v854 = vdivq_f32(vmulq_f32(vmulq_n_f32(v998, v1006), v985), v982).u64[0];
            *(&v854 + 2) = (vmuls_lane_f32(v1006, v998, 2) * 0.0014641) / 3.1416;
            HIDWORD(v854) = 0;
            v1352.columns[3] = v1013;
            v855 = vsubq_f32(v1013, v1103);
            v855.i32[3] = 0;
            v997 = v855;
            v1005 = v854;
            v856 = 1.0 / fmaxf(v877 - v876, 0.00000011921);
            v1352.columns[1] = v1029;
            v1352.columns[0] = v1036;
            v1352.columns[2] = v1021;
            v1353 = __invert_f4(v1352);
            *(v878 + 2) = v880 + 1;
            v857 = &v878[160 * v880];
            *(v857 + 32) = v1353;
            *(v857 + 6) = v1081;
            *(v857 + 7) = v1072;
            *(v857 + 8) = v1062;
            *(v857 + 9) = v1053;
            *(v857 + 20) = v1142;
            *(v857 + 11) = v992;
            v1159 = v878;
            v1353.columns[0] = *(v1048 + 32);
            *(v851 + 755) = v1005;
            *(v851 + 756) = v997;
            *(v851 + 757) = v1131;
            *(v851 + 758) = v1119;
            *(v851 + 759) = v1102;
            *(v851 + 760) = v1091;
            *(v851 + 761) = v1081;
            *(v851 + 762) = v1072;
            *(v851 + 763) = v1062;
            *(v851 + 764) = v1053;
            *(v851 + 765) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1081, v1131.f32[0]), v1072, *v1131.f32, 1), v1062, v1131, 2), v1053, v1131, 3);
            *(v851 + 766) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1081, v1119.f32[0]), v1072, *v1119.f32, 1), v1062, v1119, 2), v1053, v1119, 3);
            *(v851 + 767) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1081, v1102.f32[0]), v1072, *v1102.f32, 1), v1062, v1102, 2), v1053, v1102, 3);
            *(v851 + 768) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v1081, v1091.f32[0]), v1072, *v1091.f32, 1), v1062, v1091, 2), v1053, v1091, 3);
            *(v851 + 769) = v1353.columns[0];
            v851[3080] = v865;
            *(v851 + 3081) = 1.0 / (v858 * v858);
            *(v851 + 3082) = v856;
            *(v851 + 3083) = -(v876 * v856);
            v1353.columns[1] = v1221;
            *(v851 + 772) = v1222;
            *(v851 + 771) = v1353.columns[1];
            v853 = v1157;
          }

          v849 += 24;
          --v850;
          ++v848;
          v851 += 72;
          v852 += 4;
          v853 += 16;
          v811 += 16;
        }
      }

      v59 = v949;
      sub_1AF630994(v937, &v1160, v1292);
      sub_1AF62D29C(v954);
      v794 = v944;
      ecs_stack_allocator_pop_snapshot(v944);
      v795 = v939;
      if (v939)
      {
        os_unfair_lock_unlock(*(v954 + 344));
        os_unfair_lock_unlock(*(v954 + 376));
      }

      v796 = v958 + 1;
    }

    while (v958 + 1 != v923);
    v726 = sub_1AF5D1564(&v1281);
  }

  MEMORY[0x1EEE9AC00](v726);
  v881 = *(v910 + 184);

  sub_1AF6D655C(&type metadata for ShadowState, &off_1F2530360, v881, sub_1AF5D14F4);

  MEMORY[0x1EEE9AC00](v882);
  v883 = *(v910 + 184);

  sub_1AF6D2ADC(&type metadata for LightsUniforms, &off_1F252B0E8, v883, sub_1AF5D1544);

  sub_1AF5D1564(&v1237);
  sub_1AF5D1564(&v1228);
  sub_1AF5D1564(&v1246);
  sub_1AF5D1564(&v1255);
  sub_1AF5D1564(&v1264);
  sub_1AF5D1564(&v1272);
  sub_1AF5D1564(&v1281);
}

void sub_1AF5CE944(__int128 *a1, uint64_t a2, char **a3, float32x4_t *a4, __int128 *a5, uint64_t a6, simd_float4 a7, __n128 a8, __n128 a9, __n128 a10, __n128 a11, double a12, double a13, float a14, uint64_t a15, uint64_t a16, unsigned int a17)
{
  if (a2)
  {
    v19 = a2;
    a7.i32[3] = 1.0;
    v47 = a7;
    v48 = __PAIR64__(a17, LODWORD(a14));
    v21 = a4 + 2;
    v22 = (a6 + 32);
    v24 = *(a6 + 44) == 1.0 && *(a6 + 40) == 1.0;
    v42 = v24;
    do
    {
      v49 = *v21;
      v50 = *a5;
      v25 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v25;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1AF4229F8(0, *(v25 + 2) + 1, 1, v25);
        *a3 = v25;
      }

      v28 = *(v25 + 2);
      v27 = *(v25 + 3);
      if (v28 >= v27 >> 1)
      {
        v25 = sub_1AF4229F8(v27 > 1, v28 + 1, 1, v25);
        *a3 = v25;
      }

      v29 = v49;
      v30 = vmulq_f32(v29, v29);
      v31 = vmulq_laneq_f32(v29, v29, 3);
      v32 = vmuls_lane_f32(v29.f32[0], *v29.f32, 1);
      v33 = vmuls_lane_f32(v49.f32[1], v49, 2);
      v29.f32[0] = vmuls_lane_f32(v29.f32[0], v29, 2);
      v34 = v30.f32[1];
      v35.i32[3] = 0;
      v35.f32[0] = (0.5 - v30.f32[1]) - v30.f32[2];
      v35.f32[1] = v32 + v31.f32[2];
      v35.f32[2] = v29.f32[0] - v31.f32[1];
      v51.columns[0] = vaddq_f32(v35, v35);
      v36 = 0.5 - v30.f32[0];
      v37.i32[3] = 0;
      v37.f32[0] = v32 - v31.f32[2];
      v37.f32[1] = (0.5 - v30.f32[0]) - v30.f32[2];
      v37.f32[2] = v33 + v31.f32[0];
      v51.columns[1] = vaddq_f32(v37, v37);
      v31.f32[0] = v33 - v31.f32[0];
      v38.i32[3] = 0;
      v38.f32[0] = v29.f32[0] + v31.f32[1];
      v38.i32[1] = v31.i32[0];
      v38.f32[2] = v36 - v34;
      v51.columns[2] = vaddq_f32(v38, v38);
      v51.columns[3] = v47;
      v52 = __invert_f4(v51);
      *(v25 + 2) = v28 + 1;
      v39 = &v25[160 * v28];
      *(v39 + 32) = v52;
      *(v39 + 6) = a8;
      *(v39 + 7) = a9;
      *(v39 + 8) = a10;
      *(v39 + 9) = a11;
      *(v39 + 20) = v48;
      *(v39 + 11) = v50;
      if (v42)
      {
        v40 = *a5;
        *a1 = *a5;
        *a5 = *&v40 + *(&v40 + 2);
        if ((*&v40 + *(&v40 + 2)) >= 1.0)
        {
          *(&v41 + 1) = *(&v40 + 1);
          LODWORD(v41) = 0;
          *(&v41 + 1) = *(&v40 + 1) + *(&v40 + 3);
          *a5 = v41;
        }
      }

      else
      {
        *a1 = *v22;
      }

      ++a1;
      ++v22;
      ++v21;
      --v19;
    }

    while (v19);
  }
}

uint64_t sub_1AF5CEBA8(uint64_t result, uint64_t a2, uint64_t *a3)
{
  v4 = v3;
  if (*a3)
  {
    if (a3[10] >= 1)
    {
      v32 = a3[7];
      if (v32)
      {
        v5 = result;
        v6 = 0;
        v31 = a3[5];
        v7 = a3[9];
        v8 = *(v7 + 32);
        v9 = *(a3[8] + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v36 = *a3;
        v10 = *(a3 + 3);
        v37 = *(a3 + 1);
        v38 = v10;
        v29 = v9;
        v30 = v8;
        do
        {
          v41 = v4;
          v11 = (v31 + 48 * v6);
          v34 = *v11;
          v35 = v6;
          v12 = v11[2];
          v33 = v11[1];
          v13 = *(v11 + 2);
          v14 = *(v11 + 3);
          v16 = *(v11 + 4);
          v15 = *(v11 + 5);
          if (v9)
          {
            v17 = *(v15 + 376);

            os_unfair_lock_lock(v17);
            os_unfair_lock_lock(*(v15 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v8);
          v18 = *(v7 + 64);
          v39[0] = *(v7 + 48);
          v39[1] = v18;
          v40 = *(v7 + 80);
          v19 = *(v7 + 32);
          v20 = *(*(*(*(v15 + 40) + 16) + 32) + 16) + 1;

          *(v7 + 48) = ecs_stack_allocator_allocate(v19, 48 * v20, 8);
          *(v7 + 56) = v20;
          *(v7 + 72) = 0;
          *(v7 + 80) = 0;
          *(v7 + 64) = 0;

          v21 = sub_1AF64B110(&type metadata for AmbientLight, &off_1F252ACC0, v13, v14, v16, v7);
          v22 = sub_1AF64B110(&type metadata for Color, &off_1F252CA88, v13, v14, v16, v7);
          if (v13)
          {
            for (; v16; --v16)
            {
              if (v12 <= 7)
              {
                *&v24 = vmulq_n_f32(*v22, *v21).u64[0];
                *(&v24 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(*v21, *v22, 2));
                *(v5 + 16 * v12) = v24;
              }

              ++v22;
              ++v21;
              ++v12;
            }
          }

          else
          {
            v25 = &v21[v34];
            v26 = v33 - v34;
            v27 = &v22[v34];
            while (v26)
            {
              if (v12 < 8)
              {
                *&v28 = vmulq_n_f32(*v27, *v25).u64[0];
                *(&v28 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(*v25, *v27, 2));
                *(v5 + 16 * v12) = v28;
              }

              ++v25;
              ++v27;
              ++v12;
              --v26;
            }
          }

          v23 = v41;
          sub_1AF630994(v7, &v36, v39);
          v4 = v23;
          sub_1AF62D29C(v15);
          v8 = v30;
          ecs_stack_allocator_pop_snapshot(v30);
          v9 = v29;
          if (v29)
          {
            os_unfair_lock_unlock(*(v15 + 344));
            os_unfair_lock_unlock(*(v15 + 376));
          }

          v6 = v35 + 1;
        }

        while (v35 + 1 != v32);
      }
    }
  }

  return result;
}

void *sub_1AF5CEE5C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v14 = *MEMORY[0x1E69E9840];
  v7 = *v3 + *(v3 + 1);
  v8 = vaddvq_s32(*(v3 + 8)) + *(v3 + 6) + v7;
  v9 = *(v1 + 232);
  memcpy(v13, v3, 0x65C0uLL);
  *v6 = CFXBufferAllocatorPerFrameAllocateWithBytes(v9, v13, 0x65C0uLL);
  *(v6 + 8) = v10;
  *(v6 + 34) = v4[1] + 6 * v4[3] + v4[5] > 0;
  *(v6 + 33) = v7 > 0;
  *(v6 + 32) = v8 > 0;
  sub_1AF5B4B24(v13);
  result = CFXBufferAllocatorPerFrameAllocateWithBytes(*(v2 + 232), v13, 0xD0uLL);
  *(v6 + 16) = result;
  *(v6 + 24) = v12;
  return result;
}

void *sub_1AF5CEF9C()
{

  return v0;
}

uint64_t sub_1AF5CEFEC()
{
  sub_1AF5CEF9C();

  return swift_deallocClassInstance();
}

uint64_t sub_1AF5CF084()
{
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v29 = qword_1ED73B840;
  v30 = 0;
  v31 = 2;
  v32 = 0;
  v33 = 2;
  v34 = 0;
  sub_1AF5C7B28(&type metadata for DirectionalLight, &off_1F252AA30, v12);
  sub_1AF5D1624(0, &qword_1ED7269A0, sub_1AF5C5300);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  *(inited + 32) = &type metadata for Shadow;
  *(inited + 40) = &off_1F2530098;
  sub_1AF5C5E24(inited, sub_1AF5D06EC, v13);
  sub_1AF5D16DC(v12, &qword_1ED723988, &type metadata for DirectionalLight, &off_1F252AAB0);
  swift_setDeallocating();
  v2 = v13[1];
  *(v0 + 16) = v13[0];
  *(v0 + 32) = v2;
  *(v0 + 48) = v14;
  sub_1AF5C88A0(&type metadata for DirectionalLight, &off_1F252AA30, v15);
  v3 = v15[1];
  *(v0 + 56) = v15[0];
  *(v0 + 72) = v3;
  *(v0 + 88) = v16;
  sub_1AF5C7B28(&type metadata for PointLight, &off_1F252AAE0, v17);
  v4 = swift_initStackObject();
  *(v4 + 16) = xmmword_1AFE431C0;
  *(v4 + 32) = &type metadata for Shadow;
  *(v4 + 40) = &off_1F2530098;
  sub_1AF5C5E24(v4, sub_1AF5D06EC, v18);
  sub_1AF5D16DC(v17, qword_1ED7239D8, &type metadata for PointLight, &off_1F252AB60);
  swift_setDeallocating();
  v5 = v18[1];
  *(v0 + 96) = v18[0];
  *(v0 + 112) = v5;
  *(v0 + 128) = v19;
  sub_1AF5C88A0(&type metadata for PointLight, &off_1F252AAE0, v20);
  v6 = v20[1];
  *(v0 + 136) = v20[0];
  *(v0 + 152) = v6;
  *(v0 + 168) = v21;
  sub_1AF5C7B28(&type metadata for SpotLight, &off_1F252AB90, v22);
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = &type metadata for Shadow;
  *(v7 + 40) = &off_1F2530098;
  sub_1AF5C5E24(v7, sub_1AF5D06EC, v23);
  sub_1AF5D16DC(v22, &qword_1ED723960, &type metadata for SpotLight, &off_1F252AC10);
  swift_setDeallocating();
  v8 = v23[1];
  *(v0 + 176) = v23[0];
  *(v0 + 192) = v8;
  *(v0 + 208) = v24;
  sub_1AF5C88A0(&type metadata for SpotLight, &off_1F252AB90, v25);
  v9 = v25[1];
  *(v0 + 216) = v25[0];
  *(v0 + 232) = v9;
  *(v0 + 248) = v26;
  sub_1AF5C8A44(v27);
  v10 = v27[1];
  *(v0 + 256) = v27[0];
  *(v0 + 272) = v10;
  *(v0 + 288) = v28;
  return v0;
}

uint64_t sub_1AF5CF390()
{
  v0 = swift_allocObject();
  sub_1AF5CF084();
  return v0;
}

uint64_t sub_1AF5CF3E4(uint64_t a1)
{
  v1 = *(a1 + 184);

  sub_1AF6D2D90(&type metadata for LightsUniforms, &off_1F252B0E8, v1);
}

void sub_1AF5CF44C(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v27[3256] = *MEMORY[0x1E69E9840];
  v4 = sub_1AF12DDCC(v1, v3);
  v6 = sub_1AF1D00F8(v4, v5);
  v8 = sub_1AF12F10C(v2, v7);
  *&v9 = vsub_f32(0, COERCE_FLOAT32X2_T(sub_1AF1B9F08(v8)));
  *(&v9 + 2) = 0.0 - v10;
  HIDWORD(v9) = 1.0;
  v25 = v9;
  bzero(v27, 0x65C0uLL);
  v11 = swift_allocObject();
  *(v11 + 16) = v27;
  *(v11 + 24) = v6;
  *(v11 + 32) = xmmword_1AFE20150;
  *(v11 + 48) = xmmword_1AFE20160;
  v12 = v25;
  *(v11 + 64) = xmmword_1AFE20180;
  *(v11 + 80) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1AF5D1874;
  *(v13 + 24) = v11;
  v26[4] = sub_1AF5D1884;
  v26[5] = v13;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 1107296256;
  v26[2] = sub_1AF5D04C0;
  v26[3] = &unk_1F24E5EC0;
  v14 = _Block_copy(v26);
  v15 = v6;

  sub_1AF13AD80(v15, v2, v14);
  _Block_release(v14);
  swift_isEscapingClosureAtFileLocation();

  *&v25 = v4;
  v17 = sub_1AF1CF8AC(v4, v16);
  v18 = *(sub_1AF0FB884(v17) + OBJC_IVAR____TtC3VFX8VFXScene_entityManager);

  sub_1AF130C80(v2, v19, v20);
  Strong = swift_unknownObjectUnownedLoadStrong();
  if (Strong)
  {

    v24[1] = v24;
    MEMORY[0x1EEE9AC00](v22);
    v24[0] = v8;
    v23 = *(v18 + 184);

    sub_1AF6D2ADC(&type metadata for LightsUniforms, &off_1F252B0E8, v23, sub_1AF5D18C4);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
  }
}

void sub_1AF5CF7CC(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  v207 = *MEMORY[0x1E69E9840];
  v169 = xmmword_1AFE20150;
  v170 = xmmword_1AFE20160;
  v171 = xmmword_1AFE20180;
  v172 = xmmword_1AFE201A0;
  v173 = xmmword_1AFE20150;
  v174 = xmmword_1AFE20160;
  v175 = xmmword_1AFE20180;
  v176 = xmmword_1AFE201A0;
  v177 = xmmword_1AFE20150;
  v178 = xmmword_1AFE20160;
  v179 = xmmword_1AFE20180;
  v180 = xmmword_1AFE201A0;
  v181 = xmmword_1AFE20150;
  v182 = xmmword_1AFE20160;
  v183 = xmmword_1AFE20180;
  v184 = xmmword_1AFE201A0;
  v185 = xmmword_1AFE20150;
  v186 = xmmword_1AFE20160;
  v187 = xmmword_1AFE20180;
  v188 = xmmword_1AFE201A0;
  v189 = xmmword_1AFE20150;
  v190 = xmmword_1AFE20160;
  v191 = xmmword_1AFE20180;
  v192 = xmmword_1AFE201A0;
  v145 = xmmword_1AFE20150;
  v146 = xmmword_1AFE20160;
  v147 = xmmword_1AFE20180;
  v148 = xmmword_1AFE201A0;
  v149 = xmmword_1AFE20150;
  v150 = xmmword_1AFE20160;
  v151 = xmmword_1AFE20180;
  v152 = xmmword_1AFE201A0;
  v153 = xmmword_1AFE20150;
  v154 = xmmword_1AFE20160;
  v155 = xmmword_1AFE20180;
  v156 = xmmword_1AFE201A0;
  v157 = xmmword_1AFE20150;
  v158 = xmmword_1AFE20160;
  v159 = xmmword_1AFE20180;
  v160 = xmmword_1AFE201A0;
  v161 = xmmword_1AFE20150;
  v162 = xmmword_1AFE20160;
  v163 = xmmword_1AFE20180;
  v164 = xmmword_1AFE201A0;
  v165 = xmmword_1AFE20150;
  v166 = xmmword_1AFE20160;
  v167 = xmmword_1AFE20180;
  v168 = xmmword_1AFE201A0;
  if (a1)
  {
    v13 = 0;
    v127 = a4 + 3596;
    v98 = a4 + 2444;
    v97 = a4 + 3020;
    v96 = a4 + 1040;
    v95 = a4 + 2288;
    v93 = a4 + 528;
    v94 = a4 + 16;
    v134 = vdupq_n_s32(0x3ABFE803u);
    v126 = vdupq_n_s32(0x40490FDAu);
    do
    {
      v14 = *(a3 + 8 * v13);
      v15 = *(a2 + 8 * v13);
      v16 = v14;
      v18 = sub_1AF19CBB4(v16, v17);
      v20 = sub_1AF19B994(v16, v19);

      if (v18 > 2)
      {
        if (v18 <= 4)
        {
          if (v18 != 3)
          {
            goto LABEL_82;
          }

          if (v20)
          {
            v33 = a4[5];
            if (v33 < 9)
            {
              sub_1AF5C7818(v16, v15, v205, a6, a7, a8, a9);

              memcpy(&v97[72 * v33], v205, 0x120uLL);
              ++a4[5];
              goto LABEL_5;
            }
          }

          else
          {
            v46 = a4[4];
            if (v46 < 9)
            {
              sub_1AF5C7818(v16, v15, v206, a6, a7, a8, a9);

              memcpy(&v98[72 * v46], v206, 0x120uLL);
              ++a4[4];
              goto LABEL_5;
            }
          }

          goto LABEL_4;
        }

        if (v18 == 5)
        {
          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v23 = sub_1AFDFDA28();
          sub_1AFDFF308();
          sub_1AFDFF2A8();
          sub_1AFDFD038();
          v195 = v142;
          v196 = v143;
          v197 = v144;
          v194 = v141;
          v193 = v140;
          v24 = sub_1AFDFF2E8();
          if (qword_1ED725CB8 != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&dword_1EB634368);
          if (qword_1ED7259C0 != -1)
          {
            swift_once();
          }

          v25 = off_1ED7259C8;
          if (!*(off_1ED7259C8 + 2) || (v26 = sub_1AFDFF278(), v27 = -1 << v25[32], v28 = v26 & ~v27, ((*&v25[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28) & 1) == 0))
          {
LABEL_25:
            sub_1AF70D168(v139, v24);
            os_unfair_lock_unlock(&dword_1EB634368);
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v140 = 1;
            sub_1AF0D4F18(v23, &v140, 0xD00000000000002ALL, 0x80000001AFF2C460);
            goto LABEL_4;
          }

          v29 = ~v27;
          while (*(*(v25 + 6) + 8 * v28) != v24)
          {
            v28 = (v28 + 1) & v29;
            if (((*&v25[((v28 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v28) & 1) == 0)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          if (v18 != 6)
          {
LABEL_82:
            sub_1AFDFE518();
            __break(1u);
            return;
          }

          if (qword_1ED730EA0 != -1)
          {
            swift_once();
          }

          v39 = sub_1AFDFDA28();
          sub_1AFDFF308();
          sub_1AFDFF2A8();
          sub_1AFDFD038();
          v200 = v142;
          v201 = v143;
          v202 = v144;
          v199 = v141;
          v198 = v140;
          v40 = sub_1AFDFF2E8();
          if (qword_1ED725CB8 != -1)
          {
            swift_once();
          }

          os_unfair_lock_lock(&dword_1EB634368);
          if (qword_1ED7259C0 != -1)
          {
            swift_once();
          }

          v41 = off_1ED7259C8;
          if (!*(off_1ED7259C8 + 2) || (v42 = sub_1AFDFF278(), v43 = -1 << v41[32], v44 = v42 & ~v43, ((*&v41[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v44) & 1) == 0))
          {
LABEL_53:
            sub_1AF70D168(v139, v40);
            os_unfair_lock_unlock(&dword_1EB634368);
            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            *&v140 = 1;
            sub_1AF0D4F18(v39, &v140, 0xD000000000000029, 0x80000001AFF2C430);
            goto LABEL_4;
          }

          v45 = ~v43;
          while (*(*(v41 + 6) + 8 * v44) != v40)
          {
            v44 = (v44 + 1) & v45;
            if (((*&v41[((v44 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v44) & 1) == 0)
            {
              goto LABEL_53;
            }
          }
        }

        os_unfair_lock_unlock(&dword_1EB634368);
      }

      else if (v18)
      {
        if (v18 == 1)
        {
          if (v20)
          {
            v22 = a4[3];
            if (v22 < 9)
            {
              sub_1AF5C7528(v16, v15, __src, a6, a7, a8, a9);

              memcpy(&v95[156 * v22], __src, 0x270uLL);
              ++a4[3];
              goto LABEL_5;
            }
          }

          else
          {
            v47 = a4[2];
            if (v47 < 9)
            {
              sub_1AF5C7528(v16, v15, v204, a6, a7, a8, a9);

              memcpy(&v96[156 * v47], v204, 0x270uLL);
              ++a4[2];
              goto LABEL_5;
            }
          }
        }

        else
        {
          if (v18 != 2)
          {
            goto LABEL_82;
          }

          if (v20)
          {
            v34 = a4[1];
            if (v34 < 9)
            {
              sub_1AF13AA04(a5, v15, &v169, &v145, 0, 0, 0);
              v129 = v146;
              v132 = v145;
              v121 = v148;
              v123 = v147;
              v103 = v169;
              v107 = v170;
              v99 = v171;
              v111 = v172;
              v119 = sub_1AF19BBC0(v16, v35);
              v37 = sub_1AF19C46C(v16, v36);
              v38 = vabsq_f32(v99);
              v117 = v37;
              if (v38.f32[0] > 0.00000011921 || v38.f32[1] > 0.00000011921 || v38.f32[2] > 0.00000011921)
              {
                v66 = vmulq_f32(v99, v99);
                *&v67 = v66.f32[2] + vaddv_f32(*v66.f32);
                *v66.f32 = vrsqrte_f32(v67);
                *v66.f32 = vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32)));
                v68 = vmulq_n_f32(v99, vmul_f32(*v66.f32, vrsqrts_f32(v67, vmul_f32(*v66.f32, *v66.f32))).f32[0]);
                v68.i32[3] = v91;
                v115 = v68;
              }

              else
              {
                v115 = 0u;
              }

              v208.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v103.f32[0]), a7, *v103.f32, 1), a8, v103, 2), a9, v103, 3);
              v208.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v107.f32[0]), a7, *v107.f32, 1), a8, v107, 2), a9, v107, 3);
              v208.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v99.f32[0]), a7, *v99.f32, 1), a8, v99, 2), a9, v99, 3);
              v208.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v111.f32[0]), a7, *v111.f32, 1), a8, v111, 2), a9, v111, 3);
              v209 = __invert_f4(v208);
              v109 = v209.columns[1];
              v113 = v209.columns[0];
              v101 = v209.columns[3];
              v105 = v209.columns[2];
              if (sub_1AF19B994(v16, v69) && (v71 = sub_1AF19ECC8(v16, v70)) != 0)
              {
                v89 = *v71;
                v73 = sub_1AF19C608(v16, v72);

                v74 = v89;
                v75 = v73;
                v76 = v75 * 0.01;
              }

              else
              {

                v74 = 0uLL;
                v76 = 0.0;
              }

              *&v77 = vmulq_f32(vmulq_n_f32(v119, v117), v134).u64[0];
              *(&v77 + 2) = vmuls_lane_f32(v117, v119, 2) * 0.0014641;
              HIDWORD(v77) = 0;
              v78 = &v93[64 * v34];
              *v78 = v77;
              *(v78 + 1) = v115;
              *(v78 + 2) = v113;
              *(v78 + 3) = v109;
              *(v78 + 4) = v105;
              *(v78 + 5) = v101;
              *(v78 + 6) = v132;
              *(v78 + 7) = v129;
              *(v78 + 8) = v123;
              *(v78 + 9) = v121;
              *(v78 + 10) = v74;
              *(v78 + 44) = v76;
              *(v78 + 49) = 0u;
              *(v78 + 53) = 0u;
              *(v78 + 57) = 0u;
              *(v78 + 15) = 0u;
              *(v78 + 45) = 0u;
              ++a4[1];
              goto LABEL_5;
            }
          }

          else
          {
            v48 = *a4;
            if (v48 < 9)
            {
              v49 = sub_1AF19BC08(v16, v21);
              v130 = v50;
              v133 = v49;
              v122 = v52;
              v124 = v51;
              v104 = sub_1AF5D18E4(v15, v53);
              v108 = v54;
              v100 = v55;
              v112 = v56;
              v120 = sub_1AF19BBC0(v16, v57);
              v59 = sub_1AF19C46C(v16, v58);
              v60 = vabsq_f32(v100);
              v62 = v60.f32[0] > 0.00000011921 || v60.f32[1] > 0.00000011921 || v60.f32[2] > 0.00000011921;
              v118 = v59;
              if (v62)
              {
                v63 = vmulq_f32(v100, v100);
                *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
                *v63.f32 = vrsqrte_f32(v64);
                *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
                v65 = vmulq_n_f32(v100, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
                v65.i32[3] = v92;
                v116 = v65;
              }

              else
              {
                v116 = 0u;
              }

              v210.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v104.n128_f32[0]), a7, v104.n128_u64[0], 1), a8, v104, 2), a9, v104, 3);
              v210.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v108.f32[0]), a7, *v108.f32, 1), a8, v108, 2), a9, v108, 3);
              v210.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v100.f32[0]), a7, *v100.f32, 1), a8, v100, 2), a9, v100, 3);
              v210.columns[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a6, v112.f32[0]), a7, *v112.f32, 1), a8, v112, 2), a9, v112, 3);
              v211 = __invert_f4(v210);
              v110 = v211.columns[1];
              v114 = v211.columns[0];
              v102 = v211.columns[3];
              v106 = v211.columns[2];
              if (sub_1AF19B994(v16, v79) && (v81 = sub_1AF19ECC8(v16, v80)) != 0)
              {
                v90 = *v81;
                v83 = sub_1AF19C608(v16, v82);

                v84 = v90;
                v85 = v83;
                v86 = v85 * 0.01;
              }

              else
              {

                v86 = 0.0;
                v84 = 0uLL;
              }

              *&v87 = vmulq_f32(vmulq_n_f32(v120, v118), v134).u64[0];
              *(&v87 + 2) = vmuls_lane_f32(v118, v120, 2) * 0.0014641;
              HIDWORD(v87) = 0;
              v88 = &v94[64 * v48];
              *v88 = v87;
              *(v88 + 1) = v116;
              *(v88 + 2) = v114;
              *(v88 + 3) = v110;
              *(v88 + 4) = v106;
              *(v88 + 5) = v102;
              *(v88 + 6) = v133;
              *(v88 + 7) = v130;
              *(v88 + 8) = v124;
              *(v88 + 9) = v122;
              *(v88 + 10) = v84;
              *(v88 + 44) = v86;
              *(v88 + 45) = 0u;
              *(v88 + 49) = 0u;
              *(v88 + 53) = 0u;
              *(v88 + 57) = 0u;
              *(v88 + 15) = 0u;
              ++*a4;
              goto LABEL_5;
            }
          }
        }
      }

      else
      {
        v30 = a4[6];
        if (v30 < 9)
        {
          v131 = sub_1AF19BBC0(v16, v21);
          v128 = sub_1AF19C46C(v16, v31);

          *&v32 = vdivq_f32(vmulq_f32(vmulq_n_f32(v131, v128), v134), v126).u64[0];
          *(&v32 + 1) = COERCE_UNSIGNED_INT((vmuls_lane_f32(v128, v131, 2) * 0.0014641) / 3.1416);
          *&v127[4 * v30] = v32;
          ++a4[6];
          goto LABEL_5;
        }
      }

LABEL_4:

LABEL_5:
      ++v13;
    }

    while (v13 != a1);
  }
}

void sub_1AF5D04F4(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v32 = *MEMORY[0x1E69E9840];
  v9 = *v5 + *(v5 + 1);
  v10 = vaddvq_s32(*(v5 + 8)) + *(v5 + 6) + v9;
  v11 = *(v3 + 232);
  memcpy(__dst, v5, sizeof(__dst));
  *v8 = CFXBufferAllocatorPerFrameAllocateWithBytes(v11, __dst, 0x65C0uLL);
  *(v8 + 8) = v12;
  *(v8 + 34) = v6[1] + 6 * v6[3] + v6[5] > 0;
  *(v8 + 33) = v9 > 0;
  *(v8 + 32) = v10 > 0;
  v13 = sub_1AF12DDCC(v2, v12);
  if (v13)
  {
    v14 = v13;
    v15 = sub_1AF1D005C(v13, 0);
    if (v15)
    {
      v16 = v15;
      v18 = sub_1AF166598(v16, v17);
      *&v20 = sub_1AF1673D0(v16, v19);
      v29 = v21;
      v30 = v20;
      v28 = v22;

      v23 = *(v4 + 232);
      __dst[0] = v30;
      __dst[1] = v29;
      __dst[2] = v28;
      *&__dst[3] = v18;
      *(&__dst[3] + 4) = 0u;
      *(&__dst[4] + 4) = 0u;
      *(&__dst[5] + 4) = 0u;
      *(&__dst[6] + 4) = 0u;
      *(&__dst[7] + 4) = 0u;
      *(&__dst[8] + 4) = 0u;
      *(&__dst[9] + 4) = 0u;
      *(&__dst[10] + 4) = 0u;
      *(&__dst[11] + 4) = 0u;
      __dst[12] = 0u;
      v24 = v23;
      v25 = CFXBufferAllocatorPerFrameAllocateWithBytes(v24, __dst, 0xD0uLL);
      v27 = v26;

      *(v8 + 16) = v25;
      *(v8 + 24) = v27;
    }

    else
    {
    }
  }
}

_WORD *sub_1AF5D06EC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v6 = *a3;
  v35 = *(a3 + 2);
  v34 = *(a3 + 12);
  v33 = a3[2];
  v32 = *(a3 + 24);
  v31 = a3[4];
  v7 = *(*a3 + 18);
  v8 = (v6 + 41 + *(v6 + 16));
  v9 = *(*a3 + 22);
  v10 = (v6 + 41 + *(v6 + 20));
  v30 = *(*a3 + 30);
  v11 = *(*a3 + 30) / 0x18uLL;
  v12 = 16 * (v7 >> 4);
  v13 = 16 * a2;
  v37 = (v9 + v12 + 7) & 0x3FFF8;
  v14 = ((v9 + v12 + 7) & 0xFFF8) + 16 * a2;
  v36 = 24 * v11;
  v23 = *(*a3 + 28);
  v24 = *a3 + 41;
  v27 = v37 + 16 * a2;
  v28 = sub_1AF6B7B38(v8, v7 >> 4, v10, v9, a1, a2, v24 + v23, v11, a5);
  __src = v8;
  v29 = v7;
  if (v9)
  {
    if (v7 >= 0x10)
    {
      v16 = &v8[2 * (v7 >> 4)];
      v17 = v10;
      do
      {
        if (((*(v8[1] + 48))(*v8) & 1) != 0 && (*v17 & 0xFE) == 2)
        {
          v15 = 1;
          goto LABEL_11;
        }

        v8 += 2;
        ++v17;
      }

      while (v8 != v16);
      v15 = 0;
LABEL_11:
      v14 = v27;
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  type metadata accessor for QueryBuffer(0);
  result = swift_allocObject();
  v19 = result;
  result[8] = 0;
  result[9] = v12;
  result[10] = v12;
  result[11] = v9;
  result[12] = (v9 + v12 + 7) & 0xFFF8;
  result[13] = v13;
  result[14] = v14;
  result[15] = v36;
  *(result + 4) = v28;
  v20 = result + 41;
  *(result + 40) = v15;
  if (v29 >= 0x10)
  {
    result = memcpy(result + 41, __src, v12);
  }

  if (v9)
  {
    result = memcpy(&v20[v12], v10, v9);
  }

  if (v13)
  {
    v21 = v13 >> 4;
    if (v13 >> 4 >= a2)
    {
      v21 = a2;
    }

    result = memcpy(&v20[v37], a1, 16 * v21);
  }

  if (v30 > 0x17)
  {
    result = memcpy(&v20[v27], (v24 + v23), v36);
  }

  *a4 = v19;
  *(a4 + 8) = v35;
  *(a4 + 12) = v34;
  *(a4 + 16) = v33;
  *(a4 + 24) = v32;
  *(a4 + 32) = v31;
  return result;
}

uint64_t sub_1AF5D0980@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1AF6B7F4C((*a3 + 41 + *(*a3 + 16)), *(*a3 + 18) >> 4, (*a3 + 41 + *(*a3 + 20)), *(*a3 + 22), a1, a2, (*a3 + 41 + *(*a3 + 28)), *(*a3 + 30) / 0x18u);
  v7 = *(a3 + 8);
  v8 = *(a3 + 12);
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  v11 = *(a3 + 32);
  *a4 = result;
  *(a4 + 8) = v7;
  *(a4 + 12) = v8;
  *(a4 + 16) = v9;
  *(a4 + 24) = v10;
  *(a4 + 32) = v11;
  return result;
}

uint64_t sub_1AF5D0A28@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *(a3 + 8);
  v6 = *(a3 + 12);
  v7 = *(a3 + 16);
  v8 = *(a3 + 24);
  v9 = *(a3 + 32);
  result = sub_1AF6B7F4C((*a3 + 41 + *(*a3 + 16)), *(*a3 + 18) >> 4, (*a3 + 41 + *(*a3 + 20)), *(*a3 + 22), a1, a2, (*a3 + 41 + *(*a3 + 28)), *(*a3 + 30) / 0x18u);
  *a4 = result;
  *(a4 + 8) = v5;
  *(a4 + 12) = v6;
  *(a4 + 16) = v7;
  *(a4 + 24) = v8;
  *(a4 + 32) = v9;
  return result;
}

unint64_t sub_1AF5D0ADC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF5D0B28(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1AF5D0B74(uint64_t a1, uint64_t a2)
{
  v2 = sub_1AFDFE638();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

float sub_1AF5D0BC0(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB633130, sub_1AF5D0E60, &type metadata for DirectionalLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D0E60();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v17 = 0;
    v9 = sub_1AFDFE6C8();
    if ((v9 & 0x100000000) != 0)
    {
      v2 = 2145.7;
    }

    else
    {
      v2 = *&v9;
    }

    v10 = a1[3];
    v11 = a1[4];
    sub_1AF441150(a1, v10);
    if (sub_1AF694FF8(1047, v10, v11))
    {
      v14 = 1;
      sub_1AFDFE738();
    }

    v16 = 2;
    sub_1AFDFE6C8();
    v15 = 3;
    sub_1AFDFE6C8();
    (*(v6 + 8))(v8, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF5D0E60()
{
  result = qword_1EB633770;
  if (!qword_1EB633770)
  {
    result = swift_getWitnessTable(a1o, &type metadata for DirectionalLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633770);
  }

  return result;
}

float sub_1AF5D0EB4(void *a1)
{
  sub_1AF5D180C(0, &qword_1EB6328C0, sub_1AF5D1138, &type metadata for PointLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D1138();
  sub_1AFDFF3B8();
  if (!v1)
  {
    v15 = 0;
    v9 = sub_1AFDFE6C8();
    if ((v9 & 0x100000000) != 0)
    {
      v2 = 2145.7;
    }

    else
    {
      v2 = *&v9;
    }

    v14 = 1;
    sub_1AFDFE6C8();
    v13 = 2;
    sub_1AFDFE6C8();
    v12 = 3;
    sub_1AFDFE6C8();
    (*(v6 + 8))(v8, v5);
  }

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  return v2;
}

unint64_t sub_1AF5D1138()
{
  result = qword_1EB633040;
  if (!qword_1EB633040)
  {
    result = swift_getWitnessTable(byte_1AFE63238, &type metadata for PointLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633040);
  }

  return result;
}

uint64_t sub_1AF5D118C@<X0>(void *a1@<X0>, float *a2@<X8>)
{
  v24 = a2;
  sub_1AF5D180C(0, &qword_1EB63C030, sub_1AF5D14A0, &type metadata for SpotLight.CodingKeys, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23 - v7;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D14A0();
  sub_1AFDFF3B8();
  if (v2)
  {
    return _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  }

  v9 = v24;
  v30 = 0;
  v10 = sub_1AFDFE6C8();
  if ((v10 & 0x100000000) != 0)
  {
    v11 = 2145.7;
  }

  else
  {
    v11 = *&v10;
  }

  v29 = 1;
  v12 = sub_1AFDFE6C8();
  if ((v12 & 0x100000000) != 0)
  {
    v13 = 10.0;
  }

  else
  {
    v13 = *&v12;
  }

  v28 = 2;
  v14 = sub_1AFDFE6C8();
  if ((v14 & 0x100000000) != 0)
  {
    v15 = 1.0472;
  }

  else
  {
    v15 = *&v14;
  }

  v27 = 3;
  v16 = sub_1AFDFE6C8();
  if ((v16 & 0x100000000) != 0)
  {
    v17 = 0.7854;
  }

  else
  {
    v17 = *&v16;
  }

  v26 = 4;
  v18 = sub_1AFDFE6C8();
  v25 = 5;
  v20 = sub_1AFDFE6C8();
  if ((v18 & 0x100000000) != 0)
  {
    v21 = 0.01;
  }

  else
  {
    v21 = *&v18;
  }

  (*(v6 + 8))(v8, v5);
  if ((v20 & 0x100000000) != 0)
  {
    v22 = 10.0;
  }

  else
  {
    v22 = *&v20;
  }

  result = _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
  *v9 = v11;
  v9[1] = v13;
  v9[2] = v15;
  v9[3] = v17;
  v9[4] = v21;
  v9[5] = v22;
  return result;
}

unint64_t sub_1AF5D14A0()
{
  result = qword_1EB63C038;
  if (!qword_1EB63C038)
  {
    result = swift_getWitnessTable(byte_1AFE631E8, &type metadata for SpotLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C038);
  }

  return result;
}

uint64_t sub_1AF5D14F4(uint64_t *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_1AF5D1564(uint64_t a1)
{
  sub_1AF5C3C90();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1AF5D15C0(uint64_t a1, uint64_t a2)
{
  sub_1AF5C3C90();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1AF5D1624(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1AFDFEA18();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1AF5D1678()
{
  result = qword_1ED7270D0;
  if (!qword_1ED7270D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1ED7270D0);
  }

  return result;
}

uint64_t sub_1AF5D16DC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  sub_1AF5D1738(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

void sub_1AF5D1738(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v9[8] = v4;
    v9[9] = v5;
    v9[0] = a3;
    v9[1] = &type metadata for WorldTransform;
    v9[2] = &type metadata for Color;
    v9[3] = a4;
    v9[4] = &off_1F2529FC0;
    v9[5] = &off_1F252CA88;
    v7 = type metadata accessor for Query3(0, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1AF5D17B8()
{
  result = qword_1EB632FE8;
  if (!qword_1EB632FE8)
  {
    result = swift_getWitnessTable(a1p, &type metadata for AmbientLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632FE8);
  }

  return result;
}

void sub_1AF5D180C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1AF5D18AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_1AF5D1904(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      v1 = &xmmword_1AFE63420;
      return *v1;
    }

    if (a1 == 1)
    {
      v1 = &xmmword_1AFE633E0;
      return *v1;
    }

LABEL_12:
    v1 = &xmmword_1AFE632E0;
    return *v1;
  }

  if (a1 == 2)
  {
    v1 = &xmmword_1AFE633A0;
    return *v1;
  }

  if (a1 == 3)
  {
    v1 = &xmmword_1AFE63360;
    return *v1;
  }

  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v1 = &xmmword_1AFE63320;
  return *v1;
}

__n128 initializeWithTake for GraphScriptGroup.Reference(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 31) = *(a2 + 31);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for LightsUniforms(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 35))
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

uint64_t storeEnumTagSinglePayload for LightsUniforms(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 34) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 35) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_1AF5D1AA0()
{
  result = qword_1EB63C050;
  if (!qword_1EB63C050)
  {
    result = swift_getWitnessTable(byte_1AFE62E98, &type metadata for DirectionalLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C050);
  }

  return result;
}

unint64_t sub_1AF5D1AF8()
{
  result = qword_1EB63C058;
  if (!qword_1EB63C058)
  {
    result = swift_getWitnessTable(byte_1AFE62F88, &type metadata for PointLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C058);
  }

  return result;
}

unint64_t sub_1AF5D1B50()
{
  result = qword_1EB63C060;
  if (!qword_1EB63C060)
  {
    result = swift_getWitnessTable(byte_1AFE63078, &type metadata for SpotLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C060);
  }

  return result;
}

unint64_t sub_1AF5D1BA8()
{
  result = qword_1EB63C068;
  if (!qword_1EB63C068)
  {
    result = swift_getWitnessTable(byte_1AFE63160, &type metadata for AmbientLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C068);
  }

  return result;
}

unint64_t sub_1AF5D1C00()
{
  result = qword_1EB632FD8;
  if (!qword_1EB632FD8)
  {
    result = swift_getWitnessTable(aJ, &type metadata for AmbientLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632FD8);
  }

  return result;
}

unint64_t sub_1AF5D1C58()
{
  result = qword_1EB632FE0;
  if (!qword_1EB632FE0)
  {
    result = swift_getWitnessTable(a9f, &type metadata for AmbientLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB632FE0);
  }

  return result;
}

unint64_t sub_1AF5D1CB0()
{
  result = qword_1EB63C070;
  if (!qword_1EB63C070)
  {
    result = swift_getWitnessTable(aAk, &type metadata for SpotLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C070);
  }

  return result;
}

unint64_t sub_1AF5D1D08()
{
  result = qword_1EB63C078;
  if (!qword_1EB63C078)
  {
    result = swift_getWitnessTable(aYg, &type metadata for SpotLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB63C078);
  }

  return result;
}

unint64_t sub_1AF5D1D60()
{
  result = qword_1EB633030;
  if (!qword_1EB633030)
  {
    result = swift_getWitnessTable(a1l, &type metadata for PointLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633030);
  }

  return result;
}

unint64_t sub_1AF5D1DB8()
{
  result = qword_1EB633038;
  if (!qword_1EB633038)
  {
    result = swift_getWitnessTable(aIh, &type metadata for PointLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633038);
  }

  return result;
}

unint64_t sub_1AF5D1E10()
{
  result = qword_1EB633760;
  if (!qword_1EB633760)
  {
    result = swift_getWitnessTable(aM_16, &type metadata for DirectionalLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633760);
  }

  return result;
}

unint64_t sub_1AF5D1E68()
{
  result = qword_1EB633768;
  if (!qword_1EB633768)
  {
    result = swift_getWitnessTable(a9i, &type metadata for DirectionalLight.CodingKeys, v0, v1);
    atomic_store(result, &qword_1EB633768);
  }

  return result;
}

uint64_t sub_1AF5D1EC4(void *a1, float a2, float a3)
{
  sub_1AF5D3370(0, &qword_1EB63C0E0, sub_1AF5D32C8, &type metadata for GenericLOD.CodingKeys, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D32C8();
  sub_1AFDFF3F8();
  *&v12[2] = a2;
  *&v12[3] = a3;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0, MEMORY[0x1E69E6458], MEMORY[0x1E69E66B0]);
  sub_1AFDFE918();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AF5D208C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001AFF2C4E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1AFDFEE28();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1AF5D2120(uint64_t a1)
{
  v2 = sub_1AF5D32C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D215C(uint64_t a1)
{
  v2 = sub_1AF5D32C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1AF5D2198(float *a1@<X8>, void *a2@<X0>)
{
  v4 = sub_1AF5D2BF8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 1) = v5;
  }
}

double sub_1AF5D21E0@<D0>(void *a1@<X8>)
{
  result = 6.56066616e69;
  *a1 = 0x4E6E6B2800000000;
  return result;
}

uint64_t sub_1AF5D21F0()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    MEMORY[0x1B271DEA0](v1, -1, -1);
  }

  v2 = *(v0 + 32);
  if (v2)
  {
    MEMORY[0x1B271DEA0](v2, -1, -1);
  }

  return swift_deallocClassInstance();
}

uint64_t *assignWithCopy for LODRenderer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *assignWithTake for LODRenderer(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for RenderGraphDiagnostics.RendererInfo(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for RenderGraphDiagnostics.RendererInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AF5D23C8(void *a1, uint64_t a2, float a3, float a4)
{
  sub_1AF5D3370(0, &qword_1EB63C090, sub_1AF5D3018, &type metadata for LODState.CodingKeys, MEMORY[0x1E69E6F58]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v14[-v11];
  sub_1AF441150(a1, a1[3]);
  sub_1AF5D3018();
  sub_1AFDFF3F8();
  v15 = a3;
  v16 = a4;
  v14[15] = 0;
  sub_1AF48C324();
  sub_1AF48C3D0(&qword_1EB6398A0, MEMORY[0x1E69E6458], MEMORY[0x1E69E66B0]);
  sub_1AFDFE918();
  if (!v4)
  {
    v14[14] = 1;
    sub_1AFDFE948();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1AF5D25A8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x49646F4C7473616CLL;
  }

  else
  {
    v3 = 0x676E61527473616CLL;
  }

  if (v2)
  {
    v4 = 0xE900000000000065;
  }

  else
  {
    v4 = 0xEC0000007865646ELL;
  }

  if (*a2)
  {
    v5 = 0x49646F4C7473616CLL;
  }

  else
  {
    v5 = 0x676E61527473616CLL;
  }

  if (*a2)
  {
    v6 = 0xEC0000007865646ELL;
  }

  else
  {
    v6 = 0xE900000000000065;
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

uint64_t sub_1AF5D265C()
{
  if (*v0)
  {
    return 0x49646F4C7473616CLL;
  }

  else
  {
    return 0x676E61527473616CLL;
  }
}

uint64_t sub_1AF5D26A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E61527473616CLL && a2 == 0xE900000000000065;
  if (v6 || (sub_1AFDFEE28() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49646F4C7473616CLL && a2 == 0xEC0000007865646ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1AFDFEE28();

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

uint64_t sub_1AF5D278C(uint64_t a1)
{
  v2 = sub_1AF5D3018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D27C8(uint64_t a1)
{
  v2 = sub_1AF5D3018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D2804@<X0>(_DWORD *a1@<X8>, void *a2@<X0>)
{
  result = sub_1AF5D2DEC(a2);
  if (!v2)
  {
    *a1 = v5;
    a1[1] = v6;
    a1[2] = result;
  }

  return result;
}

uint64_t sub_1AF5D2864(uint64_t a1)
{
  v2 = sub_1AF5D306C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D28A0(uint64_t a1)
{
  v2 = sub_1AF5D306C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D292C(uint64_t a1)
{
  v2 = sub_1AF5D33D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1AF5D2968(uint64_t a1)
{
  v2 = sub_1AF5D33D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1AF5D29F4(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(void))
{
  sub_1AF5D3370(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  sub_1AF441150(a1, a1[3]);
  a7();
  sub_1AFDFF3F8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1AF5D2B30(uint64_t a1)
{
  v2 = sub_1AF5D331C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}