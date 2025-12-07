uint64_t sub_29DA2843C(uint64_t a1)
{
  v2 = *v1;
  v37[1] = a1;
  v37[2] = v2;
  v3 = sub_29DA34644();
  v38 = *(v3 - 8);
  v39 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B62C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29DA343B4();
  v37[0] = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v12 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v14 = v37 - v13;
  sub_29DA2B660(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_29DA34094();
  v19 = *(v18 - 8);
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA262E8(v17);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    v22 = sub_29DA2B660;
    v23 = v17;
  }

  else
  {
    (*(v19 + 32))(v21, v17, v18);
    v24 = v1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v25 = type metadata accessor for HighlightAlert(0);
    sub_29DA2B704(&v24[*(v25 + 32)], v8, sub_29DA2B62C);
    v26 = type metadata accessor for HighlightAlertDiagramInfo(0);
    if ((*(*(v26 - 8) + 48))(v8, 1, v26) != 1)
    {
      v35 = *(v26 + 24);
      v36 = v37[0];
      (*(v37[0] + 16))(v12, &v8[v35], v9);
      sub_29DA29E08(v8, type metadata accessor for HighlightAlertDiagramInfo);
      (*(v36 + 32))(v14, v12, v9);
      sub_29DA25A14();
      sub_29DA34114();
      swift_allocObject();
      sub_29DA340F4();
      sub_29DA34104();

      (*(v36 + 8))(v14, v9);
      return (*(v19 + 8))(v21, v18);
    }

    (*(v19 + 8))(v21, v18);
    v22 = sub_29DA2B62C;
    v23 = v8;
  }

  sub_29DA29E08(v23, v22);
  sub_29DA34624();
  v27 = sub_29DA34634();
  v28 = sub_29DA34B84();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v40 = v30;
    *v29 = 136315138;
    v31 = sub_29DA35254();
    v33 = sub_29D9EBB44(v31, v32, &v40);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_29D9BB000, v27, v28, "%s HighlightAlert asked to render diagram without data nor configuration provided in cache", v29, 0xCu);
    sub_29D9C7968(v30);
    MEMORY[0x29ED6E4C0](v30, -1, -1);
    MEMORY[0x29ED6E4C0](v29, -1, -1);
  }

  return (*(v38 + 8))(v5, v39);
}

void *sub_29DA2899C()
{
  v84 = *v0;
  v82 = sub_29DA33CB4();
  MEMORY[0x2A1C7C4A8](v82);
  v81 = &v73 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_29DA336F4();
  v79 = *(v2 - 8);
  v80 = v2;
  v3 = MEMORY[0x2A1C7C4A8](v2);
  v78 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v3);
  v75 = &v73 - v5;
  v6 = sub_29DA33554();
  v76 = *(v6 - 8);
  v77 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2949C(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v73 - v10;
  v12 = sub_29DA34644();
  v85 = *(v12 - 8);
  v13 = MEMORY[0x2A1C7C4A8](v12);
  v15 = &v73 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x2A1C7C4A8](v13);
  v18 = &v73 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v73 - v19;
  sub_29DA262B4(0);
  MEMORY[0x2A1C7C4A8](v21 - 8);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_29DA34014();
  v25 = sub_29DA34454();
  if (v25)
  {
    v74 = v12;
    v83 = v25;
    sub_29DA2B704(v0 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_associatedDataType, v23, sub_29DA262B4);
    v26 = *(v24 - 8);
    if ((*(v26 + 48))(v23, 1, v24) == 1)
    {
      sub_29DA29E08(v23, sub_29DA262B4);
LABEL_13:
      sub_29DA34624();
      v59 = sub_29DA34634();
      v60 = sub_29DA34B84();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v86[0] = v62;
        *v61 = 136315138;
        v63 = sub_29DA35254();
        v65 = sub_29D9EBB44(v63, v64, v86);

        *(v61 + 4) = v65;
        _os_log_impl(&dword_29D9BB000, v59, v60, "%s HighlightAlert not associated with any object types. Displaying notification room", v61, 0xCu);
        sub_29D9C7968(v62);
        MEMORY[0x29ED6E4C0](v62, -1, -1);
        MEMORY[0x29ED6E4C0](v61, -1, -1);
      }

      (*(v85 + 8))(v18, v74);
      sub_29DA33CE4();
      type metadata accessor for HighlightAlert(0);
      sub_29D9CC410(0);
      v66 = sub_29DA34774();
      v67 = [v66 startDate];

      sub_29DA336C4();
      v68 = sub_29DA34774();
      v69 = [v68 endDate];

      sub_29DA336C4();
      sub_29DA33504();
      sub_29DA33524();
      (*(v76 + 8))(v8, v77);
      (*(v79 + 56))(v11, 0, 1, v80);
      v86[0] = MEMORY[0x29EDCA190];
      sub_29DA29E68(&qword_2A17D1210, MEMORY[0x29EDC1CD0], MEMORY[0x29EDC1CE0]);
      sub_29D9C7558(0);
      sub_29DA29E68(&qword_2A17D1220, sub_29D9C7558, MEMORY[0x29EDC9A70]);
      sub_29DA34CD4();
      v70 = sub_29DA33CD4();
      v71 = v83;
      v58 = sub_29DA29500(v83, v70);

      return v58;
    }

    v34 = sub_29DA34454();
    v35 = v24;
    v36 = v34;
    (*(v26 + 8))(v23, v35);
    if (!v36)
    {
      goto LABEL_13;
    }

    sub_29DA2B92C(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DA3B570;
    sub_29D9C79FC(0, &qword_2A17D1740, 0x29EDBAA68);
    *(inited + 32) = MEMORY[0x29ED6D720](*MEMORY[0x29EDBA498]);
    v38 = MEMORY[0x29ED6D720](*MEMORY[0x29EDBA458]);
    *(inited + 40) = v38;
    v39 = v83;
    v86[0] = v83;
    MEMORY[0x2A1C7C4A8](v38);
    *(&v73 - 2) = v86;
    v40 = sub_29DA25160(sub_29DA2B590, (&v73 - 4), inited);
    swift_setDeallocating();
    swift_arrayDestroy();
    if (v40)
    {
      v41 = v39;
    }

    else
    {
      v41 = v36;
    }

    v42 = v41;
    sub_29DA34624();
    v43 = v42;
    v44 = sub_29DA34634();
    v45 = sub_29DA34BA4();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86[0] = v82;
      *v46 = 136315394;
      v47 = sub_29DA35254();
      v49 = sub_29D9EBB44(v47, v48, v86);

      *(v46 + 4) = v49;
      *(v46 + 12) = 2080;
      v50 = [v43 identifier];
      v51 = sub_29DA34854();
      v52 = v36;
      v54 = v53;

      v55 = sub_29D9EBB44(v51, v54, v86);
      v36 = v52;

      *(v46 + 14) = v55;
      _os_log_impl(&dword_29D9BB000, v44, v45, "%s HighlightAlert should use the alert type; creating data room from %s", v46, 0x16u);
      v56 = v82;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v56, -1, -1);
      MEMORY[0x29ED6E4C0](v46, -1, -1);
    }

    (*(v85 + 8))(v20, v74);
    type metadata accessor for HighlightAlert(0);
    v57 = sub_29D9C489C();
    v58 = sub_29DA29500(v43, v57);
  }

  else
  {
    sub_29DA34624();
    v27 = sub_29DA34634();
    v28 = sub_29DA34B84();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v86[0] = v30;
      *v29 = 136315138;
      v31 = sub_29DA35254();
      v33 = sub_29D9EBB44(v31, v32, v86);

      *(v29 + 4) = v33;
      _os_log_impl(&dword_29D9BB000, v27, v28, "%s HighlightAlert associated with invalid object type. Not doing anything", v29, 0xCu);
      sub_29D9C7968(v30);
      MEMORY[0x29ED6E4C0](v30, -1, -1);
      MEMORY[0x29ED6E4C0](v29, -1, -1);
    }

    (*(v85 + 8))(v15, v12);
    return 0;
  }

  return v58;
}

