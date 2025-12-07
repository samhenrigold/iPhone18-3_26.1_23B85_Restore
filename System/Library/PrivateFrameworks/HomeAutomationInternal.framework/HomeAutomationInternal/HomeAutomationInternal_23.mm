uint64_t sub_252AD9D80(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = 0;
  v64 = a1;
  v65 = 0;
  v66 = v1;
  v67 = a1 + 32;
  v4 = 0x8000000252E64890;
  while (1)
  {
    memcpy(v73, (v67 + 504 * v3), sizeof(v73));
    memcpy(v74, (v67 + 504 * v3), 0x1F8uLL);
    sub_2529353AC(v73, v72);
    if (sub_252A13FE0())
    {
      break;
    }

    memcpy(v72, v73, sizeof(v72));
    if (sub_252A13BEC())
    {
      break;
    }

    memcpy(v74, v73, 0x1F8uLL);
    if (sub_252A143D4())
    {
      break;
    }

    sub_252935408(v73);
LABEL_60:
    if (++v3 == v1)
    {
      return MEMORY[0x277D84F90];
    }
  }

  v5 = v73[19];
  v6 = *(v73[19] + 16);
  v62 = v3;
  if (v6 || (v5 = v73[21], *(v73[21] + 16)) || (v5 = v73[20], *(v73[20] + 16)))
  {
    v63 = v5;

    v7 = MEMORY[0x277D84F90];
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
  }

  v8 = 0;
  v70[0] = v7;
  while (1)
  {
    memcpy(v74, (v67 + 504 * v8), 0x1F8uLL);
    if (!*(v74[18] + 16) && !*(v74[17] + 16))
    {
      goto LABEL_12;
    }

    v69 = v7;
    v9 = v74[12];
    v10 = *(v74[12] + 16);
    sub_2529353AC(v74, v72);
    if (v10)
    {
      break;
    }

LABEL_11:
    sub_252935408(v74);
    v1 = v66;
    v7 = v69;
LABEL_12:
    if (++v8 == v1)
    {
      if (!*(v63 + 16))
      {

        sub_252935408(v73);
LABEL_65:
        v36 = 0;
        v4 = MEMORY[0x277D84F90];
        v69 = 32;
        v37 = v64;
LABEL_66:
        v38 = (v69 + 504 * v36);
        v39 = v36;
        v40 = v66;
        while (v39 < v40)
        {
          memcpy(v74, &v38[v37], 0x1F8uLL);
          v36 = v39 + 1;
          if (__OFADD__(v39, 1))
          {
            goto LABEL_110;
          }

          memcpy(v72, &v38[v37], sizeof(v72));
          sub_2529353AC(v74, v70);
          if (sub_252A13FE0() & 1) != 0 || (memcpy(v70, v74, sizeof(v70)), (sub_252A13BEC()) || (memcpy(v72, v74, sizeof(v72)), (sub_252A143D4()) || *(v74[17] + 16))
          {
            memcpy(v72, v74, sizeof(v72));
            sub_252A13A70();
            if ((v41 & 1) == 0)
            {
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v71 = v4;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2529AA480(0, *(v4 + 16) + 1, 1);
                v4 = v71;
              }

              v37 = v64;
              v43 = v66;
              v45 = *(v4 + 16);
              v44 = *(v4 + 24);
              if (v45 >= v44 >> 1)
              {
                sub_2529AA480((v44 > 1), v45 + 1, 1);
                v37 = v64;
                v4 = v71;
              }

              *(v4 + 16) = v45 + 1;
              memcpy((v4 + 504 * v45 + 32), v74, 0x1F8uLL);
              if (v36 != v43)
              {
                goto LABEL_66;
              }

LABEL_81:
              if (qword_27F53F520 != -1)
              {
                goto LABEL_113;
              }

              goto LABEL_82;
            }
          }

          sub_252935408(v74);
          v37 = v64;
          ++v39;
          v38 += 504;
          v40 = v66;
          if (v36 == v66)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_109;
      }

      v35 = sub_252BFEAD0(v63, v70);

      sub_252935408(v73);
      if (!v35)
      {
        goto LABEL_65;
      }

      v3 = v62;
      goto LABEL_60;
    }
  }

  v11 = 0;
  v12 = v9 + 32;
  v68 = v9 + 32;
  while (1)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v13 = *(v12 + 8 * v11);
    if (*(v13 + 16))
    {
      break;
    }

LABEL_18:
    if (++v11 == v10)
    {
      goto LABEL_11;
    }
  }

  sub_252E37EC4();

  sub_252E37044();
  v14 = sub_252E37F14();
  v15 = -1 << *(v13 + 32);
  v16 = v14 & ~v15;
  if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
  {
LABEL_17:

    v12 = v68;
    goto LABEL_18;
  }

  v17 = ~v15;
  while (1)
  {
    v18 = (*(v13 + 48) + 16 * v16);
    v19 = *v18 == 0xD00000000000001CLL && 0x8000000252E64890 == v18[1];
    if (v19 || (sub_252E37DB4() & 1) != 0)
    {
      break;
    }

    v16 = (v16 + 1) & v17;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v20 = v74[41];
  v21 = *(v74[41] + 16);
  v7 = v69;
  v22 = *(v69 + 16);
  v23 = v22 + v21;
  if (__OFADD__(v22, v21))
  {
    goto LABEL_101;
  }

  v24 = swift_isUniquelyReferenced_nonNull_native();
  if (!v24 || v23 > *(v69 + 24) >> 1)
  {
    if (v22 <= v23)
    {
      v27 = v22 + v21;
    }

    else
    {
      v27 = v22;
    }

    v7 = sub_2529F7A80(v24, v27, 1, v69);
    if (!*(v20 + 16))
    {
      goto LABEL_42;
    }

LABEL_34:
    if ((*(v7 + 3) >> 1) - *(v7 + 2) < v21)
    {
      goto LABEL_105;
    }

    swift_arrayInitWithCopy();

    v25 = *(v7 + 2);
    if (!v21)
    {
      goto LABEL_44;
    }

    v26 = __OFADD__(v25, v21);
    v25 += v21;
    if (!v26)
    {
      *(v7 + 2) = v25;
      goto LABEL_44;
    }

    goto LABEL_107;
  }

  if (*(v20 + 16))
  {
    goto LABEL_34;
  }

LABEL_42:

  if (v21)
  {
    goto LABEL_102;
  }

  v25 = *(v7 + 2);
LABEL_44:
  v28 = v74[42];
  v29 = *(v74[42] + 16);
  v30 = v25 + v29;
  if (__OFADD__(v25, v29))
  {
    goto LABEL_103;
  }

  v31 = *(v7 + 3) >> 1;

  if (v31 >= v30)
  {
    if (v29)
    {
      goto LABEL_47;
    }

LABEL_55:

    v1 = v66;
    if (!v29)
    {
LABEL_56:
      sub_252935408(v74);
      v70[0] = v7;
      goto LABEL_12;
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
    goto LABEL_108;
  }

  if (v25 <= v30)
  {
    v34 = v25 + v29;
  }

  else
  {
    v34 = v25;
  }

  v7 = sub_2529F7A80(1, v34, 1, v7);
  v25 = *(v7 + 2);
  v31 = *(v7 + 3) >> 1;
  if (!*(v28 + 16))
  {
    goto LABEL_55;
  }

LABEL_47:
  if ((v31 - v25) < v29)
  {
    goto LABEL_106;
  }

  swift_arrayInitWithCopy();

  v1 = v66;
  if (!v29)
  {
    goto LABEL_56;
  }

  v32 = *(v7 + 2);
  v26 = __OFADD__(v32, v29);
  v33 = v32 + v29;
  if (!v26)
  {
    *(v7 + 2) = v33;
    goto LABEL_56;
  }

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
  swift_once();
LABEL_82:
  v46 = sub_252E36AD4();
  __swift_project_value_buffer(v46, qword_27F544E08);
  v74[0] = 0;
  v74[1] = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E79510);
  v47 = MEMORY[0x2530AD730](v4, &type metadata for HomeAutomationIntent);
  MEMORY[0x2530AD570](v47);

  sub_252CC3D90(v74[0], v74[1], 0xD0000000000000A7, 0x8000000252E79560);

  v48 = 0;
  v49 = MEMORY[0x277D84F90];
  do
  {
    v50 = (v69 + 504 * v48);
    v51 = v48;
    v52 = v66;
    while (1)
    {
      if (v51 >= v52)
      {
        goto LABEL_111;
      }

      memcpy(v74, &v50[v64], 0x1F8uLL);
      v48 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        goto LABEL_112;
      }

      v53 = memcpy(v72, &v50[v64], sizeof(v72));
      MEMORY[0x28223BE20](v53);
      v61[2] = v72;
      sub_2529353AC(v74, v70);
      v54 = v65;
      v55 = sub_2529EDA1C(sub_25295AD78, v61, v4);
      v65 = v54;
      if ((v55 & 1) == 0)
      {
        break;
      }

      memcpy(v72, v74, sizeof(v72));
      if (sub_252A13FE0() & 1) != 0 || (memcpy(v70, v74, sizeof(v70)), (sub_252A13BEC()) || (memcpy(v72, v74, sizeof(v72)), (sub_252A143D4()))
      {
        if ((sub_252BFEB70(v74, v64) & 1) == 0)
        {
          break;
        }
      }

      sub_252935408(v74);
      ++v51;
      v50 += 504;
      v52 = v66;
      if (v48 == v66)
      {
        goto LABEL_98;
      }
    }

    v56 = swift_isUniquelyReferenced_nonNull_native();
    v57 = v49;
    v71 = v49;
    if ((v56 & 1) == 0)
    {
      sub_2529AA480(0, *(v49 + 16) + 1, 1);
      v57 = v71;
    }

    v59 = *(v57 + 16);
    v58 = *(v57 + 24);
    if (v59 >= v58 >> 1)
    {
      sub_2529AA480((v58 > 1), v59 + 1, 1);
      v57 = v71;
    }

    *(v57 + 16) = v59 + 1;
    v49 = v57;
    memcpy((v57 + 504 * v59 + 32), v74, 0x1F8uLL);
  }

  while (v48 != v66);
LABEL_98:

  return v49;
}

uint64_t sub_252ADA6B8(void *__src)
{
  v2 = v1;
  memcpy(__dst, __src, sizeof(__dst));
  v4 = v82;
  memcpy(v82, __src, sizeof(v82));
  sub_252A1673C();
  if (v5)
  {
    v6 = 1;
    goto LABEL_32;
  }

  v7 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal12FlowProvider_intent;
  swift_beginAccess();
  memcpy(v81, v7, sizeof(v81));
  v8 = v81[0];
  memcpy(__srca, (v7 + 8), sizeof(__srca));
  memcpy(&v82[1], (v7 + 8), 0x1F0uLL);
  v82[0] = v81[0];
  if (sub_252956B94(v82) == 1)
  {
    v78 = v8;
    memcpy(v79, __srca, sizeof(v79));
    sub_2529D291C(v81, v77);
    sub_25299F5D4(&v78);
    goto LABEL_31;
  }

  v78 = v8;
  memcpy(v79, __srca, sizeof(v79));
  sub_2529D291C(v81, v77);

  sub_25299F5D4(&v78);
  v75 = v8[2];
  if (!v75)
  {
LABEL_30:

LABEL_31:
    v6 = 0;
LABEL_32:
    memcpy(v82, __dst, sizeof(v82));
    v8 = sub_252AEFEB0();
    v10 = &off_279711000;
    v25 = [v8 filters];
    if (!v25)
    {
      goto LABEL_42;
    }

    v26 = v25;
    type metadata accessor for HomeFilter();
    v12 = sub_252E37264();

    v11 = &off_279711000;
    v27 = [v8 userTask];
    if (!v27)
    {

      sub_252C515AC();
      goto LABEL_42;
    }

    v28 = v27;
    v29 = [v27 attribute];

    if (v29 == 27 && sub_252C4B5D4())
    {
      v30 = [v8 userTask];
      if (v30)
      {
        v31 = v30;
        v32 = [v30 value];

        if (v32)
        {
          v33 = [v32 BOOLValue];

          if (!v33 && (v6 & 1) == 0)
          {
            goto LABEL_45;
          }
        }
      }
    }

LABEL_40:

    goto LABEL_42;
  }

  v9 = 0;
  v10 = 0x72656B61657073;
  v73 = v8;
  v74 = v8 + 4;
  v11 = 0xE700000000000000;
  while (1)
  {
    if (v9 >= v8[2])
    {
      __break(1u);
      goto LABEL_57;
    }

    memcpy(v77, &v74[63 * v9], sizeof(v77));
    v12 = v77[17];
    v8 = *(v77[17] + 16);
    sub_2529353AC(v77, v76);
    if (v8)
    {
      break;
    }

LABEL_7:
    ++v9;
    sub_252935408(v77);
    v8 = v73;
    if (v9 == v75)
    {
      goto LABEL_30;
    }
  }

  v13 = 0;
  v4 = v12 + 32;
  while (v13 < *(v12 + 16))
  {
    v14 = *(v4 + v13);
    v76[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x72656B61657073 && v15 == 0xE700000000000000)
    {
      goto LABEL_11;
    }

    v16 = sub_252E37DB4();

    if (v16)
    {
      goto LABEL_12;
    }

    v76[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x5F79616C70726961 && v17 == 0xEF72656B61657073)
    {
      goto LABEL_11;
    }

    v18 = sub_252E37DB4();

    if (v18)
    {
      goto LABEL_12;
    }

    v76[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0xD000000000000011 && 0x8000000252E65660 == v19)
    {
      goto LABEL_11;
    }

    v20 = sub_252E37DB4();

    if (v20)
    {
      goto LABEL_12;
    }

    v76[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x646F70656D6F68 && v21 == 0xE700000000000000)
    {
      goto LABEL_11;
    }

    v22 = sub_252E37DB4();

    if (v22)
    {
      goto LABEL_12;
    }

    v76[0] = v14;
    if (AccessoryTypeSemantic.rawValue.getter() == 0x5F646F70656D6F68 && v23 == 0xEC000000696E696DLL)
    {
LABEL_11:
    }

    else
    {
      v24 = sub_252E37DB4();

      if ((v24 & 1) == 0)
      {
        sub_252935408(v77);

        v6 = 1;
        goto LABEL_32;
      }
    }

LABEL_12:
    if (v8 == ++v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_45:
  v36 = type metadata accessor for HomeStore(0);
  v37 = static HomeStore.shared.getter(v36);
  v38 = *(v37 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v38 != 2 && (v38 & 1) == 0 || (v39 = [v8 *(v10 + 1536)]) == 0)
  {

    v34 = 0;
    v8 = v37;
    goto LABEL_43;
  }

  v40 = v39;
  v41 = sub_252E37264();

  v42 = [v8 v11[214]];
  v43 = HomeStore.accessories(matching:supporting:)(v41, v42);
  v45 = v44;

  if (v45)
  {
    sub_252929F10(v43, 1);
    goto LABEL_40;
  }

  if (v43 >> 62)
  {
    v46 = sub_252E378C4();
  }

  else
  {
    v46 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_252929F10(v43, 0);
  if (v46)
  {
    goto LABEL_40;
  }

  v48 = static HomeStore.shared.getter(v47);
  v4 = HomeStore.accessories(matching:supporting:)(v12, 0);
  v50 = v49;

  if (v50)
  {
    v51 = v4;
    v52 = 1;
    goto LABEL_93;
  }

LABEL_57:
  if (!(v4 >> 62))
  {
    v53 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
      goto LABEL_59;
    }

LABEL_92:
    v51 = v4;
    v52 = 0;
LABEL_93:
    sub_252929F10(v51, v52);
LABEL_42:
    v34 = 0;
    goto LABEL_43;
  }

  while (2)
  {
    v53 = sub_252E378C4();
    if (!v53)
    {
      goto LABEL_92;
    }

LABEL_59:
    v54 = 0;
LABEL_61:
    if ((v4 & 0xC000000000000001) != 0)
    {
      v55 = MEMORY[0x2530ADF00](v54, v4);
      v56 = __OFADD__(v54++, 1);
      if (v56)
      {
        goto LABEL_83;
      }
    }

    else
    {
      if (v54 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        continue;
      }

      v55 = *(v4 + 32 + 8 * v54);

      v56 = __OFADD__(v54++, 1);
      if (v56)
      {
LABEL_83:
        __break(1u);
LABEL_84:
        sub_252929F10(v4, 0);

        goto LABEL_85;
      }
    }

    break;
  }

  v57 = (*v55 + 256);
  v58 = *v57;
  if ((*v57)() != 26)
  {
    v59 = (*(*v55 + 272))();
    if (*(v59 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](26);
      v60 = sub_252E37F14();
      v61 = -1 << *(v59 + 32);
      v62 = v60 & ~v61;
      if ((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62))
      {
        v63 = ~v61;
        while (*(*(v59 + 48) + 8 * v62) != 26)
        {
          v62 = (v62 + 1) & v63;
          if (((*(v59 + 56 + ((v62 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v62) & 1) == 0)
          {
            goto LABEL_70;
          }
        }

        goto LABEL_84;
      }
    }

LABEL_70:

    v65 = (v58)(v64);
    if (v65 == 38)
    {
      v67 = &unk_2864AC248;
LABEL_74:
      v66 = sub_2529FC004(v67);
    }

    else
    {
      v66 = MEMORY[0x277D84FA0];
      if (v65 == 41)
      {
        v67 = &unk_2864AC270;
        goto LABEL_74;
      }
    }

    if (*(v66 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](26);
      v68 = sub_252E37F14();
      v69 = -1 << *(v66 + 32);
      v70 = v68 & ~v69;
      if ((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70))
      {
        v71 = ~v69;
        while (*(*(v66 + 48) + 8 * v70) != 26)
        {
          v70 = (v70 + 1) & v71;
          if (((*(v66 + 56 + ((v70 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v70) & 1) == 0)
          {
            goto LABEL_60;
          }
        }

        goto LABEL_84;
      }
    }

LABEL_60:

    if (v54 == v53)
    {
      goto LABEL_92;
    }

    goto LABEL_61;
  }

  sub_252929F10(v4, 0);

LABEL_85:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v72 = sub_252E36AD4();
  __swift_project_value_buffer(v72, qword_27F544DA8);
  sub_252CC4050(0xD00000000000007BLL, 0x8000000252E79610, 0xD00000000000007BLL, 0x8000000252E79690, 0xD000000000000026, 0x8000000252E79710, 30);
  v34 = 1;
LABEL_43:

  return v34;
}

uint64_t sub_252ADB074(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x277D84F90];
  *(v1 + 16) = 0;
  *(v1 + 24) = v4;
  v5 = [a1 userTask];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for CodableUserTask();
    swift_allocObject();
    *(v2 + 16) = sub_252A04C5C(v6);
  }

  v7 = [a1 filters];
  if (!v7)
  {

    return v2;
  }

  v8 = v7;
  type metadata accessor for HomeFilter();
  v9 = sub_252E37264();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_15:

    v15 = MEMORY[0x277D84F90];
LABEL_16:
    *(v2 + 24) = v15;

    return v2;
  }

  v10 = sub_252E378C4();
  if (!v10)
  {
    goto LABEL_15;
  }

LABEL_6:
  v16 = v4;
  result = sub_252E37AB4();
  if ((v10 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x2530ADF00](v12, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v12 + 32);
      }

      v14 = v13;
      ++v12;
      type metadata accessor for CodableHomeFilter();
      swift_allocObject();
      sub_2529D0A90(v14);

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v10 != v12);

    v15 = v16;
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_252ADB274()
{
  type metadata accessor for ControlHomeIntent.Builder();
  swift_allocObject();
  v1 = ControlHomeIntent.Builder.init()();
  v2 = *(v0 + 24);
  if (v2 >> 62)
  {
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v11 = MEMORY[0x277D84F90];

    result = sub_252E37AB4();
    if (v3 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = 0;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v6, v2);
      }

      else
      {
      }

      ++v6;
      sub_252A79090();

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v3 != v6);

    v4 = v11;
  }

  v7 = (*(*v1 + 208))(v4);

  if (*(v0 + 16))
  {

    v8 = sub_252A05170();
  }

  else
  {
    v8 = 0;
  }

  v9 = (*(*v7 + 184))(v8);

  v10 = (*(*v9 + 224))();

  return v10;
}

uint64_t sub_252ADB49C()
{
  if (*v0)
  {
    return 0x737265746C6966;
  }

  else
  {
    return 0x6B73615472657375;
  }
}

uint64_t sub_252ADB4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B73615472657375 && a2 == 0xE800000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x737265746C6966 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252ADB5B4(uint64_t a1)
{
  v2 = sub_252ADB8B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADB5F0(uint64_t a1)
{
  v2 = sub_252ADB8B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ControlHomeIntentCodable.deinit()
{

  return v0;
}

uint64_t ControlHomeIntentCodable.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252ADB694(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543008, &unk_252E49A70);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADB8B0();
  sub_252E37F84();
  v11 = *(v3 + 16);
  HIBYTE(v10) = 0;
  type metadata accessor for CodableUserTask();
  sub_252ADC508(&qword_27F541988, 255, type metadata accessor for CodableUserTask, aY_10);
  sub_252E37CD4();
  if (!v2)
  {
    v11 = *(v3 + 24);
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
    sub_252ADBBE8(&qword_27F540C18, &qword_27F540C20, aU_22, MEMORY[0x277D83948]);
    sub_252E37D54();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_252ADB8B0()
{
  result = qword_27F543010;
  if (!qword_27F543010)
  {
    result = swift_getWitnessTable(byte_252E49D84, &type metadata for ControlHomeIntentCodable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543010);
  }

  return result;
}

uint64_t ControlHomeIntentCodable.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  ControlHomeIntentCodable.init(from:)(a1);
  return v2;
}

uint64_t ControlHomeIntentCodable.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543018, &qword_252E49A80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - v6;
  v8 = MEMORY[0x277D84F90];
  *(v1 + 16) = 0;
  *(v1 + 24) = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADB8B0();
  sub_252E37F74();
  if (v2)
  {
  }

  else
  {
    type metadata accessor for CodableUserTask();
    v11 = 0;
    sub_252ADC508(&qword_27F541930, 255, type metadata accessor for CodableUserTask, byte_252E40E58);
    sub_252E37BE4();
    *(v1 + 16) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
    v11 = 1;
    sub_252ADBBE8(&qword_27F540A40, &qword_27F540A48, aC_1, MEMORY[0x277D83978]);
    sub_252E37C64();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v12;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252ADBBE8(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540A38, &qword_252E3DF88);
    v10 = sub_252ADC508(a2, 255, type metadata accessor for CodableHomeFilter, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252ADBCF0()
{
  sub_252E379F4();

  type metadata accessor for ControlHomeIntentCodable();
  sub_252ADC508(&qword_27F540C08, v0, type metadata accessor for ControlHomeIntentCodable, protocol conformance descriptor for ControlHomeIntentCodable);
  v1 = sub_252E36E74();
  MEMORY[0x2530AD570](v1);

  MEMORY[0x2530AD570](0x79546B736154202CLL, 0xEC000000203A6570);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F542B08, &qword_252E48110);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](v2);

  return 0x203A746E65746E49;
}

uint64_t sub_252ADBE20()
{
  if (*v0)
  {
    return 0x657079546B736174;
  }

  else
  {
    return 0x746E65746E69;
  }
}

uint64_t sub_252ADBE58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657079546B736174 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_252E37DB4();

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

uint64_t sub_252ADBF30(uint64_t a1)
{
  v2 = sub_252ADC1C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADBF6C(uint64_t a1)
{
  v2 = sub_252ADC1C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HandoffHandleIntentData.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_252ADC000(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543020, &qword_252E49A88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADC1C8();
  sub_252E37F84();
  v12 = *(v3 + 16);
  v11[7] = 0;
  type metadata accessor for ControlHomeIntentCodable();
  sub_252ADC508(&qword_27F540C08, v9, type metadata accessor for ControlHomeIntentCodable, protocol conformance descriptor for ControlHomeIntentCodable);
  sub_252E37D54();
  if (!v2)
  {
    v11[6] = *(v3 + 24);
    v11[5] = 1;
    sub_2529854F0();
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_252ADC1C8()
{
  result = qword_27F543028;
  if (!qword_27F543028)
  {
    result = swift_getWitnessTable(byte_252E49D34, &type metadata for HandoffHandleIntentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543028);
  }

  return result;
}

uint64_t HandoffHandleIntentData.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  HandoffHandleIntentData.init(from:)(a1);
  return v2;
}

uint64_t HandoffHandleIntentData.init(from:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543030, &qword_252E49A90);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10[-v6];
  *(v1 + 24) = 22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADC1C8();
  sub_252E37F74();
  if (v2)
  {
    type metadata accessor for HandoffHandleIntentData();
    swift_deallocPartialClassInstance();
  }

  else
  {
    type metadata accessor for ControlHomeIntentCodable();
    v10[15] = 0;
    sub_252ADC508(&qword_27F540A90, v8, type metadata accessor for ControlHomeIntentCodable, protocol conformance descriptor for ControlHomeIntentCodable);
    sub_252E37C64();
    *(v1 + 16) = v11;
    v10[13] = 1;
    sub_252982D4C();
    sub_252E37BE4();
    (*(v5 + 8))(v7, v4);
    *(v1 + 24) = v10[14];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

uint64_t sub_252ADC508(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_252ADC594@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, uint64_t (*a4)(uint64_t)@<X5>, uint64_t *a5@<X8>)
{
  a2();
  v9 = swift_allocObject();
  result = a4(a1);
  if (!v5)
  {
    *a5 = v9;
  }

  return result;
}

unint64_t sub_252ADC73C()
{
  result = qword_27F543038;
  if (!qword_27F543038)
  {
    result = swift_getWitnessTable(aU_8, &type metadata for ControlHomeIntentCodable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543038);
  }

  return result;
}

unint64_t sub_252ADC794()
{
  result = qword_27F543040;
  if (!qword_27F543040)
  {
    result = swift_getWitnessTable(byte_252E49D0C, &type metadata for HandoffHandleIntentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543040);
  }

  return result;
}

unint64_t sub_252ADC7EC()
{
  result = qword_27F543048;
  if (!qword_27F543048)
  {
    result = swift_getWitnessTable(asc_252E49C7C, &type metadata for HandoffHandleIntentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543048);
  }

  return result;
}

unint64_t sub_252ADC844()
{
  result = qword_27F543050;
  if (!qword_27F543050)
  {
    result = swift_getWitnessTable(a5_0, &type metadata for HandoffHandleIntentData.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543050);
  }

  return result;
}

unint64_t sub_252ADC89C()
{
  result = qword_27F543058;
  if (!qword_27F543058)
  {
    result = swift_getWitnessTable(byte_252E49BC4, &type metadata for ControlHomeIntentCodable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543058);
  }

  return result;
}

unint64_t sub_252ADC8F4()
{
  result = qword_27F543060;
  if (!qword_27F543060)
  {
    result = swift_getWitnessTable(byte_252E49BEC, &type metadata for ControlHomeIntentCodable.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543060);
  }

  return result;
}

uint64_t sub_252ADC948(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543098, &qword_252E49EA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADEF20();
  sub_252E37F84();
  v13 = 0;
  sub_252E37CF4();
  if (!v2)
  {
    v12 = 1;
    sub_252E37CF4();
    v11 = *(v3 + 32);
    v10[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_252984B28(&qword_27F540B18, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    sub_252E37CD4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_252ADCB60()
{
  v1 = 0x696669746E656469;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_252ADCBC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252ADDF0C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252ADCBEC(uint64_t a1)
{
  v2 = sub_252ADEF20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADCC28(uint64_t a1)
{
  v2 = sub_252ADEF20();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_252ADCC64@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_252ADE034(a2, v6);
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

uint64_t sub_252ADCCC4(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;

  v9 = a4;
  sub_252B4F96C(a1, a2, sub_252ADDE64, v8);
}

uint64_t sub_252ADCD60(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = a1[4];
  swift_beginAccess();
  v8 = a2[2];
  v9 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  v13 = a2[6];
  a2[2] = v3;
  a2[3] = v4;
  a2[4] = v5;
  a2[5] = v6;
  a2[6] = v7;
  sub_252ADDE6C(v3, v4);
  sub_252ADDEBC(v8, v9, v11, v10, v13);
  return sub_252E37614();
}

uint64_t sub_252ADCE20(id *a1)
{
  v1 = *a1;
  v2 = [*a1 entity];
  if (v2 && (v3 = v2, v4 = [v2 entityIdentifier], v3, v4))
  {
    v5 = sub_252E36F34();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  v8 = [v1 taskResponses];
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  type metadata accessor for HomeUserTaskResponse();
  v10 = sub_252E37264();

  if (v10 >> 62)
  {
    result = sub_252E378C4();
    if (result)
    {
      goto LABEL_8;
    }

    goto LABEL_13;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_13:

    v8 = 0;
LABEL_14:
    v15 = 1;
    goto LABEL_15;
  }

LABEL_8:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x2530ADF00](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v12 = *(v10 + 32);
  }

  v13 = v12;

  v14 = [v13 taskOutcome];

  v8 = v14;
  v15 = 0;
LABEL_15:
  v16 = sub_252D155F4(v8, v15);
  v18 = v17;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544D30);

  v20 = sub_252E36AC4();
  v21 = sub_252E374C4();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v22 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v23 = sub_252E36F94();
    v31 = v5;
    v25 = v16;
    v26 = sub_252BE2CE0(v23, v24, &v32);

    *(v22 + 4) = v26;
    v16 = v25;
    *(v22 + 12) = 2080;

    v27 = sub_252E36F94();
    v29 = sub_252BE2CE0(v27, v28, &v32);

    *(v22 + 14) = v29;
    v5 = v31;
    _os_log_impl(&dword_252917000, v20, v21, "Will memorize resolution for %s %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v30, -1, -1);
    MEMORY[0x2530AED00](v22, -1, -1);
  }

  sub_252ADE2C4(v5, v7, v16, v18);
}

uint64_t sub_252ADD190(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a4;

  v9 = a4;
  sub_252B4F96C(a1, a2, sub_252ADED88, v8);
}

uint64_t sub_252ADD238(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v21 = *a1;
  v8 = *a1;
  v9 = a1[4];
  v10 = v5;
  if (!v5)
  {
    v8 = qword_27F543068;
    v10 = unk_27F543070;

    v9 = MEMORY[0x277D84F90];
    v6 = a3;
    v7 = a4;
  }

  swift_beginAccess();
  v13 = a2[2];
  v14 = a2[3];
  v15 = v10;
  v16 = v8;
  v18 = a2[4];
  v17 = a2[5];
  v19 = a2[6];
  a2[2] = v16;
  a2[3] = v15;
  a2[4] = v6;
  a2[5] = v7;
  a2[6] = v9;
  sub_252ADDE6C(v21, v5);
  sub_252ADDEBC(v13, v14, v18, v17, v19);
  return sub_252E37614();
}

void sub_252ADD33C(void *a1)
{
  if (a1)
  {
    if (qword_27F53F4D8 != -1)
    {
      swift_once();
    }

    v2 = sub_252E36AD4();
    __swift_project_value_buffer(v2, qword_27F544D30);
    v3 = a1;
    oslog = sub_252E36AC4();
    v4 = sub_252E374D4();

    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v12 = v6;
      *v5 = 136315138;
      v7 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F30, &unk_252E4AAF0);
      v8 = sub_252E36F94();
      v10 = sub_252BE2CE0(v8, v9, &v12);

      *(v5 + 4) = v10;
      _os_log_impl(&dword_252917000, oslog, v4, "Exception writing on Coreknowledge. Error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x2530AED00](v6, -1, -1);
      MEMORY[0x2530AED00](v5, -1, -1);
    }

    else
    {
    }
  }
}

float sub_252ADD4E4(uint64_t a1, uint64_t a2)
{
  v71 = a1;
  v72 = a2;
  v70 = sub_252E36C84();
  v68 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v66 = (v60 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v69 = sub_252E36D54();
  v67 = *(v69 - 8);
  v3 = MEMORY[0x28223BE20](v69);
  v64 = v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v65 = v60 - v5;
  v6 = sub_252E36CA4();
  v63 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E36D04();
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v60 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_252E36CB4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = dispatch_semaphore_create(0);
  v17 = swift_allocObject();
  sub_252936DF8();
  *(v17 + 16) = 0u;
  v60[1] = v17 + 16;
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0;
  (*(v13 + 104))(v15, *MEMORY[0x277D851C0], v12);
  v18 = sub_252E375A4();
  (*(v13 + 8))(v15, v12);
  v19 = v72;
  v20 = swift_allocObject();
  v20[2] = v71;
  v20[3] = v19;
  v20[4] = v17;
  v20[5] = v16;
  aBlock[4] = sub_252ADDE40;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_9;
  v21 = _Block_copy(aBlock);

  v22 = v16;
  sub_252E36CD4();
  v73 = MEMORY[0x277D84F90];
  sub_252990E98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_2529905D0();
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v11, v8, v21);
  _Block_release(v21);

  (*(v63 + 8))(v8, v6);
  (*(v61 + 8))(v11, v62);

  v23 = v64;
  sub_252E36D14();
  v24 = v66;
  *v66 = 200;
  v25 = v68;
  v26 = v70;
  (*(v68 + 104))(v24, *MEMORY[0x277D85178], v70);
  v27 = v65;
  sub_252E36D24();
  (*(v25 + 8))(v24, v26);
  v28 = v67[1];
  v29 = v69;
  v28(v23, v69);
  sub_252E375F4();
  v28(v27, v29);
  if (sub_252E36C94())
  {
    if (qword_27F53F4D8 != -1)
    {
LABEL_34:
      swift_once();
    }

    v30 = sub_252E36AD4();
    __swift_project_value_buffer(v30, qword_27F544D30);
    sub_252CC4050(0xD000000000000029, 0x8000000252E797D0, 0xD000000000000087, 0x8000000252E79800, 0xD000000000000011, 0x8000000252E79890, 72);
    goto LABEL_24;
  }

  swift_beginAccess();
  if (!*(v17 + 24) || (v31 = *(v17 + 48)) == 0)
  {
LABEL_24:

    return 1.0;
  }

  v69 = v22;
  v70 = v17;
  v32 = *(v31 + 16);

  if (v32)
  {
    v33 = 0;
    v34 = v31 + 40;
    v67 = (&v32[-1].isa + 7);
    v35 = MEMORY[0x277D84F90];
    v68 = v31 + 40;
    do
    {
      v36 = (v34 + 16 * v33);
      v22 = v33;
      while (1)
      {
        if (v22 >= *(v31 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v38 = *(v36 - 1);
        v37 = *v36;
        if (v38 == sub_252E36F34() && v37 == v39)
        {
          break;
        }

        v41 = sub_252E37DB4();

        if (v41)
        {
          goto LABEL_18;
        }

        v22 = (v22 + 1);

        v36 += 2;
        if (v32 == v22)
        {
          goto LABEL_27;
        }
      }

LABEL_18:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v73 = v35;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA3A0(0, *(v35 + 16) + 1, 1);
        v35 = v73;
      }

      v34 = v68;
      v44 = *(v35 + 16);
      v43 = *(v35 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_2529AA3A0((v43 > 1), v44 + 1, 1);
        v35 = v73;
      }

      v33 = (&v22->isa + 1);
      *(v35 + 16) = v44 + 1;
      v45 = v35 + 16 * v44;
      *(v45 + 32) = v38;
      *(v45 + 40) = v37;
    }

    while (v67 != v22);
  }

  else
  {
    v35 = MEMORY[0x277D84F90];
  }

LABEL_27:
  v47 = *(v35 + 16);

  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v48 = sub_252E36AD4();
  __swift_project_value_buffer(v48, qword_27F544D30);
  v49 = v72;

  v50 = sub_252E36AC4();
  v51 = sub_252E374C4();

  v52 = os_log_type_enabled(v50, v51);
  v53 = v69;
  if (v52)
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v73 = v55;
    *v54 = 136315650;
    *(v54 + 4) = sub_252BE2CE0(v71, v49, &v73);
    *(v54 + 12) = 2080;
    v56 = MEMORY[0x2530AD730](v31, MEMORY[0x277D837D0]);
    v58 = sub_252BE2CE0(v56, v57, &v73);

    *(v54 + 14) = v58;
    *(v54 + 22) = 2048;
    *(v54 + 24) = v47;
    _os_log_impl(&dword_252917000, v50, v51, "Measuring success rate for %s window=%s count=%ld", v54, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v55, -1, -1);
    MEMORY[0x2530AED00](v54, -1, -1);
  }

  v59 = *(v31 + 16);

  result = 1.0;
  if (v59 >= 3)
  {
    return v47 / v59;
  }

  return result;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252ADDE6C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_252ADDEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_252ADDF0C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000252E798F0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_252ADE034@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543088, &unk_252E49E98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADEF20();
  sub_252E37F74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_252E37C04();
  v11 = v10;
  v20 = v9;
  v23 = 1;
  v12 = sub_252E37C04();
  v14 = v13;
  v19 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  v22 = 2;
  sub_252984B28(&qword_27F540920, MEMORY[0x277D83808], MEMORY[0x277D83978]);
  sub_252E37BE4();
  (*(v6 + 8))(v8, v5);
  v15 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  v17 = v19;
  *a2 = v20;
  a2[1] = v11;
  a2[2] = v17;
  a2[3] = v14;
  a2[4] = v15;
  return result;
}

void sub_252ADE2C4(uint64_t (*a1)(), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v71 = a4;
  v67 = a3;
  v68 = a1;
  v5 = sub_252E36C84();
  v65 = *(v5 - 8);
  v66 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = sub_252E36D54();
  v63 = *(v8 - 8);
  v64 = v8;
  v9 = MEMORY[0x28223BE20](v8);
  v61 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v62 = &v55 - v11;
  v12 = sub_252E36CA4();
  v60 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_252E36D04();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_252E36CB4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = dispatch_semaphore_create(0);
  v21 = swift_allocObject();
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  v69 = v21;
  *(v21 + 48) = 0;
  v22 = a2;
  if (a2 && v71)
  {
    sub_252936DF8();
    (*(v18 + 104))(v20, *MEMORY[0x277D851C0], v17);

    v56 = sub_252E375A4();
    (*(v18 + 8))(v20, v17);
    v23 = swift_allocObject();
    v24 = v69;
    v23[2] = v68;
    v23[3] = a2;
    v25 = v70;
    v23[4] = v24;
    v23[5] = v25;
    v77 = sub_252ADED7C;
    v78 = v23;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    v75 = sub_252AD686C;
    v76 = &block_descriptor_13;
    v26 = _Block_copy(&aBlock);
    v57 = a2;

    v27 = v70;
    sub_252E36CD4();
    v72[0] = MEMORY[0x277D84F90];
    sub_252990E98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
    sub_2529905D0();
    sub_252E37824();
    v28 = v56;
    MEMORY[0x2530ADA30](0, v16, v14, v26);
    _Block_release(v26);

    (*(v60 + 8))(v14, v12);
    (*(v58 + 8))(v16, v59);

    v29 = v61;
    sub_252E36D14();
    *v7 = 200;
    v31 = v65;
    v30 = v66;
    (*(v65 + 104))(v7, *MEMORY[0x277D85178], v66);
    v32 = v62;
    sub_252E36D24();
    (*(v31 + 8))(v7, v30);
    v33 = v64;
    v34 = *(v63 + 8);
    v34(v29, v64);
    sub_252E375F4();
    v34(v32, v33);
    if (sub_252E36C94())
    {

      if (qword_27F53F4D8 != -1)
      {
        swift_once();
      }

      v35 = sub_252E36AD4();
      __swift_project_value_buffer(v35, qword_27F544D30);
      sub_252CC4050(0xD000000000000029, 0x8000000252E797D0, 0xD000000000000087, 0x8000000252E79800, 0xD000000000000038, 0x8000000252E798B0, 125);

      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_252E3C290;
    v50 = v71;
    *(v49 + 32) = v67;
    *(v49 + 40) = v50;
    v73 = v49;
    swift_beginAccess();
    v51 = v57;
    if (*(v24 + 24) && *(v24 + 48))
    {
    }

    else
    {
      v52 = MEMORY[0x277D84F90];
    }

    sub_25297A744(v52);
    v53 = v73;
    if (*(v73 + 16) < 5uLL)
    {
LABEL_22:
      aBlock = xmmword_27F543068;
      v75 = v68;
      v76 = v51;
      v77 = v53;

      sub_252DBB18C(&aBlock);

      return;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v54 = *(v53 + 2);
      if (v54)
      {
LABEL_21:
        *(v53 + 2) = v54 - 1;

        goto LABEL_22;
      }
    }

    else
    {
      v53 = sub_252D57B88(v53);
      v54 = *(v53 + 2);
      if (v54)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
    return;
  }

  v36 = v71;
  if (qword_27F53F4D8 != -1)
  {
    swift_once();
  }

  v37 = sub_252E36AD4();
  __swift_project_value_buffer(v37, qword_27F544D30);

  v38 = sub_252E36AC4();
  v39 = sub_252E374D4();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v72[0] = v41;
    *v40 = 136315394;
    *&aBlock = v68;
    *(&aBlock + 1) = v22;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v42 = sub_252E36F94();
    v44 = sub_252BE2CE0(v42, v43, v72);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2080;
    *&aBlock = v67;
    *(&aBlock + 1) = v36;

    v45 = sub_252E36F94();
    v47 = sub_252BE2CE0(v45, v46, v72);

    *(v40 + 14) = v47;
    swift_arrayDestroy();
    MEMORY[0x2530AED00](v41, -1, -1);
    MEMORY[0x2530AED00](v40, -1, -1);
  }

  else
  {

    v48 = v70;
  }
}

void sub_252ADEC58(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = v4;
      sub_252ADCE20(&v7);

      if (v6 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_252ADEDA8(uint64_t a1, int a2)
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

uint64_t sub_252ADEDF0(uint64_t result, int a2, int a3)
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

unint64_t sub_252ADEE48(uint64_t a1)
{
  *(a1 + 8) = sub_252ADEE78();
  result = sub_252ADEECC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_252ADEE78()
{
  result = qword_27F543078;
  if (!qword_27F543078)
  {
    result = swift_getWitnessTable(byte_252E49E6C, &type metadata for DeviceInteractionRecord, v0, v1);
    atomic_store(result, &qword_27F543078);
  }

  return result;
}

unint64_t sub_252ADEECC()
{
  result = qword_27F543080;
  if (!qword_27F543080)
  {
    result = swift_getWitnessTable(byte_252E49E44, &type metadata for DeviceInteractionRecord, v0, v1);
    atomic_store(result, &qword_27F543080);
  }

  return result;
}

unint64_t sub_252ADEF20()
{
  result = qword_27F543090;
  if (!qword_27F543090)
  {
    result = swift_getWitnessTable(byte_252E49F74, &type metadata for DeviceInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F543090);
  }

  return result;
}

unint64_t sub_252ADEF88()
{
  result = qword_27F5430A0;
  if (!qword_27F5430A0)
  {
    result = swift_getWitnessTable(asc_252E49F4C, &type metadata for DeviceInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430A0);
  }

  return result;
}

unint64_t sub_252ADEFE0()
{
  result = qword_27F5430A8;
  if (!qword_27F5430A8)
  {
    result = swift_getWitnessTable(byte_252E49EBC, &type metadata for DeviceInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430A8);
  }

  return result;
}

unint64_t sub_252ADF038()
{
  result = qword_27F5430B0;
  if (!qword_27F5430B0)
  {
    result = swift_getWitnessTable(byte_252E49EE4, &type metadata for DeviceInteractionRecord.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430B0);
  }

  return result;
}

uint64_t SuggestionParameters.containerName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t SuggestionParameters.containerName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t SuggestionParameters.roomName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t SuggestionParameters.roomName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t SuggestionParameters.accessoryName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

unint64_t sub_252ADF24C()
{
  v1 = 0x726F737365636361;
  v2 = *v0;
  v3 = 0xD00000000000001DLL;
  if (v2 != 5)
  {
    v3 = 0xD00000000000001CLL;
  }

  v4 = 0x656D614E6D6F6F72;
  if (v2 != 3)
  {
    v4 = 0x726F737365636361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7475626972747461;
  if (v2 != 1)
  {
    v5 = 0x656E6961746E6F63;
  }

  if (*v0)
  {
    v1 = v5;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_252ADF350@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_252AE5358(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_252ADF378(uint64_t a1)
{
  v2 = sub_252ADF670();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252ADF3B4(uint64_t a1)
{
  v2 = sub_252ADF670();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SuggestionParameters.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5430B8, &qword_252E49FD0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v20 = *(v1 + 16);
  v19 = *(v1 + 24);
  v7 = *(v1 + 32);
  v17 = *(v1 + 40);
  v18 = v7;
  v8 = *(v1 + 48);
  v15 = *(v1 + 56);
  v16 = v8;
  v9 = *(v1 + 64);
  v13 = *(v1 + 72);
  v14 = v9;
  LODWORD(v9) = *(v1 + 80);
  v12[0] = *(v1 + 81);
  v12[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADF670();
  sub_252E37F84();
  v28 = 0;
  v10 = v21;
  sub_252E37CC4();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v27 = 1;
  sub_252E37CC4();
  v26 = 2;
  sub_252E37C94();
  v25 = 3;
  sub_252E37C94();
  v24 = 4;
  sub_252E37C94();
  v23 = 5;
  sub_252E37D04();
  v22 = 6;
  sub_252E37D04();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_252ADF670()
{
  result = qword_27F5430C0;
  if (!qword_27F5430C0)
  {
    result = swift_getWitnessTable(byte_252E4A270, &type metadata for SuggestionParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430C0);
  }

  return result;
}

uint64_t SuggestionParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5430C8, &qword_252E49FD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252ADF670();
  sub_252E37F74();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v45) = 0;
    v38 = sub_252E37BD4();
    v58 = v9 & 1;
    LOBYTE(v45) = 1;
    v37 = sub_252E37BD4();
    v57 = v10 & 1;
    LOBYTE(v45) = 2;
    v11 = sub_252E37BA4();
    v13 = v12;
    v36 = v11;
    LOBYTE(v45) = 3;
    v14 = sub_252E37BA4();
    v16 = v15;
    v35 = v14;
    LOBYTE(v45) = 4;
    v17 = sub_252E37BA4();
    v19 = v18;
    v34 = v17;
    LOBYTE(v45) = 5;
    v33 = sub_252E37C14();
    v59 = 6;
    v20 = sub_252E37C14();
    v33 &= 1u;
    v21 = *(v6 + 8);
    v32 = v20;
    v21(v8, v5);
    v22 = v32 & 1;
    v30 = v32 & 1;
    *&v39 = v38;
    v32 = v58;
    BYTE8(v39) = v58;
    *&v40 = v37;
    v31 = v57;
    BYTE8(v40) = v57;
    v23 = v36;
    *&v41 = v36;
    *(&v41 + 1) = v13;
    v24 = v35;
    *&v42 = v35;
    *(&v42 + 1) = v16;
    v25 = v34;
    *&v43 = v34;
    *(&v43 + 1) = v19;
    LOBYTE(v44) = v33;
    HIBYTE(v44) = v22;
    v26 = v42;
    *(a2 + 32) = v41;
    *(a2 + 48) = v26;
    *(a2 + 64) = v43;
    *(a2 + 80) = v44;
    v27 = v40;
    *a2 = v39;
    *(a2 + 16) = v27;
    sub_252ADFB08(&v39, &v45);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v45 = v38;
    v46 = v32;
    v47 = v37;
    v48 = v31;
    v49 = v23;
    v50 = v13;
    v51 = v24;
    v52 = v16;
    v53 = v25;
    v54 = v19;
    v55 = v33;
    v56 = v30;
    return sub_252ADFB40(&v45);
  }
}

HomeAutomationInternal::SiriHintUseCase_optional __swiftcall SiriHintUseCase.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SiriHintUseCase.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x746867694C6D6964;
    v7 = 0xD000000000000013;
    if (v1 != 2)
    {
      v7 = 0xD000000000000015;
    }

    if (*v0)
    {
      v6 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    v3 = 0xD000000000000011;
    if (v1 == 7)
    {
      v3 = 0xD000000000000015;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (v1 == 4)
    {
      v4 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_252ADFD48()
{
  v1 = *v0;
  sub_252E37EC4();
  sub_252AB3AB0(v3, v1);
  return sub_252E37F14();
}

uint64_t sub_252ADFD98(uint64_t a1)
{
  v2 = *v1;
  sub_252E37EC4();
  sub_252AB3AB0(v4, v2);
  return sub_252E37F14();
}

unint64_t sub_252ADFDE8@<X0>(unint64_t *a1@<X8>)
{
  result = SiriHintUseCase.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_252ADFE20()
{
  result = sub_252CC6CF0(&unk_2864A9680);
  qword_27F5757E8 = result;
  return result;
}

unint64_t sub_252ADFE48()
{
  result = sub_252CC6CC8(&unk_2864A9610);
  qword_27F5757F0 = result;
  return result;
}

unint64_t sub_252ADFE70()
{
  result = sub_252CC6D18(&unk_2864A9760);
  qword_27F5757F8 = result;
  return result;
}

unint64_t sub_252ADFE9C()
{
  result = qword_27F5430D0;
  if (!qword_27F5430D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SiriHintUseCase, &type metadata for SiriHintUseCase, v0, v1);
    atomic_store(result, &qword_27F5430D0);
  }

  return result;
}

unint64_t sub_252ADFEF4()
{
  result = qword_27F5430D8;
  if (!qword_27F5430D8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5430E0, &qword_252E4A0D0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5430D8);
  }

  return result;
}

__n128 __swift_memcpy82_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_252ADFF7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 82))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 40);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_252ADFFD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 82) = 0;
    }

    if (a2)
    {
      *(result + 40) = a2;
    }
  }

  return result;
}

unint64_t sub_252AE0078()
{
  result = qword_27F5430E8;
  if (!qword_27F5430E8)
  {
    result = swift_getWitnessTable(byte_252E4A248, &type metadata for SuggestionParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430E8);
  }

  return result;
}

unint64_t sub_252AE00D0()
{
  result = qword_27F5430F0;
  if (!qword_27F5430F0)
  {
    result = swift_getWitnessTable(byte_252E4A1B8, &type metadata for SuggestionParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430F0);
  }

  return result;
}

unint64_t sub_252AE0128()
{
  result = qword_27F5430F8;
  if (!qword_27F5430F8)
  {
    result = swift_getWitnessTable(byte_252E4A1E0, &type metadata for SuggestionParameters.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5430F8);
  }

  return result;
}

void sub_252AE017C()
{
  v1 = *(*v0 + 16);
  v2 = v1 - 2;
  if (v1 >= 2)
  {
    v3 = 0;
    while (1)
    {
      v15 = 0;
      MEMORY[0x2530AED20](&v15, 8);
      v5 = (v15 * v1) >> 64;
      if (v1 > v15 * v1)
      {
        v6 = -v1 % v1;
        if (v6 > v15 * v1)
        {
          do
          {
            v15 = 0;
            MEMORY[0x2530AED20](&v15, 8);
          }

          while (v6 > v15 * v1);
          v5 = (v15 * v1) >> 64;
        }
      }

      v7 = v3 + v5;
      if (__OFADD__(v3, v5))
      {
        break;
      }

      if (v3 != v7)
      {
        v8 = *v0;
        v9 = *(*v0 + 16);
        if (v3 >= v9)
        {
          goto LABEL_21;
        }

        if (v7 >= v9)
        {
          goto LABEL_22;
        }

        v10 = *(v8 + 32 + 8 * v3);
        v11 = *(v8 + 32 + 8 * v7);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_252935460(v8);
          *v0 = v8;
        }

        if (v3 >= *(v8 + 16))
        {
          goto LABEL_23;
        }

        *(v8 + 8 * v3 + 32) = v11;

        sub_252E37AA4();
        v13 = *v0;
        v14 = swift_isUniquelyReferenced_nonNull_native();
        *v0 = v13;
        if ((v14 & 1) == 0)
        {
          v13 = sub_252935460(v13);
          *v0 = v13;
        }

        if (v7 >= *(v13 + 16))
        {
          goto LABEL_24;
        }

        *(v13 + 8 * v7 + 32) = v10;

        sub_252E37AA4();
      }

      --v1;
      if (v3++ == v2)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t sub_252AE0320(void *a1)
{
  v76 = sub_252E32E84();
  v2 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = v64 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [a1 filters];
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v6 = v4;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v8 = sub_252DD5A58(v7);
    v64[0] = 0;
  }

  else
  {
    v64[0] = 0;
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_252C758E0(v8);

  v10 = sub_252DD6238(v9);

  if (!v10)
  {
    return 0;
  }

  v64[1] = v10;
  v11 = sub_2529E789C();
  v12 = v11;
  if (v11 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v14 = 0;
    v68 = v12 & 0xFFFFFFFFFFFFFF8;
    v69 = v12 & 0xC000000000000001;
    v67 = v12 + 32;
    v73 = (v2 + 8);
    v66 = v12;
    v65 = i;
    while (1)
    {
      if (v69)
      {
        v15 = MEMORY[0x2530ADF00](v14, v12);
        v16 = __OFADD__(v14, 1);
        v17 = v14 + 1;
        if (v16)
        {
          goto LABEL_77;
        }
      }

      else
      {
        if (v14 >= *(v68 + 16))
        {
          goto LABEL_78;
        }

        v16 = __OFADD__(v14, 1);
        v17 = v14 + 1;
        if (v16)
        {
          goto LABEL_77;
        }
      }

      v70 = v17;
      v71 = v15;
      v18 = [*(v15 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
      v19 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      sub_2529E6100();
      v20 = sub_252E373A4();

      v80 = v5;
      v74 = v20;
      v77 = v19;
      if ((v20 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_252E37874();
        sub_252E373E4();
        v20 = v82;
        v2 = v83;
        v12 = v84;
        v21 = v85;
        v22 = v86;
      }

      else
      {
        v23 = -1 << *(v20 + 32);
        v2 = v20 + 56;
        v12 = ~v23;
        v24 = -v23;
        v25 = v24 < 64 ? ~(-1 << v24) : -1;
        v22 = v25 & *(v20 + 56);

        v21 = 0;
      }

      v72 = v12;
      v26 = (v12 + 64) >> 6;
      if ((v20 & 0x8000000000000000) == 0)
      {
        break;
      }

      while (1)
      {
        v12 = v20 & 0x7FFFFFFFFFFFFFFFLL;
        v31 = sub_252E37904();
        if (!v31)
        {
          break;
        }

        v78 = v31;
        swift_dynamicCast();
        v12 = v79;
        v29 = v21;
        v30 = v22;
        if (!v79)
        {
          break;
        }

LABEL_27:
        type metadata accessor for Action();
        v32 = swift_allocObject();
        *(v32 + 16) = v12;
        v33 = v12;
        v34 = [v33 uniqueIdentifier];
        v35 = v75;
        sub_252E32E64();

        v36 = sub_252E32E24();
        v38 = v37;
        (*v73)(v35, v76);
        *(v32 + 24) = v36;
        *(v32 + 32) = v38;
        objc_opt_self();
        if (swift_dynamicCastObjCClass())
        {
          v39 = 1;
        }

        else
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v39 = 2;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v39 = 3;
            }

            else
            {
              objc_opt_self();
              v39 = 4 * (swift_dynamicCastObjCClass() != 0);
            }
          }
        }

        *(v32 + 40) = v39;
        v12 = &v80;
        MEMORY[0x2530AD700]();
        if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        v5 = v80;
        v21 = v29;
        v22 = v30;
        if ((v20 & 0x8000000000000000) == 0)
        {
          goto LABEL_19;
        }
      }

LABEL_38:
      sub_25291AE30(v20);

      if (v5 >> 62)
      {
        v2 = sub_252E378C4();
        if (!v2)
        {
          goto LABEL_8;
        }

LABEL_40:
        v40 = 0;
        v41 = v5 & 0xC000000000000001;
        v42 = v5 & 0xFFFFFFFFFFFFFF8;
        v74 = v2;
        while (2)
        {
          if (v41)
          {
            v43 = MEMORY[0x2530ADF00](v40, v5);
            v44 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_75;
            }
          }

          else
          {
            if (v40 >= *(v42 + 16))
            {
              goto LABEL_76;
            }

            v43 = *(v5 + 8 * v40 + 32);

            v44 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_75;
            }
          }

          if (*(v43 + 40) == 1)
          {
            v12 = *(v43 + 16);
            objc_opt_self();
            v45 = swift_dynamicCastObjCClass();
            if (v45)
            {
              v46 = v45;
              v47 = v5;
              v48 = v42;
              v49 = v41;
              v77 = v12;
              v50 = [v46 characteristic];
              v51 = [v50 characteristicType];

              v52 = sub_252E36F34();
              v54 = v53;

              if (qword_27F53F8D0 != -1)
              {
                swift_once();
              }

              v12 = off_27F546248;
              if (*(off_27F546248 + 2))
              {
                v55 = sub_252A44A10(v52, v54);
                if (v56)
                {
                  v41 = v49;
                  goto LABEL_58;
                }
              }

              if (qword_27F53F8E0 != -1)
              {
                swift_once();
              }

              v12 = off_27F546258;
              v41 = v49;
              if (*(off_27F546258 + 2))
              {
                v55 = sub_252A44A10(v52, v54);
                if (v57)
                {
LABEL_58:
                  v42 = v48;
                  v5 = v47;
LABEL_63:
                  v2 = v74;
                  v12 = *(*(v12 + 56) + 8 * v55);

                  if (v12 == 2)
                  {

                    v59 = 1;
                    goto LABEL_81;
                  }

LABEL_43:
                  ++v40;
                  if (v44 == v2)
                  {
                    goto LABEL_8;
                  }

                  continue;
                }
              }

              v42 = v48;
              if (qword_27F53F8C8 != -1)
              {
                swift_once();
              }

              v12 = off_27F546240;
              v5 = v47;
              if (*(off_27F546240 + 2))
              {
                v55 = sub_252A44A10(v52, v54);
                if (v58)
                {
                  goto LABEL_63;
                }
              }

              v2 = v74;
            }
          }

          break;
        }

        goto LABEL_43;
      }

      v2 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2)
      {
        goto LABEL_40;
      }

LABEL_8:

      v14 = v70;
      v5 = MEMORY[0x277D84F90];
      v12 = v66;
      if (v70 == v65)
      {
        goto LABEL_80;
      }
    }

LABEL_19:
    v27 = v21;
    v28 = v22;
    v29 = v21;
    if (v22)
    {
LABEL_23:
      v30 = (v28 - 1) & v28;
      v12 = *(*(v20 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
      if (!v12)
      {
        goto LABEL_38;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= v26)
      {
        goto LABEL_38;
      }

      v28 = *(v2 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

LABEL_80:

  v59 = 0;
LABEL_81:
  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v60 = sub_252E36AD4();
  __swift_project_value_buffer(v60, qword_2814B0AC8);
  v80 = 0;
  v81 = 0xE000000000000000;
  sub_252E379F4();

  v80 = 0xD000000000000025;
  v81 = 0x8000000252E79DF0;
  if (v59)
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (v59)
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v61, v62);

  sub_252CC3D90(v80, v81, 0xD0000000000000A1, 0x8000000252E79970);

  return v59;
}

unint64_t sub_252AE0C54(void *a1)
{
  result = sub_252C2C640();
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_252E378C4();
    result = v6;
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_8:

    v5 = 0;
    goto LABEL_9;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
LABEL_26:
    v4 = MEMORY[0x2530ADF00](0);
  }

  else
  {
    if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v4 = *(result + 32);
  }

  v5 = v4;

LABEL_9:
  v8 = [a1 filters];
  if (!v8)
  {
    goto LABEL_29;
  }

  v9 = v8;
  type metadata accessor for HomeFilter();
  v10 = sub_252E37264();

  if (v10 >> 62)
  {
    v11 = sub_252E378C4();
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_28:

    goto LABEL_29;
  }

  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    goto LABEL_28;
  }

LABEL_12:
  v12 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x2530ADF00](v12, v10);
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_21;
    }

LABEL_16:
    v1 = v13;
    v13 = [v1 homeEntityName];
    if (v13)
    {
      goto LABEL_22;
    }

    ++v12;
    if (v14 == v11)
    {
      goto LABEL_28;
    }
  }

  if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
    goto LABEL_26;
  }

  v13 = *(v10 + 8 * v12 + 32);
  v14 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_16;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  v15 = v13;

  if (v5)
  {
    v16 = [v5 homeEntityName];
    if (v16)
    {
      v17 = v16;
      v18 = sub_252E36F34();
      v20 = v19;

      goto LABEL_45;
    }
  }

LABEL_29:
  sub_252C51E70();
  if (v21)
  {

    v22 = sub_252C51E70();
    goto LABEL_35;
  }

  sub_252C51FFC();
  if (v24)
  {

    v22 = sub_252C51FFC();
    goto LABEL_35;
  }

  sub_252C4BEAC();
  if (v25)
  {

    v22 = sub_252C4BEAC();
LABEL_35:
    v26 = v22;
    v27 = v23;
    if (v23)
    {
      if (v5)
      {
        v28 = [v5 home];
        if (v28)
        {
          v29 = v28;
          v30 = sub_252E36F34();
          v32 = v31;

          if (v26 == v30 && v27 == v32)
          {

            goto LABEL_43;
          }

          v33 = sub_252E37DB4();

          if (v33)
          {
LABEL_43:

            goto LABEL_44;
          }
        }
      }

      v18 = 0;
      v20 = 0;
    }

    else
    {
      v18 = 0;
      v20 = 0;
      v26 = 0;
    }
  }

  else
  {
LABEL_44:
    v18 = 0;
    v20 = 0;
LABEL_45:
    v26 = 0;
    v27 = 0;
  }

  v34 = sub_252C2C640();
  if (v34 >> 62)
  {
    v35 = sub_252E378C4();
  }

  else
  {
    v35 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543110, &qword_252E4A2F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  *(inited + 32) = 0x746867694C6D6964;
  v37 = inited + 32;
  *(inited + 40) = 0xE900000000000073;
  *(inited + 48) = 1;
  *(inited + 56) = 0;
  *(inited + 64) = 2;
  *(inited + 72) = 0;
  *(inited + 80) = v26;
  *(inited + 88) = v27;
  *(inited + 96) = 0;
  *(inited + 104) = 0;
  *(inited + 112) = v18;
  *(inited + 120) = v20;
  *(inited + 128) = 1;
  *(inited + 129) = v35 > 1;
  v38 = sub_252CC6B08(inited);
  swift_setDeallocating();
  sub_25293847C(v37, &qword_27F5452A0, &qword_252E5A620);

  return v38;
}

uint64_t sub_252AE1098(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x2822009F8](sub_252AE10B8, 0, 0);
}

uint64_t sub_252AE10B8()
{
  v1 = type metadata accessor for HomeStore(0);
  v2 = static HomeStore.shared.getter(v1);
  v3 = v2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v3 != 2 && (v3 & 1) == 0 || (v4 = [*(v0 + 24) filters]) == 0)
  {

LABEL_7:
    if (qword_2814B0AC0 != -1)
    {
      goto LABEL_30;
    }

    goto LABEL_8;
  }

  v5 = v4;
  v6 = *(v0 + 24);
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = &off_279711000;
  v9 = [v6 userTask];
  v10 = HomeStore.services(matching:supporting:)(v7, v9);
  v12 = v11;

  if (v12)
  {
    sub_252929F10(v10, 1);
    goto LABEL_7;
  }

  v42 = MEMORY[0x277D84F90];
  if (v10 >> 62)
  {
    v14 = sub_252E378C4();
    if (v14)
    {
      goto LABEL_11;
    }

LABEL_32:
    v25 = MEMORY[0x277D84F90];
LABEL_33:
    *(v0 + 40) = v25;
    sub_252929F10(v10, 0);
    if (v25 < 0 || (v25 & 0x4000000000000000) != 0)
    {
      v40 = sub_252E378C4();
      *(v0 + 48) = v40;
      if (!v40)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v26 = *(v25 + 16);
      *(v0 + 48) = v26;
      if (!v26)
      {
        goto LABEL_43;
      }
    }

    v27 = [*(v0 + 24) v8[214]];
    if (v27)
    {
      v28 = v27;
      v29 = [v27 taskType];

      if (v29 == 1)
      {
        v30 = [*(v0 + 24) v8[214]];
        if (v30)
        {
          v31 = v30;
          v32 = [v30 value];

          if (v32)
          {
            v33 = [v32 BOOLValue];

            if (v33)
            {
              v35 = *(sub_252B680FC(v34) + 144);

              if (v35 == 1 && (sub_252AE0320(*(v0 + 24)) & 1) == 0)
              {
                type metadata accessor for TimeUtilities(0);
                swift_allocObject();
                v39 = swift_task_alloc();
                *(v0 + 56) = v39;
                *v39 = v0;
                v39[1] = sub_252AE162C;

                return sub_2529E96EC();
              }
            }
          }
        }
      }
    }

LABEL_43:

    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v36 = sub_252E36AD4();
    __swift_project_value_buffer(v36, qword_2814B0AC8);
    sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E79D80, 0xD0000000000000A1, 0x8000000252E79970);
    goto LABEL_46;
  }

  v14 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_32;
  }

LABEL_11:
  v41 = v0;
  v15 = 0;
  while ((v10 & 0xC000000000000001) != 0)
  {
    v16 = MEMORY[0x2530ADF00](v15, v10);
    v0 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_28;
    }

LABEL_18:
    v17 = [*(v16 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v18 = sub_252E36F34();
    v20 = v19;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v21 = off_27F546230;
    if (*(off_27F546230 + 2) && (v22 = sub_252A44A10(v18, v20), (v23 & 1) != 0))
    {
      v24 = *(v21[7] + 8 * v22);

      if (v24 == 1)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        goto LABEL_14;
      }
    }

    else
    {
    }

LABEL_14:
    ++v15;
    if (v0 == v14)
    {
      v0 = v41;
      v25 = v42;
      v8 = &off_279711000;
      goto LABEL_33;
    }
  }

  if (v15 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_29;
  }

  v16 = *(v10 + 8 * v15 + 32);

  v0 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    goto LABEL_18;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  swift_once();
LABEL_8:
  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_2814B0AC8);
  sub_252CC4050(0xD000000000000023, 0x8000000252E79D20, 0xD0000000000000A1, 0x8000000252E79970, 0xD000000000000024, 0x8000000252E79D50, 113);
LABEL_46:
  v37 = *(v0 + 8);

  return v37(0);
}

uint64_t sub_252AE162C(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_252AE172C, 0, 0);
}

uint64_t sub_252AE172C()
{
  v1 = sub_2529E9E68();

  v2 = v0[5];
  if ((v1 & 1) == 0)
  {
LABEL_15:

    if (qword_2814B0AC0 == -1)
    {
LABEL_16:
      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_2814B0AC8);
      v11 = "ts(intent:response:)";
      v12 = 0xD00000000000001ALL;
      goto LABEL_17;
    }

LABEL_28:
    swift_once();
    goto LABEL_16;
  }

  v3 = 0;
  while (2)
  {
    if ((v2 & 0xC000000000000001) == 0)
    {
      if (v3 >= *(v2 + 16))
      {
        __break(1u);
        goto LABEL_28;
      }

      v4 = __OFADD__(v3++, 1);
      if (!v4)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }

    MEMORY[0x2530ADF00](v3, v0[5]);
    v4 = __OFADD__(v3++, 1);
    if (v4)
    {
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_6:
    v5 = sub_252CD9C58();
    v6 = *(v5 + 16);
    v7 = 32;
    while (v6)
    {
      v8 = *(v5 + v7);
      v7 += 8;
      --v6;
      if (v8 == 2)
      {
        v14 = v0[3];

        v13 = sub_252AE0C54(v14);
        if (qword_2814B0AC0 != -1)
        {
          swift_once();
        }

        v15 = sub_252E36AD4();
        __swift_project_value_buffer(v15, qword_2814B0AC8);
        sub_252E379F4();

        v0[2] = v13;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543108, &qword_252E4A2E8);
        v16 = sub_252E36F94();
        MEMORY[0x2530AD570](v16);

        sub_252CC3D90(0xD00000000000001ELL, 0x8000000252E79DA0, 0xD0000000000000A1, 0x8000000252E79970);

        goto LABEL_21;
      }
    }

    v9 = v0[6];

    if (v3 != v9)
    {
      continue;
    }

    break;
  }

  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_2814B0AC8);
  v11 = "Providing dim the lights hint ";
  v12 = 0xD000000000000028;
LABEL_17:
  sub_252CC3D90(v12, v11 | 0x8000000000000000, 0xD0000000000000A1, 0x8000000252E79970);
  v13 = 0;
LABEL_21:
  v17 = v0[1];

  return v17(v13);
}

char *sub_252AE1A84(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v6 = sub_252E36AD4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v182 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2814B0AC0 != -1)
  {
    goto LABEL_232;
  }

  while (1)
  {
    v10 = __swift_project_value_buffer(v6, qword_2814B0AC8);
    v204 = v7;
    v11 = *(v7 + 16);
    v203 = v9;
    v11(v9, v10, v6);
    v218 = 0;
    v219 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000031, 0x8000000252E79C40);
    v192 = a1 >> 62;
    if (a1 >> 62)
    {
      v12 = sub_252E378C4();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = MEMORY[0x277D84F90];
    v200 = a1;
    v193 = a3;
    if (v12)
    {
      v207 = MEMORY[0x277D84F90];
      result = sub_2529AA3A0(0, v12 & ~(v12 >> 63), 0);
      if (v12 < 0)
      {
        __break(1u);
        return result;
      }

      v202 = v6;
      v15 = a2;
      v16 = 0;
      v13 = v207;
      v17 = a1 & 0xC000000000000001;
      do
      {
        if (v17)
        {
          v18 = MEMORY[0x2530ADF00](v16, v200);
          v26 = v18;
        }

        else
        {
          v26 = *(v200 + 8 * v16 + 32);
        }

        v27 = (*(*v26 + 144))(v18, v19, v20, v21, v22, v23, v24, v25);
        v29 = v28;

        v207 = v13;
        v31 = *(v13 + 16);
        v30 = *(v13 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_2529AA3A0((v30 > 1), v31 + 1, 1);
          v13 = v207;
        }

        ++v16;
        *(v13 + 16) = v31 + 1;
        v32 = v13 + 16 * v31;
        *(v32 + 32) = v27;
        *(v32 + 40) = v29;
      }

      while (v12 != v16);
      a3 = v193;
      a2 = v15;
      v6 = v202;
    }

    v33 = MEMORY[0x2530AD730](v13, MEMORY[0x277D837D0]);
    v35 = v34;

    MEMORY[0x2530AD570](v33, v35);

    v190 = 0xD000000000000013;
    MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E79C80, v36, v37, v38, v39, v40, v41);
    v42 = *(a2 + 16);
    v43 = MEMORY[0x277D84F90];
    v197 = v42;
    if (v42)
    {
      v207 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v42, 0);
      v43 = v207;
      v44 = (a2 + 32);
      do
      {
        v45 = *v44++;
        v46 = HomeDeviceType.description.getter(v45);
        v207 = v43;
        v49 = *(v43 + 16);
        v48 = *(v43 + 24);
        if (v49 >= v48 >> 1)
        {
          v51 = v46;
          v52 = v6;
          v53 = a2;
          v54 = v47;
          sub_2529AA3A0((v48 > 1), v49 + 1, 1);
          v47 = v54;
          a2 = v53;
          v6 = v52;
          v46 = v51;
          v43 = v207;
        }

        *(v43 + 16) = v49 + 1;
        v50 = v43 + 16 * v49;
        *(v50 + 32) = v46;
        *(v50 + 40) = v47;
        --v42;
      }

      while (v42);
      a3 = v193;
    }

    v55 = MEMORY[0x2530AD730](v43, MEMORY[0x277D837D0]);
    v57 = v56;

    MEMORY[0x2530AD570](v55, v57);

    MEMORY[0x2530AD570](0xD000000000000018, 0x8000000252E79CA0);
    v58 = *(a3 + 16);
    v59 = MEMORY[0x277D84F90];
    v196 = v58;
    if (v58)
    {
      v207 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v58, 0);
      v59 = v207;
      v60 = (a3 + 32);
      v61 = v58;
      do
      {
        v62 = *v60++;
        v63 = HomeAttributeType.description.getter(v62);
        v207 = v59;
        v66 = *(v59 + 16);
        v65 = *(v59 + 24);
        if (v66 >= v65 >> 1)
        {
          v68 = v63;
          v69 = v6;
          v70 = a2;
          v71 = v64;
          sub_2529AA3A0((v65 > 1), v66 + 1, 1);
          v64 = v71;
          a2 = v70;
          v6 = v69;
          v63 = v68;
          v59 = v207;
        }

        *(v59 + 16) = v66 + 1;
        v67 = v59 + 16 * v66;
        *(v67 + 32) = v63;
        *(v67 + 40) = v64;
        --v61;
      }

      while (v61);
    }

    v9 = MEMORY[0x2530AD730](v59, MEMORY[0x277D837D0]);
    v73 = v72;

    MEMORY[0x2530AD570](v9, v73);

    a1 = v219;
    v7 = v203;
    sub_252CC3D90(v218, v219, 0xD0000000000000A1, 0x8000000252E79970);

    (*(v204 + 8))(v7, v6);
    v74 = MEMORY[0x277D84F90];
    v194 = sub_252CC6B08(MEMORY[0x277D84F90]);
    a3 = v200;
    if (!v197)
    {
      break;
    }

    v75 = v200 & 0xFFFFFFFFFFFFFF8;
    if (v192)
    {
      v203 = sub_252E378C4();
    }

    else
    {
      v203 = *((v200 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v76 = 0;
    v195 = a2 + 32;
    v202 = a3 & 0xC000000000000001;
    v201 = a3 + 32;
    v189 = 0x8000000252E67DC0;
    v188 = 0x8000000252E67DA0;
    v187 = 0x8000000252E67D80;
    v186 = 0x8000000252E67D60;
    v185 = 0x8000000252E67D40;
    v184 = 0x8000000252E67D20;
    v183 = 0x8000000252E67D00;
    v182 = 0x8000000252E67CE0;
    v77 = v197;
    v199 = v75;
    while (1)
    {
      if (v76 == v77)
      {
        goto LABEL_228;
      }

      v198 = v76;
      v6 = *(v195 + 8 * v76);
      v206 = v74;
      v204 = v6;
      if (v203)
      {
        break;
      }

      v9 = v74;
LABEL_90:
      v129 = v9 < 0 || (v9 & 0x4000000000000000) != 0;
      if (v129)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_31;
        }
      }

      else if (!*(v9 + 16))
      {
        goto LABEL_31;
      }

      v207 = sub_252ACB5B4(v130);
      v7 = &v207;
      sub_252AE017C();
      a1 = v207;
      if ((v207 & 0x8000000000000000) != 0 || (v207 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
LABEL_98:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v131 = MEMORY[0x2530ADF00](0, a1);
          }

          else
          {
            if (!*(a1 + 16))
            {
              goto LABEL_230;
            }

            v131 = *(a1 + 32);
          }

          if (qword_27F53F338 != -1)
          {
            swift_once();
          }

          v7 = qword_27F5757F0;
          if (*(qword_27F5757F0 + 16) && (v132 = sub_252A488EC(), (v133 & 1) != 0))
          {
            a2 = *(*(v7 + 56) + v132);
            if (qword_27F53F330 != -1)
            {
              swift_once();
            }

            v134 = qword_27F5757E8;
            if (*(qword_27F5757E8 + 16) && (v135 = sub_252A488EC(), (v136 & 1) != 0))
            {
              v137 = 0;
              v191 = *(*(v134 + 56) + 8 * v135);
            }

            else
            {
              v191 = 0;
              v137 = 1;
            }

            v138 = [*(v131 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
            if (v138)
            {
              type metadata accessor for Room(0);
              swift_allocObject();
              v139 = sub_2529A1E08(v138);
              v140 = *(v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v138 = *(v139 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            }

            else
            {
              v140 = 0;
            }

            v142 = *(v131 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            v141 = *(v131 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
            if (v129)
            {
              v143 = sub_252E378C4();
            }

            else
            {
              v143 = *(v9 + 16);
            }

            LOBYTE(v207) = 0;
            LOBYTE(v206) = v137;
            v218 = v204;
            LOBYTE(v219) = 0;
            v220 = v191;
            v221 = v137;
            v222 = 0;
            v223 = 0;
            v224 = v140;
            v225[0] = v138;
            v225[1] = v142;
            v226 = v141;
            v227 = v143 == 1;
            v228 = 0;
            if (a2 > 3)
            {
              v74 = MEMORY[0x277D84F90];
              v75 = v199;
              if (a2 <= 5)
              {
                if (a2 == 4)
                {
                  a1 = 0xD000000000000019;
                  v144 = v217;
                }

                else
                {
                  a1 = 0xD000000000000012;
                  v144 = &v218;
                }
              }

              else if (a2 == 6)
              {
                a1 = 0xD000000000000015;
                v144 = &v219;
              }

              else if (a2 == 7)
              {
                a1 = 0xD000000000000015;
                v144 = &v220;
              }

              else
              {
                a1 = 0xD000000000000011;
                v144 = &v221;
              }

              goto LABEL_134;
            }

            v74 = MEMORY[0x277D84F90];
            v75 = v199;
            if (a2 > 1)
            {
              if (a2 == 2)
              {
                a1 = v190;
                v144 = &v215;
              }

              else
              {
                a1 = 0xD000000000000015;
                v144 = &v216;
              }

LABEL_134:
              v6 = *(v144 - 32);
            }

            else
            {
              a1 = 0x746867694C6D6964;
              v6 = 0xE900000000000073;
              if (a2)
              {
                a1 = 0xD000000000000014;
                v144 = &v214;
                goto LABEL_134;
              }
            }

            v145 = v194;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v207 = v145;
            v7 = &v207;
            sub_2529FAF6C(&v218, a1, v6, isUniquelyReferenced_nonNull_native);

            v194 = v207;
          }

          else
          {
          }

          a3 = v200;
          goto LABEL_32;
        }
      }

      else if (*(v207 + 16))
      {
        goto LABEL_98;
      }

LABEL_31:

LABEL_32:
      v76 = v198 + 1;
      v77 = v197;
      if (v198 + 1 == v197)
      {
        goto LABEL_142;
      }
    }

    a3 = 0;
LABEL_39:
    if (v202)
    {
      v79 = MEMORY[0x2530ADF00](a3, v200);
      v78 = v79;
      v87 = __OFADD__(a3++, 1);
      if (v87)
      {
        goto LABEL_224;
      }
    }

    else
    {
      if (a3 >= *(v75 + 16))
      {
        goto LABEL_225;
      }

      v78 = *(v201 + 8 * a3);

      v87 = __OFADD__(a3++, 1);
      if (v87)
      {
        goto LABEL_224;
      }
    }

    v88 = (*v78 + 256);
    a1 = *v88;
    a2 = v88;
    v89 = (*v88)(v79, v80, v81, v82, v83, v84, v85, v86);
    if (v89 == v6)
    {
      goto LABEL_37;
    }

    v9 = (*(*v78 + 272))(v89, v90, v91, v92, v93, v94, v95, v96);
    if (*(v9 + 16))
    {
      sub_252E37EC4();
      MEMORY[0x2530AE390](v6);
      v97 = sub_252E37F14();
      v98 = -1 << *(v9 + 32);
      v99 = v97 & ~v98;
      if ((*(v9 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99))
      {
        v100 = ~v98;
        while (*(*(v9 + 48) + 8 * v99) != v6)
        {
          v99 = (v99 + 1) & v100;
          if (((*(v9 + 56 + ((v99 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v99) & 1) == 0)
          {
            goto LABEL_48;
          }
        }

LABEL_36:

        goto LABEL_37;
      }
    }

LABEL_48:

    v7 = v78;
    v102 = (a1)(v101);
    if (v102 == 41)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v9 = sub_252E379A4();
      a2 = v9 + 56;
      a1 = qword_2864A97F8;
      sub_252E37EC4();
      v7 = &v207;
      MEMORY[0x2530AE390](a1);
      v112 = sub_252E37F14();
      v113 = ~(-1 << *(v9 + 32));
      v114 = v112 & v113;
      v115 = (v112 & v113) >> 6;
      v116 = *(v9 + 56 + 8 * v115);
      v117 = 1 << (v112 & v113);
      v118 = *(v9 + 48);
      if ((v117 & v116) != 0)
      {
        while (*(v118 + 8 * v114) != a1)
        {
          v114 = (v114 + 1) & v113;
          v115 = v114 >> 6;
          v116 = *(a2 + 8 * (v114 >> 6));
          v117 = 1 << v114;
          if (((1 << v114) & v116) == 0)
          {
            goto LABEL_59;
          }
        }

        goto LABEL_61;
      }

LABEL_59:
      *(a2 + 8 * v115) = v117 | v116;
      *(v118 + 8 * v114) = a1;
      v119 = *(v9 + 16);
      v87 = __OFADD__(v119, 1);
      v111 = v119 + 1;
      if (v87)
      {
        goto LABEL_227;
      }

      goto LABEL_60;
    }

    v9 = MEMORY[0x277D84FA0];
    if (v102 == 38)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541750, &qword_252E4A2E0);
      v9 = sub_252E379A4();
      a2 = v9 + 56;
      a1 = qword_2864A97D0;
      sub_252E37EC4();
      v7 = &v207;
      MEMORY[0x2530AE390](a1);
      v103 = sub_252E37F14();
      v104 = ~(-1 << *(v9 + 32));
      v105 = v103 & v104;
      v106 = (v103 & v104) >> 6;
      v107 = *(v9 + 56 + 8 * v106);
      v108 = 1 << (v103 & v104);
      v109 = *(v9 + 48);
      if ((v108 & v107) != 0)
      {
        while (*(v109 + 8 * v105) != a1)
        {
          v105 = (v105 + 1) & v104;
          v106 = v105 >> 6;
          v107 = *(a2 + 8 * (v105 >> 6));
          v108 = 1 << v105;
          if (((1 << v105) & v107) == 0)
          {
            goto LABEL_53;
          }
        }

        goto LABEL_61;
      }

LABEL_53:
      *(a2 + 8 * v106) = v108 | v107;
      *(v109 + 8 * v105) = a1;
      v110 = *(v9 + 16);
      v87 = __OFADD__(v110, 1);
      v111 = v110 + 1;
      if (v87)
      {
        goto LABEL_226;
      }

LABEL_60:
      *(v9 + 16) = v111;
    }

LABEL_61:
    if (*(v9 + 16))
    {
      sub_252E37EC4();
      v7 = &v207;
      MEMORY[0x2530AE390](v6);
      v120 = sub_252E37F14();
      v121 = -1 << *(v9 + 32);
      v122 = v120 & ~v121;
      if ((*(v9 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122))
      {
        v123 = ~v121;
        while (*(*(v9 + 48) + 8 * v122) != v6)
        {
          v122 = (v122 + 1) & v123;
          if (((*(v9 + 56 + ((v122 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v122) & 1) == 0)
          {
            goto LABEL_66;
          }
        }

        goto LABEL_36;
      }
    }

LABEL_66:

    if (v6 != 42)
    {
      goto LABEL_81;
    }

    a1 = [*(v78 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) profiles];
    sub_25293F638(0, &qword_27F540170, 0x277CD1760);
    v7 = sub_252E37264();

    if (v7 >> 62)
    {
      v9 = sub_252E378C4();
      if (!v9)
      {
LABEL_87:

        v74 = MEMORY[0x277D84F90];
        v75 = v199;
        goto LABEL_38;
      }
    }

    else
    {
      v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_87;
      }
    }

    a2 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v124 = MEMORY[0x2530ADF00](a2, v7);
      }

      else
      {
        if (a2 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_221;
        }

        v124 = *(v7 + 8 * a2 + 32);
      }

      a1 = v124;
      v6 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      objc_opt_self();
      v125 = swift_dynamicCastObjCClass();
      if (v125)
      {
        v127 = v125;

        v128 = [v127 userSettings];
        if (v128)
        {
          v7 = v128;
          v9 = [v128 supportedFeatures];

          v74 = MEMORY[0x277D84F90];
          v75 = v199;
          v6 = v204;
          if ((v9 & 2) == 0)
          {
LABEL_81:

            goto LABEL_38;
          }

LABEL_37:
          v7 = &v206;
          sub_252E37A94();
          a1 = *(v206 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          goto LABEL_38;
        }

        v74 = MEMORY[0x277D84F90];
        v75 = v199;
        v6 = v204;
LABEL_38:
        if (a3 == v203)
        {
          v9 = v206;
          a3 = v200;
          goto LABEL_90;
        }

        goto LABEL_39;
      }

      ++a2;
      v126 = v6 == v9;
      v6 = v204;
      if (v126)
      {
        goto LABEL_87;
      }
    }

    __break(1u);
LABEL_221:
    __break(1u);
LABEL_222:
    __break(1u);
LABEL_223:
    __break(1u);
LABEL_224:
    __break(1u);
LABEL_225:
    __break(1u);
LABEL_226:
    __break(1u);
LABEL_227:
    __break(1u);
LABEL_228:
    __break(1u);
LABEL_229:
    __break(1u);
LABEL_230:
    __break(1u);
LABEL_231:
    __break(1u);
LABEL_232:
    swift_once();
  }

LABEL_142:
  if (v196)
  {
    v147 = a3 & 0xFFFFFFFFFFFFFF8;
    if (v192)
    {
      v148 = sub_252E378C4();
    }

    else
    {
      v148 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v6 = 0;
    v203 = v193 + 32;
    a2 = a3 & 0xC000000000000001;
    v149 = a3 + 32;
    v195 = 0x8000000252E67DC0;
    v193 = 0x8000000252E67DA0;
    v192 = 0x8000000252E67D80;
    v191 = 0x8000000252E67D60;
    v189 = 0x8000000252E67D40;
    v188 = 0x8000000252E67D20;
    v187 = 0x8000000252E67D00;
    v186 = 0x8000000252E67CE0;
    v150 = v196;
    do
    {
      if (v6 == v150)
      {
        goto LABEL_229;
      }

      v204 = v6;
      a3 = *(v203 + 8 * v6);
      v152 = MEMORY[0x277D84F90];
      v206 = MEMORY[0x277D84F90];
      if (v148)
      {
        v9 = 0;
        do
        {
          if (a2)
          {
            v153 = MEMORY[0x2530ADF00](v9, v200);
            v87 = __OFADD__(v9++, 1);
            if (v87)
            {
              goto LABEL_222;
            }
          }

          else
          {
            if (v9 >= *(v147 + 16))
            {
              goto LABEL_223;
            }

            v153 = *(v149 + 8 * v9);

            v87 = __OFADD__(v9++, 1);
            if (v87)
            {
              goto LABEL_222;
            }
          }

          v154 = (*v153 + 336);
          v155 = *v154;
          v6 = v154;
          v7 = v153;
          v156 = (*v154)();
          v157 = *(v156 + 16);
          v158 = 32;
          if (a3 == 5)
          {
            while (v157)
            {
              v159 = *(v156 + v158);
              v158 += 8;
              --v157;
              if (v159 == 3)
              {

                v7 = v153;
                v156 = (v155)(v160);
                v161 = *(v156 + 16);
                v162 = 32;
                while (v161)
                {
                  v163 = *(v156 + v162);
                  v162 += 8;
                  --v161;
                  if (v163 == 4)
                  {

                    a1 = (v155)(v164);
                    v7 = sub_2529A6C5C(2, a1);

                    if (v7)
                    {
                      goto LABEL_169;
                    }

                    goto LABEL_154;
                  }
                }

                break;
              }
            }
          }

          else
          {
            while (v157)
            {
              v165 = *(v156 + v158);
              v158 += 8;
              --v157;
              if (v165 == a3)
              {

LABEL_169:
                v7 = &v206;
                sub_252E37A94();
                a1 = *(v206 + 16);
                sub_252E37AC4();
                sub_252E37AD4();
                sub_252E37AA4();
                goto LABEL_154;
              }
            }
          }

          a1 = v156;

LABEL_154:
          ;
        }

        while (v9 != v148);
        v152 = v206;
      }

      if (v152 < 0)
      {
        v9 = 1;
      }

      else
      {
        v9 = (v152 >> 62) & 1;
      }

      if (v9 == 1)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_148;
        }
      }

      else if (!*(v152 + 16))
      {
        goto LABEL_148;
      }

      v206 = sub_252ACB5B4(v166);
      v7 = &v206;
      sub_252AE017C();
      a1 = v206;
      if ((v206 & 0x8000000000000000) != 0 || (v206 & 0x4000000000000000) != 0)
      {
        if (sub_252E378C4())
        {
LABEL_182:
          if ((a1 & 0xC000000000000001) != 0)
          {
            v167 = MEMORY[0x2530ADF00](0, a1);
          }

          else
          {
            if (!*(a1 + 16))
            {
              goto LABEL_231;
            }

            v167 = *(a1 + 32);
          }

          if (qword_27F53F340 != -1)
          {
            swift_once();
          }

          v7 = qword_27F5757F8;
          if (*(qword_27F5757F8 + 16))
          {
            v168 = sub_252A488EC();
            if (v169)
            {
              LODWORD(v201) = *(*(v7 + 56) + v168);
              v199 = (*(*v167 + 256))();
              v170 = [*(v167 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) room];
              if (v170)
              {
                v171 = v170;
                type metadata accessor for Room(0);
                swift_allocObject();
                v172 = sub_2529A1E08(v171);
                v174 = *(v172 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
                v173 = *(v172 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
                v198 = v174;
                v197 = v173;
              }

              else
              {
                v198 = 0;
                v197 = 0;
              }

              v202 = v167;
              v175 = v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
              v177 = *(v167 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
              v176 = *(v175 + 8);
              if (v9)
              {
                v178 = sub_252E378C4();
              }

              else
              {
                v178 = *(v152 + 16);
              }

              LOBYTE(v206) = 0;
              v205 = 0;
              v207 = v199;
              v208 = 0;
              v209 = a3;
              v210 = 0;
              v211 = 0;
              v212 = 0;
              v213 = v198;
              v214 = v197;
              v215 = v177;
              v216 = v176;
              v217[0] = v178 == 1;
              v217[1] = 0;
              v151 = v204;
              if (v201 > 3)
              {
                if (v201 <= 5)
                {
                  if (v201 == 4)
                  {
                    a1 = 0xD000000000000019;
                    v179 = &v221;
                  }

                  else
                  {
                    a1 = 0xD000000000000012;
                    v179 = &v223;
                  }
                }

                else if (v201 == 6)
                {
                  a1 = 0xD000000000000015;
                  v179 = &v224;
                }

                else if (v201 == 7)
                {
                  a1 = 0xD000000000000015;
                  v179 = v225;
                }

                else
                {
                  a1 = 0xD000000000000011;
                  v179 = &v226;
                }

                goto LABEL_212;
              }

              if (v201 > 1)
              {
                if (v201 == 2)
                {
                  a1 = v190;
                  v179 = &v219;
                }

                else
                {
                  a1 = 0xD000000000000015;
                  v179 = &v220;
                }

LABEL_212:
                a3 = *(v179 - 32);
              }

              else
              {
                a1 = 0x746867694C6D6964;
                a3 = 0xE900000000000073;
                if (v201)
                {
                  a1 = 0xD000000000000014;
                  v179 = &v218;
                  goto LABEL_212;
                }
              }

              v180 = v194;
              v181 = swift_isUniquelyReferenced_nonNull_native();
              v206 = v180;
              v7 = &v206;
              sub_2529FAF6C(&v207, a1, a3, v181);

              v194 = v206;
              goto LABEL_149;
            }
          }
        }
      }

      else if (*(v206 + 16))
      {
        goto LABEL_182;
      }

LABEL_148:

      v151 = v204;
LABEL_149:
      v6 = v151 + 1;
      v150 = v196;
    }

    while (v6 != v196);
  }

  return v194;
}

char *sub_252AE327C(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [a1 filters]) == 0)
  {

LABEL_7:
    if (qword_2814B0AC0 != -1)
    {
      goto LABEL_98;
    }

    goto LABEL_8;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.services(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);
    goto LABEL_7;
  }

  if (v9 >> 62)
  {
    v15 = sub_252E378C4();
  }

  else
  {
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v75 = a1;
  if (v15)
  {
    v16 = 0;
    v17 = MEMORY[0x277D84F90];
    while (1)
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x2530ADF00](v16, v9);
        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_96;
        }
      }

      else
      {
        if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_97;
        }

        v18 = *(v9 + 8 * v16 + 32);

        v19 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          swift_once();
LABEL_8:
          v12 = sub_252E36AD4();
          __swift_project_value_buffer(v12, qword_2814B0AC8);
          v13 = 0xD00000000000003ALL;
          v14 = 0x8000000252E79BC0;
          goto LABEL_95;
        }
      }

      v20 = v15;
      v21 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
      v22 = sub_252E36F34();
      v24 = v23;

      if (qword_27F53F8B8 != -1)
      {
        swift_once();
      }

      v25 = off_27F546230;
      if (*(off_27F546230 + 2) && (v26 = sub_252A44A10(v22, v24), (v27 & 1) != 0))
      {
        v28 = *(v25[7] + 8 * v26);
      }

      else
      {
        v28 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_2529F7B8C(0, *(v17 + 2) + 1, 1, v17);
      }

      v30 = *(v17 + 2);
      v29 = *(v17 + 3);
      if (v30 >= v29 >> 1)
      {
        v17 = sub_2529F7B8C((v29 > 1), v30 + 1, 1, v17);
      }

      *(v17 + 2) = v30 + 1;
      *&v17[8 * v30 + 32] = v28;
      ++v16;
      v15 = v20;
      if (v19 == v20)
      {
        goto LABEL_32;
      }
    }
  }

  v17 = MEMORY[0x277D84F90];
LABEL_32:
  sub_252929F10(v9, 0);
  v31 = 0;
  v32 = (v17 + 32);
  v33 = qword_2864A9820;
  v34 = *(v17 + 2);
  v35 = MEMORY[0x277D84F90];
  while (v34 != v31)
  {
    v36 = &v17[8 * v31++];
    if (*(v36 + 4) == qword_2864A9820)
    {
      goto LABEL_41;
    }
  }

  v76 = MEMORY[0x277D84F90];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2529AA420(0, *(v35 + 16) + 1, 1);
  }

  v38 = *(v35 + 16);
  v37 = *(v35 + 24);
  if (v38 >= v37 >> 1)
  {
    sub_2529AA420((v37 > 1), v38 + 1, 1);
    v35 = v76;
  }

  *(v35 + 16) = v38 + 1;
  *(v35 + 8 * v38 + 32) = v33;
  v34 = *(v17 + 2);
LABEL_41:
  v39 = 0;
  v40 = qword_2864A9828;
  while (v34 != v39)
  {
    v41 = &v17[8 * v39++];
    if (*(v41 + 4) == qword_2864A9828)
    {
      goto LABEL_50;
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_2529AA420(0, *(v35 + 16) + 1, 1);
  }

  v43 = *(v35 + 16);
  v42 = *(v35 + 24);
  if (v43 >= v42 >> 1)
  {
    sub_2529AA420((v42 > 1), v43 + 1, 1);
  }

  *(v35 + 16) = v43 + 1;
  *(v35 + 8 * v43 + 32) = v40;
  v34 = *(v17 + 2);
LABEL_50:
  v44 = 0;
  v45 = qword_2864A9830;
  do
  {
    if (v34 == v44)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2529AA420(0, *(v35 + 16) + 1, 1);
      }

      v56 = *(v35 + 16);
      v55 = *(v35 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_2529AA420((v55 > 1), v56 + 1, 1);
      }

      *(v35 + 16) = v56 + 1;
      *(v35 + 8 * v56 + 32) = v45;
      v34 = *(v17 + 2);
      if (v34)
      {
        goto LABEL_54;
      }

LABEL_75:
      v52 = 1;
      goto LABEL_76;
    }

    v46 = &v17[8 * v44++];
  }

  while (*(v46 + 4) != qword_2864A9830);
  if (!v34)
  {
    goto LABEL_75;
  }

LABEL_54:
  v47 = v34 - 1;
  do
  {
    v49 = *v32++;
    v48 = v49;
    v52 = qword_2864A9820 != v49 && qword_2864A9828 != v48 && qword_2864A9830 != v48;
    v54 = v47-- != 0;
  }

  while (v52 && v54);
LABEL_76:

  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v57 = sub_252E36AD4();
  __swift_project_value_buffer(v57, qword_2814B0AC8);
  sub_252E379F4();

  if (v52)
  {
    v58 = 0x65736C6166;
  }

  else
  {
    v58 = 1702195828;
  }

  if (v52)
  {
    v59 = 0xE500000000000000;
  }

  else
  {
    v59 = 0xE400000000000000;
  }

  MEMORY[0x2530AD570](v58, v59);

  sub_252CC3D90(0xD000000000000010, 0x8000000252E79CC0, 0xD0000000000000A1, 0x8000000252E79970);

  v60 = [v75 userTask];
  if (v60)
  {
    v61 = v60;
    v62 = [v60 taskType];

    if (v62 == 1 && !v52)
    {
      v63 = [v75 filters];
      if (v63)
      {
        v64 = v63;
        v65 = sub_252E37264();

        v66 = sub_252DD5A58(v65);
      }

      else
      {
        v66 = MEMORY[0x277D84F90];
      }

      v67 = sub_252C758E0(v66);

      v68 = sub_252DD6238(v67);

      if (v68)
      {
        v70 = static HomeStore.shared.getter(v69);
        v71 = sub_2529FEC24(v68, &unk_2864A9800);

        v72 = sub_252AE1A84(v71, v35, MEMORY[0x277D84F90]);

        sub_252E379F4();

        v73 = sub_252E36E54();
        MEMORY[0x2530AD570](v73);

        sub_252CC3D90(0xD00000000000001ALL, 0x8000000252E79D00, 0xD0000000000000A1, 0x8000000252E79970);

        return v72;
      }
    }
  }

  else
  {

    sub_252C515AC();
  }

  v13 = 0xD00000000000001ELL;
  v14 = 0x8000000252E79CE0;
LABEL_95:
  sub_252CC3D90(v13, v14, 0xD0000000000000A1, 0x8000000252E79970);
  return 0;
}

char *sub_252AE3AE8(uint64_t a1)
{
  if (qword_27F53F330 != -1)
  {
LABEL_19:
    swift_once();
  }

  v2 = qword_27F5757E8;
  v3 = qword_27F5757E8 + 64;
  v4 = 1 << *(qword_27F5757E8 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_27F5757E8 + 64);
  v7 = (v4 + 63) >> 6;
  v8 = (a1 + 32);

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  v21 = a1;
LABEL_5:
  while (1)
  {
    v11 = v9;
    if (!v6)
    {
      break;
    }

LABEL_9:
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    v14 = *(a1 + 16);
    v15 = v8;
    while (v14)
    {
      v16 = *v15++;
      --v14;
      if (v16 == *(*(v2 + 56) + 8 * v13))
      {
        v17 = *(*(v2 + 48) + 8 * v13);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_2529F7B8C(0, *(v10 + 2) + 1, 1, v10);
        }

        v19 = *(v10 + 2);
        v18 = *(v10 + 3);
        if (v19 >= v18 >> 1)
        {
          v10 = sub_2529F7B8C((v18 > 1), v19 + 1, 1, v10);
        }

        *(v10 + 2) = v19 + 1;
        *&v10[8 * v19 + 32] = v17;
        a1 = v21;
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
    v9 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v9 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v9);
    ++v11;
    if (v6)
    {
      goto LABEL_9;
    }
  }

  return v10;
}

char *sub_252AE3CA0(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0 || (v5 = [a1 filters]) == 0)
  {

LABEL_7:
    if (qword_2814B0AC0 != -1)
    {
      goto LABEL_92;
    }

    goto LABEL_8;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.services(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    sub_252929F10(v9, 1);
    goto LABEL_7;
  }

  if (v9 >> 62)
  {
    v15 = sub_252E378C4();
  }

  else
  {
    v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v87 = a1;
  if (!v15)
  {
    v17 = MEMORY[0x277D84F90];
LABEL_32:
    sub_252929F10(v9, 0);
    v33 = *(v17 + 2);
    if (v33)
    {
      v34 = (v17 + 32);
      v32 = *&xmmword_2864A9888;
      v31 = *xmmword_2864A9898[0].i64;
      v35 = v33 - 1;
      v36 = v87;
      do
      {
        v37 = *v34++;
        v38 = vdupq_n_s64(v37);
        v39 = vminv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_s64(xmmword_2864A9888, v38), vceqq_s64(xmmword_2864A9898[0], v38)))));
        v41 = v35-- != 0;
      }

      while ((v39 & 1) != 0 && v41);
    }

    else
    {
      v39 = 1;
      v36 = v87;
    }

    v42 = [v36 userTask];
    if (v42)
    {
      v43 = v42;
      v44 = [v42 taskType];

      if (v44 == 1 && ((v39 & 1) == 0 || (sub_252C4E58C(&unk_2864A9838) & 1) != 0))
      {
        v45 = [v36 filters];
        if (v45)
        {
          v46 = v45;
          v47 = sub_252E37264();

          v48 = sub_252DD5A58(v47);
        }

        else
        {
          v48 = MEMORY[0x277D84F90];
        }

        v49 = sub_252C758E0(v48);

        v50 = sub_252DD6238(v49);

        if (v50)
        {
          v51 = 0;
          v52 = qword_2864A98C8;
          v53 = *(v17 + 2);
          v54 = MEMORY[0x277D84F90];
          while (v53 != v51)
          {
            v55 = &v17[8 * v51++];
            if (*(v55 + 4) == qword_2864A98C8)
            {
              goto LABEL_64;
            }
          }

          v89 = MEMORY[0x277D84F90];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA420(0, *(v54 + 16) + 1, 1);
          }

          v59 = *(v54 + 16);
          v58 = *(v54 + 24);
          if (v59 >= v58 >> 1)
          {
            sub_2529AA420((v58 > 1), v59 + 1, 1);
            v54 = v89;
          }

          *(v54 + 16) = v59 + 1;
          *(v54 + 8 * v59 + 32) = v52;
          v53 = *(v17 + 2);
LABEL_64:
          v60 = qword_2864A98D0;
          v61 = 32;
          while (v53)
          {
            v62 = *&v17[v61];
            v61 += 8;
            --v53;
            if (v62 == qword_2864A98D0)
            {
              v88 = v54;
              goto LABEL_73;
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2529AA420(0, *(v54 + 16) + 1, 1);
          }

          v64 = *(v54 + 16);
          v63 = *(v54 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_2529AA420((v63 > 1), v64 + 1, 1);
          }

          *(v54 + 16) = v64 + 1;
          v88 = v54;
          *(v54 + 8 * v64 + 32) = v60;
LABEL_73:
          v65 = 0;
          v66 = MEMORY[0x277D84F90];
          do
          {
            v67 = qword_2864A98D8[v65 + 4];
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540228, &unk_252E3D910);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_252E3C290;
            *(inited + 32) = v67;
            v69 = sub_252AE3AE8(inited);
            swift_setDeallocating();
            v70 = *(v69 + 2);
            if (v70)
            {
              v71 = 0;
              do
              {
                v72 = *&v69[8 * v71++ + 32];
                v73 = *(v17 + 2);
                v74 = (v17 + 32);
                while (v73)
                {
                  v75 = *v74++;
                  --v73;
                  if (v75 == v72)
                  {

                    goto LABEL_74;
                  }
                }
              }

              while (v71 != v70);
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              sub_2529AA360(0, *(v66 + 16) + 1, 1);
            }

            v77 = *(v66 + 16);
            v76 = *(v66 + 24);
            if (v77 >= v76 >> 1)
            {
              sub_2529AA360((v76 > 1), v77 + 1, 1);
            }

            *(v66 + 16) = v77 + 1;
            *(v66 + 8 * v77 + 32) = v67;
LABEL_74:
            ++v65;
          }

          while (v65 != 3);

          v79 = static HomeStore.shared.getter(v78);
          v80 = sub_2529FEC24(v50, v88);

          v82 = static HomeStore.shared.getter(v81);
          v83 = sub_2529FF268(v50, v66);

          sub_25297A718(v83);
          v84 = sub_252AE1A84(v80, v88, v66);

          if (qword_2814B0AC0 != -1)
          {
            swift_once();
          }

          v85 = sub_252E36AD4();
          __swift_project_value_buffer(v85, qword_2814B0AC8);
          sub_252E379F4();

          v86 = sub_252E36E54();
          MEMORY[0x2530AD570](v86);

          sub_252CC3D90(0xD000000000000019, 0x8000000252E79C20, 0xD0000000000000A1, 0x8000000252E79970);

          return v84;
        }
      }
    }

    else
    {

      sub_252C515AC();
    }

    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v56 = sub_252E36AD4();
    __swift_project_value_buffer(v56, qword_2814B0AC8);
    v13 = "or intent to generate Hint";
    v14 = 0xD00000000000001DLL;
    goto LABEL_58;
  }

  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  while ((v9 & 0xC000000000000001) != 0)
  {
    v18 = MEMORY[0x2530ADF00](v16, v9);
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_90;
    }

LABEL_16:
    v20 = v15;
    v21 = [*(v18 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) serviceType];
    v22 = sub_252E36F34();
    v24 = v23;

    if (qword_27F53F8B8 != -1)
    {
      swift_once();
    }

    v25 = off_27F546230;
    if (*(off_27F546230 + 2) && (v26 = sub_252A44A10(v22, v24), (v27 & 1) != 0))
    {
      v28 = *(v25[7] + 8 * v26);
    }

    else
    {
      v28 = 0;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_2529F7B8C(0, *(v17 + 2) + 1, 1, v17);
    }

    v30 = *(v17 + 2);
    v29 = *(v17 + 3);
    if (v30 >= v29 >> 1)
    {
      v17 = sub_2529F7B8C((v29 > 1), v30 + 1, 1, v17);
    }

    *(v17 + 2) = v30 + 1;
    *&v17[8 * v30 + 32] = v28;
    ++v16;
    v15 = v20;
    if (v19 == v20)
    {
      goto LABEL_32;
    }
  }

  if (v16 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_91;
  }

  v18 = *(v9 + 8 * v16 + 32);

  v19 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_16;
  }

LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  swift_once();
LABEL_8:
  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_2814B0AC8);
  v13 = "on't provide a hint";
  v14 = 0xD00000000000003ALL;
