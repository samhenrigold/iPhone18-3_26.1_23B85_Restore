uint64_t sub_1E2C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E32C(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t DefaultLibraryListQuery.entities(for:)(uint64_t a1)
{
  v1[95] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v1[101] = swift_task_alloc();
  v1[102] = swift_task_alloc();
  v1[103] = swift_task_alloc();
  v1[104] = swift_task_alloc();
  sub_E5944();
  v1[105] = swift_task_alloc();
  v2 = sub_E6974();
  v1[106] = v2;
  v1[107] = *(v2 - 8);
  v1[108] = swift_task_alloc();
  v1[109] = swift_task_alloc();

  return _swift_task_switch(sub_1E498, 0, 0);
}

uint64_t sub_1E498()
{
  v75 = v0;
  v74 = _swiftEmptyArrayStorage;
  sub_15D18(0, 3, 0);
  v1 = _swiftEmptyArrayStorage;
  v2 = 0xE500000000000000;
  v3 = 0x6465766173;
  v5 = _swiftEmptyArrayStorage[2];
  v4 = _swiftEmptyArrayStorage[3];
  v6 = v5 + 1;
  if (v5 < v4 >> 1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    sub_15D18((v4 > 1), v6, 1);
    v1 = v74;
LABEL_2:
    v1[2] = v6;
    v7 = &v1[2 * v5];
    v7[4] = v3;
    v7[5] = v2;
    v74 = v1;
    v8 = v1[3];
    if (v6 >= v8 >> 1)
    {
      sub_15D18((v8 > 1), v5 + 2, 1);
      v1 = v74;
    }

    v1[2] = v5 + 2;
    v9 = &v1[2 * v6];
    v9[4] = 0x64616F6C6E776F64;
    v9[5] = 0xEA00000000006465;
    v74 = v1;
    v3 = v1[2];
    v10 = v1[3];
    if (v3 >= v10 >> 1)
    {
      sub_15D18((v10 > 1), v3 + 1, 1);
      v1 = v74;
    }

    v11 = v71[95];
    v1[2] = v3 + 1;
    v12 = &v1[2 * v3];
    v12[4] = 0x74736574616CLL;
    v12[5] = 0xE600000000000000;
    v6 = sub_10C40(v1);

    v13 = *(v11 + 16);

    if (!v13)
    {
      break;
    }

    v72 = v71[95] + 32;
    v14 = v6 + 56;
    v2 = _swiftEmptyArrayStorage;
    v5 = v71;
    v4 = 0;
    while (1)
    {
      v15 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (*(v6 + 16))
      {
        v16 = (v72 + 16 * v4);
        v17 = *v16;
        v3 = v16[1];
        sub_E7CC4();

        sub_E7124();
        v18 = sub_E7CF4();
        v19 = -1 << *(v6 + 32);
        v20 = v18 & ~v19;
        if (((*(v14 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_9;
        }

        v21 = ~v19;
        while (1)
        {
          v22 = (*(v6 + 48) + 16 * v20);
          v23 = *v22 == v17 && v22[1] == v3;
          if (v23 || (sub_E7BD4() & 1) != 0)
          {
            break;
          }

          v20 = (v20 + 1) & v21;
          if (((*(v14 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_15D18(0, _swiftEmptyArrayStorage[2] + 1, 1);
        }

        v25 = _swiftEmptyArrayStorage[2];
        v24 = _swiftEmptyArrayStorage[3];
        if (v25 >= v24 >> 1)
        {
          sub_15D18((v24 > 1), v25 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v25 + 1;
        v26 = &_swiftEmptyArrayStorage[2 * v25];
        v26[4] = v17;
        v26[5] = v3;
        v5 = v71;
        if (v15 == v13)
        {
          goto LABEL_31;
        }

        v4 = v15;
        if (v15 >= v13)
        {
LABEL_8:
          __break(1u);
LABEL_9:

          goto LABEL_10;
        }
      }

      else
      {
LABEL_10:
        v4 = v15;
        if (v15 == v13)
        {
          goto LABEL_31;
        }

        if (v15 >= v13)
        {
          goto LABEL_8;
        }
      }
    }

LABEL_63:
    __break(1u);
  }

  v5 = v71;
LABEL_31:
  swift_bridgeObjectRelease_n();
  v27 = sub_10C40(_swiftEmptyArrayStorage);

  v29 = sub_10C40(v28);

  if (*(v27 + 16) <= v29[2] >> 3)
  {
    goto LABEL_35;
  }

  v30 = sub_24538(v27, v29);
  v29 = v30[2];
  if (v29)
  {
    while (1)
    {
      v3 = sub_23D5C(v29, 0);
      v31 = sub_25950(&v74, (v3 + 32), v29, v30);
      sub_25DE0(v74);
      if (v31 == v29)
      {
        break;
      }

      __break(1u);
LABEL_35:
      v74 = v29;
      sub_2440C(v27);
      v30 = v74;
      v29 = v74[2];
      if (!v29)
      {
        goto LABEL_36;
      }
    }
  }

  else
  {
LABEL_36:

    v3 = _swiftEmptyArrayStorage;
  }

  v32 = v5;
  *(v5 + 696) = 0x4E574F4E4B4E55;
  *(v5 + 704) = 0xE700000000000000;
  v33 = swift_task_alloc();
  *(v33 + 16) = v5 + 696;
  v2 = sub_24AA8(sub_25DE8, v33, v3);

  if (v2)
  {
    v34 = v27;
    sub_E6914();
    v35 = sub_E6964();
    v36 = sub_E74B4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_0, v35, v36, "Received unknown identifier from query -- this is unexpected and may represent an error.", v37, 2u);
    }

    v2 = *(v5 + 872);
    v38 = *(v5 + 856);
    v39 = v32[106];

    (*(v38 + 8))(v2, v39);
    v27 = v34;
  }

  v40 = v32[107];
  v41 = swift_allocObject();
  v32[110] = v41;
  *(v41 + 16) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  swift_asyncLet_begin();
  v6 = v27 + 56;
  v42 = -1;
  v43 = -1 << *(v27 + 32);
  if (-v43 < 64)
  {
    v42 = ~(-1 << -v43);
  }

  v44 = v42 & *(v27 + 56);
  v45 = (63 - v43) >> 6;
  v73 = (v40 + 8);

  v46 = 0;
  v47 = _swiftEmptyArrayStorage;
LABEL_44:
  v70 = v47;
  v32[111] = v47;
  v5 = v32;
  while (v44)
  {
LABEL_51:
    v50 = __clz(__rbit64(v44));
    v44 &= v44 - 1;
    v2 = v27;
    v51 = (*(v27 + 48) + ((v46 << 10) | (16 * v50)));
    v52 = *v51;
    v3 = v51[1];

    v53._rawValue = &off_11F8D8;
    v77._countAndFlagsBits = v52;
    v77._object = v3;
    v54 = sub_E7B34(v53, v77);
    if (v54 <= 2)
    {
      v58 = v54;
      v66 = *(v5 + 832);
      v67 = *(v5 + 824);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
      sub_E5914();
      sub_25F18();
      v68 = sub_E5414();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
      sub_E5914();
      sub_25F6C();
      v69 = sub_E5434();
      *(v5 + 912) = v58;
      sub_E53F4();
      v59 = type metadata accessor for StationEntity(0);
      (*(*(v59 - 8) + 56))(v66, 1, 1, v59);
      sub_26324(v66, v67, &qword_12DC38, &qword_F14D0);
      sub_E53F4();

      sub_110AC(v66, &qword_12DC38, &qword_F14D0);
      v60 = v70;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v60 = sub_2321C(0, *(v70 + 2) + 1, 1, v70);
      }

      v62 = *(v60 + 2);
      v61 = *(v60 + 3);
      v63 = v60;
      if (v62 >= v61 >> 1)
      {
        v63 = sub_2321C((v61 > 1), v62 + 1, 1, v60);
      }

      v47 = v63;
      *(v63 + 2) = v62 + 1;
      v64 = &v63[16 * v62];
      *(v64 + 4) = v68;
      *(v64 + 5) = v69;
      v32 = v71;
      goto LABEL_44;
    }

    sub_E6914();
    v55 = sub_E6964();
    v56 = sub_E74B4();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_0, v55, v56, "Unable to interpret list identifier, despite positive filter.", v57, 2u);
    }

    v48 = *(v5 + 864);
    v49 = *(v5 + 848);

    (*v73)(v48, v49);
    v27 = v2;
  }

  while (1)
  {
    v4 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      __break(1u);
      goto LABEL_63;
    }

    if (v4 >= v45)
    {
      break;
    }

    v44 = *(v6 + 8 * v4);
    ++v46;
    if (v44)
    {
      v46 = v4;
      goto LABEL_51;
    }
  }

  return _swift_asyncLet_get_throwing(v5 + 16, v5 + 712, sub_1EE5C, v5 + 656);
}

uint64_t sub_1EE5C()
{
  *(v1 + 896) = v0;
  if (v0)
  {
    v2 = sub_1F2C4;
  }

  else
  {
    v2 = sub_1EE90;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1EE90()
{
  v1 = *(v0 + 712);
  v2 = *(v1 + 16);
  if (v2)
  {

    sub_15DBC(0, v2, 0);
    v19 = type metadata accessor for StationEntity(0);
    v3 = *(v19 - 8);
    v18 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
    v8 = 0;
    v20 = v1;
    while (v8 < *(v1 + 16))
    {
      v9 = *(v21 + 832);
      v10 = *(v21 + 824);
      v11 = *(v21 + 816);
      v22 = *(v21 + 808);
      sub_25FC4(v18 + *(v3 + 72) * v8, v9);
      (*(v3 + 56))(v9, 0, 1, v19);
      sub_26324(v9, v10, &qword_12DC38, &qword_F14D0);
      sub_E5914();
      sub_25F18();
      v12 = sub_E5414();
      sub_E5914();
      sub_25F6C();
      v13 = sub_E5434();
      *(v21 + 913) = 3;
      v23 = v12;
      sub_E53F4();
      sub_26324(v10, v11, &qword_12DC38, &qword_F14D0);
      sub_26324(v11, v22, &qword_12DC38, &qword_F14D0);
      sub_E53F4();
      sub_110AC(v10, &qword_12DC38, &qword_F14D0);
      sub_110AC(v11, &qword_12DC38, &qword_F14D0);
      v4 = sub_110AC(v9, &qword_12DC38, &qword_F14D0);
      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        v4 = sub_15DBC((v14 > 1), v15 + 1, 1);
      }

      ++v8;
      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v23;
      v16[5] = v13;
      v1 = v20;
      if (v2 == v8)
      {

        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
    v24 = *(v21 + 888);
    sub_22534(_swiftEmptyArrayStorage);
    *(v21 + 904) = v24;
    v6 = sub_1F1D4;
    v4 = v21 + 16;
    v5 = v21 + 712;
    v7 = v21 + 768;
  }

  return _swift_asyncLet_finish(v4, v5, v6, v7);
}

uint64_t sub_1F1F0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 904);

  return v1(v2);
}

uint64_t sub_1F2C4()
{

  return _swift_asyncLet_finish(v0 + 16, v0 + 712, sub_1F330, v0 + 720);
}

uint64_t sub_1F34C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1F41C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_1F43C, 0, 0);
}

uint64_t sub_1F43C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  *(v0 + 112) = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *(v0 + 32) = sub_E5204();
  sub_264B0();
  v1 = sub_E7774();
  v2 = sub_E7754();
  *(v0 + 40) = v2;
  v3 = v2;
  v4 = *(v0 + 24);

  *(v0 + 48) = sub_10C40(v5);

  v6 = type metadata accessor for StationEntity(0);
  sub_25F6C();
  v7 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v4, v6);
  *(v0 + 56) = v7;
  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1F650;

  return sub_3E8D4(v7, v3);
}

uint64_t sub_1F650(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v5[9] = a1;
  v5[10] = a2;

  v7 = swift_task_alloc();
  v5[11] = v7;
  *v7 = v6;
  v7[1] = sub_1F7F4;
  v8 = v5[5];
  v9 = v5[4];

  return sub_3ECA4(a1, a2, v8, v9);
}

uint64_t sub_1F7F4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_1FA18;
  }

  else
  {
    *(v4 + 104) = a1;
    v5 = sub_1F96C;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1F96C()
{
  v1 = v0[5];
  v2 = v0[2];
  v3 = sub_3CE38(v0[13], v0[6]);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1FA18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DefaultLibraryListQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v2[8] = a1;
  v2[9] = a2;
  v3 = sub_E5944();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_E56B4();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v2[16] = swift_task_alloc();
  v5 = type metadata accessor for StationEntity(0);
  v2[17] = v5;
  v2[18] = *(v5 - 8);
  v2[19] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[20] = v6;
  *v6 = v2;
  v6[1] = sub_1FC60;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_1FC60(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 168) = a1;
  *(v3 + 176) = v1;

  if (v1)
  {
    v4 = sub_20324;
  }

  else
  {
    v4 = sub_1FD74;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_1FD74()
{
  v56 = v0;
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 112);
    v5 = *(v0 + 88);
    result = sub_15E20(0, v2, 0);
    v7 = 0;
    v50 = (v3 + 48);
    v48 = (v5 + 8);
    v49 = (v4 + 8);
    while (v7 < *(v1 + 16))
    {
      v8 = v2;
      v10 = *(v0 + 128);
      v9 = *(v0 + 136);
      v52 = *(v1 + 32 + 16 * v7);

      sub_E53E4();
      if ((*v50)(v10, 1, v9) == 1)
      {
        sub_110AC(*(v0 + 128), &qword_12DC38, &qword_F14D0);
        result = sub_E53E4();
        if (*(v0 + 184) == 3)
        {
          v11 = 0;
          v12 = 0xE000000000000000;
        }

        else
        {
          v14 = *(v0 + 120);
          v16 = *(v0 + 96);
          v15 = *(v0 + 104);
          v17 = *(v0 + 80);
          v55 = v52;
          LibraryList.displayRepresentation.getter(v14);
          sub_E5694();
          (*v49)(v14, v15);
          v18 = sub_E5934();
          v20 = v19;
          (*v48)(v16, v17);
          v58._countAndFlagsBits = v18;
          v58._object = v20;
          v59._countAndFlagsBits = 0;
          v59._object = 0xE000000000000000;
          v11 = sub_E63A4(v58, v59);
          v12 = v21;
        }
      }

      else
      {
        v13 = *(v0 + 152);
        sub_2638C(*(v0 + 128), v13, type metadata accessor for StationEntity);
        sub_E53E4();
        v11 = *(v0 + 48);
        v12 = *(v0 + 56);
        result = sub_263F4(v13, type metadata accessor for StationEntity);
      }

      v23 = _swiftEmptyArrayStorage[2];
      v22 = _swiftEmptyArrayStorage[3];
      if (v23 >= v22 >> 1)
      {
        result = sub_15E20((v22 > 1), v23 + 1, 1);
      }

      ++v7;
      _swiftEmptyArrayStorage[2] = v23 + 1;
      v24 = &_swiftEmptyArrayStorage[4 * v23];
      v24[4] = v11;
      v24[5] = v12;
      *(v24 + 3) = v52;
      v2 = v8;
      if (v8 == v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_12:

  v25 = _swiftEmptyArrayStorage[2];
  if (v25)
  {
    v26 = 0;
    v53 = -v25;
    v27 = &_swiftEmptyArrayStorage[7];
    v51 = _swiftEmptyArrayStorage;
LABEL_14:
    v28 = &v27[4 * v26++];
    while ((v26 - 1) < _swiftEmptyArrayStorage[2])
    {
      v30 = *(v0 + 64);
      v29 = *(v0 + 72);
      v32 = *(v28 - 3);
      v31 = *(v28 - 2);
      v34 = *(v28 - 1);
      v33 = *v28;
      *(v0 + 16) = v32;
      *(v0 + 24) = v31;
      *(v0 + 32) = v30;
      *(v0 + 40) = v29;
      sub_26028();

      if (sub_E7844())
      {
        v35 = v51;
        result = swift_isUniquelyReferenced_nonNull_native();
        *&v55 = v51;
        if ((result & 1) == 0)
        {
          result = sub_15E20(0, v51[2] + 1, 1);
          v35 = v55;
        }

        v37 = v35[2];
        v36 = v35[3];
        if (v37 >= v36 >> 1)
        {
          result = sub_15E20((v36 > 1), v37 + 1, 1);
          v35 = v55;
        }

        v35[2] = v37 + 1;
        v51 = v35;
        v38 = &v35[4 * v37];
        v38[4] = v32;
        v38[5] = v31;
        v38[6] = v34;
        v38[7] = v33;
        v27 = &_swiftEmptyArrayStorage[7];
        if (v53 + v26)
        {
          goto LABEL_14;
        }

        goto LABEL_26;
      }

      ++v26;
      v28 += 4;
      if (v53 + v26 == 1)
      {
        goto LABEL_26;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    return result;
  }

  v51 = _swiftEmptyArrayStorage;
LABEL_26:
  v39 = *(v0 + 176);

  *&v55 = v51;

  sub_24D8C(&v55);
  if (v39)
  {
  }

  else
  {

    v40 = v55;
    v41 = *(v55 + 16);
    if (v41)
    {
      *&v55 = _swiftEmptyArrayStorage;
      result = sub_15DBC(0, v41, 0);
      v42 = 0;
      v43 = 48;
      v44 = v55;
      while (v42 < *(v40 + 16))
      {
        v54 = *(v40 + v43);
        *&v55 = v44;
        v45 = v44[2];
        v46 = v44[3];

        if (v45 >= v46 >> 1)
        {
          result = sub_15DBC((v46 > 1), v45 + 1, 1);
          v44 = v55;
        }

        ++v42;
        v44[2] = v45 + 1;
        *&v44[2 * v45 + 4] = v54;
        v43 += 32;
        if (v41 == v42)
        {

          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v44 = _swiftEmptyArrayStorage;
LABEL_38:

    v47 = *(v0 + 8);

    return v47(v44);
  }
}

uint64_t sub_20324()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DefaultLibraryListQuery.suggestedEntities()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v0[2] = swift_task_alloc();
  v0[3] = swift_task_alloc();
  v0[4] = swift_task_alloc();
  v0[5] = swift_task_alloc();
  sub_E5944();
  v0[6] = swift_task_alloc();
  v1 = sub_E6974();
  v0[7] = v1;
  v0[8] = *(v1 - 8);
  v0[9] = swift_task_alloc();

  return _swift_task_switch(sub_204F4, 0, 0);
}

uint64_t sub_204F4(uint64_t a1)
{
  sub_E6914();
  v2 = sub_E6964();
  v3 = sub_E74D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Starting to compute suggested library lists", v4, 2u);
  }

  v6 = *(v1 + 64);
  v5 = *(v1 + 72);
  v7 = *(v1 + 56);

  (*(v6 + 8))(v5, v7);
  sub_15DBC(0, 3, 0);
  *(v1 + 80) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  v8 = 0;
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  do
  {
    v9 = *(v1 + 40);
    v10 = *(v1 + 32);
    v11 = *(&off_11F9D0 + v8 + 32);
    sub_E5914();
    *(v1 + 96) = sub_25F18();
    v12 = sub_E5414();
    sub_E5914();
    *(v1 + 104) = sub_25F6C();
    v13 = sub_E5434();
    *(v1 + 176) = v11;
    sub_E53F4();
    v14 = type metadata accessor for StationEntity(0);
    *(v1 + 112) = v14;
    v15 = *(v14 - 8);
    *(v1 + 120) = v15;
    v16 = *(v15 + 56);
    *(v1 + 128) = v16;
    *(v1 + 136) = (v15 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v16(v9, 1, 1, v14);
    sub_26324(v9, v10, &qword_12DC38, &qword_F14D0);
    sub_E53F4();
    sub_110AC(v9, &qword_12DC38, &qword_F14D0);
    v18 = _swiftEmptyArrayStorage[2];
    v17 = _swiftEmptyArrayStorage[3];
    if (v18 >= v17 >> 1)
    {
      sub_15DBC((v17 > 1), v18 + 1, 1);
    }

    *(v1 + 144) = _swiftEmptyArrayStorage;
    ++v8;
    _swiftEmptyArrayStorage[2] = v18 + 1;
    v19 = &_swiftEmptyArrayStorage[2 * v18];
    v19[4] = v12;
    v19[5] = v13;
  }

  while (v8 != 3);
  v20 = swift_task_alloc();
  *(v1 + 152) = v20;
  *v20 = v1;
  v20[1] = sub_2082C;

  return sub_20CF8();
}

uint64_t sub_2082C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {

    v4 = sub_20C50;
  }

  else
  {
    v4 = sub_20948;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_20948()
{
  v1 = *(v0 + 160);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v0 + 120);
    result = sub_15DBC(0, v2, 0);
    v5 = 0;
    v6 = _swiftEmptyArrayStorage;
    v19 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = v3;
    v21 = v2;
    v22 = v1;
    while (v5 < *(v1 + 16))
    {
      v7 = *(v0 + 128);
      v8 = *(v0 + 112);
      v24 = v6;
      v9 = *(v0 + 40);
      v11 = *(v0 + 24);
      v10 = *(v0 + 32);
      v23 = *(v0 + 16);
      sub_25FC4(v19 + *(v20 + 72) * v5, v9);
      v7(v9, 0, 1, v8);
      sub_26324(v9, v10, &qword_12DC38, &qword_F14D0);
      sub_E5914();
      v12 = sub_E5414();
      sub_E5914();
      v13 = sub_E5434();
      *(v0 + 177) = 3;
      sub_E53F4();
      sub_26324(v10, v11, &qword_12DC38, &qword_F14D0);
      sub_26324(v11, v23, &qword_12DC38, &qword_F14D0);
      sub_E53F4();
      sub_110AC(v10, &qword_12DC38, &qword_F14D0);
      sub_110AC(v11, &qword_12DC38, &qword_F14D0);
      v14 = v9;
      v6 = v24;
      result = sub_110AC(v14, &qword_12DC38, &qword_F14D0);
      v16 = v24[2];
      v15 = v24[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_15DBC((v15 > 1), v16 + 1, 1);
        v6 = v24;
      }

      ++v5;
      v6[2] = v16 + 1;
      v17 = &v6[2 * v16];
      v17[4] = v12;
      v17[5] = v13;
      v1 = v22;
      if (v21 == v5)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v6 = _swiftEmptyArrayStorage;
LABEL_9:
    v25 = *(v0 + 144);
    sub_22534(v6);

    v18 = *(v0 + 8);

    return v18(v25);
  }

  return result;
}

uint64_t sub_20C50()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_20CF8()
{
  v1 = sub_E6974();
  v0[6] = v1;
  v0[7] = *(v1 - 8);
  v0[8] = swift_task_alloc();
  v0[9] = swift_task_alloc();
  v2 = sub_E7724();
  v0[10] = v2;
  v0[11] = *(v2 - 8);
  v0[12] = swift_task_alloc();

  return _swift_task_switch(sub_20E1C, 0, 0);
}

uint64_t sub_20E1C()
{
  sub_264B0();
  v1 = sub_E7774();
  v2 = sub_E7754();
  *(v0 + 104) = v2;
  v3 = v2;
  v5 = *(v0 + 88);
  v4 = *(v0 + 96);
  v6 = *(v0 + 80);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  *(v0 + 144) = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  *(v0 + 112) = sub_E5204();
  v7 = swift_allocObject();
  *(v0 + 120) = v7;
  *(v7 + 16) = v3;
  (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v6);
  v3;
  v8 = swift_task_alloc();
  *(v0 + 128) = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E0B0, &qword_EA2E0);
  *v8 = v0;
  v8[1] = sub_211C4;
  v10 = *(v0 + 96);

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 40, v10, sub_26534, v7, v9);
}

uint64_t sub_211C4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[11] + 8))(v2[12], v2[10]);

  if (v0)
  {
    v3 = sub_21570;
  }

  else
  {
    v3 = sub_21348;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_21348()
{
  v20 = v0;

  v1 = *(v0 + 40);
  sub_E6914();
  v2 = sub_E6964();
  v3 = sub_E74D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 104);
    v5 = *(v0 + 56);
    v17 = *(v0 + 48);
    v18 = *(v0 + 72);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    v8 = swift_allocObject();
    *(v8 + 16) = &unk_EA530;
    *(v8 + 24) = 0;
    *(v0 + 16) = &unk_EA540;
    *(v0 + 24) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCF0, &qword_EA548);
    v9 = sub_E7084();
    v11 = sub_23E64(v9, v10, &v19);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Computed suggested entities: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);

    (*(v5 + 8))(v18, v17);
  }

  else
  {
    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);

    (*(v14 + 8))(v12, v13);
  }

  v15 = *(v0 + 8);

  return v15(v1);
}