void sub_29DA2949C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void *sub_29DA29500(uint64_t a1, void *a2)
{
  v3 = v2;
  v47 = a1;
  v42 = *v2;
  v46 = sub_29DA34644();
  v45 = *(v46 - 8);
  MEMORY[0x2A1C7C4A8](v46);
  v51 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x29EDC9C68];
  sub_29DA2949C(0, &qword_2A1A2D330, MEMORY[0x29EDB9C08], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v7 - 8);
  v44 = &v42 - v8;
  sub_29DA2949C(0, &qword_2A17D1748, MEMORY[0x29EDC2B20], v6);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v43 = &v42 - v10;
  sub_29DA2B5F8(0);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_29DA33E04();
  v14 = *(v50 - 8);
  MEMORY[0x2A1C7C4A8](v50);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2949C(0, &qword_2A17D1758, MEMORY[0x29EDB9B18], v6);
  MEMORY[0x2A1C7C4A8](v17 - 8);
  v19 = &v42 - v18;
  v20 = sub_29DA33DC4();
  v48 = *(v20 - 8);
  v49 = v20;
  MEMORY[0x2A1C7C4A8](v20);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA33DB4();
  v23 = sub_29DA335E4();
  (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
  v24 = sub_29DA337D4();
  swift_allocObject();
  v25 = sub_29DA337C4();
  v54 = v24;
  v55 = MEMORY[0x29EDC3640];
  v53 = v25;
  v26 = *(v3 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_healthStore);

  v27 = v26;
  v28 = [v27 profileIdentifier];
  v29 = sub_29DA33CF4();
  (*(*(v29 - 8) + 56))(v13, 1, 1, v29);
  MEMORY[0x29ED6C870](v28, v13);

  v30 = v16;
  sub_29DA29E08(v13, sub_29DA2B5F8);
  sub_29D9FA5EC(v3 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_pinnedContentManager, v52);
  v31 = a2;
  sub_29DA33DF4();
  v32 = sub_29DA33DA4();
  v33 = v43;
  v34 = v44;
  sub_29DA33EE4();
  if (swift_dynamicCastClass())
  {
    v35 = v32;
    v47 = v14;
    v36 = v35;
    sub_29DA33ED4();
    type metadata accessor for HighlightAlert(0);
    sub_29D9CC410(0);
    v37 = sub_29DA34774();
    v38 = [v37 UUID];

    sub_29DA33744();
    v39 = sub_29DA33754();
    (*(*(v39 - 8) + 56))(v34, 0, 1, v39);
    sub_29DA33EA4();
    v40 = sub_29DA33EB4();
    (*(*(v40 - 8) + 56))(v33, 0, 1, v40);
    sub_29DA33EC4();

    v14 = v47;
  }

  else
  {
  }

  (*(v14 + 8))(v30, v50);
  (*(v48 + 8))(v22, v49);
  return v32;
}

