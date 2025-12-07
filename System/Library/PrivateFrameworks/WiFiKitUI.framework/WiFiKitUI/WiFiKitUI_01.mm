uint64_t sub_27402A254(uint64_t a1)
{
  v3 = sub_2740516B8();
  v15 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2740516D8();
  v6 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274031704();
  v9 = sub_2740518F8();
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_274031770;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_27;
  v11 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v12 = v1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v8, v5, v11);
  _Block_release(v11);

  (*(v15 + 8))(v5, v3);
  return (*(v6 + 8))(v8, v14);
}

uint64_t sub_27402A544(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = a1;
  return sub_274050E78();
}

void *sub_27402A624(unint64_t a1)
{
  v83 = MEMORY[0x277D84F90];
  v3 = OBJC_IVAR___WFNetworkListDataSource_scanResults;
  v4 = *(v1 + OBJC_IVAR___WFNetworkListDataSource_scanResults);
  if (v4 >> 62)
  {
    goto LABEL_105;
  }

  v5 = *(v1 + OBJC_IVAR___WFNetworkListDataSource_scanResults);
  if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_106:
    *(v1 + v3) = a1;

    goto LABEL_107;
  }

LABEL_3:
  if (v5 >> 62)
  {
    v62 = v3;
    v63 = v5;
    v6 = sub_274051A98();
    v5 = v63;
    v3 = v62;
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = a1 >> 62;
  v80 = a1;
  v72 = v6;
  if (v6)
  {
    v66 = a1 >> 62;
    v76 = a1 & 0xFFFFFFFFFFFFFF8;
    if (v7)
    {
      v64 = v5;
      v65 = sub_274051A98();
      v5 = v64;
      v8 = v65;
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = v72;
    v73 = v5 & 0xC000000000000001;
    v69 = v5 + 32;
    v70 = v5 & 0xFFFFFFFFFFFFFF8;
    v78 = a1 & 0xC000000000000001;
    v71 = v5;

    v1 = 0;
    while (1)
    {
      if (v73)
      {
        v10 = MEMORY[0x2743E3810](v1, v71);
        v11 = __OFADD__(v1++, 1);
        if (v11)
        {
          goto LABEL_103;
        }
      }

      else
      {
        if (v1 >= *(v70 + 16))
        {
          goto LABEL_104;
        }

        v10 = *(v69 + 8 * v1);
        swift_unknownObjectRetain();
        v11 = __OFADD__(v1++, 1);
        if (v11)
        {
          goto LABEL_103;
        }
      }

      if (v8)
      {
        break;
      }

LABEL_9:
      swift_unknownObjectRelease();
      if (v1 == v9)
      {

        v3 = v67;
        v1 = v68;
        v7 = v66;
        goto LABEL_50;
      }
    }

    v74 = v1;
    v1 = 0;
    while (1)
    {
      if (v78)
      {
        v13 = MEMORY[0x2743E3810](v1, a1);
        v14 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          goto LABEL_100;
        }
      }

      else
      {
        if (v1 >= *(v76 + 16))
        {
          goto LABEL_101;
        }

        v13 = *(a1 + 8 * v1 + 32);
        swift_unknownObjectRetain();
        v14 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          v60 = v3;
          v61 = sub_274051A98();
          v3 = v60;
          v5 = *(v1 + v60);
          if (!v61)
          {
            goto LABEL_106;
          }

          goto LABEL_3;
        }
      }

      v15 = [v13 ssid];
      if (v15)
      {
        v16 = v15;
        v17 = sub_2740517D8();
        v19 = v18;
      }

      else
      {
        v17 = 0;
        v19 = 0;
      }

      v20 = [v10 ssid];
      if (!v20)
      {
        break;
      }

      v21 = v20;
      v22 = sub_2740517D8();
      v24 = v23;

      if (v19)
      {
        if (!v24)
        {
          goto LABEL_34;
        }

        if (v17 == v22 && v19 == v24)
        {

LABEL_41:
          if (WFNetworkListRecord.isEquivalentRecordForUI(_:)(v13))
          {
            v25 = swift_unknownObjectRetain();
            MEMORY[0x2743E3640](v25);
            a1 = v80;
            if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_274051878();
            }
          }

          else
          {
            v26 = swift_unknownObjectRetain();
            MEMORY[0x2743E3640](v26);
            a1 = v80;
            if (*((v83 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v83 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_274051878();
            }
          }

          sub_274051898();
          swift_unknownObjectRelease();
LABEL_48:
          v9 = v72;
          v1 = v74;
          goto LABEL_9;
        }

        v12 = sub_274051B08();

        if (v12)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (!v24)
        {
          goto LABEL_41;
        }
      }

      swift_unknownObjectRelease();
LABEL_20:
      a1 = v80;
      ++v1;
      if (v14 == v8)
      {
        goto LABEL_48;
      }
    }

    if (!v19)
    {
      goto LABEL_41;
    }

LABEL_34:
    swift_unknownObjectRelease();

    goto LABEL_20;
  }

LABEL_50:
  v27 = *(v1 + v3);
  if (v27 >> 62)
  {
    v28 = sub_274051A98();
  }

  else
  {
    v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x277D84F90];
  if (!v28)
  {
    v41 = v1;
    v1 = MEMORY[0x277D84F90];
    goto LABEL_66;
  }

  v81 = MEMORY[0x277D84F90];

  result = sub_274032104(0, v28 & ~(v28 >> 63), 0);
  if (v28 < 0)
  {
    __break(1u);
  }

  else
  {
    v31 = 0;
    v1 = v81;
    do
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v32 = MEMORY[0x2743E3810](v31, v27);
      }

      else
      {
        v32 = *(v27 + 8 * v31 + 32);
        swift_unknownObjectRetain();
      }

      v33 = [v32 ssid];
      if (v33)
      {
        v34 = v33;
        v35 = sub_2740517D8();
        v37 = v36;

        swift_unknownObjectRelease();
      }

      else
      {
        swift_unknownObjectRelease();
        v35 = 0;
        v37 = 0;
      }

      v39 = *(v81 + 16);
      v38 = *(v81 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_274032104((v38 > 1), v39 + 1, 1);
      }

      ++v31;
      *(v81 + 16) = v39 + 1;
      v40 = v81 + 16 * v39;
      *(v40 + 32) = v35;
      *(v40 + 40) = v37;
    }

    while (v28 != v31);

    v41 = v68;
    a1 = v80;
    v29 = MEMORY[0x277D84F90];
LABEL_66:
    v42 = sub_274034CE8(v1);

    v82 = v29;
    if (!v7)
    {
      v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v43)
      {
        goto LABEL_99;
      }

LABEL_68:
      v44 = 0;
      v45 = a1 & 0xC000000000000001;
      v77 = a1 + 32;
      v79 = a1 & 0xFFFFFFFFFFFFFF8;
      a1 = v42 + 56;
      v75 = v43;
LABEL_71:
      while (2)
      {
        if (v45)
        {
          v46 = MEMORY[0x2743E3810](v44, v80);
          v11 = __OFADD__(v44++, 1);
          if (v11)
          {
            goto LABEL_97;
          }
        }

        else
        {
          if (v44 >= *(v79 + 16))
          {
            goto LABEL_102;
          }

          v46 = *(v77 + 8 * v44);
          swift_unknownObjectRetain();
          v11 = __OFADD__(v44++, 1);
          if (v11)
          {
LABEL_97:
            __break(1u);
            goto LABEL_98;
          }
        }

        v47 = [v46 ssid];
        if (v47)
        {
          v48 = v47;
          v49 = sub_2740517D8();
          v51 = v50;

          if (!*(v42 + 16))
          {
            goto LABEL_70;
          }
        }

        else
        {
          v49 = 0;
          v51 = 0;
          if (!*(v42 + 16))
          {
            goto LABEL_70;
          }
        }

        sub_274051B38();
        sub_274051B58();
        if (v51)
        {
          sub_2740517F8();
        }

        v52 = sub_274051B68();
        v53 = -1 << *(v42 + 32);
        v54 = v52 & ~v53;
        if ((*(a1 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54))
        {
          v55 = v45;
          v1 = ~v53;
          v56 = *(v42 + 48);
          while (1)
          {
            v57 = (v56 + 16 * v54);
            v58 = v57[1];
            if (v58)
            {
              if (v51)
              {
                v59 = *v57 == v49 && v58 == v51;
                if (v59 || (sub_274051B08() & 1) != 0)
                {
                  swift_unknownObjectRelease();

                  goto LABEL_93;
                }
              }
            }

            else if (!v51)
            {
              swift_unknownObjectRelease();
LABEL_93:
              v45 = v55;
              v43 = v75;
              if (v44 == v75)
              {
LABEL_98:
                v29 = v82;
                v41 = v68;
                goto LABEL_99;
              }

              goto LABEL_71;
            }

            v54 = (v54 + 1) & v1;
            if (((*(a1 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
            {
              v45 = v55;
              v43 = v75;
              break;
            }
          }
        }

LABEL_70:

        v1 = &v82;
        sub_274051A38();
        sub_274051A58();
        sub_274051A68();
        sub_274051A48();
        if (v44 == v43)
        {
          goto LABEL_98;
        }

        continue;
      }
    }

    v43 = sub_274051A98();
    if (v43)
    {
      goto LABEL_68;
    }

LABEL_99:

    sub_27402B018(v29);
    *(v41 + v67) = v83;

LABEL_107:

    return sub_2740270DC();
  }

  return result;
}

BOOL WFNetworkListRecord.isEquivalentRecordForUI(_:)(void *a1)
{
  v3 = [v1 isKnown];
  if (v3 != [a1 isKnown])
  {
    return 0;
  }

  v4 = [v1 isInstantHotspot];
  if (v4 != [a1 isInstantHotspot])
  {
    return 0;
  }

  v5 = [v1 isPopular];
  if (v5 != [a1 isPopular])
  {
    return 0;
  }

  v6 = [v1 isAdhoc];
  if (v6 != [a1 isAdhoc])
  {
    return 0;
  }

  v7 = [v1 isUnconfiguredAccessory];
  if (v7 != [a1 isUnconfiguredAccessory])
  {
    return 0;
  }

  v9 = [v1 subtitle];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2740517D8();
    v13 = v12;
  }

  else
  {
    v11 = 0;
    v13 = 0;
  }

  v14 = [a1 subtitle];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2740517D8();
    v18 = v17;

    if (v13)
    {
      if (v18)
      {
        if (v11 == v16 && v13 == v18)
        {
        }

        else
        {
          v19 = sub_274051B08();

          if ((v19 & 1) == 0)
          {
            return 0;
          }
        }

        goto LABEL_21;
      }

LABEL_19:

      return 0;
    }

    if (v18)
    {
      goto LABEL_19;
    }
  }

  else if (v13)
  {
    goto LABEL_19;
  }

LABEL_21:
  v20 = [v1 signalBars];
  return v20 == [a1 signalBars];
}

uint64_t sub_27402B018(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_274051A98();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_274051A98();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_2740323E0(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_274033468(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_27402B120(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v21 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_2740516D8();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v10 = sub_274050E28();
  __swift_project_value_buffer(v10, qword_280937140);
  v11 = sub_274050E08();
  v12 = sub_2740518C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock[0] = v14;
    *v13 = 136315394;
    *(v13 + 4) = sub_2740310C4(0xD000000000000019, 0x8000000274066610, aBlock);
    *(v13 + 12) = 1024;
    *(v13 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v11, v12, "%s: set scanning status: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x2743E44F0](v14, -1, -1);
    MEMORY[0x2743E44F0](v13, -1, -1);
  }

  sub_274031704();
  v15 = sub_2740518F8();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = a1 & 1;
  aBlock[4] = sub_274034D94;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_33;
  v17 = _Block_copy(aBlock);
  v18 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v9, v6, v17);
  _Block_release(v17);

  (*(v21 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v20);
}

uint64_t sub_27402B52C(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_274050E78();
}

void sub_27402B9C0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
  v3 = sub_274051848();
  (*(a2 + 16))(a2, v3);
}

uint64_t sub_27402BA6C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = (v5 + *a3);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  a4(a1, a2);
  return a5(v11, v12);
}

uint64_t sub_27402BBBC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
  v3 = sub_274051848();
  v4 = (*(a2 + 16))(a2, v3);

  v5 = sub_2740517D8();
  return v5;
}

uint64_t sub_27402BC4C(uint64_t a1)
{
  v2 = v1;

  v15[0] = sub_2740333D4(v3);
  sub_2740350C8(v15, v2, &unk_288307440, sub_274034DA0);

  v4 = v15[0];
  v16 = MEMORY[0x277D84F90];
  if (v15[0] < 0 || (v15[0] & 0x4000000000000000) != 0)
  {
    goto LABEL_16;
  }

  for (i = *(v15[0] + 16); i; i = sub_274051A98())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743E3810](v6, v4);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

LABEL_8:
      WFNetworkListRecord.knownNetworksModel.getter();
      v9 = v8;
      swift_unknownObjectRelease();
      v10 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
      v11 = swift_beginAccess();
      *(v9 + v10) = 0;
      MEMORY[0x2743E3640](v11);
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v6;
      if (v7 == i)
      {
        v12 = v16;
        goto LABEL_18;
      }
    }

    if (v6 >= *(v4 + 16))
    {
      goto LABEL_15;
    }

    swift_unknownObjectRetain();
    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v12;
  v13 = v2;
  return sub_274050E78();
}

