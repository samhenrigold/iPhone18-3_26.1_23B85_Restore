void sub_23D454C70(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v1 = v1[4];
  swift_getKeyPath();
  sub_23D46B838();

  free(v1);
}

uint64_t sub_23D454D04()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = [v0 localizedInfoDictionary];

  if (v1)
  {
    v2 = sub_23D46BD88();

    if (*(v2 + 16) && (v3 = sub_23D450300(0xD000000000000013, 0x800000023D46F5B0), (v4 & 1) != 0))
    {
      sub_23D441268(*(v2 + 56) + 32 * v3, v7);

      if (swift_dynamicCast())
      {
        return v6;
      }
    }

    else
    {
    }
  }

  return 0;
}

uint64_t sub_23D454E18()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 56) = MEMORY[0x277D84F90];
  sub_23D46B858();
  *(v0 + 16) = 0;
  type metadata accessor for AFUObserverController();
  *(v0 + 40) = sub_23D43D76C();
  type metadata accessor for AFUEndpointStatusController();
  *(v0 + 48) = sub_23D43D76C();
  return v0;
}

uint64_t sub_23D454ECC(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_23D46BD08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_23D46BD38();
  v12 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v19[1] = qword_27E2DB290;
  v15 = swift_allocObject();
  v15[2] = v4;
  v15[3] = a2;
  v15[4] = a3;
  v15[5] = a1;
  aBlock[4] = sub_23D45803C;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_2;
  v16 = _Block_copy(aBlock);

  sub_23D458060(a2, a3);
  v17 = a1;
  sub_23D46BD18();
  v21 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920, MEMORY[0x277D83970]);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v14, v11, v16);
  _Block_release(v16);
  (*(v9 + 8))(v11, v8);
  (*(v12 + 8))(v14, v20);
}

uint64_t sub_23D4551F0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v72 = a3;
  v73 = a4;
  v71 = a2;
  v80 = a1;
  v4 = MEMORY[0x277D84F90];
  v99 = MEMORY[0x277D84F90];
  v100 = MEMORY[0x277D84F90];
  v70 = [objc_opt_self() sharedDatabase];
  v5 = [v70 accessoriesDictionary];
  v6 = MEMORY[0x277D84F70];
  v7 = sub_23D46BD88();

  v77 = sub_23D45832C();
  v8 = v7 + 64;
  v9 = 1 << *(v7 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v7 + 64);
  v12 = (v9 + 63) >> 6;
  v85 = *MEMORY[0x277CE5578];

  v74 = 0;
  v13 = 0;
  v14 = v4;
  v86 = v4;
LABEL_4:
  v78 = v14;
  if (!v11)
  {
LABEL_8:
    if (v12 <= v13 + 1)
    {
      v16 = v13 + 1;
    }

    else
    {
      v16 = v12;
    }

    v17 = v16 - 1;
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
LABEL_83:
        __break(1u);
        goto LABEL_84;
      }

      if (v15 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v15);
      ++v13;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    v11 = 0;
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v15 = v17;
    goto LABEL_16;
  }

  while (1)
  {
    v15 = v13;
LABEL_15:
    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = v18 | (v15 << 6);
    sub_23D4589C4(*(v7 + 48) + 40 * v19, v88);
    sub_23D441268(*(v7 + 56) + 32 * v19, v87);
    v90 = v88[0];
    v91 = v88[1];
    *&v92 = v89;
    sub_23D4589B4(v87, (&v92 + 8));
LABEL_16:
    v97[0] = v92;
    v97[1] = v93;
    v98 = v94;
    aBlock = v90;
    v96 = v91;
    if (!*(&v91 + 1))
    {
      break;
    }

    v90 = aBlock;
    v91 = v96;
    *&v92 = *&v97[0];
    sub_23D4589B4((v97 + 8), v88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC88, &qword_23D46DCD8);
    if (swift_dynamicCast())
    {
      v20 = *&v87[0];
      sub_23D4589C4(&v90, v88);
      if (swift_dynamicCast())
      {
        v67 = v15;
        v21 = v87[0];
        type metadata accessor for SettingsAccessory(0);

        v22 = sub_23D45FBC4(v21, *(&v21 + 1), v20);
        v75 = *(&v21 + 1);
        v69 = v21;
        v23 = sub_23D458444(v21, *(&v21 + 1), v77);
        if (v24)
        {
          v23 = (*(*v22 + 424))(v23);
        }

        v68 = v22;
        v25 = (*(*v80 + 400))(v23);
        v26 = v25;
        if (v25 >> 62)
        {
          v27 = sub_23D46C0C8();
        }

        else
        {
          v27 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v4 = MEMORY[0x277D84F90];
        if (!v27)
        {

LABEL_54:

          MEMORY[0x23EEE0F60](v42);
          if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23D46BEC8();
          }

          sub_23D46BED8();
          v14 = v100;

          MEMORY[0x23EEE0F60](v43);
          if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23D46BEC8();
          }

          sub_23D46BED8();
          goto LABEL_59;
        }

        v28 = 0;
        v83 = v7;
        v84 = v26 & 0xC000000000000001;
        v79 = v26 & 0xFFFFFFFFFFFFFF8;
        v81 = v26;
        v82 = v27;
        while (2)
        {
          if (v84)
          {
            v29 = MEMORY[0x23EEE1110](v28, v26);
            v6 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_82;
            }
          }

          else
          {
            if (v28 >= *(v79 + 16))
            {
              goto LABEL_83;
            }

            v6 = v28 + 1;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_82;
            }
          }

          v86 = v29;
          v30 = sub_23D46BDD8();
          if (*(v20 + 16))
          {
            v32 = sub_23D450300(v30, v31);
            v34 = v33;
            v26 = v81;

            if (v34)
            {
              sub_23D441268(*(v20 + 56) + 32 * v32, v88);
              if (swift_dynamicCast())
              {
                v76 = *(&v87[0] + 1);
                v35 = *&v87[0];
                if ((*(*v86 + 512))() == v69 && v36 == v75)
                {
                }

                else
                {
                  v38 = sub_23D46C1B8();

                  if ((v38 & 1) == 0)
                  {

                    v7 = v83;
                    goto LABEL_51;
                  }
                }

                if ((*(*v86 + 464))(v39) == v35 && v40 == v76)
                {

                  v7 = v83;
                  goto LABEL_62;
                }

                v41 = sub_23D46C1B8();

                v7 = v83;
                if (v41)
                {

LABEL_62:

                  (*(*v86 + 1568))(v68);

                  MEMORY[0x23EEE0F60](v44);
                  v14 = v78;
                  v4 = MEMORY[0x277D84F90];
                  v6 = MEMORY[0x277D84F70];
                  if (*((v99 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v99 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                  {
                    sub_23D46BEC8();
                  }

                  sub_23D46BED8();

LABEL_59:

                  sub_23D458A20(&v90);
                  v86 = v99;
                  v13 = v67;
                  goto LABEL_4;
                }

LABEL_51:
                v26 = v81;
LABEL_30:
                ++v28;
                if (v6 == v82)
                {

                  v4 = MEMORY[0x277D84F90];
                  v6 = MEMORY[0x277D84F70];
                  goto LABEL_54;
                }

                continue;
              }
            }
          }

          else
          {
          }

          break;
        }

        v7 = v83;
        goto LABEL_30;
      }

      sub_23D458A20(&v90);

      v13 = v15;
      if (!v11)
      {
        goto LABEL_8;
      }
    }

    else
    {
      sub_23D458A20(&v90);
      v13 = v15;
      if (!v11)
      {
        goto LABEL_8;
      }
    }
  }

  v46 = (*(*v80 + 400))(v45);
  v6 = v46;
  *&aBlock = v4;
  if (!(v46 >> 62))
  {
    v47 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v47)
    {
      goto LABEL_68;
    }

LABEL_85:
    v54 = MEMORY[0x277D84F90];
    goto LABEL_86;
  }

LABEL_84:
  v47 = sub_23D46C0C8();
  if (!v47)
  {
    goto LABEL_85;
  }

LABEL_68:
  v48 = 0;
  v84 = v6 & 0xFFFFFFFFFFFFFF8;
  v85 = v6 & 0xC000000000000001;
  while (2)
  {
    if (v85)
    {
      v50 = MEMORY[0x23EEE1110](v48, v6);
      v49 = v50;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      goto LABEL_74;
    }

    if (v48 >= *(v84 + 16))
    {
      goto LABEL_81;
    }

    v49 = *(v6 + 8 * v48 + 32);

    v51 = v48 + 1;
    if (!__OFADD__(v48, 1))
    {
LABEL_74:
      *&v90 = v49;
      MEMORY[0x28223BE20](v50);
      v66[2] = &v90;
      v52 = v86;

      v53 = sub_23D457C3C(sub_23D458AD4, v66, v52);

      if (v53)
      {
        sub_23D46C078();
        sub_23D46C098();
        sub_23D46C0A8();
        sub_23D46C088();
      }

      else
      {
      }

      ++v48;
      if (v51 == v47)
      {
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_79:
  v54 = aBlock;
LABEL_86:

  v55 = v80;
  (*(*v80 + 408))(v54);
  v56 = (*(*v55 + 416))(&aBlock);
  sub_23D455D44(v78);
  v56(&aBlock, 0);
  sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);
  v57 = sub_23D46BF68();
  v58 = swift_allocObject();
  v60 = v71;
  v59 = v72;
  v58[2] = v71;
  v58[3] = v59;
  v61 = v73;
  v58[4] = v73;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_23D458AF4;
  *(v62 + 24) = v58;
  *&v97[0] = sub_23D43F238;
  *(&v97[0] + 1) = v62;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v96 = sub_23D43D1A8;
  *(&v96 + 1) = &block_descriptor_60;
  v63 = _Block_copy(&aBlock);
  sub_23D458060(v60, v59);
  v64 = v61;

  dispatch_sync(v57, v63);

  _Block_release(v63);
  LOBYTE(v57) = swift_isEscapingClosureAtFileLocation();

  if (v57)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23D455D44(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_23D46C0C8();
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

  v13 = sub_23D46C0C8();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_23D457B9C(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_23D4580F8(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
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

uint64_t sub_23D455E34(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = sub_23D46BD08();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_23D46BD38();
  v23 = *(v10 - 8);
  v24 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    sub_23D458B00(0, &qword_27E2DAC90, 0x277D82BB8);
    sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);

    v13 = sub_23D46BF68();
    v14 = a3;
    v15 = v13;
    v22 = v14;
    v16 = sub_23D46BF98();

    if ((v16 & 1) == 0)
    {
      v18 = swift_allocObject();
      *(v18 + 16) = a1;
      *(v18 + 24) = a2;
      aBlock[4] = sub_23D43F238;
      aBlock[5] = v18;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_23D43C3E4;
      aBlock[3] = &block_descriptor_66;
      v21 = _Block_copy(aBlock);

      sub_23D46BD18();
      v25 = MEMORY[0x277D84F90];
      sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      v20 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
      sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920, MEMORY[0x277D83970]);
      sub_23D46BFF8();
      v19 = v21;
      MEMORY[0x23EEE1040](0, v12, v9, v21);
      _Block_release(v19);
      sub_23D458B48(a1, v20);
      (*(v7 + 8))(v9, v6);
      (*(v23 + 8))(v12, v24);
    }

    a1();
    sub_23D458B48(a1, a2);
  }
}

void sub_23D456234()
{
  swift_getKeyPath();
  v1 = (*v0 + 480);
  v2 = *v1;
  (*v1)();

  if (!v0[3])
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v2();

  v3 = v0[3];
  if (v3)
  {
    v4 = v3;
    [v4 unregisterClient];
    [v4 stopMonitoring];
    if (v0[3])
    {
      KeyPath = swift_getKeyPath();
      v6 = MEMORY[0x28223BE20](KeyPath);
      (*(*v0 + 488))(v6, sub_23D4586D4);
    }

    else
    {
    }
  }

  swift_getKeyPath();
  v2();

  v7 = v0[6];
  v8 = *((*MEMORY[0x277D85000] & *v7) + 0xD8);
  v9 = v7;
  v8();
}

void sub_23D456444()
{
  sub_23D458B00(0, &qword_27E2DA780, 0x277D85C78);

  v1 = sub_23D46BF68();
  (*(*v0 + 440))(v1, sub_23D45870C, v0);
}

void sub_23D456508(uint64_t a1)
{
  swift_getKeyPath();
  v2 = (*a1 + 480);
  v3 = *v2;
  (*v2)();

  if (!*(a1 + 24))
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v3();

  v4 = *(a1 + 24);
  if (v4)
  {
    if (*(a1 + 16) == 1)
    {
      *(a1 + 16) = 1;
      v5 = v4;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      v12[2] = a1;
      v13 = 1;
      v7 = *(*a1 + 488);
      v8 = v4;
      v7(KeyPath, sub_23D458BF8, v12, MEMORY[0x277D84F78] + 8);
    }

    swift_getKeyPath();
    v3();

    [v4 registerClient_];
  }

  swift_getKeyPath();
  v3();

  v9 = *(a1 + 48);
  v10 = *((*MEMORY[0x277D85000] & *v9) + 0xD0);
  v11 = v9;
  v10();
}

void sub_23D456754(uint64_t a1)
{
  swift_getKeyPath();
  v3 = (*v1 + 480);
  v4 = *v3;
  (*v3)();

  if (!v1[3])
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v4();

  v5 = v1[3];
  if (v5)
  {
    v6 = *(*a1 + 464);
    v7 = v5;
    v6();
    v8 = sub_23D46BDC8();

    (*(*a1 + 608))(v9);
    v10 = sub_23D46BDC8();

    [v7 clearDropboxForModelNumber:v8 withFusing:v10];
  }
}

void sub_23D456908(uint64_t a1)
{
  swift_getKeyPath();
  v3 = (*v1 + 480);
  v4 = *v3;
  (*v3)();

  if (!v1[3])
  {
    sub_23D453F7C([objc_allocWithZone(AUObserverXPC) init]);
  }

  swift_getKeyPath();
  v4();

  v5 = v1[3];
  if (v5)
  {
    v6 = *(*a1 + 512);
    v7 = v5;
    v6();
    v8 = sub_23D46BDC8();

    [v7 settingsChangedForSerialNumber_];
  }

  swift_getKeyPath();
  v4();

  if (!v1[4])
  {
    sub_23D454220([objc_allocWithZone(MEMORY[0x277CE5458]) init]);
  }

  swift_getKeyPath();
  v4();

  v9 = v1[4];
  if (v9)
  {
    v10 = *(*a1 + 512);
    v11 = v9;
    v10();
    v12 = sub_23D46BDC8();

    [v11 settingsChangedForSerialNumber_];
  }
}

uint64_t sub_23D456B6C(uint64_t a1)
{
  v3 = sub_23D46BD08();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_23D46BD38();
  v7 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v13[1] = qword_27E2DB290;
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = v1;
  aBlock[4] = sub_23D458714;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_12;
  v11 = _Block_copy(aBlock);

  sub_23D46BD18();
  v15 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920, MEMORY[0x277D83970]);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v14);
}

