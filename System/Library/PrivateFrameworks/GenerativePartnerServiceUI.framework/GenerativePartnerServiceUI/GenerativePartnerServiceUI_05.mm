id GenerativeModelsAvailability.Capabilities.Style.icon.getter()
{
  v1 = sub_1BE54B16C();
  sub_1BE4C7500();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  v7 = sub_1BE538DA8(v6);
  v8(v7);
  v9 = sub_1BE538DDC();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x1E69A1228] || v11 == *MEMORY[0x1E69A1240] || v11 == *MEMORY[0x1E69A1220] || v11 == *MEMORY[0x1E69A1230] || v11 == *MEMORY[0x1E69A1248] || v11 == *MEMORY[0x1E69A1250] || v11 == *MEMORY[0x1E69A1238] || v11 == *MEMORY[0x1E69A1218])
  {
    sub_1BE538C8C();
    if (qword_1EBDABAE8 != -1)
    {
      sub_1BE538D48(&qword_1EBDABAE8);
    }

    v19 = qword_1EBDAD3D0;
    v20 = qword_1EBDAD3D0;
    v21 = sub_1BE538DC8();
    return sub_1BE538540(v21, 0xEC0000006C6C6966, v19);
  }

  else
  {
    (*(v3 + 8))(v0, v1);
    return 0;
  }
}

uint64_t GenerativeModelsAvailability.Capabilities.Style.iconName.getter()
{
  v1 = sub_1BE54B16C();
  sub_1BE4C7500();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  v7 = sub_1BE538DA8(v6);
  v8(v7);
  v9 = sub_1BE538DDC();
  v11 = v10(v9);
  if (v11 == *MEMORY[0x1E69A1228] || v11 == *MEMORY[0x1E69A1240] || v11 == *MEMORY[0x1E69A1220] || v11 == *MEMORY[0x1E69A1230] || v11 == *MEMORY[0x1E69A1248] || v11 == *MEMORY[0x1E69A1250] || v11 == *MEMORY[0x1E69A1238] || v11 == *MEMORY[0x1E69A1218])
  {
    return sub_1BE538DC8();
  }

  (*(v3 + 8))(v0, v1);
  return 0;
}

unint64_t sub_1BE538C8C()
{
  result = qword_1EBDAD3E0;
  if (!qword_1EBDAD3E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBDAD3E0);
  }

  return result;
}