LABEL_58:
  sub_252CC3D90(v14, v13 | 0x8000000000000000, 0xD0000000000000A1, 0x8000000252E79970);
  return 0;
}

uint64_t sub_252AE45DC(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x2822009F8](sub_252AE45FC, 0, 0);
}

uint64_t sub_252AE45FC()
{
  if (qword_27F53F3F8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (sub_252DB4F4C() & 1) != 0 || (sub_252C2AC20())
  {
    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v1 = sub_252E36AD4();
    __swift_project_value_buffer(v1, qword_2814B0AC8);
    sub_252CC3D90(0xD000000000000033, 0x8000000252E79B80, 0xD0000000000000A1, 0x8000000252E79970);
    v2 = v0[1];

    return v2(0);
  }

  else
  {
    v4 = swift_task_alloc();
    v0[7] = v4;
    *v4 = v0;
    v4[1] = sub_252AE47C8;
    v6 = v0[5];
    v5 = v0[6];

    return sub_252AE1098(v6, v5);
  }
}

uint64_t sub_252AE47C8(uint64_t a1)
{
  *(*v1 + 64) = a1;

  return MEMORY[0x2822009F8](sub_252AE48C8, 0, 0);
}

uint64_t sub_252AE48C8()
{
  v1 = *(v0 + 64);
  if (!v1)
  {
    v1 = sub_252AE327C(*(v0 + 40));
    if (!v1)
    {
      v1 = sub_252AE3CA0(*(v0 + 40));
      if (!v1)
      {
        if (qword_2814B0AC0 != -1)
        {
          swift_once();
        }

        v2 = sub_252E36AD4();
        __swift_project_value_buffer(v2, qword_2814B0AC8);
        sub_252CC3D90(0xD000000000000032, 0x8000000252E79B40, 0xD0000000000000A1, 0x8000000252E79970);
        v1 = 0;
      }
    }
  }

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_252AE49C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  v6 = sub_252E367C4();
  v5[20] = v6;
  v5[21] = *(v6 - 8);
  v5[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541F20, &qword_252E3C180);
  v5[23] = swift_task_alloc();
  v7 = sub_252E32E84();
  v5[24] = v7;
  v5[25] = *(v7 - 8);
  v5[26] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AE4B20, 0, 0);
}

