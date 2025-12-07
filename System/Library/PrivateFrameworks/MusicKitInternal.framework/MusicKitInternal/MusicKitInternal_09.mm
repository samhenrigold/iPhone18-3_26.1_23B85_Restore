uint64_t sub_1D4F2F2C0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xED0000736F6D7441;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x484453736168 && a2 == 0xE600000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6974627553736168 && a2 == 0xEC00000073656C74;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else if (a1 == 0x65756C6156776172 && a2 == 0xE900000000000073)
                    {

                      return 10;
                    }

                    else
                    {
                      v16 = sub_1D5616168();

                      if (v16)
                      {
                        return 10;
                      }

                      else
                      {
                        return 11;
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

uint64_t sub_1D4F2F628(unsigned __int8 a1)
{
  sub_1D56162D8();
  MEMORY[0x1DA6EC0D0](a1);
  return sub_1D5616328();
}

unint64_t sub_1D4F2F670(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0x484453736168;
      break;
    case 8:
      result = 0x6572657453736168;
      break;
    case 9:
      result = 0x6974627553736168;
      break;
    case 10:
      result = 0x65756C6156776172;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4F2F794(uint64_t a1)
{
  v2 = *v1;
  sub_1D56162D8();
  sub_1D4EA72BC(v4, v2);
  return sub_1D5616328();
}

uint64_t sub_1D4F2F7E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4F2F2C0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4F2F828@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4F2F620();
  *a1 = result;
  return result;
}

uint64_t sub_1D4F2F850(uint64_t a1)
{
  v2 = sub_1D4F2FB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4F2F88C(uint64_t a1)
{
  v2 = sub_1D4F2FB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VideoLocale.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB880, &unk_1D561EE60);
  OUTLINED_FUNCTION_4();
  v5 = v4;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v25 - v7;
  v9 = *(v1 + 16);
  v35 = *(v1 + 24);
  v36 = v9;
  LODWORD(v9) = *(v1 + 32);
  v33 = *(v1 + 33);
  v34 = v9;
  LODWORD(v9) = *(v1 + 34);
  v31 = *(v1 + 35);
  v32 = v9;
  LODWORD(v9) = *(v1 + 36);
  v29 = *(v1 + 37);
  v30 = v9;
  LODWORD(v9) = *(v1 + 38);
  v27 = *(v1 + 39);
  v28 = v9;
  v26 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F2FB80();
  sub_1D56163D8();
  LOBYTE(v39) = 0;
  v10 = v37;
  sub_1D5616088();
  if (!v10)
  {
    v11 = v33;
    v12 = v34;
    v13 = v31;
    v14 = v32;
    v15 = v30;
    LOBYTE(v39) = 1;
    sub_1D5616088();
    OUTLINED_FUNCTION_148(2);
    OUTLINED_FUNCTION_170_0(v12, v16);
    OUTLINED_FUNCTION_148(3);
    OUTLINED_FUNCTION_170_0(v11, v17);
    OUTLINED_FUNCTION_148(4);
    OUTLINED_FUNCTION_170_0(v14, v18);
    OUTLINED_FUNCTION_148(5);
    OUTLINED_FUNCTION_170_0(v13, v19);
    OUTLINED_FUNCTION_148(6);
    OUTLINED_FUNCTION_170_0(v15, v20);
    OUTLINED_FUNCTION_148(7);
    OUTLINED_FUNCTION_170_0(v29, v21);
    OUTLINED_FUNCTION_148(8);
    OUTLINED_FUNCTION_170_0(v28, v22);
    OUTLINED_FUNCTION_148(9);
    OUTLINED_FUNCTION_170_0(v27, v23);
    v39 = v26;
    v38 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F2FBD4();
    sub_1D56160C8();
  }

  return (*(v5 + 8))(v8, v3);
}

unint64_t sub_1D4F2FB80()
{
  result = qword_1EC7EB888;
  if (!qword_1EC7EB888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB888);
  }

  return result;
}

unint64_t sub_1D4F2FBD4()
{
  result = qword_1EC7EB898;
  if (!qword_1EC7EB898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F39A68(&qword_1EC7EB8A0, MEMORY[0x1E69774C0], MEMORY[0x1E69774C8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB898);
  }

  return result;
}

void VideoLocale.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  sub_1D5614E28();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();
  sub_1D56162F8();

  sub_1D4F31AC0();
}

uint64_t VideoLocale.hashValue.getter()
{
  sub_1D56162D8();
  VideoLocale.hash(into:)(v1);
  return sub_1D5616328();
}

uint64_t VideoLocale.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8A8, &qword_1D561EE70);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4F2FB80();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v6 = sub_1D5615F98();
  v8 = v7;
  v28 = v6;
  OUTLINED_FUNCTION_44_7(1);
  v9 = sub_1D5615F98();
  v11 = v10;
  v27 = v9;
  OUTLINED_FUNCTION_44_7(2);
  v26 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(3);
  v24 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(4);
  v23 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(5);
  v21 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(6);
  v20 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(7);
  v19 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(8);
  v18 = sub_1D5615FA8();
  OUTLINED_FUNCTION_44_7(9);
  v17 = sub_1D5615FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB890, &qword_1D5620C60);
  v42 = 10;
  sub_1D4F31CF4();
  sub_1D5615FD8();
  v16 = v24 & 1;
  v25 = v21 & 1;
  v12 = OUTLINED_FUNCTION_109_0();
  v13(v12);
  v22 = v43;
  *&v29 = v28;
  *(&v29 + 1) = v8;
  *&v30 = v27;
  *(&v30 + 1) = v11;
  LOBYTE(v31) = v26 & 1;
  BYTE1(v31) = v16;
  BYTE2(v31) = v23 & 1;
  BYTE3(v31) = v25;
  BYTE4(v31) = v20 & 1;
  BYTE5(v31) = v19 & 1;
  BYTE6(v31) = v18 & 1;
  BYTE7(v31) = v17 & 1;
  *(&v31 + 1) = v43;
  v14 = v30;
  *a2 = v29;
  a2[1] = v14;
  a2[2] = v31;
  sub_1D4F0A60C(&v29, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v28;
  v32[1] = v8;
  v32[2] = v27;
  v32[3] = v11;
  v33 = v26 & 1;
  v34 = v16;
  v35 = v23 & 1;
  v36 = v25;
  v37 = v20 & 1;
  v38 = v19 & 1;
  v39 = v18 & 1;
  v40 = v17 & 1;
  v41 = v22;
  return sub_1D4F0A668(v32);
}

uint64_t sub_1D4F30204(uint64_t a1)
{
  sub_1D56162D8();
  VideoLocale.hash(into:)(v2);
  return sub_1D5616328();
}

void sub_1D4F30240()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = sub_1D560F988();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDB8, &qword_1D561F328);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_17(v8, v30);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v10 = OUTLINED_FUNCTION_1_28();
    v11(v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDC0, &qword_1D561F330);
    v13 = OUTLINED_FUNCTION_5_13(v12);
    v14(v13);
    v15 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v15, v16, v17, v18);
LABEL_7:
    v19 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v19, v20, &qword_1EC7EBDB8, &qword_1D561F328);
    v21 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v21);
    if (v22)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v23 = OUTLINED_FUNCTION_11_14();
    v24(v23);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    OUTLINED_FUNCTION_133_1();
    v26 = sub_1D4F39A68(&qword_1EC7EBDC8, v25, MEMORY[0x1E6975978]);
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDC0, &qword_1D561F330);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F30474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v83 = v24;
  v25 = type metadata accessor for StorePlatformGenericMusicItem(0);
  v26 = OUTLINED_FUNCTION_69(v25);
  v88 = v27;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5_0();
  v90 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB918, &qword_1D561F0F8);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v89 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v81 - v33;
  v35 = v23 + 64;
  OUTLINED_FUNCTION_46_2();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;
  OUTLINED_FUNCTION_179_0(&a11);

  v41 = 0;
  v42 = 0;
  v82 = v35;
  v81 = v40;
  v87 = v34;
  if (v38)
  {
LABEL_2:
    v86 = v41;
    v43 = v42;
LABEL_7:
    v85 = (v38 - 1) & v38;
    v84 = v43;
    OUTLINED_FUNCTION_96_1();
    v46 = *(v45 + 8 * v44);
    memcpy(v92, v83, sizeof(v92));

    OUTLINED_FUNCTION_202_0();
    sub_1D5614E28();

    v47 = v46 + 64;
    OUTLINED_FUNCTION_46_2();
    v50 = v49 & v48;
    v52 = (v51 + 63) >> 6;
    OUTLINED_FUNCTION_179_0(&a18);
    swift_bridgeObjectRetain_n();
    v53 = 0;
    v54 = 0;
    while (1)
    {
      v91 = v53;
      if (!v50)
      {
        break;
      }

LABEL_14:
      v50 &= v50 - 1;
      OUTLINED_FUNCTION_96_1();
      v59 = *v57;
      v58 = v57[1];
      OUTLINED_FUNCTION_54_7();
      v60 = v90;
      sub_1D4F399C0(v61, v90, v62);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
      v64 = v89;
      *v89 = v59;
      v64[1] = v58;
      v55 = v64;
      OUTLINED_FUNCTION_30_7();
      sub_1D4F39AFC(v60, v66 + v65, v67);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_151_2(v68, v69, v70, v63);
      v34 = v87;
LABEL_15:
      sub_1D4F39A1C(v55, v34, &qword_1EC7EB918, &qword_1D561F0F8);
      v71 = OUTLINED_FUNCTION_159_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v71, v72);
      OUTLINED_FUNCTION_10(v34);
      if (v73)
      {

        MEMORY[0x1DA6EC0D0](v91);
        swift_bridgeObjectRelease_n();
        v41 = sub_1D5616328() ^ v86;
        v42 = v84;
        v35 = v82;
        v40 = v81;
        v38 = v85;
        if (!v85)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      OUTLINED_FUNCTION_30_7();
      sub_1D4F39AFC(&v34[v74], v90, v75);
      OUTLINED_FUNCTION_187_0();
      sub_1D5614E28();

      sub_1D56070E8();
      OUTLINED_FUNCTION_141_1();
      v53 = sub_1D5616328() ^ v91;
    }

    v55 = v89;
    while (1)
    {
      v56 = v54 + 1;
      if (__OFADD__(v54, 1))
      {
        break;
      }

      if (v56 >= v52)
      {
        v76 = OUTLINED_FUNCTION_159_0();
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(v76, v77);
        OUTLINED_FUNCTION_146_0(v55, v79, v80, v78);
        v50 = 0;
        goto LABEL_15;
      }

      v50 = *(v47 + 8 * v56);
      ++v54;
      if (v50)
      {
        v54 = v56;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v40)
      {

        MEMORY[0x1DA6EC0D0](v41);
        OUTLINED_FUNCTION_46();
        return;
      }

      v38 = *(v35 + 8 * v43);
      ++v42;
      if (v38)
      {
        v86 = v41;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void sub_1D4F308AC()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_105_2(v4);
  v6 = type metadata accessor for StorePlatformGenericMusicItem(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB918, &qword_1D561F0F8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v12);
      OUTLINED_FUNCTION_54_7();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_189_1(v16, v17);
      v18 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v22 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v22, v23, &qword_1EC7EB918, &qword_1D561F0F8);
      v24 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v24);
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_30_7();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v26, v27, v28);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      OUTLINED_FUNCTION_185_0();
      sub_1D56070E8();
      OUTLINED_FUNCTION_141_1();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v1)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB920, &qword_1D561F100);
        OUTLINED_FUNCTION_82_3(v29);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1();
    }

    __break(1u);
  }
}

void sub_1D4F30ABC()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_105_2(v4);
  v6 = type metadata accessor for MusicDownloadedSongCatalogProperties(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDD8, &qword_1D561F338);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v12);
      OUTLINED_FUNCTION_68_6();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE0, &unk_1D561F340);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_189_1(v16, v17);
      v18 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v22 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v22, v23, &qword_1EC7EBDD8, &qword_1D561F338);
      v24 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v24);
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_53_5();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v26, v27, v28);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      v29 = OUTLINED_FUNCTION_185_0();
      MusicDownloadedSongCatalogProperties.hash(into:)(v29);
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v1)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE0, &unk_1D561F340);
        OUTLINED_FUNCTION_82_3(v30);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1();
    }

    __break(1u);
  }
}

void sub_1D4F30CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v131 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_48(&v117 - v28);
  v126 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v32);
  v133 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v34 = v33;
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13();
  v135 = v36;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v117 - v38;
  v40 = type metadata accessor for GenericMusicItem(0);
  v41 = OUTLINED_FUNCTION_69(v40);
  v124 = v42;
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_59_0();
  v45 = v43 - v44;
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_13_2();
  v48 = OUTLINED_FUNCTION_48(v47);
  v138 = type metadata accessor for LooselyComparableTypedIdentifier(v48);
  OUTLINED_FUNCTION_4();
  v122 = v49;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_59_0();
  v53 = v51 - v52;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_2();
  v121 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB218, &unk_1D561F360);
  v57 = OUTLINED_FUNCTION_22(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13();
  v134 = v58;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v59);
  v61 = &v117 - v60;
  v132 = v24 + 64;
  OUTLINED_FUNCTION_15_0();
  v64 = v63 & v62;
  OUTLINED_FUNCTION_142_1();
  v130 = (v34 + 16);
  v119 = v30 + 32;
  v118 = v30 + 8;
  OUTLINED_FUNCTION_179_0(&a15);

  v65 = 0;
  v66 = 0;
  v136 = v61;
  v137 = v53;
  v139 = v45;
  v129 = (v34 + 8);
  v128 = v20;
  while (1)
  {
    v140 = v65;
    if (!v64)
    {
      break;
    }

    v67 = v39;
LABEL_9:
    OUTLINED_FUNCTION_200_0();
    v71 = v125;
    OUTLINED_FUNCTION_198_0(*(v125 + 48));
    OUTLINED_FUNCTION_128_3();
    v72 = v121;
    sub_1D4F399C0(v73, v121, v74);
    OUTLINED_FUNCTION_198_0(*(v71 + 56));
    OUTLINED_FUNCTION_67_7();
    v75 = v123;
    sub_1D4F399C0(v76, v123, v77);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
    v79 = *(v78 + 48);
    OUTLINED_FUNCTION_51_9();
    v80 = v72;
    v81 = v134;
    sub_1D4F39AFC(v80, v134, v82);
    OUTLINED_FUNCTION_50_6();
    sub_1D4F39AFC(v75, v81 + v79, v83);
    OUTLINED_FUNCTION_64_0();
    v84 = v78;
    v68 = v81;
    __swift_storeEnumTagSinglePayload(v85, v86, v87, v84);
    v53 = v137;
    v39 = v67;
    v69 = v135;
    v61 = v136;
LABEL_10:
    sub_1D4F39A1C(v68, v61, &qword_1EC7EB218, &unk_1D561F360);
    v88 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_10(v61);
    if (v89)
    {

      MEMORY[0x1DA6EC0D0](v140);
      OUTLINED_FUNCTION_46();
      return;
    }

    v90 = *(v88 + 48);
    OUTLINED_FUNCTION_51_9();
    sub_1D4F39AFC(v61, v53, v91);
    OUTLINED_FUNCTION_50_6();
    sub_1D4F39AFC(&v61[v90], v139, v92);
    memcpy(v141, v131, 0x48uLL);
    sub_1D5614E28();
    v93 = v133;
    (*v130)(v39, v53 + *(v138 + 20), v133);
    sub_1D560D948();
    OUTLINED_FUNCTION_134_1();
    sub_1D4F39A68(&qword_1EDD53C20, v94, MEMORY[0x1E6974F90]);
    v95 = v39;
    v96 = sub_1D5614D18();
    v97 = *v129;
    (*v129)(v69, v93);
    if (v96 & 1) != 0 || (sub_1D560D998(), v98 = OUTLINED_FUNCTION_203_1(), v97(v69, v93), (v98))
    {
      v97(v95, v93);
      v39 = v95;
    }

    else
    {
      sub_1D560D918();
      v114 = OUTLINED_FUNCTION_203_1();
      v97(v69, v93);
      v97(v95, v93);
      v39 = v95;
      if ((v114 & 1) == 0)
      {
        OUTLINED_FUNCTION_134_1();
        sub_1D4F39A68(&qword_1EDD53C28, v115, MEMORY[0x1E6974F88]);
        OUTLINED_FUNCTION_99_0();
        v53 = v137;
        sub_1D5614CB8();
        OUTLINED_FUNCTION_49_5();
        sub_1D4F39B58();
        v61 = v136;
        v20 = v128;
        goto LABEL_18;
      }
    }

    v53 = v137;
    v99 = v127;
    sub_1D4F39AB0(v137 + *(v138 + 24), v127, &qword_1EC7EA358, &unk_1D561DF50);
    v100 = v126;
    OUTLINED_FUNCTION_57(v99, 1, v126);
    v20 = v128;
    if (v89)
    {
      OUTLINED_FUNCTION_49_5();
      sub_1D4F39B58();
      OUTLINED_FUNCTION_202_0();
      sub_1D4E50004(v101, v102, v103);
    }

    else
    {
      OUTLINED_FUNCTION_195();
      v104 = v120;
      v105(v120, v99, v100);
      sub_1D4F39A68(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
      OUTLINED_FUNCTION_99_0();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_195();
      v106(v104, v100);
      OUTLINED_FUNCTION_49_5();
      sub_1D4F39B58();
    }

    v61 = v136;
LABEL_18:
    GenericMusicItem.hash(into:)(v141, v107, v108, v109, v110, v111, v112, v113, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
    sub_1D4F39B58();
    v65 = sub_1D5616328() ^ v140;
  }

  v68 = v134;
  v69 = v135;
  while (1)
  {
    v70 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      break;
    }

    if (v70 >= v20)
    {
      v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60);
      OUTLINED_FUNCTION_97_4(v116);
      v64 = 0;
      goto LABEL_10;
    }

    v64 = *(v132 + 8 * v70);
    ++v66;
    if (v64)
    {
      v67 = v39;
      v66 = v70;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_1D4F3148C()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v68 = sub_1D5614408();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v67 = v6;
  OUTLINED_FUNCTION_70_0();
  v66 = sub_1D5614898();
  OUTLINED_FUNCTION_4();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v10);
  v64 = sub_1D5613AF8();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5_0();
  v13 = OUTLINED_FUNCTION_48(v12);
  type metadata accessor for MusicSuggestedPivotContainer(v13);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5_0();
  v73 = v15;
  v16 = OUTLINED_FUNCTION_70_0();
  v17 = type metadata accessor for MusicSuggestedPivotEntry(v16);
  v18 = OUTLINED_FUNCTION_69(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13_2();
  v69 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD28, &unk_1D561F2F0);
  v22 = OUTLINED_FUNCTION_22(v21);
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_59_0();
  v25 = v23 - v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13_2();
  v71 = v27;
  v28 = v2 + 64;
  OUTLINED_FUNCTION_15_0();
  v31 = v30 & v29;
  v33 = (v32 + 63) >> 6;
  v70 = v2;

  OUTLINED_FUNCTION_103_1();
  v72 = v0;
  while (1)
  {
    v74 = v34;
    if (!v31)
    {
      break;
    }

LABEL_8:
    OUTLINED_FUNCTION_199_0();
    v39 = v38 | (v37 << 6);
    OUTLINED_FUNCTION_198_0(*(v70 + 48));
    OUTLINED_FUNCTION_127_2();
    sub_1D4F399C0(v40, v69, v41);
    v42 = *(*(v70 + 56) + v39);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
    v43 = *(v4 + 12);
    OUTLINED_FUNCTION_48_5();
    sub_1D4F39AFC(v69, v25, v44);
    *(v25 + v43) = v42;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v45, v46, v47, v4);
    v35 = v71;
LABEL_9:
    v48 = OUTLINED_FUNCTION_159_0();
    sub_1D4F39A1C(v48, v49, &qword_1EC7EBD28, &unk_1D561F2F0);
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
    OUTLINED_FUNCTION_20_23(v50);
    if (v51)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v52 = *(v4 + 12);
    OUTLINED_FUNCTION_48_5();
    sub_1D4F39AFC(v35, v72, v53);
    v54 = *(v35 + v52);
    OUTLINED_FUNCTION_92_1();
    sub_1D4F399C0(v72, v73, type metadata accessor for MusicSuggestedPivotContainer);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        OUTLINED_FUNCTION_195();
        v56 = v65;
        v57 = v66;
        v58(v65, v73, v66);
        MEMORY[0x1DA6EC0D0](1);
        sub_1D4F39A68(&qword_1EC7EB6C8, MEMORY[0x1E69773E0], MEMORY[0x1E69773F0]);
      }

      else
      {
        OUTLINED_FUNCTION_195();
        v56 = v67;
        v57 = v68;
        v60(v67, v73, v68);
        MEMORY[0x1DA6EC0D0](2);
        sub_1D4F39A68(&qword_1EC7EBD38, MEMORY[0x1E6977180], MEMORY[0x1E6977188]);
      }

      OUTLINED_FUNCTION_99_0();
      sub_1D5614CB8();
    }

    else
    {
      OUTLINED_FUNCTION_195();
      v56 = v63;
      v57 = v64;
      v59(v63, v73, v64);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D4F39A68(&qword_1EC7EB598, MEMORY[0x1E6976D28], MEMORY[0x1E6976D38]);
      OUTLINED_FUNCTION_99_0();
      sub_1D5614CB8();
    }

    OUTLINED_FUNCTION_195();
    v61(v56, v57);
    OUTLINED_FUNCTION_126_1();
    sub_1D4F39B58();
    v4 = &v75;
    MEMORY[0x1DA6EC0D0](v54);
    v34 = sub_1D5616328() ^ v74;
  }

  v35 = v71;
  while (1)
  {
    v36 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD30, &unk_1D562F070);
      OUTLINED_FUNCTION_140_2(v62);
      v31 = 0;
      goto LABEL_9;
    }

    v31 = *(v28 + 8 * v36);
    ++v8;
    if (v31)
    {
      v8 = v36;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1D4F31AC0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = sub_1D5614A88();
  v5 = OUTLINED_FUNCTION_26_6(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB928, &qword_1D561F108);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_17(v8, v30);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v10 = OUTLINED_FUNCTION_1_28();
    v11(v10);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
    v13 = OUTLINED_FUNCTION_5_13(v12);
    v14(v13);
    v15 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v15, v16, v17, v18);