uint64_t sub_29DA29E08(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29DA29E68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DA29EB0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_29DA051EC(0);
  result = sub_29DA34F94();
  v7 = result;
  if (*(v5 + 16))
  {
    v32 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      result = sub_29DA34CA4();
      v24 = -1 << *(v7 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v14 + 8 * v26);
          if (v30 != -1)
          {
            v15 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_29DA2A10C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_29DA34154();
  v5 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA340E4();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_29DA2B78C(0, &qword_2A1A2D430, MEMORY[0x29EDC9E70]);
  v47 = v4;
  result = sub_29DA34F94();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_29DA29E68(&qword_2A1A2D4F0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4930]);
      result = sub_29DA347D4();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_29DA2A5C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v45 = sub_29DA33964();
  v5 = *(v45 - 8);
  MEMORY[0x2A1C7C4A8](v45);
  v44 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  sub_29DA2B97C(0);
  v42 = v4;
  result = sub_29DA34F94();
  v9 = result;
  if (*(v7 + 16))
  {
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v38 = v2;
    v39 = (v5 + 16);
    v40 = v7;
    v41 = v5;
    v43 = (v5 + 32);
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(v7 + 56);
      v24 = (*(v7 + 48) + 16 * v22);
      v26 = *v24;
      v25 = v24[1];
      v27 = *(v41 + 72);
      v28 = v23 + v27 * v22;
      if (v42)
      {
        (*v43)(v44, v28, v45);
      }

      else
      {
        (*v39)(v44, v28, v45);
      }

      sub_29DA351B4();
      sub_29DA348D4();
      result = sub_29DA351E4();
      v29 = -1 << *(v9 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v16 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v16 + 8 * v31);
          if (v35 != -1)
          {
            v17 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v30) & ~*(v16 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v26;
      v18[1] = v25;
      result = (*v43)(*(v9 + 56) + v27 * v17, v44, v45);
      ++*(v9 + 16);
      v7 = v40;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v36 = 1 << *(v7 + 32);
    v3 = v38;
    if (v36 >= 64)
    {
      bzero(v11, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v36;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_29DA2A938(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_29DA340E4();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_29DA1EEE0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_29DA2AFB4();
      goto LABEL_7;
    }

    sub_29DA2A10C(v17, a3 & 1);
    v28 = sub_29DA1EEE0(a2);
    if ((v18 & 1) == (v29 & 1))
    {
      v14 = v28;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      return sub_29DA2ACBC(v14, v11, a1, v20);
    }

LABEL_15:
    result = sub_29DA35144();
    __break(1u);
    return result;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v21 = v20[7];
  v22 = sub_29DA34154();
  v23 = *(v22 - 8);
  v24 = *(v23 + 40);
  v25 = v22;
  v26 = v21 + *(v23 + 72) * v14;

  return v24(v26, a1, v25);
}

uint64_t sub_29DA2AB3C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_29DA1EDE0(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_29DA2B318();
      goto LABEL_7;
    }

    sub_29DA2A5C4(v15, a4 & 1);
    v26 = sub_29DA1EDE0(a2, a3);
    if ((v16 & 1) == (v27 & 1))
    {
      v12 = v26;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_29DA35144();
    __break(1u);
    return result;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_29DA33964();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    return v22(v24, a1, v23);
  }

LABEL_13:
  sub_29DA2ADB0(v12, a2, a3, a1, v18);
}

uint64_t sub_29DA2ACBC(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_29DA340E4();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = sub_29DA34154();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t sub_29DA2ADB0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_29DA33964();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

id sub_29DA2AE60()
{
  v1 = v0;
  sub_29DA051EC(0);
  v2 = *v0;
  v3 = sub_29DA34F84();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
        result = v19;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_29DA2AFB4()
{
  v1 = v0;
  v41 = sub_29DA34154();
  v44 = *(v41 - 8);
  MEMORY[0x2A1C7C4A8](v41);
  v40 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_29DA340E4();
  v43 = *(v39 - 8);
  MEMORY[0x2A1C7C4A8](v39);
  v38 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B78C(0, &qword_2A1A2D430, MEMORY[0x29EDC9E70]);
  v4 = *v0;
  v5 = sub_29DA34F84();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v42 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v43 + 16;
    v36 = v15;
    v33 = v43 + 32;
    v34 = v44 + 16;
    v32 = v44 + 32;
    v37 = v4;
    v17 = v38;
    v16 = v39;
    if (v14)
    {
      do
      {
        v18 = __clz(__rbit64(v14));
        v45 = (v14 - 1) & v14;
LABEL_14:
        v21 = v18 | (v10 << 6);
        v22 = v43;
        v23 = *(v43 + 72) * v21;
        (*(v43 + 16))(v17, *(v4 + 48) + v23, v16);
        v24 = v44;
        v25 = *(v44 + 72) * v21;
        v26 = v40;
        v27 = v41;
        (*(v44 + 16))(v40, *(v4 + 56) + v25, v41);
        v28 = v42;
        (*(v22 + 32))(*(v42 + 48) + v23, v17, v16);
        v29 = *(v28 + 56);
        v4 = v37;
        result = (*(v24 + 32))(v29 + v25, v26, v27);
        v15 = v36;
        v14 = v45;
      }

      while (v45);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v42;
        goto LABEL_18;
      }

      v20 = *(v31 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v45 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_29DA2B318()
{
  v1 = v0;
  v38 = sub_29DA33964();
  v40 = *(v38 - 8);
  MEMORY[0x2A1C7C4A8](v38);
  v37 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA2B97C(0);
  v3 = *v0;
  v4 = sub_29DA34F84();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    result = (v4 + 64);
    v7 = v3 + 64;
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    if (v5 != v3 || result >= v3 + 64 + 8 * v8)
    {
      result = memmove(result, (v3 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v3 + 16);
    v39 = v5;
    *(v5 + 16) = v11;
    v12 = 1 << *(v3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v3 + 64);
    v15 = (v12 + 63) >> 6;
    v34 = v40 + 32;
    v35 = v40 + 16;
    v36 = v3;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v41 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = *(v3 + 56);
        v22 = (*(v3 + 48) + 16 * v19);
        v23 = *v22;
        v24 = v22[1];
        v25 = v40;
        v26 = *(v40 + 72) * v19;
        v27 = v37;
        v28 = v38;
        (*(v40 + 16))(v37, v21 + v26, v38);
        v29 = v39;
        v30 = (*(v39 + 48) + v20);
        *v30 = v23;
        v30[1] = v24;
        v31 = *(v29 + 56) + v26;
        v3 = v36;
        (*(v25 + 32))(v31, v27, v28);

        v14 = v41;
      }

      while (v41);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v33;
        v5 = v39;
        goto LABEL_21;
      }

      v18 = *(v7 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v41 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }

  return result;
}

void sub_29DA2B694(uint64_t a1)
{
  if (!qword_2A1A2D4E0)
  {
    sub_29DA340E4();
    sub_29DA34154();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2D4E0);
    }
  }
}

uint64_t sub_29DA2B704(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29DA2B78C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DA340E4();
    v7 = sub_29DA34154();
    v8 = sub_29DA29E68(&qword_2A1A2D4F0, MEMORY[0x29EDC4928], MEMORY[0x29EDC4930]);
    v9 = a3(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_29DA2B840(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29DA2B8A8(uint64_t a1)
{
  sub_29DA2B92C(0, &qword_2A1A2DA78, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DA2B92C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_29DA2B97C(uint64_t a1)
{
  if (!qword_2A1A2CA78)
  {
    sub_29DA33964();
    v1 = sub_29DA34FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A2CA78);
    }
  }
}

uint64_t sub_29DA2B9E4()
{
  result = sub_29DA34824();
  qword_2A1A31338 = result;
  return result;
}

uint64_t sub_29DA2BA1C()
{
  result = sub_29DA34824();
  qword_2A1A312D0 = result;
  return result;
}

uint64_t sub_29DA2BA54()
{
  result = sub_29DA34824();
  qword_2A1A31330 = result;
  return result;
}

uint64_t sub_29DA2BAA4(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_29D9D5748(isUniquelyReferenced_nonNull_native, v12, 1, v3);
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
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_29DA33964();
  if (v8 < v2)
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

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_29DA2BBD0(unint64_t a1, uint64_t (*a2)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v5 = sub_29DA34D34();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v2 >> 62))
  {
    v6 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v7 = __OFADD__(v6, v5);
    result = v6 + v5;
    if (!v7)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = sub_29DA34D34();
  v7 = __OFADD__(v15, v5);
  result = v15 + v5;
  if (v7)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_29DA313A8(result, 1);
  v9 = *v2;
  v10 = *v2 & 0xFFFFFFFFFFFFFF8;
  a2(v10 + 8 * *(v10 + 0x10) + 32, (*(v10 + 0x18) >> 1) - *(v10 + 0x10), a1);
  v12 = v11;

  if (v12 < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v12 < 1)
  {
LABEL_9:
    *v2 = v9;
    return result;
  }

  v13 = *(v10 + 16);
  v7 = __OFADD__(v13, v12);
  v14 = v13 + v12;
  if (!v7)
  {
    *(v10 + 16) = v14;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_29DA2BCC8()
{
  v1 = sub_29DA34644();
  v49 = *(v1 - 8);
  v50 = v1;
  v2 = MEMORY[0x2A1C7C4A8](v1);
  v4 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v2);
  v44 = &v44 - v5;
  sub_29DA31204(0, &qword_2A1A2DC70, type metadata accessor for HighlightAlert, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v44 - v7;
  v9 = type metadata accessor for HighlightAlert(0);
  v48 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v45 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v46 = &v44 - v12;
  v47 = v0;
  v13 = &v0[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context];
  result = swift_beginAccess();
  v15 = *(v13 + 3);
  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = sub_29D9C706C(v13, *(v13 + 3));
  v17 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v16);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v19);
  v20 = sub_29DA33E64();
  v22 = v21;
  (*(v17 + 8))(v19, v15);
  if (v22 >> 60 != 15)
  {
    sub_29DA33474();
    swift_allocObject();
    sub_29DA33464();
    sub_29DA31DA4(&qword_2A1A2DC88, 255, type metadata accessor for HighlightAlert, &unk_29DA3879C);
    sub_29DA33454();
    v26 = v20;

    (*(v48 + 56))(v8, 0, 1, v9);
    v27 = v8;
    v28 = v46;
    sub_29D9CFC9C(v27, v46);
    result = sub_29DA31124(v28, v45);
    v29 = *(v13 + 3);
    if (v29)
    {
      v30 = v22;
      v31 = sub_29D9C706C(v13, *(v13 + 3));
      v32 = *(v29 - 8);
      MEMORY[0x2A1C7C4A8](v31);
      v34 = &v44 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v32 + 16))(v34);
      v35 = sub_29DA33E34();
      result = (*(v32 + 8))(v34, v29);
      v36 = *(v13 + 3);
      if (v36)
      {
        v37 = sub_29D9C706C(v13, *(v13 + 3));
        v38 = *(v36 - 8);
        MEMORY[0x2A1C7C4A8](v37);
        v40 = &v44 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v38 + 16))(v40);
        sub_29DA33E54();
        (*(v38 + 8))(v40, v36);
        type metadata accessor for HighlightAlertViewModel(0);
        swift_allocObject();
        v41 = sub_29DA25C58(v45, v35, v51);
        v42 = v47;
        v43 = *&v47[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel];
        *&v47[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel] = v41;
        swift_retain_n();
        if ([v42 isViewLoaded])
        {
          sub_29DA2E0A8(v43);

          sub_29D9CFBBC(v26, v30);
          return sub_29D9CFD00(v46);
        }

        else
        {
          sub_29D9CFD00(v46);

          return sub_29D9CFBBC(v26, v30);
        }
      }

LABEL_14:
      __break(1u);
      return result;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  sub_29DA34624();
  v23 = sub_29DA34634();
  v24 = sub_29DA34B84();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_29D9BB000, v23, v24, "HighlightAlert context updated without expected userData.", v25, 2u);
    MEMORY[0x29ED6E4C0](v25, -1, -1);
  }

  return (*(v49 + 8))(v4, v50);
}

id sub_29DA2C564()
{
  v1 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView;
  v2 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView);
  }

  else
  {
    sub_29DA34174();
    sub_29DA31DA4(&qword_2A1A2D520, v4, type metadata accessor for HighlightAlertsTileViewController, &unk_29DA3BCF4);
    swift_unknownObjectRetain();
    v5 = v0;
    v6 = sub_29DA34164();
    v7 = *(v0 + v1);
    *(v5 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_29DA2C62C()
{
  v1 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent;
  v2 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent);
  }

  else
  {
    v4 = v0;
    sub_29DA33C74();
    v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v6 = sub_29DA33C34();
    swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_29DA33DD4();

    v7 = *(v4 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

void sub_29DA2C714(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_29DA2EC1C();
  }
}

uint64_t sub_29DA2C768()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA34624();
  v5 = v0;
  v6 = sub_29DA34634();
  v7 = sub_29DA34B64();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v21 = v20;
    *v8 = 136446210;
    v9 = v5;
    v10 = [v9 description];
    v11 = sub_29DA34854();
    v19 = v1;
    v13 = v12;

    v14 = sub_29D9EBB44(v11, v13, &v21);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_29D9BB000, v6, v7, "%{public}s: viewDidLoad", v8, 0xCu);
    v15 = v20;
    sub_29D9C7968(v20);
    MEMORY[0x29ED6E4C0](v15, -1, -1);
    MEMORY[0x29ED6E4C0](v8, -1, -1);

    (*(v2 + 8))(v4, v19);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  v16 = type metadata accessor for HighlightAlertsTileViewController();
  v22.receiver = v5;
  v22.super_class = v16;
  objc_msgSendSuper2(&v22, sel_viewDidLoad);
  sub_29DA344E4();
  sub_29DA2CC88();
  return sub_29DA2E0A8(0);
}

id sub_29DA2CA4C(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertsTileViewController();
  sub_29DA344F4();
  v4.receiver = v1;
  v4.super_class = v2;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

id sub_29DA2CC88()
{
  v1 = v0;
  sub_29DA31D4C(0, &qword_2A1A2E000, MEMORY[0x29EDCA170] + 8, MEMORY[0x29EDC9E90]);
  v54 = v2;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_29DA3B570;
  *(inited + 32) = sub_29DA2C62C();
  *(inited + 40) = sub_29DA2C564();
  if ((inited & 0xC000000000000001) != 0)
  {
    goto LABEL_22;
  }

  if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_21;
  }

  for (i = *(inited + 32); ; i = MEMORY[0x29ED6D970](0, inited))
  {
    v5 = i;
    sub_29DA34A14();
    sub_29DA34A04();
    sub_29DA349B4();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    [v5 setTranslatesAutoresizingMaskIntoConstraints_];
    result = [v0 view];
    if (!result)
    {
      goto LABEL_24;
    }

    v7 = result;
    [result addSubview_];

    if ((inited & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10) >= 2uLL)
    {
      v8 = *(inited + 40);
      goto LABEL_10;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v8 = MEMORY[0x29ED6D970](1, inited);
LABEL_10:
  v9 = v8;
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  [v9 setTranslatesAutoresizingMaskIntoConstraints_];
  result = [v0 view];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v10 = result;
  [result addSubview_];

  swift_setDeallocating();
  swift_arrayDestroy();
  v11 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent;
  v12 = [*&v0[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent] topAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = result;
  v14 = [result topAnchor];

  v15 = [v12 constraintEqualToAnchor:v14 constant:0.0];
  [v15 setActive_];

  v16 = [*&v1[v11] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v17 = result;
  v18 = [result leadingAnchor];

  v19 = [v16 constraintEqualToAnchor:v18 constant:0.0];
  [v19 setActive_];

  v20 = [*&v1[v11] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = result;
  v22 = [result trailingAnchor];

  v23 = [v20 constraintEqualToAnchor:v22 constant:0.0];
  [v23 setActive_];

  v24 = [*&v1[v11] bottomAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v25 = result;
  v26 = [result bottomAnchor];

  v27 = [v24 constraintEqualToAnchor:v26 constant:0.0];
  v28 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint];
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint] = v27;

  v29 = [*&v1[v11] bottomAnchor];
  v30 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView;
  v31 = [*&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView] topAnchor];
  v32 = [v29 constraintEqualToAnchor:v31 constant:0.0];

  v33 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint];
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint] = v32;

  v34 = [*&v1[v30] widthAnchor];
  v35 = [*&v1[v30] heightAnchor];
  v36 = [v34 constraintEqualToAnchor:v35 multiplier:2.4];

  type metadata accessor for UILayoutPriority(0);
  sub_29DA31DA4(&qword_2A1A2D470, 255, type metadata accessor for UILayoutPriority, MEMORY[0x29EDC7890]);
  sub_29DA34654();
  LODWORD(v37) = v55;
  [v36 setPriority_];
  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_29DA3BBE0;
  v39 = [*&v1[v30] leadingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v40 = result;
  v41 = [result leadingAnchor];

  v42 = [v39 constraintEqualToAnchor:v41 constant:16.0];
  *(v38 + 32) = v42;
  v43 = [*&v1[v30] trailingAnchor];
  result = [v1 view];
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v44 = result;
  v45 = [result trailingAnchor];

  v46 = [v43 constraintEqualToAnchor:v45 constant:-16.0];
  *(v38 + 40) = v46;
  *(v38 + 48) = v36;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_29DA3B8B0;
  v48 = *&v1[v30];
  v49 = v36;
  v50 = [v48 bottomAnchor];
  result = [v1 view];
  if (result)
  {
    v51 = result;
    v52 = [result bottomAnchor];

    v53 = [v50 constraintEqualToAnchor:v52 constant:-16.0];
    *(v47 + 32) = v53;
    sub_29DA2BBD0(v38, sub_29DA31610);

    *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints] = v47;
  }

LABEL_31:
  __break(1u);
  return result;
}

void sub_29DA2D4C0(char a1)
{
  v3 = sub_29DA34644();
  v114 = *(v3 - 8);
  v115 = v3;
  v4 = MEMORY[0x2A1C7C4A8](v3);
  v6 = &v106 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x2A1C7C4A8](v4);
  v9 = (&v106 - v8);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v106 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v106 - v13;
  v15 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints;
  v16 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints];
  if (!v16)
  {
    __break(1u);
    goto LABEL_55;
  }

  if (v16 >> 62)
  {
    if (sub_29DA34D34())
    {
      goto LABEL_4;
    }

LABEL_9:
    v116 = 0;
    goto LABEL_10;
  }

  if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v16 & 0xC000000000000001) != 0)
  {

    v17 = MEMORY[0x29ED6D970](0, v16);
  }

  else
  {
    if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_53;
    }

    v17 = *(v16 + 32);
  }

  v18 = [v17 isActive];

  v116 = v18;
LABEL_10:
  v19 = *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel];

  v20 = [v1 traitCollection];
  v21 = sub_29DA31904(v19);

  v22 = a1;
  if ((a1 & 1) != 0 || v116 != v21)
  {
    v110 = v12;
    v111 = v9;
    v108 = v15;
    sub_29DA34614();
    v109 = v1;
    v23 = v1;
    v24 = sub_29DA34634();
    v25 = sub_29DA34B74();
    v113 = v23;

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v107 = swift_slowAlloc();
      v119 = v107;
      *v26 = 136447234;
      v27 = v113;
      v112 = v6;
      v28 = v27;
      v29 = [v27 description];
      v30 = sub_29DA34854();
      v31 = v22;
      v33 = v32;

      v34 = v30;
      v35 = v114;
      v36 = v115;
      v37 = sub_29D9EBB44(v34, v33, &v119);
      v22 = v31;

      *(v26 + 4) = v37;
      v6 = v112;
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v119);
      *(v26 + 22) = 2050;
      *(v26 + 24) = v21;
      *(v26 + 32) = 2050;
      *(v26 + 34) = v116;
      *(v26 + 42) = 1026;
      *(v26 + 44) = v31 & 1;
      _os_log_impl(&dword_29D9BB000, v24, v25, "%{public}s: %{public}s updating constraints, preferred options: %{public}ld, active options: %{public}ld (forced: %{BOOL,public}d)", v26, 0x30u);
      v38 = v107;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v38, -1, -1);
      MEMORY[0x29ED6E4C0](v26, -1, -1);

      v9 = *(v35 + 8);
      (v9)(v14, v36);
    }

    else
    {

      v9 = *(v114 + 8);
      (v9)(v14, v115);
    }

    v14 = MEMORY[0x29EDCA190];
    v118 = MEMORY[0x29EDCA190];
    v119 = MEMORY[0x29EDCA190];
    if ((v22 & 1) == 0)
    {
      v39 = MEMORY[0x29EDCA190];
      if ((v21 & 1) == v116)
      {
LABEL_29:
        if (!(v39 >> 62))
        {
          v80 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
          goto LABEL_31;
        }

LABEL_53:
        v80 = sub_29DA34D34();
LABEL_31:
        if (v80)
        {
          v81 = objc_opt_self();
          sub_29D9C79FC(0, &qword_2A1A2D458, 0x29EDBA008);
          v82 = sub_29DA34944();

          [v81 deactivateConstraints_];

          if (!(v14 >> 62))
          {
            goto LABEL_33;
          }
        }

        else
        {

          if (!(v14 >> 62))
          {
LABEL_33:
            if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
LABEL_34:
              v83 = objc_opt_self();
              sub_29D9C79FC(0, &qword_2A1A2D458, 0x29EDBA008);
              v84 = sub_29DA34944();

              [v83 activateConstraints_];

              goto LABEL_38;
            }

LABEL_37:

LABEL_38:
            sub_29DA34614();
            v85 = v113;
            v86 = sub_29DA34634();
            v87 = sub_29DA34B74();

            if (os_log_type_enabled(v86, v87))
            {
              v88 = swift_slowAlloc();
              v89 = swift_slowAlloc();
              v117 = v89;
              *v88 = 136446466;
              v90 = v85;
              v91 = v9;
              v92 = [v90 description];
              v93 = v6;
              v94 = sub_29DA34854();
              v96 = v95;

              v97 = sub_29D9EBB44(v94, v96, &v117);

              *(v88 + 4) = v97;
              *(v88 + 12) = 2082;
              *(v88 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v117);
              _os_log_impl(&dword_29D9BB000, v86, v87, "%{public}s: %{public}s finished updating constraints.", v88, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x29ED6E4C0](v89, -1, -1);
              MEMORY[0x29ED6E4C0](v88, -1, -1);

              (v91)(v93, v115);
            }

            else
            {

              (v9)(v6, v115);
            }

            return;
          }
        }

        if (sub_29DA34D34())
        {
          goto LABEL_34;
        }

        goto LABEL_37;
      }
    }

    if (v21)
    {
      v112 = v6;
      v57 = v110;
      sub_29DA34614();
      v58 = v113;
      v59 = sub_29DA34634();
      v60 = sub_29DA34B74();

      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v111 = v59;
        v62 = v61;
        v116 = swift_slowAlloc();
        v117 = v116;
        *v62 = 136446466;
        v63 = v58;
        v64 = [v63 description];
        v65 = sub_29DA34854();
        LODWORD(v107) = v60;
        v66 = v65;
        v68 = v67;

        v69 = v115;
        v70 = sub_29D9EBB44(v66, v68, &v117);

        *(v62 + 4) = v70;
        *(v62 + 12) = 2082;
        *(v62 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v117);
        v71 = v111;
        _os_log_impl(&dword_29D9BB000, v111, v107, "%{public}s: %{public}s ...adding diagram", v62, 0x16u);
        v72 = v116;
        swift_arrayDestroy();
        MEMORY[0x29ED6E4C0](v72, -1, -1);
        MEMORY[0x29ED6E4C0](v62, -1, -1);

        v73 = v57;
        v74 = v69;
      }

      else
      {

        v74 = v115;
        v73 = v57;
      }

      (v9)(v73, v74);
      v98 = [v58 view];
      if (v98)
      {
        v99 = v98;
        v100 = sub_29DA2C564();
        [v99 addSubview_];

        if (*&v109[v108])
        {

          sub_29DA2BBD0(v101, sub_29DA31610);
          v102 = *&v58[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint];
          if (v102)
          {
            v103 = v102;
            MEMORY[0x29ED6D4A0]();
            if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_29DA34974();
            }

            sub_29DA34994();
            v104 = *&v58[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint];
            if (v104)
            {
              v14 = v119;
              v105 = v104;
              MEMORY[0x29ED6D4A0]();
              v6 = v112;
              if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                goto LABEL_28;
              }

              goto LABEL_50;
            }

LABEL_60:
            __break(1u);
            return;
          }