void WFNetworkListRecord.knownNetworksModel.getter()
{
  v1 = v0;
  type metadata accessor for WFNetworkRowConfigModel(0);
  v2 = static WFNetworkRowConfigModel.knownNetworkRowConfig()();
  sub_27403DF48(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v1;
  v3 = v2;
  swift_unknownObjectRetain();
  sub_274050E78();
  v4 = [v1 subtitle];
  if (v4)
  {
    v5 = v4;
    v6 = sub_2740517D8();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  sub_27403E520(v6, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  v25 = v6;
  v26 = v8;
  v9 = v3;
  sub_274050E78();
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v10 = sub_274050E28();
  __swift_project_value_buffer(v10, qword_280937140);
  v11 = v9;
  swift_unknownObjectRetain();
  v12 = sub_274050E08();
  v13 = sub_2740518C8();
  if (!os_log_type_enabled(v12, v13))
  {

    swift_unknownObjectRelease();
LABEL_16:

    return;
  }

  v14 = swift_slowAlloc();
  v15 = swift_slowAlloc();
  v24 = v15;
  *v14 = 136315650;
  *(v14 + 4) = sub_2740310C4(0xD000000000000012, 0x8000000274066630, &v24);
  *(v14 + 12) = 2080;
  v16 = [v1 ssid];
  swift_unknownObjectRelease();

  if (v16)
  {
    v17 = sub_2740517D8();
    v19 = v18;

    v20 = sub_2740310C4(v17, v19, &v24);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    if (v26)
    {
      v21 = v25;
    }

    else
    {
      v21 = 0;
    }

    if (v26)
    {
      v22 = v26;
    }

    else
    {
      v22 = 0xE000000000000000;
    }

    v23 = sub_2740310C4(v21, v22, &v24);

    *(v14 + 24) = v23;
    _os_log_impl(&dword_273FB9000, v12, v13, "%s: network: %s, subtitle: %s", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v15, -1, -1);
    MEMORY[0x2743E44F0](v14, -1, -1);
    goto LABEL_16;
  }

  __break(1u);
}

uint64_t sub_27402C1DC(uint64_t a1)
{
  v2 = v1;

  v12 = sub_2740333D4(v3);
  sub_2740350C8(&v12, v2, &unk_288307350, sub_274034F34);

  v4 = v12;
  v12 = MEMORY[0x277D84F90];
  if (v4 < 0 || (v4 & 0x4000000000000000) != 0)
  {
    goto LABEL_16;
  }

  for (i = *(v4 + 16); i; i = sub_274051A98())
  {
    v6 = 0;
    while ((v4 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2743E3810](v6, v4);
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_14;
      }

LABEL_8:
      WFNetworkListRecord.knownNetworksModel.getter();
      v8 = swift_unknownObjectRelease();
      MEMORY[0x2743E3640](v8);
      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      ++v6;
      if (v7 == i)
      {
        v9 = v12;
        goto LABEL_18;
      }
    }

    if (v6 >= *(v4 + 16))
    {
      goto LABEL_15;
    }

    swift_unknownObjectRetain();
    v7 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v9 = MEMORY[0x277D84F90];
LABEL_18:

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = v9;
  v10 = v2;
  return sub_274050E78();
}

uint64_t sub_27402C3EC(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
  v6 = sub_274051858();
  v7 = a1;
  a4(v6);
}

uint64_t sub_27402C46C()
{
  v1 = v0;
  v2 = sub_2740516B8();
  v19 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2740516D8();
  v5 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v8 = sub_274050E28();
  __swift_project_value_buffer(v8, qword_280937140);
  v9 = sub_274050E08();
  v10 = sub_2740518C8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock[0] = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_2740310C4(0xD00000000000001FLL, 0x8000000274066650, aBlock);
    _os_log_impl(&dword_273FB9000, v9, v10, "%s: Transit to preferred network list.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x2743E44F0](v12, -1, -1);
    MEMORY[0x2743E44F0](v11, -1, -1);
  }

  sub_274031704();
  v13 = sub_2740518F8();
  v14 = swift_allocObject();
  *(v14 + 16) = v1;
  aBlock[4] = sub_274035198;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_51;
  v15 = _Block_copy(aBlock);
  v16 = v1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v7, v4, v15);
  _Block_release(v15);

  (*(v19 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v18);
}

uint64_t sub_27402C85C(uint64_t a1)
{
  sub_274051688();
  sub_274050F78();
}

uint64_t sub_27402C910()
{
  v1 = sub_2740516B8();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2740516D8();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274031704();
  v7 = sub_2740518F8();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_2740351A0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_57;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

void sub_27402CBF4(uint64_t a1)
{
  v2 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  *(a1 + v2) = MEMORY[0x277D84F90];

  v3 = a1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
  swift_beginAccess();
  v4 = *v3;
  if (*v3)
  {
    v5 = *(v3 + 8);
    sub_273FBBB0C(v4, v5);

    v4(v6);
    sub_273FBD2BC(v4, v5);
  }

  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v7 = sub_274050E28();
  __swift_project_value_buffer(v7, qword_280937140);
  v8 = sub_274050E08();
  v9 = sub_2740518C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v14 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_2740310C4(0xD000000000000012, 0x8000000274066950, &v14);
    _os_log_impl(&dword_273FB9000, v8, v9, "%s: Clearing network deletion buffer and transit back to scan list", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x2743E44F0](v11, -1, -1);
    MEMORY[0x2743E44F0](v10, -1, -1);
  }

  MEMORY[0x28223BE20](v12);
  sub_274051688();
  sub_274050F78();

  v13 = [objc_opt_self() defaultCenter];
  if (qword_280934D80 != -1)
  {
    swift_once();
  }

  [v13 postNotificationName:qword_280937200 object:0 userInfo:0];
}

uint64_t sub_27402CEA8(void *a1, char a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  return sub_274050E78();
}

id NetworkListDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkListDataSource.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809354E0, &unk_27405A470);
  v52 = *(v1 - 8);
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  v51 = &v44 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935740, &qword_27405A970);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809354F0, &qword_27405A480);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v44 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809354F8, &qword_27405A488);
  v46 = *(v9 - 8);
  v47 = v9;
  MEMORY[0x28223BE20](v9);
  v45 = &v44 - v10;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935500, &qword_27405A490);
  v11 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v13 = &v44 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935508, &qword_27405A498);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v44 - v16;
  v18 = OBJC_IVAR___WFNetworkListDataSource__currentNetwork;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274050E58();
  (*(v15 + 32))(&v0[v18], v17, v14);
  v19 = OBJC_IVAR___WFNetworkListDataSource__currentNetworkRowConfig;
  v55 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935528, &qword_27405A4A8);
  sub_274050E58();
  (*(v11 + 32))(&v0[v19], v13, v44);
  v20 = OBJC_IVAR___WFNetworkListDataSource__listMode;
  LOBYTE(v55) = 0;
  v21 = v45;
  sub_274050E58();
  (*(v46 + 32))(&v0[v20], v21, v47);
  v22 = OBJC_IVAR___WFNetworkListDataSource__knownNetworks;
  v23 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935540, &qword_27405A4B0);
  sub_274050E58();
  v24 = *(v6 + 32);
  v24(&v0[v22], v8, v5);
  v25 = OBJC_IVAR___WFNetworkListDataSource__phNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v25], v8, v5);
  v26 = OBJC_IVAR___WFNetworkListDataSource__publicNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v26], v8, v5);
  v27 = OBJC_IVAR___WFNetworkListDataSource__infraNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v27], v8, v5);
  v28 = OBJC_IVAR___WFNetworkListDataSource__adhocNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v28], v8, v5);
  v29 = OBJC_IVAR___WFNetworkListDataSource__unConfiguredNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v29], v8, v5);
  v30 = OBJC_IVAR___WFNetworkListDataSource__managedPreferredNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v30], v8, v5);
  v31 = OBJC_IVAR___WFNetworkListDataSource__editablePreferredNetworks;
  v55 = v23;
  sub_274050E58();
  v24(&v0[v31], v8, v5);
  v32 = OBJC_IVAR___WFNetworkListDataSource__isScanning;
  LOBYTE(v55) = 0;
  v33 = v48;
  sub_274050E58();
  (*(v49 + 32))(&v0[v32], v33, v50);
  v34 = OBJC_IVAR___WFNetworkListDataSource__unconfiguredNetworksSectionTitle;
  v55 = 0;
  v56 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
  v35 = v51;
  sub_274050E58();
  (*(v52 + 32))(&v0[v34], v35, v53);
  *&v0[OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted] = v23;
  v36 = &v0[OBJC_IVAR___WFNetworkListDataSource_networkTapHandler];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = &v0[OBJC_IVAR___WFNetworkListDataSource_infoButtonTapHandler];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &v0[OBJC_IVAR___WFNetworkListDataSource_associationHandler];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &v0[OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback];
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = &v0[OBJC_IVAR___WFNetworkListDataSource_otherNetworkTapHandler];
  *v40 = 0;
  *(v40 + 1) = 0;
  v41 = &v0[OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate];
  *v41 = 0;
  *(v41 + 1) = 0;
  *&v0[OBJC_IVAR___WFNetworkListDataSource_scanResults] = v23;
  v42 = type metadata accessor for NetworkListDataSource(0);
  v54.receiver = v0;
  v54.super_class = v42;
  return objc_msgSendSuper2(&v54, sel_init);
}

uint64_t sub_27402D6C4(void *a1)
{
  v3 = OBJC_IVAR___WFNetworkListDataSource_networksToBeDeleted;
  swift_beginAccess();
  v4 = swift_unknownObjectRetain();
  MEMORY[0x2743E3640](v4);
  if (*((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + v3) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_274051878();
  }

  sub_274051898();
  swift_endAccess();
  v5 = v1 + OBJC_IVAR___WFNetworkListDataSource_pendingDeletingNetworksChangedCallback;
  swift_beginAccess();
  v6 = *v5;
  if (*v5)
  {
    v7 = *(v5 + 8);
    sub_273FBBB0C(v6, v7);

    v6(v8);
    sub_273FBD2BC(v6, v7);
  }

  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v9 = sub_274050E28();
  __swift_project_value_buffer(v9, qword_280937140);
  swift_unknownObjectRetain();
  v10 = sub_274050E08();
  v11 = sub_2740518C8();
  if (!os_log_type_enabled(v10, v11))
  {
    swift_unknownObjectRelease();
    goto LABEL_11;
  }

  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v21[0] = v13;
  *v12 = 136315394;
  *(v12 + 4) = sub_2740310C4(0xD00000000000001DLL, 0x8000000274066670, v21);
  *(v12 + 12) = 2080;
  v14 = [a1 ssid];
  result = swift_unknownObjectRelease();
  if (v14)
  {
    v16 = sub_2740517D8();
    v18 = v17;

    v19 = sub_2740310C4(v16, v18, v21);

    *(v12 + 14) = v19;
    _os_log_impl(&dword_273FB9000, v10, v11, "%s: Adding pending deleting network: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v13, -1, -1);
    MEMORY[0x2743E44F0](v12, -1, -1);
LABEL_11:

    MEMORY[0x28223BE20](v20);
    sub_274051688();
    sub_274050F78();
  }

  __break(1u);
  return result;
}

uint64_t sub_27402D9E4(id a1, void *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v3 = v44;
  v45 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
    goto LABEL_63;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    v36 = a1;
    v6 = 0;
    v38 = v4;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x2743E3810](v6, v3);
      }

      else
      {
        if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_60;
        }

        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        v4 = sub_274051A98();
        goto LABEL_3;
      }

      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (v43 && (v10 = [v43 ssid], swift_unknownObjectRelease(), v10))
      {
        a1 = sub_2740517D8();
        v12 = v11;
      }

      else
      {
        a1 = 0;
        v12 = 0;
      }

      v13 = [a2 ssid];
      if (v13)
      {
        v14 = v13;
        v15 = sub_2740517D8();
        v17 = v16;

        if (v12)
        {
          if (!v17)
          {
            goto LABEL_24;
          }

          if (a1 == v15 && v12 == v17)
          {

            goto LABEL_6;
          }

          v18 = sub_274051B08();

          if ((v18 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else if (v17)
        {
LABEL_24:

LABEL_25:
          sub_274051A38();
          sub_274051A58();
          sub_274051A68();
          sub_274051A48();
          goto LABEL_6;
        }
      }

      else if (v12)
      {
        goto LABEL_24;
      }

LABEL_6:
      ++v6;
      if (v9 == v38)
      {
        v19 = v45;
        a1 = v36;
        v5 = MEMORY[0x277D84F90];
        goto LABEL_31;
      }
    }
  }

  v19 = MEMORY[0x277D84F90];
LABEL_31:

  swift_getKeyPath();
  swift_getKeyPath();
  a1 = a1;
  sub_274050E78();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v3 = v19;
  v45 = v5;
  if (v19 >> 62)
  {
    v20 = sub_274051A98();
    if (v20)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
LABEL_33:
      v37 = a1;
      v21 = 0;
      v40 = v19 & 0xFFFFFFFFFFFFFF8;
      v41 = v19 & 0xC000000000000001;
      v39 = v20;
      while (1)
      {
        if (v41)
        {
          v22 = MEMORY[0x2743E3810](v21, v3);
        }

        else
        {
          if (v21 >= *(v40 + 16))
          {
            goto LABEL_62;
          }

          v22 = *(v3 + 8 * v21 + 32);
        }

        v23 = v22;
        v24 = v21 + 1;
        if (__OFADD__(v21, 1))
        {
          goto LABEL_61;
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        if (v43 && (v25 = [v43 ssid], swift_unknownObjectRelease(), v25))
        {
          a1 = sub_2740517D8();
          v27 = v26;
        }

        else
        {
          a1 = 0;
          v27 = 0;
        }

        v28 = [a2 ssid];
        if (v28)
        {
          v29 = v28;
          v30 = sub_2740517D8();
          v32 = v31;

          if (v27)
          {
            if (!v32)
            {
              goto LABEL_53;
            }

            if (a1 == v30 && v27 == v32)
            {

              goto LABEL_35;
            }

            v33 = sub_274051B08();

            if ((v33 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else if (v32)
          {
LABEL_53:

LABEL_54:
            sub_274051A38();
            sub_274051A58();
            sub_274051A68();
            sub_274051A48();
            goto LABEL_35;
          }
        }

        else if (v27)
        {
          goto LABEL_53;
        }

LABEL_35:
        ++v21;
        if (v24 == v39)
        {
          a1 = v37;
          break;
        }
      }
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v34 = a1;
  return sub_274050E78();
}

uint64_t sub_27402DFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  if (a2)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v4;
    sub_2740330D4(a1, a2, a3, a4, isUniquelyReferenced_nonNull_native);

    *v4 = v17;
  }

  else
  {
    v12 = sub_274031840(a3, a4);
    v14 = v13;

    if (v14)
    {
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v5;
      v18 = *v5;
      if (!v15)
      {
        sub_27403325C();
        v16 = v18;
      }

      result = sub_274032F24(v12, v16);
      *v5 = v16;
    }
  }

  return result;
}

void sub_27402E0D4(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  if (qword_280934D88 != -1)
  {
    swift_once();
  }

  v3 = qword_280937208;
  sub_27402E1CC(a1);
  v4 = sub_274051758();

  [v2 postNotificationName:v3 object:0 userInfo:v4];
}

uint64_t sub_27402E1CC(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E0, &qword_27405A878);
    v2 = sub_274051AC8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_274036710(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_274036710(v29, v30);
    result = sub_274051998();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_274036710(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_27402E498()
{
  v1 = sub_2740516B8();
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v33 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_2740516D8();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  v37 = v0;
  sub_274050E68();

  v4 = aBlock[0];
  aBlock[0] = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
LABEL_23:
    v5 = sub_274051A98();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v6 = 0;
  v38 = MEMORY[0x277D84F90];
  while (v5 != v6)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x2743E3810](v6, v4);
    }

    else
    {
      if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_22;
      }

      v7 = *(v4 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    ++v6;
    if (aBlock[6])
    {
      MEMORY[0x2743E3640]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_274051878();
      }

      sub_274051898();
      v38 = aBlock[0];
      v6 = v9;
    }
  }

  v10 = v37;
  v11 = &v37[OBJC_IVAR___WFNetworkListDataSource_unconfiguredNetworksSectionTitleDelegate];
  swift_beginAccess();
  v12 = *v11;
  if (!*v11)
  {
  }

  v13 = *(v11 + 1);

  v14 = v12(v38);
  v16 = v15;

  sub_273FBD2BC(v12, v13);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v17 = sub_274050E28();
  __swift_project_value_buffer(v17, qword_280937140);

  v18 = sub_274050E08();
  v19 = sub_2740518C8();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2740310C4(0xD000000000000020, 0x8000000274066900, aBlock);
    *(v20 + 12) = 2080;
    *(v20 + 14) = sub_2740310C4(v14, v16, aBlock);
    _os_log_impl(&dword_273FB9000, v18, v19, "%s: UPdating unconfigured network section title to: %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v21, -1, -1);
    MEMORY[0x2743E44F0](v20, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  v23[2] = v10;
  v23[3] = v14;
  v23[4] = v16;
  aBlock[4] = sub_2740364F8;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_189;
  v24 = _Block_copy(aBlock);
  v25 = v10;

  v26 = v31;
  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  v27 = v33;
  v28 = v36;
  sub_274051978();
  MEMORY[0x2743E3710](0, v26, v27, v24);
  _Block_release(v24);

  (*(v35 + 8))(v27, v28);
  return (*(v32 + 8))(v26, v34);
}

uint64_t sub_27402EADC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a1;

  return sub_274050E78();
}

void sub_27402EB64(void *a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    type metadata accessor for WFNetworkRowConfigModel(0);
    v12 = a1;
    v13 = static WFNetworkRowConfigModel.modelFrom(rowConfig:)(v12);
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v14 = sub_274050E28();
    __swift_project_value_buffer(v14, qword_280937140);
    v15 = v13;
    v16 = v2;
    v17 = sub_274050E08();
    v18 = sub_2740518C8();

    if (!os_log_type_enabled(v17, v18))
    {
      goto LABEL_29;
    }

    v19 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v54[0] = v53;
    *v19 = 136316162;
    *(v19 + 4) = sub_2740310C4(0xD000000000000021, 0x8000000274066970, v54);
    *(v19 + 12) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v20 = aBlock;
    if (aBlock && (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , , v20, aBlock) && (v21 = [aBlock ssid], swift_unknownObjectRelease(), v21))
    {
      v22 = sub_2740517D8();
      v24 = v23;

      v25 = v22;
    }

    else
    {
      v25 = 0;
      v24 = 0xE000000000000000;
    }

    v35 = sub_2740310C4(v25, v24, v54);

    *(v19 + 14) = v35;
    *(v19 + 22) = 2080;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v36 = aBlock;
    if (aBlock && (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , , v36, (v37 = v56) != 0))
    {
      v38 = aBlock;
    }

    else
    {

      v38 = 0;
      v37 = 0xE000000000000000;
    }

    v39 = sub_2740310C4(v38, v37, v54);

    *(v19 + 24) = v39;
    *(v19 + 32) = 2080;
    if (v13)
    {
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      if (aBlock && (v40 = [aBlock ssid], swift_unknownObjectRelease(), v40))
      {
        v41 = sub_2740517D8();
        v43 = v42;

        v44 = v41;
      }

      else
      {
        v44 = 0;
        v43 = 0xE000000000000000;
      }

      v45 = sub_2740310C4(v44, v43, v54);

      *(v19 + 34) = v45;
      *(v19 + 42) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      sub_274050E68();

      v46 = v56;
      if (v56)
      {
        v47 = aBlock;
LABEL_28:
        v49 = sub_2740310C4(v47, v46, v54);

        *(v19 + 44) = v49;
        _os_log_impl(&dword_273FB9000, v17, v18, "%s: Updating current network row config: old ssid=' %s', subtitle='%s' -> new ssid='%s', subtitle='%s'", v19, 0x34u);
        v50 = v53;
        swift_arrayDestroy();
        MEMORY[0x2743E44F0](v50, -1, -1);
        MEMORY[0x2743E44F0](v19, -1, -1);
LABEL_29:

        MEMORY[0x28223BE20](v51);
        *(&v52 - 2) = v16;
        *(&v52 - 1) = v13;
        sub_274051688();
        sub_274050F78();

        return;
      }
    }

    else
    {
      v48 = sub_2740310C4(0, 0xE000000000000000, v54);

      *(v19 + 34) = v48;
      *(v19 + 42) = 2080;
    }

    v47 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_28;
  }

  v52 = v9;
  v53 = v5;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v26 = sub_274050E28();
  __swift_project_value_buffer(v26, qword_280937140);
  v27 = sub_274050E08();
  v28 = sub_2740518C8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    aBlock = v30;
    *v29 = 136315138;
    *(v29 + 4) = sub_2740310C4(0xD000000000000021, 0x8000000274066970, &aBlock);
    _os_log_impl(&dword_273FB9000, v27, v28, "%s: Clearing current network row config", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x2743E44F0](v30, -1, -1);
    MEMORY[0x2743E44F0](v29, -1, -1);
  }

  sub_274031704();
  v31 = sub_2740518F8();
  v32 = swift_allocObject();
  *(v32 + 16) = v2;
  v59 = sub_274036894;
  v60 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v56 = 1107296256;
  v57 = sub_274029168;
  v58 = &block_descriptor_445;
  v33 = _Block_copy(&aBlock);
  v34 = v2;

  sub_2740516C8();
  aBlock = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v33);
  _Block_release(v33);

  (*(v53 + 8))(v7, v4);
  (*(v52 + 8))(v11, v8);
}

