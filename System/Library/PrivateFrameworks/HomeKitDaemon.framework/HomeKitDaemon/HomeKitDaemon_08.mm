id sub_22960B71C(void *a1, void *a2)
{
  v3 = a1;
  v4 = [a1 uniqueIdentifier];
  if (!v4)
  {
    sub_22A4DD5EC();
    v4 = sub_22A4DD5AC();
  }

  v5 = HAPInstanceIDFromUniqueIdentifier();

  if (v5)
  {
    v6 = [v3 uniqueIdentifier];
    if (!v6)
    {
      sub_22A4DD5EC();
      v6 = sub_22A4DD5AC();
    }

    v7 = HAPServerIDFromUniqueIdentifier();

    if (v7)
    {
      v30 = a2;
      v8 = [v3 services];
      sub_229562F68(0, &unk_27D87D360, off_278666310);
      v9 = sub_22A4DD83C();

      v31 = MEMORY[0x277D84F90];
      v28 = v3;
      v29 = v5;
      if (v9 >> 62)
      {
LABEL_38:
        v10 = sub_22A4DE0EC();
      }

      else
      {
        v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = 0;
      while (v10 != v11)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x22AAD13F0](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_37;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        sub_229562F68(0, &qword_27D87DEE0, 0x277CFEC40);
        ++v11;
        if (sub_229615EE4(v13))
        {
          MEMORY[0x22AAD09E0]();
          if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22A4DD85C();
          }

          sub_22A4DD87C();
          v11 = v14;
        }
      }

      v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      sub_229562F68(0, &qword_27D87DEE0, 0x277CFEC40);
      v16 = sub_22A4DD81C();

      a2 = v30;
      v17 = [v15 initWithServer:v30 instanceID:v29 parsedServices:v16];
      v18 = v17;

      if (v18)
      {

        v19 = v18;
        v3 = v28;
        [v19 setPrimary_];
        v20 = [v19 isPrimary];

        if (v20)
        {
          [v30 setPrimaryAccessory_];
        }

        [v19 setReachable_];
        [v19 setServerIdentifier_];
        v21 = [v3 name];
        if (!v21)
        {
          sub_22A4DD5EC();
          v21 = sub_22A4DD5AC();
        }

        [v19 setName_];

        [v19 setIdentifier_];
        v22 = [v3 model];
        [v19 setModel_];

        v23 = [v3 productData];
        [v19 setProductData_];

        v24 = [v3 manufacturer];
        [v19 setManufacturer_];

        v25 = [v3 serialNumber];
        [v19 setSerialNumber_];

        v26 = [v3 firmwareVersion];
        if (v26)
        {
          v5 = [v26 versionString];

          if (!v5)
          {
            sub_22A4DD5EC();
            v5 = sub_22A4DD5AC();
          }
        }

        else
        {
          v5 = 0;
        }

        [v19 setFirmwareVersion_];
      }

      else
      {
        v17 = 0;
        v3 = v30;
        a2 = v7;
        v5 = v28;
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

char *sub_22960BC94(char *a1, char a2)
{
  v4 = v3;
  v125[4] = *MEMORY[0x277D85DE8];
  v120 = sub_22A4DD07C();
  v119 = *(v120 - 8);
  v7 = MEMORY[0x28223BE20](v120);
  v9 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v109 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v109 - v13;
  if (*(a1 + 2))
  {
    v15 = v2;
    v16 = sub_229543DBC(1701667182, 0xE400000000000000);
    if (v17)
    {
      sub_2295404B0(*(a1 + 7) + 32 * v16, v125);
      if (swift_dynamicCast())
      {
        if (!*(a1 + 2))
        {
          goto LABEL_23;
        }

        v118 = v122;
        v117 = v121;
        v18 = sub_229543DBC(0x696669746E656469, 0xEA00000000007265);
        if ((v19 & 1) == 0)
        {
          goto LABEL_23;
        }

        sub_2295404B0(*(a1 + 7) + 32 * v18, v125);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_23;
        }

        v121 = v123;
        v122 = v124;
        if (*(a1 + 2))
        {
          v115 = v123;
          v116 = v124;
          v20 = sub_229543DBC(0x424472747461, 0xE600000000000000);
          if ((v21 & 1) == 0)
          {

            goto LABEL_23;
          }

          sub_2295404B0(*(a1 + 7) + 32 * v20, v125);
          if (swift_dynamicCast())
          {
            v22 = v123;
            v23 = v124;
            v114 = objc_opt_self();
            v112 = v22;
            v113 = v23;
            v24 = sub_22A4DB61C();
            v125[0] = 0;
            v25 = [v114 JSONObjectWithData:v24 options:0 error:v125];

            if (v25)
            {
              v26 = v125[0];
              sub_22A4DE01C();
              swift_unknownObjectRelease();
              v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
              if (swift_dynamicCast())
              {
                v114 = v27;
                v28 = v123;
                v29 = sub_22A4DD5EC();
                if (*(v28 + 16))
                {
                  v111 = sub_229543DBC(v29, v30);
                  v32 = v31;

                  if (v32)
                  {
                    sub_2295404B0(*(v28 + 56) + 32 * v111, v125);

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DED0, &qword_22A57A940);
                    v2 = v15;
                    if (swift_dynamicCast())
                    {
                      v111 = v123;
                      if (*(a1 + 2))
                      {
                        v33 = sub_229543DBC(0x6769666E6F63, 0xE600000000000000);
                        if (v34)
                        {
                          sub_2295404B0(*(a1 + 7) + 32 * v33, v125);
                          if (swift_dynamicCast())
                          {
                            v35 = v123;
                          }

                          else
                          {
                            v35 = 0;
                          }
                        }

                        else
                        {
                          v35 = 0;
                        }

                        if (*(a1 + 2))
                        {
                          v63 = sub_229543DBC(0x4244747874, 0xE500000000000000);
                          if (v64)
                          {
                            sub_2295404B0(*(a1 + 7) + 32 * v63, v125);

                            if (swift_dynamicCast())
                            {
                              v65 = v123;
                            }

                            else
                            {
                              v65 = 0;
                            }
                          }

                          else
                          {

                            v65 = 0;
                          }

                          v2 = v15;
LABEL_49:
                          if (v35)
                          {
                            v66 = sub_22A4DD5EC();
                            v68 = v67;
                            if (*(v35 + 16) && (v69 = v66, , v70 = sub_229543DBC(v69, v68), v72 = v71, , (v72 & 1) != 0))
                            {
                              sub_2295404B0(*(v35 + 56) + 32 * v70, v125);
                              v73 = v35;

                              if (swift_dynamicCast())
                              {
                                if (v123 == 1)
                                {
                                  v74 = sub_229590588();
                                  v76 = v75;

                                  v77 = v76;
                                  v115 = v74;
                                  v121 = v74;
                                  v122 = v76;
                                  sub_229541CB0(v15, &off_283CDE4B8);
                                  v78 = sub_22A4DD05C();
                                  v79 = sub_22A4DDCCC();
                                  v114 = v78;
                                  v80 = os_log_type_enabled(v78, v79);
                                  v116 = v77;
                                  if (v80)
                                  {
                                    v81 = swift_slowAlloc();
                                    v109 = v81;
                                    v110 = swift_slowAlloc();
                                    v125[0] = v110;
                                    *v81 = 136315138;

                                    v82 = sub_2295A3E30(v115, v77, v125);

                                    v83 = v109;
                                    *(v109 + 1) = v82;
                                    v84 = v79;
                                    v85 = v114;
                                    v86 = v83;
                                    _os_log_impl(&dword_229538000, v114, v84, "Rolling device ID: %s", v83, 0xCu);
                                    v87 = v110;
                                    __swift_destroy_boxed_opaque_existential_0(v110);
                                    MEMORY[0x22AAD4E50](v87, -1, -1);
                                    MEMORY[0x22AAD4E50](v86, -1, -1);
                                  }

                                  else
                                  {
                                  }

                                  (*(v119 + 8))(v14, v120);
                                  v88 = 1;
                                }

                                else
                                {
                                  v88 = 0;
                                }

                                v2 = v15;
LABEL_58:
                                v89 = objc_allocWithZone(v2);
                                v90 = v116;

                                v91 = sub_22960ABD4(v115, v90, v117, v118);
                                v91[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_skipKeychainSave] = a2 & 1;
                                v92 = v91;
                                sub_22960CD74(v65, v88);

                                a1 = v92;
                                sub_229617688(v111, a1, &v121, v15);

                                if (v4)
                                {
                                  sub_2295798D4(v112, v113);
                                }

                                else
                                {

                                  sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
                                  v93 = sub_22A4DD81C();

                                  [a1 setAccessories_];

                                  if (v73)
                                  {
                                    v94 = sub_22A4DD5EC();
                                    if (!*(v73 + 16))
                                    {
                                      sub_2295798D4(v112, v113);

                                      goto LABEL_37;
                                    }

                                    v96 = sub_229543DBC(v94, v95);
                                    v98 = v97;

                                    if ((v98 & 1) == 0)
                                    {
                                      sub_2295798D4(v112, v113);

                                      goto LABEL_37;
                                    }

                                    sub_2295404B0(*(v73 + 56) + 32 * v96, v125);

                                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DED8, &qword_22A57A948);
                                    if (swift_dynamicCast())
                                    {
                                      v119 = v123;
                                      v99 = [a1 accessories];
                                      if (v99)
                                      {
                                        v100 = v99;
                                        v101 = sub_22A4DD83C();

                                        v120 = v101;
                                        if (v101 >> 62)
                                        {
                                          goto LABEL_86;
                                        }

                                        for (i = *((v120 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
                                        {
                                          v103 = 0;
                                          v104 = v120 & 0xC000000000000001;
                                          v105 = v120 & 0xFFFFFFFFFFFFFF8;
                                          while (1)
                                          {
                                            if (v104)
                                            {
                                              v106 = MEMORY[0x22AAD13F0](v103, v120);
                                            }

                                            else
                                            {
                                              if (v103 >= *(v105 + 16))
                                              {
                                                goto LABEL_85;
                                              }

                                              v106 = *(v120 + 8 * v103 + 32);
                                            }

                                            v107 = v106;
                                            v108 = v103 + 1;
                                            if (__OFADD__(v103, 1))
                                            {
                                              break;
                                            }

                                            v125[0] = v106;
                                            sub_22960DB8C(v125, v119, a1, v15, &selRef_services, &qword_27D87DEE0, 0x277CFEC40, sub_22960DB48);

                                            ++v103;
                                            if (v108 == i)
                                            {
                                              goto LABEL_87;
                                            }
                                          }

                                          __break(1u);
LABEL_85:
                                          __break(1u);
LABEL_86:
                                          ;
                                        }

LABEL_87:
                                        sub_2295798D4(v112, v113);
                                      }

                                      else
                                      {
                                        sub_2295798D4(v112, v113);
                                      }

                                      goto LABEL_37;
                                    }
                                  }

                                  sub_2295798D4(v112, v113);
                                }

LABEL_37:

                                return a1;
                              }

                              v2 = v15;
                            }

                            else
                            {

                              v2 = v15;
                            }
                          }

                          v73 = v35;
                          v88 = 0;
                          goto LABEL_58;
                        }

                        v2 = v15;
                      }

                      else
                      {
                        v35 = 0;
                      }

                      v65 = 0;
                      goto LABEL_49;
                    }
                  }

                  else
                  {

                    v2 = v15;
                  }
                }

                else
                {
                }
              }

              sub_229541CB0(v2, &off_283CDE4B8);

              v51 = sub_22A4DD05C();
              v52 = sub_22A4DDCEC();

              if (os_log_type_enabled(v51, v52))
              {
                v53 = swift_slowAlloc();
                v54 = swift_slowAlloc();
                v125[0] = v54;
                *v53 = 136315138;
                v55 = sub_22A4DD4AC();
                v57 = v56;

                v58 = sub_2295A3E30(v55, v57, v125);

                *(v53 + 4) = v58;
                _os_log_impl(&dword_229538000, v51, v52, "No accessory objects found in the attribute database: %%@ with error: %s", v53, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v54);
                MEMORY[0x22AAD4E50](v54, -1, -1);
                MEMORY[0x22AAD4E50](v53, -1, -1);
              }

              else
              {
              }

              (*(v119 + 8))(v12, v120);
              v59 = v113;
              v60 = v112;
              type metadata accessor for HMError(0);
              v123 = 3;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
              inited = swift_initStackObject();
              *(inited + 16) = xmmword_22A576180;
              *(inited + 32) = sub_22A4DD5EC();
              a1 = (inited + 32);
              *(inited + 72) = MEMORY[0x277D837D0];
              *(inited + 40) = v62;
              *(inited + 48) = 0xD000000000000026;
              *(inited + 56) = 0x800000022A58D7C0;
              sub_22956AD8C(inited);
              swift_setDeallocating();
              sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
              sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
              sub_22A4DB3CC();
              swift_willThrow();
              v49 = v60;
              v50 = v59;
            }

            else
            {
              v48 = v125[0];

              sub_22A4DB3EC();

              swift_willThrow();
              v49 = v112;
              v50 = v113;
            }

            sub_2295798D4(v49, v50);
            goto LABEL_37;
          }
        }

LABEL_23:
      }
    }
  }

  v36 = MEMORY[0x277D837D0];
  sub_229541CB0(v2, &off_283CDE4B8);

  v37 = sub_22A4DD05C();
  v38 = sub_22A4DDCEC();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v125[0] = v40;
    *v39 = 136315138;
    v41 = sub_22A4DD4AC();
    v43 = v42;

    v44 = sub_2295A3E30(v41, v43, v125);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_229538000, v37, v38, "Invalid accessory database: %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v40);
    MEMORY[0x22AAD4E50](v40, -1, -1);
    MEMORY[0x22AAD4E50](v39, -1, -1);
  }

  else
  {
  }

  (*(v119 + 8))(v9, v120);
  type metadata accessor for HMError(0);
  v121 = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  v45 = swift_initStackObject();
  *(v45 + 16) = xmmword_22A576180;
  *(v45 + 32) = sub_22A4DD5EC();
  a1 = (v45 + 32);
  *(v45 + 72) = v36;
  *(v45 + 40) = v46;
  *(v45 + 48) = 0xD00000000000001BLL;
  *(v45 + 56) = 0x800000022A58D7A0;
  sub_22956AD8C(v45);
  swift_setDeallocating();
  sub_22953EAE4(v45 + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();
  return a1;
}

void sub_22960CD74(uint64_t a1, char a2)
{
  if (!a1)
  {
    if (qword_27D87B8B0 != -1)
    {
      swift_once();
    }

    [v2 setVersion_];
    [v2 setConfigNumber_];
    v26 = sub_22A4DDBDC();
    [v2 setCategory_];

    v27 = sub_229590908();
    v29 = v28;
    v69 = sub_22A4DB61C();
    sub_2295798D4(v27, v29);
    [v2 setSetupHash_];

    return;
  }

  v5 = sub_22A4DD5EC();
  sub_229613854(v5, v6, a1);
  v8 = v7;

  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x277D0F940]);
    v10 = sub_22A4DD5AC();

    v11 = [v9 initWithString_];

    [v2 setVersion_];
  }

  v12 = sub_22A4DD5EC();
  v14 = sub_229613854(v12, v13, a1);
  v16 = v15;

  if (v16)
  {
    v17 = HIBYTE(v16) & 0xF;
    v18 = v14 & 0xFFFFFFFFFFFFLL;
    if ((v16 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(v16) & 0xF;
    }

    else
    {
      v19 = v14 & 0xFFFFFFFFFFFFLL;
    }

    if (!v19)
    {

      goto LABEL_74;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v22 = sub_22961693C(v14, v16, 10);
      v44 = v68;
LABEL_72:

      if ((v44 & 1) == 0)
      {
        [v2 setConfigNumber_];
      }

      goto LABEL_74;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      v70[0] = v14;
      v70[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (v14 == 43)
      {
        if (v17)
        {
          if (--v17)
          {
            v22 = 0;
            v36 = v70 + 1;
            while (1)
            {
              v37 = *v36 - 48;
              if (v37 > 9)
              {
                break;
              }

              v38 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                break;
              }

              v22 = v38 + v37;
              if (__OFADD__(v38, v37))
              {
                break;
              }

              ++v36;
              if (!--v17)
              {
                goto LABEL_71;
              }
            }
          }

          goto LABEL_70;
        }

LABEL_97:
        __break(1u);
        return;
      }

      if (v14 != 45)
      {
        if (v17)
        {
          v22 = 0;
          v41 = v70;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v43 + v42;
            if (__OFADD__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v17)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }

      if (v17)
      {
        if (--v17)
        {
          v22 = 0;
          v30 = v70 + 1;
          while (1)
          {
            v31 = *v30 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v32 - v31;
            if (__OFSUB__(v32, v31))
            {
              break;
            }

            ++v30;
            if (!--v17)
            {
              goto LABEL_71;
            }
          }
        }

        goto LABEL_70;
      }
    }

    else
    {
      if ((v14 & 0x1000000000000000) != 0)
      {
        v20 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v20 = sub_22A4DE25C();
      }

      v21 = *v20;
      if (v21 == 43)
      {
        if (v18 >= 1)
        {
          v17 = v18 - 1;
          if (v18 != 1)
          {
            v22 = 0;
            if (v20)
            {
              v33 = v20 + 1;
              while (1)
              {
                v34 = *v33 - 48;
                if (v34 > 9)
                {
                  goto LABEL_70;
                }

                v35 = 10 * v22;
                if ((v22 * 10) >> 64 != (10 * v22) >> 63)
                {
                  goto LABEL_70;
                }

                v22 = v35 + v34;
                if (__OFADD__(v35, v34))
                {
                  goto LABEL_70;
                }

                ++v33;
                if (!--v17)
                {
                  goto LABEL_71;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_70;
        }

        goto LABEL_96;
      }

      if (v21 != 45)
      {
        if (v18)
        {
          v22 = 0;
          if (v20)
          {
            while (1)
            {
              v39 = *v20 - 48;
              if (v39 > 9)
              {
                goto LABEL_70;
              }

              v40 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_70;
              }

              v22 = v40 + v39;
              if (__OFADD__(v40, v39))
              {
                goto LABEL_70;
              }

              ++v20;
              if (!--v18)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_70:
        v22 = 0;
        LOBYTE(v17) = 1;
        goto LABEL_71;
      }

      if (v18 >= 1)
      {
        v17 = v18 - 1;
        if (v18 != 1)
        {
          v22 = 0;
          if (v20)
          {
            v23 = v20 + 1;
            while (1)
            {
              v24 = *v23 - 48;
              if (v24 > 9)
              {
                goto LABEL_70;
              }

              v25 = 10 * v22;
              if ((v22 * 10) >> 64 != (10 * v22) >> 63)
              {
                goto LABEL_70;
              }

              v22 = v25 - v24;
              if (__OFSUB__(v25, v24))
              {
                goto LABEL_70;
              }

              ++v23;
              if (!--v17)
              {
                goto LABEL_71;
              }
            }
          }

LABEL_62:
          LOBYTE(v17) = 0;
LABEL_71:
          v71 = v17;
          v44 = v17;
          goto LABEL_72;
        }

        goto LABEL_70;
      }

      __break(1u);
    }

    __break(1u);
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

LABEL_74:
  v45 = sub_22A4DD5EC();
  v47 = sub_229613854(v45, v46, a1);
  v49 = v48;

  if (v49)
  {
    sub_2296139C4(v47, v49);
    if ((v50 & 1) == 0)
    {
      v51 = sub_22A4DDFDC();
      [v2 setCategory_];
    }
  }

  v52 = sub_22A4DD5EC();
  sub_229613854(v52, v53, a1);
  v55 = v54;

  if (!v55)
  {
    goto LABEL_83;
  }

  if (a2)
  {

    v56 = sub_229590908();
    v58 = v57;
LABEL_81:
    v60 = sub_22A4DB61C();
    sub_2295798D4(v56, v58);
    goto LABEL_82;
  }

  v56 = sub_22A4DB5BC();
  v58 = v59;

  v60 = 0;
  if (v58 >> 60 != 15)
  {
    goto LABEL_81;
  }

LABEL_82:
  [v2 setSetupHash_];

LABEL_83:
  v61 = sub_22A4DD5EC();
  v63 = sub_229613854(v61, v62, a1);
  v65 = v64;

  if (!v65)
  {
    return;
  }

  if (v63 == sub_22A4DD5EC() && v65 == v66)
  {
  }

  else
  {
    v67 = sub_22A4DE60C();

    if ((v67 & 1) == 0)
    {
      return;
    }
  }

  if (isInternalBuild())
  {
    *(v2 + OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_skipKeychainSave) = 1;
  }
}

uint64_t sub_22960D3E4@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v60 = a6;
  v10 = sub_22A4DD07C();
  v62 = *(v10 - 8);
  v63 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v59 = &v59 - v14;
  v15 = *a1;
  v16 = objc_opt_self();
  sub_229543F58(v15);
  v17 = sub_22A4DD47C();

  v18 = [v16 _parseSerializedAccessoryDictionary_server_];

  if (v18)
  {
    sub_229562F68(0, &qword_281401760, 0x277D82BB8);
    v19 = [v18 instanceID];
    v20 = sub_22A4DDBDC();
    v21 = sub_22A4DDEDC();

    if (v21)
    {
      [v18 setPrimary_];
      [a2 setPrimaryAccessory_];
    }

    swift_beginAccess();

    v22 = sub_22A4DD5AC();

    [v18 setServerIdentifier_];

    swift_beginAccess();

    v23 = sub_22A4DD5AC();

    [v18 setIdentifier_];

    v24 = v59;
    sub_229541CB0(a4, &off_283CDE4B8);
    v25 = a2;
    v26 = v18;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCDC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v69 = v30;
      *v29 = 136315394;
      v64 = 91;
      v65 = 0xE100000000000000;
      v31 = [v25 shortDescription];
      v32 = sub_22A4DD5EC();
      v34 = v33;

      MEMORY[0x22AAD08C0](v32, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v64, v65, &v69);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      v36 = [v26 shortDescription];
      v37 = sub_22A4DD5EC();
      v39 = v38;

      v40 = sub_2295A3E30(v37, v39, &v69);

      *(v29 + 14) = v40;
      _os_log_impl(&dword_229538000, v27, v28, "%s Did create new accessory: %s", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    result = (*(v62 + 8))(v24, v63);
    *v60 = v26;
  }

  else
  {
    v61 = a5;
    sub_229541CB0(a4, &off_283CDE4B8);
    v42 = a2;

    v43 = sub_22A4DD05C();
    v44 = sub_22A4DDCEC();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v66[0] = v46;
      *v45 = 136315394;
      v67 = 91;
      v68 = 0xE100000000000000;
      v47 = [v42 shortDescription];
      v48 = sub_22A4DD5EC();
      v50 = v49;

      MEMORY[0x22AAD08C0](v48, v50);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v51 = sub_2295A3E30(v67, v68, v66);

      *(v45 + 4) = v51;
      *(v45 + 12) = 2080;
      v52 = sub_22A4DD4AC();
      v54 = sub_2295A3E30(v52, v53, v66);

      *(v45 + 14) = v54;
      _os_log_impl(&dword_229538000, v43, v44, "%s Unable to create HAPAccessory for: %s", v45, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v46, -1, -1);
      MEMORY[0x22AAD4E50](v45, -1, -1);
    }

    (*(v62 + 8))(v13, v63);
    v55 = v61;
    type metadata accessor for HMError(0);
    v66[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v57;
    *(inited + 48) = 0xD00000000000001FLL;
    *(inited + 56) = 0x800000022A58D7F0;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v58 = v67;
    result = swift_willThrow();
    *v55 = v58;
  }

  return result;
}

uint64_t sub_22960DB8C(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, unint64_t *a6, void *a7, void (*a8)(id *, uint64_t, uint64_t, uint64_t))
{
  v11 = [*a1 *a5];
  sub_229562F68(0, a6, a7);
  v12 = sub_22A4DD83C();

  if (v12 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    for (j = 0; ; ++j)
    {
      if ((v12 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x22AAD13F0](j, v12);
      }

      else
      {
        if (j >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v15 = *(v12 + 8 * j + 32);
      }

      v16 = v15;
      v17 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v22 = v15;
      a8(&v22, a2, a3, a4);

      if (v17 == i)
      {
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_22960DCDC(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v43 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v12 = [v11 type];
  if (!v12)
  {
    sub_22A4DD5EC();
    v12 = sub_22A4DD5AC();
  }

  v13 = HAPShortUUIDType();

  v14 = sub_22A4DD5EC();
  v16 = v15;

  if (!*(a2 + 16))
  {
  }

  v17 = sub_229543DBC(v14, v16);
  v19 = v18;

  if (v19)
  {
    v21 = *(*(a2 + 56) + 8 * v17);
    v22 = sub_22A4DDB3C();
    swift_beginAccess();
    objc_setAssociatedObject(v11, &unk_27D87DEA8, v22, 1);
    swift_endAccess();

    sub_229541CB0(a4, &off_283CDE4B8);
    v23 = a3;
    v24 = v11;
    v25 = sub_22A4DD05C();
    v26 = sub_22A4DDCDC();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v42 = v28;
      *v27 = 136315650;
      v44 = v28;
      v45 = 91;
      v46 = 0xE100000000000000;
      v29 = [v23 shortDescription];
      HIDWORD(v41) = v26;
      v30 = v29;
      v31 = sub_22A4DD5EC();
      v33 = v32;

      MEMORY[0x22AAD08C0](v31, v33);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v34 = sub_2295A3E30(v45, v46, &v44);

      *(v27 + 4) = v34;
      *(v27 + 12) = 2080;
      v35 = [v24 shortDescription];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      v39 = sub_2295A3E30(v36, v38, &v44);

      *(v27 + 14) = v39;
      *(v27 + 22) = 2048;
      *(v27 + 24) = v21;
      _os_log_impl(&dword_229538000, v25, BYTE4(v41), "%s Did update delay for characteristic: %s to %fs", v27, 0x20u);
      v40 = v42;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v40, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);
    }

    return (*(v43 + 8))(v10, v8);
  }

  return result;
}

id sub_22960E08C(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(a2, &off_283CDE4B8);
  v8 = a1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v22 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v23 = 91;
    v24 = 0xE100000000000000;
    v25 = v13;
    v14 = [v8 shortDescription];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(v23, v24, &v25);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_229538000, v9, v10, "%s Discovering accessories", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v5 + 8))(v7, v22);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  [v8 setSecuritySessionOpen_];
  result = [v8 delegate];
  if (result)
  {
    v20 = result;
    v21 = [v8 accessories];
    [v20 accessoryServer:v8 didDiscoverAccessories:v21 transaction:0 error:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_22960E33C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_22A4DD26C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD29C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v3 delegateQueue];
  if (!v14)
  {
    v14 = [v3 clientQueue];
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  aBlock[4] = sub_2295704E8;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_7;
  v16 = _Block_copy(aBlock);

  sub_22A4DD28C();
  v18[1] = MEMORY[0x277D84F90];
  sub_2296177B4(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v13, v9, v16);
  _Block_release(v16);

  (*(v7 + 8))(v9, v6);
  (*(v11 + 8))(v13, v10);
}

id sub_22960E640(void *a1, uint64_t a2)
{
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(a2, &off_283CDE4B8);
  v8 = a1;
  v9 = sub_22A4DD05C();
  v10 = sub_22A4DDCCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v4;
    v12 = v11;
    v13 = swift_slowAlloc();
    *v12 = 136315138;
    v22 = 91;
    v23 = 0xE100000000000000;
    v24 = v13;
    v14 = [v8 shortDescription];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(v22, v23, &v24);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_229538000, v9, v10, "%s Did disconnect", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  [v8 setSecuritySessionOpen_];
  result = [v8 delegate];
  if (result)
  {
    v20 = result;
    if ([result respondsToSelector_])
    {
      [v20 accessoryServer:v8 didDisconnectWithError:0];
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_22960E8FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = ObjectType;
  v8 = a1;
  sub_22960E33C(a4, v7);
}

uint64_t sub_22960EA38()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v7 shortDescription];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000017, 0x800000022A58D990, &v21);
    _os_log_impl(&dword_229538000, v8, v9, "%s No-op for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22960ED28()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v7 shortDescription];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A58D940, &v21);
    _os_log_impl(&dword_229538000, v8, v9, "%s No-op for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22960F050()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v7 shortDescription];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000020, 0x800000022A58D8F0, &v21);
    _os_log_impl(&dword_229538000, v8, v9, "%s No-op for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_22960F2F8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v7 shortDescription];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000019, 0x800000022A58D8D0, &v21);
    _os_log_impl(&dword_229538000, v8, v9, "%s No-op for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

id sub_22960F5A0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF18, &qword_22A57A998);
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v34 - v7;
  v9 = sub_22A4DD07C();
  v39 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  sub_22A4DBA4C();
  v13 = v40;
  v14 = [v40 pairingIdentity];

  if (v14)
  {

    sub_22960FCE0();
    result = [a2 delegate];
    if (result)
    {
      [result accessoryServer:a2 didStopPairingWithError:0];
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_229541CB0(a3, &off_283CDE4B8);
    (*(v38 + 16))(v8, a1, v6);
    v15 = a2;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136315394;
      v40 = 91;
      v41 = 0xE100000000000000;
      v42 = v19;
      v20 = [v15 shortDescription];
      v21 = v15;
      v22 = sub_22A4DD5EC();
      v37 = v9;
      v24 = v23;

      v25 = v22;
      v15 = v21;
      MEMORY[0x22AAD08C0](v25, v24);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v26 = sub_2295A3E30(v40, v41, &v42);

      *(v18 + 4) = v26;
      *(v18 + 12) = 2112;
      sub_22A4DBA4C();
      (*(v38 + 8))(v8, v6);
      v27 = v40;
      *(v18 + 14) = v40;
      v28 = v35;
      *v35 = v27;
      _os_log_impl(&dword_229538000, v16, v17, "%s Failed to find pairing in request: %@", v18, 0x16u);
      sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v28, -1, -1);
      v29 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v39 + 8))(v12, v37);
    }

    else
    {

      (*(v38 + 8))(v8, v6);
      (*(v39 + 8))(v12, v9);
    }

    result = [v15 delegate];
    if (result)
    {
      v31 = result;
      type metadata accessor for HMError(0);
      v42 = 2;
      sub_22956AD8C(MEMORY[0x277D84F90]);
      sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      v32 = v40;
      v33 = sub_22A4DB3DC();

      [v31 accessoryServer:v15 didStopPairingWithError:v33];
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

id sub_22960FCE0()
{
  v1 = v0;
  v115[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v104[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v104[-v8];
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v104[-v11];
  MEMORY[0x28223BE20](v10);
  v15 = &v104[-v14];
  if (*(v0 + OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_skipKeychainSave) == 1)
  {
    return [v0 setHasPairings_];
  }

  v111 = v13;
  v17 = [v0 keyStore];
  if (v17)
  {
    v18 = v17;
    v110 = v3;
    v112 = 0;
    v19 = [v1 identifier];
    if (!v19)
    {
      sub_22A4DD5EC();
      v19 = sub_22A4DD5AC();
    }

    v113 = 0;
    v109 = v18;
    v20 = [v18 readPublicKeyForAccessoryName:v19 registeredWithHomeKit:&v112 error:&v113];

    v21 = v113;
    if (v20)
    {
      v22 = sub_22A4DB62C();
      sub_2295798D4(v22, v23);

      if (v112)
      {
        sub_229541CB0(ObjectType, &off_283CDE4B8);
        v24 = v1;
        v25 = sub_22A4DD05C();
        v26 = sub_22A4DDCDC();

        if (os_log_type_enabled(v25, v26))
        {
          LODWORD(v107) = v26;
          v108 = v25;
          v27 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v115[0] = v106;
          *v27 = 136315394;
          v113 = 91;
          v114 = 0xE100000000000000;
          v28 = [v24 shortDescription];
          v29 = sub_22A4DD5EC();
          v31 = v30;

          MEMORY[0x22AAD08C0](v29, v31);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v32 = sub_2295A3E30(v113, v114, v115);

          *(v27 + 4) = v32;
          *(v27 + 12) = 2080;
          v33 = [v24 identifier];
          if (!v33)
          {
            sub_22A4DD5EC();
            v33 = sub_22A4DD5AC();
          }

          v34 = sub_22960AA04();
          v35 = [objc_allocWithZone(MEMORY[0x277CFEC20]) initWithIdentifier:v33 publicKey:v34 privateKey:0];

          v36 = [v35 identifier];
          v37 = sub_22A4DD5EC();
          v39 = v38;

          v40 = sub_2295A3E30(v37, v39, v115);

          *(v27 + 14) = v40;
          v41 = v108;
          _os_log_impl(&dword_229538000, v108, v107, "%s Already saved pairing for %s", v27, 0x16u);
          v42 = v106;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v42, -1, -1);
          MEMORY[0x22AAD4E50](v27, -1, -1);

          (*(v111 + 8))(v12, v110);
        }

        else
        {

          (*(v111 + 8))(v12, v110);
        }

        goto LABEL_32;
      }
    }

    else
    {
      v57 = v21;
      v58 = sub_22A4DB3EC();

      swift_willThrow();
      sub_229541CB0(ObjectType, &off_283CDE4B8);
      v59 = v1;
      v60 = sub_22A4DD05C();
      v61 = sub_22A4DDCEC();

      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v106 = v62;
        v108 = swift_slowAlloc();
        v115[0] = v108;
        *v62 = 136315138;
        v113 = 91;
        v114 = 0xE100000000000000;
        v63 = [v59 shortDescription];
        v64 = sub_22A4DD5EC();
        v107 = v58;
        v66 = v65;

        v105 = v61;
        MEMORY[0x22AAD08C0](v64, v66);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v67 = sub_2295A3E30(v113, v114, v115);

        v68 = v106;
        *(v106 + 4) = v67;
        _os_log_impl(&dword_229538000, v60, v105, "%s Failed to find the public key for accessory", v68, 0xCu);
        v69 = v108;
        __swift_destroy_boxed_opaque_existential_0(v108);
        MEMORY[0x22AAD4E50](v69, -1, -1);
        MEMORY[0x22AAD4E50](v68, -1, -1);
        v70 = v107;
      }

      else
      {
        v70 = v58;
      }

      (*(v111 + 8))(v6, v110);
      v112 = 0;
    }

    v73 = sub_22960AA04();
    v74 = [v73 data];

    v75 = sub_22A4DB62C();
    v77 = v76;

    v78 = sub_22A4DB61C();
    sub_2295798D4(v75, v77);
    v79 = [v1 identifier];
    if (!v79)
    {
      sub_22A4DD5EC();
      v79 = sub_22A4DD5AC();
    }

    v113 = 0;
    v80 = [v109 savePublicKey:v78 forAccessoryName:v79 error:&v113];

    if (!v80)
    {
      v101 = v113;
      sub_22A4DB3EC();

      swift_willThrow();
      return swift_unknownObjectRelease();
    }

    v81 = v113;
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v82 = v1;
    v83 = sub_22A4DD05C();
    v84 = sub_22A4DDCCC();

    if (os_log_type_enabled(v83, v84))
    {
      LODWORD(v107) = v84;
      v108 = v83;
      v85 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v115[0] = v106;
      *v85 = 136315394;
      v113 = 91;
      v114 = 0xE100000000000000;
      v86 = [v82 shortDescription];
      v87 = sub_22A4DD5EC();
      v89 = v88;

      MEMORY[0x22AAD08C0](v87, v89);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v90 = sub_2295A3E30(v113, v114, v115);

      *(v85 + 4) = v90;
      *(v85 + 12) = 2080;
      v91 = [v82 identifier];
      if (!v91)
      {
        sub_22A4DD5EC();
        v91 = sub_22A4DD5AC();
      }

      v92 = sub_22960AA04();
      v93 = [objc_allocWithZone(MEMORY[0x277CFEC20]) initWithIdentifier:v91 publicKey:v92 privateKey:0];

      v94 = [v93 identifier];
      v95 = sub_22A4DD5EC();
      v97 = v96;

      v98 = sub_2295A3E30(v95, v97, v115);

      *(v85 + 14) = v98;
      v99 = v108;
      _os_log_impl(&dword_229538000, v108, v107, "%s Did save pairing for %s", v85, 0x16u);
      v100 = v106;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v100, -1, -1);
      MEMORY[0x22AAD4E50](v85, -1, -1);

      (*(v111 + 8))(v15, v110);
    }

    else
    {

      (*(v111 + 8))(v15, v110);
    }

LABEL_32:
    v102 = [v1 identifier];
    if (!v102)
    {
      sub_22A4DD5EC();
      v102 = sub_22A4DD5AC();
    }

    [v1 associateAccessoryWithControllerKeyUsingAccessoryIdentifier_];

    v103 = [v1 keyBag];
    [v103 refreshKeys];

    [v1 setHasPairings_];
    return swift_unknownObjectRelease();
  }

  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v43 = v0;
  v44 = sub_22A4DD05C();
  v45 = sub_22A4DDCEC();

  if (os_log_type_enabled(v44, v45))
  {
    v110 = v3;
    v46 = swift_slowAlloc();
    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v115[0] = v109;
    *v46 = 136315394;
    v113 = 91;
    v114 = 0xE100000000000000;
    v47 = [v43 shortDescription];
    v48 = sub_22A4DD5EC();
    v50 = v49;

    MEMORY[0x22AAD08C0](v48, v50);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v51 = sub_2295A3E30(v113, v114, v115);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2112;
    v52 = [v43 identifier];
    if (!v52)
    {
      sub_22A4DD5EC();
      v52 = sub_22A4DD5AC();
    }

    v53 = sub_22960AA04();
    v54 = [objc_allocWithZone(MEMORY[0x277CFEC20]) initWithIdentifier:v52 publicKey:v53 privateKey:0];

    *(v46 + 14) = v54;
    v55 = v108;
    v108->isa = v54;
    _os_log_impl(&dword_229538000, v44, v45, "%s Failed to find keystore to add %@", v46, 0x16u);
    sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v55, -1, -1);
    v56 = v109;
    __swift_destroy_boxed_opaque_existential_0(v109);
    MEMORY[0x22AAD4E50](v56, -1, -1);
    MEMORY[0x22AAD4E50](v46, -1, -1);

    (*(v111 + 8))(v9, v110);
  }

  else
  {

    (*(v111 + 8))(v9, v3);
  }

  type metadata accessor for HMError(0);
  v115[0] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = v72;
  *(inited + 48) = 0xD000000000000017;
  *(inited + 56) = 0x800000022A58D830;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  return swift_willThrow();
}

void sub_229610D54(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_22A4DB3DC();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

uint64_t sub_229610DB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v29 = a1;
  v28[4] = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v28[5] = *(v6 - 8);
  v28[6] = v6;
  MEMORY[0x28223BE20](v6);
  v35 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DD26C();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD29C();
  v30 = *(v11 - 8);
  v31 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14);
  v18 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = v28 - v19;
  v21 = swift_allocObject();
  *(v21 + 16) = a3;
  *(v21 + 24) = a4;
  aBlock = sub_229619B24;
  v38 = v21;

  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF10, &qword_22A57A990);
  MEMORY[0x22AACEC10](&aBlock, v22);
  sub_229611628(v29);
  (*(v15 + 16))(v18, v20, v14);
  v23 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v24 = swift_allocObject();
  (*(v15 + 32))(v24 + v23, v18, v14);
  v41 = sub_229619BE8;
  v42 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v38 = 1107296256;
  v39 = sub_22953E640;
  v40 = &block_descriptor_50;
  v25 = _Block_copy(&aBlock);
  sub_22A4DD28C();
  v36 = MEMORY[0x277D84F90];
  sub_2296177B4(&qword_281401CF0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87CEA0, &unk_22A577A40);
  sub_22953E5DC();
  v26 = v33;
  sub_22A4DE03C();
  MEMORY[0x22AAD0F80](0, v13, v10, v25);
  _Block_release(v25);
  (*(v32 + 8))(v10, v26);
  (*(v30 + 8))(v13, v31);
  (*(v15 + 8))(v20, v14);
}

void sub_229611628(void *a1)
{
  v3 = v1;
  v45[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v42 = a1;
  v10 = a1;
  v11 = v3;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();

  if (os_log_type_enabled(v12, v13))
  {
    v38 = v13;
    v39 = v7;
    v40 = v6;
    v41 = v2;
    v14 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v45[0] = v37;
    *v14 = 136315394;
    v15 = 0xE100000000000000;
    v43 = 91;
    v44 = 0xE100000000000000;
    v16 = [v11 shortDescription];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(v43, v44, v45);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2080;
    if (v42)
    {
      v21 = [v10 identifier];
      v22 = sub_22A4DD5EC();
      v15 = v23;
    }

    else
    {
      v22 = 45;
    }

    v24 = v39;
    v25 = sub_2295A3E30(v22, v15, v45);

    *(v14 + 14) = v25;
    _os_log_impl(&dword_229538000, v12, v38, "%s Removing pairing: %s", v14, 0x16u);
    v26 = v37;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v26, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v24 + 8))(v9, v40);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  if ((v11[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_skipKeychainSave] & 1) == 0)
  {
    v27 = [v11 keyStore];
    if (!v27)
    {
      type metadata accessor for HMError(0);
      v45[0] = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 72) = MEMORY[0x277D837D0];
      *(inited + 40) = v35;
      *(inited + 48) = 0xD000000000000017;
      *(inited + 56) = 0x800000022A58D830;
      sub_22956AD8C(inited);
      swift_setDeallocating();
      sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();
      return;
    }

    v28 = v27;
    v29 = [v11 identifier];
    if (!v29)
    {
      sub_22A4DD5EC();
      v29 = sub_22A4DD5AC();
    }

    v43 = 0;
    v30 = [v28 removeAccessoryKeyForName:v29 error:&v43];

    if (!v30)
    {
      v36 = v43;
      sub_22A4DB3EC();

      swift_willThrow();
      swift_unknownObjectRelease();
      return;
    }

    v31 = v43;
    swift_unknownObjectRelease();
  }

  [v11 setHasPairings_];
  v32 = *&v11[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser];
  if (v32)
  {
    v33 = v32;
    sub_22956DFF4(v11);
  }
}

uint64_t sub_229611B50()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988);
  sub_22A4DBA4C();
  v1[0] = 0;
  (v1[1])(v1);
}

uint64_t sub_229611BB0(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988);
  sub_22A4DBA4C();
  v4[0] = a2;
  (v4[1])(v4);
}

void sub_229611E0C(id *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v61 = a4;
  v9 = sub_22A4DD07C();
  v54 = *(v9 - 8);
  v55 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v13 = [*a1 characteristic];
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = [v13 service];
  if (!v15 || (v16 = v15, v17 = [v15 accessory], v16, !v17))
  {
    v17 = v14;
LABEL_9:

LABEL_10:
    sub_229541CB0(a3, &off_283CDE4B8);
    v29 = a2;
    v30 = v12;
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v53[1] = v5;
      v35 = v34;
      v53[0] = swift_slowAlloc();
      v57[0] = v53[0];
      *v33 = 136315394;
      *&v59 = 91;
      *(&v59 + 1) = 0xE100000000000000;
      v36 = [v29 shortDescription];
      v37 = sub_22A4DD5EC();
      v39 = v38;

      MEMORY[0x22AAD08C0](v37, v39);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v40 = sub_2295A3E30(v59, *(&v59 + 1), v57);

      *(v33 + 4) = v40;
      *(v33 + 12) = 2112;
      *(v33 + 14) = v30;
      *v35 = v30;
      v41 = v30;
      _os_log_impl(&dword_229538000, v31, v32, "%s Invalid characteristic write request: %@", v33, 0x16u);
      sub_22953EAE4(v35, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v35, -1, -1);
      v42 = v53[0];
      __swift_destroy_boxed_opaque_existential_0(v53[0]);
      MEMORY[0x22AAD4E50](v42, -1, -1);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    (*(v54 + 8))(v11, v55);
    type metadata accessor for HMError(0);
    v57[0] = 3;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v43 = v59;
    v44 = sub_22A4DB3DC();

    v45 = [objc_opt_self() responseTupleForCharacteristic:0 error:v44];
    if (v45)
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_23;
  }

  v18 = [v14 instanceID];
  v19 = [v17 characteristicWithInstanceID_];

  if (!v19)
  {

    v5 = v4;
    goto LABEL_9;
  }

  if ([v12 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v20 = v58;
    v21 = __swift_project_boxed_opaque_existential_0(v57, v58);
    v56[3] = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v56);
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v21, v20);
    sub_229543C58(v56, &v59);
    __swift_destroy_boxed_opaque_existential_0(v57);
    v23 = *(&v60 + 1);
    if (*(&v60 + 1))
    {
      v24 = __swift_project_boxed_opaque_existential_0(&v59, *(&v60 + 1));
      v55 = v53;
      v25 = *(v23 - 8);
      MEMORY[0x28223BE20](v24);
      v27 = v53 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v25 + 16))(v27);
      v28 = sub_22A4DE5FC();
      (*(v25 + 8))(v27, v23);
      __swift_destroy_boxed_opaque_existential_0(&v59);
    }

    else
    {
      v28 = 0;
    }
  }

  else
  {
    v28 = 0;
    v59 = 0u;
    v60 = 0u;
  }

  [v14 setValue_];
  swift_unknownObjectRelease();
  v46 = [v12 contextData];
  if (v46)
  {
    v47 = v46;
    v48 = sub_22A4DB62C();
    v50 = v49;

    v51 = sub_22A4DB61C();
    sub_2295798D4(v48, v50);
  }

  else
  {
    v51 = 0;
  }

  [v14 setNotificationContext_];

  sub_229612480(v14);
  v52 = [objc_opt_self() responseTupleForCharacteristic:v14 error:0];
  if (v52)
  {
    v45 = v52;

LABEL_13:
    *v61 = v45;
    return;
  }

LABEL_23:
  __break(1u);
}

void sub_229612480(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 service];
  if (!v9)
  {
    goto LABEL_16;
  }

  v10 = v9;
  v11 = [v9 accessory];
  if (!v11)
  {

LABEL_16:
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v28 = v1;
    v29 = a1;
    v30 = sub_22A4DD05C();
    v31 = sub_22A4DDCEC();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v5;
      v34 = v33;
      v57 = swift_slowAlloc();
      *&v60 = v57;
      *v32 = 136315394;
      *&v62 = 91;
      *(&v62 + 1) = 0xE100000000000000;
      v35 = [v28 shortDescription];
      v36 = sub_22A4DD5EC();
      v38 = v37;

      MEMORY[0x22AAD08C0](v36, v38);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v39 = sub_2295A3E30(v62, *(&v62 + 1), &v60);

      *(v32 + 4) = v39;
      *(v32 + 12) = 2112;
      *(v32 + 14) = v29;
      *v34 = v29;
      v40 = v29;
      _os_log_impl(&dword_229538000, v30, v31, "%s Missing service or accessory for %@", v32, 0x16u);
      sub_22953EAE4(v34, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v34, -1, -1);
      v41 = v57;
      __swift_destroy_boxed_opaque_existential_0(v57);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      MEMORY[0x22AAD4E50](v32, -1, -1);

      (*(v6 + 8))(v8, v58);
    }

    else
    {

      (*(v6 + 8))(v8, v5);
    }

    return;
  }

  v12 = v11;
  if (qword_2814028E0 != -1)
  {
    swift_once();
  }

  v13 = *(qword_281405070 + 112);
  if (!*(v13 + 16))
  {
    goto LABEL_20;
  }

  v14 = sub_229543DBC(0xD000000000000015, 0x800000022A58D8B0);
  if ((v15 & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_2295404B0(*(v13 + 56) + 32 * v14, &v62);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    return;
  }

  v16 = v60;
  v17 = [a1 type];
  if (!v17)
  {
    sub_22A4DD5EC();
    v17 = sub_22A4DD5AC();
  }

  v18 = HAPShortUUIDType();

  v19 = sub_22A4DD5EC();
  v21 = v20;

  if (!*(v16 + 16))
  {

    goto LABEL_19;
  }

  v22 = sub_229543DBC(v19, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {
LABEL_19:

    goto LABEL_20;
  }

  sub_2295404B0(*(v16 + 56) + 32 * v22, &v62);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF00, &qword_22A57A970);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_20;
  }

  v57 = v60;
  if ([a1 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v25 = *(&v63 + 1);
    v26 = __swift_project_boxed_opaque_existential_0(&v62, *(&v63 + 1));
    v59[3] = v25;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v59);
    (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);
    sub_229543C58(v59, &v60);
    __swift_destroy_boxed_opaque_existential_0(&v62);
  }

  else
  {
    v60 = 0u;
    v61 = 0u;
  }

  v62 = v60;
  v63 = v61;
  v42 = v57[8];
  v56 = v57 + 8;
  v43 = 1 << *(v57 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & v42;
  v46 = (v43 + 63) >> 6;

  v47 = 0;
  while (v45)
  {
    v48 = v47;
LABEL_31:
    v49 = __clz(__rbit64(v45));
    v45 &= v45 - 1;
    v50 = v49 | (v48 << 6);
    v51 = v57[7];
    v52 = (v57[6] + 16 * v50);
    v53 = v52[1];
    v58 = *v52;
    v54 = *(v51 + 8 * v50);

    sub_229613E78(v58, v53, v54, &v62, a1, v10, v12, v2, ObjectType);
  }

  while (1)
  {
    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      break;
    }

    if (v48 >= v46)
    {

      sub_22953EAE4(&v62, &unk_27D87FC20, &unk_22A578810);
      return;
    }

    v45 = v56[v48];
    ++v47;
    if (v45)
    {
      v47 = v48;
      goto LABEL_31;
    }
  }

  __break(1u);
}

void sub_229612BF0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_229562F68(0, &qword_27D87DEF0, 0x277CFEA90);
    v5 = sub_22A4DD81C();
  }

  if (a2)
  {
    v6 = sub_22A4DB3DC();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

uint64_t sub_229612E74(uint64_t (*a1)(void), uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v11 = v3;
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = v7;
    v15 = v14;
    v16 = swift_slowAlloc();
    *v15 = 136315138;
    v27 = 91;
    v28 = 0xE100000000000000;
    v29 = v16;
    v17 = [v11 shortDescription];
    v18 = sub_22A4DD5EC();
    v26 = a2;
    v19 = a1;
    v21 = v20;

    MEMORY[0x22AAD08C0](v18, v21);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v22 = sub_2295A3E30(v27, v28, &v29);
    a1 = v19;

    *(v15 + 4) = v22;
    _os_log_impl(&dword_229538000, v12, v13, "%s Did identify", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);

    (*(v8 + 8))(v10, v25);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  return a1(0);
}

uint64_t sub_229613164(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a1;
  v6[4] = v2;
  v6[5] = ObjectType;
  v7 = a2;

  v8 = v2;
  sub_22960E33C(sub_2296177A8, v6);
}

id sub_229613208(unint64_t a1, unint64_t a2, id a3, uint64_t a4)
{
  v8 = sub_22A4DD07C();
  v9 = MEMORY[0x28223BE20](v8);
  if (a1)
  {
    v37 = v11;
    v38 = v9;
    v40 = a3;
    v36 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
    {
      v39 = a1;
      v13 = a1;
      if (!i)
      {
        break;
      }

      a1 = 0;
      while (1)
      {
        if ((a2 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x22AAD13F0](a1, a2);
        }

        else
        {
          if (a1 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v14 = *(a2 + 8 * a1 + 32);
        }

        v15 = v14;
        v16 = a1 + 1;
        if (__OFADD__(a1, 1))
        {
          break;
        }

        [v14 setStateNumber_];

        ++a1;
        if (v16 == i)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

LABEL_13:
    v17 = v36;
    sub_229541CB0(a4, &off_283CDE4B8);
    a3 = v40;
    v18 = v40;

    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 136315394;
      v41 = 91;
      v42 = 0xE100000000000000;
      v43 = v22;
      v23 = [v18 shortDescription];
      v24 = sub_22A4DD5EC();
      v26 = v25;

      MEMORY[0x22AAD08C0](v24, v26);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v27 = sub_2295A3E30(v41, v42, &v43);

      *(v21 + 4) = v27;
      *(v21 + 12) = 2080;
      v28 = sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
      v29 = MEMORY[0x22AAD0A20](a2, v28);
      v31 = sub_2295A3E30(v29, v30, &v43);

      *(v21 + 14) = v31;
      _os_log_impl(&dword_229538000, v19, v20, "%s Did update characteristics's state number: %s", v21, 0x16u);
      swift_arrayDestroy();
      v32 = v22;
      a3 = v40;
      MEMORY[0x22AAD4E50](v32, -1, -1);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    else
    {
    }

    (*(v37 + 8))(v17, v38);
    a1 = v39;
  }

  result = [a3 delegate];
  if (result)
  {
    v34 = result;
    sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
    v35 = sub_22A4DD81C();
    [v34 accessoryServer:a3 didUpdateValuesForCharacteristics:v35 stateNumber:a1 broadcast:0];

    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_2296136D4(uint64_t a1)
{
  v2 = [v1 accessories];
  if (v2)
  {
    v3 = v2;
    sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
    v4 = sub_22A4DD83C();

    if (v4 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AAD13F0](v6, v4);
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v7 = *(v4 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          break;
        }

        sub_229562F68(0, &qword_281401760, 0x277D82BB8);
        v10 = [v8 instanceID];
        v11 = sub_22A4DDEDC();

        if (v11)
        {

          return v8;
        }

        ++v6;
        if (v9 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  return 0;
}

uint64_t sub_229613854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DD63C();
  MEMORY[0x28223BE20](v6 - 8);
  if (!*(a3 + 16))
  {
    return 0;
  }

  v7 = sub_229543DBC(a1, a2);
  if (v8)
  {
    sub_2295404B0(*(a3 + 56) + 32 * v7, v15);
    if (swift_dynamicCast())
    {
      sub_22A4DD62C();
      v9 = sub_22A4DD60C();
      sub_2295798D4(v13, v14);
      return v9;
    }
  }

  if (!*(a3 + 16))
  {
    return 0;
  }

  v11 = sub_229543DBC(a1, a2);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  sub_2295404B0(*(a3 + 56) + 32 * v11, v15);
  if (swift_dynamicCast())
  {
    return v13;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2296139C4(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v22[0] = result;
      v22[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v14 = v22 + 1;
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                break;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                break;
              }

              v9 = __CFADD__(10 * v6, v15);
              v6 = 10 * v6 + v15;
              if (v9)
              {
                break;
              }

              ++v14;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_63;
        }

LABEL_74:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v17 = v22;
          while (1)
          {
            v18 = *v17 - 48;
            if (v18 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = __CFADD__(10 * v6, v18);
            v6 = 10 * v6 + v18;
            if (v9)
            {
              break;
            }

            ++v17;
            if (!--v2)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_63;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v22 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            if (!is_mul_ok(v6, 0xAuLL))
            {
              break;
            }

            v9 = 10 * v6 >= v11;
            v6 = 10 * v6 - v11;
            if (!v9)
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_22A4DE25C();
        v3 = v21;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v12 = (result + 1);
              while (1)
              {
                v13 = *v12 - 48;
                if (v13 > 9)
                {
                  goto LABEL_63;
                }

                if (!is_mul_ok(v6, 0xAuLL))
                {
                  goto LABEL_63;
                }

                v9 = __CFADD__(10 * v6, v13);
                v6 = 10 * v6 + v13;
                if (v9)
                {
                  goto LABEL_63;
                }

                ++v12;
                if (!--v3)
                {
                  goto LABEL_64;
                }
              }
            }

            goto LABEL_62;
          }

          goto LABEL_63;
        }

        goto LABEL_73;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v16 = *result - 48;
              if (v16 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = __CFADD__(10 * v6, v16);
              v6 = 10 * v6 + v16;
              if (v9)
              {
                goto LABEL_63;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

          goto LABEL_62;
        }

LABEL_63:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_64;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_63;
              }

              if (!is_mul_ok(v6, 0xAuLL))
              {
                goto LABEL_63;
              }

              v9 = 10 * v6 >= v8;
              v6 = 10 * v6 - v8;
              if (!v9)
              {
                goto LABEL_63;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_64;
              }
            }
          }

LABEL_62:
          LOBYTE(v3) = 0;
LABEL_64:
          v23 = v3;
          v19 = v3;
          goto LABEL_65;
        }

        goto LABEL_63;
      }

      __break(1u);
    }

    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v6 = sub_2296163B8(result, a2, 10);
  v19 = v20;
LABEL_65:

  if (v19)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

uint64_t type metadata accessor for DemoAccessoryServer(uint64_t a1)
{
  result = qword_27D87DEC0;
  if (!qword_27D87DEC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229613DC4(uint64_t a1)
{
  result = sub_22A4DB7DC();
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

uint64_t sub_229613E78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, unint64_t *a7, void *a8, uint64_t a9)
{
  sub_22961995C(a4, &v82);
  if (*(&v83 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    if (swift_dynamicCast())
    {
      v16 = *(&v80 + 1);
      v17 = v80;
      if (!*(a3 + 16))
      {
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_22953EAE4(&v82, &unk_27D87FC20, &unk_22A578810);
  }

  sub_22961995C(a4, &v82);
  if (*(&v83 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v18 = [v80 stringValue];

      v17 = sub_22A4DD5EC();
      v16 = v19;

      if (!*(a3 + 16))
      {
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_22953EAE4(&v82, &unk_27D87FC20, &unk_22A578810);
  }

  v16 = 0xE200000000000000;
  v17 = 8995;
  if (!*(a3 + 16))
  {
  }

LABEL_12:
  v20 = sub_229543DBC(8995, 0xE200000000000000);
  if (v21)
  {
    sub_2295404B0(*(a3 + 56) + 32 * v20, &v82);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
    if (swift_dynamicCast())
    {
      v22 = v78[0];

      if (!v78[0])
      {
        return result;
      }

      goto LABEL_22;
    }
  }

  if (!*(a3 + 16))
  {
  }

  v24 = sub_229543DBC(v17, v16);
  v26 = v25;

  if ((v26 & 1) == 0)
  {
    return result;
  }

  sub_2295404B0(*(a3 + 56) + 32 * v24, &v82);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
  result = swift_dynamicCast();
  v22 = result ? v80 : 0;
  if (!v22)
  {
    return result;
  }

LABEL_22:
  if ([a5 value])
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v27 = v79;
    v28 = __swift_project_boxed_opaque_existential_0(v78, v79);
    v77[3] = v27;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v77);
    (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v28, v27);
    sub_229543C58(v77, &v80);
    __swift_destroy_boxed_opaque_existential_0(v78);
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
  }

  v82 = v80;
  v83 = v81;
  if (*(v22 + 16))
  {
    v30 = sub_229543DBC(0x65756C6156, 0xE500000000000000);
    if (v31)
    {
      sub_2295404B0(*(v22 + 56) + 32 * v30, v78);
      sub_229543C58(v78, &v80);
      sub_22953EAE4(&v82, &unk_27D87FC20, &unk_22A578810);
      sub_229543C58(&v80, &v82);
    }
  }

  if (*(v22 + 16) && (v32 = sub_229543DBC(0x79616C6544, 0xE500000000000000), (v33 & 1) != 0))
  {
    sub_2295404B0(*(v22 + 56) + 32 * v32, &v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v34 = swift_dynamicCast();
    if (v34)
    {
      v35 = v78[0];
    }

    else
    {
      v35 = 0;
    }

    v36 = v34 ^ 1;
  }

  else
  {
    v35 = 0;
    v36 = 1;
  }

  v73 = a5;
  if (*(v22 + 16) && (v37 = sub_229543DBC(0xD000000000000015, 0x800000022A58D8B0), (v38 & 1) != 0))
  {
    sub_2295404B0(*(v22 + 56) + 32 * v37, &v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
    v39 = swift_dynamicCast();
    v40 = v78[0];
    if (!v39)
    {
      v40 = 0;
    }

    v72 = v40;
    if (v39)
    {
      v41 = v78[1];
    }

    else
    {
      v41 = 0;
    }

    v75 = v41;
  }

  else
  {
    v72 = 0;
    v75 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_22A576190;
  *(v42 + 32) = a6;
  v78[0] = v42;
  v43 = *(v22 + 16);
  v44 = a6;
  if (!v43 || (v45 = v44, v46 = sub_229543DBC(0x7365636976726553, 0xE800000000000000), (v47 & 1) == 0) || (sub_2295404B0(*(v22 + 56) + 32 * v46, &v80), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E400, "ll\b"), (swift_dynamicCast() & 1) == 0))
  {

    goto LABEL_54;
  }

  v74 = v77[0];

  v78[0] = MEMORY[0x277D84F90];
  v70 = a1;
  v71 = a2;
  v69 = v35;
  v68 = v36;
  if (!*(v22 + 16) || (v48 = sub_229543DBC(0x726553726568744FLL, 0xED00007365636976), (v49 & 1) == 0))
  {

    goto LABEL_58;
  }

  sub_2295404B0(*(v22 + 56) + 32 * v48, &v80);

  if ((swift_dynamicCast() & 1) == 0 || (v77[0] & 1) == 0)
  {
LABEL_58:
    v53 = 0;
    v54 = *(v74 + 16);
    v55 = v74 + 40;
    while (v54 != v53)
    {
      if (v53 >= *(v74 + 16))
      {
        __break(1u);
        goto LABEL_74;
      }

      v57 = sub_22A4DD5AC();
      v58 = HAPShortUUIDType();

      v59 = sub_22A4DD5EC();
      v61 = v60;

      v62 = [v45 type];
      if (!v62)
      {
        sub_22A4DD5EC();
        v62 = sub_22A4DD5AC();
      }

      v63 = HAPShortUUIDType();

      v64 = sub_22A4DD5EC();
      v66 = v65;

      if (v59 == v64 && v61 == v66)
      {

LABEL_69:

        goto LABEL_70;
      }

      ++v53;
      v55 += 16;
      v56 = sub_22A4DE60C();

      if (v56)
      {
        goto LABEL_69;
      }
    }

    if (v54)
    {
      goto LABEL_55;
    }

LABEL_70:
    v67 = v45;
    MEMORY[0x22AAD09E0]();
    if (*((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v78[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_71;
    }

LABEL_74:
    sub_22A4DD85C();
LABEL_71:
    sub_22A4DD87C();
    goto LABEL_72;
  }

  v50 = v45;
  v51 = a7;
  sub_22961733C(v74, v51, v50);

LABEL_72:
  a1 = v70;
  a2 = v71;
  v35 = v69;
  v36 = v68;
LABEL_54:
  v52 = v78[0];

  sub_22960A974(v52, a1, a2, v72, v75, &v82, v35, v36, a8, v73, a9);

LABEL_55:

  return sub_22953EAE4(&v82, &unk_27D87FC20, &unk_22A578810);
}

uint64_t sub_22961473C(uint64_t a1, uint64_t a2)
{
  v3 = [v2 services];
  sub_229562F68(0, &qword_27D87DEE0, 0x277CFEC40);
  v4 = sub_22A4DD83C();

  v23 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 type];
      if (!v10)
      {
        sub_22A4DD5EC();
        v10 = sub_22A4DD5AC();
      }

      v11 = HAPShortUUIDType();

      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = sub_22A4DD5AC();
      v16 = HAPShortUUIDType();

      v17 = sub_22A4DD5EC();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {
      }

      else
      {
        v20 = sub_22A4DE60C();

        if ((v20 & 1) == 0)
        {

          goto LABEL_6;
        }
      }

      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
LABEL_6:
      ++v6;
      if (v9 == i)
      {
        v21 = v23;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  v21 = MEMORY[0x277D84F90];
LABEL_23:

  return v21;
}

void *sub_2296149AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, char *a9, void *a10, uint64_t a11)
{
  v41 = a8;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = v36 - v19;
  result = sub_229614C68(a2, a3);
  if (result)
  {
    v22 = result;
    v36[1] = v11;
    if (a5)
    {
      v23 = sub_229614C68(a4, a5);
      if (v23)
      {
        v24 = v23;
        if ([v23 value])
        {
          sub_22A4DE01C();
          swift_unknownObjectRelease();
          v25 = *(&v39 + 1);
          v26 = __swift_project_boxed_opaque_existential_0(&v38, *(&v39 + 1));
          v37[3] = v25;
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
          (*(*(v25 - 8) + 16))(boxed_opaque_existential_1, v26, v25);

          sub_229543C58(v37, v40);
          __swift_destroy_boxed_opaque_existential_0(&v38);
        }

        else
        {

          memset(v40, 0, sizeof(v40));
        }

        sub_229619AB4(v40, a6);
      }
    }

    sub_22961995C(a6, v40);
    v28 = sub_229614EA0();
    if (v29)
    {
      if (v41)
      {
        a7 = *&a9[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_targetToCurrentStateUpdateDelay];
      }
    }

    else
    {
      a7 = v28;
    }

    v30 = sub_22A4DD9DC();
    (*(*(v30 - 8) + 56))(v20, 1, 1, v30);
    sub_22961995C(v40, &v38);
    v31 = swift_allocObject();
    *(v31 + 16) = 0;
    *(v31 + 24) = 0;
    *(v31 + 32) = a9;
    *(v31 + 40) = v22;
    *(v31 + 48) = a7;
    v32 = v39;
    *(v31 + 56) = v38;
    *(v31 + 72) = v32;
    *(v31 + 88) = a10;
    *(v31 + 96) = a11;
    v33 = a9;
    v34 = v22;
    v35 = a10;
    sub_22957F3C0(0, 0, v20, &unk_22A57A980, v31);

    return sub_22953EAE4(v40, &unk_27D87FC20, &unk_22A578810);
  }

  return result;
}

void *sub_229614C68(uint64_t a1, uint64_t a2)
{
  v3 = [v2 characteristics];
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v4 = sub_22A4DD83C();

  if (v4 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = [v7 type];
      if (!v10)
      {
        sub_22A4DD5EC();
        v10 = sub_22A4DD5AC();
      }

      v11 = HAPShortUUIDType();

      v12 = sub_22A4DD5EC();
      v14 = v13;

      v15 = sub_22A4DD5AC();
      v16 = HAPShortUUIDType();

      v17 = sub_22A4DD5EC();
      v19 = v18;

      if (v12 == v17 && v14 == v19)
      {

        return v8;
      }

      v20 = sub_22A4DE60C();

      if (v20)
      {

        return v8;
      }

      ++v6;
      if (v9 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  return 0;
}

uint64_t sub_229614EA0()
{
  swift_beginAccess();
  v1 = objc_getAssociatedObject(v0, &unk_27D87DEA8);
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

uint64_t sub_229614F90(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  *(v9 + 80) = a8;
  *(v9 + 88) = a9;
  *(v9 + 72) = a7;
  *(v9 + 64) = a1;
  *(v9 + 48) = a5;
  *(v9 + 56) = a6;
  v10 = sub_22A4DE2EC();
  *(v9 + 96) = v10;
  *(v9 + 104) = *(v10 - 8);
  *(v9 + 112) = swift_task_alloc();
  v11 = sub_22A4DD07C();
  *(v9 + 120) = v11;
  *(v9 + 128) = *(v11 - 8);
  *(v9 + 136) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2296150B8, 0, 0);
}

uint64_t sub_2296150B8()
{
  v31 = v0;
  v1 = *(v0 + 6);
  v2 = *(v0 + 7);
  sub_229541CB0(*(v0 + 11), &off_283CDE4B8);
  v3 = v1;
  v4 = v2;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 16);
  v8 = *(v0 + 17);
  v10 = *(v0 + 15);
  if (v7)
  {
    v11 = *(v0 + 8);
    v29 = *(v0 + 17);
    v12 = *(v0 + 6);
    v13 = *(v0 + 7);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *v14 = 136315650;
    v30[0] = v28;
    v30[1] = 91;
    v30[2] = 0xE100000000000000;
    v16 = [v12 shortDescription];
    v17 = sub_22A4DD5EC();
    v27 = v10;
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v30);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    *(v14 + 14) = v13;
    *v15 = v13;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v11;
    v21 = v13;
    _os_log_impl(&dword_229538000, v5, v6, "%s Auto-updating %@ after %fs", v14, 0x20u);
    sub_22953EAE4(v15, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    result = (*(v9 + 8))(v29, v27);
  }

  else
  {

    result = (*(v9 + 8))(v8, v10);
  }

  v23 = v0[8] * 1000000000.0;
  if (COERCE__INT64(fabs(v23)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v23 <= -1.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v23 >= 1.84467441e19)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v24 = 1000000000 * v23;
  v25 = (v23 * 0x3B9ACA00uLL) >> 64;
  sub_22A4DE6AC();
  v26 = swift_task_alloc();
  *(v0 + 18) = v26;
  *v26 = v0;
  v26[1] = sub_229615400;

  return sub_2297858E8(v24, v25, 0, 0, 1);
}

uint64_t sub_229615400()
{
  v2 = *v1;

  v3 = v2[14];
  v4 = v2[13];
  v5 = v2[12];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_229619D10;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_229615598;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_229615598()
{
  sub_22961995C(v0[9], (v0 + 2));
  v1 = v0[5];
  if (v1)
  {
    v2 = __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v3 = *(v1 - 8);
    v4 = swift_task_alloc();
    (*(v3 + 16))(v4, v2, v1);
    v5 = sub_22A4DE5FC();
    (*(v3 + 8))(v4, v1);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = v0[10];
  v7 = v0[7];
  [v7 setValue_];
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22A576190;
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = [v6 stateNumber];
  sub_229613164(v8, v10);

  v11 = v0[1];

  return v11();
}

unint64_t sub_22961577C(void *a1)
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x277CFEA80]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277CFEBA8]) init];
  v9 = [a1 metadata];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 maxLength];

    if (v11)
    {
      [v8 setMaxLength_];
    }
  }

  v12 = [a1 metadata];
  if (v12)
  {
    v13 = v12;
    v14 = [v12 stepValue];

    if (v14)
    {
      [v8 setStepValue_];
    }
  }

  v15 = [a1 metadata];
  if (v15)
  {
    v16 = v15;
    v17 = [v15 validValues];

    if (v17)
    {
      [v8 setValidValues_];
    }
  }

  v18 = [a1 metadata];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 minimumValue];

    if (v20)
    {
      [v8 setMinimumValue_];
    }
  }

  v21 = [a1 metadata];
  if (v21)
  {
    v22 = v21;
    v23 = [v21 maximumValue];

    if (v23)
    {
      [v8 setMaximumValue_];
    }
  }

  v24 = [a1 metadata];
  if (v24)
  {
    v25 = v24;
    v26 = [v24 units];

    if (v26)
    {
      [v7 setUnits_];
    }
  }

  v27 = [a1 metadata];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 format];

    if (v29)
    {
      [v7 setFormat_];
    }
  }

  v30 = [a1 metadata];
  if (v30)
  {
    v31 = v30;
    v32 = [v30 manufacturerDescription];

    if (v32)
    {
      [v7 setManufacturerDescription_];
    }
  }

  [v7 setConstraints_];
  result = [a1 properties];
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_45;
  }

  v34 = result;
  if (result >> 16)
  {
LABEL_45:
    __break(1u);
    return result;
  }

  v63 = v7;
  v64 = v1;
  v60 = v6;
  v35 = [a1 type];
  if (!v35)
  {
    sub_22A4DD5EC();
    v35 = sub_22A4DD5AC();
  }

  v36 = [a1 instanceID];
  v37 = [a1 value];
  v61 = v4;
  v62 = v3;
  if (v37)
  {
    sub_22A4DE01C();
    swift_unknownObjectRelease();
    v38 = v67;
    v39 = __swift_project_boxed_opaque_existential_0(v66, v67);
    v65[3] = v38;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v65);
    (*(*(v38 - 8) + 16))(boxed_opaque_existential_1, v39, v38);
    sub_229543C58(v65, &v68);
    __swift_destroy_boxed_opaque_existential_0(v66);
    v41 = *(&v69 + 1);
    if (*(&v69 + 1))
    {
      v42 = __swift_project_boxed_opaque_existential_0(&v68, *(&v69 + 1));
      v43 = *(v41 - 8);
      MEMORY[0x28223BE20](v42);
      v45 = &v59 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v43 + 16))(v45);
      v46 = sub_22A4DE5FC();
      (*(v43 + 8))(v45, v41);
      __swift_destroy_boxed_opaque_existential_0(&v68);
    }

    else
    {
      v46 = 0;
    }
  }

  else
  {
    v46 = 0;
    v68 = 0u;
    v69 = 0u;
  }

  v47 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v48 = [a1 stateNumber];
  v49 = [a1 isNotificationEnabled];
  v50 = v63;
  v51 = [v47 initWithType:v35 instanceID:v36 value:v46 stateNumber:v48 properties:v34 eventNotificationsEnabled:v49 metadata:v50];

  swift_unknownObjectRelease();
  if (v51)
  {

    v52 = v51;
    v53 = [a1 lastKnownValueUpdateTime];
    if (v53)
    {
      v54 = v60;
      v55 = v53;
      sub_22A4DB70C();

      v56 = sub_22A4DB6AC();
      (*(v61 + 8))(v54, v62);
    }

    else
    {
      v56 = 0;
    }

    [v52 setValueUpdatedTime_];

    sub_22970EF3C();
    if (v57)
    {
      v58 = 0;
    }

    else
    {
      v58 = sub_22A4DDB3C();
    }

    swift_beginAccess();
    objc_setAssociatedObject(v52, &unk_27D87DEA8, v58, 1);
    swift_endAccess();

    swift_unknownObjectRelease();
  }

  else
  {

    v52 = v8;
  }

  return v51;
}

id sub_229615EE4(void *a1)
{
  v2 = [a1 characteristics];
  sub_229562F68(0, &unk_27D87E490, off_2786660B8);
  v3 = sub_22A4DD83C();

  v15 = a1;
  v16 = MEMORY[0x277D84F90];
  if (v3 >> 62)
  {
LABEL_21:
    v4 = sub_22A4DE0EC();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  while (v4 != v5)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x22AAD13F0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_20;
      }

      v6 = *(v3 + 8 * v5 + 32);
    }

    v7 = v6;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_20:
      __break(1u);
      goto LABEL_21;
    }

    sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
    ++v5;
    if (sub_22961577C(v7))
    {
      MEMORY[0x22AAD09E0]();
      if (*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();
      v5 = v8;
    }
  }

  v9 = [v15 type];
  if (!v9)
  {
    sub_22A4DD5EC();
    v9 = sub_22A4DD5AC();
  }

  v10 = [v15 instanceID];
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v11 = sub_22A4DD81C();

  v12 = [v15 linkedServices];
  if (!v12)
  {
    sub_229562F68(0, &qword_281401770, 0x277CCABB0);
    sub_22A4DD83C();
    v12 = sub_22A4DD81C();
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithType:v9 instanceID:v10 parsedCharacteristics:v11 serviceProperties:0 linkedServices:v12];

  return v13;
}