uint64_t sub_23D456E70(uint64_t a1)
{
  v2 = sub_23D46BD08();
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x28223BE20](v2);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_23D46BD38();
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_23D46BD58();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v25 - v12;
  v14 = [objc_opt_self() sharedDatabase];
  (*(*a1 + 512))();
  v15 = sub_23D46BDC8();

  v17 = (*(*a1 + 1576))(v16);
  sub_23D45735C(v17);

  v18 = sub_23D46BD78();

  v26 = v14;
  [v14 addAccessoryWithSerialNumber:v15 info:v18];

  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v25 = qword_27E2DB290;
  sub_23D46BD48();
  sub_23D46BD68();
  v19 = *(v8 + 8);
  v19(v11, v7);
  aBlock[4] = sub_23D458928;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_49;
  v20 = _Block_copy(aBlock);

  sub_23D46BD18();
  v32 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  v21 = v7;
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920, MEMORY[0x277D83970]);
  v22 = v29;
  v23 = v31;
  sub_23D46BFF8();
  MEMORY[0x23EEE1010](v13, v6, v22, v20);
  _Block_release(v20);

  (*(v30 + 8))(v22, v23);
  (*(v27 + 8))(v6, v28);
  v19(v13, v21);
}

uint64_t sub_23D45735C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC68, &qword_23D46DCD0);
    v2 = sub_23D46C0F8();
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
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_23D441268(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_23D4589B4(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_23D4589B4(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_23D4589B4(v31, v32);
    result = sub_23D46C018();
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_23D4589B4(v32, (*(v2 + 56) + 32 * v10));
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

uint64_t sub_23D457624(uint64_t a1)
{
  v2 = sub_23D46BD08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_23D46BD38();
  v6 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27E2DB288 != -1)
  {
    swift_once();
  }

  v11[1] = qword_27E2DB290;
  aBlock[4] = sub_23D45871C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23D43C3E4;
  aBlock[3] = &block_descriptor_15_0;
  v9 = _Block_copy(aBlock);

  sub_23D46BD18();
  v13 = MEMORY[0x277D84F90];
  sub_23D458B58(&qword_27E2DA850, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA7B0, &qword_23D46D920);
  sub_23D43B810(&qword_27E2DA860, &qword_27E2DA7B0, &qword_23D46D920, MEMORY[0x277D83970]);
  sub_23D46BFF8();
  MEMORY[0x23EEE1040](0, v8, v5, v9);
  _Block_release(v9);
  (*(v3 + 8))(v5, v2);
  (*(v6 + 8))(v8, v12);
}

id *sub_23D457A50()
{

  v1 = OBJC_IVAR____TtC19AUDeveloperSettings11AFUSettings___observationRegistrar;
  v2 = sub_23D46B868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_23D457AD8()
{

  v1 = OBJC_IVAR____TtC19AUDeveloperSettings11AFUSettings___observationRegistrar;
  v2 = sub_23D46B868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 12);
  v4 = *(*v0 + 26);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_23D457B9C(uint64_t a1, char a2)
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

  sub_23D46C0C8();
LABEL_9:
  result = sub_23D46C058();
  *v2 = result;
  return result;
}

uint64_t sub_23D457C3C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x23EEE1110](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_23D46C0C8();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_23D457D78(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_32;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  if (a2 >> 62)
  {
    result = sub_23D46C0C8();
    if (v5 == result)
    {
      goto LABEL_5;
    }

LABEL_34:
    v15 = 0;
    return v15 & 1;
  }

  result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 != result)
  {
    goto LABEL_34;
  }

LABEL_5:
  if (!v5)
  {
    goto LABEL_28;
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
LABEL_28:
    v15 = 1;
    return v15 & 1;
  }

  if ((v5 & 0x8000000000000000) == 0)
  {
    v4 = type metadata accessor for SettingsAccessory(0);
    v11 = a2 & 0xC000000000000001;
    v12 = 4;
    while (1)
    {
      v13 = v12 - 4;
      v14 = v12 - 3;
      if (__OFADD__(v12 - 4, 1))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        v5 = sub_23D46C0C8();
        goto LABEL_3;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x23EEE1110](v12 - 4, a1);
        if (v11)
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v13 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        if (v11)
        {
LABEL_20:
          MEMORY[0x23EEE1110](v12 - 4, a2);
          goto LABEL_25;
        }
      }

      if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

LABEL_25:
      sub_23D458B58(&qword_27E2DACA0, type metadata accessor for SettingsAccessory, &unk_23D46E3F0);
      v15 = sub_23D46BDB8();

      if (v15)
      {
        ++v12;
        if (v14 != v5)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_23D457F8C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  swift_beginAccess();
  *(v2 + 56) = v1;
}

uint64_t type metadata accessor for AFUSettings(uint64_t a1)
{
  result = qword_27E2DB340;
  if (!qword_27E2DB340)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23D458060(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t (*sub_23D458070(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x23EEE1110](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_23D4580F0;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D4580F8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_23D46C0C8();
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
      result = sub_23D46C0C8();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_23D43B810(&qword_27E2DAC98, &qword_27E2DAC48, &unk_23D46DB20, MEMORY[0x277D83988]);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAC48, &unk_23D46DB20);
            v9 = sub_23D458070(v13, i, a3);
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
        type metadata accessor for SettingsAccessory(0);
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

uint64_t sub_23D45829C(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for SettingsAccessory(0);
  sub_23D458B58(&qword_27E2DACA0, type metadata accessor for SettingsAccessory, &unk_23D46E3F0);
  return sub_23D46BDB8() & 1;
}

uint64_t sub_23D45832C()
{
  v9[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_allocWithZone(MEMORY[0x277CBE030]) init];
  v9[0] = 0;
  v1 = [objc_opt_self() devicesWithDiscoveryFlags:0x800000 error:v9];
  v2 = v9[0];
  if (v1)
  {
    v3 = v1;
    sub_23D458B00(0, &qword_27E2DAC80, 0x277CBE020);
    v4 = sub_23D46BEB8();
    v5 = v2;
  }

  else
  {
    v6 = v9[0];
    v7 = sub_23D46B798();

    swift_willThrow();
    return MEMORY[0x277D84F90];
  }

  return v4;
}

uint64_t sub_23D458444(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_30:
    v6 = sub_23D46C0C8();
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return 0;
    }
  }

  v7 = 0;
  v33 = a3 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x23EEE1110](v7, a3);
    }

    else
    {
      if (v7 >= *(v33 + 16))
      {
        goto LABEL_29;
      }

      v9 = *(a3 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    if (!CBProductIDIsAirPods([v9 productID]))
    {
      goto LABEL_5;
    }

    v12 = [v10 serialNumberRight];
    if (v12)
    {
      break;
    }

LABEL_16:
    v18 = [v10 serialNumberLeft];
    if (v18)
    {
      v19 = v18;
      v20 = sub_23D46BDD8();
      v22 = v21;

      if (v20 == a1 && v22 == a2)
      {
        goto LABEL_23;
      }

      v23 = sub_23D46C1B8();

      if (v23)
      {
        goto LABEL_24;
      }
    }

    v24 = [v10 serialNumber];
    if (v24)
    {
      v25 = v24;
      v26 = sub_23D46BDD8();
      v28 = v27;

      if (v26 == a1 && v28 == a2)
      {
        goto LABEL_23;
      }

      v8 = sub_23D46C1B8();

      if (v8)
      {
        goto LABEL_24;
      }
    }

LABEL_5:

    ++v7;
    if (v11 == v6)
    {
      return 0;
    }
  }

  v13 = v12;
  v14 = sub_23D46BDD8();
  v16 = v15;

  if (v14 != a1 || v16 != a2)
  {
    v17 = sub_23D46C1B8();

    if (v17)
    {
      goto LABEL_24;
    }

    goto LABEL_16;
  }

LABEL_23:

LABEL_24:
  v29 = [v10 name];
  if (v29)
  {
    v30 = v29;
    v31 = sub_23D46BDD8();

    return v31;
  }

  return 0;
}

void sub_23D4586D4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
  v4 = v2;
}

void sub_23D45871C()
{
  v2 = [objc_opt_self() sharedDatabase];
  (*(*v0 + 512))();
  v1 = sub_23D46BDC8();

  [v2 removeAccessoryWithSerialNumber_];
}

uint64_t sub_23D4587E4(uint64_t a1)
{
  result = sub_23D46B868();
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

void sub_23D4588A8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 48);
  *(v1 + 48) = v2;
  v4 = v2;
}

void sub_23D4588E0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
  v4 = v2;
}

uint64_t sub_23D458928()
{
  if (qword_27E2DB280 != -1)
  {
    swift_once();
  }

  return (*(*qword_27E2DBE08 + 472))();
}

_OWORD *sub_23D4589B4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void sub_23D458A74()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  v4 = v2;
}

uint64_t sub_23D458B00(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23D458B48(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23D458B58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23D458C10()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
}

uint64_t sub_23D458C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_23D458CE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath();
  v6[2] = v3;
  v6[3] = v2;
  (*(*v3 + 1616))(KeyPath, sub_23D4692B4, v6, MEMORY[0x277D84F78] + 8);
}

uint64_t sub_23D458D98(uint64_t a1)
{
  swift_getKeyPath();
  v4 = v1;
  v5 = a1;
  (*(*v1 + 1616))();
}

uint64_t sub_23D458E40(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
}

uint64_t sub_23D458ED8()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  v1 = v0[3];

  return v1;
}

uint64_t sub_23D458F4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D458FA0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_23D458FE0(v1, v2);
}

uint64_t sub_23D458FE0(uint64_t a1, uint64_t a2)
{
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D459120);
  }
}

uint64_t sub_23D459120()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 24) = v0[3];
  *(v1 + 32) = v2;
}

uint64_t sub_23D4591B0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[5];

  return v1;
}

uint64_t sub_23D459240@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 416))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D459294(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 424);

  return v4(v2, v3);
}

uint64_t sub_23D459304(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[5] == a1 && v2[6] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[5] = a1;
    v2[6] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D459438);
  }
}

uint64_t sub_23D459438()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 40) = v2;
  *(v1 + 48) = v3;
}

uint64_t (*sub_23D4594A0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D459160(v4);
  return sub_23D4595DC;
}

uint64_t type metadata accessor for SettingsAccessory(uint64_t a1)
{
  result = qword_27E2DBCC0;
  if (!qword_27E2DBCC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23D459684()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[7];

  return v1;
}

uint64_t sub_23D459714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 464))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D459768(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 472);

  return v4(v2, v3);
}

uint64_t sub_23D4597D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[7] == a1 && v2[8] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[7] = a1;
    v2[8] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45990C);
  }
}

uint64_t sub_23D45990C()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
}

uint64_t (*sub_23D459974(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D459634(v4);
  return sub_23D459AB0;
}

uint64_t sub_23D459B0C()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[9];

  return v1;
}

uint64_t sub_23D459B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 512))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D459BF0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 520);

  return v4(v2, v3);
}

uint64_t sub_23D459C60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[9] == a1 && v2[10] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[9] = a1;
    v2[10] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D459D94);
  }
}

uint64_t sub_23D459D94()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 72) = v2;
  *(v1 + 80) = v3;
}

uint64_t (*sub_23D459DFC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D459ABC(v4);
  return sub_23D459F38;
}

uint64_t sub_23D459F94()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[88];
}

uint64_t sub_23D45A014(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[88] == v2)
  {
    v1[88] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45A110);
  }

  return result;
}

uint64_t (*sub_23D45A128(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D459F44(v4);
  return sub_23D45A264;
}

uint64_t sub_23D45A2C0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[12];

  return v1;
}