LABEL_7:
    v19 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v19, v20, &qword_1EC7EB928, &qword_1D561F108);
    v21 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v21);
    if (v22)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v23 = OUTLINED_FUNCTION_11_14();
    v24(v23);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    OUTLINED_FUNCTION_73_4();
    v26 = sub_1D4F39A68(&qword_1EC7EB938, v25, MEMORY[0x1E69774D0]);
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

unint64_t sub_1D4F31CF4()
{
  result = qword_1EDD528E8;
  if (!qword_1EDD528E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB890, &qword_1D5620C60);
    sub_1D4F39A68(&qword_1EDD52A38, MEMORY[0x1E69774C0], MEMORY[0x1E69774E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD528E8);
  }

  return result;
}

unint64_t sub_1D4F31DB4()
{
  result = qword_1EC7EB8B0;
  if (!qword_1EC7EB8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8B0);
  }

  return result;
}

uint64_t sub_1D4F31E08(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1D4F31E48(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for VideoLocale.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF6)
  {
    if (a2 + 10 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 10) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 11;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v5 = v6 - 11;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for VideoLocale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF6)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF5)
  {
    v6 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
          *result = a2 + 10;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D4F3200C()
{
  result = qword_1EC7EB8B8;
  if (!qword_1EC7EB8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8B8);
  }

  return result;
}

unint64_t sub_1D4F32064()
{
  result = qword_1EC7EB8C0;
  if (!qword_1EC7EB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8C0);
  }

  return result;
}

unint64_t sub_1D4F320BC()
{
  result = qword_1EC7EB8C8;
  if (!qword_1EC7EB8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB8C8);
  }

  return result;
}

void sub_1D4F32110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v22;
  a20 = v23;
  v25 = v24;
  v79 = v26;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA758, &unk_1D561CA20);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v87 = &v76 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD40, &unk_1D563AE30);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v86 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v76 - v33;
  v35 = v25 + 64;
  OUTLINED_FUNCTION_46_2();
  v38 = v37 & v36;
  v40 = (v39 + 63) >> 6;
  OUTLINED_FUNCTION_143_1();
  OUTLINED_FUNCTION_179_0(&v91[56]);

  v41 = 0;
  v42 = 0;
  v84 = v34;
  v78 = v35;
  v77 = v40;
  v83 = v21;
  if (v38)
  {
LABEL_2:
    v82 = v41;
    v43 = v42;
LABEL_7:
    v44 = (v38 - 1) & v38;
    v81 = v44;
    v80 = v43;
    OUTLINED_FUNCTION_96_1();
    v46 = *v45;
    memcpy(v91, v79, 0x48uLL);

    OUTLINED_FUNCTION_93_3();

    OUTLINED_FUNCTION_201_0();
    OUTLINED_FUNCTION_46_2();
    v49 = v48 & v47;
    OUTLINED_FUNCTION_142_1();
    OUTLINED_FUNCTION_179_0(&a16);

    v50 = 0;
    v51 = 0;
    v85 = v20;
    while (1)
    {
      v89 = v50;
      if (!v49)
      {
        break;
      }

LABEL_14:
      OUTLINED_FUNCTION_199_0();
      OUTLINED_FUNCTION_96_1();
      v55 = *v54;
      v46 = v54[1];
      OUTLINED_FUNCTION_178_0();
      v57 = v87;
      v56 = v88;
      v58(v87);
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
      v60 = *(v59 + 48);
      v61 = v86;
      *v86 = v55;
      *(v61 + 1) = v46;
      v62 = v57;
      v21 = v83;
      (*(v34 + 4))(&v61[v60], v62, v56);
      OUTLINED_FUNCTION_64_0();
      OUTLINED_FUNCTION_151_2(v63, v64, v65, v59);
      v34 = v84;
      v20 = v85;
LABEL_15:
      v66 = OUTLINED_FUNCTION_90_2();
      sub_1D4F39A1C(v66, v67, &qword_1EC7EBD40, &unk_1D563AE30);
      v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
      OUTLINED_FUNCTION_20_23(v68);
      if (v69)
      {

        MEMORY[0x1DA6EC0D0](v89);

        v41 = sub_1D5616328() ^ v82;
        v42 = v80;
        v35 = v78;
        v40 = v77;
        v38 = v81;
        if (!v81)
        {
          goto LABEL_3;
        }

        goto LABEL_2;
      }

      v71 = v87;
      v70 = v88;
      (*v21)(v87, &v34[*(v46 + 12)], v88);
      OUTLINED_FUNCTION_187_0();
      sub_1D5614E28();

      sub_1D4F38C38();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_195();
      v72(v71, v70);
      v46 = &v90;
      v50 = sub_1D5616328() ^ v89;
    }

    v52 = v86;
    while (1)
    {
      v53 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        break;
      }

      if (v53 >= v44)
      {
        v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD48, &unk_1D561F300);
        OUTLINED_FUNCTION_146_0(v52, v74, v75, v73);
        v49 = 0;
        goto LABEL_15;
      }

      v49 = *(v20 + 8 * v53);
      ++v51;
      if (v49)
      {
        v51 = v53;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_3:
    while (1)
    {
      v43 = v42 + 1;
      if (__OFADD__(v42, 1))
      {
        break;
      }

      if (v43 >= v40)
      {

        MEMORY[0x1DA6EC0D0](v41);
        OUTLINED_FUNCTION_46();
        return;
      }

      v38 = *(v35 + 8 * v43);
      ++v42;
      if (v38)
      {
        v82 = v41;
        goto LABEL_7;
      }
    }
  }

  __break(1u);
}

void sub_1D4F325AC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE40, &qword_1D561F370);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE48, &qword_1D561F378);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBE48, &qword_1D561F378);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F39540();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE50, &unk_1D561F380);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F327C4()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE68, &qword_1D561F390);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBE68, &qword_1D561F390);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F395F4();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE70, &qword_1D561F398);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

uint64_t sub_1D4F329DC(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  OUTLINED_FUNCTION_15_0();
  v6 = v5 & v4;
  v8 = (v7 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  do
  {
    v17 = v10;
LABEL_7:
    v13 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v6)) | (v11 << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    OUTLINED_FUNCTION_202_0();
    sub_1D5614E28();

    MEMORY[0x1DA6EC0D0](*(v13 + 16));
    v14 = *(v13 + 16);
    if (v14)
    {
      v15 = v13 + 40;
      do
      {

        OUTLINED_FUNCTION_202_0();
        sub_1D5614E28();

        v15 += 16;
        --v14;
      }

      while (v14);
    }

    v6 &= v6 - 1;

    result = sub_1D5616328();
    v10 = result ^ v17;
  }

  while (v6);
LABEL_3:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v8)
    {

      return MEMORY[0x1DA6EC0D0](v10);
    }

    v6 = *(v3 + 8 * v12);
    ++v11;
    if (v6)
    {
      v17 = v10;
      v11 = v12;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4F32B80()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB28, &unk_1D5623440);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBB28, &unk_1D5623440);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F3759C();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F32D98()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB00, &qword_1D561F240);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBB00, &qword_1D561F240);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37650();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F32FB0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD8, &qword_1D561F228);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBAD8, &qword_1D561F228);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37704();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F331C8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB0, &qword_1D561F210);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBAB0, &qword_1D561F210);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F377B8();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F333E0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA88, &qword_1D561F1F8);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBA88, &qword_1D561F1F8);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F3786C();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F335F8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA60, &qword_1D561F1E0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBA60, &qword_1D561F1E0);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37920();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F33810()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBE8, &unk_1D561F2D0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBBE8, &unk_1D561F2D0);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F0AFD4();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F33A28()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA770, &unk_1D561F1C0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA38, &unk_1D5623480);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBA38, &unk_1D5623480);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F379D4();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA40, &unk_1D561F1D0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F33C40()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA10, &unk_1D5623490);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA18, &unk_1D561F1B0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBA18, &unk_1D561F1B0);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37A88();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA20, &unk_1D56234A0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F33E58()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBC8, &unk_1D56234B0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBBC8, &unk_1D56234B0);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37B3C();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBD0, &unk_1D561F2C0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F34070()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB98, &unk_1D56234C0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA0, &unk_1D561F2A0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBBA0, &unk_1D561F2A0);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37BF0();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBA8, &unk_1D56234D0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F34288()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9E8, &unk_1D561F190);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F0, &unk_1D56234E0);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EB9F0, &unk_1D56234E0);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37CA4();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9F8, &unk_1D561F1A0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F344A0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9C8, &unk_1D561F180);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EB9C8, &unk_1D561F180);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37D58();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9D0, &qword_1D56234F0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F346B8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A0, &qword_1D561F160);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9A8, &qword_1D561F168);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EB9A8, &qword_1D561F168);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37E0C();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB9B0, &unk_1D561F170);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F348D0()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB980, &unk_1D561F150);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EB980, &unk_1D561F150);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37EC0();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB988, &unk_1D5623510);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F34AE8()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C8, &unk_1D561F130);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB960, &unk_1D5623520);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EB960, &unk_1D5623520);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F37F74();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB968, &unk_1D561F140);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F34D00()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB940, &qword_1D561F120);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EB940, &qword_1D561F120);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F38028();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F34F18()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB70, &qword_1D561F280);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB78, &qword_1D561F288);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBB78, &qword_1D561F288);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F380DC();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB80, &unk_1D561F290);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F35130()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB48, &unk_1D5630FE0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB50, &qword_1D561F270);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBB50, &qword_1D561F270);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F38190();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB58, &qword_1D561F278);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F35348()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE80, &qword_1D561F3A0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE88, &qword_1D561F3A8);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBE88, &qword_1D561F3A8);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F396A8();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBE90, &unk_1D561F3B0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F35560()
{
  OUTLINED_FUNCTION_47();
  v3 = v2;
  v72 = v4;
  v86 = sub_1D5614A88();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v85 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB928, &qword_1D561F108);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_102_0();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v63 - v10;
  v12 = type metadata accessor for VideoCredit(0);
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = v3 + 64;
  OUTLINED_FUNCTION_46_2();
  v20 = v19 & v18;
  v67 = (v21 + 63) >> 6;
  OUTLINED_FUNCTION_143_1();

  v71 = 0;
  v22 = 0;
  v81 = v11;
  v80 = v1;
  if (!v20)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v69 = v22;
    v70 = v20;
    v24 = __clz(__rbit64(v20)) | (v22 << 6);
    v25 = *(*(v3 + 48) + 16 * v24 + 8);
    v26 = *(*(v3 + 56) + 8 * v24);

    if (!v25)
    {
LABEL_25:

      MEMORY[0x1DA6EC0D0](v71);
      OUTLINED_FUNCTION_46();
      return;
    }

    memcpy(v89, v72, sizeof(v89));
    sub_1D5614E28();

    MEMORY[0x1DA6EC0D0](*(v26 + 16));
    v74 = *(v26 + 16);
    if (v74)
    {
      v84 = v0;
      v66 = v3;
      v27 = 0;
      v78 = *(v12 + 20);
      v65 = v12;
      v77 = *(v12 + 24);
      OUTLINED_FUNCTION_43_3();
      v63[1] = v28;
      v76 = v28 + v29;
      v64 = v14;
      v75 = *(v14 + 72);
      v73 = v17;
      while (2)
      {
        v79 = v27;
        OUTLINED_FUNCTION_129_1();
        sub_1D4F399C0(v30, v17, v31);
        sub_1D5614E28();
        sub_1D560C0A8();
        sub_1D4F39A68(&qword_1EC7E9FC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        OUTLINED_FUNCTION_99_0();
        v32 = &v17[v78];
        sub_1D5614CB8();
        v33 = *&v17[v77] + 64;
        OUTLINED_FUNCTION_46_2();
        v36 = v35 & v34;
        v38 = (v37 + 63) >> 6;
        v83 = v39;

        OUTLINED_FUNCTION_103_1();
        v82 = v33;
        while (1)
        {
          v87 = v40;
          if (!v36)
          {
            while (1)
            {
              v41 = v12 + 1;
              if (__OFADD__(v12, 1))
              {
                break;
              }

              if (v41 >= v38)
              {
                v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
                OUTLINED_FUNCTION_140_2(v62);
                v36 = 0;
                goto LABEL_16;
              }

              v36 = *(v33 + 8 * v41);
              ++v12;
              if (v36)
              {
                v12 = v41;
                goto LABEL_15;
              }
            }

            __break(1u);
            goto LABEL_25;
          }

LABEL_15:
          OUTLINED_FUNCTION_200_0();
          OUTLINED_FUNCTION_96_1();
          v43 = *v42;
          v32 = v42[1];
          OUTLINED_FUNCTION_178_0();
          v45 = v85;
          v44 = v86;
          v46(v85);
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
          v48 = *(v47 + 48);
          v49 = v84;
          *v84 = v43;
          *(v49 + 1) = v32;
          v50 = v45;
          v1 = v80;
          (*(v11 + 4))(&v49[v48], v50, v44);
          OUTLINED_FUNCTION_64_0();
          OUTLINED_FUNCTION_151_2(v51, v52, v53, v47);
          v11 = v81;
          v33 = v82;
LABEL_16:
          v54 = OUTLINED_FUNCTION_159_0();
          sub_1D4F39A1C(v54, v55, &qword_1EC7EB928, &qword_1D561F108);
          v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB930, &unk_1D561F110);
          OUTLINED_FUNCTION_20_23(v56);
          if (v57)
          {
            break;
          }

          v59 = v85;
          v58 = v86;
          (*v1)(v85, &v11[*(v32 + 12)], v86);
          OUTLINED_FUNCTION_187_0();
          sub_1D5614E28();

          OUTLINED_FUNCTION_73_4();
          sub_1D4F39A68(&qword_1EC7EB938, v60, MEMORY[0x1E69774D0]);
          sub_1D5614CB8();
          OUTLINED_FUNCTION_195();
          v61(v59, v58);
          v32 = &v88;
          v40 = sub_1D5616328() ^ v87;
        }

        v27 = v79 + 1;
        MEMORY[0x1DA6EC0D0](v87);
        v17 = v73;
        sub_1D4F39B58();
        if (v27 != v74)
        {
          continue;
        }

        break;
      }

      v3 = v66;
      v0 = v84;
      v12 = v65;
      v14 = v64;
    }

    else
    {
    }

    v20 = (v70 - 1) & v70;
    v71 ^= sub_1D5616328();
    v22 = v69;
  }

  while (v20);
LABEL_2:
  while (1)
  {
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v23 >= v67)
    {
      goto LABEL_25;
    }

    v20 = *(v68 + 8 * v23);
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_6;
    }
  }

  __break(1u);
}

void sub_1D4F35C24()
{
  OUTLINED_FUNCTION_47();
  v30[0] = v1;
  v3 = v2;
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = v30 - v10;
  v12 = v3 + 64;
  OUTLINED_FUNCTION_15_0();
  v15 = v14 & v13;
  OUTLINED_FUNCTION_163_3();
  v30[1] = v16 + 16;
  v30[2] = v16;
  v17 = (v16 + 8);

  v18 = 0;
  v19 = 0;
  v33 = v0;
  v34 = v3 + 64;
  v31 = v3;
  v32 = v5;
  if (!v15)
  {
    goto LABEL_3;
  }

  do
  {
    v37 = v18;
LABEL_7:
    v36 = v15;
    v21 = *(*(v3 + 56) + 8 * (__clz(__rbit64(v15)) | (v19 << 6)));
    memcpy(v38, v5, sizeof(v38));

    sub_1D5614E28();

    MEMORY[0x1DA6EC0D0](*(v21 + 16));
    v22 = *(v21 + 16);
    if (v22)
    {
      OUTLINED_FUNCTION_43_3();
      v35 = v21;
      v24 = v21 + v23;
      v26 = *(v25 + 72);
      v27 = *(v25 + 16);
      v28 = v30[0];
      do
      {
        v29 = v27(v11, v24, v8);
        v28(v29);
        OUTLINED_FUNCTION_99_0();
        sub_1D5614CB8();
        (*v17)(v11, v8);
        v24 += v26;
        --v22;
      }

      while (v22);

      v3 = v31;
      v5 = v32;
    }

    else
    {
    }

    v15 = (v36 - 1) & v36;
    v18 = sub_1D5616328() ^ v37;
    v0 = v33;
    v12 = v34;
  }

  while (v15);
LABEL_3:
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v0)
    {

      MEMORY[0x1DA6EC0D0](v18);
      OUTLINED_FUNCTION_46();
      return;
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v37 = v18;
      v19 = v20;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D4F35E74()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_105_2(v4);
  v6 = type metadata accessor for StorePlatformTVEpisode(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D0, &qword_1D561F0B0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v12);
      OUTLINED_FUNCTION_72_8();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D8, &qword_1D561F0B8);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_189_1(v16, v17);
      v18 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v22 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v22, v23, &qword_1EC7EB8D0, &qword_1D561F0B0);
      v24 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v24);
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_57_9();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v26, v27, v28);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      v29 = OUTLINED_FUNCTION_185_0();
      sub_1D500D4CC(v29);
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v1)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8D8, &qword_1D561F0B8);
        OUTLINED_FUNCTION_82_3(v30);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1();
    }

    __break(1u);
  }
}