void *sub_2296161C8(uint64_t a1)
{
  v2 = [v1 characteristics];
  sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
  v3 = sub_22A4DD83C();

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v5 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAD13F0](v5, v3);
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v5 + 32);
      }

      v7 = v6;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      sub_229562F68(0, &qword_281401760, 0x277D82BB8);
      v9 = [v7 instanceID];
      v10 = sub_22A4DDEDC();

      if (v10)
      {

        return v7;
      }

      ++v5;
      if (v8 == i)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:

  return 0;
}

void *sub_229616344(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D140, &unk_22A57A950);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_2296163B8(uint64_t a1, uint64_t a2, int64_t a3)
{
  v68 = a1;
  v69 = a2;

  result = sub_22A4DD78C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_229616EC8(result, v5);
    v38 = v37;

    v5 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22A4DE25C();
      v7 = v67;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v21 = v7 - 1;
        if (v21)
        {
          v22 = a3 + 48;
          v23 = a3 + 55;
          v24 = a3 + 87;
          if (a3 > 10)
          {
            v22 = 58;
          }

          else
          {
            v24 = 97;
            v23 = 65;
          }

          if (result)
          {
            v13 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v17 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_129;
                  }

                  v27 = -87;
                }

                else
                {
                  v27 = -55;
                }
              }

              else
              {
                v27 = -48;
              }

              if (!is_mul_ok(v13, a3))
              {
                goto LABEL_128;
              }

              v28 = v13 * a3;
              v29 = v26 + v27;
              v20 = __CFADD__(v28, v29);
              v13 = v28 + v29;
              if (v20)
              {
                goto LABEL_128;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_66:
            v17 = v13;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

        goto LABEL_128;
      }

      goto LABEL_133;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v30 = a3 + 48;
        v31 = a3 + 55;
        v32 = a3 + 87;
        if (a3 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v13 = 0;
          while (1)
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v30)
            {
              if (v33 < 0x41 || v33 >= v31)
              {
                v17 = 0;
                if (v33 < 0x61 || v33 >= v32)
                {
                  goto LABEL_129;
                }

                v34 = -87;
              }

              else
              {
                v34 = -55;
              }
            }

            else
            {
              v34 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v35 = v13 * a3;
            v36 = v33 + v34;
            v20 = __CFADD__(v35, v36);
            v13 = v35 + v36;
            if (v20)
            {
              goto LABEL_128;
            }

            ++result;
            if (!--v7)
            {
              goto LABEL_66;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_128:
      v17 = 0;
      goto LABEL_129;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_129;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            if (!is_mul_ok(v13, a3))
            {
              goto LABEL_128;
            }

            v18 = v13 * a3;
            v19 = v15 + v16;
            v20 = v18 >= v19;
            v13 = v18 - v19;
            if (!v20)
            {
              goto LABEL_128;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_66;
            }
          }
        }