uint64_t sub_21570()
{
  v19 = v0;
  v1 = v0[13];

  v2 = v0[17];
  sub_E6914();
  swift_errorRetain();
  v3 = sub_E6964();
  v4 = sub_E74B4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[7];
    v17 = v0[8];
    v6 = v0[6];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136315138;
    v0[4] = v2;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v9 = sub_E7084();
    v11 = sub_23E64(v9, v10, &v18);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v3, v4, "Unable to compute station suggestions: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    (*(v5 + 8))(v17, v6);
  }

  else
  {
    v13 = v0[7];
    v12 = v0[8];
    v14 = v0[6];

    (*(v13 + 8))(v12, v14);
  }

  v15 = v0[1];

  return v15(_swiftEmptyArrayStorage);
}

uint64_t DefaultLibraryListQuery.defaultResult()(uint64_t a1)
{
  v1[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC38, &qword_F14D0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  sub_E5944();
  v1[6] = swift_task_alloc();
  v2 = sub_E6974();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();

  return _swift_task_switch(sub_218B8, 0, 0);
}

uint64_t sub_218B8(uint64_t a1)
{
  sub_E6914();
  v2 = sub_E6964();
  v3 = sub_E74D4();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_0, v2, v3, "Starting to compute the default list", v4, 2u);
  }

  v5 = v1[10];
  v6 = v1[7];
  v7 = v1[8];

  v8 = *(v7 + 8);
  v1[11] = v8;
  v8(v5, v6);
  v9 = swift_task_alloc();
  v1[12] = v9;
  *v9 = v1;
  v9[1] = sub_219E8;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_219E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 104) = a1;
  *(v3 + 112) = v1;

  if (v1)
  {
    v4 = sub_21BCC;
  }

  else
  {
    v4 = sub_21AFC;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_21AFC()
{
  v1 = v0[13];
  v2 = v0[3];
  if (v1[2])
  {
    v4 = v1[4];
    v3 = v1[5];

    *v2 = v4;
    v2[1] = v3;
  }

  else
  {

    *v2 = 0;
    v2[1] = 0;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_21BCC(uint64_t a1)
{
  v25 = v1;
  sub_E6914();
  swift_errorRetain();
  v2 = sub_E6964();
  v3 = sub_E74B4();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 112);
    v23 = *(v1 + 88);
    v5 = *(v1 + 72);
    v6 = *(v1 + 56);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    *(v1 + 16) = v4;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_131CF0, &unk_EA7F0);
    v9 = sub_E7084();
    v11 = sub_23E64(v9, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_0, v2, v3, "Unable to compute suggestions: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);

    v23(v5, v6);
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = *(v1 + 72);
    v14 = *(v1 + 56);

    v12(v13, v14);
  }

  v15 = *(v1 + 40);
  v17 = *(v1 + 24);
  v16 = *(v1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC40, &qword_EA2E8);
  sub_E5914();
  sub_25F18();
  v18 = sub_E5414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DC50, &qword_EA2F0);
  sub_E5914();
  sub_25F6C();
  v19 = sub_E5434();
  *(v1 + 120) = 2;
  sub_E53F4();
  v20 = type metadata accessor for StationEntity(0);
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  sub_26324(v15, v16, &qword_12DC38, &qword_F14D0);
  sub_E53F4();

  sub_110AC(v15, &qword_12DC38, &qword_F14D0);
  *v17 = v18;
  v17[1] = v19;

  v21 = *(v1 + 8);

  return v21();
}

uint64_t sub_21F1C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_21FA8;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_21FA8(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 24) = v1;

  if (v1)
  {

    return _swift_task_switch(sub_220E4, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_220FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1E338;

  return v5();
}

uint64_t sub_221E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return DefaultLibraryListQuery.entities(matching:)(a2, a3);
}

uint64_t sub_22288(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1E340;

  return DefaultLibraryListQuery.entities(for:)(a1);
}

uint64_t sub_2231C(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return DefaultLibraryListQuery.suggestedEntities()();
}

uint64_t sub_223AC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26080();
  *v5 = v2;
  v5[1] = sub_588C;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_22460(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_588C;

  return DefaultLibraryListQuery.defaultResult()(a1);
}