uint64_t sub_23D45A350@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 608))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45A3A4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 616);

  return v4(v2, v3);
}

uint64_t sub_23D45A414(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[12] == a1 && v2[13] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[12] = a1;
    v2[13] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45A548);
  }
}

uint64_t sub_23D45A548()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 96) = v2;
  *(v1 + 104) = v3;
}

uint64_t (*sub_23D45A5B0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45A270(v4);
  return sub_23D45A6EC;
}

uint64_t sub_23D45A748()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[14];

  return v1;
}

uint64_t sub_23D45A7D8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 656))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45A82C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 664);

  return v4(v2, v3);
}

uint64_t sub_23D45A89C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[14] == a1 && v2[15] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[14] = a1;
    v2[15] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45A9D0);
  }
}

uint64_t sub_23D45A9D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 112) = v2;
  *(v1 + 120) = v3;
}

uint64_t (*sub_23D45AA38(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45A6F8(v4);
  return sub_23D45AB74;
}

uint64_t sub_23D45ABD0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t sub_23D45ABD8()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[16];

  return v1;
}

uint64_t sub_23D45AC68@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 704))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45ACBC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 712);

  return v4(v2, v3);
}

uint64_t sub_23D45AD2C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[16] == a1 && v2[17] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[16] = a1;
    v2[17] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45AE60);
  }
}

uint64_t sub_23D45AE60()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 128) = v2;
  *(v1 + 136) = v3;
}

uint64_t (*sub_23D45AEC8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45AB80(v4);
  return sub_23D45B004;
}

uint64_t sub_23D45B060()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[18];

  return v1;
}

uint64_t sub_23D45B0F0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 752))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45B144(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 760);

  return v4(v2, v3);
}

uint64_t sub_23D45B1B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[18] == a1 && v2[19] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[18] = a1;
    v2[19] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45B2E8);
  }
}

uint64_t sub_23D45B2E8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
}

uint64_t (*sub_23D45B350(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45B010(v4);
  return sub_23D45B48C;
}

uint64_t sub_23D45B4E8()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[20];

  return v1;
}

uint64_t sub_23D45B578(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[20] == a1 && v2[21] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[20] = a1;
    v2[21] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45B6AC);
  }
}

uint64_t sub_23D45B6AC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 160) = v2;
  *(v1 + 168) = v3;
}

uint64_t (*sub_23D45B714(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45B498(v4);
  return sub_23D45B850;
}

uint64_t sub_23D45B8AC()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[22];

  return v1;
}

uint64_t sub_23D45B93C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 848))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45B990(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 856);

  return v4(v2, v3);
}

uint64_t sub_23D45BA00(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[22] == a1 && v2[23] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[22] = a1;
    v2[23] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45BB34);
  }
}

uint64_t sub_23D45BB34()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 176) = v2;
  *(v1 + 184) = v3;
}

uint64_t (*sub_23D45BB9C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45B85C(v4);
  return sub_23D45BCD8;
}

uint64_t sub_23D45BD34()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[24];

  return v1;
}

uint64_t sub_23D45BDC4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 896))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45BE18(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 904);

  return v4(v2, v3);
}

uint64_t sub_23D45BE88(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[24] == a1 && v2[25] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[24] = a1;
    v2[25] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45BFBC);
  }
}

uint64_t sub_23D45BFBC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 192) = v2;
  *(v1 + 200) = v3;
}

uint64_t (*sub_23D45C024(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45BCE4(v4);
  return sub_23D45C160;
}

uint64_t sub_23D45C1BC()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[26];

  return v1;
}

uint64_t sub_23D45C24C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[26] == a1 && v2[27] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[26] = a1;
    v2[27] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45C380);
  }
}

uint64_t sub_23D45C380()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 208) = v2;
  *(v1 + 216) = v3;
}

uint64_t (*sub_23D45C3E8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45C16C(v4);
  return sub_23D45C524;
}

uint64_t sub_23D45C580()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[224];
}

uint64_t sub_23D45C600(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[224] == v2)
  {
    v1[224] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45C6FC);
  }

  return result;
}

uint64_t (*sub_23D45C714(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45C530(v4);
  return sub_23D45C850;
}

uint64_t sub_23D45C8AC()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[29];
}

uint64_t sub_23D45C92C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1040))();
  *a2 = result;
  return result;
}

uint64_t sub_23D45C9D0(uint64_t a1)
{
  result = swift_beginAccess();
  if (v1[29] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1616))(v5, sub_23D45CAC8);
  }

  return result;
}

uint64_t sub_23D45CAC8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  result = swift_beginAccess();
  *(v2 + 232) = v1;
  return result;
}

uint64_t (*sub_23D45CB18(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45C85C(v4);
  return sub_23D45CC54;
}

uint64_t sub_23D45CCB0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[240];
}

uint64_t sub_23D45CD30@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1088))();
  *a2 = result;
  return result;
}

uint64_t sub_23D45CDD4(unsigned __int8 a1)
{
  result = swift_beginAccess();
  if (v1[240] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = a1;
    (*(*v1 + 1616))(v5, sub_23D45F36C);
  }

  return result;
}

uint64_t (*sub_23D45CED0(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45CC60(v4);
  return sub_23D45D00C;
}

uint64_t sub_23D45D068()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[31];

  return v1;
}

uint64_t sub_23D45D0F8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[31] == a1 && v2[32] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[31] = a1;
    v2[32] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45F3C0);
  }
}

uint64_t (*sub_23D45D22C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45D018(v4);
  return sub_23D45D368;
}

uint64_t sub_23D45D3C4()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[33];

  return v1;
}

uint64_t sub_23D45D454@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1184))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45D4A8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1192);

  return v4(v2, v3);
}

uint64_t sub_23D45D518(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[33] == a1 && v2[34] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[33] = a1;
    v2[34] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45F428);
  }
}

uint64_t (*sub_23D45D64C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45D374(v4);
  return sub_23D45D788;
}

uint64_t sub_23D45D7E4()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[280];
}

uint64_t sub_23D45D864@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1232))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D45D90C(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[280] == v2)
  {
    v1[280] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45F490);
  }

  return result;
}

uint64_t (*sub_23D45DA08(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45D794(v4);
  return sub_23D45DB44;
}

uint64_t sub_23D45DBA0()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[281];
}

uint64_t sub_23D45DC20@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 1280))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_23D45DCC8(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[281] == v2)
  {
    v1[281] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45F4A8);
  }

  return result;
}

uint64_t (*sub_23D45DDC4(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45DB50(v4);
  return sub_23D45DF00;
}

uint64_t sub_23D45DF5C()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[282];
}

uint64_t sub_23D45DFDC(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (v1[282] == v2)
  {
    v1[282] = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    v6 = v1;
    v7 = v2;
    (*(*v1 + 1616))(v5, sub_23D45F4C0);
  }

  return result;
}

uint64_t (*sub_23D45E0D8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45DF0C(v4);
  return sub_23D45E214;
}

uint64_t sub_23D45E270()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[36];

  return v1;
}

uint64_t sub_23D45E300@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1376))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45E354(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1384);

  return v4(v2, v3);
}

uint64_t sub_23D45E3C4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[36] == a1 && v2[37] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[36] = a1;
    v2[37] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45F4D8);
  }
}

uint64_t (*sub_23D45E4F8(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45E220(v4);
  return sub_23D45E634;
}

double sub_23D45E6A4()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  return v0[38];
}

uint64_t sub_23D45E7C8(double a1)
{
  result = swift_beginAccess();
  if (v1[38] == a1)
  {
    v1[38] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v5 = MEMORY[0x28223BE20](KeyPath);
    (*(*v1 + 1616))(v5, sub_23D45F540);
  }

  return result;
}

uint64_t (*sub_23D45E8CC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45E64C(v4);
  return sub_23D45EA08;
}

uint64_t sub_23D45EA64()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[39];

  return v1;
}

uint64_t sub_23D45EAF4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1472))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45EB48(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1480);

  return v4(v2, v3);
}

uint64_t sub_23D45EBB8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[39] == a1 && v2[40] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[39] = a1;
    v2[40] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45F594);
  }
}

uint64_t (*sub_23D45ECEC(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45EA14(v4);
  return sub_23D45EE28;
}

uint64_t sub_23D45EE84()
{
  swift_getKeyPath();
  (*(*v0 + 1608))();

  swift_beginAccess();
  v1 = v0[41];

  return v1;
}

uint64_t sub_23D45EF14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 1520))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_23D45EF68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(**a2 + 1528);

  return v4(v2, v3);
}

uint64_t sub_23D45EFD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[41] == a1 && v2[42] == a2;
  if (v5 || (sub_23D46C1B8() & 1) != 0)
  {
    v2[41] = a1;
    v2[42] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x28223BE20](KeyPath);
    v9 = v2;
    v10 = a1;
    v11 = a2;
    (*(*v2 + 1616))(v8, sub_23D45F5FC);
  }
}

uint64_t (*sub_23D45F10C(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 1608))(KeyPath);

  v4[5] = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  v4[7] = sub_23D45EE34(v4);
  return sub_23D45F248;
}

void sub_23D45F254(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_23D46B838();

  free(v3);
}

unint64_t sub_23D45F2E8(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

unint64_t *sub_23D45F348@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_23D45F36C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 240) = v2;
  return result;
}

uint64_t sub_23D45F3C0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 248) = v2;
  *(v1 + 256) = v3;
}

uint64_t sub_23D45F428()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 264) = v2;
  *(v1 + 272) = v3;
}

uint64_t sub_23D45F4D8()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 288) = v2;
  *(v1 + 296) = v3;
}

uint64_t sub_23D45F540()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 304) = v2;
  return result;
}

uint64_t sub_23D45F594()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
}

uint64_t sub_23D45F5FC()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  swift_beginAccess();
  *(v1 + 328) = v2;
  *(v1 + 336) = v3;
}

uint64_t sub_23D45F758(unsigned __int8 a1)
{
  sub_23D46C1E8();
  MEMORY[0x23EEE12C0](a1);
  return sub_23D46C228();
}