LABEL_67:
        v17 = 0;
LABEL_129:

        return v17;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v39 = HIBYTE(v5) & 0xF;
  v68 = v6;
  v69 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v59 = a3 + 48;
        v60 = a3 + 55;
        v61 = a3 + 87;
        if (a3 > 10)
        {
          v59 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v62 = &v68;
        while (1)
        {
          v63 = *v62;
          if (v63 < 0x30 || v63 >= v59)
          {
            if (v63 < 0x41 || v63 >= v60)
            {
              v17 = 0;
              if (v63 < 0x61 || v63 >= v61)
              {
                goto LABEL_129;
              }

              v64 = -87;
            }

            else
            {
              v64 = -55;
            }
          }

          else
          {
            v64 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v65 = v41 * a3;
          v66 = v63 + v64;
          v20 = __CFADD__(v65, v66);
          v41 = v65 + v66;
          if (v20)
          {
            goto LABEL_128;
          }

          v62 = (v62 + 1);
          if (!--v39)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a3 + 48;
        v43 = a3 + 55;
        v44 = a3 + 87;
        if (a3 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v68 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v17 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_129;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          if (!is_mul_ok(v41, a3))
          {
            goto LABEL_128;
          }

          v48 = v41 * a3;
          v49 = v46 + v47;
          v20 = v48 >= v49;
          v41 = v48 - v49;
          if (!v20)
          {
            goto LABEL_128;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v39)
  {
    v50 = v39 - 1;
    if (v50)
    {
      v41 = 0;
      v51 = a3 + 48;
      v52 = a3 + 55;
      v53 = a3 + 87;
      if (a3 > 10)
      {
        v51 = 58;
      }

      else
      {
        v53 = 97;
        v52 = 65;
      }

      v54 = &v68 + 1;
      do
      {
        v55 = *v54;
        if (v55 < 0x30 || v55 >= v51)
        {
          if (v55 < 0x41 || v55 >= v52)
          {
            v17 = 0;
            if (v55 < 0x61 || v55 >= v53)
            {
              goto LABEL_129;
            }

            v56 = -87;
          }

          else
          {
            v56 = -55;
          }
        }

        else
        {
          v56 = -48;
        }

        if (!is_mul_ok(v41, a3))
        {
          goto LABEL_128;
        }

        v57 = v41 * a3;
        v58 = v55 + v56;
        v20 = __CFADD__(v57, v58);
        v41 = v57 + v58;
        if (v20)
        {
          goto LABEL_128;
        }

        ++v54;
        --v50;
      }

      while (v50);
LABEL_127:
      v17 = v41;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_22961693C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_22A4DD78C();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_229616EC8(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_22A4DE25C();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_229616EC8(uint64_t a1, unint64_t a2)
{
  v2 = sub_22A4DD79C();
  v6 = sub_229616F48(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_229616F48(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22A4DDFAC();
    if (!v9 || (v10 = v9, v11 = sub_229616344(v9, 0), v12 = sub_2296170A0(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22A4DD6AC();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22A4DD6AC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22A4DE25C();
LABEL_4:

  return sub_22A4DD6AC();
}

unint64_t sub_2296170A0(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_2296172C0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22A4DD73C();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22A4DE25C();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_2296172C0(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22A4DD71C();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_2296172C0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_22A4DD74C();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x22AAD0900](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

void sub_22961733C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = a1 + 32;
  v19 = *(a1 + 16);
  v18 = a1 + 32;
  while (1)
  {
    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];

    v10 = sub_22961473C(v9, v8);
    if (v10)
    {
      break;
    }

LABEL_5:
    ++v4;

    if (v4 == v3)
    {
      return;
    }
  }

  v11 = v10;
  v22 = MEMORY[0x277D84F90];
  v12 = v10 & 0xFFFFFFFFFFFFFF8;
  if (!(v10 >> 62))
  {
    v21 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_9;
    }

    goto LABEL_20;
  }

  v21 = sub_22A4DE0EC();
  if (!v21)
  {
LABEL_20:
    v6 = MEMORY[0x277D84F90];
LABEL_4:

    sub_2296F0964(v6);
    goto LABEL_5;
  }

LABEL_9:
  v20 = v4;
  v13 = 0;
  v14 = v21;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x22AAD13F0](v13, v11);
    }

    else
    {
      if (v13 >= *(v12 + 16))
      {
        goto LABEL_23;
      }

      v15 = *(v11 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    sub_229562F68(0, &qword_27D87DEE0, 0x277CFEC40);
    if (sub_22A4DDEDC())
    {
    }

    else
    {
      sub_22A4DE27C();
      sub_22A4DE2AC();
      v14 = v21;
      sub_22A4DE2BC();
      sub_22A4DE28C();
    }

    ++v13;
    if (v17 == v14)
    {
      v6 = v22;
      v3 = v19;
      v4 = v20;
      v5 = v18;
      goto LABEL_4;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_229617544(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char *a9, void *a10, uint64_t a11)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v18)
  {
    v13 = 0;
    v19 = a1 & 0xC000000000000001;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v19)
      {
        v15 = a1;
        a1 = MEMORY[0x22AAD13F0](v13);
      }

      else
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_13;
        }

        v15 = a1;
        a1 = *(a1 + 8 * v13 + 32);
      }

      v16 = a1;
      v17 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v27 = a1;
      sub_2296149AC(&v27, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11);

      if (!v11)
      {
        ++v13;
        a1 = v15;
        if (v17 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    v18 = a1;
    i = sub_22A4DE0EC();
  }
}

uint64_t sub_229617688(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v7)
  {
    v15 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    for (i = (a1 + 32); ; ++i)
    {
      v13 = *i;

      sub_22960D3E4(&v13, a2, a4, &v12, &v14);
      if (v5)
      {
        break;
      }

      v5 = 0;

      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      if (!--v7)
      {
        return v15;
      }
    }
  }

  return result;
}

uint64_t sub_2296177B4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroyTm_1()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_22961784C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v7 shortDescription];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD00000000000001ELL, 0x800000022A58D970, &v21);
    _os_log_impl(&dword_229538000, v8, v9, "%s No-op for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_229617AAC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315394;
    v19 = 91;
    v20 = 0xE100000000000000;
    v21 = v11;
    v12 = [v7 shortDescription];
    v13 = sub_22A4DD5EC();
    v15 = v14;

    MEMORY[0x22AAD08C0](v13, v15);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v16 = sub_2295A3E30(v19, v20, &v21);

    *(v10 + 4) = v16;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_2295A3E30(0xD000000000000012, 0x800000022A58D920, &v21);
    _os_log_impl(&dword_229538000, v8, v9, "%s No-op for %s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_229617D0C(void *a1, uint64_t (*a2)(void), uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = sub_22A4DD07C();
  v31 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - v10;
  sub_22960FCE0();
  v28 = a2;
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v12 = v3;
  v13 = a1;
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v30 = a3;
    v18 = v17;
    v19 = swift_slowAlloc();
    *v16 = 136315394;
    v32 = 91;
    v33 = 0xE100000000000000;
    v34 = v19;
    v20 = [v12 shortDescription];
    v21 = sub_22A4DD5EC();
    v29 = v8;
    v23 = v22;

    MEMORY[0x22AAD08C0](v21, v23);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v24 = sub_2295A3E30(v32, v33, &v34);

    *(v16 + 4) = v24;
    *(v16 + 12) = 2112;
    *(v16 + 14) = v13;
    *v18 = v13;
    v25 = v13;
    _os_log_impl(&dword_229538000, v14, v15, "%s Did add pairing: %@", v16, 0x16u);
    sub_22953EAE4(v18, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x22AAD4E50](v19, -1, -1);
    MEMORY[0x22AAD4E50](v16, -1, -1);

    (*(v31 + 8))(v11, v29);
  }

  else
  {

    (*(v31 + 8))(v11, v8);
  }

  return v28(0);
}

BOOL sub_229618230(void (*a1)(void), uint64_t a2)
{
  v3 = v2;
  v32 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_22A4DD07C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = [v2 keyBag];
  v12 = [v11 currentIdentity];

  if (!v12)
  {
    v14 = v7;
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v15 = v3;
    v16 = sub_22A4DD05C();
    v17 = sub_22A4DDCEC();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = a1;
      v20 = v19;
      *v18 = 136315138;
      v33 = 91;
      v34 = 0xE100000000000000;
      v35 = v19;
      v21 = [v15 shortDescription];
      v22 = sub_22A4DD5EC();
      v31 = v6;
      v24 = v23;

      MEMORY[0x22AAD08C0](v22, v24);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v25 = sub_2295A3E30(v33, v34, &v35);

      *(v18 + 4) = v25;
      _os_log_impl(&dword_229538000, v16, v17, "%s No pairing for current controller", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v20);
      v26 = v20;
      a1 = v30;
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v18, -1, -1);

      (*(v14 + 8))(v10, v31);
      if (!a1)
      {
        return v12 != 0;
      }
    }

    else
    {

      (*(v14 + 8))(v10, v6);
      if (!a1)
      {
        return v12 != 0;
      }
    }

    type metadata accessor for HMError(0);
    v35 = 2;
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v27 = v33;
    a1(v33);

    return v12 != 0;
  }

  v13 = v12;
  sub_229611628(v12);

  if (a1)
  {
    a1(0);
  }

  return v12 != 0;
}

void sub_229618820(void *a1, uint64_t a2)
{
  v3 = [a1 keyBag];
  v4 = [v3 currentIdentity];

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_22A576190;
    *(v5 + 32) = v4;
    sub_229562F68(0, &qword_281401978, 0x277CFEC20);
    v6 = v4;
    v8 = sub_22A4DD81C();
    (*(a2 + 16))(a2, v8, 0);
  }

  else
  {
    type metadata accessor for HMError(0);
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v7 = sub_22A4DB3DC();
    (*(a2 + 16))(a2, 0, v7);
  }
}

uint64_t sub_2296189DC(unint64_t a1, void (*a2)(void, void), unint64_t a3)
{
  ObjectType = swift_getObjectType();
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22A4DE0EC())
  {
    v11 = MEMORY[0x277D84F90];
    v33 = v7;
    v34 = a3;
    v32 = v8;
    if (!i)
    {
      break;
    }

    v38 = MEMORY[0x277D84F90];
    sub_22A4DE29C();
    if (i < 0)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v31 = a2;
    a3 = 0;
    a2 = (a1 & 0xC000000000000001);
    v36 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v12 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (a2)
      {
        v13 = MEMORY[0x22AAD13F0](a3, a1);
      }

      else
      {
        if (a3 >= *(v36 + 16))
        {
          goto LABEL_18;
        }

        v13 = *(a1 + 8 * a3 + 32);
      }

      v14 = v13;
      v40 = v13;
      sub_229611E0C(&v40, v37, ObjectType, &v41);

      v7 = v41;
      sub_22A4DE27C();
      v8 = *(v38 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      ++a3;
      if (v12 == i)
      {
        v11 = v38;
        a2 = v31;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

LABEL_13:
  v15 = v35;
  sub_229541CB0(ObjectType, &off_283CDE4B8);
  v16 = v37;

  v17 = sub_22A4DD05C();
  v18 = sub_22A4DDCCC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v41 = v20;
    *v19 = 136315394;
    v38 = 91;
    v39 = 0xE100000000000000;
    v21 = [v16 shortDescription];
    v22 = sub_22A4DD5EC();
    v24 = v23;

    MEMORY[0x22AAD08C0](v22, v24);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v25 = sub_2295A3E30(v38, v39, &v41);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2080;
    v26 = sub_229562F68(0, &qword_27D87DEF0, 0x277CFEA90);
    v27 = MEMORY[0x22AAD0A20](v11, v26);
    v29 = sub_2295A3E30(v27, v28, &v41);

    *(v19 + 14) = v29;
    _os_log_impl(&dword_229538000, v17, v18, "%s Did complete write requests with %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v20, -1, -1);
    MEMORY[0x22AAD4E50](v19, -1, -1);

    (*(v32 + 8))(v35, v33);
  }

  else
  {

    (*(v32 + 8))(v15, v33);
  }

  a2(v11, 0);
}

id sub_229618DD4(uint64_t a1, void (*a2)(uint64_t, void), void (**a3)(char *, uint64_t))
{
  ObjectType = swift_getObjectType();
  v49 = sub_22A4DB74C();
  v7 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DD07C();
  MEMORY[0x28223BE20](v10);
  v13 = v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v14;
  v44 = ObjectType;
  v45 = v3;
  if (v11 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = v39)
  {
    v16 = MEMORY[0x277D84F90];
    v43 = v10;
    v46 = v13;
    if (!i)
    {
LABEL_14:
      sub_229541CB0(v44, &off_283CDE4B8);
      v24 = v45;

      v25 = sub_22A4DD05C();
      v26 = sub_22A4DDCCC();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        *v27 = 136315394;
        v50 = 91;
        v51 = 0xE100000000000000;
        v52 = v28;
        v29 = [v24 shortDescription];
        v30 = sub_22A4DD5EC();
        v32 = v31;

        MEMORY[0x22AAD08C0](v30, v32);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v33 = sub_2295A3E30(v50, v51, &v52);

        *(v27 + 4) = v33;
        *(v27 + 12) = 2080;
        v34 = sub_229562F68(0, &qword_27D87DEF0, 0x277CFEA90);
        v35 = MEMORY[0x22AAD0A20](v16, v34);
        v37 = sub_2295A3E30(v35, v36, &v52);

        *(v27 + 14) = v37;
        _os_log_impl(&dword_229538000, v25, v26, "%s Did complete read requests with %s", v27, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v28, -1, -1);
        MEMORY[0x22AAD4E50](v27, -1, -1);

        (*(v42 + 8))(v46, v43);
      }

      else
      {

        (*(v42 + 8))(v13, v43);
      }

      a2(v16, 0);
    }

    v17 = v11;
    v50 = MEMORY[0x277D84F90];
    result = sub_22A4DE29C();
    if (i < 0)
    {
      break;
    }

    v40[1] = a3;
    v41 = a2;
    v19 = objc_opt_self();
    v10 = 0;
    v20 = v17;
    a2 = (v17 & 0xC000000000000001);
    v47 = v17 & 0xFFFFFFFFFFFFFF8;
    v48 = v19;
    a3 = (v7 + 8);
    while (1)
    {
      v13 = (v10 + 1);
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (a2)
      {
        v21 = MEMORY[0x22AAD13F0](v10, v20);
      }

      else
      {
        if (v10 >= *(v47 + 16))
        {
          goto LABEL_19;
        }

        v21 = *(v20 + 8 * v10 + 32);
      }

      v22 = v21;
      sub_22A4DB73C();
      v23 = sub_22A4DB6AC();
      (*a3)(v9, v49);
      [v22 setValueUpdatedTime_];

      result = [v48 responseTupleForCharacteristic:v22 error:0];
      if (!result)
      {
        goto LABEL_22;
      }

      sub_22A4DE27C();
      v7 = *(v50 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      ++v10;
      v20 = v17;
      if (v13 == i)
      {
        v16 = v50;
        a2 = v41;
        v13 = v46;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v38 = v11;
    v39 = sub_22A4DE0EC();
    v11 = v38;
  }

  __break(1u);
LABEL_22:
  __break(1u);
  return result;
}

void sub_2296192AC(int a1, unint64_t a2, void (*a3)(uint64_t, uint64_t), char **a4)
{
  v5 = v4;
  v53 = a3;
  LODWORD(v56) = a1;
  ObjectType = swift_getObjectType();
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = (&v50 - v14);
  v16 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_23;
  }

  if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_24:
    v56 = v10;
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v36 = v5;
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCEC();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v54 = v9;
      v40 = v39;
      v41 = swift_slowAlloc();
      *v40 = 136315138;
      v57 = 91;
      v58 = 0xE100000000000000;
      v59 = v41;
      v42 = [v36 shortDescription];
      v43 = sub_22A4DD5EC();
      v45 = v44;

      MEMORY[0x22AAD08C0](v43, v45);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v46 = sub_2295A3E30(v57, v58, &v59);

      *(v40 + 4) = v46;
      _os_log_impl(&dword_229538000, v37, v38, "%s No characteristics to update events", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AAD4E50](v41, -1, -1);
      v47 = v53;
      MEMORY[0x22AAD4E50](v40, -1, -1);

      (*(v56 + 1))(v15, v54);
    }

    else
    {

      (*(v56 + 1))(v15, v9);
      v47 = v53;
    }

    type metadata accessor for HMError(0);
    v59 = 3;
    v48 = MEMORY[0x277D84F90];
    sub_22956AD8C(MEMORY[0x277D84F90]);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v49 = v57;
    v47(v48, v57);

    return;
  }

  while (1)
  {
    sub_229541CB0(ObjectType, &off_283CDE4B8);
    v17 = v5;

    v15 = sub_22A4DD05C();
    v18 = sub_22A4DDCCC();

    v19 = os_log_type_enabled(v15, v18);
    v55 = a2;
    v52 = a4;
    if (v19)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51 = v21;
      *v20 = 136315650;
      v57 = 91;
      v58 = 0xE100000000000000;
      v59 = v21;
      v22 = [v17 shortDescription];
      v23 = sub_22A4DD5EC();
      v54 = v9;
      v25 = v24;

      MEMORY[0x22AAD08C0](v23, v25);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v26 = sub_2295A3E30(v57, v58, &v59);

      *(v20 + 4) = v26;
      *(v20 + 12) = 1024;
      *(v20 + 14) = v56 & 1;
      *(v20 + 18) = 2080;
      v27 = sub_229562F68(0, &qword_27D87DEE8, 0x277CFEA68);
      v28 = MEMORY[0x22AAD0A20](a2, v27);
      v30 = sub_2295A3E30(v28, v29, &v59);

      *(v20 + 20) = v30;
      _os_log_impl(&dword_229538000, v15, v18, "%s Updating event to %{BOOL}d for %s", v20, 0x1Cu);
      v31 = v51;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v31, -1, -1);
      MEMORY[0x22AAD4E50](v20, -1, -1);

      (*(v10 + 1))(v13, v54);
      if (v16)
      {
        goto LABEL_5;
      }
    }

    else
    {

      (*(v10 + 1))(v13, v9);
      if (v16)
      {
LABEL_5:
        v32 = v55;
        v9 = sub_22A4DE0EC();
        goto LABEL_8;
      }
    }

    v32 = v55;
    v9 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    if (!v9)
    {
      break;
    }

    v57 = MEMORY[0x277D84F90];
    ObjectType = &v57;
    sub_22A4DE29C();
    if (v9 < 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v5 = objc_opt_self();
    v13 = 0;
    v33 = v32;
    v16 = v32 & 0xC000000000000001;
    v54 = v32 & 0xFFFFFFFFFFFFFF8;
    a2 = &_OBJC_LABEL_PROTOCOL___HMDUserDataControllerTimerCreator;
    a4 = &selRef_resetAccessoryDiagnosticCounters;
    while (1)
    {
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v16)
      {
        v34 = MEMORY[0x22AAD13F0](v13, v33);
      }

      else
      {
        if (v13 >= *(v54 + 16))
        {
          goto LABEL_22;
        }

        v34 = *(v33 + 8 * v13 + 32);
      }

      v35 = v34;
      [v34 setEventNotificationsEnabled_];
      if (![v5 responseTupleForCharacteristic:v35 error:0])
      {
        goto LABEL_30;
      }

      ObjectType = &v57;
      sub_22A4DE27C();
      v15 = *(v57 + 16);
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      ++v13;
      v33 = v55;
      if (v10 == v9)
      {
        v53(v57, 0);
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    if (!sub_22A4DE0EC())
    {
      goto LABEL_24;
    }
  }

  v53(MEMORY[0x277D84F90], 0);
LABEL_20:
}

uint64_t sub_22961995C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FC20, &unk_22A578810);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2296199CC(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = v1[6];
  v9 = *(v1 + 11);
  v10 = *(v1 + 12);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_229569B30;

  return sub_229614F90(v8, a1, v4, v5, v6, v7, (v1 + 7), v9, v10);
}

uint64_t sub_229619AB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87FC20, &unk_22A578810);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_229619B50()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_229611BB0(v0 + v2, v3);
}

uint64_t sub_229619BE8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF08, &qword_22A57A988);

  return sub_229611B50();
}

