uint64_t sub_252D103A8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40 - v2;
  v4 = *(v0 + 24);
  v59 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_58;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_59:
    v36 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

LABEL_3:
  v6 = 0;
  v43 = v4 & 0xFFFFFFFFFFFFFF8;
  v44 = v4 & 0xC000000000000001;
  v42 = v4 + 32;
  v40 = v5;
  v41 = v4;
  v48 = v3;
  do
  {
    if (v44)
    {
      v7 = MEMORY[0x2530ADF00](v6, v4);
      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v6 >= *(v43 + 16))
      {
        goto LABEL_57;
      }

      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v37 = v4;
        v38 = sub_252E378C4();
        v4 = v37;
        v5 = v38;
        if (!v38)
        {
          goto LABEL_59;
        }

        goto LABEL_3;
      }
    }

    v10 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    v45 = v9;
    v46 = v7;
    if (v10 >> 62)
    {
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v10;

    if (!v11)
    {
LABEL_45:

      goto LABEL_46;
    }

    v12 = 0;
    v13 = v47 & 0xC000000000000001;
    v54 = v47 + 32;
    v55 = v47 & 0xFFFFFFFFFFFFFF8;
    v49 = v47 & 0xC000000000000001;
    v50 = v11;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x2530ADF00](v12, v47);
        v8 = __OFADD__(v12++, 1);
        if (v8)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v12 >= *(v55 + 16))
        {
          goto LABEL_55;
        }

        v14 = *(v54 + 8 * v12);

        v8 = __OFADD__(v12++, 1);
        if (v8)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v3);
      v15 = sub_252E36324();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v3, 1, v15) != 1)
      {
        break;
      }

      sub_252938BBC(v3);
LABEL_12:
      if (v12 == v11)
      {
        goto LABEL_45;
      }
    }

    v17 = sub_252E36304();
    v19 = v18;
    (*(v16 + 8))(v3, v15);
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    AttributeSemantic.init(rawValue:)(v20);
    if (v58 == 66)
    {

      goto LABEL_12;
    }

    v53 = v58;
    if (qword_27F53F2A8 != -1)
    {
      swift_once();
    }

    v21 = off_27F541CD8;
    v22 = off_27F541CD8 + 64;
    v23 = 1 << *(off_27F541CD8 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(off_27F541CD8 + 8);
    v26 = (v23 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    while (1)
    {
      while (1)
      {
        if (!v25)
        {
          while (1)
          {
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v29 >= v26)
            {

              v3 = v48;
              v13 = v49;
              v11 = v50;
              goto LABEL_12;
            }

            v28 = *&v22[8 * v29];
            ++v27;
            if (v28)
            {
              v27 = v29;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v28 = v25;
LABEL_31:
        v25 = (v28 - 1) & v28;
        if (v21[2])
        {
          v30 = *(v21[6] + ((v27 << 9) | (8 * __clz(__rbit64(v28)))));
          v31 = sub_252A488EC();
          if ((v32 & 1) != 0 && *(v21[7] + v31) != 66)
          {
            break;
          }
        }
      }

      v57 = *(v21[7] + v31);
      v56 = v53;
      v33 = AttributeSemantic.rawValue.getter();
      v52 = v34;
      if (v33 == AttributeSemantic.rawValue.getter() && v52 == v35)
      {
        break;
      }

      v51 = sub_252E37DB4();

      if (v51)
      {
        goto LABEL_40;
      }
    }

LABEL_40:

    v3 = v48;
    v13 = v49;
    v11 = v50;
    if (v30 != 28)
    {
      goto LABEL_12;
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_46:
    v4 = v41;
    v6 = v45;
  }

  while (v45 != v40);
LABEL_53:
  v36 = v59;
LABEL_60:
  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v36;
  return result;
}

uint64_t sub_252D108D8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v40 - v2;
  v4 = *(v0 + 24);
  v59 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_58;
  }

  v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v5)
  {
LABEL_59:
    v36 = MEMORY[0x277D84F90];
    goto LABEL_60;
  }

LABEL_3:
  v6 = 0;
  v43 = v4 & 0xFFFFFFFFFFFFFF8;
  v44 = v4 & 0xC000000000000001;
  v42 = v4 + 32;
  v40 = v5;
  v41 = v4;
  v48 = v3;
  do
  {
    if (v44)
    {
      v7 = MEMORY[0x2530ADF00](v6, v4);
      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
        goto LABEL_56;
      }
    }

    else
    {
      if (v6 >= *(v43 + 16))
      {
        goto LABEL_57;
      }

      v8 = __OFADD__(v6, 1);
      v9 = v6 + 1;
      if (v8)
      {
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        v37 = v4;
        v38 = sub_252E378C4();
        v4 = v37;
        v5 = v38;
        if (!v38)
        {
          goto LABEL_59;
        }

        goto LABEL_3;
      }
    }

    v10 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
    v45 = v9;
    v46 = v7;
    if (v10 >> 62)
    {
      v11 = sub_252E378C4();
    }

    else
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v47 = v10;

    if (!v11)
    {
LABEL_45:

      goto LABEL_46;
    }

    v12 = 0;
    v13 = v47 & 0xC000000000000001;
    v54 = v47 + 32;
    v55 = v47 & 0xFFFFFFFFFFFFFF8;
    v49 = v47 & 0xC000000000000001;
    v50 = v11;
    while (1)
    {
      if (v13)
      {
        v14 = MEMORY[0x2530ADF00](v12, v47);
        v8 = __OFADD__(v12++, 1);
        if (v8)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if (v12 >= *(v55 + 16))
        {
          goto LABEL_55;
        }

        v14 = *(v54 + 8 * v12);

        v8 = __OFADD__(v12++, 1);
        if (v8)
        {
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
          goto LABEL_56;
        }
      }

      sub_252956C1C(v14 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_attribute, v3);
      v15 = sub_252E36324();
      v16 = *(v15 - 8);
      if ((*(v16 + 48))(v3, 1, v15) != 1)
      {
        break;
      }

      sub_252938BBC(v3);
LABEL_12:
      if (v12 == v11)
      {
        goto LABEL_45;
      }
    }

    v17 = sub_252E36304();
    v19 = v18;
    (*(v16 + 8))(v3, v15);
    v20._countAndFlagsBits = v17;
    v20._object = v19;
    AttributeSemantic.init(rawValue:)(v20);
    if (v58 == 66)
    {

      goto LABEL_12;
    }

    v53 = v58;
    if (qword_27F53F2A8 != -1)
    {
      swift_once();
    }

    v21 = off_27F541CD8;
    v22 = off_27F541CD8 + 64;
    v23 = 1 << *(off_27F541CD8 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & *(off_27F541CD8 + 8);
    v26 = (v23 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v27 = 0;
    while (1)
    {
      while (1)
      {
        if (!v25)
        {
          while (1)
          {
            v29 = v27 + 1;
            if (__OFADD__(v27, 1))
            {
              break;
            }

            if (v29 >= v26)
            {

              v3 = v48;
              v13 = v49;
              v11 = v50;
              goto LABEL_12;
            }

            v28 = *&v22[8 * v29];
            ++v27;
            if (v28)
            {
              v27 = v29;
              goto LABEL_31;
            }
          }

          __break(1u);
          goto LABEL_53;
        }

        v28 = v25;
LABEL_31:
        v25 = (v28 - 1) & v28;
        if (v21[2])
        {
          v30 = *(v21[6] + ((v27 << 9) | (8 * __clz(__rbit64(v28)))));
          v31 = sub_252A488EC();
          if ((v32 & 1) != 0 && *(v21[7] + v31) != 66)
          {
            break;
          }
        }
      }

      v57 = *(v21[7] + v31);
      v56 = v53;
      v33 = AttributeSemantic.rawValue.getter();
      v52 = v34;
      if (v33 == AttributeSemantic.rawValue.getter() && v52 == v35)
      {
        break;
      }

      v51 = sub_252E37DB4();

      if (v51)
      {
        goto LABEL_40;
      }
    }

LABEL_40:

    v3 = v48;
    v13 = v49;
    v11 = v50;
    if (v30 != 55)
    {
      goto LABEL_12;
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_46:
    v4 = v41;
    v6 = v45;
  }

  while (v45 != v40);
LABEL_53:
  v36 = v59;
LABEL_60:
  type metadata accessor for HomeAutomationAirQualityEntityResponses();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = v36;
  return result;
}

id sub_252D10E24()
{
  v1 = v0;
  v2 = sub_252E32CB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 entityType];
  if (v6)
  {
    v7 = v6;
    v8 = sub_252E36F34();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  v11 = sub_252D14650(v8, v10);
  v13 = v12;

  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v11;
  }

  v15 = [v1 serviceType];
  if (v15)
  {
    v16 = v15;
    v17 = sub_252E36F34();
    v19 = v18;
  }

  else
  {
    v17 = 0;
    v19 = 0;
  }

  v20 = sub_252D141D4(v17, v19);
  v22 = v21;

  if (v22)
  {
    v23 = 0;
  }

  else
  {
    v23 = v20;
  }

  v24 = [v1 sceneType];
  if (v24)
  {
    v25 = v24;
    v26 = sub_252E36F34();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = sub_252D14860(v26, v28);
  v31 = v30;

  if (v31)
  {
    v32 = 0;
  }

  else
  {
    v32 = v29;
  }

  result = [v1 identifier];
  if (result)
  {
    v34 = result;
    sub_252E32C94();

    v35 = sub_252E32C64();
    v37 = v36;
    (*(v3 + 8))(v5, v2);
    v75 = sub_252D12D10();
    if ((v23 | 4) == 6)
    {
      v38 = sub_252D13768(v23);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_252E3C290;
      *(v38 + 32) = v23;
    }

    v39 = v14;
    type metadata accessor for HomeEntity.Builder();
    swift_allocObject();
    v40 = HomeEntity.Builder.init()();
    v42 = v41;
    v43 = [v1 name];
    if (v43)
    {
      v44 = v43;
      v45 = sub_252E36F34();
      v47 = v46;
    }

    else
    {
      v45 = 0;
      v47 = 0;
    }

    v48 = (*(*v42 + 376))(v45, v47);

    v49 = (*(*v48 + 384))(v39);

    v50 = (*(*v49 + 392))(v35, v37);

    v51 = (*(*v50 + 400))(v38);

    v52 = (*(*v51 + 408))(v32);

    v53 = [v1 room];
    if (v53)
    {
      v54 = v53;
      v55 = sub_252E36F34();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v58 = (*(*v52 + 416))(v55, v57);

    v59 = [v1 home];
    if (v59)
    {
      v60 = v59;
      v61 = sub_252E36F34();
      v63 = v62;
    }

    else
    {
      v61 = 0;
      v63 = 0;
    }

    v64 = (*(*v58 + 424))(v61, v63);

    v65 = [v1 groupType];
    if (v65)
    {
      v66 = v65;
      v67 = sub_252E36F34();
      v69 = v68;
    }

    else
    {
      v67 = 0;
      v69 = 0;
    }

    v70 = (*(*v64 + 432))(v67, v69);

    v71 = (*(*v70 + 440))(v75);

    v73 = (*(*v71 + 448))(v72);

    return v73;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_252D114D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E50, &qword_252E3F0A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3F1F0;
  *(inited + 32) = 7;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 4;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 1;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 5;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  *(inited + 152) = 2;
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v6;
  v7 = sub_252CC4A0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540E48, &qword_252E3F0A0);
  result = swift_arrayDestroy();
  off_27F545688 = v7;
  return result;
}

uint64_t sub_252D11614()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456F8, &qword_252E5BB20);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E42250;
  *(inited + 32) = 1;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 2;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 3;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 4;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 6;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  *(inited + 152) = 27;
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v6;
  *(inited + 176) = 19;
  *(inited + 184) = sub_252E36F34();
  *(inited + 192) = v7;
  *(inited + 200) = 28;
  *(inited + 208) = sub_252E36F34();
  *(inited + 216) = v8;
  *(inited + 224) = 23;
  *(inited + 232) = sub_252E36F34();
  *(inited + 240) = v9;
  *(inited + 248) = 29;
  *(inited + 256) = sub_252E36F34();
  *(inited + 264) = v10;
  *(inited + 272) = 30;
  *(inited + 280) = sub_252E36F34();
  *(inited + 288) = v11;
  *(inited + 296) = 31;
  *(inited + 304) = sub_252E36F34();
  *(inited + 312) = v12;
  *(inited + 320) = 32;
  *(inited + 328) = sub_252E36F34();
  *(inited + 336) = v13;
  *(inited + 344) = 33;
  *(inited + 352) = sub_252E36F34();
  *(inited + 360) = v14;
  *(inited + 368) = 34;
  *(inited + 376) = sub_252E36F34();
  *(inited + 384) = v15;
  *(inited + 392) = 36;
  *(inited + 400) = sub_252E36F34();
  *(inited + 408) = v16;
  *(inited + 416) = 7;
  *(inited + 424) = sub_252E36F34();
  *(inited + 432) = v17;
  *(inited + 440) = 24;
  *(inited + 448) = sub_252E36F34();
  *(inited + 456) = v18;
  *(inited + 464) = 5;
  *(inited + 472) = sub_252E36F34();
  *(inited + 480) = v19;
  *(inited + 488) = 21;
  *(inited + 496) = sub_252E36F34();
  *(inited + 504) = v20;
  *(inited + 512) = 14;
  *(inited + 520) = sub_252E36F34();
  *(inited + 528) = v21;
  *(inited + 536) = 8;
  *(inited + 544) = sub_252E36F34();
  *(inited + 552) = v22;
  *(inited + 560) = 20;
  *(inited + 568) = sub_252E36F34();
  *(inited + 576) = v23;
  *(inited + 584) = 11;
  *(inited + 592) = sub_252E36F34();
  *(inited + 600) = v24;
  *(inited + 608) = 10;
  *(inited + 616) = sub_252E36F34();
  *(inited + 624) = v25;
  *(inited + 632) = 12;
  *(inited + 640) = sub_252E36F34();
  *(inited + 648) = v26;
  *(inited + 656) = 18;
  *(inited + 664) = sub_252E36F34();
  *(inited + 672) = v27;
  *(inited + 680) = 17;
  *(inited + 688) = sub_252E36F34();
  *(inited + 696) = v28;
  *(inited + 704) = 16;
  *(inited + 712) = sub_252E36F34();
  *(inited + 720) = v29;
  *(inited + 728) = 15;
  *(inited + 736) = sub_252E36F34();
  *(inited + 744) = v30;
  *(inited + 752) = 9;
  *(inited + 760) = sub_252E36F34();
  *(inited + 768) = v31;
  *(inited + 776) = 38;
  *(inited + 784) = sub_252E36F34();
  *(inited + 792) = v32;
  *(inited + 800) = 39;
  *(inited + 808) = sub_252E36F34();
  *(inited + 816) = v33;
  *(inited + 824) = 40;
  *(inited + 832) = sub_252E36F34();
  *(inited + 840) = v34;
  *(inited + 848) = 41;
  *(inited + 856) = sub_252E36F34();
  *(inited + 864) = v35;
  *(inited + 872) = 26;
  *(inited + 880) = sub_252E36F34();
  *(inited + 888) = v36;
  *(inited + 896) = 37;
  *(inited + 904) = sub_252E36F34();
  *(inited + 912) = v37;
  v38 = sub_252CC49E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545700, &qword_252E5BB28);
  result = swift_arrayDestroy();
  off_27F545690 = v38;
  return result;
}

uint64_t sub_252D11B00()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545738, &qword_252E5BB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3F1F0;
  *(inited + 32) = 5;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 2;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 3;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 4;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 1;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  *(inited + 152) = 6;
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v6;
  v7 = sub_252CC4A9C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545740, &qword_252E5BB68);
  result = swift_arrayDestroy();
  off_27F545698 = v7;
  return result;
}

uint64_t sub_252D11C44()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545748, &qword_252E5BB70);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3F1F0;
  *(inited + 32) = 3;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 4;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 5;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 2;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 1;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  *(inited + 152) = 6;
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v6;
  v7 = sub_252CC49BC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D18, &unk_252E42298);
  result = swift_arrayDestroy();
  off_27F5456A0 = v7;
  return result;
}

uint64_t sub_252D11D88()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545718, &qword_252E5BB40);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E5BAE0;
  *(v0 + 32) = 27;
  *(v0 + 40) = sub_252E36F34();
  *(v0 + 48) = v1;
  *(v0 + 56) = 25;
  *(v0 + 64) = sub_252E36F34();
  *(v0 + 72) = v2;
  *(v0 + 80) = 26;
  *(v0 + 88) = sub_252E36F34();
  *(v0 + 96) = v3;
  *(v0 + 104) = 51;
  *(v0 + 112) = sub_252E36F34();
  *(v0 + 120) = v4;
  *(v0 + 128) = 2;
  *(v0 + 136) = sub_252E36F34();
  *(v0 + 144) = v5;
  *(v0 + 152) = 3;
  *(v0 + 160) = sub_252E36F34();
  *(v0 + 168) = v6;
  *(v0 + 176) = 4;
  *(v0 + 184) = sub_252E36F34();
  *(v0 + 192) = v7;
  *(v0 + 200) = 59;
  *(v0 + 208) = sub_252E36F34();
  *(v0 + 216) = v8;
  *(v0 + 224) = 5;
  *(v0 + 232) = sub_252E36F34();
  *(v0 + 240) = v9;
  *(v0 + 248) = 6;
  *(v0 + 256) = sub_252E36F34();
  *(v0 + 264) = v10;
  *(v0 + 272) = 14;
  *(v0 + 280) = sub_252E36F34();
  *(v0 + 288) = v11;
  *(v0 + 296) = 15;
  *(v0 + 304) = sub_252E36F34();
  *(v0 + 312) = v12;
  *(v0 + 320) = 19;
  *(v0 + 328) = sub_252E36F34();
  *(v0 + 336) = v13;
  *(v0 + 344) = 17;
  *(v0 + 352) = sub_252E36F34();
  *(v0 + 360) = v14;
  *(v0 + 368) = 8;
  *(v0 + 376) = sub_252E36F34();
  *(v0 + 384) = v15;
  *(v0 + 392) = 16;
  *(v0 + 400) = sub_252E36F34();
  *(v0 + 408) = v16;
  *(v0 + 416) = 13;
  *(v0 + 424) = sub_252E36F34();
  *(v0 + 432) = v17;
  *(v0 + 440) = 9;
  *(v0 + 448) = sub_252E36F34();
  *(v0 + 456) = v18;
  *(v0 + 464) = 10;
  *(v0 + 472) = sub_252E36F34();
  *(v0 + 480) = v19;
  *(v0 + 488) = 18;
  *(v0 + 496) = sub_252E36F34();
  *(v0 + 504) = v20;
  *(v0 + 512) = 11;
  *(v0 + 520) = sub_252E36F34();
  *(v0 + 528) = v21;
  *(v0 + 536) = 12;
  *(v0 + 544) = sub_252E36F34();
  *(v0 + 552) = v22;
  *(v0 + 560) = 21;
  *(v0 + 568) = sub_252E36F34();
  *(v0 + 576) = v23;
  *(v0 + 584) = 22;
  *(v0 + 592) = sub_252E36F34();
  *(v0 + 600) = v24;
  *(v0 + 608) = 7;
  *(v0 + 616) = sub_252E36F34();
  *(v0 + 624) = v25;
  *(v0 + 632) = 20;
  *(v0 + 640) = sub_252E36F34();
  *(v0 + 648) = v26;
  *(v0 + 656) = 23;
  *(v0 + 664) = sub_252E36F34();
  *(v0 + 672) = v27;
  *(v0 + 680) = 24;
  *(v0 + 688) = sub_252E36F34();
  *(v0 + 696) = v28;
  *(v0 + 704) = 28;
  *(v0 + 712) = sub_252E36F34();
  *(v0 + 720) = v29;
  *(v0 + 728) = 47;
  *(v0 + 736) = sub_252E36F34();
  *(v0 + 744) = v30;
  *(v0 + 752) = 29;
  *(v0 + 760) = sub_252E36F34();
  *(v0 + 768) = v31;
  *(v0 + 776) = 30;
  *(v0 + 784) = sub_252E36F34();
  *(v0 + 792) = v32;
  *(v0 + 800) = 53;
  *(v0 + 808) = sub_252E36F34();
  *(v0 + 816) = v33;
  *(v0 + 824) = 54;
  *(v0 + 832) = sub_252E36F34();
  *(v0 + 840) = v34;
  *(v0 + 848) = 58;
  *(v0 + 856) = sub_252E36F34();
  *(v0 + 864) = v35;
  *(v0 + 872) = 56;
  *(v0 + 880) = sub_252E36F34();
  *(v0 + 888) = v36;
  *(v0 + 896) = 55;
  *(v0 + 904) = sub_252E36F34();
  *(v0 + 912) = v37;
  *(v0 + 920) = 57;
  *(v0 + 928) = sub_252E36F34();
  *(v0 + 936) = v38;
  *(v0 + 944) = 31;
  *(v0 + 952) = sub_252E36F34();
  *(v0 + 960) = v39;
  *(v0 + 968) = 32;
  *(v0 + 976) = sub_252E36F34();
  *(v0 + 984) = v40;
  *(v0 + 992) = 33;
  *(v0 + 1000) = sub_252E36F34();
  *(v0 + 1008) = v41;
  *(v0 + 1016) = 34;
  *(v0 + 1024) = sub_252E36F34();
  *(v0 + 1032) = v42;
  *(v0 + 1040) = 35;
  *(v0 + 1048) = sub_252E36F34();
  *(v0 + 1056) = v43;
  *(v0 + 1064) = 36;
  *(v0 + 1072) = sub_252E36F34();
  *(v0 + 1080) = v44;
  *(v0 + 1088) = 37;
  *(v0 + 1096) = sub_252E36F34();
  *(v0 + 1104) = v45;
  *(v0 + 1112) = 38;
  *(v0 + 1120) = sub_252E36F34();
  *(v0 + 1128) = v46;
  *(v0 + 1136) = 39;
  *(v0 + 1144) = sub_252E36F34();
  *(v0 + 1152) = v47;
  *(v0 + 1160) = 40;
  *(v0 + 1168) = sub_252E36F34();
  *(v0 + 1176) = v48;
  *(v0 + 1184) = 41;
  *(v0 + 1192) = sub_252E36F34();
  *(v0 + 1200) = v49;
  *(v0 + 1208) = 42;
  *(v0 + 1216) = sub_252E36F34();
  *(v0 + 1224) = v50;
  *(v0 + 1232) = 43;
  *(v0 + 1240) = sub_252E36F34();
  *(v0 + 1248) = v51;
  *(v0 + 1256) = 44;
  *(v0 + 1264) = sub_252E36F34();
  *(v0 + 1272) = v52;
  *(v0 + 1280) = 45;
  *(v0 + 1288) = sub_252E36F34();
  *(v0 + 1296) = v53;
  *(v0 + 1304) = 48;
  *(v0 + 1312) = sub_252E36F34();
  *(v0 + 1320) = v54;
  *(v0 + 1328) = 49;
  *(v0 + 1336) = sub_252E36F34();
  *(v0 + 1344) = v55;
  *(v0 + 1352) = 50;
  *(v0 + 1360) = sub_252E36F34();
  *(v0 + 1368) = v56;
  *(v0 + 1376) = 52;
  *(v0 + 1384) = sub_252E36F34();
  *(v0 + 1392) = v57;
  *(v0 + 1400) = 46;
  *(v0 + 1408) = sub_252E36F34();
  *(v0 + 1416) = v58;
  *(v0 + 1424) = 1;
  *(v0 + 1432) = sub_252E36F34();
  *(v0 + 1440) = v59;
  *(v0 + 1448) = 65;
  *(v0 + 1456) = sub_252E36F34();
  *(v0 + 1464) = v60;
  *(v0 + 1472) = 66;
  *(v0 + 1480) = sub_252E36F34();
  *(v0 + 1488) = v61;
  v62 = sub_252CC4A34(v0);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545720, &qword_252E5BB48);
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27F5456A8 = v62;
  return result;
}