LABEL_59:
          __break(1u);
          goto LABEL_60;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      goto LABEL_56;
    }

    v116 = v9;
    v40 = v111;
    sub_29DA34614();
    v41 = v113;
    v42 = sub_29DA34634();
    v43 = sub_29DA34B74();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      LODWORD(v110) = v43;
      v45 = v44;
      v112 = swift_slowAlloc();
      v117 = v112;
      *v45 = 136446466;
      v46 = v41;
      v47 = v6;
      v48 = [v46 description];
      v49 = sub_29DA34854();
      v51 = v50;

      v6 = v47;
      v52 = sub_29D9EBB44(v49, v51, &v117);
      v53 = v115;

      *(v45 + 4) = v52;
      *(v45 + 12) = 2082;
      *(v45 + 14) = sub_29D9EBB44(0xD000000000000034, 0x800000029DA38540, &v117);
      _os_log_impl(&dword_29D9BB000, v42, v110, "%{public}s: %{public}s ...removing diagram", v45, 0x16u);
      v54 = v112;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v54, -1, -1);
      MEMORY[0x29ED6E4C0](v45, -1, -1);

      v55 = v40;
      v56 = v53;
    }

    else
    {

      v56 = v115;
      v55 = v40;
    }

    (v116)(v55, v56);
    v75 = sub_29DA2C564();
    [v75 removeFromSuperview];

    v76 = *&v41[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint];
    if (v76)
    {
      v77 = v76;
      MEMORY[0x29ED6D4A0]();
      if (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_29DA34974();
      }

      sub_29DA34994();
      v78 = *&v41[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint];
      if (v78)
      {
        v14 = v119;
        v79 = v78;
        MEMORY[0x29ED6D4A0]();
        v9 = v116;
        if (*((v118 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v118 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
LABEL_28:
          sub_29DA34994();
          v39 = v118;
          goto LABEL_29;
        }

LABEL_50:
        sub_29DA34974();
        goto LABEL_28;
      }

      goto LABEL_57;
    }

LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }
}