uint64_t sub_22534(uint64_t result)
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
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_2321C(result, v10, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
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

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_22664(uint64_t result, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = *(result + 16);
  v7 = *v5;
  v8 = *(*v5 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v14 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v9 <= v7[3] >> 1)
  {
    if (*(v14 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v8 <= v9)
  {
    v20 = v8 + v6;
  }

  else
  {
    v20 = v8;
  }

  v7 = sub_234F4(isUniquelyReferenced_nonNull_native, v20, 1, v7, a2, a3, a4);
  if (!*(v14 + 16))
  {
LABEL_13:

    if (!v6)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v16 = (v7[3] >> 1) - v7[2];
  result = a5(0);
  if (v16 < v6)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v6)
  {
LABEL_14:
    *v5 = v7;
    return result;
  }

  v17 = v7[2];
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    v7[2] = v19;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_227FC()
{
  v1 = v0;
  v55 = type metadata accessor for ShowEntity(0);
  v2 = *(v55 - 8);
  __chkstk_darwin(v55);
  v56 = v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCD8, &unk_EC540);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v54 = v46 - v9;
  __chkstk_darwin(v8);
  v11 = v46 - v10;
  v12 = *v0;
  v13 = *(*v0 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v15 = v12[3] >> 1, v15 < v13))
  {
    v12 = sub_234F4(isUniquelyReferenced_nonNull_native, v13, 1, v12, &qword_12DA80, &qword_E9D98, type metadata accessor for ShowEntity);
    v15 = v12[3] >> 1;
  }

  v16 = v12[2];
  v17 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v18 = *(v2 + 72);
  v19 = v15 - v16;
  sub_25AA8(&v62, v12 + v17 + v18 * v16, v15 - v16);
  if (v20 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v20)
    {
      v21 = v12[2];
      v22 = __OFADD__(v21, v20);
      v23 = v21 + v20;
      if (v22)
      {
        __break(1u);
        goto LABEL_15;
      }

      v12[2] = v23;
    }

    if (v20 != v19)
    {
      v59 = v64;
      v60 = v65;
      v61 = v66;
      v57 = v62;
      v58 = v63;
      v24 = &qword_12DCE0;
      v25 = &qword_EA510;
      v26 = &v57;
      goto LABEL_10;
    }
  }

  v52 = v12[2];
  sub_25D38();
  v47 = *(&v65 + 1);
  v46[1] = v66;
  if (!v28)
  {
LABEL_15:
    v30 = *(v2 + 56);
    v31 = v11;
    v32 = 1;
    goto LABEL_16;
  }

  *&v57 = v28;
  v29 = v28;
  (*(&v65 + 1))(&v57);

  v30 = *(v2 + 56);
  v31 = v11;
  v32 = 0;
LABEL_16:
  v33 = v55;
  v49 = v30;
  v30(v31, v32, 1, v55);
  v34 = v54;
  sub_26324(v11, v54, &qword_12DCD8, &unk_EC540);
  v51 = *(v2 + 48);
  if (v51(v34, 1, v33) != 1)
  {
    v48 = v2 + 56;
    v35 = v55;
    do
    {
      sub_110AC(v34, &qword_12DCD8, &unk_EC540);
      v36 = v12[3];
      v37 = v36 >> 1;
      v38 = v52;
      if ((v36 >> 1) < v52 + 1)
      {
        v12 = sub_234F4((v36 > 1), v52 + 1, 1, v12, &qword_12DA80, &qword_E9D98, type metadata accessor for ShowEntity);
        v37 = v12[3] >> 1;
      }

      sub_26324(v11, v7, &qword_12DCD8, &unk_EC540);
      if (v51(v7, 1, v35) == 1)
      {
LABEL_19:
        sub_110AC(v7, &qword_12DCD8, &unk_EC540);
        v52 = v38;
      }

      else
      {
        if (v38 <= v37)
        {
          v39 = v37;
        }

        else
        {
          v39 = v38;
        }

        v50 = v39;
        v53 = v12 + v17 + v18 * v38;
        v40 = v56;
        while (1)
        {
          sub_2638C(v7, v40, type metadata accessor for ShowEntity);
          v52 = v38;
          if (v50 == v38)
          {
            break;
          }

          sub_110AC(v11, &qword_12DCD8, &unk_EC540);
          sub_2638C(v40, v53, type metadata accessor for ShowEntity);
          sub_25D38();
          if (v45)
          {
            v41 = v45;
            *&v57 = v45;
            v47(&v57);

            v42 = v11;
            v43 = 0;
          }

          else
          {
            v42 = v11;
            v43 = 1;
          }

          v35 = v55;
          v49(v42, v43, 1, v55);
          sub_26324(v11, v7, &qword_12DCD8, &unk_EC540);
          v44 = v51(v7, 1, v35);
          v53 += v18;
          v38 = v52 + 1;
          v40 = v56;
          if (v44 == 1)
          {
            goto LABEL_19;
          }
        }

        v38 = v50;
        sub_263F4(v40, type metadata accessor for ShowEntity);
        v52 = v38;
      }

      v12[2] = v38;
      v34 = v54;
      sub_26324(v11, v54, &qword_12DCD8, &unk_EC540);
    }

    while (v51(v34, 1, v35) != 1);
  }

  sub_110AC(v11, &qword_12DCD8, &unk_EC540);
  v59 = v64;
  v60 = v65;
  v61 = v66;
  v57 = v62;
  v58 = v63;
  sub_110AC(&v57, &qword_12DCE0, &qword_EA510);
  v26 = v34;
  v24 = &qword_12DCD8;
  v25 = &unk_EC540;
LABEL_10:
  result = sub_110AC(v26, v24, v25);
  *v1 = v12;
  return result;
}

void *sub_22EB8(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_23AE0(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_22FBC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23118(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAE0, &qword_E9E10);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_2321C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAD0, &unk_E9DF0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23350(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCB8, &unk_EA4E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void *sub_234F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_236D0(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA8, &unk_E9DC0);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_130870, &qword_F2B70) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_238C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCC8, qword_EBCD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_239C4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAB0, &qword_E9DD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23AE0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA98, &unk_E9DB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAA0, &unk_F59F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23C14(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCA8, &qword_EA4D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCB0, &qword_EA4D8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_23D5C(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1306D0, &unk_EA4C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_23E08(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_23E64(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_23E64(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_23F30(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_26454(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_23F30(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2403C(a5, a6);
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
    result = sub_E79D4();
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

void *sub_2403C(uint64_t a1, unint64_t a2)
{
  v3 = sub_24088(a1, a2);
  sub_241B8(&off_11F888);
  return v3;
}

void *sub_24088(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_242A4(v5, 0);
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

  result = sub_E79D4();
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
        v10 = sub_E7144();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_242A4(v10, 0);
        result = sub_E7974();
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

uint64_t sub_241B8(uint64_t result)
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

  result = sub_24318(result, v11, 1, v3);
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

void *sub_242A4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCE8, &unk_EA518);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24318(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DCE8, &unk_EA518);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

uint64_t sub_2440C(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_42BE4(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

void *sub_24538(uint64_t a1, void *a2)
{
  v5 = a2;
  if (!a2[2])
  {

    return &_swiftEmptySetSingleton;
  }

  v53 = 0;
  v7 = a1 + 56;
  v6 = *(a1 + 56);
  v8 = -1;
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v6;
  v12 = (63 - v9) >> 6;
  v61 = a2 + 7;

  v15 = 0;
  v59 = v13;
  if (!v11)
  {
LABEL_6:
    v16 = v15;
    while (1)
    {
      v17 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        goto LABEL_56;
      }

      if (v17 >= v12)
      {
        goto LABEL_53;
      }

      v11 = *(v7 + 8 * v17);
      ++v16;
      if (v11)
      {
        v15 = v17;
        break;
      }
    }
  }

  while (1)
  {
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v60 = v15;
    v20 = (v19 + ((v15 << 10) | (16 * v18)));
    v22 = *v20;
    v21 = v20[1];
    sub_E7CC4();

    sub_E7124();
    v23 = sub_E7CF4();
    v24 = -1 << *(v5 + 32);
    v2 = v23 & ~v24;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) != 0)
    {
      break;
    }

LABEL_19:

    v13 = v59;
    v15 = v60;
    v8 = -1;
    if (!v11)
    {
      goto LABEL_6;
    }
  }

  v3 = ~v24;
  while (1)
  {
    v25 = (v5[6] + 16 * v2);
    v26 = *v25 == v22 && v25[1] == v21;
    if (v26 || (sub_E7BD4() & 1) != 0)
    {
      break;
    }

    v2 = (v2 + 1) & v3;
    v8 = v2 >> 6;
    v4 = 1 << v2;
    if (((1 << v2) & v61[v2 >> 6]) == 0)
    {
      goto LABEL_19;
    }
  }

  v3 = v59;
  v27 = v60;
  v63 = v57;
  v64 = v60;
  v65 = v11;
  v62[0] = v59;
  v62[1] = v7;

  v29 = *(v5 + 32);
  v54 = ((1 << v29) + 63) >> 6;
  v14 = 8 * v54;
  if ((v29 & 0x3Fu) > 0xD)
  {
    goto LABEL_57;
  }

  while (1)
  {
    v55 = &v53;
    __chkstk_darwin(v28);
    v2 = &v53 - ((v30 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v2, v61, v30);
    v31 = *(v2 + 8 * v8) & ~v4;
    v32 = v5[2];
    v58 = v2;
    *(v2 + 8 * v8) = v31;
    v33 = v32 - 1;
LABEL_23:
    v56 = v33;
    if (v11)
    {
      goto LABEL_33;
    }

LABEL_28:
    v35 = v27;
    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v12)
      {
        v5 = sub_428D0(v58, v54, v56, v5);
        goto LABEL_51;
      }

      v11 = *(v7 + 8 * v36);
      ++v35;
      if (v11)
      {
        v27 = v36;
        while (1)
        {
LABEL_33:
          while (1)
          {
            v37 = __clz(__rbit64(v11));
            v11 &= v11 - 1;
            v38 = *(v3 + 48);
            v60 = v27;
            v39 = (v38 + ((v27 << 10) | (16 * v37)));
            v40 = *v39;
            v4 = v39[1];
            sub_E7CC4();

            sub_E7124();
            v41 = sub_E7CF4();
            v42 = -1 << *(v5 + 32);
            v8 = v41 & ~v42;
            v2 = v8 >> 6;
            v43 = 1 << v8;
            if (((1 << v8) & v61[v8 >> 6]) != 0)
            {
              break;
            }

LABEL_45:

            v27 = v60;
            if (!v11)
            {
              goto LABEL_28;
            }
          }

          v44 = (v5[6] + 16 * v8);
          if (*v44 != v40 || v44[1] != v4)
          {
            v46 = ~v42;
            while ((sub_E7BD4() & 1) == 0)
            {
              v8 = (v8 + 1) & v46;
              v2 = v8 >> 6;
              v43 = 1 << v8;
              if (((1 << v8) & v61[v8 >> 6]) == 0)
              {
                v3 = v59;
                goto LABEL_45;
              }

              v47 = (v5[6] + 16 * v8);
              if (*v47 == v40 && v47[1] == v4)
              {
                break;
              }
            }
          }

          v3 = v59;
          v34 = v58[v2];
          v58[v2] = v34 & ~v43;
          v26 = (v34 & v43) == 0;
          v27 = v60;
          if (!v26)
          {
            break;
          }

          if (!v11)
          {
            goto LABEL_28;
          }
        }

        v33 = v56 - 1;
        if (__OFSUB__(v56, 1))
        {
          __break(1u);
        }

        if (v56 == 1)
        {

          v5 = &_swiftEmptySetSingleton;
          goto LABEL_51;
        }

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    v49 = v14;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v27 = v60;
  }

  v50 = swift_slowAlloc();
  memcpy(v50, v61, v49);
  v51 = v53;
  v52 = sub_24B54(v50, v54, v5, v2, v62);

  if (!v51)
  {

    v3 = v62[0];
    v57 = v63;
    v5 = v52;
LABEL_51:
    v13 = v3;
LABEL_53:
    sub_25DE0(v13);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_24AA8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

unint64_t *sub_24B54(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v31 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v30 = v8;
    do
    {
      while (1)
      {
        v11 = a5[3];
        v12 = a5[4];
        if (!v12)
        {
          v14 = (a5[2] + 64) >> 6;
          v15 = a5[3];
          while (1)
          {
            v13 = v15 + 1;
            if (__OFADD__(v15, 1))
            {
              __break(1u);
              goto LABEL_30;
            }

            if (v13 >= v14)
            {
              break;
            }

            v12 = *(a5[1] + 8 * v13);
            ++v15;
            if (v12)
            {
              goto LABEL_10;
            }
          }

          if (v14 <= v11 + 1)
          {
            v28 = v11 + 1;
          }

          else
          {
            v28 = (a5[2] + 64) >> 6;
          }

          a5[3] = v28 - 1;
          a5[4] = 0;

          return sub_428D0(v31, a2, v30, a3);
        }

        v13 = a5[3];
LABEL_10:
        v16 = (*(*a5 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v12)))));
        v18 = *v16;
        v17 = v16[1];
        a5[3] = v13;
        a5[4] = (v12 - 1) & v12;
        sub_E7CC4();

        sub_E7124();
        v19 = sub_E7CF4();
        v20 = -1 << *(a3 + 32);
        v21 = v19 & ~v20;
        v22 = v21 >> 6;
        v23 = 1 << v21;
        if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) != 0)
        {
          break;
        }

LABEL_21:
      }

      v24 = (*(a3 + 48) + 16 * v21);
      if (*v24 != v18 || v24[1] != v17)
      {
        v26 = ~v20;
        while ((sub_E7BD4() & 1) == 0)
        {
          v21 = (v21 + 1) & v26;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v9 + 8 * (v21 >> 6))) == 0)
          {
            goto LABEL_21;
          }

          v27 = (*(a3 + 48) + 16 * v21);
          if (*v27 == v18 && v27[1] == v17)
          {
            break;
          }
        }
      }

      v10 = v31[v22];
      v31[v22] = v10 & ~v23;
    }

    while ((v10 & v23) == 0);
    v8 = v30 - 1;
    if (__OFSUB__(v30, 1))
    {
LABEL_30:
      __break(1u);
    }

    else
    {
      if (v30 != 1)
      {
        continue;
      }

      return &_swiftEmptySetSingleton;
    }

    return result;
  }
}

Swift::Int sub_24D8C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_CA2F4(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_24DF8(v5);
  *a1 = v2;
  return result;
}

Swift::Int sub_24DF8(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_E7BA4(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DAC8, &qword_EA550);
        v5 = sub_E7264();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_25014(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_24F00(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_24F00(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = result;
    v6 = *a4;
    sub_26028();
    v7 = v6 + 32 * v4 - 32;
    v8 = v5 - v4;
LABEL_5:
    v9 = v8;
    v10 = v7;
    while (1)
    {
      result = sub_E7834();
      if (result != -1)
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v11 = *(v10 + 32);
      v12 = *(v10 + 56);
      v13 = *(v10 + 40);
      v14 = *(v10 + 16);
      *(v10 + 32) = *v10;
      *(v10 + 48) = v14;
      *v10 = v11;
      *(v10 + 8) = v13;
      *(v10 + 24) = v12;
      v10 -= 32;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_25014(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = result;
  v8 = a3[1];
  if (v8 >= 1)
  {
    v9 = 0;
    v10 = _swiftEmptyArrayStorage;
    v90 = result;
    while (1)
    {
      v11 = v9;
      v12 = v9 + 1;
      if (v12 >= v8)
      {
        v8 = v12;
      }

      else
      {
        v91 = v6;
        v13 = 32 * v11;
        v14 = *a3 + 32 * v11 + 72;
        sub_26028();
        result = sub_E7834();
        v15 = v11;
        v16 = result;
        v93 = v15;
        v4 = v15 + 2;
        while (v8 != v4)
        {
          result = sub_E7834();
          ++v4;
          v14 += 32;
          if ((v16 == -1) == (result != -1))
          {
            v8 = v4 - 1;
            break;
          }
        }

        if (v16 == -1)
        {
          v11 = v93;
          v7 = v90;
          if (v8 < v93)
          {
            __break(1u);
LABEL_124:
            __break(1u);
LABEL_125:
            __break(1u);
LABEL_126:
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
            return result;
          }

          if (v93 < v8)
          {
            v17 = 32 * v8 - 8;
            v18 = v8;
            v19 = v93;
            do
            {
              if (v19 != --v18)
              {
                v26 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v20 = v26 + v13;
                v21 = (v26 + v17);
                v22 = *v20;
                v23 = *(v20 + 24);
                v24 = *(v20 + 8);
                v25 = *(v21 - 1);
                *v20 = *(v21 - 3);
                *(v20 + 16) = v25;
                *(v21 - 3) = v22;
                *(v21 - 1) = v24;
                *v21 = v23;
              }

              ++v19;
              v17 -= 32;
              v13 += 32;
            }

            while (v19 < v18);
          }

          v6 = v91;
        }

        else
        {
          v7 = v90;
          v6 = v91;
          v11 = v93;
        }
      }

      v27 = a3[1];
      if (v8 >= v27)
      {
        goto LABEL_29;
      }

      if (__OFSUB__(v8, v11))
      {
        goto LABEL_119;
      }

      if (v8 - v11 >= a4)
      {
        goto LABEL_29;
      }

      if (__OFADD__(v11, a4))
      {
        goto LABEL_120;
      }

      if (v11 + a4 < v27)
      {
        v27 = v11 + a4;
      }

      if (v27 < v11)
      {
LABEL_121:
        __break(1u);
        goto LABEL_122;
      }

      if (v8 == v27)
      {
LABEL_29:
        v28 = v8;
      }

      else
      {
        v96 = v27;
        v92 = v6;
        v74 = v11;
        v75 = *a3;
        sub_26028();
        v76 = v75 + 32 * v8 - 32;
        v94 = v74;
        v4 = v74 - v8;
        do
        {
          v77 = v4;
          v78 = v76;
          do
          {
            result = sub_E7834();
            if (result != -1)
            {
              break;
            }

            if (!v75)
            {
              goto LABEL_124;
            }

            v79 = *(v78 + 32);
            v80 = *(v78 + 56);
            v81 = *(v78 + 40);
            v82 = *(v78 + 16);
            *(v78 + 32) = *v78;
            *(v78 + 48) = v82;
            *v78 = v79;
            *(v78 + 8) = v81;
            *(v78 + 24) = v80;
            v78 -= 32;
          }

          while (!__CFADD__(v77++, 1));
          ++v8;
          v76 += 32;
          --v4;
        }

        while (v8 != v96);
        v7 = v90;
        v6 = v92;
        v11 = v94;
        v28 = v96;
      }

      if (v28 < v11)
      {
        goto LABEL_118;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_23350(0, *(v10 + 2) + 1, 1, v10);
        v10 = result;
      }

      v4 = *(v10 + 2);
      v29 = *(v10 + 3);
      v30 = v4 + 1;
      if (v4 >= v29 >> 1)
      {
        result = sub_23350((v29 > 1), v4 + 1, 1, v10);
        v10 = result;
      }

      *(v10 + 2) = v30;
      v31 = &v10[16 * v4];
      *(v31 + 4) = v11;
      *(v31 + 5) = v28;
      v32 = *v7;
      if (!*v7)
      {
        goto LABEL_128;
      }

      v95 = v28;
      if (v4)
      {
        while (1)
        {
          v33 = v30 - 1;
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v34 = *(v10 + 4);
            v35 = *(v10 + 5);
            v44 = __OFSUB__(v35, v34);
            v36 = v35 - v34;
            v37 = v44;
LABEL_50:
            if (v37)
            {
              goto LABEL_107;
            }

            v50 = &v10[16 * v30];
            v52 = *v50;
            v51 = *(v50 + 1);
            v53 = __OFSUB__(v51, v52);
            v54 = v51 - v52;
            v55 = v53;
            if (v53)
            {
              goto LABEL_110;
            }

            v56 = &v10[16 * v33 + 32];
            v58 = *v56;
            v57 = *(v56 + 1);
            v44 = __OFSUB__(v57, v58);
            v59 = v57 - v58;
            if (v44)
            {
              goto LABEL_113;
            }

            if (__OFADD__(v54, v59))
            {
              goto LABEL_114;
            }

            if (v54 + v59 >= v36)
            {
              if (v36 < v59)
              {
                v33 = v30 - 2;
              }

              goto LABEL_71;
            }

            goto LABEL_64;
          }

          v60 = &v10[16 * v30];
          v62 = *v60;
          v61 = *(v60 + 1);
          v44 = __OFSUB__(v61, v62);
          v54 = v61 - v62;
          v55 = v44;
LABEL_64:
          if (v55)
          {
            goto LABEL_109;
          }

          v63 = &v10[16 * v33];
          v65 = *(v63 + 4);
          v64 = *(v63 + 5);
          v44 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v44)
          {
            goto LABEL_112;
          }

          if (v66 < v54)
          {
            goto LABEL_3;
          }

LABEL_71:
          v71 = v33 - 1;
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_103:
            __break(1u);
LABEL_104:
            __break(1u);
LABEL_105:
            __break(1u);
LABEL_106:
            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
LABEL_109:
            __break(1u);
LABEL_110:
            __break(1u);
LABEL_111:
            __break(1u);
LABEL_112:
            __break(1u);
LABEL_113:
            __break(1u);
LABEL_114:
            __break(1u);
LABEL_115:
            __break(1u);
LABEL_116:
            __break(1u);
LABEL_117:
            __break(1u);
LABEL_118:
            __break(1u);
LABEL_119:
            __break(1u);
LABEL_120:
            __break(1u);
            goto LABEL_121;
          }

          if (!*a3)
          {
            goto LABEL_125;
          }

          v4 = *&v10[16 * v71 + 32];
          v72 = *&v10[16 * v33 + 40];
          sub_256C0((*a3 + 32 * v4), (*a3 + 32 * *&v10[16 * v33 + 32]), (*a3 + 32 * v72), v32);
          if (v6)
          {
          }

          if (v72 < v4)
          {
            goto LABEL_103;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_CA134(v10);
          }

          if (v71 >= *(v10 + 2))
          {
            goto LABEL_104;
          }

          v73 = &v10[16 * v71];
          *(v73 + 4) = v4;
          *(v73 + 5) = v72;
          result = sub_CA0A8(v33);
          v30 = *(v10 + 2);
          if (v30 <= 1)
          {
            goto LABEL_3;
          }
        }

        v38 = &v10[16 * v30 + 32];
        v39 = *(v38 - 64);
        v40 = *(v38 - 56);
        v44 = __OFSUB__(v40, v39);
        v41 = v40 - v39;
        if (v44)
        {
          goto LABEL_105;
        }

        v43 = *(v38 - 48);
        v42 = *(v38 - 40);
        v44 = __OFSUB__(v42, v43);
        v36 = v42 - v43;
        v37 = v44;
        if (v44)
        {
          goto LABEL_106;
        }

        v45 = &v10[16 * v30];
        v47 = *v45;
        v46 = *(v45 + 1);
        v44 = __OFSUB__(v46, v47);
        v48 = v46 - v47;
        if (v44)
        {
          goto LABEL_108;
        }

        v44 = __OFADD__(v36, v48);
        v49 = v36 + v48;
        if (v44)
        {
          goto LABEL_111;
        }

        if (v49 >= v41)
        {
          v67 = &v10[16 * v33 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v44 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v44)
          {
            goto LABEL_115;
          }

          if (v36 < v70)
          {
            v33 = v30 - 2;
          }

          goto LABEL_71;
        }

        goto LABEL_50;
      }

LABEL_3:
      v8 = a3[1];
      v9 = v95;
      if (v95 >= v8)
      {
        goto LABEL_90;
      }
    }
  }

  v10 = _swiftEmptyArrayStorage;
LABEL_90:
  v84 = v7;
  v7 = v6;
  v6 = *v84;
  if (!*v84)
  {
    goto LABEL_129;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  v4 = a3;
  if ((result & 1) == 0)
  {
LABEL_122:
    result = sub_CA134(v10);
    v10 = result;
  }

  v85 = *(v10 + 2);
  if (v85 >= 2)
  {
    while (1)
    {
      v86 = *v4;
      if (!*v4)
      {
        goto LABEL_126;
      }

      v4 = *&v10[16 * v85];
      v87 = *&v10[16 * v85 + 24];
      sub_256C0((v86 + 32 * v4), (v86 + 32 * *&v10[16 * v85 + 16]), (v86 + 32 * v87), v6);
      if (v7)
      {
      }

      if (v87 < v4)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v10 = sub_CA134(v10);
      }

      if (v85 - 2 >= *(v10 + 2))
      {
        goto LABEL_117;
      }

      v88 = &v10[16 * v85];
      *v88 = v4;
      *(v88 + 1) = v87;
      result = sub_CA0A8(v85 - 1);
      v85 = *(v10 + 2);
      v4 = a3;
      if (v85 <= 1)
      {
      }
    }
  }
}

uint64_t sub_256C0(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 31;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 5;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 31;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 5;
  if (v10 >= v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v13] <= a4)
    {
      memmove(a4, __dst, 32 * v13);
    }

    v14 = &v4[32 * v13];
    if (v11 >= 32 && v6 > v7)
    {
      sub_26028();
LABEL_27:
      v23 = v6 - 32;
      v5 -= 32;
      v18 = v14;
      do
      {
        v19 = v5 + 32;
        v18 -= 32;
        if (sub_E7834() == -1)
        {
          if (v19 != v6)
          {
            v21 = *(v6 - 1);
            *v5 = *v23;
            *(v5 + 1) = v21;
          }

          if (v14 <= v4 || (v6 -= 32, v23 <= v7))
          {
            v6 = v23;
            goto LABEL_39;
          }

          goto LABEL_27;
        }

        if (v19 != v14)
        {
          v20 = *(v18 + 1);
          *v5 = *v18;
          *(v5 + 1) = v20;
        }

        v5 -= 32;
        v14 = v18;
      }

      while (v18 > v4);
      v14 = v18;
    }
  }

  else
  {
    if (a4 != __src || &__src[32 * v10] <= a4)
    {
      memmove(a4, __src, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 >= 32 && v6 < v5)
    {
      sub_26028();
      while (sub_E7834() == -1)
      {
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
        if (!v16)
        {
          goto LABEL_14;
        }

LABEL_15:
        v7 += 32;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_37;
        }
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (v16)
      {
        goto LABEL_15;
      }

LABEL_14:
      v17 = *(v15 + 1);
      *v7 = *v15;
      *(v7 + 1) = v17;
      goto LABEL_15;
    }

LABEL_37:
    v6 = v7;
  }

LABEL_39:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}

void *sub_25950(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = (&dword_0 + 1);
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      v19 = __OFADD__(v14, 1);
      v14 = (v14 + 1);
      if (v19)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_25AA8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for ShowEntity(0) - 8;
  v8 = __chkstk_darwin(v7);
  __chkstk_darwin(v8);
  v12 = &v36 - v11;
  v13 = *v3;
  v14 = v3[1];
  v16 = v3[2];
  v15 = v3[3];
  v18 = v3[4];
  v17 = v3[5];
  v20 = v3[6];
  v19 = v3[7];
  if (!a2)
  {
LABEL_16:
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v16;
    a1[3] = v15;
    a1[4] = v16;
LABEL_20:
    a1[5] = v18;
    a1[6] = v17;
    a1[7] = v20;
    a1[8] = v19;
    return;
  }

  v21 = v3[2];
  if (!a3)
  {
LABEL_19:
    *a1 = v13;
    a1[1] = v14;
    a1[2] = v16;
    a1[3] = v15;
    a1[4] = v21;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v47 = v3[7];
    v48 = v17;
    v38 = v12;
    v39 = v10;
    v40 = a3;
    v41 = v13;
    v46 = v20;
    v42 = v15;
    v43 = a1;
    v19 = 0;
    v22 = (v15 >> 1);
    v23 = 1;
    v24 = v16;
    v37 = v9;
    while (2)
    {
      v44 = a2;
      v45 = v19;
      if (v24 == v22)
      {
LABEL_17:
        v33 = v43;
        v34 = v42;
        *v43 = v41;
        v33[1] = v14;
        v33[2] = v16;
        v33[3] = v34;
        v33[4] = v22;
        v33[5] = v18;
        v35 = v46;
        v33[6] = v48;
        v33[7] = v35;
        v33[8] = v47;
        return;
      }

      v25 = v24;
      while (1)
      {
        if (v24 < v16 || v25 >= v22)
        {
          __break(1u);
          goto LABEL_22;
        }

        v26 = v14;
        a1 = (v25 + 1);
        v49 = *(v14 + 8 * v25);
        v27 = v49;
        if (v18(&v49))
        {
          break;
        }

        ++v25;
        v14 = v26;
        if (v22 == a1)
        {
          goto LABEL_17;
        }
      }

      v49 = v27;
      v28 = v39;
      v46(&v49);

      v29 = v28;
      v30 = v38;
      sub_2638C(v29, v38, type metadata accessor for ShowEntity);
      v31 = v44;
      sub_2638C(v30, v44, type metadata accessor for ShowEntity);
      if (v23 == v40)
      {
        v21 = v25 + 1;
        v15 = v42;
        a1 = v43;
        v20 = v46;
        v19 = v47;
        v13 = v41;
        v17 = v48;
        v14 = v26;
        goto LABEL_19;
      }

      a2 = v31 + *(v37 + 72);
      v19 = v23;
      v24 = (v25 + 1);
      v32 = __OFADD__(v23++, 1);
      v14 = v26;
      if (!v32)
      {
        continue;
      }

      break;
    }

    __break(1u);
    goto LABEL_16;
  }

LABEL_22:
  __break(1u);
}

void sub_25D38()
{
  v1 = v0[4];
  v2 = v0[3] >> 1;
  if (v1 != v2)
  {
    while (v1 < v2 && v1 >= v0[2])
    {
      v3 = *(v0[1] + 8 * v1);
      v0[4] = v1 + 1;
      v6 = v3;
      v4 = v0[5];
      v5 = v3;
      if ((v4(&v6) & 1) == 0)
      {

        v1 = v0[4];
        if (v1 != v2)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
  }
}

uint64_t sub_25DE8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_E7BD4() & 1;
  }
}

uint64_t sub_25E40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_25E78(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_588C;

  return sub_1F41C(a1, v4);
}

unint64_t sub_25F18()
{
  result = qword_12DC48;
  if (!qword_12DC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC48);
  }

  return result;
}

unint64_t sub_25F6C()
{
  result = qword_12DC58;
  if (!qword_12DC58)
  {
    type metadata accessor for StationEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC58);
  }

  return result;
}

uint64_t sub_25FC4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StationEntity(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26028()
{
  result = qword_12DDC0;
  if (!qword_12DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DDC0);
  }

  return result;
}

unint64_t sub_26080()
{
  result = qword_12DC60;
  if (!qword_12DC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC60);
  }

  return result;
}

unint64_t sub_260D8()
{
  result = qword_12DC68;
  if (!qword_12DC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC68);
  }

  return result;
}

unint64_t sub_26130()
{
  result = qword_12DC70;
  if (!qword_12DC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC70);
  }

  return result;
}