void sub_1D4F36098()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_105_2(v4);
  v6 = type metadata accessor for StorePlatformPlaylistEntry(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E0, &qword_1D561F0C0);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v12);
      OUTLINED_FUNCTION_70_5();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E8, &qword_1D561F0C8);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_189_1(v16, v17);
      v18 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v22 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v22, v23, &qword_1EC7EB8E0, &qword_1D561F0C0);
      v24 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v24);
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_56_7();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v26, v27, v28);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      v29 = OUTLINED_FUNCTION_185_0();
      sub_1D4ECD60C(v29);
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v1)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8E8, &qword_1D561F0C8);
        OUTLINED_FUNCTION_82_3(v30);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1();
    }

    __break(1u);
  }
}

void sub_1D4F362BC()
{
  OUTLINED_FUNCTION_47();
  v5 = OUTLINED_FUNCTION_105_2(v4);
  v6 = type metadata accessor for StorePlatformTVSeason(v5);
  v7 = OUTLINED_FUNCTION_69(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_177(v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB908, &qword_1D561F0E8);
  v10 = OUTLINED_FUNCTION_22(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_91_2();
  OUTLINED_FUNCTION_175_0();
  if (v0)
  {
    while (1)
    {
      OUTLINED_FUNCTION_174_0();
      OUTLINED_FUNCTION_39_8(v12);
      OUTLINED_FUNCTION_69_5();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F399C0(v13, v14, v15);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB910, &qword_1D561F0F0);
      OUTLINED_FUNCTION_79_2();
      OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_189_1(v16, v17);
      v18 = OUTLINED_FUNCTION_74_5();
      __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);

      OUTLINED_FUNCTION_186_1();
LABEL_6:
      v22 = OUTLINED_FUNCTION_184();
      sub_1D4F39A1C(v22, v23, &qword_1EC7EB908, &qword_1D561F0E8);
      v24 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_20_23(v24);
      if (v25)
      {
        break;
      }

      OUTLINED_FUNCTION_171_0();
      OUTLINED_FUNCTION_55_6();
      OUTLINED_FUNCTION_139_3();
      sub_1D4F39AFC(v26, v27, v28);
      OUTLINED_FUNCTION_154_2();
      OUTLINED_FUNCTION_153_2();

      v29 = OUTLINED_FUNCTION_185_0();
      sub_1D55ECE38(v29);
      OUTLINED_FUNCTION_157_3();
      sub_1D4F39B58();
      v3 ^= sub_1D5616328();
      if (!v0)
      {
        goto LABEL_3;
      }
    }

    OUTLINED_FUNCTION_191_0();
    OUTLINED_FUNCTION_46();
  }

  else
  {
LABEL_3:
    while (!__OFADD__(v2, 1))
    {
      if (v2 + 1 >= v1)
      {
        v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB910, &qword_1D561F0F0);
        OUTLINED_FUNCTION_82_3(v30);
        goto LABEL_6;
      }

      OUTLINED_FUNCTION_172_1();
    }

    __break(1u);
  }
}

void sub_1D4F364E0()
{
  OUTLINED_FUNCTION_47();
  v3 = OUTLINED_FUNCTION_105_2(v2);
  v4 = type metadata accessor for StorePlatformSong(v3);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5_0();
  v59 = v6;
  v7 = OUTLINED_FUNCTION_70_0();
  v8 = type metadata accessor for StorePlatformMusicVideo(v7);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v58 = v10;
  v11 = OUTLINED_FUNCTION_70_0();
  v66 = type metadata accessor for StorePlatformTrack(v11);
  OUTLINED_FUNCTION_4();
  v64 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_59_0();
  v16 = v14 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v58 - v19;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_2();
  v62 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB8F8, &unk_1D565CF80);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v68 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58 - v26;
  v28 = v0 + 64;
  OUTLINED_FUNCTION_10_12();
  v31 = v30 & v29;
  OUTLINED_FUNCTION_142_1();
  v65 = v0;

  v32 = 0;
  v33 = 0;
  v63 = v16;
  v60 = v27;
  v61 = v20;
  while (1)
  {
    v69 = v32;
    if (!v31)
    {
      break;
    }

LABEL_8:
    v31 &= v31 - 1;
    OUTLINED_FUNCTION_96_1();
    v38 = *v36;
    v37 = v36[1];
    OUTLINED_FUNCTION_42_10();
    v39 = v62;
    sub_1D4F399C0(v40, v62, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
    v34 = v68;
    *v68 = v38;
    *(v34 + 8) = v37;
    OUTLINED_FUNCTION_58_5();
    sub_1D4F39AFC(v39, v34 + v42, v43);
    v44 = OUTLINED_FUNCTION_74_5();
    __swift_storeEnumTagSinglePayload(v44, v45, v46, v47);

    v16 = v63;
    v27 = v60;
    v20 = v61;
LABEL_9:
    sub_1D4F39A1C(v34, v27, &qword_1EC7EB8F8, &unk_1D565CF80);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
    OUTLINED_FUNCTION_22_11(v48);
    if (v49)
    {

      MEMORY[0x1DA6EC0D0](v69);
      OUTLINED_FUNCTION_46();
      return;
    }

    OUTLINED_FUNCTION_58_5();
    sub_1D4F39AFC(&v27[v50], v20, v51);
    memcpy(v70, v67, 0x48uLL);
    sub_1D5614E28();

    OUTLINED_FUNCTION_42_10();
    v52 = OUTLINED_FUNCTION_176();
    sub_1D4F399C0(v52, v53, v54);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      OUTLINED_FUNCTION_138_3();
      sub_1D4F39AFC(v16, v59, v55);
      MEMORY[0x1DA6EC0D0](1);
      sub_1D50F7428(v70);
    }

    else
    {
      OUTLINED_FUNCTION_135_4();
      sub_1D4F39AFC(v16, v58, v56);
      MEMORY[0x1DA6EC0D0](0);
      sub_1D5383FB0(v70);
    }

    sub_1D4F39B58();
    OUTLINED_FUNCTION_71_5();
    sub_1D4F39B58();
    v32 = sub_1D5616328() ^ v69;
  }

  v34 = v68;
  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v1)
    {
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB900, &qword_1D561F0E0);
      OUTLINED_FUNCTION_97_4(v57);
      v31 = 0;
      goto LABEL_9;
    }

    v31 = *(v28 + 8 * v35);
    ++v33;
    if (v31)
    {
      v33 = v35;
      goto LABEL_8;
    }
  }

  __break(1u);
}

unint64_t sub_1D4F368F4()
{
  result = qword_1EC7EB950;
  if (!qword_1EC7EB950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA768, &qword_1D5623380);
    sub_1D4F39A68(&qword_1EC7EB958, MEMORY[0x1E6975F48], MEMORY[0x1E6975F60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB950);
  }

  return result;
}

unint64_t sub_1D4F369A8()
{
  result = qword_1EC7EB970;
  if (!qword_1EC7EB970)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5C8, &unk_1D561F130);
    sub_1D4F39A68(&qword_1EC7EB978, MEMORY[0x1E6976090], MEMORY[0x1E69760A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB970);
  }

  return result;
}

unint64_t sub_1D4F36A5C()
{
  result = qword_1EC7EB990;
  if (!qword_1EC7EB990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA820, &unk_1D5623370);
    sub_1D4F39A68(&qword_1EC7EB998, MEMORY[0x1E6975A30], MEMORY[0x1E6975A48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB990);
  }

  return result;
}

unint64_t sub_1D4F36B10()
{
  result = qword_1EC7EB9B8;
  if (!qword_1EC7EB9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9A0, &qword_1D561F160);
    sub_1D4F39A68(&qword_1EC7EB9C0, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB9B8);
  }

  return result;
}

unint64_t sub_1D4F36BC4()
{
  result = qword_1EC7EB9D8;
  if (!qword_1EC7EB9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D4F39A68(&qword_1EC7EB9E0, MEMORY[0x1E69756E8], MEMORY[0x1E6975700]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EB9D8);
  }

  return result;
}

unint64_t sub_1D4F36C78()
{
  result = qword_1EC7EBA00;
  if (!qword_1EC7EBA00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9E8, &unk_1D561F190);
    sub_1D4F39A68(&qword_1EC7EBA08, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA00);
  }

  return result;
}

unint64_t sub_1D4F36D2C()
{
  result = qword_1EC7EBA28;
  if (!qword_1EC7EBA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA10, &unk_1D5623490);
    sub_1D4F39A68(&qword_1EC7EBA30, MEMORY[0x1E6975FE8], MEMORY[0x1E6976000]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA28);
  }

  return result;
}

unint64_t sub_1D4F36DE0()
{
  result = qword_1EC7EBA48;
  if (!qword_1EC7EBA48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    sub_1D4F39A68(&qword_1EC7EBA50, MEMORY[0x1E69762A8], MEMORY[0x1E69762C0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA48);
  }

  return result;
}

unint64_t sub_1D4F36E94()
{
  result = qword_1EC7EBA70;
  if (!qword_1EC7EBA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    sub_1D4F39A68(&qword_1EC7EBA78, MEMORY[0x1E6975B30], MEMORY[0x1E6975B48]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA70);
  }

  return result;
}

unint64_t sub_1D4F36F48()
{
  result = qword_1EC7EBA98;
  if (!qword_1EC7EBA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA80, &qword_1D561F1F0);
    sub_1D4F39A68(&qword_1EC7EBAA0, type metadata accessor for CloudTVEpisode, &protocol conformance descriptor for CloudTVEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBA98);
  }

  return result;
}

unint64_t sub_1D4F36FFC()
{
  result = qword_1EC7EBAC0;
  if (!qword_1EC7EBAC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4F39A68(&qword_1EC7EBAC8, type metadata accessor for CloudTVSeason, &protocol conformance descriptor for CloudTVSeason);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBAC0);
  }

  return result;
}

unint64_t sub_1D4F370B0()
{
  result = qword_1EC7EBAE8;
  if (!qword_1EC7EBAE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAD0, &qword_1D561F220);
    sub_1D4F39A68(&qword_1EC7EBAF0, type metadata accessor for CloudTVShow, &protocol conformance descriptor for CloudTVShow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBAE8);
  }

  return result;
}

unint64_t sub_1D4F37164()
{
  result = qword_1EC7EBB10;
  if (!qword_1EC7EBB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAF8, &qword_1D563B230);
    sub_1D4F39A68(&qword_1EC7EBB18, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB10);
  }

  return result;
}

unint64_t sub_1D4F37218()
{
  result = qword_1EC7EBB38;
  if (!qword_1EC7EBB38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB20, &unk_1D561F250);
    sub_1D4F39A68(&qword_1EC7EBB40, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB38);
  }

  return result;
}

unint64_t sub_1D4F372CC()
{
  result = qword_1EC7EBB60;
  if (!qword_1EC7EBB60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D4F39A68(&qword_1EC7EBB68, MEMORY[0x1E6975660], MEMORY[0x1E6975678]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB60);
  }

  return result;
}

unint64_t sub_1D4F37380()
{
  result = qword_1EC7EBB88;
  if (!qword_1EC7EBB88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4F39A68(&qword_1EC7EBB90, MEMORY[0x1E6975808], MEMORY[0x1E6975820]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBB88);
  }

  return result;
}

unint64_t sub_1D4F37434()
{
  result = qword_1EC7EBBB0;
  if (!qword_1EC7EBBB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB98, &unk_1D56234C0);
    sub_1D4F39A68(&qword_1EC7EBBB8, MEMORY[0x1E6974DD8], MEMORY[0x1E6974DF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBBB0);
  }

  return result;
}

unint64_t sub_1D4F374E8()
{
  result = qword_1EC7EBBD8;
  if (!qword_1EC7EBBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4F39A68(&qword_1EC7EBBE0, MEMORY[0x1E6975CF0], MEMORY[0x1E6975D08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBBD8);
  }

  return result;
}

unint64_t sub_1D4F3759C()
{
  result = qword_1EC7EBBF8;
  if (!qword_1EC7EBBF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB20, &unk_1D561F250);
    sub_1D4F39A68(&qword_1EC7EBC00, type metadata accessor for CloudUploadedVideo, &protocol conformance descriptor for CloudUploadedVideo);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBBF8);
  }

  return result;
}

unint64_t sub_1D4F37650()
{
  result = qword_1EC7EBC08;
  if (!qword_1EC7EBC08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAF8, &qword_1D563B230);
    sub_1D4F39A68(&qword_1EC7EBC10, type metadata accessor for CloudUploadedAudio, &protocol conformance descriptor for CloudUploadedAudio);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC08);
  }

  return result;
}

unint64_t sub_1D4F37704()
{
  result = qword_1EC7EBC18;
  if (!qword_1EC7EBC18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAD0, &qword_1D561F220);
    sub_1D4F39A68(&qword_1EC7EBC20, type metadata accessor for CloudTVShow, &protocol conformance descriptor for CloudTVShow);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC18);
  }

  return result;
}

unint64_t sub_1D4F377B8()
{
  result = qword_1EC7EBC28;
  if (!qword_1EC7EBC28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBAA8, &unk_1D56223D0);
    sub_1D4F39A68(&qword_1EC7EBC30, type metadata accessor for CloudTVSeason, &protocol conformance descriptor for CloudTVSeason);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC28);
  }

  return result;
}

unint64_t sub_1D4F3786C()
{
  result = qword_1EC7EBC38;
  if (!qword_1EC7EBC38)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA80, &qword_1D561F1F0);
    sub_1D4F39A68(&qword_1EC7EBC40, type metadata accessor for CloudTVEpisode, &protocol conformance descriptor for CloudTVEpisode);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC38);
  }

  return result;
}

unint64_t sub_1D4F37920()
{
  result = qword_1EC7EBC48;
  if (!qword_1EC7EBC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA58, &unk_1D5634110);
    sub_1D4F39A68(&qword_1EC7EBC50, MEMORY[0x1E6975B30], MEMORY[0x1E6975B40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC48);
  }

  return result;
}

unint64_t sub_1D4F379D4()
{
  result = qword_1EC7EBC58;
  if (!qword_1EC7EBC58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA770, &unk_1D561F1C0);
    sub_1D4F39A68(&qword_1EC7EBC60, MEMORY[0x1E69762A8], MEMORY[0x1E69762B8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC58);
  }

  return result;
}

unint64_t sub_1D4F37A88()
{
  result = qword_1EC7EBC68;
  if (!qword_1EC7EBC68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBA10, &unk_1D5623490);
    sub_1D4F39A68(&qword_1EC7EBC70, MEMORY[0x1E6975FE8], MEMORY[0x1E6975FF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC68);
  }

  return result;
}

unint64_t sub_1D4F37B3C()
{
  result = qword_1EC7EBC78;
  if (!qword_1EC7EBC78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBBC0, &unk_1D561F2B0);
    sub_1D4F39A68(&qword_1EC7EBC80, MEMORY[0x1E6975CF0], MEMORY[0x1E6975D00]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC78);
  }

  return result;
}

unint64_t sub_1D4F37BF0()
{
  result = qword_1EC7EBC88;
  if (!qword_1EC7EBC88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB98, &unk_1D56234C0);
    sub_1D4F39A68(&qword_1EC7EBC90, MEMORY[0x1E6974DD8], MEMORY[0x1E6974DE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC88);
  }

  return result;
}

unint64_t sub_1D4F37CA4()
{
  result = qword_1EC7EBC98;
  if (!qword_1EC7EBC98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9E8, &unk_1D561F190);
    sub_1D4F39A68(&qword_1EC7EBCA0, type metadata accessor for CloudMusicMovie, &protocol conformance descriptor for CloudMusicMovie);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBC98);
  }

  return result;
}

unint64_t sub_1D4F37D58()
{
  result = qword_1EC7EBCA8;
  if (!qword_1EC7EBCA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA828, &qword_1D5623400);
    sub_1D4F39A68(&qword_1EC7EBCB0, MEMORY[0x1E69756E8], MEMORY[0x1E69756F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCA8);
  }

  return result;
}

unint64_t sub_1D4F37E0C()
{
  result = qword_1EC7EBCB8;
  if (!qword_1EC7EBCB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB9A0, &qword_1D561F160);
    sub_1D4F39A68(&qword_1EC7EBCC0, type metadata accessor for CloudEditorialItem, &protocol conformance descriptor for CloudEditorialItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCB8);
  }

  return result;
}

unint64_t sub_1D4F37EC0()
{
  result = qword_1EC7EBCC8;
  if (!qword_1EC7EBCC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA820, &unk_1D5623370);
    sub_1D4F39A68(&qword_1EC7EBCD0, MEMORY[0x1E6975A30], MEMORY[0x1E6975A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCC8);
  }

  return result;
}

unint64_t sub_1D4F37F74()
{
  result = qword_1EC7EBCD8;
  if (!qword_1EC7EBCD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB5C8, &unk_1D561F130);
    sub_1D4F39A68(&qword_1EC7EBCE0, MEMORY[0x1E6976090], MEMORY[0x1E69760A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCD8);
  }

  return result;
}

unint64_t sub_1D4F38028()
{
  result = qword_1EC7EBCE8;
  if (!qword_1EC7EBCE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA768, &qword_1D5623380);
    sub_1D4F39A68(&qword_1EC7EBCF0, MEMORY[0x1E6975F48], MEMORY[0x1E6975F58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCE8);
  }

  return result;
}

unint64_t sub_1D4F380DC()
{
  result = qword_1EC7EBCF8;
  if (!qword_1EC7EBCF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB70, &qword_1D561F280);
    sub_1D4F39A68(&qword_1EC7EBD00, MEMORY[0x1E6975808], MEMORY[0x1E6975818]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBCF8);
  }

  return result;
}

unint64_t sub_1D4F38190()
{
  result = qword_1EC7EBD08;
  if (!qword_1EC7EBD08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBB48, &unk_1D5630FE0);
    sub_1D4F39A68(&qword_1EC7EBD10, MEMORY[0x1E6975660], MEMORY[0x1E6975670]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD08);
  }

  return result;
}

void sub_1D4F38244()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF0, &unk_1D561F350);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBDF0, &unk_1D561F350);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F39270();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBDF8, &qword_1D5633700);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

void sub_1D4F3845C()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v2);
  v66 = _s13PersistedDateVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5_0();
  v59 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  OUTLINED_FUNCTION_22(v5);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v6);
  v65 = &v58 - v7;
  v8 = OUTLINED_FUNCTION_70_0();
  v64 = _s10DescriptorVMa(v8);
  OUTLINED_FUNCTION_4();
  v61 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_2();
  v60 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBED8, &qword_1D561F3C0);
  v17 = OUTLINED_FUNCTION_22(v16);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_59_0();
  OUTLINED_FUNCTION_161_1();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v58 - v19;
  v21 = v0 + 64;
  OUTLINED_FUNCTION_10_12();
  v24 = v23 & v22;
  v26 = (v25 + 63) >> 6;
  v62 = v0;

  v27 = 0;
  v28 = 0;
  v67 = v1;
  v68 = v20;
  v63 = v0 + 64;
  while (1)
  {
    v70 = v27;
    if (!v24)
    {
      break;
    }

    v29 = v28;
LABEL_8:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v29 << 6);
    v32 = v62;
    OUTLINED_FUNCTION_198_0(*(v62 + 48));
    OUTLINED_FUNCTION_132_2();
    v33 = v60;
    sub_1D4F399C0(v34, v60, v35);
    v36 = *(*(v32 + 56) + 8 * v31);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
    v38 = *(v37 + 48);
    OUTLINED_FUNCTION_52_7();
    v39 = v33;
    v40 = v67;
    sub_1D4F39AFC(v39, v67, v41);
    *(v40 + v38) = v36;
    v1 = v40;
    OUTLINED_FUNCTION_64_0();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v37);
    v20 = v68;