uint64_t sub_1BE538D48(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE538D88(uint64_t a1)
{

  return swift_once();
}

uint64_t (*sub_1BE538DF8(uint64_t (*result)(__int128 *), uint64_t a2, uint64_t a3))(__int128 *)
{
  v4 = a3;
  v5 = result;
  v6 = 0;
  v7 = *(a3 + 16);
  v8 = a3 + 32;
  v9 = MEMORY[0x1E69E7CC0];
  v23 = result;
  v22 = v7;
  while (1)
  {
    if (v7 == v6)
    {
      goto LABEL_14;
    }

    if (v6 >= *(v4 + 16))
    {
      break;
    }

    sub_1BE4C6918(v8, v28);
    v10 = v5(v28);
    if (v3)
    {
      sub_1BE4C58A8(v28);

LABEL_14:

      return v9;
    }

    if (v10)
    {
      sub_1BE4BF094(v28, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v29 = v9;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE52B7A8(0, *(v9 + 16) + 1, 1);
        v9 = v29;
      }

      v13 = *(v9 + 16);
      v12 = *(v9 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BE52B7A8((v12 > 1), v13 + 1, 1);
      }

      v14 = v26;
      v15 = v27;
      sub_1BE50A568(v25, v26);
      sub_1BE53E944();
      MEMORY[0x1EEE9AC00](v16, v17);
      sub_1BE4C757C();
      v20 = v19 - v18;
      (*(v21 + 16))(v19 - v18);
      sub_1BE53DC34(v13, v20, &v29, v14, v15);
      result = sub_1BE4C58A8(v25);
      v9 = v29;
      v5 = v23;
      v4 = a3;
      v7 = v22;
    }

    else
    {
      result = sub_1BE4C58A8(v28);
    }

    v8 += 40;
    ++v6;
  }

  __break(1u);
  return result;
}

void sub_1BE539004(uint64_t a1, uint64_t a2)
{
  sub_1BE52C7AC();
  sub_1BE54B0EC();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4D981C();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE53E818(v11, v12, v13, v14, v15, v16, v17, v18, v40);
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1BE53E994();
  if (!v21 && *(v2 + 16) == *(a2 + 16))
  {
    sub_1BE53E5E0();
    if (v23)
    {
      while (2)
      {
        sub_1BE53E884();
LABEL_10:
        v25 = sub_1BE53E6C4();
        v5(v25);
        v26 = sub_1BE53E78C();
        v27(v26);
        v28 = *(a2 + 40);
        sub_1BE53E6A0();
        v30 = sub_1BE53E41C(&qword_1EDDD66C0, v29, MEMORY[0x1E69A1170]);
        sub_1BE53E9E4(v30);
        sub_1BE53E96C();
        do
        {
          sub_1BE53E754();
          if ((v31 & 1) == 0)
          {
            v38 = sub_1BE53E918();
            v39(v38);
            return;
          }

          v32 = sub_1BE53E738();
          v5(v32);
          sub_1BE53E6A0();
          v34 = sub_1BE53E41C(&qword_1EDDD66B8, v33, MEMORY[0x1E69A1178]);
          sub_1BE53E8B4(v34);
          v35 = sub_1BE53E924();
          v3(v35);
        }

        while ((v28 & 1) == 0);
        v36 = sub_1BE53E918();
        v3(v36);
        sub_1BE53E89C();
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v24 = v4;
    while (1)
    {
      v4 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v4 >= v22)
      {
        return;
      }

      ++v24;
      if (*(v41 + 8 * v4))
      {
        sub_1BE53E86C();
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BE539210(uint64_t a1, uint64_t a2)
{
  sub_1BE52C7AC();
  sub_1BE54B0BC();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4D981C();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE53E818(v11, v12, v13, v14, v15, v16, v17, v18, v40);
  MEMORY[0x1EEE9AC00](v19, v20);
  sub_1BE53E994();
  if (!v21 && *(v2 + 16) == *(a2 + 16))
  {
    sub_1BE53E5E0();
    if (v23)
    {
      while (2)
      {
        sub_1BE53E884();
LABEL_10:
        v25 = sub_1BE53E6C4();
        v5(v25);
        v26 = sub_1BE53E78C();
        v27(v26);
        v28 = *(a2 + 40);
        sub_1BE53E688();
        v30 = sub_1BE53E41C(&qword_1EBDACD80, v29, MEMORY[0x1E69A0FA8]);
        sub_1BE53E9E4(v30);
        sub_1BE53E96C();
        do
        {
          sub_1BE53E754();
          if ((v31 & 1) == 0)
          {
            v38 = sub_1BE53E918();
            v39(v38);
            return;
          }

          v32 = sub_1BE53E738();
          v5(v32);
          sub_1BE53E688();
          v34 = sub_1BE53E41C(&qword_1EBDAD2E0, v33, MEMORY[0x1E69A0FB0]);
          sub_1BE53E8B4(v34);
          v35 = sub_1BE53E924();
          v3(v35);
        }

        while ((v28 & 1) == 0);
        v36 = sub_1BE53E918();
        v3(v36);
        sub_1BE53E89C();
        if (v37)
        {
          continue;
        }

        break;
      }
    }

    v24 = v4;
    while (1)
    {
      v4 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v4 >= v22)
      {
        return;
      }

      ++v24;
      if (*(v41 + 8 * v4))
      {
        sub_1BE53E86C();
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BE53941C(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    sub_1BE525E18();
    if (*(v4 + 16) == *(v5 + 16))
    {
      v6 = 0;
      v9 = *(v3 + 56);
      v8 = v3 + 56;
      v7 = v9;
      v10 = 1 << *(v8 - 24);
      if (v10 < 64)
      {
        v11 = ~(-1 << v10);
      }

      else
      {
        v11 = -1;
      }

      v12 = v11 & v7;
      v13 = (v10 + 63) >> 6;
      while (v12)
      {
LABEL_12:
        v12 &= v12 - 1;
        sub_1BE54CD8C();
        MEMORY[0x1BFB482A0](0);
        v15 = sub_1BE54CDAC() & ~(-1 << *(v2 + 32));
        if (((*(v2 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          return;
        }
      }

      while (1)
      {
        v14 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          return;
        }

        v12 = *(v8 + 8 * v14);
        ++v6;
        if (v12)
        {
          v6 = v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1BE539588(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

id sub_1BE539620()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for GenerativePartnerServiceUserDefaults()) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

uint64_t GenerativePartnerServiceProvider.__allocating_init()()
{
  v0 = swift_allocObject();
  GenerativePartnerServiceProvider.init()();
  return v0;
}

void *GenerativePartnerServiceProvider.init()()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  v0[3] = 0;
  v0[4] = MEMORY[0x1E69E7CD0];
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53EC68(0xD00000000000002ALL, 0x80000001BE555A40);
  sub_1BE53B438(0);
  sub_1BE53974C(0);
  sub_1BE53DA44();
  sub_1BE539C38(0);
  return v0;
}

void sub_1BE53974C(char a1)
{
  LOBYTE(v1) = a1;
  if (qword_1EDDD6570 != -1)
  {
LABEL_28:
    sub_1BE53E598();
    swift_once();
  }

  v2 = sub_1BE54B2EC();
  sub_1BE4C52BC(v2, qword_1EDDD7078);
  v3 = sub_1BE54B2BC();
  v4 = sub_1BE54C9AC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v6 = swift_slowAlloc();
    *&v56 = v6;
    *v5 = 136446210;
    if (v1)
    {
      v7 = 0xD000000000000012;
    }

    else
    {
      v7 = 46;
    }

    if (v1)
    {
      v8 = 0x80000001BE555C10;
    }

    else
    {
      v8 = 0xE100000000000000;
    }

    v9 = sub_1BE4C5338(v7, v8, &v56);

    *(v5 + 4) = v9;
    sub_1BE53E8FC(&dword_1BE4B8000, v10, v4, "Loading llms%{public}s");
    sub_1BE4C58A8(v6);
    v11 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v11);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  v12 = sub_1BE54986C();
  sub_1BE549D98(v12, v1 & 1);
  sub_1BE50A968();

  v1 = 0;
  isa = v3[2].isa;
  v13 = MEMORY[0x1E69E7CC0];
  v51 = v3;
  v14 = &v3[4];
  while (isa != v1)
  {
    if (v1 >= v51[2].isa)
    {
      __break(1u);
      goto LABEL_28;
    }

    sub_1BE4C6918(v14, &v56);
    type metadata accessor for GenerativePartnerServiceUserDefaults();
    v15 = v57;
    v16 = v58;
    sub_1BE4C52F4(&v56, v57);
    sub_1BE4C75D0();
    v18 = v17(v15, v16);
    v20 = sub_1BE53F5E0(v18, v19);

    if (v20)
    {
      sub_1BE4C6918(&v56, v53);
      v21 = sub_1BE54B2BC();
      v22 = sub_1BE54C9AC();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = sub_1BE50AB7C();
        sub_1BE53E6B8();
        v24 = swift_slowAlloc();
        v52 = v24;
        *v23 = 136446210;
        v26 = v54;
        v25 = v55;
        sub_1BE4C52F4(v53, v54);
        sub_1BE4C75D0();
        v28 = v27(v26, v25);
        v30 = v29;
        sub_1BE4C58A8(v53);
        v31 = sub_1BE4C5338(v28, v30, &v52);

        *(v23 + 4) = v31;
        _os_log_impl(&dword_1BE4B8000, v21, v22, "LLM with id: %{public}s is unavailable and removed from the available LLM list", v23, 0xCu);
        sub_1BE4C58A8(v24);
        v32 = sub_1BE53E5C4();
        MEMORY[0x1BFB48AC0](v32);
        sub_1BE53E5D4();
        MEMORY[0x1BFB48AC0]();
      }

      else
      {

        sub_1BE4C58A8(v53);
      }

      sub_1BE4C58A8(&v56);
    }

    else
    {
      sub_1BE4BF094(&v56, v53);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1BE52B7A8(0, *(v13 + 16) + 1, 1);
        v13 = v59;
      }

      v35 = *(v13 + 16);
      v34 = *(v13 + 24);
      if (v35 >= v34 >> 1)
      {
        sub_1BE52B7A8((v34 > 1), v35 + 1, 1);
      }

      v36 = v54;
      v37 = v55;
      sub_1BE50A568(v53, v54);
      sub_1BE53E944();
      MEMORY[0x1EEE9AC00](v38, v39);
      sub_1BE4C757C();
      (*(v42 + 16))(v41 - v40);
      v43 = sub_1BE53E938();
      sub_1BE53DC34(v43, v44, v45, v36, v37);
      sub_1BE4C58A8(v53);
      v13 = v59;
    }

    v14 += 40;
    v1 = (v1 + 1);
  }

  swift_beginAccess();
  *(v49 + 16) = v13;

  v46 = sub_1BE54B2BC();
  v47 = sub_1BE54C9AC();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = sub_1BE50AB7C();
    *v48 = 134349056;
    *(v48 + 4) = *(*(v49 + 16) + 16);

    _os_log_impl(&dword_1BE4B8000, v46, v47, "%{public}ld llms available", v48, 0xCu);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  else
  {
  }
}

uint64_t sub_1BE539C38(char a1)
{
  v3 = *v1;
  v4 = sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  v5 = sub_1BE4C7570(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v12 - v7;
  sub_1BE54C8FC();
  v9 = sub_1BE54C91C();
  sub_1BE4C63F8(v8, 0, 1, v9);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  *(v10 + 40) = v1;
  *(v10 + 48) = v3;

  sub_1BE50BA3C();
}

uint64_t sub_1BE539D5C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 160) = a5;
  *(v6 + 168) = a6;
  *(v6 + 444) = a4;
  sub_1BE4BF11C(&qword_1EBDAC3A8, &qword_1BE550DA0);
  *(v6 + 176) = swift_task_alloc();
  *(v6 + 184) = swift_task_alloc();
  v7 = sub_1BE54B12C();
  *(v6 + 192) = v7;
  v8 = *(v7 - 8);
  *(v6 + 200) = v8;
  *(v6 + 208) = *(v8 + 64);
  *(v6 + 216) = swift_task_alloc();
  *(v6 + 224) = swift_task_alloc();
  sub_1BE4BF11C(&qword_1EBDACCD8, &qword_1BE550500);
  *(v6 + 232) = swift_task_alloc();
  v9 = sub_1BE54B1AC();
  *(v6 + 240) = v9;
  *(v6 + 248) = *(v9 - 8);
  *(v6 + 256) = swift_task_alloc();
  v10 = sub_1BE54B19C();
  *(v6 + 264) = v10;
  *(v6 + 272) = *(v10 - 8);
  *(v6 + 280) = swift_task_alloc();
  v11 = sub_1BE54B1BC();
  *(v6 + 288) = v11;
  *(v6 + 296) = *(v11 - 8);
  *(v6 + 304) = swift_task_alloc();
  v12 = sub_1BE54B14C();
  *(v6 + 312) = v12;
  *(v6 + 320) = *(v12 - 8);
  *(v6 + 328) = swift_task_alloc();
  v13 = sub_1BE54B1EC();
  *(v6 + 336) = v13;
  *(v6 + 344) = *(v13 - 8);
  *(v6 + 352) = swift_task_alloc();
  v14 = sub_1BE54B05C();
  *(v6 + 360) = v14;
  *(v6 + 368) = *(v14 - 8);
  *(v6 + 376) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BE53A0D8, 0, 0);
}

uint64_t sub_1BE53A0D8()
{
  v43 = v1;
  v7 = *(v1 + 444);
  v8 = sub_1BE54986C();
  v9 = sub_1BE549D98(v8, v7);
  *(v1 + 384) = v9;

  v10 = *(v9 + 16);
  *(v1 + 392) = v10;
  if (!v10)
  {
LABEL_21:

    sub_1BE53E6EC();

    sub_1BE4E01E0();

    return v39();
  }

  sub_1BE50AA7C(*(v1 + 160) + 32, v1 + 88);
  v11 = 0;
  *(v1 + 440) = *MEMORY[0x1E69A12B8];
  while (2)
  {
    sub_1BE53E980(v11);
    if (v13)
    {
      __break(1u);
LABEL_25:
      sub_1BE53E598();
      swift_once();
      goto LABEL_16;
    }

    sub_1BE53E7C4(v12);
    sub_1BE53E7A8();
    v14 = sub_1BE53E5AC();
    v3 = v15(v14);
    v2 = v16;
    *(v1 + 408) = v3;
    *(v1 + 416) = v16;
    sub_1BE53E7A8();
    v17 = sub_1BE50A968();
    v18(v17, v0);
    sub_1BE4C58A8((v1 + 16));
    sub_1BE54B03C();
    v19 = sub_1BE53E800();
    v20(v19);
    if (*(v5[4] + 16))
    {
      sub_1BE54CD8C();

      sub_1BE53E848();
      sub_1BE54C77C();
      sub_1BE54CDAC();
      sub_1BE53E854();
      do
      {
        sub_1BE53E830();
        if ((v21 & 1) == 0)
        {

          goto LABEL_15;
        }

        v22 = sub_1BE53E958();
        v24 = v24 && v23 == v8;
      }

      while (!v24 && (sub_1BE53E770(v22, v23) & 1) == 0);

      v11 = *(v1 + 400) + 1;
      if (v11 != *(v1 + 392))
      {
        continue;
      }

      goto LABEL_21;
    }

    break;
  }

LABEL_15:
  sub_1BE53E8D8();

  sub_1BE53E848();
  sub_1BE53007C(v25, v26, v27);
  swift_endAccess();

  if (qword_1EDDD6570 != -1)
  {
    goto LABEL_25;
  }

LABEL_16:
  v28 = sub_1BE54B2EC();
  sub_1BE4C52BC(v28, qword_1EDDD7078);

  v29 = sub_1BE54B2BC();
  v30 = sub_1BE54C9AC();

  if (os_log_type_enabled(v29, v30))
  {
    v4 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v5 = swift_slowAlloc();
    v42[0] = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_1BE4C5338(v3, v2, v42);
    sub_1BE53E9C4(&dword_1BE4B8000, v31, v32, "Subscribing to availability changes for LLM id: %{public}s");
    sub_1BE4C58A8(v5);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  sub_1BE53E714();
  v41 = v33;
  (*(v34 + 104))(v30);
  sub_1BE4FFBD8();
  sub_1BE54B13C();
  sub_1BE54B1DC();
  (*(v6 + 8))(v2, v3);
  sub_1BE54B1CC();
  sub_1BE54B18C();
  (*(v4 + 8))(v5, v41);
  sub_1BE53E670();
  sub_1BE53E41C(v35, v36, MEMORY[0x1E69A1298]);
  v37 = swift_task_alloc();
  *(v1 + 424) = v37;
  *v37 = v1;
  v38 = sub_1BE53E63C(v37);

  return MEMORY[0x1EEE6D8C8](v38);
}

uint64_t sub_1BE53A51C()
{
  sub_1BE4E01D4();
  sub_1BE4E0228();
  v2 = *v1;
  sub_1BE4E01C4();
  *v3 = v2;
  *(v4 + 432) = v0;

  if (v0)
  {
    v5 = sub_1BE53AD88;
  }

  else
  {
    v5 = sub_1BE53A620;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1BE53A63C()
{
  v78 = v0;
  v3 = v0[24];
  v4 = sub_1BE4C63BC(v0[29], 1, v3);
  v5 = v0[52];
  if (v4 != 1)
  {
    v31 = v0[27];
    v30 = v0[28];
    v32 = v0[25];
    v71 = v0[26];
    v33 = v0[23];
    v75 = v0[22];
    v73 = v0[51];
    v74 = v0[21];
    v69 = v31;
    v72 = *(v32 + 32);
    v34 = sub_1BE4D9800();
    v35(v34);
    sub_1BE54C8FC();
    v70 = sub_1BE54C91C();
    sub_1BE4C63F8(v33, 0, 1, v70);
    v36 = swift_allocObject();
    swift_weakInit();
    (*(v32 + 16))(v31, v30, v3);
    sub_1BE54C8CC();

    v37 = sub_1BE54C8BC();
    v38 = (*(v32 + 80) + 48) & ~*(v32 + 80);
    v39 = (v71 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
    v40 = swift_allocObject();
    v41 = MEMORY[0x1E69E85E0];
    *(v40 + 2) = v37;
    *(v40 + 3) = v41;
    *(v40 + 4) = v73;
    *(v40 + 5) = v5;
    v72(&v40[v38], v69, v3);
    *&v40[v39] = v36;
    *&v40[(v39 + 15) & 0xFFFFFFFFFFFFFFF8] = v74;

    sub_1BE53E294(v33, v75, &qword_1EBDAC3A8, &qword_1BE550DA0);
    v42 = sub_1BE4C63BC(v75, 1, v70);

    v43 = v0[22];
    if (v42 == 1)
    {
      sub_1BE511848(v0[22], &qword_1EBDAC3A8, &qword_1BE550DA0);
    }

    else
    {
      sub_1BE54C90C();
      sub_1BE50A884();
      (*(v54 + 8))(v43, v70);
    }

    v55 = *(v40 + 2);
    swift_unknownObjectRetain();

    if (v55)
    {
      swift_getObjectType();
      v56 = sub_1BE54C87C();
      v58 = v57;
      swift_unknownObjectRelease();
    }

    else
    {
      v56 = 0;
      v58 = 0;
    }

    sub_1BE511848(v0[23], &qword_1EBDAC3A8, &qword_1BE550DA0);
    v59 = swift_allocObject();
    *(v59 + 16) = &unk_1BE551BA0;
    *(v59 + 24) = v40;
    if (v58 | v56)
    {
      v0[7] = 0;
      v0[8] = 0;
      v0[9] = v56;
      v0[10] = v58;
    }

    v60 = v0[28];
    v61 = v0[24];
    v62 = v0[25];
    swift_task_create();

    (*(v62 + 8))(v60, v61);
    goto LABEL_28;
  }

  v7 = v0[43];
  v6 = v0[44];
  v8 = v0[42];
  v10 = v0[34];
  v9 = v0[35];
  v11 = v0[33];

  v13 = *(v10 + 8);
  v12 = v10 + 8;
  v13(v9, v11);
  v15 = *(v7 + 8);
  v14 = v7 + 8;
  v15(v6, v8);
LABEL_3:
  v16 = v0[50] + 1;
  if (v16 != v0[49])
  {
    sub_1BE53E980(v16);
    if (v18)
    {
      __break(1u);
    }

    else
    {
      sub_1BE53E7C4(v17);
      sub_1BE53E7A8();
      v19 = sub_1BE53E5AC();
      v14 = v20(v19);
      v11 = v21;
      v0[51] = v14;
      v0[52] = v21;
      sub_1BE53E7A8();
      v22 = sub_1BE50A968();
      v23(v22, v9);
      sub_1BE4C58A8(v0 + 2);
      sub_1BE54B03C();
      v24 = sub_1BE53E800();
      v25(v24);
      if (*(v1[4] + 16))
      {
        sub_1BE54CD8C();

        sub_1BE53E848();
        sub_1BE54C77C();
        sub_1BE54CDAC();
        sub_1BE53E854();
        while (1)
        {
          sub_1BE53E830();
          if ((v26 & 1) == 0)
          {
            break;
          }

          v27 = sub_1BE53E958();
          v29 = v29 && v28 == v8;
          if (v29 || (sub_1BE53E770(v27, v28) & 1) != 0)
          {

            goto LABEL_3;
          }
        }
      }

      sub_1BE53E8D8();

      sub_1BE53E848();
      sub_1BE53007C(v44, v45, v46);
      swift_endAccess();

      if (qword_1EDDD6570 == -1)
      {
        goto LABEL_18;
      }
    }

    sub_1BE53E598();
    swift_once();
LABEL_18:
    v47 = sub_1BE54B2EC();
    sub_1BE4C52BC(v47, qword_1EDDD7078);

    v48 = sub_1BE54B2BC();
    v49 = sub_1BE54C9AC();

    if (os_log_type_enabled(v48, v49))
    {
      v12 = sub_1BE50AB7C();
      sub_1BE53E6B8();
      v1 = swift_slowAlloc();
      v77[0] = v1;
      *v12 = 136446210;
      *(v12 + 4) = sub_1BE4C5338(v14, v11, v77);
      sub_1BE53E9C4(&dword_1BE4B8000, v50, v51, "Subscribing to availability changes for LLM id: %{public}s");
      sub_1BE4C58A8(v1);
      sub_1BE53E5D4();
      MEMORY[0x1BFB48AC0]();
      sub_1BE53E5D4();
      MEMORY[0x1BFB48AC0]();
    }

    sub_1BE53E714();
    v76 = v52;
    (*(v53 + 104))(v49);
    sub_1BE4FFBD8();
    sub_1BE54B13C();
    sub_1BE54B1DC();
    (*(v2 + 8))(v11, v14);
    sub_1BE54B1CC();
    sub_1BE54B18C();
    (*(v12 + 8))(v1, v76);
LABEL_28:
    sub_1BE53E670();
    sub_1BE53E41C(v63, v64, MEMORY[0x1E69A1298]);
    v65 = swift_task_alloc();
    v0[53] = v65;
    *v65 = v0;
    v66 = sub_1BE53E63C(v65);

    return MEMORY[0x1EEE6D8C8](v66);
  }

  sub_1BE53E6EC();

  sub_1BE4E01E0();

  return v67();
}

uint64_t sub_1BE53AD88()
{
  sub_1BE4E01D4();
  *(v0 + 152) = *(v0 + 432);
  sub_1BE4BF11C(&qword_1EBDAC5C0, qword_1BE551A00);
  v1 = MEMORY[0x1E69E73E0];
  v2 = swift_dynamicCast();
  v3 = MEMORY[0x1E69E7410];

  return MEMORY[0x1EEE6C240](v2, v1, v3);
}

uint64_t sub_1BE53AE10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[13] = a6;
  v7[14] = a7;
  v7[11] = a4;
  v7[12] = a5;
  v8 = sub_1BE54B12C();
  v7[15] = v8;
  v9 = *(v8 - 8);
  v7[16] = v9;
  v7[17] = *(v9 + 64);
  v7[18] = swift_task_alloc();
  v7[19] = swift_task_alloc();
  sub_1BE54C8CC();
  v7[20] = sub_1BE54C8BC();
  v11 = sub_1BE54C87C();

  return MEMORY[0x1EEE6DFA0](sub_1BE53AF1C, v11, v10);
}

uint64_t sub_1BE53AF1C()
{
  v45 = v0;

  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v43 = sub_1BE53F5FC();
  v2 = v1;
  if (qword_1EDDD6570 != -1)
  {
    sub_1BE53E598();
    swift_once();
  }

  v3 = v0[19];
  v5 = v0[15];
  v4 = v0[16];
  v6 = v0[13];
  v7 = sub_1BE54B2EC();
  sub_1BE4C52BC(v7, qword_1EDDD7078);
  v42 = *(v4 + 16);
  v42(v3, v6, v5);

  v8 = sub_1BE54B2BC();
  v9 = sub_1BE54C9AC();

  v10 = os_log_type_enabled(v8, v9);
  v11 = v0[19];
  v13 = v0[15];
  v12 = v0[16];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    *v14 = 136446466;
    v15 = sub_1BE53E938();
    *(v14 + 4) = sub_1BE4C5338(v15, v16, v17);
    *(v14 + 12) = 2082;
    sub_1BE53E41C(&unk_1EDDD6510, MEMORY[0x1E69A11A8], MEMORY[0x1E69A11C0]);
    sub_1BE54CC9C();
    (*(v12 + 8))(v11, v13);
    v18 = sub_1BE53E938();
    v21 = sub_1BE4C5338(v18, v19, v20);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_1BE4B8000, v8, v9, "Availability change detected for LLM id: %{public}s: %{public}s; reloading", v14, 0x16u);
    swift_arrayDestroy();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  sub_1BE50AA7C(v0[14] + 16, (v0 + 2));
  if (swift_weakLoadStrong())
  {
    v22 = sub_1BE52C7AC();
    sub_1BE53B438(v22);
  }

  sub_1BE50AA7C(v0[14] + 16, (v0 + 5));
  if (swift_weakLoadStrong())
  {
    sub_1BE53974C(0);
  }

  v23 = sub_1BE53F5E0(v43, v2);

  if (v23)
  {

    v24 = sub_1BE54B2BC();
    v25 = sub_1BE54C98C();

    if (os_log_type_enabled(v24, v25))
    {
      v27 = v0[11];
      v26 = v0[12];
      v28 = sub_1BE50AB7C();
      sub_1BE53E6B8();
      v29 = swift_slowAlloc();
      v44 = v29;
      *v28 = 136446210;
      *(v28 + 4) = sub_1BE4C5338(v27, v26, &v44);
      _os_log_impl(&dword_1BE4B8000, v24, v25, "Selected LLM id: %{public}s was disabled due to availability change", v28, 0xCu);
      sub_1BE4C58A8(v29);
      sub_1BE53E5D4();
      MEMORY[0x1BFB48AC0]();
      v30 = sub_1BE53E5C4();
      MEMORY[0x1BFB48AC0](v30);
    }
  }

  sub_1BE50AA7C(v0[14] + 16, (v0 + 8));
  if (swift_weakLoadStrong())
  {
    v31 = v0[18];
    v32 = v0[15];
    v33 = v0[16];
    v35 = v0[12];
    v34 = v0[13];
    v36 = v0[11];
    v37 = sub_1BE539620();

    v42(v31, v34, v32);
    v38 = (*(v33 + 80) + 32) & ~*(v33 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v36;
    *(v39 + 24) = v35;
    (*(v33 + 32))(v39 + v38, v31, v32);

    sub_1BE53F6AC();
  }

  sub_1BE4E01E0();

  return v40();
}

uint64_t sub_1BE53B438(void (*a1)(void))
{
  v2 = sub_1BE54986C();
  v3 = sub_1BE549D98(v2, 0);

  if (qword_1EDDD6570 != -1)
  {
    sub_1BE53E598();
    swift_once();
  }

  v4 = sub_1BE54B2EC();
  sub_1BE4C52BC(v4, qword_1EDDD7078);
  sub_1BE50A968();

  v5 = sub_1BE54B2BC();
  v6 = sub_1BE54C9AC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = sub_1BE50AB7C();
    *v7 = 134349056;
    *(v7 + 4) = *(v3 + 16);

    sub_1BE53E8FC(&dword_1BE4B8000, v8, v6, "updateLLMAvailability for: %{public}ld LLMs");
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  else
  {
  }

  v9 = *(v3 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v3 + 32;
    type metadata accessor for GenerativePartnerServiceUserDefaults();
    v37 = a1;
    while (1)
    {
      sub_1BE4C6918(v11, v40);
      v12 = v41;
      v13 = v42;
      sub_1BE4C52F4(v40, v41);
      sub_1BE4C75D0();
      v15 = v14(v12, v13);
      v17 = sub_1BE53F5E0(v15, v16) & 1;

      v18 = sub_1BE53B80C(v40);
      if (v17 == (v18 & 1))
      {
        if ((v10 & 1) == 0)
        {
          v10 = 0;
          if (!a1)
          {
            goto LABEL_18;
          }

LABEL_17:
          sub_1BE4C52F4(v40, v41);
          v33 = sub_1BE53E5AC();
          v35 = v34(v33);
          a1(v35);

          goto LABEL_18;
        }
      }

      else
      {
        sub_1BE4C6918(v40, v39);
        v19 = sub_1BE54B2BC();
        v20 = sub_1BE54C9AC();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          sub_1BE53E6B8();
          v38 = swift_slowAlloc();
          *v21 = 136446466;
          v22 = v39[4];
          sub_1BE4C52F4(v39, v39[3]);
          v23 = sub_1BE50A968();
          v24(v23, v22);
          sub_1BE4C58A8(v39);
          v25 = sub_1BE4D9800();
          v28 = sub_1BE4C5338(v25, v26, v27);

          *(v21 + 4) = v28;
          *(v21 + 12) = 1026;
          *(v21 + 14) = v18 & 1;
          _os_log_impl(&dword_1BE4B8000, v19, v20, "LLM with id %{public}s unavailability status changed to: unavailable = %{BOOL,public}d", v21, 0x12u);
          sub_1BE4C58A8(v38);
          sub_1BE53E5D4();
          MEMORY[0x1BFB48AC0]();
          sub_1BE53E5D4();
          MEMORY[0x1BFB48AC0]();
        }

        else
        {

          sub_1BE4C58A8(v39);
        }

        a1 = v37;
        sub_1BE4C52F4(v40, v41);
        v29 = sub_1BE53E5AC();
        v31 = v30(v29);
        sub_1BE53F8D8(v18 & 1, v31, v32);
      }

      sub_1BE53974C(0);
      v10 = 1;
      if (a1)
      {
        goto LABEL_17;
      }

LABEL_18:
      sub_1BE4C58A8(v40);
      v11 += 40;
      if (!--v9)
      {
      }
    }
  }
}

uint64_t sub_1BE53B80C(void *a1)
{
  v141 = sub_1BE54B10C();
  v139 = *(v141 - 8);
  v3 = MEMORY[0x1EEE9AC00](v141, v2);
  v138 = &v137 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3, v5);
  v140 = &v137 - v6;
  v148 = sub_1BE54B0DC();
  v142 = *(v148 - 8);
  v8 = MEMORY[0x1EEE9AC00](v148, v7);
  v143 = &v137 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v10);
  v147 = &v137 - v11;
  v12 = sub_1BE54B1BC();
  v153 = *(v12 - 8);
  v154 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v152 = &v137 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = sub_1BE54B05C();
  v15 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v16);
  v18 = &v137 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1BE54B14C();
  v150 = *(v19 - 8);
  v151 = v19;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v137 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = sub_1BE54B1EC();
  v23 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v24);
  v26 = &v137 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v158 = sub_1BE54B12C();
  v156 = *(v158 - 8);
  v28 = MEMORY[0x1EEE9AC00](v158, v27);
  v30 = &v137 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v31);
  v33 = &v137 - v32;
  v34 = a1[3];
  v35 = a1[4];
  v155 = a1;
  sub_1BE4C52F4(a1, v34);
  v36 = *(v35 + 112);
  v37 = v35;
  v38 = v33;
  v36(v34, v37);
  sub_1BE54B03C();
  v39 = *(v15 + 8);
  v145 = v18;
  v146 = v15 + 8;
  v144 = v39;
  v39(v18, v157);
  (*(v153 + 104))(v152, *MEMORY[0x1E69A12B8], v154);
  sub_1BE54B13C();
  sub_1BE54B1DC();
  (*(v150 + 8))(v22, v151);
  sub_1BE54B17C();
  v40 = v158;
  (*(v23 + 8))(v26, v149);
  v41 = v156;
  (*(v156 + 16))(v30, v33, v40);
  v42 = (*(v41 + 88))(v30, v40);
  if (v42 == *MEMORY[0x1E69A0EF8])
  {
    (*(v41 + 96))(v30, v158);
    v43 = v142;
    v44 = v147;
    v45 = v148;
    (*(v142 + 32))(v147, v30, v148);
    if (qword_1EDDD6570 != -1)
    {
      swift_once();
    }

    v46 = sub_1BE54B2EC();
    sub_1BE4C52BC(v46, qword_1EDDD7078);
    v47 = v155;
    sub_1BE4C6918(v155, v163);
    sub_1BE4C6918(v47, v160);
    v48 = v143;
    (*(v43 + 16))(v143, v44, v45);
    v49 = sub_1BE54B2BC();
    v50 = sub_1BE54C9AC();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v154 = v38;
      v52 = v51;
      v155 = swift_slowAlloc();
      v159 = v155;
      *v52 = 136446722;
      v53 = v43;
      v54 = v164;
      v55 = v165;
      sub_1BE4C52F4(v163, v164);
      v56 = (*(v55 + 8))(v54, v55);
      v58 = v57;
      sub_1BE4C58A8(v163);
      v59 = sub_1BE4C5338(v56, v58, &v159);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2082;
      v60 = v161;
      v61 = v162;
      sub_1BE4C52F4(v160, v161);
      v62 = v48;
      v63 = v145;
      (*(v61 + 112))(v60, v61);
      v64 = sub_1BE54B03C();
      v66 = v65;
      v144(v63, v157);
      sub_1BE4C58A8(v160);
      v67 = sub_1BE4C5338(v64, v66, &v159);

      *(v52 + 14) = v67;
      *(v52 + 22) = 2082;
      sub_1BE53E41C(&qword_1EBDAD400, MEMORY[0x1E69A0FC8], MEMORY[0x1E69A0FD0]);
      v68 = v148;
      v69 = sub_1BE54CC9C();
      v71 = v70;
      v72 = *(v53 + 8);
      v72(v62, v68);
      v73 = sub_1BE4C5338(v69, v71, &v159);

      *(v52 + 24) = v73;
      _os_log_impl(&dword_1BE4B8000, v49, v50, "updateLLMAvailability: LLM %{public}s use case %{public}s is restricted: %{public}s", v52, 0x20u);
      v74 = v155;
      swift_arrayDestroy();
      MEMORY[0x1BFB48AC0](v74, -1, -1);
      MEMORY[0x1BFB48AC0](v52, -1, -1);

      v72(v147, v68);
      (*(v41 + 8))(v154, v158);
      return 1;
    }

    v87 = *(v43 + 8);
    v87(v48, v45);
    v87(v44, v45);
    (*(v41 + 8))(v38, v158);
LABEL_10:
    sub_1BE4C58A8(v160);
    sub_1BE4C58A8(v163);
    return 1;
  }

  if (v42 == *MEMORY[0x1E69A0F00])
  {
    (*(v41 + 96))(v30, v158);
    v75 = v139;
    v76 = v140;
    v77 = v30;
    v78 = v141;
    (*(v139 + 32))(v140, v77, v141);
    v79 = sub_1BE54B0FC();
    sub_1BE4BF11C(&qword_1EBDACD90, &qword_1BE5516E0);
    v80 = sub_1BE54B0EC();
    v81 = *(v80 - 8);
    v82 = (*(v81 + 80) + 32) & ~*(v81 + 80);
    v83 = swift_allocObject();
    *(v83 + 16) = xmmword_1BE54E1A0;
    (*(v81 + 104))(v83 + v82, *MEMORY[0x1E69A10B8], v80);
    sub_1BE5322D8(v83, v79);
    v85 = v84;
    swift_setDeallocating();
    sub_1BE52B6AC();
    sub_1BE539004(v85, MEMORY[0x1E69E7CD0]);
    LOBYTE(v83) = v86;

    if ((v83 & 1) == 0)
    {
      v154 = v38;
      if (qword_1EDDD6570 != -1)
      {
        swift_once();
      }

      v108 = sub_1BE54B2EC();
      sub_1BE4C52BC(v108, qword_1EDDD7078);
      v109 = v155;
      sub_1BE4C6918(v155, v163);
      sub_1BE4C6918(v109, v160);
      v110 = v138;
      (*(v75 + 16))(v138, v76, v78);
      v111 = v76;
      v112 = sub_1BE54B2BC();
      v113 = sub_1BE54C9AC();
      if (os_log_type_enabled(v112, v113))
      {
        v114 = swift_slowAlloc();
        v115 = swift_slowAlloc();
        v159 = v115;
        *v114 = 136446722;
        v116 = v164;
        v117 = v165;
        sub_1BE4C52F4(v163, v164);
        v118 = (*(v117 + 8))(v116, v117);
        v120 = v119;
        sub_1BE4C58A8(v163);
        v121 = sub_1BE4C5338(v118, v120, &v159);

        *(v114 + 4) = v121;
        *(v114 + 12) = 2082;
        v122 = v161;
        v123 = v162;
        sub_1BE4C52F4(v160, v161);
        v124 = v75;
        v125 = v145;
        (*(v123 + 112))(v122, v123);
        v126 = sub_1BE54B03C();
        v128 = v127;
        v144(v125, v157);
        sub_1BE4C58A8(v160);
        v129 = sub_1BE4C5338(v126, v128, &v159);

        *(v114 + 14) = v129;
        *(v114 + 22) = 2082;
        sub_1BE53E41C(&qword_1EBDAD3F8, MEMORY[0x1E69A1188], MEMORY[0x1E69A1190]);
        v130 = v141;
        v131 = sub_1BE54CC9C();
        v133 = v132;
        v134 = *(v124 + 8);
        v134(v110, v130);
        v135 = sub_1BE4C5338(v131, v133, &v159);

        *(v114 + 24) = v135;
        _os_log_impl(&dword_1BE4B8000, v112, v113, "updateLLMAvailability: LLM %{public}s use case %{public}s is unavailable: %{public}s", v114, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1BFB48AC0](v115, -1, -1);
        MEMORY[0x1BFB48AC0](v114, -1, -1);

        v134(v140, v130);
        (*(v156 + 8))(v154, v158);
        return 1;
      }

      v136 = *(v75 + 8);
      v136(v110, v78);
      v136(v111, v78);
      (*(v41 + 8))(v154, v158);
      goto LABEL_10;
    }

    (*(v75 + 8))(v76, v78);
  }

  else
  {
    (*(v41 + 8))(v30, v158);
  }

  if (qword_1EDDD6570 != -1)
  {
    swift_once();
  }

  v89 = sub_1BE54B2EC();
  sub_1BE4C52BC(v89, qword_1EDDD7078);
  v90 = v155;
  sub_1BE4C6918(v155, v163);
  sub_1BE4C6918(v90, v160);
  v91 = sub_1BE54B2BC();
  v92 = sub_1BE54C9AC();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v159 = v94;
    *v93 = 136446466;
    v95 = v164;
    v96 = v165;
    sub_1BE4C52F4(v163, v164);
    v97 = (*(v96 + 8))(v95, v96);
    v99 = v98;
    sub_1BE4C58A8(v163);
    v100 = sub_1BE4C5338(v97, v99, &v159);

    *(v93 + 4) = v100;
    *(v93 + 12) = 2082;
    v101 = v161;
    v102 = v162;
    sub_1BE4C52F4(v160, v161);
    v103 = v145;
    (*(v102 + 112))(v101, v102);
    v104 = sub_1BE54B03C();
    v106 = v105;
    v144(v103, v157);
    sub_1BE4C58A8(v160);
    v107 = sub_1BE4C5338(v104, v106, &v159);

    *(v93 + 14) = v107;
    _os_log_impl(&dword_1BE4B8000, v91, v92, "updateLLMAvailability: LLM %{public}s use case %{public}s is available", v93, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB48AC0](v94, -1, -1);
    MEMORY[0x1BFB48AC0](v93, -1, -1);

    (*(v41 + 8))(v38, v158);
  }

  else
  {

    (*(v41 + 8))(v38, v158);
    sub_1BE4C58A8(v163);
    sub_1BE4C58A8(v160);
  }

  return 0;
}

void *sub_1BE53C898(uint64_t a1)
{
  type metadata accessor for GenerativePartnerServiceProvider();
  v1 = swift_allocObject();
  result = GenerativePartnerServiceProvider.init()();
  off_1EDDD6898 = v1;
  return result;
}

double static GenerativePartnerServiceProvider.shared.getter()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  return result;
}

void sub_1BE53C930(uint64_t a1@<X8>)
{
  sub_1BE50AA7C(v1 + 16, v19);
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      sub_1BE53E7F0();
      return;
    }

    if (i >= *(v3 + 16))
    {
      break;
    }

    sub_1BE4C6918(v5, &v16);
    v7 = v17;
    v8 = v18;
    sub_1BE4C52F4(&v16, v17);
    sub_1BE4C75D0();
    v10 = v9(v7, v8);
    v12 = v11;
    if (v10 == sub_1BE54B01C() && v12 == v13)
    {

LABEL_12:

      sub_1BE4BF094(&v16, a1);
      return;
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      goto LABEL_12;
    }

    sub_1BE4C58A8(&v16);
    v5 += 40;
  }

  __break(1u);
}

void sub_1BE53CA80(uint64_t a1@<X8>)
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v4 = sub_1BE53F5FC();
  v5 = v3;
  if (!v4 && v3 == 0xE000000000000000 || (sub_1BE533A68(), (sub_1BE54CCDC() & 1) != 0))
  {
    sub_1BE53E7F0();
    sub_1BE53E9A8();

    return;
  }

  v7 = sub_1BE533A68();
  if ((sub_1BE53F5E0(v7, v8) & 1) == 0)
  {
    sub_1BE50AA7C(v1 + 16, v32);
    v19 = *(v1 + 16);
    v20 = *(v19 + 16);
    v21 = v19 + 32;

    for (i = 0; ; ++i)
    {
      if (v20 == i)
      {

        goto LABEL_23;
      }

      if (i >= *(v19 + 16))
      {
        break;
      }

      sub_1BE4C6918(v21, &v29);
      v23 = v30;
      v24 = v31;
      sub_1BE4C52F4(&v29, v30);
      sub_1BE4C75D0();
      if (v25(v23, v24) == v4 && v26 == v5)
      {

LABEL_26:

        sub_1BE4BF094(&v29, a1);
        goto LABEL_27;
      }

      v28 = sub_1BE54CCDC();

      if (v28)
      {

        goto LABEL_26;
      }

      sub_1BE4C58A8(&v29);
      v21 += 40;
    }

    __break(1u);
    goto LABEL_29;
  }

  if (qword_1EDDD6570 != -1)
  {
LABEL_29:
    sub_1BE53E598();
    swift_once();
  }

  v9 = sub_1BE54B2EC();
  sub_1BE4C52BC(v9, qword_1EDDD7078);

  v10 = sub_1BE54B2BC();
  v11 = sub_1BE54C98C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v13 = swift_slowAlloc();
    *&v29 = v13;
    *v12 = 136446210;
    v14 = sub_1BE533A68();
    v17 = sub_1BE4C5338(v14, v15, v16);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BE4B8000, v10, v11, "LLM with id %{public}s is currently selected, but unavailable", v12, 0xCu);
    sub_1BE4C58A8(v13);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    v18 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v18);
  }

  else
  {
  }

