void sub_2296F8234(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE10, &qword_22A577C90);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_22A4DDBDC();
        v18 = sub_229543DBC(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_2296F8418(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CE10, &qword_22A577C90);
    v2 = sub_22A4DE40C();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = (*(a1 + 48) + 16 * (v13 | (v12 << 6)));
        v16 = *v14;
        v15 = v14[1];

        v17 = sub_22A4DDB3C();
        v18 = sub_229543DBC(v16, v15);
        if (v19)
        {
          v8 = (v2[6] + 16 * v18);
          *v8 = v16;
          v8[1] = v15;
          v9 = v18;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v17;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          v20 = (v2[6] + 16 * v18);
          *v20 = v16;
          v20[1] = v15;
          *(v2[7] + 8 * v18) = v17;
          v21 = v2[2];
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
            goto LABEL_21;
          }

          v2[2] = v23;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_2296F8604()
{
  v0 = [swift_getObjCClassFromMetadata() logCategory];
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {

    return sub_22A4DD08C();
  }

  else
  {
    sub_22A4DE1FC();

    v2 = [v0 description];
    v3 = sub_22A4DD5EC();
    v5 = v4;

    MEMORY[0x22AAD08C0](v3, v5);

    result = sub_22A4DE39C();
    __break(1u);
  }

  return result;
}

id sub_2296F8738()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v5 = v0;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v17 = v1;
    v9 = v8;
    v10 = swift_slowAlloc();
    *v9 = 136315138;
    v18 = 91;
    v19 = 0xE100000000000000;
    v20 = v10;
    v11 = [v5 logIdentifier];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    MEMORY[0x22AAD08C0](v12, v14);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v15 = sub_2295A3E30(v18, v19, &v20);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_229538000, v6, v7, "%s Unconfiguring matter accessory", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v2 + 8))(v4, v17);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  result = [v5 useMatterPlugin];
  if (result)
  {
    return [v5 setMatterDevice_];
  }

  return result;
}

void sub_2296F89D8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v111 = &v104[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v104[-v7];
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v104[-v10];
  MEMORY[0x28223BE20](v9);
  v13 = &v104[-v12];
  sub_2296F8604();
  v14 = v0;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  v17 = os_log_type_enabled(v15, v16);
  v109 = v8;
  v110 = v2;
  v108 = v11;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v107 = swift_slowAlloc();
    v118 = v107;
    *v18 = 136315138;
    aBlock = 91;
    v113 = 0xE100000000000000;
    v19 = [v14 logIdentifier];
    v20 = sub_22A4DD5EC();
    v21 = v14;
    v22 = ObjectType;
    v23 = v3;
    v25 = v24;

    MEMORY[0x22AAD08C0](v20, v25);
    v3 = v23;
    ObjectType = v22;
    v14 = v21;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(aBlock, v113, &v118);

    *(v18 + 4) = v26;
    _os_log_impl(&dword_229538000, v15, v16, "%s Configuring matter accessory", v18, 0xCu);
    v27 = v107;
    __swift_destroy_boxed_opaque_existential_0(v107);
    v2 = v110;
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  v28 = *(v3 + 8);
  (v28)(v13, v2);
  v29 = [v14 accessory];
  v30 = v111;
  if (!v29)
  {
    goto LABEL_17;
  }

  v31 = v29;
  v32 = [v29 home];
  if (!v32)
  {
    v33 = v31;
LABEL_16:

LABEL_17:
    sub_2296F8604();
    v44 = v14;
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();

    if (!os_log_type_enabled(v45, v46))
    {

      (v28)(v30, v2);
      return;
    }

    v47 = swift_slowAlloc();
    v107 = v28;
    v48 = v47;
    v49 = swift_slowAlloc();
    v118 = v49;
    *v48 = 136315138;
    aBlock = 91;
    v113 = 0xE100000000000000;
    v50 = v30;
    v51 = [v44 logIdentifier];
    v52 = sub_22A4DD5EC();
    v54 = v53;

    MEMORY[0x22AAD08C0](v52, v54);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v55 = sub_2295A3E30(aBlock, v113, &v118);

    *(v48 + 4) = v55;
    _os_log_impl(&dword_229538000, v45, v46, "%s Unable to find accessory or home", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x22AAD4E50](v49, -1, -1);
    MEMORY[0x22AAD4E50](v48, -1, -1);

    v56 = v50;
    goto LABEL_19;
  }

  v33 = v32;
  v34 = [v14 workQueue];
  if (!v34)
  {

    goto LABEL_16;
  }

  v111 = v34;
  if ([v31 isPrimary])
  {
    v35 = &selRef__wirelessPowerOn_;
    if ([v14 useMatterPlugin])
    {
      v36 = [v14 matterDevice];
      if (!v36)
      {
        v107 = v28;
        v37 = [v33 matterDeviceController];
        if (v37)
        {
          v36 = v37;
          v38 = [v31 matterNodeID];
          v39 = [objc_opt_self() deviceWithNodeID:v38 controller:v36];

          v108 = v14;
          [v14 setMatterDevice_];

          v40 = [objc_opt_self() deviceCapabilities];
          LODWORD(v39) = [v40 isResidentCapable];

          if (v39)
          {
            v41 = v108;
            v42 = [v108 matterDevice];
            if (v42)
            {
              v43 = v42;
              [v42 addDelegate:v41 queue:v111];
            }
          }

          v28 = v107;
          v35 = &selRef__wirelessPowerOn_;
          goto LABEL_24;
        }

        v90 = v108;
        sub_2296F8604();
        v91 = v14;
        v92 = v33;
        v93 = sub_22A4DD05C();
        v94 = sub_22A4DDCEC();

        if (!os_log_type_enabled(v93, v94))
        {

          v56 = v90;
          v57 = v2;
          goto LABEL_20;
        }

        v95 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v109 = swift_slowAlloc();
        v118 = v109;
        *v95 = 136315394;
        aBlock = 91;
        v113 = 0xE100000000000000;
        v96 = [v91 logIdentifier];
        v97 = sub_22A4DD5EC();
        v99 = v98;

        v105 = v94;
        MEMORY[0x22AAD08C0](v97, v99);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v100 = sub_2295A3E30(aBlock, v113, &v118);

        *(v95 + 4) = v100;
        *(v95 + 12) = 2112;
        *(v95 + 14) = v92;
        v101 = v106;
        *v106 = v33;
        v102 = v92;
        _os_log_impl(&dword_229538000, v93, v105, "%s Unable to get controller for home %@", v95, 0x16u);
        sub_22953EAE4(v101, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v101, -1, -1);
        v103 = v109;
        __swift_destroy_boxed_opaque_existential_0(v109);
        MEMORY[0x22AAD4E50](v103, -1, -1);
        MEMORY[0x22AAD4E50](v95, -1, -1);

        v56 = v108;
LABEL_19:
        v57 = v110;
LABEL_20:
        (v107)(v56, v57);
        return;
      }
    }

    else
    {
      v58 = [v31 accessoryServer];
      if (!v58)
      {
        goto LABEL_25;
      }

      v36 = v58;
      [v58 setHmdHAPAccessoryDelegate_];
    }

LABEL_24:

LABEL_25:
    v59 = [v31 v35[246]];
    if (v59)
    {
      v60 = v59;
      [v59 setChipDelegate_];
    }
  }

  v61 = [v14 matterDevice];
  if (v61)
  {
  }

  else
  {
    v62 = v109;
    sub_2296F8604();
    v108 = v14;
    v63 = v14;
    v64 = sub_22A4DD05C();
    v65 = sub_22A4DDCEC();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v107 = v28;
      v67 = v66;
      v106 = swift_slowAlloc();
      v118 = v106;
      *v67 = 136315138;
      aBlock = 91;
      v113 = 0xE100000000000000;
      v68 = [v63 logIdentifier];
      v105 = v65;
      v69 = v68;
      v70 = sub_22A4DD5EC();
      v72 = v71;

      MEMORY[0x22AAD08C0](v70, v72);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v73 = sub_2295A3E30(aBlock, v113, &v118);

      *(v67 + 4) = v73;
      _os_log_impl(&dword_229538000, v64, v105, "%s Failed to find or create MTRDevice", v67, 0xCu);
      v74 = v106;
      __swift_destroy_boxed_opaque_existential_0(v106);
      MEMORY[0x22AAD4E50](v74, -1, -1);
      MEMORY[0x22AAD4E50](v67, -1, -1);

      (v107)(v109, v110);
    }

    else
    {

      (v28)(v62, v110);
    }

    v14 = v108;
  }

  if ([v33 isCurrentDevicePrimaryResident])
  {
    v75 = objc_opt_self();
    v76 = [v75 defaultCenter];
    [v76 removeObserver:v14 name:@"HMDHomeNameChangedNotification" object:v33];

    v77 = [v75 defaultCenter];
    [v77 addObserver:v14 selector:sel_handleHomeNameChangedNotification_ name:@"HMDHomeNameChangedNotification" object:v33];
  }

  if ([v31 isPrimary])
  {
    v78 = [v31 chipStorage];
    v79 = [v78 pairings];

    if (v79)
    {
    }

    else
    {
      v80 = [v33 name];
      v81 = sub_22A4DD5EC();
      v83 = v82;

      v84 = swift_allocObject();
      *(v84 + 16) = v14;
      *(v84 + 24) = ObjectType;
      v85 = v14;
      sub_2296F9DBC(v81, v83, sub_2297080D8, v84);
    }
  }

  v86 = [v14 fetchConfiguration];
  v87 = swift_allocObject();
  *(v87 + 16) = v14;
  *(v87 + 24) = ObjectType;
  v116 = sub_2297080D0;
  v117 = v87;
  aBlock = MEMORY[0x277D85DD0];
  v113 = 1107296256;
  v114 = sub_229582E94;
  v115 = &block_descriptor_62;
  v88 = _Block_copy(&aBlock);
  v89 = v14;

  [v86 getResultWithCompletion_];
  _Block_release(v88);
}

void sub_2296F9624(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v8 = a1;
    sub_2296F8604();
    v9 = a1;
    v10 = a2;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCEC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v27 = a2;
      v14 = v13;
      v25 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v26 = v15;
      *v14 = 136315394;
      v28 = 91;
      v29 = 0xE100000000000000;
      v30 = v15;
      v16 = [v10 logIdentifier];
      v17 = sub_22A4DD5EC();
      v19 = v18;

      MEMORY[0x22AAD08C0](v17, v19);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v20 = sub_2295A3E30(v28, v29, &v30);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v22;
      v23 = v25;
      *v25 = v22;
      _os_log_impl(&dword_229538000, v11, v12, "%s Failed to update fabric label with error: %@", v14, 0x16u);
      sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      v24 = v26;
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v7, v4);
  }

  sub_2296F98DC();
}

void sub_2296F98DC()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v8 = &v43[-v7];
  v9 = [v0 accessory];
  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = v9;
  v11 = [v9 accessoryServer];
  if (!v11)
  {

LABEL_6:
    sub_2296F8604();
    v28 = v0;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v54 = v32;
      *v31 = 136315138;
      aBlock = 91;
      v49 = 0xE100000000000000;
      v33 = [v28 logIdentifier];
      v47 = v2;
      v34 = v33;
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(aBlock, v49, &v54);

      *(v31 + 4) = v38;
      _os_log_impl(&dword_229538000, v29, v30, "%s Unable to find accessory server", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      (*(v3 + 8))(v6, v47);
    }

    else
    {

      (*(v3 + 8))(v6, v2);
    }

    return;
  }

  v12 = v11;
  sub_2296F8604();
  v13 = v0;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v45 = v16;
    v46 = swift_slowAlloc();
    v54 = v46;
    *v16 = 136315138;
    aBlock = 91;
    v49 = 0xE100000000000000;
    v17 = [v13 logIdentifier];
    v44 = v15;
    v18 = v17;
    v19 = sub_22A4DD5EC();
    v47 = v2;
    v20 = v19;
    v21 = v13;
    v22 = v12;
    v24 = v23;

    MEMORY[0x22AAD08C0](v20, v24);
    v12 = v22;
    v13 = v21;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(aBlock, v49, &v54);

    v26 = v45;
    *(v45 + 1) = v25;
    _os_log_impl(&dword_229538000, v14, v44, "%s Fetching matter pairings", v26, 0xCu);
    v27 = v46;
    __swift_destroy_boxed_opaque_existential_0(v46);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);

    (*(v3 + 8))(v8, v47);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
  }

  v39 = swift_allocObject();
  v39[2] = v13;
  v39[3] = v10;
  v39[4] = ObjectType;
  v52 = sub_2297080E0;
  v53 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_229798BA4;
  v51 = &block_descriptor_71;
  v40 = _Block_copy(&aBlock);
  v41 = v13;
  v42 = v10;

  [v12 fetchPairingsWithCompletionHandler_];
  _Block_release(v40);
}

void sub_2296F9DBC(uint64_t a1, unint64_t a2, void (*a3)(void), uint64_t a4)
{
  v59 = a1;
  swift_getObjectType();
  v8 = sub_22A4DD07C();
  v60 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v52 - v12;
  v14 = [v4 accessory];
  if (v14 && (v15 = v14, v16 = [v14 accessoryServer], v15, v16))
  {
    sub_2296F8604();
    v17 = v4;

    v18 = v16;
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v56 = v20;
      v22 = v21;
      v55 = swift_slowAlloc();
      v57 = swift_slowAlloc();
      v67 = v57;
      *v22 = 136315650;
      aBlock = 91;
      v62 = 0xE100000000000000;
      v23 = [v17 logIdentifier];
      v24 = sub_22A4DD5EC();
      v58 = v8;
      v25 = a4;
      v26 = v24;
      v53 = v16;
      v27 = a2;
      v28 = v18;
      v29 = a3;
      v31 = v30;

      v54 = v19;
      v32 = v26;
      a4 = v25;
      MEMORY[0x22AAD08C0](v32, v31);
      a3 = v29;
      v18 = v28;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(aBlock, v62, &v67);

      *(v22 + 4) = v33;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_2295A3E30(v59, v27, &v67);
      *(v22 + 22) = 2112;
      *(v22 + 24) = v28;
      v34 = v55;
      *v55 = v53;
      v35 = v28;
      v36 = v54;
      _os_log_impl(&dword_229538000, v54, v56, "%s Updating fabric label to %s for accessory server %@", v22, 0x20u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      v37 = v57;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v37, -1, -1);
      MEMORY[0x22AAD4E50](v22, -1, -1);

      (*(v60 + 8))(v13, v58);
    }

    else
    {

      (*(v60 + 8))(v13, v8);
    }

    v50 = sub_22A4DD5AC();
    v65 = a3;
    v66 = a4;
    aBlock = MEMORY[0x277D85DD0];
    v62 = 1107296256;
    v63 = sub_2295AAF60;
    v64 = &block_descriptor_20;
    v51 = _Block_copy(&aBlock);

    [v18 updateFabricLabel:v50 completionHandler:v51];
    _Block_release(v51);
  }

  else
  {
    v58 = v8;
    sub_2296F8604();
    v38 = v4;

    v39 = sub_22A4DD05C();
    v40 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v57 = a3;
      v43 = v42;
      v67 = v42;
      *v41 = 136315394;
      aBlock = 91;
      v62 = 0xE100000000000000;
      v44 = [v38 logIdentifier];
      v45 = sub_22A4DD5EC();
      v47 = v46;

      MEMORY[0x22AAD08C0](v45, v47);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v48 = sub_2295A3E30(aBlock, v62, &v67);

      *(v41 + 4) = v48;
      *(v41 + 12) = 2080;
      *(v41 + 14) = sub_2295A3E30(v59, a2, &v67);
      _os_log_impl(&dword_229538000, v39, v40, "%s Unable to find accessory server to update fabric label to %s", v41, 0x16u);
      swift_arrayDestroy();
      v49 = v43;
      a3 = v57;
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v41, -1, -1);
    }

    (*(v60 + 8))(v11, v58);
    v50 = [objc_opt_self() hmErrorWithCode_];
    a3();
  }
}

void sub_2296FA3C4(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v11 = a3;
  v12 = a2;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  if (os_log_type_enabled(v13, v14))
  {
    v34 = v7;
    v35 = a4;
    v15 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136315394;
    v36 = v16;
    aBlock = 91;
    v38 = 0xE100000000000000;
    v17 = [v11 logIdentifier];
    v18 = sub_22A4DD5EC();
    v20 = v19;

    MEMORY[0x22AAD08C0](v18, v20);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v21 = sub_2295A3E30(aBlock, v38, &v36);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2112;
    if (a2)
    {
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      v24 = v23;
    }

    else
    {
      v23 = 0;
      v24 = 0;
    }

    *(v15 + 14) = v23;
    v25 = v32;
    *v32 = v24;
    _os_log_impl(&dword_229538000, v13, v14, "%s Did fetch configuration with error: %@", v15, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    v26 = v33;
    __swift_destroy_boxed_opaque_existential_0(v33);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v8 + 8))(v10, v34);
    a4 = v35;
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  v27 = sub_2296FA740();
  v28 = swift_allocObject();
  *(v28 + 16) = v11;
  *(v28 + 24) = a4;
  v41 = sub_2297080EC;
  v42 = v28;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_2296FB024;
  v40 = &block_descriptor_77;
  v29 = _Block_copy(&aBlock);
  v30 = v11;

  [v27 getResultWithCompletion_];
  _Block_release(v29);
}

id sub_2296FA740()
{
  v1 = v0;
  v62 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v50 - v4;
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = [v0 accessory];
  if (v13 && (v13, (v14 = [v0 matterDevice]) != 0))
  {
    v15 = v14;
    v58 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    v59 = MEMORY[0x277D17450];
    *&v57 = v15;
    sub_229557188(&v57, &v60);
    v56 = 0;
    v16 = [objc_opt_self() futureWithPromise_];
    v54 = ObjectType;
    sub_2296F8604();
    v17 = v1;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v51 = v6;
      v21 = v20;
      v22 = swift_slowAlloc();
      v53 = v16;
      v23 = v22;
      v55 = v22;
      *v21 = 136315138;
      *&v57 = 91;
      *(&v57 + 1) = 0xE100000000000000;
      v24 = [v17 logIdentifier];
      v25 = sub_22A4DD5EC();
      v52 = v17;
      v26 = v25;
      v28 = v27;

      MEMORY[0x22AAD08C0](v26, v28);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v29 = sub_2295A3E30(v57, *(&v57 + 1), &v55);

      *(v21 + 4) = v29;
      _os_log_impl(&dword_229538000, v18, v19, "%s Reading and processing attributes", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      v30 = v23;
      v16 = v53;
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);

      (*(v7 + 8))(v12, v51);
    }

    else
    {

      (*(v7 + 8))(v12, v6);
    }

    v45 = sub_22A4DD9DC();
    (*(*(v45 - 8) + 56))(v5, 1, 1, v45);
    v46 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v47 = v56;
    sub_22957F1C4(&v60, &v57);
    v48 = swift_allocObject();
    v48[2] = 0;
    v48[3] = 0;
    v48[4] = v46;
    v48[5] = v47;
    sub_229557188(&v57, (v48 + 6));
    v48[11] = v54;
    v49 = v47;
    sub_22957F3C0(0, 0, v5, &unk_22A580968, v48);

    __swift_destroy_boxed_opaque_existential_0(&v60);

    return v16;
  }

  else
  {
    sub_2296F8604();
    v31 = v0;
    v32 = sub_22A4DD05C();
    v33 = sub_22A4DDCEC();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v57 = v35;
      *v34 = 136315138;
      v60 = 91;
      v61 = 0xE100000000000000;
      v36 = [v31 logIdentifier];
      v37 = sub_22A4DD5EC();
      v39 = v38;

      MEMORY[0x22AAD08C0](v37, v39);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v40 = sub_2295A3E30(v60, v61, &v57);

      *(v34 + 4) = v40;
      _os_log_impl(&dword_229538000, v32, v33, "%s Matter device is not available", v34, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v34, -1, -1);
    }

    (*(v7 + 8))(v10, v6);
    v41 = [objc_opt_self() hmfErrorWithCode_];
    v42 = sub_22A4DB3DC();

    v43 = [objc_opt_self() futureWithError_];
    return v43;
  }
}

uint64_t sub_2296FAD7C(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v10 = a2;
    sub_2296F8604();
    v11 = a2;
    v12 = a3;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136315394;
      v29 = 91;
      v30 = 0xE100000000000000;
      v31 = v16;
      v17 = [v12 logIdentifier];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(v29, v30, &v31);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2112;
      v22 = a2;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 14) = v23;
      v24 = v27;
      *v27 = v23;
      _os_log_impl(&dword_229538000, v13, v14, "%s Failed to read and process attributes with error: %@", v15, 0x16u);
      sub_22953EAE4(v24, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v25 = v28;
      __swift_destroy_boxed_opaque_existential_0(v28);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {
    }

    return (*(v6 + 8))(v9, v5);
  }

  return result;
}

uint64_t sub_2296FB024(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

void sub_2296FB0EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v55 = a1;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v52[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v12 = &v52[-v11];
  v56 = ObjectType;
  sub_2296F8604();
  v13 = v3;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  v16 = os_log_type_enabled(v14, v15);
  v57 = v7;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v64 = v54;
    *v17 = 136315138;
    aBlock = 91;
    v59 = 0xE100000000000000;
    v18 = [v13 logIdentifier];
    v19 = sub_22A4DD5EC();
    v53 = v15;
    v20 = v19;
    v21 = a2;
    v22 = v10;
    v23 = v6;
    v25 = v24;

    MEMORY[0x22AAD08C0](v20, v25);
    v6 = v23;
    v10 = v22;
    a2 = v21;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v26 = sub_2295A3E30(aBlock, v59, &v64);

    *(v17 + 4) = v26;
    _os_log_impl(&dword_229538000, v14, v53, "%s Removing all matter pairings", v17, 0xCu);
    v27 = v54;
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    v28 = v17;
    v7 = v57;
    MEMORY[0x22AAD4E50](v28, -1, -1);
  }

  v29 = *(v7 + 8);
  v29(v12, v6);
  v30 = [v13 accessory];
  if (v30 && (v31 = v30, v32 = [v30 accessoryServer], v31, v32))
  {
    v33 = swift_allocObject();
    v35 = v55;
    v34 = v56;
    v33[2] = v13;
    v33[3] = v35;
    v33[4] = a2;
    v33[5] = v34;
    v62 = sub_2297080C4;
    v63 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_2295AAF60;
    v61 = &block_descriptor_56;
    v36 = _Block_copy(&aBlock);
    v37 = v13;

    [v32 removeAllPairingsWithCompletionHandler_];
    _Block_release(v36);
  }

  else
  {
    sub_2296F8604();
    v38 = v13;
    v39 = sub_22A4DD05C();
    v40 = v10;
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v39, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v64 = v43;
      *v42 = 136315138;
      aBlock = 91;
      v59 = 0xE100000000000000;
      v44 = [v38 logIdentifier];
      v45 = sub_22A4DD5EC();
      v56 = v6;
      v46 = v45;
      v48 = v47;

      MEMORY[0x22AAD08C0](v46, v48);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v49 = sub_2295A3E30(aBlock, v59, &v64);

      *(v42 + 4) = v49;
      _os_log_impl(&dword_229538000, v39, v41, "%s Unable to find accessory server", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x22AAD4E50](v43, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      v50 = v56;
      v51 = v40;
    }

    else
    {

      v51 = v40;
      v50 = v6;
    }

    v29(v51, v50);
  }
}