id sub_229619C54()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DF18, &qword_22A57A998) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + v3);
  v5 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_22960F5A0(v0 + v2, v4, v5);
}

uint64_t sub_229619D2C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20));
  v7 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_229564F88(v6 + v7, v5, &qword_27D87E060, &qword_22A57B0D8);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22961F208(v5, a1, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  }

  sub_22A4DC28C();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22953EAE4(v5, &qword_27D87E060, &qword_22A57B0D8);
  }

  return result;
}

uint64_t sub_229619EDC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  v8 = *(v2 + *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20));
  v9 = *a1;
  swift_beginAccess();
  sub_229564F88(v8 + v9, v7, &qword_27D87E058, &qword_22A57B0D0);
  v10 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v11 = *(*(v10 - 1) + 48);
  if (v11(v7, 1, v10) != 1)
  {
    return sub_22961F208(v7, a2, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  }

  sub_22A4DC28C();
  v12 = (a2 + v10[5]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a2 + v10[6]);
  *v13 = 0;
  v13[1] = 0;
  *(a2 + v10[7]) = 2;
  *(a2 + v10[8]) = 2;
  *(a2 + v10[9]) = 2;
  v14 = (a2 + v10[10]);
  *v14 = 0;
  v14[1] = 0;
  result = (v11)(v7, 1, v10);
  if (result != 1)
  {
    return sub_22953EAE4(v7, &qword_27D87E058, &qword_22A57B0D0);
  }

  return result;
}