unint64_t sub_23D45F7AC(char a1)
{
  result = 0x754E6C6169726573;
  switch(a1)
  {
    case 1:
      result = 0x4E79616C70736964;
      break;
    case 2:
      result = 0x6D754E6C65646F6DLL;
      break;
    case 3:
      result = 0x626173694461746FLL;
      break;
    case 4:
      result = 0x676E697375467768;
      break;
    case 5:
      result = 0x6556657669746361;
      break;
    case 6:
      result = 0x6973697665527768;
      break;
    case 7:
      result = 0x636F4C7465737361;
      break;
    case 8:
    case 13:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000019;
      break;
    case 10:
      result = 0xD000000000000021;
      break;
    case 11:
      result = 0x6E4573616C6C6170;
      break;
    case 12:
      result = 0x754173616C6C6170;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000014;
      break;
    case 16:
    case 18:
      result = 0x73736572676F7270;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 19:
      result = 0xD000000000000014;
      break;
    case 20:
      result = 0x56786F62706F7264;
      break;
    case 21:
    case 23:
      result = 0xD000000000000012;
      break;
    case 22:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_23D45FA84()
{
  v1 = *v0;
  sub_23D46C1E8();
  MEMORY[0x23EEE12C0](v1);
  return sub_23D46C228();
}

uint64_t sub_23D45FACC(uint64_t a1)
{
  v2 = *v1;
  sub_23D46C1E8();
  MEMORY[0x23EEE12C0](v2);
  return sub_23D46C228();
}

uint64_t sub_23D45FB18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23D468238(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23D45FB4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D468C14(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_23D45FB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_23D468C14(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_23D45FBC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_23D45FC1C(a1, a2, a3);
  return v6;
}

uint64_t sub_23D45FC1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + 24) = 0;
  *(v3 + 32) = 0xE000000000000000;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0xE000000000000000;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0xE000000000000000;
  *(v3 + 88) = 0;
  v8 = (v3 + 88);
  *(v3 + 72) = 0;
  *(v3 + 80) = 0xE000000000000000;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0xE000000000000000;
  *(v3 + 112) = 0;
  *(v3 + 120) = 0xE000000000000000;
  *(v3 + 128) = 0;
  *(v3 + 136) = 0xE000000000000000;
  *(v3 + 144) = 0;
  *(v3 + 152) = 0xE000000000000000;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0xE000000000000000;
  *(v3 + 176) = 0;
  *(v3 + 184) = 0xE000000000000000;
  *(v3 + 192) = 0;
  *(v3 + 200) = 0xE000000000000000;
  *(v3 + 208) = 0;
  *(v3 + 216) = 0xE000000000000000;
  *(v3 + 224) = 0;
  v215 = (v3 + 224);
  *(v3 + 232) = 0;
  v214 = (v3 + 232);
  *(v3 + 240) = 0;
  v9 = (v3 + 240);
  *(v3 + 248) = 0;
  *(v3 + 256) = 0xE000000000000000;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0xE000000000000000;
  *(v3 + 280) = 0;
  *(v3 + 282) = 0;
  *(v3 + 288) = 0;
  *(v3 + 296) = 0xE000000000000000;
  *(v3 + 304) = 0x3F847AE147AE147BLL;
  *(v3 + 312) = 0;
  *(v3 + 320) = 0xE000000000000000;
  *(v3 + 328) = 0;
  *(v3 + 336) = 0xE000000000000000;
  sub_23D46B858();
  *(v3 + 16) = a3;
  v216 = v3 + 16;
  v10 = sub_23D46BDD8();
  v12 = v11;
  if (*(a3 + 16))
  {
    v13 = v10;

    v14 = sub_23D450300(v13, v12);
    v16 = v15;

    if (v16)
    {
      sub_23D441268(*(a3 + 56) + 32 * v14, v221);
      if (swift_dynamicCast())
      {
        sub_23D459304(v217, v218);
      }
    }
  }

  else
  {
  }

  v17 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v19 = sub_23D450300(v17, v18);
    v21 = v20;

    if (v21)
    {
      sub_23D441268(*(a3 + 56) + 32 * v19, v221);
      if (swift_dynamicCast())
      {
        sub_23D4597D8(v217, v218);
      }
    }
  }

  else
  {
  }

  sub_23D459C60(a1, a2);
  v22 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v24 = sub_23D450300(v22, v23);
    v26 = v25;

    if (v26)
    {
      sub_23D441268(*(a3 + 56) + 32 * v24, v221);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (v217 == *v8)
        {
          *v8 = v217;
        }

        else
        {
          KeyPath = swift_getKeyPath();
          v28 = MEMORY[0x28223BE20](KeyPath);
          (*(*v4 + 1616))(v28, sub_23D46937C);
        }
      }
    }
  }

  else
  {
  }

  v29 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v31 = sub_23D450300(v29, v30);
    v33 = v32;

    if (v33)
    {
      sub_23D441268(*(a3 + 56) + 32 * v31, v221);
      if (swift_dynamicCast())
      {
        sub_23D45A414(v217, v218);
      }
    }
  }

  else
  {
  }

  v34 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v36 = sub_23D450300(v34, v35);
    v38 = v37;

    if (v38)
    {
      sub_23D441268(*(a3 + 56) + 32 * v36, v221);
      if (swift_dynamicCast())
      {
        sub_23D45A89C(v217, v218);
      }
    }
  }

  else
  {
  }

  v39 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v41 = sub_23D450300(v39, v40);
    v43 = v42;

    if (v43)
    {
      sub_23D441268(*(a3 + 56) + 32 * v41, v221);
      if (swift_dynamicCast())
      {
        sub_23D45AD2C(v217, v218);
      }
    }
  }

  else
  {
  }

  v44 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v46 = sub_23D450300(v44, v45);
    v48 = v47;

    if (v48)
    {
      sub_23D441268(*(a3 + 56) + 32 * v46, v221);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACA8, &qword_23D46E0F0);
      if (swift_dynamicCast())
      {
        *&v221[0] = v217;
        sub_23D468B18();
        v49 = sub_23D46BDA8();
        v51 = v50;

        sub_23D45BA00(v49, v51);
      }
    }
  }

  else
  {
  }

  v52 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v54 = sub_23D450300(v52, v53);
    v56 = v55;

    if (v56)
    {
      sub_23D441268(*(a3 + 56) + 32 * v54, v221);
      if (swift_dynamicCast())
      {
        sub_23D45D518(v217, v218);
        v57 = sub_23D46BDD8();
        v59 = v58;
        memset(v221, 0, sizeof(v221));
        v60 = swift_getKeyPath();
        (*(*v4 + 1608))(v60);

        swift_getKeyPath();
        sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(v221, v57, v59);
        swift_endAccess();
        v217 = v4;
        swift_getKeyPath();
        sub_23D46B838();
      }
    }
  }

  else
  {
  }

  v61 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v63 = sub_23D450300(v61, v62);
    v65 = v64;

    if (v65)
    {
      sub_23D441268(*(a3 + 56) + 32 * v63, v221);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (v217 == v4[280])
        {
          v4[280] = v217;
        }

        else
        {
          v66 = swift_getKeyPath();
          v67 = MEMORY[0x28223BE20](v66);
          (*(*v4 + 1616))(v67, sub_23D469364);
        }
      }
    }
  }

  else
  {
  }

  v68 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v70 = sub_23D450300(v68, v69);
    v72 = v71;

    if (v72)
    {
      sub_23D441268(*(a3 + 56) + 32 * v70, v221);
      if (swift_dynamicCast())
      {
        v73 = v217 ? 2 : 1;
        swift_beginAccess();
        if (*v9 != v73)
        {
          v74 = swift_getKeyPath();
          v75 = MEMORY[0x28223BE20](v74);
          (*(*v4 + 1616))(v75, sub_23D4692F8);
        }
      }
    }
  }

  else
  {
  }

  v76 = sub_23D46BDD8();
  if (*(a3 + 16))
  {
    v78 = sub_23D450300(v76, v77);
    v80 = v79;

    if (v80)
    {
      sub_23D441268(*(a3 + 56) + 32 * v78, v221);
      if (swift_dynamicCast())
      {
        swift_beginAccess();
        if (v217 == *v215)
        {
          *v215 = v217;
        }

        else
        {
          v81 = swift_getKeyPath();
          v82 = MEMORY[0x28223BE20](v81);
          (*(*v4 + 1616))(v82, sub_23D46934C);
        }
      }
    }
  }

  else
  {
  }

  v83 = sub_23D46BDD8();
  if (!*(a3 + 16))
  {
    goto LABEL_73;
  }

  v85 = sub_23D450300(v83, v84);
  v87 = v86;

  if ((v87 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_23D441268(*(a3 + 56) + 32 * v85, v221);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_74;
  }

  if ((v217 & 0x8000000000000000) == 0)
  {
    swift_beginAccess();
    if (*v214 != v217)
    {
      v89 = swift_getKeyPath();
      v90 = MEMORY[0x28223BE20](v89);
      (*(*v4 + 1616))(v90, sub_23D4692E0);
    }

    v91 = sub_23D46BDD8();
    if (*(a3 + 16))
    {
      v93 = sub_23D450300(v91, v92);
      v95 = v94;

      if (v95)
      {
        sub_23D441268(*(a3 + 56) + 32 * v93, v221);
        if (swift_dynamicCast())
        {
          sub_23D45D0F8(v217, v218);
        }
      }

LABEL_74:
      v96 = sub_23D46BDD8();
      if (*(a3 + 16))
      {
        v98 = sub_23D450300(v96, v97);
        v100 = v99;

        if (v100)
        {
          sub_23D441268(*(a3 + 56) + 32 * v98, v221);
          if (swift_dynamicCast())
          {
            swift_beginAccess();
            if (v217 == *(v216 + 265))
            {
              *(v216 + 265) = v217;
            }

            else
            {
              v101 = swift_getKeyPath();
              v102 = MEMORY[0x28223BE20](v101);
              (*(*v4 + 1616))(v102, sub_23D469334);
            }
          }
        }
      }

      else
      {
      }

      v103 = sub_23D46BDD8();
      if (*(a3 + 16))
      {
        v105 = sub_23D450300(v103, v104);
        v107 = v106;

        if (v107)
        {
          sub_23D441268(*(a3 + 56) + 32 * v105, v221);
          if (swift_dynamicCast())
          {
            swift_beginAccess();
            if (v217 == v4[282])
            {
              v4[282] = v217;
            }

            else
            {
              v108 = swift_getKeyPath();
              v109 = MEMORY[0x28223BE20](v108);
              (*(*v4 + 1616))(v109, sub_23D46931C);
            }
          }
        }
      }

      else
      {
      }

      v110 = sub_23D46BDD8();
      if (!*(a3 + 16))
      {
        goto LABEL_116;
      }

      v112 = sub_23D450300(v110, v111);
      v114 = v113;

      if ((v114 & 1) == 0)
      {
        goto LABEL_117;
      }

      sub_23D441268(*(a3 + 56) + 32 * v112, v221);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_117;
      }

      v115 = sub_23D45B1B4(v219, v220);
      v116 = *(*v4 + 752);
      v117 = v116(v115);
      v119 = v118;
      if (v117 == sub_23D46BDD8() && v119 == v120)
      {

        goto LABEL_96;
      }

      v121 = sub_23D46C1B8();

      if (v121)
      {
LABEL_96:
        v123 = sub_23D46BDD8();
        sub_23D45B1B4(v123, v124);
        v125 = sub_23D46BDD8();
        if (*(a3 + 16))
        {
          v127 = sub_23D450300(v125, v126);
          v129 = v128;

          if (v129)
          {
            sub_23D441268(*(a3 + 56) + 32 * v127, v221);
            if (swift_dynamicCast())
            {
              sub_23D45B578(v219, v220);
            }
          }
        }

        else
        {
        }

        v130 = sub_23D46BDD8();
        if (*(a3 + 16))
        {
          v132 = sub_23D450300(v130, v131);
          v134 = v133;

          if (v134)
          {
            sub_23D441268(*(a3 + 56) + 32 * v132, v221);
            if (swift_dynamicCast())
            {
              *&v221[0] = (*(*v4 + 800))();
              *(&v221[0] + 1) = v135;

              MEMORY[0x23EEE0EE0]();

              v137 = *(&v221[0] + 1);
              v136 = *&v221[0];
LABEL_107:
              sub_23D45B578(v136, v137);
              goto LABEL_117;
            }
          }

          goto LABEL_117;
        }

LABEL_116:

        goto LABEL_117;
      }

      v138 = v116(v122);
      v140 = v139;
      if (v138 == sub_23D46BDD8() && v140 == v141)
      {
      }

      else
      {
        v142 = sub_23D46C1B8();

        if ((v142 & 1) == 0)
        {
          v199 = v116(v143);
          v201 = v200;
          if (v199 == sub_23D46BDD8() && v201 == v202)
          {
          }

          else
          {
            v208 = sub_23D46C1B8();

            if ((v208 & 1) == 0)
            {
              goto LABEL_117;
            }
          }

          v209 = sub_23D46BDD8();
          sub_23D45B1B4(v209, v210);
          goto LABEL_117;
        }
      }

      v144 = sub_23D46BDD8();
      if (!*(a3 + 16))
      {
        goto LABEL_116;
      }

      v146 = sub_23D450300(v144, v145);
      v148 = v147;

      if (v148)
      {
        sub_23D441268(*(a3 + 56) + 32 * v146, v221);
        if (swift_dynamicCast())
        {
          v136 = v219;
          v137 = v220;
          goto LABEL_107;
        }
      }

LABEL_117:
      v149 = sub_23D46BDD8();
      if (*(a3 + 16))
      {
        v151 = sub_23D450300(v149, v150);
        v153 = v152;

        if (v153)
        {
          sub_23D441268(*(a3 + 56) + 32 * v151, v221);
          if (swift_dynamicCast())
          {
            v154 = sub_23D45BE88(v219, v220);
            v155 = *(*v4 + 896);
            v156 = v155(v154);
            v158 = v157;
            if (v156 == sub_23D46BDD8() && v158 == v159)
            {
            }

            else
            {
              v160 = sub_23D46C1B8();

              if ((v160 & 1) == 0)
              {
                v178 = v155(v161);
                v180 = v179;
                if (v178 == sub_23D46BDD8() && v180 == v181)
                {
                }

                else
                {
                  v182 = sub_23D46C1B8();

                  if ((v182 & 1) == 0)
                  {

                    v204 = v155(v203);
                    v206 = v205;
                    if (v204 == sub_23D46BDD8() && v206 == v207)
                    {
                    }

                    else
                    {
                      v211 = sub_23D46C1B8();

                      if ((v211 & 1) == 0)
                      {
                        goto LABEL_146;
                      }
                    }

                    v212 = sub_23D46BDD8();
                    v174 = sub_23D45BE88(v212, v213);
                    goto LABEL_146;
                  }
                }

                v183 = sub_23D46BDD8();
                if (*(a3 + 16))
                {
                  v185 = sub_23D450300(v183, v184);
                  v187 = v186;

                  if (v187)
                  {
                    sub_23D441268(*(a3 + 56) + 32 * v185, v221);

                    v174 = swift_dynamicCast();
                    if ((v174 & 1) == 0)
                    {
                      goto LABEL_146;
                    }

                    v176 = v219;
                    v177 = v220;
                    goto LABEL_135;
                  }

LABEL_145:

                  goto LABEL_146;
                }

LABEL_144:

                goto LABEL_145;
              }
            }

            v162 = sub_23D46BDD8();
            sub_23D45BE88(v162, v163);
            v164 = sub_23D46BDD8();
            if (*(a3 + 16))
            {
              v166 = sub_23D450300(v164, v165);
              v168 = v167;

              if (v168)
              {
                sub_23D441268(*(a3 + 56) + 32 * v166, v221);
                if (swift_dynamicCast())
                {
                  sub_23D45C24C(v219, v220);
                }
              }
            }

            else
            {
            }

            v169 = sub_23D46BDD8();
            if (*(a3 + 16))
            {
              v171 = sub_23D450300(v169, v170);
              v173 = v172;

              if (v173)
              {
                sub_23D441268(*(a3 + 56) + 32 * v171, v221);

                v174 = swift_dynamicCast();
                if ((v174 & 1) == 0)
                {
LABEL_146:
                  v188 = (*v4 + 464);
                  v189 = *v188;
                  if ((*v188)(v174) != 0x3231353241 || v190 != 0xE500000000000000)
                  {
                    v191 = sub_23D46C1B8();

                    if (v191)
                    {
                      goto LABEL_150;
                    }

                    if (v189(v192) != 0x3331353241 || v197 != 0xE500000000000000)
                    {
                      v198 = sub_23D46C1B8();

                      if ((v198 & 1) == 0)
                      {
                        return v4;
                      }

                      goto LABEL_150;
                    }
                  }

LABEL_150:
                  v193 = [objc_opt_self() mainBundle];
                  v194 = sub_23D46B788();
                  v196 = v195;

                  strcpy(v221, "VoiceAssist ");
                  BYTE13(v221[0]) = 0;
                  HIWORD(v221[0]) = -5120;
                  MEMORY[0x23EEE0EE0](v194, v196);

                  sub_23D458FE0(*&v221[0], *(&v221[0] + 1));
                  return v4;
                }

                *&v221[0] = (*(*v4 + 944))();
                *(&v221[0] + 1) = v175;

                MEMORY[0x23EEE0EE0]();

                v177 = *(&v221[0] + 1);
                v176 = *&v221[0];
LABEL_135:
                v174 = sub_23D45C24C(v176, v177);
                goto LABEL_146;
              }

              goto LABEL_145;
            }

            goto LABEL_144;
          }
        }
      }

      else
      {
      }

      return v4;
    }

LABEL_73:

    goto LABEL_74;
  }

  __break(1u);
  return result;
}