LABEL_9:
    v45 = OUTLINED_FUNCTION_93();
    sub_1D4F39A1C(v45, v46, &qword_1EC7EBED8, &qword_1D561F3C0);
    v47 = OUTLINED_FUNCTION_200();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(v47, v48);
    OUTLINED_FUNCTION_10(v20);
    if (v50)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v51 = *(v49 + 48);
    OUTLINED_FUNCTION_52_7();
    sub_1D4F39AFC(v20, v13, v52);
    v69 = *&v20[v51];
    OUTLINED_FUNCTION_92_1();
    sub_1D5614E28();
    v53 = v64;
    sub_1D560C328();
    sub_1D4F39A68(&qword_1EDD5CF60, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](*(v13 + v53[7]));
    MEMORY[0x1DA6EC0D0](*(v13 + v53[8]));
    sub_1D5614CB8();
    v54 = v65;
    sub_1D4F39AB0(v13 + v53[10], v65, &qword_1EC7EB470, &qword_1D561F3D0);
    OUTLINED_FUNCTION_57(v54, 1, v66);
    if (v50)
    {
      sub_1D56162F8();
    }

    else
    {
      sub_1D4F39AFC(v54, v59, _s13PersistedDateVMa);
      sub_1D56162F8();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_157_3();
      v1 = v67;
      sub_1D4F39B58();
    }

    v21 = v63;
    OUTLINED_FUNCTION_131_2();
    sub_1D4F39B58();
    MEMORY[0x1DA6EC0D0](v69);
    v27 = sub_1D5616328() ^ v70;
    v20 = v68;
  }

  while (1)
  {
    v29 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v29 >= v26)
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE0, &qword_1D561F3C8);
      OUTLINED_FUNCTION_146_0(v1, v56, v57, v55);
      v24 = 0;
      goto LABEL_9;
    }

    v24 = *(v21 + 8 * v29);
    ++v28;
    if (v24)
    {
      v28 = v29;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_1D4F38908()
{
  OUTLINED_FUNCTION_47();
  v2 = v1;
  v45 = v3;
  v44 = type metadata accessor for MusicSuggestedSongsEntry(0);
  OUTLINED_FUNCTION_4();
  v42[1] = v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD18, &unk_1D561F2E0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  v46 = v10;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v11);
  v13 = v42 - v12;
  v14 = v2 + 64;
  OUTLINED_FUNCTION_15_0();
  v17 = v16 & v15;
  OUTLINED_FUNCTION_142_1();
  v43 = v2;

  v18 = 0;
  v19 = 0;
  v42[0] = v13;
  while (1)
  {
    v47 = v18;
    if (!v17)
    {
      break;
    }

    v20 = v19;
LABEL_9:
    v22 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v23 = v22 | (v20 << 6);
    v24 = v43;
    OUTLINED_FUNCTION_125_1();
    sub_1D4F399C0(v25, v7, v26);
    v27 = *(*(v24 + 56) + 8 * v23);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0) + 48);
    OUTLINED_FUNCTION_47_9();
    v21 = v46;
    sub_1D4F39AFC(v7, v46, v29);
    *(v21 + v28) = v27;
    v30 = OUTLINED_FUNCTION_34_10();
    OUTLINED_FUNCTION_151_2(v30, v31, v32, v33);
    v13 = v42[0];
LABEL_10:
    sub_1D4F39A1C(v21, v13, &qword_1EC7EBD18, &unk_1D561F2E0);
    v34 = OUTLINED_FUNCTION_90_2();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(v34, v35);
    OUTLINED_FUNCTION_10(v13);
    if (v37)
    {

      MEMORY[0x1DA6EC0D0](v47);
      OUTLINED_FUNCTION_46();
      return;
    }

    v38 = *(v36 + 48);
    OUTLINED_FUNCTION_47_9();
    sub_1D4F39AFC(v13, v7, v39);
    v40 = *&v13[v38];
    memcpy(v48, v45, sizeof(v48));
    sub_1D5613838();
    sub_1D4F39A68(&qword_1EC7EB458, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BF8]);
    sub_1D5614CB8();
    sub_1D5614E28();
    OUTLINED_FUNCTION_124_1();
    sub_1D4F39B58();
    sub_1D4FB7BDC(v48, v40);

    v18 = sub_1D5616328() ^ v47;
  }

  v21 = v46;
  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v0)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD20, &unk_1D5660BA0);
      OUTLINED_FUNCTION_64_7(v41);
      v17 = 0;
      goto LABEL_10;
    }

    v17 = *(v14 + 8 * v20);
    ++v19;
    if (v17)
    {
      v19 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
}

unint64_t sub_1D4F38C38()
{
  result = qword_1EC7EBD50;
  if (!qword_1EC7EBD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D4F39A68(&qword_1EC7EBD58, type metadata accessor for CloudGenericMusicItem, &protocol conformance descriptor for CloudGenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD50);
  }

  return result;
}

void sub_1D4F38CEC()
{
  OUTLINED_FUNCTION_47();
  OUTLINED_FUNCTION_104_2(v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB3E8, &qword_1D561E208);
  OUTLINED_FUNCTION_26_6(v4);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_40_12(v6, v30);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD60, &unk_1D561F310);
  v8 = OUTLINED_FUNCTION_22(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_17(v9, v31);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_2_8();
  OUTLINED_FUNCTION_21_13();
  OUTLINED_FUNCTION_103_1();
  OUTLINED_FUNCTION_60_5();
  while (v2)
  {
    v11 = OUTLINED_FUNCTION_1_28();
    v12(v11);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
    v14 = OUTLINED_FUNCTION_5_13(v13);
    v15(v14);
    v16 = OUTLINED_FUNCTION_37_12();
    OUTLINED_FUNCTION_151_2(v16, v17, v18, v19);
LABEL_7:
    v20 = OUTLINED_FUNCTION_90_2();
    sub_1D4F39A1C(v20, v21, &qword_1EC7EBD60, &unk_1D561F310);
    v22 = OUTLINED_FUNCTION_156_1();
    OUTLINED_FUNCTION_20_23(v22);
    if (v23)
    {

      OUTLINED_FUNCTION_155_2();
      OUTLINED_FUNCTION_46();
      return;
    }

    v24 = OUTLINED_FUNCTION_11_14();
    v25(v24);
    OUTLINED_FUNCTION_92_1();
    OUTLINED_FUNCTION_93_3();

    v26 = sub_1D4F38F04();
    OUTLINED_FUNCTION_65_9(v26);
    v27 = OUTLINED_FUNCTION_36_7();
    v28(v27);
    sub_1D5616328();
    OUTLINED_FUNCTION_59_6();
  }

  while (!__OFADD__(v1, 1))
  {
    if (v1 + 1 >= v0)
    {
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBD68, &qword_1D56492F0);
      OUTLINED_FUNCTION_23_14(v29);
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_106_2();
  }

  __break(1u);
}

unint64_t sub_1D4F38F04()
{
  result = qword_1EC7EBD70;
  if (!qword_1EC7EBD70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    sub_1D4F38F88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD70);
  }

  return result;
}

unint64_t sub_1D4F38F88()
{
  result = qword_1EC7EBD78;
  if (!qword_1EC7EBD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D4F3900C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD78);
  }

  return result;
}

unint64_t sub_1D4F3900C()
{
  result = qword_1EC7EBD88;
  if (!qword_1EC7EBD88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD88);
  }

  return result;
}

unint64_t sub_1D4F39060()
{
  result = qword_1EC7EBD90;
  if (!qword_1EC7EBD90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB3E8, &qword_1D561E208);
    sub_1D4F390E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD90);
  }

  return result;
}

unint64_t sub_1D4F390E4()
{
  result = qword_1EC7EBD98;
  if (!qword_1EC7EBD98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBD80, &qword_1D561F320);
    sub_1D4F39168();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBD98);
  }

  return result;
}

unint64_t sub_1D4F39168()
{
  result = qword_1EC7EBDA0;
  if (!qword_1EC7EBDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBDA0);
  }

  return result;
}

unint64_t sub_1D4F391BC()
{
  result = qword_1EC7EBDA8;
  if (!qword_1EC7EBDA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA758, &unk_1D561CA20);
    sub_1D4F39A68(&qword_1EC7EBDB0, type metadata accessor for CloudGenericMusicItem, &protocol conformance descriptor for CloudGenericMusicItem);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBDA8);
  }

  return result;
}

unint64_t sub_1D4F39270()
{
  result = qword_1EC7EBE00;
  if (!qword_1EC7EBE00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4F39A68(&qword_1EC7EBE08, type metadata accessor for CloudEditorialCard, &unk_1D5633628);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE00);
  }

  return result;
}

unint64_t sub_1D4F39324()
{
  result = qword_1EC7EBE10;
  if (!qword_1EC7EBE10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4F39A68(&qword_1EC7EBE18, type metadata accessor for CloudVideoCredit, &unk_1D564A3A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE10);
  }

  return result;
}

unint64_t sub_1D4F393D8()
{
  result = qword_1EC7EBE20;
  if (!qword_1EC7EBE20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4F39A68(&qword_1EC7EBE28, type metadata accessor for CloudVideoCredit, &unk_1D564A3E4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE20);
  }

  return result;
}

unint64_t sub_1D4F3948C()
{
  result = qword_1EC7EBE30;
  if (!qword_1EC7EBE30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4F39A68(&qword_1EC7EBE38, type metadata accessor for CloudEditorialCard, &unk_1D5633668);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE30);
  }

  return result;
}

unint64_t sub_1D4F39540()
{
  result = qword_1EC7EBE58;
  if (!qword_1EC7EBE58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F39A68(&qword_1EC7EBE60, MEMORY[0x1E6976138], MEMORY[0x1E6976148]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE58);
  }

  return result;
}

unint64_t sub_1D4F395F4()
{
  result = qword_1EC7EBE78;
  if (!qword_1EC7EBE78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F39A68(&qword_1EC7EBDC8, MEMORY[0x1E6975968], MEMORY[0x1E6975978]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE78);
  }

  return result;
}

unint64_t sub_1D4F396A8()
{
  result = qword_1EC7EBE98;
  if (!qword_1EC7EBE98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE80, &qword_1D561F3A0);
    sub_1D4F3972C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBE98);
  }

  return result;
}

unint64_t sub_1D4F3972C()
{
  result = qword_1EC7EBEA0;
  if (!qword_1EC7EBEA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEA0);
  }

  return result;
}

unint64_t sub_1D4F39780()
{
  result = qword_1EC7EBEA8;
  if (!qword_1EC7EBEA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE80, &qword_1D561F3A0);
    sub_1D4F39804();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEA8);
  }

  return result;
}

unint64_t sub_1D4F39804()
{
  result = qword_1EC7EBEB0;
  if (!qword_1EC7EBEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEB0);
  }

  return result;
}

unint64_t sub_1D4F39858()
{
  result = qword_1EC7EBEB8;
  if (!qword_1EC7EBEB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EA760, &unk_1D56222B0);
    sub_1D4F39A68(&qword_1EC7EBDD0, MEMORY[0x1E6975968], MEMORY[0x1E6975980]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEB8);
  }

  return result;
}

unint64_t sub_1D4F3990C()
{
  result = qword_1EC7EBEC0;
  if (!qword_1EC7EBEC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBE40, &qword_1D561F370);
    sub_1D4F39A68(&qword_1EC7EBEC8, MEMORY[0x1E6976138], MEMORY[0x1E6976150]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEC0);
  }

  return result;
}

uint64_t sub_1D4F399C0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D4F39A1C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v4;
}

uint64_t sub_1D4F39A68(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F39AB0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_14_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_14();
  v5 = OUTLINED_FUNCTION_71();
  v6(v5);
  return v4;
}

uint64_t sub_1D4F39AFC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  v4 = OUTLINED_FUNCTION_71();
  v5(v4);
  return a2;
}

uint64_t sub_1D4F39B58()
{
  v1 = OUTLINED_FUNCTION_64_1();
  v2(v1);
  OUTLINED_FUNCTION_14();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t OUTLINED_FUNCTION_65_9(uint64_t a1)
{

  return sub_1D5614CB8();
}

uint64_t OUTLINED_FUNCTION_66_5(uint64_t a1)
{

  return sub_1D5614D18();
}

uint64_t OUTLINED_FUNCTION_76_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __swift_storeEnumTagSinglePayload(a1, 1, 1, a4);
  *(v4 - 88) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_91_2()
{
  *(v1 - 192) = v0;
}

uint64_t OUTLINED_FUNCTION_93_3()
{

  return sub_1D5614E28();
}

uint64_t OUTLINED_FUNCTION_94_2()
{
}

uint64_t OUTLINED_FUNCTION_97_4(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_121_1()
{
}

uint64_t OUTLINED_FUNCTION_140_2(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);
}

uint64_t OUTLINED_FUNCTION_141_1()
{

  return sub_1D4F39B58();
}

void OUTLINED_FUNCTION_143_1()
{
  *(v1 - 312) = v0 + 16;
  *(v1 - 296) = v0;
  *(v1 - 272) = v0 + 8;
}

uint64_t OUTLINED_FUNCTION_147_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

uint64_t OUTLINED_FUNCTION_151_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_storeEnumTagSinglePayload(a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_152_2()
{
}

uint64_t OUTLINED_FUNCTION_153_2()
{

  return sub_1D5614E28();
}

void *OUTLINED_FUNCTION_154_2()
{
  v2 = *(v0 - 184);

  return memcpy((v0 - 152), v2, 0x48uLL);
}

void OUTLINED_FUNCTION_155_2()
{

  JUMPOUT(0x1DA6EC0D0);
}

uint64_t OUTLINED_FUNCTION_156_1()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
}

char *OUTLINED_FUNCTION_160_1@<X0>(uint64_t a1@<X8>)
{
  *v3 = v1;
  v3[1] = v2;
  return v3 + a1;
}

uint64_t OUTLINED_FUNCTION_170_0(uint64_t a1, uint64_t a2)
{

  return sub_1D5616098();
}

void *OUTLINED_FUNCTION_187_0()
{

  return memcpy((v0 - 232), (v0 - 160), 0x48uLL);
}

uint64_t OUTLINED_FUNCTION_188_1()
{
}

uint64_t OUTLINED_FUNCTION_189_1@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1D4F39AFC(v3, v2 + a2, a1);
}

uint64_t OUTLINED_FUNCTION_190_0@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1D4F39AFC(v3, v2 + a2, a1);
}

void OUTLINED_FUNCTION_191_0()
{

  JUMPOUT(0x1DA6EC0D0);
}

uint64_t OUTLINED_FUNCTION_192_0()
{

  return sub_1D4F39B58();
}

uint64_t OUTLINED_FUNCTION_193_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{

  return sub_1D4F399C0(a1, v3, a3);
}

uint64_t OUTLINED_FUNCTION_194_0@<X0>(void (*a1)(void)@<X2>, uint64_t a2@<X8>)
{

  return sub_1D4F39AFC(v2 + a2, v3, a1);
}

uint64_t OUTLINED_FUNCTION_195_0()
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
}

uint64_t OUTLINED_FUNCTION_203_1()
{

  return sub_1D5614D18();
}

void *sub_1D4F3A44C(uint64_t a1)
{
  v2 = sub_1D560C0A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_13();
  v56 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v49 = v48 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE8, &qword_1D561F3D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_13();
  v52 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v54 = v48 - v10;
  sub_1D4F3A930();
  v11 = sub_1D5614BD8();
  v12 = *(a1 + 64);
  v53 = a1 + 64;
  v13 = 1 << *(a1 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v12;
  v48[2] = v3 + 16;
  v57 = v11;
  v58 = (v3 + 32);
  v55 = v3;
  v48[0] = (v13 + 63) >> 6;
  v48[1] = v3 + 40;
  v50 = a1;

  v16 = 0;
  v51 = v2;
  while (v15)
  {
    v17 = v16;
LABEL_11:
    v19 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v20 = v19 | (v17 << 6);
    v21 = v49;
    v22 = (*(v50 + 48) + 16 * v20);
    v24 = *v22;
    v23 = v22[1];
    v25 = v55;
    (*(v55 + 16))(v49, *(v50 + 56) + *(v55 + 72) * v20, v2);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEF8, &qword_1D561F3E0);
    v27 = *(v26 + 48);
    v28 = v52;
    *v52 = v24;
    v28[1] = v23;
    v29 = v28;
    (*(v25 + 32))(v28 + v27, v21, v2);
    __swift_storeEnumTagSinglePayload(v29, 0, 1, v26);

    v18 = v54;
LABEL_12:
    sub_1D4F3A984(v29, v18);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEF8, &qword_1D561F3E0);
    if (__swift_getEnumTagSinglePayload(v18, 1, v30) == 1)
    {

      return v57;
    }

    v32 = *v18;
    v31 = *(v18 + 1);
    v33 = *v58;
    (*v58)(v56, &v18[*(v30 + 48)], v2);
    v34 = v57;
    swift_isUniquelyReferenced_nonNull_native();
    v59 = v34;
    v35 = sub_1D4F15A78();
    if (__OFADD__(v34[2], (v36 & 1) == 0))
    {
      goto LABEL_24;
    }

    v37 = v35;
    v38 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF00, &qword_1D561F3E8);
    if (sub_1D5615D78())
    {
      v39 = sub_1D4F15A78();
      if ((v38 & 1) != (v40 & 1))
      {
        goto LABEL_26;
      }

      v37 = v39;
      if (v38)
      {
        goto LABEL_20;
      }

LABEL_17:
      v41 = v59;
      v59[(v37 >> 6) + 8] |= 1 << v37;
      v42 = (v41[6] + 16 * v37);
      *v42 = v32;
      v42[1] = v31;
      v2 = v51;
      v33(v41[7] + *(v55 + 72) * v37, v56, v51);
      v43 = v41[2];
      v44 = __OFADD__(v43, 1);
      v45 = v43 + 1;
      if (v44)
      {
        goto LABEL_25;
      }

      v57 = v41;
      v41[2] = v45;
    }

    else
    {
      if ((v38 & 1) == 0)
      {
        goto LABEL_17;
      }

LABEL_20:

      v57 = v59;
      v2 = v51;
      (*(v55 + 40))(v59[7] + *(v55 + 72) * v37, v56, v51);
    }
  }

  v18 = v54;
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v48[0])
    {
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEF8, &qword_1D561F3E0);
      v29 = v52;
      __swift_storeEnumTagSinglePayload(v52, 1, 1, v46);
      v15 = 0;
      goto LABEL_12;
    }

    v15 = *(v53 + 8 * v17);
    ++v16;
    if (v15)
    {
      v16 = v17;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

unint64_t sub_1D4F3A930()
{
  result = qword_1EC7EBEF0;
  if (!qword_1EC7EBEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EBEF0);
  }

  return result;
}