void sub_2296FB5D0(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v46 - v13;
  if (a1)
  {
    v50 = v8;
    v15 = a1;
    sub_2296F8604();
    v16 = a1;
    v17 = a2;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCEC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v49 = a4;
      v21 = v20;
      v47 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v48 = v22;
      *v21 = 136315394;
      v51 = 91;
      v52 = 0xE100000000000000;
      v53 = v22;
      v23 = [v17 logIdentifier];
      v24 = sub_22A4DD5EC();
      v25 = a3;
      v27 = v26;

      MEMORY[0x22AAD08C0](v24, v27);
      a3 = v25;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v28 = sub_2295A3E30(v51, v52, &v53);

      *(v21 + 4) = v28;
      *(v21 + 12) = 2112;
      v29 = a1;
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v30;
      v31 = v47;
      *v47 = v30;
      _os_log_impl(&dword_229538000, v18, v19, "%s Failed to remove all matter pairings with error: %@", v21, 0x16u);
      sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      v32 = v48;
      __swift_destroy_boxed_opaque_existential_0(v48);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    (*(v9 + 8))(v14, v50);
    v33 = [objc_opt_self() hmErrorWithCode_];
    a3();
  }

  else
  {
    sub_2296F8604();
    v34 = a2;
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCCC();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = a4;
      v39 = v38;
      *v37 = 136315138;
      v51 = 91;
      v52 = 0xE100000000000000;
      v53 = v38;
      v40 = [v34 logIdentifier];
      v41 = sub_22A4DD5EC();
      v50 = v8;
      v42 = a3;
      v44 = v43;

      MEMORY[0x22AAD08C0](v41, v44);
      a3 = v42;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v45 = sub_2295A3E30(v51, v52, &v53);

      *(v37 + 4) = v45;
      _os_log_impl(&dword_229538000, v35, v36, "%s Successfully removed all matter pairings", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v9 + 8))(v12, v50);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    (a3)(0);
  }
}

uint64_t sub_2296FBA98(void *a1)
{
  swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v57 - v8;
  v10 = [v1 accessory];
  if (!v10)
  {
    goto LABEL_19;
  }

  v11 = v10;
  v12 = [v10 home];
  if (!v12)
  {

LABEL_19:
    sub_2296F8604();
    v38 = v1;
    v39 = a1;
    v40 = sub_22A4DD05C();
    v41 = sub_22A4DDCEC();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v63 = v4;
      v44 = v43;
      v45 = swift_slowAlloc();
      *v42 = 136315394;
      v64 = 91;
      v65 = 0xE100000000000000;
      v66 = v45;
      v46 = [v38 logIdentifier];
      v47 = sub_22A4DD5EC();
      v62 = v3;
      v49 = v48;

      MEMORY[0x22AAD08C0](v47, v49);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v50 = sub_2295A3E30(v64, v65, &v66);

      *(v42 + 4) = v50;
      *(v42 + 12) = 2112;
      *(v42 + 14) = v39;
      *v44 = v39;
      v51 = v39;
      _os_log_impl(&dword_229538000, v40, v41, "%s Unable to find accessory for server: %@", v42, 0x16u);
      sub_22953EAE4(v44, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v42, -1, -1);

      (*(v63 + 8))(v7, v62);
    }

    else
    {

      (*(v4 + 8))(v7, v3);
    }

    return 0;
  }

  v13 = v12;
  objc_opt_self();
  if (swift_dynamicCastObjCClass() && (shouldCreateHybridMatterAccessoryFromServer(a1, v13) & 1) != 0)
  {
    LODWORD(v62) = 0;
  }

  else
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass() || (shouldCreateNativeMatterAccessoryFromServer(a1, v13) & 1) == 0)
    {

      return 0;
    }

    LODWORD(v62) = 1;
  }

  v14 = [v11 transactionWithObjectChangeType_];
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    return 0;
  }

  v16 = v15;
  sub_2296F8604();
  v17 = v1;
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();

  v61 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v63 = v4;
    v21 = v20;
    v57 = v20;
    v22 = swift_slowAlloc();
    v59 = v22;
    *v21 = 136315394;
    v64 = 91;
    v65 = 0xE100000000000000;
    v66 = v22;
    v23 = [v17 logIdentifier];
    v58 = v18;
    v24 = v23;
    v25 = sub_22A4DD5EC();
    v60 = v14;
    v26 = v25;
    v27 = v17;
    v29 = v28;

    MEMORY[0x22AAD08C0](v26, v29);
    v17 = v27;
    v30 = v62;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v31 = sub_2295A3E30(v64, v65, &v66);

    v32 = v57;
    *(v57 + 4) = v31;
    *(v32 + 12) = 2080;
    if (v30)
    {
      v33 = 0x65766974614ELL;
    }

    else
    {
      v33 = 0x7474614D2B504148;
    }

    if (v30)
    {
      v34 = 0xE600000000000000;
    }

    else
    {
      v34 = 0xEA00000000007265;
    }

    v35 = sub_2295A3E30(v33, v34, &v66);

    *(v32 + 14) = v35;
    v14 = v60;
    v36 = v58;
    _os_log_impl(&dword_229538000, v58, v61, "%s Found a matter accessory that should be %s accessory: %%@. Updating its native matter flag", v32, 0x16u);
    v37 = v59;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v37, -1, -1);
    MEMORY[0x22AAD4E50](v32, -1, -1);

    (*(v63 + 8))(v9, v3);
  }

  else
  {

    (*(v4 + 8))(v9, v3);
  }

  v53 = sub_22A4DD8AC();
  [v16 setSupportsNativeMatter_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_22A576190;
  *(v54 + 32) = v16;
  sub_229562F68(0, &qword_27D87FD80, off_278666060);
  v55 = v14;
  v56 = sub_22A4DD81C();

  return 1;
}

void sub_2296FC184(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v77[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v64[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v64[-v16];
  v18 = [v5 accessory];
  if (v18)
  {
    v74 = v18;
    if ([v18 isPrimary])
    {
      v73 = a1;
      v71 = a2;
      v68 = ObjectType;
      sub_2296F8604();
      v19 = v5;

      v20 = sub_22A4DD05C();
      v21 = sub_22A4DDCDC();

      v22 = os_log_type_enabled(v20, v21);
      v72 = v12;
      v67 = v19;
      if (v22)
      {
        v23 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v70 = v11;
        v77[0] = v69;
        *v23 = 136315394;
        v75 = 91;
        v76 = 0xE100000000000000;
        v24 = [v19 logIdentifier];
        v25 = sub_22A4DD5EC();
        v26 = a4;
        v27 = v15;
        v28 = a3;
        v30 = v29;

        MEMORY[0x22AAD08C0](v25, v30);
        a3 = v28;
        v15 = v27;
        a4 = v26;

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v31 = sub_2295A3E30(v75, v76, v77);

        *(v23 + 4) = v31;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_2295A3E30(a3, v26, v77);
        _os_log_impl(&dword_229538000, v20, v21, "%s Saving public key for accessory: %s", v23, 0x16u);
        v32 = v69;
        swift_arrayDestroy();
        v11 = v70;
        MEMORY[0x22AAD4E50](v32, -1, -1);
        v33 = v23;
        v12 = v72;
        MEMORY[0x22AAD4E50](v33, -1, -1);
      }

      v69 = *(v12 + 8);
      v69(v17, v11);
      v34 = [objc_opt_self() systemStore];
      v35 = v71;
      v36 = sub_22A4DB61C();
      v37 = sub_22A4DD5AC();
      v75 = 0;
      v38 = [v34 savePublicKey:v36 forAccessoryName:v37 error:&v75];

      if (v38)
      {
        v39 = v75;
      }

      else
      {
        v66 = a3;
        v41 = v75;
        v42 = v35;
        v43 = sub_22A4DB3EC();

        swift_willThrow();
        sub_2296F8604();
        v44 = v67;

        v45 = v73;
        sub_22956C148(v73, v42);
        v46 = v43;
        v47 = sub_22A4DD05C();
        v48 = sub_22A4DDCCC();

        sub_2295798D4(v45, v42);

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v68 = swift_slowAlloc();
          v77[0] = v68;
          *v49 = 136315906;
          v75 = 91;
          v76 = 0xE100000000000000;
          v50 = [v44 logIdentifier];
          v51 = sub_22A4DD5EC();
          v70 = v11;
          v53 = v52;

          v65 = v48;
          MEMORY[0x22AAD08C0](v51, v53);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v54 = sub_2295A3E30(v75, v76, v77);

          *(v49 + 4) = v54;
          *(v49 + 12) = 2080;
          v55 = sub_22A4DB5AC();
          v57 = sub_2295A3E30(v55, v56, v77);

          *(v49 + 14) = v57;
          *(v49 + 22) = 2080;
          *(v49 + 24) = sub_2295A3E30(v66, a4, v77);
          *(v49 + 32) = 2112;
          v58 = v43;
          v59 = _swift_stdlib_bridgeErrorToNSError();
          *(v49 + 34) = v59;
          v60 = v67;
          *v67 = v59;
          _os_log_impl(&dword_229538000, v47, v65, "%s Failed to save public key: %s for username: %s with error: %@", v49, 0x2Au);
          sub_22953EAE4(v60, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v60, -1, -1);
          v61 = v68;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v61, -1, -1);
          MEMORY[0x22AAD4E50](v49, -1, -1);

          v62 = v15;
          v63 = v70;
        }

        else
        {

          v62 = v15;
          v63 = v11;
        }

        v69(v62, v63);
      }
    }

    else
    {
      v40 = v74;
    }
  }
}

void sub_2296FC900(char a1)
{
  swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = [v1 accessory];
  if (!v9)
  {
    goto LABEL_9;
  }

  v10 = v9;
  v11 = [v9 home];
  if (!v11)
  {
    v14 = v10;
LABEL_8:

LABEL_9:
    sub_2296F8604();
    v15 = v1;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 136315138;
      v49 = 91;
      v50 = 0xE100000000000000;
      v51 = v19;
      v20 = [v15 logIdentifier];
      v21 = sub_22A4DD5EC();
      v23 = v22;

      MEMORY[0x22AAD08C0](v21, v23);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v24 = sub_2295A3E30(v49, v50, &v51);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_229538000, v16, v17, "%s Found no accessory or home", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x22AAD4E50](v19, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    return;
  }

  v48 = v11;
  v12 = [objc_msgSend(v11 featuresDataSource)];
  swift_unknownObjectRelease();
  if (!v12)
  {

    v14 = v48;
    goto LABEL_8;
  }

  if ([v10 convertingMatterAccessory])
  {

    v13 = v48;
LABEL_15:

    return;
  }

  v25 = [v10 transactionWithObjectChangeType_];
  objc_opt_self();
  v26 = swift_dynamicCastObjCClass();
  if (v26)
  {
    v27 = v26;
    [v10 populateModelObject:v26 version:4];
    v28 = sub_22A4DD8AC();
    [v27 setSupportsNativeMatter_];

    [v10 setConvertingMatterAccessory_];
    v47 = v10;
    sub_2297A4808(v47, v27);

    v13 = v47;
    goto LABEL_15;
  }

  sub_2296F8604();
  v29 = v10;
  v30 = v1;
  v31 = sub_22A4DD05C();
  v32 = sub_22A4DDCEC();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47 = v34;
    *v33 = 136315394;
    v49 = 91;
    v50 = 0xE100000000000000;
    v51 = v34;
    v35 = [v30 logIdentifier];
    v36 = sub_22A4DD5EC();
    v38 = v37;

    MEMORY[0x22AAD08C0](v36, v38);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v39 = sub_2295A3E30(v49, v50, &v51);

    *(v33 + 4) = v39;
    *(v33 + 12) = 2080;
    v40 = [v29 shortDescription];
    v41 = sub_22A4DD5EC();
    v43 = v42;

    v44 = sub_2295A3E30(v41, v43, &v51);

    *(v33 + 14) = v44;
    _os_log_impl(&dword_229538000, v31, v32, "%s Failed to create accessory model for %s", v33, 0x16u);
    v45 = v47;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v45, -1, -1);
    MEMORY[0x22AAD4E50](v33, -1, -1);
  }

  else
  {
  }

  (*(v3 + 8))(v8, v2);
}

void sub_2296FCEF0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 accessory];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 accessoryServer];

    if (v7)
    {
      v9[4] = a1;
      v9[5] = a2;
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 1107296256;
      v9[2] = sub_2296FCFEC;
      v9[3] = &block_descriptor_46;
      v8 = _Block_copy(v9);

      [v7 setCHIPReportHandler_];
      _Block_release(v8);
    }
  }
}

uint64_t sub_2296FCFEC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v3 = sub_22A4DD83C();

  v2(v3);
}

uint64_t sub_2296FD0A0(void *a1, int a2, void *aBlock, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t))
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = a1;
  a6(a5, v10);
}

void sub_2296FD134(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v3 = sub_22A4DD81C();
  (*(a2 + 16))(a2, v3);
}

id sub_2296FD318(unint64_t a1)
{
  v2 = v1;
  v47[1] = *MEMORY[0x277D85DE8];
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 accessory];
  if (v8 && (v9 = v8, v10 = [v8 home], v9, v10) && (v11 = objc_msgSend(v10, sel_backingStore), v10, v11))
  {
    v47[0] = 0;
    v40 = [objc_opt_self() futureWithPromise_];
    v12 = objc_opt_self();
    v13 = @"AccessoryUpdated";
    v14 = [v12 defaultXPCOptions];
    v15 = [v11 transaction:v13 options:v14];

    if (a1 >> 62)
    {
      goto LABEL_19;
    }

    for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v17 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x22AAD13F0](v17, a1);
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_18;
          }

          v18 = *(a1 + 8 * v17 + 32);
        }

        v19 = v18;
        v20 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        [v15 add_];

        ++v17;
        if (v20 == i)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      ;
    }

LABEL_20:
    v35 = v47[0];
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    v45 = sub_229708030;
    v46 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_2295AAF60;
    v44 = &block_descriptor_31;
    v37 = _Block_copy(&aBlock);
    v38 = v35;

    [v15 run_];

    _Block_release(v37);
    return v40;
  }

  else
  {
    sub_2296F8604();
    v21 = v2;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v47[0] = v25;
      *v24 = 136315138;
      aBlock = 91;
      v42 = 0xE100000000000000;
      v26 = [v21 logIdentifier];
      v27 = sub_22A4DD5EC();
      v29 = v28;

      MEMORY[0x22AAD08C0](v27, v29);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v30 = sub_2295A3E30(aBlock, v42, v47);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_229538000, v22, v23, "%s No home is available", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    v31 = [objc_opt_self() hmfErrorWithCode_];
    v32 = sub_22A4DB3DC();

    v33 = [objc_opt_self() futureWithError_];
    return v33;
  }
}

void sub_2296FD840(void *a1, id a2)
{
  if (a1)
  {
    if (a2)
    {
      v4 = a1;
      v5 = sub_22A4DB3DC();
      [a2 rejectWithError_];
    }
  }

  else if (a2)
  {

    [a2 fulfillWithValue_];
  }
}

void sub_2296FD980(void *a1, void *a2)
{
  v3 = v2;
  v171 = a2;
  v172 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v158 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v170 = (&v158 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = (&v158 - v16);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v158 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v158 - v21;
  v23 = [v3 accessory];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 home];
    if (v25)
    {
      v162 = v17;
      v167 = ObjectType;
      v161 = v12;
      v163 = v25;
      v26 = [v24 chipStorage];
      [v26 copy];
      sub_22A4DE01C();
      swift_unknownObjectRelease();
      sub_229562F68(0, &qword_27D87FD58, off_278666070);
      v27 = swift_dynamicCast();
      v28 = v175[0];
      if (!v27)
      {
        v28 = 0;
      }

      v168 = v28;
      v29 = [v26 updateUsingAccessoryModel_];
      v165 = v6;
      v166 = v5;
      v169 = v3;
      if (v29)
      {
        if (v168)
        {
          v30 = [v168 pairings];
          if (v30)
          {
            v31 = v30;
            sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
            sub_229707F80();
            v32 = sub_22A4DDB6C();

            v33 = [v26 pairings];
            if (v33)
            {
              v34 = v33;
              v35 = sub_22A4DDB6C();

              if ((sub_2296CC298(v32, v35) & 1) == 0)
              {
                sub_2296FEBEC(v35, v32);
              }
            }
          }
        }

        v46 = v171;
        IsCurrentDevice = HMDBackingStoreTransactionSourceIsCurrentDevice([v171 source]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FD60, &qword_22A580938);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 40) = v49;
        *(inited + 48) = IsCurrentDevice;
        v50 = sub_22956B538(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87FD68, &qword_22A580940);
        v51 = v24;
        sub_2296F7D74(v50);

        v52 = sub_22A4DD47C();

        logAndPostNotification(@"HMDAccessoryCHIPStorageUpdatedNotification", v51, v52);

        [v46 markChanged];
        v5 = v166;
        v3 = v169;
      }

      v164 = v26;
      v53 = [v172 chipVendorID];
      if (v53)
      {
        v54 = [v24 matterVendorID];
        if (v54 && (v55 = v54, v56 = [v54 unsignedLongLongValue], v55, v56))
        {
          sub_2296F8604();
          v57 = v3;
          v58 = v53;
          v59 = sub_22A4DD05C();
          v60 = sub_22A4DDCCC();

          LODWORD(v160) = v60;
          if (os_log_type_enabled(v59, v60))
          {
            v61 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v62 = swift_slowAlloc();
            v175[0] = v62;
            *v61 = 136315650;
            v173 = 91;
            v174 = 0xE100000000000000;
            v63 = [v57 logIdentifier];
            v158 = v59;
            v64 = v63;
            v65 = sub_22A4DD5EC();
            v67 = v66;

            MEMORY[0x22AAD08C0](v65, v67);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v68 = sub_2295A3E30(v173, v174, v175);

            *(v61 + 4) = v68;
            v3 = v169;
            *(v61 + 12) = 2112;
            *(v61 + 14) = v58;
            v69 = v159;
            *v159 = v53;
            *(v61 + 22) = 2048;
            *(v61 + 24) = v56;
            v70 = v58;
            v58 = v158;
            _os_log_impl(&dword_229538000, v158, v160, "%s Matter accessory vendorID cannot be set to %@, is already set to: %llu", v61, 0x20u);
            sub_22953EAE4(v69, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v69, -1, -1);
            __swift_destroy_boxed_opaque_existential_0(v62);
            MEMORY[0x22AAD4E50](v62, -1, -1);
            v71 = v61;
            v5 = v166;
            MEMORY[0x22AAD4E50](v71, -1, -1);
          }

          else
          {
          }

          (*(v165 + 8))(v22, v5);
          LODWORD(v53) = 0;
        }

        else
        {
          sub_2296F8604();
          v72 = v3;
          v73 = v53;
          v74 = sub_22A4DD05C();
          v75 = sub_22A4DDCCC();

          if (os_log_type_enabled(v74, v75))
          {
            v76 = swift_slowAlloc();
            v159 = swift_slowAlloc();
            v160 = swift_slowAlloc();
            v175[0] = v160;
            *v76 = 136315394;
            v173 = 91;
            v174 = 0xE100000000000000;
            v77 = [v72 logIdentifier];
            v78 = sub_22A4DD5EC();
            v80 = v79;

            MEMORY[0x22AAD08C0](v78, v80);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v81 = sub_2295A3E30(v173, v174, v175);

            *(v76 + 4) = v81;
            *(v76 + 12) = 2112;
            *(v76 + 14) = v73;
            v82 = v159;
            *v159 = v53;
            v83 = v73;
            _os_log_impl(&dword_229538000, v74, v75, "%s Updating Matter accessory vendorID to %@", v76, 0x16u);
            sub_22953EAE4(v82, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v82, -1, -1);
            v84 = v160;
            __swift_destroy_boxed_opaque_existential_0(v160);
            MEMORY[0x22AAD4E50](v84, -1, -1);
            v85 = v76;
            v5 = v166;
            MEMORY[0x22AAD4E50](v85, -1, -1);
          }

          (*(v165 + 8))(v20, v5);
          [v24 setMatterVendorID_];
          [v171 markChanged];

          LODWORD(v53) = 1;
          v3 = v169;
        }
      }

      v86 = [v172 chipProductID];
      v87 = &selRef_markChangedForMessage_triggerModel_;
      if (v86)
      {
        v88 = v86;
        v89 = [v24 matterProductID];
        if (!v89 || (v90 = v89, v91 = [v89 unsignedLongLongValue], v90, !v91))
        {
          v107 = v170;
          sub_2296F8604();
          v108 = v3;
          v109 = v88;
          v110 = sub_22A4DD05C();
          v111 = sub_22A4DDCCC();

          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            v113 = swift_slowAlloc();
            v162 = swift_slowAlloc();
            v175[0] = v162;
            *v112 = 136315394;
            v173 = 91;
            v174 = 0xE100000000000000;
            v114 = [v108 logIdentifier];
            v115 = sub_22A4DD5EC();
            v117 = v116;

            MEMORY[0x22AAD08C0](v115, v117);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v118 = sub_2295A3E30(v173, v174, v175);

            *(v112 + 4) = v118;
            *(v112 + 12) = 2112;
            *(v112 + 14) = v109;
            *v113 = v88;
            v119 = v109;
            _os_log_impl(&dword_229538000, v110, v111, "%s Updating Matter accessory productID to %@", v112, 0x16u);
            sub_22953EAE4(v113, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v113, -1, -1);
            v120 = v162;
            __swift_destroy_boxed_opaque_existential_0(v162);
            MEMORY[0x22AAD4E50](v120, -1, -1);
            v121 = v112;
            v87 = &selRef_markChangedForMessage_triggerModel_;
            MEMORY[0x22AAD4E50](v121, -1, -1);

            (*(v165 + 8))(v170, v166);
          }

          else
          {

            (*(v165 + 8))(v107, v166);
          }

          [v24 setMatterProductID_];
          [v171 markChanged];

          v3 = v169;
LABEL_40:
          v122 = [v24 matterVendorID];
          if (v122)
          {
            v123 = v122;
            v124 = [v122 unsignedIntValue];

            v125 = [v24 v87[163]];
            if (v125)
            {
              v126 = v125;
              v127 = [v125 unsignedIntValue];

              if (v124)
              {
                if (v127)
                {
                  logAndPostNotification(@"HMDAccessoryVendorIDProductIDUpdatedNotification", v24, 0);
                }
              }
            }
          }

LABEL_45:
          v128 = [v172 supportedLinkLayerTypes];
          v129 = v164;
          if (v128)
          {
            v130 = v128;
            v131 = [v24 supportedLinkLayerTypes];
            sub_229562F68(0, &qword_281401770, 0x277CCABB0);
            v132 = sub_22A4DDEDC();

            if ((v132 & 1) == 0)
            {
              v133 = [v24 supportedLinkLayerTypes];
              v134 = sub_22A4DDEBC();
              v135 = sub_22A4DDEDC();

              if ((v135 & 1) == 0)
              {
                v136 = v161;
                sub_2296F8604();
                v137 = v24;
                v138 = v3;
                v139 = v130;
                v140 = sub_22A4DD05C();
                v141 = sub_22A4DDCCC();

                if (os_log_type_enabled(v140, v141))
                {
                  v142 = swift_slowAlloc();
                  v143 = swift_slowAlloc();
                  v172 = swift_slowAlloc();
                  v175[0] = v172;
                  *v142 = 136315650;
                  v173 = 91;
                  v174 = 0xE100000000000000;
                  v144 = [v138 logIdentifier];
                  LODWORD(v171) = v141;
                  v145 = v144;
                  v146 = sub_22A4DD5EC();
                  v170 = v137;
                  v147 = v146;
                  v149 = v148;

                  MEMORY[0x22AAD08C0](v147, v149);

                  MEMORY[0x22AAD08C0](93, 0xE100000000000000);
                  v150 = sub_2295A3E30(v173, v174, v175);

                  *(v142 + 4) = v150;
                  *(v142 + 12) = 2112;
                  *(v142 + 14) = v139;
                  *v143 = v130;
                  *(v142 + 22) = 2112;
                  v151 = v139;
                  v152 = [v170 supportedLinkLayerTypes];
                  *(v142 + 24) = v152;
                  v143[1] = v152;
                  _os_log_impl(&dword_229538000, v140, v171, "%s Matter accessory supported link layer types cannot be set to %@, is already set to %@", v142, 0x20u);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
                  swift_arrayDestroy();
                  v153 = v143;
                  v129 = v164;
                  MEMORY[0x22AAD4E50](v153, -1, -1);
                  v154 = v172;
                  __swift_destroy_boxed_opaque_existential_0(v172);
                  MEMORY[0x22AAD4E50](v154, -1, -1);
                  MEMORY[0x22AAD4E50](v142, -1, -1);

                  (*(v165 + 8))(v161, v166);
                }

                else
                {

                  (*(v165 + 8))(v136, v166);
                }

                v3 = v169;
                goto LABEL_54;
              }

              [v24 setSupportedLinkLayerTypes_];
              [v171 markChanged];
            }
          }

LABEL_54:
          v155 = v163;
          if ([v163 isPrimaryResidentNodeReachable])
          {
            v156 = swift_allocObject();
            *(v156 + 16) = v3;
            v157 = v3;
            sub_2296FF6DC(sub_229707F70, v156);
          }

          return;
        }

        v92 = v162;
        sub_2296F8604();
        v93 = v3;
        v94 = v88;
        v95 = sub_22A4DD05C();
        v96 = sub_22A4DDCCC();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v160 = swift_slowAlloc();
          v170 = swift_slowAlloc();
          v175[0] = v170;
          *v97 = 136315650;
          v173 = 91;
          v174 = 0xE100000000000000;
          v98 = [v93 logIdentifier];
          LODWORD(v159) = v96;
          v99 = v98;
          v100 = sub_22A4DD5EC();
          v102 = v101;

          MEMORY[0x22AAD08C0](v100, v102);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v103 = sub_2295A3E30(v173, v174, v175);

          *(v97 + 4) = v103;
          *(v97 + 12) = 2112;
          *(v97 + 14) = v94;
          v104 = v160;
          *v160 = v88;
          *(v97 + 22) = 2048;
          *(v97 + 24) = v91;
          v105 = v94;
          _os_log_impl(&dword_229538000, v95, v159, "%s Matter accessory productID cannot be set to %@, is already set to: %llu", v97, 0x20u);
          sub_22953EAE4(v104, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v104, -1, -1);
          v106 = v170;
          __swift_destroy_boxed_opaque_existential_0(v170);
          MEMORY[0x22AAD4E50](v106, -1, -1);
          MEMORY[0x22AAD4E50](v97, -1, -1);

          (*(v165 + 8))(v162, v166);
        }

        else
        {

          (*(v165 + 8))(v92, v5);
        }

        v3 = v169;
        v87 = &selRef_markChangedForMessage_triggerModel_;
      }

      if (!v53)
      {
        goto LABEL_45;
      }

      goto LABEL_40;
    }
  }

  sub_2296F8604();
  v36 = v3;
  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCEC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v175[0] = v40;
    *v39 = 136315138;
    v173 = 91;
    v174 = 0xE100000000000000;
    v41 = [v36 logIdentifier];
    v42 = sub_22A4DD5EC();
    v44 = v43;

    MEMORY[0x22AAD08C0](v42, v44);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v45 = sub_2295A3E30(v173, v174, v175);

    *(v39 + 4) = v45;
    _os_log_impl(&dword_229538000, v37, v38, "%s Unable to find accessory/home", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v39, -1, -1);
  }

  (*(v6 + 8))(v9, v5);
}