LABEL_23:
  sub_1BE53E7F0();
LABEL_27:
  sub_1BE53E9A8();
}

void sub_1BE53CD40()
{
  sub_1BE525E18();
  sub_1BE50AA7C(v1 + 16, v35);
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);
  v5 = v3 + 32;

  v6 = -1;
  while (v6 - v4 != -1)
  {
    if (++v6 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_1BE4C6918(v5, v32);
    v7 = v33;
    v8 = v34;
    sub_1BE4C52F4(v32, v33);
    sub_1BE4C75D0();
    v10 = v9(v7, v8);
    if (v10 == v2 && v11 == v0)
    {

      sub_1BE4C58A8(v32);
LABEL_15:

      type metadata accessor for GenerativePartnerServiceUserDefaults();
      v24 = sub_1BE53F5FC();
      if (v24 == v2 && v25 == v0)
      {
      }

      else
      {
        v27 = sub_1BE53E770(v24, v25);

        if ((v27 & 1) == 0)
        {
          v28 = sub_1BE4FFBD8();
          sub_1BE53F930(v28, v29);
        }
      }

      v30 = sub_1BE4FFBD8();
      sub_1BE53F998(v30, v31, 0);
      goto LABEL_23;
    }

    v5 += 40;
    v13 = sub_1BE53E770(v10, v11);

    sub_1BE4C58A8(v32);
    if (v13)
    {
      goto LABEL_15;
    }
  }

  if (qword_1EDDD6570 == -1)
  {
    goto LABEL_11;
  }

LABEL_25:
  sub_1BE53E598();
  swift_once();
LABEL_11:
  v14 = sub_1BE54B2EC();
  sub_1BE4C52BC(v14, qword_1EDDD7078);
  sub_1BE50A968();

  v15 = sub_1BE54B2BC();
  v16 = sub_1BE54C98C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = sub_1BE50AB7C();
    sub_1BE53E6B8();
    v18 = swift_slowAlloc();
    v32[0] = v18;
    *v17 = 136446210;
    v19 = sub_1BE4FFBD8();
    *(v17 + 4) = sub_1BE4C5338(v19, v20, v21);
    sub_1BE53E8FC(&dword_1BE4B8000, v22, v16, "Unable to select new llm with id: %{public}s");
    sub_1BE4C58A8(v18);
    v23 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v23);
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

LABEL_23:
  sub_1BE53E9A8();
}

uint64_t sub_1BE53CF84()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v0 = sub_1BE52C7AC();
  return sub_1BE53F998(v0, 0xE000000000000000, 0);
}

void sub_1BE53CFB8(uint64_t a1)
{
  v1 = a1;
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  sub_1BE53FA78(v1, 0);
}

void (*sub_1BE53D020(uint64_t a1))(uint64_t a1)
{
  *a1 = type metadata accessor for GenerativePartnerServiceUserDefaults();
  *(a1 + 8) = sub_1BE53FB20() & 1;
  return sub_1BE53D078;
}

uint64_t sub_1BE53D0D0()
{
  v0 = sub_1BE54AD8C();
  sub_1BE51286C(v0, qword_1EDDD7048);
  v1 = sub_1BE4D9800();
  v3 = sub_1BE4C52BC(v1, v2);
  *v3 = type metadata accessor for GenerativePartnerServiceProvider();
  sub_1BE50A884();
  v5 = *(v4 + 104);

  return v5(v3);
}

uint64_t sub_1BE53D160@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v90 = a1;
  v91 = a2;
  v80 = a3;
  v3 = sub_1BE54B07C();
  v4 = sub_1BE4C7570(v3);
  MEMORY[0x1EEE9AC00](v4, v5);
  sub_1BE4C757C();
  v88 = v7 - v6;
  v8 = sub_1BE4BF11C(&qword_1EBDAD390, &qword_1BE551940);
  v9 = sub_1BE4C7570(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4D981C();
  v81 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v82 = &v79 - v15;
  v16 = sub_1BE4BF11C(&qword_1EBDAD3E8, &qword_1BE551B80);
  v17 = sub_1BE4C7570(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v79 - v19;
  sub_1BE54AF4C();
  sub_1BE4C7500();
  MEMORY[0x1EEE9AC00](v21, v22);
  sub_1BE4C757C();
  v23 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_1BE4D981C();
  v85 = v28 - v29;
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v79 - v32;
  v34 = sub_1BE54AF1C();
  sub_1BE4C7500();
  v87 = v35;
  MEMORY[0x1EEE9AC00](v36, v37);
  sub_1BE4C757C();
  v40 = v39 - v38;
  sub_1BE54AF2C();
  sub_1BE54AF5C();
  v41 = *(v25 + 8);
  v86 = v23;
  v83 = v41;
  v84 = v25 + 8;
  v41(v33, v23);
  sub_1BE54AF3C();
  v42 = sub_1BE53E938();
  v43(v42);
  if (sub_1BE4C63BC(v20, 1, v34) == 1)
  {
    v44 = sub_1BE511848(v20, &qword_1EBDAD3E8, &qword_1BE551B80);
    sub_1BE53E030(v44, v45, v46);
    v47 = swift_allocError();
    *v48 = 1;
    swift_willThrow();
    v49 = v91;
  }

  else
  {
    v50 = v87;
    (*(v87 + 32))(v40, v20, v34);
    sub_1BE4BF11C(&qword_1EBDAD160, &qword_1BE551250);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BE54E1A0;
    *(inited + 32) = 0x65676175676E616CLL;
    *(inited + 40) = 0xE800000000000000;
    v52 = v91;

    *(inited + 48) = sub_1BE54AF0C();
    *(inited + 56) = v53;
    sub_1BE54C61C();
    v54 = v89;
    sub_1BE54B06C();
    v47 = v54;
    v49 = v52;
    if (v54)
    {
      (*(v50 + 8))(v40, v34);
    }

    else
    {
      v55 = v34;
      v56 = v82;
      sub_1BE54B09C();
      v57 = v81;
      sub_1BE53E294(v56, v81, &qword_1EBDAD390, &qword_1BE551940);
      v58 = sub_1BE54B0AC();
      if (sub_1BE4C63BC(v57, 1, v58) != 1)
      {
        sub_1BE511848(v56, &qword_1EBDAD390, &qword_1BE551940);
        (*(v50 + 8))(v40, v55);
        sub_1BE50A884();
        return (*(v78 + 32))(v80, v57, v58);
      }

      v59 = sub_1BE511848(v57, &qword_1EBDAD390, &qword_1BE551940);
      sub_1BE53E030(v59, v60, v61);
      v47 = swift_allocError();
      *v62 = 0;
      swift_willThrow();
      sub_1BE511848(v56, &qword_1EBDAD390, &qword_1BE551940);
      (*(v50 + 8))(v40, v55);
      v49 = v52;
    }
  }

  if (qword_1EDDD6570 != -1)
  {
    sub_1BE53E598();
    swift_once();
  }

  v63 = sub_1BE54B2EC();
  sub_1BE4C52BC(v63, qword_1EDDD7078);
  sub_1BE50A968();

  v64 = v47;
  v65 = sub_1BE54B2BC();
  v66 = sub_1BE54C98C();

  if (os_log_type_enabled(v65, v66))
  {
    sub_1BE53E6B8();
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v67 = 136446722;
    *(v67 + 4) = sub_1BE4C5338(v90, v49, &v92);
    *(v67 + 12) = 2082;
    v69 = v85;
    sub_1BE54AF2C();
    v70 = sub_1BE54AEFC();
    v72 = v71;
    v83(v69, v86);
    v73 = sub_1BE4C5338(v70, v72, &v92);

    *(v67 + 14) = v73;
    *(v67 + 22) = 2114;
    v74 = v47;
    v75 = _swift_stdlib_bridgeErrorToNSError();
    *(v67 + 24) = v75;
    *v68 = v75;
    _os_log_impl(&dword_1BE4B8000, v65, v66, "Unable to construct resourceBundleQuery for ModelBundle(%{public}s: locale: %{public}s. Error: %{public}@", v67, 0x20u);
    sub_1BE511848(v68, &qword_1EBDAC2F0, &qword_1BE54F880);
    v76 = sub_1BE53E5C4();
    MEMORY[0x1BFB48AC0](v76);
    swift_arrayDestroy();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
    sub_1BE53E5D4();
    MEMORY[0x1BFB48AC0]();
  }

  return swift_willThrow();
}

void sub_1BE53D884()
{
  sub_1BE525E18();
  ObjectType = swift_getObjectType();

  sub_1BE53DCCC(v2, v1, ObjectType, v0);
}

void sub_1BE53D8D0()
{
  v1 = v0;
  v2 = sub_1BE539620();
  v3 = sub_1BE5412A4();

  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = *(v1 + 24);
    sub_1BE533A68();
    sub_1BE53FE28();

    v6 = *(sub_1BE5412A4() + 16);

    if (!v6)
    {
      v7 = *(v1 + 24);
      sub_1BE53FEC0();
    }
  }
}

void sub_1BE53D9A0()
{
  v1 = v0;
  v2 = sub_1BE539620();
  v3 = sub_1BE5412A4();

  v4 = *(v3 + 16);

  if (v4)
  {
    v5 = *(v1 + 24);
    sub_1BE53FF78(v5);

    v6 = *(v1 + 24);
    sub_1BE53FEC0();
  }
}

uint64_t sub_1BE53DA44()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  if (sub_1BE53F5FC() || v0 != 0xE000000000000000)
  {
    sub_1BE4FFBD8();
    if ((sub_1BE54CCDC() & 1) == 0)
    {
      v1 = sub_1BE4FFBD8();
      if (!sub_1BE53FFBC(v1, v2))
      {
        v3 = sub_1BE4FFBD8();
        if ((sub_1BE53F5E0(v3, v4) & 1) == 0)
        {
          sub_1BE53E848();
          sub_1BE53FFC0(v5, v6, v7);
        }
      }
    }
  }
}

uint64_t GenerativePartnerServiceProvider.deinit()
{

  return v0;
}

uint64_t GenerativePartnerServiceProvider.__deallocating_deinit()
{
  GenerativePartnerServiceProvider.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t sub_1BE53DB44(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v3 = swift_task_alloc();
  v4 = sub_1BE4E4408(v3);
  *v4 = v5;
  v4[1] = sub_1BE4E3C38;

  return v7(a1);
}

uint64_t sub_1BE53DC34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1BE50B648(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_1BE4BF094(&v12, v10 + 40 * a1 + 32);
}

void sub_1BE53DCCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1BE539620();
  sub_1BE53FD60();

  v9 = *(a2 + 24);
  sub_1BE542E44(a1, v9, a3, a4);
}

unint64_t sub_1BE53E030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD3F0;
  if (!qword_1EBDAD3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD3F0);
  }

  return result;
}

uint64_t sub_1BE53E084(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v7 = *(v1 + 40);
  v6 = *(v1 + 48);
  v8 = swift_task_alloc();
  v9 = sub_1BE4E4408(v8);
  *v9 = v10;
  v9[1] = sub_1BE4DF8E8;

  return sub_1BE539D5C(a1, v3, v4, v5, v7, v6);
}

uint64_t sub_1BE53E144(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1BE54B12C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BE4E43A8;

  return sub_1BE53AE10(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1BE53E294(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4BF11C(a3, a4);
  sub_1BE50A884();
  v5 = sub_1BE4D9800();
  v6(v5);
  return a2;
}

uint64_t sub_1BE53E2F4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = swift_task_alloc();
  v5 = sub_1BE4E4408(v4);
  *v5 = v6;
  v5[1] = sub_1BE4DF8E8;

  return sub_1BE53DB44(a1, v3);
}

uint64_t sub_1BE53E3A4()
{
  sub_1BE525E18();
  v0 = sub_1BE54B12C();
  sub_1BE4C7570(v0);
  v1 = sub_1BE4FFBD8();

  return sub_1BE53B3C8(v1, v2, v3, v4, v5);
}

uint64_t sub_1BE53E41C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_BYTE *storeEnumTagSinglePayload for GenerativePartnerServiceProvider.ModelBundleError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE53E544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD408;
  if (!qword_1EBDAD408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD408);
  }

  return result;
}

void sub_1BE53E5E0()
{
  *(v4 - 168) = v1 + 56;
  v5 = 1 << *(v1 + 32);
  *(v4 - 120) = v2 + 32;
  *(v4 - 104) = v0 + 56;
  *(v4 - 96) = v2 + 16;
  *(v4 - 160) = (v5 + 63) >> 6;
  *(v4 - 152) = v3;
  *(v4 - 144) = v2;
  *(v4 - 136) = v1;
}

uint64_t sub_1BE53E770(uint64_t a1, uint64_t a2)
{

  return sub_1BE54CCDC();
}

void *sub_1BE53E7A8()
{
  v2 = *(v0 + 40);

  return sub_1BE4C52F4((v0 + 16), v2);
}

uint64_t sub_1BE53E7C4@<X0>(uint64_t a1@<X8>)
{

  return sub_1BE4C6918(v1 + 40 * a1 + 32, v2 + 16);
}

double sub_1BE53E7F0()
{
  *(v0 + 32) = 0;
  result = 0.0;
  *v0 = 0u;
  *(v0 + 16) = 0u;
  return result;
}

uint64_t sub_1BE53E8B4(uint64_t a1)
{

  return sub_1BE54C64C();
}

uint64_t sub_1BE53E8D8()
{

  return swift_beginAccess();
}

void sub_1BE53E8FC(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

void sub_1BE53E9C4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t sub_1BE53E9E4(uint64_t a1)
{

  return sub_1BE54C62C();
}

uint64_t sub_1BE53EA04()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (!qword_1EDDD7090)
  {
    return 1;
  }

  v0 = qword_1EDDD7090;
  v1 = sub_1BE54C6DC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1BE53EAA8()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v0 = qword_1EDDD7090;
    v1 = sub_1BE54C6DC();
    v2 = sub_1BE543228();
    v4 = [v2 v3];
  }

  else
  {
    v4 = 0;
  }

  type metadata accessor for LegacyGATUserDefaults();
  v5 = sub_1BE5376F4(2);
  v6 = v5 & 1;
  if (v4 != v6 && qword_1EDDD7090)
  {
    v7 = v5;
    v8 = qword_1EDDD7090;
    v9 = sub_1BE54337C();
    [v4 setBool:v7 & 1 forKey:v9];
  }

  return v6;
}

void sub_1BE53EBAC(char a1, char a2)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v5 = qword_1EDDD7090;
    v6 = sub_1BE54337C();
    [v2 setBool:a1 & 1 forKey:v6];
  }

  if ((a2 & 1) == 0)
  {
    type metadata accessor for LegacyGATUserDefaults();
    sub_1BE537594(a1 & 1, 2);
    if (a1)
    {
      sub_1BE537594(1, 5);
    }
  }
}