uint64_t sub_22961A094@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = *(v1 + *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20));
  v7 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_229564F88(v6 + v7, v5, &qword_27D87E050, &qword_22A57B0C8);
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_22961F208(v5, a1, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  }

  sub_22A4DC28C();
  v10 = (a1 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + *(v8 + 24);
  *v11 = 0;
  *(v11 + 4) = 1;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_22953EAE4(v5, &qword_27D87E050, &qword_22A57B0C8);
  }

  return result;
}

uint64_t sub_22961A22C()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6B0);
  __swift_project_value_buffer(v0, qword_27D8AB6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_22A578760;
  v4 = v26 + v3;
  v5 = v26 + v3 + v1[14];
  *(v26 + v3) = 1;
  *v5 = "schema_version";
  *(v5 + 8) = 14;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x277D21888];
  v7 = sub_22A4DC45C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "event_name";
  *(v9 + 8) = 10;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "event_uuid";
  *(v11 + 1) = 10;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "timestamp";
  *(v13 + 1) = 9;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "home";
  *(v15 + 1) = 4;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "device";
  *(v17 + 1) = 6;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "submitting_device";
  *(v19 + 1) = 17;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "user";
  *(v21 + 1) = 4;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "system_uptime";
  *(v22 + 8) = 13;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "current_server_time";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  return sub_22A4DC46C();
}