void sub_2296FEBEC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v106 = sub_22A4DD07C();
  v7 = *(v106 - 8);
  v8 = MEMORY[0x28223BE20](v106);
  v10 = &v99[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v99[-v12];
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v99[-v15];
  MEMORY[0x28223BE20](v14);
  v18 = &v99[-v17];
  v108 = [v3 accessory];
  if (!v108)
  {
    sub_2296F8604();
    v33 = v3;
    v34 = sub_22A4DD05C();
    v35 = sub_22A4DDCEC();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = v7;
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 136315138;
      v110 = v38;
      v111 = 91;
      v112 = 0xE100000000000000;
      v39 = [v33 logIdentifier];
      v40 = sub_22A4DD5EC();
      v42 = v41;

      MEMORY[0x22AAD08C0](v40, v42);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v43 = sub_2295A3E30(v111, v112, &v110);

      *(v37 + 4) = v43;
      _os_log_impl(&dword_229538000, v34, v35, "%s Unable to find accessory", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x22AAD4E50](v38, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v36 + 8))(v10, v106);
    }

    else
    {

      (*(v7 + 8))(v10, v106);
    }

    return;
  }

  v107 = ObjectType;
  v104 = v7;
  v19 = sub_2296F73E0(a2);
  v20 = sub_2296727F4(v19);

  v21 = sub_2296F73E0(a1);
  v22 = sub_2296727F4(v21);

  if (sub_2296CBB24(v20, v22))
  {

    sub_2296F8604();
    v23 = v3;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCDC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315138;
      v110 = v27;
      v111 = 91;
      v112 = 0xE100000000000000;
      v28 = [v23 logIdentifier];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v111, v112, &v110);

      *(v26 + 4) = v32;
      _os_log_impl(&dword_229538000, v24, v25, "%s New pairings are the same as current pairings", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v104 + 8))(v18, v106);
    return;
  }

  if (*(v20 + 16) <= *(v22 + 16) >> 3)
  {
    v111 = v22;

    sub_22975E244(v20);
    v44 = v111;
  }

  else
  {

    v44 = sub_22975EB68(v20, v22);
  }

  if (*(v22 + 16) <= *(v20 + 16) >> 3)
  {
    v111 = v20;
    sub_22975E244(v22);

    v45 = v111;
  }

  else
  {
    v45 = sub_22975EB68(v22, v20);
  }

  v47 = sub_229707260(v46, v44);

  v49 = sub_229707260(v48, v45);

  v50 = v47 & 0xC000000000000001;
  if ((v47 & 0xC000000000000001) != 0)
  {
    if (!sub_22A4DE0EC())
    {
LABEL_19:
      if ((v49 & 0xC000000000000001) != 0)
      {
        if (sub_22A4DE0EC())
        {
          goto LABEL_21;
        }
      }

      else if (*(v49 + 16))
      {
        goto LABEL_21;
      }

      sub_2296F8604();
      v89 = v3;
      v90 = sub_22A4DD05C();
      v91 = sub_22A4DDCCC();

      if (os_log_type_enabled(v90, v91))
      {
        v92 = swift_slowAlloc();
        v93 = swift_slowAlloc();
        *v92 = 136315138;
        v110 = v93;
        v111 = 91;
        v112 = 0xE100000000000000;
        v94 = [v89 logIdentifier];
        v95 = sub_22A4DD5EC();
        v97 = v96;

        MEMORY[0x22AAD08C0](v95, v97);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v98 = sub_2295A3E30(v111, v112, &v110);

        *(v92 + 4) = v98;
        _os_log_impl(&dword_229538000, v90, v91, "%s Not inserting connected ecosystems changed bulletin because all added/removed pairings are for Apple Home/System Commissioner", v92, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v93);
        MEMORY[0x22AAD4E50](v93, -1, -1);
        MEMORY[0x22AAD4E50](v92, -1, -1);
      }

      (*(v104 + 8))(v16, v106);
      return;
    }
  }

  else if (!*(v47 + 16))
  {
    goto LABEL_19;
  }

LABEL_21:
  sub_2296F8604();
  v51 = v3;

  v52 = sub_22A4DD05C();
  v53 = sub_22A4DDCCC();

  v54 = os_log_type_enabled(v52, v53);
  v105 = v51;
  if (v54)
  {
    v55 = swift_slowAlloc();
    v103 = v47 & 0xC000000000000001;
    v56 = v55;
    v57 = swift_slowAlloc();
    v102 = v57;
    *v56 = 136315650;
    v110 = v57;
    v111 = 91;
    v112 = 0xE100000000000000;
    v58 = [v51 logIdentifier];
    v101 = v52;
    v59 = v58;
    v60 = sub_22A4DD5EC();
    v100 = v53;
    v62 = v61;

    MEMORY[0x22AAD08C0](v60, v62);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v63 = sub_2295A3E30(v111, v112, &v110);

    *(v56 + 4) = v63;
    *(v56 + 12) = 2080;
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    v64 = sub_22A4DDB7C();
    v66 = sub_2295A3E30(v64, v65, &v110);

    *(v56 + 14) = v66;
    *(v56 + 22) = 2080;
    v67 = sub_22A4DDB7C();
    v69 = v68;

    v70 = sub_2295A3E30(v67, v69, &v110);

    *(v56 + 24) = v70;
    v71 = v101;
    _os_log_impl(&dword_229538000, v101, v100, "%s Added pairings %s. Removed pairings: %s", v56, 0x20u);
    v72 = v102;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v72, -1, -1);
    v73 = v56;
    v50 = v103;
    MEMORY[0x22AAD4E50](v73, -1, -1);
  }

  else
  {
  }

  (*(v104 + 8))(v13, v106);
  if (v50)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    sub_229707F80();
    sub_22A4DDBAC();
    v75 = v111;
    v74 = v112;
    v76 = v113;
    v77 = v114;
    v78 = v115;
  }

  else
  {
    v79 = -1 << *(v47 + 32);
    v74 = v47 + 56;
    v76 = ~v79;
    v80 = -v79;
    if (v80 < 64)
    {
      v81 = ~(-1 << v80);
    }

    else
    {
      v81 = -1;
    }

    v78 = v81 & *(v47 + 56);

    v77 = 0;
    v75 = v47;
  }

  v106 = v76;
  v82 = (v76 + 64) >> 6;
  if (v75 < 0)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v83 = v77;
    v84 = v78;
    v85 = v77;
    if (!v78)
    {
      break;
    }

LABEL_35:
    v86 = (v84 - 1) & v84;
    v87 = *(*(v75 + 48) + ((v85 << 9) | (8 * __clz(__rbit64(v84)))));
    if (!v87)
    {
LABEL_41:
      sub_22953EE84(v75);

      return;
    }

    while (1)
    {
      v110 = v87;
      sub_229704704(&v110, v108, v105);

      v77 = v85;
      v78 = v86;
      if ((v75 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_37:
      v88 = sub_22A4DE12C();
      if (v88)
      {
        v109 = v88;
        sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
        swift_dynamicCast();
        v87 = v110;
        v85 = v77;
        v86 = v78;
        if (v110)
        {
          continue;
        }
      }

      goto LABEL_41;
    }
  }

  while (1)
  {
    v85 = v83 + 1;
    if (__OFADD__(v83, 1))
    {
      break;
    }

    if (v85 >= v82)
    {
      goto LABEL_41;
    }

    v84 = *(v74 + 8 * v85);
    ++v83;
    if (v84)
    {
      goto LABEL_35;
    }
  }

  __break(1u);
}

uint64_t sub_2296FF6DC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v32[1] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD26C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_22A4DD29C();
  v12 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v14 = v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [v3 workQueue];
  if (v15)
  {
    v16 = v15;
    v17 = swift_allocObject();
    v18 = v34;
    *(v17 + 16) = v33;
    *(v17 + 24) = v18;
    v40 = sub_2295704E8;
    v41 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v38 = sub_22953E640;
    v39 = &block_descriptor_93_0;
    v19 = _Block_copy(&aBlock);

    sub_22A4DD28C();
    v42 = MEMORY[0x277D84F90];
    sub_229707FE8(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
    sub_22953E5DC();
    sub_22A4DE03C();
    MEMORY[0x22AAD0F80](0, v14, v11, v19);
    _Block_release(v19);

    (*(v9 + 8))(v11, v8);
    (*(v12 + 8))(v14, v35);
  }

  else
  {
    v21 = v5;
    v35 = v4;
    sub_2296F8604();
    v22 = v3;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v42 = v26;
      *v25 = 136315138;
      aBlock = 91;
      v37 = 0xE100000000000000;
      v27 = [v22 logIdentifier];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(aBlock, v37, &v42);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_229538000, v23, v24, "%s Unable to find accessory", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    return (*(v21 + 8))(v7, v35);
  }
}

void sub_2296FFC04(void *a1, void *a2, void *a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v86 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v86 - v16;
  v18 = [v3 matterDevice];
  if (!v18)
  {
LABEL_6:
    sub_2296F8604();
    v21 = v4;
    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = v9;
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v103 = v26;
      *v25 = 136315138;
      aBlock = 91;
      v98 = 0xE100000000000000;
      v27 = [v21 logIdentifier];
      v28 = sub_22A4DD5EC();
      v93 = v8;
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(aBlock, v98, &v103);

      *(v25 + 4) = v31;
      _os_log_impl(&dword_229538000, v22, v23, "%s Matter device is not available", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);

      (*(v24 + 8))(v12, v93);
    }

    else
    {

      (*(v9 + 8))(v12, v8);
    }

    v32 = [objc_opt_self() hmfErrorWithCode_];
    v33 = sub_22A4DB3DC();

    [a3 respondWithError_];
    goto LABEL_19;
  }

  v19 = v18;
  v95 = [v4 workQueue];
  if (!v95)
  {

    goto LABEL_6;
  }

  v94 = v9;
  v91 = a3;
  v92 = v19;
  v88 = v15;
  if (a1)
  {
    v20 = a1;
  }

  else
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v20 = sub_22A4DDEBC();
  }

  v34 = objc_allocWithZone(MEMORY[0x277CD5420]);
  v35 = a1;
  v36 = [v34 init];
  [v36 setIdentifyTime_];
  sub_2296F8604();
  v37 = v4;
  v38 = a2;
  v39 = v20;
  v40 = sub_22A4DD05C();
  v41 = sub_22A4DDCCC();

  v42 = os_log_type_enabled(v40, v41);
  v90 = v37;
  if (v42)
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v89 = v36;
    v45 = v44;
    v87 = swift_slowAlloc();
    v103 = v87;
    *v43 = 136315650;
    aBlock = 91;
    v98 = 0xE100000000000000;
    v46 = [v37 logIdentifier];
    v47 = sub_22A4DD5EC();
    v93 = v39;
    v48 = v47;
    v49 = v8;
    v51 = v50;

    MEMORY[0x22AAD08C0](v48, v51);
    v8 = v49;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v52 = sub_2295A3E30(aBlock, v98, &v103);

    *(v43 + 4) = v52;
    v39 = v93;
    *(v43 + 12) = 2112;
    *(v43 + 14) = v38;
    *(v43 + 22) = 2112;
    *(v43 + 24) = v39;
    *v45 = v38;
    v45[1] = v39;
    v53 = v38;
    v54 = v39;
    _os_log_impl(&dword_229538000, v40, v41, "%s Issuing identify command with interval %@ to %@", v43, 0x20u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7D0, &unk_22A578D90);
    swift_arrayDestroy();
    v55 = v45;
    v36 = v89;
    MEMORY[0x22AAD4E50](v55, -1, -1);
    v56 = v87;
    __swift_destroy_boxed_opaque_existential_0(v87);
    MEMORY[0x22AAD4E50](v56, -1, -1);
    MEMORY[0x22AAD4E50](v43, -1, -1);

    v57 = *(v94 + 8);
    v57(v17, v49);
  }

  else
  {

    v57 = *(v94 + 8);
    v57(v17, v8);
  }

  v58 = v95;
  v59 = objc_allocWithZone(MEMORY[0x277CD5270]);
  v60 = v92;
  v61 = [v59 initWithDevice:v92 endpointID:v39 queue:v58];
  if (v61)
  {
    v33 = v61;
    v62 = swift_allocObject();
    v63 = v90;
    v64 = v39;
    v65 = v91;
    v62[2] = v90;
    v62[3] = v65;
    v62[4] = ObjectType;
    v101 = sub_229707F64;
    v102 = v62;
    aBlock = MEMORY[0x277D85DD0];
    v98 = 1107296256;
    v99 = sub_2295AAF60;
    v100 = &block_descriptor_20;
    v66 = _Block_copy(&aBlock);
    v67 = v63;
    v68 = v65;

    [v33 identifyWithParams:v36 expectedValues:0 expectedValueInterval:0 completion:v66];
    _Block_release(v66);
  }

  else
  {
    v89 = v36;
    v93 = v8;
    v69 = v88;
    sub_2296F8604();
    v70 = v90;
    v71 = v39;
    v72 = sub_22A4DD05C();
    v73 = sub_22A4DDCEC();

    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      ObjectType = swift_slowAlloc();
      v103 = ObjectType;
      *v74 = 136315394;
      aBlock = 91;
      v98 = 0xE100000000000000;
      v76 = [v70 logIdentifier];
      v77 = sub_22A4DD5EC();
      v79 = v78;

      MEMORY[0x22AAD08C0](v77, v79);
      v58 = v95;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v80 = sub_2295A3E30(aBlock, v98, &v103);

      *(v74 + 4) = v80;
      *(v74 + 12) = 2112;
      *(v74 + 14) = v71;
      *v75 = v71;
      v81 = v71;
      _os_log_impl(&dword_229538000, v72, v73, "%s Failed to find identify cluster for endpoint: %@", v74, 0x16u);
      sub_22953EAE4(v75, &qword_27D87D7D0, &unk_22A578D90);
      v82 = v75;
      v60 = v92;
      MEMORY[0x22AAD4E50](v82, -1, -1);
      v83 = ObjectType;
      __swift_destroy_boxed_opaque_existential_0(ObjectType);
      MEMORY[0x22AAD4E50](v83, -1, -1);
      MEMORY[0x22AAD4E50](v74, -1, -1);
    }

    v57(v69, v93);
    v84 = v91;
    v85 = [objc_opt_self() hmErrorWithCode_];
    v33 = sub_22A4DB3DC();

    [v84 respondWithError_];
  }

LABEL_19:
}

id sub_2297004E0(void *a1, void *a2, void *a3)
{
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v10 = a1;
    sub_2296F8604();
    v11 = a1;
    v12 = a2;
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v35 = a3;
      v16 = v15;
      v33 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v34 = v17;
      *v16 = 136315394;
      v36 = 91;
      v37 = 0xE100000000000000;
      v38 = v17;
      v18 = [v12 logIdentifier];
      v19 = sub_22A4DD5EC();
      v21 = v20;

      v32 = v14;
      MEMORY[0x22AAD08C0](v19, v21);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v22 = sub_2295A3E30(v36, v37, &v38);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2112;
      v23 = a1;
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v16 + 14) = v24;
      v25 = v33;
      *v33 = v24;
      _os_log_impl(&dword_229538000, v13, v32, "%s Failed to identify accessory with error: %@", v16, 0x16u);
      sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v25, -1, -1);
      v26 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v26, -1, -1);
      v27 = v16;
      a3 = v35;
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v28 = [objc_opt_self() hmErrorWithCode_];
    v29 = sub_22A4DB3DC();

    [a3 respondWithError_];
  }

  return [a3 respondWithSuccess];
}

uint64_t sub_2297009A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_229569B30;

  return sub_2297EEF40(a5, a6);
}

uint64_t sub_229700C10(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DB21C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v47[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_22A4DD07C();
  v53 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v47[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_2296F8604();
  (*(v5 + 16))(v7, a1, v4);
  v11 = v1;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();

  v14 = os_log_type_enabled(v12, v13);
  v52 = v11;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v51 = a1;
    v16 = v15;
    v50 = swift_slowAlloc();
    *&v58 = v50;
    *v16 = 136315394;
    v56 = 91;
    v57 = 0xE100000000000000;
    v17 = [v11 logIdentifier];
    v48 = v13;
    v18 = v17;
    v19 = sub_22A4DD5EC();
    v49 = v8;
    v20 = v19;
    v21 = ObjectType;
    v23 = v22;

    MEMORY[0x22AAD08C0](v20, v23);
    ObjectType = v21;

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(v56, v57, &v58);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2080;
    sub_229707FE8(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v25 = sub_22A4DE5CC();
    v27 = v26;
    (*(v5 + 8))(v7, v4);
    v28 = sub_2295A3E30(v25, v27, &v58);

    *(v16 + 14) = v28;
    _os_log_impl(&dword_229538000, v12, v48, "%s Handling notification: %s", v16, 0x16u);
    v29 = v50;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v29, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    (*(v53 + 8))(v10, v49);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v53 + 8))(v10, v8);
  }

  v30 = sub_22A4DB1EC();
  v31 = sub_22A4DD5EC();
  v33 = v32;
  if (v31 == sub_22A4DD5EC() && v33 == v34)
  {
  }

  else
  {
    v35 = sub_22A4DE60C();

    if ((v35 & 1) == 0)
    {
      return result;
    }
  }

  v37 = sub_22A4DB20C();
  if (!v37)
  {
    goto LABEL_15;
  }

  v38 = v37;
  v54 = sub_22A4DD5EC();
  v55 = v39;
  sub_22A4DE18C();
  if (!*(v38 + 16) || (v40 = sub_2295402E8(&v56), (v41 & 1) == 0))
  {

    sub_22954045C(&v56);
LABEL_15:
    v58 = 0u;
    v59 = 0u;
    return sub_22953EAE4(&v58, &unk_27D87DE60, &unk_22A57A960);
  }

  sub_2295404B0(*(v38 + 56) + 32 * v40, &v58);
  sub_22954045C(&v56);

  if (!*(&v59 + 1))
  {
    return sub_22953EAE4(&v58, &unk_27D87DE60, &unk_22A57A960);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v42 = v56;
    v43 = v57;
    v44 = swift_allocObject();
    v45 = v52;
    v44[2] = v52;
    v44[3] = v42;
    v44[4] = v43;
    v44[5] = ObjectType;
    v46 = v45;
    sub_2296FF6DC(sub_229707E88, v44);
  }

  return result;
}