uint64_t sub_252AE4B20()
{
  v1 = v0[18];
  if (!v1)
  {
    goto LABEL_4;
  }

  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[23];
  sub_252E32E14();
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    sub_25293847C(v0[23], &unk_27F541F20, &qword_252E3C180);
LABEL_4:
    if (qword_2814B0AC0 != -1)
    {
      swift_once();
    }

    v5 = sub_252E36AD4();
    __swift_project_value_buffer(v5, qword_2814B0AC8);
    sub_252CC4050(0xD000000000000016, 0x8000000252E79950, 0xD0000000000000A1, 0x8000000252E79970, 0xD00000000000003DLL, 0x8000000252E79A20, 289);

    v6 = v0[1];

    return v6();
  }

  (*(v0[25] + 32))(v0[26], v0[23], v0[24]);
  if (qword_2814B0AC0 != -1)
  {
    swift_once();
  }

  v8 = v0[21];
  v9 = v0[22];
  v28 = v0[20];
  v29 = v0[19];
  v10 = v0[17];
  v27 = v0[16];
  v11 = v0[15];
  v12 = sub_252E36AD4();
  v0[27] = __swift_project_value_buffer(v12, qword_2814B0AC8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000052, 0x8000000252E79A60);
  MEMORY[0x2530AD570](v10, v1);
  MEMORY[0x2530AD570](0xD000000000000014, 0x8000000252E79AC0);
  v13 = sub_252E36E54();
  MEMORY[0x2530AD570](v13);

  MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E79AE0);
  v14 = [v11 description];
  v15 = sub_252E36F34();
  v17 = v16;

  MEMORY[0x2530AD570](v15, v17);

  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A1, 0x8000000252E79970);

  *v9 = v11;
  (*(v8 + 104))(v9, *MEMORY[0x277D60918], v28);
  (*(v29 + 536))(v11);
  v19 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
  v20 = sub_252E367D4();
  swift_allocObject();
  v21 = sub_252E367E4();
  v0[10] = v20;
  v0[11] = sub_252AE55C0();
  v0[7] = v21;
  v22 = sub_252CC16D0(v27);
  v0[28] = v22;
  v23 = swift_task_alloc();
  v0[29] = v23;
  v24 = *(v18 + 8);
  *v23 = v0;
  v23[1] = sub_252AE4FA8;
  v25 = v0[26];
  v26 = v0[22];

  return MEMORY[0x2821C5FD8](v25, v26, v0 + 7, v22, 1, v19, v24);
}