uint64_t sub_27402F47C(void *a1)
{
  type metadata accessor for NetworkListDataSource(0);
  sub_2740366C0(&unk_2809357B0, type metadata accessor for NetworkListDataSource, &protocol conformance descriptor for NetworkListDataSource);
  sub_274050E38();
  sub_274050E48();

  swift_getKeyPath();
  swift_getKeyPath();
  v2 = a1;
  return sub_274050E78();
}

uint64_t sub_27402F548(void *a1, void *a2)
{
  v4 = sub_2740516B8();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_2740516D8();
  v7 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_274031704();
  v17 = sub_2740518F8();
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  aBlock[4] = sub_2740368B8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_451;
  v11 = _Block_copy(aBlock);
  v12 = a2;
  v13 = a1;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  v14 = v17;
  MEMORY[0x2743E3710](0, v9, v6, v11);
  _Block_release(v11);

  (*(v19 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v18);
}

uint64_t sub_27402F83C(void *a1, void *a2)
{
  type metadata accessor for NetworkListDataSource(0);
  sub_2740366C0(&unk_2809357B0, type metadata accessor for NetworkListDataSource, &protocol conformance descriptor for NetworkListDataSource);
  sub_274050E38();
  sub_274050E48();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = a2;
  v5 = a1;
  return sub_274050E78();
}

void sub_27402F910()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v0 = v37;
  if (v37)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v1 = v37;
    v2 = v37 & 0xFFFFFFFFFFFFFF8;
    if (v37 >> 62)
    {
LABEL_103:
      v3 = sub_274051A98();
    }

    else
    {
      v3 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v5 = -v3;
    v6 = 4;
    while (1)
    {
      if (v5 + v6 == 4)
      {

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v1 = v37;
        v2 = v37 & 0xFFFFFFFFFFFFFF8;
        if (v37 >> 62)
        {
LABEL_106:
          v11 = sub_274051A98();
        }

        else
        {
          v11 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v12 = -v11;
        v6 = 4;
        while (v12 + v6 != 4)
        {
          v7 = v6 - 4;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x2743E3810](v6 - 4, v1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_97;
            }

            v13 = *(v1 + 8 * v6);
          }

          v14 = v13;
          v37 = v13;
          v15 = sub_274030224(&v37, v0);

          if (v15)
          {

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v4 = v37;
            if ((v37 & 0xC000000000000001) != 0)
            {
              goto LABEL_105;
            }

            if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              goto LABEL_44;
            }

            goto LABEL_92;
          }

          ++v6;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_98;
          }
        }

        goto LABEL_29;
      }

      v7 = v6 - 4;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2743E3810](v6 - 4, v1);
      }

      else
      {
        if (v7 >= *(v2 + 16))
        {
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
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }

        v8 = *(v1 + 8 * v6);
      }

      v9 = v8;
      v37 = v8;
      v10 = sub_274030224(&v37, v0);

      if (v10)
      {
        break;
      }

      ++v6;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_96;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    sub_274050E68();

    v4 = v37;
    if ((v37 & 0xC000000000000001) == 0)
    {
      if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_29:

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v1 = v37;
        v2 = v37 & 0xFFFFFFFFFFFFFF8;
        if (v37 >> 62)
        {
LABEL_109:
          v16 = sub_274051A98();
        }

        else
        {
          v16 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 = -v16;
        v6 = 4;
        while (1)
        {
          if (v17 + v6 == 4)
          {
LABEL_44:

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v1 = v37;
            v2 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v37 >> 62)
            {
              v21 = sub_274051A98();
            }

            else
            {
              v21 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v22 = -v21;
            v6 = 4;
            while (v22 + v6 != 4)
            {
              v7 = v6 - 4;
              if ((v1 & 0xC000000000000001) != 0)
              {
                v23 = MEMORY[0x2743E3810](v6 - 4, v1);
              }

              else
              {
                if (v7 >= *(v2 + 16))
                {
                  goto LABEL_101;
                }

                v23 = *(v1 + 8 * v6);
              }

              v24 = v23;
              v37 = v23;
              v25 = sub_274030224(&v37, v0);

              if (v25)
              {

                swift_getKeyPath();
                swift_getKeyPath();
                sub_274050E68();

                v4 = v37;
                if ((v37 & 0xC000000000000001) != 0)
                {
                  goto LABEL_105;
                }

                if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  __break(1u);
                  goto LABEL_74;
                }

                goto LABEL_92;
              }

              ++v6;
              if (__OFADD__(v7, 1))
              {
                goto LABEL_102;
              }
            }

LABEL_59:

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v1 = v37;
            v2 = v37 & 0xFFFFFFFFFFFFFF8;
            if (v37 >> 62)
            {
              v26 = sub_274051A98();
            }

            else
            {
              v26 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
            }

            v27 = -v26;
            v6 = 4;
            while (1)
            {
              if (v27 + v6 == 4)
              {
LABEL_74:

                swift_getKeyPath();
                swift_getKeyPath();
                sub_274050E68();

                v1 = v37;
                v2 = v37 & 0xFFFFFFFFFFFFFF8;
                if (v37 >> 62)
                {
                  v31 = sub_274051A98();
                }

                else
                {
                  v31 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
                }

                v32 = -v31;
                v6 = 4;
                while (v32 + v6 != 4)
                {
                  v7 = v6 - 4;
                  if ((v1 & 0xC000000000000001) != 0)
                  {
                    v33 = MEMORY[0x2743E3810](v6 - 4, v1);
                  }

                  else
                  {
                    if (v7 >= *(v2 + 16))
                    {
                      __break(1u);
LABEL_108:
                      __break(1u);
                      goto LABEL_109;
                    }

                    v33 = *(v1 + 8 * v6);
                  }

                  v34 = v33;
                  v37 = v33;
                  v35 = sub_274030224(&v37, v0);

                  if (v35)
                  {

                    swift_getKeyPath();
                    swift_getKeyPath();
                    sub_274050E68();

                    v4 = v37;
                    if ((v37 & 0xC000000000000001) != 0)
                    {
                      goto LABEL_105;
                    }

                    if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      __break(1u);
                      return;
                    }

                    goto LABEL_92;
                  }

                  ++v6;
                  if (__OFADD__(v7, 1))
                  {
                    goto LABEL_108;
                  }
                }

                goto LABEL_89;
              }

              v7 = v6 - 4;
              if ((v1 & 0xC000000000000001) != 0)
              {
                v28 = MEMORY[0x2743E3810](v6 - 4, v1);
              }

              else
              {
                if (v7 >= *(v2 + 16))
                {
                  __break(1u);
                  goto LABEL_105;
                }

                v28 = *(v1 + 8 * v6);
              }

              v29 = v28;
              v37 = v28;
              v30 = sub_274030224(&v37, v0);

              if (v30)
              {
                break;
              }

              ++v6;
              if (__OFADD__(v7, 1))
              {
                __break(1u);
                goto LABEL_106;
              }
            }

            swift_getKeyPath();
            swift_getKeyPath();
            sub_274050E68();

            v4 = v37;
            if ((v37 & 0xC000000000000001) != 0)
            {
              goto LABEL_105;
            }

            if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_89:

              return;
            }

            goto LABEL_92;
          }

          v7 = v6 - 4;
          if ((v1 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2743E3810](v6 - 4, v1);
          }

          else
          {
            if (v7 >= *(v2 + 16))
            {
              goto LABEL_99;
            }

            v18 = *(v1 + 8 * v6);
          }

          v19 = v18;
          v37 = v18;
          v20 = sub_274030224(&v37, v0);

          if (v20)
          {
            break;
          }

          ++v6;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_100;
          }
        }

        swift_getKeyPath();
        swift_getKeyPath();
        sub_274050E68();

        v4 = v37;
        if ((v37 & 0xC000000000000001) != 0)
        {
          goto LABEL_105;
        }

        if (v7 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_59;
        }
      }

LABEL_92:
      v36 = *(v4 + 8 * v6);
      goto LABEL_93;
    }

LABEL_105:
    MEMORY[0x2743E3810](v7, v4);
LABEL_93:

    sub_27403EB84(0);
    swift_getKeyPath();
    swift_getKeyPath();
    v37 = 0;
    sub_274050E78();
  }
}

uint64_t sub_274030224(uint64_t *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v2 = v12;
  if (v12)
  {
    v3 = [v12 ssid];
    swift_unknownObjectRelease();
    if (v3)
    {
      v4 = sub_2740517D8();
      v2 = v5;
    }

    else
    {
      v4 = 0;
      v2 = 0;
    }
  }

  else
  {
    v4 = 0;
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v6 = v12;
  if (v12)
  {
    v7 = [v12 ssid];
    swift_unknownObjectRelease();
    if (v7)
    {
      v8 = sub_2740517D8();
      v6 = v9;

      if (!v2)
      {
        goto LABEL_16;
      }

LABEL_11:
      if (v6)
      {
        if (v4 == v8 && v2 == v6)
        {

          v10 = 1;
        }

        else
        {
          v10 = sub_274051B08();
        }
      }

      else
      {
        v10 = 0;
      }

      goto LABEL_20;
    }

    v8 = 0;
    v6 = 0;
    if (v2)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = 0;
    if (v2)
    {
      goto LABEL_11;
    }
  }

LABEL_16:
  if (!v6)
  {
    v10 = 1;
    return v10 & 1;
  }

  v10 = 0;
LABEL_20:

  return v10 & 1;
}

id NetworkListDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkListDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2740307B4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkListDataSource(0);
  result = sub_274050E38();
  *a2 = result;
  return result;
}

uint64_t sub_2740307F4()
{
  v0 = sub_274050E28();
  __swift_allocate_value_buffer(v0, qword_280937140);
  __swift_project_value_buffer(v0, qword_280937140);
  return sub_274050E18();
}

uint64_t sub_274030888(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  swift_unknownObjectRetain();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_274030900@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v4;
  return result;
}

uint64_t sub_2740309A8@<X0>(void *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a4 = v6;
  return result;
}

uint64_t sub_274030A24(void **a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  type metadata accessor for NetworkListDataSource(0);
  sub_2740366C0(&unk_2809357B0, type metadata accessor for NetworkListDataSource, &protocol conformance descriptor for NetworkListDataSource);
  sub_274050E38();
  sub_274050E48();

  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v2;
  v5 = v3;
  return sub_274050E78();
}

uint64_t sub_274030C10(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v7 = v6;
  return sub_274050E78();
}

uint64_t sub_274030C84@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v4;
  return result;
}

uint64_t sub_274030D18(char *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_274050E78();
}

double sub_274030D84@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_274030E04(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  v3 = v2;
  return sub_274050E78();
}