void sub_1BE53EC68(NSObject *a1, uint64_t a2)
{
  v3 = v2;
  v6 = qword_1EBDAD410;
  v7 = off_1EBDAD418;

  LOBYTE(v6) = sub_1BE540798(v6, v7);

  oslog = a1;
  v8 = sub_1BE540798(a1, a2);
  v9 = v8;
  if (v6)
  {
    if (v8)
    {
      goto LABEL_25;
    }

    v10 = 1;
  }

  else
  {
    sub_1BE543284();
    if (!v11)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v12 = sub_1BE54B2EC();
    sub_1BE52C7B8(v12, qword_1EDDD7030);
    v13 = sub_1BE54B2BC();
    v14 = sub_1BE54C98C();
    v105 = v3;
    if (os_log_type_enabled(v13, v14))
    {
      v15 = sub_1BE50AB7C();
      v16 = sub_1BE50AAC4();
      *&v112 = v16;
      *v15 = 136446210;
      v18 = qword_1EBDAD410;
      v17 = off_1EBDAD418;

      v19 = sub_1BE4C5338(v18, v17, &v112);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_1BE4B8000, v13, v14, "Missing target shared prefs read-write entitlement for %{public}s. Performing manual read/write check...", v15, 0xCu);
      sub_1BE4C58A8(v16);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    sub_1BE54085C();
    v21 = v20;
    v22 = sub_1BE54B2BC();
    v23 = sub_1BE54C9AC();
    if (sub_1BE5432D8(v23))
    {
      v24 = swift_slowAlloc();
      v25 = v9;
      v26 = sub_1BE50AAC4();
      *&v112 = v26;
      *v24 = 136446466;
      v27 = qword_1EBDAD410;
      v28 = off_1EBDAD418;

      v29 = sub_1BE4C5338(v27, v28, &v112);

      *(v24 + 4) = v29;
      *(v24 + 12) = 1026;
      v10 = v21;
      *(v24 + 14) = v21 & 1;
      _os_log_impl(&dword_1BE4B8000, v22, v23, "read/write shared prefs access for %{public}s confirmed: %{BOOL,public}d", v24, 0x12u);
      sub_1BE4C58A8(v26);
      v9 = v25;
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
      v10 = v21;
    }

    LOBYTE(v3) = v105;
    if (v9)
    {
      if (v10)
      {
        goto LABEL_25;
      }

LABEL_13:
      sub_1BE543284();
      if (!v11)
      {
        sub_1BE533A24(&qword_1EDDD63E0);
      }

      v30 = sub_1BE54B2EC();
      sub_1BE52C7B8(v30, qword_1EDDD7030);
      osloga = sub_1BE54B2BC();
      v31 = sub_1BE54C98C();
      if (os_log_type_enabled(osloga, v31))
      {
        v32 = sub_1BE5433D4();
        *v32 = 0;
        _os_log_impl(&dword_1BE4B8000, osloga, v31, "Full read/write access is not confirmed; please file a radar for this process", v32, 2u);
        sub_1BE4C75DC();
      }

      v33 = osloga;
      goto LABEL_33;
    }
  }

  sub_1BE543284();
  if (!v11)
  {
    sub_1BE533A24(&qword_1EDDD63E0);
  }

  v34 = sub_1BE54B2EC();
  sub_1BE52C7B8(v34, qword_1EDDD7030);

  v35 = sub_1BE54B2BC();
  sub_1BE54C98C();
  sub_1BE5433BC();
  if (os_log_type_enabled(v35, v3))
  {
    v36 = sub_1BE50AB7C();
    v37 = sub_1BE50AAC4();
    *&v112 = v37;
    *v36 = 136446210;
    v38 = sub_1BE533A68();
    *(v36 + 4) = sub_1BE4C5338(v38, v39, v40);
    _os_log_impl(&dword_1BE4B8000, v35, v3, "Missing legacy shared prefs entitlement for %{public}s. Performing manual read/write check...", v36, 0xCu);
    sub_1BE4C58A8(v37);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  sub_1BE533A68();
  sub_1BE540D24();
  v42 = v41;

  v43 = sub_1BE54B2BC();
  sub_1BE54C9AC();
  sub_1BE5433BC();
  if (os_log_type_enabled(v43, v3))
  {
    v44 = swift_slowAlloc();
    v45 = sub_1BE50AAC4();
    *&v112 = v45;
    *v44 = 136446466;
    v46 = sub_1BE533A68();
    *(v44 + 4) = sub_1BE4C5338(v46, v47, v48);
    *(v44 + 12) = 1026;
    *(v44 + 14) = v42 & 1;
    _os_log_impl(&dword_1BE4B8000, v43, v3, "read/write shared prefs access for %{public}s confirmed: %{BOOL,public}d", v44, 0x12u);
    sub_1BE4C58A8(v45);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  if ((v10 & v42 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_25:
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v106 = qword_1EDDD7090;
    v49 = sub_1BE54C6DC();
    v50 = [v106 BOOLForKey:v49];

    if (v50)
    {
      goto LABEL_32;
    }

    v51 = sub_1BE54C6DC();
    sub_1BE54329C();
    [v52 v53];

    v54 = sub_1BE53F5FC();
    v56 = v55;

    v57 = HIBYTE(v56) & 0xF;
    if ((v56 & 0x2000000000000000) == 0)
    {
      v57 = v54 & 0xFFFFFFFFFFFFLL;
    }

    if (v57)
    {
      goto LABEL_32;
    }

    v58 = [objc_opt_self() standardUserDefaults];
    v59 = sub_1BE54C6DC();
    v60 = [v58 persistentDomainForName_];

    if (v60)
    {
      v61 = sub_1BE54C5FC();

      v62 = sub_1BE543308();
      sub_1BE50B814(v62, 0xE900000000000064, v61, &v112);
      if (v113)
      {
        if (sub_1BE543234(v63, v64, v65, MEMORY[0x1E69E6370], v66, v67, v68, v69, v105, v106, oslog, v110, SWORD2(v110), SBYTE6(v110), SHIBYTE(v110), v112) && (v110 & 0x100000000000000) != 0)
        {
          sub_1BE543284();
          if (!v11)
          {
            sub_1BE533A24(&qword_1EDDD63E0);
          }

          v70 = sub_1BE54B2EC();
          sub_1BE52C7B8(v70, qword_1EDDD7030);

          v71 = sub_1BE54B2BC();
          v72 = sub_1BE54C9AC();

          if (os_log_type_enabled(v71, v72))
          {
            v73 = sub_1BE50AAC4();
            *&v112 = swift_slowAlloc();
            *v73 = 136446722;
            v74 = sub_1BE54CE0C();
            v76 = sub_1BE4C5338(v74, v75, &v112);

            *(v73 + 4) = v76;
            *(v73 + 12) = 2082;
            *(v73 + 14) = sub_1BE54339C("migrateLegacyUserDefaults(from:)", v105, v106, oslog, v110);
            *(v73 + 22) = 2082;
            v77 = sub_1BE54C60C();
            v79 = sub_1BE4C5338(v77, v78, &v112);

            *(v73 + 24) = v79;
            _os_log_impl(&dword_1BE4B8000, v71, v72, "%{public}s.%{public}s: first run - migrating legacy GenerativeAssistantSettings: %{public}s", v73, 0x20u);
            swift_arrayDestroy();
            sub_1BE4C75DC();
            sub_1BE4C75DC();
          }

          v80 = sub_1BE54B01C();
          sub_1BE53F998(v80, v81, 1);
        }
      }

      else
      {
        sub_1BE537874(&v112);
      }

      v89 = sub_1BE5431C4();
      sub_1BE50B814(v89, v90, v61, &v112);
      if (v113)
      {
        if (sub_1BE543234(v91, v92, v93, MEMORY[0x1E69E6370], v94, v95, v96, v97, v105, v106, oslog, v110, SWORD2(v110), SBYTE6(v110), SHIBYTE(v110), v112))
        {
          sub_1BE53FA78(SHIBYTE(v110), 1);
        }
      }

      else
      {
        sub_1BE537874(&v112);
      }

      sub_1BE50B814(0xD000000000000016, 0x80000001BE552840, v61, &v112);

      if (!v113)
      {

        sub_1BE537874(&v112);
        return;
      }

      if (sub_1BE543234(v98, v99, v100, MEMORY[0x1E69E6370], v101, v102, v103, v104, v105, v106, oslog, v110, SWORD2(v110), SBYTE6(v110), SHIBYTE(v110), v112))
      {
        sub_1BE53EBAC(v111, 1);
      }
    }

    else
    {
      sub_1BE543284();
      if (!v11)
      {
        sub_1BE533A24(&qword_1EDDD63E0);
      }

      v82 = sub_1BE54B2EC();
      sub_1BE52C7B8(v82, qword_1EDDD7030);
      v83 = sub_1BE54B2BC();
      v84 = sub_1BE54C9AC();
      if (!sub_1BE5432D8(v84))
      {

LABEL_32:
        v33 = v106;
LABEL_33:

        return;
      }

      v85 = swift_slowAlloc();
      *&v112 = swift_slowAlloc();
      *v85 = 136446466;
      v86 = sub_1BE54CE0C();
      v88 = sub_1BE4C5338(v86, v87, &v112);

      *(v85 + 4) = v88;
      *(v85 + 12) = 2082;
      *(v85 + 14) = sub_1BE54339C("migrateLegacyUserDefaults(from:)", v105, v106, oslog, v110);
      _os_log_impl(&dword_1BE4B8000, v83, v84, "%{public}s.%{public}s: first run - no legacy GenerativeAssistantSettings found", v85, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }
  }
}

uint64_t sub_1BE53F5FC()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (!qword_1EDDD7090)
  {
    return 0;
  }

  v0 = qword_1EDDD7090;
  v1 = sub_1BE543194();
  v2 = sub_1BE543228();
  v4 = [v2 v3];

  if (!v4)
  {
    return 0;
  }

  v5 = sub_1BE54C70C();

  return v5;
}

void sub_1BE53F6AC()
{
  sub_1BE543290();
  swift_getObjectType();
  v2 = *(sub_1BE5412A4() + 16);

  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = v3 + 32;

      do
      {
        sub_1BE51196C(v5, &v13);
        if (swift_unknownObjectWeakLoadStrong())
        {
          v1();
          swift_unknownObjectRelease();
        }

        sub_1BE5119C8(&v13);
        v5 += 16;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v6 = sub_1BE54B2EC();
    sub_1BE52C7B8(v6, qword_1EDDD7030);
    oslog = sub_1BE54B2BC();
    v7 = sub_1BE54C97C();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v8 = 136446466;
      v9 = sub_1BE54CE0C();
      v11 = sub_1BE4C5338(v9, v10, &v13);

      *(v8 + 4) = v11;
      *(v8 + 12) = 2082;
      *(v8 + 14) = sub_1BE4C5338(0xD000000000000013, 0x80000001BE555DF0, &v13);
      _os_log_impl(&dword_1BE4B8000, oslog, v7, "%{public}s.%{public}s: no observers registered.", v8, 0x16u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    else
    {
    }
  }
}

uint64_t sub_1BE53F8D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = sub_1BE540440(a2, a3);

  return sub_1BE540608(v6, v5, a2, a3);
}

uint64_t sub_1BE53F930(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE540440(a1, a2);
  sub_1BE540440(a1, a2);
  result = v4 + 1;
  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    v7 = v5 & 1;

    return sub_1BE540608(result, v7, a1, a2);
  }

  return result;
}

uint64_t sub_1BE53F998(uint64_t a1, uint64_t a2, char a3)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v6 = qword_1EDDD7090;
    v7 = sub_1BE54C6DC();
    v8 = sub_1BE543194();
    [v6 setObject:v7 forKey:v8];
  }

  if ((a3 & 1) == 0)
  {
    type metadata accessor for LegacyGATUserDefaults();
    sub_1BE537650(a1, a2);
  }

  return notify_post("com.apple.generativepartnerservicesettings");
}

void sub_1BE53FA78(char a1, char a2)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v4 = qword_1EDDD7090;
    sub_1BE5431C4();
    v5 = sub_1BE54C6DC();
    [v4 setBool:a1 & 1 forKey:v5];
  }

  if ((a2 & 1) == 0)
  {
    type metadata accessor for LegacyGATUserDefaults();
    sub_1BE537594(a1 & 1, 1);
  }
}

id sub_1BE53FB20()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (!qword_1EDDD7090)
  {
    return 0;
  }

  v0 = qword_1EDDD7090;
  sub_1BE5431C4();
  v1 = sub_1BE54C6DC();
  v2 = [v0 BOOLForKey_];

  return v2;
}

uint64_t sub_1BE53FBB0()
{
  sub_1BE54CADC();
  sub_1BE543350();
  MEMORY[0x1BFB47CA0](0xD000000000000010);
  v0 = sub_1BE53F5FC();
  MEMORY[0x1BFB47CA0](v0);

  sub_1BE543350();
  MEMORY[0x1BFB47CA0](0xD000000000000010);
  v1 = sub_1BE53FB20();
  v2 = (v1 & 1) == 0;
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  MEMORY[0x1BFB47CA0](v3, v4);

  sub_1BE543350();
  MEMORY[0x1BFB47CA0]();
  v5 = sub_1BE53EAA8();
  v6 = (v5 & 1) == 0;
  if (v5)
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (v6)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE400000000000000;
  }

  MEMORY[0x1BFB47CA0](v7, v8);

  sub_1BE543350();
  MEMORY[0x1BFB47CA0]();
  sub_1BE5404AC();
  sub_1BE4BF11C(&qword_1EBDAD440, &qword_1BE551D20);
  v9 = sub_1BE54C60C();
  v11 = v10;

  MEMORY[0x1BFB47CA0](v9, v11);

  return 0;
}

void sub_1BE53FD60()
{
  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving;
  if ((*(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving) & 1) == 0)
  {
    if (qword_1EDDD68A0 != -1)
    {
      sub_1BE543164(&qword_1EDDD68A0);
    }

    if (qword_1EDDD7090)
    {
      v2 = qword_1EDDD7090;
      v3 = sub_1BE543194();
      v4 = sub_1BE543204();
      [v4 v5];

      sub_1BE543214();
      v6 = sub_1BE54C6DC();
      v7 = sub_1BE543204();
      [v7 v8];

      *(v0 + v1) = 1;
    }
  }
}

uint64_t sub_1BE53FE28()
{
  sub_1BE543290();
  v5 = sub_1BE5412A4();
  swift_unknownObjectRetain();
  result = sub_1BE542AA0(&v5, v2, v1);
  v4 = *(v5 + 16);
  if (v4 < result)
  {
    __break(1u);
  }

  else
  {
    sub_1BE542CD4(result, v4);
    *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers) = v5;
  }

  return result;
}

void sub_1BE53FEC0()
{
  v1 = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving;
  if (*(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving) == 1)
  {
    if (qword_1EDDD68A0 != -1)
    {
      sub_1BE543164(&qword_1EDDD68A0);
    }

    if (qword_1EDDD7090)
    {
      v2 = qword_1EDDD7090;
      v3 = sub_1BE543194();
      v4 = sub_1BE543204();
      [v4 v5];

      sub_1BE543214();
      v6 = sub_1BE54C6DC();
      v7 = sub_1BE543204();
      [v7 v8];

      *(v0 + v1) = 0;
    }
  }
}

uint64_t sub_1BE53FF78(uint64_t a1)
{
  sub_1BE5412A4();

  *(v1 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers) = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1BE53FFC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1BE543290();
  sub_1BE540440(v6, v7);
  v9 = v8 & 1;

  return sub_1BE540608(v4, v9, v3, a3);
}

id sub_1BE540018()
{
  result = sub_1BE540038();
  qword_1EDDD7090 = result;
  return result;
}

id sub_1BE540038()
{
  v0 = qword_1EBDAD410;
  v1 = off_1EBDAD418;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v2 = sub_1BE537810(v0, v1);
  sub_1BE4BF11C(&qword_1EBDAD438, &unk_1BE551D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE551C80;
  strcpy((inited + 32), "selectedLLMId");
  *(inited + 46) = -4864;
  v4 = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6F72507075746573;
  *(inited + 88) = 0xEB0000000074706DLL;
  v5 = MEMORY[0x1E69E6370];
  *(inited + 96) = 1;
  *(inited + 120) = v5;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x80000001BE552840;
  *(inited + 144) = 1;
  *(inited + 168) = v5;
  *(inited + 176) = 0xD000000000000027;
  *(inited + 184) = 0x80000001BE555D20;
  *(inited + 216) = v5;
  *(inited + 192) = 1;
  sub_1BE54C61C();
  if (v2)
  {
    v6 = v2;
    v7 = sub_1BE54C5DC();

    [v6 registerDefaults_];
  }

  else
  {
  }

  return v2;
}

id sub_1BE5401F8()
{
  ObjectType = swift_getObjectType();
  sub_1BE53FEC0();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BE540278(uint64_t a1)
{
  v6 = sub_1BE50B814(0x656D656C62616E65, 0xEF746E756F43746ELL, a1, &v14);
  if (v15)
  {
    if (sub_1BE54335C(v2, v3, v4, MEMORY[0x1E69E6530], v5, v6))
    {
      v7 = v13;
      goto LABEL_6;
    }
  }

  else
  {
    sub_1BE537874(&v14);
  }

  v7 = 0;
LABEL_6:
  sub_1BE50B814(0x616C696176616E75, 0xEB00000000656C62, a1, &v14);

  if (v15)
  {
    sub_1BE54335C(v8, v9, v10, MEMORY[0x1E69E6370], v11);
  }

  else
  {
    sub_1BE537874(&v14);
  }

  return v7;
}

uint64_t sub_1BE540368(uint64_t a1, char a2)
{
  sub_1BE4BF11C(&qword_1EBDAD438, &unk_1BE551D10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BE54DC10;
  *(inited + 32) = 0x656D656C62616E65;
  *(inited + 40) = 0xEF746E756F43746ELL;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 48) = a1;
  *(inited + 72) = v5;
  *(inited + 80) = 0x616C696176616E75;
  *(inited + 88) = 0xEB00000000656C62;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = a2;
  return sub_1BE54C61C();
}

uint64_t sub_1BE540440(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE5404AC();
  v5 = sub_1BE50B878(a1, a2, v4);

  if (v5)
  {
    return sub_1BE540278(v5);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BE5404AC()
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (!qword_1EDDD7090)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1BE537874(&v6);
    goto LABEL_12;
  }

  v0 = qword_1EDDD7090;
  v1 = sub_1BE54C6DC();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1BE54CA3C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  sub_1BE4BF11C(&qword_1EBDAD450, &qword_1BE551D30);
  if (sub_1BE5432F0())
  {
    return v4;
  }

LABEL_12:
  sub_1BE4BF11C(&qword_1EBDAD440, &qword_1BE551D20);
  return sub_1BE54C61C();
}

uint64_t sub_1BE540608(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1BE5404AC();
  sub_1BE540368(a1, a2);
  swift_isUniquelyReferenced_nonNull_native();
  v8 = sub_1BE533A68();
  sub_1BE542798(v8, v9, a4, v10);
  sub_1BE5406A4(v7);
}

void sub_1BE5406A4(uint64_t a1)
{
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v1 = qword_1EDDD7090;
    sub_1BE4BF11C(&qword_1EBDAD440, &qword_1BE551D20);
    v2 = sub_1BE54C5DC();
    v3 = sub_1BE54C6DC();
    [v1 setObject:v2 forKey:v3];
  }
}

BOOL sub_1BE540798(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE52E310();
  if (v4)
  {
    v6 = v4;
    v10[0] = a1;
    v10[1] = a2;
    MEMORY[0x1EEE9AC00](v4, v5);
    v9[2] = v10;
    v7 = sub_1BE54729C(sub_1BE4E1F04, v9, v6);
  }

  else
  {
    return 0;
  }

  return v7;
}

void sub_1BE54085C()
{
  sub_1BE4FFB64();
  v0 = sub_1BE54AEDC();
  sub_1BE543254();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE4C757C();
  v7 = v6 - v5;
  if (qword_1EDDD68A0 != -1)
  {
    sub_1BE543164(&qword_1EDDD68A0);
  }

  if (qword_1EDDD7090)
  {
    v8 = qword_1EDDD7090;
    v9 = sub_1BE54C6DC();
    v10 = [v8 objectForKey:v9];

    if (!v10)
    {
      v45 = 0u;
      v46 = 0u;
      sub_1BE537874(&v45);
      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24(&qword_1EDDD63E0);
      }

      v19 = sub_1BE54B2EC();
      sub_1BE52C7B8(v19, qword_1EDDD7030);
      v20 = sub_1BE54B2BC();
      v21 = sub_1BE54C98C();
      if (sub_1BE5432D8(v21))
      {
        v22 = sub_1BE5433D4();
        *v22 = 0;
        _os_log_impl(&dword_1BE4B8000, v20, v21, "Could not find migration key in GPS domain. Cannot verify read/write access.", v22, 2u);
        sub_1BE4C75DC();
      }

      goto LABEL_35;
    }

    sub_1BE54CA3C();
    swift_unknownObjectRelease();
    sub_1BE537874(&v45);
    sub_1BE54AECC();
    sub_1BE54AEAC();
    v11 = *(v2 + 8);
    v11(v7, v0);
    sub_1BE54AECC();
    v12 = sub_1BE54AEAC();
    v14 = v13;
    v11(v7, v0);
    v15 = sub_1BE54C6DC();
    sub_1BE533A68();
    v16 = sub_1BE54C6DC();
    [v8 setValue:v15 forKey:v16];

    sub_1BE533A68();
    v17 = sub_1BE54C6DC();
    v18 = [v8 objectForKey:v17];

    if (v18)
    {
      sub_1BE54CA3C();
      swift_unknownObjectRelease();
    }

    else
    {
      v43 = 0u;
      v44 = 0u;
    }

    v45 = v43;
    v46 = v44;
    if (*(&v44 + 1))
    {
      if (sub_1BE5432F0())
      {
        if (v41 == v12 && v42 == v14)
        {

LABEL_30:
          if (qword_1EDDD63E0 != -1)
          {
            sub_1BE533A24(&qword_1EDDD63E0);
          }

          v33 = sub_1BE54B2EC();
          sub_1BE52C7B8(v33, qword_1EDDD7030);
          v26 = sub_1BE54B2BC();
          v34 = sub_1BE54C9AC();
          if (sub_1BE5432D8(v34))
          {
            *sub_1BE5433D4() = 0;
            sub_1BE543274();
            _os_log_impl(v35, v36, v37, v38, v39, 2u);
            sub_1BE4C75DC();
          }

LABEL_34:

          sub_1BE533A68();
          v40 = sub_1BE54C6DC();

          [v8 removeObjectForKey:v40];
          v20 = v8;
          v8 = v40;
LABEL_35:

          goto LABEL_36;
        }

        v24 = sub_1BE54CCDC();

        if (v24)
        {
          goto LABEL_30;
        }
      }

      else
      {
      }
    }

    else
    {

      sub_1BE537874(&v45);
    }

    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v25 = sub_1BE54B2EC();
    sub_1BE52C7B8(v25, qword_1EDDD7030);
    v26 = sub_1BE54B2BC();
    v27 = sub_1BE54C98C();
    if (sub_1BE5432D8(v27))
    {
      *sub_1BE5433D4() = 0;
      sub_1BE543274();
      _os_log_impl(v28, v29, v30, v31, v32, 2u);
      sub_1BE4C75DC();
    }

    goto LABEL_34;
  }

LABEL_36:
  sub_1BE4FFB4C();
}