uint64_t sub_29DA2E0A8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29DA34644();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29DA33C54();
  v9 = MEMORY[0x2A1C7C4A8](v8);
  v12 = *(v2 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v12)
  {
    v35 = v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    v36 = v11;
    v37 = v9;
    v38 = a1;

    v34 = sub_29DA2C62C();
    sub_29DA25288();
    v33[4] = v13;
    v14 = sub_29DA25B00();
    sub_29D9C99D8();
    sub_29D9CA1C8();
    sub_29DA340D4();
    *(&v40 + 1) = type metadata accessor for HighlightAlertTextSupport(0);
    *&v39 = v14;

    v15 = sub_29DA340B4();
    v33[2] = v16;
    v33[3] = v15;

    v17 = MEMORY[0x29EDCA178];
    v18 = MEMORY[0x29EDC9C68];
    sub_29DA318A4(&v39, &qword_2A1A2DA78, MEMORY[0x29EDCA178] + 8, MEMORY[0x29EDC9C68], sub_29DA31D4C);
    v19 = sub_29DA2591C();
    v33[0] = v20;
    v33[1] = v19;
    v39 = 0u;
    v40 = 0u;
    sub_29DA340C4();
    sub_29DA318A4(&v39, &qword_2A1A2DA78, v17 + 8, v18, sub_29DA31D4C);
    sub_29DA31D4C(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_29DA3A6C0;
    strcpy((v21 + 32), "HighlightAlert");
    *(v21 + 47) = -18;
    v22 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v23 = (v12 + v22 + *(type metadata accessor for HighlightAlert(0) + 28));
    v24 = v23[1];
    if (v24)
    {
      v25 = *v23;
      v26 = v24;
    }

    else
    {
      v25 = 0;
      v26 = 0xE000000000000000;
    }

    *(v21 + 48) = v25;
    *(v21 + 56) = v26;
    *&v39 = v21;
    sub_29DA31D4C(0, &qword_2A1A2DB48, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
    sub_29D9D5E10();

    sub_29DA347E4();

    [objc_opt_self() clearColor];
    v31 = v35;
    sub_29DA33C44();
    v32 = v34;
    sub_29DA33C64();

    (*(v36 + 8))(v31, v37);
    sub_29DA2D4C0(v38 == 0);
    sub_29DA2E834();
    sub_29DA2F278();
    sub_29DA2E5A0();
  }

  else
  {
    sub_29DA34624();
    v27 = sub_29DA34634();
    v28 = sub_29DA34B84();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_29D9BB000, v27, v28, "HighlightAlert view updated without viewModel set; cannot update view.", v29, 2u);
      MEMORY[0x29ED6E4C0](v29, -1, -1);
    }

    return (*(v5 + 8))(v7, v4);
  }
}

void sub_29DA2E5A0()
{
  v1 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v1 && (v2 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert, v3 = (v1 + v2 + *(type metadata accessor for HighlightAlert(0) + 28)), (v4 = v3[1]) != 0))
  {
    v5 = *v3;
    v6 = MEMORY[0x29EDC99B0];
    sub_29DA31D4C(0, &qword_2A1A2DA88, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9E90]);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_29DA3BBF0;
    *(v7 + 32) = sub_29DA34854();
    *(v7 + 40) = v8;
    strcpy((v7 + 48), "HighlightAlert");
    *(v7 + 63) = -18;
    *(v7 + 64) = v5;
    *(v7 + 72) = v4;
    sub_29DA31D4C(0, &qword_2A1A2DB48, v6, MEMORY[0x29EDC9A40]);
    sub_29D9D5E10();

    v9 = sub_29DA347E4();
    v11 = v10;

    v12 = (v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
    swift_beginAccess();
    *v12 = v9;
    v12[1] = v11;

    v13 = sub_29DA2C564();
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_29DA3A6C0;
    *(v14 + 32) = v9;
    *(v14 + 40) = v11;
    *(v14 + 48) = 0x6D617267616944;
    *(v14 + 56) = 0xE700000000000000;
    v17 = v14;
    sub_29DA347E4();

    v15 = sub_29DA34824();

    [v13 setAccessibilityIdentifier_];
  }

  else
  {
    v16 = (v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
    swift_beginAccess();
    *v16 = 0;
    v16[1] = 0;

    v15 = sub_29DA2C564();
    [v15 setAccessibilityIdentifier_];
  }
}