char *sub_274030E84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355F0, &qword_27405A888);
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
    v10 = MEMORY[0x277D84F90];
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

void *sub_274030F88(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935608, &qword_27405A898);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

_BYTE **sub_274031010(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void *sub_274031020(void *__src, uint64_t a2, void *__dst)
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

uint64_t sub_274031068(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_2740310C4(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_2740310C4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_274031190(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_2740209D8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_274031190(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_27403129C(a5, a6);
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
    result = sub_274051A28();
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

void *sub_27403129C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2740312E8(a1, a2);
  sub_274031418(&unk_288306680);
  return v3;
}

void *sub_2740312E8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_274031504(v5, 0);
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

  result = sub_274051A28();
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
        v10 = sub_274051818();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_274031504(v10, 0);
        result = sub_2740519E8();
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

uint64_t sub_274031418(uint64_t result)
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

  result = sub_274031578(result, v11, 1, v3);
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

void *sub_274031504(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935628, &unk_27405A8B0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_274031578(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935628, &unk_27405A8B0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_27403166C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_27403169C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809350B0, qword_2740599F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_274031704()
{
  result = qword_280935780;
  if (!qword_280935780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280935780);
  }

  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2740317CC@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_2740317FC(uint64_t a1)
{
  v2 = sub_274051998();

  return sub_2740318B8(a1, v2);
}

unint64_t sub_274031840(uint64_t a1, uint64_t a2)
{
  sub_274051B38();
  sub_2740517F8();
  v4 = sub_274051B68();

  return sub_274031980(a1, a2, v4);
}

unint64_t sub_2740318B8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_274036720(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2743E37B0](v9, a1);
      sub_274020984(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_274031980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_274051B08())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void sub_274031A38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, uint64_t a6)
{
  *(swift_allocObject() + 16) = a5;
  v50 = a2;
  if (a3 == a2)
  {
    v11 = a5;

    goto LABEL_33;
  }

  v12 = *a4;
  v49 = a5;
  v54 = v12;
  v13 = v12 + 8 * a3 - 8;
  v14 = a1 - a3;
  while (2)
  {
    v53 = a3;
    v15 = *(v54 + 8 * a3);
    v16 = v13;
    v51 = v14;
    v52 = v13;
    while (1)
    {
      v17 = *v16;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v18 = [v15 title];
      if (!v18)
      {
        __break(1u);
LABEL_35:

        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
        return;
      }

      v19 = v18;
      v20 = sub_2740517D8();
      v22 = v21;

      v23 = HIBYTE(v22) & 0xF;
      if ((v22 & 0x2000000000000000) == 0)
      {
        v23 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (!v23)
      {
        v24 = [v17 title];
        if (!v24)
        {
          goto LABEL_40;
        }

        v25 = v24;
        v26 = sub_2740517D8();
        v28 = v27;

        v29 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v29 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (!v29)
        {
          goto LABEL_28;
        }
      }

      v30 = [v15 title];
      if (!v30)
      {
        goto LABEL_36;
      }

      v31 = v30;
      v32 = sub_2740517D8();
      v34 = v33;

      v35 = HIBYTE(v34) & 0xF;
      if ((v34 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (!v35)
      {
LABEL_28:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (!v54)
        {
          goto LABEL_35;
        }

        goto LABEL_29;
      }

      v36 = [v17 title];
      if (!v36)
      {
        goto LABEL_37;
      }

      v37 = v36;
      v38 = sub_2740517D8();
      v40 = v39;

      v41 = HIBYTE(v40) & 0xF;
      if ((v40 & 0x2000000000000000) == 0)
      {
        v41 = v38 & 0xFFFFFFFFFFFFLL;
      }

      if (!v41)
      {
        break;
      }

      v42 = [v15 title];
      if (!v42)
      {
        goto LABEL_38;
      }

      v43 = v42;
      sub_2740517D8();

      v44 = [v17 title];
      if (!v44)
      {
        goto LABEL_39;
      }

      v45 = v44;
      sub_2740517D8();

      sub_274020248();
      v46 = sub_274051958();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      if (v46 != -1)
      {
        goto LABEL_5;
      }

      if (!v54)
      {
        goto LABEL_35;
      }

LABEL_29:
      v47 = *v16;
      v15 = *(v16 + 8);
      *v16 = v15;
      *(v16 + 8) = v47;
      v16 -= 8;
      if (__CFADD__(v14++, 1))
      {
        goto LABEL_5;
      }
    }

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
LABEL_5:
    a3 = v53 + 1;
    v13 = v52 + 8;
    v14 = v51 - 1;
    if (v53 + 1 != v50)
    {
      continue;
    }

    break;
  }

LABEL_33:
}

uint64_t sub_274031D88(char *a1, char *a2, char *a3, char *a4, void *a5, uint64_t a6)
{
  *(swift_allocObject() + 16) = a5;
  v10 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v10 = a2 - a1;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v12 = a3 - a2;
  }

  v13 = v12 >> 3;
  if (v11 >= v12 >> 3)
  {
    if (a4 != a2 || &a2[8 * v13] <= a4)
    {
      memmove(a4, a2, 8 * v13);
    }

    v22 = a5;
    v15 = &a4[8 * v13];
    if (a3 - a2 < 8)
    {
      v23 = a2;
    }

    else
    {
      v23 = a2;
      if (a2 > a1)
      {
        v35 = a4;
LABEL_25:
        v33 = v23;
        v24 = (v23 - 8);
        a3 -= 8;
        v25 = v15;
        do
        {
          v26 = a3 + 8;
          v27 = *(v25 - 1);
          v25 -= 8;
          v28 = v24;
          v29 = *v24;
          swift_unknownObjectRetain();
          swift_unknownObjectRetain();
          v30 = sub_274034AC4(v27, v29);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v30)
          {
            v31 = v28;
            if (v26 != v33)
            {
              *a3 = *v28;
            }

            a4 = v35;
            if (v15 <= v35 || (v23 = v31, v31 <= a1))
            {
              v23 = v31;
              goto LABEL_38;
            }

            goto LABEL_25;
          }

          if (v26 != v15)
          {
            *a3 = *v25;
          }

          a3 -= 8;
          v15 = v25;
          v24 = v28;
        }

        while (v25 > v35);
        v15 = v25;
        v23 = v33;
        a4 = v35;
      }
    }
  }

  else
  {
    if (a4 != a1 || &a1[8 * v11] <= a4)
    {
      memmove(a4, a1, 8 * v11);
    }

    v14 = a5;
    v15 = &a4[8 * v11];
    if (a2 - a1 >= 8)
    {
      v16 = a2;
      while (1)
      {
        if (v16 >= a3)
        {
          goto LABEL_35;
        }

        v19 = *v16;
        v20 = *a4;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v21 = sub_274034AC4(v19, v20);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v21)
        {
          break;
        }

        v17 = a4;
        v18 = a1 == a4;
        a4 += 8;
        if (!v18)
        {
          goto LABEL_12;
        }

LABEL_13:
        a1 += 8;
        if (a4 >= v15)
        {
          goto LABEL_35;
        }
      }

      v17 = v16;
      v18 = a1 == v16;
      v16 += 8;
      if (v18)
      {
        goto LABEL_13;
      }

LABEL_12:
      *a1 = *v17;
      goto LABEL_13;
    }

LABEL_35:
    v23 = a1;
  }

LABEL_38:
  if (v23 != a4 || v23 >= &a4[(v15 - a4 + (v15 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v23, a4, 8 * ((v15 - a4) / 8));
  }

  return 1;
}

uint64_t sub_274032064(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_2740320F0(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void *sub_274032104(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_274032124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_274032124(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935620, &qword_27405A8A8);
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
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_274032258(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_274051B38();
  sub_274051B58();
  if (a3)
  {
    sub_2740517F8();
  }

  v8 = sub_274051B68();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_2740326FC(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_274051B08() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_2740323E0(uint64_t a1, char a2)
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

  sub_274051A98();
LABEL_9:
  result = sub_274051A18();
  *v2 = result;
  return result;
}

uint64_t sub_274032480(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935618, &qword_27405A8A0);
  result = sub_2740519D8();
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
      v20 = *v18;
      v19 = v18[1];
      sub_274051B38();
      sub_274051B58();
      if (v19)
      {
        sub_2740517F8();
      }

      result = sub_274051B68();
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

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
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

uint64_t sub_2740326FC(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_274032480(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      result = sub_2740328B8();
      goto LABEL_22;
    }

    sub_274032A10(v9 + 1);
  }

  v11 = *v4;
  sub_274051B38();
  sub_274051B58();
  if (a2)
  {
    sub_2740517F8();
  }

  result = sub_274051B68();
  v12 = v11 + 56;
  v13 = -1 << *(v11 + 32);
  a3 = result & ~v13;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v14 = ~v13;
    v15 = *(v11 + 48);
    do
    {
      v16 = (v15 + 16 * a3);
      v17 = v16[1];
      if (v17)
      {
        if (a2)
        {
          v18 = *v16 == v8 && v17 == a2;
          if (v18 || (result = sub_274051B08(), (result & 1) != 0))
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
            result = sub_274051B18();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v14;
    }

    while (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v19 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v20 = (*(v19 + 48) + 16 * a3);
  *v20 = v8;
  v20[1] = a2;
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(v19 + 16) = v23;
  }

  return result;
}

void *sub_2740328B8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935618, &qword_27405A8A0);
  v2 = *v0;
  v3 = sub_2740519C8();
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
        *(*(v4 + 48) + 16 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 16 * (v14 | (v8 << 6)));
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

uint64_t sub_274032A10(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935618, &qword_27405A8A0);
  result = sub_2740519D8();
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
      v19 = *v17;
      v18 = v17[1];
      sub_274051B38();
      sub_274051B58();
      if (v18)
      {

        sub_2740517F8();
      }

      result = sub_274051B68();
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

        goto LABEL_30;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v19;
      v13[1] = v18;
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
        goto LABEL_28;
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
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_274032C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E8, &qword_27405A880);
  v37 = v4;
  result = sub_274051AB8();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_274051B38();
      sub_2740517F8();
      result = sub_274051B68();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_274032F24(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_274051988() + 1) & ~v5;
    do
    {
      sub_274051B38();

      sub_2740517F8();
      v9 = sub_274051B68();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

uint64_t sub_2740330D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_274031840(a3, a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_17;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 < v18 || (a5 & 1) != 0)
    {
      sub_274032C64(v18, a5 & 1);
      v13 = sub_274031840(a3, a4);
      if ((v19 & 1) != (v22 & 1))
      {
LABEL_18:
        result = sub_274051B28();
        __break(1u);
        return result;
      }
    }

    else
    {
      v21 = v13;
      sub_27403325C();
      v13 = v21;
    }
  }

  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  v23[(v13 >> 6) + 8] |= 1 << v13;
  v26 = (v23[6] + 16 * v13);
  *v26 = a3;
  v26[1] = a4;
  v27 = (v23[7] + 16 * v13);
  *v27 = a1;
  v27[1] = a2;
  v28 = v23[2];
  v17 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (v17)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v29;
}

void *sub_27403325C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E8, &qword_27405A880);
  v2 = *v0;
  v3 = sub_274051AA8();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

void *sub_2740333D4(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = sub_274051A98();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = sub_274030F88(v3, 0);
  sub_274033468((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_274033468(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_274051A98();
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
      result = sub_274051A98();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_27402179C(&qword_280935600, &qword_2809355F8, &qword_27405A890, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355F8, &qword_27405A890);
            v9 = sub_274033618(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
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

uint64_t (*sub_274033618(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x2743E3810](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_274033698;
  }

  __break(1u);
  return result;
}

uint64_t sub_2740336B4(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_288307990, &unk_2883079B8, &unk_2883079E0);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307A08);
  }
}

void sub_274033848(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(swift_allocObject() + 16) = a5;
  v176 = a3;
  v11 = a3[1];
  if (v11 < 1)
  {
    v153 = a5;
    v13 = MEMORY[0x277D84F90];
LABEL_139:
    v173 = *a1;
    if (!*a1)
    {
      goto LABEL_190;
    }

    *(swift_allocObject() + 16) = a5;
    v175 = a5;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_141;
    }

    goto LABEL_172;
  }

  v163 = a4;
  v170 = a5;
  v12 = 0;
  v13 = MEMORY[0x277D84F90];
  v14 = &selRef_setTableViewStyle_;
  while (1)
  {
    v15 = v12 + 1;
    v168 = v13;
    if (v12 + 1 >= v11)
    {
      goto LABEL_39;
    }

    v16 = *v176;
    v17 = (v12 + 1);
    v18 = *(*v176 + 8 * v15);
    v166 = v12;
    v19 = *(*v176 + 8 * v12);
    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    LODWORD(v175) = sub_274034AC4(v18, v19);
    swift_unknownObjectRelease();
    v12 = v166;
    swift_unknownObjectRelease();
    v20 = v166 + 2;
    if (v166 + 2 >= v11)
    {
      v54 = v17;
      v22 = v166 + 2;
      goto LABEL_35;
    }

    v21 = (v16 + 8 * v166 + 16);
    v171 = v11;
    do
    {
      v22 = v20;
      v23 = *(v21 - 1);
      v24 = *v21;
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      v25 = [v24 title];
      if (!v25)
      {
        goto LABEL_181;
      }

      v26 = v25;
      v27 = sub_2740517D8();
      v29 = v28;

      v30 = HIBYTE(v29) & 0xF;
      if ((v29 & 0x2000000000000000) == 0)
      {
        v30 = v27 & 0xFFFFFFFFFFFFLL;
      }

      if (!v30)
      {
        v31 = [v23 title];
        if (!v31)
        {
          goto LABEL_186;
        }

        v32 = v31;
        v33 = sub_2740517D8();
        v35 = v34;

        v36 = HIBYTE(v35) & 0xF;
        if ((v35 & 0x2000000000000000) == 0)
        {
          v36 = v33 & 0xFFFFFFFFFFFFLL;
        }

        if (!v36)
        {
          goto LABEL_7;
        }
      }

      v37 = [v24 title];
      if (!v37)
      {
        goto LABEL_182;
      }

      v38 = v37;
      v39 = sub_2740517D8();
      v41 = v40;

      v42 = HIBYTE(v41) & 0xF;
      if ((v41 & 0x2000000000000000) == 0)
      {
        v42 = v39 & 0xFFFFFFFFFFFFLL;
      }

      if (v42)
      {
        v173 = v22;
        v43 = [v23 title];
        if (!v43)
        {
          goto LABEL_183;
        }

        v44 = v43;
        v45 = sub_2740517D8();
        v47 = v46;

        v48 = HIBYTE(v47) & 0xF;
        if ((v47 & 0x2000000000000000) == 0)
        {
          v48 = v45 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          v49 = [v24 title];
          if (!v49)
          {
            goto LABEL_188;
          }

          v50 = v49;
          sub_2740517D8();

          v51 = [v23 title];
          if (!v51)
          {
            goto LABEL_187;
          }

          v52 = v51;
          sub_2740517D8();

          sub_274020248();
          v53 = sub_274051958();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();

          v13 = v168;
          v11 = v171;
          if ((v175 & 1) == (v53 != -1))
          {
            v54 = v22 - 1;
            goto LABEL_34;
          }
        }

        else
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (v175)
          {
            v54 = v22 - 1;
            v14 = &selRef_setTableViewStyle_;
            v12 = v166;
            goto LABEL_36;
          }
        }
      }

      else
      {
LABEL_7:
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if ((v175 & 1) == 0)
        {
          v15 = v22;
          v14 = &selRef_setTableViewStyle_;
          v12 = v166;
          goto LABEL_39;
        }
      }

      v20 = v22 + 1;
      ++v21;
    }

    while (v11 != v22 + 1);
    v54 = v22;
    v22 = v11;
LABEL_34:
    v14 = &selRef_setTableViewStyle_;
    v12 = v166;
LABEL_35:
    v15 = v22;
    if (v175)
    {
LABEL_36:
      if (v22 < v12)
      {
        goto LABEL_171;
      }

      if (v12 <= v54)
      {
        v147 = 8 * v22 - 8;
        v148 = 8 * v12;
        v149 = v22;
        v150 = v12;
        do
        {
          if (v150 != --v149)
          {
            v151 = *v176;
            if (!*v176)
            {
              goto LABEL_184;
            }

            v152 = *(v151 + v148);
            *(v151 + v148) = *(v151 + v147);
            *(v151 + v147) = v152;
          }

          ++v150;
          v147 -= 8;
          v148 += 8;
        }

        while (v150 < v149);
      }

      v15 = v22;
    }

LABEL_39:
    v55 = v176[1];
    if (v15 >= v55)
    {
      goto LABEL_49;
    }

    v56 = v15;
    v74 = __OFSUB__(v15, v12);
    v57 = v15 - v12;
    if (v74)
    {
      goto LABEL_168;
    }

    if (v57 >= v163)
    {
LABEL_48:
      v15 = v56;
LABEL_49:
      if (v15 < v12)
      {
        goto LABEL_167;
      }

      goto LABEL_50;
    }

    if (__OFADD__(v12, v163))
    {
      goto LABEL_169;
    }

    if (v12 + v163 >= v55)
    {
      v58 = v176[1];
    }

    else
    {
      v58 = v12 + v163;
    }

    if (v58 < v12)
    {
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      v13 = sub_2740320F0(v13);
LABEL_141:
      v154 = *(v13 + 16);
      if (v154 < 2)
      {
LABEL_149:

        return;
      }

      while (1)
      {
        v155 = *v176;
        if (!*v176)
        {
          goto LABEL_185;
        }

        v156 = v13;
        v13 = *(v13 + 16 * v154);
        v157 = *&v156[16 * v154 + 24];
        v158 = (v155 + 8 * v13);
        v159 = (v155 + 8 * *&v156[16 * v154 + 16]);
        v160 = (v155 + 8 * v157);
        v161 = v175;
        sub_274031D88(v158, v159, v160, v173, v161, a8);
        if (v177)
        {

          goto LABEL_137;
        }

        if (v157 < v13)
        {
          goto LABEL_165;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v156 = sub_2740320F0(v156);
        }

        if (v154 - 2 >= *(v156 + 2))
        {
          goto LABEL_166;
        }

        v162 = &v156[16 * v154];
        *v162 = v13;
        v162[1] = v157;
        sub_274032064(v154 - 1);
        v13 = v156;
        v154 = *(v156 + 2);
        if (v154 <= 1)
        {
          goto LABEL_149;
        }
      }
    }

    if (v56 == v58)
    {
      goto LABEL_48;
    }

    v111 = *v176;
    v112 = *v176 + 8 * v56 - 8;
    v167 = v12;
    v113 = v12 - v56;
    v169 = v58;
    while (2)
    {
      v175 = v56;
      v114 = *(v111 + 8 * v56);
      v172 = v113;
      v173 = v112;
      while (1)
      {
        v115 = *v112;
        swift_unknownObjectRetain();
        swift_unknownObjectRetain();
        v116 = [v114 v14[112]];
        if (!v116)
        {
          __break(1u);
LABEL_174:

          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:

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
LABEL_190:

          __break(1u);
          return;
        }

        v117 = v116;
        v118 = sub_2740517D8();
        v120 = v119;

        v121 = HIBYTE(v120) & 0xF;
        if ((v120 & 0x2000000000000000) == 0)
        {
          v121 = v118 & 0xFFFFFFFFFFFFLL;
        }

        if (!v121)
        {
          v122 = [v115 v14[112]];
          if (!v122)
          {
            goto LABEL_179;
          }

          v123 = v122;
          v124 = sub_2740517D8();
          v126 = v125;

          v127 = HIBYTE(v126) & 0xF;
          if ((v126 & 0x2000000000000000) == 0)
          {
            v127 = v124 & 0xFFFFFFFFFFFFLL;
          }

          if (!v127)
          {
            goto LABEL_124;
          }
        }

        v128 = [v114 v14[112]];
        if (!v128)
        {
          goto LABEL_175;
        }

        v129 = v128;
        v130 = sub_2740517D8();
        v132 = v131;

        v133 = HIBYTE(v132) & 0xF;
        if ((v132 & 0x2000000000000000) == 0)
        {
          v133 = v130 & 0xFFFFFFFFFFFFLL;
        }

        if (!v133)
        {
LABEL_124:
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          if (!v111)
          {
            goto LABEL_174;
          }

          goto LABEL_125;
        }

        v134 = [v115 v14[112]];
        if (!v134)
        {
          goto LABEL_176;
        }

        v135 = v134;
        v136 = sub_2740517D8();
        v138 = v137;

        v139 = HIBYTE(v138) & 0xF;
        if ((v138 & 0x2000000000000000) == 0)
        {
          v139 = v136 & 0xFFFFFFFFFFFFLL;
        }

        if (!v139)
        {
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          goto LABEL_101;
        }

        v140 = [v114 v14[112]];
        if (!v140)
        {
          goto LABEL_178;
        }

        v141 = v140;
        sub_2740517D8();

        v142 = [v115 v14[112]];
        if (!v142)
        {
          goto LABEL_177;
        }

        v143 = v142;
        sub_2740517D8();

        sub_274020248();
        v144 = sub_274051958();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        if (v144 != -1)
        {
          break;
        }

        if (!v111)
        {
          goto LABEL_174;
        }

LABEL_125:
        v145 = *v112;
        v114 = *(v112 + 8);
        *v112 = v114;
        *(v112 + 8) = v145;
        v112 -= 8;
        v146 = __CFADD__(v113++, 1);
        v14 = &selRef_setTableViewStyle_;
        if (v146)
        {
          goto LABEL_101;
        }
      }

      v14 = &selRef_setTableViewStyle_;
LABEL_101:
      v56 = v175 + 1;
      v112 = (v173 + 8);
      v113 = v172 - 1;
      if (v175 + 1 != v169)
      {
        continue;
      }

      break;
    }

    v15 = v169;
    v12 = v167;
    v13 = v168;
    if (v169 < v167)
    {
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
      goto LABEL_170;
    }

LABEL_50:
    v175 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v13 = sub_274030E84(0, *(v13 + 16) + 1, 1, v13);
    }

    v60 = *(v13 + 16);
    v59 = *(v13 + 24);
    v61 = v60 + 1;
    if (v60 >= v59 >> 1)
    {
      v13 = sub_274030E84((v59 > 1), v60 + 1, 1, v13);
    }

    *(v13 + 16) = v61;
    v62 = v13 + 16 * v60;
    *(v62 + 32) = v12;
    *(v62 + 40) = v175;
    v173 = *a1;
    if (!*a1)
    {
      goto LABEL_189;
    }

    if (v60)
    {
      break;
    }

LABEL_3:
    v12 = v175;
    v11 = v176[1];
    v14 = &selRef_setTableViewStyle_;
    if (v175 >= v11)
    {
      goto LABEL_139;
    }
  }

  while (1)
  {
    v63 = v61 - 1;
    if (v61 >= 4)
    {
      v68 = v13 + 32 + 16 * v61;
      v69 = *(v68 - 64);
      v70 = *(v68 - 56);
      v74 = __OFSUB__(v70, v69);
      v71 = v70 - v69;
      if (v74)
      {
        goto LABEL_154;
      }

      v73 = *(v68 - 48);
      v72 = *(v68 - 40);
      v74 = __OFSUB__(v72, v73);
      v66 = v72 - v73;
      v67 = v74;
      if (v74)
      {
        goto LABEL_155;
      }

      v75 = (v13 + 16 * v61);
      v77 = *v75;
      v76 = v75[1];
      v74 = __OFSUB__(v76, v77);
      v78 = v76 - v77;
      if (v74)
      {
        goto LABEL_157;
      }

      v74 = __OFADD__(v66, v78);
      v79 = v66 + v78;
      if (v74)
      {
        goto LABEL_160;
      }

      if (v79 >= v71)
      {
        v97 = (v13 + 32 + 16 * v63);
        v99 = *v97;
        v98 = v97[1];
        v74 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v74)
        {
          goto LABEL_164;
        }

        if (v66 < v100)
        {
          v63 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_69;
    }

    if (v61 == 3)
    {
      v64 = *(v13 + 32);
      v65 = *(v13 + 40);
      v74 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      v67 = v74;
LABEL_69:
      if (v67)
      {
        goto LABEL_156;
      }

      v80 = (v13 + 16 * v61);
      v82 = *v80;
      v81 = v80[1];
      v83 = __OFSUB__(v81, v82);
      v84 = v81 - v82;
      v85 = v83;
      if (v83)
      {
        goto LABEL_159;
      }

      v86 = (v13 + 32 + 16 * v63);
      v88 = *v86;
      v87 = v86[1];
      v74 = __OFSUB__(v87, v88);
      v89 = v87 - v88;
      if (v74)
      {
        goto LABEL_162;
      }

      if (__OFADD__(v84, v89))
      {
        goto LABEL_163;
      }

      if (v84 + v89 >= v66)
      {
        if (v66 < v89)
        {
          v63 = v61 - 2;
        }

        goto LABEL_90;
      }

      goto LABEL_83;
    }

    v90 = (v13 + 16 * v61);
    v92 = *v90;
    v91 = v90[1];
    v74 = __OFSUB__(v91, v92);
    v84 = v91 - v92;
    v85 = v74;
LABEL_83:
    if (v85)
    {
      goto LABEL_158;
    }

    v93 = v13 + 16 * v63;
    v95 = *(v93 + 32);
    v94 = *(v93 + 40);
    v74 = __OFSUB__(v94, v95);
    v96 = v94 - v95;
    if (v74)
    {
      goto LABEL_161;
    }

    if (v96 < v84)
    {
      goto LABEL_3;
    }

LABEL_90:
    v101 = v63 - 1;
    if (v63 - 1 >= v61)
    {
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      __break(1u);
LABEL_154:
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
      goto LABEL_167;
    }

    v102 = *v176;
    if (!*v176)
    {
      goto LABEL_180;
    }

    v103 = v13;
    v104 = *(v13 + 32 + 16 * v101);
    v105 = *(v13 + 32 + 16 * v63);
    v13 = *(v13 + 32 + 16 * v63 + 8);
    v106 = (v102 + 8 * v104);
    v107 = (v102 + 8 * v105);
    v108 = (v102 + 8 * v13);
    v109 = v170;
    sub_274031D88(v106, v107, v108, v173, v109, a8);
    if (v177)
    {
      break;
    }

    if (v13 < v104)
    {
      goto LABEL_152;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_2740320F0(v103);
    }

    if (v101 >= *(v103 + 2))
    {
      goto LABEL_153;
    }

    v110 = &v103[16 * v101];
    *(v110 + 4) = v104;
    *(v110 + 5) = v13;
    sub_274032064(v63);
    v13 = v103;
    v61 = *(v103 + 2);
    if (v61 <= 1)
    {
      goto LABEL_3;
    }
  }

LABEL_137:
}

uint64_t sub_274034474(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_2883078A0, &unk_2883078C8, &unk_2883078F0);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307918);
  }
}

uint64_t sub_274034608(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_2883077B0, &unk_2883077D8, &unk_288307800);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307828);
  }
}

uint64_t sub_27403479C(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_2883076C0, &unk_2883076E8, &unk_288307710);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307738);
  }
}