uint64_t sub_229701174(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  v9 = a1;
  sub_2296F9DBC(a2, a3, sub_229707E94, v8);
}

uint64_t sub_229701210(void *a1, void *a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v9 = a1;
    sub_2296F8604();
    v10 = a1;
    v11 = a2;
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCEC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v27 = v15;
      *v14 = 136315394;
      v28 = 91;
      v29 = 0xE100000000000000;
      v30 = v15;
      v16 = [v11 logIdentifier];
      v17 = sub_22A4DD5EC();
      v19 = v18;

      MEMORY[0x22AAD08C0](v17, v19);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v20 = sub_2295A3E30(v28, v29, &v30);

      *(v14 + 4) = v20;
      *(v14 + 12) = 2112;
      v21 = a1;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v22;
      v23 = v26;
      *v26 = v22;
      _os_log_impl(&dword_229538000, v12, v13, "%s Failed to update fabric label with error: %@", v14, 0x16u);
      sub_22953EAE4(v23, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      v24 = v27;
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    else
    {
    }

    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

uint64_t sub_2297015A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[23] = a6;
  v7[24] = a7;
  v7[21] = a4;
  v7[22] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v7[25] = v8;
  v7[26] = *(v8 - 8);
  v7[27] = swift_task_alloc();
  v9 = sub_22A4DCBDC();
  v7[28] = v9;
  v7[29] = *(v9 - 8);
  v7[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FE50, &qword_22A580970);
  v7[31] = swift_task_alloc();
  v7[32] = swift_task_alloc();
  v7[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FE58, &qword_22A580978);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v10 = sub_22A4DD07C();
  v7[36] = v10;
  v7[37] = *(v10 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2297017C0, 0, 0);
}

uint64_t sub_2297017C0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[40] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[41] = v2;
    *v2 = v0;
    v2[1] = sub_229701A20;
    v3 = v0[35];
    v4 = v0[23];

    return sub_229702578(v3, v4);
  }

  else
  {
    sub_2296F8604();
    v6 = sub_22A4DD05C();
    v7 = sub_22A4DDCEC();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_229538000, v6, v7, "Lost reference to matter adapter", v8, 2u);
      MEMORY[0x22AAD4E50](v8, -1, -1);
    }

    v9 = v0[39];
    v10 = v0[36];
    v11 = v0[37];
    v12 = v0[22];

    (*(v11 + 8))(v9, v10);
    if (v12)
    {
      v13 = v0[22];
      v14 = [objc_opt_self() hmErrorWithCode_];
      v15 = sub_22A4DB3DC();

      [v13 rejectWithError_];
    }

    v16 = v0[1];

    return v16();
  }
}

uint64_t sub_229701A20()
{

  return MEMORY[0x2822009F8](sub_229701B1C, 0, 0);
}

uint64_t sub_229701B1C()
{
  v48 = v0;
  sub_229564F88(*(v0 + 280), *(v0 + 272), &unk_27D87FE58, &qword_22A580978);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = *(v0 + 272);
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *(v0 + 176);
    v4 = *v2;
    v5 = *(v0 + 320);
    v6 = *(v0 + 280);
    if (!v3)
    {
      sub_22953EAE4(*(v0 + 280), &unk_27D87FE58, &qword_22A580978);

LABEL_19:

      v43 = *(v0 + 8);

      return v43();
    }

    v7 = sub_22A4DB3DC();
    v8 = sub_22A4DB3DC();

    [v3 rejectWithError_];
    v9 = v6;
LABEL_18:
    sub_22953EAE4(v9, &unk_27D87FE58, &qword_22A580978);
    goto LABEL_19;
  }

  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 224);
  v13 = *(v0 + 232);
  sub_2297081C8(v2, v11);
  sub_229564F88(v11, v10, &qword_27D87FE50, &qword_22A580970);
  if ((*(v13 + 48))(v10, 1, v12) == 1)
  {
    sub_22953EAE4(*(v0 + 248), &qword_27D87FE50, &qword_22A580970);
    goto LABEL_12;
  }

  (*(*(v0 + 232) + 32))(*(v0 + 240), *(v0 + 248), *(v0 + 224));
  v14 = sub_229702F90();
  *(v0 + 336) = v14;
  if (!v14)
  {
    (*(*(v0 + 232) + 8))(*(v0 + 240), *(v0 + 224));
LABEL_12:
    v23 = *(v0 + 320);
    sub_2296F8604();
    v24 = v23;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = *(v0 + 320);
      v28 = *(v0 + 296);
      v46 = *(v0 + 304);
      v29 = *(v0 + 288);
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 136315138;
      v47[0] = v31;
      v47[1] = 91;
      v47[2] = 0xE100000000000000;
      v32 = [v27 logIdentifier];
      v33 = sub_22A4DD5EC();
      v35 = v34;

      MEMORY[0x22AAD08C0](v33, v35);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v36 = sub_2295A3E30(91, 0xE100000000000000, v47);

      *(v30 + 4) = v36;
      _os_log_impl(&dword_229538000, v25, v26, "%s No change in accessory information", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v30, -1, -1);

      (*(v28 + 8))(v46, v29);
      v37 = *(v0 + 176);
      if (!v37)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      v40 = *(v0 + 288);

      (*(v39 + 8))(v38, v40);
      v37 = *(v0 + 176);
      if (!v37)
      {
LABEL_17:
        v41 = *(v0 + 280);
        v42 = *(v0 + 256);

        sub_22953EAE4(v42, &qword_27D87FE50, &qword_22A580970);
        v9 = v41;
        goto LABEL_18;
      }
    }

    [v37 fulfillWithValue_];
    goto LABEL_17;
  }

  v15 = v14;
  v45 = *(v0 + 320);
  v17 = *(v0 + 208);
  v16 = *(v0 + 216);
  v18 = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_22A576190;
  *(v19 + 32) = v15;
  sub_229562F68(0, &qword_27D87FD80, off_278666060);
  v20 = v15;
  v21 = sub_22A4DD81C();
  *(v0 + 344) = v21;

  *(v0 + 16) = v0;
  *(v0 + 24) = sub_229702148;
  swift_continuation_init();
  *(v0 + 136) = v18;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v17 + 32))(boxed_opaque_existential_1, v16, v18);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229787290;
  *(v0 + 104) = &block_descriptor_86;
  [v45 runTransactions:v21 completion:v0 + 80];
  (*(v17 + 8))(boxed_opaque_existential_1, v18);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_229702148()
{
  v1 = *(*v0 + 48);
  *(*v0 + 352) = v1;
  if (v1)
  {
    v2 = sub_2297023B4;
  }

  else
  {
    v2 = sub_229702258;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229702258()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 336);
  v3 = *(v0 + 320);
  v4 = *(v0 + 280);
  v5 = *(v0 + 256);
  v7 = *(v0 + 232);
  v6 = *(v0 + 240);
  v8 = *(v0 + 224);
  if (v1)
  {
    [*(v0 + 176) fulfillWithValue_];
    v9 = v2;
  }

  else
  {
    v9 = *(v0 + 320);
    v3 = *(v0 + 336);
  }

  (*(v7 + 8))(v6, v8);
  sub_22953EAE4(v5, &qword_27D87FE50, &qword_22A580970);
  sub_22953EAE4(v4, &unk_27D87FE58, &qword_22A580978);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_2297023B4(uint64_t a1)
{
  v2 = *(v1 + 344);
  v3 = *(v1 + 176);
  swift_willThrow();

  v4 = *(v1 + 352);
  if (v3)
  {
    v5 = *(v1 + 336);
    v6 = *(v1 + 320);
    v20 = *(v1 + 280);
    v7 = *(v1 + 256);
    v8 = *(v1 + 232);
    v9 = *(v1 + 240);
    v10 = *(v1 + 224);
    v11 = *(v1 + 176);
    v12 = sub_22A4DB3DC();
    [v11 rejectWithError_];

    (*(v8 + 8))(v9, v10);
    v13 = v20;
  }

  else
  {

    v14 = *(v1 + 336);
    v13 = *(v1 + 280);
    v7 = *(v1 + 256);
    v16 = *(v1 + 232);
    v15 = *(v1 + 240);
    v17 = *(v1 + 224);

    (*(v16 + 8))(v15, v17);
  }

  sub_22953EAE4(v7, &qword_27D87FE50, &qword_22A580970);
  sub_22953EAE4(v13, &unk_27D87FE58, &qword_22A580978);

  v18 = *(v1 + 8);

  return v18();
}

uint64_t sub_229702578(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_22A4DCD0C();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v6 = sub_22A4DCBDC();
  v3[13] = v6;
  v3[14] = *(v6 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229702718, 0, 0);
}

uint64_t sub_229702718()
{
  sub_22A4DCCEC();
  v1 = swift_task_alloc();
  v0[17] = v1;
  *v1 = v0;
  v1[1] = sub_2297027C4;
  v2 = v0[16];
  v3 = v0[12];
  v4 = v0[3];

  return MEMORY[0x282171748](v2, v4, v3);
}

uint64_t sub_2297027C4()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  *(*v1 + 144) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_229702CB4;
  }

  else
  {
    v5 = sub_229702934;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_229702934()
{
  v37 = v0;
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[4];
  sub_2296F8604();
  (*(v4 + 16))(v2, v1, v3);
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCCC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v11 = v0[15];
  v12 = v0[13];
  v13 = v0[9];
  v14 = v0[6];
  v15 = v0[7];
  if (v9)
  {
    v35 = v0[9];
    v16 = v0[4];
    v17 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v17 = 136315394;
    v36[0] = v34;
    v36[1] = 91;
    v36[2] = 0xE100000000000000;
    v18 = [v16 logIdentifier];
    v33 = v14;
    v19 = sub_22A4DD5EC();
    v32 = v8;
    v21 = v20;

    MEMORY[0x22AAD08C0](v19, v21);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v22 = sub_2295A3E30(91, 0xE100000000000000, v36);

    *(v17 + 4) = v22;
    *(v17 + 12) = 2080;
    sub_229707FE8(&unk_27D87FE70, MEMORY[0x277D173A0], MEMORY[0x277D173A8]);
    v23 = sub_22A4DE5CC();
    v25 = v24;
    (*(v10 + 8))(v11, v12);
    v26 = sub_2295A3E30(v23, v25, v36);

    *(v17 + 14) = v26;
    _os_log_impl(&dword_229538000, v7, v32, "%s Did read basic information %s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v34, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);

    (*(v15 + 8))(v35, v33);
  }

  else
  {

    (*(v10 + 8))(v11, v12);
    (*(v15 + 8))(v13, v14);
  }

  v27 = v0[13];
  v28 = v0[14];
  v29 = v0[2];
  (*(v28 + 32))(v29, v0[16], v27);
  (*(v28 + 56))(v29, 0, 1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FE58, &qword_22A580978);
  swift_storeEnumTagMultiPayload();

  v30 = v0[1];

  return v30();
}

uint64_t sub_229702CB4()
{
  v28 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 32);
  sub_2296F8604();
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 144);
    v24 = *(v0 + 56);
    v25 = *(v0 + 48);
    v26 = *(v0 + 64);
    v8 = *(v0 + 32);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v9 = 136315394;
    v27[0] = v11;
    v27[1] = 91;
    v27[2] = 0xE100000000000000;
    v12 = [v8 logIdentifier];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(91, 0xE100000000000000, v27);

    *(v9 + 4) = v16;
    *(v9 + 12) = 2112;
    v17 = v7;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 14) = v18;
    *v10 = v18;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to read required attributes with error: %@", v9, 0x16u);
    sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    (*(v24 + 8))(v26, v25);
  }

  else
  {
    v20 = *(v0 + 56);
    v19 = *(v0 + 64);
    v21 = *(v0 + 48);

    (*(v20 + 8))(v19, v21);
  }

  **(v0 + 16) = *(v0 + 144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FE58, &qword_22A580978);
  swift_storeEnumTagMultiPayload();

  v22 = *(v0 + 8);

  return v22();
}

void *sub_229702F90()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 accessory];
  if (!v5)
  {
    goto LABEL_21;
  }

  v6 = v5;
  v7 = [v5 transactionWithObjectChangeType_];
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

LABEL_21:
    sub_2296F8604();
    v29 = v0;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v32 = 136315138;
      v95 = 91;
      v96 = 0xE100000000000000;
      v97 = v33;
      v34 = [v29 logIdentifier];
      v35 = sub_22A4DD5EC();
      v37 = v36;

      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v95, v96, &v97);

      *(v32 + 4) = v38;
      _os_log_impl(&dword_229538000, v30, v31, "%s Unable to create accessory model", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  v9 = v8;
  v10 = sub_22A4DCBBC();
  if (!v11)
  {
LABEL_11:
    v18 = 0;
    goto LABEL_12;
  }

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {
    goto LABEL_10;
  }

  v13 = [v6 providedName];
  v14 = sub_22A4DD5EC();
  v16 = v15;

  v17 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v17 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v17)
  {
LABEL_10:

    goto LABEL_11;
  }

  v39 = v7;
  v40 = sub_22A4DD5AC();

  [v9 setProvidedName_];

  v18 = 1;
LABEL_12:
  v19 = sub_22A4DCBCC();
  if (!v20)
  {
    goto LABEL_28;
  }

  v21 = v19;
  v22 = v20;
  v23 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v23 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
    goto LABEL_26;
  }

  v24 = [v6 model];
  if (v24)
  {
    v25 = v24;
    v26 = sub_22A4DD5EC();
    v28 = v27;

    if (v21 == v26 && v22 == v28)
    {

LABEL_26:

      goto LABEL_28;
    }

    v41 = sub_22A4DE60C();

    if (v41)
    {
      goto LABEL_26;
    }
  }

  v42 = v7;
  v43 = sub_22A4DD5AC();

  [v9 setModel_];

  v18 = 1;
LABEL_28:
  v44 = sub_22A4DCB7C();
  if (!v45)
  {
    goto LABEL_39;
  }

  v46 = v44;
  v47 = v45;
  v48 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v48 = v44 & 0xFFFFFFFFFFFFLL;
  }

  if (!v48)
  {
    goto LABEL_37;
  }

  v49 = [v6 manufacturer];
  if (v49)
  {
    v50 = v49;
    v51 = sub_22A4DD5EC();
    v53 = v52;

    if (v46 == v51 && v47 == v53)
    {

LABEL_37:

      goto LABEL_39;
    }

    v54 = sub_22A4DE60C();

    if (v54)
    {
      goto LABEL_37;
    }
  }

  v55 = v7;
  v56 = sub_22A4DD5AC();

  [v9 setManufacturer_];

  v18 = 1;
LABEL_39:
  v57 = sub_22A4DCB9C();
  if (!v58)
  {
    goto LABEL_50;
  }

  v59 = v57;
  v60 = v58;
  v61 = HIBYTE(v58) & 0xF;
  if ((v58 & 0x2000000000000000) == 0)
  {
    v61 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v61)
  {
    goto LABEL_48;
  }

  v62 = [v6 displayableFirmwareVersion];
  if (v62)
  {
    v63 = v62;
    v64 = sub_22A4DD5EC();
    v66 = v65;

    if (v59 == v64 && v60 == v66)
    {

LABEL_48:

      goto LABEL_50;
    }

    v67 = sub_22A4DE60C();

    if (v67)
    {
      goto LABEL_48;
    }
  }

  v68 = v7;
  v69 = sub_22A4DD5AC();

  [v9 setDisplayableFirmwareVersion_];

  v18 = 1;
LABEL_50:
  v70 = sub_22A4DCBAC();
  if ((v70 & 0x100000000) != 0)
  {
    goto LABEL_59;
  }

  LODWORD(v95) = v70;
  sub_22A4DE5CC();
  v71 = objc_allocWithZone(HMDAccessoryVersion);
  v72 = sub_22A4DD5AC();

  v73 = [v71 initWithMatterVersionString_];

  v74 = v73;
  v75 = [v6 firmwareVersion];
  if (!v75)
  {

    goto LABEL_55;
  }

  v76 = v75;
  sub_229562F68(0, &qword_27D87FE68, off_278665FF8);
  v77 = sub_22A4DDEDC();

  if ((v77 & 1) == 0)
  {
LABEL_55:
    v78 = v7;
    v79 = [v74 rawVersionString];
    if (!v79)
    {
      sub_22A4DD5EC();
      v79 = sub_22A4DD5AC();
    }

    [v9 setFirmwareVersion_];

    v18 = 1;
  }

LABEL_59:
  v80 = sub_22A4DCB8C();
  if (v81)
  {
    v82 = v80;
    v83 = v81;
    v84 = HIBYTE(v81) & 0xF;
    if ((v81 & 0x2000000000000000) == 0)
    {
      v84 = v80 & 0xFFFFFFFFFFFFLL;
    }

    if (v84)
    {
      v85 = [v6 serialNumber];
      if (!v85)
      {
        goto LABEL_74;
      }

      v86 = v85;
      v87 = sub_22A4DD5EC();
      v89 = v88;

      if (v82 == v87 && v83 == v89)
      {

        if (v18)
        {
          return v9;
        }

        goto LABEL_71;
      }

      v90 = sub_22A4DE60C();

      if ((v90 & 1) == 0)
      {
LABEL_74:
        v92 = v7;
        v93 = sub_22A4DD5AC();

        [v9 setSerialNumber_];

        return v9;
      }
    }
  }

  if (!v18)
  {
LABEL_71:

    return 0;
  }

  return v9;
}

void sub_2297037E4(unint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v56 - v14;
  if (a1)
  {
    v16 = sub_229703E88(a1);
    v17 = [a5 chipStorage];
    v18 = [v17 pairings];

    if (v18 && (sub_229562F68(0, &unk_27D87CF00, 0x277CD1880), sub_229707F80(), v19 = sub_22A4DDB6C(), v18, , v20 = sub_2296CC298(v19, v16), , , (v20 & 1) != 0))
    {
    }

    else
    {
      v21 = [a5 transactionWithObjectChangeType_];
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = v22;
        sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
        sub_229707F80();
        v24 = sub_22A4DDB5C();

        [v23 setChipPairings_];

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_22A576190;
        *(v25 + 32) = v23;
        sub_229562F68(0, &qword_27D87FD80, off_278666060);
        v26 = v21;
        v58 = sub_22A4DD81C();

        v27 = [a4 runTransactions_];

        v28 = v58;
      }

      else
      {

        sub_2296F8604();
        v44 = a4;
        v45 = sub_22A4DD05C();
        v46 = sub_22A4DDCEC();

        if (os_log_type_enabled(v45, v46))
        {
          v47 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          *v47 = 136315138;
          v59 = 91;
          v60 = 0xE100000000000000;
          v61 = v48;
          v49 = [v44 logIdentifier];
          v50 = sub_22A4DD5EC();
          v51 = v10;
          v53 = v52;

          MEMORY[0x22AAD08C0](v50, v53);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v54 = sub_2295A3E30(v59, v60, &v61);

          *(v47 + 4) = v54;
          _os_log_impl(&dword_229538000, v45, v46, "%s Invalid accessory model", v47, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v48);
          MEMORY[0x22AAD4E50](v48, -1, -1);
          MEMORY[0x22AAD4E50](v47, -1, -1);

          (*(v51 + 8))(v15, v9);
        }

        else
        {

          (*(v10 + 8))(v15, v9);
        }
      }
    }
  }

  else
  {
    sub_2296F8604();
    v29 = a4;
    v30 = a2;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v57 = v10;
      v58 = v9;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *v33 = 136315394;
      v59 = 91;
      v60 = 0xE100000000000000;
      v61 = v35;
      v36 = [v29 logIdentifier];
      v37 = sub_22A4DD5EC();
      v39 = v38;

      MEMORY[0x22AAD08C0](v37, v39);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v40 = sub_2295A3E30(v59, v60, &v61);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2112;
      if (a2)
      {
        v41 = a2;
        v42 = _swift_stdlib_bridgeErrorToNSError();
        v43 = v42;
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      v55 = v58;
      *(v33 + 14) = v42;
      *v34 = v43;
      _os_log_impl(&dword_229538000, v31, v32, "%s Failed to fetch pairings from matter accessory server with error: %@", v33, 0x16u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);

      (*(v57 + 8))(v13, v55);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }
}

unint64_t *sub_229703E88(unint64_t a1)
{
  v2 = sub_22970403C();
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_11:

    v12 = MEMORY[0x277D84F90];
LABEL_12:
    v13 = sub_229672990(v12);

    return v13;
  }

  v3 = sub_22A4DE0EC();
  if (!v3)
  {
    goto LABEL_11;
  }

LABEL_3:
  v14 = MEMORY[0x277D84F90];
  result = sub_22A4DE29C();
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAD13F0](v5, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v5 + 32);
      }

      v7 = v6;
      ++v5;
      v8 = [v6 rootPublicKey];
      v9 = sub_22A4DB62C();
      v11 = v10;

      LOBYTE(v8) = sub_22956EF18(v9, v11, v2);
      sub_2295798D4(v9, v11);
      [objc_allocWithZone(MEMORY[0x277CD1880]) initWithHMMTRPairing:v7 ownedEcosystem:v8 & 1];

      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
    }

    while (v3 != v5);

    v12 = v14;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