uint64_t sub_29DA2E834()
{
  v1 = sub_29DA34644();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA31204(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v17 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
    v10 = type metadata accessor for HighlightAlert(0);
    sub_29DA31830(v8 + v9 + *(v10 + 32), v7, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
    v11 = type metadata accessor for HighlightAlertDiagramInfo(0);
    if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
    {
      return sub_29DA318A4(v7, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
    }

    else
    {

      sub_29DA318A4(v7, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
      v16 = sub_29DA2C564();
      sub_29DA2843C(v16);
    }
  }

  else
  {
    sub_29DA34624();
    v13 = sub_29DA34634();
    v14 = sub_29DA34B84();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_29D9BB000, v13, v14, "HighlightAlert diagram refreshed without viewModel set; cannot update diagram.", v15, 2u);
      MEMORY[0x29ED6E4C0](v15, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_29DA2EC1C()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29DA33C84();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA31204(0, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v37 - v10;
  v12 = sub_29DA33D64();
  v13 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel))
  {

    v16 = sub_29DA2899C();
    if (v16)
    {
      v17 = v16;
      MEMORY[0x29ED6D760]();
      v18 = *(v13 + 48);
      if (v18(v11, 1, v12) == 1)
      {
        (*(v13 + 104))(v15, *MEMORY[0x29EDC21A0], v12);
        if (v18(v11, 1, v12) != 1)
        {
          sub_29DA318A4(v11, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68], sub_29DA31204);
        }
      }

      else
      {
        (*(v13 + 32))(v15, v11, v12);
      }

      sub_29DA33D54();

      (*(v13 + 8))(v15, v12);
    }

    v23 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
    swift_beginAccess();
    result = sub_29DA31830(v1 + v23, &v40, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
    v24 = *(&v41 + 1);
    if (*(&v41 + 1))
    {
      v25 = sub_29D9C706C(&v40, *(&v41 + 1));
      v26 = *(v24 - 8);
      MEMORY[0x2A1C7C4A8](v25);
      v28 = &v37 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v28);
      v29 = sub_29DA33E34();
      (*(v26 + 8))(v28, v24);
      v30 = [v29 profileIdentifier];

      [v30 type];
      v31 = HKStringFromProfileType();
      sub_29D9C7968(&v40);
      v32 = sub_29DA34854();
      v34 = v33;

      *&v40 = v32;
      *(&v40 + 1) = v34;
      MEMORY[0x29ED6D450](0x7472656C4120, 0xE600000000000000);
      sub_29DA33CA4();
      v36 = v38;
      v35 = v39;
      (*(v38 + 104))(v8, *MEMORY[0x29EDC1B98], v39);
      v42 = 0;
      v40 = 0u;
      v41 = 0u;
      sub_29DA33C94();

      sub_29DA318A4(&v40, &unk_2A17D1778, &unk_2A17D1780, MEMORY[0x29EDC3A40], sub_29DA317D8);
      return (*(v36 + 8))(v8, v35);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    sub_29DA34624();
    v19 = sub_29DA34634();
    v20 = sub_29DA34B84();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_29D9BB000, v19, v20, "HighlightAlert handled tap without viewModel set; cannot push destination controller", v21, 2u);
      MEMORY[0x29ED6E4C0](v21, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }

  return result;
}

void sub_29DA2F278()
{
  v1 = v0;
  v2 = sub_29DA34644();
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x2A1C7C4A8](v2);
  v54 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29DA33864();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v57 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v56 = &v48 - v8;
  v9 = sub_29DA33754();
  v52 = *(v9 - 8);
  v53 = v9;
  MEMORY[0x2A1C7C4A8](v9);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  sub_29DA31830(&v0[v12], v58, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
  v13 = v59;
  if (!v59)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return;
  }

  v14 = sub_29D9C706C(v58, v59);
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17);
  v49 = sub_29DA33E44();
  v19 = v18;
  (*(v15 + 8))(v17, v13);
  sub_29D9C7968(v58);
  if (*&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel])
  {
    type metadata accessor for HighlightAlert(0);
    sub_29DA31268(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);

    v20 = sub_29DA34774();
    v21 = [v20 UUID];

    sub_29DA33744();
    v48 = sub_29DA33714();
    v55 = v22;

    (*(v52 + 8))(v11, v53);
  }

  else
  {
    v55 = 0xE700000000000000;
    v48 = 0x6E776F6E6B6E75;
  }

  v23 = v19;
  sub_29DA31830(&v1[v12], v58, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
  v24 = v59;
  if (!v59)
  {
    goto LABEL_14;
  }

  v25 = sub_29D9C706C(v58, v59);
  v26 = *(v24 - 8);
  MEMORY[0x2A1C7C4A8](v25);
  v28 = &v48 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v26 + 16))(v28);
  v29 = v56;
  sub_29DA33E24();
  (*(v26 + 8))(v28, v24);
  v30 = v57;
  (*(v5 + 104))(v57, *MEMORY[0x29EDC3720], v4);
  sub_29DA31DA4(&qword_2A1A2DFE0, 255, MEMORY[0x29EDC3798], MEMORY[0x29EDC37A8]);
  v31 = sub_29DA34814();
  v32 = *(v5 + 8);
  v32(v30, v4);
  v32(v29, v4);
  sub_29D9C7968(v58);
  if (v31)
  {
    v33 = v54;
    sub_29DA34624();
    v34 = v1;

    v35 = v55;

    v36 = sub_29DA34634();
    v37 = sub_29DA34BA4();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v58[0] = v39;
      *v38 = 136446723;
      v40 = v34;
      v41 = [v40 description];
      v42 = sub_29DA34854();
      v44 = v43;

      v45 = sub_29D9EBB44(v42, v44, v58);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2081;
      v46 = sub_29D9EBB44(v49, v23, v58);

      *(v38 + 14) = v46;
      *(v38 + 22) = 2081;
      v47 = sub_29D9EBB44(v48, v35, v58);

      *(v38 + 24) = v47;
      _os_log_impl(&dword_29D9BB000, v36, v37, "%{public}s: dropping highlightAlertWasAcknowledged notification for already acknowledged alert: %{private}s (%{private}s)", v38, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v39, -1, -1);
      MEMORY[0x29ED6E4C0](v38, -1, -1);

      (*(v50 + 8))(v54, v51);
    }

    else
    {

      (*(v50 + 8))(v33, v51);
    }
  }

  else
  {

    if (qword_2A1A2E018 != -1)
    {
      swift_once();
    }

    sub_29DA2FA74(qword_2A1A31338);
  }
}

void sub_29DA2FA74(void *a1)
{
  v2 = v1;
  v50 = a1;
  v52 = sub_29DA34644();
  v51 = *(v52 - 8);
  MEMORY[0x2A1C7C4A8](v52);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29DA33754();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  sub_29DA31830(&v1[v9], &v54, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
  v10 = v56;
  if (v56)
  {
    v11 = sub_29D9C706C(&v54, v56);
    v12 = *(v10 - 8);
    MEMORY[0x2A1C7C4A8](v11);
    v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v12 + 16))(v14);
    v15 = sub_29DA33E44();
    v53 = v16;
    (*(v12 + 8))(v14, v10);
    sub_29D9C7968(&v54);
    if (*&v2[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel])
    {
      type metadata accessor for HighlightAlert(0);
      sub_29DA31268(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);

      v17 = sub_29DA34774();
      v18 = [v17 UUID];

      sub_29DA33744();
      v49 = sub_29DA33714();
      v20 = v19;

      (*(v6 + 8))(v8, v5);
    }

    else
    {
      v20 = 0xE700000000000000;
      v49 = 0x6E776F6E6B6E75;
    }

    sub_29DA34624();
    v21 = v2;
    v22 = v50;
    v23 = v53;

    v24 = sub_29DA34634();
    v25 = sub_29DA34BA4();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v54 = v50;
      *v26 = 136446979;
      v27 = v21;
      v28 = [v27 description];
      v29 = sub_29DA34854();
      v48 = v4;
      v30 = v15;
      v32 = v31;

      v33 = v29;
      v23 = v53;
      v34 = sub_29D9EBB44(v33, v32, &v54);

      *(v26 + 4) = v34;
      *(v26 + 12) = 2082;
      v35 = sub_29DA34854();
      v37 = sub_29D9EBB44(v35, v36, &v54);

      *(v26 + 14) = v37;
      v15 = v30;
      *(v26 + 22) = 2081;
      *(v26 + 24) = sub_29D9EBB44(v30, v23, &v54);
      *(v26 + 32) = 2081;
      v38 = sub_29D9EBB44(v49, v20, &v54);

      *(v26 + 34) = v38;
      _os_log_impl(&dword_29D9BB000, v24, v25, "%{public}s: posting notification %{public}s for identifier: %{private}s (%{private}s)", v26, 0x2Au);
      v39 = v50;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v39, -1, -1);
      MEMORY[0x29ED6E4C0](v26, -1, -1);

      (*(v51 + 8))(v48, v52);
    }

    else
    {

      (*(v51 + 8))(v4, v52);
    }

    sub_29D9C79FC(0, &qword_2A1A2D478, 0x29EDBA088);
    v40 = sub_29DA34BD4();
    sub_29DA31204(0, &qword_2A1A2CA00, sub_29DA31344, MEMORY[0x29EDC9E90]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_29DA3A6C0;
    v54 = 0xD000000000000023;
    v55 = 0x800000029DA38030;
    v42 = MEMORY[0x29EDC99B0];
    sub_29DA34D84();
    *(inited + 96) = v42;
    *(inited + 72) = v15;
    *(inited + 80) = v23;
    v54 = sub_29DA33824();
    v55 = v43;
    sub_29DA34D84();
    *(inited + 168) = MEMORY[0x29EDC9A98];
    *(inited + 144) = 1;
    sub_29DA21AE4(inited);
    swift_setDeallocating();
    sub_29DA31344();
    swift_arrayDestroy();
    v44 = objc_allocWithZone(sub_29DA33C24());
    v45 = v22;
    v46 = sub_29DA33C14();
    [v40 addOperation_];
  }

  else
  {
    __break(1u);
  }
}