uint64_t sub_22961A5F4()
{
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
  swift_allocObject();
  result = sub_22961A634();
  qword_27D87DF28 = result;
  return result;
}

uint64_t sub_22961A634()
{
  *(v0 + 16) = 0;
  *(v0 + 20) = 1;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0u;
  v1 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v2 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  v5(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice, 1, 1, v4);
  v6 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v7 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  (*(*(v7 - 8) + 56))(v0 + v6, 1, 1, v7);
  v8 = v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  *v8 = 0;
  *(v8 + 8) = 1;
  v9 = v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  *v9 = 0;
  *(v9 + 8) = 1;
  return v0;
}

uint64_t sub_22961A7A8()
{

  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home, &qword_27D87E060, &qword_22A57B0D8);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device, &qword_27D87E058, &qword_22A57B0D0);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice, &qword_27D87E058, &qword_22A57B0D0);
  sub_22953EAE4(v0 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user, &qword_27D87E050, &qword_22A57B0C8);

  return swift_deallocClassInstance();
}

void sub_22961A8CC(uint64_t a1)
{
  sub_22961AA68(319, &qword_27D87DF70, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  if (v1 <= 0x3F)
  {
    sub_22961AA68(319, &qword_27D87DF78, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    if (v2 <= 0x3F)
    {
      sub_22961AA68(319, &qword_27D87DF80, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_22961AA68(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22A4DDF9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_22961AB4C(uint64_t a1)
{
  sub_22A4DC29C();
  if (v1 <= 0x3F)
  {
    sub_22961AC10(319, &qword_281401CE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22961AC10(319, &qword_27D87DFB0, MEMORY[0x277D839B0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_22961AC10(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_22A4DDF9C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DC29C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_22A4DC29C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_22961AE0C(uint64_t a1)
{
  sub_22A4DC29C();
  if (v1 <= 0x3F)
  {
    sub_22961AC10(319, &qword_281401CE0, MEMORY[0x277D837D0]);
    if (v2 <= 0x3F)
    {
      sub_22961AC10(319, &qword_27D87DF98, MEMORY[0x277D84CC0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_22961AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(0);
    swift_allocObject();
    v12 = sub_22961F6EC(v11);

    *(v4 + v8) = v12;
    v10 = v12;
  }

  return sub_22961AF7C(v10, a1, a2, a3);
}

uint64_t sub_22961AF7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22A4DC2CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 5)
      {
        if (result <= 7)
        {
          if (result == 6)
          {
            sub_22961B460(a2, a1, a3, a4);
          }

          else
          {
            sub_22961B53C(a2, a1, a3, a4);
          }
        }

        else
        {
          switch(result)
          {
            case 8:
              sub_22961B618(a2, a1, a3, a4);
              break;
            case 9:
              sub_22961B6F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
              break;
            case 10:
              sub_22961B6F4(a2, a1, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
              break;
          }
        }
      }

      else if (result <= 2)
      {
        if (result == 1)
        {
          sub_22961B174(a2, a1, a3, a4);
        }

        else if (result == 2)
        {
          sub_22961B1F8(a2, a1, a3, a4);
        }
      }

      else if (result == 3)
      {
        sub_22961B27C(a2, a1, a3, a4);
      }

      else if (result == 4)
      {
        sub_22961B300(a2, a1, a3, a4);
      }

      else
      {
        sub_22961B384(a2, a1, a3, a4);
      }

      result = sub_22A4DC2CC();
    }
  }

  return result;
}

uint64_t sub_22961B174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22A4DC33C();
  return swift_endAccess();
}

uint64_t sub_22961B1F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22A4DC32C();
  return swift_endAccess();
}

uint64_t sub_22961B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22A4DC32C();
  return swift_endAccess();
}

uint64_t sub_22961B300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_22A4DC32C();
  return swift_endAccess();
}

uint64_t sub_22961B384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome, &unk_22A57AEE8);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B460(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD80);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD80);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser, &unk_22A57AC18);
  sub_22A4DC36C();
  return swift_endAccess();
}

uint64_t sub_22961B6F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_22A4DC34C();
  return swift_endAccess();
}

uint64_t sub_22961B77C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0);
  result = sub_22961B7E8(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_22961B7E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_22961B910(a1, a2, a3, a4);
  if (!v4)
  {
    sub_22961B994(a1, a2, a3, a4);
    sub_22961BA30(a1, a2, a3, a4);
    sub_22961BACC(a1, a2, a3, a4);
    sub_22961BB68(a1, a2, a3, a4);
    sub_22961BD84(a1, a2, a3, a4);
    sub_22961BFA0(a1, a2, a3, a4);
    sub_22961C1BC(a1, a2, a3, a4);
    sub_22961C3D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime, 9);
    return sub_22961C3D8(a1, a2, a3, a4, &OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime, 10);
  }

  return result;
}

uint64_t sub_22961B910(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if ((*(a1 + 20) & 1) == 0)
  {
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_22961B994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 32))
  {

    sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961BA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 48))
  {

    sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961BACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_beginAccess();
  if (*(a1 + 64))
  {

    sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961BB68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_229564F88(a1 + v12, v7, &qword_27D87E060, &qword_22A57B0D8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87E060, &qword_22A57B0D8);
  }

  sub_22961F208(v7, v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome, &unk_22A57AEE8);
  sub_22A4DC44C();
  return sub_22961F270(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
}

uint64_t sub_22961BD84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  sub_229564F88(a1 + v12, v7, &qword_27D87E058, &qword_22A57B0D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87E058, &qword_22A57B0D0);
  }

  sub_22961F208(v7, v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD80);
  sub_22A4DC44C();
  return sub_22961F270(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
}

uint64_t sub_22961BFA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_229564F88(a1 + v12, v7, &qword_27D87E058, &qword_22A57B0D0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87E058, &qword_22A57B0D0);
  }

  sub_22961F208(v7, v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD80);
  sub_22A4DC44C();
  return sub_22961F270(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
}

uint64_t sub_22961C1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_229564F88(a1 + v12, v7, &qword_27D87E050, &qword_22A57B0C8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_22953EAE4(v7, &qword_27D87E050, &qword_22A57B0C8);
  }

  sub_22961F208(v7, v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser, &unk_22A57AC18);
  sub_22A4DC44C();
  return sub_22961F270(v11, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
}

uint64_t sub_22961C3D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if ((*(v6 + 8) & 1) == 0)
  {
    return sub_22A4DC42C();
  }

  return result;
}