uint64_t sub_252AE4FA8()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  if (v0)
  {
    v3 = sub_252AE51A4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 56));
    v3 = sub_252AE50E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_252AE50E8()
{
  v2 = v0[25];
  v1 = v0[26];
  v3 = v0[24];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_252AE51A4()
{
  v1 = v0[30];
  v2 = v0[26];
  v3 = v0[24];
  v4 = v0[25];
  (*(v0[21] + 8))(v0[22], v0[20]);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_252E379F4();
  v0[12] = 0;
  v0[13] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD000000000000033, 0x8000000252E79B00);
  v0[14] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
  sub_252E37AE4();
  sub_252CC4050(v0[12], v0[13], 0xD0000000000000A1, 0x8000000252E79970, 0xD00000000000003DLL, 0x8000000252E79A20, 309);

  (*(v4 + 8))(v2, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_252AE5358(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x726F737365636361 && a2 == 0xED00006570795479;
  if (v3 || (sub_252E37DB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xE900000000000065 || (sub_252E37DB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6961746E6F63 && a2 == 0xED0000656D614E72 || (sub_252E37DB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D614E6D6F6F72 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xED0000656D614E79 || (sub_252E37DB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000252E79910 == a2 || (sub_252E37DB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000252E79930 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_252E37DB4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

unint64_t sub_252AE55C0()
{
  result = qword_27F543100;
  if (!qword_27F543100)
  {
    v3 = sub_252E367D4();
    result = swift_getWitnessTable(MEMORY[0x277D60A18], v3, v0, v1);
    atomic_store(result, &qword_27F543100);
  }

  return result;
}

id sub_252AE5618(void *a1, uint64_t a2)
{
  v2 = sub_252AE5DE0(a1, a2);
  if (v2 <= 2)
  {
    v5 = 0xE300000000000000;
    v6 = 6710895;
    if (v2 != 1)
    {
      v6 = 28271;
      v5 = 0xE200000000000000;
    }

    if (v2)
    {
      v3 = v6;
    }

    else
    {
      v3 = 1701736302;
    }

    if (v2)
    {
      v4 = v5;
    }

    else
    {
      v4 = 0xE400000000000000;
    }
  }

  else if (v2 > 4)
  {
    if (v2 != 5)
    {
      return 0;
    }

    v4 = 0xE400000000000000;
    v3 = 1869903201;
  }

  else
  {
    if (v2 == 3)
    {
      v3 = 1952540008;
    }

    else
    {
      v3 = 1819242339;
    }

    v4 = 0xE400000000000000;
  }

  type metadata accessor for HomeAttributeValue();
  v7 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v3, v4, 0);
  v8 = qword_27F53F498;
  v9 = v7;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = sub_252E36AD4();
  __swift_project_value_buffer(v10, qword_27F544C70);
  v11 = v9;
  v12 = sub_252E36AC4();
  v13 = sub_252E374C4();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v14 = 138412290;
    *(v14 + 4) = v11;
    *v15 = v7;
    _os_log_impl(&dword_252917000, v12, v13, "Calculated targetMode: %@", v14, 0xCu);
    sub_252AE65A8(v15);
    MEMORY[0x2530AED00](v15, -1, -1);
    MEMORY[0x2530AED00](v14, -1, -1);
  }

  else
  {

    v12 = v11;
  }

  return v7;
}

id sub_252AE5814(void *a1, void *a2, uint64_t a3, char a4, uint64_t a5, char a6, double a7)
{
  v9 = sub_252C6E240(a1);
  v10 = sub_252AE6450(a1);
  v11 = [a1 userTask];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 taskType];

    v14 = v13 == 2;
  }

  else
  {
    sub_252C515AC();
    v14 = 0;
  }

  v15 = [a1 userTask];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 taskType];

    v47 = v17 == 3;
  }

  else
  {
    sub_252C515AC();
    v47 = 0;
  }

  v18 = round((a7 * 9.0 / 5.0 + 32.0) * 100.0) / 100.0;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v19 = sub_252E36AD4();
  __swift_project_value_buffer(v19, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E79E70);
  sub_252E37374();
  MEMORY[0x2530AD570](0x202020202020200ALL, 0xEF203A74696E7520);
  v20 = sub_252C65640(v9);
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79EA0);
  if (v14)
  {
    v21 = 1702195828;
  }

  else
  {
    v21 = 0x65736C6166;
  }

  if (v14)
  {
    v22 = 0xE400000000000000;
  }

  else
  {
    v22 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v21, v22);

  MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E79ED0);
  if (v47)
  {
    v23 = 1702195828;
  }

  else
  {
    v23 = 0x65736C6166;
  }

  if (v47)
  {
    v24 = 0xE400000000000000;
  }

  else
  {
    v24 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v23, v24);

  MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E79F00);
  sub_252E37374();
  MEMORY[0x2530AD570](0x7D202020200ALL, 0xE600000000000000);
  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A6, 0x8000000252E79F30);

  if (v9 == 3)
  {
    v25 = v10 + a7;
  }

  else
  {
    v25 = round((v18 + v10 + -32.0) * 5.0 / 9.0 * 100.0) / 100.0;
  }

  v26 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
  v27 = sub_252E36F04();
  v28 = [v26 initWithIdentifier:0 displayString:v27];

  v29 = v28;
  [v29 setDoubleValue_];
  [v29 setUnit_];
  [v29 setType_];

  v30 = sub_252E36AC4();
  v31 = sub_252E374C4();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v32 = 138412802;
    *(v32 + 4) = v29;
    *v33 = v29;
    *(v32 + 12) = 2048;
    *(v32 + 14) = a7;
    *(v32 + 22) = 2048;
    *(v32 + 24) = v10;
    v34 = v29;
    _os_log_impl(&dword_252917000, v30, v31, "Calculated targetTemperature %@ as currentTemperatureValue:%f + deltaValue:%f", v32, 0x20u);
    sub_252AE65A8(v33);
    MEMORY[0x2530AED00](v33, -1, -1);
    MEMORY[0x2530AED00](v32, -1, -1);
  }

  if (a2)
  {
    v35 = [a2 stringValue];
    if (v35)
    {
      v36 = v35;
      v37 = sub_252E36F34();
      v39 = v38;

      if (v37 == 1869903201 && v39 == 0xE400000000000000)
      {

LABEL_32:
        v41 = sub_25298AB8C(a3, a4 & 1, a5, a6 & 1, a7, v25);

        return v41;
      }

      v40 = sub_252E37DB4();

      if (v40)
      {
        goto LABEL_32;
      }
    }
  }

  return v29;
}