id sub_29DA30178(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = &v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context];
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent] = 0;
  v6 = &v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint] = 0;
  *&v3[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel] = 0;
  if (a2)
  {
    v7 = sub_29DA34824();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = type metadata accessor for HighlightAlertsTileViewController();
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_29DA30340(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context];
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___diagramImageView] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController____lazy_storage___textContent] = 0;
  v4 = &v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier];
  *v4 = 0;
  *(v4 + 1) = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_diagramToBottomConstraints] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToBottomConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_textContentToDiagramConstraint] = 0;
  *&v1[OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel] = 0;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for HighlightAlertsTileViewController();
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

uint64_t sub_29DA304E0@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  return sub_29DA31830(v1 + v3, a1, &unk_2A1A2D510, &unk_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
}

uint64_t sub_29DA30564(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_context;
  swift_beginAccess();
  sub_29DA31188(a1, v1 + v3);
  swift_endAccess();
  sub_29DA2BCC8();
  return sub_29DA318A4(a1, &qword_2A1A2D510, &qword_2A1A2D518, MEMORY[0x29EDC2808], sub_29DA317D8);
}

uint64_t (*sub_29DA305FC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29DA30660;
}

uint64_t sub_29DA30660(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29DA2BCC8();
  }

  return result;
}

uint64_t sub_29DA30694(uint64_t a1, uint64_t a2)
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = (*v2 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
  swift_beginAccess();
  v4 = *v3;

  return v4;
}

uint64_t sub_29DA3075C(uint64_t a1, uint64_t a2)
{
  sub_29DA34A14();
  sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = (*v2 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_baseIdentifier);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t (*sub_29DA30830(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  sub_29DA34A14();
  *(a1 + 24) = sub_29DA34A04();
  sub_29DA349B4();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  return sub_29DA308F4;
}

uint64_t sub_29DA308F4(uint64_t a1)
{
  swift_endAccess();
}

uint64_t sub_29DA30B08@<X0>(uint64_t a1@<X8>)
{
  sub_29DA31204(0, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v19 - v4;
  v6 = sub_29DA336F4();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + OBJC_IVAR____TtC15HighlightAlerts33HighlightAlertsTileViewController_viewModel))
  {
    type metadata accessor for HighlightAlert(0);
    sub_29DA31268(0, &qword_2A1A2D4C8, &qword_2A1A2E010, 0x29EDBAD60, MEMORY[0x29EDBA1D0]);

    v10 = sub_29DA34774();
    v11 = [v10 endDate];

    sub_29DA336C4();

    (*(v7 + 56))(v5, 0, 1, v6);
    (*(v7 + 32))(v9, v5, v6);
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
    sub_29DA336E4();
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      sub_29DA318A4(v5, &qword_2A1A2E148, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68], sub_29DA31204);
    }
  }

  sub_29DA312D0(0);
  v13 = *(v12 + 48);
  (*(v7 + 32))(a1, v9, v6);
  v14 = *MEMORY[0x29EDC2188];
  v15 = sub_29DA33D34();
  (*(*(v15 - 8) + 104))(a1 + v13, v14, v15);
  v16 = *MEMORY[0x29EDC2190];
  v17 = sub_29DA33D44();
  return (*(*(v17 - 8) + 104))(a1, v16, v17);
}

id sub_29DA30E90(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];

  return v3;
}

uint64_t sub_29DA30ED8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2A1C62C70](a1, WitnessTable);
}