void sub_1BE540D24()
{
  sub_1BE4FFB64();
  sub_1BE543290();
  v0 = sub_1BE54AEDC();
  sub_1BE543254();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE4C757C();
  v7 = v6 - v5;
  objc_allocWithZone(MEMORY[0x1E695E000]);

  v8 = sub_1BE533A68();
  v10 = sub_1BE537810(v8, v9);
  if (v10)
  {
    v11 = v10;
    sub_1BE543308();
    v12 = sub_1BE54C6DC();
    v13 = [v11 objectForKey_];

    if (v13)
    {
      sub_1BE54CA3C();
      swift_unknownObjectRelease();
      sub_1BE537874(&v60);
      sub_1BE54AECC();
      sub_1BE54AEAC();
      v14 = *(v2 + 8);
      v14(v7, v0);
      sub_1BE54AECC();
      v15 = sub_1BE54AEAC();
      v17 = v16;
      v14(v7, v0);
      v18 = sub_1BE54C6DC();
      v19 = sub_1BE54C6DC();
      [v11 setValue:v18 forKey:v19];

      v20 = sub_1BE54C6DC();
      v21 = [v11 objectForKey_];

      if (v21)
      {
        sub_1BE54CA3C();
        swift_unknownObjectRelease();
      }

      else
      {
        v58 = 0u;
        v59 = 0u;
      }

      v60 = v58;
      v61 = v59;
      if (*(&v59 + 1))
      {
        if (sub_1BE5432F0())
        {
          if (v56 == v15 && v57 == v17)
          {

LABEL_28:
            if (qword_1EDDD63E0 != -1)
            {
              sub_1BE533A24(&qword_1EDDD63E0);
            }

            v48 = sub_1BE54B2EC();
            sub_1BE52C7B8(v48, qword_1EDDD7030);

            v37 = sub_1BE54B2BC();
            sub_1BE54C98C();
            sub_1BE5433BC();
            if (os_log_type_enabled(v37, v15))
            {
              v49 = sub_1BE50AB7C();
              v50 = sub_1BE50AAC4();
              *&v60 = v50;
              *v49 = 136446210;
              v51 = sub_1BE533A68();
              *(v49 + 4) = sub_1BE4C5338(v51, v52, v53);
              sub_1BE53E9C4(&dword_1BE4B8000, v54, v55, "Verified read/write access to legacy domain (%{public}s");
              sub_1BE4C58A8(v50);
              sub_1BE4C75DC();
              sub_1BE4C75DC();
            }

LABEL_25:

            v45 = sub_1BE54C6DC();

            v46 = sub_1BE543228();
            [v46 v47];

            goto LABEL_26;
          }

          LOBYTE(v15) = sub_1BE54CCDC();

          if (v15)
          {
            goto LABEL_28;
          }
        }

        else
        {
        }
      }

      else
      {

        sub_1BE537874(&v60);
      }

      if (qword_1EDDD63E0 != -1)
      {
        sub_1BE533A24(&qword_1EDDD63E0);
      }

      v36 = sub_1BE54B2EC();
      sub_1BE52C7B8(v36, qword_1EDDD7030);

      v37 = sub_1BE54B2BC();
      sub_1BE54C98C();
      sub_1BE5433BC();
      if (os_log_type_enabled(v37, v15))
      {
        v38 = sub_1BE50AB7C();
        v39 = sub_1BE50AAC4();
        *&v60 = v39;
        *v38 = 136446210;
        v40 = sub_1BE533A68();
        *(v38 + 4) = sub_1BE4C5338(v40, v41, v42);
        sub_1BE53E9C4(&dword_1BE4B8000, v43, v44, "Could not retrieve key/value written to legacy domain (%{public}s. Cannot verify read/write access.");
        sub_1BE4C58A8(v39);
        sub_1BE4C75DC();
        sub_1BE4C75DC();
      }

      goto LABEL_25;
    }

    v60 = 0u;
    v61 = 0u;
    sub_1BE537874(&v60);
    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v22 = sub_1BE54B2EC();
    sub_1BE52C7B8(v22, qword_1EDDD7030);

    v23 = sub_1BE54B2BC();
    v24 = sub_1BE54C98C();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = sub_1BE50AB7C();
      v26 = sub_1BE50AAC4();
      *&v60 = v26;
      *v25 = 136446210;
      v27 = sub_1BE533A68();
      *(v25 + 4) = sub_1BE4C5338(v27, v28, v29);
      sub_1BE543274();
      _os_log_impl(v30, v31, v32, v33, v34, 0xCu);
      sub_1BE4C58A8(v26);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }
  }

LABEL_26:
  sub_1BE4FFB4C();
}

uint64_t sub_1BE5412A4()
{
  if (*(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers))
  {
    v1 = *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC0];
    *(v0 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers) = MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void sub_1BE5412EC()
{
  sub_1BE4FFB64();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  ObjectType = swift_getObjectType();
  v11 = sub_1BE5412A4();
  v12 = *(v11 + 16);
  if (!v12)
  {

    v14 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      goto LABEL_11;
    }

LABEL_35:

    v38 = 0;
    goto LABEL_36;
  }

  v63 = v10;
  v64 = v6;
  v65 = v4;
  v67 = v2;
  v13 = v11 + 32;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_1BE51196C(v13, &v72);
    sub_1BE51196C(&v72, &v74);
    Strong = swift_unknownObjectWeakLoadStrong();
    v16 = v75;
    sub_1BE5119C8(&v74);
    sub_1BE5119C8(&v72);
    if (Strong)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BE54329C();
        v14 = sub_1BE5422E4(v19, v20, v21, v22);
      }

      v17 = v14[2];
      if (v17 >= v14[3] >> 1)
      {
        sub_1BE54329C();
        v14 = sub_1BE5422E4(v23, v24, v25, v26);
      }

      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = Strong;
      v18[5] = v16;
    }

    v13 += 16;
    --v12;
  }

  while (v12);

  v4 = v65;
  v2 = v67;
  v10 = v63;
  v6 = v64;
  if (!v8)
  {
    goto LABEL_35;
  }

LABEL_11:
  v28 = v10 == sub_1BE5432B4() && v8 == v27;
  if (!v28 && (sub_1BE54CCDC() & 1) == 0)
  {
    v56 = v10 == sub_1BE543214() && v8 == 0xE700000000000000;
    if (v56 || (sub_1BE54CCDC() & 1) != 0)
    {
      if (v4)
      {
        sub_1BE50B9D8(v4, &v72, *MEMORY[0x1E696A4F0]);
        if (*(&v73 + 1))
        {
          if (sub_1BE5432F0())
          {
            v57 = v14[2];
            if (v57)
            {
              v58 = v74;
              v59 = v14 + 5;
              do
              {
                v60 = *v59;
                v61 = swift_getObjectType();
                v62 = *(v60 + 16);
                swift_unknownObjectRetain();
                v62(v58, v61, v60);
                swift_unknownObjectRelease();
                v59 += 2;
                --v57;
              }

              while (v57);
            }
          }

          goto LABEL_33;
        }

        goto LABEL_55;
      }

LABEL_51:

      v72 = 0u;
      v73 = 0u;
LABEL_56:
      sub_1BE537874(&v72);
      goto LABEL_57;
    }

    v38 = sub_1BE54C6DC();
LABEL_36:
    sub_1BE541A00(v6, &v72);
    v42 = *(&v73 + 1);
    if (*(&v73 + 1))
    {
      sub_1BE4C52F4(&v72, *(&v73 + 1));
      sub_1BE543254();
      v44 = v43;
      MEMORY[0x1EEE9AC00](v45, v46);
      sub_1BE4C757C();
      v49 = v48 - v47;
      (*(v44 + 16))(v48 - v47);
      v50 = sub_1BE54CCBC();
      (*(v44 + 8))(v49, v42);
      sub_1BE4C58A8(&v72);
      if (v4)
      {
LABEL_38:
        type metadata accessor for NSKeyValueChangeKey(0, v39, v40, v41);
        sub_1BE5419A8(v51, v52, v53, v54);
        v55 = sub_1BE54C5DC();
LABEL_54:
        v71.receiver = v0;
        v71.super_class = ObjectType;
        objc_msgSendSuper2(&v71, sel_observeValueForKeyPath_ofObject_change_context_, v38, v50, v55, v2);

        swift_unknownObjectRelease();
        goto LABEL_57;
      }
    }

    else
    {
      v50 = 0;
      if (v4)
      {
        goto LABEL_38;
      }
    }

    v55 = 0;
    goto LABEL_54;
  }

  if (!v4)
  {
    goto LABEL_51;
  }

  sub_1BE50B9D8(v4, &v72, *MEMORY[0x1E696A4F0]);
  if (!*(&v73 + 1))
  {
LABEL_55:

    goto LABEL_56;
  }

  if (sub_1BE5432F0())
  {
    v29 = v14[2];
    if (v29)
    {
      v30 = v74;
      v66 = v75;
      if (v74)
      {
        v31 = 0;
      }

      else
      {
        v31 = v75 == 0xE000000000000000;
      }

      v32 = v31;
      v68 = v32;
      v33 = v14 + 5;
      v70 = v74;
      do
      {
        v34 = *v33;
        if (v68 & 1) != 0 || (v35 = v66, (sub_1BE54CCDC()))
        {
          v30 = 0;
          v35 = 0;
        }

        else
        {
        }

        v36 = swift_getObjectType();
        v37 = *(v34 + 8);
        swift_unknownObjectRetain();
        v37(v30, v35, v36, v34);
        swift_unknownObjectRelease();

        v33 += 2;
        --v29;
        v30 = v70;
      }

      while (v29);
    }
  }

LABEL_33:

LABEL_57:
  sub_1BE4FFB4C();
}

id sub_1BE541900()
{
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers] = 0;
  v0[OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults_isObserving] = 0;
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_init);
}

unint64_t sub_1BE5419A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = qword_1EBDABDC8;
  if (!qword_1EBDABDC8)
  {
    type metadata accessor for NSKeyValueChangeKey(255, a2, a3, a4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDABDC8);
  }

  return result;
}