uint64_t sub_252AE5DB0()
{
  type metadata accessor for SetDeltaClimateControlAppIntentHandleDelegate();

  return swift_allocObject();
}

uint64_t sub_252AE5DE0(void *a1, uint64_t a2)
{
  v4 = [a1 userTask];
  if (!v4)
  {
    sub_252C515AC();
LABEL_7:
    v7 = [a1 userTask];
    if (!v7)
    {
      sub_252C515AC();
      goto LABEL_13;
    }

    v8 = v7;
    v9 = [v7 taskType];

    if (v9 != 3)
    {
LABEL_13:
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v10 = sub_252E36AD4();
      __swift_project_value_buffer(v10, qword_27F544C70);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000048, 0x8000000252E7A010);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543118, &qword_252E4A348);
      v11 = sub_252E36F94();
      MEMORY[0x2530AD570](v11);

      goto LABEL_35;
    }

    if (a2 <= 2u)
    {
      if (a2 == 1)
      {

        goto LABEL_31;
      }
    }

    else if (a2 > 4u && a2 != 5)
    {
      goto LABEL_31;
    }

    v14 = sub_252E37DB4();

    if ((v14 & 1) == 0)
    {
      if (a2 == 3)
      {
      }

      else
      {
        v17 = sub_252E37DB4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v21 = sub_252E36AD4();
      __swift_project_value_buffer(v21, qword_27F544C70);
      v20 = "Decrease request with entities in Heating Mode. Setting climate entity mode to AUTO";
      goto LABEL_48;
    }

LABEL_31:
    if (qword_27F53F498 != -1)
    {
      swift_once();
    }

    v15 = sub_252E36AD4();
    __swift_project_value_buffer(v15, qword_27F544C70);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A060);
    a2 = 4;
    goto LABEL_34;
  }

  v5 = v4;
  v6 = [v4 taskType];

  if (v6 != 2)
  {
    goto LABEL_7;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u && a2 != 5)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  if (a2 != 1)
  {
LABEL_24:
    v12 = sub_252E37DB4();

    if (v12)
    {
      goto LABEL_25;
    }

    if (a2 == 4)
    {

LABEL_41:
      if (qword_27F53F498 != -1)
      {
        swift_once();
      }

      v19 = sub_252E36AD4();
      __swift_project_value_buffer(v19, qword_27F544C70);
      v20 = "Increase request with entities in Cooling Mode. Setting climate entity mode to AUTO";
LABEL_48:
      sub_252CC3D90(0xD000000000000053, (v20 - 32) | 0x8000000000000000, 0xD0000000000000A6, 0x8000000252E79F30);
      return 5;
    }

    v18 = sub_252E37DB4();

    if (v18)
    {
      goto LABEL_41;
    }

    goto LABEL_13;
  }