id sub_22970403C()
{
  v64 = *MEMORY[0x277D85DE8];
  v1 = [v0 testAllKnownRootPublicKeys];
  if (v1)
  {

    result = [v0 testAllKnownRootPublicKeys];
    if (result)
    {
      v3 = result;
      sub_229673844();
      v4 = sub_22A4DDB6C();

      return v4;
    }

    __break(1u);
    goto LABEL_69;
  }

  v5 = [v0 accessory];
  if (!v5)
  {
    return MEMORY[0x277D84FA0];
  }

  v6 = v5;
  v7 = [v5 home];

  if (!v7)
  {
    return MEMORY[0x277D84FA0];
  }

  v8 = [v7 homeManager];

  if (!v8)
  {
    return MEMORY[0x277D84FA0];
  }

  result = [v8 accessoryBrowser];
  if (!result)
  {
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  v9 = [result chipAccessoryServerBrowser];
  swift_unknownObjectRelease();
  if (!v9)
  {

    return MEMORY[0x277D84FA0];
  }

  result = [v8 homes];
  if (!result)
  {
LABEL_70:
    __break(1u);
    return result;
  }

  v10 = result;
  sub_229562F68(0, &qword_2814017B0, off_278666198);
  v11 = sub_22A4DD83C();

  if (v11 >> 62)
  {
    goto LABEL_35;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v57 = v8;
  v59 = v9;
  if (v12)
  {
LABEL_12:
    v63 = MEMORY[0x277D84F90];
    sub_2295839A0(0, v12 & ~(v12 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
LABEL_67:
      __break(1u);
    }

    v13 = 0;
    v14 = v63;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AAD13F0](v13, v11);
      }

      else
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v12 = sub_22A4DE0EC();
          v57 = v8;
          v59 = v9;
          if (!v12)
          {
            goto LABEL_36;
          }

          goto LABEL_12;
        }

        if (v13 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v15 = *(v11 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 matterFabricID];
      if (!v17)
      {
        break;
      }

      v18 = v17;
      if (![v17 unsignedLongLongValue])
      {

        v9 = 0;
        goto LABEL_26;
      }

      v62 = 0;
      v19 = [v16 storedFabricDataWithError_];
      if (!v19)
      {
        v25 = v62;
        v26 = sub_22A4DB3EC();

        swift_willThrow();
        v9 = 0;
        goto LABEL_26;
      }

      v20 = v19;
      v21 = v62;
      v22 = [v20 rootPublicKey];
      v9 = sub_22A4DB62C();
      v24 = v23;

LABEL_27:
      v63 = v14;
      v8 = v14[2];
      v27 = v14[3];
      if (v8 >= v27 >> 1)
      {
        sub_2295839A0((v27 > 1), v8 + 1, 1);
        v14 = v63;
      }

      ++v13;
      v14[2] = v8 + 1;
      v28 = &v14[2 * v8];
      v28[4] = v9;
      v28[5] = v24;
      if (v12 == v13)
      {

        v9 = v59;
        goto LABEL_37;
      }
    }

    v9 = 0;
LABEL_26:
    v24 = 0xF000000000000000;
    goto LABEL_27;
  }

LABEL_36:

  v14 = MEMORY[0x277D84F90];
LABEL_37:
  v29 = [v9 systemCommissionerFabricRootPublicKey];
  if (v29)
  {
    v30 = v29;
    v31 = sub_22A4DB62C();
    v33 = v32;
  }

  else
  {
    v31 = 0;
    v33 = 0xF000000000000000;
  }

  sub_2295AEF1C(v31, v33);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_65:
    v14 = sub_22958B44C(0, v14[2] + 1, 1, v14);
  }

  v35 = v14[2];
  v34 = v14[3];
  v36 = v35 + 1;
  if (v35 >= v34 >> 1)
  {
    v14 = sub_22958B44C((v34 > 1), v35 + 1, 1, v14);
  }

  v37 = 0;
  v14[2] = v36;
  v38 = &v14[2 * v35];
  v38[4] = v31;
  v38[5] = v33;
  v39 = MEMORY[0x277D84F90];
  v40 = MEMORY[0x277D84F90];
LABEL_44:
  v41 = 16 * v37 + 40;
  while (v36 != v37)
  {
    if (v37 >= v14[2])
    {
      __break(1u);
LABEL_64:
      __break(1u);
      goto LABEL_65;
    }

    ++v37;
    v42 = v41 + 16;
    v43 = *(v14 + v41);
    v41 += 16;
    if (v43 >> 60 != 15)
    {
      v60 = v33;
      v44 = v31;
      v45 = *(v14 + v42 - 24);
      sub_22956C148(v45, v43);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v63 = v40;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2295839A0(0, v40[2] + 1, 1);
        v40 = v63;
      }

      v48 = v40[2];
      v47 = v40[3];
      if (v48 >= v47 >> 1)
      {
        sub_2295839A0((v47 > 1), v48 + 1, 1);
        v40 = v63;
      }

      v40[2] = v48 + 1;
      v49 = &v40[2 * v48];
      v49[4] = v45;
      v49[5] = v43;
      v31 = v44;
      v33 = v60;
      goto LABEL_44;
    }
  }

  v50 = v40[2];
  if (v50)
  {
    v63 = v39;
    sub_22958387C(0, v50, 0);
    v51 = 0;
    v52 = v63;
    while (v51 < v40[2])
    {
      v53 = v40[2 * v51 + 5];
      if (v53 >> 60 == 15)
      {
        goto LABEL_67;
      }

      v61 = *&v40[2 * v51 + 4];
      sub_22956C148(v40[2 * v51 + 4], v53);
      v63 = v52;
      v55 = *(v52 + 16);
      v54 = *(v52 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_22958387C((v54 > 1), v55 + 1, 1);
        v52 = v63;
      }

      ++v51;
      *(v52 + 16) = v55 + 1;
      *(v52 + 16 * v55 + 32) = v61;
      if (v50 == v51)
      {

        goto LABEL_62;
      }
    }

    goto LABEL_64;
  }

  v52 = MEMORY[0x277D84F90];
LABEL_62:
  v56 = sub_2296725BC(v52);

  sub_229590D18(v31, v33);

  return v56;
}

void sub_229704704(uint64_t *a1, void *a2, void *a3)
{
  v7 = sub_22A4DD07C();
  v31 = *(v7 - 8);
  v32 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = objc_allocWithZone(HMDCHIPConnectedEcosystemsChangedBulletin);
  v33 = a2;
  v12 = [v11 initWithAddedPairing:v10 accessory:a2];
  sub_2296F8604();
  v13 = a3;
  v14 = v12;
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v30 = v3;
    v18 = v17;
    v19 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36 = v29;
    *v18 = 136315394;
    v34 = 91;
    v35 = 0xE100000000000000;
    v20 = [v13 logIdentifier];
    v21 = sub_22A4DD5EC();
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(v34, v35, &v36);

    *(v18 + 4) = v24;
    *(v18 + 12) = 2112;
    *(v18 + 14) = v14;
    *v19 = v14;
    v25 = v14;
    _os_log_impl(&dword_229538000, v15, v16, "%s Inserting connected ecosystems changed bulletin %@", v18, 0x16u);
    sub_22953EAE4(v19, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    v26 = v29;
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  (*(v31 + 8))(v9, v32);
  v27 = [v33 bulletinBoard];
  [v27 insertConnectedCHIPEcosystemsChangedBulletin_];
}

void HMDMatterAccessoryAdapter.handle(_:dictionary:flow:hapAccessory:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (v5)
  {

    sub_229800614(a1, a3);
  }
}

void HMDMatterAccessoryAdapter.handle(_:dictionary:hapAccessory:)(void *a1, uint64_t a2)
{
  v4 = [objc_msgSend(objc_opt_self() featuresDataSource)];
  swift_unknownObjectRelease();
  if (v4)
  {
    v5 = a1 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = a1;
    sub_2297EDBBC(v6, a2);
  }
}

Swift::Void __swiftcall HMDMatterAccessoryAdapter.device(_:stateChanged:)(MTRDevice _, MTRDeviceState stateChanged)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v10 = _.super.isa;
  v11 = sub_22A4DD05C();
  v12 = sub_22A4DDCDC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412546;
    *(v13 + 4) = v10;
    *v14 = v10;
    *(v13 + 12) = 2048;
    *(v13 + 14) = stateChanged;
    v15 = v10;
    _os_log_impl(&dword_229538000, v11, v12, "Device %@ state changed to %lu", v13, 0x16u);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v16 = [v3 accessory];
  if (v16)
  {
    v17 = v16;
    objc_opt_self();
    v18 = swift_dynamicCastObjCClass();
    if (v18)
    {
      if (stateChanged == MTRDeviceStateReachable)
      {
        v19 = v18;
        goto LABEL_9;
      }

      if (stateChanged == MTRDeviceStateUnreachable)
      {
        v19 = v18;
        stateChanged = MTRDeviceStateUnknown;
LABEL_9:
        v20 = v17;
        [v19 setReachable_];
        [v19 setRemotelyReachable_];
      }
    }
  }
}

Swift::Void __swiftcall HMDMatterAccessoryAdapter.device(_:receivedAttributeReport:)(MTRDevice _, Swift::OpaquePointer receivedAttributeReport)
{
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v43 = ObjectType;
  sub_2296F8604();

  v12 = _.super.isa;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  v15 = os_log_type_enabled(v13, v14);
  v44 = v5;
  v40 = v9;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v46 = v6;
    v17 = v16;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *&v47 = v19;
    *v17 = 136315394;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v21 = MEMORY[0x22AAD0A20](receivedAttributeReport._rawValue, v20);
    v23 = sub_2295A3E30(v21, v22, &v47);

    *(v17 + 4) = v23;
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    v24 = v12;
    _os_log_impl(&dword_229538000, v13, v14, "Received attribute report %s for device %@", v17, 0x16u);
    sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    v25 = v17;
    v6 = v46;
    MEMORY[0x22AAD4E50](v25, -1, -1);

    v26 = *(v6 + 8);
    v27 = v11;
    v28 = v44;
  }

  else
  {

    v26 = *(v6 + 8);
    v27 = v11;
    v28 = v5;
  }

  v42 = v26;
  v26(v27, v28);
  v30 = *(receivedAttributeReport._rawValue + 2);
  if (v30)
  {
    v31 = (receivedAttributeReport._rawValue + 32);
    v41 = v6 + 8;
    v39 = *MEMORY[0x277CD50B8];
    *&v29 = 138412802;
    v38 = v29;
    do
    {
      v48 = *v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      sub_22A4DBA0C();
      sub_2296F7AE8(v47);
      v35 = v34;
      v36 = objc_allocWithZone(MEMORY[0x277CD51C8]);
      v37 = sub_229706614(v35);
      v32 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v33 = sub_22A4DD47C();

      [v45 handleAttributeReport:v32 dictionary:v33 hapAccessory:{0, v38, v39, v40}];

      ++v31;
      --v30;
    }

    while (v30);
  }
}

Swift::Void __swiftcall HMDMatterAccessoryAdapter.device(_:receivedEventReport:)(MTRDevice _, Swift::OpaquePointer receivedEventReport)
{
  v76[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v67 = sub_22A4DD07C();
  v6 = *(v67 - 8);
  v7 = MEMORY[0x28223BE20](v67);
  v9 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v64 - v10;
  sub_2296F8604();

  v12 = _.super.isa;
  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCCC();

  v15 = os_log_type_enabled(v13, v14);
  v73 = ObjectType;
  v74 = v2;
  v66 = v9;
  if (v15)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    *&v75[0] = v72;
    *v16 = 136315394;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
    v19 = MEMORY[0x22AAD0A20](receivedEventReport._rawValue, v18);
    v21 = sub_2295A3E30(v19, v20, v75);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v12;
    *v17 = v12;
    v22 = v12;
    _os_log_impl(&dword_229538000, v13, v14, "Received event report %s for device %@", v16, 0x16u);
    sub_22953EAE4(v17, &qword_27D87D7D0, &unk_22A578D90);
    v23 = v17;
    v9 = v66;
    MEMORY[0x22AAD4E50](v23, -1, -1);
    v24 = v72;
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x22AAD4E50](v24, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);
  }

  v25 = v11;
  v26 = v67;
  v72 = *(v6 + 8);
  (v72)(v25, v67);
  v28 = *(receivedEventReport._rawValue + 2);
  if (v28)
  {
    v29 = (receivedEventReport._rawValue + 32);
    v71 = v6 + 8;
    v30 = MEMORY[0x277D837E0];
    v65 = *MEMORY[0x277CD50B8];
    *&v27 = 138412802;
    v64 = v27;
    do
    {
      v34 = *v29;
      v35 = objc_allocWithZone(MEMORY[0x277CD5410]);

      v36 = v30;
      v37 = sub_22A4DD47C();
      *&v75[0] = 0;
      v38 = [v35 initWithResponseValue:v37 error:v75];

      if (v38)
      {
        v76[0] = v34;
        v31 = *&v75[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        sub_22A4DBA0C();

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
        v32 = sub_22A4DD47C();

        v33 = [objc_opt_self() untrackedPlaceholderFlow];
        [v74 handleMatterEvent:v38 dictionary:v32 flow:v33];

        v30 = v36;
      }

      else
      {
        v39 = *&v75[0];
        v40 = sub_22A4DB3EC();

        swift_willThrow();
        sub_2296F8604();

        v41 = v40;
        v42 = sub_22A4DD05C();
        v43 = sub_22A4DDCEC();

        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          v69 = swift_slowAlloc();
          v76[0] = v69;
          *v44 = v64;
          v46 = v40;
          v47 = _swift_stdlib_bridgeErrorToNSError();
          *(v44 + 4) = v47;
          v68 = v45;
          *v45 = v47;
          *(v44 + 12) = 2080;
          v48 = sub_22A4DD5EC();
          v50 = *(v34 + 16);
          v70 = v43;
          if (v50)
          {
            v51 = sub_229543DBC(v48, v49);
            v53 = v52;

            if (v53)
            {
              sub_2295404B0(*(v34 + 56) + 32 * v51, v75);
LABEL_15:
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
              v54 = sub_22A4DD66C();
              v56 = sub_2295A3E30(v54, v55, v76);

              *(v44 + 14) = v56;
              *(v44 + 22) = 2080;
              v57 = MEMORY[0x277D837E0];
              v58 = sub_22A4DD4AC();
              v60 = v59;

              v61 = sub_2295A3E30(v58, v60, v76);

              *(v44 + 24) = v61;
              v30 = v57;
              _os_log_impl(&dword_229538000, v42, v70, "Failed to decode event report with error: %@, path: (%s), report: %s", v44, 0x20u);
              v62 = v68;
              sub_22953EAE4(v68, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v62, -1, -1);
              v63 = v69;
              swift_arrayDestroy();
              MEMORY[0x22AAD4E50](v63, -1, -1);
              MEMORY[0x22AAD4E50](v44, -1, -1);

              v9 = v66;
              v26 = v67;
              (v72)(v66, v67);
              goto LABEL_6;
            }
          }

          else
          {
          }

          memset(v75, 0, sizeof(v75));
          goto LABEL_15;
        }

        (v72)(v9, v26);
        v30 = MEMORY[0x277D837E0];
      }

LABEL_6:
      ++v29;
      --v28;
    }

    while (v28);
  }
}

uint64_t sub_229705DC4(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
  v8 = sub_22A4DD83C();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

uint64_t HMDMatterAccessoryAdapter.didUpdateRequiresThreadRouter(for:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2296F8604();
  v8 = a1;
  v9 = v1;
  v10 = sub_22A4DD05C();
  v11 = sub_22A4DDCCC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = ObjectType;
    v13 = v12;
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315394;
    v30 = 91;
    v31 = 0xE100000000000000;
    v32 = v14;
    v15 = [v9 logIdentifier];
    v16 = sub_22A4DD5EC();
    v27 = v4;
    v17 = v16;
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(v30, v31, &v32);

    *(v13 + 4) = v20;
    *(v13 + 12) = 1024;
    LODWORD(v17) = [v8 requiresThreadRouter];

    *(v13 + 14) = v17;
    _os_log_impl(&dword_229538000, v10, v11, "%s Updating accessory requires thread router to %{BOOL}d", v13, 0x12u);
    v21 = v28;
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v21, -1, -1);
    v22 = v13;
    ObjectType = v29;
    MEMORY[0x22AAD4E50](v22, -1, -1);

    (*(v5 + 8))(v7, v27);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = v8;
  v24[4] = ObjectType;
  v25 = v8;

  sub_2296FF6DC(sub_229707E7C, v24);
}

void sub_2297061C4(uint64_t a1, void *a2)
{
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = [Strong accessory];
    if (v13)
    {
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = 0xD00000000000001ELL;
      *(inited + 40) = 0x800000022A592F00;
      v16 = [a2 requiresThreadRouter];
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = v16;
      sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &unk_27D87DE50, &qword_22A577CD0);
      v17 = *MEMORY[0x277CCECC8];
      v18 = [v14 uuid];
      sub_22A4DB79C();

      v19 = objc_allocWithZone(MEMORY[0x277D0F820]);
      v20 = sub_22A4DB77C();
      v21 = [v19 initWithTarget_];

      (*(v8 + 8))(v10, v7);
      v22 = objc_allocWithZone(MEMORY[0x277D0F818]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v23 = sub_22A4DD47C();

      v24 = [v22 initWithName:v17 destination:v21 payload:v23];

      v25 = [v12 msgDispatcher];
      [v25 sendMessage_];

      return;
    }
  }

  sub_2296F8604();
  v26 = sub_22A4DD05C();
  v27 = sub_22A4DDCEC();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_229538000, v26, v27, "Lost reference to accessory", v28, 2u);
    MEMORY[0x22AAD4E50](v28, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
}