uint64_t sub_23D461690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_23D4589B4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_23D467ED8(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_23D46924C(a1);
    sub_23D4679CC(a2, a3, v9);

    return sub_23D46924C(v9);
  }

  return result;
}

uint64_t sub_23D461790(uint64_t a1)
{
  v3 = (*(*a1 + 320))();
  KeyPath = swift_getKeyPath();
  v50 = v1;
  v51 = v3;
  (*(*v1 + 1616))(KeyPath, sub_23D4692B4, &v49, MEMORY[0x277D84F78] + 8);

  v6 = (*(*a1 + 416))(v5);
  v7 = (*(*v1 + 424))(v6);
  v8 = (*(*a1 + 464))(v7);
  v9 = (*(*v1 + 472))(v8);
  v10 = (*(*a1 + 512))(v9);
  v11 = (*(*v1 + 520))(v10);
  v12 = (*(*a1 + 560))(v11);
  v13 = (*(*v1 + 568))(v12 & 1);
  v14 = (*(*a1 + 608))(v13);
  v15 = (*(*v1 + 616))(v14);
  v16 = (*(*a1 + 656))(v15);
  v17 = (*(*v1 + 664))(v16);
  v18 = (*(*a1 + 704))(v17);
  v19 = (*(*v1 + 712))(v18);
  v20 = (*(*a1 + 848))(v19);
  v21 = (*(*v1 + 856))(v20);
  v22 = (*(*a1 + 1184))(v21);
  v23 = (*(*v1 + 1192))(v22);
  v24 = (*(*a1 + 752))(v23);
  v25 = (*(*v1 + 760))(v24);
  v26 = (*(*a1 + 800))(v25);
  v27 = (*(*v1 + 808))(v26);
  v28 = (*(*a1 + 896))(v27);
  v29 = (*(*v1 + 904))(v28);
  v30 = (*(*a1 + 944))(v29);
  v31 = (*(*v1 + 952))(v30);
  v32 = (*(*a1 + 992))(v31);
  v33 = (*(*v1 + 1000))(v32 & 1);
  v34 = (*(*a1 + 1040))(v33);
  v35 = (*(*v1 + 1048))(v34);
  v36 = (*(*a1 + 1088))(v35);
  v37 = (*(*v1 + 1096))(v36);
  v38 = (*(*a1 + 1136))(v37);
  v39 = (*(*v1 + 1144))(v38);
  v40 = (*(*a1 + 368))(v39);
  v42 = sub_23D458FE0(v40, v41);
  v43 = (*(*a1 + 1232))(v42);
  v44 = (*(*v1 + 1240))(v43 & 1);
  v45 = (*(*a1 + 1280))(v44);
  v46 = (*(*v1 + 1288))(v45 & 1);
  v47 = (*(*a1 + 1328))(v46);
  return (*(*v1 + 1336))(v47 & 1);
}

uint64_t sub_23D462240()
{
  v1 = v0;
  v2 = sub_23D46BDD8();
  v4 = v3;
  v5 = (*(*v0 + 560))();
  *(&v230 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v229) = v5 & 1;
  KeyPath = swift_getKeyPath();
  v228 = *(*v0 + 1608);
  (v228)(KeyPath);

  swift_getKeyPath();
  sub_23D468E50(&qword_27E2DA8E0, &unk_23D46E418);
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v2, v4);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v7 = sub_23D46BDD8();
  v227 = v8;
  v9 = (*(*v0 + 1040))();
  *(&v230 + 1) = MEMORY[0x277D83B88];
  *&v229 = v9;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v7, v227);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v10 = sub_23D46BDD8();
  v12 = v11;
  v13 = (*(*v0 + 992))();
  *(&v230 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v229) = v13 & 1;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v10, v12);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v15 = *(*v0 + 1088);
  if ((v15)(v14))
  {
    v16 = sub_23D46BDD8();
    v18 = v17;
    v19 = v15();
    *(&v230 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v229) = v19 == 2;
    swift_getKeyPath();
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v16, v18);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();
  }

  v20 = sub_23D46BDD8();
  v22 = v21;
  v23 = (*(*v0 + 1136))();
  *(&v230 + 1) = MEMORY[0x277D837D0];
  *&v229 = v23;
  *(&v229 + 1) = v24;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v20, v22);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v223 = sub_23D46BDD8();
  v26 = v25;
  v27 = *(*v0 + 752);
  v28 = v27();
  *(&v230 + 1) = MEMORY[0x277D837D0];
  *&v229 = v28;
  *(&v229 + 1) = v29;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v223, v26);
  swift_endAccess();
  v30 = v27;
  swift_getKeyPath();
  sub_23D46B838();

  v32 = (v27)(v31);
  v34 = v33;
  if (v32 == sub_23D46BDD8() && v34 == v35)
  {

    goto LABEL_7;
  }

  v36 = sub_23D46C1B8();

  if (v36)
  {
LABEL_7:
    v38 = sub_23D46BDD8();
    v40 = v39;
    v41 = sub_23D46BDD8();
    *(&v230 + 1) = MEMORY[0x277D837D0];
    *&v229 = v41;
    *(&v229 + 1) = v42;
    swift_getKeyPath();
    v43 = v228;
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v38, v40);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    v44 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v45 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
    if (v45)
    {
      v46 = *(*v1 + 800);
      v47 = v45;
      v46();
      v48 = sub_23D46BDC8();

      v219 = v46;
      v50 = (v46)(v49);
      v51 = MEMORY[0x23EEE0F10](v50);

      v52 = [v47 firstMatchInString:v48 options:0 range:{0, v51}];

      if (v52)
      {
        v218 = v47;
        [v52 rangeAtIndex_];
        v53 = v46;
        v46();
        sub_23D46BF18();
        v55 = v54;

        if ((v55 & 1) == 0)
        {
          v56 = sub_23D46BDD8();
          v215 = v57;
          v216 = v56;
          v46();
          v58 = sub_23D46BE58();
          v59 = v52;
          v61 = v60;
          v63 = v62;
          v65 = v64;

          *(&v230 + 1) = MEMORY[0x277D83E40];
          v66 = swift_allocObject();
          *&v229 = v66;
          v66[2] = v58;
          v66[3] = v61;
          v66[4] = v63;
          v66[5] = v65;
          swift_getKeyPath();
          v228();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v229, v216, v215);
          swift_endAccess();
          swift_getKeyPath();
          v52 = v59;
          v53 = v219;
          sub_23D46B838();
        }

        [v52 rangeAtIndex_];
        v53();
        sub_23D46BF18();
        v68 = v67;

        if (v68)
        {
        }

        else
        {
          v220 = sub_23D46BDD8();
          v217 = v93;
          v53();
          v94 = sub_23D46BE58();
          v96 = v95;
          v98 = v97;
          v100 = v99;

          *(&v230 + 1) = MEMORY[0x277D83E40];
          v101 = swift_allocObject();
          *&v229 = v101;
          v101[2] = v94;
          v101[3] = v96;
          v101[4] = v98;
          v101[5] = v100;
          swift_getKeyPath();
          v228();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v229, v220, v217);
          swift_endAccess();
          swift_getKeyPath();
          sub_23D46B838();
        }
      }

      else
      {
      }
    }

    goto LABEL_29;
  }

  v69 = (v30)(v37);
  v71 = v70;
  v43 = v228;
  if (v69 != sub_23D46BDD8() || v71 != v72)
  {
    v73 = sub_23D46C1B8();

    if (v73)
    {
      goto LABEL_17;
    }

    v89 = (v30)(v74);
    v91 = v90;
    if (v89 == sub_23D46BDD8() && v91 == v92)
    {
    }

    else
    {
      v102 = sub_23D46C1B8();

      if ((v102 & 1) == 0)
      {
LABEL_28:
        v108 = sub_23D46BDD8();
        v110 = v109;
        v229 = 0u;
        v230 = 0u;
        swift_getKeyPath();
        v228();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v229, v108, v110);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        v111 = sub_23D46BDD8();
        v113 = v112;
        v229 = 0u;
        v230 = 0u;
        swift_getKeyPath();
        v228();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v229, v111, v113);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        goto LABEL_29;
      }
    }

    v103 = sub_23D46BDD8();
    v105 = v104;
    v106 = sub_23D46BDD8();
    *(&v230 + 1) = MEMORY[0x277D837D0];
    *&v229 = v106;
    *(&v229 + 1) = v107;
    swift_getKeyPath();
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v103, v105);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    goto LABEL_28;
  }

LABEL_17:
  v75 = sub_23D46BDD8();
  v77 = v76;
  v229 = 0u;
  v230 = 0u;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v75, v77);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v79 = *(*v1 + 800);
  (v79)(v78);
  v80 = sub_23D46BE08();

  if (v80 >= 1)
  {
    v81 = sub_23D46BDD8();
    v83 = v82;
    v84 = v79();
    *(&v230 + 1) = MEMORY[0x277D837D0];
    *&v229 = v84;
    *(&v229 + 1) = v85;
    swift_getKeyPath();
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v81, v83);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();
  }

  v86 = sub_23D46BDD8();
  v88 = v87;
  v229 = 0u;
  v230 = 0u;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v86, v88);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v43 = v228;
LABEL_29:
  v114 = (*v1 + 896);
  v115 = *v114;
  if (!(*v114)(v45) && v116 == 0xE000000000000000)
  {

    goto LABEL_58;
  }

  v117 = sub_23D46C1B8();

  if (v117)
  {
    goto LABEL_58;
  }

  v118 = sub_23D46BDD8();
  v120 = v119;
  v121 = v115();
  *(&v230 + 1) = MEMORY[0x277D837D0];
  *&v229 = v121;
  *(&v229 + 1) = v122;
  swift_getKeyPath();
  v43();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v118, v120);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v124 = (v115)(v123);
  v126 = v125;
  if (v124 == sub_23D46BDD8() && v126 == v127)
  {

    goto LABEL_37;
  }

  v128 = sub_23D46C1B8();

  if (v128)
  {
LABEL_37:
    v130 = sub_23D46BDD8();
    v132 = v131;
    v133 = sub_23D46BDD8();
    *(&v230 + 1) = MEMORY[0x277D837D0];
    *&v229 = v133;
    *(&v229 + 1) = v134;
    swift_getKeyPath();
    v43 = v228;
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v130, v132);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    v135 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v136 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
    if (v136)
    {
      v137 = *(*v1 + 944);
      v138 = v136;
      v137();
      v139 = sub_23D46BDC8();

      v141 = (v137)(v140);
      v142 = MEMORY[0x23EEE0F10](v141);

      v143 = [v138 firstMatchInString:v139 options:0 range:{0, v142}];

      if (v143)
      {
        v226 = v138;
        [v143 rangeAtIndex_];
        v144 = v137;
        v137();
        sub_23D46BF18();
        v146 = v145;

        if ((v146 & 1) == 0)
        {
          v147 = sub_23D46BDD8();
          v221 = v148;
          v224 = v147;
          v137();
          v149 = sub_23D46BE58();
          v151 = v150;
          v153 = v152;
          v155 = v154;

          *(&v230 + 1) = MEMORY[0x277D83E40];
          v156 = swift_allocObject();
          *&v229 = v156;
          v156[2] = v149;
          v156[3] = v151;
          v156[4] = v153;
          v156[5] = v155;
          swift_getKeyPath();
          v228();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v229, v224, v221);
          swift_endAccess();
          swift_getKeyPath();
          v43 = v228;
          sub_23D46B838();
        }

        [v143 rangeAtIndex_];
        v144();
        sub_23D46BF18();
        v158 = v157;

        if (v158)
        {
        }

        else
        {
          v183 = sub_23D46BDD8();
          v222 = v184;
          v225 = v183;
          v144();
          v185 = sub_23D46BE58();
          v187 = v186;
          v189 = v188;
          v191 = v190;

          *(&v230 + 1) = MEMORY[0x277D83E40];
          v192 = swift_allocObject();
          *&v229 = v192;
          v192[2] = v185;
          v192[3] = v187;
          v192[4] = v189;
          v192[5] = v191;
          swift_getKeyPath();
          v43();

          swift_getKeyPath();
          sub_23D46B848();

          swift_beginAccess();
          sub_23D461690(&v229, v225, v222);
          swift_endAccess();
          swift_getKeyPath();
          sub_23D46B838();
        }
      }

      else
      {
      }
    }

    goto LABEL_58;
  }

  v159 = (v115)(v129);
  v161 = v160;
  v43 = v228;
  if (v159 != sub_23D46BDD8() || v161 != v162)
  {
    v163 = sub_23D46C1B8();

    if (v163)
    {
      goto LABEL_47;
    }

    v179 = (v115)(v164);
    v181 = v180;
    if (v179 == sub_23D46BDD8() && v181 == v182)
    {
    }

    else
    {
      v193 = sub_23D46C1B8();

      if ((v193 & 1) == 0)
      {
LABEL_57:
        v199 = sub_23D46BDD8();
        v201 = v200;
        v229 = 0u;
        v230 = 0u;
        swift_getKeyPath();
        v228();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v229, v199, v201);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        v202 = sub_23D46BDD8();
        v204 = v203;
        v229 = 0u;
        v230 = 0u;
        swift_getKeyPath();
        v228();

        swift_getKeyPath();
        sub_23D46B848();

        swift_beginAccess();
        sub_23D461690(&v229, v202, v204);
        swift_endAccess();
        swift_getKeyPath();
        sub_23D46B838();

        goto LABEL_58;
      }
    }

    v194 = sub_23D46BDD8();
    v196 = v195;
    v197 = sub_23D46BDD8();
    *(&v230 + 1) = MEMORY[0x277D837D0];
    *&v229 = v197;
    *(&v229 + 1) = v198;
    swift_getKeyPath();
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v194, v196);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();

    goto LABEL_57;
  }