uint64_t sub_252D12580()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545710, &qword_252E5BB38);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = 1;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 2;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 3;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 4;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 5;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  v6 = sub_252CC3C4C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541D20, &qword_252E422A8);
  result = swift_arrayDestroy();
  off_27F5456B0 = v6;
  return result;
}

uint64_t sub_252D126A8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456E8, &qword_252E5BB10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = 2;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 5;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 4;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 3;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 1;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  v6 = sub_252CC4F20(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456F0, &qword_252E5BB18);
  result = swift_arrayDestroy();
  off_27F5456B8 = v6;
  return result;
}

uint64_t sub_252D127D0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545728, &qword_252E5BB50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C280;
  *(inited + 32) = 0;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 9;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 4;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  v4 = sub_252CC4AD8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545730, &qword_252E5BB58);
  result = swift_arrayDestroy();
  off_27F5456C0 = v4;
  return result;
}

uint64_t sub_252D128BC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545708, &qword_252E5BB30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E5BAF0;
  *(inited + 32) = 23;
  *(inited + 40) = sub_252E36F34();
  *(inited + 48) = v1;
  *(inited + 56) = 4;
  *(inited + 64) = sub_252E36F34();
  *(inited + 72) = v2;
  *(inited + 80) = 5;
  *(inited + 88) = sub_252E36F34();
  *(inited + 96) = v3;
  *(inited + 104) = 14;
  *(inited + 112) = sub_252E36F34();
  *(inited + 120) = v4;
  *(inited + 128) = 20;
  *(inited + 136) = sub_252E36F34();
  *(inited + 144) = v5;
  *(inited + 152) = 16;
  *(inited + 160) = sub_252E36F34();
  *(inited + 168) = v6;
  *(inited + 176) = 7;
  *(inited + 184) = sub_252E36F34();
  *(inited + 192) = v7;
  *(inited + 200) = 17;
  *(inited + 208) = sub_252E36F34();
  *(inited + 216) = v8;
  *(inited + 224) = 10;
  *(inited + 232) = sub_252E36F34();
  *(inited + 240) = v9;
  *(inited + 248) = 13;
  *(inited + 256) = sub_252E36F34();
  *(inited + 264) = v10;
  *(inited + 272) = 12;
  *(inited + 280) = sub_252E36F34();
  *(inited + 288) = v11;
  *(inited + 296) = 3;
  *(inited + 304) = sub_252E36F34();
  *(inited + 312) = v12;
  *(inited + 320) = 18;
  *(inited + 328) = sub_252E36F34();
  *(inited + 336) = v13;
  *(inited + 344) = 22;
  *(inited + 352) = sub_252E36F34();
  *(inited + 360) = v14;
  *(inited + 368) = 19;
  *(inited + 376) = sub_252E36F34();
  *(inited + 384) = v15;
  *(inited + 392) = 8;
  *(inited + 400) = sub_252E36F34();
  *(inited + 408) = v16;
  *(inited + 416) = 9;
  *(inited + 424) = sub_252E36F34();
  *(inited + 432) = v17;
  *(inited + 440) = 11;
  *(inited + 448) = sub_252E36F34();
  *(inited + 456) = v18;
  *(inited + 464) = 1;
  *(inited + 472) = sub_252E36F34();
  *(inited + 480) = v19;
  *(inited + 488) = 21;
  *(inited + 496) = sub_252E36F34();
  *(inited + 504) = v20;
  *(inited + 512) = 6;
  *(inited + 520) = sub_252E36F34();
  *(inited + 528) = v21;
  *(inited + 536) = 2;
  *(inited + 544) = sub_252E36F34();
  *(inited + 552) = v22;
  *(inited + 560) = 15;
  *(inited + 568) = sub_252E36F34();
  *(inited + 576) = v23;
  v24 = sub_252CC496C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F543E48, &unk_252E521C0);
  result = swift_arrayDestroy();
  off_27F5456C8 = v24;
  return result;
}

uint64_t sub_252D12BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456D8, &qword_252E5BB00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3EF90;
  *(inited + 32) = sub_252E36F34();
  *(inited + 40) = v1;
  *(inited + 48) = 5;
  *(inited + 56) = sub_252E36F34();
  *(inited + 64) = v2;
  *(inited + 72) = 4;
  *(inited + 80) = sub_252E36F34();
  *(inited + 88) = v3;
  *(inited + 96) = 108;
  *(inited + 104) = sub_252E36F34();
  *(inited + 112) = v4;
  *(inited + 120) = 112;
  *(inited + 128) = sub_252E36F34();
  *(inited + 136) = v5;
  *(inited + 144) = 110;
  v6 = sub_252CC5068(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5456E0, &qword_252E5BB08);
  result = swift_arrayDestroy();
  off_27F5456D0 = v6;
  return result;
}

void *sub_252D12D10()
{
  v2 = sub_252E32CB4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252B680FC(v4);
  swift_beginAccess();
  v8 = *(v7 + 24);
  if (v8 >> 62)
  {
    goto LABEL_49;
  }

  v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v9)
  {
LABEL_50:

LABEL_51:
    if (qword_27F53F4B0 != -1)
    {
LABEL_64:
      swift_once();
    }

    v28 = 0xD000000000000028;
    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544CB8);
    v75[0] = 0;
    v75[1] = 0xE000000000000000;
    sub_252E379F4();

    v76 = 0xD000000000000028;
    v77 = 0x8000000252E93DB0;
    v31 = sub_252B680FC(v30);
    swift_beginAccess();
    v32 = *(v31 + 24);
    if (v32 >> 62)
    {
      v33 = sub_252E378C4();
      if (v33)
      {
LABEL_54:
        v34 = v33 - 1;
        if (__OFSUB__(v33, 1))
        {
LABEL_113:
          __break(1u);
        }

        else if ((v32 & 0xC000000000000001) == 0)
        {
          if ((v34 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v34 < *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v35 = *(v32 + 8 * v34 + 32);
LABEL_59:

LABEL_67:
            v75[6] = v35;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5437A0, &unk_252E4E420);
            v36 = sub_252E36F94();
            MEMORY[0x2530AD570](v36);

            sub_252CC4050(v76, v77, v28 + 80, 0x8000000252E7A400, 0x292873656E6F7ALL, 0xE700000000000000, 500);
LABEL_68:

            return MEMORY[0x277D84F90];
          }

          __break(1u);
LABEL_117:
          v34 = sub_252E378C4();
          if (v34)
          {
            goto LABEL_77;
          }

LABEL_118:

          goto LABEL_68;
        }

        v35 = MEMORY[0x2530ADF00](v34, v32);

        goto LABEL_59;
      }
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v33)
      {
        goto LABEL_54;
      }
    }

    v35 = 0;
    goto LABEL_67;
  }

  while (1)
  {
    v1 = v9 - 1;
    if (__OFSUB__(v9, 1))
    {
      __break(1u);
LABEL_61:

      v1 = MEMORY[0x2530ADF00](v1, v8);

      goto LABEL_8;
    }

    if ((v8 & 0xC000000000000001) != 0)
    {
      goto LABEL_61;
    }

    if ((v1 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_63:
      __break(1u);
      goto LABEL_64;
    }

    if (v1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_63;
    }

    v1 = *(v8 + 8 * v1 + 32);

LABEL_8:
    v10 = [v1 filters];

    if (!v10)
    {
      goto LABEL_51;
    }

    type metadata accessor for HomeFilter();
    v11 = sub_252E37264();

    v75[0] = MEMORY[0x277D84F90];
    if (v11 >> 62)
    {
      v12 = sub_252E378C4();
    }

    else
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v72 = v2;
    v73 = v0;
    v70 = v6;
    v71 = v3;
    if (v12)
    {
      v8 = 0;
      v6 = v11 & 0xC000000000000001;
      v3 = v11 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v6)
        {
          v13 = MEMORY[0x2530ADF00](v8, v11);
        }

        else
        {
          if (v8 >= *(v3 + 16))
          {
            goto LABEL_46;
          }

          v13 = *(v11 + 8 * v8 + 32);
        }

        v14 = v13;
        v1 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }

        v2 = v11;
        v15 = [v13 isExcludeFilter];
        v0 = sub_252956D08();
        v16 = sub_252E37664();
        v17 = v16;
        if (v15)
        {
          v0 = sub_252E37694();

          if (v0)
          {
            v0 = v75;
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
            goto LABEL_15;
          }
        }

        else
        {
        }

LABEL_15:
        v11 = v2;
        ++v8;
        if (v1 == v12)
        {
          v0 = v75[0];
          if ((v75[0] & 0x8000000000000000) == 0)
          {
            goto LABEL_27;
          }

          goto LABEL_71;
        }
      }
    }

    v0 = MEMORY[0x277D84F90];
    if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
    {
      goto LABEL_71;
    }

LABEL_27:
    if ((v0 & 0x4000000000000000) == 0)
    {
      v8 = *(v0 + 16);
      if (!v8)
      {
        break;
      }

      goto LABEL_29;
    }

LABEL_71:
    v8 = sub_252E378C4();
    if (!v8)
    {
      break;
    }

LABEL_29:
    v3 = 0;
    v2 = v0 & 0xC000000000000001;
    v1 = MEMORY[0x277D84F90];
LABEL_30:
    v18 = v3;
    while (1)
    {
      if (v2)
      {
        v19 = MEMORY[0x2530ADF00](v18, v0);
      }

      else
      {
        if (v18 >= *(v0 + 16))
        {
          goto LABEL_48;
        }

        v19 = *(v0 + 8 * v18 + 32);
      }

      v20 = v19;
      v3 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v21 = [v19 zoneName];
      if (v21)
      {
        v22 = v21;
        v74 = v11;
        v23 = sub_252E36F34();
        v25 = v24;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_2529F7A80(0, *(v1 + 16) + 1, 1, v1);
        }

        v6 = *(v1 + 16);
        v26 = *(v1 + 24);
        if (v6 >= v26 >> 1)
        {
          v1 = sub_2529F7A80((v26 > 1), v6 + 1, 1, v1);
        }

        *(v1 + 16) = v6 + 1;
        v27 = v1 + 16 * v6;
        *(v27 + 32) = v23;
        *(v27 + 40) = v25;
        v11 = v74;
        if (v3 != v8)
        {
          goto LABEL_30;
        }

        goto LABEL_73;
      }

      ++v18;
      if (v3 == v8)
      {
        goto LABEL_73;
      }
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v9 = sub_252E378C4();
    if (!v9)
    {
      goto LABEL_50;
    }
  }

  v1 = MEMORY[0x277D84F90];
LABEL_73:

  if (!*(v1 + 16))
  {
LABEL_92:

    goto LABEL_68;
  }

  v74 = v1;
  result = [v73 identifier];
  if (!result)
  {
    goto LABEL_126;
  }

  v38 = result;

  v39 = v70;
  sub_252E32C94();

  v1 = sub_252E32C64();
  v28 = v40;
  (*(v71 + 8))(v39, v72);
  v41 = type metadata accessor for HomeStore(0);
  v42 = static HomeStore.shared.getter(v41);
  v43 = sub_2529D9D50();
  v32 = 0;
  v31 = sub_2529D70E4(v43);

  if (v31 >> 62)
  {
    goto LABEL_117;
  }

  v34 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v34)
  {
    goto LABEL_118;
  }

LABEL_77:
  v44 = 0;
  while (1)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v32 = MEMORY[0x2530ADF00](v44, v31);
      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
LABEL_91:
        __break(1u);
        goto LABEL_92;
      }
    }

    else
    {
      if (v44 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
        goto LABEL_113;
      }

      v32 = *(v31 + 8 * v44 + 32);

      v45 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_91;
      }
    }

    v46 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
    if (v46)
    {
      v47 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == v1 && v46 == v28;
      if (v47 || (sub_252E37DB4() & 1) != 0)
      {
        break;
      }
    }

    ++v44;
    if (v45 == v34)
    {
      goto LABEL_118;
    }
  }

  v48 = [*(v32 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) accessory];
  if (!v48)
  {

    return MEMORY[0x277D84F90];
  }

  v49 = v48;
  type metadata accessor for Accessory(0);
  swift_allocObject();
  sub_252D4CE7C(v49);

  v50 = sub_252D523AC();

  v51 = v50;
  v52 = v74;
  if (v50 >> 62)
  {
    v53 = sub_252E378C4();
    v51 = v50;
    if (v53)
    {
      goto LABEL_96;
    }
  }

  else
  {
    v53 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v53)
    {
LABEL_96:
      v28 = 0;
      v73 = (v51 & 0xC000000000000001);
      v54 = v51 & 0xFFFFFFFFFFFFFF8;
      v34 = MEMORY[0x277D84F90];
      v32 = v51;
      v55 = v53;
      while (1)
      {
        if (v73)
        {
          v56 = MEMORY[0x2530ADF00](v28, v51);
          v57 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_111;
          }
        }

        else
        {
          if (v28 >= *(v54 + 16))
          {
            goto LABEL_112;
          }

          v56 = *(v51 + 8 * v28 + 32);

          v57 = v28 + 1;
          if (__OFADD__(v28, 1))
          {
            goto LABEL_111;
          }
        }

        v59 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v58 = *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = sub_2529F7A80(0, *(v34 + 16) + 1, 1, v34);
        }

        v61 = *(v34 + 16);
        v60 = *(v34 + 24);
        if (v61 >= v60 >> 1)
        {
          v34 = sub_2529F7A80((v60 > 1), v61 + 1, 1, v34);
        }

        *(v34 + 16) = v61 + 1;
        v62 = v34 + 16 * v61;
        *(v62 + 32) = v59;
        *(v62 + 40) = v58;
        ++v28;
        v52 = v74;
        v51 = v32;
        if (v57 == v55)
        {
          goto LABEL_121;
        }
      }
    }
  }

  v34 = MEMORY[0x277D84F90];
LABEL_121:

  v63 = sub_252C75848(v34);

  v64 = sub_252C75848(v52);

  v65 = sub_252DFABF8(v64, v63);

  v66 = v65[2];
  if (!v66)
  {

    return MEMORY[0x277D84F90];
  }

  v67 = sub_252DFA3E0(v65[2], 0);
  v68 = sub_252E082D0(v75, v67 + 4, v66, v65);
  result = sub_25291AE30(v75[0]);
  if (v68 == v66)
  {
    return v67;
  }

  __break(1u);
LABEL_126:
  __break(1u);
  return result;
}

_OWORD *sub_252D13768(uint64_t a1)
{
  v31 = a1;
  v35 = sub_252E32CB4();
  v1 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v3 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529D9D50();
  v7 = sub_2529D70E4(v6);

  if (v7 >> 62)
  {
LABEL_31:
    v8 = sub_252E378C4();
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_32:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401A0, &qword_252E3BFC8);
    result = swift_allocObject();
    result[1] = xmmword_252E3C290;
    *(result + 4) = v31;
    return result;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_32;
  }

LABEL_3:
  v9 = 0;
  v33 = v7 & 0xFFFFFFFFFFFFFF8;
  v34 = v7 & 0xC000000000000001;
  v32 = (v1 + 8);
  while (v34)
  {
    v1 = MEMORY[0x2530ADF00](v9, v7);
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_19;
    }

LABEL_9:
    v11 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    v12 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);

    result = [v36 identifier];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v14 = result;
    sub_252E32C94();

    v15 = sub_252E32C64();
    v17 = v16;
    (*v32)(v3, v35);
    if (v12)
    {
      if (v11 == v15 && v12 == v17)
      {
        goto LABEL_20;
      }

      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    ++v9;
    if (v10 == v8)
    {
      goto LABEL_32;
    }
  }

  if (v9 >= *(v33 + 16))
  {
    __break(1u);
    goto LABEL_31;
  }

  v1 = *(v7 + 8 * v9 + 32);

  v10 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_9;
  }

LABEL_19:
  __break(1u);
LABEL_20:

LABEL_21:

  v20 = sub_252CD941C();
  v21 = sub_2529F7B8C(0, 1, 1, MEMORY[0x277D84F90]);
  v23 = *(v21 + 16);
  v22 = *(v21 + 24);
  if (v23 >= v22 >> 1)
  {
    v21 = sub_2529F7B8C((v22 > 1), v23 + 1, 1, v21);
  }

  *(v21 + 16) = v23 + 1;
  *(v21 + 8 * v23 + 32) = v20;
  v24 = sub_252CD94E0();
  if (v25)
  {
    goto LABEL_26;
  }

  v27 = *(v21 + 16);
  v26 = *(v21 + 24);
  v28 = v27 + 1;
  if (v27 >= v26 >> 1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    *(v21 + 16) = v28;
    *(v21 + 8 * v27 + 32) = v24;
LABEL_26:
    v27 = sub_252C759A0(v21);

    v28 = *(v27 + 16);
    if (!v28)
    {
      break;
    }

    v29 = sub_252DFA464(*(v27 + 16), 0);
    v21 = sub_252E1135C();
    v24 = sub_25291AE30(v37);
    if (v21 == v28)
    {

      return v29;
    }

    __break(1u);
LABEL_34:
    v30 = v24;
    v21 = sub_2529F7B8C((v26 > 1), v28, 1, v21);
    v24 = v30;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_252D13B74(void *a1)
{
  v2 = [a1 value];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 limitValue];

    if (v4)
    {
      return sub_252E36F34();
    }
  }

  if (qword_27F53F6A0 != -1)
  {
    swift_once();
  }

  v6 = off_27F5456A0;
  [a1 taskType];
  if (!v6[2])
  {
    return 0;
  }

  v7 = sub_252A488EC();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = *(v6[7] + 16 * v7);

  return v9;
}

void *sub_252D13C70(void *a1)
{
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return 0;
  }

  v7 = v4;
  v8 = a1;
  v9 = [v8 type];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D47388]) init];
      v17 = [v8 stringValue];
      [v10 setValue_];

      goto LABEL_13;
    }

    if (v9 == 4)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D47370]) init];
      [v10 setValue_];
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  if (v9 != 1)
  {
    if (v9 == 2)
    {
      v10 = [objc_allocWithZone(MEMORY[0x277D47360]) init];
      [v8 doubleValue];
      *&v11 = v11;
      [v10 setValue_];
LABEL_13:
      v16 = v10;
      goto LABEL_14;
    }

LABEL_9:

    return 0;
  }

  v13 = [objc_allocWithZone(MEMORY[0x277D47340]) init];
  [v13 setValue_];
  v14 = v13;
  sub_252E32E74();
  sub_252E32E24();
  (*(v3 + 8))(v6, v7);
  v15 = sub_252E36F04();

  [v14 setAceId_];

  v16 = v14;