uint64_t sub_274034930(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_2883075D0, &unk_2883075F8, &unk_288307620);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307648);
  }
}

uint64_t sub_274034AC4(void *a1, void *a2)
{
  result = [a1 title];
  if (!result)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = result;
  v6 = sub_2740517D8();
  v8 = v7;

  v9 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v9 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    result = [a2 title];
    if (!result)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v10 = result;
    v11 = sub_2740517D8();
    v13 = v12;

    v14 = HIBYTE(v13) & 0xF;
    if ((v13 & 0x2000000000000000) == 0)
    {
      v14 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14)
    {
      return 1;
    }
  }

  result = [a1 title];
  if (!result)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = result;
  v16 = sub_2740517D8();
  v18 = v17;

  v19 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
    return 1;
  }

  result = [a2 title];
  if (!result)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v20 = result;
  v21 = sub_2740517D8();
  v23 = v22;

  v24 = HIBYTE(v23) & 0xF;
  if ((v23 & 0x2000000000000000) == 0)
  {
    v24 = v21 & 0xFFFFFFFFFFFFLL;
  }

  if (v24)
  {
    result = [a1 title];
    if (result)
    {
      v25 = result;
      sub_2740517D8();

      result = [a2 title];
      if (result)
      {
        v26 = result;
        sub_2740517D8();

        sub_274020248();
        v27 = sub_274051958();

        return v27 == -1;
      }

      goto LABEL_28;
    }

LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  return 0;
}

uint64_t sub_274034CE8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
  v4 = sub_2740367FC();
  result = MEMORY[0x2743E36B0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_274032258(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_274034DA0(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_288307490, &unk_2883074B8, &unk_2883074E0);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307508);
  }
}

uint64_t sub_274034F34(uint64_t *a1, void *a2)
{
  *(swift_allocObject() + 16) = a2;
  v4 = a1[1];
  v5 = a2;
  result = sub_274051AF8();
  if (result < v4)
  {
    if (v4 >= -1)
    {
      v7 = result;
      v8 = v4 / 2;
      if (v4 <= 1)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809355D0, &qword_27405A870);
        v9 = sub_274051888();
        *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = v8;
      }

      v11[0] = ((v9 & 0xFFFFFFFFFFFFFF8) + 32);
      v11[1] = v8;
      v10 = v5;
      sub_274033848(v11, v12, a1, v7, v10, &unk_2883073A0, &unk_2883073C8, &unk_2883073F0);

      *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v4 < 0)
  {
    goto LABEL_12;
  }

  if (v4)
  {
    v5 = v5;
    sub_274031A38(0, v4, 1, a1, v5, &unk_288307418);
  }
}

uint64_t sub_2740350C8(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void *, id))
{
  *(swift_allocObject() + 16) = a2;
  v7 = *a1;
  v8 = a2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v7;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v7 = sub_2740336A0(v7);
    *a1 = v7;
  }

  v10 = *(v7 + 16);
  v13[0] = v7 + 32;
  v13[1] = v10;
  v11 = v8;
  a4(v13, v11);

  sub_274051A48();
}