LABEL_25:
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v13 = sub_252E36AD4();
  __swift_project_value_buffer(v13, qword_27F544C70);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000004DLL, 0x8000000252E7A110);
  a2 = 3;
LABEL_34:
  sub_252E37AE4();
LABEL_35:
  sub_252CC3D90(0, 0xE000000000000000, 0xD0000000000000A6, 0x8000000252E79F30);

  return a2;
}

double sub_252AE6450(void *a1)
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E79FE0, 0xD0000000000000A6, 0x8000000252E79F30);
  v3 = [a1 userTask];
  v4 = 1.0;
  if (v3)
  {
    v5 = v3;
    v6 = [v3 value];

    if (v6)
    {
      [v6 doubleValue];
      v4 = v7;

      v8 = [a1 userTask];
      if (v8)
      {
        v9 = v8;
        v10 = [v8 taskType];

        if (v10 == 2)
        {
          return v4;
        }
      }

      else
      {
        sub_252C515AC();
      }

      return -v4;
    }
  }

  return v4;
}

uint64_t sub_252AE65A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541B78, &qword_252E4A340);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_252AE662C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1 == 0x7073655265757274 && a2 == 0xED00007365736E6FLL;
  if (v6 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F546470;
    v8 = 1;
LABEL_7:
    v9 = sub_252E1D2F4(v7, v8);
    swift_endAccess();
    result = type metadata accessor for HomeAutomationBooleanResponses();
    a3[3] = result;
    *a3 = v9;
    return result;
  }

  if (a1 == 0x73655265736C6166 && a2 == 0xEE007365736E6F70 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v7 = &unk_27F546471;
    v8 = 0;
    goto LABEL_7;
  }

  return sub_252C86824(a1, a2, a3);
}