unint64_t sub_26188()
{
  result = qword_12DC78;
  if (!qword_12DC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC78);
  }

  return result;
}

unint64_t sub_261E0()
{
  result = qword_12DC80;
  if (!qword_12DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC80);
  }

  return result;
}

unint64_t sub_26238()
{
  result = qword_12DC88;
  if (!qword_12DC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC88);
  }

  return result;
}

unint64_t sub_26290()
{
  result = qword_12DC90;
  if (!qword_12DC90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12DC98, qword_EA3D0);
    sub_26238();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DC90);
  }

  return result;
}

uint64_t sub_26324(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2638C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_263F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_26454(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_264B0()
{
  result = qword_12DB00;
  if (!qword_12DB00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12DB00);
  }

  return result;
}

uint64_t sub_264FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_26550()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_265DC;

  return sub_21F1C();
}

uint64_t sub_265DC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_266D8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_26710(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_5E10;

  return sub_220FC(a1, v4);
}

void (*EpisodeEntity.EpisodeEntityQuery.objectGraph.modify(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_1C5B0;
}

id EpisodeEntity.EpisodeEntityQuery.predicate(forAdamIDs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_E7A14();
    v3 = v2 + 56;
    result = sub_E7884();
    v5 = result;
    v6 = 0;
    v21 = v2 + 64;
    v22 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_20;
      }

      v9 = *(v2 + 36);
      [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(*(v2 + 48) + 8 * v5)];
      v10 = v2;
      sub_E79E4();
      sub_E7A24();
      sub_E7A34();
      result = sub_E79F4();
      v7 = 1 << *(v2 + 32);
      if (v5 >= v7)
      {
        goto LABEL_21;
      }

      v11 = *(v3 + 8 * v8);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v7 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v8 << 6;
        v14 = v8 + 1;
        v15 = (v21 + 8 * v8);
        while (v14 < (v7 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1E32C(v5, v9, 0);
            v7 = __clz(__rbit64(v16)) + v13;
            goto LABEL_17;
          }
        }

        result = sub_1E32C(v5, v9, 0);
LABEL_17:
        v2 = v10;
      }

      ++v6;
      v5 = v7;
      if (v6 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:
    v18 = objc_opt_self();
    sub_10E40(_swiftEmptyArrayStorage);

    sub_26E5C();
    sub_27128(&qword_12DA50, sub_26E5C, &protocol conformance descriptor for NSObject);
    isa = sub_E73A4().super.isa;

    v20 = [v18 predicateForEpisodeStoreTrackIds:isa];

    return v20;
  }

  return result;
}

id EpisodeEntity.EpisodeEntityQuery.predicate(forUuids:)(uint64_t a1)
{
  v1 = objc_opt_self();
  isa = sub_E73A4().super.isa;
  v3 = [v1 predicateForEpisodeUuids:isa];

  return v3;
}

uint64_t sub_26B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1D7E4;

  return sub_27B5C(a2, a3);
}

uint64_t sub_26C40(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return sub_28ED8(a1, v4);
}

uint64_t sub_26CF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_588C;

  return EntityQuery.suggestedEntities()(a1, a2, a3);
}

uint64_t sub_26DA8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_26F3C();
  *v5 = v2;
  v5[1] = sub_5E10;

  return EntityQuery.results()(a1, a2, v6);
}

unint64_t sub_26E5C()
{
  result = qword_12DD80;
  if (!qword_12DD80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_12DD80);
  }

  return result;
}

unint64_t sub_26F3C()
{
  result = qword_12DD48;
  if (!qword_12DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD48);
  }

  return result;
}

unint64_t sub_26F94()
{
  result = qword_12DD50;
  if (!qword_12DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD50);
  }

  return result;
}

unint64_t sub_26FEC()
{
  result = qword_12DD58;
  if (!qword_12DD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD58);
  }

  return result;
}

unint64_t sub_2708C()
{
  result = qword_12DD60;
  if (!qword_12DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD60);
  }

  return result;
}

uint64_t sub_27128(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_27174()
{
  result = qword_12DD70;
  if (!qword_12DD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_12E010, qword_EA628);
    sub_27128(&qword_12DD68, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_12DD70);
  }

  return result;
}

void *sub_27228@<X0>(void *a1@<X8>)
{
  result = sub_E51D4();
  *a1 = v3;
  return result;
}

void *sub_2727C(void (*a1)(__int128 *__return_ptr, void *, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = _swiftEmptyArrayStorage;
  if (v5)
  {
    v22 = _swiftEmptyArrayStorage;
    sub_15D58(0, v5, 0);
    v6 = _swiftEmptyArrayStorage;
    for (i = (a3 + 40); ; i += 2)
    {
      v10 = *i;
      v19[0] = *(i - 1);
      v19[1] = v10;

      a1(&v20, v19, &v18);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v11 = v20;
      v12 = v21;
      v22 = v6;
      v14 = v6[2];
      v13 = v6[3];
      if (v14 >= v13 >> 1)
      {
        v17 = v20;
        sub_15D58((v13 > 1), v14 + 1, 1);
        v11 = v17;
        v6 = v22;
      }

      v6[2] = v14 + 1;
      v15 = &v6[3 * v14];
      *(v15 + 2) = v11;
      *(v15 + 48) = v12;
      if (!--v5)
      {
        return v6;
      }
    }
  }

  return v6;
}

void *sub_273C0(uint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v2)
  {
    sub_15D18(0, v2, 0);
    v4 = _swiftEmptyArrayStorage;
    v5 = v1 + 56;
    result = sub_E7884();
    v6 = result;
    v7 = 0;
    v25 = v1 + 64;
    v26 = v2;
    v27 = v1 + 56;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_22;
      }

      v28 = v7;
      v29 = *(v1 + 36);
      result = sub_E7BB4();
      v10 = result;
      v12 = v11;
      v13 = v4;
      v30 = v4;
      v14 = v1;
      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        result = sub_15D18((v15 > 1), v16 + 1, 1);
        v13 = v30;
      }

      v13[2] = v16 + 1;
      v17 = &v13[2 * v16];
      v17[4] = v10;
      v17[5] = v12;
      v8 = 1 << *(v14 + 32);
      if (v6 >= v8)
      {
        goto LABEL_23;
      }

      v5 = v27;
      v18 = *(v27 + 8 * v9);
      if ((v18 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v1 = v14;
      v4 = v13;
      if (v29 != *(v1 + 36))
      {
        goto LABEL_25;
      }

      v19 = v18 & (-2 << (v6 & 0x3F));
      if (v19)
      {
        v8 = __clz(__rbit64(v19)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v9 << 6;
        v21 = v9 + 1;
        v22 = (v25 + 8 * v9);
        while (v21 < (v8 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_1E32C(v6, v29, 0);
            v8 = __clz(__rbit64(v23)) + v20;
            goto LABEL_4;
          }
        }

        result = sub_1E32C(v6, v29, 0);
      }

LABEL_4:
      v7 = v28 + 1;
      v6 = v8;
      if (v28 + 1 == v26)
      {
        return v4;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_27604(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for ChannelEntity(0) - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_276C0, 0, 0);
}

uint64_t sub_276C0()
{
  if (qword_12CA88 != -1)
  {
    swift_once();
  }

  v1 = sub_E6014();
  __swift_project_value_buffer(v1, qword_12E540);
  v2 = sub_E6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E87F0;

  *(v3 + 32) = sub_E6284();
  v4 = objc_allocWithZone(sub_E6134());
  v5 = sub_E6114();
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E070, &qword_EAC48);
  *v7 = v0;
  v7[1] = sub_27888;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_3C6D4, v6, v8);
}

uint64_t sub_27888()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_3CA90;
  }

  else
  {

    v2 = sub_279A4;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_279A4()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_E7AC4();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_15D78(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 40);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_E79B4();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    ChannelEntity.init(mediaObject:)(v6, *(v0 + 48));
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_15D78((v7 > 1), v8 + 1, 1);
    }

    v9 = *(v0 + 48);
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    sub_3C878(v9, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, type metadata accessor for ChannelEntity);
  }

  while (v2 != v4);
LABEL_13:

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_27B5C(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for EpisodeEntity(0) - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_27C18, 0, 0);
}

uint64_t sub_27C18()
{
  if (qword_12CAC0 != -1)
  {
    swift_once();
  }

  v1 = sub_E6014();
  __swift_project_value_buffer(v1, qword_12E8C0);
  v2 = sub_E6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E87F0;

  *(v3 + 32) = sub_E6284();
  v4 = objc_allocWithZone(sub_E6134());
  v5 = sub_E6114();
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E030, &qword_EABF8);
  *v7 = v0;
  v7[1] = sub_27DE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_3C4AC, v6, v8);
}

uint64_t sub_27DE0()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_3CA90;
  }

  else
  {

    v2 = sub_27EFC;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_27EFC()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_E7AC4();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_15E40(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 40);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_E79B4();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    EpisodeEntity.init(mediaObject:)(v6, *(v0 + 48));
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_15E40((v7 > 1), v8 + 1, 1);
    }

    v9 = *(v0 + 48);
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    sub_3C878(v9, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, type metadata accessor for EpisodeEntity);
  }

  while (v2 != v4);
LABEL_13:

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_280B4(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = *(type metadata accessor for ShowEntity(0) - 8);
  v2[6] = swift_task_alloc();

  return _swift_task_switch(sub_28170, 0, 0);
}

uint64_t sub_28170()
{
  if (qword_12CAF8 != -1)
  {
    swift_once();
  }

  v1 = sub_E6014();
  __swift_project_value_buffer(v1, qword_12EC38);
  v2 = sub_E6004();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE0, &qword_EABA0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_E87F0;

  *(v3 + 32) = sub_E6284();
  v4 = objc_allocWithZone(sub_E6134());
  v5 = sub_E6114();
  v0[7] = v5;
  v6 = swift_task_alloc();
  v0[8] = v6;
  *(v6 + 16) = v5;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v0[9] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DFE8, &qword_EABA8);
  *v7 = v0;
  v7[1] = sub_28338;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0xD000000000000013, 0x80000000000F6740, sub_3C364, v6, v8);
}

uint64_t sub_28338()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_2860C;
  }

  else
  {

    v2 = sub_28454;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_28454()
{
  v1 = *(v0 + 16);
  if (v1 >> 62)
  {
    v2 = sub_E7AC4();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8));
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = sub_15E84(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 40);
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v6 = sub_E79B4();
    }

    else
    {
      v6 = *(v1 + 8 * v4 + 32);
    }

    ShowEntity.init(mediaObject:)(v6, *(v0 + 48));
    v8 = _swiftEmptyArrayStorage[2];
    v7 = _swiftEmptyArrayStorage[3];
    if (v8 >= v7 >> 1)
    {
      sub_15E84((v7 > 1), v8 + 1, 1);
    }

    v9 = *(v0 + 48);
    ++v4;
    _swiftEmptyArrayStorage[2] = v8 + 1;
    sub_3C878(v9, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v8, type metadata accessor for ShowEntity);
  }

  while (v2 != v4);
LABEL_13:

  v10 = *(v0 + 8);

  return v10(_swiftEmptyArrayStorage);
}

uint64_t sub_2860C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_28684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v16 - v11;
  (*(v10 + 16))(&v16 - v11, a1, v9);
  v13 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  (*(v10 + 32))(v14 + v13, v12, v9);
  sub_E6124();
}

uint64_t sub_287CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  if (a1)
  {
    v11 = [swift_unknownObjectRetain() itemsFor:a3];
    v12 = sub_E71F4();

    v13 = sub_288F8(v12, a5);

    if (v13)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
      sub_E72B4();
      return swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  if (a2)
  {
    swift_errorRetain();
  }

  else
  {
    sub_18814();
    swift_allocError();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  return sub_E72A4();
}

void *sub_288F8(unint64_t a1, uint64_t (*a2)(void))
{
  if (a1 >> 62)
  {
LABEL_15:
    sub_E7AC4();
    sub_E7A14();
    v4 = sub_E7AC4();
    if (v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_E7A14();
    v4 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v4)
    {
LABEL_3:
      v5 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          sub_E79B4();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v5 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v6 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
            goto LABEL_12;
          }
        }

        a2(0);
        if (!swift_dynamicCastClass())
        {
          goto LABEL_13;
        }

        sub_E79E4();
        sub_E7A24();
        sub_E7A34();
        sub_E79F4();
        ++v5;
      }

      while (v6 != v4);
    }
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_28A70(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_28A90, 0, 0);
}

uint64_t sub_28A90()
{
  v1 = v0[2];

  v0[4] = sub_10C40(v2);

  v3 = type metadata accessor for ChannelEntity(0);
  sub_3B7DC(&qword_12E040, type metadata accessor for ChannelEntity, &protocol conformance descriptor for ChannelEntity);
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, v3);
  v5 = sub_297A8(v4, sub_3C690);
  v7 = v6;
  v9 = v8;
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_28C58;
  v11 = v0[3];

  return sub_29944(v5, v7, v9, v11);
}

uint64_t sub_28C58(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_28DF4, 0, 0);
  }
}

uint64_t sub_28DF4()
{
  v1 = v0[10];
  sub_E7384();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = sub_3CA98(v0[9], v0[4]);

    v5 = v0[1];

    return v5(v4);
  }
}

uint64_t sub_28ED8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_28EF8, 0, 0);
}

uint64_t sub_28EF8()
{
  v1 = v0[2];

  v0[4] = sub_10C40(v2);

  v3 = type metadata accessor for EpisodeEntity(0);
  sub_3B7DC(&qword_12E000, type metadata accessor for EpisodeEntity, &protocol conformance descriptor for EpisodeEntity);
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, v3);
  v5 = sub_297A8(v4, sub_3C468);
  v7 = v6;
  v9 = v8;
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_290C0;
  v11 = v0[3];

  return sub_2AE90(v5, v7, v9, v11);
}