uint64_t type metadata accessor for NetworkListDataSource(uint64_t a1)
{
  result = qword_280935588;
  if (!qword_280935588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_274035210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809355E8, &qword_27405A880);
    v3 = sub_274051AC8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_274031840(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_274035324(void *a1)
{
  v2 = sub_2740516B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2740516D8();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v37 = sub_274035210(MEMORY[0x277D84F90]);
  if (a1)
  {
    v10 = [a1 ssid];
    if (v10)
    {
      v11 = v10;
      v12 = v9;
      v13 = sub_2740517D8();
      v15 = v14;

      v16 = v15;
      v10 = v13;
      v9 = v12;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
  }

  v16 = 0;
LABEL_6:
  sub_27402DFCC(v10, v16, 0x4E6B726F7774656ELL, 0xEB00000000656D61);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v17 = sub_274050E28();
  __swift_project_value_buffer(v17, qword_280937140);
  swift_unknownObjectRetain();
  v18 = sub_274050E08();
  v19 = sub_2740518C8();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v18, v19))
  {
    v33 = v3;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    aBlock[0] = v21;
    *v20 = 136315394;
    *(v20 + 4) = sub_2740310C4(0xD000000000000018, 0x8000000274066930, aBlock);
    *(v20 + 12) = 2080;
    if (a1 && (v22 = [a1 ssid]) != 0)
    {
      v23 = v22;
      v24 = sub_2740517D8();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0xE000000000000000;
    }

    v27 = sub_2740310C4(v24, v26, aBlock);

    *(v20 + 14) = v27;
    _os_log_impl(&dword_273FB9000, v18, v19, "%s: posting tap PH notification for : %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2743E44F0](v21, -1, -1);
    MEMORY[0x2743E44F0](v20, -1, -1);

    v3 = v33;
    v9 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  sub_274031704();
  v28 = sub_2740518F8();
  v29 = v37;
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  aBlock[4] = sub_274036708;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_272;
  v31 = _Block_copy(aBlock);

  sub_2740516C8();
  aBlock[0] = v9;
  sub_2740366C0(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27402179C(&qword_2809354C0, &unk_280935790, &qword_27405A8C0, MEMORY[0x277D83970]);
  sub_274051978();
  MEMORY[0x2743E3710](0, v8, v5, v31);
  _Block_release(v31);

  (*(v3 + 8))(v5, v2);
  return (*(v34 + 8))(v8, v35);
}

void sub_27403583C(uint64_t a1)
{
  sub_2740364A4(319, &qword_280935598, &unk_280934FC0, &qword_27405A4A0);
  if (v1 <= 0x3F)
  {
    sub_2740364A4(319, &qword_2809355A0, &qword_280935528, &qword_27405A4A8);
    if (v2 <= 0x3F)
    {
      sub_274036458(319, &qword_2809355A8, &type metadata for NetworkListMode);
      if (v3 <= 0x3F)
      {
        sub_2740364A4(319, &unk_2809355B0, &qword_280935540, &qword_27405A4B0);
        if (v4 <= 0x3F)
        {
          sub_274036458(319, &qword_280935770, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_2740364A4(319, &unk_2809355C0, &unk_280935578, &qword_27405A4B8);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_274036458(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_274050E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2740364A4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_274050E88();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_274036540(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t sub_274036580@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  a2[1] = v5;
  return result;
}

uint64_t sub_2740365C4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_274036654(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_2740366C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *sub_274036710(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_2740367FC()
{
  result = qword_280935610;
  if (!qword_280935610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935578, &qword_27405A4B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935610);
  }

  return result;
}

uint64_t sub_27403691C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v5 != v5)
  {
    v2 = v0 + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler;
    result = swift_beginAccess();
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);

      v3(v5);
      return sub_273FBD2BC(v3, v4);
    }
  }

  return result;
}

uint64_t sub_274036A40()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v3 == 1 || (swift_getKeyPath(), swift_getKeyPath(), sub_274050E68(), , result = , !v3))
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v2 = v0;
    sub_274050E78();
    return sub_27403691C();
  }

  return result;
}

uint64_t sub_274036C14(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v3;
}

uint64_t sub_274036C80()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_274036CC4(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274036D74@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C138;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274036E14(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740368C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274036F7C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C10C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_27403701C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740368C0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274037184@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C0E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274037224(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_27403C0A8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_27403738C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740365BC;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_27403742C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365B4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274037594()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740375D8(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274037688()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_2740376CC(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403777C@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_27403C07C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_27403781C(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740365C4;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_273FBD2BC(v8, v9);
}

uint64_t sub_274037904(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_27403798C(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

uint64_t sub_274037A50()
{
  v1 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_274037A94(char a1)
{
  v3 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_274037B44(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v8;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2740310C4(0xD000000000000025, 0x80000002740669C0, aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set networkModificationRestriction: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    v2 = v27;
    MEMORY[0x2743E44F0](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x2743E44F0](v21, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1 & 1;
  aBlock[4] = sub_27403B0E0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_0;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274037F5C(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v8;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2740310C4(0xD000000000000023, 0x80000002740669F0, aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set powerModificationRestriction: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    v2 = v27;
    MEMORY[0x2743E44F0](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x2743E44F0](v21, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1 & 1;
  aBlock[4] = sub_27403B1E4;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_9;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274038374(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v8;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2740310C4(0xD000000000000011, 0x8000000274066A20, aBlock);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set PowerState: %lu", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    v2 = v27;
    MEMORY[0x2743E44F0](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x2743E44F0](v21, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  aBlock[4] = sub_27403B214;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_15;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_27403872C(void *a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = a1;
  sub_274050E78();
  return sub_274036A40();
}

uint64_t sub_2740387F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v8;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2740310C4(0xD000000000000016, 0x8000000274066A40, aBlock);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set AskToJoinOption: %ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    v2 = v27;
    MEMORY[0x2743E44F0](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x2743E44F0](v21, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  aBlock[4] = sub_27403B21C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_21;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274038C04(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v8;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2740310C4(0xD00000000000001FLL, 0x8000000274066A60, aBlock);
    *(v16 + 12) = 2048;
    *(v16 + 14) = a1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set autoInstantHotspotOption: %ld", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    v2 = v27;
    MEMORY[0x2743E44F0](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x2743E44F0](v21, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1;
  aBlock[4] = sub_27403B248;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_27_0;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274038FBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  return sub_274050E78();
}

uint64_t sub_27403944C(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000014, 0x8000000274066A80, v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set isChinaDevice status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_27403961C(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000017, 0x8000000274066AA0, v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set autoUnlockEnabled status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_2740397EC(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000018, 0x8000000274066AC0, v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set autoUnlockEnabled status: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_2740399BC(char a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2740516D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v12 = sub_274050E28();
  __swift_project_value_buffer(v12, qword_280937140);
  v13 = sub_274050E08();
  v14 = sub_2740518C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v28 = v5;
    v16 = v15;
    v17 = swift_slowAlloc();
    v27 = v2;
    v18 = v8;
    v19 = v17;
    aBlock[0] = v17;
    *v16 = 136315394;
    *(v16 + 4) = sub_2740310C4(0xD000000000000012, 0x8000000274066AE0, aBlock);
    *(v16 + 12) = 1024;
    *(v16 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v13, v14, "%s: set WAPIEnabled status: %{BOOL}d", v16, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v19);
    v20 = v19;
    v8 = v18;
    v2 = v27;
    MEMORY[0x2743E44F0](v20, -1, -1);
    v21 = v16;
    v5 = v28;
    MEMORY[0x2743E44F0](v21, -1, -1);
  }

  sub_274031704();
  v22 = sub_2740518F8();
  v23 = swift_allocObject();
  *(v23 + 16) = v2;
  *(v23 + 24) = a1 & 1;
  aBlock[4] = sub_27403B274;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_274029168;
  aBlock[3] = &block_descriptor_33_0;
  v24 = _Block_copy(aBlock);
  v25 = v2;

  sub_2740516C8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_27403B128();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
  sub_27403B180();
  sub_274051978();
  MEMORY[0x2743E3710](0, v11, v7, v24);
  _Block_release(v24);

  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_274039D80(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = a1;
  return sub_274050E78();
}

uint64_t sub_274039E40(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11[0] = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD00000000000001ALL, 0x8000000274066B00, v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set UserAutoJoinEnabled: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  v9 = OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled;
  result = swift_beginAccess();
  *(v2 + v9) = a1 & 1;
  return result;
}

uint64_t sub_27403A010(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000016, 0x8000000274066B20, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set DataUsageHidden: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1 & 1;
  v9 = v2;
  return sub_274050E78();
}

uint64_t sub_27403A1FC(char a1)
{
  v2 = v1;
  if (qword_280934D78 != -1)
  {
    swift_once();
  }

  v4 = sub_274050E28();
  __swift_project_value_buffer(v4, qword_280937140);
  v5 = sub_274050E08();
  v6 = sub_2740518C8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v11 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_2740310C4(0xD000000000000017, 0x8000000274066B40, &v11);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&dword_273FB9000, v5, v6, "%s: set WAPISwitchHidden: %{BOOL}d", v7, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x2743E44F0](v8, -1, -1);
    MEMORY[0x2743E44F0](v7, -1, -1);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  v12 = a1 & 1;
  v9 = v2;
  return sub_274050E78();
}

uint64_t sub_27403A41C(uint64_t a1, uint64_t a2, void *a3, void (*a4)(uint64_t, uint64_t), uint64_t (*a5)(uint64_t, uint64_t))
{
  v10 = (v5 + *a3);
  swift_beginAccess();
  v11 = *v10;
  v12 = v10[1];
  *v10 = a1;
  v10[1] = a2;
  a4(a1, a2);
  return a5(v11, v12);
}

id NetworkListConfigDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NetworkListConfigDataSource.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935640, &qword_27405A958);
  v35 = *(v1 - 8);
  v36 = v1;
  MEMORY[0x28223BE20](v1);
  v34 = &v32 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935648, &qword_27405A960);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935650, &qword_27405A968);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935740, &qword_27405A970);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - v12;
  v14 = OBJC_IVAR___WFNetworkListConfigDataSource__powerOn;
  LOBYTE(v38) = 0;
  sub_274050E58();
  v15 = *(v11 + 32);
  v15(&v0[v14], v13, v10);
  v16 = OBJC_IVAR___WFNetworkListConfigDataSource__powerState;
  v38 = 2;
  type metadata accessor for WFPowerState(0);
  sub_274050E58();
  (*(v7 + 32))(&v0[v16], v9, v6);
  v17 = OBJC_IVAR___WFNetworkListConfigDataSource__dataUsageHidden;
  LOBYTE(v38) = 1;
  sub_274050E58();
  v15(&v0[v17], v13, v10);
  v18 = OBJC_IVAR___WFNetworkListConfigDataSource__WAPISwitchHidden;
  LOBYTE(v38) = 1;
  sub_274050E58();
  v15(&v0[v18], v13, v10);
  v19 = OBJC_IVAR___WFNetworkListConfigDataSource__WAPIEnabled;
  LOBYTE(v38) = 1;
  sub_274050E58();
  v15(&v0[v19], v13, v10);
  v20 = OBJC_IVAR___WFNetworkListConfigDataSource__askToJoinMode;
  v38 = 1;
  type metadata accessor for WFAskToJoinMode(0);
  sub_274050E58();
  (*(v32 + 32))(&v0[v20], v5, v33);
  v21 = OBJC_IVAR___WFNetworkListConfigDataSource__autoInstantHotspotOption;
  v38 = 2;
  type metadata accessor for WFAutoInstantHotspotJoinOption(0);
  v22 = v34;
  sub_274050E58();
  (*(v35 + 32))(&v0[v21], v22, v36);
  v23 = OBJC_IVAR___WFNetworkListConfigDataSource__networkModificationRestrictionOn;
  LOBYTE(v38) = 0;
  sub_274050E58();
  v15(&v0[v23], v13, v10);
  v24 = OBJC_IVAR___WFNetworkListConfigDataSource__powerModificationRestrictionOn;
  LOBYTE(v38) = 0;
  sub_274050E58();
  v15(&v0[v24], v13, v10);
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_userAutoJoinEnabled] = 1;
  v25 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_autoInstantHotspotTapHandler];
  *v25 = 0;
  v25[1] = 0;
  v26 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_askToJoinModeTapHandler];
  *v26 = 0;
  v26[1] = 0;
  v27 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_WAPISwitchHandler];
  *v27 = 0;
  v27[1] = 0;
  v28 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_dataUsageTapHandler];
  *v28 = 0;
  v28[1] = 0;
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_isChinaDevice] = 0;
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_isCellularDevice] = 0;
  v29 = &v0[OBJC_IVAR___WFNetworkListConfigDataSource_powerToggleHandler];
  *v29 = 0;
  v29[1] = 0;
  v0[OBJC_IVAR___WFNetworkListConfigDataSource_autoUnlockEnabled] = 0;
  v30 = type metadata accessor for NetworkListConfigDataSource(0);
  v37.receiver = v0;
  v37.super_class = v30;
  return objc_msgSendSuper2(&v37, sel_init);
}

id NetworkListConfigDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NetworkListConfigDataSource(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_27403AD50@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NetworkListConfigDataSource(0);
  result = sub_274050E38();
  *a2 = result;
  return result;
}

uint64_t sub_27403ADCC(char *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_274050E78();
  return sub_27403691C();
}

uint64_t sub_27403AE5C(uint64_t *a1, void **a2)
{
  v2 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v2;
  sub_274050E78();
  return sub_274036A40();
}

uint64_t sub_27403AF78(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;
  return sub_274050E78();
}

uint64_t sub_27403B020@<X0>(_BYTE *a4@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a4 = v6;
  return result;
}

uint64_t sub_27403B0B0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_27403B128()
{
  result = qword_2809354B0;
  if (!qword_2809354B0)
  {
    sub_2740516B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809354B0);
  }

  return result;
}

unint64_t sub_27403B180()
{
  result = qword_2809354C0;
  if (!qword_2809354C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935790, &qword_27405A8C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809354C0);
  }

  return result;
}

uint64_t type metadata accessor for NetworkListConfigDataSource(uint64_t a1)
{
  result = qword_280935690;
  if (!qword_280935690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t keypath_get_42Tm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_set_43Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

void sub_27403B39C(uint64_t a1)
{
  sub_27403BFC0();
  if (v1 <= 0x3F)
  {
    sub_27403C010(319, &qword_2809356A0, type metadata accessor for WFPowerState);
    if (v2 <= 0x3F)
    {
      sub_27403C010(319, &qword_2809356A8, type metadata accessor for WFAskToJoinMode);
      if (v3 <= 0x3F)
      {
        sub_27403C010(319, &qword_2809356B0, type metadata accessor for WFAutoInstantHotspotJoinOption);
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_27403BFC0()
{
  if (!qword_280935770)
  {
    v0 = sub_274050E88();
    if (!v1)
    {
      atomic_store(v0, &qword_280935770);
    }
  }
}

void sub_27403C010(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_274050E88();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_27403C0A8(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_27403C1BC(uint64_t a1)
{
  v2 = sub_2740512F8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356B8, &unk_27405B830);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935A40, &unk_27405ACC0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v29 - v15;
  if (a1)
  {
    if (a1 == 1)
    {
      v17 = v14;
      sub_274050EF8();
      sub_2740512E8();
      sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830, MEMORY[0x277CDD7F8]);
      sub_27403C650();
      sub_274051498();
      (*(v3 + 8))(v5, v2);
      (*(v7 + 8))(v9, v6);
      v18 = &v16[*(v17 + 36)];
      v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935270, &qword_274059CC0) + 28);
      v20 = *MEMORY[0x277CDF438];
      v21 = sub_274050ED8();
      (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
      *v18 = swift_getKeyPath();
      sub_273FBC6B8(v16, v13);
      sub_27403C7EC();
      v22 = sub_2740515D8();
      sub_273FBC728(v16);
      return v22;
    }

    if (a1 != 2)
    {
      v29 = 0;
      v30 = 0xE000000000000000;
      sub_2740519F8();
      MEMORY[0x2743E3610](0xD000000000000018, 0x8000000274066DD0);
      v34 = a1;
      type metadata accessor for WFNetworkState(0);
      sub_274051A78();
      result = sub_274051A88();
      __break(1u);
      return result;
    }

    v24 = sub_274051558();
    v25 = sub_274051518();
    KeyPath = swift_getKeyPath();
    sub_274051388();
    v27 = sub_274051398();

    v28 = swift_getKeyPath();
    v29 = v24;
    v30 = KeyPath;
    v31 = v25;
    v32 = v28;
    v33 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935A00, &unk_27405AD60);
    sub_27403C98C();
  }

  else
  {
    v29 = 0;
    LOBYTE(v30) = 1;
  }

  return sub_2740515D8();
}

uint64_t sub_27403C624@<X0>(uint64_t *a1@<X8>)
{
  result = sub_27403C1BC(*v1);
  *a1 = result;
  return result;
}

unint64_t sub_27403C650()
{
  result = qword_280935A60;
  if (!qword_280935A60)
  {
    sub_2740512F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280935A60);
  }

  return result;
}

uint64_t sub_27403C6A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2740510B8();
  *a1 = result;
  return result;
}

uint64_t sub_27403C724(uint64_t a1)
{
  v2 = sub_274050ED8();
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v4, a1);
  return MEMORY[0x2743E2E50](v4);
}

unint64_t sub_27403C7EC()
{
  result = qword_2809356C8;
  if (!qword_2809356C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280935A40, &unk_27405ACC0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2809356B8, &unk_27405B830);
    sub_2740512F8();
    sub_27402179C(&qword_2809356C0, &qword_2809356B8, &unk_27405B830, MEMORY[0x277CDD7F8]);
    sub_27403C650();
    swift_getOpaqueTypeConformance2();
    sub_27402179C(&qword_2809356D0, &qword_280935270, &qword_274059CC0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809356C8);
  }

  return result;
}

uint64_t sub_27403C934@<X0>(uint64_t *a1@<X8>)
{
  result = sub_274051058();
  *a1 = result;
  return result;
}

unint64_t sub_27403C98C()
{
  result = qword_2809356D8;
  if (!qword_2809356D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_280935A00, &unk_27405AD60);
    sub_274020AFC();
    sub_27402179C(&unk_280935A20, &qword_280935230, &qword_274059C98, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2809356D8);
  }

  return result;
}

id sub_27403CA44()
{
  v1 = OBJC_IVAR___WFNetworkListViewController_networkListDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27403CA98(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkListViewController_networkListDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_27403CB50(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id sub_27403CBAC()
{
  v1 = OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_27403CC00(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_27403CCB8()
{
  v1 = v0;
  v2 = type metadata accessor for NetworkList(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v45[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v3);
  v7 = &v45[-v6];
  v8 = type metadata accessor for WFNetworkListViewController();
  v46.receiver = v1;
  v46.super_class = v8;
  objc_msgSendSuper2(&v46, sel_viewDidLoad);
  v9 = OBJC_IVAR___WFNetworkListViewController_networkListDataSource;
  swift_beginAccess();
  v10 = *&v1[v9];
  v11 = OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource;
  swift_beginAccess();
  v12 = *&v1[v11];
  v13 = objc_opt_self();
  v14 = v10;
  v15 = v12;
  v16 = [v13 defaultCenter];
  if (qword_280934D98 != -1)
  {
    swift_once();
  }

  v17 = qword_280937218;
  sub_274051938();
  v18 = &v7[*(v2 + 28)];
  *v18 = 0x4C20664F20706F54;
  *(v18 + 1) = 0xEB00000000747369;
  type metadata accessor for NetworkListDataSource(0);
  sub_27403D49C(&unk_2809357B0, type metadata accessor for NetworkListDataSource, &protocol conformance descriptor for NetworkListDataSource);
  v19 = v14;
  *v7 = sub_274050F88();
  *(v7 + 1) = v20;
  type metadata accessor for NetworkListConfigDataSource(0);
  sub_27403D49C(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource, &protocol conformance descriptor for NetworkListConfigDataSource);
  v21 = sub_274050F88();
  v23 = v22;

  *(v7 + 2) = v21;
  *(v7 + 3) = v23;
  sub_27403D4E4(v7, v5);
  v24 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809356F8, &unk_27405AD80));
  v25 = sub_2740511E8();
  v26 = *&v1[OBJC_IVAR___WFNetworkListViewController_hostingController];
  *&v1[OBJC_IVAR___WFNetworkListViewController_hostingController] = v25;
  v27 = v25;

  v28 = v27;
  [v1 addChildViewController_];
  v29 = [v28 view];
  if (!v29)
  {
    __break(1u);
    goto LABEL_10;
  }

  v30 = v29;
  v31 = [v1 view];
  if (!v31)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v32 = v31;
  [v31 bounds];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  [v30 setFrame_];
  v41 = [v28 view];

  if (!v41)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  [v41 setAutoresizingMask_];

  v42 = [v1 view];
  if (!v42)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v43 = v42;
  v44 = [v28 view];

  if (v44)
  {
    [v43 addSubview_];

    [v28 didMoveToParentViewController_];
    sub_27403D548(v7);
    return;
  }

LABEL_13:
  __break(1u);
}

id WFNetworkListViewController.__allocating_init(networkListDataSource:networkListConfigDataSource:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___WFNetworkListViewController_hostingController] = 0;
  *&v5[OBJC_IVAR___WFNetworkListViewController_networkListDataSource] = a1;
  *&v5[OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_initWithNibName_bundle_, 0, 0);
}

id WFNetworkListViewController.init(networkListDataSource:networkListConfigDataSource:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___WFNetworkListViewController_hostingController] = 0;
  *&v2[OBJC_IVAR___WFNetworkListViewController_networkListDataSource] = a1;
  *&v2[OBJC_IVAR___WFNetworkListViewController_networkConfigDataSource] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for WFNetworkListViewController();
  return objc_msgSendSuper2(&v4, sel_initWithNibName_bundle_, 0, 0);
}

id WFNetworkListViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_2740517C8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id WFNetworkListViewController.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFNetworkListViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_27403D49C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27403D4E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkList(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_27403D548(uint64_t a1)
{
  v2 = type metadata accessor for NetworkList(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t sub_27403D76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_2740517C8();
  v5 = objc_opt_self();
  v6 = [v5 bundleWithIdentifier_];

  if (!v6)
  {
    v6 = [v5 mainBundle];
  }

  v7 = sub_274050D68();

  return v7;
}

_BYTE *static WFNetworkRowConfigModel.modelFrom(rowConfig:)(void *a1)
{
  if ([a1 network])
  {
    swift_unknownObjectRelease();
    v3 = [objc_allocWithZone(v1) init];
    sub_27403DF48([a1 network]);
    swift_getKeyPath();
    swift_getKeyPath();
    v4 = v3;
    sub_274050E78();
    v5 = [a1 subtitle];
    if (v5)
    {
      v6 = v5;
      v7 = sub_2740517D8();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    sub_27403E520(v7, v9);
    swift_getKeyPath();
    swift_getKeyPath();
    v15 = v4;
    sub_274050E78();
    sub_27403EB84([a1 connectionState]);
    swift_getKeyPath();
    swift_getKeyPath();
    v16 = v15;
    sub_274050E78();
    sub_27403F0F0([a1 problematicConnection]);
    swift_getKeyPath();
    swift_getKeyPath();
    v17 = v16;
    sub_274050E78();
    sub_27403F65C([a1 signalBars]);
    swift_getKeyPath();
    swift_getKeyPath();
    v14 = v17;
    sub_274050E78();
    v18 = [a1 context];
    v19 = OBJC_IVAR___WFNetworkRowConfig_context;
    swift_beginAccess();
    *&v14[v19] = v18;
    LOBYTE(v18) = [a1 hideConnectionState];
    v20 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
    swift_beginAccess();
    v14[v20] = v18;
    LOBYTE(v18) = [a1 showInfoButton];
    v21 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
    swift_beginAccess();
    v14[v21] = v18;
    v22 = [a1 infoButtonHandler];
    if (v22)
    {
      v23 = swift_allocObject();
      *(v23 + 16) = v22;
      v22 = sub_274040D58;
    }

    else
    {
      v23 = 0;
    }

    v24 = &v14[OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler];
    swift_beginAccess();
    v25 = *v24;
    v26 = v24[1];
    *v24 = v22;
    v24[1] = v23;
    sub_2740368EC(v25, v26);
  }

  else
  {
    if (qword_280934D78 != -1)
    {
      swift_once();
    }

    v10 = sub_274050E28();
    __swift_project_value_buffer(v10, qword_280937140);
    v11 = sub_274050E08();
    v12 = sub_2740518D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_273FB9000, v11, v12, "nil network passed in when trying to construct network model.", v13, 2u);
      MEMORY[0x2743E44F0](v13, -1, -1);
    }

    return 0;
  }

  return v14;
}

_BYTE *static WFNetworkRowConfigModel.knownNetworkRowConfig()()
{
  v1 = [objc_allocWithZone(v0) init];
  v2 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  v1[v2] = 1;
  v3 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  v1[v3] = 1;
  v4 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  *&v1[v4] = 1;
  return v1;
}

uint64_t sub_27403DE54()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

void sub_27403DF48(id a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v24 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_2740516D8();
  v7 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  v10 = aBlock[0];
  if (aBlock[0])
  {
    v11 = [aBlock[0] ssid];
    swift_unknownObjectRelease();
    if (v11)
    {
      v12 = sub_2740517D8();
      v10 = v13;

      if (!a1)
      {
LABEL_10:
        v16 = 0;
        if (v10)
        {
          goto LABEL_11;
        }

LABEL_16:
        if (!a1)
        {
          return;
        }

        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      v10 = 0;
      if (!a1)
      {
        goto LABEL_10;
      }
    }
  }

  else
  {
    v12 = 0;
    if (!a1)
    {
      goto LABEL_10;
    }
  }

  v14 = [a1 ssid];
  if (v14)
  {
    v15 = v14;
    v16 = sub_2740517D8();
    a1 = v17;

    if (v10)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v16 = 0;
  a1 = 0;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_11:
  if (!a1)
  {
LABEL_17:

LABEL_18:
    sub_274031704();
    v18 = sub_2740518F8();
    v19 = swift_allocObject();
    v19[2] = v2;
    aBlock[4] = sub_274041488;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_104;
    v20 = _Block_copy(aBlock);
    v21 = v2;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v9, v6, v20);
    _Block_release(v20);

    (*(v24 + 8))(v6, v4);
    (*(v7 + 8))(v9, v23);
    return;
  }

  if (v12 == v16 && v10 == a1)
  {

    return;
  }

  v22 = sub_274051B08();

  if ((v22 & 1) == 0)
  {
    goto LABEL_18;
  }
}

uint64_t sub_27403E414()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403E520(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_2740516B8();
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2740516D8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  result = v22;
  if (!v22)
  {
    if (!a2)
    {
      return result;
    }

LABEL_10:
    sub_274031704();
    v15 = sub_2740518F8();
    v16 = swift_allocObject();
    *(v16 + 16) = v3;
    v25 = sub_274041488;
    v26 = v16;
    aBlock = MEMORY[0x277D85DD0];
    v22 = 1107296256;
    v23 = sub_274029168;
    v24 = &block_descriptor_98;
    v17 = _Block_copy(&aBlock);
    v18 = v3;

    sub_2740516C8();
    aBlock = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v12, v8, v17);
    _Block_release(v17);

    (*(v20 + 8))(v8, v6);
    return (*(v10 + 8))(v12, v9);
  }

  if (!a2)
  {

    goto LABEL_10;
  }

  if (aBlock == a1 && v22 == a2)
  {
  }

  v14 = sub_274051B08();

  if ((v14 & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_27403E888()
{
  type metadata accessor for WFNetworkRowConfigModel(0);
  sub_274041424(&unk_2809357A0, type metadata accessor for WFNetworkRowConfigModel, &protocol conformance descriptor for WFNetworkRowConfigModel);
  sub_274050E38();
  sub_274050E48();
}

double sub_27403E910@<D0>(_OWORD *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  result = *&v4;
  *a2 = v4;
  return result;
}

uint64_t sub_27403E990(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  sub_27403E520(v2, v3);
  swift_getKeyPath();
  swift_getKeyPath();
  v5 = v4;
  return sub_274050E78();
}

uint64_t sub_27403EA9C()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403EB84(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2740516D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (aBlock[0] != a1)
  {
    sub_274031704();
    v12 = sub_2740518F8();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    aBlock[4] = sub_274041488;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_92;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v10, v6, v14);
    _Block_release(v14);

    (*(v17 + 8))(v6, v4);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_27403EE90@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v4;
  return result;
}

uint64_t sub_27403EF10(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_27403EB84(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_27403F008()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403F0F0(char a1)
{
  v2 = a1 & 1;
  v3 = sub_2740516B8();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2740516D8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (LOBYTE(aBlock[0]) != v2)
  {
    sub_274031704();
    v11 = sub_2740518F8();
    v12 = swift_allocObject();
    *(v12 + 16) = v1;
    aBlock[4] = sub_274041488;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_86;
    v13 = _Block_copy(aBlock);
    v14 = v1;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v9, v5, v13);
    _Block_release(v13);

    (*(v16 + 8))(v5, v3);
    return (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t sub_27403F3FC@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v4;
  return result;
}

uint64_t sub_27403F47C(char *a1, void **a2)
{
  v2 = *a2;
  sub_27403F0F0(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_27403F574()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  return v1;
}

uint64_t sub_27403F65C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2740516B8();
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2740516D8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (aBlock[0] != a1)
  {
    sub_274031704();
    v12 = sub_2740518F8();
    v13 = swift_allocObject();
    *(v13 + 16) = v2;
    aBlock[4] = sub_274041408;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_274029168;
    aBlock[3] = &block_descriptor_80;
    v14 = _Block_copy(aBlock);
    v15 = v2;

    sub_2740516C8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_274041424(&qword_2809354B0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935790, &qword_27405A8C0);
    sub_27403B180();
    sub_274051978();
    MEMORY[0x2743E3710](0, v10, v6, v14);
    _Block_release(v14);

    (*(v17 + 8))(v6, v4);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t sub_27403F968@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  *a2 = v4;
  return result;
}

uint64_t sub_27403F9E8(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_27403F65C(*a1);
  swift_getKeyPath();
  swift_getKeyPath();
  v3 = v2;
  return sub_274050E78();
}

uint64_t sub_27403FAA8()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FB40(uint64_t a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_context;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403FC38()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FCD0(char a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_hideConnectionState;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403FDC8()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FE60(char a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27403FF58()
{
  v1 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_27403FFF0(char a1)
{
  v3 = OBJC_IVAR___WFNetworkRowConfig_isEditable;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_27404017C()
{
  v1 = (v0 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_273FBBB0C(*v1, v1[1]);
  return v2;
}

uint64_t sub_274040298(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_2740368EC(v6, v7);
}

uint64_t sub_2740402F8@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_2740413E0;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_273FBBB0C(v4, v5);
}

uint64_t sub_274040398(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_2740413B8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_273FBBB0C(v3, v4);
  return sub_2740368EC(v8, v9);
}

id WFNetworkRowConfigModel.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

_BYTE *sub_274040570(char a1, uint64_t a2)
{
  v5 = [objc_allocWithZone(v2) init];
  v6 = OBJC_IVAR___WFNetworkRowConfig_showInfoButton;
  swift_beginAccess();
  v5[v6] = a1;
  v7 = OBJC_IVAR___WFNetworkRowConfig_context;
  swift_beginAccess();
  *&v5[v7] = a2;
  return v5;
}

id WFNetworkRowConfigModel.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935738, &unk_27405AF88);
  v32 = *(v1 - 8);
  v33 = v1;
  MEMORY[0x28223BE20](v1);
  v31 = &v26 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935740, &qword_27405A970);
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - v4;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935748, &qword_27405AF98);
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2809354E0, &unk_27405A470);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935508, &qword_27405A498);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - v14;
  v16 = OBJC_IVAR___WFNetworkRowConfig__network;
  v35 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280934FC0, &qword_27405A4A0);
  sub_274050E58();
  (*(v13 + 32))(&v0[v16], v15, v12);
  v17 = OBJC_IVAR___WFNetworkRowConfig__subtitle;
  v35 = 0;
  v36 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280935578, &qword_27405A4B8);
  sub_274050E58();
  (*(v9 + 32))(&v0[v17], v11, v8);
  v18 = OBJC_IVAR___WFNetworkRowConfig__connectionState;
  v35 = 0;
  type metadata accessor for WFNetworkState(0);
  sub_274050E58();
  (*(v5 + 32))(&v0[v18], v7, v27);
  v19 = OBJC_IVAR___WFNetworkRowConfig__problematicConnection;
  LOBYTE(v35) = 0;
  v20 = v28;
  sub_274050E58();
  (*(v29 + 32))(&v0[v19], v20, v30);
  v21 = OBJC_IVAR___WFNetworkRowConfig__signalBars;
  v35 = 0;
  v22 = v31;
  sub_274050E58();
  (*(v32 + 32))(&v0[v21], v22, v33);
  *&v0[OBJC_IVAR___WFNetworkRowConfig_context] = 1;
  v0[OBJC_IVAR___WFNetworkRowConfig_hideConnectionState] = 0;
  v0[OBJC_IVAR___WFNetworkRowConfig_showInfoButton] = 0;
  v0[OBJC_IVAR___WFNetworkRowConfig_isEditable] = 1;
  v23 = &v0[OBJC_IVAR___WFNetworkRowConfig_infoButtonHandler];
  v24 = type metadata accessor for WFNetworkRowConfigModel(0);
  *v23 = 0;
  v23[1] = 0;
  v34.receiver = v0;
  v34.super_class = v24;
  return objc_msgSendSuper2(&v34, sel_init);
}

id WFNetworkRowConfigModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WFNetworkRowConfigModel(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_274040CCC@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for WFNetworkRowConfigModel(0);
  result = sub_274050E38();
  *a2 = result;
  return result;
}

uint64_t sub_274040D0C(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t type metadata accessor for WFNetworkRowConfigModel(uint64_t a1)
{
  result = qword_280935758;
  if (!qword_280935758)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_274040DBC(uint64_t a1)
{
  sub_2740364A4(319, &qword_280935598, &unk_280934FC0, &qword_27405A4A0);
  if (v1 <= 0x3F)
  {
    sub_2740364A4(319, &unk_2809355C0, &unk_280935578, &qword_27405A4B8);
    if (v2 <= 0x3F)
    {
      sub_274041348(319);
      if (v3 <= 0x3F)
      {
        sub_274036458(319, &qword_280935770, MEMORY[0x277D839B0]);
        if (v4 <= 0x3F)
        {
          sub_274036458(319, &qword_280935778, MEMORY[0x277D83E88]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_274041348(uint64_t a1)
{
  if (!qword_280935768)
  {
    type metadata accessor for WFNetworkState(255);
    v1 = sub_274050E88();
    if (!v2)
    {
      atomic_store(v1, &qword_280935768);
    }
  }
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_274041424(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_27404149C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  v19 = MEMORY[0x277D84F90];
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_274051A98())
  {
    v8 = 0;
    v16 = v4 & 0xFFFFFFFFFFFFFF8;
    v17 = v4 & 0xC000000000000001;
    v15 = v4;
    while (1)
    {
      if (v17)
      {
        v9 = MEMORY[0x2743E3810](v8, v4);
      }

      else
      {
        if (v8 >= *(v16 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v18 = v9;
      v12 = a2;
      v13 = a1(&v18);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        sub_274051A38();
        sub_274051A58();
        v4 = v15;
        sub_274051A68();
        sub_274051A48();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v19;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = MEMORY[0x277D84F90];
LABEL_20:

  return v12;
}

void sub_274041648(float a1)
{
  if (a1 >= 0.0 && a1 <= 1.0)
  {
    v2 = ceilf(a1 * 3.0);
    if ((LODWORD(v2) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v2 > -9.2234e18)
    {
      if (v2 < 9.2234e18)
      {
        return;
      }

LABEL_13:
      __break(1u);
      return;
    }

    __break(1u);
    goto LABEL_13;
  }
}

void NetworkList.init(networkDataSource:configDataSource:)(void *a1@<X0>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for NetworkList(0);
  v6 = [objc_opt_self() defaultCenter];
  if (qword_280934D98 != -1)
  {
    swift_once();
  }

  v7 = qword_280937218;
  sub_274051938();
  v8 = (a3 + *(v5 + 28));
  *v8 = 0x4C20664F20706F54;
  v8[1] = 0xEB00000000747369;
  type metadata accessor for NetworkListDataSource(0);
  sub_27404E2E4(&unk_2809357B0, type metadata accessor for NetworkListDataSource, &protocol conformance descriptor for NetworkListDataSource);
  v9 = a1;
  *a3 = sub_274050F88();
  a3[1] = v10;
  type metadata accessor for NetworkListConfigDataSource(0);
  sub_27404E2E4(&qword_2809356F0, type metadata accessor for NetworkListConfigDataSource, &protocol conformance descriptor for NetworkListConfigDataSource);
  v11 = sub_274050F88();
  v13 = v12;

  a3[2] = v11;
  a3[3] = v13;
}

uint64_t type metadata accessor for NetworkList(uint64_t a1)
{
  result = qword_2809357D0;
  if (!qword_2809357D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

WiFiKitUI::NetworkListMode_optional __swiftcall NetworkListMode.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_274051AD8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t NetworkListMode.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x7473694C6E616373;
  }
}

uint64_t sub_27404196C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v3 = 0x7473694C6E616373;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0x8000000274066070;
  }

  if (*a2)
  {
    v5 = 0xD000000000000014;
  }

  else
  {
    v5 = 0x7473694C6E616373;
  }

  if (*a2)
  {
    v6 = 0x8000000274066070;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_274051B08();
  }

  return v8 & 1;
}

uint64_t sub_274041A18()
{
  sub_274051B38();
  sub_2740517F8();

  return sub_274051B68();
}

uint64_t sub_274041AA0(uint64_t a1)
{
  sub_2740517F8();
}

uint64_t sub_274041B14(uint64_t a1)
{
  sub_274051B38();
  sub_2740517F8();

  return sub_274051B68();
}

uint64_t sub_274041B98@<X0>(char *a2@<X8>)
{
  v3 = sub_274051AD8();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_274041BF8(unint64_t *a1@<X8>)
{
  v2 = 0x8000000274066070;
  v3 = 0x7473694C6E616373;
  if (*v1)
  {
    v3 = 0xD000000000000014;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_274041C3C()
{
  result = sub_2740517C8();
  qword_280937200 = result;
  return result;
}

uint64_t sub_274041C74()
{
  result = sub_2740517C8();
  qword_280937208 = result;
  return result;
}

uint64_t sub_274041CAC()
{
  result = sub_2740517C8();
  qword_280937210 = result;
  return result;
}

uint64_t sub_274041CE4()
{
  result = sub_2740517C8();
  qword_280937218 = result;
  return result;
}

uint64_t NetworkList.body.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for NetworkList(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_27404DECC(v1, &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for NetworkList);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = sub_27404DF34(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for NetworkList);
  *a1 = sub_2740425A0;
  a1[1] = v7;
  return result;
}

uint64_t sub_274041E2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v83 = a1;
  v80 = a3;
  v79 = type metadata accessor for NetworkList(0);
  v82 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v84 = v4;
  v85 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_274050FE8();
  v5 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v76 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v6;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935800, &qword_27405B1A0);
  v7 = MEMORY[0x28223BE20](v81);
  v86 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v87 = &v67 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_274050E68();

  if (v116 == 1)
  {
    sub_274042618(&v116);
    v10 = v116;
    v11 = v117;
    v73 = *(&v117 + 1);
    v74 = *(&v116 + 1);
    v72 = sub_274051348();
    sub_274050E98();
    v70 = v13;
    v71 = v12;
    v68 = v15;
    v69 = v14;
    LOBYTE(v101[0]) = v11;
    LOBYTE(v88) = 0;
    v16 = sub_274051368();
    sub_274050E98();
    v18 = v17;
    v20 = v19;
    v22 = v21;
    v24 = v23;
    LOBYTE(v103) = 0;
    v25 = sub_274051328();
    sub_274050E98();
    v27 = v26;
    v29 = v28;
    v31 = v30;
    v33 = v32;
    LOBYTE(v116) = 0;
    v34 = sub_274051338();
    sub_274050E98();
    *&v103 = v10;
    *(&v103 + 1) = v74;
    LOBYTE(v104) = v11;
    *(&v104 + 1) = v73;
    LOBYTE(v105) = v72;
    *(&v105 + 1) = v71;
    *&v106 = v70;
    *(&v106 + 1) = v69;
    *&v107 = v68;
    BYTE8(v107) = 0;
    LOBYTE(v108) = v16;
    *(&v108 + 1) = v18;
    *&v109 = v20;
    *(&v109 + 1) = v22;
    *&v110 = v24;
    BYTE8(v110) = 0;
    LOBYTE(v111) = v25;
    *(&v111 + 1) = v27;
    *&v112 = v29;
    *(&v112 + 1) = v31;
    *&v113 = v33;
    BYTE8(v113) = 0;
    HIDWORD(v113) = *(v101 + 3);
    *(&v113 + 9) = v101[0];
    LOBYTE(v114) = v34;
    DWORD1(v114) = *(&v88 + 3);
    *(&v114 + 1) = v88;
    *(&v114 + 1) = v35;
    *&v115[0] = v36;
    *(&v115[0] + 1) = v37;
    *&v115[1] = v38;
    BYTE8(v115[1]) = 0;
    nullsub_1();
    v126 = v113;
    v127 = v114;
    v128[0] = v115[0];
    *(v128 + 9) = *(v115 + 9);
    v122 = v109;
    v123 = v110;
    v124 = v111;
    v125 = v112;
    v118 = v105;
    v119 = v106;
    v120 = v107;
    v121 = v108;
    v116 = v103;
    v117 = v104;
  }

  else
  {
    sub_27404D8B4(&v116);
  }

  MEMORY[0x28223BE20](v39);
  v40 = a2;
  *(&v67 - 2) = a2;
  v75 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935808, &qword_27405B1F0);
  sub_27404DB48(&qword_280935810, &qword_280935808, &qword_27405B1F0, sub_27404D8E4);
  sub_274051408();
  v41 = v78;
  v79 = *(v79 + 24);
  v42 = v76;
  (*(v5 + 16))(v76, v83, v78);
  v43 = v85;
  sub_27404DECC(v40, v85, type metadata accessor for NetworkList);
  v44 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v45 = (v77 + *(v82 + 80) + v44) & ~*(v82 + 80);
  v46 = swift_allocObject();
  (*(v5 + 32))(v46 + v44, v42, v41);
  sub_27404DF34(v43, v46 + v45, type metadata accessor for NetworkList);
  v47 = v81;
  v48 = *(v81 + 52);
  v49 = sub_274051948();
  v50 = v87;
  (*(*(v49 - 8) + 16))(&v87[v48], v75 + v79, v49);
  v51 = (v50 + *(v47 + 56));
  *v51 = sub_27404D9C4;
  v51[1] = v46;
  v98 = v126;
  v99 = v127;
  v100[0] = v128[0];
  *(v100 + 9) = *(v128 + 9);
  v94 = v122;
  v95 = v123;
  v96 = v124;
  v97 = v125;
  v90 = v118;
  v91 = v119;
  v92 = v120;
  v93 = v121;
  v88 = v116;
  v89 = v117;
  v52 = v86;
  sub_274021180(v50, v86, &qword_280935800, &qword_27405B1A0);
  v53 = v97;
  v101[10] = v98;
  v101[11] = v99;
  v54 = v99;
  v102[0] = v100[0];
  *(v102 + 9) = *(v100 + 9);
  v55 = v94;
  v56 = v95;
  v101[6] = v94;
  v101[7] = v95;
  v101[8] = v96;
  v57 = v96;
  v101[9] = v97;
  v58 = v90;
  v59 = v91;
  v101[2] = v90;
  v101[3] = v91;
  v60 = v92;
  v61 = v93;
  v101[4] = v92;
  v101[5] = v93;
  v62 = v88;
  v63 = v89;
  v101[0] = v88;
  v101[1] = v89;
  v64 = v80;
  v80[10] = v98;
  v64[11] = v54;
  v64[12] = v100[0];
  *(v64 + 201) = *(v100 + 9);
  v64[6] = v55;
  v64[7] = v56;
  v64[8] = v57;
  v64[9] = v53;
  v64[2] = v58;
  v64[3] = v59;
  v64[4] = v60;
  v64[5] = v61;
  *v64 = v62;
  v64[1] = v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280935848, &qword_27405B210);
  sub_274021180(v52, v64 + *(v65 + 48), &qword_280935800, &qword_27405B1A0);
  sub_274021180(v101, &v103, &unk_280935850, &qword_27405B218);
  sub_2740211E8(v50, &qword_280935800, &qword_27405B1A0);
  sub_2740211E8(v52, &qword_280935800, &qword_27405B1A0);
  v113 = v98;
  v114 = v99;
  v115[0] = v100[0];
  *(v115 + 9) = *(v100 + 9);
  v109 = v94;
  v110 = v95;
  v111 = v96;
  v112 = v97;
  v105 = v90;
  v106 = v91;
  v107 = v92;
  v108 = v93;
  v103 = v88;
  v104 = v89;
  return sub_2740211E8(&v103, &unk_280935850, &qword_27405B218);
}