LABEL_47:
  v165 = sub_23D46BDD8();
  v167 = v166;
  v229 = 0u;
  v230 = 0u;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v165, v167);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v169 = *(*v1 + 944);
  (v169)(v168);
  v170 = sub_23D46BE08();

  if (v170 >= 1)
  {
    v171 = sub_23D46BDD8();
    v173 = v172;
    v174 = v169();
    *(&v230 + 1) = MEMORY[0x277D837D0];
    *&v229 = v174;
    *(&v229 + 1) = v175;
    swift_getKeyPath();
    v228();

    swift_getKeyPath();
    sub_23D46B848();

    swift_beginAccess();
    sub_23D461690(&v229, v171, v173);
    swift_endAccess();
    swift_getKeyPath();
    sub_23D46B838();
  }

  v176 = sub_23D46BDD8();
  v178 = v177;
  v229 = 0u;
  v230 = 0u;
  swift_getKeyPath();
  v228();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v176, v178);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v43 = v228;
LABEL_58:
  v205 = sub_23D46BDD8();
  v207 = v206;
  v208 = (*(*v1 + 1280))();
  *(&v230 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v229) = v208 & 1;
  swift_getKeyPath();
  v43();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v205, v207);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  v209 = sub_23D46BDD8();
  v211 = v210;
  v212 = (*(*v1 + 1328))();
  *(&v230 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v229) = v212 & 1;
  swift_getKeyPath();
  v43();

  swift_getKeyPath();
  sub_23D46B848();

  swift_beginAccess();
  sub_23D461690(&v229, v209, v211);
  swift_endAccess();
  swift_getKeyPath();
  sub_23D46B838();

  return (*(*v1 + 320))(v213);
}

uint64_t sub_23D464648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7, double a8)
{
  v15 = (*v8 + 1376);
  v16 = *v15;
  v32 = (*v15)();
  v18 = v17;
  if (a5)
  {

    v19 = a6;
    v20 = a7;
  }

  else
  {
    v19 = 0;
    v20 = 0xE000000000000000;
  }

  (*(*v8 + 1384))(v19, v20);
  v21 = *(*v8 + 1480);

  v22 = v21(a1, a2);
  v23 = (*(*v8 + 1424))(v22);
  if ((a5 & 1) == 0)
  {
    if (v23 >= a8)
    {
      goto LABEL_24;
    }

    if (v32 != a6 || v18 != a7)
    {
      v29 = sub_23D46C1B8();

      if ((v29 & 1) == 0)
      {
        return result;
      }

      goto LABEL_20;
    }

LABEL_19:

LABEL_20:
    (*(*v8 + 1432))(result, a8);
    v31 = *(*v8 + 1528);

    return v31(a3, a4);
  }

  if (v23 < a8)
  {
    goto LABEL_19;
  }

  if (v32 != v16() || v18 != v24)
  {
    v26 = sub_23D46C1B8();

    if (v26)
    {
      return result;
    }

    goto LABEL_20;
  }

LABEL_24:
}

uint64_t sub_23D464944(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACB8, &qword_23D46E0F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40[-v7];
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D468C14(v9, v10, v11);
  v12 = sub_23D46C248();
  (*(*v3 + 512))(v12);
  v41 = 0;
  sub_23D46C158();
  if (v2)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {

    (*(*v3 + 416))(v13);
    v41 = 1;
    sub_23D46C158();

    (*(*v3 + 464))(v14);
    v41 = 2;
    sub_23D46C158();

    (*(*v3 + 560))(v15);
    v41 = 3;
    v16 = sub_23D46C168();
    (*(*v3 + 608))(v16);
    v41 = 4;
    sub_23D46C158();

    (*(*v3 + 656))(v18);
    v41 = 5;
    sub_23D46C158();

    (*(*v3 + 704))(v19);
    v41 = 6;
    sub_23D46C158();

    (*(*v3 + 752))(v20);
    v41 = 7;
    sub_23D46C158();

    (*(*v3 + 800))(v21);
    v41 = 8;
    sub_23D46C158();

    (*(*v3 + 848))(v22);
    v41 = 15;
    sub_23D46C158();

    (*(*v3 + 1472))(v23);
    v41 = 16;
    sub_23D46C158();

    (*(*v3 + 1520))(v24);
    v41 = 17;
    sub_23D46C158();

    (*(*v3 + 1424))(v25);
    v41 = 18;
    v26 = sub_23D46C178();
    (*(*v3 + 1376))(v26);
    v41 = 19;
    sub_23D46C158();

    (*(*v3 + 896))(v27);
    v41 = 9;
    sub_23D46C158();

    (*(*v3 + 944))(v28);
    v41 = 10;
    sub_23D46C158();

    (*(*v3 + 992))(v29);
    v41 = 11;
    v30 = sub_23D46C168();
    (*(*v3 + 1040))(v30);
    v41 = 12;
    v31 = sub_23D46C188();
    v32 = (*(*v3 + 1088))(v31);
    v41 = v32;
    v40[14] = 13;
    sub_23D468C68(v32, v33, v34);
    v35 = sub_23D46C198();
    (*(*v3 + 1136))(v35);
    v41 = 14;
    sub_23D46C158();

    (*(*v3 + 1184))(v36);
    v41 = 20;
    sub_23D46C158();

    (*(*v3 + 1232))(v37);
    v41 = 21;
    v38 = sub_23D46C168();
    (*(*v3 + 1280))(v38);
    v41 = 22;
    v39 = sub_23D46C168();
    (*(*v3 + 1328))(v39);
    v41 = 23;
    sub_23D46C168();
    return (*(v6 + 8))(v8, v5);
  }
}