id sub_229706614(uint64_t a1)
{
  v7[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DD47C();

  v7[0] = 0;
  v3 = [v1 initWithResponseValue:v2 error:v7];

  if (v3)
  {
    v4 = v7[0];
  }

  else
  {
    v5 = v7[0];
    sub_22A4DB3EC();

    swift_willThrow();
  }

  return v3;
}

unint64_t *sub_2297066FC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_229706798(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void sub_229706798(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a2;
  v49 = a1;
  v63 = sub_22A4DB7DC();
  v6 = MEMORY[0x28223BE20](v63);
  v59 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  v50 = 0;
  v51 = v8;
  v11 = 0;
  v54 = a3;
  v14 = *(a3 + 56);
  v13 = a3 + 56;
  v12 = v14;
  v15 = 1 << *(v13 - 24);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v12;
  v18 = (v15 + 63) >> 6;
  v58 = v8 + 16;
  v61 = a4 + 56;
  v62 = (v8 + 8);
  v52 = v18;
  v53 = v13;
  while (v17)
  {
    v19 = __clz(__rbit64(v17));
    v56 = (v17 - 1) & v17;
LABEL_12:
    v22 = v19 | (v11 << 6);
    v23 = *(*(v54 + 48) + 8 * v22);
    v24 = [v23 UUID];
    sub_22A4DB79C();

    v25 = *(a4 + 16);
    v55 = v23;
    if (!v25 || (sub_229707FE8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v26 = sub_22A4DD4EC(), v27 = -1 << *(a4 + 32), v28 = v26 & ~v27, ((*(v61 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
    {
LABEL_17:
      (*v62)(v10, v63);
      v36 = v55;
      goto LABEL_18;
    }

    v47 = v22;
    v57 = ~v27;
    v60 = *(v51 + 72);
    v29 = *(v51 + 16);
    while (1)
    {
      v30 = a4;
      v31 = v59;
      v32 = v63;
      v29(v59, *(a4 + 48) + v60 * v28, v63);
      sub_229707FE8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v33 = v10;
      v34 = sub_22A4DD58C();
      v35 = *v62;
      (*v62)(v31, v32);
      if (v34)
      {
        break;
      }

      v28 = (v28 + 1) & v57;
      a4 = v30;
      v10 = v33;
      if (((*(v61 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v10 = v33;
    v35(v33, v63);
    v36 = v55;
    v37 = [v55 home];
    v38 = [v37 ecosystem];

    v39 = [v38 vendor];
    LOBYTE(v38) = [v39 isAppleVendor];

    if (v38)
    {
      a4 = v30;
LABEL_18:

      v18 = v52;
      v13 = v53;
      v17 = v56;
    }

    else
    {
      v40 = [v36 home];
      v41 = [v40 ecosystem];

      v42 = [v41 vendor];
      v43 = [v42 isSystemCommissionerVendor];

      a4 = v30;
      v18 = v52;
      v13 = v53;
      v17 = v56;
      if ((v43 & 1) == 0)
      {
        *(v49 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
        if (__OFADD__(v50++, 1))
        {
          __break(1u);
LABEL_25:
          v45 = v54;

          sub_22966F7AC(v49, v48, v50, v45);
          return;
        }
      }
    }
  }

  v20 = v11;
  while (1)
  {
    v11 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v11 >= v18)
    {
      goto LABEL_25;
    }

    v21 = *(v13 + 8 * v11);
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v56 = (v21 - 1) & v21;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_229706C68(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v62 = *MEMORY[0x277D85DE8];
  v61 = sub_22A4DB7DC();
  v6 = *(v61 - 8);
  v7 = MEMORY[0x28223BE20](v61);
  v57 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v58 = v44 - v9;
  v10 = *(a1 + 32);
  v11 = v10 & 0x3F;
  v12 = ((1 << v10) + 63) >> 6;
  v13 = 8 * v12;

  if (v11 > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    v45 = v12;
    v46 = v3;
    v44[1] = v44;
    MEMORY[0x28223BE20](v14);
    v47 = v44 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v47, v13);
    v48 = 0;
    v49 = v6;
    v15 = 0;
    v16 = a1 + 56;
    v17 = 1 << *(a1 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(a1 + 56);
    v20 = (v17 + 63) >> 6;
    v56 = v6 + 16;
    v59 = a2 + 56;
    v60 = (v6 + 8);
    v3 = a2;
    v13 = v58;
    v50 = v20;
    v51 = a1 + 56;
    v52 = a1;
    while (v19)
    {
      v21 = __clz(__rbit64(v19));
      v53 = (v19 - 1) & v19;
LABEL_13:
      a2 = v21 | (v15 << 6);
      v12 = *(*(a1 + 48) + 8 * a2);
      v24 = [v12 UUID];
      sub_22A4DB79C();

      v25 = *(v3 + 16);
      v54 = v12;
      if (!v25 || (sub_229707FE8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]), v26 = sub_22A4DD4EC(), v27 = -1 << *(v3 + 32), v28 = v26 & ~v27, ((*(v59 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0))
      {
LABEL_18:
        (*v60)(v13, v61);
        a1 = v52;
        v33 = v54;
        goto LABEL_19;
      }

      v44[0] = a2;
      v55 = ~v27;
      v29 = *(v49 + 72);
      a2 = *(v49 + 16);
      while (1)
      {
        v6 = v3;
        v12 = v57;
        v30 = v61;
        (a2)(v57, *(v3 + 48) + v29 * v28, v61);
        sub_229707FE8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
        v31 = sub_22A4DD58C();
        v32 = *v60;
        (*v60)(v12, v30);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v55;
        v13 = v58;
        v3 = v6;
        if (((*(v59 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          goto LABEL_18;
        }
      }

      v13 = v58;
      v32(v58, v61);
      v33 = v54;
      v34 = [v54 home];
      a2 = &selRef_disconnectFromBTLEAccessoryServer_;
      v35 = [v34 ecosystem];

      v12 = &selRef_updateProfile;
      v36 = [v35 vendor];

      LOBYTE(v35) = [v36 isAppleVendor];
      if (v35)
      {
        v3 = v6;
        a1 = v52;
LABEL_19:

        v20 = v50;
        v16 = v51;
        v19 = v53;
      }

      else
      {
        v37 = [v33 home];
        v38 = [v37 ecosystem];

        v39 = [v38 vendor];
        a2 = [v39 isSystemCommissionerVendor];

        v3 = v6;
        v16 = v51;
        a1 = v52;
        v20 = v50;
        v19 = v53;
        if ((a2 & 1) == 0)
        {
          *&v47[(v44[0] >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << SLOBYTE(v44[0]);
          if (__OFADD__(v48++, 1))
          {
            __break(1u);
LABEL_26:
            v41 = sub_22966F7AC(v47, v45, v48, a1);

            return v41;
          }
        }
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

      if (v15 >= v20)
      {
        goto LABEL_26;
      }

      v23 = *(v16 + 8 * v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v53 = (v23 - 1) & v23;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v43 = swift_slowAlloc();

  v41 = sub_2297066FC(v43, v12, a1, a2);

  MEMORY[0x22AAD4E50](v43, -1, -1);

  return v41;
}

uint64_t sub_229707260(uint64_t a1, unint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v53 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v56 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - v8;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_229706C68(v7, a2);
  }

  v10 = MEMORY[0x277D84FA0];
  v62 = MEMORY[0x277D84FA0];

  v11 = sub_22A4DE09C();
  v12 = sub_22A4DE12C();
  if (v12)
  {
    v13 = v12;
    v14 = sub_229562F68(0, &unk_27D87CF00, 0x277CD1880);
    v15 = v13;
    v58 = a2 + 56;
    v55 = v53 + 16;
    v49 = MEMORY[0x277D84FA0];
    v59 = (v53 + 8);
    v51 = v11;
    v52 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v57 = a2;
    v50 = v14;
    while (1)
    {
      v60 = v15;
      swift_dynamicCast();
      v16 = v61;
      v17 = [v61 UUID];
      sub_22A4DB79C();

      if (*(a2 + 16))
      {
        sub_229707FE8(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v18 = sub_22A4DD4EC();
        v19 = -1 << *(a2 + 32);
        v20 = v18 & ~v19;
        if ((*(v58 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v54 = v16;
          v21 = ~v19;
          v22 = *(v53 + 72);
          v23 = *(v53 + 16);
          while (1)
          {
            v24 = v56;
            v23(v56, *(v57 + 48) + v22 * v20, v4);
            sub_229707FE8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
            v25 = sub_22A4DD58C();
            v26 = *v59;
            (*v59)(v24, v4);
            if (v25)
            {
              break;
            }

            v20 = (v20 + 1) & v21;
            if (((*(v58 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              a2 = v57;
              goto LABEL_12;
            }
          }

          v26(v9, v4);
          v27 = v54;
          v28 = [v54 home];
          v29 = [v28 ecosystem];

          v30 = [v29 vendor];
          LOBYTE(v29) = [v30 isAppleVendor];

          a2 = v57;
          if ((v29 & 1) == 0)
          {
            v31 = [v27 home];
            v32 = [v31 ecosystem];

            v33 = [v32 vendor];
            LOBYTE(v32) = [v33 isSystemCommissionerVendor];

            if ((v32 & 1) == 0)
            {
              v34 = v61;
              v35 = *(v49 + 16);
              if (*(v49 + 24) <= v35)
              {
                sub_2295742C8(v35 + 1);
              }

              v36 = v62;
              result = sub_22A4DDECC();
              v38 = v36 + 56;
              v39 = -1 << *(v36 + 32);
              v40 = result & ~v39;
              v41 = v40 >> 6;
              if (((-1 << v40) & ~*(v36 + 56 + 8 * (v40 >> 6))) != 0)
              {
                v42 = __clz(__rbit64((-1 << v40) & ~*(v36 + 56 + 8 * (v40 >> 6)))) | v40 & 0x7FFFFFFFFFFFFFC0;
              }

              else
              {
                v43 = 0;
                v44 = (63 - v39) >> 6;
                do
                {
                  if (++v41 == v44 && (v43 & 1) != 0)
                  {
                    __break(1u);
                    return result;
                  }

                  v45 = v41 == v44;
                  if (v41 == v44)
                  {
                    v41 = 0;
                  }

                  v43 |= v45;
                  v46 = *(v38 + 8 * v41);
                }

                while (v46 == -1);
                v42 = __clz(__rbit64(~v46)) + (v41 << 6);
              }

              *(v38 + ((v42 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v42;
              *(*(v36 + 48) + 8 * v42) = v34;
              v47 = *(v36 + 16) + 1;
              v49 = v36;
              *(v36 + 16) = v47;
              goto LABEL_14;
            }
          }
        }

        else
        {
          v26 = *v59;
LABEL_12:
          v26(v9, v4);
        }
      }

      else
      {
        (*v59)(v9, v4);
      }

LABEL_14:
      v15 = sub_22A4DE12C();
      if (!v15)
      {
        goto LABEL_33;
      }
    }
  }

  v49 = v10;
LABEL_33:

  return v49;
}

void _sSo25HMDMatterAccessoryAdapterC13HomeKitDaemonE17didUpdatePairings3forySo20HMMTRAccessoryServerC_tF_0()
{
  swift_getObjectType();
  v1 = sub_22A4DD07C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v56 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v56 - v9;
  v11 = [v0 accessory];
  if (v11)
  {
    v12 = v11;
    if ([v11 isPrimary])
    {
      v60 = v2;
      sub_2296F8604();
      v13 = v0;
      v14 = v12;
      v15 = sub_22A4DD05C();
      v16 = sub_22A4DDCCC();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v58 = v18;
        *v17 = 136315394;
        v61 = 91;
        v62 = 0xE100000000000000;
        v63 = v18;
        v19 = [v13 logIdentifier];
        v20 = sub_22A4DD5EC();
        v59 = v1;
        v21 = v20;
        v23 = v22;

        MEMORY[0x22AAD08C0](v21, v23);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v24 = sub_2295A3E30(v61, v62, &v63);

        *(v17 + 4) = v24;
        *(v17 + 12) = 2112;
        *(v17 + 14) = v14;
        v25 = v57;
        *v57 = v12;
        v26 = v14;
        _os_log_impl(&dword_229538000, v15, v16, "%s Received pairing change update for accessory %@", v17, 0x16u);
        sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v25, -1, -1);
        v27 = v58;
        __swift_destroy_boxed_opaque_existential_0(v58);
        MEMORY[0x22AAD4E50](v27, -1, -1);
        MEMORY[0x22AAD4E50](v17, -1, -1);

        (*(v60 + 8))(v10, v59);
      }

      else
      {

        (*(v60 + 8))(v10, v1);
      }

      sub_2296F98DC();
    }

    else
    {
      sub_2296F8604();
      v38 = v0;
      v39 = v12;
      v40 = sub_22A4DD05C();
      v41 = sub_22A4DDCDC();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v60 = v43;
        *v42 = 136315394;
        v61 = 91;
        v62 = 0xE100000000000000;
        v63 = v43;
        v44 = [v38 logIdentifier];
        v45 = v2;
        v46 = sub_22A4DD5EC();
        v59 = v1;
        v48 = v47;

        MEMORY[0x22AAD08C0](v46, v48);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v49 = sub_2295A3E30(v61, v62, &v63);

        *(v42 + 4) = v49;
        *(v42 + 12) = 2080;
        v50 = [v39 shortDescription];
        v51 = sub_22A4DD5EC();
        v53 = v52;

        v54 = sub_2295A3E30(v51, v53, &v63);

        *(v42 + 14) = v54;
        _os_log_impl(&dword_229538000, v40, v41, "%s Ignoring pairing change update for matter accessory %s because current accessory is not primary", v42, 0x16u);
        v55 = v60;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v55, -1, -1);
        MEMORY[0x22AAD4E50](v42, -1, -1);

        (*(v45 + 8))(v8, v59);
      }

      else
      {

        (*(v2 + 8))(v8, v1);
      }
    }
  }

  else
  {
    sub_2296F8604();
    v28 = v0;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCEC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 136315138;
      v61 = 91;
      v62 = 0xE100000000000000;
      v63 = v32;
      v33 = [v28 logIdentifier];
      v34 = sub_22A4DD5EC();
      v36 = v35;

      MEMORY[0x22AAD08C0](v34, v36);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v37 = sub_2295A3E30(v61, v62, &v63);

      *(v31 + 4) = v37;
      _os_log_impl(&dword_229538000, v29, v30, "%s Unable to find accessory", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    (*(v2 + 8))(v5, v1);
  }
}

uint64_t sub_229707E9C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2297009A8(a1, v4, v5, v6, v7, v8);
}

unint64_t sub_229707F80()
{
  result = qword_27D87E440;
  if (!qword_27D87E440)
  {
    sub_229562F68(255, &unk_27D87CF00, 0x277CD1880);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87E440);
  }

  return result;
}

uint64_t sub_229707FE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229708038(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3)
  {
    return v3(a2);
  }

  return result;
}

uint64_t objectdestroy_5Tm(void (*a1)(void))
{
  a1(*(v1 + 32));

  return MEMORY[0x2821FE8E8](v1, 48, 7);
}

uint64_t sub_2297080F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229569B30;

  return sub_2297015A0(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_2297081C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FE50, &qword_22A580970);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2297082C0()
{
  v4[1] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  result = [v0 save_];
  if ((result & 1) == 0)
  {
    if (v4[0])
    {
      v2 = v4[0];
    }

    else
    {
      v3 = [objc_opt_self() hmErrorWithCode_];
    }

    return swift_willThrow();
  }

  return result;
}

uint64_t sub_229708374(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA8, &qword_22A5809C0);
  v2[21] = v3;
  v2[22] = *(v3 - 8);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229708440, 0, 0);
}

uint64_t sub_229708440()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v9 = v1[20];
  v12 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_2297085F0;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MADownloadResult(0);
  sub_22A4DD8DC();
  (*(v7 + 32))(boxed_opaque_existential_1, v6, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229818420;
  v1[13] = &block_descriptor_4;
  [v9 startDownload:v12 then:v4];
  (*(v7 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_2297085F0()
{

  return MEMORY[0x2822009F8](sub_2297086D0, 0, 0);
}

uint64_t sub_2297086D0()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

unint64_t sub_229708738()
{
  v1 = [*v0 attributes];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22A4DD49C();

    return v3;
  }

  else
  {
    v5 = MEMORY[0x277D84F90];

    return sub_22956B3FC(v5);
  }
}

uint64_t sub_22970880C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2297088A4;

  return sub_229708374(a1);
}

uint64_t sub_2297088A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_2297089A0()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA0, &qword_22A5809B0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[21] = v3;
  v1[22] = v4;

  return MEMORY[0x2822009F8](sub_229708A6C, 0, 0);
}

uint64_t sub_229708A6C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_229708C10;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MAPurgeResult(0);
  sub_22A4DD8DC();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229708D20;
  v1[13] = &block_descriptor_21;
  [v6 purge_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229708C10()
{
  v4 = *v0;
  v1 = *(*v0 + 144);

  v2 = *(v4 + 8);

  return v2(v1);
}

uint64_t sub_229708D20(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFA0, &qword_22A5809B0);
  return sub_22A4DD8FC();
}

uint64_t sub_229708D84()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFB0, &qword_22A5809F0);
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[21] = v3;
  v1[22] = v4;

  return MEMORY[0x2822009F8](sub_229708E50, 0, 0);
}

uint64_t sub_229708E50()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[21];
  v6 = v0[22];
  v10 = v0 + 19;
  v8 = v0[19];
  v9 = v10[1];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_229708C10;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1 + 14);
  type metadata accessor for MAQueryResult(0);
  sub_22A4DD8DC();
  (*(v9 + 32))(boxed_opaque_existential_1, v7, v8);
  v1[10] = MEMORY[0x277D85DD0];
  v1[11] = 1107296256;
  v1[12] = sub_229708FF4;
  v1[13] = &block_descriptor_22;
  [v6 queryMetaData_];
  (*(v9 + 8))(boxed_opaque_existential_1, v8);

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229708FF4(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFB0, &qword_22A5809F0);
  return sub_22A4DD8FC();
}

void *sub_229709050()
{
  v1 = [*v0 results];
  if (v1)
  {
    v2 = v1;
    sub_2297090CC();
    v3 = sub_22A4DD83C();
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v4 = sub_229869C38(v3);

  return v4;
}

unint64_t sub_2297090CC()
{
  result = qword_281401780;
  if (!qword_281401780)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281401780);
  }

  return result;
}

uint64_t sub_229709204()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709274()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709300()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_22970935C()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297093B8()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709414()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709470()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297094E0()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709550()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297095AC()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709608()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709664()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297096C0()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709734(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  sub_22A4DD5EC();
  a3(0);
  (*(a2 + 16))();

  return sub_22A4DD06C();
}

uint64_t sub_2297097D0()
{
  _s26NetworkDiagnosticsObserverCMa();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87FFB8, &qword_22A580A10);
  return sub_22A4DD64C();
}

uint64_t sub_229709818()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709874(uint64_t a1, uint64_t a2)
{
  sub_22A4DD5EC();
  (*(a2 + 16))(a1, a2);

  return sub_22A4DD06C();
}

uint64_t sub_229709918()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709974()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_2297099D0()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709A54(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  sub_22A4DD5EC();
  if (*a3 != -1)
  {
    swift_once();
  }

  return sub_22A4DD06C();
}

uint64_t sub_229709B04()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709B60()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709BBC()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709C18()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709C74(uint64_t a1, uint64_t a2)
{
  sub_22A4DD5EC();
  (*(a2 + 16))(v2, a2);

  return sub_22A4DD06C();
}

uint64_t sub_229709D14()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709D6C()
{
  sub_22A4DD5EC();

  return sub_22A4DD06C();
}

uint64_t sub_229709EF8()
{
  sub_2295798D4(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_229709F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[30] = a4;
  v5[31] = v4;
  v5[28] = a2;
  v5[29] = a3;
  v5[27] = a1;
  return MEMORY[0x2822009F8](sub_229709F84, 0, 0);
}

uint64_t sub_229709F84()
{
  v28 = v0;
  v1 = v0[27];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 72))(v2, v3);
  if (v4)
  {
    v5 = v0[31];
    v6 = v0[27];

    v7 = v1[3];
    v8 = v1[4];
    v9 = __swift_project_boxed_opaque_existential_0(v6, v7);
    v10 = sub_22970B6F4(v9, v5, v7, v8);
    if (!v10)
    {
      v10 = sub_22956AC5C(MEMORY[0x277D84F90]);
    }

    v11 = v10;
    v12 = v0[28];
    v0[26] = v11;
    sub_22961995C(v12, (v0 + 12));
    v14 = v0[29];
    v13 = v0[30];
    if (v0[15])
    {
      sub_229543C58((v0 + 12), (v0 + 20));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v27[0] = v11;
      v16 = v0[23];
      v17 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 20), v16);
      v18 = *(v16 - 8);
      v19 = swift_task_alloc();
      (*(v18 + 16))(v19, v17, v16);
      sub_2297FF768(v19, v14, v13, isUniquelyReferenced_nonNull_native, v27, v16);
      __swift_destroy_boxed_opaque_existential_0(v0 + 20);

      v20 = v27[0];
      v0[26] = v27[0];
    }

    else
    {
      sub_22953EAE4((v0 + 12), &unk_27D87FC20, &unk_22A578810);
      sub_2297FCFD4(v14, v13, v0 + 16);
      sub_22953EAE4((v0 + 16), &unk_27D87FC20, &unk_22A578810);
      v20 = v0[26];
    }

    v0[32] = v20;
    v25 = swift_task_alloc();
    v0[33] = v25;
    *v25 = v0;
    v25[1] = sub_22970A37C;
    v26 = v0[27];

    return sub_22970A4FC(v26, v20);
  }

  else
  {
    v21 = v0[27];
    type metadata accessor for HMError(0);
    v0[25] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 32) = 0x6E6F73616552;
    *(inited + 16) = xmmword_22A576180;
    *(inited + 40) = 0xE600000000000000;
    v27[0] = 0;
    v27[1] = 0xE000000000000000;
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A593250);
    __swift_project_boxed_opaque_existential_0(v21, v1[3]);
    sub_22A4DE5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 48) = 0;
    *(inited + 56) = 0xE000000000000000;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_22970A37C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_22970A498;
  }

  else
  {

    v2 = sub_229566EE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22970A498()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22970A4FC(uint64_t a1, uint64_t a2)
{
  v3[28] = a2;
  v3[29] = v2;
  v3[27] = a1;
  v4 = sub_22A4DB7DC();
  v3[30] = v4;
  v3[31] = *(v4 - 8);
  v3[32] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22970A5C0, 0, 0);
}

uint64_t sub_22970A5C0()
{
  v47 = v0;
  v1 = v0[27];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_0(v1, v2);
  v4 = (*(v3 + 72))(v2, v3);
  v0[33] = v4;
  if (v4)
  {
    v5 = v4;
    v6 = v1[3];
    v7 = v1[4];
    __swift_project_boxed_opaque_existential_0(v0[27], v6);
    v8 = (*(v7 + 80))(v6, v7);
    v0[34] = v8;
    if (v8)
    {
      v9 = v8;
      if (qword_281401968 != -1)
      {
        swift_once();
      }

      v10 = sub_22A4DD5AC();
      v11 = [v5 applicationDataForIdentifier_];

      if (!v11 || (v12 = sub_22A4DD49C(), v11, sub_22976EEB8(v12), v14 = v13, , !v14))
      {
        v14 = sub_22956AC5C(MEMORY[0x277D84F90]);
      }

      v15 = v0[28];
      v0[26] = v14;
      v16 = sub_22A4DD5EC();
      v18 = v16;
      v19 = v17;
      if (v15)
      {
        v20 = v0[28];
        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
        v0[15] = v21;
        v0[12] = v20;
        sub_229543C58((v0 + 12), (v0 + 20));

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46[0] = v14;
        v22 = v0[23];
        v23 = __swift_mutable_project_boxed_opaque_existential_0((v0 + 20), v22);
        v24 = v9;
        v25 = *(v22 - 8);
        v26 = swift_task_alloc();
        (*(v25 + 16))(v26, v23, v22);
        v9 = v24;
        sub_2297FF768(v26, v18, v19, isUniquelyReferenced_nonNull_native, v46, v21);

        __swift_destroy_boxed_opaque_existential_0(v0 + 20);

        v27 = v46[0];
        v0[26] = v46[0];
      }

      else
      {
        sub_2297FCFD4(v16, v17, v0 + 16);

        sub_22953EAE4((v0 + 16), &unk_27D87FC20, &unk_22A578810);
        v27 = v0[26];
      }

      v32 = v0[32];
      v33 = v0[29];
      sub_2296F77EC(v27);

      v34 = sub_22A4DD47C();

      v35 = sub_22A4DD5AC();
      [v5 setApplicationData:v34 forIdentifier:v35];

      v36 = [v5 modelObjectWithChangeType_];
      v0[35] = v36;
      v37 = sub_22A4DD5AC();
      v38 = [objc_opt_self() defaultXPCOptions];
      v39 = [v9 transaction:v37 options:v38];
      v0[36] = v39;

      v40 = v36;
      [v39 add_];
      v41 = [v40 uuid];

      sub_22A4DB79C();
      v42 = swift_task_alloc();
      v0[37] = v42;
      v42[2] = v39;
      v42[3] = v33;
      v42[4] = v32;
      v43 = swift_task_alloc();
      v0[38] = v43;
      *v43 = v0;
      v43[1] = sub_22970AC98;
      v44 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v43, 0, 0, 0xD000000000000027, 0x800000022A5932A0, sub_22970B978, v42, v44);
    }
  }

  v28 = v0[27];
  type metadata accessor for HMError(0);
  v0[25] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 32) = 0x6E6F73616552;
  *(inited + 16) = xmmword_22A576180;
  *(inited + 40) = 0xE600000000000000;
  v46[0] = 0;
  v46[1] = 0xE000000000000000;
  sub_22A4DE1FC();
  MEMORY[0x22AAD08C0](0xD000000000000028, 0x800000022A593250);
  __swift_project_boxed_opaque_existential_0(v28, v1[3]);
  sub_22A4DE5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2295AEE34(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  v30 = v0[1];

  return v30();
}

uint64_t sub_22970AC98()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_22970AE60;
  }

  else
  {

    v2 = sub_22970ADB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22970ADB4()
{
  v1 = *(v0 + 280);
  v3 = *(v0 + 264);
  v2 = *(v0 + 272);
  v5 = *(v0 + 248);
  v4 = *(v0 + 256);
  v6 = *(v0 + 240);

  (*(v5 + 8))(v4, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22970AE60()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);

  (*(v6 + 8))(v3, v5);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22970AF1C()
{
  result = sub_22A4DD5EC();
  qword_281404FE0 = result;
  *algn_281404FE8 = v1;
  return result;
}

void sub_22970AF4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v18 = a3;
  v19 = a2;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v10 + 16))(&v18 - v12, a1, v9);
  (*(v7 + 16))(&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v6);
  v14 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v15 = (v11 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v18;
  (*(v10 + 32))(v16 + v14, v13, v9);
  (*(v7 + 32))(v16 + v15, &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  aBlock[4] = sub_22970B984;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2295AAF60;
  aBlock[3] = &block_descriptor_23;
  v17 = _Block_copy(aBlock);

  [v19 run_];
  _Block_release(v17);
}

uint64_t sub_22970B1D8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a3;
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22A4DD07C();
  v10 = *(v41 - 8);
  v11 = MEMORY[0x28223BE20](v41);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  if (a1)
  {
    sub_22A4DD5EC();
    v16 = a1;
    sub_22A4DD06C();
    v17 = a1;
    v18 = sub_22A4DD05C();
    v19 = sub_22A4DDCCC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v43 = v22;
      *v20 = 136315394;
      v23 = sub_22A4DE8EC();
      v25 = sub_2295A3E30(v23, v24, &v43);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2112;
      v26 = a1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 14) = v27;
      *v21 = v27;
      _os_log_impl(&dword_229538000, v18, v19, "%s Failed to update demo mode model: %@", v20, 0x16u);
      sub_22953EAE4(v21, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v21, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v22);
      MEMORY[0x22AAD4E50](v22, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);
    }

    (*(v10 + 8))(v15, v41);
    v43 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8EC();
  }

  else
  {
    sub_22A4DD5EC();
    sub_22A4DD06C();
    (*(v7 + 16))(v9, a4, v6);
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCCC();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v43 = v40;
      *v31 = 136315394;
      v32 = sub_22A4DE8EC();
      v34 = sub_2295A3E30(v32, v33, &v43);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2080;
      sub_2295AEE34(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v35 = sub_22A4DE5CC();
      v37 = v36;
      (*(v7 + 8))(v9, v6);
      v38 = sub_2295A3E30(v35, v37, &v43);

      *(v31 + 14) = v38;
      _os_log_impl(&dword_229538000, v29, v30, "%s Successfully updated demo mode model %s ", v31, 0x16u);
      v39 = v40;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v10 + 8))(v13, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }
}

void *sub_22970B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8);
  v9 = (*(a4 + 72))(a3, a4);
  if (v9)
  {
    if (qword_281401968 != -1)
    {
      swift_once();
    }

    v10 = sub_22A4DD5AC();
    v11 = [v9 applicationDataForIdentifier_];

    if (v11)
    {
      v12 = sub_22A4DD49C();

      sub_22976EEB8(v12);
      v9 = v13;

      if (!v9)
      {
        goto LABEL_14;
      }

      v14 = sub_22A4DD5EC();
      if (v9[2])
      {
        v16 = sub_229543DBC(v14, v15);
        v18 = v17;

        if (v18)
        {
          sub_2295404B0(v9[7] + 32 * v16, v21);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
          if (swift_dynamicCast())
          {
            v9 = v20[1];
          }

          else
          {
            v9 = 0;
          }

          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    v9 = 0;
  }

LABEL_14:
  (*(v6 + 8))(v8, a3);
  return v9;
}

uint64_t sub_22970B984(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_22A4DB7DC() - 8);
  v7 = *(v1 + 16);
  v8 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_22970B1D8(a1, v7, v1 + v4, v8);
}

unint64_t type metadata accessor for HMDHAPAccessoryDefaultDataSource()
{
  result = qword_27D880060;
  if (!qword_27D880060)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D880060);
  }

  return result;
}

uint64_t sub_22970BCE0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 home];
  v8 = [a1 uuid];
  sub_22A4DB79C();

  v9 = [a1 logIdentifier];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  v13 = [objc_opt_self() sharedLogEventSubmitter];
  type metadata accessor for ThermostatSuggestedPresetLogEventFactory();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = type metadata accessor for DefaultHAPAccessoryClimateStorage(0);
  v16 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  (*(v4 + 16))(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_uuid, v6, v3);
  v24 = 91;
  v25 = 0xE100000000000000;
  MEMORY[0x22AAD08C0](v10, v12);

  MEMORY[0x22AAD08C0](93, 0xE100000000000000);

  v17 = v24;
  v18 = v25;
  result = (*(v4 + 8))(v6, v3);
  v20 = (v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_logID);
  *v20 = v17;
  v20[1] = v18;
  *(v16 + OBJC_IVAR____TtC13HomeKitDaemon33DefaultHAPAccessoryClimateStorage_thermostatSuggestedLogEventFactory) = v14;
  v21 = v23;
  v23[3] = v15;
  v21[4] = &off_283CE0160;
  *v21 = v16;
  return result;
}

uint64_t sub_22970BFA4(uint64_t a1)
{
  v3 = sub_22A4DB7DC();
  v1[2] = v3;
  v1[3] = *(v3 - 8);
  v1[4] = swift_task_alloc();
  v4 = sub_22A4DD39C();
  v1[5] = v4;
  v1[6] = *(v4 - 8);
  v5 = swift_task_alloc();
  v1[7] = v5;
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v1;
  v6[1] = sub_22970C100;

  return MEMORY[0x282116518](v5, a1);
}

uint64_t sub_22970C100()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_22970C4EC;
  }

  else
  {
    v2 = sub_22970C214;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22970C214()
{
  sub_22A4DD46C();
  sub_22A4DD37C();
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_22970C2D4;
  v2 = *(v0 + 32);

  return MEMORY[0x282116580](v2);
}

uint64_t sub_22970C2D4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v6[11] = v2;

  v7 = v6[4];
  v8 = v6[3];
  v9 = v6[2];
  if (v2)
  {
    (*(v8 + 8))(v7, v9);
    v10 = sub_22970C55C;
  }

  else
  {
    v6[12] = a2;
    v6[13] = a1;
    (*(v8 + 8))(v7, v9);
    v10 = sub_22970C460;
  }

  return MEMORY[0x2822009F8](v10, 0, 0);
}

uint64_t sub_22970C460()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];
  v3 = v0[12];
  v2 = v0[13];

  return v1(v2, v3);
}

uint64_t sub_22970C4EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22970C55C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

unint64_t CameraRecordingEventDailySummaryLogEvent.serializedLogEvent.getter()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A577B20;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x800000022A5934D0;
  v7 = MEMORY[0x277D83B88];
  *(inited + 48) = *&v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions];
  *(inited + 72) = v7;
  strcpy((inited + 80), "numClipUploads");
  *(inited + 95) = -18;
  *(inited + 96) = *&v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads];
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001FLL;
  *(inited + 136) = 0x800000022A5934F0;
  *(inited + 144) = *&v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds];
  *(inited + 168) = v7;
  *(inited + 176) = 0x44495555656D6F68;
  *(inited + 184) = 0xE800000000000000;
  v8 = [v1 homeUUID];
  sub_22A4DB79C();

  v9 = sub_22A4DB76C();
  v11 = v10;
  (*(v3 + 8))(v5, v2);
  v12 = MEMORY[0x277D837D0];
  *(inited + 192) = v9;
  *(inited + 200) = v11;
  *(inited + 216) = v12;
  *(inited + 224) = 0xD000000000000013;
  *(inited + 232) = 0x800000022A593510;
  LOBYTE(v12) = v1[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent];
  *(inited + 264) = MEMORY[0x277D839B0];
  *(inited + 240) = v12;
  v13 = sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  return v13;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v12[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_22A4DB77C();
  v17.receiver = v12;
  v17.super_class = v6;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_22A4DB7DC();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(homeUUID:numRecordingSessions:numClipUploads:totalClipDurationInMilliseconds:isHouseholdLogEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = a2;
  *&v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = a3;
  *&v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = a4;
  v6[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = a5;
  v13 = sub_22A4DB77C();
  v17.receiver = v6;
  v17.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v17, sel_initWithHomeUUID_, v13);

  v15 = sub_22A4DB7DC();
  (*(*(v15 - 8) + 8))(a1, v15);
  return v14;
}

id CameraRecordingEventDailySummaryLogEvent.init(dictionary:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v36 - v5;
  v7 = sub_22A4DB7DC();
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    v39 = 0;
    v14 = 1;
    goto LABEL_14;
  }

  v10 = sub_229543DBC(0xD000000000000014, 0x800000022A5934D0);
  if ((v11 & 1) == 0)
  {
    v39 = 0;
    v14 = 1;
    if (*(a1 + 16))
    {
      goto LABEL_9;
    }

LABEL_14:
    v37 = 0;
    v38 = 0;
    v19 = 1;
    goto LABEL_22;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v10, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v12 = swift_dynamicCast();
  v13 = v42;
  if (!v12)
  {
    v13 = 0;
  }

  v39 = v13;
  v14 = v12 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_14;
  }

LABEL_9:
  v15 = sub_229543DBC(0x5570696C436D756ELL, 0xEE007364616F6C70);
  if (v16)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v15, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v17 = swift_dynamicCast();
    v18 = v42;
    if (!v17)
    {
      v18 = 0;
    }

    v38 = v18;
    v19 = v17 ^ 1;
    if (!*(a1 + 16))
    {
      goto LABEL_21;
    }
  }

  else
  {
    v38 = 0;
    v19 = 1;
    if (!*(a1 + 16))
    {
LABEL_21:
      v37 = 0;
LABEL_22:
      v24 = 1;
      if (*(a1 + 16))
      {
        goto LABEL_23;
      }

LABEL_20:
      v25 = 0;
      goto LABEL_36;
    }
  }

  v20 = sub_229543DBC(0xD00000000000001FLL, 0x800000022A5934F0);
  if ((v21 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_2295404B0(*(a1 + 56) + 32 * v20, v45);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v22 = swift_dynamicCast();
  v23 = v42;
  if (!v22)
  {
    v23 = 0;
  }

  v37 = v23;
  v24 = v22 ^ 1;
  if (!*(a1 + 16))
  {
    goto LABEL_20;
  }

LABEL_23:
  v26 = sub_229543DBC(0x44495555656D6F68, 0xE800000000000000);
  if (v27)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v26, v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v25 = v43;
    }

    else
    {
      v25 = 0;
    }

    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  else
  {
    v25 = 0;
    if (!*(a1 + 16))
    {
      goto LABEL_36;
    }
  }

  v28 = sub_229543DBC(0xD000000000000013, 0x800000022A593510);
  if (v29)
  {
    sub_2295404B0(*(a1 + 56) + 32 * v28, v45);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v30 = v42;
    }

    else
    {
      v30 = 2;
    }

    if (v14)
    {
      goto LABEL_39;
    }

    goto LABEL_37;
  }