BOOL sub_22961C468(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  v123 = *(v4 - 8);
  v124 = v4;
  MEMORY[0x28223BE20](v4);
  v120 = &v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E080, &qword_22A57B0F0);
  MEMORY[0x28223BE20](v122);
  v125 = &v119 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v121 = &v119 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v129 = &v119 - v10;
  v11 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v132 = *(v11 - 8);
  v133 = v11;
  MEMORY[0x28223BE20](v11);
  v127 = &v119 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E088, &qword_22A57B0F8);
  v13 = MEMORY[0x28223BE20](v134);
  v128 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v131 = &v119 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v126 = &v119 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v135 = &v119 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v130 = &v119 - v22;
  MEMORY[0x28223BE20](v21);
  v136 = &v119 - v23;
  v24 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  v137 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v26 = &v119 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E090, &qword_22A57B100);
  MEMORY[0x28223BE20](v27);
  v138 = &v119 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v119 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v119 - v33;
  swift_beginAccess();
  v35 = *(a1 + 16);
  v36 = *(a1 + 20);
  swift_beginAccess();
  v37 = *(a2 + 20);
  if (v36)
  {
    if (!*(a2 + 20))
    {
      return 0;
    }
  }

  else
  {
    if (v35 != *(a2 + 16))
    {
      v37 = 1;
    }

    if (v37)
    {
      return 0;
    }
  }

  v139 = a2;
  swift_beginAccess();
  v39 = *(a1 + 24);
  v38 = *(a1 + 32);
  swift_beginAccess();
  v40 = *(v139 + 32);
  if (v38)
  {
    if (!v40 || (v39 != *(v139 + 24) || v38 != v40) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  swift_beginAccess();
  v41 = *(a1 + 40);
  v42 = *(a1 + 48);
  v43 = v139;
  swift_beginAccess();
  v44 = *(v43 + 48);
  if (v42)
  {
    if (!v44 || (v41 != *(v43 + 40) || v42 != v44) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v44)
  {
    return 0;
  }

  swift_beginAccess();
  v45 = *(a1 + 56);
  v46 = *(a1 + 64);
  v47 = v139;
  swift_beginAccess();
  v48 = *(v47 + 64);
  if (v46)
  {
    if (!v48 || (v45 != *(v47 + 56) || v46 != v48) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v48)
  {
    return 0;
  }

  v49 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  sub_229564F88(a1 + v49, v34, &qword_27D87E060, &qword_22A57B0D8);
  v50 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v51 = v139;
  swift_beginAccess();
  v52 = *(v27 + 48);
  v53 = v138;
  sub_229564F88(v34, v138, &qword_27D87E060, &qword_22A57B0D8);
  v119 = v52;
  sub_229564F88(v51 + v50, v53 + v52, &qword_27D87E060, &qword_22A57B0D8);
  v54 = *(v137 + 48);
  if (v54(v53, 1, v24) == 1)
  {

    v55 = v139;

    sub_22953EAE4(v34, &qword_27D87E060, &qword_22A57B0D8);
    if (v54(v53 + v119, 1, v24) == 1)
    {
      sub_22953EAE4(v53, &qword_27D87E060, &qword_22A57B0D8);
      goto LABEL_36;
    }

LABEL_33:
    sub_22953EAE4(v53, &qword_27D87E090, &qword_22A57B100);
    goto LABEL_50;
  }

  sub_229564F88(v53, v32, &qword_27D87E060, &qword_22A57B0D8);
  v56 = v119;
  if (v54(v53 + v119, 1, v24) == 1)
  {

    sub_22953EAE4(v34, &qword_27D87E060, &qword_22A57B0D8);
    sub_22961F270(v32, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
    goto LABEL_33;
  }

  sub_22961F208(v53 + v56, v26, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);

  v55 = v139;

  v57 = v53;
  v58 = sub_22961F4E4(v32, v26, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22961F270(v26, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22953EAE4(v34, &qword_27D87E060, &qword_22A57B0D8);
  sub_22961F270(v32, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome);
  sub_22953EAE4(v57, &qword_27D87E060, &qword_22A57B0D8);
  if ((v58 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_36:
  v59 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  v60 = v136;
  sub_229564F88(a1 + v59, v136, &qword_27D87E058, &qword_22A57B0D0);
  v61 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  v62 = *(v134 + 48);
  v63 = v131;
  sub_229564F88(v60, v131, &qword_27D87E058, &qword_22A57B0D0);
  sub_229564F88(v55 + v61, v63 + v62, &qword_27D87E058, &qword_22A57B0D0);
  v64 = v133;
  v65 = *(v132 + 48);
  if (v65(v63, 1, v133) == 1)
  {
    sub_22953EAE4(v60, &qword_27D87E058, &qword_22A57B0D0);
    v66 = v65(v63 + v62, 1, v64);
    v67 = v135;
    if (v66 != 1)
    {
      goto LABEL_48;
    }

    sub_22953EAE4(v63, &qword_27D87E058, &qword_22A57B0D0);
  }

  else
  {
    v68 = v130;
    sub_229564F88(v63, v130, &qword_27D87E058, &qword_22A57B0D0);
    v69 = v65(v63 + v62, 1, v64);
    v67 = v135;
    if (v69 == 1)
    {
      sub_22953EAE4(v136, &qword_27D87E058, &qword_22A57B0D0);
      v70 = v68;
LABEL_47:
      sub_22961F270(v70, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
      goto LABEL_48;
    }

    v71 = v63 + v62;
    v72 = v127;
    sub_22961F208(v71, v127, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    LODWORD(v138) = sub_22961F2D0(v68, v72);
    sub_22961F270(v72, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    sub_22953EAE4(v136, &qword_27D87E058, &qword_22A57B0D0);
    sub_22961F270(v68, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
    sub_22953EAE4(v63, &qword_27D87E058, &qword_22A57B0D0);
    if ((v138 & 1) == 0)
    {
      goto LABEL_50;
    }
  }

  v73 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_229564F88(a1 + v73, v67, &qword_27D87E058, &qword_22A57B0D0);
  v74 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  v75 = v139;
  swift_beginAccess();
  v76 = *(v134 + 48);
  v77 = v67;
  v78 = v128;
  sub_229564F88(v77, v128, &qword_27D87E058, &qword_22A57B0D0);
  v63 = v78;
  sub_229564F88(v75 + v74, v78 + v76, &qword_27D87E058, &qword_22A57B0D0);
  if (v65(v78, 1, v64) == 1)
  {
    sub_22953EAE4(v135, &qword_27D87E058, &qword_22A57B0D0);
    v79 = v65(v78 + v76, 1, v64);
    v80 = v129;
    if (v79 == 1)
    {
      sub_22953EAE4(v78, &qword_27D87E058, &qword_22A57B0D0);
      goto LABEL_53;
    }

LABEL_48:
    v84 = &qword_27D87E088;
    v85 = &qword_22A57B0F8;
    v86 = v63;
LABEL_49:
    sub_22953EAE4(v86, v84, v85);
    goto LABEL_50;
  }

  v81 = v78;
  v82 = v126;
  sub_229564F88(v81, v126, &qword_27D87E058, &qword_22A57B0D0);
  v83 = v65(v63 + v76, 1, v64);
  v80 = v129;
  if (v83 == 1)
  {
    sub_22953EAE4(v135, &qword_27D87E058, &qword_22A57B0D0);
    v70 = v82;
    goto LABEL_47;
  }

  v88 = v63 + v76;
  v89 = v127;
  sub_22961F208(v88, v127, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  v90 = v63;
  v91 = sub_22961F2D0(v82, v89);
  sub_22961F270(v89, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22953EAE4(v135, &qword_27D87E058, &qword_22A57B0D0);
  sub_22961F270(v82, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  sub_22953EAE4(v90, &qword_27D87E058, &qword_22A57B0D0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_53:
  v92 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  sub_229564F88(a1 + v92, v80, &qword_27D87E050, &qword_22A57B0C8);
  v93 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v94 = v139;
  swift_beginAccess();
  v95 = *(v122 + 48);
  v96 = v80;
  v97 = v80;
  v98 = v125;
  sub_229564F88(v96, v125, &qword_27D87E050, &qword_22A57B0C8);
  v99 = v94 + v93;
  v100 = v98;
  sub_229564F88(v99, v98 + v95, &qword_27D87E050, &qword_22A57B0C8);
  v101 = v124;
  v102 = *(v123 + 48);
  if (v102(v98, 1, v124) == 1)
  {
    sub_22953EAE4(v97, &qword_27D87E050, &qword_22A57B0C8);
    if (v102(v98 + v95, 1, v101) == 1)
    {
      sub_22953EAE4(v98, &qword_27D87E050, &qword_22A57B0C8);
      goto LABEL_60;
    }

    goto LABEL_58;
  }

  v103 = v98;
  v104 = v121;
  sub_229564F88(v103, v121, &qword_27D87E050, &qword_22A57B0C8);
  if (v102(v100 + v95, 1, v101) == 1)
  {
    sub_22953EAE4(v129, &qword_27D87E050, &qword_22A57B0C8);
    sub_22961F270(v104, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
LABEL_58:
    v84 = &qword_27D87E080;
    v85 = &qword_22A57B0F0;
    v86 = v100;
    goto LABEL_49;
  }

  v105 = v100 + v95;
  v106 = v120;
  sub_22961F208(v105, v120, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  v107 = sub_22961F4E4(v104, v106, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22961F270(v106, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22953EAE4(v129, &qword_27D87E050, &qword_22A57B0C8);
  sub_22961F270(v104, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser);
  sub_22953EAE4(v100, &qword_27D87E050, &qword_22A57B0C8);
  if ((v107 & 1) == 0)
  {
    goto LABEL_50;
  }

LABEL_60:
  v108 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
  swift_beginAccess();
  v109 = *v108;
  v110 = *(v108 + 8);
  v111 = v139 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  swift_beginAccess();
  if (v110)
  {
    if (*(v111 + 8))
    {
      goto LABEL_65;
    }

LABEL_50:

    return 0;
  }

  if ((*(v111 + 8) & 1) != 0 || v109 != *v111)
  {
    goto LABEL_50;
  }

LABEL_65:
  v112 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
  swift_beginAccess();
  v113 = *v112;
  v114 = *(v112 + 8);

  v115 = v139 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  swift_beginAccess();
  v116 = *v115;
  v117 = *(v115 + 8);

  if (v114)
  {
    return v117 != 0;
  }

  if (v113 == v116)
  {
    v118 = v117;
  }

  else
  {
    v118 = 1;
  }

  return (v118 & 1) == 0;
}

uint64_t sub_22961D48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_22A4DC28C();
  v4 = *(a1 + 20);
  if (qword_27D87B910 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_27D87DF28;
}

uint64_t sub_22961D570(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E048, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B018);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961D610(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961D67C(uint64_t a1, uint64_t a2)
{
  sub_22961EDB0(&qword_27D87E030, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata, &unk_22A57B050);

  return sub_22A4DC39C();
}

uint64_t sub_22961D6FC()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6C8);
  __swift_project_value_buffer(v0, qword_27D8AB6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "home_uuid";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_users";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_22961D97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E098, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome, &unk_22A57AEB0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961DA1C(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome, &unk_22A57AEE8);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961DA88(uint64_t a1, uint64_t a2)
{
  sub_22961EDB0(&qword_27D87E010, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome, &unk_22A57AEE8);

  return sub_22A4DC39C();
}

uint64_t sub_22961DB08()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6E0);
  __swift_project_value_buffer(v0, qword_27D8AB6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_22A57A9A0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "device_uuid";
  *(v4 + 8) = 11;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x277D21888];
  v6 = sub_22A4DC45C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "room_uuid";
  *(v8 + 8) = 9;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "is_manufacturer_apple";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "is_me_device";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "is_primary_resident";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "color";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  return sub_22A4DC46C();
}

uint64_t sub_22961DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      if (result == 4 || result == 5)
      {
LABEL_16:
        type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
        sub_22A4DC2DC();
      }

      else if (result == 6)
      {
        goto LABEL_2;
      }
    }

    else if (result == 1 || result == 2)
    {
LABEL_2:
      type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
      sub_22A4DC32C();
    }

    else if (result == 3)
    {
      goto LABEL_16;
    }
  }
}

uint64_t sub_22961DF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_22961DFEC(v3, a1, a2, a3, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice);
  if (!v4)
  {
    sub_22961E068(v3, a1, a2, a3);
    sub_22961E0E0(v3, a1, a2, a3);
    sub_22961E158(v3, a1, a2, a3);
    sub_22961E1D0(v3, a1, a2, a3);
    sub_22961E248(v3, a1, a2, a3);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_22961DFEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961E068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961E0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_22A4DC3BC();
  }

  return result;
}

uint64_t sub_22961E158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_22A4DC3BC();
  }

  return result;
}

uint64_t sub_22961E1D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_22A4DC3BC();
  }

  return result;
}

uint64_t sub_22961E248(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_22A4DC40C();
  }

  return result;
}

uint64_t sub_22961E2C0@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = a1[6];
  v6 = (a2 + a1[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  *(a2 + v8) = 2;
  v9 = a1[10];
  *(a2 + a1[9]) = 2;
  v10 = (a2 + v9);
  *v10 = 0;
  v10[1] = 0;
  return result;
}

uint64_t sub_22961E368(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E0A0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD48);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961E408(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD80);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961E474(uint64_t a1, uint64_t a2)
{
  sub_22961EDB0(&qword_27D87DFF0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice, &unk_22A57AD80);

  return sub_22A4DC39C();
}

uint64_t sub_22961E4F4()
{
  v0 = sub_22A4DC47C();
  __swift_allocate_value_buffer(v0, qword_27D8AB6F8);
  __swift_project_value_buffer(v0, qword_27D8AB6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E068, &qword_22A57B0E0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E070, &qword_22A57B0E8) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22A5761A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "user_uuid";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22A4DC45C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "privilege";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_22A4DC46C();
}

uint64_t sub_22961E6C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  while (1)
  {
    result = sub_22A4DC2CC();
    if (v4 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_22A4DC32C();
    }

    else if (result == 2)
    {
      a4(0);
      sub_22A4DC33C();
    }
  }

  return result;
}

uint64_t sub_22961E78C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  result = sub_22961DFEC(v5, a1, a2, a3, a4);
  if (!v6)
  {
    sub_22961E808(v5, a1, a2, a3, a5);
    return sub_22A4DC27C();
  }

  return result;
}

uint64_t sub_22961E808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 24) + 4) & 1) == 0)
  {
    return sub_22A4DC41C();
  }

  return result;
}

uint64_t sub_22961E884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_22A4DC28C();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 4) = 1;
  return result;
}

uint64_t sub_22961E8E4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_22A4DC29C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_22961E94C(uint64_t a1)
{
  v3 = sub_22A4DC29C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t sub_22961EA20(uint64_t a1, uint64_t a2)
{
  v4 = sub_22961EDB0(&qword_27D87E0A8, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser, &unk_22A57ABE0);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_22961EAC0@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_22A4DC47C();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_22961EB5C(uint64_t a1)
{
  v2 = sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser, &unk_22A57AC18);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_22961EBC8(uint64_t a1, uint64_t a2)
{
  sub_22A4DE77C();
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_22961EC20(uint64_t a1, uint64_t a2)
{
  sub_22961EDB0(&qword_27D87DFD0, type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser, &unk_22A57AC18);

  return sub_22A4DC39C();
}

uint64_t sub_22961EC9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_22A4DE77C();
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_22961EDB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22961F208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22961F270(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22961F2D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_22A4DE60C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v9)
  {
    return 0;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      return 0;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_22A4DE60C();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  v21 = v4[7];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22 == 2)
  {
    if (v23 != 2)
    {
      return 0;
    }
  }

  else if (v23 == 2 || ((v22 ^ v23) & 1) != 0)
  {
    return 0;
  }

  v24 = v4[8];
  v25 = *(a1 + v24);
  v26 = *(a2 + v24);
  if (v25 == 2)
  {
    if (v26 != 2)
    {
      return 0;
    }
  }

  else if (v26 == 2 || ((v25 ^ v26) & 1) != 0)
  {
    return 0;
  }

  v27 = v4[9];
  v28 = *(a1 + v27);
  v29 = *(a2 + v27);
  if (v28 == 2)
  {
    if (v29 != 2)
    {
      return 0;
    }
  }

  else if (v29 == 2 || ((v28 ^ v29) & 1) != 0)
  {
    return 0;
  }

  v30 = v4[10];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (sub_22A4DE60C() & 1) == 0)
    {
      return 0;
    }

LABEL_39:
    sub_22A4DC29C();
    sub_22961EDB0(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_22A4DD58C() & 1;
  }

  if (!v34)
  {
    goto LABEL_39;
  }

  return 0;
}

uint64_t sub_22961F4E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  v6 = *(v5 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }

    if (*v7 != *v9 || v8 != v10)
    {
      v12 = v5;
      v13 = sub_22A4DE60C();
      v5 = v12;
      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v10)
  {
    return 0;
  }

  v14 = *(v5 + 24);
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v18)
    {
      return 0;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v18) = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  sub_22A4DC29C();
  sub_22961EDB0(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22A4DD58C() & 1;
}

uint64_t sub_22961F604(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_22961C468(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_22A4DC29C();
  sub_22961EDB0(&qword_27D87E078, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_22A4DD58C() & 1;
}

uint64_t sub_22961F6EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E050, &qword_22A57B0C8);
  MEMORY[0x28223BE20](v3 - 8);
  v54 = &v44 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E058, &qword_22A57B0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v52 = &v44 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E060, &qword_22A57B0D8);
  MEMORY[0x28223BE20](v7 - 8);
  v48 = &v44 - v8;
  *(v1 + 16) = 0;
  *(v1 + 56) = 0u;
  v45 = (v1 + 56);
  *(v1 + 40) = 0u;
  *(v1 + 20) = 1;
  *(v1 + 24) = 0u;
  v9 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v46 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  v10 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataHome(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  v49 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  v12 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataDevice(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v50 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  v13(v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice, 1, 1, v12);
  v14 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v51 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  v15 = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadataUser(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  v47 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime;
  *v16 = 0;
  *(v16 + 8) = 1;
  v17 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  v53 = v1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime;
  *v17 = 0;
  *(v17 + 8) = 1;
  swift_beginAccess();
  v18 = *(a1 + 16);
  LOBYTE(v13) = *(a1 + 20);
  swift_beginAccess();
  *(v1 + 16) = v18;
  *(v1 + 20) = v13;
  swift_beginAccess();
  v20 = *(a1 + 24);
  v19 = *(a1 + 32);
  swift_beginAccess();
  *(v1 + 24) = v20;
  *(v1 + 32) = v19;
  swift_beginAccess();
  v22 = *(a1 + 40);
  v21 = *(a1 + 48);
  swift_beginAccess();
  *(v1 + 40) = v22;
  *(v1 + 48) = v21;
  swift_beginAccess();
  v24 = *(a1 + 56);
  v23 = *(a1 + 64);
  v25 = v45;
  swift_beginAccess();
  *v25 = v24;
  *(v1 + 64) = v23;
  v26 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__home;
  swift_beginAccess();
  v27 = v48;
  sub_229564F88(a1 + v26, v48, &qword_27D87E060, &qword_22A57B0D8);
  v28 = v46;
  swift_beginAccess();

  sub_2295E90C8(v27, v1 + v28, &qword_27D87E060, &qword_22A57B0D8);
  swift_endAccess();
  v29 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__device;
  swift_beginAccess();
  v30 = v52;
  sub_229564F88(a1 + v29, v52, &qword_27D87E058, &qword_22A57B0D0);
  v31 = v49;
  swift_beginAccess();
  sub_2295E90C8(v30, v1 + v31, &qword_27D87E058, &qword_22A57B0D0);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__submittingDevice;
  swift_beginAccess();
  sub_229564F88(a1 + v32, v30, &qword_27D87E058, &qword_22A57B0D0);
  v33 = v50;
  swift_beginAccess();
  sub_2295E90C8(v30, v1 + v33, &qword_27D87E058, &qword_22A57B0D0);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__user;
  swift_beginAccess();
  v35 = v54;
  sub_229564F88(a1 + v34, v54, &qword_27D87E050, &qword_22A57B0C8);
  v36 = v51;
  swift_beginAccess();
  sub_2295E90C8(v35, v1 + v36, &qword_27D87E050, &qword_22A57B0C8);
  swift_endAccess();
  v37 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__systemUptime);
  swift_beginAccess();
  v38 = *v37;
  LOBYTE(v37) = *(v37 + 8);
  v39 = v47;
  swift_beginAccess();
  *v39 = v38;
  *(v39 + 8) = v37;
  v40 = (a1 + OBJC_IVAR____TtCV13HomeKitDaemon52HomeIntelligenceProtoPETSecureSubmitterEventMetadataP33_C2DABE117A8DCAE442EC7C7A05BB69E313_StorageClass__currentServerTime);
  swift_beginAccess();
  v41 = *v40;
  LOBYTE(v40) = *(v40 + 8);
  v42 = v53;
  swift_beginAccess();
  *v42 = v41;
  *(v42 + 8) = v40;
  return v1;
}

uint64_t sub_22961FD1C(uint64_t a1)
{
  result = sub_22A4DC29C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for HomeIntelligenceProtoPETSecureSubmitterEventMetadata._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22961FDDC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7B && *(a1 + 8))
  {
    return (*a1 + 123);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7A)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_22961FE38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7A)
  {
    *result = a2 - 123;
    if (a3 >= 0x7B)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7B)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_22961FEE8()
{
  v0 = swift_allocObject();
  v1 = _s21AppleMediaAccessoriesCMa();
  result = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_283CE7730;
  v0[2] = result;
  qword_27D8AB718 = v0;
  return result;
}

uint64_t sub_22961FFD8(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, void *a5)
{
  v9 = swift_allocObject();
  v10 = [objc_opt_self() defaultCenter];
  v11 = a2(0);
  result = swift_allocObject();
  *(result + 16) = v10;
  *(result + 24) = a3;
  v9[5] = v11;
  v9[6] = a4;
  v9[2] = result;
  *a5 = v9;
  return result;
}

uint64_t sub_22962007C(uint64_t a1, unint64_t a2)
{
  while (1)
  {
    while (1)
    {
      v4 = a2 >> 61;
      if ((a2 >> 61) <= 2)
      {
        break;
      }

      if (v4 != 4)
      {
        if (v4 != 3)
        {
          v20 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
          v21 = *(v20 + 16);
          v22 = MEMORY[0x277D84F90];
          if (v21)
          {
            v35[0] = MEMORY[0x277D84F90];

            sub_22958381C(0, v21, 0);
            v23 = 32;
            v22 = v35[0];
            do
            {
              v24 = *(v20 + v23);

              v25 = sub_22962007C(a1, v24);

              v35[0] = v22;
              v27 = *(v22 + 16);
              v26 = *(v22 + 24);
              if (v27 >= v26 >> 1)
              {
                sub_22958381C((v26 > 1), v27 + 1, 1);
                v22 = v35[0];
              }

              *(v22 + 16) = v27 + 1;
              *(v22 + v27 + 32) = v25 & 1;
              v23 += 8;
              --v21;
            }

            while (v21);
          }

          v31 = *(v22 + 16);
          v32 = (v22 + 32);
          while (v31)
          {
            v33 = *v32++;
            --v31;
            if (v33 == 1)
            {
              goto LABEL_32;
            }
          }

LABEL_27:

LABEL_28:
          v9 = 0;
          return v9 & 1;
        }

        v10 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v11 = *(v10 + 16);
        v12 = MEMORY[0x277D84F90];
        if (v11)
        {
          v35[0] = MEMORY[0x277D84F90];

          sub_22958381C(0, v11, 0);
          v13 = 32;
          v12 = v35[0];
          do
          {
            v14 = *(v10 + v13);

            v15 = sub_22962007C(a1, v14);

            v35[0] = v12;
            v17 = *(v12 + 16);
            v16 = *(v12 + 24);
            if (v17 >= v16 >> 1)
            {
              sub_22958381C((v16 > 1), v17 + 1, 1);
              v12 = v35[0];
            }

            *(v12 + 16) = v17 + 1;
            *(v12 + v17 + 32) = v15 & 1;
            v13 += 8;
            --v11;
          }

          while (v11);
        }

        v28 = *(v12 + 16);
        v29 = (v12 + 32);
        while (v28)
        {
          v30 = *v29++;
          --v28;
          if ((v30 & 1) == 0)
          {
            goto LABEL_27;
          }
        }

LABEL_32:

LABEL_33:
        v9 = 1;
        return v9 & 1;
      }

      v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
      if (sub_22962007C(a1, v6))
      {
        goto LABEL_33;
      }
    }

    if (a2 >> 61 != 2)
    {
      break;
    }

    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    a2 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    if ((sub_22962007C(a1, v5) & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  if (v4)
  {
    v18 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    v19 = sub_22962007C(a1, v18);

    v9 = v19 ^ 1;
  }

  else
  {
    sub_22957F1C4(a2 + 16, v35);
    v7 = v36;
    v8 = v37;
    __swift_project_boxed_opaque_existential_0(v35, v36);
    v9 = (*(v8 + 16))(a1, v7, v8);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  return v9 & 1;
}

uint64_t sub_229620368(uint64_t result)
{
  v1 = result;
  if (qword_27D87B930 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB710 >> 61))
  {
    sub_22957F1C4(qword_27D8AB710 + 16, v12);
    v2 = v13;
    v3 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v3 + 24))(v1, v2, v3);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B938 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB718 >> 61))
  {
    sub_22957F1C4(qword_27D8AB718 + 16, v12);
    v4 = v13;
    v5 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v5 + 24))(v1, v4, v5);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B940 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB720 >> 61))
  {
    sub_22957F1C4(qword_27D8AB720 + 16, v12);
    v6 = v13;
    v7 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v7 + 24))(v1, v6, v7);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B948 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB728 >> 61))
  {
    sub_22957F1C4(qword_27D8AB728 + 16, v12);
    v8 = v13;
    v9 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v9 + 24))(v1, v8, v9);
    result = __swift_destroy_boxed_opaque_existential_0(v12);
  }

  if (qword_27D87B950 != -1)
  {
    result = swift_once();
  }

  if (!(qword_27D8AB730 >> 61))
  {
    sub_22957F1C4(qword_27D8AB730 + 16, v12);
    v10 = v13;
    v11 = v14;
    __swift_project_boxed_opaque_existential_0(v12, v13);
    (*(v11 + 24))(v1, v10, v11);
    return __swift_destroy_boxed_opaque_existential_0(v12);
  }

  return result;
}