uint64_t sub_29DA30FA4()
{
  v1 = [*v0 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_29DA34854();

  return v3;
}

void sub_29DA31034()
{
  if (qword_2A1A2CB18 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A312D0;

  sub_29DA2FA74(v0);
}

uint64_t sub_29DA31124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlert(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DA31188(uint64_t a1, uint64_t a2)
{
  sub_29DA317D8(0, &qword_2A1A2D510, &qword_2A1A2D518, MEMORY[0x29EDC2808]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29DA31204(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29DA31268(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_29D9C79FC(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_29DA312D0(uint64_t a1)
{
  if (!qword_2A1A2DA40)
  {
    sub_29DA336F4();
    sub_29DA33D34();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2DA40);
    }
  }
}

void sub_29DA31344()
{
  if (!qword_2A1A2CA98)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1A2CA98);
    }
  }
}

uint64_t sub_29DA313A8(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_29DA34D34();
LABEL_9:
  result = sub_29DA34E14();
  *v2 = result;
  return result;
}

uint64_t sub_29DA31448(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29DA34D34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29DA34D34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29DA31268(0, &qword_2A1A2CBA8, &qword_2A1A2DB10, 0x29EDBAD78, MEMORY[0x29EDC9A40]);
          sub_29DA31DEC(&qword_2A17D1788, &qword_2A1A2CBA8, &qword_2A1A2DB10, 0x29EDBAD78);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D9FA26C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D9C79FC(0, &qword_2A1A2DB10, 0x29EDBAD78);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_29DA31610(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_29DA34D34();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_29DA34D34();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_29DA31268(0, &qword_2A1A2D4A8, &qword_2A1A2D458, 0x29EDBA008, MEMORY[0x29EDC9A40]);
          sub_29DA31DEC(&qword_2A1A2D4A0, &qword_2A1A2D4A8, &qword_2A1A2D458, 0x29EDBA008);
          for (i = 0; i != v6; ++i)
          {
            v9 = sub_29D9FA26C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_29D9C79FC(0, &qword_2A1A2D458, 0x29EDBA008);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_29DA317D8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  if (!*a2)
  {
    sub_29D9FA590(255, a3, a4);
    v5 = sub_29DA34CC4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_29DA31830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_29DA318A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_29DA31904(uint64_t a1)
{
  v2 = MEMORY[0x29EDC9C68];
  sub_29DA31204(0, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v28 - v4;
  v6 = sub_29DA33D64();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v28 - v11;
  sub_29DA31204(0, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v2);
  MEMORY[0x2A1C7C4A8](v13 - 8);
  v15 = &v28 - v14;
  if (!a1)
  {
    return 0;
  }

  v28 = v10;
  v29 = v12;
  v16 = a1 + OBJC_IVAR____TtC15HighlightAlerts23HighlightAlertViewModel_highlightAlert;
  v17 = type metadata accessor for HighlightAlert(0);
  v18 = MEMORY[0x29EDC9C68];
  sub_29DA31830(v16 + *(v17 + 32), v15, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, MEMORY[0x29EDC9C68], sub_29DA31204);
  v19 = type metadata accessor for HighlightAlertDiagramInfo(0);
  v20 = (*(*(v19 - 8) + 48))(v15, 1, v19);
  v21 = v20 != 1;

  v22 = sub_29DA318A4(v15, &qword_2A1A2E080, type metadata accessor for HighlightAlertDiagramInfo, v18, sub_29DA31204);
  MEMORY[0x29ED6D760](v22);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {

    sub_29DA318A4(v5, &qword_2A1A2CCD0, MEMORY[0x29EDC21B0], MEMORY[0x29EDC9C68], sub_29DA31204);
  }

  else
  {
    v24 = v29;
    (*(v7 + 32))(v29, v5, v6);
    if (v20 == 1)
    {

      (*(v7 + 8))(v24, v6);
      v21 = 0;
    }

    else
    {
      v25 = v28;
      (*(v7 + 104))(v28, *MEMORY[0x29EDC21A8], v6);
      sub_29DA31DA4(&qword_2A1A2CCD8, 255, MEMORY[0x29EDC21B0], MEMORY[0x29EDC21B8]);
      v26 = sub_29DA34814();

      v27 = *(v7 + 8);
      v27(v25, v6);
      v27(v24, v6);
      v21 = v26 ^ 1;
    }
  }

  return v21 & 1;
}

void sub_29DA31D4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_29DA31DA4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_29DA31DEC(unint64_t *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  result = *a1;
  if (!result)
  {
    sub_29DA31268(255, a2, a3, a4, MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29DA31E50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v51 = a3;
  v5 = sub_29DA34644();
  v45 = *(v5 - 8);
  v46 = v5;
  MEMORY[0x2A1C7C4A8](v5);
  v50 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29DA336F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v47 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v13 = &v41 - v12;
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v41 - v14;
  v49 = sub_29DA33554();
  v16 = *(v49 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v49);
  v48 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v20 = &v41 - v19;
  v21 = *(v8 + 16);
  v21(v15, a1, v7);
  sub_29DA33514();
  sub_29DA33674();
  if (v22 < 0.0)
  {
    sub_29DA34614();
    v21(v13, a1, v7);
    v21(v47, a2, v7);
    v23 = sub_29DA34634();
    v24 = sub_29DA34B84();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v25 = 136446466;
      v43 = v24;
      v26 = sub_29DA33654();
      v42 = v23;
      v28 = v27;
      v29 = *(v8 + 8);
      v29(v13, v7);
      v30 = sub_29D9EBB44(v26, v28, &v52);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2082;
      v31 = v47;
      v32 = sub_29DA33654();
      v34 = v33;
      v29(v31, v7);
      v35 = sub_29D9EBB44(v32, v34, &v52);

      *(v25 + 14) = v35;
      v36 = v42;
      _os_log_impl(&dword_29D9BB000, v42, v43, "HighlightAlertState asked to compute relevant date interval with expiration date before start date which is invalid. Creating a zero duration relevant date interval as fallback. start: %{public}s, expiration: %{public}s", v25, 0x16u);
      v37 = v44;
      swift_arrayDestroy();
      MEMORY[0x29ED6E4C0](v37, -1, -1);
      MEMORY[0x29ED6E4C0](v25, -1, -1);
    }

    else
    {

      v38 = *(v8 + 8);
      v38(v47, v7);
      v38(v13, v7);
    }

    (*(v45 + 8))(v50, v46);
  }

  v39 = v49;
  (*(v16 + 16))(v48, v20, v49);
  sub_29DA33AA4();
  return (*(v16 + 8))(v20, v39);
}

uint64_t sub_29DA322F8()
{
  v1 = *v0;
  v2 = 1145656661;
  v3 = 0x6974617269707865;
  v4 = 0x656C776F6E6B6361;
  if (v1 != 3)
  {
    v4 = 0x657373696D736964;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746144746E657665;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_29DA3239C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_29DA33220(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_29DA323C4(uint64_t a1)
{
  v2 = sub_29DA32DD8();

  return MEMORY[0x2A1C73278](a1, v2);
}

uint64_t sub_29DA32400(uint64_t a1)
{
  v2 = sub_29DA32DD8();

  return MEMORY[0x2A1C73280](a1, v2);
}

uint64_t HighlightAlertState.encode(to:)(void *a1)
{
  sub_29DA32E78(0, &qword_2A1A2CA60, MEMORY[0x29EDC9E88]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v9 - v6;
  sub_29D9C706C(a1, a1[3]);
  sub_29DA32DD8();
  sub_29DA35224();
  v14 = 0;
  sub_29DA33754();
  sub_29DA32EDC(&qword_2A1A2D348, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C10]);
  sub_29DA350D4();
  if (!v1)
  {
    type metadata accessor for HighlightAlertState(0);
    v13 = 1;
    sub_29DA336F4();
    sub_29DA32EDC(&qword_2A1A2D358, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD0]);
    sub_29DA350D4();
    v12 = 2;
    sub_29DA350D4();
    v11 = 3;
    sub_29DA350B4();
    v10 = 4;
    sub_29DA35084();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HighlightAlertState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v3 = sub_29DA336F4();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v33 - v7;
  v9 = sub_29DA33754();
  v41 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v42 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29DA32E78(0, &qword_2A1A2CA68, MEMORY[0x29EDC9E80]);
  v43 = *(v11 - 8);
  v44 = v11;
  MEMORY[0x2A1C7C4A8](v11);
  v13 = &v33 - v12;
  v14 = type metadata accessor for HighlightAlertState(0);
  MEMORY[0x2A1C7C4A8](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29D9C706C(a1, a1[3]);
  sub_29DA32DD8();
  v45 = v13;
  v17 = v46;
  sub_29DA35214();
  if (v17)
  {
    return sub_29D9C7968(a1);
  }

  v18 = v8;
  v46 = v14;
  v51 = 0;
  sub_29DA32EDC(&qword_2A1A2D340, MEMORY[0x29EDB9C08], MEMORY[0x29EDB9C28]);
  v19 = v42;
  sub_29DA35054();
  v20 = *(v41 + 32);
  v36 = v16;
  v20(v16, v19, v9);
  v50 = 1;
  sub_29DA32EDC(&qword_2A1A2DFE8, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BF0]);
  v21 = v18;
  v22 = v39;
  sub_29DA35054();
  v42 = v9;
  v23 = &v36[*(v46 + 20)];
  v34 = *(v40 + 32);
  v34(v23, v21, v22);
  v49 = 2;
  v24 = v38;
  v35 = 0;
  sub_29DA35054();
  v25 = a1;
  v26 = v46;
  v27 = v36;
  v34(&v36[*(v46 + 24)], v24, v22);
  v48 = 3;
  v28 = sub_29DA35034();
  v29 = v43;
  *(v27 + *(v26 + 28)) = v28 & 1;
  v47 = 4;
  v30 = sub_29DA35004();
  v31 = *(v26 + 32);
  (*(v29 + 8))(v45, v44);
  *(v27 + v31) = v30;
  sub_29DA32F24(v27, v37);
  sub_29D9C7968(v25);
  return sub_29DA32F88(v27);
}

BOOL _s15HighlightAlerts0A10AlertStateV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_29DA33734() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HighlightAlertState(0);
  if ((sub_29DA336B4() & 1) == 0 || (sub_29DA336B4() & 1) == 0 || *(a1 + *(v4 + 28)) != *(a2 + *(v4 + 28)))
  {
    return 0;
  }

  v6 = *(v4 + 32);
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7 != 2)
  {
    return v8 != 2 && ((v8 ^ v7) & 1) == 0;
  }

  return v8 == 2;
}

unint64_t sub_29DA32DD8()
{
  result = qword_2A1A2D298;
  if (!qword_2A1A2D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D298);
  }

  return result;
}

uint64_t type metadata accessor for HighlightAlertState(uint64_t a1)
{
  result = qword_2A1A2D270;
  if (!qword_2A1A2D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_29DA32E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_29DA32DD8();
    v7 = a3(a1, &type metadata for HighlightAlertState.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_29DA32EDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29DA32F24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HighlightAlertState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29DA32F88(uint64_t a1)
{
  v2 = type metadata accessor for HighlightAlertState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29DA3300C(uint64_t a1)
{
  sub_29DA33754();
  if (v1 <= 0x3F)
  {
    sub_29DA336F4();
    if (v2 <= 0x3F)
    {
      sub_29DA330B8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29DA330B8()
{
  if (!qword_2A1A2CB78)
  {
    v0 = sub_29DA34CC4();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A2CB78);
    }
  }
}

unint64_t sub_29DA3311C()
{
  result = qword_2A17D1790;
  if (!qword_2A17D1790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1790);
  }

  return result;
}

unint64_t sub_29DA33174()
{
  result = qword_2A1A2D288;
  if (!qword_2A1A2D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D288);
  }

  return result;
}

unint64_t sub_29DA331CC()
{
  result = qword_2A1A2D290;
  if (!qword_2A1A2D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A2D290);
  }

  return result;
}

uint64_t sub_29DA33220(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1145656661 && a2 == 0xE400000000000000;
  if (v3 || (sub_29DA35114() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746144746E657665 && a2 == 0xE900000000000065 || (sub_29DA35114() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6974617269707865 && a2 == 0xEA00000000006E6FLL || (sub_29DA35114() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C776F6E6B6361 && a2 == 0xEC00000064656764 || (sub_29DA35114() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657373696D736964 && a2 == 0xE900000000000064)
  {

    return 4;
  }

  else
  {
    v6 = sub_29DA35114();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_29DA33400()
{
  result = qword_2A17D1798;
  if (!qword_2A17D1798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A17D1798);
  }

  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x2A1C59BA0](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}