uint64_t sub_290C0(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_2925C, 0, 0);
  }
}

uint64_t sub_2925C()
{
  v1 = v0[10];
  sub_E7384();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = sub_3D1D8(v0[9], v0[4]);

    v5 = v0[1];

    return v5(v4);
  }
}

uint64_t sub_29340(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return _swift_task_switch(sub_29360, 0, 0);
}

uint64_t sub_29360()
{
  v1 = v0[2];

  v0[4] = sub_10C40(v2);

  v3 = type metadata accessor for ShowEntity(0);
  sub_3B7DC(&qword_12DDF0, type metadata accessor for ShowEntity, &protocol conformance descriptor for ShowEntity);
  v4 = LibraryEntityIDAligner.normalizing(identifiers:for:)(v1, v3);
  v5 = sub_297A8(v4, sub_3C320);
  v7 = v6;
  v9 = v8;
  v0[5] = v5;
  v0[6] = v6;
  v0[7] = v8;

  v10 = swift_task_alloc();
  v0[8] = v10;
  *v10 = v0;
  v10[1] = sub_29528;
  v11 = v0[3];

  return sub_2C3C4(v5, v7, v9, v11);
}

uint64_t sub_29528(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {

    v5 = *(v4 + 8);

    return v5();
  }

  else
  {

    return _swift_task_switch(sub_296C4, 0, 0);
  }
}

uint64_t sub_296C4()
{
  v1 = v0[10];
  sub_E7384();
  if (v1)
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = sub_3D578(v0[9], v0[4]);

    v5 = v0[1];

    return v5(v4);
  }
}

uint64_t sub_297A8(uint64_t a1, void (*a2)(__int128 *__return_ptr, void *, uint64_t *))
{
  v15 = &v17;
  sub_2727C(a2, v14, a1);
  if (!v3)
  {
    v4 = sub_E7224();
    v2 = v5;

    sub_10C40(v6);

    v7 = *(v4 + 16);
    if (v7)
    {
      v16 = _swiftEmptyArrayStorage;
      sub_15D38(0, v7, 0);
      v8 = v16;
      v9 = v16[2];
      v10 = 32;
      do
      {
        v11 = *(v4 + v10);
        v16 = v8;
        v12 = v8[3];
        if (v9 >= v12 >> 1)
        {
          sub_15D38((v12 > 1), v9 + 1, 1);
          v8 = v16;
        }

        v8[2] = v9 + 1;
        v8[v9 + 4] = v11;
        v10 += 8;
        ++v9;
        --v7;
      }

      while (v7);
    }

    else
    {

      v8 = _swiftEmptyArrayStorage;
    }

    sub_10DCC(v8);
  }

  return v2;
}

uint64_t sub_29944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v4[12] = a1;
  v6 = sub_E6974();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for ChannelEntity(0);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_E7724();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_29B04, 0, 0);
}

uint64_t sub_29B04()
{
  v0[4] = v0[14];
  v0[3] = v0[13];
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);

  v1 = sub_E7774();
  v2 = sub_E7754();
  v0[29] = v2;
  v3 = v2;

  v0[5] = v0[2];
  if (qword_12CA80 != -1)
  {
    swift_once();
  }

  v5 = v0[27];
  v4 = v0[28];
  v20 = v0[26];
  v6 = v0[14];
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_E7024();
  v9 = [v7 initWithEntityName:v8];
  v0[30] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v10 + 32) = sub_E7544();
  v11 = sub_3C530();
  v0[31] = v11;
  *(v10 + 40) = (*(v11 + 48))(v6, &type metadata for ChannelEntity.ChannelEntityQuery, v11);
  *(v10 + 48) = [objc_opt_self() falsePredicate];
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v13 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v9 setPredicate:v13];
  v14 = swift_allocObject();
  v0[32] = v14;
  *(v14 + 16) = v3;
  *(v14 + 24) = v9;
  (*(v5 + 104))(v4, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v20);
  v3;
  v15 = v9;
  v16 = swift_task_alloc();
  v0[33] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E050, &qword_EA0E0);
  *v16 = v0;
  v16[1] = sub_29F30;
  v18 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v18, sub_3C5C4, v14, v17);
}

uint64_t sub_29F30()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v3 = sub_3CA58;
  }

  else
  {
    v3 = sub_2A0B4;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_2A0B4()
{
  v74 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = 0;
  v6 = *(v0 + 48);
  v1[35] = v6;
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v71 = v6;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v9 = v1[25];
    sub_3C628(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5++, v9, type metadata accessor for ChannelEntity);
    v11 = *(v3 + 16);
    v10 = *(v3 + 24);

    sub_3C8E0(v9, type metadata accessor for ChannelEntity);
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22FBC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22FBC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v6 = v71;
    }
  }

  sub_3DA98(v8);

  v15 = *(v6 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v69 = v1[24];
    v73[0] = _swiftEmptyArrayStorage;
    sub_15D38(0, v15, 0);
    v17 = 0;
    v16 = _swiftEmptyArrayStorage;
    v18 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v17 < *(v6 + 16))
    {
      v19 = v1;
      v20 = v1[24];
      sub_3C628(v18 + *(v4 + 72) * v17, v20, type metadata accessor for ChannelEntity);
      v21 = *(v69 + 40);
      sub_3C8E0(v20, type metadata accessor for ChannelEntity);
      v73[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_15D38((v22 > 1), v23 + 1, 1);
        v16 = v73[0];
      }

      ++v17;
      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v1 = v19;
      v6 = v71;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_44;
  }

LABEL_16:
  if (*(v1[14] + 16) && (v24 = v16[2]) != 0)
  {
    v25 = v1;
    v26 = 4;
    do
    {
      sub_42AF4(v16[v26++]);
      --v24;
    }

    while (v24);

    v1 = v25;
  }

  else
  {
  }

  v27 = v1[3];
  v1[36] = v27;
  v1[7] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_3C2A0(&qword_12DB70, &unk_12DF70, &qword_E9E80, &protocol conformance descriptor for Set<A>);
  if (sub_E7404() & 1) != 0 || (v1[8] = v1[4], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88, &protocol conformance descriptor for Set<A>), (sub_E7404()))
  {
    v28 = v1[34];
    sub_E7384();
    if (v28)
    {

      v29 = v1[1];

      v29();
    }

    else
    {
      v72 = v1;
      sub_E6914();
      v30 = sub_E6964();
      v31 = sub_E7494();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Some entities are lingering, checking remote source for episode content.", v32, 2u);
      }

      v33 = v72[20];
      v34 = v72[15];
      v35 = v72[16];

      v36 = *(v35 + 8);
      v72[37] = v36;
      v37 = v33;
      v38 = v72;
      v36(v37, v34);
      v72[9] = v27;
      if (sub_E7404())
      {
        sub_E6914();
        v39 = sub_E6964();
        v40 = sub_E74B4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = v72[21];
          v68 = v72[15];
          v70 = v72[19];
          v42 = swift_slowAlloc();
          v73[0] = swift_slowAlloc();
          *v42 = 136315394;
          v72[11] = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E058, &qword_EAC28);
          v43 = sub_E7084();
          v45 = sub_23E64(v43, v44, v73);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2080;

          v46 = sub_E73B4();
          v48 = v47;

          v49 = sub_23E64(v46, v48, v73);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_0, v39, v40, "Failed to find requested local entities (%s) with identifiers: %s", v42, 0x16u);
          swift_arrayDestroy();
          v38 = v72;

          v51 = v68;
          v50 = v70;
        }

        else
        {
          v60 = v72[19];
          v61 = v72[15];

          v50 = v60;
          v38 = v72;
          v51 = v61;
        }

        v36(v50, v51);
      }

      v62 = v38;
      v63 = v38[31];
      v62[38] = v62[4];

      v65 = sub_273C0(v64);
      v62[39] = v65;

      v66 = (*(v63 + 40))(&type metadata for ChannelEntity.ChannelEntityQuery, v63);
      v62[40] = v66;
      v67 = swift_task_alloc();
      v62[41] = v67;
      *v67 = v62;
      v67[1] = sub_2A98C;

      sub_2D9D8(v65, v66);
    }
  }

  else
  {
    sub_E6914();
    v52 = sub_E6964();
    v53 = sub_E7494();
    v54 = os_log_type_enabled(v52, v53);
    v56 = v1[16];
    v55 = v1[17];
    v57 = v1[15];
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v52, v53, "Found episodes using local-only identifiers", v58, 2u);
    }

    (*(v56 + 8))(v55, v57);

    v59 = v1[1];

    v59(v71);
  }
}

uint64_t sub_2A98C(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_2AAC8, 0, 0);
}

uint64_t sub_2AAC8()
{
  v33 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[23];
      sub_3C628(v5, v8, type metadata accessor for ChannelEntity);
      v9 = *(v4 + 40);
      sub_3C8E0(v8, type metadata accessor for ChannelEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23118(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23118((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      *&v7[8 * v11 + 32] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v0[38] + 16))
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = 32;
      do
      {
        sub_42AF4(*&v7[v13]);
        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  v0[10] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88, &protocol conformance descriptor for Set<A>);
  if (sub_E7404())
  {
    sub_E6914();
    v14 = sub_E6964();
    v15 = sub_E74B4();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[37];
    v18 = v0[18];
    v19 = v0[15];
    if (v16)
    {
      v31 = v0[37];
      v20 = swift_slowAlloc();
      v30 = v18;
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;

      v22 = sub_E73B4();
      v24 = v23;

      v25 = sub_23E64(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_0, v14, v15, "Failed to find requested remote episodes with identifiers: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);

      v31(v30, v19);
    }

    else
    {

      v17(v18, v19);
    }
  }

  v26 = v0[42];
  v32 = v0[35];
  sub_224F8(v26);

  v27 = v32;

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_2AE90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v4[12] = a1;
  v6 = sub_E6974();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for EpisodeEntity(0);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_E7724();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_2B050, 0, 0);
}

uint64_t sub_2B050()
{
  v0[4] = v0[14];
  v0[3] = v0[13];
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);

  v1 = sub_E7774();
  v2 = sub_E7754();
  v0[29] = v2;
  v3 = v2;

  v0[5] = v0[2];
  if (qword_12CAB8 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v20 = v0[26];
  v21 = v0[28];
  v5 = v0[13];
  v6 = v0[14];
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_E7024();
  v9 = [v7 initWithEntityName:v8];
  v0[30] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v10 + 32) = sub_E7544();
  *(v10 + 40) = EpisodeEntity.EpisodeEntityQuery.predicate(forAdamIDs:)(v6);
  v11 = sub_3C3E8();
  v0[31] = v11;
  *(v10 + 48) = (*(v11 + 56))(v5, &type metadata for EpisodeEntity.EpisodeEntityQuery, v11);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v13 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v9 setPredicate:v13];
  v14 = swift_allocObject();
  v0[32] = v14;
  *(v14 + 16) = v3;
  *(v14 + 24) = v9;
  (*(v4 + 104))(v21, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v20);
  v3;
  v15 = v9;
  v16 = swift_task_alloc();
  v0[33] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E010, qword_EA628);
  *v16 = v0;
  v16[1] = sub_2B464;
  v18 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v18, sub_3C43C, v14, v17);
}

uint64_t sub_2B464()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v3 = sub_3CA58;
  }

  else
  {
    v3 = sub_2B5E8;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_2B5E8()
{
  v74 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = 0;
  v6 = *(v0 + 48);
  v1[35] = v6;
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v71 = v6;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v9 = v1[25];
    sub_3C628(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5++, v9, type metadata accessor for EpisodeEntity);
    v11 = *(v3 + 72);
    v10 = *(v3 + 80);

    sub_3C8E0(v9, type metadata accessor for EpisodeEntity);
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22FBC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22FBC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v6 = v71;
    }
  }

  sub_3DA98(v8);

  v15 = *(v6 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v69 = v1[24];
    v73[0] = _swiftEmptyArrayStorage;
    sub_15D38(0, v15, 0);
    v17 = 0;
    v16 = _swiftEmptyArrayStorage;
    v18 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v17 < *(v6 + 16))
    {
      v19 = v1;
      v20 = v1[24];
      sub_3C628(v18 + *(v4 + 72) * v17, v20, type metadata accessor for EpisodeEntity);
      v21 = *(v69 + 88);
      sub_3C8E0(v20, type metadata accessor for EpisodeEntity);
      v73[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_15D38((v22 > 1), v23 + 1, 1);
        v16 = v73[0];
      }

      ++v17;
      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v1 = v19;
      v6 = v71;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_44;
  }

LABEL_16:
  if (*(v1[14] + 16) && (v24 = v16[2]) != 0)
  {
    v25 = v1;
    v26 = 4;
    do
    {
      sub_42AF4(v16[v26++]);
      --v24;
    }

    while (v24);

    v1 = v25;
  }

  else
  {
  }

  v27 = v1[3];
  v1[36] = v27;
  v1[7] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_3C2A0(&qword_12DB70, &unk_12DF70, &qword_E9E80, &protocol conformance descriptor for Set<A>);
  if (sub_E7404() & 1) != 0 || (v1[8] = v1[4], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88, &protocol conformance descriptor for Set<A>), (sub_E7404()))
  {
    v28 = v1[34];
    sub_E7384();
    if (v28)
    {

      v29 = v1[1];

      v29();
    }

    else
    {
      v72 = v1;
      sub_E6914();
      v30 = sub_E6964();
      v31 = sub_E7494();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Some entities are lingering, checking remote source for episode content.", v32, 2u);
      }

      v33 = v72[20];
      v34 = v72[15];
      v35 = v72[16];

      v36 = *(v35 + 8);
      v72[37] = v36;
      v37 = v33;
      v38 = v72;
      v36(v37, v34);
      v72[9] = v27;
      if (sub_E7404())
      {
        sub_E6914();
        v39 = sub_E6964();
        v40 = sub_E74B4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = v72[21];
          v68 = v72[15];
          v70 = v72[19];
          v42 = swift_slowAlloc();
          v73[0] = swift_slowAlloc();
          *v42 = 136315394;
          v72[11] = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12E018, &qword_EABD8);
          v43 = sub_E7084();
          v45 = sub_23E64(v43, v44, v73);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2080;

          v46 = sub_E73B4();
          v48 = v47;

          v49 = sub_23E64(v46, v48, v73);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_0, v39, v40, "Failed to find requested local entities (%s) with identifiers: %s", v42, 0x16u);
          swift_arrayDestroy();
          v38 = v72;

          v51 = v68;
          v50 = v70;
        }

        else
        {
          v60 = v72[19];
          v61 = v72[15];

          v50 = v60;
          v38 = v72;
          v51 = v61;
        }

        v36(v50, v51);
      }

      v62 = v38;
      v63 = v38[31];
      v62[38] = v62[4];

      v65 = sub_273C0(v64);
      v62[39] = v65;

      v66 = (*(v63 + 40))(&type metadata for EpisodeEntity.EpisodeEntityQuery, v63);
      v62[40] = v66;
      v67 = swift_task_alloc();
      v62[41] = v67;
      *v67 = v62;
      v67[1] = sub_2BEC0;

      sub_2DECC(v65, v66);
    }
  }

  else
  {
    sub_E6914();
    v52 = sub_E6964();
    v53 = sub_E7494();
    v54 = os_log_type_enabled(v52, v53);
    v56 = v1[16];
    v55 = v1[17];
    v57 = v1[15];
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v52, v53, "Found episodes using local-only identifiers", v58, 2u);
    }

    (*(v56 + 8))(v55, v57);

    v59 = v1[1];

    v59(v71);
  }
}

uint64_t sub_2BEC0(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_2BFFC, 0, 0);
}