uint64_t sub_1D4F3A984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBEE8, &qword_1D561F3D8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4F3A9F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D5614D68();
  v4 = v3;
  v5 = sub_1D5614D68();
  if (v2 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v2, v6, v5);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AA6C(unsigned __int8 a1)
{
  v2 = "sdVideoWithPlusAudio";
  switch(a1)
  {
    case 1u:
      v2 = "laylistEntryReactionDate";
      break;
    case 2u:
      v2 = "laylistEntryReactionText";
      break;
    case 3u:
      v2 = "ReactionPlaylistEntry";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AB74(unsigned __int8 a1)
{
  v2 = "AL";
  switch(a1)
  {
    case 1u:
      v2 = "laylistAuthorIsPendingApproval";
      break;
    case 2u:
      v2 = "laylistAuthorRole";
      break;
    case 3u:
      v2 = "hipPlaylistAuthorPlaylist";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AC84(char a1)
{
  v2 = "previewed";
  switch(a1)
  {
    case 1:
      v2 = "laylistCollaborationSharingMode";
      break;
    case 2:
      v2 = "laylistCollaboratorStatus";
      break;
    case 3:
      v2 = "laylistIsCollaborative";
      break;
    case 4:
      v2 = "tionInvitationURL";
      break;
    case 5:
      v2 = "tionInvitationURLExpirationDate";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3ADEC(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000074;
  }

  else
  {
    v1 = 0xE700000000000000;
  }

  OUTLINED_FUNCTION_22_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_21(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D4F3AE80(unsigned __int8 a1, uint64_t a2)
{
  v2 = 6778986;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 6778480;
    }

    else
    {
      v4 = 1667851624;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 6778986;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6778480;
    }

    else
    {
      v2 = 1667851624;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AF6C(char a1)
{
  if (a1)
  {
    v2 = "clude";
  }

  else
  {
    v2 = "ocialPersonIsVerified";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_22_12();
  OUTLINED_FUNCTION_31_13();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3AFFC(unsigned __int8 a1)
{
  v2 = "MPModelPropertyPersonName";
  switch(a1)
  {
    case 1u:
      v2 = "MPModelPropertyTVShowArtwork";
      break;
    case 2u:
      v2 = "VShowEditorialArtwork";
      break;
    case 3u:
      v2 = "VShowEditorNotes";
      break;
    case 4u:
      v2 = "VShowEpisodeCount";
      break;
    case 5u:
      v2 = "VShowShortEditorNotes";
      break;
    case 6u:
      v2 = "MPModelPropertyTVShowShortTitle";
      break;
    case 7u:
      v2 = "MPModelPropertyTVShowTagline";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B184(char a1)
{
  if (a1)
  {
    v1 = 0xEE0073656C69666FLL;
  }

  else
  {
    v1 = 0xEF73656972746E45;
  }

  OUTLINED_FUNCTION_22_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_21(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D4F3B22C()
{
  sub_1D5610088();
  OUTLINED_FUNCTION_13_18();
  sub_1D4F408C0(v0, v1, MEMORY[0x1E6975BE8]);
  OUTLINED_FUNCTION_46_1();
  sub_1D56150C8();
  OUTLINED_FUNCTION_46_1();
  sub_1D56150C8();
  if (v8 == v6 && v9 == v7)
  {
    v4 = 1;
  }

  else
  {
    v4 = OUTLINED_FUNCTION_9_16(v8, v2, v6);
  }

  return v4 & 1;
}

uint64_t sub_1D4F3B2E8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x6573736572706D69;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 0x6577656976657270;
    }

    else
    {
      v5 = 0x64657463656C6573;
    }

    if (v4 == 1)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE800000000000000;
    }
  }

  else
  {
    v5 = 0x6573736572706D69;
    v6 = 0xE900000000000064;
  }

  if (a2)
  {
    v3 = a2 == 1 ? 0x6577656976657270 : 0x64657463656C6573;
    if (a2 != 1)
    {
      v2 = 0xE800000000000000;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_16(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B404(char a1, uint64_t a2)
{
  v3 = 0xE200000000000000;
  v4 = 17459;
  switch(a1)
  {
    case 1:
      v4 = 19252;
      break;
    case 2:
      v3 = 0xE300000000000000;
      v4 = 5391432;
      break;
    case 3:
      v4 = 0x6D744179626C6F64;
      v3 = 0xEA0000000000736FLL;
      break;
    case 4:
      v4 = 0x73695679626C6F64;
      v3 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  v5 = 0xE200000000000000;
  v6 = 17459;
  switch(a2)
  {
    case 1:
      v6 = 19252;
      break;
    case 2:
      v5 = 0xE300000000000000;
      v6 = 5391432;
      break;
    case 3:
      v6 = 0x6D744179626C6F64;
      v5 = 0xEA0000000000736FLL;
      break;
    case 4:
      v6 = 0x73695679626C6F64;
      v5 = 0xEB000000006E6F69;
      break;
    default:
      break;
  }

  if (v4 == v6 && v3 == v5)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, a2, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B578(char a1, char a2)
{
  if (a1)
  {
    v2 = 0x726F7461727563;
  }

  else
  {
    v2 = 0x73747369747261;
  }

  if (a2)
  {
    v3 = 0x726F7461727563;
  }

  else
  {
    v3 = 0x73747369747261;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_1D5616168();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

uint64_t sub_1D4F3B5F8(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED00006F69647541;
  v3 = 0x647261646E617473;
  v4 = a1;
  v5 = 0x647261646E617473;
  v6 = 0xED00006F69647541;
  switch(v4)
  {
    case 1:
      v5 = 0x6964754173756C70;
      v6 = 0xE90000000000006FLL;
      break;
    case 2:
      v5 = 0x5664487030383031;
      v6 = 0xEC0000006F656469;
      break;
    case 3:
      v7 = 0x644870303237;
      goto LABEL_6;
    case 4:
      v7 = 0x703038346473;
LABEL_6:
      v5 = v7 & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
      v6 = 0xEB000000006F6564;
      break;
    case 5:
      v6 = 0xE700000000000000;
      v5 = 0x6F656469566473;
      break;
    case 6:
      v5 = 0xD000000000000014;
      v6 = 0x80000001D567D790;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x6964754173756C70;
      v2 = 0xE90000000000006FLL;
      break;
    case 2:
      v3 = 0x5664487030383031;
      v2 = 0xEC0000006F656469;
      break;
    case 3:
      v8 = 0x644870303237;
      goto LABEL_14;
    case 4:
      v8 = 0x703038346473;
LABEL_14:
      v3 = v8 & 0xFFFFFFFFFFFFLL | 0x6956000000000000;
      v2 = 0xEB000000006F6564;
      break;
    case 5:
      v2 = 0xE700000000000000;
      v3 = 0x6F656469566473;
      break;
    case 6:
      v3 = 0xD000000000000014;
      v2 = 0x80000001D567D790;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_16(v5, a2, v3);
  }

  return v10 & 1;
}

uint64_t sub_1D4F3B7EC(char a1)
{
  v2 = "🟦    Saving Playlist";
  switch(a1)
  {
    case 1:
      v2 = "laybackPositionBookmarkTime";
      break;
    case 2:
      v2 = "laybackPositionHasBeenPlayed";
      break;
    case 3:
      v2 = "houldRememberBookmarkTime";
      break;
    case 4:
      v2 = "laybackPositionUserPlayCount";
      break;
    case 5:
      v2 = "laybackPositionStartTime";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3B948(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xE900000000000073;
  v3 = 0x6565776F6C6C6F66;
  v4 = a1;
  v5 = 0x6565776F6C6C6F66;
  v6 = 0xE900000000000073;
  switch(v4)
  {
    case 1:
      v5 = 0x7265776F6C6C6F66;
      break;
    case 2:
      v6 = 0x80000001D567D570;
      v5 = 0xD000000000000011;
      break;
    case 3:
      v6 = 0x80000001D567D590;
      v5 = 0xD000000000000013;
      break;
    case 4:
      v5 = 0xD000000000000010;
      v6 = 0x80000001D567D5B0;
      break;
    case 5:
      v5 = 0x702D6C6169636F73;
      v6 = 0xEE00656C69666F72;
      break;
    case 6:
      v5 = 0x726E65672D706F74;
      v6 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  switch(a2)
  {
    case 1:
      v3 = 0x7265776F6C6C6F66;
      break;
    case 2:
      v2 = 0x80000001D567D570;
      v3 = 0xD000000000000011;
      break;
    case 3:
      v2 = 0x80000001D567D590;
      v3 = 0xD000000000000013;
      break;
    case 4:
      v3 = 0xD000000000000010;
      v2 = 0x80000001D567D5B0;
      break;
    case 5:
      v3 = 0x702D6C6169636F73;
      v2 = 0xEE00656C69666F72;
      break;
    case 6:
      v3 = 0x726E65672D706F74;
      v2 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_16(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3BB48(char a1, uint64_t a2)
{
  v2 = 0x7365726E6567;
  if (a1)
  {
    OUTLINED_FUNCTION_47_10();
    if (v3)
    {
      v5 = 0x736E6F73616573;
    }

    else
    {
      v5 = 2003789939;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
    v5 = 0x7365726E6567;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_47_10();
    if (v7)
    {
      v2 = 0x736E6F73616573;
    }

    else
    {
      v2 = 2003789939;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_21(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1D4F3BC1C()
{
  OUTLINED_FUNCTION_44_8();
  OUTLINED_FUNCTION_18_14();
  v4 = v3 & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
  v5 = v1;
  if (v1)
  {
    if (v1 == 1)
    {
      v6 = 0x70652D726568746FLL;
    }

    else
    {
      v6 = 0x7473696C79616C70;
    }

    if (v5 == 1)
    {
      v7 = 0xEE007365646F7369;
    }

    else
    {
      v7 = 0xE900000000000073;
    }
  }

  else
  {
    v6 = v4;
    v7 = v0;
  }

  if (v2)
  {
    if (v2 == 1)
    {
      v4 = 0x70652D726568746FLL;
    }

    else
    {
      v4 = 0x7473696C79616C70;
    }

    if (v2 == 1)
    {
      v0 = 0xEE007365646F7369;
    }

    else
    {
      v0 = 0xE900000000000073;
    }
  }

  if (v6 == v4 && v7 == v0)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_9_16(v6, v2, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D4F3BD20(char a1)
{
  v2 = "supports_smart_transitions";
  switch(a1)
  {
    case 1:
      v2 = "ocialPersonArtwork";
      break;
    case 2:
      v2 = "ocialPersonHandle";
      break;
    case 3:
      v2 = "ghtweightProfile";
      break;
    case 4:
      v2 = "ocialPersonIsPrivate";
      break;
    case 5:
      v2 = "ocialPersonIsVerified";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3BE84(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x7365646F73697065;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x7365726E6567;
    }

    else
    {
      v4 = 2003789939;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE800000000000000;
    v4 = 0x7365646F73697065;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x7365726E6567;
    }

    else
    {
      v2 = 2003789939;
    }

    if (a2 == 1)
    {
      v6 = 0xE600000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3BF5C(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "reditsArtistArtwork";
    }

    else
    {
      v2 = "reditsArtistName";
    }
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C02C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x4554454C4544;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x4554454C4544;
  switch(v4)
  {
    case 1:
      v3 = 0xE800000000000000;
      v5 = 0x455441434E555254;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x54534953524550;
      break;
    case 3:
      v5 = 0x59524F4D454DLL;
      break;
    case 4:
      v3 = 0xE300000000000000;
      v5 = 4997463;
      break;
    case 5:
      v3 = 0xE300000000000000;
      v5 = 4605519;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE800000000000000;
      v2 = 0x455441434E555254;
      break;
    case 2:
      v6 = 0xE700000000000000;
      v2 = 0x54534953524550;
      break;
    case 3:
      v2 = 0x59524F4D454DLL;
      break;
    case 4:
      v6 = 0xE300000000000000;
      v2 = 4997463;
      break;
    case 5:
      v6 = 0xE300000000000000;
      v2 = 4605519;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C198(char a1)
{
  if (a1)
  {
    v1 = 0xE900000000000045;
  }

  else
  {
    v1 = 0xE600000000000000;
  }

  OUTLINED_FUNCTION_22_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_21(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D4F3C228()
{
  OUTLINED_FUNCTION_22_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D5616168();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D4F3C2A4(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEA00000000007265;
  }

  OUTLINED_FUNCTION_22_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_21(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D4F3C338(unsigned __int8 a1, uint64_t a2)
{
  v2 = 4804673;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 6775106;
    }

    else
    {
      v4 = 0x6F44746E65746E49;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xEE006E6F6974616ELL;
    }
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 4804673;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 6775106;
    }

    else
    {
      v2 = 0x6F44746E65746E49;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xEE006E6F6974616ELL;
    }
  }

  else
  {
    v6 = 0xE300000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C42C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6564756C637865;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x676948636972796CLL;
    }

    else
    {
      v4 = 0x73636972796CLL;
    }

    if (v3 == 1)
    {
      v5 = 0xEF73746867696C68;
    }

    else
    {
      v5 = 0xE600000000000000;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    v4 = 0x6564756C637865;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x676948636972796CLL;
    }

    else
    {
      v2 = 0x73636972796CLL;
    }

    if (a2 == 1)
    {
      v6 = 0xEF73746867696C68;
    }

    else
    {
      v6 = 0xE600000000000000;
    }
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C52C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 1836213620;
  v3 = 0xE400000000000000;
  v4 = a1;
  v5 = 1836213620;
  switch(v4)
  {
    case 1:
      v5 = 1954047342;
      break;
    case 2:
      v5 = 0x76697372656D6D69;
      v3 = 0xE900000000000065;
      break;
    case 3:
      v5 = 0x6F2D73636972796CLL;
      v3 = 0xED00006E6F697470;
      break;
    case 4:
      v5 = 0xD000000000000013;
      v3 = 0x80000001D567E0F0;
      break;
    case 5:
      v5 = 0x7079742D6D657469;
      v3 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  v6 = 0xE400000000000000;
  switch(a2)
  {
    case 1:
      v2 = 1954047342;
      break;
    case 2:
      v2 = 0x76697372656D6D69;
      v6 = 0xE900000000000065;
      break;
    case 3:
      v2 = 0x6F2D73636972796CLL;
      v6 = 0xED00006E6F697470;
      break;
    case 4:
      v2 = 0xD000000000000013;
      v6 = 0x80000001D567E0F0;
      break;
    case 5:
      v2 = 0x7079742D6D657469;
      v6 = 0xEA00000000007365;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v5, a2, v2);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C6F0(char a1)
{
  v2 = "viewers-also-bought";
  switch(a1)
  {
    case 1:
      v2 = "ibraryPinDefaultAction";
      break;
    case 2:
      v2 = "ibraryPinPosition";
      break;
    case 3:
      v2 = "ibraryPinEntityType";
      break;
    case 4:
      v2 = "ibraryPinPositionUUID";
      break;
    case 5:
      v2 = "hipLibraryPinAlbum";
      break;
    case 6:
      v2 = "hipLibraryPinArtist";
      break;
    case 7:
      v2 = "hipLibraryPinPlaylist";
      break;
    default:
      break;
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_43_12();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3C87C(char a1)
{
  if (a1)
  {
    v1 = 0xE700000000000000;
  }

  else
  {
    v1 = 0xEB00000000636973;
  }

  OUTLINED_FUNCTION_22_12();
  if (v8)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  v8 = v2 == v4 && v1 == v7;
  if (v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = OUTLINED_FUNCTION_7_21(v2, v3, v4);
  }

  return v9 & 1;
}

uint64_t sub_1D4F3C92C(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xEB00000000737265;
  v3 = 0x696669746E656469;
  v4 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v5 = 1684957547;
    }

    else
    {
      v5 = 0x6564644165746164;
    }

    if (v4 == 1)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xE900000000000064;
    }
  }

  else
  {
    v5 = 0x696669746E656469;
    v6 = 0xEB00000000737265;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 1684957547;
    }

    else
    {
      v3 = 0x6564644165746164;
    }

    if (a2 == 1)
    {
      v2 = 0xE400000000000000;
    }

    else
    {
      v2 = 0xE900000000000064;
    }
  }

  if (v5 == v3 && v6 == v2)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_9_16(v5, a2, v3);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3CA18(uint64_t a1, uint64_t a2)
{
  v2 = 1835365481;
  if (a1)
  {
    OUTLINED_FUNCTION_47_10();
    if (v3)
    {
      v5 = 0x7972617262696CLL;
    }

    else
    {
      v5 = 1684366707;
    }

    if (v3)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE400000000000000;
    v5 = 1835365481;
  }

  if (a2)
  {
    OUTLINED_FUNCTION_47_10();
    if (v7)
    {
      v2 = 0x7972617262696CLL;
    }

    else
    {
      v2 = 1684366707;
    }

    if (v7)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0xE400000000000000;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  if (v5 == v2 && v6 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_21(v5, a2, v2);
  }

  return v11 & 1;
}

uint64_t sub_1D4F3CAEC()
{
  OUTLINED_FUNCTION_22_12();
  if (v0 == v1)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D5616168();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D4F3CB74(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0x6D75626C61;
  v3 = 0xE500000000000000;
  v4 = a1;
  v5 = 0x6D75626C61;
  switch(v4)
  {
    case 1:
      v3 = 0xE600000000000000;
      v5 = 0x747369747261;
      break;
    case 2:
      v3 = 0xE700000000000000;
      v5 = 0x726F7461727563;
      break;
    case 3:
      v5 = OUTLINED_FUNCTION_33_15() & 0xFFFFFFFFFFFFLL | 0x6F6D000000000000;
      v7 = 6646134;
      goto LABEL_9;
    case 4:
      v5 = OUTLINED_FUNCTION_33_15() & 0xFFFFFFFFFFFFLL | 0x6976000000000000;
      v7 = 7300452;
LABEL_9:
      v3 = v7 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v5 = 0x6C616E6F73726570;
      v3 = 0xEC00000078696D2DLL;
      break;
    case 6:
      v3 = 0xE800000000000000;
      v5 = OUTLINED_FUNCTION_19();
      break;
    case 7:
      v3 = 0xE700000000000000;
      v6 = 0x6C69666F7270;
      goto LABEL_11;
    case 8:
      v5 = 0x6C6562616CLL;
      break;
    case 9:
      v3 = 0xE400000000000000;
      v5 = 1735290739;
      break;
    case 10:
      v3 = 0xE700000000000000;
      v5 = 0x6E6F6974617473;
      break;
    case 11:
      v3 = 0xE700000000000000;
      v6 = 0x646F73697065;
LABEL_11:
      v5 = v6 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 12:
      v3 = 0xE400000000000000;
      v5 = 2003789939;
      break;
    case 13:
      v3 = 0xE400000000000000;
      v5 = 1953722224;
      break;
    default:
      break;
  }

  v8 = 0xE500000000000000;
  switch(a2)
  {
    case 1:
      v8 = 0xE600000000000000;
      v2 = 0x747369747261;
      break;
    case 2:
      v8 = 0xE700000000000000;
      v2 = 0x726F7461727563;
      break;
    case 3:
      OUTLINED_FUNCTION_18_14();
      v2 = v12 & 0xFFFFFFFFFFFFLL | 0x6F6D000000000000;
      v11 = 6646134;
      goto LABEL_25;
    case 4:
      OUTLINED_FUNCTION_18_14();
      v2 = v10 & 0xFFFFFFFFFFFFLL | 0x6976000000000000;
      v11 = 7300452;
LABEL_25:
      v8 = v11 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
      break;
    case 5:
      v2 = 0x6C616E6F73726570;
      v8 = 0xEC00000078696D2DLL;
      break;
    case 6:
      v8 = 0xE800000000000000;
      OUTLINED_FUNCTION_17_9();
      break;
    case 7:
      v8 = 0xE700000000000000;
      v9 = 0x6C69666F7270;
      goto LABEL_27;
    case 8:
      v2 = 0x6C6562616CLL;
      break;
    case 9:
      v8 = 0xE400000000000000;
      v2 = 1735290739;
      break;
    case 10:
      v8 = 0xE700000000000000;
      v2 = 0x6E6F6974617473;
      break;
    case 11:
      v8 = 0xE700000000000000;
      v9 = 0x646F73697065;
LABEL_27:
      v2 = v9 & 0xFFFFFFFFFFFFLL | 0x65000000000000;
      break;
    case 12:
      v8 = 0xE400000000000000;
      v2 = 2003789939;
      break;
    case 13:
      v8 = 0xE400000000000000;
      v2 = 1953722224;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v8)
  {
    v14 = 1;
  }

  else
  {
    v14 = OUTLINED_FUNCTION_7_21(v5, a2, v2);
  }

  return v14 & 1;
}

uint64_t sub_1D4F3CE48(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a3();
  v6 = v5;
  v7 = a3();
  if (v4 == v7 && v6 == v8)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_7_21(v4, v8, v7);
  }

  return v10 & 1;
}

uint64_t sub_1D4F3CEF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = a3(a1);
  v7 = v6;
  v8 = a3(a2);
  if (v5 == v8 && v7 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = OUTLINED_FUNCTION_7_21(v5, v9, v8);
  }

  return v11 & 1;
}

uint64_t sub_1D4F3CF78(unsigned __int8 a1)
{
  if (a1)
  {
    if (a1 == 1)
    {
      v2 = "INPlayMediaIntent";
    }

    else
    {
      v2 = "INAddMediaIntent";
    }
  }

  else
  {
    v2 = "";
  }

  v3 = v2 | 0x8000000000000000;
  OUTLINED_FUNCTION_31_13();
  v7 = v7 && v3 == v1;
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = OUTLINED_FUNCTION_7_21(v4, v5, v6);
  }

  return v8 & 1;
}

uint64_t sub_1D4F3D048(unsigned __int8 a1, uint64_t a2)
{
  v2 = 0xED000065726E6567;
  v3 = 0x2D6E692D65726F6DLL;
  v4 = a1;
  v5 = "viewers-also-bought";
  v6 = 0x2D6E692D65726F6DLL;
  v7 = 0xED000065726E6567;
  v8 = "cross-merchandise";
  switch(v4)
  {
    case 1:
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_33_15() & 0xFFFFFFFFFFFFLL | 0x7261000000000000;
      v7 = 0xED00007374736974;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_19();
      v7 = 0xE900000000000073;
      break;
    case 4:
      v7 = 0x80000001D567D8B0;
      v6 = 0xD000000000000013;
      break;
    default:
      v6 = 0xD000000000000011;
      v7 = 0x80000001D567D890;
      break;
  }

  switch(a2)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_18_14();
      OUTLINED_FUNCTION_44_8();
      break;
    case 3:
      OUTLINED_FUNCTION_17_9();
      v2 = 0xE900000000000073;
      break;
    case 4:
      v2 = (v5 - 32) | 0x8000000000000000;
      v3 = 0xD000000000000013;
      break;
    default:
      v3 = 0xD000000000000011;
      v2 = (v8 - 32) | 0x8000000000000000;
      break;
  }

  if (v6 == v3 && v7 == v2)
  {
    v10 = 1;
  }

  else
  {
    v10 = OUTLINED_FUNCTION_9_16(v6, a2, v3);
  }

  return v10 & 1;
}

uint64_t MusicCatalogResourceRequest.source.setter(char *a1, uint64_t a2)
{
  v3 = sub_1D560D358();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  (*(v5 + 104))(v9, **(&unk_1E84C4730 + *a1), v3);
  (*(v5 + 32))(v12, v9, v3);
  return sub_1D560E2B8();
}

uint64_t MusicCatalogResourceRequest.configuration.setter(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_59_0();
  v9 = v7 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  type metadata accessor for MusicRequestConfiguration(0);
  sub_1D4F408C0(&qword_1EDD5B4E8, type metadata accessor for MusicRequestConfiguration, &protocol conformance descriptor for MusicRequestConfiguration);
  sub_1D560E6C8();
  (*(v5 + 16))(v9, v12, v3);
  sub_1D560E248();
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(a1, v13);
  return (*(v5 + 8))(v12, v3);
}

void MusicCatalogResourceRequest.configuration.getter()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  sub_1D560CD48();
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA838, &unk_1D561CB10);
  v4 = OUTLINED_FUNCTION_22(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1D560E238();
  sub_1D560CCE8();
  v11 = OUTLINED_FUNCTION_130();
  v12(v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA840, &qword_1D561D790);
  v13 = type metadata accessor for MusicRequestConfiguration(0);
  v14 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v10, v14 ^ 1u, 1, v13);
  v15 = OUTLINED_FUNCTION_46_1();
  sub_1D4E69910(v15, v16, &qword_1EC7EA838, &unk_1D561CB10);
  if (__swift_getEnumTagSinglePayload(v7, 1, v13) == 1)
  {
    static MusicRequestConfiguration.globalDefault.getter(v1);
    if (__swift_getEnumTagSinglePayload(v7, 1, v13) != 1)
    {
      sub_1D4E50004(v7, &qword_1EC7EA838, &unk_1D561CB10);
    }
  }

  else
  {
    sub_1D4E56C6C(v7, v1);
  }

  sub_1D4E50004(v10, &qword_1EC7EA838, &unk_1D561CB10);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F3D694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for MusicRequestConfiguration(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D4F40860(a1, v7, type metadata accessor for MusicRequestConfiguration);
  v8 = sub_1D560E328();
  return MusicCatalogResourceRequest.configuration.setter(v7, v8);
}

void (*MusicCatalogResourceRequest.configuration.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2)
{
  *a1 = a2;
  a1[1] = v2;
  v4 = type metadata accessor for MusicRequestConfiguration(0);
  OUTLINED_FUNCTION_22(v4);
  v6 = *(v5 + 64);
  a1[2] = __swift_coroFrameAllocStub(v6);
  a1[3] = __swift_coroFrameAllocStub(v6);
  MusicCatalogResourceRequest.configuration.getter();
  return sub_1D4F3D7F0;
}

void sub_1D4F3D7F0(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  if (a2)
  {
    sub_1D4F40860(a1[3], v2, type metadata accessor for MusicRequestConfiguration);
    MusicCatalogResourceRequest.configuration.setter(v2, v4);
    OUTLINED_FUNCTION_1_29();
    sub_1D4E583B4(v3, v5);
  }

  else
  {
    v6 = OUTLINED_FUNCTION_46_1();
    MusicCatalogResourceRequest.configuration.setter(v6, v7);
  }

  free(v3);

  free(v2);
}

uint64_t MusicCatalogResourceRequest.source.getter@<X0>(char *a2@<X8>)
{
  v3 = sub_1D560D358();
  OUTLINED_FUNCTION_4();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  sub_1D560E2A8();
  result = (*(v5 + 88))(v9, v3);
  if (result != *MEMORY[0x1E6974E90])
  {
    if (result == *MEMORY[0x1E6974EA8])
    {
      v11 = 1;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E98])
    {
      v11 = 2;
      goto LABEL_9;
    }

    if (result == *MEMORY[0x1E6974E88])
    {
      v11 = 3;
      goto LABEL_9;
    }

    if (result != *MEMORY[0x1E6974EA0])
    {
      result = (*(v5 + 8))(v9, v3);
    }
  }

  v11 = 0;
LABEL_9:
  *a2 = v11;
  return result;
}

uint64_t sub_1D4F3D9E4@<X0>(_BYTE *a3@<X8>)
{
  sub_1D560E328();
  result = MusicCatalogResourceRequest.source.getter(&v5);
  *a3 = v5;
  return result;
}

uint64_t sub_1D4F3DA34(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v4 = sub_1D560E328();
  return MusicCatalogResourceRequest.source.setter(&v6, v4);
}

uint64_t (*MusicCatalogResourceRequest.source.modify(uint64_t a1, uint64_t a2))(uint64_t a1, char a2)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  MusicCatalogResourceRequest.source.getter((a1 + 16));
  return sub_1D4F3DAD0;
}

uint64_t sub_1D4F3DAD0(uint64_t a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    v6 = *(a1 + 16);
    v4 = &v6;
  }

  else
  {
    v7 = *(a1 + 16);
    v4 = &v7;
  }

  return MusicCatalogResourceRequest.source.setter(v4, v3);
}

uint64_t MusicCatalogResourceRequest.performAutomaticLibraryMapping.getter()
{
  v0 = type metadata accessor for MusicRequestConfiguration(0);
  v1 = OUTLINED_FUNCTION_22(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  MusicCatalogResourceRequest.configuration.getter();
  v5 = *(v4 + 96);
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(v4, v6);
  return v5;
}

uint64_t MusicCatalogResourceRequest.performAutomaticLibraryMapping.setter(char a1, uint64_t a2)
{
  v4 = type metadata accessor for MusicRequestConfiguration(0);
  v5 = OUTLINED_FUNCTION_22(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  MusicCatalogResourceRequest.configuration.getter();
  *(v8 + 96) = a1;
  return MusicCatalogResourceRequest.configuration.setter(v8, a2);
}

uint64_t (*MusicCatalogResourceRequest.performAutomaticLibraryMapping.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = MusicCatalogResourceRequest.performAutomaticLibraryMapping.getter() & 1;
  return sub_1D4F3DC74;
}

uint64_t MusicCatalogResourceRequest.options.getter()
{
  v1 = sub_1D560E2C8();
  sub_1D5559F60(v1);
  OUTLINED_FUNCTION_82();

  return v0;
}

uint64_t sub_1D4F3DCD0@<X0>(uint64_t *a3@<X8>)
{
  sub_1D560E328();
  result = MusicCatalogResourceRequest.options.getter();
  *a3 = result;
  return result;
}

uint64_t sub_1D4F3DD10(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1D560E328();

  return MusicCatalogResourceRequest.options.setter(v5, v4);
}

uint64_t MusicCatalogResourceRequest.options.setter(uint64_t a1, uint64_t a2)
{
  sub_1D555A178(a1);

  return sub_1D560E2D8();
}

uint64_t (*MusicCatalogResourceRequest.options.modify(uint64_t *a1, uint64_t a2))()
{
  a1[1] = a2;
  a1[2] = v2;
  *a1 = MusicCatalogResourceRequest.options.getter();
  return sub_1D4F3DE04;
}

uint64_t sub_1D4F3DE04(void *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {

    MusicCatalogResourceRequest.options.setter(v3, v2);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_128();
    return MusicCatalogResourceRequest.options.setter(v5, v6);
  }
}

uint64_t sub_1D4F3DE74@<X0>(uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v6 = sub_1D560E328();
  result = a3(v6);
  *a4 = result & 1;
  return result;
}

uint64_t sub_1D4F3DEC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v6 = *a1;
  v7 = sub_1D560E328();
  return a5(v6, v7);
}

uint64_t (*MusicCatalogResourceRequest.prewarmForPlayback.modify(uint64_t a1, uint64_t a2))(uint64_t a1)
{
  *a1 = a2;
  *(a1 + 8) = v2;
  *(a1 + 16) = _s8MusicKit0A22CatalogResourceRequestV0aB8InternalE18prewarmForPlaybackSbvg_0() & 1;
  return sub_1D4F3DF70;
}

void MusicCatalogResourceRequest<>.init<A>(matching:equalTo:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v35 = v4;
  v5 = *v2;
  sub_1D5610F88();
  OUTLINED_FUNCTION_4();
  v32 = v7;
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v34 = v9 - v8;
  v10 = sub_1D5610A18();
  OUTLINED_FUNCTION_4();
  v30 = v11;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v31 = v14 - v13;
  v15 = v5;
  v29 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v16 = sub_1D560DDF8();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v27 - v20;
  KeyPath = swift_getKeyPath();
  v40 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBF08, &qword_1D561F428);

  LOBYTE(v5) = sub_1D5614D18();

  if (v5)
  {
    v22 = v1;
    if (qword_1EC7E8B48 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v10, qword_1EC87BF98);
    v28 = sub_1D5614408();
    v24 = *(v15 + *MEMORY[0x1E69E77B0]);
    KeyPath = v28;
    v37 = v24;
    v25 = v29;
    v38 = v29;
    v39 = MEMORY[0x1E6977150];
    sub_1D560F168();
    v26 = *(v25 - 8);
    (*(v26 + 16))(v21, v22, v25);
    (*(v18 + 104))(v21, *MEMORY[0x1E6975090], v16);
    OUTLINED_FUNCTION_130();
    sub_1D560F178();
    (*(v30 + 16))(v31, v23, v10);
    sub_1D560F158();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD0, &unk_1D561F430);
    sub_1D5610088();
    *(swift_allocObject() + 16) = xmmword_1D561C050;
    sub_1D5610008();
    (*(v32 + 104))(v34, *MEMORY[0x1E69760C0], v33);
    sub_1D4F408C0(&qword_1EC7EAAC0, MEMORY[0x1E6977180], MEMORY[0x1E6977198]);
    sub_1D560E258();

    (*(v26 + 8))(v22, v25);
    OUTLINED_FUNCTION_46();
  }

  else
  {
    KeyPath = 0;
    v37 = 0xE000000000000000;
    sub_1D5615B68();
    MEMORY[0x1DA6EAC70](0xD000000000000021, 0x80000001D567F020);
    v40 = v3;
    sub_1D56163E8();
    sub_1D5616138();
    MEMORY[0x1DA6EAC70](46, 0xE100000000000000);
    sub_1D5615E08();
    __break(1u);
  }
}

void *sub_1D4F3E4D0@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(&v6, v3, v4);
  *a2 = v6;
  return result;
}

void MusicCatalogResourceRequest<>.init(catalogTypedIdentifiers:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v73 = sub_1D5610F88();
  OUTLINED_FUNCTION_4();
  v72 = v4;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v74 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v68 - v10;
  v12 = sub_1D5610088();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_59_0();
  v85 = v16 - v17;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v84 = &v68 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v90 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v92 = &v68 - v23;
  v83 = sub_1D5612478();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_5();
  v89 = v28 - v27;
  v29 = type metadata accessor for MusicItemTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(v1 + 16);
  if (!v34)
  {
    goto LABEL_32;
  }

  v71 = v3;
  v86 = 0;
  v69 = v32;
  v35 = *(v32 + 28);
  v36 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v70 = v1;
  v37 = v1 + v36;
  v38 = *(v30 + 72);
  v77 = (v14 + 8);
  v78 = v14 + 32;
  v76 = (v14 + 16);
  v75 = v25 + 32;
  v91 = MEMORY[0x1E69E7CC0];
  v79 = v38;
  v80 = v35;
  v81 = v25;
  v82 = v11;
  v88 = &v68 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  do
  {
    sub_1D4F40860(v37, v33, type metadata accessor for MusicItemTypedIdentifier);
    sub_1D4E69910(&v33[v35], v11, &qword_1EC7EA358, &unk_1D561DF50);
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      OUTLINED_FUNCTION_14_12();
      sub_1D4E583B4(v33, v39);
      sub_1D4E50004(v11, &qword_1EC7EA358, &unk_1D561DF50);
    }

    else
    {
      v40 = OUTLINED_FUNCTION_222();
      v41(v40);
      sub_1D560FF18();
      OUTLINED_FUNCTION_13_18();
      sub_1D4F408C0(&qword_1EDD53348, v42, MEMORY[0x1E6975BE8]);
      OUTLINED_FUNCTION_130();
      sub_1D56150C8();
      OUTLINED_FUNCTION_130();
      sub_1D56150C8();
      if (v95 == v93 && v96 == v94)
      {
        v44 = 1;
      }

      else
      {
        v44 = sub_1D5616168();
      }

      v45 = *v77;
      (*v77)(v90, v12);

      v87 = v34;
      if (v44)
      {
        v86 = 1;
        v46 = v91;
      }

      else
      {
        sub_1D560FED8();
        OUTLINED_FUNCTION_130();
        sub_1D56150C8();
        OUTLINED_FUNCTION_130();
        sub_1D56150C8();
        if (v95 == v93 && v96 == v94)
        {
          v48 = 1;
        }

        else
        {
          v48 = sub_1D5616168() | v86;
        }

        v86 = v48;
        v46 = v91;
        v45(v84, v12);
      }

      v49 = v88;
      v50 = v92;
      (*v76)(v85, v92, v12);

      sub_1D5612438();
      v45(v50, v12);
      OUTLINED_FUNCTION_14_12();
      sub_1D4E583B4(v49, v51);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F000F8();
        v46 = v56;
      }

      v35 = v80;
      v52 = v81;
      v38 = v79;
      v34 = v87;
      v53 = *(v46 + 16);
      if (v53 >= *(v46 + 24) >> 1)
      {
        sub_1D4F000F8();
        v46 = v57;
      }

      v33 = v88;
      v54 = v89;
      *(v46 + 16) = v53 + 1;
      v55 = (*(v52 + 80) + 32) & ~*(v52 + 80);
      v91 = v46;
      (*(v52 + 32))(v46 + v55 + *(v52 + 72) * v53, v54, v83);
      v11 = v82;
    }

    v37 += v38;
    --v34;
  }

  while (v34);
  if (v86)
  {
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
    }

    v58 = sub_1D560C758();
    __swift_project_value_buffer(v58, qword_1EDD76DC8);
    v59 = v70;

    v60 = sub_1D560C738();
    v61 = sub_1D56156C8();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = OUTLINED_FUNCTION_142();
      v63 = swift_slowAlloc();
      v95 = v63;
      *v62 = 136446210;
      v64 = MEMORY[0x1DA6EAF70](v59, v69);
      v66 = v65;

      v67 = sub_1D4E6835C(v64, v66, &v95);

      *(v62 + 4) = v67;
      _os_log_impl(&dword_1D4E3F000, v60, v61, "MusicCatalogResourceRequest API misuse - unsupported resource types included in catalogTypedIdentifiers: %{public}s", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      OUTLINED_FUNCTION_122();
      OUTLINED_FUNCTION_122();
    }

    else
    {
    }
  }

  else
  {
LABEL_32:
  }

  (*(v72 + 104))(v74, *MEMORY[0x1E69760C0], v73);
  type metadata accessor for GenericMusicItem(0);
  sub_1D4F408C0(&qword_1EDD5C600, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  sub_1D4F408C0(&qword_1EC7EAAE0, type metadata accessor for GenericMusicItem, &protocol conformance descriptor for GenericMusicItem);
  sub_1D560E218();
  OUTLINED_FUNCTION_46();
}

void MusicCatalogResourceRequest.prewarmForPlayback<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_47();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = *(v24 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v28);
  v32 = &a9 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = OUTLINED_FUNCTION_222();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(v33, v34);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &a9 - v37;
  v39 = sub_1D5615458();
  __swift_storeEnumTagSinglePayload(v38, 1, 1, v39);
  (*(v30 + 16))(v32, v29, v25);
  v40 = (*(v30 + 80) + 72) & ~*(v30 + 80);
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = *(v27 + 16);
  *(v41 + 40) = v25;
  *(v41 + 48) = *(v27 + 24);
  *(v41 + 64) = v23;
  (*(v30 + 32))(v41 + v40, v32, v25);
  sub_1D4F405A0(0, 0, v38, &unk_1D561F450, v41);

  sub_1D4E50004(v38, &qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4F3EF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[20] = a6;
  v6[21] = v11;
  v6[19] = a4;
  v6[22] = *(a6 - 8);
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  type metadata accessor for MusicRequestConfiguration(0);
  v6[25] = swift_task_alloc();
  v6[26] = type metadata accessor for Bag(0);
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v6[28] = swift_task_alloc();
  v7 = sub_1D560F148();
  v6[29] = v7;
  v6[30] = *(v7 - 8);
  v6[31] = swift_task_alloc();
  v8 = sub_1D560D838();
  v6[32] = v8;
  v6[33] = *(v8 - 8);
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D4F3F19C, 0, 0);
}

uint64_t sub_1D4F3F19C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 264);
  sub_1D560EC98();
  v12 = sub_1D560D7E8();
  v13 = *(v11 + 8);
  v14 = OUTLINED_FUNCTION_128();
  v13(v14);
  if (v12)
  {
    goto LABEL_4;
  }

  v16 = *(v10 + 224);
  v15 = *(v10 + 232);
  sub_1D560EC98();
  sub_1D560D7A8();
  v17 = OUTLINED_FUNCTION_128();
  v13(v17);
  if (__swift_getEnumTagSinglePayload(v16, 1, v15) == 1)
  {
    sub_1D4E50004(*(v10 + 224), &unk_1EC7F1970, &qword_1D561F4A0);
LABEL_4:
    if (qword_1EDD5D8A8 != -1)
    {
      OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
    }

    v18 = sub_1D560C758();
    __swift_project_value_buffer(v18, qword_1EDD76DC8);
    v19 = sub_1D560C738();
    v20 = sub_1D56156E8();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1D4E3F000, v19, v20, "Skipping server item database import due to no importable item being returned in the MusicCatalogResourceResponse.", v21, 2u);
      OUTLINED_FUNCTION_122();
    }

    OUTLINED_FUNCTION_4_16();

    OUTLINED_FUNCTION_55();
    OUTLINED_FUNCTION_25_3();

    return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10);
  }

  v31 = *(v10 + 200);
  (*(*(v10 + 240) + 32))(*(v10 + 248), *(v10 + 224), *(v10 + 232));
  sub_1D502EF3C();
  v32 = *(v31 + 17);
  *(v10 + 352) = v32;
  if (v32 == 1)
  {
    v33 = swift_task_alloc();
    *(v10 + 288) = v33;
    *v33 = v10;
    OUTLINED_FUNCTION_42_11(v33);
    OUTLINED_FUNCTION_25_3();

    return sub_1D4F56EB4(v34);
  }

  else
  {
    v36 = swift_task_alloc();
    *(v10 + 304) = v36;
    *v36 = v10;
    OUTLINED_FUNCTION_42_11(v36);
    OUTLINED_FUNCTION_25_3();

    return sub_1D4F573D4();
  }
}

uint64_t sub_1D4F3F46C()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v5 + 296) = v0;

  if (v0)
  {
    v8 = sub_1D4F3F93C;
  }

  else
  {
    *(v5 + 320) = v3;
    v8 = sub_1D4F3F69C;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D4F3F584()
{
  OUTLINED_FUNCTION_80();
  v3 = v2;
  OUTLINED_FUNCTION_59_1();
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_23_0();
  *v7 = v6;
  *(v5 + 312) = v0;

  if (v0)
  {
    v8 = sub_1D4F3FD6C;
  }

  else
  {
    *(v5 + 328) = v3;
    v8 = sub_1D4F3FAE8;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1D4F3F69C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 320);
  type metadata accessor for Bag.UnderlyingBagWrapper();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = *(v10 + 296);
  v14 = *(v10 + 352);
  v15 = *(v10 + 216);
  v16 = *(v10 + 200);
  v17 = v15 + *(*(v10 + 208) + 20);
  *v17 = v12;
  *(v17 + 8) = (v14 & 1) == 0;
  sub_1D4E56C6C(v16, v15);
  v18 = OUTLINED_FUNCTION_51_10();
  if (v13)
  {

LABEL_11:
    OUTLINED_FUNCTION_45_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_1D561C050;
    *(v38 + 32) = sub_1D560F138();
    *(v38 + 40) = v39;
    sub_1D4F40B98();
    v40 = sub_1D4F4049C(v38);
    *(v10 + 336) = v40;
    *(v10 + 16) = v10;
    OUTLINED_FUNCTION_12_20();
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB728, &qword_1D5642810);
    OUTLINED_FUNCTION_11_15(v41);
    *(v10 + 88) = 1107296256;
    OUTLINED_FUNCTION_10_13();
    [v40 performWithCompletionHandler_];
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DEC8](v42);
  }

  if ((v18 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
  }

  v19 = sub_1D560C758();
  __swift_project_value_buffer(v19, qword_1EDD76DC8);
  v20 = sub_1D560C738();
  v21 = sub_1D56156E8();
  v22 = os_log_type_enabled(v20, v21);
  v23 = *(v10 + 216);
  if (v22)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v24, v25, "Skipping server item database import due to bag value isPrewarmPlaybackDisabled being true.");
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_2_9();
  sub_1D4E583B4(v23, v26);
  v27 = OUTLINED_FUNCTION_128();
  v28(v27);
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10);
}

uint64_t sub_1D4F3F93C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 296);
  v12 = *(v10 + 240);
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(v13, v14);
  v15 = v12 + 8;
  v16 = OUTLINED_FUNCTION_222();
  v17(v16);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
  }

  v18 = sub_1D560C758();
  __swift_project_value_buffer(v18, qword_1EDD76DC8);
  v19 = OUTLINED_FUNCTION_82();
  v20 = sub_1D560C738();
  v21 = sub_1D56156C8();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_142();
    v22 = OUTLINED_FUNCTION_38_12();
    *v15 = 138543362;
    v23 = v11;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v25, v26, "Unable to import item into the server item database due to error: %{public}@");
    sub_1D4E50004(v22, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1D4F3FAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 312);
  v12 = *(v10 + 352);
  v13 = *(v10 + 216);
  v14 = *(v10 + 200);
  v15 = v13 + *(*(v10 + 208) + 20);
  *v15 = *(v10 + 328);
  *(v15 + 8) = (v12 & 1) == 0;
  sub_1D4E56C6C(v14, v13);
  v16 = OUTLINED_FUNCTION_51_10();
  if (v11)
  {

LABEL_11:
    OUTLINED_FUNCTION_45_10();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EACD8, &unk_1D561DAB0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D561C050;
    *(v36 + 32) = sub_1D560F138();
    *(v36 + 40) = v37;
    sub_1D4F40B98();
    v38 = sub_1D4F4049C(v36);
    *(v10 + 336) = v38;
    *(v10 + 16) = v10;
    OUTLINED_FUNCTION_12_20();
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB728, &qword_1D5642810);
    OUTLINED_FUNCTION_11_15(v39);
    *(v10 + 88) = 1107296256;
    OUTLINED_FUNCTION_10_13();
    [v38 performWithCompletionHandler_];
    OUTLINED_FUNCTION_25_3();

    return MEMORY[0x1EEE6DEC8](v40);
  }

  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
  }

  v17 = sub_1D560C758();
  __swift_project_value_buffer(v17, qword_1EDD76DC8);
  v18 = sub_1D560C738();
  v19 = sub_1D56156E8();
  v20 = os_log_type_enabled(v18, v19);
  v21 = *(v10 + 216);
  if (v20)
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_50_7(&dword_1D4E3F000, v22, v23, "Skipping server item database import due to bag value isPrewarmPlaybackDisabled being true.");
    OUTLINED_FUNCTION_122();
  }

  OUTLINED_FUNCTION_2_9();
  sub_1D4E583B4(v21, v24);
  v25 = OUTLINED_FUNCTION_128();
  v26(v25);
  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1D4F3FD6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = *(v10 + 312);
  v12 = *(v10 + 240);
  OUTLINED_FUNCTION_1_29();
  sub_1D4E583B4(v13, v14);
  v15 = v12 + 8;
  v16 = OUTLINED_FUNCTION_222();
  v17(v16);
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
  }

  v18 = sub_1D560C758();
  __swift_project_value_buffer(v18, qword_1EDD76DC8);
  v19 = OUTLINED_FUNCTION_82();
  v20 = sub_1D560C738();
  v21 = sub_1D56156C8();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_142();
    v22 = OUTLINED_FUNCTION_38_12();
    *v15 = 138543362;
    v23 = v11;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v25, v26, "Unable to import item into the server item database due to error: %{public}@");
    sub_1D4E50004(v22, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

uint64_t sub_1D4F3FF18()
{
  OUTLINED_FUNCTION_59_1();
  v1 = v0;
  v2 = *(v0 + 48);
  *(v1 + 344) = v2;
  if (v2)
  {
    v3 = sub_1D4F402DC;
  }

  else
  {
    v3 = sub_1D4F40024;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D4F40024()
{
  v34 = v0;

  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
  }

  v1 = *(v0 + 176);
  v2 = sub_1D560C758();
  __swift_project_value_buffer(v2, qword_1EDD76DC8);
  v3 = *(v1 + 16);
  v4 = OUTLINED_FUNCTION_222();
  v3(v4);
  v5 = sub_1D560C738();
  v6 = sub_1D56156E8();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 240);
  v9 = *(v0 + 248);
  v10 = *(v0 + 232);
  v32 = *(v0 + 216);
  v11 = *(v0 + 192);
  if (v7)
  {
    log = v5;
    v28 = *(v0 + 336);
    v31 = *(v0 + 248);
    v12 = *(v0 + 176);
    v13 = *(v0 + 184);
    v26 = v6;
    v14 = *(v0 + 160);
    v30 = *(v0 + 232);
    v15 = OUTLINED_FUNCTION_142();
    v29 = v8;
    v16 = swift_slowAlloc();
    v33 = v16;
    *v15 = 136446210;
    (v3)(v13, v11, v14);
    v17 = sub_1D5614DB8();
    v19 = v18;
    (*(v12 + 8))(v11, v14);
    sub_1D4E6835C(v17, v19, &v33);
    OUTLINED_FUNCTION_82();

    *(v15 + 4) = v14;
    _os_log_impl(&dword_1D4E3F000, log, v26, "Successfully imported item %{public}s into the server item database.", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v16);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();

    OUTLINED_FUNCTION_2_9();
    sub_1D4E583B4(v32, v20);
    (*(v29 + 8))(v31, v30);
  }

  else
  {
    v21 = *(v0 + 176);
    v22 = *(v0 + 160);

    (*(v21 + 8))(v11, v22);
    OUTLINED_FUNCTION_2_9();
    sub_1D4E583B4(v32, v23);
    (*(v8 + 8))(v9, v10);
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();

  return v24();
}

uint64_t sub_1D4F402DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_35_8();
  OUTLINED_FUNCTION_160();
  v11 = v10[42];
  v13 = v10[30];
  v12 = v10[31];
  v14 = v10[29];
  v15 = v10[27];
  swift_willThrow();

  OUTLINED_FUNCTION_2_9();
  sub_1D4E583B4(v15, v16);
  (*(v13 + 8))(v12, v14);
  v17 = v10[43];
  if (qword_1EDD5D8A8 != -1)
  {
    OUTLINED_FUNCTION_0_23(&qword_1EDD5D8A8);
  }

  v18 = sub_1D560C758();
  __swift_project_value_buffer(v18, qword_1EDD76DC8);
  v19 = OUTLINED_FUNCTION_82();
  v20 = sub_1D560C738();
  v21 = sub_1D56156C8();

  if (os_log_type_enabled(v20, v21))
  {
    OUTLINED_FUNCTION_142();
    v22 = OUTLINED_FUNCTION_38_12();
    *v15 = 138543362;
    v23 = v17;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v24;
    *v22 = v24;
    OUTLINED_FUNCTION_26_7(&dword_1D4E3F000, v25, v26, "Unable to import item into the server item database due to error: %{public}@");
    sub_1D4E50004(v22, &unk_1EC7F2C00, &qword_1D5623260);
    OUTLINED_FUNCTION_122();
    OUTLINED_FUNCTION_122();
  }

  else
  {
  }

  OUTLINED_FUNCTION_4_16();

  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_25_3();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10);
}

id sub_1D4F4049C(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_1D5615158();

  v3 = [v1 initWithStoreIDs_];

  return v3;
}

void *sub_1D4F40510(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v6 = a3;

    return sub_1D4F23514();
  }

  else if (a2)
  {
    v7 = a2;

    return sub_1D4F23510();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4F405A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB710, &qword_1D561F440);
  OUTLINED_FUNCTION_22(v9);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - v11;
  sub_1D4E69910(a3, v24 - v11, &qword_1EC7EB710, &qword_1D561F440);
  v13 = sub_1D5615458();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D4E50004(v12, &qword_1EC7EB710, &qword_1D561F440);
  }

  else
  {
    sub_1D5615448();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D5615338();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D5614DE8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v16;
        v25[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v19;
      swift_task_create();
      OUTLINED_FUNCTION_82();

      return v16;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v16;
    v25[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1D4F40860(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_14();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D4F408C0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4F40908(uint64_t a1)
{
  v3 = v1[5];
  v12 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = swift_task_alloc();
  v8 = OUTLINED_FUNCTION_32(v7);
  *v8 = v9;
  v8[1] = sub_1D4F40A20;

  return sub_1D4F3EF78(a1, v5, v6, v1 + v4, v12, v3);
}

uint64_t sub_1D4F40A20()
{
  OUTLINED_FUNCTION_59_1();
  v1 = *v0;
  OUTLINED_FUNCTION_23_0();
  *v2 = v1;

  OUTLINED_FUNCTION_55();

  return v3();
}

uint64_t sub_1D4F40B04()
{
  OUTLINED_FUNCTION_80();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_32(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_23_8(v1);

  return v4(v3);
}

unint64_t sub_1D4F40B98()
{
  result = qword_1EC7EBF10;
  if (!qword_1EC7EBF10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC7EBF10);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_51_10()
{

  return sub_1D51057D8();
}

void sub_1D4F40C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D4F03980(0, v1, 0);
    v5 = sub_1D53FF658();
    v6 = 0;
    v7 = v2 + 56;
    v23 = v2 + 64;
    v24 = v2 + 56;
    v25 = v2;
    if ((v5 & 0x8000000000000000) == 0)
    {
      while (v5 < 1 << *(v2 + 32))
      {
        v8 = v5 >> 6;
        if ((*(v7 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
        {
          goto LABEL_24;
        }

        if (*(v2 + 36) != v3)
        {
          goto LABEL_25;
        }

        v28 = v4;
        v26 = v6;
        v27 = v3;
        v9 = (*(v2 + 48) + 16 * v5);
        v10 = *v9;
        v11 = v9[1];
        v13 = *(v29 + 16);
        v12 = *(v29 + 24);

        if (v13 >= v12 >> 1)
        {
          sub_1D4F03980(v12 > 1, v13 + 1, 1);
        }

        *(v29 + 16) = v13 + 1;
        v14 = v29 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v11;
        if (v28)
        {
          goto LABEL_29;
        }

        v7 = v24;
        v2 = v25;
        v15 = 1 << *(v25 + 32);
        if (v5 >= v15)
        {
          goto LABEL_26;
        }

        v16 = *(v24 + 8 * v8);
        if ((v16 & (1 << v5)) == 0)
        {
          goto LABEL_27;
        }

        if (*(v25 + 36) != v27)
        {
          goto LABEL_28;
        }

        v17 = v16 & (-2 << (v5 & 0x3F));
        if (v17)
        {
          v15 = __clz(__rbit64(v17)) | v5 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = v8 << 6;
          v19 = v8 + 1;
          v20 = (v23 + 8 * v8);
          while (v19 < (v15 + 63) >> 6)
          {
            v22 = *v20++;
            v21 = v22;
            v18 += 64;
            ++v19;
            if (v22)
            {
              sub_1D4ECC79C(v5, v27, 0);
              v15 = __clz(__rbit64(v21)) + v18;
              goto LABEL_19;
            }
          }

          sub_1D4ECC79C(v5, v27, 0);
        }

LABEL_19:
        v6 = v26 + 1;
        if (v26 + 1 == v1)
        {
          return;
        }

        v4 = 0;
        v3 = *(v25 + 36);
        v5 = v15;
        if (v15 < 0)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }
}

uint64_t sub_1D4F40E88@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v314 = a2;
  v309 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF30, &qword_1D561C8C0);
  v9 = OUTLINED_FUNCTION_22(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v264 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F6DF0, &qword_1D561D1E0);
  v13 = OUTLINED_FUNCTION_22(v12);
  MEMORY[0x1EEE9AC00](v13);
  v270 = v264 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF20, &unk_1D561F530);
  v16 = OUTLINED_FUNCTION_22(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v292 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F1970, &qword_1D561F4A0);
  v20 = OUTLINED_FUNCTION_22(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v22);
  v305 = sub_1D560D4C8();
  OUTLINED_FUNCTION_4();
  v265 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v26);
  v27 = sub_1D560E728();
  OUTLINED_FUNCTION_4();
  v299 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_48(v30);
  v301 = sub_1D560D9A8();
  OUTLINED_FUNCTION_4();
  v303 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v34);
  v297 = sub_1D560F148();
  OUTLINED_FUNCTION_4();
  v271 = v35;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v39);
  v324 = sub_1D560F0F8();
  OUTLINED_FUNCTION_4();
  v41 = v40;
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  v323 = v43;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_13_2();
  v320 = v45;
  v326 = sub_1D560D9E8();
  OUTLINED_FUNCTION_4();
  v47 = v46;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_5_0();
  v335 = v49;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF40, &unk_1D561F540);
  v51 = OUTLINED_FUNCTION_22(v50);
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_135();
  v328 = v53;
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_135();
  v325 = v55;
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_13_2();
  v337 = v58;
  sub_1D560DB08();
  OUTLINED_FUNCTION_4();
  v60 = v59;
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v64);
  v66 = v264 - v65;
  v67 = *(v60 + 104);
  v268 = *MEMORY[0x1E6975030];
  v300 = v68;
  v288 = v60 + 104;
  v287 = v67;
  v67(v264 - v65);
  v69 = sub_1D4F43FB8(&qword_1EDD5D748, MEMORY[0x1E6975358], MEMORY[0x1E6975360]);
  v310 = a3;
  v306 = v27;
  v286 = v69;
  sub_1D5614FC8();
  OUTLINED_FUNCTION_33_16();
  v293 = v11;
  if (v179)
  {
    MEMORY[0x1EEE9AC00](v70);
    OUTLINED_FUNCTION_16_16();
    *(v71 - 16) = v66;
    OUTLINED_FUNCTION_17_10();
    sub_1D4F257A8();
  }

  v72 = v70;
  v284 = 0;
  v73 = *(v60 + 8);
  v289 = v60 + 8;
  v285 = v73;
  v73(v66, v300);
  if ((v72 & 1) == 0)
  {
    OUTLINED_FUNCTION_15_17();
    v263 = 36;
LABEL_148:
    v264[0] = v263;
LABEL_149:
    result = sub_1D5615E08();
    __break(1u);
    return result;
  }

  v331 = [a1 musicKit_catalogID];
  v74 = [a1 musicKit_libraryID];
  v75 = v326;
  if (v74)
  {
    v76 = v74;
    v304 = sub_1D5614D68();
    v78 = v77;
  }

  else
  {
    v304 = 0;
    v78 = 0;
  }

  v79 = [a1 musicKit_cloudAlbumLibraryID];
  if (v79)
  {
    v80 = v79;
    v272 = sub_1D5614D68();
    v302 = v81;
  }

  else
  {
    v272 = 0;
    v302 = 0;
  }

  v329 = [a1 musicKit_deviceLocalID];
  v82 = [a1 musicKit_occurrenceID];
  if (v82)
  {
    v83 = v82;
    v295 = sub_1D5614D68();
    v313 = v84;
  }

  else
  {
    v295 = 0;
    v313 = 0;
  }

  v308 = v78;
  v294 = a4;
  v85 = sub_1D560D518();
  v86 = type metadata accessor for MusicPreferredID(0);
  __swift_storeEnumTagSinglePayload(v337, 1, 1, v86);
  v87 = 0;
  v336 = *(v85 + 16);
  v334 = v47 + 16;
  v333 = v47 + 88;
  v332 = *MEMORY[0x1E6974FD0];
  v327 = *MEMORY[0x1E6974FC8];
  v312 = *MEMORY[0x1E6974FD8];
  v298 = *MEMORY[0x1E6974FC0];
  v281 = *MEMORY[0x1E69755A0];
  v322 = (v41 + 104);
  v280 = *MEMORY[0x1E69755C0];
  v279 = *MEMORY[0x1E69755A8];
  v278 = *MEMORY[0x1E69755B8];
  v277 = *MEMORY[0x1E69755C8];
  v317 = (v41 + 16);
  v316 = (v41 + 8);
  v276 = *MEMORY[0x1E69755B0];
  v88 = &unk_1EC7EBF40;
  v275 = *MEMORY[0x1E69755E0];
  v89 = &unk_1D561F540;
  v321 = *MEMORY[0x1E69755D0];
  v307 = a1;
  v90 = v328;
  v330 = v85;
  v318 = v47;
  v315 = v86;
  while (1)
  {
    if (v336 == v87)
    {

      goto LABEL_45;
    }

    if (v87 >= *(v85 + 16))
    {
      __break(1u);
      goto LABEL_144;
    }

    v91 = v89;
    v92 = v335;
    (*(v47 + 16))(v335, v85 + ((*(v47 + 80) + 32) & ~*(v47 + 80)) + *(v47 + 72) * v87, v75);
    v93 = (*(v47 + 88))(v92, v75);
    if (v93 == v332)
    {
      v89 = v91;
      if (!v331)
      {
        goto LABEL_41;
      }

      v94 = v331;
      v95 = [v94 value];
      sub_1D5614D68();

      sub_1D560EED8();
      v96 = [v94 kind];
      v97 = a1;
      v98 = v321;
      switch(v96)
      {
        case 0uLL:
          goto LABEL_39;
        case 1uLL:
          v99 = (&v308 + 4);
          goto LABEL_38;
        case 2uLL:
          v99 = &v309;
          goto LABEL_38;
        case 3uLL:
          v99 = (&v309 + 4);
          goto LABEL_38;
        case 4uLL:
          v99 = &v310;
          goto LABEL_38;
        case 5uLL:
          v99 = (&v310 + 4);
          goto LABEL_38;
        case 6uLL:
          v99 = v311;
          goto LABEL_38;
        case 7uLL:
          v99 = (v311 + 4);
LABEL_38:
          v98 = *(v99 - 64);
LABEL_39:
          v112 = v320;
          v113 = v324;
          (*v322)(v320, v98, v324);
          (*v317)(v323, v112, v113);
          v106 = v319;
          sub_1D560F118();

          (*v316)(v112, v113);
          v88 = &unk_1EC7EBF40;
          v89 = v91;
          sub_1D4E7661C(v337, &unk_1EC7EBF40, v91);
          v86 = v315;
          swift_storeEnumTagMultiPayload();
          a1 = v97;
          v75 = v326;
          v90 = v328;
          v47 = v318;
          break;
        case 8uLL:
          OUTLINED_FUNCTION_15_17();
          v264[0] = 49;
          goto LABEL_149;
        default:
          goto LABEL_149;
      }

      goto LABEL_40;
    }

    v89 = v91;
    if (v93 == v327)
    {
      if (!v329)
      {
        goto LABEL_41;
      }

      v100 = v329;
      [v100 value];
      v311[1] = sub_1D560EF08();
      v311[0] = v101;
      v102 = [v100 databaseID];
      sub_1D5614D68();

      v88 = &unk_1EC7EBF40;
      v90 = v328;
      v103 = v75;
      v104 = v307;
      sub_1D560EED8();
      v105 = v325;
      sub_1D560D4A8();

      OUTLINED_FUNCTION_28_12();
      swift_storeEnumTagMultiPayload();
      v106 = v105;
      a1 = v104;
      v75 = v103;
      v89 = v91;
      goto LABEL_40;
    }

    if (v93 == v312)
    {
      if (v308)
      {

        v107 = sub_1D560EED8();
        v108 = v75;
        v109 = a1;
        v111 = v110;
        sub_1D4E7661C(v337, &unk_1EC7EBF40, v91);
        v106 = v325;
        *v325 = v107;
        v106[1] = v111;
        v89 = v91;
        a1 = v109;
        v75 = v108;
        v88 = &unk_1EC7EBF40;
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v89 = v91;
        if (!v302)
        {
          goto LABEL_41;
        }

LABEL_31:

        v89 = sub_1D560EED8();
        OUTLINED_FUNCTION_28_12();
        OUTLINED_FUNCTION_18_15();
        swift_storeEnumTagMultiPayload();
        v106 = a1;
        a1 = v75;
        v75 = &unk_1EC7EBF40;
        v88 = &unk_1EC7EBF40;
      }

LABEL_40:
      __swift_storeEnumTagSinglePayload(v106, 0, 1, v86);
      sub_1D4F43DC0(v106, v337);
      v85 = v330;
      goto LABEL_41;
    }

    if (v93 != v298)
    {
      OUTLINED_FUNCTION_15_17();
      v263 = 70;
      goto LABEL_148;
    }

    if (v313)
    {
      goto LABEL_31;
    }

LABEL_41:
    sub_1D4F43D5C(v337, v90, &unk_1EC7EBF40, v89);
    if (__swift_getEnumTagSinglePayload(v90, 1, v86) != 1)
    {
      break;
    }

    sub_1D4E7661C(v90, &unk_1EC7EBF40, v89);
    ++v87;
  }

  sub_1D4E7661C(v90, &unk_1EC7EBF40, &unk_1D561F540);
LABEL_45:
  v114 = v290;
  sub_1D4F43D5C(v337, v290, &unk_1EC7EBF40, &unk_1D561F540);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v114, 1, v86);
  v116 = v308;
  if (EnumTagSinglePayload == 1)
  {
    v117 = v273;
    OUTLINED_FUNCTION_11_16();
    v118();
    OUTLINED_FUNCTION_13_19(v117);
    OUTLINED_FUNCTION_33_16();
    if (v179)
    {
      MEMORY[0x1EEE9AC00](v119);
      OUTLINED_FUNCTION_16_16();
      *(v120 - 16) = v117;
      OUTLINED_FUNCTION_17_10();
      v121 = v284;
      sub_1D4F257A8();
      v130 = v122;
      v284 = v121;
    }

    else
    {
      v130 = v119;
    }

    v131 = v282;
    v132 = v283;
    OUTLINED_FUNCTION_10_14();
    v133();
    if (v130)
    {
      goto LABEL_152;
    }

    OUTLINED_FUNCTION_11_16();
    v140();
    OUTLINED_FUNCTION_13_19(v132);
    OUTLINED_FUNCTION_33_16();
    if (v179)
    {
      MEMORY[0x1EEE9AC00](v141);
      OUTLINED_FUNCTION_16_16();
      *(v142 - 16) = v283;
      OUTLINED_FUNCTION_17_10();
      v143 = v284;
      sub_1D4F257A8();
      v145 = v144;
      v284 = v143;
      v131 = v282;
    }

    else
    {
      v145 = v141;
    }

    OUTLINED_FUNCTION_10_14();
    v146();
    if (v145)
    {
      OUTLINED_FUNCTION_11_16();
      v147();
      OUTLINED_FUNCTION_13_19(v131);
      OUTLINED_FUNCTION_33_16();
      if (v179)
      {
        MEMORY[0x1EEE9AC00](v148);
        OUTLINED_FUNCTION_16_16();
        *(v149 - 16) = v131;
        OUTLINED_FUNCTION_17_10();
        sub_1D4F257A8();
      }

      v170 = v148;
      OUTLINED_FUNCTION_10_14();
      v171();
      if ((v170 & 1) == 0)
      {
LABEL_152:
        v134 = [a1 musicKit_playbackID];
        if (v134)
        {
          v135 = v134;
          sub_1D5614D68();
          OUTLINED_FUNCTION_22_13();

          OUTLINED_FUNCTION_222();
          sub_1D560EED8();
          v136 = OUTLINED_FUNCTION_1_30();
          v137(v136);
          v138 = OUTLINED_FUNCTION_0_24();
          v139(v138);
          OUTLINED_FUNCTION_7_22();
          sub_1D560D538();
          goto LABEL_100;
        }
      }
    }

    v172 = [a1 musicKit_playbackID];
    v85 = v301;
    if (v172)
    {
      v173 = v172;
      sub_1D5614D68();

      v174 = [a1 musicKit_identifierSetSources];
      if (v174)
      {
        v175 = v174;
        v176 = sub_1D5615168();

        if (v176[2])
        {
          a1 = 0xD000000000000010;
          v178 = v176[4];
          v177 = v176[5];

          v179 = v178 == 0xD000000000000010 && 0x80000001D567F190 == v177;
          if (v179)
          {

            OUTLINED_FUNCTION_26_8();
          }

          else
          {
            v180 = sub_1D5616168();

            OUTLINED_FUNCTION_26_8();
            if ((v180 & 1) == 0)
            {

              v85 = v301;
              goto LABEL_78;
            }
          }

          sub_1D560EED8();
          v200 = OUTLINED_FUNCTION_1_30();
          v201(v200);
          v202 = OUTLINED_FUNCTION_0_24();
          v203(v202);
          OUTLINED_FUNCTION_21_14();
          OUTLINED_FUNCTION_7_22();
          sub_1D560D538();
LABEL_99:
          v116 = v308;
          goto LABEL_100;
        }
      }
    }

LABEL_78:
    v181 = v296;
    sub_1D560D898();
    v182 = sub_1D560D8C8();
    v88 = *(v303 + 8);
    v88(v181, v85);
    if (v182)
    {
      v183 = [a1 musicKit_containedDeviceLocalID];
      if (v183)
      {
        v184 = v183;
        [v184 value];
        sub_1D560EF08();
        OUTLINED_FUNCTION_22_13();
        v185 = [v184 databaseID];
        sub_1D5614D68();
        OUTLINED_FUNCTION_34_11();
        OUTLINED_FUNCTION_85_0();
        sub_1D560EED8();
        OUTLINED_FUNCTION_222();
        sub_1D560D4A8();

        OUTLINED_FUNCTION_5_14();
        v186 = OUTLINED_FUNCTION_31_14();
        v187(v186);
        OUTLINED_FUNCTION_3_16();
        OUTLINED_FUNCTION_2_10();
        v188();
        OUTLINED_FUNCTION_21_14();
        OUTLINED_FUNCTION_61();
        sub_1D560D6B8();

        goto LABEL_99;
      }
    }

    sub_1D560EED8();
    (*v322)(v323, v321, v324);
    sub_1D560F118();
    v189 = OUTLINED_FUNCTION_61();
    v190(v189);
    v191 = a1;
    a1 = *(v303 + 16);
    (a1)(v296, v314, v85);
    OUTLINED_FUNCTION_3_16();
    OUTLINED_FUNCTION_2_10();
    v192();
    OUTLINED_FUNCTION_61();
    sub_1D560D798();
    if (([v191 musicKit_hasValidIdentifier] & 1) == 0)
    {
      v193 = [v307 musicKit_identifierSetSources];
      if (v193)
      {
        v194 = v193;
        v195 = sub_1D5615168();

        if (v195[2])
        {
          v197 = v195[4];
          v196 = v195[5];

          if (v197 == 0x6D6552616964654DLL && v196 == 0xEB0000000065746FLL)
          {

            goto LABEL_142;
          }

          v199 = sub_1D5616168();

          v85 = v301;
          if (v199)
          {
LABEL_142:
            v261 = OUTLINED_FUNCTION_24_15();
            v262(v261);
            OUTLINED_FUNCTION_26_8();
LABEL_98:
            OUTLINED_FUNCTION_21_14();
            goto LABEL_99;
          }
        }

        else
        {
        }
      }
    }

    if (qword_1EDD5D8A8 == -1)
    {
LABEL_94:
      v204 = sub_1D560C758();
      __swift_project_value_buffer(v204, qword_1EDD76DC8);
      v205 = v266;
      (a1)(v266, v314, v85);
      OUTLINED_FUNCTION_26_8();
      swift_unknownObjectRetain();
      v206 = sub_1D560C738();
      v207 = sub_1D56156C8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v206, v207))
      {
        v208 = swift_slowAlloc();
        v209 = swift_slowAlloc();
        v338 = a1;
        v339 = v209;
        *v208 = 136315394;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EBF50, &unk_1D561F550);
        v210 = sub_1D5614DB8();
        v212 = sub_1D4E6835C(v210, v211, &v339);

        *(v208 + 4) = v212;
        *(v208 + 12) = 2080;
        v213 = sub_1D560D8A8();
        v215 = v214;
        v88(v205, v301);
        v216 = sub_1D4E6835C(v213, v215, &v339);

        *(v208 + 14) = v216;
        _os_log_impl(&dword_1D4E3F000, v206, v207, "No catalogID, libraryID, or deviceLocalID was found from underlying identifier set %s. A MusicIdentifierSet with empty string, for type %s, is being used.", v208, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1DA6ED200](v209, -1, -1);
        MEMORY[0x1DA6ED200](v208, -1, -1);
      }

      else
      {

        v88(v205, v85);
      }

      v217 = OUTLINED_FUNCTION_24_15();
      v218(v217);
      goto LABEL_98;
    }

LABEL_144:
    swift_once();
    goto LABEL_94;
  }

  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v166 = OUTLINED_FUNCTION_1_30();
      v167(v166);
      v168 = OUTLINED_FUNCTION_0_24();
      v169(v168);
      OUTLINED_FUNCTION_7_22();
      sub_1D560D7F8();
      break;
    case 2u:
      v154 = OUTLINED_FUNCTION_1_30();
      v155(v154);
      v156 = OUTLINED_FUNCTION_0_24();
      v157(v156);
      OUTLINED_FUNCTION_7_22();
      sub_1D560D678();
      break;
    case 3u:
      v158 = v265;
      v159 = v267;
      v160 = OUTLINED_FUNCTION_61();
      v161 = v305;
      v162(v160);
      (*(v158 + 16))(v264[1], v159, v161);
      OUTLINED_FUNCTION_5_14();
      v163 = OUTLINED_FUNCTION_31_14();
      v164(v163);
      OUTLINED_FUNCTION_3_16();
      OUTLINED_FUNCTION_2_10();
      v165();
      sub_1D560D5B8();
      (*(v158 + 8))(v159, v161);
      break;
    case 4u:
      v150 = OUTLINED_FUNCTION_1_30();
      v151(v150);
      v152 = OUTLINED_FUNCTION_0_24();
      v153(v152);
      OUTLINED_FUNCTION_7_22();
      sub_1D560D598();
      break;
    default:
      v123 = v271;
      v124 = v269;
      v125 = v297;
      (*(v271 + 32))(v269, v114, v297);
      (*(v123 + 16))(v264[0], v124, v125);
      v126 = OUTLINED_FUNCTION_1_30();
      v127(v126);
      v128 = OUTLINED_FUNCTION_0_24();
      v129(v128);
      sub_1D560D798();
      (*(v123 + 8))(v124, v125);
      break;
  }

LABEL_100:
  sub_1D560D808();
  if (v219)
  {
  }

  else if (v116)
  {
    sub_1D560EED8();
    sub_1D560D818();
  }

  v220 = v291;
  sub_1D560D7A8();
  v221 = v297;
  v222 = __swift_getEnumTagSinglePayload(v220, 1, v297);
  sub_1D4E7661C(v220, &unk_1EC7F1970, &qword_1D561F4A0);
  if (v222 == 1 && v331)
  {
    v223 = v331;
    v224 = v274;
    sub_1D517FD2C(v223);
    __swift_storeEnumTagSinglePayload(v224, 0, 1, v221);
    sub_1D560D7B8();
  }

  v225 = v292;
  sub_1D560D5C8();
  v226 = __swift_getEnumTagSinglePayload(v225, 1, v305);
  sub_1D4E7661C(v225, &unk_1EC7EBF20, &unk_1D561F530);
  if (v226 == 1 && v329)
  {
    v227 = v329;
    [v227 value];
    sub_1D560EF08();
    OUTLINED_FUNCTION_22_13();
    v228 = [v227 databaseID];
    sub_1D5614D68();
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_21_14();
    v229 = sub_1D560EED8();
    OUTLINED_FUNCTION_9_17(v229, v230);

    OUTLINED_FUNCTION_14_13();
    sub_1D560D5D8();
  }

  if ([a1 musicKit_cloudID])
  {
    sub_1D560EF08();
    sub_1D560D778();
  }

  v231 = [a1 musicKit_cloudAlbumLibraryID];
  if (v231)
  {
    v232 = v231;
    sub_1D5614D68();
    OUTLINED_FUNCTION_22_13();

    OUTLINED_FUNCTION_222();
    sub_1D560EED8();
    sub_1D560D698();
  }

  if ([a1 musicKit_reportingAdamID])
  {
    sub_1D560EF08();
    sub_1D560D658();
  }

  if ([a1 musicKit_purchasedAdamID])
  {
    sub_1D560EF08();
    sub_1D560D638();
  }

  if ([a1 musicKit_assetAdamID])
  {
    sub_1D560EF08();
    sub_1D560D578();
  }

  v233 = [a1 musicKit_deviceLocalID];
  if (v233)
  {
    v234 = v233;
    [v234 value];
    sub_1D560EF08();
    OUTLINED_FUNCTION_22_13();
    v235 = [v234 databaseID];
    sub_1D5614D68();
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_21_14();
    v236 = sub_1D560EED8();
    OUTLINED_FUNCTION_9_17(v236, v237);

    OUTLINED_FUNCTION_14_13();
    sub_1D560D5D8();
  }

  v238 = [a1 musicKit_formerIDs];
  if (v238)
  {
    v239 = v238;
    v240 = sub_1D5615168();

    v241 = *(v240 + 16);
    if (v241)
    {
      v339 = MEMORY[0x1E69E7CC0];
      sub_1D4F03CA4(0, v241, 0);
      v242 = v339;
      a1 = (v240 + 40);
      do
      {

        v243 = sub_1D560EED8();
        v245 = v244;
        v339 = v242;
        v247 = *(v242 + 16);
        v246 = *(v242 + 24);
        if (v247 >= v246 >> 1)
        {
          sub_1D4F03CA4(v246 > 1, v247 + 1, 1);
          v242 = v339;
        }

        *(v242 + 16) = v247 + 1;
        v248 = v242 + 16 * v247;
        *(v248 + 32) = v243;
        *(v248 + 40) = v245;
        a1 += 2;
        --v241;
      }

      while (v241);

      OUTLINED_FUNCTION_26_8();
      OUTLINED_FUNCTION_21_14();
    }

    else
    {

      v242 = MEMORY[0x1E69E7CC0];
    }

    sub_1D52B595C(v242);
    sub_1D560D7D8();
  }

  v249 = [a1 musicKit_containedDeviceLocalID];
  if (v249)
  {
    v250 = v249;
    [v250 value];
    sub_1D560EF08();
    OUTLINED_FUNCTION_22_13();
    v251 = [v250 databaseID];
    sub_1D5614D68();
    OUTLINED_FUNCTION_34_11();
    OUTLINED_FUNCTION_85_0();
    OUTLINED_FUNCTION_21_14();
    v252 = sub_1D560EED8();
    OUTLINED_FUNCTION_9_17(v252, v253);

    OUTLINED_FUNCTION_14_13();
    sub_1D560D6D8();
  }

  v254 = [a1 musicKit_playbackID];
  if (v254)
  {
    v255 = v254;
    sub_1D5614D68();
    OUTLINED_FUNCTION_22_13();

    OUTLINED_FUNCTION_222();
    sub_1D560EED8();
    sub_1D560D558();
  }

  if ([a1 musicKit_syncID])
  {
    sub_1D560EF08();
    sub_1D560D738();
  }

  v256 = sub_1D560D8F8();
  if (dynamic_cast_existential_1_conditional(v256, v256, MEMORY[0x1E6974E58]))
  {
    v257 = [a1 musicKit_modelKind];
    if (v257)
    {
      v258 = v257;
      sub_1D560D268();

      sub_1D560D5F8();
    }
  }

  v259 = v294;
  sub_1D4F43D5C(v294, v293, &unk_1EC7EBF30, &qword_1D561C8C0);
  sub_1D560D508();
  swift_unknownObjectRelease();

  sub_1D4E7661C(v259, &unk_1EC7EBF30, &qword_1D561C8C0);
  (*(v299 + 8))(v310, v306);
  (*(v303 + 8))(v314, v301);
  return sub_1D4E7661C(v337, &unk_1EC7EBF40, &unk_1D561F540);
}