LABEL_14:
  v12 = v16;
  [v8 unit];
  if (qword_27F53F6B0 != -1)
  {
    swift_once();
  }

  if (*(off_27F5456B0 + 2) && (sub_252A488EC(), (v18 & 1) != 0))
  {

    v19 = sub_252E36F04();
  }

  else
  {
    v19 = 0;
  }

  [v12 setUnits_];

  return v12;
}

unint64_t sub_252D13FBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F698 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F545698;
    v6 = 1 << *(off_27F545698 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F545698 + 64;
    v9 = v7 & *(off_27F545698 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 4 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      v16 = 0;
      return v13 | (v16 << 32);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v17 = sub_252E36AD4();
    __swift_project_value_buffer(v17, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000024, 0x8000000252E93FC0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000012, 0x8000000252E93FF0, 326);
  }

  v13 = 0;
  v16 = 1;
  return v13 | (v16 << 32);
}

uint64_t sub_252D141D4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F690 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F545690;
    v6 = 1 << *(off_27F545690 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F545690 + 64;
    v9 = v7 & *(off_27F545690 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000021, 0x8000000252E93E30, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000012, 0x8000000252E93E60, 279);
  }

  return 0;
}

unint64_t sub_252D143E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6C0 != -1)
    {
LABEL_29:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456C0;
    v6 = 1 << *(off_27F5456C0 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456C0 + 64;
    v9 = v7 & *(off_27F5456C0 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 4 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      v16 = 0;
      return v13 | (v16 << 32);
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (sub_252E36F34() != a1 || v17 != a2)
    {
      v19 = sub_252E37DB4();

      if (v19)
      {
        goto LABEL_26;
      }

      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v20 = sub_252E36AD4();
      __swift_project_value_buffer(v20, qword_27F544CB8);
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000032, 0x8000000252E93F60);
      MEMORY[0x2530AD570](a1, a2);
      sub_252CC4050(0, 0xE000000000000000, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000019, 0x8000000252E93FA0, 339);
    }
  }

LABEL_26:
  v13 = 0;
  v16 = 1;
  return v13 | (v16 << 32);
}

uint64_t sub_252D14650(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F688 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F545688;
    v6 = 1 << *(off_27F545688 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F545688 + 64;
    v9 = v7 & *(off_27F545688 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD00000000000001FLL, 0x8000000252E93E80, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000011, 0x8000000252E93EA0, 264);
  }

  return 0;
}

uint64_t sub_252D14860(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6B8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456B8;
    v6 = 1 << *(off_27F5456B8 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456B8 + 64;
    v9 = v7 & *(off_27F5456B8 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000021, 0x8000000252E93DE0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000010, 0x8000000252E93E10, 294);
  }

  return 0;
}

uint64_t sub_252D14A74(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (qword_27F53F6A8 != -1)
  {
LABEL_31:
    swift_once();
  }

  v4 = 0;
  v5 = off_27F5456A8;
  v6 = 1 << *(off_27F5456A8 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = off_27F5456A8 + 64;
  v9 = v7 & *(off_27F5456A8 + 8);
  v10 = (v6 + 63) >> 6;
  while (v9)
  {
LABEL_11:
    v12 = __clz(__rbit64(v9)) | (v4 << 6);
    v13 = *(v5[6] + 8 * v12);
    v14 = (v5[7] + 16 * v12);
    if (*v14 != a1 || v14[1] != a2)
    {
      v9 &= v9 - 1;
      if ((sub_252E37DB4() & 1) == 0)
      {
        continue;
      }
    }

    return v13;
  }

  while (1)
  {
    v11 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v11 >= v10)
    {
      break;
    }

    v9 = *&v8[8 * v11];
    ++v4;
    if (v9)
    {
      v4 = v11;
      goto LABEL_11;
    }
  }

  if (sub_252E36F34() == a1 && v16 == a2)
  {
    v13 = 46;
  }

  else
  {
    v18 = sub_252E37DB4();

    if (v18)
    {
      return 46;
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v19 = sub_252E36AD4();
    __swift_project_value_buffer(v19, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0xD000000000000029, 0x8000000252E93F30, 0xD000000000000078, 0x8000000252E7A400);
    v13 = 0;
  }

  return v13;
}

uint64_t sub_252D14CBC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6B0 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456B0;
    v6 = 1 << *(off_27F5456B0 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456B0 + 64;
    v9 = v7 & *(off_27F5456B0 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC3D90(0xD000000000000017, 0x8000000252E93F10, 0xD000000000000078, 0x8000000252E7A400);
  }

  return 0;
}

id sub_252D14EA4(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = a1;
    v5 = [v3 value];
    v6 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v7 = sub_252E36F04();
    v8 = [v6 initWithIdentifier:0 displayString:v7];

    v9 = v8;
    [v9 setBoolValue_];
    [v9 setType_];
LABEL_18:

    return v9;
  }

  objc_opt_self();
  v10 = swift_dynamicCastObjCClass();
  if (v10)
  {
    v11 = v10;
    v4 = a1;
    v12 = [v11 value];
    v13 = [v11 units];
    if (v13)
    {
      v14 = v13;
      v15 = sub_252E36F34();
      v17 = v16;
    }

    else
    {
      v15 = 0;
      v17 = 0;
    }

    v27 = sub_252D14CBC(v15, v17);

    v28 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v29 = sub_252E36F04();
    v30 = [v28 initWithIdentifier:0 displayString:v29];

    v9 = v30;
    [v9 setIntegerValue_];
    [v9 setUnit_];
    [v9 setType_];
    goto LABEL_18;
  }

  objc_opt_self();
  v18 = swift_dynamicCastObjCClass();
  if (v18)
  {
    v19 = v18;
    v4 = a1;
    [v19 value];
    v21 = round(v20 * 10.0);
    v22 = [v19 units];
    if (v22)
    {
      v23 = v22;
      v24 = sub_252E36F34();
      v26 = v25;
    }

    else
    {
      v24 = 0;
      v26 = 0;
    }

    v44 = sub_252D14CBC(v24, v26);

    v45 = objc_allocWithZone(type metadata accessor for HomeAttributeValue());
    v46 = sub_252E36F04();
    v47 = [v45 initWithIdentifier:0 displayString:v46];

    v9 = v47;
    [v9 setDoubleValue_];
    [v9 setUnit_];
    [v9 setType_];
    goto LABEL_18;
  }

  objc_opt_self();
  v31 = swift_dynamicCastObjCClass();
  if (!v31)
  {
    v48 = qword_27F53F4B0;
    v49 = a1;
    if (v48 != -1)
    {
      swift_once();
    }

    v50 = sub_252E36AD4();
    __swift_project_value_buffer(v50, qword_27F544CB8);
    sub_252E379F4();

    v51 = [v49 description];
    v52 = sub_252E36F34();
    v54 = v53;

    MEMORY[0x2530AD570](v52, v54);

    sub_252CC4050(0xD00000000000002BLL, 0x8000000252E93EC0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000015, 0x8000000252E93EF0, 426);

    return 0;
  }

  v32 = v31;
  v33 = a1;
  result = [v32 value];
  if (result)
  {
    v35 = result;
    v36 = sub_252E36F34();
    v38 = v37;

    v39 = [v32 units];
    if (v39)
    {
      v40 = v39;
      v41 = sub_252E36F34();
      v43 = v42;
    }

    else
    {
      v41 = 0;
      v43 = 0;
    }

    type metadata accessor for HomeAttributeValue();
    v55 = sub_252D14CBC(v41, v43);

    v9 = HomeAttributeValue.__allocating_init(stringValue:unit:)(v36, v38, v55);

    return v9;
  }

  __break(1u);
  return result;
}

uint64_t sub_252D153E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_27F53F6C8 != -1)
    {
LABEL_23:
      swift_once();
    }

    v4 = 0;
    v5 = off_27F5456C8;
    v6 = 1 << *(off_27F5456C8 + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = off_27F5456C8 + 64;
    v9 = v7 & *(off_27F5456C8 + 8);
    v10 = (v6 + 63) >> 6;
    while (v9)
    {
LABEL_11:
      v12 = __clz(__rbit64(v9)) | (v4 << 6);
      v13 = *(v5[6] + 8 * v12);
      v14 = (v5[7] + 16 * v12);
      if (*v14 != a1 || v14[1] != a2)
      {
        v9 &= v9 - 1;
        if ((sub_252E37DB4() & 1) == 0)
        {
          continue;
        }
      }

      return v13;
    }

    while (1)
    {
      v11 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v11 >= v10)
      {
        break;
      }

      v9 = *&v8[8 * v11];
      ++v4;
      if (v9)
      {
        v4 = v11;
        goto LABEL_11;
      }
    }

    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v16 = sub_252E36AD4();
    __swift_project_value_buffer(v16, qword_27F544CB8);
    sub_252E379F4();

    MEMORY[0x2530AD570](a1, a2);
    sub_252CC4050(0xD000000000000028, 0x8000000252E7A3D0, 0xD000000000000078, 0x8000000252E7A400, 0xD000000000000012, 0x8000000252E7A480, 444);
  }

  return 0;
}

uint64_t sub_252D155F4(uint64_t a1, char a2)
{
  if (a2)
  {
    return 0;
  }

  if (qword_27F53F6C8 != -1)
  {
    swift_once();
  }

  v3 = off_27F5456C8;
  if (!*(off_27F5456C8 + 2))
  {
    return 0;
  }

  v4 = sub_252A488EC();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(v3[7] + 16 * v4);

  return v6;
}

unint64_t sub_252D1569C(unsigned __int8 a1)
{
  v1 = 0xD000000000000015;
  if (a1 <= 4u)
  {
    v4 = 0xD000000000000017;
    v5 = 0xD000000000000012;
    if (a1 != 3)
    {
      v5 = 0xD000000000000013;
    }

    if (a1 != 2)
    {
      v4 = v5;
    }

    if (a1)
    {
      v1 = 0xD00000000000001BLL;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0xD000000000000017;
    if (a1 != 8)
    {
      v2 = 0xD000000000000013;
    }

    if (a1 != 6)
    {
      v1 = 0xD000000000000018;
    }

    if (a1 == 5)
    {
      v1 = 0xD000000000000011;
    }

    if (a1 <= 7u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

id sub_252D157C8(unint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 > 2u)
  {
    if (a4 == 3)
    {

      return sub_252D1663C(a1);
    }

    else
    {
      if (a4 == 4)
      {
        goto LABEL_16;
      }

      v10 = (a3 | a2 | a1) != 0;

      return sub_252D15950(v10);
    }
  }

  else
  {
    if (a4)
    {
      if (a4 == 1)
      {

        return sub_252D164E4();
      }

LABEL_16:
      v6 = objc_allocWithZone(MEMORY[0x277D5C220]);
      v7 = sub_252E36F04();
      v8 = [v6 initWithIdentifier_];

      v9 = sub_252D15B64(a1, v8);
      return v9;
    }

    return sub_252D161E8(a1, a2, a3);
  }
}

id sub_252D15950(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v3 = sub_252E36F04();
  v4 = [v2 initWithIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  strcpy(v15, "buttonPressed");
  HIWORD(v15[1]) = -4864;
  v6 = MEMORY[0x277D837D0];
  sub_252E37964();
  v7 = 7562617;
  if (a1)
  {
    v7 = 28526;
  }

  v8 = 0xE300000000000000;
  *(inited + 96) = v6;
  if (a1)
  {
    v8 = 0xE200000000000000;
  }

  *(inited + 72) = v7;
  *(inited + 80) = v8;
  sub_252CC5978(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &qword_27F5451B0, &qword_252E5A530);
  v9 = sub_252E36E24();

  [v4 setUserData_];

  v10 = objc_opt_self();
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  sub_252929E74((v11 + 16), v15);

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  v12 = sub_252E33904();
  v13 = [v10 runSiriKitExecutorCommandWithContext:v12 payload:v4];

  __swift_destroy_boxed_opaque_existential_1(v15);
  return v13;
}

id sub_252D15B64(void *a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v4 = sub_252B680FC(a1);
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = (v5 + 504 * v6 - 472);
    memcpy(__dst, v7, sizeof(__dst));
    v8 = __dst[48];
    memmove(__src, v7, 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    sub_2529353AC(__dst, v38);

    memcpy(v38, __src, sizeof(v38));
  }

  else
  {

    sub_25293DEE0(v38);
    v8 = 22;
  }

  type metadata accessor for ControlHomeIntentCodable();
  swift_allocObject();
  v9 = sub_252ADB074(a1);
  type metadata accessor for HandoffHandleIntentData();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = v8;
  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  __src[0] = v10;
  sub_252D16CD4(&qword_27F545760, type metadata accessor for HandoffHandleIntentData, protocol conformance descriptor for HandoffHandleIntentData);
  v11 = sub_252E329A4();
  v13 = v12;

  v14 = objc_opt_self();
  v15 = sub_252E32D14();
  sub_25296464C(v11, v13);
  __src[0] = 0;
  v16 = [v14 JSONObjectWithData:v15 options:0 error:__src];

  if (!v16)
  {
    v28 = __src[0];
LABEL_12:
    v29 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_13;
  }

  v17 = __src[0];
  sub_252E377F4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
  if (swift_dynamicCast())
  {
    v18 = sub_252E36E24();

    __src[0] = 0;
    v19 = [v14 dataWithJSONObject:v18 options:0 error:__src];

    v20 = __src[0];
    if (v19)
    {
      v21 = sub_252E32D34();
      v23 = v22;

      if (qword_27F53F500 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544DA8);
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      sub_252E379F4();

      __src[0] = 0xD00000000000001ALL;
      __src[1] = 0x8000000252E941A0;
      v25 = sub_252ADBCF0();
      MEMORY[0x2530AD570](v25);

      sub_252CC3D90(__src[0], __src[1], 0xD000000000000076, 0x8000000252E94070);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
      v26 = swift_allocObject();
      *(v26 + 16) = xmmword_252E3C290;
      strcpy(__src, "handedIntent");
      BYTE5(__src[1]) = 0;
      HIWORD(__src[1]) = -5120;
      sub_252E37964();
      *(v26 + 96) = MEMORY[0x277CC9318];
      *(v26 + 72) = v21;
      *(v26 + 80) = v23;
      sub_2529E61B0(v21, v23);
      sub_252CC5978(v26);
      swift_setDeallocating();
      sub_25293847C(v26 + 32, &qword_27F5451B0, &qword_252E5A530);
      swift_deallocClassInstance();
      v27 = sub_252E36E24();

      [a2 setUserData_];

      sub_25296464C(v21, v23);
      goto LABEL_16;
    }

    v28 = v20;
    goto LABEL_12;
  }

LABEL_13:
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v30 = sub_252E36AD4();
  __swift_project_value_buffer(v30, qword_27F544DA8);
  sub_252CC4050(0xD00000000000001ELL, 0x8000000252E94150, 0xD000000000000076, 0x8000000252E94070, 0xD00000000000002DLL, 0x8000000252E94170, 76);
LABEL_16:
  v31 = objc_opt_self();
  v32 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v31);
  sub_252929E74((v32 + 16), __src);

  __swift_project_boxed_opaque_existential_1(__src, __src[3]);
  v33 = sub_252E33904();
  v34 = [v31 runSiriKitExecutorCommandWithContext:v33 payload:a2];
  sub_25293847C(v38, &qword_27F5404C8, &unk_252E3FD60);

  __swift_destroy_boxed_opaque_existential_1(__src);
  return v34;
}

id sub_252D161E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v7 = sub_252E36F04();
  v8 = [v6 initWithIdentifier_];

  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544DA8);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000053, 0x8000000252E94010);
  v10 = sub_252BEBD04(a1);
  MEMORY[0x2530AD570](v10);

  MEMORY[0x2530AD570](0x6D616E20646E6120, 0xEA00000000002065);
  MEMORY[0x2530AD570](a2, a3);
  sub_252CC3D90(0, 0xE000000000000000, 0xD000000000000076, 0x8000000252E94070);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  v20 = sub_252BEBD04(a1);
  v21 = v12;
  v13 = MEMORY[0x277D837D0];
  sub_252E37964();
  *(inited + 96) = v13;
  *(inited + 72) = a2;
  *(inited + 80) = a3;

  sub_252CC5978(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &qword_27F5451B0, &qword_252E5A530);
  v14 = sub_252E36E24();

  [v8 setUserData_];

  v15 = objc_opt_self();
  v16 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v15);
  sub_252929E74((v16 + 16), &v20);

  __swift_project_boxed_opaque_existential_1(&v20, v22);
  v17 = sub_252E33904();
  v18 = [v15 runSiriKitExecutorCommandWithContext:v17 payload:v8];

  __swift_destroy_boxed_opaque_existential_1(&v20);
  return v18;
}

id sub_252D164E4()
{
  v0 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v1 = sub_252E36F04();
  v2 = [v0 initWithIdentifier_];

  sub_252CC5978(MEMORY[0x277D84F90]);
  v3 = sub_252E36E24();

  [v2 setUserData_];

  v4 = objc_opt_self();
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v5 + 16), v9);

  __swift_project_boxed_opaque_existential_1(v9, v9[3]);
  v6 = sub_252E33904();
  v7 = [v4 runSiriKitExecutorCommandWithContext:v6 payload:v2];

  __swift_destroy_boxed_opaque_existential_1(v9);
  return v7;
}

id sub_252D1663C(unint64_t a1)
{
  v41[5] = *MEMORY[0x277D85DE8];
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544DA8);

  v3 = sub_252E36AC4();
  v4 = sub_252E374C4();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v41[0] = v6;
    *v5 = 136315138;
    v7 = type metadata accessor for HomeFilter();
    v8 = MEMORY[0x2530AD730](a1, v7);
    v10 = sub_252BE2CE0(v8, v9, v41);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_252917000, v3, v4, "multipleEntitiesDirectInvocation filters: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x2530AED00](v6, -1, -1);
    MEMORY[0x2530AED00](v5, -1, -1);
  }

  v11 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v12 = sub_252E36F04();
  v13 = [v11 initWithIdentifier_];

  if (a1 >> 62)
  {
    v14 = sub_252E378C4();
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v41[0] = MEMORY[0x277D84F90];
    sub_252E37AB4();
    if (v14 < 0)
    {
      __break(1u);
    }

    v16 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x2530ADF00](v16, a1);
      }

      else
      {
        v17 = *(a1 + 8 * v16 + 32);
      }

      v18 = v17;
      ++v16;
      type metadata accessor for CodableHomeFilter();
      swift_allocObject();
      sub_2529D0A90(v18);

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    while (v14 != v16);
    v15 = v41[0];
  }

  sub_252E329C4();
  swift_allocObject();
  sub_252E329B4();
  v41[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540A38, &qword_252E3DF88);
  sub_2529856FC();
  v19 = sub_252E329A4();
  v21 = v20;

  v22 = objc_opt_self();

  v23 = sub_252E32D14();
  sub_25296464C(v19, v21);
  v41[0] = 0;
  v24 = [v22 JSONObjectWithData:v23 options:0 error:v41];

  if (!v24)
  {
    v34 = v41[0];
LABEL_21:
    v35 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_22;
  }

  v25 = v41[0];
  sub_252E377F4();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545758, &unk_252E5BB80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:
    sub_252CC4050(0xD00000000000002ALL, 0x8000000252E940F0, 0xD000000000000076, 0x8000000252E94070, 0xD000000000000027, 0x8000000252E94120, 130);
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541EB8, &unk_252E5A6D0);
  v26 = sub_252E37254();

  v41[0] = 0;
  v27 = [v22 dataWithJSONObject:v26 options:0 error:v41];

  v28 = v41[0];
  if (!v27)
  {
    v34 = v28;
    goto LABEL_21;
  }

  v29 = sub_252E32D34();
  v31 = v30;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545750, &qword_252E5BB78);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_252E3C290;
  v41[0] = 0x737265746C6966;
  v41[1] = 0xE700000000000000;
  sub_252E37964();
  *(inited + 96) = MEMORY[0x277CC9318];
  *(inited + 72) = v29;
  *(inited + 80) = v31;
  sub_2529E61B0(v29, v31);
  sub_252CC5978(inited);
  swift_setDeallocating();
  sub_25293847C(inited + 32, &qword_27F5451B0, &qword_252E5A530);
  v33 = sub_252E36E24();

  [v13 setUserData_];

  sub_25296464C(v29, v31);
LABEL_23:
  v36 = objc_opt_self();
  v37 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v36);
  sub_252929E74((v37 + 16), v41);

  __swift_project_boxed_opaque_existential_1(v41, v41[3]);
  v38 = sub_252E33904();
  v39 = [v36 runSiriKitExecutorCommandWithContext:v38 payload:v13];

  __swift_destroy_boxed_opaque_existential_1(v41);
  return v39;
}