uint64_t sub_23D465358(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACD0, &qword_23D46E100);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v211 - v6;
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23D468C14(v8, v9, v10);
  sub_23D46C238();
  if (!v2)
  {
    LOBYTE(v221) = 0;
    v11 = sub_23D46C108();
    v217 = v1;
    v218 = v11;
    v219 = v12;
    LOBYTE(v221) = 1;
    v13 = sub_23D46C108();
    v15 = v14;
    v16 = sub_23D46BDD8();
    v18 = v17;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v13;
    *(&v221 + 1) = v15;
    sub_23D4589B4(&v221, v220);
    v19 = MEMORY[0x277D84F98];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v223 = v19;
    sub_23D467ED8(v220, v16, v18, isUniquelyReferenced_nonNull_native);

    v21 = v223;
    LOBYTE(v221) = 2;
    v22 = sub_23D46C108();
    v24 = v23;
    v216 = v5;
    v25 = sub_23D46BDD8();
    v27 = v26;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v22;
    *(&v221 + 1) = v24;
    sub_23D4589B4(&v221, v220);
    v28 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v21;
    sub_23D467ED8(v220, v25, v27, v28);

    v29 = v223;
    LOBYTE(v221) = 3;
    LOBYTE(v22) = sub_23D46C118();
    v30 = sub_23D46BDD8();
    v32 = v31;
    v222 = MEMORY[0x277D839B0];
    LOBYTE(v221) = v22 & 1;
    sub_23D4589B4(&v221, v220);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v29;
    sub_23D467ED8(v220, v30, v32, v33);

    v34 = v223;
    LOBYTE(v221) = 4;
    v35 = sub_23D46C108();
    v37 = v36;
    v38 = sub_23D46BDD8();
    v40 = v39;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v35;
    *(&v221 + 1) = v37;
    sub_23D4589B4(&v221, v220);
    v41 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v34;
    sub_23D467ED8(v220, v38, v40, v41);

    v42 = v223;
    LOBYTE(v221) = 5;
    v43 = sub_23D46C108();
    v45 = v44;
    v46 = sub_23D46BDD8();
    v48 = v47;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v43;
    *(&v221 + 1) = v45;
    sub_23D4589B4(&v221, v220);
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v42;
    sub_23D467ED8(v220, v46, v48, v49);

    v50 = v223;
    LOBYTE(v221) = 6;
    v51 = sub_23D46C108();
    v53 = v52;
    v54 = sub_23D46BDD8();
    v56 = v55;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v51;
    *(&v221 + 1) = v53;
    sub_23D4589B4(&v221, v220);
    v57 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v50;
    sub_23D467ED8(v220, v54, v56, v57);

    v58 = v223;
    LOBYTE(v221) = 11;
    LOBYTE(v51) = sub_23D46C118();
    v59 = sub_23D46BDD8();
    v61 = v60;
    v222 = MEMORY[0x277D839B0];
    LOBYTE(v221) = v51 & 1;
    sub_23D4589B4(&v221, v220);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v58;
    sub_23D467ED8(v220, v59, v61, v62);

    v63 = v223;
    LOBYTE(v221) = 12;
    v65 = sub_23D46C138();
    v66 = sub_23D46BDD8();
    v68 = v67;
    v222 = MEMORY[0x277D83E88];
    *&v221 = v65;
    sub_23D4589B4(&v221, v220);
    v69 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v63;
    sub_23D467ED8(v220, v66, v68, v69);

    v71 = v223;
    LOBYTE(v220[0]) = 13;
    sub_23D468CBC(v70, v72, v73);
    sub_23D46C148();
    LOBYTE(v65) = v221;
    v74 = sub_23D46BDD8();
    v76 = v75;
    v222 = &type metadata for SettingsAccessory.SupportedSettingsAccessoryFeature;
    LOBYTE(v221) = v65;
    sub_23D4589B4(&v221, v220);
    v77 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v71;
    sub_23D467ED8(v220, v74, v76, v77);

    v78 = v223;
    LOBYTE(v221) = 14;
    v79 = sub_23D46C108();
    v81 = v80;
    v82 = sub_23D46BDD8();
    v84 = v83;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v79;
    *(&v221 + 1) = v81;
    sub_23D4589B4(&v221, v220);
    v85 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v78;
    sub_23D467ED8(v220, v82, v84, v85);

    v86 = v223;
    LOBYTE(v221) = 7;
    v87 = sub_23D46C108();
    v89 = v88;
    v90 = sub_23D46BDD8();
    v92 = v91;
    v222 = MEMORY[0x277D837D0];
    *&v221 = v87;
    *(&v221 + 1) = v89;
    sub_23D4589B4(&v221, v220);
    v93 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v86;
    sub_23D467ED8(v220, v90, v92, v93);

    v94 = v223;
    LOBYTE(v221) = 8;
    *&v215 = sub_23D46C108();
    *(&v215 + 1) = v95;
    v96 = objc_allocWithZone(MEMORY[0x277CCAC68]);
    v97 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
    if (v97)
    {
      v103 = v97;
      v104 = v215;
      v105 = sub_23D46BDC8();

      v106 = MEMORY[0x23EEE0F10](v104, *(&v104 + 1));

      v107 = [v103 firstMatchInString:v105 options:0 range:{0, v106}];
      v214 = v103;

      v213 = v107;
      if (v107)
      {
        [v213 rangeAtIndex_];
        sub_23D46BF18();
        if ((v108 & 1) == 0)
        {
          v212 = sub_23D46BDD8();
          v110 = v109;
          v111 = sub_23D46BE58();
          v113 = v112;
          v211 = v114;
          v116 = v115;
          v222 = MEMORY[0x277D83E40];
          v117 = swift_allocObject();
          *&v221 = v117;
          v117[2] = v111;
          v117[3] = v113;
          v117[4] = v211;
          v117[5] = v116;
          sub_23D4589B4(&v221, v220);
          v118 = swift_isUniquelyReferenced_nonNull_native();
          v223 = v94;
          sub_23D467ED8(v220, v212, v110, v118);

          v94 = v223;
        }

        [v213 rangeAtIndex_];
        sub_23D46BF18();
        if (v119)
        {

          goto LABEL_7;
        }

        v146 = sub_23D46BDD8();
        v211 = v147;
        v212 = v146;
        v148 = sub_23D46BE58();
        v150 = v149;
        v152 = v151;
        *&v215 = v153;

        v222 = MEMORY[0x277D83E40];
        v154 = swift_allocObject();
        *&v221 = v154;
        v154[2] = v148;
        v154[3] = v150;
        v155 = v215;
        v154[4] = v152;
        v154[5] = v155;
        sub_23D4589B4(&v221, v220);
        v156 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v94;
        sub_23D467ED8(v220, v212, v211, v156);

        v102 = v213;
LABEL_6:

        v94 = v223;
LABEL_7:
        LOBYTE(v221) = 15;
        v120 = sub_23D46C108();
        v122 = v121;
        v123 = sub_23D46BDD8();
        v125 = v124;
        *&v221 = v120;
        *(&v221 + 1) = v122;
        *&v220[0] = 44;
        *(&v220[0] + 1) = 0xE100000000000000;
        sub_23D43B690(v123, v124, v126);
        v127 = sub_23D46BFB8();

        v222 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACA8, &qword_23D46E0F0);
        *&v221 = v127;
        sub_23D4589B4(&v221, v220);
        v128 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v94;
        sub_23D467ED8(v220, v123, v125, v128);

        v129 = v223;
        LOBYTE(v221) = 9;
        v130 = sub_23D46C108();
        v132 = v131;
        v133 = sub_23D46BDD8();
        v135 = v134;
        v222 = MEMORY[0x277D837D0];
        *&v221 = v130;
        *(&v221 + 1) = v132;
        sub_23D4589B4(&v221, v220);
        v136 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v129;
        sub_23D467ED8(v220, v133, v135, v136);

        v137 = v223;
        LOBYTE(v221) = 10;
        *&v215 = sub_23D46C108();
        *(&v215 + 1) = v138;
        v139 = objc_allocWithZone(MEMORY[0x277CCAC68]);
        v140 = sub_23D4678F0(0x5C28292B445C285ELL, 0xED0000292B535C64, 1);
        if (v140)
        {
          v157 = v140;
          v158 = v215;
          v159 = sub_23D46BDC8();

          v160 = MEMORY[0x23EEE0F10](v158, *(&v158 + 1));

          v161 = [v157 firstMatchInString:v159 options:0 range:{0, v160}];
          v214 = v157;

          v213 = v161;
          if (v161)
          {
            [v213 rangeAtIndex_];
            sub_23D46BF18();
            if ((v162 & 1) == 0)
            {
              v212 = sub_23D46BDD8();
              v164 = v163;
              v165 = sub_23D46BE58();
              v211 = v166;
              v168 = v167;
              v170 = v169;
              v222 = MEMORY[0x277D83E40];
              v171 = swift_allocObject();
              *&v221 = v171;
              v172 = v211;
              v171[2] = v165;
              v171[3] = v172;
              v171[4] = v168;
              v171[5] = v170;
              sub_23D4589B4(&v221, v220);
              v173 = swift_isUniquelyReferenced_nonNull_native();
              v223 = v137;
              sub_23D467ED8(v220, v212, v164, v173);

              v137 = v223;
            }

            [v213 rangeAtIndex_];
            sub_23D46BF18();
            if (v174)
            {

              goto LABEL_16;
            }

            v201 = sub_23D46BDD8();
            v211 = v202;
            v212 = v201;
            v203 = sub_23D46BE58();
            v205 = v204;
            *&v215 = v206;
            v208 = v207;

            v222 = MEMORY[0x277D83E40];
            v209 = swift_allocObject();
            *&v221 = v209;
            v209[2] = v203;
            v209[3] = v205;
            v209[4] = v215;
            v209[5] = v208;
            sub_23D4589B4(&v221, v220);
            v210 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v137;
            sub_23D467ED8(v220, v212, v211, v210);

            v145 = v213;
LABEL_15:

            v137 = v223;
LABEL_16:
            LOBYTE(v221) = 20;
            v175 = sub_23D46C108();
            v177 = v176;
            v178 = sub_23D46BDD8();
            v180 = v179;
            v222 = MEMORY[0x277D837D0];
            *&v221 = v175;
            *(&v221 + 1) = v177;
            sub_23D4589B4(&v221, v220);
            v181 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v137;
            sub_23D467ED8(v220, v178, v180, v181);

            v182 = v223;
            LOBYTE(v221) = 21;
            LOBYTE(v175) = sub_23D46C118();
            v183 = sub_23D46BDD8();
            v185 = v184;
            v222 = MEMORY[0x277D839B0];
            LOBYTE(v221) = v175 & 1;
            sub_23D4589B4(&v221, v220);
            v186 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v182;
            sub_23D467ED8(v220, v183, v185, v186);

            v187 = v223;
            LOBYTE(v221) = 22;
            LOBYTE(v175) = sub_23D46C118();
            v188 = sub_23D46BDD8();
            v190 = v189;
            v222 = MEMORY[0x277D839B0];
            LOBYTE(v221) = v175 & 1;
            sub_23D4589B4(&v221, v220);
            v191 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v187;
            sub_23D467ED8(v220, v188, v190, v191);

            v192 = v223;
            LOBYTE(v221) = 23;
            LOBYTE(v175) = sub_23D46C118();
            v193 = sub_23D46BDD8();
            v195 = v194;
            v222 = MEMORY[0x277D839B0];
            LOBYTE(v221) = v175 & 1;
            sub_23D4589B4(&v221, v220);
            v196 = swift_isUniquelyReferenced_nonNull_native();
            v223 = v192;
            sub_23D467ED8(v220, v193, v195, v196);

            v5 = (*(v217 + 1544))(v218, v219, v223);
            LOBYTE(v221) = 16;
            v197 = sub_23D46C108();
            (*(*v5 + 1480))(v197);
            LOBYTE(v221) = 17;
            v198 = sub_23D46C108();
            (*(*v5 + 1528))(v198);
            LOBYTE(v221) = 18;
            v199 = sub_23D46C128();
            (*(*v5 + 1432))(v199);
            LOBYTE(v221) = 19;
            v200 = sub_23D46C108();
            (*(*v5 + 1384))(v200);
            (*(v216 + 8))(v7, v4);
            __swift_destroy_boxed_opaque_existential_0(a1);
            return v5;
          }
        }

        else
        {
          v214 = 0;
        }

        v141 = sub_23D46BDD8();
        v143 = v142;
        v222 = MEMORY[0x277D837D0];
        v221 = v215;
        sub_23D4589B4(&v221, v220);
        v144 = swift_isUniquelyReferenced_nonNull_native();
        v223 = v137;
        sub_23D467ED8(v220, v141, v143, v144);

        v145 = v214;
        goto LABEL_15;
      }
    }

    else
    {
      v214 = 0;
    }

    v98 = sub_23D46BDD8();
    v100 = v99;
    v222 = MEMORY[0x277D837D0];
    v221 = v215;
    sub_23D4589B4(&v221, v220);
    v101 = swift_isUniquelyReferenced_nonNull_native();
    v223 = v94;
    sub_23D467ED8(v220, v98, v100, v101);

    v102 = v214;
    goto LABEL_6;
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v5;
}

char *sub_23D466910()
{

  v1 = OBJC_IVAR____TtC19AUDeveloperSettings17SettingsAccessory___observationRegistrar;
  v2 = sub_23D46B868();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t sub_23D466A00()
{
  sub_23D466910();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_23D466A58@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 1600))();
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_23D466AE0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 1560))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_23D466B34()
{
  MEMORY[0x23EEE0EE0](60, 0xE100000000000000);
  v1 = sub_23D46C278();
  MEMORY[0x23EEE0EE0](v1);

  MEMORY[0x23EEE0EE0](40, 0xE100000000000000);
  sub_23D46C0B8();
  v2 = MEMORY[0x23EEE0EE0](14889, 0xE200000000000000);
  v3 = (*(*v0 + 416))(v2);
  MEMORY[0x23EEE0EE0](v3);

  MEMORY[0x23EEE0EE0](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_23D466C90(uint64_t a1)
{
  (*(*v1 + 512))();
  sub_23D46BDF8();

  (*(*v1 + 416))(v2);
  sub_23D46BDF8();

  (*(*v1 + 464))(v3);
  sub_23D46BDF8();

  (*(*v1 + 560))(v4);
  v5 = sub_23D46C208();
  (*(*v1 + 608))(v5);
  sub_23D46BDF8();

  (*(*v1 + 656))(v6);
  sub_23D46BDF8();

  (*(*v1 + 704))(v7);
  sub_23D46BDF8();

  (*(*v1 + 752))(v8);
  sub_23D46BDF8();

  (*(*v1 + 800))(v9);
  sub_23D46BDF8();

  (*(*v1 + 896))(v10);
  sub_23D46BDF8();

  (*(*v1 + 944))(v11);
  sub_23D46BDF8();

  (*(*v1 + 992))(v12);
  v13 = sub_23D46C208();
  v14 = (*(*v1 + 1040))(v13);
  v15 = MEMORY[0x23EEE12C0](v14);
  v16 = (*(*v1 + 1088))(v15);
  v17 = MEMORY[0x23EEE12C0](v16);
  (*(*v1 + 1136))(v17);
  sub_23D46BDF8();

  (*(*v1 + 848))(v18);
  sub_23D46BDF8();

  (*(*v1 + 1472))(v19);
  sub_23D46BDF8();

  (*(*v1 + 1520))(v20);
  sub_23D46BDF8();

  v22 = (*(*v1 + 1424))(v21);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  v23 = MEMORY[0x23EEE12E0](*&v22);
  (*(*v1 + 1376))(v23);
  sub_23D46BDF8();

  (*(*v1 + 1184))(v24);
  sub_23D46BDF8();

  (*(*v1 + 1232))(v25);
  v26 = sub_23D46C208();
  (*(*v1 + 1280))(v26);
  v27 = sub_23D46C208();
  (*(*v1 + 1328))(v27);
  return sub_23D46C208();
}

uint64_t sub_23D4674B4(uint64_t a1, uint64_t a2)
{
  v4 = (*(*a1 + 512))();
  v6 = v5;
  if (v4 == (*(*a2 + 512))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_23D46C1B8();

    v11 = 0;
    if ((v9 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = (*(*a1 + 464))(v10);
  v14 = v13;
  if (v12 == (*(*a2 + 464))() && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D46C1B8();
  }

  return v11 & 1;
}

uint64_t sub_23D467658()
{
  sub_23D46C1E8();
  sub_23D466C90(v1);
  return sub_23D46C228();
}

uint64_t sub_23D467698()
{
  sub_23D46C1E8();
  sub_23D466C90(v1);
  return sub_23D46C228();
}

uint64_t sub_23D467700(uint64_t a1)
{
  sub_23D46C1E8();
  sub_23D466C90(v2);
  return sub_23D46C228();
}

uint64_t sub_23D467740(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = (*(**a1 + 512))();
  v6 = v5;
  if (v4 == (*(*v3 + 512))() && v6 == v7)
  {
  }

  else
  {
    v9 = sub_23D46C1B8();

    v11 = 0;
    if ((v9 & 1) == 0)
    {
      return v11 & 1;
    }
  }

  v12 = (*(*v2 + 464))(v10);
  v14 = v13;
  if (v12 == (*(*v3 + 464))() && v14 == v15)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_23D46C1B8();
  }

  return v11 & 1;
}

id sub_23D4678F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_23D46BDC8();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_23D46B798();

    swift_willThrow();
  }

  return v6;
}

double sub_23D4679CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_23D450300(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_23D468094();
      v10 = v12;
    }

    sub_23D4589B4((*(v10 + 56) + 32 * v8), a3);
    sub_23D467D28(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_23D467A70(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACF8, "\b7");
  v33 = v4;
  result = sub_23D46C0E8();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_23D4589B4(v24, v34);
      }

      else
      {
        sub_23D441268(v24, v34);
      }

      sub_23D46C1E8();
      sub_23D46BDF8();
      result = sub_23D46C228();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_23D4589B4(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_23D467D28(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_23D46C008() + 1) & ~v5;
    do
    {
      sub_23D46C1E8();

      sub_23D46BDF8();
      v10 = sub_23D46C228();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

_OWORD *sub_23D467ED8(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_23D450300(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_23D468094();
      v11 = v19;
      goto LABEL_8;
    }

    sub_23D467A70(v16, a4 & 1);
    v11 = sub_23D450300(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_23D46C1D8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_23D4589B4(a1, v22);
  }

  else
  {
    sub_23D468028(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_23D468028(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_23D4589B4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void *sub_23D468094()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DACF8, "\b7");
  v2 = *v0;
  v3 = sub_23D46C0D8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_23D441268(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_23D4589B4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

uint64_t sub_23D468238(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL;
  if (v4 || (sub_23D46C1B8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (sub_23D46C1B8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D754E6C65646F6DLL && a2 == 0xEB00000000726562 || (sub_23D46C1B8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x626173694461746FLL && a2 == 0xEB0000000064656CLL || (sub_23D46C1B8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E697375467768 && a2 == 0xE800000000000000 || (sub_23D46C1B8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6556657669746361 && a2 == 0xED00006E6F697372 || (sub_23D46C1B8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6973697665527768 && a2 == 0xEA00000000006E6FLL || (sub_23D46C1B8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636F4C7465737361 && a2 == 0xED00006E6F697461 || (sub_23D46C1B8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023D46F810 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000019 && 0x800000023D46F7F0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000021 && 0x800000023D46F7C0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E4573616C6C6170 && a2 == 0xED000064656C6261 || (sub_23D46C1B8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x754173616C6C6170 && a2 == 0xEE0065636E656964 || (sub_23D46C1B8() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023D46F7A0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F780 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F760 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEE00737574617453 || (sub_23D46C1B8() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F740 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x73736572676F7270 && a2 == 0xEF746E6563726550 || (sub_23D46C1B8() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023D46F720 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x56786F62706F7264 && a2 == 0xEE006E6F69737265 || (sub_23D46C1B8() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023D46F700 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023D46F6E0 == a2 || (sub_23D46C1B8() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023D46F6C0 == a2)
  {

    return 23;
  }

  else
  {
    v6 = sub_23D46C1B8();

    if (v6)
    {
      return 23;
    }

    else
    {
      return 24;
    }
  }
}

uint64_t sub_23D4689C8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 282) = v2;
  return result;
}

uint64_t sub_23D468A1C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 281) = v2;
  return result;
}

uint64_t sub_23D468A70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 224) = v2;
  return result;
}

uint64_t sub_23D468AC4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 280) = v2;
  return result;
}

unint64_t sub_23D468B18()
{
  result = qword_27E2DACB0;
  if (!qword_27E2DACB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DACA8, &qword_23D46E0F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACB0);
  }

  return result;
}

uint64_t sub_23D468B7C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 88) = v2;
  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_23D468C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DACC0;
  if (!qword_27E2DACC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACC0);
  }

  return result;
}

unint64_t sub_23D468C68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DACC8;
  if (!qword_27E2DACC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACC8);
  }

  return result;
}

unint64_t sub_23D468CBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DACD8;
  if (!qword_27E2DACD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACD8);
  }

  return result;
}

unint64_t sub_23D468D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DACE0;
  if (!qword_27E2DACE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACE0);
  }

  return result;
}

unint64_t sub_23D468D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DACE8;
  if (!qword_27E2DACE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACE8);
  }

  return result;
}

unint64_t sub_23D468DC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DACF0;
  if (!qword_27E2DACF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DACF0);
  }

  return result;
}