uint64_t sub_229620640(uint64_t a1, id a2)
{
  v2 = [a2 chipAccessoryServer];
  if (v2 && (v3 = v2, v4 = [v2 matterDevice], v3, v4))
  {
    v7 = sub_229621540();
    v8 = MEMORY[0x277D17450];
    *&v6 = v4;
    sub_229557188(&v6, v9);
    __swift_project_boxed_opaque_existential_0(v9, v9[3]);
    sub_22A4DDF4C();
    return __swift_destroy_boxed_opaque_existential_0(v9);
  }

  else
  {
    [objc_opt_self() hmErrorWithCode_];
    return swift_willThrow();
  }
}

uint64_t sub_22962074C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_229620770, 0, 0);
}

uint64_t sub_229620770()
{
  v1 = [*(v0 + 120) chipAccessoryServer];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = sub_229621540();
    v5 = MEMORY[0x277D17450];
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_229620908;
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_229621668(v9, v7, v8);
  }

  else
  {
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_229620908()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_229621814;
  }

  else
  {
    v2 = sub_229621818;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229620A1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](sub_229620A40, 0, 0);
}

uint64_t sub_229620A40()
{
  v1 = [*(v0 + 120) chipAccessoryServer];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    v4 = sub_229621540();
    v5 = MEMORY[0x277D17450];
    *(v0 + 80) = v4;
    *(v0 + 88) = v5;
    *(v0 + 56) = v3;
    sub_229557188((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *v6 = v0;
    v6[1] = sub_229620BD8;
    v7 = *(v0 + 104);
    v8 = *(v0 + 112);
    v9 = *(v0 + 96);

    return sub_22962174C(v9, v7, v8);
  }

  else
  {
    [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_229620BD8()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_229620D50;
  }

  else
  {
    v2 = sub_229620CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229620CEC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229620D50()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229620DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[3] = a1;
  v4[4] = a2;
  return MEMORY[0x2822009F8](sub_229620DD8, 0, 0);
}

uint64_t sub_229620DD8()
{
  v1 = [*(v0 + 48) chipAccessoryServer];
  if (v1 && (v2 = v1, v3 = [v1 matterDevice], v2, v3))
  {
    *(v0 + 16) = v3;
    v4 = sub_229621540();
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_229620F64;
    v6 = *(v0 + 32);
    v7 = *(v0 + 40);
    v8 = *(v0 + 24);
    v9 = MEMORY[0x277D17450];

    return (sub_2296215B0)(v8, v6, v7, v4, v9);
  }

  else
  {
    v11 = *(v0 + 24);
    v12 = sub_22A4DC77C();
    (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_229620F64()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_2296210DC;
  }

  else
  {
    v2 = sub_229621078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229621078()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2296210DC()
{
  v1 = *(v0 + 8);

  return v1();
}

void sub_229621140(uint64_t a2@<X8>)
{
  v4 = [*v2 chipAccessoryServer];
  if (v4 && (v5 = v4, v6 = [v4 matterDevice], v5, v6))
  {
    sub_229621540();
    sub_22962158C();
  }

  else
  {
    v7 = sub_22A4DC77C();
    (*(*(v7 - 8) + 56))(a2, 1, 1, v7);
  }
}

uint64_t sub_229621238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229586D38;

  return sub_229620DB4(a1, a2, a3, v8);
}

uint64_t sub_22962130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229586D38;

  return sub_22962074C(a1, a2, a3, v8);
}

void sub_2296213C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [*v3 chipAccessoryServer];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 matterDevice];

    if (v6)
    {
      sub_229621540();
      sub_229621720();
    }
  }
}

uint64_t sub_229621488(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_229569B30;

  return sub_229620A1C(a1, a2, a3, v8);
}

unint64_t sub_229621540()
{
  result = qword_27D87DB90;
  if (!qword_27D87DB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87DB90);
  }

  return result;
}

uint64_t sub_2296215B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229586D38;

  return MEMORY[0x282171880](a1, a2, a3);
}

uint64_t sub_229621668(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229586D38;

  return MEMORY[0x282171888](a1, a2, a3);
}

uint64_t sub_22962174C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_229586D38;

  return MEMORY[0x282171878](a1, a2, a3);
}

id sub_22962181C(void *a1)
{
  v2 = v1;
  v45 = a1;
  v3 = sub_22A4DB7DC();
  v47 = *(v3 - 8);
  v48 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v45 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881AA0, &qword_22A57BC20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - v9;
  v11 = sub_22A4DB74C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  MEMORY[0x28223BE20](v16);
  v52 = sub_22A4DB19C();
  v49 = *(v52 - 8);
  v19 = MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v50 = &v45 - v21;
  v22 = [v2 startDate];
  sub_22A4DB70C();

  v23 = [v2 endDate];
  if (v23)
  {
    v24 = v23;
    sub_22A4DB70C();

    v25 = *(v12 + 32);
    v25(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    v25(v18, v10, v11);
  }

  else
  {
    (*(v12 + 56))(v10, 1, 1, v11);
    v26 = [v2 startDate];
    sub_22A4DB70C();

    if ((*(v12 + 48))(v10, 1, v11) != 1)
    {
      sub_2296224D4(v10);
    }
  }

  v27 = v50;
  sub_22A4DB17C();
  (*(v49 + 16))(v51, v27, v52);
  v28 = v45;
  v29 = [v45 spiClientIdentifier];
  sub_22A4DB79C();

  sub_22A4DB76C();
  v30 = v48;
  v31 = *(v47 + 8);
  v31(v7, v48);
  v32 = [v28 atHomeLevel] == 2 || objc_msgSend(v28, sel_atHomeLevel) == 3;
  LODWORD(v47) = v32;
  v33 = HMDRequestSourceAsString(*&v2[OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_source]);
  if (!v33)
  {
    sub_22A4DD5EC();
    v33 = sub_22A4DD5AC();
  }

  v34 = v46;
  sub_22A4DB7CC();
  sub_22A4DB76C();
  v31(v34, v30);
  v35 = objc_allocWithZone(MEMORY[0x277CF1980]);
  v36 = v51;
  v37 = sub_22A4DB15C();
  v38 = sub_22A4DD5AC();

  v39 = sub_22A4DD5AC();
  v40 = sub_22A4DD5AC();

  v41 = [v35 initWithDateInterval:v37 homeUniqueIdentifier:v38 homeOccupancy:v47 source:v33 clientName:v39 eventCorrelationIdentifier:v40];

  v42 = *(v49 + 8);
  v43 = v52;
  v42(v36, v52);
  v42(v50, v43);
  return v41;
}

uint64_t sub_229621E84()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD07C();
  v63 = *(v2 - 8);
  v64 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v54 - v7;
  MEMORY[0x28223BE20](v6);
  v62 = &v54 - v9;
  v10 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_clusterId);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  v12 = [v10 isEqualToNumber_];

  if (!v12)
  {
    sub_229541CB0(ObjectType, &off_283CDE918);
    v38 = sub_22A4DD05C();
    v39 = sub_22A4DDCCC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_229538000, v38, v39, "Ignoring MatterAccessoryInvokeCommandLogEvent since MTRClusterIDType is not rvcOperationState", v40, 2u);
      MEMORY[0x22AAD4E50](v40, -1, -1);
    }

    v63[1](v5, v64);
    return MEMORY[0x277D84F90];
  }

  v13 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_commandId);
  v14 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedInt_];
  LODWORD(v13) = [v13 isEqualToNumber_];

  if (!v13)
  {
    sub_229541CB0(ObjectType, &off_283CDE918);
    v41 = sub_22A4DD05C();
    v42 = sub_22A4DDCCC();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_229538000, v41, v42, "Ignoring MatterAccessoryInvokeCommandLogEvent MTRCommandIDType is not clusterRVCOperationalStateCommandResume", v43, 2u);
      MEMORY[0x22AAD4E50](v43, -1, -1);
    }

    v63[1](v8, v64);
    return MEMORY[0x277D84F90];
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    v44 = v62;
    sub_229541CB0(ObjectType, &off_283CDE918);
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_229538000, v45, v46, "Unable to donate to Biome due to nil home", v47, 2u);
      MEMORY[0x22AAD4E50](v47, -1, -1);
    }

    v63[1](v44, v64);
    return MEMORY[0x277D84F90];
  }

  v63 = Strong;
  v16 = sub_22962181C(Strong);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_22A576190;
  v65 = *(v0 + OBJC_IVAR____TtC13HomeKitDaemon36MatterAccessoryInvokeCommandLogEvent_nodeId);
  sub_229622480();
  sub_22A4DE00C();
  v17 = [v10 description];
  if (!v17)
  {
    sub_22A4DD5EC();
    v17 = sub_22A4DD5AC();
  }

  v62 = objc_allocWithZone(MEMORY[0x277CF1960]);
  v60 = v16;
  v18 = sub_22A4DD5AC();
  v61 = sub_22A4DD5AC();

  v59 = sub_22A4DD5AC();
  v58 = sub_22A4DD5AC();
  v19 = sub_22A4DD81C();
  v20 = sub_22A4DD5AC();
  v21 = sub_22A4DD5AC();
  v54 = v21;
  v22 = sub_22A4DD5AC();
  v55 = v22;
  v23 = sub_22A4DD5AC();
  v56 = v23;
  v24 = sub_22A4DD5AC();
  v57 = v24;
  v25 = sub_22A4DD81C();
  v26 = sub_22A4DD5AC();
  v52 = v23;
  v53 = v24;
  v50 = v21;
  v51 = v22;
  v48 = v19;
  v49 = v20;
  v27 = v20;
  v28 = v19;
  v29 = v61;
  v30 = v60;
  v31 = v17;
  v32 = v17;
  v34 = v58;
  v33 = v59;
  v62 = [v62 initWithBase:v60 stringAccessoryState:v18 accessoryUniqueIdentifier:v61 serviceUniqueIdentifier:v31 serviceType:v59 characteristicType:v58 serviceGroupUniqueIdentifier:0 zoneUniqueIdentifiers:v48 roomUniqueIdentifier:v49 accessoryName:v50 serviceName:v51 roomName:v52 serviceGroupName:v53 zoneNames:v25 homeName:v26];

  v35 = v64;
  v36 = v63;
  *(v64 + 32) = v62;

  return v35;
}