uint64_t sub_252D16CD4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DeltaRoleSemantic.rawValue.getter()
{
  v1 = 0x61746C6564;
  v2 = 0x65766F6261;
  if (*v0 != 2)
  {
    v2 = 0x776F6C6562;
  }

  if (*v0)
  {
    v1 = 0x61746C65646E6F6ELL;
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

HomeAutomationInternal::DeltaRoleSemantic_optional __swiftcall DeltaRoleSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252D16E04()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D16EBC(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D16F60(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D17020(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x61746C6564;
  v4 = 0x65766F6261;
  if (*v1 != 2)
  {
    v4 = 0x776F6C6562;
  }

  if (*v1)
  {
    v3 = 0x61746C65646E6F6ELL;
    v2 = 0xE800000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_252D1717C(uint64_t a1, uint64_t a2)
{
  v4 = sub_252D17498();
  v5 = sub_252D174EC();
  v6 = sub_252D17540();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t _s22HomeAutomationInternal17DeltaRoleSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 0x61746C6564;
  v3 = *a1;
  if (v3 > 1)
  {
    v5 = 0xE500000000000000;
    if (v3 == 2)
    {
      v4 = 0x65766F6261;
    }

    else
    {
      v4 = 0x776F6C6562;
    }
  }

  else
  {
    if (*a1)
    {
      v4 = 0x61746C65646E6F6ELL;
    }

    else
    {
      v4 = 0x61746C6564;
    }

    if (v3)
    {
      v5 = 0xE800000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x65766F6261;
  if (*a2 != 2)
  {
    v7 = 0x776F6C6562;
  }

  if (*a2)
  {
    v2 = 0x61746C65646E6F6ELL;
    v6 = 0xE800000000000000;
  }

  if (*a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (*a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = sub_252E37DB4();
  }

  return v10 & 1;
}

unint64_t sub_252D1731C()
{
  result = qword_27F545768;
  if (!qword_27F545768)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F545768);
  }

  return result;
}

unint64_t sub_252D17374()
{
  result = qword_27F545770;
  if (!qword_27F545770)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F545770);
  }

  return result;
}

unint64_t sub_252D173CC()
{
  result = qword_27F545778;
  if (!qword_27F545778)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F545780, &qword_252E5BCA0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F545778);
  }

  return result;
}

unint64_t sub_252D17434()
{
  result = qword_27F545788;
  if (!qword_27F545788)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F545788);
  }

  return result;
}

unint64_t sub_252D17498()
{
  result = qword_27F545790;
  if (!qword_27F545790)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F545790);
  }

  return result;
}

unint64_t sub_252D174EC()
{
  result = qword_27F545798;
  if (!qword_27F545798)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F545798);
  }

  return result;
}

unint64_t sub_252D17540()
{
  result = qword_27F5457A0;
  if (!qword_27F5457A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeltaRoleSemantic, &type metadata for DeltaRoleSemantic, v0, v1);
    atomic_store(result, &qword_27F5457A0);
  }

  return result;
}

uint64_t sub_252D17598(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_22;
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
          goto LABEL_21;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 outerDeviceName];
      if (!v7)
      {
        goto LABEL_19;
      }

      v8 = [v5 hasAllQuantifier];
      sub_252956D08();
      v9 = sub_252E37674();
      v10 = v9;
      if (v8)
      {
        v11 = sub_252E37694();

        if (v11)
        {
          goto LABEL_19;
        }
      }

      else
      {
      }

      if ([v5 deviceType])
      {
        goto LABEL_19;
      }

      v12 = [v5 homeEntityName];
      if (v12)
      {

LABEL_19:
        return 0;
      }

      if (v6 == i)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return 1;
}

id sub_252D17748(void *a1)
{
  result = [a1 filters];
  if (result)
  {
    v2 = result;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    LOBYTE(v2) = sub_252D17598(v3);

    return (v2 & 1);
  }

  return result;
}

uint64_t sub_252D177D0@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PickPrimaryServiceFromAccessoryHandler();
  result = swift_allocObject();
  *a1 = result;
  return result;
}

unint64_t sub_252D17804(void *a1)
{
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = v3[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded];
  if (v4 != 2 && (v4 & 1) == 0)
  {
    sub_2529318DC();
    v9 = swift_allocError();
    v49 = 12;
    goto LABEL_66;
  }

  v5 = [a1 filters];
  if (!v5)
  {
    sub_2529318DC();
    v9 = swift_allocError();
    v49 = 1;
LABEL_66:
    *v48 = v49;

    return v9;
  }

  v6 = v5;
  type metadata accessor for HomeFilter();
  v7 = sub_252E37264();

  v8 = [a1 userTask];
  v9 = HomeStore.accessories(matching:supporting:)(v7, v8);
  v11 = v10;

  if (v11)
  {
    return v9;
  }

  v12 = [a1 filters];
  if (!v12)
  {
    sub_252929F10(v9, 0);
LABEL_70:
    sub_2529318DC();
    v9 = swift_allocError();
    *v53 = 8;
    return v9;
  }

  v13 = v12;
  v14 = sub_252E37264();

  v56 = [a1 userTask];
  if (!v56)
  {
    sub_252929F10(v9, 0);

    goto LABEL_70;
  }

  v66 = MEMORY[0x277D84F90];
  if (v14 >> 62)
  {
    goto LABEL_77;
  }

  v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
  v59 = v14;
  if (v15)
  {
    if (v9 >> 62)
    {
      v16 = sub_252E378C4();
    }

    else
    {
      v16 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = 0;
    v61 = v14 & 0xC000000000000001;
    v57 = v14 + 32;
    v58 = v14 & 0xFFFFFFFFFFFFFF8;
    v14 = MEMORY[0x277D84F90];
    v60 = v15;
    while (1)
    {
      if (v61)
      {
        v18 = MEMORY[0x2530ADF00](v17, v59);
      }

      else
      {
        if (v17 >= *(v58 + 16))
        {
          goto LABEL_76;
        }

        v18 = *(v57 + 8 * v17);
      }

      v19 = v18;
      v64 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_74;
      }

      v65 = v14;
      if (v16)
      {
        v14 = 0;
        while (1)
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v14, v9);
            v20 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
              goto LABEL_72;
            }
          }

          else
          {
            if (v14 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_73;
            }

            v20 = v14 + 1;
            if (__OFADD__(v14, 1))
            {
LABEL_72:
              __break(1u);
LABEL_73:
              __break(1u);
LABEL_74:
              __break(1u);
LABEL_75:
              __break(1u);
LABEL_76:
              __break(1u);
LABEL_77:
              v15 = sub_252E378C4();
              goto LABEL_9;
            }
          }

          if (sub_252D50D28(v19))
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v14;
          if (v20 == v16)
          {
            v14 = v65;
            break;
          }
        }
      }

      v21 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
      if (v21)
      {
        if (!sub_252E378C4())
        {
          goto LABEL_53;
        }
      }

      else if (!*(v14 + 16))
      {
        goto LABEL_53;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2530ADF00](0, v14);
      }

      else
      {
        if (!*(v14 + 16))
        {
          goto LABEL_75;
        }

        v22 = *(v14 + 32);
      }

      v23 = sub_252D4DFC8();
      if (!v23)
      {
        break;
      }

      v24 = v23;
      if (v21)
      {
        v25 = sub_252E378C4();
      }

      else
      {
        v25 = *(v14 + 16);
      }

      if (v25 != 1)
      {

LABEL_53:

        v14 = MEMORY[0x277D84F90];
        goto LABEL_54;
      }

      v26 = sub_252CDAB7C(v56);
      v14 = MEMORY[0x277D84F90];
      if (v26)
      {
        if (qword_27F53F500 != -1)
        {
          swift_once();
        }

        v27 = sub_252E36AD4();
        __swift_project_value_buffer(v27, qword_27F544DA8);
        sub_252E379F4();

        v55 = (v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v28 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
        v62 = *(v24 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

        MEMORY[0x2530AD570](v62, v28);

        MEMORY[0x2530AD570](0x63636120726F6620, 0xEF2079726F737365);
        v30 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v29 = *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        MEMORY[0x2530AD570](v30, v29);

        sub_252CC3D90(0xD000000000000018, 0x8000000252E94210, 0xD00000000000009FLL, 0x8000000252E94230);

        type metadata accessor for HomeFilter.Builder();
        swift_allocObject();
        HomeFilter.Builder.init()();
        v32 = *(*v31 + 752);
        v33 = v19;
        v34 = v32(v19);

        v63 = v33;

        v35 = *v55;
        v36 = v55[1];

        v37 = (*(*v34 + 576))(v35, v36);

        v38 = sub_252CD941C();
        v39 = (*(*v37 + 624))(v38);

        v41 = (*(*v39 + 760))(v40);

        v42 = v41;
        MEMORY[0x2530AD700]();
        if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v66 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();

        v43 = v60;
        v14 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }

LABEL_54:

      v44 = [a1 filters];
      if (v44)
      {
        v45 = v44;
        v46 = sub_252E37264();

        v47 = sub_25297CCF8(v46);
        v14 = MEMORY[0x277D84F90];
      }

      else
      {

        v47 = v14;
      }

      v66 = v47;
      v43 = v60;
LABEL_58:
      v17 = v64;
      if (v64 == v43)
      {
        goto LABEL_68;
      }
    }

    goto LABEL_53;
  }

LABEL_68:
  sub_252929F10(v9, 0);

  v50 = [a1 userTask];
  v51 = [a1 time];
  v9 = [objc_allocWithZone(type metadata accessor for ControlHomeIntent()) init];
  [v9 setUserTask_];
  v52 = sub_252E37254();

  [v9 setFilters_];

  [v9 setTime_];
  return v9;
}

uint64_t sub_252D18130()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457B0, &unk_252E5BEB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_252E53770;
  *(v0 + 32) = type metadata accessor for BlockIncompleteMatterAccessoryManagerLoadHandler();
  *(v0 + 40) = &off_2864BEA90;
  *(v0 + 48) = type metadata accessor for BlockNoMatchingEntitiesHandler();
  *(v0 + 56) = &off_2864B9F00;
  *(v0 + 64) = type metadata accessor for BlockModifySensors();
  *(v0 + 72) = &off_2864B8B98;
  *(v0 + 80) = type metadata accessor for BlockMulticardinalRequestsHandler();
  *(v0 + 88) = &off_2864B23C8;
  *(v0 + 96) = type metadata accessor for BlockMissingSceneHandler();
  *(v0 + 104) = &off_2864B26F0;
  *(v0 + 112) = type metadata accessor for BlockUnsafeActionsHandler();
  *(v0 + 120) = &off_2864B19D8;
  *(v0 + 128) = type metadata accessor for BlockDisableSceneHandler();
  *(v0 + 136) = &off_2864B6A20;
  *(v0 + 144) = type metadata accessor for BlockGetATVStatusHandler();
  *(v0 + 152) = &off_2864BD500;
  *(v0 + 160) = type metadata accessor for BlockUnsupportedTasksHandler();
  *(v0 + 168) = &off_2864BE540;
  *(v0 + 176) = type metadata accessor for BlockFeatureNotAvailableForDeviceHandler();
  *(v0 + 184) = &off_2864B6E08;
  result = type metadata accessor for BlockAsyncInProgressHandler();
  *(v0 + 192) = result;
  *(v0 + 200) = &off_2864B61C8;
  qword_27F575B00 = v0;
  return result;
}

void sub_252D18260(char *a1@<X8>)
{
  if (*(v1 + 528))
  {
    v2 = 11;
  }

  else
  {
    v2 = 9;
  }

  *a1 = v2;
}

uint64_t sub_252D1827C(uint64_t a1)
{
  v2[821] = v1;
  v2[820] = a1;
  v3 = sub_252E36AB4();
  v2[822] = v3;
  v2[823] = *(v3 - 8);
  v2[824] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D18340, 0, 0);
}

uint64_t sub_252D18340()
{
  v49 = v0;
  if (qword_27F53F5D0 != -1)
  {
LABEL_25:
    swift_once();
  }

  v1 = qword_27F544F58;
  *(v0 + 6600) = qword_27F544F58;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  v43 = v2;
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  v44 = sub_252D2D190(208, 0x6E776F6E6B6E75, 0xE700000000000000);
  *(v0 + 6608) = v44;
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 6568);
  v4 = sub_252E36AD4();
  __swift_project_value_buffer(v4, qword_27F544DA8);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();

  memcpy((v0 + 520), (v3 + 24), 0x1F8uLL);
  memcpy(__dst, (v3 + 24), 0x1F8uLL);
  sub_2529353AC(v0 + 520, v0 + 1024);
  v5 = HomeAutomationIntent.description.getter();
  v7 = v6;
  memcpy((v0 + 16), __dst, 0x1F8uLL);
  sub_252935408(v0 + 16);
  MEMORY[0x2530AD570](v5, v7);

  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E942E0, 0xD00000000000007ELL, 0x8000000252E94310);

  __dst[0] = 0x6761742068746957;
  __dst[1] = 0xEA00000000002073;
  v8 = *(v3 + 120);

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540990, &qword_252E3DF50);
  v10 = MEMORY[0x2530AD730](v8, v9);
  v12 = v11;

  MEMORY[0x2530AD570](v10, v12);

  sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E94310);

  if (qword_27F53F6D8 != -1)
  {
    swift_once();
  }

  v45 = *(v0 + 6568);
  v13 = qword_27F575B00;
  v14 = *(qword_27F575B00 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = qword_27F575B00 + 32;
    while (1)
    {
      if (v15 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_25;
      }

      v46 = *(v16 + 16 * v15);
      v17 = *(v45 + 16);
      memcpy((v0 + 2032), (v3 + 24), 0x1F8uLL);
      memcpy(__dst, (v3 + 24), 0x1F8uLL);
      v18 = *(*(&v46 + 1) + 32);
      v19 = v17;
      sub_2529353AC(v0 + 2032, v0 + 2536);
      v20 = v18(v19, __dst, v46, *(&v46 + 1));

      memcpy((v0 + 1528), __dst, 0x1F8uLL);
      sub_252935408(v0 + 1528);
      if (v20)
      {
        break;
      }

      if (v14 == ++v15)
      {
        goto LABEL_11;
      }
    }

    v29 = *(*(&v46 + 1) + 48);
    *(v0 + 6464) = v46;
    __swift_allocate_boxed_opaque_existential_0((v0 + 6440));
    v29(v46, *(&v46 + 1));
    sub_252927BEC((v0 + 6440), v0 + 6400);
    sub_252929E74(v0 + 6400, v0 + 6480);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457A8, qword_252E5BDF0);
    *(v0 + 6616) = sub_252E36F94();
    *(v0 + 6624) = v30;
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD000000000000016;
    __dst[1] = 0x8000000252E94390;
    sub_252929E74(v0 + 6400, v0 + 6520);
    v31 = sub_252E36F94();
    MEMORY[0x2530AD570](v31);

    sub_252CC3D90(__dst[0], __dst[1], 0xD00000000000007ELL, 0x8000000252E94310);

    v32 = *(v0 + 6424);
    v33 = *(v0 + 6432);
    __swift_project_boxed_opaque_existential_1((v0 + 6400), v32);
    v34 = *(v45 + 16);
    *(v0 + 6632) = v34;
    memcpy((v0 + 3544), (v3 + 24), 0x1F8uLL);
    memcpy((v0 + 3040), (v3 + 24), 0x1F8uLL);
    GEOLocationCoordinate2DMake();
    memcpy((v0 + 4048), (v0 + 3040), 0x1F8uLL);
    v35 = *(*(&v46 + 1) + 40);
    v36 = v34;
    sub_2529353AC(v0 + 3544, v0 + 4552);
    v47 = (v35 + *v35);
    v37 = swift_task_alloc();
    *(v0 + 6640) = v37;
    *v37 = v0;
    v37[1] = sub_252D18B30;

    return v47(v36, v0 + 4048, v32, v33);
  }

  else
  {
LABEL_11:
    v21 = *(v0 + 6592);
    sub_252CC3D90(0xD000000000000038, 0x8000000252E943B0, 0xD00000000000007ELL, 0x8000000252E94310);
    v22 = sub_252E375C4();
    sub_252E36A74(v22, &dword_252917000, v43, "BlockRequest", 12, 2, v21, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    if (v44)
    {
      v23 = *(v45 + 16);

      v24 = [v23 userTask];
      if (v24)
      {
        v25 = v24;
        v26 = [v24 taskType];

        v27 = v26 - 1;
        if ((v26 - 1) > 5)
        {
          v28 = 0xE700000000000000;
          v24 = 0x6E776F6E6B6E75;
        }

        else
        {
          v24 = qword_252E5BEC0[v27];
          v28 = qword_252E5BEF0[v27];
        }
      }

      else
      {
        v28 = 0;
      }

      sub_252D2D83C(v24, v28);
    }

    v39 = *(v0 + 6592);
    v40 = *(v0 + 6584);
    v41 = *(v0 + 6576);
    sub_252E33B24();

    (*(v40 + 8))(v39, v41);

    v42 = *(v0 + 8);

    return v42();
  }
}

uint64_t sub_252D18B30()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 6632);
  if (v0)
  {

    memcpy((v3 + 5056), (v3 + 4048), 0x1F8uLL);
    sub_25293847C(v3 + 5056, &qword_27F5404C8, &unk_252E3FD60);
  }

  else
  {
    memcpy((v3 + 5560), (v3 + 4048), 0x1F8uLL);
    sub_25293847C(v3 + 5560, &qword_27F5404C8, &unk_252E3FD60);
  }

  return MEMORY[0x2822009F8](sub_252D18CC4, 0, 0);
}

uint64_t sub_252D18CC4()
{
  v37 = v0;
  if (*(v0 + 6608))
  {
    v1 = *(*(v0 + 6568) + 16);

    v2 = [v1 userTask];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 taskType];

      v5 = v4 - 1;
      if ((v4 - 1) > 5)
      {
        v6 = 0xE700000000000000;
        v2 = 0x6E776F6E6B6E75;
      }

      else
      {
        v2 = qword_252E5BEC0[v5];
        v6 = qword_252E5BEF0[v5];
      }
    }

    else
    {
      v6 = 0;
    }

    sub_252D2D83C(v2, v6);
  }

  v7 = *(v0 + 6624);
  v8 = *(v0 + 6616);
  v9 = *(v0 + 6600);
  v10 = *(v0 + 6592);
  v11 = *(v0 + 6584);
  v24 = *(v0 + 6568);
  v25 = *(v0 + 6576);
  *(v0 + 6232) = 0;
  *(v0 + 6240) = 1;
  *(v0 + 6248) = 0u;
  *(v0 + 6264) = 0u;
  *(v0 + 6280) = 0u;
  *(v0 + 6296) = 0;
  *(v0 + 6304) = v8;
  *(v0 + 6312) = v7;
  *(v0 + 6320) = 0;
  *(v0 + 6328) = 1;
  *(v0 + 6336) = 0u;
  *(v0 + 6352) = 0;
  *(v0 + 6360) = 513;
  *(v0 + 6384) = 0;
  *(v0 + 6368) = 0u;
  *(v0 + 6392) = 1;
  GEOLocationCoordinate2DMake();
  v12 = *(v0 + 6376);
  v34 = *(v0 + 6360);
  v35 = v12;
  v36 = *(v0 + 6392);
  v13 = *(v0 + 6312);
  v30 = *(v0 + 6296);
  v31 = v13;
  v14 = *(v0 + 6344);
  v32 = *(v0 + 6328);
  v33 = v14;
  v15 = *(v0 + 6248);
  v26 = *(v0 + 6232);
  v27 = v15;
  v16 = *(v0 + 6280);
  v28 = *(v0 + 6264);
  v29 = v16;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v9, v10, "BlockRequest", 12, 2, &v26);
  v17 = v32;
  *(v0 + 6176) = v33;
  v18 = v35;
  *(v0 + 6192) = v34;
  *(v0 + 6208) = v18;
  v19 = v28;
  *(v0 + 6112) = v29;
  v20 = v31;
  *(v0 + 6128) = v30;
  *(v0 + 6144) = v20;
  *(v0 + 6160) = v17;
  v21 = v27;
  *(v0 + 6064) = v26;
  *(v0 + 6080) = v21;
  *(v0 + 6224) = v36;
  *(v0 + 6096) = v19;
  sub_25293847C(v0 + 6064, &qword_27F5407B0, &unk_252E42860);
  *(v24 + 528) = 1;
  sub_252E33B24();

  (*(v11 + 8))(v10, v25);
  __swift_destroy_boxed_opaque_existential_1((v0 + 6400));

  v22 = *(v0 + 8);

  return v22();
}

uint64_t ControlHomeBlockingFlow.deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);
  return v0;
}

uint64_t ControlHomeBlockingFlow.__deallocating_deinit()
{
  memcpy(__dst, (v0 + 24), sizeof(__dst));
  sub_252935408(__dst);
  return swift_deallocClassInstance();
}

uint64_t sub_252D19010(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_252D1827C(a1);
}

void sub_252D190AC(char *a1@<X8>)
{
  if (*(*v1 + 528))
  {
    v2 = 11;
  }

  else
  {
    v2 = 9;
  }

  *a1 = v2;
}

uint64_t dispatch thunk of ControlHomeBlockingFlow.execute()(uint64_t a1)
{
  v6 = (*(*v1 + 208) + **(*v1 + 208));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return v6(a1);
}

void *sub_252D192A0()
{
  v1 = sub_252E363B4();
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v3 = *(_s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v2) + 29);

  v4 = type metadata accessor for HomeAutomationCATPatternsExecutor(0);
  v0[17] = v4;
  v0[18] = &off_2864BA730;
  v0[14] = v3;
  v5 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  swift_beginAccess();
  v6 = *(v5 + 22);

  v0[2] = v6;
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v7);
  sub_252929E74((v8 + 136), v12);

  v9 = sub_252927BEC(v12, (v0 + 4));
  v10 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v9);
  sub_252929E74((v10 + 96), v12);

  sub_252927BEC(v12, (v0 + 9));
  type metadata accessor for HomeAutomationCATsSimple(0);
  sub_252E363A4();
  v0[3] = sub_252E36354();
  return v0;
}