uint64_t sub_252AE67E0()
{
  v0 = sub_252E34164();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E340E4();
  v4 = sub_2529C81D4(v3);
  (*(v1 + 8))(v3, v0);
  if (v4)
  {
    return sub_252E339F4();
  }

  else
  {
    return sub_252E33A04();
  }
}

uint64_t sub_252AE68D0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C9EDC;

  return sub_252AE7008(a1);
}

uint64_t sub_252AE6978(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2529C9ED8;

  return sub_252AE76C4(a1, a2);
}

uint64_t sub_252AE6A44(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2529C8CCC;

  return sub_252AE7008(a1);
}

uint64_t sub_252AE6AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for ShowHomeRCHStrategy();

  return MEMORY[0x2821BB5E0](a1, v5, a3);
}

uint64_t sub_252AE6B38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ShowHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D90](a1, a2, a3, v11, a5);
}

uint64_t sub_252AE6C04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ShowHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D88](a1, a2, a3, v11, a5);
}

uint64_t sub_252AE6CD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  v11 = type metadata accessor for ShowHomeRCHStrategy();
  *v10 = v5;
  v10[1] = sub_25294B954;

  return MEMORY[0x2821B9D80](a1, a2, a3, v11, a5);
}

uint64_t sub_252AE6D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ShowHomeRCHStrategy();
  *v12 = v6;
  v12[1] = sub_25293B808;

  return MEMORY[0x2821B9D78](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252AE6E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  v13 = type metadata accessor for ShowHomeRCHStrategy();
  *v12 = v6;
  v12[1] = sub_25294B954;

  return MEMORY[0x2821BA0D8](a1, a2, a3, a4, v13, a6);
}

uint64_t sub_252AE6F54(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252AE76C4(a1, a2);
}

uint64_t sub_252AE7008(uint64_t a1)
{
  v1[382] = a1;
  v2 = sub_252E34164();
  v1[383] = v2;
  v1[384] = *(v2 - 8);
  v1[385] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AE70C8, 0, 0);
}

uint64_t sub_252AE70C8()
{
  v1 = v0[385];
  v2 = v0[384];
  v3 = v0[383];
  v4 = *(v2 + 16);
  v4(v1, v0[382], v3);
  v5 = (*(v2 + 88))(v1, v3);
  v6 = v0[385];
  v7 = v0[384];
  v8 = v0[383];
  if (v5 == *MEMORY[0x277D5C128])
  {
    v9 = v0[382];
    (*(v7 + 8))(v6, v8);
    sub_252AB3FEC(v9, 0, v0 + 65);
    memcpy(v0 + 2, v0 + 65, 0x1F8uLL);
    if (sub_252956B94(v0 + 2) != 1)
    {
      memcpy(v0 + 254, v0 + 2, 0x1F8uLL);
      v10 = swift_task_alloc();
      v0[386] = v10;
      *v10 = v0;
      v10[1] = sub_252AE7330;

      return sub_252976614();
    }
  }

  else
  {
    (*(v7 + 8))(v6, v8);
  }

  v12 = v0[383];
  v13 = v0[382];
  sub_2529515FC(1, 4, 0xD00000000000001FLL, 0x8000000252E770F0);
  type metadata accessor for ShowHomeError(0);
  sub_252AE7CF8(&qword_27F543138, 255, type metadata accessor for ShowHomeError, asc_252E4A570);
  swift_allocError();
  v4(v14, v13, v12);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_252AE7330(uint64_t a1)
{
  v2 = *v1;
  *(v2 + 3040) = v1;
  *(v2 + 3048) = a1;

  return MEMORY[0x2822009F8](sub_252AE7434, 0, 0);
}

uint64_t sub_252AE7434()
{
  v14 = v0;
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = v0[381];
  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544C70);
  sub_252E379F4();

  v3 = v1;
  v4 = [v3 description];
  v5 = sub_252E36F34();
  v7 = v6;

  MEMORY[0x2530AD570](v5, v7);

  MEMORY[0x2530AD570](0x6465746165726320, 0xEE00206D6F726620);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  memcpy(__dst, v0 + 2, sizeof(__dst));
  memcpy(v0 + 191, v0 + 65, 0x1F8uLL);
  sub_2529353AC((v0 + 191), (v0 + 317));
  v8 = HomeAutomationIntent.description.getter();
  v10 = v9;
  memcpy(v0 + 128, __dst, 0x1F8uLL);
  sub_252935408((v0 + 128));
  MEMORY[0x2530AD570](v8, v10);

  __dst[0] = 0xD000000000000010;
  __dst[1] = 0x8000000252E7A370;

  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E7A390);

  sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000082, 0x8000000252E7A2E0);

  sub_25299F5D4((v0 + 65));

  v11 = v0[1];

  return v11(v3);
}

uint64_t sub_252AE76C4(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252AE7784, 0, 0);
}

uint64_t sub_252AE7784()
{
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544C70);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E7A2B0, 0xD000000000000082, 0x8000000252E7A2E0);
  v6 = objc_allocWithZone(type metadata accessor for ShowHomeIntentHandler());

  [v6 init];
  type metadata accessor for ShowHomeIntent();
  v7 = v4;
  sub_252E336E4();
  sub_252E33784();
  v8 = sub_252E33774();
  (*(v2 + 8))(v1, v3);

  v9 = v0[1];

  return v9(v8);
}

uint64_t dispatch thunk of ShowHomeRCHStrategy.makeIntentFromParse(parse:currentIntent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 96) + **(*v2 + 96));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25294B7BC;

  return v8(a1, a2);
}

uint64_t dispatch thunk of ShowHomeRCHStrategy.makeIntentExecutionBehavior(app:intent:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25296BC70;

  return v8(a1, a2);
}