LABEL_36:

  v30 = 2;
  if (v14)
  {
LABEL_39:

LABEL_40:
    swift_deallocPartialClassInstance();
    return 0;
  }

LABEL_37:
  if (v19 || v24)
  {
    goto LABEL_39;
  }

  if (!v25)
  {
    goto LABEL_40;
  }

  sub_22A4DB75C();

  v32 = v40;
  if ((*(v40 + 48))(v6, 1, v7) == 1)
  {
    sub_22970D68C(v6);
    goto LABEL_40;
  }

  (*(v32 + 32))(v9, v6, v7);
  if (v30 == 2)
  {
    (*(v32 + 8))(v9, v7);
    goto LABEL_40;
  }

  v33 = v38;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numRecordingSessions] = v39;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_numClipUploads] = v33;
  *&v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_totalClipDurationInMilliseconds] = v37;
  v2[OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent] = v30;
  v34 = sub_22A4DB77C();
  v44.receiver = v2;
  v44.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v44, sel_initWithHomeUUID_, v34);

  (*(v32 + 8))(v9, v7);
  return v35;
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventName.getter()
{
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon40CameraRecordingEventDailySummaryLogEvent_isHouseholdLogEvent))
  {
    return 0xD000000000000047;
  }

  else
  {
    return 0xD00000000000003DLL;
  }
}

unint64_t CameraRecordingEventDailySummaryLogEvent.coreAnalyticsEventDictionary.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761B0;
  strcpy((inited + 32), "numClipUploads");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 56) = 0xD000000000000014;
  *(inited + 64) = 0x800000022A5934D0;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  *(inited + 80) = 0xD00000000000001FLL;
  *(inited + 88) = 0x800000022A5934F0;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v2 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v2;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(homeUUID:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_22A4DB77C();
  v5 = [v3 initWithHomeUUID_];

  v6 = sub_22A4DB7DC();
  (*(*(v6 - 8) + 8))(a1, v6);
  return v5;
}

id CameraRecordingEventDailySummaryLogEvent.__allocating_init(startTime:homeUUID:)(uint64_t a1, double a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_22A4DB77C();
  v7 = [v5 initWithStartTime:v6 homeUUID:a2];

  v8 = sub_22A4DB7DC();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

id CameraRecordingEventDailySummaryLogEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22970D68C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22970D804()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CCC0, &unk_22A5779A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5779B0;
  strcpy((inited + 32), "presetScenario");
  *(inited + 47) = -18;
  *(inited + 48) = sub_22A4DE74C();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x800000022A5936B0;
  *(inited + 72) = sub_22A4DE74C();
  *(inited + 80) = 0xD000000000000011;
  *(inited + 88) = 0x800000022A5936D0;
  *(inited + 96) = sub_22A4DDB3C();
  strcpy((inited + 104), "changedReason");
  *(inited + 118) = -4864;
  *(inited + 120) = sub_22A4DE74C();
  v1 = sub_22956AC48(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CD90, &qword_22A5779F0);
  swift_arrayDestroy();
  return v1;
}

id sub_22970D9CC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ThermostatSuggestedPresetLogEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22970DA38()
{
  sub_22A4DB28C();
  swift_allocObject();
  sub_22A4DB25C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  sub_22A4DB7BC();
  sub_22A4DB60C();
  return 0x1000000000;
}

uint64_t sub_22970DC0C()
{
  v0 = sub_22A4DB7DC();
  __swift_allocate_value_buffer(v0, qword_27D8AB968);
  __swift_project_value_buffer(v0, qword_27D8AB968);
  return sub_22A4DB7AC();
}

unint64_t sub_22970DD00()
{
  v10 = *MEMORY[0x277D85DE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8800C0, "<(\b");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0;
  type metadata accessor for NetworkDiagnosticsSymptom(0);
  v7 = sub_22A4DB7BC();
  v8 = v1;
  *(inited + 40) = sub_22958FC04(&v7, v9);
  *(inited + 48) = v2;
  *(inited + 56) = 1;
  v7 = sub_22A4DB7BC();
  v8 = v3;
  *(inited + 64) = sub_22958FC04(&v7, v9);
  *(inited + 72) = v4;
  v5 = sub_22956B1CC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8800C8, &qword_22A580B78);
  swift_arrayDestroy();
  return v5;
}

uint64_t type metadata accessor for NetworkDiagnosticsSymptom(uint64_t a1)
{
  result = qword_27D8800D0;
  if (!qword_27D8800D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22970DEA0(uint64_t a1)
{
  result = sub_22A4DB7DC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_22970DF2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (![v3 value])
  {
    v36 = 0u;
    v37 = 0u;
    goto LABEL_15;
  }

  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v6 = v35;
  v7 = __swift_project_boxed_opaque_existential_0(&v34, v35);
  v33 = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v32);
  (*(*(v6 - 8) + 16))(boxed_opaque_existential_1, v7, v6);
  sub_229543C5C(&v32, &v36);
  __swift_destroy_boxed_opaque_existential_0(&v34);
  if (!*(&v37 + 1))
  {
LABEL_15:
    sub_22953EAE4(&v36, &unk_27D87FC20, &unk_22A578810);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = [v3 service];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = sub_229773768();

  if (!v11)
  {
    goto LABEL_19;
  }

  if (!*(v11 + 16))
  {
    goto LABEL_18;
  }

  v12 = sub_229543DBC(a1, a2);
  if ((v13 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2295404B0(*(v11 + 56) + 32 * v12, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_19;
  }

  v14 = v34;
  if (!v34[2])
  {
    goto LABEL_18;
  }

  v15 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972);
  if ((v16 & 1) == 0)
  {
    goto LABEL_18;
  }

  sub_2295404B0(v14[7] + 32 * v15, &v36);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_19:

    return 0;
  }

  v17 = v34;
  v18 = v34[2];
  if (!v18)
  {
LABEL_18:

    goto LABEL_19;
  }

  v19 = 0;
  v20 = &qword_281401770;
  v31 = v34[2];
  while (1)
  {
    if (v19 >= v17[2])
    {
      __break(1u);
      return result;
    }

    v21 = v17[v19 + 4];
    if (*(v21 + 16))
    {
      break;
    }

LABEL_21:
    if (v18 == ++v19)
    {
      goto LABEL_18;
    }
  }

  v22 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449);
  if ((v23 & 1) == 0 || (sub_2295404B0(*(v21 + 56) + 32 * v22, &v36), sub_229562F68(0, v20, 0x277CCABB0), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_21;
  }

  v24 = v34;
  v25 = [v10 findCharacteristic_];

  if (!v25)
  {

    goto LABEL_21;
  }

  v26 = v20;
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v27 = v3;
  v28 = sub_22A4DDEDC();

  if ((v28 & 1) == 0)
  {

    v20 = v26;
    v18 = v31;
    goto LABEL_21;
  }

  if (!*(v21 + 16) || (v29 = sub_229543DBC(0x65756C6156, 0xE500000000000000), (v30 & 1) == 0))
  {

    return 0;
  }

  sub_2295404B0(*(v21 + 56) + 32 * v29, &v36);

  if (swift_dynamicCast())
  {
    return v34;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_22970E398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[46] = a4;
  v5[47] = v4;
  v5[44] = a2;
  v5[45] = a3;
  v5[43] = a1;
  return MEMORY[0x2822009F8](sub_22970E3C0, 0, 0);
}

uint64_t sub_22970E3C0()
{
  v1 = [*(v0 + 376) service];
  *(v0 + 384) = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  v2 = v1;
  if (![*(v0 + 376) value])
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    goto LABEL_9;
  }

  sub_22A4DE01C();
  swift_unknownObjectRelease();
  v3 = *(v0 + 72);
  v4 = __swift_project_boxed_opaque_existential_0((v0 + 48), v3);
  *(v0 + 104) = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 80));
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1, v4, v3);
  sub_229543C5C((v0 + 80), (v0 + 16));
  __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  if (!*(v0 + 40))
  {
LABEL_9:

    sub_22953EAE4(v0 + 16, &unk_27D87FC20, &unk_22A578810);
    goto LABEL_11;
  }

  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  if (swift_dynamicCast())
  {
    v6 = *(v0 + 368);

    v7 = swift_task_alloc();
    *(v0 + 400) = v7;
    *v7 = v0;
    v7[1] = sub_22970E5C8;
    v8 = *(v0 + 360);

    return sub_22976F760(v8, v6);
  }

LABEL_11:
  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22970E5C8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 408) = a1;
  *(v3 + 416) = v1;

  if (v1)
  {
    v4 = sub_22970EE60;
  }

  else
  {
    v4 = sub_22970E6DC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22970E6DC()
{
  v39 = v0;
  v1 = *(v0 + 408);
  if (!v1)
  {

    goto LABEL_19;
  }

  if (!*(v1 + 16) || (v2 = 0xEF73636974736972, v3 = sub_229543DBC(0x6574636172616843, 0xEF73636974736972), (v4 & 1) == 0) || (sub_2295404B0(*(v1 + 56) + 32 * v3, v0 + 112), v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881E90, &qword_22A5788A0), (swift_dynamicCast() & 1) == 0))
  {

LABEL_19:
    v17 = *(v0 + 8);

    return v17();
  }

  v37 = v5;
  v6 = *(v0 + 376);
  v7 = *(v0 + 328);
  *(v0 + 320) = v7;

  v8 = sub_22970FED0();
  v9 = v8;
  v10 = *(v7 + 16);
  if (v10)
  {
    v36 = v8;
    v2 = 0;
    while (1)
    {
      if (v2 >= *(v7 + 16))
      {
        __break(1u);
        goto LABEL_34;
      }

      v9 = v7 + 8 * v2;
      v11 = *(v9 + 32);
      if (*(v11 + 16))
      {

        v6 = v11;
        v12 = sub_229543DBC(0x65636E6174736E49, 0xEA00000000004449);
        if (v13 & 1) != 0 && (v6 = *(v0 + 392), sub_2295404B0(*(v11 + 56) + 32 * v12, v0 + 144), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast()) && (v6 = *(v0 + 336), v14 = [*(v0 + 384) findCharacteristic_], v6, v14))
        {
          v15 = *(v0 + 376);
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          v16 = v15;
          v6 = sub_22A4DDEDC();

          if (v6)
          {

            if (v2 < *(v7 + 16))
            {
              v9 = *(v9 + 32);

              sub_2295AFD4C(v2);

              v2 = 0xEF73636974736972;
              goto LABEL_24;
            }

            __break(1u);
            return result;
          }
        }

        else
        {
        }
      }

      if (v10 == ++v2)
      {

        v2 = 0xEF73636974736972;
        v7 = 0x6574636172616843;
        v9 = v36;
        goto LABEL_25;
      }
    }
  }

LABEL_24:
  v7 = 0x6574636172616843;
LABEL_25:
  v18 = *(v0 + 344);
  v19 = *(v0 + 352);
  *(v0 + 200) = MEMORY[0x277D837D0];
  *(v0 + 176) = v18;
  *(v0 + 184) = v19;
  sub_229543C5C((v0 + 176), (v0 + 208));

  LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
  v38 = v9;
  v20 = *(v0 + 232);
  v21 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 208, v20);
  v22 = *(v20 - 8);
  v23 = swift_task_alloc();
  (*(v22 + 16))(v23, v21, v20);
  sub_2297FE940(*v23, v23[1], 0x65756C6156, 0xE500000000000000, v19, &v38);
  __swift_destroy_boxed_opaque_existential_0((v0 + 208));

  v9 = v38;
  v6 = *(v0 + 320);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_34:
    v6 = sub_22958A770(0, *(v6 + 16) + 1, 1, v6);
  }

  v25 = *(v6 + 16);
  v24 = *(v6 + 24);
  if (v25 >= v24 >> 1)
  {
    v6 = sub_22958A770((v24 > 1), v25 + 1, 1, v6);
  }

  *(v0 + 424) = v6;
  *(v6 + 16) = v25 + 1;
  *(v6 + 8 * v25 + 32) = v9;
  *(v0 + 264) = v37;
  *(v0 + 240) = v6;
  sub_229543C5C((v0 + 240), (v0 + 272));

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = v1;
  v27 = *(v0 + 296);
  v28 = __swift_mutable_project_boxed_opaque_existential_0(v0 + 272, v27);
  v29 = *(v27 - 8);
  v30 = swift_task_alloc();
  (*(v29 + 16))(v30, v28, v27);
  sub_2297FED58(*v30, v7, v2, isUniquelyReferenced_nonNull_native, &v38);
  __swift_destroy_boxed_opaque_existential_0((v0 + 272));

  v31 = v38;
  *(v0 + 432) = v38;
  v32 = swift_task_alloc();
  *(v0 + 440) = v32;
  *v32 = v0;
  v32[1] = sub_22970ECD4;
  v33 = *(v0 + 360);
  v34 = *(v0 + 368);

  return sub_2297712F4(v31, v33, v34);
}

uint64_t sub_22970ECD4()
{
  *(*v1 + 448) = v0;

  if (v0)
  {
    v2 = sub_22970EEC4;
  }

  else
  {
    v2 = sub_22970EDE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22970EDE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22970EE60()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22970EEC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22970EF3C()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27D8800E0);
  swift_endAccess();
  if (v1)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
  }

  else
  {
    v4 = 0u;
    v5 = 0u;
  }

  v6[0] = v4;
  v6[1] = v5;
  if (*(&v5 + 1))
  {
    if (swift_dynamicCast())
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_22953EAE4(v6, &unk_27D87DE60, &unk_22A57A960);
    return 0;
  }
}

uint64_t sub_22970F02C()
{
  sub_22971032C();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22A580BB0;
  *(v0 + 32) = sub_229562F68(0, &unk_27D880900, 0x277CBEA60);
  *(v0 + 40) = sub_229562F68(0, &qword_27D87DA30, 0x277CBEB98);
  *(v0 + 48) = sub_229562F68(0, &qword_27D8800F0, 0x277CBEA90);
  *(v0 + 56) = sub_229562F68(0, &qword_27D8800F8, 0x277CBEAA8);
  *(v0 + 64) = sub_229562F68(0, &qword_27D880100, 0x277CBEAC0);
  *(v0 + 72) = sub_229562F68(0, &qword_281401778, 0x277CCA9B8);
  *(v0 + 80) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *(v0 + 88) = sub_229562F68(0, &qword_27D880108, 0x277CCACA8);
  *(v0 + 96) = sub_229562F68(0, &qword_27D880110, 0x277CCAD78);
  *(v0 + 104) = sub_229562F68(0, &qword_27D880118, 0x277CBEBC0);
  result = sub_229562F68(0, &qword_27D880120, 0x277CBEB68);
  *(v0 + 112) = result;
  qword_27D8AB980 = v0;
  return result;
}