uint64_t static Signpost.begin(logging:_:)(void *a1)
{
  v5 = a1;
  sub_252E36A94();
  sub_252E375D4();

  return sub_252E36A84();
}

uint64_t Signpost.Context.init(numberOfTargetedEntities:serviceTypes:targetedContainer:handleDelegateName:responseHandler:entitiesInitialized:homeStoreLoadSucceeded:intentHandlerName:useCase:retrievedEntitiesFromHomeStoreCache:intentSelectionStep:numberOfInitialCandidates:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, char a14, uint64_t a15, uint64_t a16, __int128 a17, char a18, __int128 a19, uint64_t a20, char a21)
{
  *a9 = a1;
  result = a2 & 1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a15;
  *(a9 + 64) = a16;
  *(a9 + 72) = a8;
  *(a9 + 80) = a10;
  *(a9 + 88) = a11;
  *(a9 + 96) = a12 & 1;
  *(a9 + 104) = a17;
  *(a9 + 120) = a13;
  *(a9 + 128) = a14 & 1;
  *(a9 + 129) = a18;
  *(a9 + 136) = a19;
  *(a9 + 152) = a20;
  *(a9 + 160) = a21 & 1;
  return result;
}

uint64_t static Signpost.measureWithSELFPerformanceLogger<A>(in:as:domainExecutionType:withContext:taskType:blockToMeasure:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, void (*a10)(void), uint64_t a11, uint64_t a12)
{
  v34 = a7;
  v35 = a8;
  v38 = a5;
  v41 = a9;
  v42 = a12;
  v40 = *(a12 - 8);
  v37 = a11;
  v36 = a10;
  MEMORY[0x28223BE20](a1);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_252E36AB4();
  v19 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a6 + 144);
  v43[8] = *(a6 + 128);
  v43[9] = v22;
  v44 = *(a6 + 160);
  v23 = *(a6 + 80);
  v43[4] = *(a6 + 64);
  v43[5] = v23;
  v24 = *(a6 + 112);
  v43[6] = *(a6 + 96);
  v43[7] = v24;
  v25 = *(a6 + 16);
  v43[0] = *a6;
  v43[1] = v25;
  v26 = *(a6 + 48);
  v43[2] = *(a6 + 32);
  v43[3] = v26;
  v27 = a1;
  sub_252E36A94();
  sub_252E375D4();
  v28 = a2;
  v29 = a3;
  v30 = a4;
  sub_252E36A84();
  type metadata accessor for SELFPerformanceLogger();
  swift_initStackObject();
  v31 = sub_252D2D190(v38, 0x6E776F6E6B6E75, 0xE700000000000000);
  v36();
  if (v31)
  {

    sub_252D2D83C(v34, v35);
  }

  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v27, v21, v28, v29, v30, v43);

  (*(v19 + 8))(v21, v39);
  return (*(v40 + 32))(v41, v18, v42);
}

uint64_t static Signpost.measure<A>(in:as:withContext:blockToMeasure:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t))
{
  v24 = a6;
  v11 = sub_252E36AB4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a5 + 144);
  v25[8] = *(a5 + 128);
  v25[9] = v15;
  v26 = *(a5 + 160);
  v16 = *(a5 + 80);
  v25[4] = *(a5 + 64);
  v25[5] = v16;
  v17 = *(a5 + 112);
  v25[6] = *(a5 + 96);
  v25[7] = v17;
  v18 = *(a5 + 16);
  v25[0] = *a5;
  v25[1] = v18;
  v19 = *(a5 + 48);
  v25[2] = *(a5 + 32);
  v25[3] = v19;
  v20 = a1;
  sub_252E36A94();
  sub_252E375D4();
  v21 = sub_252E36A84();
  v24(v21);
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v20, v14, a2, a3, a4, v25);
  return (*(v12 + 8))(v14, v11);
}

uint64_t static Signpost.generateSignpostID(for:)(void *a1)
{
  v1 = a1;

  return sub_252E36A94();
}

uint64_t _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v11 = a6[9];
  v74 = a6[8];
  v75 = v11;
  v76 = *(a6 + 160);
  v12 = a6[5];
  v70 = a6[4];
  v71 = v12;
  v13 = a6[7];
  v72 = a6[6];
  v73 = v13;
  v14 = a6[1];
  v66 = *a6;
  v67 = v14;
  v15 = a6[3];
  v68 = a6[2];
  v69 = v15;
  if (sub_252D1A8A0(&v66) == 1)
  {
    goto LABEL_2;
  }

  if ((v74 & 1) == 0)
  {
    v22 = *(&v73 + 1);
    v23 = sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v24 = swift_allocObject();
    v25 = MEMORY[0x277D83B88];
    *(v24 + 16) = xmmword_252E3C290;
    v26 = MEMORY[0x277D83C10];
    *(v24 + 56) = v25;
    *(v24 + 64) = v26;
    *(v24 + 32) = v22;
    sub_252E36A74(v23, &dword_252917000, a1, a3, a4, a5, a2, "homeStoreLoadSucceeded=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 82, 2, v24);
  }

  v18 = v69;
  if (v69)
  {
    v19 = *(&v68 + 1);
    v20 = sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_252E3C290;
    *(v21 + 56) = MEMORY[0x277D837D0];
    *(v21 + 64) = sub_252987BC8();
    *(v21 + 32) = v19;
    *(v21 + 40) = v18;

    sub_252E36A74(v20, &dword_252917000, a1, a3, a4, a5, a2, "handleDelegate=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 74, 2, v21);
  }

  v27 = v70;
  if (v70)
  {
    v28 = *(&v69 + 1);
    v29 = sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_252E3C290;
    *(v30 + 56) = MEMORY[0x277D837D0];
    *(v30 + 64) = sub_252987BC8();
    *(v30 + 32) = v28;
    *(v30 + 40) = v27;

    sub_252E36A74(v29, &dword_252917000, a1, a3, a4, a5, a2, "intentHandler=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 73, 2, v30);
  }

  v31 = v71;
  if (v71)
  {
    v32 = *(&v70 + 1);
    v33 = sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_252E3C290;
    *(v34 + 56) = MEMORY[0x277D837D0];
    *(v34 + 64) = sub_252987BC8();
    *(v34 + 32) = v32;
    *(v34 + 40) = v31;

    sub_252E36A74(v33, &dword_252917000, a1, a3, a4, a5, a2, "responseHandler=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 75, 2, v34);
  }

  if ((BYTE8(v66) & 1) == 0)
  {
    v35 = v68;
    if (v68)
    {
      if (v67)
      {
        v36 = v66;
        v65 = *(&v67 + 1);
        if (*(v67 + 16) == 1)
        {
          v37 = *(v67 + 40);
          v64 = *(v67 + 32);
        }

        else
        {
          v37 = 0xE800000000000000;
          v64 = 0x454C5049544C554DLL;
        }

        v51 = sub_252E375C4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v52 = swift_allocObject();
        *(v52 + 16) = xmmword_252E3C280;
        v53 = MEMORY[0x277D83C10];
        *(v52 + 56) = MEMORY[0x277D83B88];
        *(v52 + 64) = v53;
        *(v52 + 32) = v36;
        v54 = MEMORY[0x277D837D0];
        *(v52 + 96) = MEMORY[0x277D837D0];
        v55 = sub_252987BC8();
        *(v52 + 72) = v64;
        *(v52 + 80) = v37;
        *(v52 + 136) = v54;
        *(v52 + 144) = v55;
        *(v52 + 104) = v55;
        *(v52 + 112) = v65;
        *(v52 + 120) = v35;

        sub_252E36A74(v51, &dword_252917000, a1, a3, a4, a5, a2, "numberOfTargetedServices=%{public, signpost.telemetry:number1}d targetedServices=%{public, signpost.telemetry:string1}@ containerType=%{public, signpost.telemetry:string2}@ enableTelemetry=YES ", 193, 2, v52);
      }
    }
  }

  if ((v72 & 1) == 0)
  {
    v42 = *(&v71 + 1);
    v43 = sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v44 = swift_allocObject();
    v45 = MEMORY[0x277D83B88];
    *(v44 + 16) = xmmword_252E3C290;
    v46 = MEMORY[0x277D83C10];
    *(v44 + 56) = v45;
    *(v44 + 64) = v46;
    *(v44 + 32) = v42;
    sub_252E36A74(v43, &dword_252917000, a1, a3, a4, a5, a2, "entitiesInitialized=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 79, 2, v44);
  }

  v38 = v73;
  if (v73)
  {
    v39 = *(&v72 + 1);
    v40 = sub_252E375C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_252E3C290;
    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = sub_252987BC8();
    *(v41 + 32) = v39;
    *(v41 + 40) = v38;

    sub_252E36A74(v40, &dword_252917000, a1, a3, a4, a5, a2, "useCase=%{public,signpost.telemetry:string1}@ enableTelemetry=YES ", 66, 2, v41);
  }

  if (BYTE1(v74) == 2)
  {
    v47 = v75;
    if (v75)
    {
      v48 = *(&v74 + 1);
      v49 = sub_252E375C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
      v50 = swift_allocObject();
      *(v50 + 16) = xmmword_252E3C290;
      *(v50 + 56) = MEMORY[0x277D837D0];
      *(v50 + 64) = sub_252987BC8();
      *(v50 + 32) = v48;
      *(v50 + 40) = v47;

      sub_252E36A74(v49, &dword_252917000, a1, a3, a4, a5, a2, "intentSelectionStep=%{public, signpost.telemetry:string1}@ enableTelemetry=YES ", 79, 2, v50);
    }

    else
    {
      if (v76)
      {
LABEL_2:
        v16 = sub_252E375C4();
        return sub_252E36A74(v16, &dword_252917000, a1, a3, a4, a5, a2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      }

      v59 = *(&v75 + 1);
      v60 = sub_252E375C4();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
      v61 = swift_allocObject();
      v62 = MEMORY[0x277D83B88];
      *(v61 + 16) = xmmword_252E3C290;
      v63 = MEMORY[0x277D83C10];
      *(v61 + 56) = v62;
      *(v61 + 64) = v63;
      *(v61 + 32) = v59;
      sub_252E36A74(v60, &dword_252917000, a1, a3, a4, a5, a2, "numberOfInitialCandidates=%{public, signpost.telemetry:number1}d enableTelemetry=YES ", 85, 2, v61);
    }
  }

  if (BYTE1(v74))
  {
    v56 = "homeStoreCachedEntityRetrieval enableTelemetry=YES ";
  }

  else
  {
    v56 = "homeStoreFullEntityRetrieval enableTelemetry=YES ";
  }

  if (BYTE1(v74))
  {
    v57 = 51;
  }

  else
  {
    v57 = 49;
  }

  v58 = sub_252E375C4();
  return sub_252E36A74(v58, &dword_252917000, a1, a3, a4, a5, a2, v56, v57, 2, MEMORY[0x277D84F90]);
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_252D1A7A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_252D1A800(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_252D1A8A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_252D1A8C4()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label);
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command);

  return swift_deallocClassInstance();
}

uint64_t *sub_252D1A938(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v20 - v7;
  *(v1 + 16) = 0;
  v9 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_label;
  swift_beginAccess();
  sub_252956C1C(a1 + v9, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label);
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal29HomeAutomationTappableCommand7Builder_command;
  swift_beginAccess();
  sub_252956C1C(a1 + v10, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label, v8);
  v11 = sub_252E36324();
  v12 = *(*(v11 - 8) + 48);
  v13 = v12(v8, 1, v11);
  sub_252938BBC(v8);
  if (v13 != 1)
  {
    sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command, v6);
    if (v12(v6, 1, v11) != 1)
    {

      sub_252938BBC(v6);
      return v1;
    }

    sub_252938BBC(v6);
  }

  v14 = sub_252E36384();
  sub_252E374D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_252E3C290;
  v20[1] = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457F8, &qword_252E5C150);
  v16 = sub_252E36F94();
  v18 = v17;
  *(v15 + 56) = MEMORY[0x277D837D0];
  *(v15 + 64) = sub_252987BC8();
  *(v15 + 32) = v16;
  *(v15 + 40) = v18;
  sub_252E36A64("Building an instance of %s without all required inputs", v20[0]);

  return v1;
}

uint64_t sub_252D1ABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v21 - v11;
  if (a1 == 0x6C6562616CLL && a2 == 0xE500000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label, v12);
    v13 = sub_252E36324();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v12, 1, v13) == 1)
    {
      v15 = v12;
LABEL_6:
      result = sub_252938BBC(v15);
LABEL_7:
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return result;
    }

    *(a3 + 24) = v13;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v14 + 32))(boxed_opaque_existential_0, v12, v13);
  }

  else
  {
    if (a1 != 0x646E616D6D6F63 || a2 != 0xE700000000000000)
    {
      result = sub_252E37DB4();
      if ((result & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command, v10);
    v18 = sub_252E36324();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v10, 1, v18) == 1)
    {
      v15 = v10;
      goto LABEL_6;
    }

    *(a3 + 24) = v18;
    v20 = __swift_allocate_boxed_opaque_existential_0(a3);
    return (*(v19 + 32))(v20, v10, v18);
  }
}