uint64_t sub_1BE541A00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDAD3A0, &qword_1BE5519D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void *sub_1BE541A70(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1BE542414(v9, a2, &qword_1EBDAD478, &qword_1BE551D68, type metadata accessor for OBKSheetData.BulletPoint);
  v11 = *(type metadata accessor for OBKSheetData.BulletPoint(0) - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1BE54256C(a4 + v12, v9, v10 + v12, type metadata accessor for OBKSheetData.BulletPoint);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BE541B94()
{
  sub_1BE543330();
  if (v3)
  {
    sub_1BE5431F4();
    if (v5 != v6)
    {
      sub_1BE5432A8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  else
  {
    v4 = v2;
  }

  v7 = *(v0 + 2);
  if (v4 <= v7)
  {
    v8 = *(v0 + 2);
  }

  else
  {
    v8 = v4;
  }

  if (v8)
  {
    sub_1BE4BF11C(&qword_1EBDAD2C8, &qword_1BE551728);
    v9 = swift_allocObject();
    v10 = j__malloc_size(v9);
    *(v9 + 2) = v7;
    *(v9 + 3) = 2 * ((v10 - 32) / 24);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v11 = v9 + 32;
  v12 = v0 + 32;
  if (v1)
  {
    if (v9 != v0 || &v12[24 * v7] <= v11)
    {
      memmove(v11, v12, 24 * v7);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1BE541C90(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = a2;
  v6 = result;
  if (a3)
  {
    v7 = *(a4 + 24);
    a2 = v7 >> 1;
    if ((v7 >> 1) < v5)
    {
      if (a2 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
      if (v8 <= v5)
      {
        a2 = v5;
      }

      else
      {
        a2 = v8;
      }
    }
  }

  v9 = *(a4 + 16);
  v10 = sub_1BE542414(v9, a2, &qword_1EBDAC308, &qword_1BE551D60, MEMORY[0x1E6968178]);
  v11 = *(sub_1BE54ACDC() - 8);
  if (v6)
  {
    v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    sub_1BE54256C(a4 + v12, v9, v10 + v12, MEMORY[0x1E6968178]);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BE541DB4()
{
  sub_1BE543330();
  if (v4)
  {
    sub_1BE5431F4();
    if (v5 != v6)
    {
      sub_1BE5432A8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  sub_1BE543264();
  if (v3)
  {
    sub_1BE4BF11C(&qword_1EBDAD460, &qword_1BE551D40);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    *(v7 + 2) = v2;
    *(v7 + 3) = 2 * ((v8 - 32) / 32);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[32 * v2] <= v9)
    {
      memmove(v9, v10, 32 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void sub_1BE541ED4(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = a1;
  if ((a3 & 1) == 0)
  {
    v9 = a2;
    goto LABEL_7;
  }

  sub_1BE5431F4();
  if (v10 == v11)
  {
LABEL_7:
    v12 = *(a4 + 16);
    if (v9 <= v12)
    {
      v13 = *(a4 + 16);
    }

    else
    {
      v13 = v9;
    }

    if (v13)
    {
      sub_1BE4BF11C(a5, a6);
      v14 = swift_allocObject();
      j__malloc_size(v14);
      sub_1BE54331C();
      v14[2] = v12;
      v14[3] = v15;
      if (v8)
      {
LABEL_12:
        sub_1BE542634(a4 + 32, v12, (v14 + 4));
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v8)
      {
        goto LABEL_12;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_15;
  }

  sub_1BE5432A8();
  if (!v10)
  {
    sub_1BE5431E4();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_1BE541FB8()
{
  sub_1BE543330();
  if (v4)
  {
    sub_1BE5431F4();
    if (v5 != v6)
    {
      sub_1BE5432A8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  sub_1BE543264();
  if (v3)
  {
    sub_1BE4BF11C(&qword_1EBDAD2D0, &unk_1BE551730);
    v7 = swift_allocObject();
    v8 = j__malloc_size(v7);
    v7[2] = v2;
    v7[3] = 2 * ((v8 - 32) / 40);
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  if (v1)
  {
    if (v7 != v0 || &v0[5 * v2 + 4] <= v7 + 4)
    {
      memmove(v7 + 4, v0 + 4, 40 * v2);
    }

    v0[2] = 0;
  }

  else
  {
    sub_1BE4BF11C(&unk_1EBDABCB8, &qword_1BE54DE88);
    swift_arrayInitWithCopy();
  }
}

void *sub_1BE5420D0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BE4BF11C(&qword_1EBDACF60, &unk_1BE5508E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDABAF8, &qword_1BE54DC20);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void sub_1BE542208()
{
  sub_1BE543330();
  if (v4)
  {
    sub_1BE5431F4();
    if (v5 != v6)
    {
      sub_1BE5432A8();
      if (v5)
      {
        __break(1u);
        return;
      }

      sub_1BE5431E4();
    }
  }

  sub_1BE543264();
  if (v3)
  {
    sub_1BE4BF11C(&qword_1EBDAD0E0, &qword_1BE551740);
    v7 = swift_allocObject();
    j__malloc_size(v7);
    sub_1BE54331C();
    *(v7 + 2) = v2;
    *(v7 + 3) = v8;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7 + 32;
  v10 = v0 + 32;
  if (v1)
  {
    if (v7 != v0 || &v10[16 * v2] <= v9)
    {
      memmove(v9, v10, 16 * v2);
    }

    *(v0 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

void *sub_1BE5422E4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1BE4BF11C(&qword_1EBDAD430, &unk_1BE551D00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[2 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1BE4BF11C(&qword_1EBDACDA0, &qword_1BE5506B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1BE542414(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BE4BF11C(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_1BE542510(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[16 * a2] <= a3)
  {
    return sub_1BE543184(a3, result);
  }

  return result;
}

char *sub_1BE542548(char *result, uint64_t a2, char *a3)
{
  if (a3 != result || &result[24 * a2] <= a3)
  {
    return sub_1BE543184(a3, result);
  }

  return result;
}

uint64_t sub_1BE54256C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void))
{
  if (a3 < a1 || (result = a4(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    a4(0);
    v10 = sub_1BE54333C();

    return MEMORY[0x1EEE6BD00](v10);
  }

  else if (a3 != a1)
  {
    v9 = sub_1BE54333C();

    return MEMORY[0x1EEE6BCF8](v9);
  }

  return result;
}

unint64_t sub_1BE542634(unint64_t result, uint64_t a2, unint64_t a3)
{
  if (a3 < result || result + 16 * a2 <= a3)
  {
    return MEMORY[0x1EEE6BD00](a3);
  }

  if (a3 != result)
  {
    return MEMORY[0x1EEE6BCF8](a3);
  }

  return result;
}

uint64_t sub_1BE5426A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v6;
  if (!result || a1 > *(v6 + 24) >> 1)
  {
    result = a3();
    *v3 = result;
  }

  return result;
}

void sub_1BE542718(uint64_t a1, char a2)
{
  v5 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!isUniquelyReferenced_nonNull_native || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    sub_1BE541ED4(isUniquelyReferenced_nonNull_native, v7, a2 & 1, v5, &qword_1EBDAD458, &qword_1BE551D38, &type metadata for GenerativePartnerServiceUserDefaults.ObserverWeakReference);
    *v2 = v8;
  }
}

uint64_t sub_1BE542798(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1BE52F67C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  sub_1BE4BF11C(&qword_1EBDAD448, &qword_1BE551D28);
  if ((sub_1BE54CBAC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1BE52F67C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    result = sub_1BE54CCFC();
    __break(1u);
    return result;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1BE542A0C(v12, a2, a3, a1, v16);
  }
}

uint64_t sub_1BE5428D4()
{
  sub_1BE4FFB64();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  sub_1BE543290();
  v8 = *v0;
  v11 = sub_1BE52F67C(v9, v10);
  if (__OFADD__(v8[2], (v12 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v13 = v11;
  v14 = v12;
  sub_1BE4BF11C(&qword_1EBDAD470, &qword_1BE551D58);
  if ((sub_1BE54CBAC() & 1) == 0)
  {
    goto LABEL_5;
  }

  v15 = sub_1BE52F67C(v7, v5);
  if ((v14 & 1) != (v16 & 1))
  {
LABEL_13:
    result = sub_1BE54CCFC();
    __break(1u);
    return result;
  }

  v13 = v15;
LABEL_5:
  v17 = *v3;
  if (v14)
  {
    v18 = (v17[7] + 16 * v13);
    *v18 = v2;
    v18[1] = v1;
    sub_1BE4FFB4C();
  }

  else
  {
    sub_1BE542A54(v13, v7, v5, v2, v1, v17);
    sub_1BE4FFB4C();
  }
}

unint64_t sub_1BE542A0C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1BE542A54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1BE542AA0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  swift_unknownObjectRetain();
  result = sub_1BE542C3C(v7, a2);
  if (v3)
  {
    swift_unknownObjectRelease();
    return v4;
  }

  if (v9)
  {
    v4 = *(v7 + 16);
LABEL_5:
    swift_unknownObjectRelease();
    return v4;
  }

  v4 = result;
  v10 = result + 1;
  if (!__OFADD__(result, 1))
  {
    for (i = 16 * result + 48; ; i += 16)
    {
      v12 = *(v7 + 16);
      if (v10 == v12)
      {
        goto LABEL_5;
      }

      if (v10 >= v12)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
LABEL_29:
        __break(1u);
        break;
      }

      sub_1BE51196C(v7 + i, v18);
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v14 = Strong;
        swift_unknownObjectRelease();
        result = sub_1BE5119C8(v18);
        if (v14 == a2)
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = sub_1BE5119C8(v18);
      }

      if (v10 != v4)
      {
        if ((v4 & 0x8000000000000000) != 0)
        {
          goto LABEL_26;
        }

        v15 = *(v7 + 16);
        if (v4 >= v15)
        {
          goto LABEL_27;
        }

        result = sub_1BE51196C(v7 + 32 + 16 * v4, v18);
        if (v10 >= v15)
        {
          goto LABEL_28;
        }

        sub_1BE51196C(v7 + i, v17);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BE542DCC(v7);
          v7 = v16;
        }

        result = sub_1BE542E0C(v17, v7 + 16 * v4 + 32);
        if (v10 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        result = sub_1BE542E0C(v18, v7 + i);
        *a1 = v7;
      }

      ++v4;
LABEL_24:
      ++v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BE542C3C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  for (i = a1 + 32; ; i += 16)
  {
    if (v4 == v3)
    {
      v8 = 0;
      goto LABEL_8;
    }

    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v7 = Strong;
      swift_unknownObjectRelease();
      if (v7 == a2)
      {
        break;
      }
    }

    ++v3;
  }

  v8 = v3;
LABEL_8:
  swift_unknownObjectRelease();
  return v8;
}

uint64_t sub_1BE542CD4(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v5 = result;
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = v4 - v6;
  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_1BE542718(result, 1);
  v8 = *v2;
  v9 = *v2 + 32;
  v10 = v9 + 16 * v5;
  result = swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return result;
  }

  v11 = *(v8 + 16);
  if (__OFSUB__(v11, a2))
  {
    goto LABEL_16;
  }

  result = sub_1BE542634(v9 + 16 * a2, v11 - a2, v10);
  v12 = *(v8 + 16);
  v13 = __OFADD__(v12, v7);
  v14 = v12 - v6;
  if (!v13)
  {
    *(v8 + 16) = v14;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
  return result;
}

void sub_1BE542E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v8 = sub_1BE5412A4();
  v9 = v8;
  v10 = *(v8 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = v8 + 32;
    while (1)
    {
      if (v11 >= *(v9 + 16))
      {
        __break(1u);
        goto LABEL_17;
      }

      sub_1BE51196C(v12, &v43);
      Strong = swift_unknownObjectWeakLoadStrong();
      sub_1BE5119C8(&v43);
      if (Strong)
      {
        swift_unknownObjectRelease();
        if (Strong == a1)
        {
          break;
        }
      }

      ++v11;
      v12 += 16;
      if (v10 == v11)
      {
        goto LABEL_7;
      }
    }

    if (qword_1EDDD63E0 != -1)
    {
      sub_1BE533A24(&qword_1EDDD63E0);
    }

    v16 = sub_1BE54B2EC();
    sub_1BE52C7B8(v16, qword_1EDDD7030);
    swift_unknownObjectRetain();
    v17 = sub_1BE54B2BC();
    v18 = sub_1BE54C98C();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = sub_1BE50AAC4();
      v42 = swift_slowAlloc();
      *v19 = 136446722;
      v20 = sub_1BE54CE0C();
      v22 = sub_1BE4C5338(v20, v21, &v42);

      *(v19 + 4) = v22;
      *(v19 + 12) = 2082;
      *(v19 + 14) = sub_1BE4C5338(0xD000000000000014, 0x80000001BE554D40, &v42);
      *(v19 + 22) = 2082;
      v43 = a1;
      v44 = a4;
      swift_unknownObjectRetain();
      sub_1BE4BF11C(&qword_1EBDACDA0, &qword_1BE5506B0);
      v23 = sub_1BE54C73C();
      v25 = sub_1BE4C5338(v23, v24, &v42);

      *(v19 + 24) = v25;
      _os_log_impl(&dword_1BE4B8000, v17, v18, "%{public}s.%{public}s: observer %{public}s already registered. Ignoring.", v19, 0x20u);
      swift_arrayDestroy();
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }
  }

  else
  {
LABEL_7:

    v44 = a4;
    swift_unknownObjectWeakInit();
    ObjectType = OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers;
    v14 = *(a2 + OBJC_IVAR____TtC26GenerativePartnerServiceUI36GenerativePartnerServiceUserDefaults____lazy_storage___observers);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_17:
      sub_1BE54329C();
      sub_1BE541ED4(v26, v27, v28, v29, v30, v31, v32);
      v14 = v33;
    }

    v15 = *(v14 + 16);
    if (v15 >= *(v14 + 24) >> 1)
    {
      sub_1BE54329C();
      sub_1BE541ED4(v34, v35, v36, v37, v38, v39, v40);
      v14 = v41;
    }

    *(v14 + 16) = v15 + 1;
    sub_1BE511A1C(&v43, v14 + 16 * v15 + 32);
    *(a2 + ObjectType) = v14;
  }
}

uint64_t sub_1BE543164(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE543194()
{

  return sub_1BE54C6DC();
}

uint64_t sub_1BE543234(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12, __int16 a13, char a14, char a15, char a16)
{

  return swift_dynamicCast();
}

BOOL sub_1BE5432D8(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t sub_1BE5432F0()
{

  return swift_dynamicCast();
}

uint64_t sub_1BE54335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{

  return swift_dynamicCast();
}

uint64_t sub_1BE54337C()
{

  return sub_1BE54C6DC();
}

unint64_t sub_1BE54339C@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return sub_1BE4C5338(v5 + 11, (a1 - 32) | 0x8000000000000000, va);
}

uint64_t sub_1BE5433BC()
{
}

uint64_t sub_1BE5433D4()
{

  return swift_slowAlloc();
}

uint64_t sub_1BE5433EC(uint64_t a1)
{
  if (a1 == 6)
  {
    v1 = &unk_1F3CCA9E8;
  }

  else
  {
    v1 = &unk_1F3CCAA10;
  }

  sub_1BE5106E4(v1);
  v3 = v2;
  v4 = [objc_opt_self() currentDevice];
  v5 = [v4 userInterfaceIdiom];

  if (v5)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v6 = &unk_1F3CCAA38;
  }

  return sub_1BE543494(v6, v3);
}

uint64_t sub_1BE543494(uint64_t a1, uint64_t a2)
{
  v8 = a2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1BE52FE34(&v7, *(a1 + v4++));
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = a2;
  }

  return v5;
}

GenerativePartnerServiceUI::LLMCapabilityForOnboardingDisplay_optional __swiftcall LLMCapabilityForOnboardingDisplay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BE54CC0C();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t LLMCapabilityForOnboardingDisplay.rawValue.getter()
{
  result = 0x65746E4969726973;
  switch(*v0)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1BE543624@<X0>(unint64_t *a1@<X8>)
{
  result = LLMCapabilityForOnboardingDisplay.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_1BE543650(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD480;
  if (!qword_1EBDAD480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD480);
  }

  return result;
}

unint64_t sub_1BE5436C0()
{
  result = qword_1EBDAD488;
  if (!qword_1EBDAD488)
  {
    sub_1BE4C5948(&qword_1EBDAD490, &qword_1BE551DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD488);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMCapabilityForOnboardingDisplay(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE54387C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD6580;
  if (!qword_1EDDD6580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6580);
  }

  return result;
}

Swift::String __swiftcall LLMProvider.localizedAttributionDisplayName()()
{
  v3 = v1;
  v4 = v0;
  v5 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  sub_1BE4C7570(v5);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BE546A24();
  v8 = sub_1BE54ADAC();
  v9 = sub_1BE4C7570(v8);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1BE4C757C();
  v13 = v12 - v11;
  (*(v3 + 200))(v4, v3);
  v14 = sub_1BE54AF6C();
  sub_1BE4C63F8(v2, 1, 1, v14);
  sub_1BE544E30(v2, v13);

  sub_1BE4E4348(v2, &qword_1EBDAD3D8, &qword_1BE551AA0);
  v15 = sub_1BE54C72C();
  result._object = v16;
  result._countAndFlagsBits = v15;
  return result;
}

Swift::String __swiftcall LLMProvider.localizedTermsTitle()()
{
  v3 = v1;
  v4 = v0;
  v34 = sub_1BE54AF6C();
  MEMORY[0x1EEE9AC00](v34, v5);
  sub_1BE4C757C();
  v6 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v33 = v7;
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BE4C757C();
  v12 = v11 - v10;
  v13 = sub_1BE54C6BC();
  v14 = sub_1BE4C7570(v13);
  MEMORY[0x1EEE9AC00](v14, v15);
  sub_1BE4C757C();
  v16 = sub_1BE54C69C();
  v17 = sub_1BE4C7570(v16);
  MEMORY[0x1EEE9AC00](v17, v18);
  sub_1BE4C757C();
  v19 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  sub_1BE4C7570(v19);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1BE546A24();
  v22 = sub_1BE54ADAC();
  v23 = sub_1BE4C7570(v22);
  MEMORY[0x1EEE9AC00](v23, v24);
  sub_1BE4C757C();
  v27 = v26 - v25;
  (*(v3 + 184))(v4, v3);
  if (v28)
  {
    sub_1BE4C63F8(v2, 1, 1, v34);
    sub_1BE544E30(v2, v27);

    sub_1BE4E4348(v2, &qword_1EBDAD3D8, &qword_1BE551AA0);
  }

  else
  {
    sub_1BE54C68C();
    sub_1BE54C67C();
    LLMProvider.localizedAttributionDisplayName()();
    sub_1BE54C66C();

    sub_1BE54C67C();
    sub_1BE54C6AC();
    if (qword_1EDDD63E8 != -1)
    {
      sub_1BE5469DC(&qword_1EDDD63E8);
    }

    v29 = sub_1BE4C52BC(v6, qword_1EDDD7048);
    (*(v33 + 16))(v12, v29, v6);
    sub_1BE54AF2C();
    sub_1BE54ADBC();
  }

  v30 = sub_1BE54C72C();
  result._object = v31;
  result._countAndFlagsBits = v30;
  return result;
}

uint64_t LLMProvider.id.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 16))(a1);
  v2 = sub_1BE54C74C();

  return v2;
}

uint64_t sub_1BE543DBC()
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  sub_1BE53CA80(&v7);
  if (v8)
  {
    sub_1BE4BF094(&v7, v9);
    v1 = v10;
    v2 = v11;
    sub_1BE4C52F4(v9, v10);
    if ((*(v2 + 8))(v1, v2) == *(v0 + 16) && v3 == *(v0 + 24))
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1BE54CCDC();
    }

    sub_1BE4C58A8(v9);
  }

  else
  {
    sub_1BE4E4348(&v7, &qword_1EBDABAF8, &qword_1BE54DC20);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t LLMProvider.isEnabled.getter(uint64_t a1, uint64_t a2)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  sub_1BE53CA80(&v13);
  if (v14)
  {
    sub_1BE4BF094(&v13, v15);
    v4 = v16;
    v5 = v17;
    sub_1BE4C52F4(v15, v16);
    v6 = (*(v5 + 8))(v4, v5);
    v8 = v7;
    if (v6 == (*(a2 + 8))(a1, a2) && v8 == v9)
    {
      v11 = 1;
    }

    else
    {
      v11 = sub_1BE54CCDC();
    }

    sub_1BE4C58A8(v15);
  }

  else
  {
    sub_1BE4E4348(&v13, &qword_1EBDABAF8, &qword_1BE54DC20);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t LLMProvider.enablementCount.getter()
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v0 = sub_1BE546A8C();
  v2 = v1(v0);
  v4 = sub_1BE53FFBC(v2, v3);

  return v4;
}

uint64_t LLMProvider.enablementCount.setter(uint64_t a1)
{
  type metadata accessor for GenerativePartnerServiceUserDefaults();
  v2 = sub_1BE546A8C();
  v4 = v3(v2);
  sub_1BE53FFC0(a1, v4, v5);
}

uint64_t (*sub_1BE544180(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1BE508994(0x28uLL);
  *a1 = v6;
  v6[4] = LLMProvider.enablementCount.modify(v6, a2, a3);
  return sub_1BE5441F4;
}

uint64_t (*LLMProvider.enablementCount.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = LLMProvider.enablementCount.getter();
  return sub_1BE54424C;
}

uint64_t sub_1BE544294(void (*a1)(void *__return_ptr))
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  a1(v13);
  if (v14)
  {
    sub_1BE4C52F4(v13, v14);
    v5 = sub_1BE546A4C();
    v7 = v6(v5);
    v9 = v8;
    sub_1BE4C58A8(v13);
    if (v3 == v7 && v4 == v9)
    {

      v11 = 1;
    }

    else
    {
      v11 = sub_1BE54CCDC();
    }
  }

  else
  {
    sub_1BE4E4348(v13, &qword_1EBDABAF8, &qword_1BE54DC20);
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1BE5443BC(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr))
{
  v4 = (*(a2 + 8))(a1);
  v6 = v5;
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  a3(v15);
  if (v16)
  {
    sub_1BE4C52F4(v15, v16);
    v7 = sub_1BE546A4C();
    v9 = v8(v7);
    v11 = v10;
    sub_1BE4C58A8(v15);
    if (v4 == v9 && v6 == v11)
    {

      v13 = 1;
    }

    else
    {
      v13 = sub_1BE54CCDC();
    }
  }

  else
  {
    sub_1BE4E4348(v15, &qword_1EBDABAF8, &qword_1BE54DC20);

    v13 = 0;
  }

  return v13 & 1;
}

id sub_1BE544508()
{
  v1 = *(v0 + 40);
  if (!v1)
  {
    return 0;
  }

  v2 = *(v0 + 32);
  sub_1BE538C8C();

  return sub_1BE544DC0(v2, v1);
}

id LLMProvider.icon.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 96))(a1);
  if (!v3)
  {
    return 0;
  }

  v4 = v2;
  v5 = v3;
  sub_1BE538C8C();
  return sub_1BE544DC0(v4, v5);
}

uint64_t sub_1BE5445DC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDDD6890 != -1)
  {
    swift_once();
  }

  return sub_1BE53D160(*(v1 + 16), *(v1 + 24), a1);
}

uint64_t LLMProvider.modelBundle()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_1EDDD6890 != -1)
  {
    sub_1BE5469C8();
    swift_once();
  }

  v6 = (*(a2 + 8))(a1, a2);
  sub_1BE53D160(v6, v7, a3);
}

uint64_t (*sub_1BE544800(void *a1, uint64_t a2, uint64_t a3))()
{
  v6 = sub_1BE508994(0x28uLL);
  *a1 = v6;
  v6[4] = LLMProvider.useConfirmationPrompts.modify(v6, a2, a3);
  return sub_1BE5469B8;
}

void sub_1BE544874(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

void (*LLMProvider.useConfirmationPrompts.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = LLMProvider.useConfirmationPrompts.getter() & 1;
  return sub_1BE54490C;
}

uint64_t sub_1BE544978()
{
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD000000000000046, 0x80000001BE555EA0);
  MEMORY[0x1BFB47CA0](*(v0 + 16), *(v0 + 24));
  sub_1BE54AE1C();
}

uint64_t LLMProvider.partnerSettingsPageDeepLink.getter()
{
  sub_1BE546A04();
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD000000000000046, 0x80000001BE555EA0);
  v0 = sub_1BE546A34();
  v2 = v1(v0);
  MEMORY[0x1BFB47CA0](v2);

  sub_1BE54AE1C();
}

uint64_t sub_1BE544ACC()
{
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD00000000000005BLL, 0x80000001BE555EF0);
  MEMORY[0x1BFB47CA0](*(v0 + 16), *(v0 + 24));
  sub_1BE54AE1C();
}

uint64_t LLMProvider.partnerSignInPageDeepLink.getter()
{
  sub_1BE546A04();
  sub_1BE54CADC();
  MEMORY[0x1BFB47CA0](0xD00000000000005BLL, 0x80000001BE555EF0);
  v0 = sub_1BE546A34();
  v2 = v1(v0);
  MEMORY[0x1BFB47CA0](v2);

  sub_1BE54AE1C();
}

uint64_t LLMProvider.termsURL.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1BE54AE3C();

  return sub_1BE4C63F8(a1, 1, 1, v2);
}

uint64_t sub_1BE544D14@<X0>(uint64_t *a1@<X8>)
{
  result = LLMProvider.enablementCount.getter();
  *a1 = result;
  return result;
}

uint64_t sub_1BE544D78@<X0>(_BYTE *a1@<X8>)
{
  result = LLMProvider.useConfirmationPrompts.getter();
  *a1 = result & 1;
  return result;
}

id sub_1BE544DC0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = sub_1BE54C6DC();
  }

  else
  {
    v2 = 0;
  }

  v3 = [swift_getObjCClassFromMetadata() _systemImageNamed_];

  return v3;
}

uint64_t sub_1BE544E30@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v31 = a3;
  v32 = a4;
  v4 = sub_1BE54AD8C();
  sub_1BE4C7500();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  sub_1BE4C757C();
  v11 = v10 - v9;
  v12 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  sub_1BE4C7570(v12);
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v30 - v15;
  v17 = sub_1BE54AF6C();
  sub_1BE4C7500();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20, v21);
  sub_1BE4C757C();
  v24 = v23 - v22;
  v25 = sub_1BE54C6BC();
  v26 = sub_1BE4C7570(v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_1BE4C757C();

  sub_1BE54C6CC();
  sub_1BE537FC8(v31, v16);
  if (sub_1BE4C63BC(v16, 1, v17) == 1)
  {
    sub_1BE54AF2C();
    if (sub_1BE4C63BC(v16, 1, v17) != 1)
    {
      sub_1BE4E4348(v16, &qword_1EBDAD3D8, &qword_1BE551AA0);
    }
  }

  else
  {
    (*(v19 + 32))(v24, v16, v17);
  }

  if (qword_1EDDD63E8 != -1)
  {
    sub_1BE5469DC(&qword_1EDDD63E8);
  }

  v28 = sub_1BE4C52BC(v4, qword_1EDDD7048);
  (*(v6 + 16))(v11, v28, v4);
  return sub_1BE54ADBC();
}

uint64_t SignInAvailability.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_1BE4BF11C(&qword_1EBDAD498, &qword_1BE551EC0);
  sub_1BE4C7500();
  v7 = v6;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v17 - v10;
  v12 = sub_1BE4C52F4(a1, a1[3]);
  sub_1BE545304(v12, v13, v14);
  sub_1BE54CDBC();
  if (!v2)
  {
    v18 = 0;
    v15 = sub_1BE54CC4C() & 1;
    (*(v7 + 8))(v11, v5);
    *a2 = v15;
  }

  return sub_1BE4C58A8(a1);
}

unint64_t sub_1BE545304(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD65C8[0];
  if (!qword_1EDDD65C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDD65C8);
  }

  return result;
}

unint64_t sub_1BE545358(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4A0;
  if (!qword_1EBDAD4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4A0);
  }

  return result;
}

uint64_t static SignInAvailability.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 >> 6)
  {
    if (v2 >> 6 == 1)
    {
      if ((v3 & 0xC0) != 0x40)
      {
        goto LABEL_9;
      }

      goto LABEL_6;
    }

    if (v3 == 128)
    {
      v4 = 1;
      return v4 & 1;
    }

LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  if (v3 >= 0x40)
  {
    goto LABEL_9;
  }

LABEL_6:
  v4 = v3 ^ v2 ^ 1;
  return v4 & 1;
}

uint64_t sub_1BE545404(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x704F6E496E676973 && a2 == 0xEE006C616E6F6974;
  if (v4 || (sub_1BE54CCDC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000011 && 0x80000001BE5560B0 == a2;
    if (v6 || (sub_1BE54CCDC() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x65526E496E676973 && a2 == 0xEE00646572697571)
    {

      return 2;
    }

    else
    {
      v8 = sub_1BE54CCDC();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1BE545540(char a1)
{
  if (!a1)
  {
    return 0x704F6E496E676973;
  }

  if (a1 == 1)
  {
    return 0xD000000000000011;
  }

  return 0x65526E496E676973;
}

uint64_t sub_1BE5455BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE545404(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BE545604@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE54552C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE54562C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545304(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BE545668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545304(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BE5456C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001FLL && 0x80000001BE5560D0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BE54CCDC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BE545760@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE4DA290();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE54578C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545D40(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BE5457C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545D40(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BE545808@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE5456A4();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1BE545834(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545C98(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BE545870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545C98(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1BE5458AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545CEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BE5458E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE545CEC(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t SignInAvailability.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1BE4BF11C(&qword_1EBDAD4A8, &qword_1BE551EC8);
  sub_1BE4C7500();
  v42 = v6;
  v43 = v5;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v7, v8);
  v40 = &v37 - v9;
  v41 = sub_1BE4BF11C(&qword_1EBDAD4B0, &qword_1BE551ED0);
  sub_1BE4C7500();
  v39 = v10;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v37 - v13;
  sub_1BE4BF11C(&qword_1EBDAD4B8, &qword_1BE551ED8);
  sub_1BE4C7500();
  v37 = v16;
  v38 = v15;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v37 - v19;
  v21 = sub_1BE4BF11C(&qword_1EBDAD4C0, &qword_1BE551EE0);
  sub_1BE4C7500();
  v23 = v22;
  sub_1BE4FFC80();
  MEMORY[0x1EEE9AC00](v24, v25);
  sub_1BE546A24();
  v26 = *v3;
  v27 = sub_1BE4C52F4(a1, a1[3]);
  sub_1BE545304(v27, v28, v29);
  v30 = sub_1BE54CDCC();
  if (!(v26 >> 6))
  {
    v44 = 0;
    sub_1BE545D40(v30, v31, v32);
    sub_1BE546A70(&type metadata for SignInAvailability.SignInOptionalCodingKeys, &v44);
    v34 = v38;
    sub_1BE54CC8C();
    (*(v37 + 8))(v20, v34);
    return (*(v23 + 8))(v2, v21);
  }

  if (v26 >> 6 == 1)
  {
    v45 = 1;
    sub_1BE545CEC(v30, v31, v32);
    sub_1BE546A70(&type metadata for SignInAvailability.SignInUnavailableCodingKeys, &v45);
    v33 = v41;
    sub_1BE54CC8C();
    (*(v39 + 8))(v14, v33);
    return (*(v23 + 8))(v2, v21);
  }

  v46 = 2;
  sub_1BE545C98(v30, v31, v32);
  v36 = v40;
  sub_1BE546A70(&type metadata for SignInAvailability.SignInRequiredCodingKeys, &v46);
  (*(v42 + 8))(v36, v43);
  return (*(v23 + 8))(v2, v21);
}

unint64_t sub_1BE545C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4C8;
  if (!qword_1EBDAD4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4C8);
  }

  return result;
}

unint64_t sub_1BE545CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4D0;
  if (!qword_1EBDAD4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4D0);
  }

  return result;
}

unint64_t sub_1BE545D40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4D8;
  if (!qword_1EBDAD4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4D8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SignInAvailability(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return v5 + 1;
  }

  if (a2 >= 0x7E)
  {
    if (a2 + 130 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 130) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 131;
    return v5 + 1;
  }

LABEL_17:
  v5 = ((*a1 >> 6) & 0xFFFFFF83 | (4 * ((*a1 >> 1) & 0x1F))) ^ 0x7F;
  if (v5 >= 0x7D)
  {
    v5 = -1;
  }

  return v5 + 1;
}

_BYTE *storeEnumTagSinglePayload for SignInAvailability(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 130 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 130) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0x7E)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0x7D)
  {
    v6 = ((a2 - 126) >> 8) + 1;
    *result = a2 - 126;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1BE5461A4(_BYTE *a1)
{
  v1 = *a1;
  if (v1 >= 0)
  {
    return *a1 >> 6;
  }

  else
  {
    return v1 & 1 | 2u;
  }
}

_BYTE *sub_1BE5461D0(_BYTE *result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *result & 1 | (a2 << 6);
  }

  else
  {
    v2 = a2 & 1 | 0x80;
  }

  *result = v2;
  return result;
}

_BYTE *sub_1BE546214(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1BE5462D0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE546310(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

_BYTE *storeEnumTagSinglePayload for SignInAvailability.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE546438(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4E0;
  if (!qword_1EBDAD4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4E0);
  }

  return result;
}

unint64_t sub_1BE546490(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4E8;
  if (!qword_1EBDAD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4E8);
  }

  return result;
}

unint64_t sub_1BE5464E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4F0;
  if (!qword_1EBDAD4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4F0);
  }

  return result;
}

unint64_t sub_1BE546540(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD4F8;
  if (!qword_1EBDAD4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD4F8);
  }

  return result;
}

unint64_t sub_1BE546598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD500;
  if (!qword_1EBDAD500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD500);
  }

  return result;
}

unint64_t sub_1BE5465F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD508;
  if (!qword_1EBDAD508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD508);
  }

  return result;
}

unint64_t sub_1BE546648(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD510;
  if (!qword_1EBDAD510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD510);
  }

  return result;
}

unint64_t sub_1BE5466A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD518;
  if (!qword_1EBDAD518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD518);
  }

  return result;
}

unint64_t sub_1BE5466F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD520;
  if (!qword_1EBDAD520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD520);
  }

  return result;
}

unint64_t sub_1BE546750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD65B8;
  if (!qword_1EDDD65B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65B8);
  }

  return result;
}

unint64_t sub_1BE5467A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD65C0;
  if (!qword_1EDDD65C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65C0);
  }

  return result;
}