uint64_t type metadata accessor for ShowHomeError(uint64_t a1)
{
  result = qword_27F543140;
  if (!qword_27F543140)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_252AE7CF8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
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

uint64_t sub_252AE7D40(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xE600000000000000;
      v7 = 0x6D7575636176;
      switch(*v3)
      {
        case 1:
          v6 = 0xE300000000000000;
          v7 = 7368557;
          break;
        case 2:
          v7 = 0x61656C4370656564;
          v6 = 0xE90000000000006ELL;
          break;
        case 3:
          v6 = 0xE400000000000000;
          v7 = 1869903201;
          break;
        case 4:
          v6 = 0xE500000000000000;
          v7 = 0x7465697571;
          break;
        case 5:
          v6 = 0xE500000000000000;
          v7 = 0x6B63697571;
          break;
        case 6:
          v6 = 0xE800000000000000;
          v7 = 0x6573696F4E776F6CLL;
          break;
        case 7:
          v6 = 0xE900000000000079;
          v7 = 0x6772656E45776F6CLL;
          break;
        case 8:
          v6 = 0xE800000000000000;
          v7 = 0x6E6F697461636176;
          break;
        case 9:
          v6 = 0xE500000000000000;
          v7 = 0x746867696ELL;
          break;
        case 0xA:
          v6 = 0xE300000000000000;
          v7 = 7954788;
          break;
        case 0xB:
          v6 = 0xE300000000000000;
          v7 = 7235949;
          break;
        case 0xC:
          v6 = 0xE300000000000000;
          v7 = 7889261;
          break;
        default:
          break;
      }

      v8 = 0xE600000000000000;
      v9 = 0x6D7575636176;
      switch(*v4)
      {
        case 1:
          v8 = 0xE300000000000000;
          if (v7 == 7368557)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        case 2:
          v8 = 0xE90000000000006ELL;
          if (v7 != 0x61656C4370656564)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 3:
          v8 = 0xE400000000000000;
          if (v7 != 1869903201)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 4:
          v8 = 0xE500000000000000;
          if (v7 != 0x7465697571)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 5:
          v8 = 0xE500000000000000;
          if (v7 != 0x6B63697571)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 6:
          v8 = 0xE800000000000000;
          if (v7 != 0x6573696F4E776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 7:
          v8 = 0xE900000000000079;
          if (v7 != 0x6772656E45776F6CLL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 8:
          v8 = 0xE800000000000000;
          if (v7 != 0x6E6F697461636176)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 9:
          v8 = 0xE500000000000000;
          if (v7 != 0x746867696ELL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 0xA:
          v8 = 0xE300000000000000;
          v9 = 7954788;
          goto LABEL_42;
        case 0xB:
          v8 = 0xE300000000000000;
          if (v7 != 7235949)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 0xC:
          v8 = 0xE300000000000000;
          if (v7 != 7889261)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        default:
LABEL_42:
          if (v7 != v9)
          {
            goto LABEL_5;
          }

LABEL_43:
          if (v6 == v8)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_252E37DB4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_252AE80B0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE810C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v17 = v2;
  v18 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    memcpy(__dst, v5, sizeof(__dst));
    memcpy(v12, v5, sizeof(v12));
    memcpy(v14, v6, sizeof(v14));
    memcpy(__src, v6, sizeof(__src));
    sub_2529353AC(__dst, v10);
    sub_2529353AC(v14, v10);
    v8 = static HomeAutomationIntent.== infix(_:_:)(v12, __src);
    memcpy(v15, __src, sizeof(v15));
    sub_252935408(v15);
    memcpy(v16, v12, sizeof(v16));
    sub_252935408(v16);
    if ((v8 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 504;
    v5 += 504;
  }

  return 1;
}

uint64_t sub_252AE8238(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      if (v6 <= 1)
      {
        if (*v3)
        {
          v8 = 1701670771;
        }

        else
        {
          v8 = 6647407;
        }

        if (*v3)
        {
          v7 = 0xE400000000000000;
        }

        else
        {
          v7 = 0xE300000000000000;
        }
      }

      else if (v6 == 2)
      {
        v7 = 0xE300000000000000;
        v8 = 7105633;
      }

      else if (v6 == 3)
      {
        v7 = 0xE400000000000000;
        v8 = 1752461154;
      }

      else
      {
        v7 = 0xE600000000000000;
        v8 = 0x747065637865;
      }

      v9 = *v4;
      if (v9 <= 1)
      {
        if (*v4)
        {
          v11 = 1701670771;
        }

        else
        {
          v11 = 6647407;
        }

        if (*v4)
        {
          v10 = 0xE400000000000000;
        }

        else
        {
          v10 = 0xE300000000000000;
        }

        if (v8 != v11)
        {
LABEL_5:
          v5 = sub_252E37DB4();

          if ((v5 & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else if (v9 == 2)
      {
        v10 = 0xE300000000000000;
        if (v8 != 7105633)
        {
          goto LABEL_5;
        }
      }

      else if (v9 == 3)
      {
        v10 = 0xE400000000000000;
        if (v8 != 1752461154)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v10 = 0xE600000000000000;
        if (v8 != 0x747065637865)
        {
          goto LABEL_5;
        }
      }

      if (v7 != v10)
      {
        goto LABEL_5;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE83F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_252E37DB4() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_252AE8484(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = a1 + 32;
    v4 = a2 + 32;
    do
    {
      v6 = HueSemantic.rawValue.getter();
      v8 = v7;
      if (v6 == HueSemantic.rawValue.getter() && v8 == v9)
      {
      }

      else
      {
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE859C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEA0000000000746ELL;
      v7 = 0x69685F6573756F68;
      switch(*v3)
      {
        case 1:
          v6 = 0xE900000000000074;
          v7 = 0x6E69685F6D6F6F72;
          break;
        case 2:
          v6 = 0xE700000000000000;
          v7 = 0x657265685F6E69;
          break;
        case 3:
          v6 = 0xE500000000000000;
          v7 = 0x6572656874;
          break;
        case 4:
          v6 = 0xE400000000000000;
          v7 = 1936287860;
          break;
        case 5:
          v7 = 0x725F6E6F6D6D6F63;
          v6 = 0xEC000000736D6F6FLL;
          break;
        case 6:
          v6 = 0xE400000000000000;
          v7 = 1819042152;
          break;
        case 7:
          v6 = 0xE700000000000000;
          v7 = 0x6E65686374696BLL;
          break;
        case 8:
          v8 = 1769367916;
          goto LABEL_27;
        case 9:
          v8 = 1768843620;
LABEL_27:
          v7 = v8 | 0x6F72676E00000000;
          v6 = 0xEA00000000006D6FLL;
          break;
        case 0xA:
          v6 = 0xE800000000000000;
          v7 = 0x65636E6172746E65;
          break;
        case 0xB:
          v6 = 0xE800000000000000;
          v7 = 0x6D6F6F7268746162;
          break;
        case 0xC:
          v6 = 0xE600000000000000;
          v7 = 0x65636966666FLL;
          break;
        case 0xD:
          v6 = 0xE700000000000000;
          v9 = 1919182178;
          goto LABEL_29;
        case 0xE:
          v7 = 0x625F72657473616DLL;
          v6 = 0xEE006D6F6F726465;
          break;
        case 0xF:
          v6 = 0xE800000000000000;
          v7 = 0x746E656D65736162;
          break;
        case 0x10:
          v6 = 0xE400000000000000;
          v7 = 1685217657;
          break;
        case 0x11:
          v6 = 0xE300000000000000;
          v7 = 7174503;
          break;
        case 0x12:
          v7 = 0x6F6F725F79616C70;
          v6 = 0xE90000000000006DLL;
          break;
        case 0x13:
          v6 = 0xE700000000000000;
          v9 = 1918858868;
LABEL_29:
          v7 = v9 | 0x6D6F6F00000000;
          break;
        case 0x14:
          v6 = 0xE800000000000000;
          v7 = 0x706F68736B726F77;
          break;
        default:
          break;
      }

      v10 = 0xEA0000000000746ELL;
      v11 = 0x69685F6573756F68;
      switch(*v4)
      {
        case 1:
          v10 = 0xE900000000000074;
          if (v7 == 0x6E69685F6D6F6F72)
          {
            goto LABEL_68;
          }

          goto LABEL_5;
        case 2:
          v10 = 0xE700000000000000;
          if (v7 != 0x657265685F6E69)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 3:
          v10 = 0xE500000000000000;
          if (v7 != 0x6572656874)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 4:
          v10 = 0xE400000000000000;
          if (v7 != 1936287860)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 5:
          v10 = 0xEC000000736D6F6FLL;
          if (v7 != 0x725F6E6F6D6D6F63)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 6:
          v10 = 0xE400000000000000;
          if (v7 != 1819042152)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 7:
          v10 = 0xE700000000000000;
          if (v7 != 0x6E65686374696BLL)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 8:
          v11 = 0x6F72676E6976696CLL;
          v10 = 0xEA00000000006D6FLL;
          goto LABEL_67;
        case 9:
          v10 = 0xEA00000000006D6FLL;
          if (v7 != 0x6F72676E696E6964)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xA:
          v10 = 0xE800000000000000;
          if (v7 != 0x65636E6172746E65)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xB:
          v10 = 0xE800000000000000;
          if (v7 != 0x6D6F6F7268746162)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xC:
          v10 = 0xE600000000000000;
          if (v7 != 0x65636966666FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xD:
          v10 = 0xE700000000000000;
          v12 = 1919182178;
          goto LABEL_71;
        case 0xE:
          v10 = 0xEE006D6F6F726465;
          if (v7 != 0x625F72657473616DLL)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0xF:
          v10 = 0xE800000000000000;
          if (v7 != 0x746E656D65736162)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x10:
          v10 = 0xE400000000000000;
          if (v7 != 1685217657)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x11:
          v10 = 0xE300000000000000;
          if (v7 != 7174503)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x12:
          v10 = 0xE90000000000006DLL;
          if (v7 != 0x6F6F725F79616C70)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x13:
          v10 = 0xE700000000000000;
          v12 = 1918858868;
LABEL_71:
          if (v7 != (v12 | 0x6D6F6F00000000))
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        case 0x14:
          v10 = 0xE800000000000000;
          if (v7 != 0x706F68736B726F77)
          {
            goto LABEL_5;
          }

          goto LABEL_68;
        default:
LABEL_67:
          if (v7 != v11)
          {
            goto LABEL_5;
          }

LABEL_68:
          if (v6 == v10)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_252E37DB4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

uint64_t sub_252AE8B04(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_2529A9538(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_252AE8BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = a1 + 32;
    v6 = a2 + 32;
    do
    {
      v7 = a3();
      v9 = v8;
      if (v7 == a3() && v9 == v10)
      {
      }

      else
      {
        v12 = sub_252E37DB4();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v5;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_252AE8CF8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v6 = *v3;
      v7 = 0xD000000000000011;
      if (v6 != 2)
      {
        v7 = 0x4773656572676564;
      }

      v8 = 0xEE00636972656E65;
      if (v6 == 2)
      {
        v8 = 0x8000000252E67E40;
      }

      if (*v3)
      {
        v9 = 0x4373656572676564;
      }

      else
      {
        v9 = 0x746E6563726570;
      }

      v10 = 0xEE00737569736C65;
      if (!*v3)
      {
        v10 = 0xE700000000000000;
      }

      if (*v3 <= 1u)
      {
        v11 = v9;
      }

      else
      {
        v11 = v7;
      }

      if (*v3 <= 1u)
      {
        v12 = v10;
      }

      else
      {
        v12 = v8;
      }

      if (*v4 > 1u)
      {
        if (*v4 == 2)
        {
          v13 = 0x8000000252E67E40;
          if (v11 != 0xD000000000000011)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        v14 = 0x4773656572676564;
        v15 = 0x636972656E65;
      }

      else
      {
        if (!*v4)
        {
          v13 = 0xE700000000000000;
          if (v11 != 0x746E6563726570)
          {
            goto LABEL_5;
          }

          goto LABEL_32;
        }

        v14 = 0x4373656572676564;
        v15 = 0x737569736C65;
      }

      v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v11 != v14)
      {
        goto LABEL_5;
      }

LABEL_32:
      if (v12 != v13)
      {
LABEL_5:
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_6:
      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE8ECC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      if (*v3)
      {
        v5 = 0x79625F706F7473;
      }

      else
      {
        v5 = 6645107;
      }

      if (*v3)
      {
        v6 = 0xE700000000000000;
      }

      else
      {
        v6 = 0xE300000000000000;
      }

      if (*v4)
      {
        v7 = 0x79625F706F7473;
      }

      else
      {
        v7 = 6645107;
      }

      if (*v4)
      {
        v8 = 0xE700000000000000;
      }

      else
      {
        v8 = 0xE300000000000000;
      }

      if (v5 == v7 && v6 == v8)
      {
      }

      else
      {
        v10 = sub_252E37DB4();

        if ((v10 & 1) == 0)
        {
          return 0;
        }
      }

      ++v3;
      ++v4;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_252AE8FD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A28, &qword_252E3DF80);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_252AEBA88();
    v21 = sub_252E36EF4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE91E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    while (2)
    {
      v6 = 0xEB00000000656D6FLL;
      v7 = 0x48746E6572727563;
      switch(*v3)
      {
        case 1:
          v7 = 0x6C706552726F6F64;
          v6 = 0xEF746E656D656361;
          break;
        case 2:
          v7 = 0x4966664F6E727574;
          v6 = 0xEC0000005654416ELL;
          break;
        case 3:
          v6 = 0xE700000000000000;
          v7 = 0x7972616D697270;
          break;
        case 4:
          v6 = 0xE600000000000000;
          v7 = 0x656372756F73;
          break;
        case 5:
          v7 = 0xD000000000000012;
          v6 = 0x8000000252E67940;
          break;
        case 6:
          v7 = 0xD000000000000010;
          v6 = 0x8000000252E67960;
          break;
        case 7:
          v7 = 0x45656C6946636F76;
          v6 = 0xED0000797469746ELL;
          break;
        case 8:
          v7 = 0xD000000000000014;
          v6 = 0x8000000252E67980;
          break;
        case 9:
          v7 = 0x636E657265666572;
          v6 = 0xEE00656D6F486465;
          break;
        case 0xA:
          v7 = 0xD000000000000010;
          v6 = 0x8000000252E679B0;
          break;
        case 0xB:
          v7 = 0x6465766C6F736572;
          v6 = 0xEE00797469746E45;
          break;
        case 0xC:
          v7 = 0xD00000000000001FLL;
          v6 = 0x8000000252E679D0;
          break;
        default:
          break;
      }

      v8 = 0x48746E6572727563;
      v9 = 0xEB00000000656D6FLL;
      switch(*v4)
      {
        case 1:
          v9 = 0xEF746E656D656361;
          if (v7 == 0x6C706552726F6F64)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        case 2:
          v9 = 0xEC0000005654416ELL;
          if (v7 != 0x4966664F6E727574)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 3:
          v9 = 0xE700000000000000;
          if (v7 != 0x7972616D697270)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 4:
          v9 = 0xE600000000000000;
          if (v7 != 0x656372756F73)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 5:
          v9 = 0x8000000252E67940;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 6:
          v9 = 0x8000000252E67960;
          if (v7 != 0xD000000000000010)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 7:
          v9 = 0xED0000797469746ELL;
          if (v7 != 0x45656C6946636F76)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 8:
          v9 = 0x8000000252E67980;
          if (v7 != 0xD000000000000014)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 9:
          v10 = 0x636E657265666572;
          v11 = 0x656D6F486465;
          goto LABEL_29;
        case 0xA:
          v8 = 0xD000000000000010;
          v9 = 0x8000000252E679B0;
          goto LABEL_42;
        case 0xB:
          v10 = 0x6465766C6F736572;
          v11 = 0x797469746E45;
LABEL_29:
          v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v7 != v10)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        case 0xC:
          v9 = 0x8000000252E679D0;
          if (v7 != 0xD00000000000001FLL)
          {
            goto LABEL_5;
          }

          goto LABEL_43;
        default:
LABEL_42:
          if (v7 != v8)
          {
            goto LABEL_5;
          }

LABEL_43:
          if (v6 == v9)
          {
          }

          else
          {
LABEL_5:
            v5 = sub_252E37DB4();

            if ((v5 & 1) == 0)
            {
              return 0;
            }
          }

          ++v3;
          ++v4;
          if (--v2)
          {
            continue;
          }

          return 1;
      }
    }
  }

  return 1;
}

unint64_t sub_252AE9618(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_54:
    v5 = sub_252E378C4();
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (a2 >> 62)
  {
    result = sub_252E378C4();
    if (v5 == result)
    {
      goto LABEL_5;
    }

    return 0;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    return 0;
  }

LABEL_5:
  if (!v5)
  {
    return 1;
  }

  v7 = a1 & 0xFFFFFFFFFFFFFF8;
  v8 = (a1 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a1 & 0x8000000000000000) != 0)
  {
    v7 = a1;
  }

  if (v4)
  {
    v8 = v7;
  }

  v9 = a2 & 0xFFFFFFFFFFFFFF8;
  v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  if ((a2 & 0x8000000000000000) != 0)
  {
    v9 = a2;
  }

  if (a2 >> 62)
  {
    v10 = v9;
  }

  if (v8 == v10)
  {
    return 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    if (((a2 | a1) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      for (i = 4; ; ++i)
      {
        v13 = i - 4;
        v14 = i - 3;
        if (__OFADD__(i - 4, 1))
        {
          __break(1u);
          goto LABEL_54;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          result = MEMORY[0x2530ADF00](i - 4, a1);
          v4 = result;
          if (v11)
          {
            goto LABEL_23;
          }
        }

        else
        {
          if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_59;
          }

          v4 = *(a1 + 8 * i);

          if (v11)
          {
LABEL_23:
            v15 = MEMORY[0x2530ADF00](i - 4, a2);
            goto LABEL_28;
          }
        }

        if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v15 = *(a2 + 8 * i);

LABEL_28:
        if ((sub_252E32E54() & 1) == 0 || *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
        {
          goto LABEL_50;
        }

        if (*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v15 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {
        }

        else
        {
          v17 = sub_252E37DB4();

          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }

        if (v14 == v5)
        {
          return 1;
        }
      }
    }

    v18 = (a1 + 32);
    v19 = (a2 + 32);
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v20)
    {
      if (!v21)
      {
        goto LABEL_58;
      }

      v22 = *v18;
      v23 = *v19;

      if ((sub_252E32E54() & 1) == 0 || *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {
LABEL_50:

        return 0;
      }

      if (*(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == *(v23 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
      {
      }

      else
      {
        v25 = sub_252E37DB4();

        if ((v25 & 1) == 0)
        {
          return 0;
        }
      }

      --v21;
      --v20;
      ++v18;
      ++v19;
      result = 1;
      if (!--v5)
      {
        return result;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE995C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 32)
    {
      v6 = *(v3 - 2);
      v7 = *(v3 - 8);
      v8 = *(v3 - 1);
      v9 = *v3;
      v10 = *(i - 2);
      v11 = *(i - 8);
      v12 = *(i - 1);
      v13 = *i;
      if (v6)
      {
        if (!v10)
        {
          return 0;
        }

        v14 = *(v3 - 3) == *(i - 3) && v6 == v10;
        if (!v14 && (sub_252E37DB4() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v10)
      {
        return 0;
      }

      if (v7 == 52)
      {
        if (v11 != 52)
        {
          return 0;
        }
      }

      else
      {
        if (v11 == 52)
        {
          return 0;
        }

        v15 = AccessoryTypeSemantic.rawValue.getter();
        v17 = v16;
        if (v15 == AccessoryTypeSemantic.rawValue.getter() && v17 == v18)
        {
        }

        else
        {
          v19 = sub_252E37DB4();

          if ((v19 & 1) == 0)
          {
            goto LABEL_49;
          }
        }
      }

      if (v8 != v12)
      {
LABEL_49:

        return 0;
      }

      v3 += 32;
      v20 = 0xD000000000000010;
      if (v9 != 2)
      {
        v20 = 0x74614D7361696C61;
      }

      v21 = 0xEA00000000006863;
      if (v9 == 2)
      {
        v21 = 0x8000000252E65390;
      }

      v22 = 0x4D74636566726570;
      if (v9)
      {
        v22 = 0x4D6C616974726170;
      }

      v23 = v9 <= 1 ? v22 : v20;
      v24 = v9 <= 1 ? 0xEC00000068637461 : v21;
      if (v13 <= 1)
      {
        break;
      }

      if (v13 == 2)
      {
        v25 = 0xD000000000000010;
        v26 = 0x8000000252E65390;
LABEL_43:
        if (v23 != v25)
        {
          goto LABEL_5;
        }

        goto LABEL_44;
      }

      v26 = 0xEA00000000006863;
      if (v23 != 0x74614D7361696C61)
      {
LABEL_5:
        v5 = sub_252E37DB4();

        if ((v5 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_6;
      }

LABEL_44:
      if (v24 != v26)
      {
        goto LABEL_5;
      }

LABEL_6:
      if (!--v2)
      {
        return 1;
      }
    }

    v25 = 0x4D74636566726570;
    v26 = 0xEC00000068637461;
    if (v13)
    {
      if (v23 != 0x4D6C616974726170)
      {
        goto LABEL_5;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  return 1;
}

uint64_t sub_252AE9CBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_252E32BA4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_252AEBA30();
    v21 = sub_252E36EF4();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_252AE9EA0(unint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v6)
    {
      goto LABEL_29;
    }

    v8 = v4 & 0xFFFFFFFFFFFFFF8;
    v9 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v4 < 0)
    {
      v8 = v4;
    }

    if (v5)
    {
      v9 = v8;
    }

    v10 = a2 & 0xFFFFFFFFFFFFFF8;
    v11 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v10 = a2;
    }

    if (a2 >> 62)
    {
      v11 = v10;
    }

    if (v9 == v11)
    {
LABEL_29:
      v19 = 1;
      return v19 & 1;
    }

    if (v6 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = a3(0);
    if (((a2 | v4) & 0xC000000000000001) != 0)
    {
      v12 = a2 & 0xC000000000000001;
      v13 = 4;
      while (1)
      {
        v14 = v13 - 4;
        v15 = v13 - 3;
        if (__OFADD__(v13 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v4 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x2530ADF00](v13 - 4, v4);
          if (!v12)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v14 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v16 = *(v4 + 8 * v13);
          if (!v12)
          {
LABEL_24:
            if (v14 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v17 = *(a2 + 8 * v13);
            goto LABEL_26;
          }
        }

        v17 = MEMORY[0x2530ADF00](v13 - 4, a2);
LABEL_26:
        v18 = v17;
        v19 = sub_252E37694();

        if (v19)
        {
          ++v13;
          if (v15 != v6)
          {
            continue;
          }
        }

        return v19 & 1;
      }
    }

    v20 = (v4 + 32);
    v21 = (a2 + 32);
    v22 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = v6 - 1;
    while (1)
    {
      if (!v22)
      {
        goto LABEL_40;
      }

      if (!v23)
      {
        break;
      }

      v26 = *v20++;
      v25 = v26;
      v27 = *v21++;
      a2 = v25;
      v4 = v27;
      v19 = sub_252E37694();

      v29 = v24-- != 0;
      if (v19)
      {
        --v23;
        --v22;
        if (v29)
        {
          continue;
        }
      }

      return v19 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v30 = a3;
    v31 = sub_252E378C4();
    a3 = v30;
    v6 = v31;
  }

  v32 = a3;
  result = sub_252E378C4();
  a3 = v32;
  if (v6 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v19 = 0;
  return v19 & 1;
}

uint64_t HomeEntity.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v75);
  if (v76)
  {
    type metadata accessor for HomeEntity();
    if (swift_dynamicCast())
    {
      v2 = [v74 homeEntityName];
      if (v2)
      {
        v3 = v2;
        v4 = sub_252E36F34();
        v6 = v5;
      }

      else
      {
        v4 = 0;
        v6 = 0;
      }

      v7 = [v1 homeEntityName];
      if (v7)
      {
        v8 = v7;
        v9 = sub_252E36F34();
        v11 = v10;

        if (v6)
        {
          if (!v11)
          {
            goto LABEL_14;
          }

          if (v4 == v9 && v6 == v11)
          {
          }

          else
          {
            v12 = sub_252E37DB4();

            if ((v12 & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else if (v11)
        {
          goto LABEL_16;
        }
      }

      else if (v6)
      {
        goto LABEL_14;
      }

      v13 = [v74 type];
      if (v13 != [v1 type])
      {
        goto LABEL_81;
      }

      v14 = [v74 entityIdentifier];
      if (v14)
      {
        v15 = v14;
        v16 = sub_252E36F34();
        v18 = v17;
      }

      else
      {
        v16 = 0;
        v18 = 0;
      }

      v19 = [v1 entityIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_252E36F34();
        v23 = v22;

        if (v18)
        {
          if (!v23)
          {
            goto LABEL_14;
          }

          if (v16 == v21 && v18 == v23)
          {
          }

          else
          {
            v24 = sub_252E37DB4();

            if ((v24 & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else if (v23)
        {
          goto LABEL_16;
        }
      }

      else if (v18)
      {
        goto LABEL_14;
      }

      v25 = [v74 deviceTypes];
      if (v25)
      {
        v26 = v25;
        v27 = sub_252E37264();
      }

      else
      {
        v27 = 0;
      }

      v28 = [v1 deviceTypes];
      if (v28)
      {
        v29 = v28;
        v30 = sub_252E37264();

        if (v27)
        {
          if (!v30)
          {
            goto LABEL_14;
          }

          v31 = sub_252AE80B0(v27, v30);

          if ((v31 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        else if (v30)
        {
          goto LABEL_16;
        }
      }

      else if (v27)
      {
        goto LABEL_14;
      }

      v32 = [v74 sceneType];
      if (v32 != [v1 sceneType])
      {
        goto LABEL_81;
      }

      v33 = [v74 group];
      if (v33)
      {
        v34 = v33;
        v35 = sub_252E36F34();
        v37 = v36;
      }

      else
      {
        v35 = 0;
        v37 = 0;
      }

      v38 = [v1 group];
      if (v38)
      {
        v39 = v38;
        v40 = sub_252E36F34();
        v42 = v41;

        if (v37)
        {
          if (!v42)
          {
            goto LABEL_14;
          }

          if (v35 == v40 && v37 == v42)
          {
          }

          else
          {
            v43 = sub_252E37DB4();

            if ((v43 & 1) == 0)
            {
              goto LABEL_81;
            }
          }
        }

        else if (v42)
        {
          goto LABEL_16;
        }
      }

      else if (v37)
      {
        goto LABEL_14;
      }

      v44 = [v74 room];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E36F34();
        v48 = v47;
      }

      else
      {
        v46 = 0;
        v48 = 0;
      }

      v49 = [v1 room];
      if (!v49)
      {
        if (v48)
        {
          goto LABEL_14;
        }

        goto LABEL_74;
      }

      v50 = v49;
      v51 = sub_252E36F34();
      v53 = v52;

      if (v48)
      {
        if (!v53)
        {
          goto LABEL_14;
        }

        if (v46 == v51 && v48 == v53)
        {
        }

        else
        {
          v54 = sub_252E37DB4();

          if ((v54 & 1) == 0)
          {
            goto LABEL_81;
          }
        }

        goto LABEL_74;
      }

      if (!v53)
      {
LABEL_74:
        v55 = [v74 zones];
        if (v55)
        {
          v56 = v55;
          v57 = sub_252E37264();
        }

        else
        {
          v57 = 0;
        }

        v58 = [v1 zones];
        if (!v58)
        {
          if (!v57)
          {
            goto LABEL_87;
          }

          goto LABEL_14;
        }

        v59 = v58;
        v60 = sub_252E37264();

        if (v57)
        {
          if (v60)
          {
            v61 = sub_252AE83F4(v57, v60);

            if ((v61 & 1) == 0)
            {
              goto LABEL_81;
            }

LABEL_87:
            v64 = [v74 home];
            if (v64)
            {
              v65 = v64;
              v66 = sub_252E36F34();
              v68 = v67;
            }

            else
            {
              v66 = 0;
              v68 = 0;
            }

            v69 = [v1 home];
            if (v69)
            {
              v70 = v69;
              v71 = sub_252E36F34();
              v73 = v72;

              if (!v68)
              {

                if (!v73)
                {
                  v62 = 1;
                  return v62 & 1;
                }

                goto LABEL_82;
              }

              if (v73)
              {
                if (v66 != v71 || v68 != v73)
                {
                  v62 = sub_252E37DB4();

                  return v62 & 1;
                }

                goto LABEL_97;
              }
            }

            else if (!v68)
            {
LABEL_97:

              v62 = 1;
              return v62 & 1;
            }
          }

LABEL_14:

          goto LABEL_82;
        }

        if (!v60)
        {
          goto LABEL_87;
        }
      }

LABEL_16:

LABEL_81:
    }
  }

  else
  {
    sub_252982F10(v75);
  }

LABEL_82:
  v62 = 0;
  return v62 & 1;
}

uint64_t sub_252AEA788(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541E80, &qword_252E3DFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t HomeAttributeValue.isEqual(_:)(uint64_t a1)
{
  sub_252AEA788(a1, v28);
  if (!v29)
  {
    sub_252982F10(v28);
    goto LABEL_10;
  }

  type metadata accessor for HomeAttributeValue();
  if (swift_dynamicCast())
  {
    v2 = [v1 type];
    if (v2 <= 3)
    {
      switch(v2)
      {
        case 1:
          v13 = [v1 BOOLValue];
          v14 = [v27 BOOLValue];

          v8 = v13 ^ v14 ^ 1;
          return v8 & 1;
        case 2:
          [v1 doubleValue];
          v18 = v17;
          [v27 doubleValue];
          v20 = v19;

          v8 = v18 == v20;
          return v8 & 1;
        case 3:
          v3 = [v1 stringValue];
          if (v3)
          {
            v4 = v3;
            v5 = sub_252E36F34();
            v7 = v6;
          }

          else
          {
            v5 = 0;
            v7 = 0;
          }

          v22 = [v27 stringValue];
          if (!v22)
          {
            if (!v7)
            {
LABEL_34:

              v8 = 1;
              return v8 & 1;
            }

            goto LABEL_33;
          }

          v23 = v22;
          v24 = sub_252E36F34();
          v26 = v25;

          if (v7)
          {
            if (v26)
            {
              if (v5 != v24 || v7 != v26)
              {
                v8 = sub_252E37DB4();

                return v8 & 1;
              }

              goto LABEL_34;
            }

LABEL_33:

            goto LABEL_10;
          }

          if (v26)
          {

            goto LABEL_10;
          }

LABEL_39:
          v8 = 1;
          return v8 & 1;
      }

LABEL_36:

      goto LABEL_10;
    }

    switch(v2)
    {
      case 4:
        v15 = [v1 integerValue];
        v16 = [v27 integerValue];
        break;
      case 5:
        v15 = [v1 limitValue];
        v16 = [v27 limitValue];
        break;
      case 6:
        v10 = [v1 rangeValue];
        v11 = [v27 rangeValue];
        v12 = v11;
        if (v10)
        {
          if (v11)
          {
            type metadata accessor for HomeAttributeRange();
            v8 = sub_252E37694();

            return v8 & 1;
          }

          goto LABEL_36;
        }

        if (!v12)
        {
          goto LABEL_39;
        }

        goto LABEL_10;
      default:
        goto LABEL_36;
    }

    v21 = v16;

    v8 = v15 == v21;
    return v8 & 1;
  }

LABEL_10:
  v8 = 0;
  return v8 & 1;
}