uint64_t sub_22970F1B4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v43 - v6;
  v8 = MEMORY[0x277D84F98];
  v51 = MEMORY[0x277D84F98];
  if ([v1 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v9 = *(&v50 + 1);
    v10 = __swift_project_boxed_opaque_existential_0(&v49, *(&v50 + 1));
    v44 = v9;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v43);
    (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v10, v9);
    sub_229543C5C(&v43, &v45);
    __swift_destroy_boxed_opaque_existential_0(&v49);
  }

  else
  {
    v45 = 0u;
    v46 = 0u;
  }

  v47 = v45;
  v48 = v46;
  v12 = *(&v46 + 1);
  if (*(&v46 + 1))
  {
    v13 = __swift_project_boxed_opaque_existential_0(&v47, *(&v48 + 1));
    *(&v50 + 1) = v12;
    v14 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(*(v12 - 8) + 16))(v14, v13, v12);
    __swift_destroy_boxed_opaque_existential_0(&v47);
    if (*(&v50 + 1))
    {
      sub_229543C5C(&v49, &v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v45 = v8;
      sub_229543C6C(&v47, 0x65756C6176, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
      v51 = v45;
      goto LABEL_9;
    }
  }

  else
  {
    sub_22953EAE4(&v47, &unk_27D87FC20, &unk_22A578810);
    v49 = 0u;
    v50 = 0u;
  }

  sub_22953EAE4(&v49, &unk_27D87DE60, &unk_22A57A960);
  sub_2297FD000(0x65756C6176, 0xE500000000000000, &v47);
  sub_22953EAE4(&v47, &unk_27D87DE60, &unk_22A57A960);
LABEL_9:
  v16 = [v1 notificationContext];
  if (v16)
  {
    v17 = v16;
    v18 = sub_22A4DB62C();
    v20 = v19;

    *(&v50 + 1) = MEMORY[0x277CC9318];
    *&v49 = v18;
    *(&v49 + 1) = v20;
    sub_229543C5C(&v49, &v47);
    v21 = v51;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v21;
    sub_229543C6C(&v47, 0xD000000000000013, 0x800000022A593780, v22);
    v51 = v45;
  }

  else
  {
    sub_2297FD000(0xD000000000000013, 0x800000022A593780, &v49);
    sub_22953EAE4(&v49, &unk_27D87DE60, &unk_22A57A960);
  }

  v23 = [v1 stateNumber];
  if (v23)
  {
    v24 = v23;
    *(&v50 + 1) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    *&v49 = v24;
    sub_229543C5C(&v49, &v47);
    v25 = v51;
    v26 = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v25;
    sub_229543C6C(&v47, 0x6D754E6574617473, 0xEB00000000726562, v26);
    v51 = v45;
  }

  else
  {
    sub_2297FD000(0x6D754E6574617473, 0xEB00000000726562, &v49);
    sub_22953EAE4(&v49, &unk_27D87DE60, &unk_22A57A960);
  }

  v27 = [v1 lastKnownValueUpdateTime];
  if (v27)
  {
    v28 = v27;
    sub_22A4DB70C();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_22A4DB74C();
  v31 = *(v30 - 8);
  (*(v31 + 56))(v5, v29, 1, v30);
  sub_2296692F8(v5, v7);
  if ((*(v31 + 48))(v7, 1, v30) == 1)
  {
    sub_22953EAE4(v7, &unk_27D881AA0, &qword_22A57BC20);
    sub_2297FD000(0xD000000000000018, 0x800000022A593760, &v49);
    sub_22953EAE4(&v49, &unk_27D87DE60, &unk_22A57A960);
  }

  else
  {
    *(&v50 + 1) = v30;
    v32 = __swift_allocate_boxed_opaque_existential_1(&v49);
    (*(v31 + 32))(v32, v7, v30);
    sub_229543C5C(&v49, &v47);
    v33 = v51;
    v34 = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v33;
    sub_229543C6C(&v47, 0xD000000000000018, 0x800000022A593760, v34);
    v51 = v45;
  }

  v35 = sub_22970EF3C();
  if (v36)
  {
    sub_2297FD000(0x6544657461647075, 0xEB0000000079616CLL, &v49);
    sub_22953EAE4(&v49, &unk_27D87DE60, &unk_22A57A960);
  }

  else
  {
    *(&v50 + 1) = MEMORY[0x277D839F8];
    *&v49 = v35;
    sub_229543C5C(&v49, &v47);
    v37 = v51;
    v38 = swift_isUniquelyReferenced_nonNull_native();
    *&v45 = v37;
    sub_229543C6C(&v47, 0x6544657461647075, 0xEB0000000079616CLL, v38);
  }

  v39 = sub_22A4DD47C();

  v40 = encodeRootObject();

  v41 = sub_22A4DB62C();
  return v41;
}

uint64_t sub_22970F850(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = sub_22A4DB74C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229562F68(0, &qword_27D8800E8, 0x277CCAAC8);
  if (qword_27D87BA58 != -1)
  {
    swift_once();
  }

  sub_229869E94(qword_27D8AB980);
  sub_22A4DDD1C();
  if (v2)
  {

    goto LABEL_5;
  }

  if (!v38)
  {
    sub_22953EAE4(v37, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    [objc_opt_self() hmErrorWithCode_];
    return swift_willThrow();
  }

  v11 = v35;
  if (v35[2] && (v12 = sub_229543DBC(0x6D754E6574617473, 0xEB00000000726562), (v13 & 1) != 0) && (sub_2295404B0(v11[7] + 32 * v12, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), sub_229562F68(0, &qword_281401770, 0x277CCABB0), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v35;
  }

  else
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    v14 = sub_22A4DDEBC();
  }

  if (v11[2] && (v15 = sub_229543DBC(0xD000000000000018, 0x800000022A593760), (v16 & 1) != 0))
  {
    sub_2295404B0(v11[7] + 32 * v15, v37);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v17 = swift_dynamicCast();
    (*(v7 + 56))(v5, v17 ^ 1u, 1, v6);
    if ((*(v7 + 48))(v5, 1, v6) != 1)
    {
      (*(v7 + 32))(v9, v5, v6);
      goto LABEL_21;
    }
  }

  else
  {
    (*(v7 + 56))(v5, 1, 1, v6);
  }

  sub_22A4DB73C();
  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    sub_22953EAE4(v5, &unk_27D881AA0, &qword_22A57BC20);
  }

LABEL_21:
  if (v11[2] && (v18 = sub_229543DBC(0xD000000000000018, 0x800000022A593760), (v19 & 1) != 0) && (sub_2295404B0(v11[7] + 32 * v18, v37), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), (swift_dynamicCast() & 1) != 0))
  {
    v21 = v35;
    v20 = v36;
  }

  else
  {
    v21 = 0;
    v20 = 0xC000000000000000;
  }

  v34 = v20;
  if (v11[2] && (v22 = sub_229543DBC(0x65756C6176, 0xE500000000000000), (v23 & 1) != 0))
  {
    sub_2295404B0(v11[7] + 32 * v22, v37);
    __swift_project_boxed_opaque_existential_0(v37, v38);
    v24 = sub_22A4DE5FC();
    __swift_destroy_boxed_opaque_existential_0(v37);
  }

  else
  {
    v24 = 0;
  }

  v25 = sub_22A4DB6AC();
  v26 = v14;
  v33 = v21;
  v27 = sub_22A4DB61C();
  [v39 updateValue:v24 updatedTime:v25 stateNumber:v26 notificationContext:v27];
  swift_unknownObjectRelease();

  if (!v11[2] || (v28 = sub_229543DBC(0x6544657461647075, 0xEB0000000079616CLL), (v29 & 1) == 0))
  {

    v31 = v33;
    goto LABEL_35;
  }

  sub_2295404B0(v11[7] + 32 * v28, v37);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v30 = swift_dynamicCast();
  v31 = v33;
  if ((v30 & 1) == 0)
  {
LABEL_35:
    v32 = 0;
    goto LABEL_36;
  }

  v32 = sub_22A4DDB3C();
LABEL_36:
  swift_beginAccess();
  objc_setAssociatedObject(v39, &unk_27D8800E0, v32, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  sub_2295798D4(v31, v34);

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_22970FED0()
{
  v1 = [v0 instanceID];
  *(&v33 + 1) = sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  *&v32 = v1;
  sub_229543C5C(&v32, &v30);
  v2 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v28 = v2;
  v4 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  MEMORY[0x28223BE20](v4);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  sub_2297FED80(*v6, 0x65636E6174736E49, 0xEA00000000004449, isUniquelyReferenced_nonNull_native, &v28);
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v8 = v28;
  v9 = [v0 type];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  *(&v33 + 1) = MEMORY[0x277D837D0];
  *&v32 = v10;
  *(&v32 + 1) = v12;
  sub_229543C5C(&v32, &v30);
  LOBYTE(v9) = swift_isUniquelyReferenced_nonNull_native();
  *&v28 = v8;
  v13 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
  MEMORY[0x28223BE20](v13);
  v15 = (&v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_2297FE940(*v15, v15[1], 1701869908, 0xE400000000000000, v9, &v28);
  __swift_destroy_boxed_opaque_existential_0(&v30);
  v17 = v28;
  v34 = v28;
  if ([v0 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v18 = v31;
    v19 = __swift_project_boxed_opaque_existential_0(&v30, v31);
    v29 = v18;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v28);
    (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, v19, v18);
    sub_229543C5C(&v28, &v32);
    __swift_destroy_boxed_opaque_existential_0(&v30);
    if (*(&v33 + 1))
    {
      sub_229543C5C(&v32, &v30);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *&v28 = v17;
      v22 = v31;
      v23 = __swift_mutable_project_boxed_opaque_existential_0(&v30, v31);
      MEMORY[0x28223BE20](v23);
      v25 = &v28 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v26 + 16))(v25);
      sub_2297FF768(v25, 0x65756C6156, 0xE500000000000000, v21, &v28, v22);
      __swift_destroy_boxed_opaque_existential_0(&v30);
      return v28;
    }
  }

  else
  {
    v32 = 0u;
    v33 = 0u;
  }

  sub_22953EAE4(&v32, &unk_27D87FC20, &unk_22A578810);
  sub_2297FCFD4(0x65756C6156, 0xE500000000000000, &v30);
  sub_22953EAE4(&v30, &unk_27D87FC20, &unk_22A578810);
  return v34;
}

uint64_t sub_22971032C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EE0, &qword_22A580BC0);
  if (swift_isClassType())
  {
    v1 = v0 == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = &unk_27D880128;
    v3 = &unk_22A580BC8;
  }

  else
  {
    v2 = &unk_27D87C350;
    v3 = &qword_22A576E40;
  }

  return __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
}

void sub_2297103E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_22971630C;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_229710488(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_229710530;
    v4[3] = &block_descriptor_124;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

uint64_t sub_229710568()
{
  v1 = [v0 activeDevices];
  sub_229562F68(0, &qword_281401928, 0x277D44170);
  v2 = sub_22A4DD83C();

  return v2;
}

void sub_2297105F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  if (a1)
  {
    v9[4] = a1;
    v9[5] = a2;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 1107296256;
    v9[2] = sub_22953E640;
    v9[3] = a5;
    v8 = _Block_copy(v9);
  }

  else
  {
    v8 = 0;
  }

  [v6 *a6];
  _Block_release(v8);
}

void sub_2297106C8(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4[4] = a1;
    v4[5] = a2;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_229710770;
    v4[3] = &block_descriptor_106;
    v3 = _Block_copy(v4);
  }

  else
  {
    v3 = 0;
  }

  [v2 setDeviceChangedHandler_];
  _Block_release(v3);
}

void sub_229710778(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_229710800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1)
  {
    v7[4] = a1;
    v7[5] = a2;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 1107296256;
    v7[2] = sub_2295AAF60;
    v7[3] = a5;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 activateWithCompletion_];
  _Block_release(v6);
}

uint64_t sub_2297108B8()
{
  v1 = OBJC_IVAR____TtCC13HomeKitDaemon15AssertionHandle9Assertion_uuid;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_229710968()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E1D0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_229710A08(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_22953E1D0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22A4DD4FC();
}

uint64_t sub_229710A90(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_22953E1D0(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_229710B48()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v4 + 24));
    sub_2297162BC((v4 + 16), &v7);
    os_unfair_lock_unlock((v4 + 24));
    v5 = v7;

    sub_229714B54(v3);
    if (v5)
    {
      sub_2297145E4();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 32) = 0;

  return swift_unknownObjectWeakAssign();
}

uint64_t sub_229710C14()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 16);
    v4 = *(Strong + OBJC_IVAR___HMDDiscoveryController_assertions);

    os_unfair_lock_lock((v4 + 24));
    sub_2295B2DD4((v4 + 16), &v7);
    os_unfair_lock_unlock((v4 + 24));
    v5 = v7;

    sub_229714B54(v3);
    if (v5)
    {
      sub_2297145E4();
    }

    swift_unknownObjectRelease();
  }

  *(v1 + 32) = 0;
  swift_unknownObjectWeakAssign();

  sub_2296B874C(v1 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_229710CFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  sub_229571C90(&v7, a2);

  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_22A4DE0EC();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a3 = result;
  return result;
}

uint64_t sub_229710D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, BOOL *a3@<X8>)
{
  sub_229579104(a2);

  if ((*a1 & 0xC000000000000001) != 0)
  {
    result = sub_22A4DE0EC();
  }

  else
  {
    result = *(*a1 + 16);
  }

  *a3 = result == 0;
  return result;
}

char *sub_229710DE8(int a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v6 = v5;
  v54 = a5;
  v51 = a3;
  v52 = a4;
  v50 = a2;
  v53 = a1;
  v49 = sub_22A4DDD7C();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DDD5C();
  MEMORY[0x28223BE20](v10);
  v11 = sub_22A4DD29C();
  MEMORY[0x28223BE20](v11 - 8);
  v48 = OBJC_IVAR___HMDDiscoveryController_queue;
  v12 = sub_229562F68(0, &qword_281401980, 0x277D85C78);
  v47[0] = &unk_22A580CE0;
  v47[1] = v12;
  sub_22A4DD28C();
  v55 = MEMORY[0x277D84F90];
  sub_22953E1D0(&qword_281401990, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87BAF0, &unk_22A5761E0);
  sub_229579858(&qword_281401CA0, &unk_27D87BAF0, &unk_22A5761E0);
  sub_22A4DE03C();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v49);
  v13 = sub_22A4DDDCC();
  v14 = v48;
  *&v5[v48] = v13;
  sub_22A4DD5EC();
  sub_22A4DD06C();
  v5[OBJC_IVAR___HMDDiscoveryController_isDiscoveryAsserted] = 0;
  v15 = OBJC_IVAR___HMDDiscoveryController_visibleSFDevices;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87BB00, &unk_22A580DD0);
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D84F98];
  *(v16 + 24) = 0;
  *(v16 + 16) = v17;
  *&v5[v15] = v16;
  v18 = OBJC_IVAR___HMDDiscoveryController_assertions;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87BB08, &qword_22A5761F0);
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = MEMORY[0x277D84FA0];
  *&v5[v18] = v19;
  v20 = &v5[OBJC_IVAR___HMDDiscoveryController_rapportDiscoveryClientFactory];
  v22 = v50;
  v21 = v51;
  *v20 = v50;
  v20[1] = v21;
  v23 = &v5[OBJC_IVAR___HMDDiscoveryController_sharingDiscoveryClientFactory];
  v24 = v52;
  v25 = v54;
  *v23 = v52;
  v23[1] = v25;
  v6[OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion] = v53;
  v26 = *&v6[v14];

  v27 = v26;
  v28 = v24();
  v30 = v29;
  ObjectType = swift_getObjectType();
  v32 = *(v30 + 16);
  v33 = v27;
  v32();
  (*(v30 + 88))(1, ObjectType, v30);

  v34 = &v6[OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient];
  *v34 = v28;
  v34[1] = v30;
  v35 = *&v6[v14];
  v36 = v22();
  v38 = v37;
  v39 = swift_getObjectType();
  v40 = *(v38 + 16);
  v41 = v35;
  v40();
  (*(v38 + 40))(0x60000400004, v39, v38);

  v42 = &v6[OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient];
  *v42 = v36;
  v42[1] = v38;
  v43 = type metadata accessor for DiscoveryController(0);
  v56.receiver = v6;
  v56.super_class = v43;
  v44 = objc_msgSendSuper2(&v56, sel_init);
  sub_2297115D8();
  v45 = OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
  swift_beginAccess();
  sub_229715F74(v44, &v44[v45]);
  swift_endAccess();

  return v44;
}

char *DiscoveryController.__allocating_init(discoveryNeedsAssertion:)(int a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v5 = sub_229710DE8(a1, sub_229711484, 0, sub_2297114B8, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v5;
}

char *DiscoveryController.init(discoveryNeedsAssertion:)(int a1)
{
  v2 = objc_allocWithZone(type metadata accessor for DiscoveryController(0));
  v3 = sub_229710DE8(a1, sub_229711484, 0, sub_2297114B8, 0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v3;
}

uint64_t sub_2297115D8()
{
  v1 = v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient;
  v2 = *(v0 + OBJC_IVAR___HMDDiscoveryController_sfDiscoveryClient + 8);
  ObjectType = swift_getObjectType();
  v4 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v5 = *(v2 + 112);
  swift_unknownObjectRetain();

  v5(sub_229715F2C, v4, ObjectType, v2);
  swift_unknownObjectRelease();

  v6 = *(v1 + 8);
  v7 = swift_getObjectType();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = *(v6 + 160);
  swift_unknownObjectRetain();

  v9(sub_229715F4C, v8, v7, v6);
  swift_unknownObjectRelease();

  v10 = *(v1 + 8);
  v11 = swift_getObjectType();
  v12 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v13 = *(v10 + 136);
  swift_unknownObjectRetain();

  v13(sub_229715F54, v12, v11, v10);
  swift_unknownObjectRelease();
}

void sub_2297117C4(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_229712DDC(2u, a1);
  }
}

void sub_229711824(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_229712DDC(v3, a1);
  }
}

void sub_229711894(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      v7 = *(a2 + 24);
      v8 = sub_22A4DD05C();
      v9 = sub_22A4DDCCC();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_229538000, v8, v9, "Queue setup after invalidation.", v10, 2u);
        MEMORY[0x22AAD4E50](v10, -1, -1);
      }

      sub_229713980(120.0, v6, v7);
      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_2297119C0(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = sub_22A4DD05C();
    v4 = sub_22A4DDCCC();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_229538000, v3, v4, "RPClient was interrupted", v5, 2u);
      MEMORY[0x22AAD4E50](v5, -1, -1);
    }
  }
}

void sub_229711A90(void *a1, uint64_t a2, const char *a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = a1;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCDC();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      *(v10 + 4) = v7;
      *v11 = v7;
      v12 = v7;
      _os_log_impl(&dword_229538000, v8, v9, a3, v10, 0xCu);
      sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v11, -1, -1);
      MEMORY[0x22AAD4E50](v10, -1, -1);
    }
  }
}

void sub_229711BCC(void *a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = a1;
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCCC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&dword_229538000, v7, v8, "device changed from RPClient: %@", v9, 0xCu);
      sub_22953EAE4(v10, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }
  }
}

uint64_t sub_229711D28(uint64_t a1)
{
  v2 = sub_22A4DD2FC();
  v3 = *(v2 - 8);
  result = MEMORY[0x28223BE20](v2);
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if ((*(a1 + OBJC_IVAR___HMDDiscoveryController_discoveryNeedsAssertion) & 1) == 0)
  {
    v7 = *(a1 + OBJC_IVAR___HMDDiscoveryController_queue);
    *v6 = v7;
    (*(v3 + 104))(v6, *MEMORY[0x277D85200], v2);
    v8 = v7;
    LOBYTE(v7) = sub_22A4DD31C();
    result = (*(v3 + 8))(v6, v2);
    if (v7)
    {
      v9 = a1 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
      swift_beginAccess();
      v10 = *(v9 + 8);
      v11 = swift_unknownObjectRetain();
      sub_229713368(v11, v10);
      swift_unknownObjectRelease();
      return sub_229712854();
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void *sub_229711EE0()
{
  v1 = sub_22A4DBB4C();
  v30 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v29 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v34 = &v26 - v4;
  v5 = v0 + OBJC_IVAR___HMDDiscoveryController_rpInfraWifiDiscoveryClient;
  swift_beginAccess();
  v6 = *(v5 + 8);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 56);
  swift_unknownObjectRetain();
  v9 = v8(ObjectType, v6);
  swift_unknownObjectRelease();
  if (v9 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v11 = 0;
    v31 = v9 & 0xFFFFFFFFFFFFFF8;
    v32 = v9 & 0xC000000000000001;
    v12 = (v30 + 32);
    v13 = MEMORY[0x277D84F90];
    v27 = i;
    v28 = v9;
    while (1)
    {
      if (v32)
      {
        v14 = MEMORY[0x22AAD13F0](v11, v9);
      }

      else
      {
        if (v11 >= *(v31 + 16))
        {
          goto LABEL_20;
        }

        v14 = *(v9 + 8 * v11 + 32);
      }

      v15 = v14;
      v16 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v17 = [v14 idsDeviceIdentifier];
      if (v17)
      {
        v33 = v13;
        v18 = v17;
        sub_22A4DD5EC();

        v19 = [v15 mediaRouteIdentifier];
        if (v19)
        {
          v20 = v19;
          sub_22A4DD5EC();
        }

        v21 = v29;
        sub_22A4DBB1C();

        v22 = *v12;
        (*v12)(v34, v21, v1);
        v13 = v33;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_22958AD88(0, v13[2] + 1, 1, v13);
        }

        v24 = v13[2];
        v23 = v13[3];
        if (v24 >= v23 >> 1)
        {
          v13 = sub_22958AD88((v23 > 1), v24 + 1, 1, v13);
        }

        v13[2] = v24 + 1;
        v22(v13 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v24, v34, v1);
        i = v27;
        v9 = v28;
      }

      else
      {
      }

      ++v11;
      if (v16 == i)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v13 = MEMORY[0x277D84F90];
LABEL_23:

  return v13;
}

uint64_t DiscoveryController.obtainNetworkVisibleDevicesProto()()
{
  v0 = sub_22A4DBB4C();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_229711EE0();
  v21 = MEMORY[0x277D84F90];
  v5 = v4[2];
  if (v5)
  {
    v7 = *(v1 + 16);
    v6 = v1 + 16;
    v19[1] = v4;
    v20 = v7;
    v8 = v4 + ((*(v6 + 64) + 32) & ~*(v6 + 64));
    v9 = MEMORY[0x277D84F90];
    v10 = (v6 - 8);
    v11 = *(v6 + 56);
    v7(v3, v8, v0);
    while (1)
    {
      v12 = [objc_allocWithZone(MEMORY[0x277CD16D8]) init];
      if (v12)
      {
        v13 = v12;
        sub_22A4DBB2C();
        v14 = sub_22A4DD5AC();

        [v13 setIdsIdentifierString_];

        sub_22A4DBB3C();
        if (v15)
        {
          v16 = sub_22A4DD5AC();

          [v13 setMediaRouteIdString_];
        }

        v17 = (*v10)(v3, v0);
        MEMORY[0x22AAD09E0](v17);
        if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v9 = v21;
      }

      else
      {
        (*v10)(v3, v0);
      }

      v8 += v11;
      if (!--v5)
      {
        break;
      }

      v20(v3, v8, v0);
    }
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v9;
}