uint64_t sub_2BFFC()
{
  v33 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[23];
      sub_3C628(v5, v8, type metadata accessor for EpisodeEntity);
      v9 = *(v4 + 88);
      sub_3C8E0(v8, type metadata accessor for EpisodeEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23118(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23118((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      *&v7[8 * v11 + 32] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v0[38] + 16))
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = 32;
      do
      {
        sub_42AF4(*&v7[v13]);
        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  v0[10] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88, &protocol conformance descriptor for Set<A>);
  if (sub_E7404())
  {
    sub_E6914();
    v14 = sub_E6964();
    v15 = sub_E74B4();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[37];
    v18 = v0[18];
    v19 = v0[15];
    if (v16)
    {
      v31 = v0[37];
      v20 = swift_slowAlloc();
      v30 = v18;
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;

      v22 = sub_E73B4();
      v24 = v23;

      v25 = sub_23E64(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_0, v14, v15, "Failed to find requested remote episodes with identifiers: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);

      v31(v30, v19);
    }

    else
    {

      v17(v18, v19);
    }
  }

  v26 = v0[42];
  v32 = v0[35];
  sub_22628(v26);

  v27 = v32;

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_2C3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a2;
  v4[14] = a3;
  v4[12] = a1;
  v6 = sub_E6974();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v7 = type metadata accessor for ShowEntity(0);
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v8 = sub_E7724();
  v4[26] = v8;
  v4[27] = *(v8 - 8);
  v4[28] = swift_task_alloc();
  v4[2] = a4;

  return _swift_task_switch(sub_2C584, 0, 0);
}

uint64_t sub_2C584()
{
  v0[4] = v0[14];
  v0[3] = v0[13];
  sub_4ABC(0, &qword_12DB00, MTDB_ptr);

  v1 = sub_E7774();
  v2 = sub_E7754();
  v0[29] = v2;
  v3 = v2;

  v0[5] = v0[2];
  if (qword_12CAF0 != -1)
  {
    swift_once();
  }

  v4 = v0[27];
  v20 = v0[26];
  v21 = v0[28];
  v5 = v0[13];
  v6 = v0[14];
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = sub_E7024();
  v9 = [v7 initWithEntityName:v8];
  v0[30] = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_E9C10;
  sub_4ABC(0, &unk_12DB60, NSManagedObject_ptr);
  *(v10 + 32) = sub_E7544();
  *(v10 + 40) = ShowEntity.ShowEntityQuery.predicate(forAdamIDs:)(v6);
  v11 = sub_3C220();
  v0[31] = v11;
  *(v10 + 48) = (*(v11 + 56))(v5, &type metadata for ShowEntity.ShowEntityQuery, v11);
  sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
  isa = sub_E71E4().super.isa;

  v13 = [objc_opt_self() orPredicateWithSubpredicates:isa];

  [v9 setPredicate:v13];
  v14 = swift_allocObject();
  v0[32] = v14;
  *(v14 + 16) = v3;
  *(v14 + 24) = v9;
  (*(v4 + 104))(v21, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v20);
  v3;
  v15 = v9;
  v16 = swift_task_alloc();
  v0[33] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
  *v16 = v0;
  v16[1] = sub_2C994;
  v18 = v0[28];

  return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 6, v18, sub_3C274, v14, v17);
}

uint64_t sub_2C994()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  (*(v2[27] + 8))(v2[28], v2[26]);

  if (v0)
  {
    v3 = sub_2D3F0;
  }

  else
  {
    v3 = sub_2CB18;
  }

  return _swift_task_switch(v3, 0, 0);
}

void sub_2CB18()
{
  v74 = v0;
  v1 = v0;
  v2 = *(v0 + 240);
  v3 = *(v0 + 200);
  v4 = *(v0 + 176);

  v5 = 0;
  v6 = *(v0 + 48);
  v1[35] = v6;
  v7 = *(v6 + 16);
  v8 = _swiftEmptyArrayStorage;
  v71 = v6;
  while (v7 != v5)
  {
    if (v5 >= *(v6 + 16))
    {
      __break(1u);
LABEL_44:
      __break(1u);
      return;
    }

    v9 = v1[25];
    sub_3C628(v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v5++, v9, type metadata accessor for ShowEntity);
    v11 = *(v3 + 40);
    v10 = *(v3 + 48);

    sub_3C8E0(v9, type metadata accessor for ShowEntity);
    if (v10)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v8 = sub_22FBC(0, *(v8 + 2) + 1, 1, v8);
      }

      v13 = *(v8 + 2);
      v12 = *(v8 + 3);
      if (v13 >= v12 >> 1)
      {
        v8 = sub_22FBC((v12 > 1), v13 + 1, 1, v8);
      }

      *(v8 + 2) = v13 + 1;
      v14 = &v8[16 * v13];
      *(v14 + 4) = v11;
      *(v14 + 5) = v10;
      v6 = v71;
    }
  }

  sub_3DA98(v8);

  v15 = *(v6 + 16);
  v16 = _swiftEmptyArrayStorage;
  if (v15)
  {
    v69 = v1[24];
    v73[0] = _swiftEmptyArrayStorage;
    sub_15D38(0, v15, 0);
    v17 = 0;
    v16 = _swiftEmptyArrayStorage;
    v18 = v6 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    while (v17 < *(v6 + 16))
    {
      v19 = v1;
      v20 = v1[24];
      sub_3C628(v18 + *(v4 + 72) * v17, v20, type metadata accessor for ShowEntity);
      v21 = *(v69 + 56);
      sub_3C8E0(v20, type metadata accessor for ShowEntity);
      v73[0] = v16;
      v23 = v16[2];
      v22 = v16[3];
      if (v23 >= v22 >> 1)
      {
        sub_15D38((v22 > 1), v23 + 1, 1);
        v16 = v73[0];
      }

      ++v17;
      v16[2] = v23 + 1;
      v16[v23 + 4] = v21;
      v1 = v19;
      v6 = v71;
      if (v15 == v17)
      {
        goto LABEL_16;
      }
    }

    goto LABEL_44;
  }

LABEL_16:
  if (*(v1[14] + 16) && (v24 = v16[2]) != 0)
  {
    v25 = v1;
    v26 = 4;
    do
    {
      sub_42AF4(v16[v26++]);
      --v24;
    }

    while (v24);

    v1 = v25;
  }

  else
  {
  }

  v27 = v1[3];
  v1[36] = v27;
  v1[7] = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF70, &qword_E9E80);
  sub_3C2A0(&qword_12DB70, &unk_12DF70, &qword_E9E80, &protocol conformance descriptor for Set<A>);
  if (sub_E7404() & 1) != 0 || (v1[8] = v1[4], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88), sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88, &protocol conformance descriptor for Set<A>), (sub_E7404()))
  {
    v28 = v1[34];
    sub_E7384();
    if (v28)
    {

      v29 = v1[1];

      v29();
    }

    else
    {
      v72 = v1;
      sub_E6914();
      v30 = sub_E6964();
      v31 = sub_E7494();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_0, v30, v31, "Some entities are lingering, checking remote source for episode content.", v32, 2u);
      }

      v33 = v72[20];
      v34 = v72[15];
      v35 = v72[16];

      v36 = *(v35 + 8);
      v72[37] = v36;
      v37 = v33;
      v38 = v72;
      v36(v37, v34);
      v72[9] = v27;
      if (sub_E7404())
      {
        sub_E6914();
        v39 = sub_E6964();
        v40 = sub_E74B4();
        if (os_log_type_enabled(v39, v40))
        {
          v41 = v72[21];
          v68 = v72[15];
          v70 = v72[19];
          v42 = swift_slowAlloc();
          v73[0] = swift_slowAlloc();
          *v42 = 136315394;
          v72[11] = v41;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DF90, &qword_EAB78);
          v43 = sub_E7084();
          v45 = sub_23E64(v43, v44, v73);

          *(v42 + 4) = v45;
          *(v42 + 12) = 2080;

          v46 = sub_E73B4();
          v48 = v47;

          v49 = sub_23E64(v46, v48, v73);

          *(v42 + 14) = v49;
          _os_log_impl(&dword_0, v39, v40, "Failed to find requested local entities (%s) with identifiers: %s", v42, 0x16u);
          swift_arrayDestroy();
          v38 = v72;

          v51 = v68;
          v50 = v70;
        }

        else
        {
          v60 = v72[19];
          v61 = v72[15];

          v50 = v60;
          v38 = v72;
          v51 = v61;
        }

        v36(v50, v51);
      }

      v62 = v38;
      v63 = v38[31];
      v62[38] = v62[4];

      v65 = sub_273C0(v64);
      v62[39] = v65;

      v66 = (*(v63 + 40))(&type metadata for ShowEntity.ShowEntityQuery, v63);
      v62[40] = v66;
      v67 = swift_task_alloc();
      v62[41] = v67;
      *v67 = v62;
      v67[1] = sub_2D4D4;

      sub_2E2AC(v65, v66);
    }
  }

  else
  {
    sub_E6914();
    v52 = sub_E6964();
    v53 = sub_E7494();
    v54 = os_log_type_enabled(v52, v53);
    v56 = v1[16];
    v55 = v1[17];
    v57 = v1[15];
    if (v54)
    {
      v58 = swift_slowAlloc();
      *v58 = 0;
      _os_log_impl(&dword_0, v52, v53, "Found episodes using local-only identifiers", v58, 2u);
    }

    (*(v56 + 8))(v55, v57);

    v59 = v1[1];

    v59(v71);
  }
}

uint64_t sub_2D3F0()
{
  v1 = *(v0 + 240);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2D4D4(uint64_t a1)
{
  *(*v1 + 336) = a1;

  return _swift_task_switch(sub_2D610, 0, 0);
}

uint64_t sub_2D610()
{
  v33 = v0;
  v1 = v0[42];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[22];
    v4 = v0[23];
    v5 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v6 = *(v3 + 72);
    v7 = _swiftEmptyArrayStorage;
    do
    {
      v8 = v0[23];
      sub_3C628(v5, v8, type metadata accessor for ShowEntity);
      v9 = *(v4 + 56);
      sub_3C8E0(v8, type metadata accessor for ShowEntity);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_23118(0, *(v7 + 2) + 1, 1, v7);
      }

      v11 = *(v7 + 2);
      v10 = *(v7 + 3);
      if (v11 >= v10 >> 1)
      {
        v7 = sub_23118((v10 > 1), v11 + 1, 1, v7);
      }

      *(v7 + 2) = v11 + 1;
      *&v7[8 * v11 + 32] = v9;
      v5 += v6;
      --v2;
    }

    while (v2);
  }

  else
  {
    v7 = _swiftEmptyArrayStorage;
  }

  if (*(v0[38] + 16))
  {
    v12 = *(v7 + 2);
    if (v12)
    {
      v13 = 32;
      do
      {
        sub_42AF4(*&v7[v13]);
        v13 += 8;
        --v12;
      }

      while (v12);
    }
  }

  v0[10] = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DF80, &qword_E9E88);
  sub_3C2A0(&qword_12DAE8, &unk_12DF80, &qword_E9E88, &protocol conformance descriptor for Set<A>);
  if (sub_E7404())
  {
    sub_E6914();
    v14 = sub_E6964();
    v15 = sub_E74B4();
    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[37];
    v18 = v0[18];
    v19 = v0[15];
    if (v16)
    {
      v31 = v0[37];
      v20 = swift_slowAlloc();
      v30 = v18;
      v21 = swift_slowAlloc();
      v32 = v21;
      *v20 = 136315138;

      v22 = sub_E73B4();
      v24 = v23;

      v25 = sub_23E64(v22, v24, &v32);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_0, v14, v15, "Failed to find requested remote episodes with identifiers: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);

      v31(v30, v19);
    }

    else
    {

      v17(v18, v19);
    }
  }

  v26 = v0[42];
  v32 = v0[35];
  sub_227C0(v26);

  v27 = v32;

  v28 = v0[1];

  return v28(v27);
}

uint64_t sub_2D9D8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E68B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_E6874();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_E68A4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_2DBA4, 0, 0);
}

uint64_t sub_2DBA4(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[14];
  v4 = v1[15];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v5 = *(v4 + 8);
  v1[20] = v5;
  v1[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = sub_E6894();
  v7 = sub_E7674();
  if (sub_E77F4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v6, v7, v9, "LibraryAppIntentMediaAPIFetch", "", v8, 2u);
  }

  v10 = v1[19];
  v12 = v1[13];
  v11 = v1[14];
  v13 = v1[12];
  v14 = v1[8];
  v15 = v1[9];

  (*(v15 + 16))(v13, v12, v14);
  sub_E68F4();
  swift_allocObject();
  v1[22] = sub_E68E4();
  v16 = *(v15 + 8);
  v1[23] = v16;
  v1[24] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  v5(v10, v11);
  v17 = swift_task_alloc();
  v1[25] = v17;
  *v17 = v1;
  v17[1] = sub_2DDB8;
  v19 = v1[2];
  v18 = v1[3];

  return sub_2F32C(v19, v18);
}

uint64_t sub_2DDB8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_3CA44;
  }

  else
  {
    v4 = sub_3CA54;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2DECC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E68B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_E6874();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_E68A4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_2E098, 0, 0);
}

uint64_t sub_2E098(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[14];
  v4 = v1[15];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v5 = *(v4 + 8);
  v1[20] = v5;
  v1[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = sub_E6894();
  v7 = sub_E7674();
  if (sub_E77F4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v6, v7, v9, "LibraryAppIntentMediaAPIFetch", "", v8, 2u);
  }

  v10 = v1[19];
  v12 = v1[13];
  v11 = v1[14];
  v13 = v1[12];
  v14 = v1[8];
  v15 = v1[9];

  (*(v15 + 16))(v13, v12, v14);
  sub_E68F4();
  swift_allocObject();
  v1[22] = sub_E68E4();
  v16 = *(v15 + 8);
  v1[23] = v16;
  v1[24] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  v5(v10, v11);
  v17 = swift_task_alloc();
  v1[25] = v17;
  *v17 = v1;
  v17[1] = sub_2DDB8;
  v19 = v1[2];
  v18 = v1[3];

  return sub_30008(v19, v18);
}

uint64_t sub_2E2AC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_E68B4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = sub_E6874();
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v5 = sub_E68A4();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return _swift_task_switch(sub_2E478, 0, 0);
}

uint64_t sub_2E478(uint64_t a1)
{
  v2 = v1[18];
  v3 = v1[14];
  v4 = v1[15];
  sub_E6884();
  sub_E6884();
  sub_E6894();
  sub_E6844();
  v5 = *(v4 + 8);
  v1[20] = v5;
  v1[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v3);
  v6 = sub_E6894();
  v7 = sub_E7674();
  if (sub_E77F4())
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    v9 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v6, v7, v9, "LibraryAppIntentMediaAPIFetch", "", v8, 2u);
  }

  v10 = v1[19];
  v12 = v1[13];
  v11 = v1[14];
  v13 = v1[12];
  v14 = v1[8];
  v15 = v1[9];

  (*(v15 + 16))(v13, v12, v14);
  sub_E68F4();
  swift_allocObject();
  v1[22] = sub_E68E4();
  v16 = *(v15 + 8);
  v1[23] = v16;
  v1[24] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v16(v12, v14);
  v5(v10, v11);
  v17 = swift_task_alloc();
  v1[25] = v17;
  *v17 = v1;
  v17[1] = sub_2E68C;
  v19 = v1[2];
  v18 = v1[3];

  return sub_30CE4(v19, v18);
}

uint64_t sub_2E68C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_2EA20;
  }

  else
  {
    v4 = sub_2E7A0;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_2E7A0(uint64_t a1)
{
  sub_E6884();
  v2 = sub_E6894();
  sub_E68D4();
  v3 = sub_E7664();
  if (sub_E77F4())
  {
    v4 = v1[7];
    v5 = v1[4];
    v6 = v1[5];

    sub_E6904();

    if ((*(v6 + 88))(v4, v5) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[5] + 8))(v1[7], v1[4]);
      v7 = "SUCCESS";
    }

    v22 = v1[23];
    v23 = v1[20];
    v14 = v1[17];
    v15 = v1[14];
    v16 = v1[11];
    v17 = v1[8];
    v18 = swift_slowAlloc();
    *v18 = 0;
    v19 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v3, v19, "LibraryAppIntentMediaAPIFetch", v7, v18, 2u);

    v22(v16, v17);
    v23(v14, v15);
  }

  else
  {
    v8 = v1[23];
    v9 = v1[20];
    v10 = v1[17];
    v11 = v1[14];
    v12 = v1[11];
    v13 = v1[8];

    v8(v12, v13);
    v9(v10, v11);
  }

  v24 = v1[26];

  v20 = v1[1];

  return v20(v24);
}

uint64_t sub_2EA20(uint64_t a1)
{
  sub_E6884();
  v2 = sub_E6894();
  sub_E68D4();
  v3 = sub_E7664();
  if (sub_E77F4())
  {
    v24 = v3;
    v5 = v1[5];
    v4 = v1[6];
    v6 = v1[4];

    sub_E6904();

    if ((*(v5 + 88))(v4, v6) == enum case for OSSignpostError.doubleEnd(_:))
    {
      v7 = "[Error] Interval already ended";
    }

    else
    {
      (*(v1[5] + 8))(v1[6], v1[4]);
      v7 = "FAILURE";
    }

    v14 = v1[23];
    v23 = v1[20];
    v15 = v1[16];
    v16 = v1[14];
    v17 = v1[10];
    v18 = v1[8];
    v19 = swift_slowAlloc();
    *v19 = 0;
    v20 = sub_E6854();
    _os_signpost_emit_with_name_impl(&dword_0, v2, v24, v20, "LibraryAppIntentMediaAPIFetch", v7, v19, 2u);

    v14(v17, v18);
    v23(v15, v16);
  }

  else
  {
    v8 = v1[23];
    v9 = v1[20];
    v10 = v1[16];
    v11 = v1[14];
    v12 = v1[10];
    v13 = v1[8];

    v8(v12, v13);
    v9(v10, v11);
  }

  v21 = v1[1];

  return v21(_swiftEmptyArrayStorage);
}

void *sub_2ECC0(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ChannelEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12DC30, MTChannel_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v2)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15D78(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ChannelEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15D78((v15 > 1), v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_3C878(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for ChannelEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_2EEE4(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodeEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_131F00, MTEpisode_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v2)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15E40(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      EpisodeEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15E40((v15 > 1), v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_3C878(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for EpisodeEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

void *sub_2F108(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for ShowEntity(0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4 - 8);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v8 = a1;
  v9 = sub_E7734();
  if (v2)
  {
    return v8;
  }

  v10 = v9;
  v17[1] = 0;
  if (!(v9 >> 62))
  {
    v11 = *(&dword_10 + (v9 & 0xFFFFFFFFFFFFFF8));
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_14;
  }

  v11 = sub_E7AC4();
  if (!v11)
  {
LABEL_14:

    return _swiftEmptyArrayStorage;
  }

LABEL_4:
  v18 = _swiftEmptyArrayStorage;
  result = sub_15E84(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v8 = v18;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v14 = sub_E79B4();
      }

      else
      {
        v14 = *(v10 + 8 * v13 + 32);
      }

      ShowEntity.init(model:)(v14, v7);
      v18 = v8;
      v16 = v8[2];
      v15 = v8[3];
      if (v16 >= v15 >> 1)
      {
        sub_15E84((v15 > 1), v16 + 1, 1);
        v8 = v18;
      }

      ++v13;
      v8[2] = v16 + 1;
      sub_3C878(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v16, type metadata accessor for ShowEntity);
    }

    while (v11 != v13);

    return v8;
  }

  __break(1u);
  return result;
}

uint64_t sub_2F32C(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = *(type metadata accessor for ChannelEntity(0) - 8);
  v2[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E060, &qword_EAC38);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  v2[19] = swift_task_alloc();
  v4 = sub_E5FE4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_E6084();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_2F658, 0, 0);
}

uint64_t sub_2F658()
{
  (*(v0[21] + 104))(v0[22], enum case for MediaRequest.RequestType.catalog(_:), v0[20]);
  if (qword_12CA88 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = sub_E6014();
  v8 = __swift_project_value_buffer(v7, qword_12E540);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v1, v8, v7);
  (*(v9 + 56))(v1, 0, 1, v7);
  v10 = sub_E60A4();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_E6034();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = sub_E6024();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_E6094();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_E59C4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);

  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_2FA84;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_2FA84()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_3CA94;
  }

  else
  {
    v2 = sub_2FB98;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_2FB98()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_E6154();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_2FC74;
  v2 = v0[25];
  v3 = v0[13];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v3, v2);
}

uint64_t sub_2FC74()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_3CA48;
  }

  else
  {
    v2 = sub_2FD88;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_2FD88()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = sub_E6314();
  (*(v2 + 8))(v1, v3);
  if (v4 >> 62)
  {
    v5 = sub_E7AC4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
    goto LABEL_14;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_15D78(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = *(v0 + 72);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_E79B4();
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    ChannelEntity.init(mediaObject:)(v9, *(v0 + 80));
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_15D78((v10 > 1), v11 + 1, 1);
    }

    v12 = *(v0 + 80);
    ++v7;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_3C878(v12, _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, type metadata accessor for ChannelEntity);
  }

  while (v5 != v7);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v16 = *(v0 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_30008(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = *(type metadata accessor for EpisodeEntity(0) - 8);
  v2[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12E020, &qword_EABE8);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  v2[19] = swift_task_alloc();
  v4 = sub_E5FE4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_E6084();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_30334, 0, 0);
}

uint64_t sub_30334()
{
  (*(v0[21] + 104))(v0[22], enum case for MediaRequest.RequestType.catalog(_:), v0[20]);
  if (qword_12CAC0 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = sub_E6014();
  v8 = __swift_project_value_buffer(v7, qword_12E8C0);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v1, v8, v7);
  (*(v9 + 56))(v1, 0, 1, v7);
  v10 = sub_E60A4();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_E6034();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = sub_E6024();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_E6094();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_E59C4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);

  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_30760;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_30760()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_3CA94;
  }

  else
  {
    v2 = sub_30874;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_30874()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_E6524();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_30950;
  v2 = v0[25];
  v3 = v0[13];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v3, v2);
}