uint64_t (*sub_1BE546808(uint64_t *a1))(uint64_t *a1)
{
  v3 = type metadata accessor for GenerativePartnerServiceUserDefaults();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  *a1 = sub_1BE53FFBC(v4, v5);
  return sub_1BE546868;
}

void (*sub_1BE546918(uint64_t a1))(uint64_t a1)
{
  *a1 = type metadata accessor for GenerativePartnerServiceUserDefaults();
  *(a1 + 8) = sub_1BE53EAA8() & 1;
  return sub_1BE546970;
}

uint64_t sub_1BE5469DC(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE546A70(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x1EEE6AD70](a1, a2, v2, a1);
}

uint64_t sub_1BE546AA0(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001BE5560F0 == a2)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1BE54CCDC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1BE546B40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE546AA0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1BE546B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE546D10(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BE546BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE546D10(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t LLMProviderInternalConfig.encode(to:)(void *a1)
{
  sub_1BE4BF11C(&qword_1EBDAD528, &qword_1BE552460);
  sub_1BE547160();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = sub_1BE4C52F4(a1, a1[3]);
  sub_1BE546D10(v9, v10, v11);
  sub_1BE54CDCC();
  sub_1BE54CC7C();
  return (*(v4 + 8))(v8, v1);
}

unint64_t sub_1BE546D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD65A8;
  if (!qword_1EDDD65A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65A8);
  }

  return result;
}

uint64_t LLMProviderInternalConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1BE4BF11C(&qword_1EBDAD530, &qword_1BE552468);
  sub_1BE547160();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v19 - v10;
  v12 = sub_1BE4C52F4(a1, a1[3]);
  sub_1BE546D10(v12, v13, v14);
  sub_1BE54CDBC();
  if (!v2)
  {
    v15 = sub_1BE54CC1C();
    v17 = v16;
    (*(v7 + 8))(v11, v3);
    *a2 = v15;
    a2[1] = v17;
  }

  return sub_1BE4C58A8(a1);
}

uint64_t sub_1BE546EF8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1BE546F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for LLMProviderInternalConfig.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BE54705C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD538;
  if (!qword_1EBDAD538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD538);
  }

  return result;
}

unint64_t sub_1BE5470B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD6598;
  if (!qword_1EDDD6598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6598);
  }

  return result;
}

unint64_t sub_1BE54710C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD65A0;
  if (!qword_1EDDD65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65A0);
  }

  return result;
}

uint64_t ProviderDeclarations.provider(id:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = result;
  v7 = 0;
  v8 = *(v3 + 8);
  v9 = *(v8 + 16);
  for (i = v8 + 32; ; i += 40)
  {
    if (v9 == v7)
    {
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    sub_1BE4C6918(i, &v16);
    v11 = v17;
    v12 = v18;
    sub_1BE4C52F4(&v16, v17);
    if ((*(v12 + 8))(v11, v12) == v5 && v13 == a2)
    {

      return sub_1BE4BF094(&v16, a3);
    }

    v15 = sub_1BE54CCDC();

    if (v15)
    {
      return sub_1BE4BF094(&v16, a3);
    }

    result = sub_1BE4C58A8(&v16);
    ++v7;
  }

  __break(1u);
  return result;
}

BOOL sub_1BE54729C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

uint64_t sub_1BE54734C@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v23 = a3;
  v24 = a4;
  v4 = sub_1BE54AD8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v22 - v11;
  v13 = sub_1BE54AF6C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1BE54C6BC();
  MEMORY[0x1EEE9AC00](v18 - 8, v19);

  sub_1BE54C6CC();
  sub_1BE549810(v23, v12, &qword_1EBDAD3D8, &qword_1BE551AA0);
  if (sub_1BE4C63BC(v12, 1, v13) == 1)
  {
    sub_1BE54AF2C();
    if (sub_1BE4C63BC(v12, 1, v13) != 1)
    {
      sub_1BE4D0E58(v12, &qword_1EBDAD3D8, &qword_1BE551AA0);
    }
  }

  else
  {
    (*(v14 + 32))(v17, v12, v13);
  }

  if (qword_1EDDD63E8 != -1)
  {
    swift_once();
  }

  v20 = sub_1BE4C52BC(v4, qword_1EDDD7048);
  (*(v5 + 16))(v8, v20, v4);
  return sub_1BE54ADBC();
}