uint64_t sub_252D1AE60(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x646E616D6D6F63;
  }

  else
  {
    v3 = 0x6C6562616CLL;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x646E616D6D6F63;
  }

  else
  {
    v5 = 0x6C6562616CLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D1AF04()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D1AF84(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D1AFF0(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D1B06C@<X0>(char *a2@<X8>)
{
  v3 = sub_252E37B74();

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

void sub_252D1B0CC(uint64_t *a1@<X8>)
{
  v2 = 0x6C6562616CLL;
  if (*v1)
  {
    v2 = 0x646E616D6D6F63;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D1B108()
{
  if (*v0)
  {
    return 0x646E616D6D6F63;
  }

  else
  {
    return 0x6C6562616CLL;
  }
}

uint64_t sub_252D1B140@<X0>(char *a3@<X8>)
{
  v4 = sub_252E37B74();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_252D1B1A4(uint64_t a1)
{
  v2 = sub_252D1BA2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252D1B1E0(uint64_t a1)
{
  v2 = sub_252D1BA2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_252D1B21C()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label);
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command);

  return swift_deallocClassInstance();
}

void sub_252D1B2C0(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_252D1B35C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545800, &qword_252E5C158);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D1BA2C();
  sub_252E37F84();
  v8[15] = 0;
  sub_252E36324();
  sub_252D1B9E4(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  sub_252E37CD4();
  if (!v1)
  {
    v8[14] = 1;
    sub_252E37CD4();
  }

  return (*(v4 + 8))(v6, v3);
}

id *sub_252D1B568(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v16 = &v14 - v8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5457E8, &unk_252E5C140);
  v9 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v11 = &v14 - v10;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252D1BA2C();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationTappableCommand(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v15 = v9;
    sub_252E36324();
    v19 = 0;
    sub_252D1B9E4(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v12 = v16;
    sub_252E37BE4();
    sub_2529439A0(v12, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_label);
    v18 = 1;
    sub_252E37BE4();
    (*(v15 + 8))(v11, v17);
    sub_2529439A0(v7, v1 + OBJC_IVAR____TtC22HomeAutomationInternal29HomeAutomationTappableCommand_command);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

id *sub_252D1B8D4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationTappableCommand(0);
  v5 = swift_allocObject();
  result = sub_252D1B568(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252D1B9E4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252D1BA2C()
{
  result = qword_27F5457F0;
  if (!qword_27F5457F0)
  {
    result = swift_getWitnessTable(byte_252E5C25C, &type metadata for HomeAutomationTappableCommand.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F5457F0);
  }

  return result;
}

unint64_t sub_252D1BA94()
{
  result = qword_27F545808;
  if (!qword_27F545808)
  {
    result = swift_getWitnessTable(byte_252E5C234, &type metadata for HomeAutomationTappableCommand.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545808);
  }

  return result;
}

unint64_t sub_252D1BAEC()
{
  result = qword_27F545810;
  if (!qword_27F545810)
  {
    result = swift_getWitnessTable(a5_6, &type metadata for HomeAutomationTappableCommand.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545810);
  }

  return result;
}

unint64_t sub_252D1BB44()
{
  result = qword_27F545818;
  if (!qword_27F545818)
  {
    result = swift_getWitnessTable(aE_12, &type metadata for HomeAutomationTappableCommand.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F545818);
  }

  return result;
}

BOOL sub_252D1BB98(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_15:
    v3 = sub_252E378C4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  do
  {
    v5 = v4;
    if (v3 == v4)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x2530ADF00](v4, a1);
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_14;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    v7 = v6;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v8 = [v6 entityType];

    v4 = v5 + 1;
  }

  while (v8 == 5);
  return v3 == v5;
}

uint64_t sub_252D1BC78(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v4 = sub_252E36AD4();
  v3[57] = v4;
  v3[58] = *(v4 - 8);
  v3[59] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v3[60] = v5;
  v3[61] = *(v5 - 8);
  v3[62] = swift_task_alloc();
  v6 = sub_252E36AB4();
  v3[63] = v6;
  v3[64] = *(v6 - 8);
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D1BE0C, 0, 0);
}

uint64_t sub_252D1BE0C()
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v0[57], qword_27F544D18);
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E95020, 0xD00000000000008BLL, 0x8000000252E94DB0);
  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[63];
  v4 = v0[64];
  v5 = v0[61];
  v6 = v0[62];
  v7 = v0[60];
  v8 = v0[55];
  v9 = qword_27F544F70;
  sub_252E36A94();
  sub_252E375D4();
  v88 = v9;
  sub_252E36A84();
  (*(v4 + 16))(v2, v1, v3);
  v10 = (*(v5 + 16))(v6, v8, v7);
  v11 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v10);
  sub_252929E74((v11 + 16), (v0 + 22));

  __swift_project_boxed_opaque_existential_1(v0 + 22, v0[25]);
  LOBYTE(v1) = sub_252E338D4();
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  if (v1)
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v12 = v0[56];
    __swift_project_value_buffer(v0[57], qword_27F544D60);
    sub_252CC3D90(0xD000000000000040, 0x8000000252E950A0, 0xD00000000000008BLL, 0x8000000252E94DB0);
    v13 = v12[11];
    v14 = v12[12];
    __swift_project_boxed_opaque_existential_1(v12 + 8, v13);
    (*(v14 + 72))(v13, v14);
    v24 = v0[65];
    v25 = sub_252E375C4();
    sub_252E36A74(v25, &dword_252917000, v9, "HandleSuccessDialog", 19, 2, v24, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v26 = sub_252E36804();
    v28 = v27;

    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_252E3C290;
      *(inited + 32) = 25705;
      v30 = inited + 32;
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = 0xE200000000000000;
      *(inited + 48) = v26;
      *(inited + 56) = v28;
      sub_252CC630C(inited);
      swift_setDeallocating();
      sub_25293847C(v30, &unk_27F541F10, &unk_252E42870);
    }

    v52 = [objc_opt_self() sharedAnalytics];
    if (v52)
    {
      v53 = v52;

      sub_252CC1408(v54);

      v55 = sub_252E36E24();

      [v53 logEventWithType:6504 context:v55];
    }

    sub_252929E74((v12 + 8), (v0 + 47));
    v86 = v0[51];
    v89 = v0[50];
    __swift_project_boxed_opaque_existential_1(v0 + 47, v89);
    v56 = sub_252E33F24();
    v57 = [v56 filters];

    v91 = v0 + 47;
    if (v57)
    {
      type metadata accessor for HomeFilter();
      v58 = sub_252E37264();
    }

    else
    {
      v58 = MEMORY[0x277D84F90];
    }

    v67 = v0[66];
    v68 = v0[65];
    v70 = v0[63];
    v69 = v0[64];
    v72 = v0[61];
    v71 = v0[62];
    v73 = v0[60];
    (*(v86 + 112))(v58, v0 + 42, v89);

    __swift_destroy_boxed_opaque_existential_1(v0 + 42);
    (*(v72 + 8))(v71, v73);
    v74 = *(v69 + 8);
    v74(v68, v70);
    v75 = v67;
    v76 = v70;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v15 = v0[59];
    v16 = v0[57];
    v17 = v0[58];
    v18 = __swift_project_value_buffer(v16, qword_27F544D60);
    (*(v17 + 16))(v15, v18, v16);
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000041, 0x8000000252E95050);
    v19 = sub_252E33F04();
    v20 = [v19 punchOutURL];

    if (v20)
    {
      v21 = sub_252E36F34();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v31 = v0[59];
    v32 = v0[57];
    v33 = v0[58];
    v34 = v0[56];
    v0[52] = v21;
    v0[53] = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v35 = sub_252E36F94();
    MEMORY[0x2530AD570](v35);

    sub_252CC7784(0, 0xE000000000000000, 0, 0xD00000000000008BLL, 0x8000000252E94DB0);

    (*(v33 + 8))(v31, v32);
    sub_252929E74(v34 + 64, (v0 + 32));
    v36 = v0[35];
    v37 = v0[36];
    __swift_project_boxed_opaque_existential_1(v0 + 32, v36);
    v38 = sub_252E33F04();
    v39 = [v38 punchOutURL];

    if (v39)
    {
      v40 = sub_252E36F34();
      v42 = v41;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    (*(v37 + 64))(v40, v42, v36, v37);
    v43 = v0[65];

    __swift_destroy_boxed_opaque_existential_1(v0 + 32);
    v44 = sub_252E375C4();
    sub_252E36A74(v44, &dword_252917000, v88, "HandleSuccessDialog", 19, 2, v43, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    sub_252E35F84();
    sub_252E35F74();
    sub_252E35F34();

    v45 = sub_252E36804();
    v47 = v46;

    if (v47)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
      v48 = swift_initStackObject();
      *(v48 + 16) = xmmword_252E3C290;
      v49 = v34;
      *(v48 + 32) = 25705;
      v50 = v48 + 32;
      *(v48 + 72) = MEMORY[0x277D837D0];
      *(v48 + 40) = 0xE200000000000000;
      *(v48 + 48) = v45;
      *(v48 + 56) = v47;
      sub_252CC630C(v48);
      swift_setDeallocating();
      v51 = v50;
      v34 = v49;
      sub_25293847C(v51, &unk_27F541F10, &unk_252E42870);
    }

    v59 = [objc_opt_self() sharedAnalytics];
    if (v59)
    {
      v60 = v59;

      sub_252CC1408(v61);

      v62 = v34;
      v63 = sub_252E36E24();

      [v60 logEventWithType:6504 context:v63];

      v34 = v62;
    }

    sub_252929E74(v34 + 64, (v0 + 37));
    v87 = v0[41];
    v90 = v0[40];
    __swift_project_boxed_opaque_existential_1(v0 + 37, v90);
    v64 = sub_252E33F24();
    v65 = [v64 filters];

    v91 = v0 + 37;
    if (v65)
    {
      type metadata accessor for HomeFilter();
      v66 = sub_252E37264();
    }

    else
    {
      v66 = MEMORY[0x277D84F90];
    }

    v77 = v0[66];
    v78 = v0[65];
    v80 = v0[63];
    v79 = v0[64];
    v81 = v0[61];
    v82 = v0[62];
    v83 = v0[60];
    (*(v87 + 112))(v66, v0 + 27, v90);

    __swift_destroy_boxed_opaque_existential_1(v0 + 27);
    (*(v81 + 8))(v82, v83);
    v74 = *(v79 + 8);
    v74(v78, v80);
    v75 = v77;
    v76 = v80;
  }

  v74(v75, v76);
  __swift_destroy_boxed_opaque_existential_1(v91);

  v84 = v0[1];

  return v84();
}

uint64_t sub_252D1C9A0(uint64_t a1, uint64_t a2)
{
  v3[198] = v2;
  v3[197] = a2;
  v3[196] = a1;
  v4 = sub_252E34014();
  v3[199] = v4;
  v3[200] = *(v4 - 8);
  v3[201] = swift_task_alloc();
  v3[202] = swift_task_alloc();
  v3[203] = swift_task_alloc();
  v3[204] = swift_task_alloc();
  v3[205] = swift_task_alloc();
  v3[206] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v3[207] = v5;
  v6 = *(v5 - 8);
  v3[208] = v6;
  v3[209] = *(v6 + 64);
  v3[210] = swift_task_alloc();
  v3[211] = swift_task_alloc();
  v7 = sub_252E36AB4();
  v3[212] = v7;
  v8 = *(v7 - 8);
  v3[213] = v8;
  v3[214] = *(v8 + 64);
  v3[215] = swift_task_alloc();
  v3[216] = swift_task_alloc();
  v3[217] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D1CB9C, 0, 0);
}

uint64_t sub_252D1CB9C()
{
  v152 = v0;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D18);
  __dst[0] = 0;
  __dst[1] = 0xE000000000000000;
  sub_252E379F4();
  v0[193] = 0;
  v0[194] = 0xE000000000000000;
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E94E60);
  sub_252E37AE4();
  sub_252CC3D90(v0[193], v0[194], 0xD00000000000008BLL, 0x8000000252E94DB0);

  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v2 = v0[217];
  v3 = v0[216];
  v4 = v0[213];
  v5 = v0[212];
  v6 = v0[211];
  v141 = v0[215];
  v143 = v0[210];
  v146 = v0[214];
  v7 = v0[208];
  v139 = v7;
  v140 = v0[207];
  v150 = v0[198];
  v8 = v0[197];
  v9 = qword_27F544F70;
  v0[218] = qword_27F544F70;
  v10 = v9;
  sub_252E36A94();
  sub_252E375D4();
  v138 = v10;
  sub_252E36A84();
  v11 = *(v4 + 16);
  v11(v3, v2, v5);
  v12 = *(v7 + 16);
  v12(v6, v8, v140);
  v11(v141, v3, v5);
  v12(v143, v6, v140);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = (v146 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v139 + 80) + v14 + 8) & ~*(v139 + 80);
  v16 = swift_allocObject();
  v0[219] = v16;
  v17 = v16 + v13;
  v18 = v16;
  (*(v4 + 32))(v17, v3, v5);
  *(v18 + v14) = v150;
  v19 = v0;
  (*(v139 + 32))(v18 + v15, v6, v140);

  v20 = sub_252E33F04();
  v21 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v22 = *&v20[v21];

  if (v22 == 100)
  {
    sub_252E379F4();

    __dst[0] = 0xD000000000000011;
    __dst[1] = 0x8000000252E73E80;
    v19[195] = type metadata accessor for FoundNoMatchingEntitiesResponseHandler();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545830, qword_252E5C4A0);
    v24 = sub_252E36F94();
    MEMORY[0x2530AD570](v24);

    sub_252CC4A5C(__dst[0], __dst[1], 0, 0xD00000000000008BLL, 0x8000000252E94DB0);

    sub_25293DEE0((v19 + 2));
    swift_allocObject();
    memcpy(__dst, v19 + 2, 0x1F8uLL);
    v19[220] = sub_252BE97AC(__dst);
    v19[221] = sub_252E33F24();
    v19[222] = sub_252E33F04();
    v25 = swift_task_alloc();
    v19[223] = v25;
    *v25 = v19;
    v25[1] = sub_252D1E190;

    return sub_252B2B588((v19 + 75));
  }

  v27 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
  sub_252929E74((v27 + 16), (v19 + 170));

  __swift_project_boxed_opaque_existential_1(v19 + 170, v19[173]);
  if (sub_252E338D4())
  {
    v28 = sub_252E33F04();
    v29 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v30 = *&v28[v29];

    __swift_destroy_boxed_opaque_existential_1(v19 + 170);
    if (v30 == 101)
    {
      v31 = v19[198];
      sub_252CC4050(0xD00000000000005DLL, 0x8000000252E94EF0, 0xD00000000000008BLL, 0x8000000252E94DB0, 0xD00000000000002DLL, 0x8000000252E94F50, 87);
      v33 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v32);
      sub_252929E74((v33 + 288), (v19 + 165));

      v34 = v19[168];
      v35 = v19[169];
      __swift_project_boxed_opaque_existential_1(v19 + 165, v34);
      v36 = (*(v35 + 120))(v34, v35);
      __swift_destroy_boxed_opaque_existential_1(v19 + 165);
      v37 = v31[11];
      v38 = v31[12];
      __swift_project_boxed_opaque_existential_1(v31 + 8, v37);
      if (v36)
      {
        sub_252B03B94();
        v39 = swift_task_alloc();
        v19[225] = v39;
        *v39 = v19;
        v39[1] = sub_252D1E770;
        v40 = v19[206];
        v41 = v19[198];
        v156 = v37;
        v157 = v38;
        v155 = 512;
        v154 = 0;
        v42 = &unk_252E5C490;
        v43 = &unk_252E5C498;
        v44 = (v19 + 80);
LABEL_17:

        return sub_252A199A8(v44, v42, v41, v43, 0, v40, 0, 0);
      }

      sub_252AD7CC4();
      v84 = swift_task_alloc();
      v19[227] = v84;
      *v84 = v19;
      v84[1] = sub_252D1ED30;
      v67 = v19[205];
      v68 = v19[198];
      v156 = v38;
      v69 = &unk_252E5C480;
      v70 = (v19 + 90);
      goto LABEL_29;
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v19 + 170);
  }

  v45 = sub_252E33F04();
  v46 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v47 = *&v45[v46];

  if (v47 == 103)
  {
    v48 = v19[198];
    sub_252CC3D90(0xD000000000000013, 0x8000000252E94ED0, 0xD00000000000008BLL, 0x8000000252E94DB0);
    v50 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v49);
    sub_252929E74((v50 + 288), (v19 + 145));

    v51 = v19[148];
    v52 = v19[149];
    __swift_project_boxed_opaque_existential_1(v19 + 145, v51);
    v53 = (*(v52 + 120))(v51, v52);
    __swift_destroy_boxed_opaque_existential_1(v19 + 145);
    v37 = v48[11];
    v54 = v48[12];
    __swift_project_boxed_opaque_existential_1(v48 + 8, v37);
    if (v53)
    {
      sub_252B03B94();
      v55 = swift_task_alloc();
      v19[229] = v55;
      *v55 = v19;
      v55[1] = sub_252D1F2F0;
      v40 = v19[204];
      v41 = v19[198];
      v156 = v37;
      v157 = v54;
      v155 = 512;
      v154 = 0;
      v42 = &unk_252E5C468;
      v43 = &unk_252E5C470;
      v44 = (v19 + 160);
      goto LABEL_17;
    }

    sub_252AD7CC4();
    v66 = swift_task_alloc();
    v19[231] = v66;
    *v66 = v19;
    v66[1] = sub_252D1F8B0;
    v67 = v19[203];
    v68 = v19[198];
    v156 = v54;
    v69 = &unk_252E5C458;
    v70 = (v19 + 150);
    goto LABEL_29;
  }

  v56 = sub_252E33F04();
  v57 = OBJC_IVAR___ShowHomeIntentResponse_code;
  swift_beginAccess();
  v58 = *&v56[v57];

  if (v58 == 102)
  {
    v59 = v19[215];
    v60 = v19[213];
    v61 = v19[212];
    (*(v19[208] + 8))(v19[210], v19[207]);
    v62 = *(v60 + 8);
    v19[233] = v62;
    v19[234] = (v60 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v62(v59, v61);
    v63 = swift_task_alloc();
    v19[235] = v63;
    *v63 = v19;
    v63[1] = sub_252D1FE70;
    v64 = v19[197];
    v65 = v19[196];

    return sub_252D22A5C(v65, v64, sub_252D23FC8, v18);
  }

  else
  {
    v71 = sub_252E33F04();
    v72 = OBJC_IVAR___ShowHomeIntentResponse_code;
    swift_beginAccess();
    v73 = *&v71[v72];

    if (v73 == 104)
    {
      v74 = v19[198];
      sub_252CC3D90(0x2070696C43206F4ELL, 0xED0000646E756F66, 0xD00000000000008BLL, 0x8000000252E94DB0);
      v75 = v74[11];
      v76 = v74[12];
      __swift_project_boxed_opaque_existential_1(v74 + 8, v75);

      sub_252943B8C(sub_252D2422C, v74, v75, v76);
      v77 = v19[215];

      v78 = sub_252E375C4();
      sub_252E36A74(v78, &dword_252917000, v138, "HandleFailureDialog", 19, 2, v77, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F34();

      v79 = sub_252E36804();
      v81 = v80;

      if (v81)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
        v82 = swift_allocObject();
        *(v82 + 16) = xmmword_252E3C290;
        *(v82 + 32) = 25705;
        v83 = v82 + 32;
        *(v82 + 72) = MEMORY[0x277D837D0];
        *(v82 + 40) = 0xE200000000000000;
        *(v82 + 48) = v79;
        *(v82 + 56) = v81;
        sub_252CC630C(v82);
        swift_setDeallocating();
        sub_25293847C(v83, &unk_27F541F10, &unk_252E42870);
        swift_deallocClassInstance();
      }

      v106 = [objc_opt_self() sharedAnalytics];
      if (v106)
      {
        v107 = v106;

        sub_252CC1408(v108);

        v109 = sub_252E36E24();

        [v107 logEventWithType:6504 context:v109];
      }

      sub_252929E74((v74 + 8), (v19 + 135));
      v144 = v19[139];
      v147 = v19[138];
      __swift_project_boxed_opaque_existential_1(v19 + 135, v147);
      v110 = sub_252E33F24();
      v111 = [v110 filters];

      v149 = v19 + 135;
      if (v111)
      {
        type metadata accessor for HomeFilter();
        v112 = sub_252E37264();
      }

      else
      {
        v112 = MEMORY[0x277D84F90];
      }

      v113 = v19;
      v114 = v19[217];
      v115 = v113[215];
      v116 = v113[213];
      v117 = v113[212];
      v118 = v113[210];
      v119 = v113[208];
      v120 = v113[207];
      (*(v144 + 112))(v112, v113 + 130, v147);

      __swift_destroy_boxed_opaque_existential_1(v113 + 130);
      (*(v119 + 8))(v118, v120);
      v121 = *(v116 + 8);
      v121(v115, v117);
      v122 = v114;
      v123 = v117;
    }

    else
    {
      v85 = sub_252E33F04();
      v86 = OBJC_IVAR___ShowHomeIntentResponse_code;
      swift_beginAccess();
      v87 = *&v85[v86];

      v88 = v19[198];
      if (v87 != 105)
      {
        sub_252CC3D90(0xD000000000000019, 0x8000000252E94E90, 0xD00000000000008BLL, 0x8000000252E94DB0);
        v92 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v91);
        sub_252929E74((v92 + 288), (v19 + 100));

        v93 = v19[103];
        v94 = v19[104];
        __swift_project_boxed_opaque_existential_1(v19 + 100, v93);
        v95 = (*(v94 + 120))(v93, v94);
        __swift_destroy_boxed_opaque_existential_1(v19 + 100);
        v37 = v88[11];
        v96 = v88[12];
        __swift_project_boxed_opaque_existential_1(v88 + 8, v37);
        if (v95)
        {
          sub_252B03B94();
          v97 = swift_task_alloc();
          v19[237] = v97;
          *v97 = v19;
          v97[1] = sub_252D200A4;
          v40 = v19[202];
          v41 = v19[198];
          v156 = v37;
          v157 = v96;
          v155 = 512;
          v154 = 0;
          v42 = &unk_252E5C440;
          v43 = &unk_252E5C448;
          v44 = (v19 + 115);
          goto LABEL_17;
        }

        sub_252AD7CC4();
        v98 = swift_task_alloc();
        v19[239] = v98;
        *v98 = v19;
        v98[1] = sub_252D20664;
        v67 = v19[201];
        v68 = v19[198];
        v156 = v96;
        v69 = &unk_252E5C430;
        v70 = (v19 + 105);
LABEL_29:

        return sub_252BDB88C(v70, v69, v68, v67, 0, 0, 0, v37);
      }

      sub_252CC3D90(0xD000000000000017, 0x8000000252E94EB0, 0xD00000000000008BLL, 0x8000000252E94DB0);
      v89 = v88[11];
      v90 = v88[12];
      __swift_project_boxed_opaque_existential_1(v88 + 8, v89);

      sub_252943B8C(sub_252D241E8, v88, v89, v90);
      v99 = v19[215];

      v100 = sub_252E375C4();
      sub_252E36A74(v100, &dword_252917000, v138, "HandleFailureDialog", 19, 2, v99, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      sub_252E35F84();
      sub_252E35F74();
      sub_252E35F34();

      v101 = sub_252E36804();
      v103 = v102;

      if (v103)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
        v104 = swift_allocObject();
        *(v104 + 16) = xmmword_252E3C290;
        *(v104 + 32) = 25705;
        v105 = v104 + 32;
        *(v104 + 72) = MEMORY[0x277D837D0];
        *(v104 + 40) = 0xE200000000000000;
        *(v104 + 48) = v101;
        *(v104 + 56) = v103;
        sub_252CC630C(v104);
        swift_setDeallocating();
        sub_25293847C(v105, &unk_27F541F10, &unk_252E42870);
        swift_deallocClassInstance();
      }

      v124 = [objc_opt_self() sharedAnalytics];
      if (v124)
      {
        v125 = v124;

        sub_252CC1408(v126);

        v127 = sub_252E36E24();

        [v125 logEventWithType:6504 context:v127];
      }

      sub_252929E74((v88 + 8), (v19 + 125));
      v145 = v19[129];
      v148 = v19[128];
      __swift_project_boxed_opaque_existential_1(v19 + 125, v148);
      v128 = sub_252E33F24();
      v129 = [v128 filters];

      v149 = v19 + 125;
      if (v129)
      {
        type metadata accessor for HomeFilter();
        v130 = sub_252E37264();
      }

      else
      {
        v130 = MEMORY[0x277D84F90];
      }

      v142 = v19[217];
      v113 = v19;
      v131 = v19[215];
      v132 = v19[213];
      v133 = v19[212];
      v134 = v19[210];
      v135 = v19[208];
      v136 = v19[207];
      (*(v145 + 112))(v130, v19 + 120, v148);

      __swift_destroy_boxed_opaque_existential_1(v19 + 120);
      (*(v135 + 8))(v134, v136);
      v121 = *(v132 + 8);
      v121(v131, v133);
      v122 = v142;
      v123 = v133;
    }

    v121(v122, v123);
    __swift_destroy_boxed_opaque_existential_1(v149);

    v137 = v113[1];

    return v137();
  }
}