uint64_t sub_30950()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_3CA48;
  }

  else
  {
    v2 = sub_30A64;
  }

  return _swift_task_switch(v2, 0, 0);
}

void *sub_30A64()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = sub_E6314();
  (*(v2 + 8))(v1, v3);
  if (v4 >> 62)
  {
    v5 = sub_E7AC4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
    goto LABEL_14;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_15E40(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = *(v0 + 72);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_E79B4();
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    EpisodeEntity.init(mediaObject:)(v9, *(v0 + 80));
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_15E40((v10 > 1), v11 + 1, 1);
    }

    v12 = *(v0 + 80);
    ++v7;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_3C878(v12, _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, type metadata accessor for EpisodeEntity);
  }

  while (v5 != v7);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v16 = *(v0 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_30CE4(uint64_t a1, uint64_t a2)
{
  v2[7] = a1;
  v2[8] = a2;
  v2[9] = *(type metadata accessor for ShowEntity(0) - 8);
  v2[10] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DF98, &unk_EAB88);
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFA0, &qword_E9B50);
  v2[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130620, &qword_E9EA8);
  v2[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFB0, &qword_E9EB0);
  v2[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130630, &qword_E9EB8);
  v2[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFC0, &qword_E9EC0);
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_130640, &qword_E9EC8);
  v2[19] = swift_task_alloc();
  v4 = sub_E5FE4();
  v2[20] = v4;
  v2[21] = *(v4 - 8);
  v2[22] = swift_task_alloc();
  v5 = sub_E6084();
  v2[23] = v5;
  v2[24] = *(v5 - 8);
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_31010, 0, 0);
}

uint64_t sub_31010()
{
  (*(v0[21] + 104))(v0[22], enum case for MediaRequest.RequestType.catalog(_:), v0[20]);
  if (qword_12CAF8 != -1)
  {
    swift_once();
  }

  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = sub_E6014();
  v8 = __swift_project_value_buffer(v7, qword_12EC38);
  v9 = *(v7 - 8);
  (*(v9 + 16))(v1, v8, v7);
  (*(v9 + 56))(v1, 0, 1, v7);
  v10 = sub_E60A4();
  (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
  v11 = sub_E6034();
  (*(*(v11 - 8) + 56))(v3, 1, 1, v11);
  v12 = sub_E6024();
  (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
  v13 = sub_E6094();
  (*(*(v13 - 8) + 56))(v5, 1, 1, v13);
  v14 = sub_E59C4();
  (*(*(v14 - 8) + 56))(v6, 1, 1, v14);

  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF0E8(_swiftEmptyArrayStorage);
  sub_AF2D0(_swiftEmptyArrayStorage);
  sub_AF4B8(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF5BC(_swiftEmptyArrayStorage);
  sub_AF7A4(_swiftEmptyArrayStorage);
  sub_AF98C(_swiftEmptyArrayStorage);
  sub_AFB74(_swiftEmptyArrayStorage);
  sub_AFD5C(_swiftEmptyArrayStorage);
  sub_E6074();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DFD0, &unk_E9ED0);
  v16 = swift_task_alloc();
  v0[26] = v16;
  *v16 = v0;
  v16[1] = sub_3143C;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v15, v15);
}

uint64_t sub_3143C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_31740;
  }

  else
  {
    v2 = sub_31550;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31550()
{
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  sub_E6164();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_3162C;
  v2 = v0[25];
  v3 = v0[13];

  return MediaRequestControllerProtocol.performRecursivelyWithParsing<A>(params:resultType:account:)(v3, v2);
}

uint64_t sub_3162C()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_31AC4;
  }

  else
  {
    v2 = sub_31844;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_31740()
{
  (*(v0[24] + 8))(v0[25], v0[23]);

  v1 = v0[1];

  return v1();
}

void *sub_31844()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  v4 = sub_E6314();
  (*(v2 + 8))(v1, v3);
  if (v4 >> 62)
  {
    v5 = sub_E7AC4();
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    v14 = *(v0 + 192);
    v13 = *(v0 + 200);
    v15 = *(v0 + 184);

    (*(v14 + 8))(v13, v15);
    goto LABEL_14;
  }

  v5 = *(&dword_10 + (v4 & 0xFFFFFFFFFFFFFF8));
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  result = sub_15E84(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
    __break(1u);
    return result;
  }

  v7 = 0;
  v8 = *(v0 + 72);
  do
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v9 = sub_E79B4();
    }

    else
    {
      v9 = *(v4 + 8 * v7 + 32);
    }

    ShowEntity.init(mediaObject:)(v9, *(v0 + 80));
    v11 = _swiftEmptyArrayStorage[2];
    v10 = _swiftEmptyArrayStorage[3];
    if (v11 >= v10 >> 1)
    {
      sub_15E84((v10 > 1), v11 + 1, 1);
    }

    v12 = *(v0 + 80);
    ++v7;
    _swiftEmptyArrayStorage[2] = v11 + 1;
    sub_3C878(v12, _swiftEmptyArrayStorage + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v11, type metadata accessor for ShowEntity);
  }

  while (v5 != v7);
  (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));

LABEL_14:
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v16 = *(v0 + 8);

  return v16(_swiftEmptyArrayStorage);
}

uint64_t sub_31AC4()
{
  (*(v0[24] + 8))(v0[25], v0[23]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

void (*ShowEntity.ShowEntityQuery.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_E51C4();
  return sub_3CA68;
}

id ShowEntity.ShowEntityQuery.predicate(forAdamIDs:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    sub_E7A14();
    v3 = v2 + 56;
    result = sub_E7884();
    v5 = result;
    v6 = 0;
    v21 = v2 + 64;
    v22 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(v2 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_20;
      }

      v9 = *(v2 + 36);
      [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(*(v2 + 48) + 8 * v5)];
      v10 = v2;
      sub_E79E4();
      sub_E7A24();
      sub_E7A34();
      result = sub_E79F4();
      v7 = 1 << *(v2 + 32);
      if (v5 >= v7)
      {
        goto LABEL_21;
      }

      v11 = *(v3 + 8 * v8);
      if ((v11 & (1 << v5)) == 0)
      {
        goto LABEL_22;
      }

      if (v9 != *(v2 + 36))
      {
        goto LABEL_23;
      }

      v12 = v11 & (-2 << (v5 & 0x3F));
      if (v12)
      {
        v7 = __clz(__rbit64(v12)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v13 = v8 << 6;
        v14 = v8 + 1;
        v15 = (v21 + 8 * v8);
        while (v14 < (v7 + 63) >> 6)
        {
          v17 = *v15++;
          v16 = v17;
          v13 += 64;
          ++v14;
          if (v17)
          {
            result = sub_1E32C(v5, v9, 0);
            v7 = __clz(__rbit64(v16)) + v13;
            goto LABEL_17;
          }
        }

        result = sub_1E32C(v5, v9, 0);
LABEL_17:
        v2 = v10;
      }

      ++v6;
      v5 = v7;
      if (v6 == v22)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
  }

  else
  {
LABEL_18:
    v18 = objc_opt_self();
    sub_10E40(_swiftEmptyArrayStorage);

    sub_4ABC(0, &qword_12DD80, NSNumber_ptr);
    sub_3B214();
    isa = sub_E73A4().super.isa;

    v20 = [v18 predicateForPodcastStoreIDs:isa];

    return v20;
  }

  return result;
}

uint64_t ShowEntity.ShowEntityQuery.suggestedEntities()()
{
  v2 = sub_E7724();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();
  v3 = sub_E7324();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v4 = swift_task_alloc();
  v5 = *v0;
  v1[10] = v4;
  v1[11] = v5;

  return _swift_task_switch(sub_32000, 0, 0);
}

uint64_t sub_32000()
{
  sub_E51D4();
  v0[12] = v0[3];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[13] = v2;
  *v2 = v0;
  v2[1] = sub_320CC;

  return BaseObjectGraph.inject<A>(_:)(v0 + 2, v1, v1);
}

uint64_t sub_320CC()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_325F8;
  }

  else
  {

    v2 = sub_321E8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_321E8()
{
  v1 = v0[14];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[15] = v2;
  if (v1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[7];
    v7 = v0[5];
    v8 = v0[6];
    (*(v0[9] + 8))(v0[10], v0[8]);
    swift_unknownObjectRelease();
    v9 = swift_allocObject();
    v0[16] = v9;
    *(v9 + 16) = v5;
    (*(v8 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v7);
    v5;
    v10 = swift_task_alloc();
    v0[17] = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
    *v10 = v0;
    v10[1] = sub_323E8;
    v12 = v0[7];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 4, v12, sub_3B2B4, v9, v11);
  }
}

uint64_t sub_323E8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  (*(v2[6] + 8))(v2[7], v2[5]);

  if (v0)
  {
    v3 = sub_32670;
  }

  else
  {
    v3 = sub_3256C;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_3256C()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_325F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_32670()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_326E8(void *a1@<X8>)
{
  v3 = type metadata accessor for ShowEntity(0);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3 - 8);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_E9F00;
  *(v8 + 32) = [objc_allocWithZone(NSSortDescriptor) initWithKey:kPodcastLastTouchDate ascending:0];
  sub_4ABC(0, &unk_12DB50, NSSortDescriptor_ptr);
  isa = sub_E71E4().super.isa;

  [v7 setSortDescriptors:isa];

  sub_4ABC(0, &qword_12E1D0, MTPodcast_ptr);
  v10 = sub_E7734();
  if (v1)
  {

    return;
  }

  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *(&dword_10 + (v10 & 0xFFFFFFFFFFFFFF8));
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_15:

    *a1 = _swiftEmptyArrayStorage;
    return;
  }

  v12 = sub_E7AC4();
  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_5:
  v18[1] = 0;
  v19 = v7;
  v20 = a1;
  v21 = _swiftEmptyArrayStorage;
  sub_15E84(0, v12 & ~(v12 >> 63), 0);
  if (v12 < 0)
  {
    __break(1u);
  }

  else
  {
    v13 = 0;
    v14 = v21;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = sub_E79B4();
      }

      else
      {
        v15 = *(v11 + 8 * v13 + 32);
      }

      ShowEntity.init(model:)(v15, v6);
      v21 = v14;
      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        sub_15E84((v16 > 1), v17 + 1, 1);
        v14 = v21;
      }

      ++v13;
      v14[2] = v17 + 1;
      sub_3C878(v6, v14 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, type metadata accessor for ShowEntity);
    }

    while (v12 != v13);

    *v20 = v14;
  }
}

id _s15PodcastsActions10ShowEntityV06Singlec6WidgetC5QueryV9predicate8forUuidsSo11NSPredicateCShySSG_tF_0(uint64_t a1)
{
  v1 = objc_opt_self();
  isa = sub_E73A4().super.isa;
  v3 = [v1 predicateForPodcastUuids:isa];

  return v3;
}

uint64_t sub_32A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1E338;

  return sub_280B4(a2, a3);
}

uint64_t sub_32B44(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E340;

  return sub_29340(a1, v4);
}

uint64_t sub_32BF8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1E338;

  return ShowEntity.ShowEntityQuery.suggestedEntities()();
}

uint64_t sub_32C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1E340;

  return EntityQuery.displayRepresentations(for:requestedComponents:)(a1, a2, a3, a4);
}

uint64_t sub_32D48(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_3BAF4();
  *v5 = v2;
  v5[1] = sub_5E10;

  return EntityQuery.results()(a1, a2, v6);
}

uint64_t sub_32DFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_5E10;

  return DynamicOptionsProvider.defaultResult()(a1, a2, a3);
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.objectGraph.getter()
{
  type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  sub_E51D4();
  return v1;
}

uint64_t sub_32EF0(uint64_t *a1)
{
  type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);

  return sub_E51E4();
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.objectGraph.setter(uint64_t a1)
{
  type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);

  sub_E51E4();
}

void (*ShowEntity.SingleShowWidgetShowQuery.objectGraph.modify(uint64_t *a1))(void *)
{
  if (&_swift_coroFrameAlloc)
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  *(v3 + 32) = sub_E51C4();
  return sub_33020;
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.init()@<X0>(uint64_t a1@<X8>)
{
  v18 = a1;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD90, &qword_EA748);
  v1 = *(v17 - 8);
  __chkstk_darwin(v17);
  v3 = &v17 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD98, &qword_EA750);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DDA0, &qword_EA758);
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DDA8, &qword_EA760);
  __chkstk_darwin(v9 - 8);
  v10 = sub_E5B04();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_E5AE4();
  sub_E5AF4();
  (*(v11 + 8))(v13, v10);
  (*(v1 + 104))(v3, enum case for ForegroundSessionSource.ForegroundSessionSourceType.default<A>(_:), v17);
  sub_E61A4();
  sub_E6624();
  sub_3C2A0(&unk_12DDB0, &qword_12DD98, &qword_EA750, &protocol conformance descriptor for ForegroundSessionSource<A>);
  sub_E5F84();
  (*(v5 + 8))(v7, v4);
  v20[3] = sub_E61C4();
  v20[4] = &protocol witness table for CGImageResizer;
  __swift_allocate_boxed_opaque_existential_1(v20);
  sub_E61B4();
  sub_4ABC(0, &qword_1317A0, OS_dispatch_queue_ptr);
  sub_E7574();
  v14 = v18;
  sub_E6724();
  v15 = *(type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0) + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DB80, &qword_EA0C0);
  v19 = 1;
  sub_1C420();
  sub_E7924();
  sub_E5244();
  sub_E5234();
  result = sub_E5204();
  *(v14 + v15) = result;
  return result;
}

uint64_t ShowEntity.SingleShowWidgetShowQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v4 = type metadata accessor for ShowEntity.SingleShowWidgetShowQuery(0);
  v3[70] = v4;
  v5 = *(v4 - 8);
  v3[71] = v5;
  v3[72] = *(v5 + 64);
  v3[73] = swift_task_alloc();
  v6 = type metadata accessor for ShowEntity(0);
  v3[74] = v6;
  v3[75] = *(v6 - 8);
  v3[76] = swift_task_alloc();
  v3[77] = swift_task_alloc();
  v3[78] = swift_task_alloc();
  v3[79] = swift_task_alloc();
  v3[80] = swift_task_alloc();
  v3[81] = swift_task_alloc();
  v3[82] = swift_task_alloc();
  v7 = sub_E7724();
  v3[83] = v7;
  v3[84] = *(v7 - 8);
  v3[85] = swift_task_alloc();
  v8 = sub_E7324();
  v3[86] = v8;
  v3[87] = *(v8 - 8);
  v3[88] = swift_task_alloc();

  return _swift_task_switch(sub_33688, 0, 0);
}

uint64_t sub_33688()
{
  sub_E51D4();
  v0[89] = v0[64];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12D030, qword_E8E30);
  v2 = swift_task_alloc();
  v0[90] = v2;
  *v2 = v0;
  v2[1] = sub_33760;

  return BaseObjectGraph.inject<A>(_:)(v0 + 62, v1, v1);
}

uint64_t sub_33760()
{
  *(*v1 + 728) = v0;

  if (v0)
  {
    v2 = sub_350D0;
  }

  else
  {

    v2 = sub_3387C;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_3387C()
{
  v1 = v0[91];
  swift_getObjectType();
  sub_6C94();
  v2 = sub_E7764();
  v0[92] = v2;
  if (v1)
  {
    (*(v0[87] + 8))(v0[88], v0[86]);
    swift_unknownObjectRelease();

    v3 = v0[1];

    return v3();
  }

  else
  {
    v5 = v2;
    v6 = v0[85];
    v7 = v0[84];
    v8 = v0[83];
    (*(v0[87] + 8))(v0[88], v0[86]);
    swift_unknownObjectRelease();
    v9 = [objc_allocWithZone(NSFetchRequest) initWithEntityName:kMTPodcastEntityName];
    v0[93] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_12DC20, &unk_EA770);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_E9EE0;
    v11 = objc_opt_self();
    *(v10 + 32) = [v11 predicateForSubscribedAndNotHidden];
    *(v10 + 40) = [v11 predicateForNotImplicitlyFollowedPodcasts];
    sub_4ABC(0, &unk_12DB30, NSPredicate_ptr);
    isa = sub_E71E4().super.isa;

    v13 = [objc_opt_self() andPredicateWithSubpredicates:isa];

    [v9 setPredicate:v13];
    v14 = swift_allocObject();
    v0[94] = v14;
    *(v14 + 16) = v5;
    *(v14 + 24) = v9;
    (*(v7 + 104))(v6, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v8);
    v5;
    v15 = v9;
    v16 = swift_task_alloc();
    v0[95] = v16;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DD88, &qword_EA740);
    v0[96] = v17;
    *v16 = v0;
    v16[1] = sub_33C24;
    v18 = v0[85];

    return NSManagedObjectContext.perform<A>(schedule:_:)(v0 + 63, v18, sub_3B31C, v14, v17);
  }
}