uint64_t sub_23D468E50(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SettingsAccessory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23D468E9C(uint64_t a1)
{
  result = sub_23D46B868();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAccessory.SupportedSettingsAccessoryFeature(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAccessory.SupportedSettingsAccessoryFeature(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsAccessory.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE9)
  {
    goto LABEL_17;
  }

  if (a2 + 23 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 23) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 23;
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

      return (*a1 | (v4 << 8)) - 23;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 23;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x18;
  v8 = v6 - 24;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsAccessory.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 23 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 23) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE9)
  {
    v4 = 0;
  }

  if (a2 > 0xE8)
  {
    v5 = ((a2 - 233) >> 8) + 1;
    *result = a2 + 23;
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
    *result = a2 + 23;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_23D46924C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA918, &qword_23D46D468);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23D4693A4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD00, &qword_23D46E5D0);
  v7 = *(v6 - 8);
  if (a2)
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a3, a1, v6);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a3, v8, 1, v6);
}

uint64_t sub_23D4694BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD00, &qword_23D46E5D0);
  v7 = *(v6 - 8);
  if (v5 == 1)
  {
    v11 = *(v6 - 8);
    (*(v11 + 16))(a2, a1, v6);
    v7 = v11;
    v8 = 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v7 + 56);

  return v9(a2, v8, 1, v6);
}

uint64_t getEnumTagSinglePayload for DetailModifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DetailModifier(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_23D4696F8()
{
  result = qword_27E2DAD08;
  if (!qword_27E2DAD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAD10, &unk_23D46E668);
    sub_23D46977C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD08);
  }

  return result;
}

unint64_t sub_23D46977C()
{
  result = qword_27E2DAD18;
  if (!qword_27E2DAD18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E2DAD00, &qword_23D46E5D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD18);
  }

  return result;
}

uint64_t sub_23D4697E0(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return v4;
}

void (*sub_23D469884(uint64_t *a1, uint64_t a2, char a3, uint64_t a4))(uint64_t *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(0x38uLL);
  }

  v8 = v7;
  *a1 = v7;
  *(v7 + 32) = a4;
  *(v7 + 50) = a3 & 1;
  *v7 = a3 & 1;
  *(v7 + 8) = a4;

  *(v8 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBC8();
  return sub_23D444B8C;
}

uint64_t sub_23D469938(uint64_t a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DA908, &qword_23D46D460);
  sub_23D46BBE8();
  return v4;
}

uint64_t sub_23D4699D8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a4;
  v7 = type metadata accessor for AccessoryDetailView(0);
  MEMORY[0x28223BE20](v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD20, &unk_23D46E678);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v19 - v12;

  v15 = sub_23D444C60(v14, v9);
  sub_23D469CD0(v15, v16, v17);
  sub_23D469D24();
  sub_23D46B8E8();
  v19[4] = a1;
  v20 = a2;
  v21 = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAD38, &qword_27E2DAD20, &unk_23D46E678, MEMORY[0x277CDD940]);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0, MEMORY[0x277CDF030]);
  sub_23D46BB08();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_23D469C1C@<X0>(uint64_t *a2@<X8>)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = sub_23D43AA70(v3);
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
  return result;
}

unint64_t sub_23D469CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27E2DAD28;
  if (!qword_27E2DAD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD28);
  }

  return result;
}

unint64_t sub_23D469D24()
{
  result = qword_27E2DAD30;
  if (!qword_27E2DAD30)
  {
    type metadata accessor for AccessoryDetailView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27E2DAD30);
  }

  return result;
}

uint64_t sub_23D469D7C(uint64_t a1, char a2, uint64_t a3)
{
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = [objc_opt_self() mainBundle];
  sub_23D46B788();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2 & 1;
  *(v7 + 32) = a3;
  sub_23D43B690(v7, v8, v9);

  sub_23D46BC08();
}

uint64_t sub_23D469F2C@<X0>(uint64_t a1@<X8>)
{
  v17[1] = a1;
  v2 = type metadata accessor for AccessoryDetailView(0);
  MEMORY[0x28223BE20](v2);
  v4 = v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD20, &unk_23D46E678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v17 - v7;
  v9 = *v1;
  v10 = *(v1 + 8);
  v11 = v1[2];

  v13 = sub_23D444C60(v12, v4);
  sub_23D469CD0(v13, v14, v15);
  sub_23D469D24();
  sub_23D46B8E8();
  v17[4] = v9;
  v18 = v10;
  v19 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAA48, &qword_23D46D6D0);
  sub_23D43B810(&qword_27E2DAD38, &qword_27E2DAD20, &unk_23D46E678, MEMORY[0x277CDD940]);
  sub_23D43B810(&qword_27E2DAB10, &qword_27E2DAA48, &qword_23D46D6D0, MEMORY[0x277CDF030]);
  sub_23D46BB08();
  return (*(v6 + 8))(v8, v5);
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23D46A188(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23D46A1D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23D46A220()
{
  v1 = *(v0 + 16);
  sub_23D46BF08();
  sub_23D46BEF8();
  sub_23D46BEE8();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for AFUSettings(0);
  sub_23D457624(v1);
  v2 = *(**sub_23D45393C() + 456);

  v2(v3);
}

id sub_23D46A324(char a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for AUInternalSettingsController();
  return objc_msgSendSuper2(&v4, sel_viewDidAppear_, a1 & 1);
}

void sub_23D46A444()
{
  v1 = v0;
  v40.receiver = v0;
  v40.super_class = type metadata accessor for AUInternalSettingsController();
  objc_msgSendSuper2(&v40, sel_viewDidLoad);
  v2 = sub_23D46BDC8();
  [v1 setTitle_];

  v3 = *(**sub_23D45393C() + 456);

  v3(v4);

  sub_23D452EDC(v5);
  v6 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD40, &qword_23D46E750));
  v7 = sub_23D46BA68();
  [v1 addChildViewController_];
  v8 = [v1 view];
  if (!v8)
  {
    __break(1u);
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v7 view];
  if (!v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = v10;
  [v9 addSubview_];

  [v7 didMoveToParentViewController_];
  v12 = [v7 view];

  if (!v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  [v12 setTranslatesAutoresizingMaskIntoConstraints_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E2DAD48, &qword_23D46E758);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_23D46E740;
  v14 = [v7 view];

  if (!v14)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = [v14 topAnchor];

  v16 = [v1 view];
  if (!v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = v16;
  v18 = [v16 topAnchor];

  v19 = [v15 constraintEqualToAnchor_];
  *(v13 + 32) = v19;
  v20 = [v7 view];

  if (!v20)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v21 = [v20 bottomAnchor];

  v22 = [v1 view];
  if (!v22)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v23 = v22;
  v24 = [v22 bottomAnchor];

  v25 = [v21 constraintEqualToAnchor_];
  *(v13 + 40) = v25;
  v26 = [v7 view];

  if (!v26)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v27 = [v26 leadingAnchor];

  v28 = [v1 view];
  if (!v28)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v29 = v28;
  v30 = [v28 leadingAnchor];

  v31 = [v27 constraintEqualToAnchor_];
  *(v13 + 48) = v31;
  v32 = [v7 view];

  if (!v32)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v33 = [v32 trailingAnchor];

  v34 = [v1 view];
  if (v34)
  {
    v35 = v34;
    v36 = objc_opt_self();
    v37 = [v35 trailingAnchor];

    v38 = [v33 constraintEqualToAnchor_];
    *(v13 + 56) = v38;
    sub_23D46A940();
    v39 = sub_23D46BEA8();

    [v36 activateConstraints_];

    return;
  }

LABEL_23:
  __break(1u);
}

unint64_t sub_23D46A940()
{
  result = qword_27E2DAD50;
  if (!qword_27E2DAD50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E2DAD50);
  }

  return result;
}

id sub_23D46AA44(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_23D46BDC8();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_23D46AABC(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_23D46BDC8();
  }

  else
  {
    v5 = 0;
  }

  v8.receiver = v3;
  v8.super_class = type metadata accessor for AUInternalSettingsController();
  v6 = objc_msgSendSuper2(&v8, sel_initWithNibName_bundle_, v5, a3);

  return v6;
}

id sub_23D46AC44(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

id sub_23D46AC88(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for AUInternalSettingsController();
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_23D46ADD0()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AUInternalSettingsController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL __isOSVersionAtLeast(int a1, int a2, int a3)
{
  if (qword_27E2DBDE0 == -1)
  {
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  else
  {
    v5 = a3;
    v6 = a2;
    __isOSVersionAtLeast_cold_1();
    a2 = v6;
    a3 = v5;
    v3 = _MergedGlobals < a1;
    if (_MergedGlobals > a1)
    {
      return 1;
    }
  }

  if (v3)
  {
    return 0;
  }

  if (dword_27E2DBDD4 > a2)
  {
    return 1;
  }

  if (dword_27E2DBDD4 < a2)
  {
    return 0;
  }

  return dword_27E2DBDD8 >= a3;
}

uint64_t __isPlatformVersionAtLeast(int a1, int a2, int a3, int a4)
{
  if (qword_27E2DBDE8 == -1)
  {
    if (qword_27E2DBDF0)
    {
      return _availability_version_check();
    }
  }

  else
  {
    v5 = a4;
    v6 = a3;
    v7 = a2;
    __isPlatformVersionAtLeast_cold_1();
    a2 = v7;
    a3 = v6;
    a4 = v5;
    if (qword_27E2DBDF0)
    {
      return _availability_version_check();
    }
  }

  if (qword_27E2DBDE0 != -1)
  {
    v9 = a4;
    v10 = a3;
    v11 = a2;
    __isOSVersionAtLeast_cold_1();
    a3 = v10;
    a4 = v9;
    v8 = _MergedGlobals < v11;
    if (_MergedGlobals > v11)
    {
      return 1;
    }

LABEL_7:
    if (!v8)
    {
      if (dword_27E2DBDD4 > a3)
      {
        return 1;
      }

      if (dword_27E2DBDD4 >= a3)
      {
        return dword_27E2DBDD8 >= a4;
      }
    }

    return 0;
  }

  v8 = _MergedGlobals < a2;
  if (_MergedGlobals <= a2)
  {
    goto LABEL_7;
  }

  return 1;
}

uint64_t _initializeAvailabilityCheck(uint64_t result)
{
  v29 = *MEMORY[0x277D85DE8];
  v1 = qword_27E2DBDF0;
  if (qword_27E2DBDF0)
  {
    v2 = result == 0;
  }

  else
  {
    v2 = 0;
  }

  if (!v2)
  {
    if (MEMORY[0x28223BE68])
    {
      v1 = MEMORY[0x28223BE68];
      qword_27E2DBDF0 = MEMORY[0x28223BE68];
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
                          v14 = MEMORY[0x23EEE1540](v13);
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
                                          sscanf(v28, "%d.%d.%d", &_MergedGlobals, &dword_27E2DBDD4, &dword_27E2DBDD8);
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