uint64_t sub_252D1E190()
{
  v2 = *v1;
  v2[224] = v0;

  v3 = v2[222];
  v4 = v2[221];
  if (v0)
  {
    v5 = v2[215];
    v6 = v2[213];
    v7 = v2[212];
    v8 = v2[210];
    v9 = v2[208];
    v10 = v2[207];

    (*(v9 + 8))(v8, v10);
    v11 = *(v6 + 8);
    v2[241] = v11;
    v2[242] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v11(v5, v7);
    v12 = sub_252D20C24;
  }

  else
  {

    v12 = sub_252D1E378;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_252D1E378(uint64_t a1)
{
  v2 = v1[218];
  v3 = v1[215];
  v4 = sub_252E375C4();
  sub_252E36A74(v4, &dword_252917000, v2, "HandleFailureDialog", 19, 2, v3, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v5 = sub_252E36804();
  v7 = v6;

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C290;
    *(v8 + 32) = 25705;
    v9 = v8 + 32;
    *(v8 + 72) = MEMORY[0x277D837D0];
    *(v8 + 40) = 0xE200000000000000;
    *(v8 + 48) = v5;
    *(v8 + 56) = v7;
    sub_252CC630C(v8);
    swift_setDeallocating();
    sub_25293847C(v9, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v10 = [objc_opt_self() sharedAnalytics];
  if (v10)
  {
    v11 = v10;

    sub_252CC1408(v12);

    v13 = sub_252E36E24();

    [v11 logEventWithType:6504 context:v13];
  }

  sub_252929E74(v1[198] + 64, (v1 + 65));
  v27 = v1[69];
  v28 = v1[68];
  __swift_project_boxed_opaque_existential_1(v1 + 65, v28);
  v14 = sub_252E33F24();
  v15 = [v14 filters];

  if (v15)
  {
    type metadata accessor for HomeFilter();
    v16 = sub_252E37264();
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  v17 = v1[217];
  v18 = v1[215];
  v19 = v1[213];
  v20 = v1[212];
  v21 = v1[210];
  v22 = v1[208];
  v23 = v1[207];
  (*(v27 + 112))(v16, v1 + 75, v28);

  __swift_destroy_boxed_opaque_existential_1(v1 + 75);
  (*(v22 + 8))(v21, v23);
  v24 = *(v19 + 8);
  v24(v18, v20);
  v24(v17, v20);
  __swift_destroy_boxed_opaque_existential_1(v1 + 65);

  v25 = v1[1];

  return v25();
}

uint64_t sub_252D1E770()
{
  v2 = *v1;
  *(*v1 + 1808) = v0;

  if (v0)
  {
    v3 = v2[215];
    v4 = v2[213];
    v5 = v2[212];
    v6 = v2[210];
    v7 = v2[208];
    v8 = v2[207];
    (*(v2[200] + 8))(v2[206], v2[199]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v2[243] = v9;
    v2[244] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = sub_252D20D48;
  }

  else
  {
    (*(v2[200] + 8))(v2[206], v2[199]);
    v10 = sub_252D1E92C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252D1E92C()
{
  sub_252A52D18((v0 + 640), v0 + 560);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = sub_252E375C4();
  sub_252E36A74(v3, &dword_252917000, v1, "HandleFailureDialog", 19, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v9 = [objc_opt_self() sharedAnalytics];
  if (v9)
  {
    v10 = v9;

    sub_252CC1408(v11);

    v12 = sub_252E36E24();

    [v10 logEventWithType:6504 context:v12];
  }

  sub_252929E74(*(v0 + 1584) + 64, v0 + 680);
  v26 = *(v0 + 712);
  v27 = *(v0 + 704);
  __swift_project_boxed_opaque_existential_1((v0 + 680), v27);
  v13 = sub_252E33F24();
  v14 = [v13 filters];

  if (v14)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 1736);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  (*(v26 + 112))(v15, v0 + 560, v27);

  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v16, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 680));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D1ED30()
{
  v2 = *v1;
  *(*v1 + 1824) = v0;

  if (v0)
  {
    v3 = v2[215];
    v4 = v2[213];
    v5 = v2[212];
    v6 = v2[210];
    v7 = v2[208];
    v8 = v2[207];
    (*(v2[200] + 8))(v2[205], v2[199]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v2[245] = v9;
    v2[246] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = sub_252D20E6C;
  }

  else
  {
    (*(v2[200] + 8))(v2[205], v2[199]);
    v10 = sub_252D1EEEC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252D1EEEC()
{
  sub_252A52D18((v0 + 720), v0 + 560);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = sub_252E375C4();
  sub_252E36A74(v3, &dword_252917000, v1, "HandleFailureDialog", 19, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v9 = [objc_opt_self() sharedAnalytics];
  if (v9)
  {
    v10 = v9;

    sub_252CC1408(v11);

    v12 = sub_252E36E24();

    [v10 logEventWithType:6504 context:v12];
  }

  sub_252929E74(*(v0 + 1584) + 64, v0 + 680);
  v26 = *(v0 + 712);
  v27 = *(v0 + 704);
  __swift_project_boxed_opaque_existential_1((v0 + 680), v27);
  v13 = sub_252E33F24();
  v14 = [v13 filters];

  if (v14)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 1736);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  (*(v26 + 112))(v15, v0 + 560, v27);

  __swift_destroy_boxed_opaque_existential_1((v0 + 560));
  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v16, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 680));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D1F2F0()
{
  v2 = *v1;
  *(*v1 + 1840) = v0;

  if (v0)
  {
    v3 = v2[215];
    v4 = v2[213];
    v5 = v2[212];
    v6 = v2[210];
    v7 = v2[208];
    v8 = v2[207];
    (*(v2[200] + 8))(v2[204], v2[199]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v2[247] = v9;
    v2[248] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = sub_252D20F90;
  }

  else
  {
    (*(v2[200] + 8))(v2[204], v2[199]);
    v10 = sub_252D1F4AC;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252D1F4AC()
{
  sub_252A52D18((v0 + 1280), v0 + 1120);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = sub_252E375C4();
  sub_252E36A74(v3, &dword_252917000, v1, "HandleFailureDialog", 19, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v9 = [objc_opt_self() sharedAnalytics];
  if (v9)
  {
    v10 = v9;

    sub_252CC1408(v11);

    v12 = sub_252E36E24();

    [v10 logEventWithType:6504 context:v12];
  }

  sub_252929E74(*(v0 + 1584) + 64, v0 + 1240);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1264);
  __swift_project_boxed_opaque_existential_1((v0 + 1240), v27);
  v13 = sub_252E33F24();
  v14 = [v13 filters];

  if (v14)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 1736);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  (*(v26 + 112))(v15, v0 + 1120, v27);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v16, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1240));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D1F8B0()
{
  v2 = *v1;
  *(*v1 + 1856) = v0;

  if (v0)
  {
    v3 = v2[215];
    v4 = v2[213];
    v5 = v2[212];
    v6 = v2[210];
    v7 = v2[208];
    v8 = v2[207];
    (*(v2[200] + 8))(v2[203], v2[199]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v2[249] = v9;
    v2[250] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = sub_252D210B4;
  }

  else
  {
    (*(v2[200] + 8))(v2[203], v2[199]);
    v10 = sub_252D1FA6C;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252D1FA6C()
{
  sub_252A52D18((v0 + 1200), v0 + 1120);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = sub_252E375C4();
  sub_252E36A74(v3, &dword_252917000, v1, "HandleFailureDialog", 19, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v9 = [objc_opt_self() sharedAnalytics];
  if (v9)
  {
    v10 = v9;

    sub_252CC1408(v11);

    v12 = sub_252E36E24();

    [v10 logEventWithType:6504 context:v12];
  }

  sub_252929E74(*(v0 + 1584) + 64, v0 + 1240);
  v26 = *(v0 + 1272);
  v27 = *(v0 + 1264);
  __swift_project_boxed_opaque_existential_1((v0 + 1240), v27);
  v13 = sub_252E33F24();
  v14 = [v13 filters];

  if (v14)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 1736);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  (*(v26 + 112))(v15, v0 + 1120, v27);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1120));
  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v16, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1240));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D1FE70()
{
  *(*v1 + 1888) = v0;

  if (v0)
  {
    v2 = sub_252D211D8;
  }

  else
  {
    v2 = sub_252D1FF84;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252D1FF84()
{
  (*(v0 + 1864))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D200A4()
{
  v2 = *v1;
  *(*v1 + 1904) = v0;

  if (v0)
  {
    v3 = v2[215];
    v4 = v2[213];
    v5 = v2[212];
    v6 = v2[210];
    v7 = v2[208];
    v8 = v2[207];
    (*(v2[200] + 8))(v2[202], v2[199]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v2[251] = v9;
    v2[252] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = sub_252D212FC;
  }

  else
  {
    (*(v2[200] + 8))(v2[202], v2[199]);
    v10 = sub_252D20260;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252D20260()
{
  sub_252A52D18((v0 + 920), v0 + 760);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = sub_252E375C4();
  sub_252E36A74(v3, &dword_252917000, v1, "HandleFailureDialog", 19, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v9 = [objc_opt_self() sharedAnalytics];
  if (v9)
  {
    v10 = v9;

    sub_252CC1408(v11);

    v12 = sub_252E36E24();

    [v10 logEventWithType:6504 context:v12];
  }

  sub_252929E74(*(v0 + 1584) + 64, v0 + 880);
  v26 = *(v0 + 912);
  v27 = *(v0 + 904);
  __swift_project_boxed_opaque_existential_1((v0 + 880), v27);
  v13 = sub_252E33F24();
  v14 = [v13 filters];

  if (v14)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 1736);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  (*(v26 + 112))(v15, v0 + 760, v27);

  __swift_destroy_boxed_opaque_existential_1((v0 + 760));
  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v16, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 880));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D20664()
{
  v2 = *v1;
  *(*v1 + 1920) = v0;

  if (v0)
  {
    v3 = v2[215];
    v4 = v2[213];
    v5 = v2[212];
    v6 = v2[210];
    v7 = v2[208];
    v8 = v2[207];
    (*(v2[200] + 8))(v2[201], v2[199]);
    (*(v7 + 8))(v6, v8);
    v9 = *(v4 + 8);
    v2[253] = v9;
    v2[254] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v9(v3, v5);
    v10 = sub_252D21420;
  }

  else
  {
    (*(v2[200] + 8))(v2[201], v2[199]);
    v10 = sub_252D20820;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_252D20820()
{
  sub_252A52D18((v0 + 840), v0 + 760);
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1720);
  v3 = sub_252E375C4();
  sub_252E36A74(v3, &dword_252917000, v1, "HandleFailureDialog", 19, 2, v2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v4 = sub_252E36804();
  v6 = v5;

  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_252E3C290;
    *(v7 + 32) = 25705;
    v8 = v7 + 32;
    *(v7 + 72) = MEMORY[0x277D837D0];
    *(v7 + 40) = 0xE200000000000000;
    *(v7 + 48) = v4;
    *(v7 + 56) = v6;
    sub_252CC630C(v7);
    swift_setDeallocating();
    sub_25293847C(v8, &unk_27F541F10, &unk_252E42870);
    swift_deallocClassInstance();
  }

  v9 = [objc_opt_self() sharedAnalytics];
  if (v9)
  {
    v10 = v9;

    sub_252CC1408(v11);

    v12 = sub_252E36E24();

    [v10 logEventWithType:6504 context:v12];
  }

  sub_252929E74(*(v0 + 1584) + 64, v0 + 880);
  v26 = *(v0 + 912);
  v27 = *(v0 + 904);
  __swift_project_boxed_opaque_existential_1((v0 + 880), v27);
  v13 = sub_252E33F24();
  v14 = [v13 filters];

  if (v14)
  {
    type metadata accessor for HomeFilter();
    v15 = sub_252E37264();
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  v16 = *(v0 + 1736);
  v17 = *(v0 + 1720);
  v18 = *(v0 + 1704);
  v19 = *(v0 + 1696);
  v20 = *(v0 + 1680);
  v21 = *(v0 + 1664);
  v22 = *(v0 + 1656);
  (*(v26 + 112))(v15, v0 + 760, v27);

  __swift_destroy_boxed_opaque_existential_1((v0 + 760));
  (*(v21 + 8))(v20, v22);
  v23 = *(v18 + 8);
  v23(v17, v19);
  v23(v16, v19);
  __swift_destroy_boxed_opaque_existential_1((v0 + 880));

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_252D20C24()
{
  (*(v0 + 1928))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D20D48()
{
  (*(v0 + 1944))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D20E6C()
{
  (*(v0 + 1960))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D20F90()
{
  (*(v0 + 1976))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D210B4()
{
  (*(v0 + 1992))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D211D8()
{
  (*(v0 + 1864))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D212FC()
{
  (*(v0 + 2008))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D21420()
{
  (*(v0 + 2024))(*(v0 + 1736), *(v0 + 1696));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D21544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (qword_27F53F5E8 != -1)
  {
    swift_once();
  }

  v6 = qword_27F544F70;
  v7 = sub_252E375C4();
  sub_252E36A74(v7, &dword_252917000, v6, "HandleFailureDialog", 19, 2, a2, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_252E35F84();
  sub_252E35F74();
  sub_252E35F34();

  v8 = sub_252E36804();
  v10 = v9;

  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F544FF0, &unk_252E46670);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_252E3C290;
    *(inited + 32) = 25705;
    v12 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0xE200000000000000;
    *(inited + 48) = v8;
    *(inited + 56) = v10;
    sub_252CC630C(inited);
    swift_setDeallocating();
    sub_25293847C(v12, &unk_27F541F10, &unk_252E42870);
  }

  v13 = [objc_opt_self() sharedAnalytics];
  if (v13)
  {
    v14 = v13;

    sub_252CC1408(v15);

    v16 = sub_252E36E24();

    [v14 logEventWithType:6504 context:v16];
  }

  else
  {
  }

  sub_252929E74(a3 + 64, v23);
  v17 = v24;
  v18 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v19 = sub_252E33F24();
  v20 = [v19 filters];

  if (v20)
  {
    type metadata accessor for HomeFilter();
    v21 = sub_252E37264();
  }

  else
  {
    v21 = MEMORY[0x277D84F90];
  }

  (*(v18 + 112))(v21, a1, v17, v18);

  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_252D21864()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CB8014;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD00000000000002CLL, 0x8000000252E94F80, v2);
}

uint64_t sub_252D21930(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationCameraBulletinNotAllowedErrorParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D219FC, 0, 0);
}

uint64_t sub_252D219FC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x401C000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C060F4();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252D21BA8;

  return v10(0xD00000000000002CLL, 0x8000000252E94F80, v7);
}

uint64_t sub_252D21BA8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252D21D88;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252D21CF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D21CF4()
{
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationCameraBulletinNotAllowedErrorParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252D21D88()
{
  sub_252D244B0(*(v0 + 40), type metadata accessor for HomeAutomationCameraBulletinNotAllowedErrorParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D21E38()
{
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_252CBD840;
  v2 = MEMORY[0x277D84F90];

  return v4(0xD000000000000022, 0x8000000252E94FB0, v2);
}

uint64_t sub_252D21F04(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationUnsupportedShowHomeParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D21FD0, 0, 0);
}

uint64_t sub_252D21FD0()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  *(v1 + *(v2 + 20)) = 0;
  v6 = v1 + *(v2 + 24);
  *v6 = 0x4000000000000000;
  *(v6 + 8) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v7 = sub_252C0B2F0();
  v0[6] = v7;
  v10 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_252D2217C;

  return v10(0xD000000000000022, 0x8000000252E94FB0, v7);
}

uint64_t sub_252D2217C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252D2235C;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252D222C8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D222C8()
{
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationUnsupportedShowHomeParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252D2235C()
{
  sub_252D244B0(*(v0 + 40), type metadata accessor for HomeAutomationUnsupportedShowHomeParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D2240C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v1 = swift_allocObject();
  *(v0 + 24) = v1;
  *(v1 + 16) = xmmword_252E3C290;
  *(v1 + 32) = 0xD000000000000011;
  *(v1 + 40) = 0x8000000252E851F0;
  *(v1 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540600, &qword_252E3CF90);
  *(v1 + 48) = MEMORY[0x277D84F90];
  v4 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v2 = swift_task_alloc();
  *(v0 + 32) = v2;
  *v2 = v0;
  v2[1] = sub_252AD7EB4;

  return v4(0xD00000000000001ELL, 0x8000000252E8A0A0, v1);
}

uint64_t sub_252D22550(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for HomeAutomationFailureResponseParameters(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D2261C, 0, 0);
}

uint64_t sub_252D2261C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[2] + 24), *(v0[2] + 48));
  v4 = sub_252E36324();
  v5 = *(*(v4 - 8) + 56);
  v5(v1, 1, 1, v4);
  v5(v1 + v2[8], 1, 1, v4);
  *(v1 + v2[5]) = 0;
  *(v1 + v2[6]) = MEMORY[0x277D84F90];
  *(v1 + v2[7]) = 0;
  sub_252E37024();
  v5(v3, 0, 1, v4);
  sub_252956C98(v3, v1);
  v6 = sub_252C0700C();
  v0[6] = v6;
  v9 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_252D227EC;

  return v9(0xD00000000000001ELL, 0x8000000252E8A0A0, v6);
}

uint64_t sub_252D227EC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v5 = sub_252D229CC;
  }

  else
  {
    *(v4 + 72) = a1;
    v5 = sub_252D22938;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D22938()
{
  sub_252D244B0(v0[5], type metadata accessor for HomeAutomationFailureResponseParameters);

  v1 = v0[1];
  v2 = v0[9];

  return v1(v2);
}

uint64_t sub_252D229CC()
{
  sub_252D244B0(*(v0 + 40), type metadata accessor for HomeAutomationFailureResponseParameters);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D22A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[10] = a4;
  v5[11] = v4;
  v5[8] = a2;
  v5[9] = a3;
  v5[7] = a1;
  v6 = sub_252E34014();
  v5[12] = v6;
  v5[13] = *(v6 - 8);
  v5[14] = swift_task_alloc();
  v7 = sub_252E36324();
  v5[15] = v7;
  v5[16] = *(v7 - 8);
  v5[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v5[18] = swift_task_alloc();
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D22BD0, 0, 0);
}

uint64_t sub_252D22BD0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v1 = sub_252E33F24();
  v0[21] = v1;
  v2 = [v1 filters];
  if (v2)
  {
    v3 = v2;
    type metadata accessor for HomeFilter();
    v4 = sub_252E37264();

    v5 = sub_252BAFC18(v4);
LABEL_5:
    v6 = v5;

    v8 = 0;
    goto LABEL_6;
  }

  v6 = [v1 filters];
  if (v6)
  {
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    v5 = sub_252B288A4(v7);
    goto LABEL_5;
  }

  v8 = 1;
LABEL_6:
  v9 = *(v0[16] + 56);
  v9(v0[20], 1, 1, v0[15]);
  if ((v8 & 1) == 0)
  {
    v10 = v0[19];
    v11 = v0[15];
    v12 = v0[16];
    static SemanticMapper.getSemanticKey(for:)(v6, 0, v10);
    if ((*(v12 + 48))(v10, 1, v11) == 1)
    {
      sub_25293847C(v0[19], &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v14 = v0[19];
      v13 = v0[20];
      v16 = v0[16];
      v15 = v0[17];
      v17 = v0[15];
      sub_25293847C(v13, &qword_27F540298, &unk_252E3C270);
      v18 = *(v16 + 32);
      v18(v15, v14, v17);
      v18(v13, v15, v17);
      v9(v13, 0, 1, v17);
    }
  }

  v19 = [v1 filters];
  if (v19)
  {
    type metadata accessor for HomeFilter();
    v20 = sub_252E37264();

    v21 = sub_252B1F8D4(v20);

    if (v21 <= 1u)
    {
      v19 = 0xE400000000000000;
    }

    else if (v21 == 2)
    {
      v19 = 0xE400000000000000;
    }

    else if (v21 == 3)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0;
    }
  }

  v22 = [v1 filters];
  if (v22)
  {
    v23 = v22;
    type metadata accessor for HomeFilter();
    v24 = sub_252E37264();

    v25 = sub_252D1BB98(v24);
  }

  else
  {
    v25 = 0;
  }

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v26 = sub_252E36AD4();
  __swift_project_value_buffer(v26, qword_27F544D18);
  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E94E40, 0xD00000000000008BLL, 0x8000000252E94DB0);
  if (v19)
  {
    sub_252E37024();

    v27 = 0;
  }

  else
  {
    v27 = 1;
  }

  v9(v0[18], v27, 1, v0[15]);
  v28 = swift_task_alloc();
  v0[22] = v28;
  *v28 = v0;
  v28[1] = sub_252D23018;
  v29 = v0[20];
  v30 = v0[18];

  return sub_252D26878(v30, v25, v29);
}

uint64_t sub_252D23018(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 144);
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
  if (v1)
  {
    v5 = sub_252D23500;
  }

  else
  {
    v5 = sub_252D2315C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D2315C()
{
  v1 = v0[23];
  __swift_project_boxed_opaque_existential_1((v0[11] + 64), *(v0[11] + 88));
  v2 = swift_task_alloc();
  v0[25] = v2;
  *(v2 + 16) = v1;
  sub_252B03B94();
  v3 = swift_task_alloc();
  v0[26] = v3;
  *v3 = v0;
  v3[1] = sub_252D23294;
  v4 = v0[14];

  return sub_252A199A8((v0 + 2), &unk_252E5C418, v2, &unk_252E5C420, 0, v4, 0, 0);
}

uint64_t sub_252D23294()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  *(*v1 + 216) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_252D235BC;
  }

  else
  {

    v5 = sub_252D23414;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D23414()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);
  v3 = *(v0 + 168);
  (*(v0 + 72))(v0 + 16);

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_252D23500()
{
  v1 = *(v0 + 160);

  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_252D235BC()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 160);

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_252D236B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C68](a1, a2, v9, a4);
}

uint64_t sub_252D23774(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C70](a1, a2, v9, a4);
}

uint64_t sub_252D23838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C48](a1, a2, v9, a4);
}

uint64_t sub_252D238FC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252D1BC78(a1, a2);
}

uint64_t sub_252D239A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C60](a1, a2, v9, a4);
}

uint64_t sub_252D23A6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ShowHomeHandleIntentStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9C58](a1, a2, v9, a4);
}

uint64_t sub_252D23B30(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_252D1C9A0(a1, a2);
}

uint64_t sub_252D23BDC(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25296BC70;

  return sub_252D23CE8(a1, a2);
}

unint64_t sub_252D23C94()
{
  result = qword_27F545820;
  if (!qword_27F545820)
  {
    v3 = type metadata accessor for ShowHomeHandleIntentStrategy();
    result = swift_getWitnessTable(aI_10, v3, v0, v1);
    atomic_store(result, &qword_27F545820);
  }

  return result;
}

uint64_t sub_252D23CE8(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_252E336F4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D23DA8, 0, 0);
}

uint64_t sub_252D23DA8()
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
  sub_252CC3D90(0xD00000000000002BLL, 0x8000000252E7A2B0, 0xD00000000000008BLL, 0x8000000252E94DB0);
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

uint64_t sub_252D23F34()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_252D23FC8(uint64_t a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545828, &qword_252E5C408);
  v6 = *(v1 + v5);

  return sub_252D21544(a1, v1 + v4, v6);
}

uint64_t sub_252D240C8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D22550(v0);
}

uint64_t sub_252D24158()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D223EC(v0);
}

uint64_t sub_252D24270()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D21F04(v0);
}

uint64_t sub_252D24300()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D21E18(v0);
}

uint64_t sub_252D24390()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D21930(v0);
}

uint64_t sub_252D24420()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D21844(v0);
}

uint64_t sub_252D244B0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_252D24510()
{
  v1 = v0;
  v2 = sub_252E36324();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v6 = MEMORY[0x28223BE20](v5);
  v58 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v53 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v53 - v12;
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v53 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v53 - v17;
  v65 = 0;
  v66 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000002CLL, 0x8000000252E950F0);
  sub_252956C1C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityName, v18);
  v19 = sub_252E36F94();
  MEMORY[0x2530AD570](v19);

  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E95120);
  sub_252956C1C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_entityIdentifier, v18);
  v20 = sub_252E36F94();
  MEMORY[0x2530AD570](v20);

  MEMORY[0x2530AD570](0x3A656D6F6820200ALL, 0xE900000000000020);
  v21 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_home);
  v62 = v2;
  if (v21)
  {
    sub_252956C1C(v21 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v16);
  }

  else
  {
    (*(v3 + 56))(v16, 1, 1, v2);
  }

  v22 = sub_252E36F94();
  MEMORY[0x2530AD570](v22);

  MEMORY[0x2530AD570](0x3A6D6F6F7220200ALL, 0xE900000000000020);
  v23 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_room);
  if (!v23)
  {
    goto LABEL_7;
  }

  sub_252956C1C(v23 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v13);
  v24 = v62;
  if ((*(v3 + 48))(v13, 1, v62) == 1)
  {
    sub_252938BBC(v13);
LABEL_7:
    v25 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  v25 = sub_252E36304();
  v26 = v27;
  (*(v3 + 8))(v13, v24);
LABEL_9:
  v63 = v25;
  v64 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v29 = sub_252E36F94();
  MEMORY[0x2530AD570](v29);

  MEMORY[0x2530AD570](0x3A6570797420200ALL, 0xE900000000000020);
  sub_252956C1C(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_type, v18);
  v30 = sub_252E36F94();
  MEMORY[0x2530AD570](v30);

  MEMORY[0x2530AD570](0x657461747320200ALL, 0xEB00000000203A73);
  v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal28HomeAutomationEntityResponse_states);
  if (v31 >> 62)
  {
    v32 = sub_252E378C4();
  }

  else
  {
    v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v33 = v62;
  v34 = MEMORY[0x277D84F90];
  if (v32)
  {
    v63 = MEMORY[0x277D84F90];
    result = sub_2529AA380(0, v32 & ~(v32 >> 63), 0);
    if ((v32 & 0x8000000000000000) == 0)
    {
      v36 = 0;
      v60 = v31 & 0xC000000000000001;
      v61 = v32;
      v37 = (v3 + 48);
      v53 = v28;
      v54 = (v3 + 32);
      v57 = (v3 + 56);
      v56 = (v3 + 8);
      v34 = v63;
      v38 = v58;
      v59 = v31;
      while (1)
      {
        if (v60)
        {
          v39 = MEMORY[0x2530ADF00](v36, v31);
        }

        else
        {
          v39 = *(v31 + 8 * v36 + 32);
        }

        v40 = *(v39 + OBJC_IVAR____TtC22HomeAutomationInternal25HomeAutomationEntityState_stateValue);
        if (v40)
        {
          break;
        }

        v42 = 0;
LABEL_28:
        v63 = v34;
        v48 = *(v34 + 16);
        v47 = *(v34 + 24);
        if (v48 >= v47 >> 1)
        {
          sub_2529AA380((v47 > 1), v48 + 1, 1);
          v38 = v58;
          v34 = v63;
        }

        ++v36;
        *(v34 + 16) = v48 + 1;
        v49 = v34 + 16 * v48;
        *(v49 + 32) = v42;
        *(v49 + 40) = v40;
        v33 = v62;
        v31 = v59;
        if (v61 == v36)
        {
          v28 = v53;
          goto LABEL_32;
        }
      }

      sub_252956C1C(v40 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_stringValue, v38);
      v41 = *v37;
      if ((*v37)(v38, 1, v33) == 1)
      {
        sub_252938BBC(v38);
        if (!*(v40 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue))
        {
          sub_252E37024();

          (*v57)(v10, 0, 1, v33);
          goto LABEL_26;
        }

        sub_25296EBC4(v10);
      }

      else
      {
        v43 = v38;
        v44 = v55;
        v45 = *v54;
        (*v54)(v55, v43, v33);
        v45(v10, v44, v33);
        (*v57)(v10, 0, 1, v33);
      }

      if (v41(v10, 1, v33) == 1)
      {

        sub_252938BBC(v10);
        v42 = 0;
        v40 = 0;
LABEL_27:
        v38 = v58;
        goto LABEL_28;
      }

LABEL_26:
      v42 = sub_252E36304();
      v40 = v46;

      (*v56)(v10, v33);
      goto LABEL_27;
    }

    __break(1u);
  }

  else
  {
LABEL_32:
    v50 = MEMORY[0x2530AD730](v34, v28);
    v52 = v51;

    MEMORY[0x2530AD570](v50, v52);

    return v65;
  }

  return result;
}