uint64_t sub_33C24()
{
  v2 = *v1;
  *(*v1 + 776) = v0;

  (*(v2[84] + 8))(v2[85], v2[83]);

  if (v0)
  {
    v3 = sub_351D0;
  }

  else
  {
    v3 = sub_33DA8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_33DA8()
{
  v165 = v0;
  v1 = v0[63];
  v0[98] = v1;
  swift_bridgeObjectRetain_n();

  v2 = sub_E62E4();
  v153 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
LABEL_190:
    __break(1u);
LABEL_191:
    __break(1u);
LABEL_192:
    __break(1u);
LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  v6 = v0[75];
  v7 = *(v1 + 16);
  v147 = v1;
  v156 = v6;
  if (!v7)
  {
    v17 = 0;
    v8 = 0;
    v18 = v0[75];
    goto LABEL_34;
  }

  v8 = 0;
  v9 = v1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v163 = *(v6 + 72);
  v10 = v9 + 16;
  v149 = v9 + 16;
  while (1)
  {
    v11 = v0[68];
    v12 = v0[67];
    sub_E53E4();
    v13 = v0[9];
    v0[10] = v0[8];
    v0[11] = v13;
    v0[12] = v12;
    v0[13] = v11;
    sub_26028();
    v14 = sub_E7844();

    if (v14)
    {
      break;
    }

    ++v8;
    v10 += v163;
    if (v7 == v8)
    {
      v8 = v7;
      break;
    }
  }

  v15 = *(v147 + 16);
  if (!v153)
  {
    goto LABEL_25;
  }

  if (v8 == v15)
  {
    v8 = *(v147 + 16);
    v16 = v9 + 16;
    if (v15)
    {
      goto LABEL_26;
    }

    goto LABEL_32;
  }

  v19 = 1;
  do
  {
    v157 = v19;
    v20 = v8;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_181:
        __break(1u);
LABEL_182:
        __break(1u);
LABEL_183:
        __break(1u);
LABEL_184:
        __break(1u);
LABEL_185:
        __break(1u);
LABEL_186:
        __break(1u);
LABEL_187:
        __break(1u);
LABEL_188:
        __break(1u);
LABEL_189:
        __break(1u);
        goto LABEL_190;
      }

      if (v21 == v15)
      {
        break;
      }

      if (v21 < 0 || v21 >= v15)
      {
        goto LABEL_181;
      }

      v22 = v0[68];
      v23 = v0[67];
      sub_E53E4();
      v24 = v0[15];
      v0[16] = v0[14];
      v0[17] = v24;
      v0[18] = v23;
      v0[19] = v22;
      v25 = sub_E7844();

      ++v20;
      v8 = v21;
      if (v25)
      {
        goto LABEL_21;
      }
    }

    v8 = v15;
LABEL_21:
    if (v157 == v153)
    {
      v15 = *(v147 + 16);
      v16 = v149;
      if (v15)
      {
        goto LABEL_26;
      }

      goto LABEL_32;
    }

    v19 = v157 + 1;
    if (__OFADD__(v157, 1))
    {
      goto LABEL_188;
    }
  }

  while (v21 != v15);
  v15 = *(v147 + 16);
  v8 = v15;
LABEL_25:
  v16 = v149;
  if (!v15)
  {
LABEL_32:
    v17 = 0;
    goto LABEL_33;
  }

LABEL_26:
  v158 = v8;
  v26 = 0;
  while (1)
  {
    v27 = v0[68];
    v28 = v0[67];
    sub_E53E4();
    v29 = v0[21];
    v0[22] = v0[20];
    v0[23] = v29;
    v0[24] = v28;
    v0[25] = v27;
    v30 = sub_E7844();

    if (v30)
    {
      break;
    }

    ++v26;
    v16 += v163;
    if (v15 == v26)
    {
      v17 = v15;
      v8 = v158;
      goto LABEL_33;
    }
  }

  v8 = v158;
  v17 = v26;
LABEL_33:
  v1 = v147;
  v18 = v156;
  if (v8 < v17)
  {
    goto LABEL_191;
  }

LABEL_34:
  v31 = *(v1 + 16);
  if (v31 < v17 || v31 < v8)
  {
    goto LABEL_192;
  }

  v32 = v8;
  v33 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v162 = v1 + v33;
  swift_bridgeObjectRetain_n();
  v2 = sub_E62E4();
  v34 = v2;
  v159 = v32;
  v148 = v17;
  v144 = v33;
  if (v17 == v32)
  {
    v35 = 0;
  }

  else
  {
    v154 = v2;
    v36 = *(v18 + 72);
    v37 = v1 + v33 + v17 * v36;
    v38 = v17;
    while (1)
    {
      v39 = v0[82];
      v40 = v0[68];
      v41 = v0[67];
      sub_3C628(v37, v39, type metadata accessor for ShowEntity);
      sub_E53E4();
      v42 = v0[27];
      v0[28] = v0[26];
      v0[29] = v42;
      v0[30] = v41;
      v0[31] = v40;
      sub_26028();
      v43 = sub_E7844();

      v2 = sub_3C8E0(v39, type metadata accessor for ShowEntity);
      if (v43)
      {
        break;
      }

      ++v38;
      v37 += v36;
      if (v159 == v38)
      {
        v35 = 0;
        v1 = v147;
        v17 = v148;
        v34 = v154;
        v18 = v156;
        goto LABEL_53;
      }
    }

    v150 = 1;
    do
    {
      if (v38 == v159)
      {
        goto LABEL_197;
      }

      do
      {
        v44 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          goto LABEL_186;
        }

        if (v44 == v159)
        {
          goto LABEL_52;
        }

        if (v44 < v148 || v44 >= v159)
        {
          goto LABEL_187;
        }

        v45 = v0[82];
        v46 = v0[68];
        v47 = v0[67];
        sub_3C628(v162 + v44 * v36, v45, type metadata accessor for ShowEntity);
        sub_E53E4();
        v48 = v0[33];
        v0[34] = v0[32];
        v0[35] = v48;
        v0[36] = v47;
        v0[37] = v46;
        v49 = sub_E7844();

        v2 = sub_3C8E0(v45, type metadata accessor for ShowEntity);
        ++v38;
      }

      while ((v49 & 1) == 0);
      v38 = v44;
      v50 = __OFADD__(v150++, 1);
    }

    while (!v50);
    __break(1u);
LABEL_52:
    v1 = v147;
    v17 = v148;
    v34 = v154;
    v18 = v156;
    v35 = v150;
  }

LABEL_53:
  v51 = v34 - v35;
  if (__OFSUB__(v34, v35))
  {
    goto LABEL_193;
  }

  if ((v51 & 0x8000000000000000) != 0)
  {
LABEL_194:
    __break(1u);
LABEL_195:
    __break(1u);
    goto LABEL_196;
  }

  v52 = *(v1 + 16);
  if (!v52)
  {
    v61 = 0;
    v53 = 0;
    v62 = v159;
    goto LABEL_93;
  }

  v53 = 0;
  v54 = *(v18 + 72);
  v55 = v162;
  while (1)
  {
    v2 = sub_E53E4();
    v56 = v0[39];
    if (v56)
    {
      v57 = v0[68];
      v58 = v0[67];
      v0[40] = v0[38];
      v0[41] = v56;
      v0[42] = v58;
      v0[43] = v57;
      sub_26028();
      v59 = sub_E7844();

      if (v59)
      {
        break;
      }
    }

    ++v53;
    v55 += v54;
    if (v52 == v53)
    {
      v53 = v52;
      break;
    }
  }

  v60 = *(v147 + 16);
  if (!v51)
  {
LABEL_84:
    v61 = 0;
    if (!v60)
    {
      goto LABEL_92;
    }

    goto LABEL_85;
  }

  if (v53 == v60)
  {
    v53 = *(v147 + 16);
    v61 = 0;
    if (!v60)
    {
      goto LABEL_92;
    }

LABEL_85:
    v71 = v162;
    while (1)
    {
      v2 = sub_E53E4();
      v72 = v0[51];
      if (v72)
      {
        v73 = v0[68];
        v74 = v0[67];
        v0[52] = v0[50];
        v0[53] = v72;
        v0[54] = v74;
        v0[55] = v73;
        sub_26028();
        v75 = sub_E7844();

        if (v75)
        {
          break;
        }
      }

      ++v61;
      v71 += v54;
      if (v60 == v61)
      {
        v61 = v60;
        break;
      }
    }

    v18 = v156;
  }

  else
  {
    v63 = 1;
    v151 = v51;
    while (1)
    {
      v64 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        goto LABEL_182;
      }

      if (v64 == v60)
      {
        v65 = 1;
        v53 = v60;
      }

      else
      {
        v66 = v147 + v144 + v54 * v64;
        ++v53;
        do
        {
          if (v64 < 0 || v53 >= v60)
          {
            goto LABEL_183;
          }

          v2 = sub_E53E4();
          v67 = v0[45];
          if (v67)
          {
            v68 = v0[68];
            v69 = v0[67];
            v0[46] = v0[44];
            v0[47] = v67;
            v0[48] = v69;
            v0[49] = v68;
            sub_26028();
            v70 = sub_E7844();

            if (v70)
            {
              v65 = 0;
              goto LABEL_79;
            }
          }

          ++v53;
          v66 += v54;
        }

        while (v60 != v53);
        v65 = 1;
        v53 = v60;
LABEL_79:
        v51 = v151;
      }

      v18 = v156;
      if (v63 == v51)
      {
        break;
      }

      v50 = __OFADD__(v63++, 1);
      if (v50)
      {
        goto LABEL_189;
      }

      if (v65)
      {
        v60 = *(v147 + 16);
        v53 = v60;
        goto LABEL_84;
      }
    }

    v60 = *(v147 + 16);
    v61 = 0;
    if (v60)
    {
      goto LABEL_85;
    }
  }

LABEL_92:
  v62 = v159;
  v17 = v148;
  if (v53 < v61)
  {
    goto LABEL_195;
  }

LABEL_93:
  v76 = *(v147 + 16);
  if (v76 < v61 || v76 < v53)
  {
LABEL_196:
    __break(1u);
LABEL_197:
    __break(1u);
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  v77 = _swiftEmptyArrayStorage;

  v141 = _swiftEmptyArrayStorage + v144;
  if (v17 == v62)
  {
    v143 = 0;
    goto LABEL_128;
  }

  v143 = 0;
  v142 = _swiftEmptyArrayStorage;
  v152 = -v62;
  v78 = v17;
  v140 = _swiftEmptyArrayStorage + v144;
  while (2)
  {
    if (v78 < v17)
    {
      goto LABEL_184;
    }

    v79 = v159;
    if (v78 > v159)
    {
      v79 = v78;
    }

    v80 = -v79;
    ++v78;
    while (1)
    {
      if (v80 + v78 == 1)
      {
        goto LABEL_184;
      }

      v81 = v0[68];
      v82 = v0[67];
      v83 = *(v156 + 72);
      sub_3C628(v162 + v83 * (v78 - 1), v0[79], type metadata accessor for ShowEntity);
      sub_E53E4();
      v84 = v0[57];
      v0[58] = v0[56];
      v0[59] = v84;
      v0[60] = v82;
      v0[61] = v81;
      sub_26028();
      v85 = sub_E7844();

      if (v85)
      {
        break;
      }

      v2 = sub_3C8E0(v0[79], type metadata accessor for ShowEntity);
      ++v78;
      if (v152 + v78 == 1)
      {
        v77 = v142;
        v18 = v156;
        goto LABEL_128;
      }
    }

    v86 = v0[81];
    v87 = v0[80];
    sub_3C878(v0[79], v87, type metadata accessor for ShowEntity);
    v2 = sub_3C878(v87, v86, type metadata accessor for ShowEntity);
    v88 = v143;
    if (v143)
    {
      v145 = v142;
      v18 = v156;
      goto LABEL_126;
    }

    v89 = v142[3];
    v18 = v156;
    if (((v89 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_202;
    }

    v90 = v89 & 0xFFFFFFFFFFFFFFFELL;
    if (v90 <= 1)
    {
      v91 = 1;
    }

    else
    {
      v91 = v90;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA80, &qword_E9D98);
    v145 = swift_allocObject();
    v2 = _swift_stdlib_malloc_size(v145);
    if (!v83)
    {
      goto LABEL_203;
    }

    v92 = v2 - v144;
    if (v2 - v144 == 0x8000000000000000 && v83 == -1)
    {
      goto LABEL_206;
    }

    v94 = v92 / v83;
    v145[2] = v91;
    v145[3] = 2 * (v92 / v83);
    v95 = v145 + v144;
    v96 = v142[3] >> 1;
    v97 = v96 * v83;
    if (v142[2])
    {
      if (v145 < v142 || v95 >= v142 + v144 + v97)
      {
        swift_arrayInitWithTakeFrontToBack();
LABEL_123:
        v98 = v142;
      }

      else
      {
        v98 = v142;
        if (v145 != v142)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_123;
        }
      }

      v98[2] = 0;
    }

    v140 = &v95[v97];

    v88 = (v94 & 0x7FFFFFFFFFFFFFFFLL) - v96;
LABEL_126:
    v17 = v148;
    v50 = __OFSUB__(v88, 1);
    v99 = v88 - 1;
    if (v50)
    {
      goto LABEL_200;
    }

    v143 = v99;
    v2 = sub_3C878(v0[81], v140, type metadata accessor for ShowEntity);
    v140 += v83;
    v77 = v145;
    v142 = v145;
    if (v152 + v78)
    {
      continue;
    }

    break;
  }

LABEL_128:
  v100 = v77[3];
  if (v100 < 2)
  {
    goto LABEL_131;
  }

  v101 = v100 >> 1;
  v50 = __OFSUB__(v101, v143);
  v102 = v101 - v143;
  if (v50)
  {
    goto LABEL_198;
  }

  v77[2] = v102;
LABEL_131:
  v146 = v77;

  if (v61 != v53)
  {
    v160 = 0;
    v104 = _swiftEmptyArrayStorage;
    v105 = v61;
    while (2)
    {
      v155 = v104;
      if (v105 >= v61)
      {
        if (v105 <= v53)
        {
          v106 = v53;
        }

        else
        {
          v106 = v105;
        }

        v107 = -v106;
        ++v105;
        while (1)
        {
          if (v107 + v105 == 1)
          {
            goto LABEL_185;
          }

          v108 = *(v18 + 72);
          sub_3C628(v162 + v108 * (v105 - 1), v0[76], type metadata accessor for ShowEntity);
          sub_E53E4();
          v109 = v0[3];
          if (v109)
          {
            v110 = v0[68];
            v111 = v0[67];
            v0[6] = v0[2];
            v0[7] = v109;
            v0[4] = v111;
            v0[5] = v110;
            sub_26028();
            v112 = sub_E7844();

            if (v112)
            {
              break;
            }
          }

          v2 = sub_3C8E0(v0[76], type metadata accessor for ShowEntity);
          if (++v105 - v53 == 1)
          {
            v103 = v155;
            goto LABEL_168;
          }
        }

        v113 = v0[78];
        v114 = v0[77];
        sub_3C878(v0[76], v114, type metadata accessor for ShowEntity);
        v2 = sub_3C878(v114, v113, type metadata accessor for ShowEntity);
        if (v160)
        {
          v103 = v155;
          v115 = v160 - 1;
          if (__OFSUB__(v160, 1))
          {
            goto LABEL_201;
          }

          goto LABEL_165;
        }

        v116 = v155[3];
        if (((v116 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_204;
        }

        v117 = v116 & 0xFFFFFFFFFFFFFFFELL;
        if (v117 <= 1)
        {
          v118 = 1;
        }

        else
        {
          v118 = v117;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_12DA80, &qword_E9D98);
        v103 = swift_allocObject();
        v2 = _swift_stdlib_malloc_size(v103);
        if (!v108)
        {
          goto LABEL_205;
        }

        v119 = v2 - v144;
        if (v2 - v144 == 0x8000000000000000 && v108 == -1)
        {
          goto LABEL_207;
        }

        v121 = v119 / v108;
        v103[2] = v118;
        v103[3] = 2 * (v119 / v108);
        v122 = v103 + v144;
        v123 = v155[3] >> 1;
        v124 = v123 * v108;
        if (!v155[2])
        {
LABEL_164:
          v141 = &v122[v124];
          v126 = (v121 & 0x7FFFFFFFFFFFFFFFLL) - v123;

          v18 = v156;
          v50 = __OFSUB__(v126, 1);
          v115 = v126 - 1;
          if (v50)
          {
            goto LABEL_201;
          }

LABEL_165:
          v160 = v115;
          v2 = sub_3C878(v0[78], v141, type metadata accessor for ShowEntity);
          v141 += v108;
          v104 = v103;
          if (v105 != v53)
          {
            continue;
          }

          goto LABEL_168;
        }

        if (v103 < v155 || v122 >= v155 + v144 + v124)
        {
          v161 = v103 + v144;
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          v125 = v155;
          if (v103 == v155)
          {
LABEL_163:
            v125[2] = 0;
            goto LABEL_164;
          }

          v161 = v103 + v144;
          swift_arrayInitWithTakeBackToFront();
        }

        v122 = v161;
        v125 = v155;
        goto LABEL_163;
      }

      goto LABEL_185;
    }
  }

  v160 = 0;
  v103 = _swiftEmptyArrayStorage;
LABEL_168:
  v127 = v103[3];
  if (v127 < 2)
  {
LABEL_171:
    v130 = v0[97];

    v164 = v146;
    sub_227C0(v103);

    sub_399AC(&v164);
    if (!v130)
    {
      v132 = v0[73];
      v133 = v0[71];
      v134 = v0[69];

      v0[65] = v164;
      swift_getKeyPath();
      sub_3C2A0(&qword_12DDD0, &qword_12DD88, &qword_EA740, &protocol conformance descriptor for [A]);
      v135 = sub_E7164();
      v0[99] = v135;

      v0[66] = v135;
      sub_3C628(v134, v132, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
      v136 = (*(v133 + 80) + 16) & ~*(v133 + 80);
      v137 = swift_allocObject();
      sub_3C878(v132, v137 + v136, type metadata accessor for ShowEntity.SingleShowWidgetShowQuery);
      v138 = swift_allocObject();
      v0[100] = v138;
      *(v138 + 16) = &unk_EA7A8;
      *(v138 + 24) = v137;
      v139 = swift_task_alloc();
      v0[101] = v139;
      v5 = sub_3C2A0(&qword_12DDD8, &qword_12DD88, &qword_EA740, &protocol conformance descriptor for [A]);
      *v139 = v0;
      v139[1] = sub_34E48;
      v4 = v0[96];
      v2 = &unk_EA7B8;
      v3 = v138;

      return Collection<>.concurrentMap(_:)(v2, v3, v4, v5);
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v128 = v127 >> 1;
    v50 = __OFSUB__(v128, v160);
    v129 = v128 - v160;
    if (!v50)
    {
      v103[2] = v129;
      goto LABEL_171;
    }

LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
LABEL_201:
    __break(1u);
LABEL_202:
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
    return Collection<>.concurrentMap(_:)(v2, v3, v4, v5);
  }
}