Swift::String __swiftcall DecodedLLMProvider.localizedDisplayName()()
{
  v1 = sub_1BE54ADAC();
  v2 = sub_1BE4C7570(v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE4C757C();
  v6 = v5 - v4;
  v7 = sub_1BE4BF11C(&qword_1EBDAD3D8, &qword_1BE551AA0);
  v8 = sub_1BE4C7570(v7);
  MEMORY[0x1EEE9AC00](v8, v9);
  sub_1BE54A73C();
  v10 = sub_1BE54AF6C();
  sub_1BE4C63F8(v0, 1, 1, v10);
  sub_1BE54734C(v0, v6);
  sub_1BE54C72C();
  sub_1BE4D0E58(v0, &qword_1EBDAD3D8, &qword_1BE551AA0);
  v11 = sub_1BE4D9800();
  result._object = v12;
  result._countAndFlagsBits = v11;
  return result;
}

uint64_t DecodedLLMProvider.localizedDisplayName(locale:)()
{
  sub_1BE4D97A4();
  v1 = sub_1BE54ADAC();
  v2 = sub_1BE4C7570(v1);
  MEMORY[0x1EEE9AC00](v2, v3);
  sub_1BE4C757C();
  sub_1BE54734C(v0, v5 - v4);
  return sub_1BE54C72C();
}

uint64_t DecodedLLMProvider.id.setter()
{
  sub_1BE525E18();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t DecodedLLMProvider.iconSymbolName.setter()
{
  sub_1BE525E18();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t DecodedLLMProvider.availabilityIdentifier.getter()
{
  v2 = *(sub_1BE54A724() + 28);
  sub_1BE54B05C();
  sub_1BE4C7470();
  v5 = *(v4 + 16);

  return v5(v0, v1 + v2, v3);
}

uint64_t type metadata accessor for DecodedLLMProvider(uint64_t a1)
{
  result = qword_1EDDD6680;
  if (!qword_1EDDD6680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DecodedLLMProvider.availabilityIdentifier.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = *(type metadata accessor for DecodedLLMProvider(v2) + 28);
  sub_1BE54B05C();
  sub_1BE4C7470();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t DecodedLLMProvider.availabilityIdentifier.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.termsURL.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = v1 + *(type metadata accessor for DecodedLLMProvider(v2) + 32);

  return sub_1BE547AA0(v0, v3);
}

uint64_t sub_1BE547AA0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DecodedLLMProvider.termsURL.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.termsTitle.getter()
{
  type metadata accessor for DecodedLLMProvider(0);
  sub_1BE54A6B4();
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.termsTitle.setter()
{
  sub_1BE525E18();
  type metadata accessor for DecodedLLMProvider(0);
  result = sub_1BE54A750();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.termsTitle.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.reportURL.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = v1 + *(type metadata accessor for DecodedLLMProvider(v2) + 40);

  return sub_1BE547AA0(v0, v3);
}

uint64_t DecodedLLMProvider.reportURL.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.attributionDisplayName.getter()
{
  type metadata accessor for DecodedLLMProvider(0);
  sub_1BE54A6B4();
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.attributionDisplayName.setter()
{
  sub_1BE525E18();
  type metadata accessor for DecodedLLMProvider(0);
  result = sub_1BE54A750();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.attributionDisplayName.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.associatedAppBundleIdentifier.getter()
{
  type metadata accessor for DecodedLLMProvider(0);
  sub_1BE54A6B4();
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.associatedAppBundleIdentifier.setter()
{
  sub_1BE525E18();
  type metadata accessor for DecodedLLMProvider(0);
  result = sub_1BE54A750();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.associatedAppBundleIdentifier.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.signInAvailability.getter()
{
  result = sub_1BE54A724();
  *v0 = *(v1 + *(result + 52));
  return result;
}

uint64_t DecodedLLMProvider.signInAvailability.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for DecodedLLMProvider(0);
  *(v1 + *(result + 52)) = v2;
  return result;
}

uint64_t DecodedLLMProvider.signInAvailability.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.capabilitiesForOnboardingDisplay.getter()
{
  type metadata accessor for DecodedLLMProvider(0);
}

uint64_t DecodedLLMProvider.capabilitiesForOnboardingDisplay.setter()
{
  v2 = sub_1BE4D97A4();
  v3 = *(type metadata accessor for DecodedLLMProvider(v2) + 56);

  *(v1 + v3) = v0;
  return result;
}

uint64_t DecodedLLMProvider.capabilitiesForOnboardingDisplay.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.feedbackPrefillQuestionModelMetadataString.getter()
{
  type metadata accessor for DecodedLLMProvider(0);
  sub_1BE54A6B4();
  return sub_1BE4D9800();
}

uint64_t DecodedLLMProvider.feedbackPrefillQuestionModelMetadataString.setter()
{
  sub_1BE525E18();
  type metadata accessor for DecodedLLMProvider(0);
  result = sub_1BE54A750();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t DecodedLLMProvider.feedbackPrefillQuestionModelMetadataString.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t DecodedLLMProvider.internalConfig.getter()
{
  v2 = (v1 + *(sub_1BE54A724() + 64));
  v3 = *v2;
  v4 = v2[1];
  *v0 = *v2;
  v0[1] = v4;

  return sub_1BE54804C(v3, v4);
}

uint64_t sub_1BE54804C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t DecodedLLMProvider.internalConfig.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (v1 + *(type metadata accessor for DecodedLLMProvider(0) + 64));
  result = sub_1BE5480A4(*v4, v4[1]);
  *v4 = v2;
  v4[1] = v3;
  return result;
}

uint64_t sub_1BE5480A4(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t DecodedLLMProvider.internalConfig.modify()
{
  v0 = sub_1BE4D97A4();
  type metadata accessor for DecodedLLMProvider(v0);
  return sub_1BE4D9850();
}

uint64_t sub_1BE5480F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1BE54CCDC() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 25705 && a2 == 0xE200000000000000;
    if (v6 || (sub_1BE54CCDC() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x626D79536E6F6369 && a2 == 0xEE00656D614E6C6FLL;
      if (v7 || (sub_1BE54CCDC() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000016 && 0x80000001BE556110 == a2;
        if (v8 || (sub_1BE54CCDC() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x4C5255736D726574 && a2 == 0xE800000000000000;
          if (v9 || (sub_1BE54CCDC() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x746954736D726574 && a2 == 0xEA0000000000656CLL;
            if (v10 || (sub_1BE54CCDC() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x525574726F706572 && a2 == 0xE90000000000004CLL;
              if (v11 || (sub_1BE54CCDC() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000016 && 0x80000001BE556130 == a2;
                if (v12 || (sub_1BE54CCDC() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001DLL && 0x80000001BE556150 == a2;
                  if (v13 || (sub_1BE54CCDC() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD000000000000012 && 0x80000001BE556170 == a2;
                    if (v14 || (sub_1BE54CCDC() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000020 && 0x80000001BE556190 == a2;
                      if (v15 || (sub_1BE54CCDC() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000002ALL && 0x80000001BE5561C0 == a2;
                        if (v16 || (sub_1BE54CCDC() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0x6C616E7265746E69 && a2 == 0xEE006769666E6F43;
                          if (v17 || (sub_1BE54CCDC() & 1) != 0)
                          {

                            return 12;
                          }

                          else if (a1 == 0x656972746E756F63 && a2 == 0xE900000000000073)
                          {

                            return 13;
                          }

                          else
                          {
                            v19 = sub_1BE54CCDC();

                            if (v19)
                            {
                              return 13;
                            }

                            else
                            {
                              return 14;
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
      }
    }
  }
}

unint64_t sub_1BE548544(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 25705;
      break;
    case 2:
      result = 0x626D79536E6F6369;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x4C5255736D726574;
      break;
    case 5:
      result = 0x746954736D726574;
      break;
    case 6:
      result = 0x525574726F706572;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000020;
      break;
    case 11:
      result = 0xD00000000000002ALL;
      break;
    case 12:
      result = 0x6C616E7265746E69;
      break;
    case 13:
      result = 0x656972746E756F63;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1BE5486F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1BE5480F8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1BE54871C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1BE54853C();
  *a1 = result;
  return result;
}

uint64_t sub_1BE548744(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE5490B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1BE548780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1BE5490B8(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t DecodedLLMProvider.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v4 = sub_1BE4BF11C(&qword_1EBDABEE8, &unk_1BE54F050);
  v5 = sub_1BE4C7570(v4);
  MEMORY[0x1EEE9AC00](v5, v6);
  sub_1BE4D981C();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v88 - v12;
  sub_1BE54B05C();
  sub_1BE4C7500();
  v94 = v15;
  v95 = v14;
  MEMORY[0x1EEE9AC00](v14, v16);
  sub_1BE4C757C();
  v19 = v18 - v17;
  sub_1BE4BF11C(&qword_1EBDAD540, &qword_1BE552620);
  sub_1BE4C7500();
  v92 = v21;
  v93 = v20;
  MEMORY[0x1EEE9AC00](v20, v22);
  v23 = sub_1BE54A73C();
  v24 = type metadata accessor for DecodedLLMProvider(v23);
  sub_1BE4C7470();
  MEMORY[0x1EEE9AC00](v25, v26);
  sub_1BE4C757C();
  v29 = (v28 - v27);
  v31 = *(v30 + 32);
  v32 = sub_1BE54AE3C();
  v101 = v31;
  sub_1BE4C63F8(v29 + v31, 1, 1, v32);
  v100 = *(v24 + 40);
  sub_1BE4C63F8(v29 + v100, 1, 1, v32);
  v102 = v29;
  v103 = v24;
  v33 = (v29 + *(v24 + 64));
  v97 = a1;
  v98 = v33;
  *v33 = xmmword_1BE5518D0;
  v34 = sub_1BE4C52F4(a1, a1[3]);
  sub_1BE5490B8(v34, v35, v36);
  v37 = v99;
  sub_1BE54CDBC();
  if (v37)
  {
    v99 = v37;
    v43 = 0;
    v44 = 0;
    sub_1BE54A620();
    v96 = 0;
  }

  else
  {
    v38 = v19;
    v99 = v32;
    v39 = v13;
    v40 = v9;
    v41 = v92;
    LOBYTE(v104) = 0;
    v42 = sub_1BE54CC3C();
    v50 = v102;
    *v102 = v42;
    v50[1] = v51;
    LOBYTE(v104) = 1;
    v90 = v2;
    v43 = v41;
    v50[2] = sub_1BE54CC3C();
    v50[3] = v52;
    LOBYTE(v104) = 2;
    v50[4] = sub_1BE54CC1C();
    v50[5] = v53;
    v96 = v53;
    LOBYTE(v104) = 3;
    sub_1BE54A560(&qword_1EDDD66C8, MEMORY[0x1E69B2400], MEMORY[0x1E69B2418]);
    v89 = v38;
    v54 = v95;
    sub_1BE54CC5C();
    (*(v94 + 32))(v50 + v103[7], v89, v54);
    LOBYTE(v104) = 4;
    sub_1BE54A560(&qword_1EDDD66D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    sub_1BE54CC2C();
    v55 = v102;
    sub_1BE547AA0(v39, v102 + v101);
    sub_1BE54A670(5);
    v56 = sub_1BE54CC1C();
    v57 = (v55 + v103[9]);
    *v57 = v56;
    v57[1] = v58;
    LOBYTE(v104) = 6;
    sub_1BE54CC2C();
    sub_1BE547AA0(v40, v55 + v100);
    sub_1BE54A670(7);
    v59 = sub_1BE54CC3C();
    v60 = v102;
    v61 = (v102 + v103[11]);
    *v61 = v59;
    v61[1] = v62;
    LOBYTE(v104) = 8;
    v63 = sub_1BE54CC1C();
    v99 = 0;
    v66 = (v60 + v103[12]);
    *v66 = v63;
    v66[1] = v64;
    v106 = 9;
    sub_1BE54910C(v63, v64, v65);
    v44 = v90;
    v67 = v99;
    sub_1BE54CC5C();
    v99 = v67;
    if (!v67)
    {
      *(v102 + v103[13]) = v104;
      sub_1BE4BF11C(&qword_1EBDAD490, &qword_1BE551DE8);
      v106 = 10;
      v70 = sub_1BE549160();
      sub_1BE54A684(v70);
      v47 = 1;
      v99 = 0;
      *(v102 + v103[14]) = v104;
      sub_1BE54A670(11);
      v71 = v99;
      v72 = sub_1BE54CC3C();
      v99 = v71;
      if (v71)
      {
        v75 = sub_1BE54A630();
        v76(v75);
        v46 = 0;
      }

      else
      {
        v77 = (v102 + v103[15]);
        *v77 = v72;
        v77[1] = v73;
        v106 = 12;
        sub_1BE549238(v72, v73, v74);
        v78 = v99;
        sub_1BE54CC2C();
        v99 = v78;
        if (!v78)
        {
          v80 = v104;
          v79 = v105;
          v81 = v98;
          sub_1BE5480A4(*v98, v98[1]);
          *v81 = v80;
          v81[1] = v79;
          sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
          v106 = 13;
          v82 = sub_1BE54928C();
          sub_1BE54A684(v82);
          v99 = 0;
          v85 = sub_1BE54A630();
          v86(v85);
          v87 = v102;
          *(v102 + v103[17]) = v104;
          sub_1BE5338F0(v87, v91);
          sub_1BE4C58A8(v97);
          return sub_1BE533954(v87);
        }

        v83 = sub_1BE54A630();
        v84(v83);
        v46 = 1;
      }

      sub_1BE4C58A8(v97);
      LOBYTE(v44) = 1;
      LODWORD(v9) = 1;
      v45 = v102;

      v48 = v103;
LABEL_5:

      if ((v44 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    v68 = sub_1BE54A630();
    v69(v68);
    sub_1BE54A640();
    LODWORD(v9) = 1;
  }

  v45 = v102;
  sub_1BE4C58A8(v97);
  v46 = 0;
  v47 = 0;
  v48 = v103;
  if (v43)
  {
    goto LABEL_5;
  }

  if (v44)
  {
LABEL_9:
    (*(v94 + 8))(v45 + v48[7], v95);
  }

LABEL_10:
  sub_1BE4D0E58(v45 + v101, &qword_1EBDABEE8, &unk_1BE54F050);

  sub_1BE4D0E58(v45 + v100, &qword_1EBDABEE8, &unk_1BE54F050);
  if (v9)
  {
  }

  if (v47)
  {
  }

  if (v46)
  {
  }

  return sub_1BE5480A4(*v98, v98[1]);
}

unint64_t sub_1BE5490B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD66A8;
  if (!qword_1EDDD66A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD66A8);
  }

  return result;
}

unint64_t sub_1BE54910C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD65B0;
  if (!qword_1EDDD65B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD65B0);
  }

  return result;
}

unint64_t sub_1BE549160()
{
  result = qword_1EDDD6540;
  if (!qword_1EDDD6540)
  {
    v1 = sub_1BE4C5948(&qword_1EBDAD490, &qword_1BE551DE8);
    sub_1BE5491E4(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6540);
  }

  return result;
}

unint64_t sub_1BE5491E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD6578;
  if (!qword_1EDDD6578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6578);
  }

  return result;
}

unint64_t sub_1BE549238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD6590;
  if (!qword_1EDDD6590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6590);
  }

  return result;
}

unint64_t sub_1BE54928C()
{
  result = qword_1EDDD6528;
  if (!qword_1EDDD6528)
  {
    sub_1BE4C5948(&qword_1EBDAD080, qword_1BE550B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6528);
  }

  return result;
}

uint64_t sub_1BE549388(uint64_t a1)
{
  sub_1BE549544(319, &qword_1EDDD6558, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_1BE54B05C();
    if (v5 > 0x3F)
    {
      return v4;
    }

    sub_1BE524E50(319);
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      sub_1BE549544(319, &qword_1EDDD6548, &type metadata for LLMCapabilityForOnboardingDisplay, MEMORY[0x1E69E62F8]);
      v2 = v7;
      if (v8 <= 0x3F)
      {
        sub_1BE549544(319, &qword_1EDDD6588, &type metadata for LLMProviderInternalConfig, MEMORY[0x1E69E6720]);
        v2 = v9;
        if (v10 <= 0x3F)
        {
          sub_1BE549544(319, &qword_1EDDD6538, MEMORY[0x1E69E6158], MEMORY[0x1E69E62F8]);
          v2 = v11;
          if (v12 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void sub_1BE549544(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for DecodedLLMProvider.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF3)
  {
    if (a2 + 13 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 13) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 14;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v5 = v6 - 14;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DecodedLLMProvider.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF2)
  {
    v6 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 13;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1BE54970C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBDAD548;
  if (!qword_1EBDAD548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDAD548);
  }

  return result;
}

unint64_t sub_1BE549764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD6698;
  if (!qword_1EDDD6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6698);
  }

  return result;
}

unint64_t sub_1BE5497BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EDDD66A0;
  if (!qword_1EDDD66A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD66A0);
  }

  return result;
}

uint64_t sub_1BE549810(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  sub_1BE4BF11C(a3, a4);
  sub_1BE4C7470();
  v5 = sub_1BE4D9800();
  v6(v5);
  return a2;
}

uint64_t sub_1BE54986C()
{
  v0 = sub_1BE54AE3C();
  sub_1BE4C7500();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  sub_1BE4D981C();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v31 - v10;
  type metadata accessor for GenerativePartnerServiceProvider();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = objc_opt_self();
  v14 = [v13 bundleForClass_];
  v15 = sub_1BE54A350(0xD000000000000014, 0x80000001BE5526E0, 0x7473696C70, 0xE500000000000000, v14);

  if (v15)
  {
    sub_1BE54AE0C();

    (*(v2 + 32))(v11, v7, v0);
    sub_1BE54AD6C();
    swift_allocObject();
    sub_1BE54AD5C();
    v16 = sub_1BE54AE4C();
    v18 = v17;
    sub_1BE4BF11C(&qword_1EBDAD550, &unk_1BE552830);
    sub_1BE54A4AC();
    sub_1BE54AD4C();
    v25 = v31;
    if (qword_1EDDD6560 != -1)
    {
      sub_1BE54A600(&qword_1EDDD6560);
    }

    v27 = sub_1BE54B2EC();
    sub_1BE4C52BC(v27, qword_1EDDD7060);

    v28 = sub_1BE54B2BC();
    v29 = sub_1BE54C97C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 134349056;
      *(v30 + 4) = *(v25 + 16);

      _os_log_impl(&dword_1BE4B8000, v28, v29, "Loaded %{public}ld providers", v30, 0xCu);
      sub_1BE4C75DC();
      sub_1BE54A5A8(v16, v18);
    }

    else
    {
      sub_1BE54A5A8(v16, v18);
    }

    (*(v2 + 8))(v11, v0);
  }

  else
  {
    if (qword_1EDDD6560 != -1)
    {
      sub_1BE54A600(&qword_1EDDD6560);
    }

    v19 = sub_1BE54B2EC();
    sub_1BE4C52BC(v19, qword_1EDDD7060);
    v20 = sub_1BE54B2BC();
    v21 = sub_1BE54C98C();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 138543362;
      v24 = [v13 bundleForClass_];
      *(v22 + 4) = v24;
      *v23 = v24;
      _os_log_impl(&dword_1BE4B8000, v20, v21, "Did not find any provider declarations in bundle: %{public}@", v22, 0xCu);
      sub_1BE4D0E58(v23, &qword_1EBDAC2F0, &qword_1BE54F880);
      sub_1BE4C75DC();
      sub_1BE4C75DC();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return v25;
}

uint64_t sub_1BE549D98(uint64_t a1, int a2)
{
  v80 = type metadata accessor for DecodedLLMProvider(0);
  sub_1BE4C7500();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6, v7);
  sub_1BE4D981C();
  v10 = v8 - v9;
  v13 = MEMORY[0x1EEE9AC00](v11, v12);
  v78 = &v75[-v14];
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v18 = &v75[-v17];
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v77 = &v75[-v21];
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v75[-v23];
  v76 = a2;
  v25 = a1;
  if (a2)
  {
    v26 = 0;
    v27 = *(a1 + 16);
    v79 = MEMORY[0x1E69E7CC0];
    while (v27 != v26)
    {
      v28 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v29 = *(v5 + 72);
      sub_1BE5338F0(a1 + v28 + v29 * v26, v24);
      sub_1BE54A6E8();
      MEMORY[0x1EEE9AC00](v30, v31);
      sub_1BE54A6D0();
      if (sub_1BE54729C(sub_1BE4E1F30, v32, v33))
      {
        sub_1BE54A3E4(v24, v77);
        v34 = v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v82 = v34;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1BE54A700();
          v34 = v82;
        }

        v37 = *(v34 + 2);
        v36 = *(v34 + 3);
        v38 = (v37 + 1);
        if (v37 >= v36 >> 1)
        {
          v78 = *(v34 + 2);
          v79 = (v37 + 1);
          sub_1BE52B7E8((v36 > 1), v37 + 1, 1);
          v37 = v78;
          v38 = v79;
          v34 = v82;
        }

        ++v26;
        *(v34 + 2) = v38;
        v79 = v34;
        sub_1BE54A3E4(v77, &v34[v28 + v37 * v29]);
        a1 = v25;
      }

      else
      {
        sub_1BE533954(v24);
        ++v26;
        a1 = v25;
      }
    }
  }

  else
  {
    v39 = 0;
    v40 = *(a1 + 16);
    v79 = MEMORY[0x1E69E7CC0];
    while (v40 != v39)
    {
      v41 = (*(v5 + 80) + 32) & ~*(v5 + 80);
      v42 = *(v5 + 72);
      sub_1BE5338F0(a1 + v41 + v42 * v39, v18);
      sub_1BE54A6E8();
      MEMORY[0x1EEE9AC00](v43, v44);
      sub_1BE54A6D0();
      if (sub_1BE54729C(sub_1BE4E1F04, v45, v46))
      {
        sub_1BE533954(v18);
        ++v39;
        a1 = v25;
      }

      else
      {
        sub_1BE54A3E4(v18, v78);
        v47 = v79;
        v48 = swift_isUniquelyReferenced_nonNull_native();
        v82 = v47;
        if ((v48 & 1) == 0)
        {
          sub_1BE54A700();
          v47 = v82;
        }

        v50 = *(v47 + 2);
        v49 = *(v47 + 3);
        v51 = (v50 + 1);
        if (v50 >= v49 >> 1)
        {
          v79 = (v50 + 1);
          v77 = v50;
          sub_1BE52B7E8((v49 > 1), v50 + 1, 1);
          v51 = v79;
          v50 = v77;
          v47 = v82;
        }

        ++v39;
        *(v47 + 2) = v51;
        v79 = v47;
        sub_1BE54A3E4(v78, &v47[v41 + v50 * v42]);
        a1 = v25;
      }
    }
  }

  v52 = v79;
  v53 = *(v79 + 2);
  v54 = MEMORY[0x1E69E7CC0];
  if (v53)
  {
    v81 = MEMORY[0x1E69E7CC0];
    sub_1BE52B7C8(0, v53, 0);
    v54 = v81;
    v55 = &v52[(*(v5 + 80) + 32) & ~*(v5 + 80)];
    v56 = *(v5 + 72);
    do
    {
      sub_1BE5338F0(v55, v10);
      v58 = *(v10 + 16);
      v57 = *(v10 + 24);

      sub_1BE533954(v10);
      v81 = v54;
      v60 = *(v54 + 16);
      v59 = *(v54 + 24);
      if (v60 >= v59 >> 1)
      {
        sub_1BE52B7C8((v59 > 1), v60 + 1, 1);
        v54 = v81;
      }

      *(v54 + 16) = v60 + 1;
      v61 = v54 + 16 * v60;
      *(v61 + 32) = v58;
      *(v61 + 40) = v57;
      v55 += v56;
      --v53;
    }

    while (v53);
  }

  v81 = v54;
  sub_1BE4BF11C(&qword_1EBDAD080, qword_1BE550B60);
  sub_1BE54A448();
  v62 = sub_1BE54C63C();
  v64 = v63;

  if (qword_1EDDD6560 != -1)
  {
    sub_1BE54A600(&qword_1EDDD6560);
  }

  v65 = sub_1BE54B2EC();
  sub_1BE4C52BC(v65, qword_1EDDD7060);

  v66 = sub_1BE54B2BC();
  v67 = sub_1BE54C97C();

  v68 = os_log_type_enabled(v66, v67);
  v69 = v79;
  if (v68)
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v81 = v71;
    *v70 = 67240450;
    *(v70 + 4) = v76 & 1;
    *(v70 + 8) = 2082;
    v72 = sub_1BE4C5338(v62, v64, &v81);

    *(v70 + 10) = v72;
    _os_log_impl(&dword_1BE4B8000, v66, v67, "Returning available providers filtered by .isChina=%{BOOL,public}d: %{public}s", v70, 0x12u);
    sub_1BE4C58A8(v71);
    sub_1BE4C75DC();
    sub_1BE4C75DC();
  }

  else
  {
  }

  v73 = sub_1BE52DF88(v69);

  return v73;
}

id sub_1BE54A350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = sub_1BE54C6DC();

  v7 = sub_1BE54C6DC();

  v8 = [a5 URLForResource:v6 withExtension:v7];

  return v8;
}

uint64_t sub_1BE54A3E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DecodedLLMProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1BE54A448()
{
  result = qword_1EDDD6530;
  if (!qword_1EDDD6530)
  {
    sub_1BE4C5948(&qword_1EBDAD080, qword_1BE550B60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6530);
  }

  return result;
}

unint64_t sub_1BE54A4AC()
{
  result = qword_1EDDD6550;
  if (!qword_1EDDD6550)
  {
    sub_1BE4C5948(&qword_1EBDAD550, &unk_1BE552830);
    sub_1BE54A560(&qword_1EDDD6690, type metadata accessor for DecodedLLMProvider, &protocol conformance descriptor for DecodedLLMProvider);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD6550);
  }

  return result;
}

uint64_t sub_1BE54A560(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1BE54A5A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_1BE54A600(uint64_t a1)
{

  return swift_once();
}

uint64_t sub_1BE54A684(uint64_t a1)
{

  return sub_1BE54CC5C();
}

uint64_t sub_1BE54A6B4()
{
}

void *sub_1BE54A700()
{
  v2 = *(v0 + 16) + 1;

  return sub_1BE52B7E8(0, v2, 1);
}

uint64_t sub_1BE54A724()
{

  return type metadata accessor for DecodedLLMProvider(0);
}

uint64_t sub_1BE54A750()
{
}

uint64_t sub_1BE54A794(int a1, int a2, int a3, int a4)
{
  if (qword_1EBDB0B88 == -1)
  {
    if (qword_1EBDB0B90)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    sub_1BE54AC5C();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_1EBDB0B90)
    {
      return _availability_version_check();
    }
  }

  if (qword_1EBDB0B80 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    sub_1BE54AC74();
    a3 = v10;
    a4 = v9;
    v8 = dword_1EBDB0B70 < v11;
    if (dword_1EBDB0B70 > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_1EBDB0B74 > a3)
      {
        return 1;
      }

      if (dword_1EBDB0B74 >= a3)
      {
        return dword_1EBDB0B78 >= a4;
      }
    }

    return 0;
  }

  v8 = dword_1EBDB0B70 < a2;
  if (dword_1EBDB0B70 <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t sub_1BE54A928(uint64_t result)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = qword_1EBDB0B90;
  if (qword_1EBDB0B90)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x1EEE9AC60])
    {
      v1 = MEMORY[0x1EEE9AC60];
      qword_1EBDB0B90 = MEMORY[0x1EEE9AC60];
    }

    if (v1)
    {
      v3 = result == 0;
    }

    else
    {
      v3 = 0;
    }

    if (!v3)
    {
      result = dlsym(0xFFFFFFFFFFFFFFFELL, "kCFAllocatorNull");
      if (result)
      {
        v4 = *result;
        result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDataCreateWithBytesNoCopy");
        if (result)
        {
          v5 = result;
          v6 = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateWithData");
          result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFPropertyListCreateFromXMLData");
          if (v6 | result)
          {
            v7 = result;
            result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringCreateWithCStringNoCopy");
            if (result)
            {
              v8 = result;
              result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFDictionaryGetValue");
              if (result)
              {
                v9 = result;
                result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFGetTypeID");
                if (result)
                {
                  v10 = result;
                  result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetTypeID");
                  if (result)
                  {
                    v11 = result;
                    result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFStringGetCString");
                    v27 = result;
                    if (result)
                    {
                      result = dlsym(0xFFFFFFFFFFFFFFFELL, "CFRelease");
                      if (result)
                      {
                        v12 = result;
                        result = fopen("/System/Library/CoreServices/SystemVersion.plist", "r");
                        if (result)
                        {
                          v13 = result;
                          v26 = v12;
                          fseek(result, 0, 2);
                          v14 = MEMORY[0x1BFB48480](v13);
                          if (v14 < 0)
                          {
                            v16 = 0;
                          }

                          else
                          {
                            v15 = v14;
                            rewind(v13);
                            v16 = malloc(v15);
                            if (v16)
                            {
                              v25 = v16;
                              if (fread(v16, 1uLL, v15, v13) == v15 && (v17 = v5(0, v25, v15, v4)) != 0)
                              {
                                v18 = v17;
                                if (v6)
                                {
                                  v19 = (v6)(0, v17, 0, 0, 0);
                                }

                                else
                                {
                                  v19 = v7(0, v17, 0, 0);
                                }

                                v20 = v19;
                                if (v19)
                                {
                                  v21 = v8(0, "ProductVersion", 1536, v4);
                                  if (v21)
                                  {
                                    v22 = v21;
                                    v23 = v9(v20, v21);
                                    (v26)(v22);
                                    if (v23)
                                    {
                                      v24 = v10(v23);
                                      if (v24 == v11())
                                      {
                                        if (v27(v23, v28, 32, 134217984))
                                        {
                                          sscanf(v28, "%d.%d.%d", &dword_1EBDB0B70, &dword_1EBDB0B74, &dword_1EBDB0B78);
                                        }
                                      }
                                    }
                                  }

                                  (v26)(v20);
                                }

                                (v26)(v18);
                                v16 = v25;
                              }

                              else
                              {
                                v16 = v25;
                              }
                            }
                          }

                          free(v16);
                          return fclose(v13);
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
  }

  return result;
}

double sub_1BE54D74C(double result)
{
  if (!atomic_load(&unk_1EBDAD558))
  {
    return sub_1BE54D770(result);
  }

  return result;
}