uint64_t sub_252D24CD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_252E34014();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[9] = swift_task_alloc();
  v4[10] = swift_task_alloc();
  v6 = sub_252E36324();
  v4[11] = v6;
  v4[12] = *(v6 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D24E44, 0, 0);
}

uint64_t sub_252D24E44()
{
  if (!*(v0 + 32))
  {
    v21 = 1;
    static SemanticMapper.getSemanticKey(for:)(0, 1, *(v0 + 80));
    v22 = MEMORY[0x277D84F90];
    goto LABEL_53;
  }

  v1 = sub_252C285CC();
  v2 = v1;
  if (v1 >> 62)
  {
    goto LABEL_22;
  }

  v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = v0; v3; i = v0)
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v57 = v2 & 0xFFFFFFFFFFFFFF8;
    v53 = *(v0 + 96);
    v61 = (v53 + 32);
    v6 = MEMORY[0x277D84F90];
    v54 = v3;
    v55 = v2;
    v52 = v2 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v57 + 16))
        {
          goto LABEL_21;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 entity];
      if (v10 && (v11 = v10, v12 = [v10 homeEntityName], v11, v12))
      {
        v13 = *(v0 + 112);
        v14 = *(v0 + 104);
        v15 = *(v0 + 88);
        sub_252E36F34();

        sub_252E37024();

        v16 = *v61;
        (*v61)(v13, v14, v15);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_2529F7F74(0, v6[2] + 1, 1, v6);
        }

        v18 = v6[2];
        v17 = v6[3];
        v2 = v55;
        v0 = i;
        if (v18 >= v17 >> 1)
        {
          v6 = sub_2529F7F74((v17 > 1), v18 + 1, 1, v6);
        }

        v19 = *(i + 112);
        v20 = *(i + 88);
        v6[2] = v18 + 1;
        v16(v6 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v18, v19, v20);
        v3 = v54;
        v5 = v52;
      }

      else
      {
      }

      ++v4;
      if (v9 == v3)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    v3 = sub_252E378C4();
  }

  v6 = MEMORY[0x277D84F90];
LABEL_24:
  v62 = v6;
  v23 = *(v0 + 80);

  v24 = sub_252C2ECE0();
  static SemanticMapper.getSemanticKey(for:)(v24, v25 & 1, v23);
  v26 = sub_252C285CC();
  v27 = v26;
  v28 = v26 & 0xFFFFFFFFFFFFFF8;
  if (v26 >> 62)
  {
LABEL_47:
    v29 = sub_252E378C4();
    if (v29)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v29 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_26:
      v30 = 0;
      v31 = MEMORY[0x277D84F90];
      while (2)
      {
        v58 = v31;
        v32 = v30;
        while (1)
        {
          if ((v27 & 0xC000000000000001) != 0)
          {
            v33 = MEMORY[0x2530ADF00](v32, v27);
          }

          else
          {
            if (v32 >= *(v28 + 16))
            {
              goto LABEL_46;
            }

            v33 = *(v27 + 8 * v32 + 32);
          }

          v34 = v33;
          v30 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v35 = [v33 entity];
          if (v35)
          {
            v36 = v35;
            v37 = [v35 room];

            if (v37)
            {
              break;
            }
          }

          ++v32;
          if (v30 == v29)
          {

            v31 = v58;
            if (v58)
            {
              goto LABEL_50;
            }

            v21 = 1;
            v0 = i;
            v22 = v62;
            goto LABEL_53;
          }
        }

        v38 = sub_252E36F34();
        v40 = v39;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v58 = sub_2529F7A80(0, *(v58 + 2) + 1, 1, v58);
        }

        v43 = *(v58 + 2);
        v42 = *(v58 + 3);
        if (v43 >= v42 >> 1)
        {
          v58 = sub_2529F7A80((v42 > 1), v43 + 1, 1, v58);
        }

        *(v58 + 2) = v43 + 1;
        v44 = &v58[16 * v43];
        *(v44 + 4) = v38;
        *(v44 + 5) = v40;
        v31 = v58;
        if (v30 != v29)
        {
          continue;
        }

        goto LABEL_49;
      }
    }
  }

  v31 = MEMORY[0x277D84F90];
LABEL_49:

LABEL_50:
  v0 = i;
  v22 = v62;
  if (*(v31 + 2) == 1)
  {

    sub_252E37024();
    v0 = i;

    v21 = 0;
  }

  else
  {

    v21 = 1;
  }

LABEL_53:
  *(v0 + 120) = v22;
  v45 = *(v0 + 40);
  v59 = *(v0 + 72);
  (*(*(v0 + 96) + 56))(*(v0 + 72), v21, 1, *(v0 + 88));
  v46 = *(v45 + 96);
  __swift_project_boxed_opaque_existential_1((v45 + 72), v46);
  v47 = swift_task_alloc();
  *(v0 + 128) = v47;
  *(v47 + 16) = v45;
  *(v47 + 24) = v22;
  *(v47 + 32) = v59;
  sub_252AD7CC4();
  v48 = swift_task_alloc();
  *(v0 + 136) = v48;
  *v48 = v0;
  v48[1] = sub_252D25418;
  v49 = *(v0 + 64);
  v50 = *(v0 + 16);

  return sub_252BDB88C(v50, &unk_252E5C540, v47, v49, 0, 0, 0, v46);
}

uint64_t sub_252D25418()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v4 = *(*v1 + 48);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_252D25698;
  }

  else
  {

    v5 = sub_252D255C0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_252D255C0()
{
  v1 = v0[10];
  sub_25293847C(v0[9], &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v2 = v0[1];

  return v2();
}

uint64_t sub_252D25698()
{
  v2 = v0[9];
  v1 = v0[10];

  sub_25293847C(v2, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v1, &qword_27F540298, &unk_252E3C270);

  v3 = v0[1];

  return v3();
}

uint64_t sub_252D25778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  return MEMORY[0x2822009F8](sub_252D2579C, 0, 0);
}

uint64_t sub_252D2579C()
{
  v5 = *(v0 + 72);
  sub_252929E74(*(v0 + 56) + 24, v0 + 16);
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *(v1 + 16) = v5;
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  *v2 = v0;
  v2[1] = sub_252B90188;
  v3 = *(v0 + 64);

  return sub_252C0BB10(0, v3, sub_252D25E90, v1);
}

uint64_t sub_252D25894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v16 - v7;
  sub_252956C1C(a2, &v16 - v7);
  type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v9 = swift_allocObject();
  v10 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v11 = sub_252E36324();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  swift_beginAccess();
  sub_252956BAC(v8, v9 + v10);
  swift_endAccess();
  sub_25293847C(v8, &qword_27F540298, &unk_252E3C270);
  type metadata accessor for HomeAutomationHomeLocation(0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  sub_252956C1C(v9 + v10, v12 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v9 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  swift_deallocClassInstance();
  v13 = type metadata accessor for HomeAutomationBluetoothWakeUpParameters(0);
  v14 = *(v13 + 28);

  *(a1 + v14) = v12;
  return sub_252956BAC(a3, a1 + *(v13 + 24));
}

uint64_t sub_252D25AB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_252D24CD4(a1, a2, a3);
}

void *sub_252D25B68@<X0>(const void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BluetoothWakeUpResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

uint64_t sub_252D25BCC(uint64_t a1)
{
  if (a1)
  {
    v1 = sub_252C285CC();
    v2 = v1;
    if (v1 >> 62)
    {
LABEL_35:
      v3 = sub_252E378C4();
      if (v3)
      {
LABEL_4:
        v4 = 0;
        v5 = v2 & 0xC000000000000001;
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
        v7 = v2 + 32;
        v8 = &off_279711000;
        while (1)
        {
          if (v5)
          {
            v9 = MEMORY[0x2530ADF00](v4, v2);
          }

          else
          {
            if (v4 >= *(v6 + 16))
            {
              goto LABEL_34;
            }

            v9 = *(v7 + 8 * v4);
          }

          v10 = v9;
          if (__OFADD__(v4++, 1))
          {
LABEL_33:
            __break(1u);
LABEL_34:
            __break(1u);
            goto LABEL_35;
          }

          v12 = [v9 v8[220]];
          if (!v12)
          {
            break;
          }

          v13 = v12;
          v21 = v10;
          type metadata accessor for HomeUserTaskResponse();
          v14 = sub_252E37264();

          if (v14 >> 62)
          {
            v15 = sub_252E378C4();
          }

          else
          {
            v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v16 = 0;
          do
          {
            if (v15 == v16)
            {

              goto LABEL_27;
            }

            if ((v14 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x2530ADF00](v16, v14);
            }

            else
            {
              if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_32;
              }

              v17 = *(v14 + 8 * v16 + 32);
            }

            v18 = v17;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_32:
              __break(1u);
              goto LABEL_33;
            }

            v19 = [v17 taskOutcome];

            ++v16;
          }

          while (v19 != 20);

          v5 = v2 & 0xC000000000000001;
          v7 = v2 + 32;
          v6 = v2 & 0xFFFFFFFFFFFFFF8;
          v8 = &off_279711000;
          if (v4 == v3)
          {
            v3 = 1;
            goto LABEL_28;
          }
        }

LABEL_27:
        v3 = 0;
      }
    }

    else
    {
      v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v3)
      {
        goto LABEL_4;
      }
    }

LABEL_28:

    return v3;
  }

  return 0;
}

uint64_t sub_252D25DE4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_25294B7BC;

  return sub_252D25778(v2, v3, v5, v4);
}

uint64_t sub_252D25E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463656A6552;
  }

  else
  {
    v3 = 0x6D7269666E6F43;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7463656A6552;
  }

  else
  {
    v5 = 0x6D7269666E6F43;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D25F3C()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D25FBC(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D26028(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D260B0(uint64_t *a1@<X8>)
{
  v2 = 0x6D7269666E6F43;
  if (*v1)
  {
    v2 = 0x7463656A6552;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D260EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_252D2610C, 0, 0);
}

uint64_t sub_252D2610C()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_252E3C290;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  v7 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);

  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_252D2C85C();
  *v4 = v0;
  v4[1] = sub_252D26274;

  return v7(0xD000000000000026, 0x8000000252E953C0, v2, &type metadata for HomeAutomationCATsSimple.AccessoryStatesUILabelsDialogIds, v5);
}

uint64_t sub_252D26274(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 48) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CDB0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D263CC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D26478, 0, 0);
}

uint64_t sub_252D26478()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x8000000252E8A040;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = v0[5];
  if (v12 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v17 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_252D26710;

  return v17(0xD00000000000001ELL, 0x8000000252E953A0, v3);
}

uint64_t sub_252D26710(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D2CD98, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D26878(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 80) = a2;
  *(v4 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  *(v4 + 40) = swift_task_alloc();
  *(v4 + 48) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D26928, 0, 0);
}

uint64_t sub_252D26928()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_252E3C280;
  *(v3 + 32) = 0xD000000000000013;
  *(v3 + 40) = 0x8000000252E76480;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = *(v0 + 48);
  if (v7 == 1)
  {
    sub_25293847C(*(v0 + 48), &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 80);
  strcpy((v3 + 80), "isSceneRequest");
  *(v3 + 95) = -18;
  v12 = MEMORY[0x277D839B0];
  *(v3 + 96) = v11;
  v13 = *(v0 + 24);
  *(v3 + 120) = v12;
  *(v3 + 128) = 0xD000000000000010;
  *(v3 + 136) = 0x8000000252E764C0;
  sub_252938414(v13, v10, &qword_27F540298, &unk_252E3C270);
  v14 = v6(v10, 1, v4);
  v15 = *(v0 + 40);
  if (v14 == 1)
  {
    sub_25293847C(*(v0 + 40), &qword_27F540298, &unk_252E3C270);
    *(v3 + 144) = 0u;
    *(v3 + 160) = 0u;
  }

  else
  {
    *(v3 + 168) = v4;
    v16 = __swift_allocate_boxed_opaque_existential_0((v3 + 144));
    (*(v5 + 32))(v16, v15, v4);
  }

  v19 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v17 = swift_task_alloc();
  *(v0 + 64) = v17;
  *v17 = v0;
  v17[1] = sub_252D26BFC;

  return v19(0xD000000000000025, 0x8000000252E95370, v3);
}

uint64_t sub_252D26BFC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D26D64, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D26D64()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D26DDC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v3[5] = swift_task_alloc();
  v3[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D26E88, 0, 0);
}

uint64_t sub_252D26E88()
{
  v1 = v0[6];
  v2 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v3 = swift_allocObject();
  v0[7] = v3;
  *(v3 + 16) = xmmword_252E3C3C0;
  *(v3 + 32) = 0xD000000000000014;
  *(v3 + 40) = 0x8000000252E8A060;
  sub_252938414(v2, v1, &qword_27F540298, &unk_252E3C270);
  v4 = sub_252E36324();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  v7 = v6(v1, 1, v4);
  v8 = v0[6];
  if (v7 == 1)
  {
    sub_25293847C(v0[6], &qword_27F540298, &unk_252E3C270);
    *(v3 + 48) = 0u;
    *(v3 + 64) = 0u;
  }

  else
  {
    *(v3 + 72) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v3 + 48));
    (*(v5 + 32))(boxed_opaque_existential_0, v8, v4);
  }

  v10 = v0[5];
  v11 = v0[3];
  *(v3 + 80) = 0xD000000000000014;
  *(v3 + 88) = 0x8000000252E8A040;
  sub_252938414(v11, v10, &qword_27F540298, &unk_252E3C270);
  v12 = v6(v10, 1, v4);
  v13 = v0[5];
  if (v12 == 1)
  {
    sub_25293847C(v0[5], &qword_27F540298, &unk_252E3C270);
    *(v3 + 96) = 0u;
    *(v3 + 112) = 0u;
  }

  else
  {
    *(v3 + 120) = v4;
    v14 = __swift_allocate_boxed_opaque_existential_0((v3 + 96));
    (*(v5 + 32))(v14, v13, v4);
  }

  v17 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_252D26710;

  return v17(0xD000000000000018, 0x8000000252E95350, v3);
}

unint64_t sub_252D2712C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_252D2CC58(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_252D2715C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D271FC, 0, 0);
}

uint64_t sub_252D271FC()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_252E3C280;
  strcpy((v2 + 32), "labelResponses");
  *(v2 + 47) = -18;
  v3 = 0;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v4 = v0[3];
  *(v2 + 48) = v1;
  *(v2 + 72) = v3;
  strcpy((v2 + 80), "intentContext");
  *(v2 + 94) = -4864;
  v5 = 0;
  if (v4)
  {
    v5 = type metadata accessor for HomeAutomationIntentContext(0);
  }

  else
  {
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v6 = v0[6];
  v7 = v0[4];
  *(v2 + 96) = v4;
  *(v2 + 120) = v5;
  *(v2 + 128) = 0x7079546574617473;
  *(v2 + 136) = 0xE900000000000065;
  sub_252938414(v7, v6, &qword_27F540298, &unk_252E3C270);
  v8 = sub_252E36324();
  v9 = *(v8 - 8);
  v10 = (*(v9 + 48))(v6, 1, v8);
  v11 = v0[6];
  if (v10 == 1)
  {

    sub_25293847C(v11, &qword_27F540298, &unk_252E3C270);
    *(v2 + 144) = 0u;
    *(v2 + 160) = 0u;
  }

  else
  {
    *(v2 + 168) = v8;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v2 + 144));
    (*(v9 + 32))(boxed_opaque_existential_0, v11, v8);
  }

  v16 = (*MEMORY[0x277D55C68] + MEMORY[0x277D55C68]);
  v13 = swift_task_alloc();
  v0[8] = v13;
  v14 = sub_252D2C808();
  *v13 = v0;
  v13[1] = sub_252D274AC;

  return v16(0xD000000000000029, 0x8000000252E95320, v2, &type metadata for HomeAutomationCATsSimple.CompletionResponseUILabelsDialogIds, v14);
}

uint64_t sub_252D274AC(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D27608, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D27608()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D27674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_252D27698, 0, 0);
}

uint64_t sub_252D27698()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540328, &unk_252E3C330);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_252E3C280;
  strcpy((v2 + 32), "intentContext");
  *(v2 + 46) = -4864;
  if (v1)
  {
    v3 = type metadata accessor for HomeAutomationIntentContext(0);
    v4 = v1;
  }

  else
  {
    v4 = 0;
    v3 = 0;
    *(v2 + 56) = 0;
    *(v2 + 64) = 0;
  }

  v5 = v0[3];
  *(v2 + 48) = v4;
  *(v2 + 72) = v3;
  *(v2 + 80) = 0xD000000000000014;
  *(v2 + 88) = 0x8000000252E68110;
  if (v5)
  {
    v6 = type metadata accessor for HomeAutomationAbstractMeasurements();
    v7 = v5;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    *(v2 + 104) = 0;
    *(v2 + 112) = 0;
  }

  v8 = v0[4];
  *(v2 + 96) = v7;
  *(v2 + 120) = v6;
  *(v2 + 128) = 0x65736E6F70736572;
  *(v2 + 136) = 0xE900000000000073;
  v9 = 0;
  if (v8)
  {
    v9 = type metadata accessor for HomeAutomationEntityResponses();
  }

  else
  {
    *(v2 + 152) = 0;
    *(v2 + 160) = 0;
  }

  *(v2 + 144) = v8;
  *(v2 + 168) = v9;
  v12 = (*MEMORY[0x277D55C70] + MEMORY[0x277D55C70]);

  v10 = swift_task_alloc();
  v0[7] = v10;
  *v10 = v0;
  v10[1] = sub_252D27898;

  return v12(0xD000000000000021, 0x8000000252E952F0, v2);
}

uint64_t sub_252D27898(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](sub_252D279F0, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_252D279F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_252D27A54(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C746954;
  }

  else
  {
    v3 = 0x797469746E45;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C746954;
  }

  else
  {
    v5 = 0x797469746E45;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_252E37DB4();
  }

  return v8 & 1;
}

uint64_t sub_252D27AF4()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_252D27B70(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252D27BD8(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252D27C5C(uint64_t *a1@<X8>)
{
  v2 = 0x797469746E45;
  if (*v1)
  {
    v2 = 0x656C746954;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_252D27C94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v4[6] = swift_task_alloc();
  v4[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252D27D40, 0, 0);
}