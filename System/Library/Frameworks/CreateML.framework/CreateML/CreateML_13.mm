uint64_t sub_237AEE4A0(uint64_t a1, uint64_t a2, int *a3)
{
  OUTLINED_FUNCTION_5_31();
  sub_237C065CC();
  OUTLINED_FUNCTION_135();
  if (*(v6 + 84) == v3)
  {
    v7 = OUTLINED_FUNCTION_7_3();
  }

  else
  {
    if (v3 == 254)
    {
      v9 = *(v4 + a3[5] + 48);
      if (v9 >= 2)
      {
        return OUTLINED_FUNCTION_53_7(v9);
      }

      else
      {
        return 0;
      }
    }

    sub_237C0697C();
    OUTLINED_FUNCTION_135();
    if (*(v12 + 84) == v3)
    {
      v8 = v11;
      v13 = a3[7];
    }

    else
    {
      v8 = sub_237C0688C();
      v13 = a3[8];
    }

    v7 = v4 + v13;
  }

  return __swift_getEnumTagSinglePayload(v7, v3, v8);
}

void sub_237AEE5B8(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  OUTLINED_FUNCTION_5_31();
  sub_237C065CC();
  OUTLINED_FUNCTION_135();
  if (*(v8 + 84) == a3)
  {
    OUTLINED_FUNCTION_47_10();
  }

  else
  {
    if (a3 == 254)
    {
      *(v5 + a4[5] + 48) = v4 + 1;
      return;
    }

    sub_237C0697C();
    OUTLINED_FUNCTION_135();
    if (*(v9 + 84) != a3)
    {
      sub_237C0688C();
    }
  }

  OUTLINED_FUNCTION_55_7();

  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t sub_237AEE6B0(uint64_t a1)
{
  result = sub_237C065CC();
  if (v2 <= 0x3F)
  {
    result = sub_237C0697C();
    if (v3 <= 0x3F)
    {
      result = sub_237C0688C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237AEE75C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_237C065CC();
    if (v3 <= 0x3F)
    {
      result = sub_237C0697C();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_237AEE7FC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v29 = *(a3 + 16);
  v5 = *(v29 - 8);
  v6 = *(v5 + 84);
  v28 = sub_237C065CC();
  v7 = *(v28 - 8);
  v8 = *(v7 + 84);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = sub_237C0697C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 84);
  if (v12 <= v9)
  {
    v13 = v9;
  }

  else
  {
    v13 = *(v11 + 84);
  }

  v14 = *(v7 + 80);
  v15 = *(v7 + 64);
  v16 = *(v11 + 80);
  if (!a2)
  {
    return 0;
  }

  v17 = v10;
  v18 = *(v5 + 64) + v14;
  if (a2 <= v13)
  {
LABEL_28:
    if (v6 == v13)
    {
      v26 = a1;
      v12 = v6;
      v17 = v29;
    }

    else
    {
      v26 = ((a1 + v18) & ~v14);
      if (v8 == v13)
      {
        v12 = v8;
        v17 = v28;
      }

      else
      {
        v26 = ((v26 + v15 + v16) & ~v16);
      }
    }

    return __swift_getEnumTagSinglePayload(v26, v12, v17);
  }

  v19 = ((v15 + v16 + (v18 & ~v14)) & ~v16) + *(*(v10 - 8) + 64);
  v20 = 8 * v19;
  if (v19 <= 3)
  {
    v22 = ((a2 - v13 + ~(-1 << v20)) >> v20) + 1;
    if (HIWORD(v22))
    {
      v21 = *(a1 + v19);
      if (!v21)
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v22 > 0xFF)
    {
      v21 = *(a1 + v19);
      if (!*(a1 + v19))
      {
        goto LABEL_27;
      }

      goto LABEL_17;
    }

    if (v22 < 2)
    {
LABEL_27:
      if (v13)
      {
        goto LABEL_28;
      }

      return 0;
    }
  }

  v21 = *(a1 + v19);
  if (!*(a1 + v19))
  {
    goto LABEL_27;
  }

LABEL_17:
  v23 = (v21 - 1) << v20;
  if (v19 > 3)
  {
    v23 = 0;
  }

  if (v19)
  {
    if (v19 <= 3)
    {
      v24 = v19;
    }

    else
    {
      v24 = 4;
    }

    switch(v24)
    {
      case 2:
        v25 = *a1;
        break;
      case 3:
        v25 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v25 = *a1;
        break;
      default:
        v25 = *a1;
        break;
    }
  }

  else
  {
    v25 = 0;
  }

  return v13 + (v25 | v23) + 1;
}

void sub_237AEEAE0(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v32 = *(a4 + 16);
  v6 = *(v32 - 8);
  v7 = *(v6 + 84);
  v31 = sub_237C065CC();
  v8 = *(v31 - 8);
  v9 = *(v8 + 84);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v8 + 84);
  }

  v11 = sub_237C0697C();
  v12 = *(v11 - 8);
  v13 = *(v12 + 84);
  if (v13 <= v10)
  {
    v14 = v10;
  }

  else
  {
    v14 = *(v12 + 84);
  }

  v15 = *(v8 + 80);
  v16 = *(v6 + 64) + v15;
  v17 = *(v8 + 64);
  v18 = *(v12 + 80);
  v19 = ((v17 + v18 + (v16 & ~v15)) & ~v18) + *(*(v11 - 8) + 64);
  v20 = 8 * v19;
  if (a3 <= v14)
  {
    v23 = 0;
    v21 = a1;
    v22 = a2;
  }

  else
  {
    v21 = a1;
    v22 = a2;
    if (v19 <= 3)
    {
      v27 = ((a3 - v14 + ~(-1 << v20)) >> v20) + 1;
      if (HIWORD(v27))
      {
        v23 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v23 = v28;
        }

        else
        {
          v23 = 0;
        }
      }
    }

    else
    {
      v23 = 1;
    }
  }

  if (v14 < v22)
  {
    v24 = ~v14 + v22;
    if (v19 < 4)
    {
      v25 = (v24 >> v20) + 1;
      if (v19)
      {
        v29 = v24 & ~(-1 << v20);
        bzero(v21, v19);
        if (v19 == 3)
        {
          *v21 = v29;
          v21[2] = BYTE2(v29);
        }

        else if (v19 == 2)
        {
          *v21 = v29;
        }

        else
        {
          *v21 = v24;
        }
      }
    }

    else
    {
      bzero(v21, v19);
      *v21 = v24;
      v25 = 1;
    }

    switch(v23)
    {
      case 1:
        v21[v19] = v25;
        return;
      case 2:
        *&v21[v19] = v25;
        return;
      case 3:
        goto LABEL_48;
      case 4:
        *&v21[v19] = v25;
        return;
      default:
        return;
    }
  }

  v26 = ~v15;
  switch(v23)
  {
    case 1:
      v21[v19] = 0;
      if (!v22)
      {
        return;
      }

      goto LABEL_30;
    case 2:
      *&v21[v19] = 0;
      if (!v22)
      {
        return;
      }

      goto LABEL_30;
    case 3:
LABEL_48:
      __break(1u);
      JUMPOUT(0x237AEEE38);
    case 4:
      *&v21[v19] = 0;
      goto LABEL_29;
    default:
LABEL_29:
      if (v22)
      {
LABEL_30:
        if (v7 == v14)
        {
          v30 = v21;
          v13 = v7;
          v11 = v32;
        }

        else
        {
          v30 = &v21[v16] & v26;
          if (v9 == v14)
          {
            v13 = v9;
            v11 = v31;
          }

          else
          {
            v30 = (v30 + v17 + v18) & ~v18;
          }
        }

        __swift_storeEnumTagSinglePayload(v30, v22, v13, v11);
      }

      return;
  }
}

uint64_t sub_237AEEE60()
{
  _s13GraphCNNModelVMa(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_2_0();
  v4 = v3 - v2;
  v5 = OBJC_IVAR____TtCV8CreateML22MLHandActionClassifier8GraphCNN_model;
  swift_beginAccess();
  sub_237AF1B7C(v0 + v5, v4);
  OUTLINED_FUNCTION_8_31();
  sub_237AEE02C(v6, v7, &unk_237C120A8);
  OUTLINED_FUNCTION_31_13();
  sub_237C063CC();
  return sub_237AF1BD8(v4, _s13GraphCNNModelVMa);
}

void sub_237AEEF64()
{
  OUTLINED_FUNCTION_153();
  v2 = v1;
  v4 = v3;
  v57 = sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_0();
  v9 = v8;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  v12 = v47 - v11;
  v13 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  (*(v15 + 16))(v4, v2, v13);
  v52 = _s13GraphCNNModelVMa(0);
  v17 = *(v52 + 36);
  v55 = v0;
  v54 = *(v0 + v17);
  if (v54 == 1)
  {
    sub_237C0664C();
    v18 = OUTLINED_FUNCTION_31_13();
    v19(v18);
    v20 = OUTLINED_FUNCTION_14_22();
    v21(v20);
  }

  sub_237C065EC();
  v22 = *(v15 + 8);
  v23 = OUTLINED_FUNCTION_31_13();
  v22(v23);
  v56 = *(v15 + 32);
  v24 = OUTLINED_FUNCTION_14_22();
  v25(v24);
  sub_237C0679C();
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v26 = v12;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_237C0BC00;
  *(v27 + 32) = sub_237C0612C();
  v53 = v26;
  *(v27 + 40) = sub_237C0612C();
  *(v27 + 48) = xmmword_237C11B20;
  sub_237C0611C();
  sub_237C0681C();
  v28 = *(v6 + 8);
  v49 = v6 + 8;
  v50 = v28;
  v28(v9, v57);
  v29 = OUTLINED_FUNCTION_31_13();
  v22(v29);
  v30 = OUTLINED_FUNCTION_14_22();
  v31 = v56;
  v56(v30);
  sub_237AEF400();
  v32 = OUTLINED_FUNCTION_31_13();
  v22(v32);
  v47[1] = v15 + 8;
  v48 = v22;
  v33 = OUTLINED_FUNCTION_14_22();
  v31(v33);
  v52 = *(v52 + 32);
  _s5TorsoVMa(0);
  sub_237AEE02C(&qword_27DE9CC28, _s5TorsoVMa, &unk_237C11FD4);
  sub_237C063CC();
  v34 = OUTLINED_FUNCTION_31_13();
  v22(v34);
  v35 = OUTLINED_FUNCTION_14_22();
  v31(v35);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_237C0B670;
  sub_237C0679C();
  v37 = sub_237C0612C();
  v38 = v57;
  v39 = v50;
  v50(v9, v57);
  *(v36 + 32) = v37;
  *(v36 + 40) = -1;
  sub_237C0611C();
  sub_237C0681C();
  v40 = v48;
  v41 = v9;
  v42 = v56;
  v39(v41, v38);
  v43 = OUTLINED_FUNCTION_31_13();
  v40(v43);
  v44 = OUTLINED_FUNCTION_14_22();
  v55 = v15 + 32;
  v42(v44);
  if (v54)
  {
    sub_237C0689C();
    v39(v53, v38);
    v45 = OUTLINED_FUNCTION_31_13();
    v40(v45);
    v46 = OUTLINED_FUNCTION_14_22();
    v42(v46);
  }

  else
  {
    v39(v53, v38);
  }

  OUTLINED_FUNCTION_150();
}

void sub_237AEF400()
{
  OUTLINED_FUNCTION_153();
  v77[3] = v2;
  sub_237C0610C();
  OUTLINED_FUNCTION_0();
  v91 = v3;
  v92 = v4;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_14_0();
  v81 = v5;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_138();
  v88 = v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_124_0();
  v9 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_0();
  v84 = v13;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_138();
  v77[1] = v15;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v16);
  v18 = v77 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v77 - v20;
  sub_237C065EC();
  v77[2] = sub_237C0697C();
  v90 = v0;
  sub_237C063CC();
  v22 = v11 + 8;
  v23 = *(v11 + 8);
  v24 = OUTLINED_FUNCTION_29_11();
  v23(v24);
  v80 = v11;
  v26 = *(v11 + 32);
  v25 = v11 + 32;
  v27 = OUTLINED_FUNCTION_38_9();
  v26(v27);
  sub_237C065EC();
  v28 = OUTLINED_FUNCTION_29_11();
  v23(v28);
  v29 = OUTLINED_FUNCTION_38_9();
  v26(v29);
  sub_237C0665C();
  v30 = OUTLINED_FUNCTION_29_11();
  v85 = v22;
  v87 = v23;
  v23(v30);
  v78 = v9;
  v86 = v26;
  (v26)(v21, v18, v9);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ABB8, &unk_237C0D660);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_237C0B670;
  sub_237C0679C();
  v32 = sub_237C0612C();
  v33 = v92 + 8;
  v34 = *(v92 + 8);
  v79 = v1;
  v35 = OUTLINED_FUNCTION_42_9();
  v36 = v34(v35);
  OUTLINED_FUNCTION_56_6(v36);
  v37 = sub_237C0612C();
  v38 = OUTLINED_FUNCTION_42_9();
  v92 = v33;
  v89 = v34;
  v39 = v34(v38);
  if ((v32 * v37) >> 64 != (v32 * v37) >> 63)
  {
    __break(1u);
    goto LABEL_9;
  }

  *(v31 + 32) = v32 * v37;
  v40 = v79;
  OUTLINED_FUNCTION_56_6(v39);
  v41 = sub_237C0612C();
  v42 = OUTLINED_FUNCTION_42_9();
  v43 = v89;
  v89(v42);
  *(v31 + 40) = v41;
  sub_237C0611C();
  sub_237C0681C();
  v44 = OUTLINED_FUNCTION_42_9();
  v43(v44);
  v45 = v78;
  v46 = v25;
  v47 = v87;
  (v87)(v21, v78);
  v48 = OUTLINED_FUNCTION_38_9();
  v49 = v86;
  v86(v48);
  v50 = _s13GraphCNNModelVMa(0);
  sub_237C0638C();
  sub_237C063CC();
  v51 = OUTLINED_FUNCTION_29_11();
  v47(v51);
  v77[0] = v18;
  v82 = v46;
  v49(v21, v18, v45);
  (*(v80 + 16))(v84, v21, v45);
  v52 = swift_allocObject();
  *(v52 + 16) = xmmword_237C0B680;
  v53 = v81;
  sub_237C0679C();
  v54 = sub_237C0612C();
  v55 = v89;
  v56 = (v89)(v53, v91);
  v81 = v50;
  v57 = *(v90 + *(v50 + 40));
  if (!v57)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v54 != 0x8000000000000000 || v57 != -1)
  {
    *(v52 + 32) = v54 / v57;
    *(v52 + 40) = v57;
    OUTLINED_FUNCTION_56_6(v56);
    v59 = sub_237C0612C();
    v55(v40, v91);
    *(v52 + 48) = v59;
    sub_237C0611C();
    v60 = v84;
    sub_237C0681C();
    v61 = OUTLINED_FUNCTION_128();
    (v55)(v61);
    v62 = v87;
    (v87)(v60, v45);
    v63 = OUTLINED_FUNCTION_29_11();
    v62(v63);
    v64 = OUTLINED_FUNCTION_28_11();
    v65 = v55;
    v66 = v86;
    v67 = (v86)(v64);
    OUTLINED_FUNCTION_56_6(v67);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_237C0BC00;
    *(v68 + 32) = sub_237C0612C();
    *(v68 + 40) = sub_237C0612C();
    *(v68 + 48) = sub_237C0612C() / 16;
    *(v68 + 56) = 16;
    v69 = v88;
    sub_237C0611C();
    sub_237C0681C();
    v65(v69, v91);
    v70 = OUTLINED_FUNCTION_29_11();
    v62(v70);
    v71 = OUTLINED_FUNCTION_28_11();
    v66(v71);
    sub_237C065EC();
    v72 = OUTLINED_FUNCTION_29_11();
    v62(v72);
    v73 = OUTLINED_FUNCTION_28_11();
    v66(v73);
    sub_237C063CC();
    v74 = OUTLINED_FUNCTION_29_11();
    v62(v74);
    v75 = OUTLINED_FUNCTION_28_11();
    v66(v75);
    sub_237C062FC();
    v65(v40, v91);
    v76 = OUTLINED_FUNCTION_29_11();
    v62(v76);
    OUTLINED_FUNCTION_150();
    return;
  }

LABEL_10:
  __break(1u);
}

uint64_t sub_237AEFAD8(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);

  return sub_237C0642C();
}

uint64_t sub_237AEFB54(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9C7E8, _s13GraphCNNModelVMa, &unk_237C120A8);

  return sub_237C0643C();
}

uint64_t sub_237AEFBD8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_20(v2);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_52_8();
  v4 = _s16InvertedResidualVMa(0);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  sub_237C0623C();
  OUTLINED_FUNCTION_87();
  v9 = sub_237C0616C();
  v10 = OUTLINED_FUNCTION_2_52();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
  OUTLINED_FUNCTION_17_3();
  v14 = sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_1_51(32, v15, v16, v17, v18, v19, v20, v21, 1, 1, v14, 0);
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v22 = v266;
  *(v22 + 16) = v267;
  *(v22 + 32) = v268;
  *(v22 + 48) = v269;
  v23 = OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_7_32(v23, v24, v25, v26);
  v27 = sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15(v28, v29, v30, v31, v32, v33, v34, v35, 1, 1, v27, 0);
  v36 = sub_237C0622C();
  v37 = sub_237C0621C();
  OUTLINED_FUNCTION_34_11(v36, v37, v38, v39);
  OUTLINED_FUNCTION_17_3();
  sub_237C0687C();
  sub_237AF1B7C(v8, a1);
  v40 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v40, v41, v42, v9);
  v43 = sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  v265 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  OUTLINED_FUNCTION_1_51(8, v44, v45, v46, v47, v48, v49, v50, 1, 1, v43, 0);
  v51 = sub_237C0622C();
  v52 = sub_237C0621C();
  OUTLINED_FUNCTION_34_11(v51, v52, v53, v54);
  sub_237AF1BD8(v8, _s16InvertedResidualVMa);
  v259 = _s17SingleStreamBlockVMa(0);
  v55 = a1 + *(v259 + 20);
  v56 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v56, v57, v58, v9);
  sub_237C0620C();
  v59 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v59, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51(16, v60, v61, v62, v63, v64, v65, v66, v254, v258, v259, a1);
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v67 = v270;
  *(v67 + 16) = v271;
  *(v67 + 32) = v272;
  *(v67 + 48) = v273;
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v68 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v68, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15(v69, v70, v71, v72, v73, v74, v75, v76, _s16InvertedResidualVMa, v265, v266, *(&v266 + 1));
  sub_237C0622C();
  v77 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v77, v78, v79);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v8, v55);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v80 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v80, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_1_51(16, v81, v82, v83, v84, v85, v86, v87, v267, *(&v267 + 1), v268, *(&v268 + 1));
  sub_237C0622C();
  v88 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v89, v90, v88, v88);
  sub_237AF1BD8(v8, v264);
  v255 = v262 + v260[6];
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v91 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v91, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51(32, v92, v93, v94, v95, v96, v97, v98, v269, v270, *(&v270 + 1), v271);
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v99 = v274;
  *(v99 + 16) = v275;
  *(v99 + 32) = v276;
  *(v99 + 48) = v277;
  v100 = OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_7_32(v100, v101, v102, v103);
  sub_237C0620C();
  v104 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v104, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15(v105, v106, v107, v108, v109, v110, v111, v112, *(&v271 + 1), v272, *(&v272 + 1), v273);
  v113 = sub_237C0622C();
  v114 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v114, v115, v116);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v8, v255);
  v117 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v117, v118, v119, v9);
  sub_237C0620C();
  v120 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v120, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_1_51(32, v121, v122, v123, v124, v125, v126, v127, 1, 1, v113, 0);
  sub_237C0622C();
  v128 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v129, v130, v128, v128);
  sub_237AF1BD8(v8, v264);
  v256 = v262 + v260[7];
  v131 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v131, v132, v133, v9);
  sub_237C0620C();
  v134 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v134, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51(64, v135, v136, v137, v138, v139, v140, v141, v274, *(&v274 + 1), v275, *(&v275 + 1));
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v142 = v278;
  *(v142 + 16) = v279;
  *(v142 + 32) = v280;
  *(v142 + 48) = v281;
  v143 = OUTLINED_FUNCTION_2_52();
  OUTLINED_FUNCTION_7_32(v143, v144, v145, v146);
  sub_237C0620C();
  v147 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v147, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_26_15(v148, v149, v150, v151, v152, v153, v154, v155, v276, *(&v276 + 1), v277, v278);
  sub_237C0622C();
  v156 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v156, v157, v158);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v8, v256);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v159 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v159, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_30_15();
  sub_237C0652C();
  sub_237C0622C();
  v160 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v161, v162, v160, v160);
  sub_237AF1BD8(v8, v264);
  v163 = v262 + v260[8];
  v164 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v164, v165, v166, v9);
  sub_237C0620C();
  v167 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v167, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51(128, v168, v169, v170, v171, v172, v173, v174, *(&v278 + 1), v279, *(&v279 + 1), v280);
  OUTLINED_FUNCTION_4_46();
  v175 = v163 + *(v5 + 28);
  *v175 = v282;
  *(v175 + 16) = v283;
  *(v175 + 32) = v284;
  *(v175 + 48) = v285;
  v176 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v176, v177, v178, v9);
  sub_237C0620C();
  v179 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v179, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15(v180, v181, v182, v183, v184, v185, v186, v187, *(&v280 + 1), v281, v282, *(&v282 + 1));
  sub_237C0622C();
  v188 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v189, v190, v188, v188);
  OUTLINED_FUNCTION_17_3();
  sub_237C0687C();
  v257 = v262 + v260[9];
  v191 = OUTLINED_FUNCTION_1_38();
  OUTLINED_FUNCTION_7_32(v191, v192, v193, v9);
  sub_237C0620C();
  v194 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v194, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_12_28();
  OUTLINED_FUNCTION_1_51(128, v195, v196, v197, v198, v199, v200, v201, v283, *(&v283 + 1), v284, *(&v284 + 1));
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v202 = v286;
  *(v202 + 16) = v287;
  *(v202 + 32) = v288;
  *(v202 + 48) = v289;
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v203 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v203, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_9_32();
  OUTLINED_FUNCTION_30_15();
  OUTLINED_FUNCTION_26_15(v204, v205, v206, v207, v208, v209, v210, v211, v285, v286, *(&v286 + 1), v287);
  sub_237C0622C();
  v212 = sub_237C0621C();
  OUTLINED_FUNCTION_16_19(v212, v213, v214);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v8, v257);
  OUTLINED_FUNCTION_0_53();
  sub_237C0620C();
  v215 = OUTLINED_FUNCTION_23_21();
  sub_2379D9054(v215, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_22_18();
  OUTLINED_FUNCTION_30_15();
  sub_237C0652C();
  sub_237C0622C();
  v216 = sub_237C0621C();
  OUTLINED_FUNCTION_21_22(v217, v218, v216, v216);
  sub_237AF1BD8(v8, v264);
  v263 = v262 + v260[10];
  OUTLINED_FUNCTION_0_53();
  v219 = sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_1_51(256, v220, v221, v222, v223, v224, v225, v226, 1, 1, v219, 0);
  OUTLINED_FUNCTION_4_46();
  OUTLINED_FUNCTION_36_10();
  *v227 = v290;
  *(v227 + 16) = v291;
  *(v227 + 32) = v292;
  *(v227 + 48) = v293;
  OUTLINED_FUNCTION_0_53();
  v228 = sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_6_37();
  OUTLINED_FUNCTION_26_15(v229, v230, v231, v232, v233, v234, v235, v236, 1, 1, v228, 0);
  v237 = sub_237C0622C();
  v238 = sub_237C0621C();
  OUTLINED_FUNCTION_34_11(v237, v238, v239, v240);
  OUTLINED_FUNCTION_15_25();
  sub_237AF1B7C(v8, v263);
  OUTLINED_FUNCTION_0_53();
  v241 = sub_237C0620C();
  sub_2379D9054(v1, &qword_27DE9ACC8, &qword_237C10CF0);
  OUTLINED_FUNCTION_1_51(256, v242, v243, v244, v245, v246, v247, v248, 1, 1, v241, 0);
  v249 = sub_237C0622C();
  v250 = sub_237C0621C();
  OUTLINED_FUNCTION_34_11(v249, v250, v251, v252);
  return sub_237AF1BD8(v8, v264);
}

uint64_t sub_237AF07C8(uint64_t a1)
{
  v2 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  _s17SingleStreamBlockVMa(0);
  sub_237AEE02C(&qword_27DE9CC30, _s17SingleStreamBlockVMa, &unk_237C11EA0);
  sub_237C063CC();
  sub_237C063CC();
  v9 = *(v4 + 8);
  v10 = OUTLINED_FUNCTION_58_0();
  v9(v10);
  (*(v4 + 32))(v8, v1, v2);
  _s5TorsoVMa(0);
  sub_237C0638C();
  sub_237C063CC();
  v11 = OUTLINED_FUNCTION_58_0();
  return (v9)(v11);
}

uint64_t sub_237AF096C(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9CC28, _s5TorsoVMa, &unk_237C11FD4);

  return sub_237C0642C();
}

uint64_t sub_237AF09E8(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9CC28, _s5TorsoVMa, &unk_237C11FD4);

  return sub_237C0643C();
}

void sub_237AF0A6C()
{
  OUTLINED_FUNCTION_153();
  v25[4] = v0;
  v32 = v1;
  v2 = sub_237C0683C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = v25 - v6;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_138();
  v26 = v9;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_138();
  v28 = v11;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_58();
  v30 = v13;
  v14 = _s17SingleStreamBlockVMa(0);
  v15 = v14[9];
  v31 = v14[10];
  v29 = v15;
  v16 = v14[7];
  v27 = v14[8];
  v25[2] = v14[6];
  v25[3] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA80, &qword_237C11B78);
  sub_2379D9224(&qword_27DE9CC38, &qword_27DE9CA80, &qword_237C11B78, &unk_237C11C84);
  sub_237C063CC();
  OUTLINED_FUNCTION_42_9();
  sub_237C063CC();
  v18 = *(v3 + 8);
  v19 = OUTLINED_FUNCTION_128();
  v18(v19);
  v25[1] = v17;
  sub_237C063CC();
  v20 = OUTLINED_FUNCTION_58_0();
  v21 = v2;
  v18(v20);
  v22 = v26;
  sub_237C063CC();
  (v18)(v7, v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CA88, &unk_237C11B80);
  sub_2379D9224(&qword_27DE9CC40, &qword_27DE9CA88, &unk_237C11B80, &unk_237C11DCC);
  v23 = v28;
  sub_237C063CC();
  (v18)(v22, v21);
  v24 = v30;
  sub_237C063CC();
  (v18)(v23, v21);
  OUTLINED_FUNCTION_58_0();
  sub_237C063CC();
  (v18)(v24, v21);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AF0DA4(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9CC30, _s17SingleStreamBlockVMa, &unk_237C11EA0);

  return sub_237C0642C();
}

uint64_t sub_237AF0E20(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9CC30, _s17SingleStreamBlockVMa, &unk_237C11EA0);

  return sub_237C0643C();
}

void sub_237AF0EA4()
{
  OUTLINED_FUNCTION_153();
  sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_124_0();
  sub_237C065CC();
  sub_237C063CC();
  _s16InvertedResidualVMa(0);
  sub_237C063CC();
  v4 = *(v1 + 8);
  v5 = OUTLINED_FUNCTION_128();
  v4(v5);
  v6 = *(v1 + 32);
  v7 = OUTLINED_FUNCTION_39_10();
  v6(v7);
  sub_237C063CC();
  v8 = OUTLINED_FUNCTION_128();
  v4(v8);
  v9 = OUTLINED_FUNCTION_39_10();
  v6(v9);
  sub_237C0697C();
  sub_237C063CC();
  v10 = OUTLINED_FUNCTION_128();
  v4(v10);
  v11 = OUTLINED_FUNCTION_39_10();
  v6(v11);
  sub_237C0688C();
  sub_237C063CC();
  v12 = OUTLINED_FUNCTION_128();
  v4(v12);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AF10B8(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9CAA8, _s16InvertedResidualVMa, &unk_237C11F00);

  return sub_237C0642C();
}

uint64_t sub_237AF1134(uint64_t a1, uint64_t a2)
{
  sub_237AEE02C(&qword_27DE9CAA8, _s16InvertedResidualVMa, &unk_237C11F00);

  return sub_237C0643C();
}

uint64_t sub_237AF11B8(uint64_t a1, uint64_t a2)
{
  v3 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_52_8();
  sub_237C063CC();
  sub_237C066FC();
  sub_237C062FC();
  return (*(v5 + 8))(v2, v3);
}

uint64_t sub_237AF12A0(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_237C0642C();
}

uint64_t sub_237AF1300(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_237C0643C();
}

void sub_237AF1368()
{
  OUTLINED_FUNCTION_153();
  v2 = sub_237C0683C();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_40_11();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_124_0();
  sub_237C063CC();
  sub_237C065CC();
  sub_237C063CC();
  sub_237C0697C();
  sub_237C063CC();
  v11 = *(v4 + 8);
  v11(v8, v2);
  sub_237C066FC();
  v11(v1, v2);
  sub_237C062FC();
  v11(v0, v2);
  OUTLINED_FUNCTION_150();
}

uint64_t sub_237AF14F8(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_237C0642C();
}

uint64_t sub_237AF1558(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return sub_237C0643C();
}

uint64_t sub_237AF19C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1A38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BEE0, &unk_237C12120);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1AA8(uint64_t a1, uint64_t a2)
{
  v4 = _s13GraphCNNModelVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1B0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C7B8, &unk_237C12110);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF1B7C(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_87();
  v5(v4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(a2, v2);
  return a2;
}

uint64_t sub_237AF1BD8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t OUTLINED_FUNCTION_1_51(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_237C0652C();
}

uint64_t OUTLINED_FUNCTION_4_46()
{

  return MEMORY[0x28218B660](1, 3, 1, 1, 0, 0, 1, 1);
}

uint64_t OUTLINED_FUNCTION_15_25()
{

  return sub_237C0687C();
}

uint64_t OUTLINED_FUNCTION_16_19(uint64_t a1, __n128 a2, __n128 a3)
{
  a2.n128_u32[0] = v5;
  a3.n128_u32[0] = v6;

  return MEMORY[0x28218BC28](v3, a1, a2, a3);
}

uint64_t OUTLINED_FUNCTION_21_22(__n128 a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  a1.n128_u32[0] = v6;
  a2.n128_u32[0] = v7;

  return MEMORY[0x28218BC28](v4, a4, a1, a2);
}

uint64_t OUTLINED_FUNCTION_26_15(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  return sub_237C0652C();
}

uint64_t OUTLINED_FUNCTION_34_11(uint64_t a1, uint64_t a2, __n128 a3, __n128 a4)
{
  a3.n128_u32[0] = v5;
  a4.n128_u32[0] = v6;

  return MEMORY[0x28218BC28](a1, a2, a3, a4);
}

uint64_t OUTLINED_FUNCTION_35_12(uint64_t a1, uint64_t a2)
{
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 2;

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_37_10@<X0>(uint64_t a1@<X8>)
{
  *(v1 - 112) = 0xD000000000000019;
  *(v1 - 104) = (a1 - 32) | 0x8000000000000000;
  return *(v1 - 120);
}

uint64_t OUTLINED_FUNCTION_56_6(uint64_t a1)
{

  return sub_237C0679C();
}

unint64_t MLSoundClassifier.ModelParameters.ModelAlgorithmType.description.getter()
{
  v1 = MLSoundClassifier.ModelParameters.FeatureExtractorType.description.getter();

  MEMORY[0x2383DC360](0xD000000000000012, 0x8000000237C18C70);

  return v1;
}

uint64_t static MLSoundClassifier.ModelParameters.ModelAlgorithmType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    if (*a1 == *a2)
    {
      v2 = *(a2 + 8);
    }

    else
    {
      v2 = 0;
    }

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v4 = *(a2 + 8);
    }

    else
    {
      v4 = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_237AF2008@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (*a1 == *a2)
  {
    if (*(a1 + 40) == *(a2 + 40))
    {
      if (*(a1 + 48) == *(a2 + 48))
      {
        if (*(a1 + 56) == *(a2 + 56))
        {
          if (*(a1 + 64) == *(a2 + 64))
          {
            v6 = *(a1 + 72);
            v7 = 1702195828;
            v8 = *(a2 + 72);
            if (*(a1 + 72))
            {
              v9 = 1702195828;
            }

            else
            {
              v9 = 0x65736C6166;
            }

            if (*(a1 + 72))
            {
              v10 = 0xE400000000000000;
            }

            else
            {
              v10 = 0xE500000000000000;
            }

            if (*(a2 + 72))
            {
              v11 = 0xE400000000000000;
            }

            else
            {
              v7 = 0x65736C6166;
              v11 = 0xE500000000000000;
            }

            if (v6 == v8)
            {
              v12 = 0;
            }

            else
            {
              v12 = 0x2065727574616546;
            }

            if (v6 == v8)
            {
              v13 = 0;
            }

            else
            {
              v13 = 0xEF676E696C616373;
            }

            if (v6 == v8)
            {
              v3 = 0;
            }

            else
            {
              v3 = v9;
            }

            if (v6 == v8)
            {
              v4 = 0;
            }

            else
            {
              v4 = v10;
            }

            if (v6 == v8)
            {
              result = 0;
            }

            else
            {
              result = v7;
            }

            if (v6 == v8)
            {
              v15 = 0;
            }

            else
            {
              v15 = v11;
            }
          }

          else
          {
            v13 = 0x8000000237C1B920;
            sub_237C08A6C();
            result = OUTLINED_FUNCTION_0_54();
            v12 = 0xD000000000000015;
          }
        }

        else
        {
          sub_237C08A6C();
          result = OUTLINED_FUNCTION_0_54();
          v13 = 0xE900000000000065;
          v12 = 0x7A69732070657453;
        }
      }

      else
      {
        v13 = 0xEA00000000007974;
        sub_237C08A6C();
        result = OUTLINED_FUNCTION_0_54();
        v12 = 0x6C616E657020324CLL;
      }
    }

    else
    {
      v13 = 0xEA00000000007974;
      v12 = 0x6C616E657020314CLL;
      sub_237C08A6C();
      result = OUTLINED_FUNCTION_0_54();
    }
  }

  else
  {
    v3 = sub_237C0924C();
    v4 = v16;
    result = sub_237C0924C();
    v13 = 0xEF736E6F69746172;
    v12 = 0x657469202E78614DLL;
  }

  *a3 = v12;
  a3[1] = v13;
  a3[2] = v3;
  a3[3] = v4;
  a3[4] = result;
  a3[5] = v15;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_54()
{

  return sub_237C08A6C();
}

id sub_237AF2238(uint64_t a1)
{
  v125[5] = *MEMORY[0x277D85DE8];
  v121 = sub_237C05ADC();
  v118 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v117 = &v116 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v119 = &v116 - v4;
  v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v116 - v9;
  v11 = type metadata accessor for MLTextClassifier.ModelAlgorithmType(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_237C085AC();
  v15 = type metadata accessor for MLTextClassifier.ModelParameters(0);
  v16 = (a1 + *(v15 + 36));
  if ((v16[1] & 1) == 0)
  {
    if (!*MEMORY[0x277CD89E8])
    {
      __break(1u);
      JUMPOUT(0x237AF2DF8);
    }

    v17 = *v16;
    *&v123 = *MEMORY[0x277CD89E8];
    type metadata accessor for CFString(0);
    sub_237AF2F68(&qword_27DE9A8A8, type metadata accessor for CFString, &unk_237C0B32C);
    OUTLINED_FUNCTION_5_40();
    sub_237C08E7C();
    *(&v124 + 1) = MEMORY[0x277D83B88];
    *&v123 = v17;
    v18 = OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52(v18);
    OUTLINED_FUNCTION_9_33();
  }

  v120 = v7;
  v19 = *(a1 + *(v15 + 20));
  if (v19)
  {
    v20 = v10;
    *&v123 = *MEMORY[0x277CD8880];
    v21 = v123;
    type metadata accessor for ConfigurationOptionsKey(0);
    OUTLINED_FUNCTION_0_55();
    sub_237AF2F68(v22, v23, &unk_237C0B370);
    v24 = v19;
    v25 = v21;
    v10 = v20;
    OUTLINED_FUNCTION_2_53();
    sub_237C08E7C();
    type metadata accessor for NLLanguage(0);
    *(&v124 + 1) = v26;
    *&v123 = v24;
    v27 = OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52(v27);
    OUTLINED_FUNCTION_9_33();
  }

  sub_237AF2EA4(a1, v13, type metadata accessor for MLTextClassifier.ModelAlgorithmType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = *v13;
      v30 = v13[8];
      *&v123 = *MEMORY[0x277CD8888];
      v31 = v123;
      type metadata accessor for ConfigurationOptionsKey(0);
      OUTLINED_FUNCTION_0_55();
      sub_237AF2F68(v32, v33, &unk_237C0B370);
      v34 = v31;
      OUTLINED_FUNCTION_5_40();
      sub_237C08E7C();
      if (v30)
      {
        v35 = sub_237ACB4EC();
        if (v36)
        {
          v37 = v35;
          swift_isUniquelyReferenced_nonNull_native();
          v122[0] = v14;
          v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
          OUTLINED_FUNCTION_10_32(v38);
          OUTLINED_FUNCTION_7_33();
          sub_2379E8F7C(v39 + v37 * v40);
          sub_2379DAD24((*(v14 + 56) + 32 * v37), &v123);
          sub_237C090CC();
        }

        else
        {
          v123 = 0u;
          v124 = 0u;
        }

        sub_2379E8F7C(v125);
        sub_237A286E0(&v123);
      }

      else
      {
        *(&v124 + 1) = MEMORY[0x277D83B88];
        *&v123 = v29;
        v70 = OUTLINED_FUNCTION_4_47();
        OUTLINED_FUNCTION_1_52(v70);
        OUTLINED_FUNCTION_9_33();
      }

      v75 = MEMORY[0x277CD8890];
      goto LABEL_26;
    }

    v53 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC58, &qword_237C12218) + 48)];
    v54 = *v53;
    v55 = v53[8];
    v56 = v10;
    sub_237AF2E40(v13, v10, v57);
    *&v123 = *MEMORY[0x277CD8888];
    v58 = v123;
    type metadata accessor for ConfigurationOptionsKey(0);
    v60 = v59;
    OUTLINED_FUNCTION_0_55();
    sub_237AF2F68(v61, v62, &unk_237C0B370);
    v63 = v58;
    OUTLINED_FUNCTION_2_53();
    sub_237C08E7C();
    if (v55)
    {
      v64 = sub_237ACB4EC();
      v65 = v120;
      if (v66)
      {
        v67 = v64;
        swift_isUniquelyReferenced_nonNull_native();
        v122[0] = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
        sub_237C090AC();
        OUTLINED_FUNCTION_7_33();
        sub_2379E8F7C(v68 + v67 * v69);
        sub_2379DAD24((*(&v124 + 1) + 32 * v67), &v123);
        sub_237C090CC();
      }

      else
      {
        v123 = 0u;
        v124 = 0u;
      }

      v73 = v56;
      sub_2379E8F7C(v125);
      sub_237A286E0(&v123);
      v74 = v121;
    }

    else
    {
      *(&v124 + 1) = MEMORY[0x277D83B88];
      *&v123 = v54;
      v72 = OUTLINED_FUNCTION_4_47();
      OUTLINED_FUNCTION_1_52(v72);
      OUTLINED_FUNCTION_9_33();
      v73 = v56;
      v65 = v120;
      v74 = v121;
    }

    *&v123 = *MEMORY[0x277CD88A0];
    v78 = v123;
    OUTLINED_FUNCTION_2_53();
    sub_237C08E7C();
    *(&v124 + 1) = MEMORY[0x277D839B0];
    LOBYTE(v123) = 1;
    v79 = OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52(v79);
    OUTLINED_FUNCTION_8_32();
    sub_237AF2EA4(v73, v65, type metadata accessor for MLTextClassifier.FeatureExtractorType);
    switch(__swift_getEnumTagSinglePayload(v65, 4, v74))
    {
      case 1u:
        *&v123 = *MEMORY[0x277CD8870];
        v97 = v123;
        OUTLINED_FUNCTION_2_53();
        sub_237C08E7C();
        v81 = MEMORY[0x277CD88C0];
        goto LABEL_39;
      case 2u:
      case 3u:
        *&v123 = *MEMORY[0x277CD8870];
        v80 = v123;
        OUTLINED_FUNCTION_2_53();
        sub_237C08E7C();
        v81 = MEMORY[0x277CD88B8];
        goto LABEL_39;
      case 4u:
        *&v123 = *MEMORY[0x277CD8870];
        v82 = v123;
        OUTLINED_FUNCTION_2_53();
        sub_237C08E7C();
        v81 = MEMORY[0x277CD88A8];
LABEL_39:
        v98 = *v81;
        type metadata accessor for EmbeddingType(0);
        *(&v124 + 1) = v99;
        *&v123 = v98;
        OUTLINED_FUNCTION_6_38();
        v100 = v98;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_47(isUniquelyReferenced_nonNull_native);
        OUTLINED_FUNCTION_8_32();
        goto LABEL_40;
      default:
        (*(v118 + 32))(v119, v65, v74);
        *&v123 = *MEMORY[0x277CD8870];
        v83 = v123;
        OUTLINED_FUNCTION_5_40();
        v121 = v60;
        sub_237C08E7C();
        v84 = *MEMORY[0x277CD88B0];
        type metadata accessor for EmbeddingType(0);
        *(&v124 + 1) = v85;
        *&v123 = v84;
        OUTLINED_FUNCTION_6_38();
        v86 = v84;
        v87 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_47(v87);
        OUTLINED_FUNCTION_8_32();
        if (sub_237C0597C() == 0x6C65646F6D6C6DLL && v88 == 0xE700000000000000)
        {
        }

        else
        {
          v90 = sub_237C0929C();

          if ((v90 & 1) == 0)
          {
            *&v123 = *MEMORY[0x277CD8878];
            v91 = v123;
            OUTLINED_FUNCTION_5_40();
            sub_237C08E7C();
            *(&v124 + 1) = v74;
            boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v123);
            v93 = v118;
            v94 = v119;
            (*(v118 + 16))(boxed_opaque_existential_0, v119, v74);
            OUTLINED_FUNCTION_6_38();
            v95 = swift_isUniquelyReferenced_nonNull_native();
            OUTLINED_FUNCTION_3_47(v95);
            OUTLINED_FUNCTION_8_32();
            (*(v93 + 8))(v94, v74);
            goto LABEL_40;
          }
        }

        v104 = objc_opt_self();
        v105 = sub_237C059EC();
        v125[0] = 0;
        v106 = [v104 compileModelAtURL:v105 error:v125];

        v102 = v125[0];
        if (!v106)
        {
          v114 = v125[0];

          sub_237C0593C();

          swift_willThrow();
          v115.n128_f64[0] = (*(v118 + 8))(v119, v74);
          sub_237AF2F0C(v73, v115);
          return v102;
        }

        v107 = v117;
        sub_237C05A7C();
        v108 = v102;

        *&v123 = *MEMORY[0x277CD8878];
        v109 = v123;
        OUTLINED_FUNCTION_5_40();
        sub_237C08E7C();
        *(&v124 + 1) = v74;
        v110 = __swift_allocate_boxed_opaque_existential_0(&v123);
        v111 = v118;
        (*(v118 + 16))(v110, v107, v74);
        OUTLINED_FUNCTION_6_38();
        v112 = swift_isUniquelyReferenced_nonNull_native();
        OUTLINED_FUNCTION_3_47(v112);
        OUTLINED_FUNCTION_8_32();
        v113 = *(v111 + 8);
        v113(v107, v74);
        v113(v119, v74);
LABEL_40:
        sub_237AF2F0C(v73, v96);
        goto LABEL_41;
    }
  }

  v41 = *v13;
  v42 = v13[8];
  *&v123 = *MEMORY[0x277CD8888];
  v43 = v123;
  type metadata accessor for ConfigurationOptionsKey(0);
  OUTLINED_FUNCTION_0_55();
  sub_237AF2F68(v44, v45, &unk_237C0B370);
  v46 = v43;
  OUTLINED_FUNCTION_5_40();
  sub_237C08E7C();
  if (v42)
  {
    v47 = sub_237ACB4EC();
    if (v48)
    {
      v49 = v47;
      swift_isUniquelyReferenced_nonNull_native();
      v122[0] = v14;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC60, &qword_237C12220);
      OUTLINED_FUNCTION_10_32(v50);
      OUTLINED_FUNCTION_7_33();
      sub_2379E8F7C(v51 + v49 * v52);
      sub_2379DAD24((*(v14 + 56) + 32 * v49), &v123);
      sub_237C090CC();
    }

    else
    {
      v123 = 0u;
      v124 = 0u;
    }

    sub_2379E8F7C(v125);
    sub_237A286E0(&v123);
  }

  else
  {
    *(&v124 + 1) = MEMORY[0x277D83B88];
    *&v123 = v41;
    v71 = OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_1_52(v71);
    OUTLINED_FUNCTION_9_33();
  }

  v75 = MEMORY[0x277CD8898];
LABEL_26:
  *&v123 = *v75;
  v76 = v123;
  OUTLINED_FUNCTION_5_40();
  sub_237C08E7C();
  *(&v124 + 1) = MEMORY[0x277D839B0];
  LOBYTE(v123) = 1;
  v77 = OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_1_52(v77);
  OUTLINED_FUNCTION_8_32();
LABEL_41:
  v102 = sub_237C0855C();

  return v102;
}

void *sub_237AF2E0C(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *(a1 + 8 * a2);
  v3 = v2;
  return v2;
}

uint64_t sub_237AF2E40(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_237AF2EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_237AF2F0C(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for MLTextClassifier.FeatureExtractorType(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_237AF2F68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

_OWORD *OUTLINED_FUNCTION_1_52(uint64_t a1)
{
  *(v2 - 216) = v1;

  return sub_237B4160C(v2 - 208, v2 - 136);
}

_OWORD *OUTLINED_FUNCTION_3_47(uint64_t a1)
{
  *(v2 - 216) = v1;

  return sub_237B4160C(v2 - 208, v2 - 136);
}

uint64_t OUTLINED_FUNCTION_4_47()
{
  sub_2379DAD24((v0 - 176), (v0 - 208));

  return swift_isUniquelyReferenced_nonNull_native();
}

_OWORD *OUTLINED_FUNCTION_6_38()
{

  return sub_2379DAD24((v0 - 176), (v0 - 208));
}

uint64_t OUTLINED_FUNCTION_8_32()
{

  return sub_2379E8F7C(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_9_33()
{

  return sub_2379E8F7C(v0 - 136);
}

uint64_t OUTLINED_FUNCTION_10_32(uint64_t a1)
{

  return sub_237C090AC();
}

void sub_237AF30D4(uint64_t a1@<X8>)
{
  v3 = v1;
  v138 = a1;
  v158 = sub_237C07B9C();
  OUTLINED_FUNCTION_0();
  v139 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v7 - v6);
  v136 = sub_237C075DC();
  OUTLINED_FUNCTION_0();
  v135 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v137 = (v11 - v10);
  v134 = sub_237C07D5C();
  OUTLINED_FUNCTION_0();
  v132 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_2_0();
  OUTLINED_FUNCTION_21_3(v15 - v14);
  v146 = sub_237C0818C();
  OUTLINED_FUNCTION_0();
  v149 = v16;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_14_0();
  v145 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_21_3(&v121 - v20);
  v144 = sub_237C07D7C();
  OUTLINED_FUNCTION_0();
  v148 = v21;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_2_0();
  v140 = v24 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BC38, &unk_237C0EB60);
  MEMORY[0x28223BE20](v25 - 8);
  OUTLINED_FUNCTION_21_3(&v121 - v26);
  sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v142 = v28;
  v143 = v27;
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_14_0();
  v141 = v29;
  MEMORY[0x28223BE20](v30);
  v150 = &v121 - v31;
  v32 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v152 = v33;
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_2_0();
  v37 = v36 - v35;
  v38 = sub_237C05C2C();
  OUTLINED_FUNCTION_0();
  v151 = v39;
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_2_0();
  v43 = v42 - v41;
  v155 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v153 = v44;
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_14_0();
  v147 = v46;
  MEMORY[0x28223BE20](v47);
  v49 = &v121 - v48;
  MEMORY[0x28223BE20](v50);
  v52 = &v121 - v51;
  MEMORY[0x28223BE20](v53);
  v154 = &v121 - v54;
  v55 = *(v1 + 16);
  if (!v55)
  {
    goto LABEL_20;
  }

  v56 = sub_237AC68B4(v55, *(v3 + 24), *(v3 + 32));
  if (!v2)
  {
    v127 = v3;
    v126 = v55;
    v128 = v56;
    v57 = objc_opt_self();
    v58 = [v57 defaultManager];
    sub_2379F364C();

    v59 = [v57 defaultManager];
    sub_2379F3528();

    sub_237C05C1C();
    v60 = sub_237C05C0C();
    v125 = 0;
    v62 = v61;
    (*(v151 + 8))(v43, v38);
    v156 = v60;
    v157 = v62;
    v63 = v152;
    (*(v152 + 104))(v37, *MEMORY[0x277CC91D8], v32);
    sub_2379F3408();
    sub_237C05ACC();
    (*(v63 + 8))(v37, v32);

    v64 = v153;
    v65 = v153 + 8;
    v66 = *(v153 + 8);
    v67 = v155;
    v66(v49, v155);
    v68 = v154;
    sub_237C05A3C();
    v66(v52, v67);
    v69 = type metadata accessor for AnyTreeClassifierModel(0);
    v70 = v125;
    sub_237C0702C();
    if (v70)
    {
      v66(v68, v67);
    }

    else
    {
      v71 = *(v64 + 16);
      v3 = v64 + 16;
      v55 = v147;
      v71(v147, v68, v67);
      sub_237C07D8C();
      v125 = 0;
      v72 = v130;
      sub_237A9AA94(v128, v130);
      v73 = v143;
      if (__swift_getEnumTagSinglePayload(v72, 1, v143) == 1)
      {
        __break(1u);
        goto LABEL_20;
      }

      sub_237C07EBC();
      v74 = *(v142 + 8);
      v123 = v142 + 8;
      v122 = v74;
      v74(v72, v73);
      sub_237C07E9C();
      v75 = v127;
      v76 = *v127;
      v77 = v127[1];

      sub_237C07DEC();
      v147 = v76;
      v156 = v76;
      v157 = v77;
      v151 = v77;

      MEMORY[0x2383DC360](0x6C696261626F7250, 0xEB00000000797469);
      sub_237C07E2C();
      sub_237C085AC();
      sub_237C07EFC();
      v78 = v131;
      sub_237C07E3C();
      v55 = v78;
      v3 = v149;
      v49 = v146;
      v79 = (*(v149 + 88))(v78, v146);
      v80 = *MEMORY[0x277D25390];
      LODWORD(v152) = v79;
      v81 = v144;
      v82 = v140;
      if (v79 != v80)
      {
        while (1)
        {
          v120 = *(v3 + 8);
          v3 += 8;
          v120(v55, v49);
LABEL_20:
          sub_237C090DC();
          __break(1u);
        }
      }

      v124 = v66;
      v130 = v65;
      (*(v3 + 96))(v55, v49);
      (*(v148 + 32))(v82, v55, v81);
      v83 = v75 + *(v69 + 28);
      v84 = v83[8];
      v85 = v133;
      *v133 = *v83;
      v86 = *(v132 + 104);
      if (v84)
      {
        v86(v85, *MEMORY[0x277D25258], v134);

        sub_237C07D6C();
        v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v88 = OUTLINED_FUNCTION_7_34(v87);
        OUTLINED_FUNCTION_10_33(v88, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0756C();
        v89 = OUTLINED_FUNCTION_5_41();
        v90(v89);

        OUTLINED_FUNCTION_8_33();
        v156 = v81;
        v157 = v82;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075CC();
      }

      else
      {
        v86(v85, *MEMORY[0x277D25250], v134);

        sub_237C07D6C();
        v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD48, &qword_237C0BBD0);
        v92 = OUTLINED_FUNCTION_7_34(v91);
        OUTLINED_FUNCTION_10_33(v92, xmmword_237C0B670);
        OUTLINED_FUNCTION_9_34();
        sub_237C0751C();
        v93 = OUTLINED_FUNCTION_5_41();
        v94(v93);

        OUTLINED_FUNCTION_8_33();
        v156 = v81;
        v157 = v82;

        OUTLINED_FUNCTION_1_53();
        OUTLINED_FUNCTION_9_34();
        sub_237C075BC();
      }

      OUTLINED_FUNCTION_6_39();
      sub_237C07ECC();
      v95 = v145;
      (*(v148 + 16))(v145, v82, v81);
      v96 = v82;
      v97 = v149 + 104;
      v98 = v146;
      v137 = *(v149 + 104);
      v137(v95, v152, v146);
      sub_237C07E4C();
      sub_237C07F0C();
      sub_237C07E0C();
      v99 = *(v126 + 16);
      if (v99)
      {
        v149 = v97;
        v156 = MEMORY[0x277D84F90];
        v100 = v126;
        sub_237AC8CF4(0, v99, 0);
        v101 = v156;
        v102 = (v139 + 32);
        v152 = (v65 + 32) & ~v65;
        v103 = (v100 + 56);
        v104 = v129;
        do
        {
          v105 = *(v103 - 1);
          v106 = *v103;

          sub_237A1E09C(v105, v106);
          sub_237B991A4(v105, v106, v104);

          sub_237A1E0B0(v105, v106);
          v156 = v101;
          v108 = *(v101 + 16);
          v107 = *(v101 + 24);
          if (v108 >= v107 >> 1)
          {
            sub_237AC8CF4(v107 > 1, v108 + 1, 1);
            v101 = v156;
          }

          v103 += 32;
          *(v101 + 16) = v108 + 1;
          (*v102)(v101 + v152 + v153 * v108, v104, v158);
          --v99;
        }

        while (v99);
        v98 = v146;
        v109 = v140;
      }

      else
      {
        v109 = v96;
      }

      v110 = v141;
      sub_237C07E9C();
      v111 = v150;
      sub_237C07EBC();
      sub_237C07ECC();
      v112 = v147;
      v113 = v151;
      sub_237C07DEC();
      v156 = v112;
      v157 = v113;

      OUTLINED_FUNCTION_1_53();
      sub_237C07E2C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BB70, &qword_237C0E778);
      v114 = v142;
      v115 = (*(v142 + 80) + 32) & ~*(v142 + 80);
      v116 = swift_allocObject();
      *(v116 + 16) = xmmword_237C0B660;
      v117 = v143;
      (*(v114 + 16))(v116 + v115, v111, v143);
      v156 = v128;
      sub_237A969F0(v116);
      v118 = v145;
      sub_237C07D3C();
      v137(v118, *MEMORY[0x277D25368], v98);
      sub_237C07E4C();
      (*(v148 + 8))(v109, v144);
      v122(v111, v117);
      (*(v114 + 32))(v138, v110, v117);
      v119 = v154;
      sub_237A64C34();
      v124(v119, v155);
    }
  }
}

void OUTLINED_FUNCTION_1_53()
{

  JUMPOUT(0x2383DC360);
}

uint64_t OUTLINED_FUNCTION_6_39()
{
  *(v1 - 128) = v0;

  return sub_237C07B3C();
}

uint64_t OUTLINED_FUNCTION_7_34(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_8_33()
{

  return sub_237C07B3C();
}

uint64_t OUTLINED_FUNCTION_10_33(__n128 *a1, __n128 a2)
{
  a1[1] = a2;
}

id MLBoostedTreeRegressor.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for MLBoostedTreeRegressor(0) + 20));

  return v1;
}

uint64_t type metadata accessor for MLBoostedTreeRegressor(uint64_t a1)
{
  result = qword_27DE9CC90;
  if (!qword_27DE9CC90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void MLBoostedTreeRegressor.model.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(v2) + 20);

  *(v1 + v3) = v0;
}

void (*MLBoostedTreeRegressor.model.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(0) + 20);
  *(a1 + 24) = v3;
  v4 = *(v1 + v3);
  *(a1 + 16) = v4;
  *a1 = v4;
  v5 = v4;
  return sub_2379F7824;
}

uint64_t MLBoostedTreeRegressor.targetColumn.getter()
{
  type metadata accessor for MLBoostedTreeRegressor(0);

  return OUTLINED_FUNCTION_37_0();
}

uint64_t MLBoostedTreeRegressor.targetColumn.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for MLBoostedTreeRegressor(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*MLBoostedTreeRegressor.targetColumn.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLBoostedTreeRegressor(v0);
  return nullsub_1;
}

uint64_t MLBoostedTreeRegressor.featureColumns.getter()
{
  type metadata accessor for MLBoostedTreeRegressor(0);
}

uint64_t MLBoostedTreeRegressor.featureColumns.setter()
{
  v2 = OUTLINED_FUNCTION_46();
  v3 = *(type metadata accessor for MLBoostedTreeRegressor(v2) + 28);

  *(v1 + v3) = v0;
  return result;
}

void (*MLBoostedTreeRegressor.featureColumns.modify())()
{
  v0 = OUTLINED_FUNCTION_46();
  type metadata accessor for MLBoostedTreeRegressor(v0);
  return nullsub_1;
}

uint64_t MLBoostedTreeRegressor.modelParameters.getter()
{
  v2 = OUTLINED_FUNCTION_146();
  v3 = v1 + *(type metadata accessor for MLBoostedTreeRegressor(v2) + 32);

  return sub_237AF4388(v3, v0);
}

id MLBoostedTreeRegressor.trainingMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLBoostedTreeRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 36));

  return sub_2379F7AF4(v2, v3, v4);
}

id MLBoostedTreeRegressor.validationMetrics.getter()
{
  v0 = OUTLINED_FUNCTION_146();
  v1 = type metadata accessor for MLBoostedTreeRegressor(v0);
  v2 = OUTLINED_FUNCTION_40_1(*(v1 + 40));

  return sub_2379F7AF4(v2, v3, v4);
}

uint64_t sub_237AF445C()
{
  v0 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_allocate_value_buffer(v0, qword_27DE9CC68);
  v1 = __swift_project_value_buffer(v0, qword_27DE9CC68);
  v2 = sub_237C05ADC();
  result = __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  v4 = v0[6];
  v5 = v0[7];
  *(v1 + v0[5]) = 10;
  *(v1 + v4) = 50;
  *(v1 + v5) = 1000;
  return result;
}

uint64_t static MLBoostedTreeRegressor._defaultSessionParameters.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27DE9A628 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MLTrainingSessionParameters(0);
  __swift_project_value_buffer(v2, qword_27DE9CC68);
  OUTLINED_FUNCTION_2_54();
  return sub_237AF7ECC(v3, a1, v4);
}

void MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)()
{
  OUTLINED_FUNCTION_74();
  v158 = v0;
  v163 = v1;
  v159 = v2;
  v168 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v161 = v10;
  v162 = v11;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_2_0();
  v14 = OUTLINED_FUNCTION_21_3(v13 - v12);
  v15 = type metadata accessor for TreeRegressorModel(v14);
  v16 = OUTLINED_FUNCTION_1(v15);
  v145 = v17;
  v19 = *(v18 + 64);
  MEMORY[0x28223BE20](v16);
  v146 = v136 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_58();
  v22 = OUTLINED_FUNCTION_21_3(v21);
  v148 = type metadata accessor for TreeRegressor(v22);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_2_0();
  v26 = OUTLINED_FUNCTION_21_3(v25 - v24);
  v151 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(v26);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_2_0();
  v156 = v29 - v28;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_18_0();
  v143 = v31 - v32;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v33);
  v144 = v136 - v34;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v36);
  v155 = sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v154 = v37;
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_18_0();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  v44 = v136 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = v136 - v46;
  v48 = type metadata accessor for MLBoostedTreeRegressor(0);
  v49 = v9 + *(v48 + 36);
  *v49 = 0;
  *(v49 + 8) = 0;
  v160 = v49;
  *(v49 + 16) = 0;
  v50 = *(v48 + 40);
  v147 = v9;
  v51 = v9 + v50;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v52 = swift_allocError();
  *v53 = 0xD0000000000000C0;
  v53[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v52, v53);
  *v51 = v54;
  *(v51 + 8) = 0;
  v157 = v51;
  *(v51 + 16) = 1;
  v55 = v7;
  v56 = v5;
  v57 = v158;
  sub_2379F3308();
  if (v57)
  {

    sub_237AF5380(v163);
    OUTLINED_FUNCTION_22_19();
    v58(v55);
    OUTLINED_FUNCTION_45_6();
    goto LABEL_3;
  }

  v137 = v41;
  v138 = v44;
  v136[0] = v48;
  v136[1] = v19;
  v139 = v5;
  v158 = v47;
  v141 = v55;
  v59 = v159;
  if (v159)
  {

    OUTLINED_FUNCTION_43_0();
    v60 = v141;
    sub_2379F2DA4();
    v61 = v168;
    OUTLINED_FUNCTION_45_6();
    v62 = v163;
    v140 = 0;
  }

  else
  {
    v140 = 0;
    v61 = v168;
    OUTLINED_FUNCTION_45_6();
    v60 = v141;
    v62 = v163;
  }

  sub_237AF4388(v62, &v166);
  sub_237C071CC();
  sub_237C070FC();
  sub_237C0715C();
  sub_237C0719C();
  sub_237C0717C();
  sub_237C070BC();
  sub_237C070DC();
  sub_237C071BC();
  sub_237C0711C();
  sub_237C0713C();
  sub_237AF5380(&v166);
  sub_2379FC864(v62, &v164, &qword_27DE9A998, &unk_237C0C100);
  if (v165)
  {
    v63 = *(v152 + 48);
    sub_2379DAD24(&v164, &v166);
    swift_dynamicCast();
    v64 = v153;
    v65 = v140;
    sub_237B68758(v153, (v153 + v63), v60);
    if (v65)
    {

      sub_237AF5380(v163);
      OUTLINED_FUNCTION_22_19();
      v66(v60);
      v67 = OUTLINED_FUNCTION_23_22();
      v68(v67);
      OUTLINED_FUNCTION_5_42();
      sub_237AF8310();
    }

    else
    {
      OUTLINED_FUNCTION_5_42();
      sub_237AF8310();
      v69 = v139;
      sub_237B19700(v64, v139, v61, v59);
      v71 = v70;

      v140 = 0;
      v72 = v138;
      (*(v154 + 16))(v138, v158, v155);
      v73 = v69;
      v74 = v149;
      *v149 = v73;
      v74[1] = v61;
      OUTLINED_FUNCTION_80();
      v74[2] = v71;
      v74[3] = v71;
      v74[4] = 0xD000000000000013;
      v74[5] = v75;
      v76(v137, v72, v155);
      v160 = v71;
      v77 = v155;
      swift_bridgeObjectRetain_n();

      v78 = v154;
      sub_237C06CEC();
      v81 = *(v78 + 8);
      v79 = v78 + 8;
      v80 = v81;
      v82 = OUTLINED_FUNCTION_58_0();
      (v81)(v82);
      v83 = v140;
      sub_237A0CAB0();
      if (v83)
      {

        sub_237AF5380(v163);
        v84 = OUTLINED_FUNCTION_18_25();
        v85(v84);
        OUTLINED_FUNCTION_1_54();
        sub_237AF8310();
        sub_2379D9054(v64, &qword_27DE9ADC0, &unk_237C0BF40);
        v80(v158, v77);
      }

      else
      {
        v159 = v80;
        v154 = v79;
        v140 = 0;
        if ((sub_237A37A64() & 1) == 0)
        {
          v86 = OUTLINED_FUNCTION_46_8();
          v87 = v144;
          sub_2379FC864(v86, v144, v88, v89);
          v90 = *(v152 + 48);
          v91 = sub_237C05D3C();
          (*(v162 + 8))(v87, v161);
          sub_237A37AEC(4, 0xD000000000000015, 0x8000000237C17C00, v91);
          sub_2379D9054(v87 + v90, &qword_27DE9A9A0, &qword_237C0BF60);
        }

        v92 = v136[0];
        v93 = v147;
        v94 = (v147 + *(v136[0] + 24));
        *v94 = v139;
        v94[1] = v168;
        v156 = v92[8];
        v95 = v163;
        sub_237AF4388(v163, v93 + v156);
        *(v93 + v92[7]) = v160;
        OUTLINED_FUNCTION_3_48();
        v96 = v150;
        v97 = v146;
        sub_237AF7ECC(v150, v146, v98);
        v99 = (*(v145 + 80) + 16) & ~*(v145 + 80);
        swift_allocObject();
        OUTLINED_FUNCTION_9_35();
        sub_237AF8364(v97, v100 + v99, v101);
        v102 = v140;
        sub_2379DD56C();
        if (v102)
        {

          sub_237AF5380(v95);
          v104 = OUTLINED_FUNCTION_18_25();
          v105(v104);
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
          OUTLINED_FUNCTION_1_54();
          OUTLINED_FUNCTION_43_6();
          v106 = OUTLINED_FUNCTION_46_8();
          sub_2379D9054(v106, v107, v108);
          OUTLINED_FUNCTION_10_34();
          OUTLINED_FUNCTION_19_25();
          v109();
        }

        else
        {
          v110 = v103;

          *(v93 + v92[5]) = v110;
          OUTLINED_FUNCTION_3_48();
          sub_237AF7ECC(v96, v93, v111);
          v112 = v153;
          sub_237A478AC(v153, &v166);
          v140 = 0;
          v113 = v166;
          v114 = v167;
          sub_2379F8918(*v56, *(v56 + 8), *(v56 + 16));
          *v56 = v113;
          *(v56 + 16) = v114;
          v115 = v143;
          sub_2379FC864(v112, v143, &qword_27DE9ADC0, &unk_237C0BF40);
          v116 = *(v152 + 48);
          v117 = v161;
          if (__swift_getEnumTagSinglePayload(v115 + v116, 1, v161) == 1)
          {
            sub_237AF5380(v163);
            v118 = *(v162 + 8);
            v118(v141, v117);
            OUTLINED_FUNCTION_0_56();
            sub_237AF8310();
            OUTLINED_FUNCTION_1_54();
            OUTLINED_FUNCTION_43_6();
            sub_2379D9054(v112, &qword_27DE9ADC0, &unk_237C0BF40);
            v119 = OUTLINED_FUNCTION_10_34();
            v159(v119);
            sub_2379D9054(v115 + v116, &qword_27DE9A9A0, &qword_237C0BF60);
            v118(v115, v117);
            goto LABEL_4;
          }

          v120 = v117;
          v121 = v162;
          v122 = v142;
          (*(v162 + 32))(v142, v115 + v116, v120);
          v123 = *(v121 + 8);
          v123(v115, v120);
          v124 = v140;
          sub_237A478AC(v122, &v166);
          if (!v124)
          {
            sub_237AF5380(v163);
            v123(v141, v120);
            v123(v122, v120);
            OUTLINED_FUNCTION_0_56();
            sub_237AF8310();
            OUTLINED_FUNCTION_1_54();
            OUTLINED_FUNCTION_43_6();
            v129 = OUTLINED_FUNCTION_46_8();
            sub_2379D9054(v129, v130, v131);
            OUTLINED_FUNCTION_10_34();
            OUTLINED_FUNCTION_19_25();
            v132();
            v133 = v166;
            v134 = v167;
            v135 = v157;
            sub_2379F8918(*v157, *(v157 + 8), *(v157 + 16));
            *v135 = v133;
            *(v135 + 16) = v134;
            goto LABEL_4;
          }

          sub_237AF5380(v163);
          v123(v141, v120);
          v123(v122, v120);
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
          OUTLINED_FUNCTION_1_54();
          OUTLINED_FUNCTION_43_6();
          v125 = OUTLINED_FUNCTION_46_8();
          sub_2379D9054(v125, v126, v127);
          OUTLINED_FUNCTION_10_34();
          OUTLINED_FUNCTION_19_25();
          v128();
          v93 = v147;
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
        }

        sub_237AF5380(v93 + v156);
      }
    }

LABEL_3:
    sub_2379F8918(*v56, *(v56 + 8), *(v56 + 16));
    sub_2379F8918(*v157, *(v157 + 8), *(v157 + 16));
LABEL_4:
    OUTLINED_FUNCTION_73();
    return;
  }

  __break(1u);
}

uint64_t sub_237AF53D8()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for TreeRegressorModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_2379F8924(v5);
}

uint64_t MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_237C05DBC();
  v8 = OUTLINED_FUNCTION_20(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = (v10 - v9);
  LOBYTE(v10) = *(a1 + 8);
  v13 = *a1;
  v14 = v10;
  sub_237A70ED4(&v13, v11);
  sub_237AF4388(a5, &v13);
  MLBoostedTreeRegressor.init(trainingData:targetColumn:featureColumns:parameters:)();
  return sub_237AF5380(a5);
}

void MLBoostedTreeRegressor.init(checkpoint:)()
{
  OUTLINED_FUNCTION_74();
  v75 = v0;
  v2 = v1;
  v4 = v3;
  v68 = type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v66 = v6 - v7;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_58();
  v67 = v9;
  v10 = type metadata accessor for TreeRegressorModel(0);
  v11 = OUTLINED_FUNCTION_1(v10);
  v70 = v12;
  MEMORY[0x28223BE20](v11);
  v71 = v13;
  v72 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_58();
  v76 = v15;
  sub_237C071DC();
  OUTLINED_FUNCTION_0();
  v73 = v17;
  v74 = v16;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_18_0();
  MEMORY[0x28223BE20](v18);
  v20 = &v65 - v19;
  type metadata accessor for TreeRegressor(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_2_0();
  v24 = (v23 - v22);
  v25 = type metadata accessor for MLBoostedTreeRegressor(0);
  v26 = v4 + *(v25 + 36);
  *v26 = 0;
  *(v26 + 8) = 0;
  *(v26 + 16) = 0;
  v65 = v25;
  v27 = *(v25 + 40);
  v69 = v4;
  v28 = v4 + v27;
  sub_2379E8AF0();
  OUTLINED_FUNCTION_50();
  v29 = swift_allocError();
  *v30 = 0xD0000000000000C0;
  v30[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v29, v30);
  *v28 = v31;
  *(v28 + 8) = 0;
  *(v28 + 16) = 1;
  switch(*(v2 + *(type metadata accessor for MLCheckpoint(0) + 20)))
  {
    case 2:

      goto LABEL_4;
    default:
      v32 = sub_237C0929C();

      if (v32)
      {
LABEL_4:
        sub_237C071CC();
        *v24 = 0;
        v24[1] = 0xE000000000000000;
        OUTLINED_FUNCTION_80();
        v24[2] = v33;
        v24[3] = v33;
        v24[4] = 0xD000000000000013;
        v24[5] = v34;
        v36 = v73;
        v35 = v74;
        v37 = OUTLINED_FUNCTION_58_0();
        v38(v37);
        sub_237C06CEC();
        (*(v36 + 8))(v20, v35);
        sub_2379FBDFC();
        v39 = v75;
        v40 = v76;
        sub_237C0743C();
        if (!v39)
        {
          OUTLINED_FUNCTION_3_48();
          v43 = v72;
          sub_237AF7ECC(v40, v72, v44);
          v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
          swift_allocObject();
          OUTLINED_FUNCTION_9_35();
          sub_237AF8364(v43, v46 + v45, v47);
          sub_2379DD56C();
          v49 = v48;

          v50 = v65;
          v51 = v69;
          *(v69 + *(v65 + 20)) = v49;
          OUTLINED_FUNCTION_3_48();
          sub_237AF7ECC(v40, v51, v52);
          v54 = v67;
          v53 = v68;
          *v67 = 0;
          *(v54 + 8) = 0;
          *(v54 + 16) = 256;
          swift_storeEnumTagMultiPayload();
          v55 = v50;
          v56 = v51 + *(v50 + 32);
          *v56 = 0u;
          *(v56 + 16) = 0u;
          *(v56 + 32) = xmmword_237C0BF20;
          *(v56 + 48) = xmmword_237C0BF30;
          *(v56 + 64) = 42;
          *(v56 + 72) = 0x3FD3333333333333;
          *(v56 + 80) = 0;
          *(v56 + 88) = 1;
          __asm { FMOV            V0.2D, #1.0 }

          *(v56 + 96) = _Q0;
          v62 = v66;
          sub_237AF7ECC(v54, v66, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
          v77[3] = v53;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v77);
          sub_237AF8364(v62, boxed_opaque_existential_0, type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData);
          OUTLINED_FUNCTION_5_42();
          sub_237AF8310();
          sub_2379DAE54(v77, v56);
          v64 = (v51 + *(v55 + 24));
          *v64 = 0;
          v64[1] = 0xE000000000000000;
          OUTLINED_FUNCTION_6_40();
          sub_237AF8310();
          OUTLINED_FUNCTION_0_56();
          sub_237AF8310();
          OUTLINED_FUNCTION_1_54();
          sub_237AF8310();
          *(v51 + *(v55 + 28)) = MEMORY[0x277D84F90];
          goto LABEL_9;
        }

        OUTLINED_FUNCTION_6_40();
        sub_237AF8310();
        OUTLINED_FUNCTION_1_54();
      }

      else
      {
        OUTLINED_FUNCTION_50();
        v41 = swift_allocError();
        *v42 = 0xD000000000000041;
        v42[1] = 0x8000000237C1B990;
        OUTLINED_FUNCTION_23_3(v41, v42);
        swift_willThrow();
        OUTLINED_FUNCTION_6_40();
      }

      sub_237AF8310();
      sub_2379F8918(*v26, *(v26 + 8), *(v26 + 16));
      sub_2379F8918(*v28, *(v28 + 8), *(v28 + 16));
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
  }
}

void static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_2_0();
  v5 = (v4 - v3);
  v6 = *(v1 + 8);
  v10 = *v1;
  v11 = v6;
  sub_2379DBCF4(v10, v6);
  sub_237A70ED4(&v10, v5);
  static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  v7 = OUTLINED_FUNCTION_58_0();
  v8(v7);
  if (!v0)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC80, &qword_237C12268);
    OUTLINED_FUNCTION_91(v9);
    sub_237BEC5BC();
  }

  OUTLINED_FUNCTION_73();
}

void static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)()
{
  OUTLINED_FUNCTION_74();
  v1 = OUTLINED_FUNCTION_48_0();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = (v6 - v5);
  v8 = *(v0 + 8);
  v9 = *v0;
  v10 = v8;
  sub_2379DBCF4(v9, v8);
  sub_237A70ED4(&v9, v7);
  static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  (*(v3 + 8))(v7, v1);
  OUTLINED_FUNCTION_73();
}

{
  OUTLINED_FUNCTION_74();
  v47 = v1;
  v3 = v2;
  v49 = v4;
  v46 = v5;
  v45 = v6;
  v8 = v7;
  v9 = type metadata accessor for MLTrainingSessionParameters(0);
  v10 = OUTLINED_FUNCTION_20(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_18_0();
  v43 = v11 - v12;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_58();
  OUTLINED_FUNCTION_21_3(v14);
  v15 = sub_237C071DC();
  v16 = OUTLINED_FUNCTION_20(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_0();
  v19 = (v18 - v17);
  type metadata accessor for MLBoostedTreeRegressor.ModelParameters.ValidationData(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9ADC0, &unk_237C0BF40);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_18_0();
  v48 = v23 - v24;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v25);
  v27 = v42 - v26;
  OUTLINED_FUNCTION_39_0();
  MEMORY[0x28223BE20](v28);
  v30 = v42 - v29;
  v31 = v3;
  sub_2379FC864(v3, &v53, &qword_27DE9A998, &unk_237C0C100);
  if (v54)
  {
    v32 = *(v21 + 48);
    sub_2379DAD24(&v53, &v50);
    swift_dynamicCast();
    sub_237B68758(v30, &v30[v32], v8);
    OUTLINED_FUNCTION_5_42();
    sub_237AF8310();
    if (!v0)
    {
      sub_2379FC864(v30, v27, &qword_27DE9ADC0, &unk_237C0BF40);
      v42[1] = *(v21 + 48);
      v33 = v48;
      sub_2379FC864(v30, v48, &qword_27DE9ADC0, &unk_237C0BF40);
      v55 = *(v21 + 48);
      sub_237AF4388(v31, &v50);

      OUTLINED_FUNCTION_45_6();

      sub_237C071CC();
      sub_237C070FC();
      sub_237C0715C();
      sub_237C0719C();
      sub_237C0717C();
      sub_237C070BC();
      sub_237C070DC();
      sub_237C071BC();
      sub_237C0711C();
      sub_237C0713C();
      sub_237AF5380(&v50);
      OUTLINED_FUNCTION_2_54();
      v34 = v44;
      sub_237AF7ECC(v47, v44, v35);
      v36 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
      OUTLINED_FUNCTION_91(v36);
      sub_237B1A5B0(v27, v33 + v55, v45, v31, v49, v19, v34);
      OUTLINED_FUNCTION_46();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      v38 = (*(v37 + 8))(v48);
      OUTLINED_FUNCTION_64_0(v38, &qword_27DE9A9A0, &qword_237C0BF60);
      v51 = v36;
      v52 = &off_284AC4B18;
      *&v50 = v34;
      OUTLINED_FUNCTION_2_54();
      v39 = v43;
      sub_237AF7ECC(v47, v43, v40);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC88, &unk_237C12270);
      OUTLINED_FUNCTION_91(v41);

      sub_2379E4280(&v50, v39, 4);
      sub_2379D9054(v30, &qword_27DE9ADC0, &unk_237C0BF40);
    }

    OUTLINED_FUNCTION_73();
  }

  else
  {
    __break(1u);
  }
}

void static MLBoostedTreeRegressor.resume(_:)(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC80, &qword_237C12268);
  OUTLINED_FUNCTION_91(v1);

  sub_237BEC5BC();
}

void static MLBoostedTreeRegressor.train(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  static MLBoostedTreeRegressor.makeTrainingSession(trainingData:targetColumn:featureColumns:parameters:sessionParameters:)();
  if (!v6)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC80, &qword_237C12268);
    OUTLINED_FUNCTION_91(v7);
    sub_237BEC5BC();
  }
}

void static MLBoostedTreeRegressor.restoreTrainingSession(sessionParameters:)(uint64_t a1)
{
  v3 = type metadata accessor for MLTrainingSessionParameters(0);
  v4 = OUTLINED_FUNCTION_20(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_18_0();
  v7 = v5 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v19[-1] - v9;
  OUTLINED_FUNCTION_2_54();
  sub_237AF7ECC(a1, v10, v11);
  v12 = type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
  OUTLINED_FUNCTION_91(v12);
  v13 = sub_237B1A4D0(v10);
  if (!v1)
  {
    v19[3] = v12;
    v19[4] = &off_284AC4B18;
    v19[0] = v13;
    OUTLINED_FUNCTION_2_54();
    v14 = OUTLINED_FUNCTION_58_0();
    sub_237AF7ECC(v14, v15, v16);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CC88, &unk_237C12270);
    OUTLINED_FUNCTION_91(v17);
    sub_2379E4280(v19, v7, 4);
  }
}

uint64_t sub_237AF6470(void *a1, char a2, uint64_t a3, void (*a4)(void *), uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCA0, &qword_237C12348);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11 - 8];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA98, &unk_237C0DEB0);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v23[-v15 - 8];
  if (a2)
  {
    *v12 = a1;
    swift_storeEnumTagMultiPayload();
    v17 = a1;
    a4(v12);
    return sub_2379D9054(v12, &qword_27DE9CCA0, &qword_237C12348);
  }

  else
  {
    sub_2379E8624(a3 + qword_27DEACD88, v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC88, &unk_237C0B9C0);
    type metadata accessor for TreeRegressorTrainingSessionDelegate(0);
    swift_dynamicCast();
    v19 = v22;
    v20 = sub_237C08A3C();
    __swift_storeEnumTagSinglePayload(v16, 1, 1, v20);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v19;
    v21[5] = a4;
    v21[6] = a5;

    sub_237BBAEC8(0, 0, v16, &unk_237C12358, v21);
  }
}

uint64_t sub_237AF6664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCA0, &qword_237C12348);
  v6[6] = swift_task_alloc();
  v6[7] = swift_task_alloc();
  v6[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_237AF6720);
}

uint64_t sub_237AF6720()
{
  OUTLINED_FUNCTION_9();

  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_237AF67C0;

  return sub_237AF6A38();
}

uint64_t sub_237AF67C0()
{
  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_20_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3();
  *v5 = v4;
  *(v6 + 80) = v0;

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v7);
}

uint64_t sub_237AF68BC()
{
  v2 = *(v0 + 48);
  swift_storeEnumTagMultiPayload();
  v3 = OUTLINED_FUNCTION_37_0();
  sub_237AF82A0(v3, v4);
  OUTLINED_FUNCTION_41_9();
  v1(v2);
  sub_2379D9054(v2, &qword_27DE9CCA0, &qword_237C12348);

  OUTLINED_FUNCTION_8();

  return v5();
}

uint64_t sub_237AF697C()
{
  **(v1 + 56) = *(v1 + 80);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_41_9();
  v2(v0);
  sub_2379D9054(v0, &qword_27DE9CCA0, &qword_237C12348);

  OUTLINED_FUNCTION_8();

  return v3();
}

uint64_t sub_237AF6A38()
{
  OUTLINED_FUNCTION_9();
  v0[36] = v1;
  v0[37] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE10, &qword_237C0C090);
  OUTLINED_FUNCTION_20(v3);
  v0[38] = OUTLINED_FUNCTION_19();
  v4 = type metadata accessor for MLBoostedTreeRegressor(0);
  v0[39] = v4;
  OUTLINED_FUNCTION_20(v4);
  v0[40] = swift_task_alloc();
  v0[41] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v5);
  v0[42] = OUTLINED_FUNCTION_19();
  v6 = sub_237C071DC();
  v0[43] = v6;
  OUTLINED_FUNCTION_1(v6);
  v0[44] = v7;
  v0[45] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE18, &qword_237C0DEE0);
  OUTLINED_FUNCTION_20(v8);
  v0[46] = OUTLINED_FUNCTION_19();
  v9 = type metadata accessor for PersistentParametersForTreeBasedMethods(0);
  v0[47] = v9;
  OUTLINED_FUNCTION_20(v9);
  v0[48] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

uint64_t sub_237AF6BC0()
{
  v1 = *(v0 + 368);
  v2 = *(v0 + 376);
  v3 = *(v0 + 296);
  v4 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingParameters;
  swift_beginAccess();
  sub_2379FC864(v3 + v4, v1, &qword_27DE9AE18, &qword_237C0DEE0);
  result = __swift_getEnumTagSinglePayload(v1, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_7;
  }

  v7 = *(v0 + 376);
  v6 = *(v0 + 384);
  v8 = *(v0 + 360);
  v9 = *(v0 + 344);
  v10 = *(v0 + 352);
  v11 = *(v0 + 336);
  v13 = *(v0 + 296);
  v12 = *(v0 + 304);
  sub_237AF8364(*(v0 + 368), v6, type metadata accessor for PersistentParametersForTreeBasedMethods);
  (*(v10 + 16))(v8, v6 + v7[8], v9);
  sub_2379FC864(v6 + v7[5], v11, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379DB58C(v8, v11, v0 + 16);
  v14 = (v6 + v7[6]);
  v16 = *v14;
  v15 = v14[1];
  *(v0 + 392) = v15;
  v17 = *(v6 + v7[7]);
  *(v0 + 400) = v17;
  v18 = OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_model;
  swift_beginAccess();
  sub_2379FC864(v13 + v18, v12, &qword_27DE9AE10, &qword_237C0C090);
  v19 = type metadata accessor for TreeRegressorModel(0);
  result = __swift_getEnumTagSinglePayload(v12, 1, v19);
  if (result == 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v21 = *(v0 + 312);
  v20 = *(v0 + 320);
  sub_237AF4388(v0 + 16, v0 + 128);
  v22 = v21[9];
  *(v0 + 432) = v22;
  v23 = v20 + v22;
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 0;
  v24 = v21[10];
  *(v0 + 436) = v24;
  v25 = v20 + v24;
  sub_2379E8AF0();

  OUTLINED_FUNCTION_50();
  v26 = swift_allocError();
  *v27 = 0xD0000000000000C0;
  v27[1] = 0x8000000237C17B10;
  OUTLINED_FUNCTION_23_3(v26, v27);
  *v25 = v28;
  *(v25 + 8) = 0;
  *(v25 + 16) = 1;
  *(v20 + v21[7]) = v17;
  v29 = (v20 + v21[6]);
  *v29 = v16;
  v29[1] = v15;
  v30 = swift_task_alloc();
  *(v0 + 408) = v30;
  *v30 = v0;
  v30[1] = sub_237AF6E7C;

  return sub_237B91530();
}

uint64_t sub_237AF6E7C()
{
  OUTLINED_FUNCTION_49();
  v3 = v2;
  OUTLINED_FUNCTION_18();
  v5 = v4;
  OUTLINED_FUNCTION_20_2();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3();
  *v8 = v7;
  *(v5 + 416) = v0;

  if (!v0)
  {
    *(v5 + 424) = v3;
  }

  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237AF6F8C()
{
  v1 = v0[40];
  v2 = v0[41];
  v3 = v0[39];
  v4 = v0[36];
  v5 = v0[37];
  *(v1 + *(v3 + 20)) = v0[53];
  OUTLINED_FUNCTION_9_35();
  sub_237AF8364(v6, v1, v7);
  memcpy((v1 + *(v3 + 32)), v0 + 16, 0x70uLL);
  sub_237AF8364(v1, v2, type metadata accessor for MLBoostedTreeRegressor);
  result = sub_237AF8364(v2, v4, type metadata accessor for MLBoostedTreeRegressor);
  v9 = v5 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics;
  v10 = *(v5 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_trainingMetrics + 16);
  if (v10 == 255)
  {
    __break(1u);
  }

  else
  {
    v11 = v0[39];
    v13 = v0[36];
    v12 = v0[37];
    v15 = *v9;
    v14 = *(v9 + 8);
    v16 = v10 & 1;
    sub_2379F7AF4(*v9, v14, v10 & 1);
    sub_237AF5380((v0 + 2));
    OUTLINED_FUNCTION_16_20();
    sub_237AF8310();
    v17 = v13 + *(v11 + 36);
    sub_2379F8918(*v17, *(v17 + 8), *(v17 + 16));
    *v17 = v15;
    *(v17 + 8) = v14;
    *(v17 + 16) = v16;
    v19 = *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics);
    v18 = *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 8);
    v20 = *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16);
    sub_2379FC970(v19, v18, *(v12 + OBJC_IVAR____TtC8CreateML36TreeRegressorTrainingSessionDelegate_validationMetrics + 16));

    if (v20 != 255)
    {
      v21 = v0[36] + *(v0[39] + 40);
      sub_2379F8918(*v21, *(v21 + 8), *(v21 + 16));
      *v21 = v19;
      *(v21 + 8) = v18;
      *(v21 + 16) = v20 & 1;
    }

    OUTLINED_FUNCTION_8();

    return v22();
  }

  return result;
}

uint64_t sub_237AF7184()
{
  v1 = *(v0 + 320);
  v2 = v1 + *(v0 + 432);
  v3 = v1 + *(v0 + 436);
  sub_237AF5380(v0 + 128);
  OUTLINED_FUNCTION_0_56();
  sub_237AF8310();

  sub_2379F8918(*v2, *(v2 + 8), *(v2 + 16));
  sub_2379F8918(*v3, *(v3 + 8), *(v3 + 16));

  sub_237AF5380(v0 + 16);
  OUTLINED_FUNCTION_16_20();
  sub_237AF8310();

  OUTLINED_FUNCTION_8();

  return v4();
}

void MLBoostedTreeRegressor.predictions(from:)()
{
  v1 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_2_0();
  v7 = v6 - v5;
  type metadata accessor for MLBoostedTreeRegressor(0);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  if (!v0)
  {
    OUTLINED_FUNCTION_11();
    sub_237A47CE0(v8, v9);
    sub_237C05DFC();
    (*(v3 + 8))(v7, v1);
  }
}

uint64_t MLBoostedTreeRegressor.predictions(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_146();
  v4 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_2_0();
  v10 = (v9 - v8);
  v11 = sub_237C0602C();
  v12 = OUTLINED_FUNCTION_20(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = *(a1 + 8);
  v18 = *a1;
  v19 = v16;
  sub_2379DBCF4(v18, v16);
  sub_237A70ED4(&v18, v10);
  MLBoostedTreeRegressor.predictions(from:)();
  if (v2)
  {
    return (*(v6 + 8))(v10, v4);
  }

  (*(v6 + 8))(v10, v4);
  return sub_237A72900(v15, 1, v1);
}

uint64_t MLBoostedTreeRegressor.evaluation(on:)(uint64_t a1)
{
  v4 = OUTLINED_FUNCTION_146();
  v5 = type metadata accessor for MLBoostedTreeRegressor(v4);
  OUTLINED_FUNCTION_43_0();
  sub_2379F2DA4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_237C0B660;
  v7 = (v2 + *(v5 + 24));
  v8 = v7[1];
  *(inited + 32) = *v7;
  *(inited + 40) = v8;

  sub_2379F2DA4();
  swift_setDeallocating();
  sub_237B9082C();
  return sub_237A478AC(a1, v1);
}

{
  v2 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = (v7 - v6);
  v9 = *(a1 + 8);
  v11 = *a1;
  v12 = v9;
  sub_2379DBCF4(v11, v9);
  sub_237A70ED4(&v11, v8);
  MLBoostedTreeRegressor.evaluation(on:)(v8);
  return (*(v4 + 8))(v8, v2);
}

void MLBoostedTreeRegressor.write(to:metadata:)()
{
  OUTLINED_FUNCTION_74();
  v45 = v0;
  v3 = v2;
  v4 = type metadata accessor for TreeRegressorModel(0);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_0();
  v8 = v7 - v6;
  v9 = sub_237C07F1C();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_2_0();
  v15 = v14 - v13;
  v16 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_2_0();
  v20 = v3;
  v23 = v22 - v21;
  memcpy(v44, v20, 0x48uLL);
  sub_2379F25FC();
  if (!v1)
  {
    v36 = v11;
    v37 = v18;
    OUTLINED_FUNCTION_3_48();
    sub_237AF7ECC(v45, v8, v24);
    v25 = *(&v44[0] + 1);
    if (*(&v44[0] + 1))
    {
      v26 = *&v44[0];
      v27 = *(&v44[1] + 1);
      v28 = *&v44[1];
      v29 = v44[2];
      v30 = *(&v44[3] + 1);
      v31 = *&v44[3];
      v32 = *&v44[4];
    }

    else
    {
      v33 = v23;
      v34 = NSFullUserName();
      v26 = sub_237C086EC();
      v25 = v35;

      v23 = v33;
      v32 = 0;
      v27 = 0x8000000237C17C90;
      v28 = 0xD000000000000033;
      v29 = 0uLL;
      v30 = 0xE100000000000000;
      v31 = 49;
    }

    v39[0] = v26;
    v39[1] = v25;
    v39[2] = v28;
    v39[3] = v27;
    v40 = v29;
    v41 = v31;
    v42 = v30;
    v43 = v32;
    sub_2379FC864(v44, &v38, &qword_27DE9ADE0, &unk_237C0BF90);
    sub_2379FB350(v39);
    OUTLINED_FUNCTION_0_56();
    sub_237AF8310();
    sub_2379FC064(v39);
    sub_237C07E5C();
    (*(v36 + 8))(v15, v9);
    (*(v37 + 8))(v23, v16);
  }

  OUTLINED_FUNCTION_73();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> MLBoostedTreeRegressor.write(toFile:metadata:)(Swift::String toFile, CreateML::MLModelMetadata_optional *metadata)
{
  OUTLINED_FUNCTION_74();
  v24[1] = v3;
  v25 = v2;
  v5 = v4;
  v6 = sub_237C0596C();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  v12 = v11 - v10;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AA18, &qword_237C0B710);
  v14 = OUTLINED_FUNCTION_20(v13);
  MEMORY[0x28223BE20](v14);
  v16 = v24 - v15;
  v17 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v23 = v22 - v21;
  memcpy(v26, v5, sizeof(v26));
  __swift_storeEnumTagSinglePayload(v16, 1, 1, v17);
  (*(v8 + 104))(v12, *MEMORY[0x277CC91D8], v6);

  sub_237C05ABC();
  MLBoostedTreeRegressor.write(to:metadata:)();
  (*(v19 + 8))(v23, v17);
  OUTLINED_FUNCTION_73();
}

unint64_t MLBoostedTreeRegressor.debugDescription.getter()
{
  v1 = type metadata accessor for MLBoostedTreeRegressor(0);
  v2 = MLBoostedTreeRegressor.ModelParameters.description.getter();
  v4 = v3;
  v5 = MLRegressorMetrics.description.getter();
  v7 = v6;
  v8 = *(v0 + *(v1 + 40) + 16);
  v9 = MLRegressorMetrics.description.getter();
  v11 = v10;
  OUTLINED_FUNCTION_80();
  MEMORY[0x2383DC360](v2, v4);

  OUTLINED_FUNCTION_80();
  v15 = v12;
  MEMORY[0x2383DC360](v5, v7);
  MEMORY[0x2383DC360](0xD00000000000001ELL, v15);

  if ((v8 & 1) == 0)
  {
    OUTLINED_FUNCTION_80();
    v16 = v13;
    MEMORY[0x2383DC360](v9, v11);
    MEMORY[0x2383DC360](0xD000000000000020, v16);
  }

  return 0xD000000000000021;
}

id MLBoostedTreeRegressor.playgroundDescription.getter@<X0>(void *a1@<X8>)
{
  v2 = sub_2379E8EE0(0, &qword_27DE9AA20, 0x277CCA898);
  v3 = MLBoostedTreeRegressor.debugDescription.getter();
  result = sub_2379E3E14(v3, v4);
  a1[3] = v2;
  *a1 = result;
  return result;
}

uint64_t sub_237AF7E10()
{
  OUTLINED_FUNCTION_49();
  v0 = OUTLINED_FUNCTION_46();
  v1 = type metadata accessor for TreeRegressorModel(v0);
  OUTLINED_FUNCTION_20(v1);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_19_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_55_0(v3);

  return sub_2379F92CC(v5);
}

uint64_t sub_237AF7ECC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

id sub_237AF7F28@<X0>(void *a1@<X8>)
{
  result = MLBoostedTreeRegressor.model.getter();
  *a1 = result;
  return result;
}

uint64_t sub_237AF7F6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OUTLINED_FUNCTION_46();
  v7 = type metadata accessor for TreeRegressorModel(v6);
  if (*(*(v7 - 8) + 84) == a2)
  {

    return __swift_getEnumTagSinglePayload(v3, a2, v7);
  }

  else
  {
    v9 = *(v3 + *(a3 + 20));
    if (v9 >= 0xFFFFFFFF)
    {
      LODWORD(v9) = -1;
    }

    return (v9 + 1);
  }
}

uint64_t sub_237AF8028(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for TreeRegressorModel(0);
  if (*(*(result - 8) + 84) == a3)
  {

    return __swift_storeEnumTagSinglePayload(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void sub_237AF80D0(uint64_t a1)
{
  type metadata accessor for TreeRegressorModel(319);
  if (v1 <= 0x3F)
  {
    sub_2379E8EE0(319, &qword_27DE9AA38, 0x277CBFF20);
    if (v2 <= 0x3F)
    {
      sub_2379FC328();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_237AF8198()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AF81E0(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = swift_task_alloc();
  v9 = OUTLINED_FUNCTION_19_0(v8);
  *v9 = v10;
  v9[1] = sub_2379D6854;

  return sub_237AF6664(a1, v3, v4, v5, v6, v7);
}

uint64_t sub_237AF82A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCA0, &qword_237C12348);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AF8310()
{
  v1 = OUTLINED_FUNCTION_46();
  v2(v1);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_237AF8364(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  v4 = OUTLINED_FUNCTION_37_0();
  v5(v4);
  return a2;
}

uint64_t OUTLINED_FUNCTION_41_9()
{
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);

  return sub_237AF82A0(v2, v3);
}

uint64_t OUTLINED_FUNCTION_43_6()
{

  return sub_237AF8310();
}

uint64_t sub_237AF8540(uint64_t a1)
{
  _s20PersistentParametersVMa_1(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  sub_237C05DAC();
  sub_237C05DBC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  _s10ClassifierVMa_1(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  _s5ModelVMa(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = type metadata accessor for MLClassifierMetrics(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v19);
  OUTLINED_FUNCTION_16_21();
  sub_237AFC250(a1, v1 + v26, v27);
  return v1;
}

void sub_237AF8658()
{
  OUTLINED_FUNCTION_74();
  v78 = v2;
  v3 = v0;
  v80 = v4;
  v6 = v5;
  v8 = v7;
  v79 = v9;
  v11 = v10;
  v77 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_23();
  v74 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v16);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_23();
  v75 = v18;
  v19 = sub_237C05DBC();
  OUTLINED_FUNCTION_0();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_0_22();
  v76 = v23;
  v24 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  v25 = _s20PersistentParametersVMa_1(0);
  v73 = v24;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v25);
  sub_237C05DAC();
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v19);
  _s10ClassifierVMa_1(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v35);
  _s5ModelVMa(0);
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  v40 = type metadata accessor for MLClassifierMetrics(0);
  v41 = v6;
  OUTLINED_FUNCTION_64();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v40);
  OUTLINED_FUNCTION_64();
  v45 = v11;
  __swift_storeEnumTagSinglePayload(v46, v47, v48, v40);
  sub_237B19700(v11, v8, v41, v77);
  if (v1)
  {

    OUTLINED_FUNCTION_3_49();
    sub_237AFC1F8(v80, v50);
    sub_237A2A1B0(v78);
    sub_2379D9054(v79, &qword_27DE9A9A0, &qword_237C0BF60);
    v51 = *(v21 + 8);
    v51(v11, v19);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B670, &qword_237C0DD10);
    v51(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData, v19);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, &qword_27DE9CCD0, &qword_237C123E0);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, &qword_27DE9B668, &qword_237C0DD08);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, &qword_27DE9B660, &qword_237C0DD00);
    sub_2379D9054(v3 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, &qword_27DE9B660, &qword_237C0DD00);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v71 = v49;
    v70 = v25;
    v72 = v8;

    v52 = v79;
    sub_237AFC148(v79, v75, &qword_27DE9A9A0, &qword_237C0BF60);
    OUTLINED_FUNCTION_20_20(v75);
    if (v53)
    {
      sub_2379D9054(v75, &qword_27DE9A9A0, &qword_237C0BF60);
      v65 = *(v21 + 32);
      v68 = v78;
    }

    else
    {
      v69 = *(v21 + 32);
      v69(v76, v75, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AC90, &qword_237C0B9E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_237C0B660;
      *(inited + 32) = v8;
      *(inited + 40) = v41;

      sub_2379F2DA4();
      v65 = v69;
      swift_setDeallocating();
      sub_237B9082C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AD50, &qword_237C119E0);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_237C0B670;
      v67 = MEMORY[0x277D83B88];
      *(v66 + 32) = MEMORY[0x277D837D0];
      *(v66 + 40) = v67;
      sub_2379F30EC();
      (*(v21 + 8))(v76, v19);

      v68 = v78;
      v52 = v79;
    }

    v65(v74, v45, v19);
    v54 = v70[5];
    OUTLINED_FUNCTION_64();
    __swift_storeEnumTagSinglePayload(v55, v56, v57, v19);
    sub_237AFC2B0(v52, v74 + v54, &qword_27DE9A9A0, &qword_237C0BF60);
    v58 = (v74 + v70[6]);
    *v58 = v72;
    v58[1] = v41;
    *(v74 + v70[7]) = v71;
    memcpy((v74 + v70[8]), v68, 0x49uLL);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v59, v60, v61, v70);
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237AFC2B0(v74, v3 + v73, &qword_27DE9B670, &qword_237C0DD10);
    swift_endAccess();
    OUTLINED_FUNCTION_16_21();
    sub_237AFC250(v80, v3 + v62, v63);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237AF8E1C()
{
  OUTLINED_FUNCTION_74();
  v107 = v1;
  v95 = sub_237C0747C();
  OUTLINED_FUNCTION_0();
  v94 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v5);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v7);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B628, &unk_237C0DBE0);
  OUTLINED_FUNCTION_0();
  v105 = v8;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_77_0(&v91 - v11);
  v108 = _s10ClassifierVMa_1(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF88, &unk_237C0C700);
  OUTLINED_FUNCTION_20(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v16);
  v113 = sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v103 = v17;
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  v21 = OUTLINED_FUNCTION_20(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_77_0(&v91 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v24);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v25);
  v27 = &v91 - v26;
  v28 = _s20PersistentParametersVMa_1(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_2_0();
  v32 = v31 - v30;
  v33 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v0 + v33, v27, &qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20_20(v27);
  if (v34)
  {
    sub_2379D9054(v27, &qword_27DE9B670, &qword_237C0DD10);
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_1_55();
    sub_237AFC250(v27, v32, v35);
    v36 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    v37 = sub_237C05DBC();
    OUTLINED_FUNCTION_4();
    (*(v38 + 24))(v0 + v36, v32, v37);
    swift_endAccess();
    v39 = v28[5];
    v40 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237A6EE90(v32 + v39, v0 + v40);
    swift_endAccess();
    v41 = v28[6];
    v109 = v32;
    v42 = (v32 + v41);
    v43 = *v42;
    v44 = v42[1];
    OUTLINED_FUNCTION_27_10();
    swift_beginAccess();
    sub_237C05DFC();
    swift_endAccess();
    OUTLINED_FUNCTION_27_10();
    swift_beginAccess();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0 + v40, 1, v37);
    v92 = v0;
    if (EnumTagSinglePayload)
    {
      swift_endAccess();
      v46 = 1;
      v47 = v105;
      v48 = v113;
      v49 = v102;
    }

    else
    {
      v49 = v102;
      sub_237C05DFC();
      swift_endAccess();
      v46 = 0;
      v47 = v105;
      v48 = v113;
    }

    v50 = v44;
    v99 = v44;
    __swift_storeEnumTagSinglePayload(v49, v46, 1, v48);
    v51 = v28[8];
    v52 = *(v109 + v28[7]);
    sub_237A3B70C(v109 + v51, v112);
    v53 = v100;
    *v100 = v43;
    *(v53 + 8) = v50;
    *(v53 + 16) = v52;
    sub_237A3B70C(v112, v53 + 24);
    *(v53 + 120) = v52;
    *(v53 + 128) = 0xD000000000000013;
    *(v53 + 136) = 0x8000000237C17BE0;
    sub_237A3B70C(v112, v111);
    sub_237A20BBC();
    swift_bridgeObjectRetain_n();

    v54 = v104;
    sub_237C072AC();
    v55 = v106;
    sub_237C0725C();
    sub_237C0728C();
    sub_237C0729C();
    sub_237C0727C();
    sub_237C0726C();
    sub_237A2A1B0(v111);
    (*(v47 + 16))(v101, v54, v55);
    v56 = v108;
    v57 = *(v108 + 36);
    sub_237C073CC();
    v58 = v107;
    v59 = sub_237B89590(v110, v49);
    v107 = v58;
    if (v58)
    {
      (*(v47 + 8))(v54, v55);
      sub_237A2A1B0(v112);
      sub_2379D9054(v49, &qword_27DE9AF88, &unk_237C0C700);
      v61 = OUTLINED_FUNCTION_28_12();
      v62(v61);

      sub_237A2A1B0(v53 + 24);

      sub_237C0741C();
      OUTLINED_FUNCTION_4();
      (*(v63 + 8))(v53 + v57);
      OUTLINED_FUNCTION_2_55();
      sub_237AFC1F8(v109, v64);
LABEL_9:
      OUTLINED_FUNCTION_73();
      return;
    }

    v65 = v59;
    v66 = v54;
    v67 = v60;
    (*(v47 + 8))(v66, v55);
    sub_237A2A1B0(v112);
    sub_2379D9054(v49, &qword_27DE9AF88, &unk_237C0C700);
    v68 = OUTLINED_FUNCTION_28_12();
    v69(v68);
    *(v53 + 104) = v65;
    *(v53 + 112) = v67 & 1;
    v70 = v97;
    sub_237AFC250(v53, v97, _s10ClassifierVMa_1);
    OUTLINED_FUNCTION_80_0();
    __swift_storeEnumTagSinglePayload(v71, v72, v73, v56);
    v74 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    v75 = v92;
    OUTLINED_FUNCTION_59_1();
    swift_beginAccess();
    sub_237AFC2B0(v70, v75 + v74, &qword_27DE9CCD0, &qword_237C123E0);
    swift_endAccess();
    v76 = v98;
    sub_237AFC148(v75 + v74, v98, &qword_27DE9CCD0, &qword_237C123E0);
    OUTLINED_FUNCTION_73_1(v76, 1, v56);
    if (!v34)
    {
      v78 = *v76;
      v77 = *(v76 + 8);

      v79 = v93;
      sub_237C073DC();
      v80 = *(v76 + 104);
      v81 = *(v76 + 112);
      v82 = v96;
      *v96 = v78;
      *(v82 + 1) = v77;
      v83 = _s5ModelVMa(0);
      *(v82 + 3) = 0;
      *(v82 + 4) = 0;
      *(v82 + 2) = 0;
      (*(v94 + 32))(&v82[*(v83 + 24)], v79, v95);
      v84 = &v82[*(v83 + 28)];
      *v84 = v80;
      v84[8] = v81;

      OUTLINED_FUNCTION_2_55();
      sub_237AFC1F8(v109, v85);
      OUTLINED_FUNCTION_0_57();
      sub_237AFC1F8(v76, v86);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v87, v88, v89, v83);
      v90 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v82, v75 + v90, &qword_27DE9B668, &qword_237C0DD08);
      swift_endAccess();
      goto LABEL_9;
    }
  }

  __break(1u);
}

void sub_237AF97A4()
{
  OUTLINED_FUNCTION_74();
  v68[0] = v1;
  v77 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_77_0(v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  v7 = OUTLINED_FUNCTION_20(v6);
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_4_4();
  MEMORY[0x28223BE20](v8);
  v73 = v68 - v9;
  sub_237C0602C();
  OUTLINED_FUNCTION_0();
  v71 = v11;
  v72 = v10;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_0_22();
  OUTLINED_FUNCTION_77_0(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B8E8, &qword_237C0EBF0);
  OUTLINED_FUNCTION_20(v13);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v14);
  v16 = v68 - v15;
  v17 = type metadata accessor for MLCheckpoint(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_0_22();
  v75 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v20);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v21);
  v23 = v68 - v22;
  v24 = _s20PersistentParametersVMa_1(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_2_0();
  v28 = v27 - v26;
  v29 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  v74 = v0;
  sub_237AFC148(v0 + v29, v23, &qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_73_1(v23, 1, v24);
  if (v30)
  {
    sub_2379D9054(v23, &qword_27DE9B670, &qword_237C0DD10);
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_1_55();
  sub_237AFC250(v23, v28, v31);
  sub_237A9A92C(v77, v16);
  OUTLINED_FUNCTION_73_1(v16, 1, v17);
  if (v30)
  {
    sub_2379D9054(v16, &qword_27DE9B8E8, &qword_237C0EBF0);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    OUTLINED_FUNCTION_18_4(v32, 0xD00000000000001DLL);
LABEL_12:
    OUTLINED_FUNCTION_2_55();
    sub_237AFC1F8(v28, v51);
    goto LABEL_19;
  }

  v33 = v75;
  sub_237AFC250(v16, v75, type metadata accessor for MLCheckpoint);
  v34 = v74;
  switch(*(v33 + *(v17 + 20)))
  {
    case 2:

      goto LABEL_9;
    case 4:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_8;
    default:
LABEL_8:
      OUTLINED_FUNCTION_57_0();
      v35 = sub_237C0929C();

      if ((v35 & 1) == 0)
      {
        sub_2379E8AF0();
        OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
        OUTLINED_FUNCTION_18_4(v50, 0xD000000000000027);
        OUTLINED_FUNCTION_17_20();
        goto LABEL_12;
      }

LABEL_9:
      v36 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237C05DBC();
      OUTLINED_FUNCTION_4();
      (*(v37 + 24))(v34 + v36, v28);
      swift_endAccess();
      v38 = v24[5];
      v39 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237A6EE90(v28 + v38, v34 + v39);
      swift_endAccess();
      v40 = (v28 + v24[6]);
      v41 = *v40;
      v42 = v40[1];
      OUTLINED_FUNCTION_27_10();
      swift_beginAccess();
      v43 = v70;
      sub_237C05DFC();
      swift_endAccess();
      sub_237C05FFC();
      (*(v71 + 8))(v43, v72);
      if (swift_dynamicCastMetatype())
      {
        v44 = *(v28 + v24[7]);

        v45 = MEMORY[0x277D84F90];
        v46 = v24;
        v47 = v73;
        v48 = v73;
        v49 = 1;
      }

      else
      {
        if (!swift_dynamicCastMetatype())
        {
LABEL_23:
          sub_237C090DC();
          __break(1u);
          JUMPOUT(0x237AF9F80);
        }

        v44 = *(v28 + v24[7]);

        v45 = MEMORY[0x277D84F90];
        v46 = v24;
        v47 = v73;
        v48 = v73;
        v49 = 0;
      }

      sub_237A95650(v45, v49, v41, v42, v44, v48);
      v52 = _s10ClassifierVMa_1(0);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v53, v54, v55, v52);
      v56 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v47, v34 + v56, &qword_27DE9CCD0, &qword_237C123E0);
      swift_endAccess();
      sub_237A3B70C(v28 + v46[8], v76);
      v57 = v34 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      _s10ClassifierVMa_1(0);
      OUTLINED_FUNCTION_73_1(v57, 1, v52);
      if (v30)
      {
        goto LABEL_21;
      }

      sub_237AFC19C(v76, v57 + 24);
      swift_endAccess();
      v58 = v69;
      sub_237AFC148(v57, v69, &qword_27DE9CCD0, &qword_237C123E0);
      OUTLINED_FUNCTION_73_1(v58, 1, v52);
      if (v30)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      sub_237AFC0F0();
      v59 = v68[1];
      v60 = v68[0];
      sub_237C0723C();
      OUTLINED_FUNCTION_17_20();
      OUTLINED_FUNCTION_2_55();
      sub_237AFC1F8(v28, v61);
      OUTLINED_FUNCTION_0_57();
      sub_237AFC1F8(v58, v62);
      if (!v60)
      {
        _s5ModelVMa(0);
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v63, v64, v65, v66);
        v67 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237AFC2B0(v59, v34 + v67, &qword_27DE9B668, &qword_237C0DD08);
        swift_endAccess();
      }

LABEL_19:
      OUTLINED_FUNCTION_73();
      return;
  }
}

uint64_t sub_237AF9F94(_BYTE *a1)
{
  if (*a1 != 2)
  {
    return 0;
  }

  v3 = v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters;
  return *(v3 + *(type metadata accessor for MLTrainingSessionParameters(0) + 28));
}

uint64_t sub_237AF9FE8(uint64_t a1)
{
  v2[14] = a1;
  v2[15] = v1;
  v3 = sub_237C06A4C();
  v2[16] = v3;
  OUTLINED_FUNCTION_1(v3);
  v2[17] = v4;
  v2[18] = OUTLINED_FUNCTION_19();
  v5 = sub_237C05DBC();
  v2[19] = v5;
  OUTLINED_FUNCTION_1(v5);
  v2[20] = v6;
  v2[21] = OUTLINED_FUNCTION_19();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  OUTLINED_FUNCTION_20(v7);
  v2[22] = OUTLINED_FUNCTION_19();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v8);
  v2[23] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v9);
}

uint64_t sub_237AFA138()
{
  v1 = v0[23];
  v2 = v0[15];
  v3 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v2 + v3, v1, &qword_27DE9B670, &qword_237C0DD10);
  v4 = _s20PersistentParametersVMa_1(0);
  LODWORD(v2) = __swift_getEnumTagSinglePayload(v1, 1, v4);
  result = sub_2379D9054(v1, &qword_27DE9B670, &qword_237C0DD10);
  if (v2 == 1)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v6 = v0[14];
  v7 = v0[15] + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_sessionParameters;
  result = type metadata accessor for MLTrainingSessionParameters(0);
  v8 = *(v7 + *(result + 20));
  if (__OFADD__(v6, v8))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v9 = *(v7 + *(result + 28));
  if (__OFSUB__(v9, v6))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 >= v9 - v6)
  {
    v10 = v9 - v6;
  }

  else
  {
    v10 = *(v7 + *(result + 20));
  }

  type metadata accessor for EventCollector();
  swift_allocObject();
  result = sub_237AD988C();
  v43 = v10;
  if ((v10 & 0x8000000000000000) == 0)
  {
    v11 = result;
    v12 = v0[20];
    v13 = v0[15];
    v14 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
    v15 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
    v42 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    v41 = v14;
    OUTLINED_FUNCTION_71();
    result = swift_beginAccess();
    v16 = 0;
    v17 = (v12 + 16);
    v18 = (v12 + 8);
    while (1)
    {
      if (v43 == v16)
      {
        v27 = v0[17];
        v28 = v0[18];
        v29 = v0[16];
        sub_237C06A1C();
        sub_237B1A15C(v28);
        v31 = v30;
        v32 = *(v27 + 8);
        v32(v28, v29);
        if ((v31 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_11();
          sub_237B19FFC(v33, 3);
        }

        v34 = v0[18];
        v35 = v0[16];
        sub_237C069EC();
        sub_237B1A15C(v34);
        v37 = v36;
        v32(v34, v35);
        if ((v37 & 1) == 0)
        {
          OUTLINED_FUNCTION_36_11();
          sub_237B19FFC(v38, 0);
        }

        OUTLINED_FUNCTION_25_19();

        __asm { BRAA            X4, X16 }
      }

      if (__OFADD__(v16, 1))
      {
        break;
      }

      v19 = v0[22];
      sub_237AFC148(v13 + v42, v19, &qword_27DE9CCD0, &qword_237C123E0);
      v20 = _s10ClassifierVMa_1(0);
      result = __swift_getEnumTagSinglePayload(v19, 1, v20);
      if (result == 1)
      {
        goto LABEL_26;
      }

      (*v17)(v0[21], v13 + v41, v0[19]);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      v21 = _s5ModelVMa(0);
      result = __swift_getEnumTagSinglePayload(v13 + v15, 1, v21);
      if (result == 1)
      {
        goto LABEL_27;
      }

      v22 = v0[21];

      sub_237A960C0((v13 + v15), v22, sub_237AFC198, v11);
      v24 = v0[21];
      v23 = v0[22];
      v25 = v0[19];
      swift_endAccess();

      (*v18)(v24, v25);
      OUTLINED_FUNCTION_0_57();
      result = sub_237AFC1F8(v23, v26);
      ++v16;
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_237AFA5BC()
{
  v1[26] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9A9A0, &qword_237C0BF60);
  OUTLINED_FUNCTION_20(v2);
  v1[27] = OUTLINED_FUNCTION_19();
  v3 = sub_237C0602C();
  OUTLINED_FUNCTION_20(v3);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v4 = type metadata accessor for AnyClassificationMetrics(0);
  OUTLINED_FUNCTION_20(v4);
  v1[30] = OUTLINED_FUNCTION_19();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B660, &qword_237C0DD00);
  OUTLINED_FUNCTION_20(v5);
  v1[31] = OUTLINED_FUNCTION_19();
  v6 = sub_237C05DBC();
  v1[32] = v6;
  OUTLINED_FUNCTION_1(v6);
  v1[33] = v7;
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v8);
  v1[38] = OUTLINED_FUNCTION_19();
  v9 = _s5ModelVMa(0);
  v1[39] = v9;
  OUTLINED_FUNCTION_20(v9);
  v1[40] = OUTLINED_FUNCTION_19();
  OUTLINED_FUNCTION_11();

  return MEMORY[0x2822009F8](v10);
}

void sub_237AFA790()
{
  v1 = v0[38];
  v2 = v0[39];
  v3 = v0[26];
  v4 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v3 + v4, v1, &qword_27DE9B668, &qword_237C0DD08);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    sub_2379D9054(v0[38], &qword_27DE9B668, &qword_237C0DD08);
  }

  else
  {
    v5 = v0[26];
    sub_237AFC250(v0[38], v0[40], _s5ModelVMa);
    v6 = v5 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
    OUTLINED_FUNCTION_27_10();
    swift_beginAccess();
    v7 = _s20PersistentParametersVMa_1(0);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7))
    {
      sub_237AFC1F8(v0[40], _s5ModelVMa);
      swift_endAccess();
    }

    else
    {
      v10 = v0[36];
      v11 = v0[32];
      v12 = v0[33];
      v13 = v0[26];
      swift_endAccess();
      v14 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      (*(v12 + 16))(v10, v13 + v14, v11);

      OUTLINED_FUNCTION_11();
      sub_237A93A8C(v15, v16);
      v17 = v0[30];
      v18 = v0[31];
      v53 = v0[27];
      v55 = v0[32];
      v51 = v0[26];
      v57 = *(v0[33] + 8);
      (v57)(v0[36]);
      sub_237C05DFC();
      OUTLINED_FUNCTION_27_10();
      swift_beginAccess();
      sub_237C05DFC();
      swift_endAccess();
      sub_237B0CBBC();
      OUTLINED_FUNCTION_14_23();
      sub_237AFC250(v17, v18, v19);
      type metadata accessor for MLClassifierMetrics.Contents(0);
      swift_storeEnumTagMultiPayload();
      v20 = type metadata accessor for MLClassifierMetrics(0);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v21, v22, v23, v20);
      v24 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics;
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v18, v51 + v24, &qword_27DE9B660, &qword_237C0DD00);
      swift_endAccess();
      v25 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237AFC148(v51 + v25, v53, &qword_27DE9A9A0, &qword_237C0BF60);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v53, 1, v55);
      v27 = v0[40];
      if (EnumTagSinglePayload == 1)
      {
        v28 = v0[37];
        v30 = v0[31];
        v29 = v0[32];
        v31 = v0[26];
        v32 = v0[27];

        v57(v28, v29);
        OUTLINED_FUNCTION_4_48();
        sub_237AFC1F8(v27, v33);
        sub_2379D9054(v32, &qword_27DE9A9A0, &qword_237C0BF60);
        OUTLINED_FUNCTION_64();
        __swift_storeEnumTagSinglePayload(v34, v35, v36, v20);
        v37 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237AFC2B0(v30, v31 + v37, &qword_27DE9B660, &qword_237C0DD00);
      }

      else
      {
        (*(v0[33] + 32))(v0[35], v0[27], v0[32]);
        OUTLINED_FUNCTION_11();
        sub_237A93A8C(v38, v39);
        v50 = v0[37];
        v52 = v0[40];
        v47 = v0[35];
        v48 = v0[34];
        v40 = v0[32];
        v49 = v0[30];
        v54 = v0[31];
        v56 = v0[26];
        sub_237C05DFC();
        sub_237C05DFC();

        sub_237B0CBBC();
        v57(v48, v40);
        v57(v47, v40);
        v57(v50, v40);
        OUTLINED_FUNCTION_4_48();
        sub_237AFC1F8(v52, v41);
        OUTLINED_FUNCTION_14_23();
        sub_237AFC250(v49, v54, v42);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_80_0();
        __swift_storeEnumTagSinglePayload(v43, v44, v45, v20);
        v46 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics;
        OUTLINED_FUNCTION_59_1();
        swift_beginAccess();
        sub_237AFC2B0(v54, v56 + v46, &qword_27DE9B660, &qword_237C0DD00);
      }

      swift_endAccess();
    }
  }

  OUTLINED_FUNCTION_25_19();

  __asm { BRAA            X3, X16 }
}

uint64_t sub_237AFAEA8(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B668, &qword_237C0DD08);
  OUTLINED_FUNCTION_20(v4);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v5);
  v7 = &v21[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCD0, &qword_237C123E0);
  OUTLINED_FUNCTION_20(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v9);
  v11 = &v21[-v10];
  switch(*a2)
  {
    case 2u:

      goto LABEL_5;
    case 4u:
      OUTLINED_FUNCTION_60_0();
      goto LABEL_4;
    default:
LABEL_4:
      OUTLINED_FUNCTION_57_0();
      v12 = sub_237C0929C();

      if ((v12 & 1) == 0)
      {
        v17 = 0;
        return v17 & 1;
      }

LABEL_5:
      v13 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237AFC148(v2 + v13, v11, &qword_27DE9CCD0, &qword_237C123E0);
      _s10ClassifierVMa_1(0);
      OUTLINED_FUNCTION_20_20(v11);
      if (v14)
      {
        __break(1u);
        goto LABEL_11;
      }

      v15 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model;
      OUTLINED_FUNCTION_71();
      swift_beginAccess();
      sub_237AFC148(v2 + v15, v7, &qword_27DE9B668, &qword_237C0DD08);
      v16 = _s5ModelVMa(0);
      OUTLINED_FUNCTION_73_1(v7, 1, v16);
      if (v14)
      {
LABEL_11:
        __break(1u);
        JUMPOUT(0x237AFB120);
      }

      sub_237AFC0F0();
      v17 = 1;
      sub_237C0724C();
      OUTLINED_FUNCTION_4_48();
      sub_237AFC1F8(v7, v18);
      OUTLINED_FUNCTION_0_57();
      sub_237AFC1F8(v11, v19);
      return v17 & 1;
  }
}

void sub_237AFB134()
{
  OUTLINED_FUNCTION_74();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_20(v3);
  OUTLINED_FUNCTION_7();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = _s20PersistentParametersVMa_1(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_2_0();
  v11 = v10 - v9;
  v12 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
  OUTLINED_FUNCTION_71();
  swift_beginAccess();
  sub_237AFC148(v0 + v12, v6, &qword_27DE9B670, &qword_237C0DD10);
  OUTLINED_FUNCTION_73_1(v6, 1, v7);
  if (v13)
  {
    sub_2379D9054(v6, &qword_27DE9B670, &qword_237C0DD10);
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v14 = 0xD000000000000030;
    *(v14 + 8) = 0x8000000237C191C0;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0u;
    *(v14 + 48) = 2;
    swift_willThrow();
  }

  else
  {
    OUTLINED_FUNCTION_1_55();
    sub_237AFC250(v6, v11, v15);
    sub_237A2A204(v2);
    OUTLINED_FUNCTION_2_55();
    sub_237AFC1F8(v11, v16);
  }

  OUTLINED_FUNCTION_73();
}

void sub_237AFB2D4()
{
  OUTLINED_FUNCTION_74();
  v38 = v0;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B670, &qword_237C0DD10);
  v5 = OUTLINED_FUNCTION_20(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_18_0();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v37 - v10;
  v12 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_0();
  v18 = (v17 - v16);
  v19 = _s20PersistentParametersVMa_1(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_18_0();
  v23 = v21 - v22;
  v25 = MEMORY[0x28223BE20](v24);
  v27 = &v37 - v26;
  (*(v14 + 16))(v18, v3, v12, v25);
  sub_237A28F78(v18, v27);
  if (!v1)
  {
    v28 = v8;
    v29 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters;
    v30 = v38;
    OUTLINED_FUNCTION_71();
    swift_beginAccess();
    sub_237AFC148(v30 + v29, v11, &qword_27DE9B670, &qword_237C0DD10);
    OUTLINED_FUNCTION_20_20(v11);
    if (v31)
    {
      sub_2379D9054(v11, &qword_27DE9B670, &qword_237C0DD10);
      OUTLINED_FUNCTION_1_55();
      sub_237AFC250(v27, v28, v32);
      OUTLINED_FUNCTION_80_0();
      __swift_storeEnumTagSinglePayload(v33, v34, v35, v19);
      OUTLINED_FUNCTION_59_1();
      swift_beginAccess();
      sub_237AFC2B0(v28, v30 + v29, &qword_27DE9B670, &qword_237C0DD10);
      swift_endAccess();
    }

    else
    {
      OUTLINED_FUNCTION_1_55();
      sub_237AFC250(v11, v23, v36);
      sub_237AFB578(v27, v23);
      sub_237AFC1F8(v23, _s20PersistentParametersVMa_1);
      sub_237AFC1F8(v27, _s20PersistentParametersVMa_1);
    }
  }

  OUTLINED_FUNCTION_73();
}

uint64_t sub_237AFB578(uint64_t a1, uint64_t a2)
{
  v4 = _s20PersistentParametersVMa_1(0);
  v5 = *(v4 + 24);
  v7 = *(a1 + v5);
  v6 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v7 == *v8 && v6 == v8[1];
  if (v9 || (sub_237C0929C() & 1) != 0)
  {

    v11 = sub_237B42F98(v10);

    v13 = sub_237B42F98(v12);
    v14 = sub_237A6E3A8(v11, v13);

    if (v14)
    {
      result = sub_237AF2008(a1 + *(v4 + 32), a2 + *(v4 + 32), &v24);
      v16 = v25;
      if (!v25)
      {
        return result;
      }

      v18 = v28;
      v17 = v29;
      v7 = v26;
      v6 = v27;
      v19 = v24;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    }

    else
    {
      v16 = 0x8000000237C198F0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE60, &qword_237C0D000);
      sub_237A6EF00();
      v7 = OUTLINED_FUNCTION_50_4();
      v6 = v21;

      OUTLINED_FUNCTION_50_4();

      v18 = sub_237C0883C();
      v17 = v22;
      sub_2379E8AF0();
      OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
      v19 = 0xD000000000000011;
    }
  }

  else
  {

    v18 = sub_237C0883C();
    v17 = v23;
    sub_2379E8AF0();
    OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    v16 = 0xED00006E6D756C6FLL;
    v19 = 0x6320746567726154;
  }

  *v20 = v19;
  *(v20 + 8) = v16;
  *(v20 + 16) = v7;
  *(v20 + 24) = v6;
  *(v20 + 32) = v18;
  *(v20 + 40) = v17;
  *(v20 + 48) = 3;
  return swift_willThrow();
}

uint64_t sub_237AFB7FC(uint64_t a1)
{
  OUTLINED_FUNCTION_3_49();
  sub_237AFC1F8(v1 + v2, v3);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingParameters, &qword_27DE9B670, &qword_237C0DD10);
  v4 = OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingData;
  sub_237C05DBC();
  OUTLINED_FUNCTION_4();
  (*(v5 + 8))(v1 + v4);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationData, &qword_27DE9A9A0, &qword_237C0BF60);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_classifier, &qword_27DE9CCD0, &qword_237C123E0);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_model, &qword_27DE9B668, &qword_237C0DD08);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_trainingMetrics, &qword_27DE9B660, &qword_237C0DD00);
  sub_2379D9054(v1 + OBJC_IVAR____TtC8CreateML51LogisticRegressionClassifierTrainingSessionDelegate_validationMetrics, &qword_27DE9B660, &qword_237C0DD00);
  return v1;
}

uint64_t sub_237AFB930(uint64_t a1)
{
  sub_237AFB7FC(a1);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LogisticRegressionClassifierTrainingSessionDelegate(uint64_t a1)
{
  result = qword_27DE9CCA8;
  if (!qword_27DE9CCA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_237AFB9DC(uint64_t a1)
{
  type metadata accessor for MLTrainingSessionParameters(319);
  if (v1 <= 0x3F)
  {
    sub_237AFBC5C(319, &qword_27DE9CCB8, _s20PersistentParametersVMa_1);
    if (v2 <= 0x3F)
    {
      sub_237C05DBC();
      if (v3 <= 0x3F)
      {
        sub_237AFBC5C(319, &qword_27DE9AE50, MEMORY[0x277CE1898]);
        if (v4 <= 0x3F)
        {
          sub_237AFBC5C(319, &qword_27DE9CCC0, _s10ClassifierVMa_1);
          if (v5 <= 0x3F)
          {
            sub_237AFBC5C(319, &qword_27DE9CCC8, _s5ModelVMa);
            if (v6 <= 0x3F)
            {
              sub_237AFBC5C(319, &qword_27DE9B880, type metadata accessor for MLClassifierMetrics);
              if (v7 <= 0x3F)
              {
                swift_updateClassMetadata2();
              }
            }
          }
        }
      }
    }
  }
}

void sub_237AFBC5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_237C08D2C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_237AFBD20(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_237AFBDB8;

  return sub_237AF9FE8(a1);
}

uint64_t sub_237AFBDB8(uint64_t a1, uint64_t a2, char a3)
{
  v13 = *v4;

  v10 = *(v13 + 8);
  if (v3)
  {
    v11 = 0;
  }

  else
  {
    v11 = a3 & 1;
    v8 = a1;
    v9 = a2;
  }

  return v10(v8, v9, v11);
}

uint64_t sub_237AFBED8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_237AFBF68;

  return sub_237AFA5BC();
}

uint64_t sub_237AFBF68(uint64_t a1, char a2)
{
  v10 = *v3;

  v7 = *(v10 + 8);
  if (v2)
  {
    v8 = 0;
  }

  else
  {
    v8 = a2 & 1;
    v6 = a1;
  }

  return v7(v6, v8);
}

unint64_t sub_237AFC0F0()
{
  result = qword_27DE9C198;
  if (!qword_27DE9C198)
  {
    _s10ClassifierVMa_1(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9C198);
  }

  return result;
}

uint64_t sub_237AFC148(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 16))(v4, v5);
  return v4;
}

uint64_t sub_237AFC1F8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_237AFC250(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_4();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_237AFC2B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_151(a1, a2, a3, a4);
  OUTLINED_FUNCTION_4();
  (*(v6 + 40))(v4, v5);
  return v4;
}

uint64_t OUTLINED_FUNCTION_17_20()
{

  return sub_237AFC1F8(v0, type metadata accessor for MLCheckpoint);
}

uint64_t MLDataValue.sequenceValue.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == 3)
  {
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t MLDataValue.doubleValue.getter()
{
  if (v0[16] == 1)
  {
    return *v0;
  }

  else
  {
    return 0;
  }
}

uint64_t MLDataValue.intValue.getter()
{
  if (v0[16])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t MLDataValue.stringValue.getter()
{
  if (*(v0 + 16) != 2)
  {
    return 0;
  }

  v1 = *v0;

  return v1;
}

id MLDataValue.multiArrayValue.getter@<X0>(void *a1@<X8>)
{
  if (*(v1 + 16) == 5)
  {
    v3 = *v1;
    result = v3;
  }

  else
  {
    v3 = 0;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_237AFC548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(sub_237A2E910())
  {
    case 1u:

      sub_237B0E848();
      v15 = v14;

      v9 = 0;
      v7 = v15;
      v6 = 1;
      break;
    case 2u:

      v7 = sub_237A2DE60();
      v9 = v12;
      v6 = 2;

      break;
    case 3u:
      v13 = sub_237B0DD68(*(a1 + 16));
      if (!v13)
      {
        goto LABEL_15;
      }

      type metadata accessor for CMLSequence();
      v7 = swift_allocObject();
      *(v7 + 16) = v13;
      *(v7 + 24) = 1;

      v9 = 0;
      v6 = 3;
      break;
    case 4u:
      v10 = sub_237B0DDC8(*(a1 + 16));
      if (!v10)
      {
        goto LABEL_14;
      }

      type metadata accessor for CMLDictionary();
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v18[0] = v11;
      v18[1] = sub_237B004D4;
      v18[2] = 0;
      v18[3] = sub_237B02424;
      v18[4] = 0;
      v18[5] = sub_237AB65A0;
      v18[6] = 0;
      v17 = MEMORY[0x277D84F98];
      swift_retain_n();
      sub_237B019D8(v18, 1, &v17);

      v9 = 0;
      v7 = v17;
      v6 = 4;
      break;
    case 5u:

      v7 = 0;
      v9 = 0;
      v6 = 6;
      break;
    case 6u:

      sub_237AC8278(v16, v18);
      v7 = v18[0];
      if (!v18[0])
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
        swift_unexpectedError();
        __break(1u);
        JUMPOUT(0x237AFC83CLL);
      }

      v9 = 0;
      v6 = 5;
      break;
    default:
      v4 = *(a1 + 16);

      v5 = v4;
      v6 = 0;
      v7 = sub_237B0ECCC(v5);

      v9 = 0;
      break;
  }

  *a2 = v7;
  *(a2 + 8) = v9;
  *(a2 + 16) = v6;
  return result;
}

uint64_t MLDataValue.ValueType.description.getter()
{
  result = 7630409;
  switch(*v0)
  {
    case 1:
      result = 0x656C62756F44;
      break;
    case 2:
      result = 0x676E69727453;
      break;
    case 3:
      result = 0x65636E6575716553;
      break;
    case 4:
      result = 0x616E6F6974636944;
      break;
    case 5:
      result = 0x72724169746C754DLL;
      break;
    case 6:
      result = 0x676E697373694DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t MLDataValue.description.getter()
{
  v1 = *v0;
  switch(*(v0 + 16))
  {
    case 1:
      v10 = 0;
      MEMORY[0x2383DC360](0x756C615661746144, 0xEA00000000002865);
      sub_237C08A8C();
      goto LABEL_10;
    case 2:
      v10 = 0x756C615661746144;
      MEMORY[0x2383DC360](v1, *(v0 + 8));
      v3 = 10530;
      v4 = 0xE200000000000000;
      goto LABEL_11;
    case 3:
      OUTLINED_FUNCTION_0_58();
      OUTLINED_FUNCTION_14_24();
      v2 = MLDataValue.SequenceType.description.getter();
      goto LABEL_6;
    case 4:
      OUTLINED_FUNCTION_0_58();
      sub_237A60DE0();
      v2 = sub_237C0858C();
      goto LABEL_6;
    case 5:
      OUTLINED_FUNCTION_0_58();
      v5 = [v1 description];
      v6 = sub_237C086EC();
      v8 = v7;

      MEMORY[0x2383DC360](v6, v8);
      goto LABEL_9;
    case 6:
      return 0xD000000000000012;
    default:
      OUTLINED_FUNCTION_0_58();
      v2 = sub_237C0924C();
LABEL_6:
      MEMORY[0x2383DC360](v2);
LABEL_9:

LABEL_10:
      v3 = 41;
      v4 = 0xE100000000000000;
LABEL_11:
      MEMORY[0x2383DC360](v3, v4);
      return v10;
  }
}

void sub_237AFCC90(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v4 = a1;
  v6 = sub_2379FED88(a1, v204);
  if (OUTLINED_FUNCTION_7_35(v6, v7, v8, &type metadata for MLDataValue, v9, v10, v11, v12, v84, v90, v95, v101, v106, v111, v117, v123, v129, v135, v141, v147, v152, v159, v164, v169, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, *(&v189 + 1), v190, v191, *(&v191 + 1), v192, v193, v194))
  {
    v14 = *(&v194 + 1);
    v13 = v194;
    v15 = v195;
LABEL_51:
    __swift_destroy_boxed_opaque_existential_1(v204);
    *a2 = v13;
    *(a2 + 8) = v14;
    *(a2 + 16) = v15;
LABEL_52:
    __swift_destroy_boxed_opaque_existential_1(v4);
    return;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B540, &qword_237C14AD0);
  v23 = OUTLINED_FUNCTION_7_35(v16, v17, v18, v16, v19, v20, v21, v22, v85, v91, v96, v102, v107, v112, v118, v124, v130, v136, v142, v148, v153, v160, v165, v170, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, *(&v189 + 1), v190, v191, *(&v191 + 1), v192, v193, v194);
  if (v23)
  {
    sub_237A1FCF0(&v194, &v188);
    v30 = *(&v189 + 1);
    v31 = v190;
    __swift_project_boxed_opaque_existential_1(&v188, *(&v189 + 1));
    (*(v31 + 32))(&v176, v30, v31);
    v14 = *(&v176 + 1);
    v13 = v176;
    v15 = v177;
    __swift_destroy_boxed_opaque_existential_1(&v188);
    goto LABEL_51;
  }

  v32 = OUTLINED_FUNCTION_7_35(v23, v24, v25, MEMORY[0x277D837D0], v26, v27, v28, v29, v86, v92, v97, v103, v108, v113, v119, v125, v131, v137, v143, v149, v154, v161, v166, v171, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, *(&v189 + 1), v190, v191, *(&v191 + 1), v192, v193, v194);
  if (v32)
  {
    v14 = *(&v194 + 1);
    v13 = v194;
    v15 = 2;
    goto LABEL_51;
  }

  v39 = OUTLINED_FUNCTION_7_35(v32, v33, v34, MEMORY[0x277D83B88], v35, v36, v37, v38, v87, v93, v98, v104, v109, v114, v120, v126, v132, v138, v144, v150, v155, v162, v167, v172, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, *(&v189 + 1), v190, v191, *(&v191 + 1), v192, v193, v194);
  if (v39)
  {
    v14 = 0;
    v15 = 0;
    v13 = v194;
    goto LABEL_51;
  }

  if (OUTLINED_FUNCTION_7_35(v39, v40, v41, MEMORY[0x277D839F8], v42, v43, v44, v45, v88, v94, v99, v105, v110, v115, v121, v127, v133, v139, v145, v151, v156, v163, v168, v173, v176, *(&v176 + 1), v177, *(&v177 + 1), v178, v179, v180, v181, v182, v183, v184, v185, v186, v187, v188, *(&v188 + 1), v189, *(&v189 + 1), v190, v191, *(&v191 + 1), v192, v193, v194))
  {
    v14 = 0;
    v13 = v194;
    v15 = 1;
    goto LABEL_51;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B588, &qword_237C0D778);
  v46 = swift_dynamicCast();
  v47 = MEMORY[0x277D84F90];
  if (v46)
  {
    v48 = v198;
    v49 = *(v198 + 16);
    if (!v49)
    {

      v51 = MEMORY[0x277D84F90];
LABEL_46:
      sub_237A7987C(v51, &v194);
      v14 = 0;
      v13 = v194;
      v15 = 3;
      goto LABEL_51;
    }

    v174 = v4;
    v184 = MEMORY[0x277D84F90];
    sub_237AC8A94();
    v50 = 0;
    v51 = v184;
    v52 = v198 + 32;
    while (v50 < *(v48 + 16))
    {
      sub_2379FED88(v52, &v194);
      sub_2379FED88(&v194, &v188);
      sub_237AFCC90(&v188, &v176);
      if (v3)
      {

        __swift_destroy_boxed_opaque_existential_1(&v194);

        v4 = v174;
        goto LABEL_49;
      }

      v205 = 0;
      v53 = v49;
      v54 = v48;
      __swift_destroy_boxed_opaque_existential_1(&v194);
      v55 = v176;
      v56 = v177;
      v184 = v51;
      v57 = *(v51 + 16);
      if (v57 >= *(v51 + 24) >> 1)
      {
        v157 = v176;
        sub_237AC8A94();
        v55 = v157;
        v51 = v184;
      }

      ++v50;
      *(v51 + 16) = v57 + 1;
      v58 = v51 + 24 * v57;
      *(v58 + 32) = v55;
      *(v58 + 48) = v56;
      v52 += 32;
      v49 = v53;
      v59 = v53 == v50;
      v48 = v54;
      v3 = v205;
      if (v59)
      {

        v4 = v174;
        goto LABEL_46;
      }
    }

    __break(1u);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCE8, &qword_237C12718);
    if (!swift_dynamicCast())
    {
      *&v194 = 0;
      *(&v194 + 1) = 0xE000000000000000;
      sub_237C08EDC();
      MEMORY[0x2383DC360](0x20666F2065707954, 0xEF272065756C6176);
      __swift_project_boxed_opaque_existential_1(v4, v4[3]);
      sub_237C0927C();
      MEMORY[0x2383DC360](0xD000000000000013, 0x8000000237C1BB20);
      sub_2379E8AF0();
      swift_allocError();
      *v83 = 0;
      *(v83 + 8) = 0xE000000000000000;
      *(v83 + 16) = 0u;
      *(v83 + 32) = 0u;
      *(v83 + 48) = 1;
      swift_willThrow();
LABEL_49:
      __swift_destroy_boxed_opaque_existential_1(v204);
      goto LABEL_52;
    }

    v60 = v203;
    v61 = *(v203 + 16);
    if (!v61)
    {

      v62 = MEMORY[0x277D84F90];
LABEL_50:
      v13 = sub_237B6A9C8(v62);
      v14 = 0;
      v15 = 4;
      goto LABEL_51;
    }

    v202 = v47;
    sub_237AC8AB4();
    v62 = v47;
    v65 = sub_237B024B4(v203);
    v66 = 0;
    v205 = v203 + 64;
    v122 = v63;
    v128 = v61;
    v116 = v203 + 72;
    v134 = v203;
    while ((v65 & 0x8000000000000000) == 0 && v65 < 1 << *(v60 + 32))
    {
      if ((*(v205 + 8 * (v65 >> 6)) & (1 << v65)) == 0)
      {
        goto LABEL_55;
      }

      v158 = v65 >> 6;
      v140 = v64;
      v146 = v66;
      v175 = v63;
      if (*(v60 + 36) != v63)
      {
        goto LABEL_56;
      }

      sub_2379E8F20(*(v60 + 48) + 40 * v65, &v194);
      sub_2379FED88(*(v60 + 56) + 32 * v65, v197);
      v188 = v194;
      v189 = v195;
      v190 = v196;
      sub_2379DAD24(v197, &v191);
      sub_237AFE670(&v188, &v176);
      v187 = MEMORY[0x277D84030];
      v67 = swift_allocObject();
      v184 = v67;
      v68 = v177;
      *(v67 + 16) = v176;
      *(v67 + 32) = v68;
      *(v67 + 48) = v178;
      sub_237AFCC90(&v184, &v198);
      if (v2)
      {

        sub_237AFE718(&v188);
        __swift_destroy_boxed_opaque_existential_1(&v179);

        goto LABEL_49;
      }

      __swift_destroy_boxed_opaque_existential_1(&v179);
      sub_237AFE670(&v188, &v176);
      sub_237AFCC90(&v179, &v200);
      sub_237AFE718(&v188);
      sub_2379E8F7C(&v176);
      v69 = v198;
      v70 = v199;
      v71 = v200;
      v72 = v201;
      v202 = v62;
      v73 = *(v62 + 16);
      if (v73 >= *(v62 + 24) >> 1)
      {
        v89 = v200;
        v100 = v198;
        sub_237AC8AB4();
        v71 = v89;
        v69 = v100;
        v62 = v202;
      }

      *(v62 + 16) = v73 + 1;
      v74 = v62 + 48 * v73;
      *(v74 + 32) = v69;
      *(v74 + 48) = v70;
      *(v74 + 56) = v71;
      *(v74 + 72) = v72;
      v60 = v134;
      v75 = 1 << *(v134 + 32);
      if (v65 >= v75)
      {
        goto LABEL_57;
      }

      v76 = *(v205 + 8 * v158);
      if ((v76 & (1 << v65)) == 0)
      {
        goto LABEL_58;
      }

      if (*(v134 + 36) != v175)
      {
        goto LABEL_59;
      }

      v77 = v76 & (-2 << (v65 & 0x3F));
      if (v77)
      {
        v75 = __clz(__rbit64(v77)) | v65 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v78 = v158 << 6;
        v79 = v158 + 1;
        v80 = (v116 + 8 * v158);
        while (v79 < (v75 + 63) >> 6)
        {
          v82 = *v80++;
          v81 = v82;
          v78 += 64;
          ++v79;
          if (v82)
          {
            sub_2379E8FD0(v65, v175, v140 & 1);
            v75 = __clz(__rbit64(v81)) + v78;
            goto LABEL_41;
          }
        }

        sub_2379E8FD0(v65, v175, v140 & 1);
      }

LABEL_41:
      v64 = 0;
      v66 = v146 + 1;
      v65 = v75;
      v63 = v122;
      if (v146 + 1 == v128)
      {

        goto LABEL_50;
      }
    }
  }

  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
}

uint64_t MLDataValue.dictionaryValue.getter@<X0>(uint64_t *a1@<X8>)
{
  if (*(v1 + 16) == 4)
  {
  }

  else
  {
    result = 0;
  }

  *a1 = result;
  return result;
}

uint64_t MLDataValue.isValid.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = 0;
  switch(v3)
  {
    case 2:
    case 4:

      goto LABEL_5;
    case 3:

      goto LABEL_5;
    case 5:
      v5 = v1;
      goto LABEL_5;
    case 6:
      goto LABEL_6;
    default:
LABEL_5:
      v4 = 1;
LABEL_6:
      sub_2379E8CE8(v1, v2, v3);
      sub_2379E8CE8(0, 0, 6);
      return v4;
  }
}

uint64_t MLDataValue.ValueType.hashValue.getter()
{
  v1 = *v0;
  sub_237C093CC();
  MEMORY[0x2383DCF70](v1);
  return sub_237C0940C();
}

uint64_t MLDataValue.debugDescription.getter(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      return sub_237C08A6C();
    case 2:

      return v2;
    case 3:
      OUTLINED_FUNCTION_14_24();
      return MLDataValue.SequenceType.debugDescription.getter();
    case 4:
      sub_237A60DE0();
      return sub_237C0859C();
    case 5:
      v5 = [*v1 debugDescription];
      v2 = sub_237C086EC();

      return v2;
    case 6:
      return 0xD000000000000012;
    default:
      sub_237A20C10();
      return sub_237C08DEC();
  }
}

uint64_t static MLDataValue.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  switch(v4)
  {
    case 1:
      if (v7 != 1)
      {
        goto LABEL_31;
      }

      v54 = OUTLINED_FUNCTION_62_2();
      v56 = OUTLINED_FUNCTION_3_50(v54, v55, 1);
      sub_2379E8CE8(v56, v57, 1);
      v12 = *&v2 == *&v5;
      goto LABEL_16;
    case 2:
      if (v7 != 2)
      {
        goto LABEL_28;
      }

      v32 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v22 = sub_237C0929C();
        v34 = OUTLINED_FUNCTION_32_3();
        v36 = OUTLINED_FUNCTION_2_56(v34, v35, 2);
        v38 = OUTLINED_FUNCTION_2_56(v36, v37, 2);
        v29 = OUTLINED_FUNCTION_3_50(v38, v39, 2);
        v31 = 2;
        goto LABEL_21;
      }

      v86 = OUTLINED_FUNCTION_2_56(v32, v3, 2);
      v88 = OUTLINED_FUNCTION_2_56(v86, v87, 2);
      sub_2379E8CE8(v88, v89, 2);
      v75 = OUTLINED_FUNCTION_62_2();
      v77 = 2;
LABEL_34:
      sub_2379E8CE8(v75, v76, v77);
      v22 = 1;
      return v22 & 1;
    case 3:
      if (v7 == 3)
      {
        v40 = OUTLINED_FUNCTION_32_3();
        v42 = OUTLINED_FUNCTION_2_56(v40, v41, 3);
        sub_2379E9288(v42, v43, 3);
        v44 = OUTLINED_FUNCTION_32_3();
        v46 = OUTLINED_FUNCTION_2_56(v44, v45, 3);
        sub_2379E9288(v46, v47, 3);
        v22 = static MLDataValue.SequenceType.== infix(_:_:)();
        v48 = OUTLINED_FUNCTION_62_2();
        v50 = OUTLINED_FUNCTION_3_50(v48, v49, 3);
        v52 = OUTLINED_FUNCTION_3_50(v50, v51, 3);
        sub_2379E8CE8(v52, v53, 3);
        v29 = OUTLINED_FUNCTION_62_2();
        v31 = 3;
        goto LABEL_21;
      }

      goto LABEL_31;
    case 4:
      if (v7 == 4)
      {
        v13 = OUTLINED_FUNCTION_32_3();
        v15 = OUTLINED_FUNCTION_2_56(v13, v14, 4);
        sub_2379E9288(v15, v16, 4);
        v17 = OUTLINED_FUNCTION_32_3();
        v19 = OUTLINED_FUNCTION_2_56(v17, v18, 4);
        sub_2379E9288(v19, v20, 4);
        sub_237AFDD70(v2, v5);
        v22 = v21;
        v23 = OUTLINED_FUNCTION_62_2();
        v25 = OUTLINED_FUNCTION_3_50(v23, v24, 4);
        v27 = OUTLINED_FUNCTION_3_50(v25, v26, 4);
        sub_2379E8CE8(v27, v28, 4);
        v29 = OUTLINED_FUNCTION_62_2();
        v31 = 4;
        goto LABEL_21;
      }

LABEL_28:

      goto LABEL_31;
    case 5:
      if (v7 == 5)
      {
        sub_237A380A4();
        v58 = OUTLINED_FUNCTION_32_3();
        v60 = OUTLINED_FUNCTION_2_56(v58, v59, 5);
        sub_2379E9288(v60, v61, 5);
        v62 = OUTLINED_FUNCTION_32_3();
        v64 = OUTLINED_FUNCTION_2_56(v62, v63, 5);
        sub_2379E9288(v64, v65, 5);
        v22 = sub_237C08CEC();
        v66 = OUTLINED_FUNCTION_62_2();
        v68 = OUTLINED_FUNCTION_3_50(v66, v67, 5);
        v70 = OUTLINED_FUNCTION_3_50(v68, v69, 5);
        sub_2379E8CE8(v70, v71, 5);
        v29 = OUTLINED_FUNCTION_62_2();
        v31 = 5;
LABEL_21:
        sub_2379E8CE8(v29, v30, v31);
      }

      else
      {
        v78 = v2;
LABEL_31:
        v79 = OUTLINED_FUNCTION_32_3();
        v81 = OUTLINED_FUNCTION_2_56(v79, v80, v7);
        v83 = OUTLINED_FUNCTION_3_50(v81, v82, v4);
        sub_2379E8CE8(v83, v84, v7);
        v22 = 0;
      }

      return v22 & 1;
    case 6:
      if (v7 != 6 || (v6 | v5) != 0)
      {
        goto LABEL_31;
      }

      v73 = OUTLINED_FUNCTION_62_2();
      sub_2379E8CE8(v73, v74, 6);
      v75 = 0;
      v76 = 0;
      v77 = 6;
      goto LABEL_34;
    default:
      if (*(a2 + 16))
      {
        goto LABEL_31;
      }

      v8 = OUTLINED_FUNCTION_62_2();
      v10 = OUTLINED_FUNCTION_3_50(v8, v9, 0);
      sub_2379E8CE8(v10, v11, 0);
      v12 = v2 == v5;
LABEL_16:
      v22 = v12;
      return v22 & 1;
  }
}

uint64_t MLDataValue.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  switch(*(v1 + 16))
  {
    case 1:
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v5 = *v1;
      }

      else
      {
        v5 = 0;
      }

      return MEMORY[0x2383DCF90](v5);
    case 2:

      return sub_237C0878C();
    case 3:
    case 4:
    case 5:
      sub_237C090DC();
      __break(1u);
      JUMPOUT(0x237AFDB38);
    case 6:
      v3 = 1;
      return MEMORY[0x2383DCF70](v3, v2);
    default:
      v3 = *v1;
      return MEMORY[0x2383DCF70](v3, v2);
  }
}

uint64_t MLDataValue.hashValue.getter()
{
  OUTLINED_FUNCTION_13_24();
  sub_237C093CC();
  MLDataValue.hash(into:)(v1);
  return sub_237C0940C();
}

uint64_t sub_237AFDBA0()
{
  OUTLINED_FUNCTION_13_24();
  sub_237C093CC();
  MLDataValue.hash(into:)(v1);
  return sub_237C0940C();
}

void sub_237AFDBE4(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    OUTLINED_FUNCTION_11_32();
    if (v25)
    {
      v4 = 0;
      v27 = v3 + 64;
      OUTLINED_FUNCTION_5_33();
      v7 = v6 & v5;
      v28 = (v8 + 63) >> 6;
      while (v7)
      {
        v9 = __clz(__rbit64(v7));
        v7 &= v7 - 1;
LABEL_12:
        v13 = v9 | (v4 << 6);
        v14 = (*(v3 + 48) + 16 * v13);
        v16 = *v14;
        v15 = v14[1];
        v17 = (*(v3 + 56) + 16 * v13);
        v19 = *v17;
        v18 = v17[1];

        if (!v15)
        {
          return;
        }

        v20 = v3;
        v21 = sub_237ACAC78(v16, v15);
        v23 = v22;

        if ((v23 & 1) == 0)
        {

          return;
        }

        v24 = (*(a2 + 56) + 16 * v21);
        v25 = *v24 == v19 && v18 == v24[1];
        if (v25)
        {

          v3 = v20;
        }

        else
        {
          v26 = sub_237C0929C();

          v3 = v20;
          if ((v26 & 1) == 0)
          {
            return;
          }
        }
      }

      v10 = v4;
      while (1)
      {
        v4 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v4 >= v28)
        {
          return;
        }

        ++v10;
        if (*(v27 + 8 * v4))
        {
          OUTLINED_FUNCTION_8_26();
          v7 = v12 & v11;
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }
}

void sub_237AFDD70(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v3 = a1;
    OUTLINED_FUNCTION_11_32();
    if (v4)
    {
      v5 = 0;
      v51 = v3 + 64;
      OUTLINED_FUNCTION_5_33();
      v9 = (v8 + 63) >> 6;
      v52 = v9;
      v53 = v3;
      if ((v7 & v6) != 0)
      {
        while (1)
        {
          OUTLINED_FUNCTION_15_26();
          v54 = v11;
LABEL_11:
          v15 = 3 * (v10 | (v5 << 6));
          v16 = *(*(v3 + 48) + 8 * v15 + 16);
          v17 = *(v3 + 56) + 8 * v15;
          v19 = *v17;
          v18 = *(v17 + 8);
          v20 = *(v17 + 16);
          v21 = OUTLINED_FUNCTION_6_41();
          sub_2379E9288(v21, v22, v23);
          v24 = OUTLINED_FUNCTION_12_29();
          sub_2379E9288(v24, v25, v26);
          if (v16 == 255)
          {
            break;
          }

          v57[0] = v19;
          v57[1] = v18;
          v58 = v20;
          v27 = OUTLINED_FUNCTION_6_41();
          v30 = sub_237ACB180(v27, v28, v29);
          v32 = v31;
          v33 = OUTLINED_FUNCTION_6_41();
          sub_2379E8CE8(v33, v34, v35);
          if ((v32 & 1) == 0)
          {
            v48 = OUTLINED_FUNCTION_12_29();
            sub_2379E8CE8(v48, v49, v50);
            return;
          }

          v36 = *(a2 + 56) + 24 * v30;
          v37 = *(v36 + 8);
          v55[0] = *v36;
          v55[1] = v37;
          v56 = *(v36 + 16);
          v38 = OUTLINED_FUNCTION_6_41();
          sub_2379E9288(v38, v39, v40);
          v41 = static MLDataValue.== infix(_:_:)(v55, v57);
          v42 = OUTLINED_FUNCTION_6_41();
          sub_2379E8CE8(v42, v43, v44);
          v45 = OUTLINED_FUNCTION_12_29();
          sub_2379E8CE8(v45, v46, v47);
          if ((v41 & 1) == 0)
          {
            return;
          }

          v9 = v52;
          v3 = v53;
          if (!v54)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
LABEL_6:
        v12 = v5;
        while (1)
        {
          v5 = v12 + 1;
          if (__OFADD__(v12, 1))
          {
            break;
          }

          if (v5 >= v9)
          {
            return;
          }

          ++v12;
          if (*(v51 + 8 * v5))
          {
            OUTLINED_FUNCTION_8_26();
            v54 = v14 & v13;
            goto LABEL_11;
          }
        }

        __break(1u);
      }
    }
  }
}

unint64_t sub_237AFDF08()
{
  result = qword_27DE9CCD8;
  if (!qword_27DE9CCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CCD8);
  }

  return result;
}

unint64_t sub_237AFDF60()
{
  result = qword_27DE9CCE0;
  if (!qword_27DE9CCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CCE0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8CreateML11MLDataValueO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 5)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 6);
  }
}

uint64_t sub_237AFDFD0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFA && *(a1 + 17))
    {
      v2 = *a1 + 249;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 6)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_237AFE010(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 16) = 0;
    *result = a2 - 250;
    *(result + 8) = 0;
    if (a3 >= 0xFA)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_237AFE054(uint64_t result, unsigned int a2)
{
  if (a2 >= 6)
  {
    *result = a2 - 6;
    *(result + 8) = 0;
    LOBYTE(a2) = 6;
  }

  *(result + 16) = a2;
  return result;
}

_BYTE *storeEnumTagSinglePayload for MLDataValue.ValueType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
        JUMPOUT(0x237AFE170);
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

void sub_237AFE1A4(void *a1, void *a2)
{
  v4 = sub_237C05ADC();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v51 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - v7;
  if (a1 != a2 && a1[2] == a2[2])
  {
    v9 = 0;
    v43 = a1 + 8;
    OUTLINED_FUNCTION_5_33();
    v13 = (v12 + 63) >> 6;
    v14 = v53 + 16;
    v50 = (v53 + 8);
    v44 = v13;
    v45 = a1;
    v54 = v15;
    if ((v11 & v10) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_15_26();
        v47 = v17;
LABEL_10:
        v21 = v16 | (v9 << 6);
        v22 = a1[7];
        v23 = (a1[6] + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = *(v22 + 8 * v21);

        v27 = sub_237ACAC78(v24, v25);
        v29 = v28;

        if ((v29 & 1) == 0 || (v46 = v9, v52 = *(a2[7] + 8 * v27), v30 = *(v52 + 16), v30 != *(v26 + 16)))
        {
LABEL_24:

          return;
        }

        v31 = v54;
        if (v30)
        {
          if (v52 != v26)
          {
            break;
          }
        }

LABEL_20:

        v13 = v44;
        a1 = v45;
        v9 = v46;
        if (!v47)
        {
          goto LABEL_5;
        }
      }

      v42 = a2;
      v32 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      v48 = v26 + v32;
      v49 = v52 + v32;

      v33 = 0;
      while (v33 < *(v52 + 16))
      {
        v34 = *(v53 + 72) * v33;
        v35 = *(v53 + 16);
        v35(v8, v49 + v34, v31);
        if (v33 >= *(v26 + 16))
        {
          goto LABEL_28;
        }

        v36 = v14;
        v37 = v51;
        v38 = v36;
        v35(v51, v48 + v34, v31);
        sub_237AC8FA0();
        v39 = sub_237C0867C();
        v40 = *v50;
        (*v50)(v37, v54);
        v31 = v54;
        v40(v8, v54);
        if ((v39 & 1) == 0)
        {

          goto LABEL_24;
        }

        ++v33;
        v14 = v38;
        if (v30 == v33)
        {

          a2 = v42;
          goto LABEL_20;
        }
      }
    }

    else
    {
LABEL_5:
      v18 = v9;
      while (1)
      {
        v9 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v9 >= v13)
        {
          return;
        }

        ++v18;
        if (v43[v9])
        {
          OUTLINED_FUNCTION_8_26();
          v47 = v20 & v19;
          goto LABEL_10;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }
}

void sub_237AFE4F0(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_11_32();
    if (v22)
    {
      v4 = 0;
      OUTLINED_FUNCTION_5_33();
      v7 = v6 & v5;
      v9 = (v8 + 63) >> 6;
      if ((v6 & v5) != 0)
      {
        while (1)
        {
          v10 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
LABEL_11:
          v14 = *(*(a1 + 56) + 8 * (v10 | (v4 << 6)));

          v15 = OUTLINED_FUNCTION_32_3();
          v17 = sub_237ACAC78(v15, v16);
          v19 = v18;

          if ((v19 & 1) == 0 || (v20 = *(*(a2 + 56) + 8 * v17), v21 = *(v20 + 16), v21 != *(v14 + 16)))
          {
LABEL_28:

            return;
          }

          v22 = !v21 || v20 == v14;
          if (!v22)
          {
            break;
          }

LABEL_25:

          if (!v7)
          {
            goto LABEL_6;
          }
        }

        v23 = (v20 + 40);
        v24 = (v14 + 40);
        while (v21)
        {
          v25 = *(v23 - 1) == *(v24 - 1) && *v23 == *v24;
          if (!v25 && (sub_237C0929C() & 1) == 0)
          {
            goto LABEL_28;
          }

          v23 += 2;
          v24 += 2;
          if (!--v21)
          {
            goto LABEL_25;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_6:
        v11 = v4;
        while (1)
        {
          v4 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v4 >= v9)
          {
            return;
          }

          ++v11;
          if (*(a1 + 64 + 8 * v4))
          {
            OUTLINED_FUNCTION_8_26();
            v7 = v13 & v12;
            goto LABEL_11;
          }
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_237AFE670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCF0, &qword_237C12720);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_237AFE6E0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_237AFE718(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9CCF0, &qword_237C12720);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_7_35(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, char a48)
{

  return swift_dynamicCast();
}

__n128 OUTLINED_FUNCTION_13_24()
{
  v2 = v0[1].n128_u8[0];
  result = *v0;
  *(v1 - 48) = *v0;
  *(v1 - 32) = v2;
  return result;
}

uint64_t MLDataValue.DictionaryType.description.getter()
{
  sub_237A60DE0();

  return sub_237C0858C();
}

uint64_t sub_237AFE8C0()
{
  v0 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = (&v10 - v4);
  *v5 = sub_237A2DE60();
  v5[1] = v6;
  v7 = MEMORY[0x277D837D0];
  if (__swift_getEnumTagSinglePayload(v5, 1, MEMORY[0x277D837D0]) == 1)
  {
    (*(v2 + 8))(v5, v0);
    v13 = 0;
    v11 = 0u;
    v12 = 0u;
  }

  else
  {
    *(&v12 + 1) = v7;
    v13 = &off_284AC56F0;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
    (*(*(v7 - 8) + 32))(boxed_opaque_existential_0, v5, v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
  if (swift_dynamicCast())
  {
    return v14;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_237AFEA64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;

  result = sub_237AFFB0C(v4);
  *(a2 + 8) = result;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7 & 1;
  v8 = *(a1 + 36);
  *(a2 + 32) = 1 << *(a1 + 32);
  *(a2 + 40) = v8;
  *(a2 + 48) = 0;
  return result;
}

uint64_t sub_237AFEAB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;

  v5 = sub_237A2E9F4();
  sub_237A017E8(0, v5);
  result = sub_237A0290C(0);
  a4[4] = result;
  return result;
}

uint64_t sub_237AFEB28(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (!a2)
  {
    return result;
  }

  if ((result ^ 0x7FFFFFFFFFFFFFFFuLL) <= a2 - 1)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  result += a2;
  return result;
}

uint64_t sub_237AFEB50@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = result;
  v10 = a6;
  if (a4)
  {
    v12 = a5 + 64;
    result = sub_237A934DC(result, a2, a3 & 1);
    v13 = 0;
    v14 = v8;
    v27 = v8;
    while ((v9 & 0x8000000000000000) == 0)
    {
      v15 = 1 << *(a5 + 32);
      if (v9 >= v15)
      {
        break;
      }

      v16 = v9 >> 6;
      v17 = *(v12 + 8 * (v9 >> 6));
      if (((v17 >> v9) & 1) == 0)
      {
        goto LABEL_21;
      }

      if (*(a5 + 36) != v8)
      {
        goto LABEL_22;
      }

      v18 = v17 & (-2 << (v9 & 0x3F));
      if (v18)
      {
        result = sub_2379E8FD0(v9, v8, v7 & 1);
        v9 = __clz(__rbit64(v18)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v6;
        v20 = v12;
        v21 = v16 << 6;
        v22 = v16 + 1;
        v23 = (a5 + 72 + 8 * v16);
        while (v22 < (v15 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_2379E8FD0(v9, v8, v7 & 1);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_15;
          }
        }

        result = sub_2379E8FD0(v9, v8, v7 & 1);
        v9 = v15;
LABEL_15:
        v12 = v20;
        v6 = v19;
        v14 = v27;
      }

      v7 = 0;
      ++v13;
      v8 = v14;
      if (v13 >= v6)
      {
        v8 = v14;
        v10 = a6;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_237A934DC(result, a2, a3 & 1);
LABEL_19:
  *v10 = v9;
  *(v10 + 8) = v8;
  *(v10 + 16) = v7 & 1;
  return result;
}

uint64_t sub_237AFED0C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned int a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a4 < 0)
  {
LABEL_27:
    __break(1u);
  }

  else
  {
    v13 = a4;
    v14 = a3;
    v15 = a2;
    v16 = result;
    result = sub_237A934DC(result, a2, a3 & 1);
    if (!v13)
    {
LABEL_21:
      *a9 = v16;
      *(a9 + 8) = v15;
      *(a9 + 16) = v14 & 1;
      return result;
    }

    v31 = a9;
    v18 = 0;
    v19 = v14 | a7;
    v32 = v13;
    while ((v19 & 1) == 0)
    {
      if (v15 != a6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if (v16 == a5)
      {
        result = sub_2379E8FD0(a5, v15, 0);
        *v31 = 0;
        *(v31 + 8) = 0;
        *(v31 + 16) = -1;
        return result;
      }

      if ((v16 & 0x8000000000000000) != 0)
      {
        goto LABEL_24;
      }

      v20 = 1 << *(a8 + 32);
      if (v16 >= v20)
      {
        goto LABEL_24;
      }

      v21 = v16 >> 6;
      v22 = *(a8 + 64 + 8 * (v16 >> 6));
      if (((v22 >> v16) & 1) == 0)
      {
        goto LABEL_25;
      }

      if (*(a8 + 36) != a6)
      {
        goto LABEL_26;
      }

      v23 = v22 & (-2 << (v16 & 0x3F));
      if (v23)
      {
        result = sub_2379E8FD0(v16, v15, 0);
        v16 = __clz(__rbit64(v23)) | v16 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = a7;
        v25 = a5;
        v26 = v21 << 6;
        v27 = v21 + 1;
        v28 = (a8 + 72 + 8 * v21);
        while (v27 < (v20 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_2379E8FD0(v16, v15, 0);
            v16 = __clz(__rbit64(v29)) + v26;
            goto LABEL_18;
          }
        }

        result = sub_2379E8FD0(v16, v15, 0);
        v16 = v20;
LABEL_18:
        a5 = v25;
        a7 = v24;
        v13 = v32;
      }

      ++v18;
      v15 = a6;
      v19 = a7;
      if (v18 >= v13)
      {
        v14 = 0;
        v15 = a6;
        a9 = v31;
        goto LABEL_21;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_237AFEF08(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (a2)
  {
    while (1)
    {
      if (a3 == result)
      {
        return 0;
      }

      if (result == 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      ++result;
      if (!--a2)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_237AFEF54(uint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_31;
  }

  v7 = a4;
  v8 = result;
  if (a4 < result)
  {
    goto LABEL_29;
  }

  v9 = a5;
  v10 = a2;
  if (a5 != a2)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = 0;
    v13 = a7 + 64;
    v14 = a5;
    v28 = a7 + 72;
    v29 = a5;
    while (!__OFADD__(v11++, 1))
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_25;
      }

      v16 = 1 << *(a7 + 32);
      if (v8 >= v16)
      {
        goto LABEL_25;
      }

      v17 = v8 >> 6;
      v18 = *(v13 + 8 * (v8 >> 6));
      if (((v18 >> v8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(a7 + 36) != v10)
      {
        goto LABEL_27;
      }

      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        result = sub_2379E8FD0(v8, v10, 0);
        v8 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v7;
        v21 = v13;
        v22 = v9;
        v23 = v17 << 6;
        v24 = v17 + 1;
        v25 = (v28 + 8 * v17);
        while (v24 < (v16 + 63) >> 6)
        {
          v27 = *v25++;
          v26 = v27;
          v23 += 64;
          ++v24;
          if (v27)
          {
            result = sub_2379E8FD0(v8, v10, 0);
            v8 = __clz(__rbit64(v26)) + v23;
            goto LABEL_20;
          }
        }

        result = sub_2379E8FD0(v8, v10, 0);
        v8 = v16;
LABEL_20:
        v9 = v22;
        v13 = v21;
        v7 = v20;
        v14 = v29;
      }

      if (v10 != v9)
      {
        goto LABEL_28;
      }

      v10 = v14;
      if (v8 == v7)
      {
        return v11;
      }
    }

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
    goto LABEL_30;
  }

  sub_2379E8FD0(a4, a2, 0);
  return 0;
}

uint64_t sub_237AFF124(uint64_t a1, uint64_t a2)
{
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (result < 0 != v4)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v4 = __OFSUB__(a1, a2);
  v5 = a1 - a2;
  if (!v5)
  {
    return 0;
  }

  if (v5 < 0 == v4)
  {
    goto LABEL_9;
  }

  if (v5 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_237AFF160@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = sub_237B0DDC8(*(a1 + 16));
  if (v3)
  {
    type metadata accessor for CMLDictionary();
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v7[0] = v4;
    v7[1] = sub_237B004D4;
    v7[2] = 0;
    v7[3] = sub_237B02424;
    v7[4] = 0;
    v7[5] = sub_237AB65A0;
    v7[6] = 0;
    v6 = MEMORY[0x277D84F98];
    swift_retain_n();
    sub_237B019D8(v7, 1, &v6);

    *a2 = v6;
  }

  else
  {
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237AFF290()
{
  v1 = *v0;
  v2 = MEMORY[0x2383DDA80](0);
  if (!v2)
  {
    goto LABEL_41;
  }

  v3 = v2;
  type metadata accessor for CMLDictionary();
  inited = swift_initStackObject();
  *(inited + 16) = v3;

  v5 = sub_237AFFB0C(v4);
  v7 = v6;
  v58 = v1;
  v59 = v1 + 64;
  if (v8)
  {
LABEL_32:
    __break(1u);
  }

  else
  {
    while (2)
    {
      if (*(v1 + 36) != v7)
      {
        __break(1u);
        goto LABEL_35;
      }

      v9 = 1 << *(v1 + 32);
      if (v5 != v9)
      {
        if ((v5 & 0x8000000000000000) == 0 && v5 < v9)
        {
          if ((*(v59 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v5))
          {
            v10 = *(v1 + 48) + 24 * v5;
            v12 = *v10;
            v11 = *(v10 + 8);
            v13 = *(v10 + 16);
            v14 = *(v1 + 56) + 24 * v5;
            v15 = *v14;
            v16 = *(v14 + 8);
            v17 = *(v14 + 16);
            sub_2379E9288(*v10, v11, *(v10 + 16));
            sub_2379E9288(v15, v16, v17);
            v18 = sub_237B01EB4(v5, v7, 0, v1);
            v61 = v19;
            HIDWORD(v63) = v20;
            sub_2379E8FD0(v5, v7, 0);
            sub_2379E9288(v12, v11, v13);
            sub_2379E9288(v15, v16, v17);
            sub_2379E8CE8(v15, v16, v17);
            v64 = v16;
            v62 = v18;
            switch(v13)
            {
              case 1:
                if (sub_237B0F594(v21, v22, v23, v24, v25, v26, v27, v28, v56, v57, v58, v59, inited, v61, v18, v63, v16, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77))
                {
                  goto LABEL_15;
                }

                goto LABEL_37;
              case 2:
                type metadata accessor for CMLFeatureValue();

                OUTLINED_FUNCTION_83();
                sub_237A2E7CC();
                v29 = OUTLINED_FUNCTION_83();
                v31 = 2;
                goto LABEL_17;
              case 3:
                v65 = v12;
                sub_237A91FA8();
                v29 = OUTLINED_FUNCTION_83();
                v31 = 3;
                goto LABEL_17;
              case 4:
                v65 = v12;
                sub_237AFF290();
                v29 = OUTLINED_FUNCTION_83();
                v31 = 4;
                goto LABEL_17;
              case 5:
                v65 = v12;
                sub_237AC85C4();
                v29 = OUTLINED_FUNCTION_83();
                v31 = 5;
LABEL_17:
                sub_2379E8CE8(v29, v30, v31);
                goto LABEL_19;
              case 6:
                type metadata accessor for CMLFeatureValue();
                sub_237A2E78C();
                goto LABEL_19;
              default:
                if (!sub_237B0F164(v12, v22, v23, v24, v25, v26, v27, v28, v56, v57, v58, v59, inited, v61, v18, v63, v16, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77))
                {
                  goto LABEL_40;
                }

LABEL_15:
                type metadata accessor for CMLFeatureValue();
                swift_allocObject();
                OUTLINED_FUNCTION_7_23();
LABEL_19:
                v32 = sub_237A2DE60();
                v34 = v33;

                v35 = OUTLINED_FUNCTION_83();
                sub_2379E9288(v35, v36, v13);
                sub_2379E9288(v15, v64, v17);
                v37 = OUTLINED_FUNCTION_83();
                sub_2379E8CE8(v37, v38, v13);
                switch(v17)
                {
                  case 1:
                    if (sub_237B0F594(v39, v40, v41, v42, v43, v44, v45, v46, v56, v57, v58, v59, inited, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77))
                    {
                      goto LABEL_26;
                    }

                    goto LABEL_38;
                  case 2:
                    v57 = v11;
                    type metadata accessor for CMLFeatureValue();

                    v11 = sub_237A2E7CC();
                    sub_2379E8CE8(v15, v64, 2);
                    goto LABEL_31;
                  case 3:
                    v65 = v15;
                    sub_237A91FA8();
                    v47 = OUTLINED_FUNCTION_9_36();
                    v49 = 3;
                    goto LABEL_28;
                  case 4:
                    v65 = v15;
                    sub_237AFF290();
                    v47 = OUTLINED_FUNCTION_9_36();
                    v49 = 4;
                    goto LABEL_28;
                  case 5:
                    v65 = v15;
                    sub_237AC85C4();
                    v47 = OUTLINED_FUNCTION_9_36();
                    v49 = 5;
LABEL_28:
                    sub_2379E8CE8(v47, v48, v49);
                    goto LABEL_31;
                  case 6:
                    type metadata accessor for CMLFeatureValue();
                    v50 = sub_237A2E78C();
                    goto LABEL_30;
                  default:
                    if (!sub_237B0F164(v15, v40, v41, v42, v43, v44, v45, v46, v56, v57, v58, v59, inited, v61, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77))
                    {
                      goto LABEL_39;
                    }

LABEL_26:
                    type metadata accessor for CMLFeatureValue();
                    swift_allocObject();
                    v50 = OUTLINED_FUNCTION_7_23();
LABEL_30:
                    v11 = v50;
LABEL_31:
                    sub_237A2EABC(v32, v34, v11);
                    v51 = OUTLINED_FUNCTION_83();
                    sub_2379E8CE8(v51, v52, v13);
                    sub_2379E8CE8(v15, v64, v17);

                    v7 = v61;
                    v5 = v62;
                    v1 = v58;
                    if ((v63 & 0x100000000) != 0)
                    {
                      goto LABEL_32;
                    }

                    continue;
                }
            }
          }

          goto LABEL_36;
        }

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
LABEL_41:
        __break(1u);

        OUTLINED_FUNCTION_2_29();
        while (1)
        {
          swift_unexpectedError();
          __break(1u);
          OUTLINED_FUNCTION_57_4();
        }
      }

      break;
    }
  }

  sub_2379E8FD0(v5, v7, 0);
  type metadata accessor for CMLFeatureValue();

  v54 = sub_237A2E858(v53);
  swift_setDeallocating();
  tc_v1_release();
  return v54;
}

uint64_t MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  OUTLINED_FUNCTION_3_15();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_2_0();
  (*(v8 + 16))(v11 - v10, a1, a2);
  sub_237A60DE0();
  v12 = sub_237C085BC();
  result = (*(v8 + 8))(a1, a2);
  *a4 = v12;
  return result;
}

uint64_t MLDataValue.DictionaryType.debugDescription.getter()
{
  sub_237A60DE0();

  return sub_237C0859C();
}

unint64_t MLDataValue.DictionaryType.subscript.getter@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (result = sub_237ACB180(*result, *(result + 8), *(result + 16)), (v5 & 1) != 0))
  {
    v6 = *(v4 + 56) + 24 * result;
    v7 = *v6;
    v8 = *(v6 + 8);
    *a2 = *v6;
    *(a2 + 8) = v8;
    v9 = *(v6 + 16);
    *(a2 + 16) = v9;

    return sub_2379E9288(v7, v8, v9);
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = -1;
  }

  return result;
}

BOOL static MLDataValue.DictionaryType.Index.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result == *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL static MLDataValue.DictionaryType.Index.< infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  if ((*(result + 16) & 1) == 0 && (*(a2 + 16) & 1) == 0)
  {
    if (*(result + 8) == *(a2 + 8))
    {
      return *result < *a2;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t MLDataValue.DictionaryType.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  result = sub_237AFFB0C(*v1);
  *a1 = result;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5 & 1;
  return result;
}

void MLDataValue.DictionaryType.endIndex.getter(uint64_t a1@<X8>)
{
  v2 = *(*v1 + 36);
  *a1 = 1 << *(*v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = 0;
}

void *sub_237AFFB80(void *result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = 3 * a3;
  v8 = *(a6 + 56);
  v9 = *(a6 + 48) + 24 * a3;
  v10 = *v9;
  v11 = *(v9 + 8);
  *result = *v9;
  result[1] = v11;
  v12 = *(v9 + 16);
  *(result + 16) = v12;
  v13 = v8 + 8 * v7;
  v14 = *v13;
  v15 = *(v13 + 8);
  *a2 = *v13;
  *(a2 + 8) = v15;
  v16 = *(v13 + 16);
  *(a2 + 16) = v16;
  sub_2379E9288(v10, v11, v12);

  return sub_2379E9288(v14, v15, v16);
}

uint64_t sub_237AFFC70(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v7 = result;
    v8 = *(a5 + 56);
    v9 = *(*(a5 + 48) + 16 * a2);
    v10 = a6(0);
    (*(*(v10 - 8) + 16))(v7, v8 + *(*(v10 - 8) + 72) * a2, v10);

    return v9;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t MLDataValue.DictionaryType.index(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_237B01EB4(*a1, *(a1 + 8), *(a1 + 16), *v2);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  return result;
}

void (*sub_237AFFD90(void *a1, uint64_t a2))(uint64_t *a1)
{
  v4 = __swift_coroFrameAllocStub(0x59uLL);
  *a1 = v4;
  MLDataValue.DictionaryType.subscript.getter(v4, v4 + 24, a2);
  v4[3] = *v4;
  *(v4 + 64) = *(v4 + 16);
  v5 = *(v4 + 40);
  *(v4 + 72) = *(v4 + 24);
  *(v4 + 88) = v5;
  return sub_237AFFE18;
}

void sub_237AFFE18(uint64_t *a1)
{
  v1 = *a1;
  sub_2379E8CE8(*(*a1 + 48), *(v1 + 56), *(v1 + 64));
  v2 = OUTLINED_FUNCTION_6_42();
  sub_2379E8CE8(v2, v3, v4);

  free(v1);
}

uint64_t sub_237AFFE70@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return sub_237A90230(&v5, *v2, a2);
}

void sub_237AFFEB8(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = -2;
}

uint64_t sub_237AFFF54(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *, void))
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a1 + 16);
  v9 = a2[1];
  v11 = *a2;
  v12[0] = v9;
  *(v12 + 9) = *(a2 + 25);
  return a5(v6, v7, v8, &v11, *v5);
}

uint64_t sub_237AFFFA4(uint64_t a1)
{
  OUTLINED_FUNCTION_12_30(a1);
  v2 = v1[1];
  v5 = *v1;
  v6[0] = v2;
  *(v6 + 9) = *(v1 + 25);
  return sub_237A9062C(&v4, &v5);
}

uint64_t sub_237AFFFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = OUTLINED_FUNCTION_6_42();
  v8 = sub_237B01EB4(v4, v5, v6, v7);
  v10 = v9;
  v12 = v11;
  v13 = OUTLINED_FUNCTION_6_42();
  result = sub_2379E8FD0(v13, v14, v15);
  *a1 = v8;
  *(a1 + 8) = v10;
  *(a1 + 16) = v12 & 1;
  return result;
}

uint64_t sub_237B00054@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;

  v4 = sub_237AFFB0C(v3);
  v6 = v5;
  v8 = v7;

  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v8 & 1;
  return result;
}

uint64_t sub_237B00128@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A901BC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_237B00158(uint64_t *a1)
{
  result = sub_237A901BC(*a1);
  *a1 = result;
  return result;
}

uint64_t sub_237B00188(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FD04(v2, v3);
  *v1 = result;
  return result;
}

uint64_t sub_237B001E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237B000DC();
  *a1 = result;
  return result;
}

uint64_t (*sub_237B00210(uint64_t *a1, uint64_t *a2))()
{
  *a1 = sub_237B000E0(*a2);
  a1[1] = v3;
  return sub_237B0025C;
}

uint64_t sub_237B0025C()
{
}

uint64_t sub_237B00298@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_237A90218(*a1, a1[1]);
  *a2 = result;
  a2[1] = v4;
  a2[2] = v5;
  return result;
}

uint64_t sub_237B002D0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_237A8FBD0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_237B00348(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237A8FE44(v2, v4, *v3);
  *v1 = result;
  *(v1 + 8) = v6 & 1;
  return result;
}

uint64_t sub_237B003B4(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_6_26(a1);
  result = sub_237B6A974(v2);
  *v1 = result;
  return result;
}

uint64_t sub_237B003E0(uint64_t *a1)
{
  result = sub_237B6A974(*a1);
  *a1 = result;
  return result;
}

void *MLDataValue.DictionaryType.init(from:)(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_26(a1);
  v4 = *(v3 + 16);
  if (v4 != 4)
  {
    sub_2379E8CE8(result, *(v3 + 8), v4);
    result = 0;
  }

  *v1 = result;
  return result;
}

uint64_t MLDataValue.DictionaryType.dataValue.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = 0;
  *(a1 + 16) = 4;
}

uint64_t sub_237B004D4@<X0>(uint64_t a2@<X8>)
{
  v3 = sub_237A2DE60();
  v5 = v4;

  result = sub_237AFC548(v6, &v10);
  v8 = v10;
  v9 = v11;
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = 2;
  *(a2 + 24) = v8;
  *(a2 + 40) = v9;
  return result;
}

uint64_t Dictionary<>.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = *a1;
  if (*(a1 + 16) == 4)
  {
    v9 = v7;
    result = Dictionary<>.init(from:)(&v9, a2, a3, a4, a5, a6);
    if (result)
    {
      return result;
    }
  }

  else
  {
    sub_2379E8CE8(v7, *(a1 + 8), *(a1 + 16));
  }

  return 0;
}

uint64_t Dictionary<>.init(from:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v95 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v94 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_18_0();
  v104 = v14 - v15;
  MEMORY[0x28223BE20](v16);
  v119 = &v93 - v17;
  OUTLINED_FUNCTION_3_15();
  v19 = v18;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_2_0();
  v103 = v22 - v21;
  v97 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v96 = v23;
  MEMORY[0x28223BE20](v24);
  v112 = &v93 - v25;
  OUTLINED_FUNCTION_3_15();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_18_0();
  v102 = v29 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v93 - v32;
  v34 = *a1;
  v122 = a2;
  v109 = a3;
  v105 = a5;
  v128 = sub_237C084CC();

  v36 = sub_237AFFB0C(v35);
  v38 = v37;
  LOBYTE(a5) = v39;

  v123 = v34;
  v113 = a4;
  v114 = v34 + 64;
  v127 = a5 & 1;
  v110 = a6;
  v111 = a4 + 16;
  v107 = (v27 + 32);
  v106 = a6 + 16;
  v101 = v19 + 32;
  v100 = v27 + 16;
  v99 = v19 + 16;
  v98 = v19 + 8;
  v108 = (v27 + 8);
  v120 = v33;
  if (a5)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    v86 = v127;

    sub_2379E8FD0(v36, v38, v86);
    return v128;
  }

  else
  {
    while (*(v123 + 36) == v38)
    {
      v41 = 1 << *(v123 + 32);
      if (v36 == v41)
      {
        goto LABEL_11;
      }

      if (v36 < 0 || v36 >= v41)
      {
        goto LABEL_17;
      }

      if (((*(v114 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
        goto LABEL_18;
      }

      v42 = v123;
      v43 = *(v123 + 48) + 24 * v36;
      v44 = *v43;
      v45 = *(v43 + 8);
      v46 = *(v43 + 16);
      v47 = *(v123 + 56) + 24 * v36;
      v48 = *v47;
      v49 = *(v47 + 8);
      v50 = *(v47 + 16);
      v51 = v127;
      v52 = OUTLINED_FUNCTION_1_56();
      sub_2379E9288(v52, v53, v54);
      sub_2379E9288(v48, v49, v50);
      v117 = sub_237B01EB4(v36, v38, v51, v42);
      v118 = v55;
      LODWORD(v42) = v56;
      LOBYTE(v56) = v51;
      v57 = v122;
      sub_2379E8FD0(v36, v38, v56);
      v116 = v42;
      v58 = v42 & 1;
      v59 = v50;
      v127 = v58;
      v60 = OUTLINED_FUNCTION_1_56();
      sub_2379E9288(v60, v61, v62);
      sub_2379E9288(v48, v49, v50);
      v121 = v49;
      sub_2379E8CE8(v48, v49, v50);
      v124 = v44;
      v125 = v45;
      v126 = v46;
      v63 = v112;
      (*(v113 + 16))(&v124, v57);
      if (__swift_getEnumTagSinglePayload(v63, 1, v57) == 1)
      {

        v87 = OUTLINED_FUNCTION_1_56();
        sub_2379E8CE8(v87, v88, v89);
        sub_2379E8CE8(v48, v121, v59);

        sub_2379E8FD0(v117, v118, v58);
        (*(v96 + 8))(v63, v97);
        return 0;
      }

      v64 = v120;
      (*v107)(v120, v63, v122);
      v65 = OUTLINED_FUNCTION_1_56();
      sub_2379E9288(v65, v66, v67);
      v68 = v121;
      sub_2379E9288(v48, v121, v59);
      v69 = OUTLINED_FUNCTION_1_56();
      sub_2379E8CE8(v69, v70, v71);
      v124 = v48;
      v125 = v68;
      v126 = v59;
      v72 = v109;
      v73 = v119;
      (*(v110 + 16))(&v124, v109);
      if (__swift_getEnumTagSinglePayload(v73, 1, v72) == 1)
      {
        v90 = OUTLINED_FUNCTION_1_56();
        sub_2379E8CE8(v90, v91, v92);
        sub_2379E8CE8(v48, v121, v59);
        (*v108)(v64, v122);

        sub_2379E8FD0(v117, v118, v116 & 1);
        (*(v94 + 8))(v119, v95);
        return 0;
      }

      OUTLINED_FUNCTION_9_29();
      v74 = v103;
      v75(v103, v119, v72);
      OUTLINED_FUNCTION_9_29();
      v115 = v59;
      v76 = v122;
      v77(v102, v120, v122);
      OUTLINED_FUNCTION_9_29();
      v78 = v104;
      v79(v104, v74, v72);
      __swift_storeEnumTagSinglePayload(v78, 0, 1, v72);
      sub_237C085DC();
      sub_237C085EC();
      v80 = OUTLINED_FUNCTION_1_56();
      sub_2379E8CE8(v80, v81, v82);
      sub_2379E8CE8(v48, v121, v115);
      OUTLINED_FUNCTION_9_29();
      v83 = v74;
      v84 = v120;
      v85(v83, v72);
      result = (*v108)(v84, v76);
      v36 = v117;
      v38 = v118;
      if (v116)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

uint64_t Dictionary<>.dataValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v19 = a1;
  v12 = sub_237C085DC();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x2383DC430](&v18, v12, WitnessTable);
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = a4;
  v14[5] = a5;
  v14[6] = a6;
  sub_237C08EEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B348, &qword_237C0CBF0);
  swift_getWitnessTable();
  sub_237C0914C();

  v15 = sub_237C0905C();
  swift_getWitnessTable();
  result = MLDataValue.DictionaryType.init<A>(uniqueKeysWithValues:)(&v20, v15, &v19);
  *a7 = v19;
  *(a7 + 8) = 0;
  *(a7 + 16) = 4;
  return result;
}

uint64_t sub_237B00EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a4 + 32))(a2, a4);
  swift_getTupleTypeMetadata2();
  return (*(a6 + 32))(a3, a6);
}

uint64_t sub_237B00F58@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>, uint64_t *a3@<X1>, uint64_t a4@<X2>)
{
  result = Dictionary<>.init(from:)(a1, a3[2], a3[3], *(a4 - 8), a3[4], *(a4 - 16));
  *a2 = result;
  return result;
}

uint64_t sub_237B00F90@<X0>(uint64_t *a2@<X8>)
{
  result = sub_237C084CC();
  *a2 = result;
  return result;
}

uint64_t sub_237B00FDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v46 = v7;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_18_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v44 - v13;
  OUTLINED_FUNCTION_3_15();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_2_0();
  v20 = v19 - v18;
  v21 = sub_237B0DDC8(*(a1 + 16));
  v52 = v14;
  v53 = v11;
  v50 = v20;
  v45 = v6;
  if (v21)
  {
    type metadata accessor for CMLDictionary();
    inited = swift_initStackObject();
    *(inited + 16) = v21;
    v22 = 0;
    v63 = sub_237C084CC();
    v49 = v16 + 32;
    v48 = v16 + 16;
    v47 = v16 + 8;
    v51 = a1;
    while (1)
    {
      if (v22 == sub_237A2EAA4())
      {

        return v63;
      }

      v23 = v52;
      v24 = sub_237A2EB64(v22);
      v54 = sub_237B6A974(v22);
      v25 = sub_237C08D2C();
      v55 = &v44;
      OUTLINED_FUNCTION_3_15();
      v27 = v26;
      MEMORY[0x28223BE20](v28);
      v30 = (&v44 - v29);
      v56 = v24;
      *v30 = sub_237A2DE60();
      v30[1] = v31;
      v32 = MEMORY[0x277D837D0];
      if (__swift_getEnumTagSinglePayload(v30, 1, MEMORY[0x277D837D0]) == 1)
      {
        (*(v27 + 8))(v30, v25);
        v60 = 0;
        v58 = 0u;
        v59 = 0u;
      }

      else
      {
        *(&v59 + 1) = v32;
        v60 = &off_284AC56F0;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v58);
        (*(*(v32 - 8) + 32))(boxed_opaque_existential_0, v30, v32);
      }

      v34 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9C850, qword_237C10F20);
      v35 = swift_dynamicCast();
      v36 = v53;
      if ((v35 & 1) == 0 || (v37 = v62) == 0)
      {

        return 0;
      }

      v38 = v61;
      sub_237B70F8C(a2, a3, v34);
      if (__swift_getEnumTagSinglePayload(v34, 1, a2) == 1)
      {
        break;
      }

      OUTLINED_FUNCTION_9_29();
      v39 = v50;
      v40(v50, v34, a2);
      OUTLINED_FUNCTION_9_29();
      v41(v36, v39, a2);
      __swift_storeEnumTagSinglePayload(v36, 0, 1, a2);
      *&v58 = v38;
      *(&v58 + 1) = v37;
      sub_237C085DC();
      sub_237C085EC();

      OUTLINED_FUNCTION_9_29();
      v42(v39, a2);
      v22 = v54;
    }

    (*(v46 + 8))(v34, v45);
    return 0;
  }

  else
  {
    __break(1u);
    OUTLINED_FUNCTION_2_29();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B01534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v57 = a3;
  OUTLINED_FUNCTION_3_15();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_18_0();
  v55 = v8 - v9;
  MEMORY[0x28223BE20](v10);
  v53 = &v51 - v11;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v60 = sub_237C08D2C();
  OUTLINED_FUNCTION_3_15();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_18_0();
  v18 = (v16 - v17);
  v20 = MEMORY[0x28223BE20](v19);
  v63 = (&v51 - v21);
  v22 = MEMORY[0x2383DDA80](0, v20);
  if (!v22)
  {
    goto LABEL_19;
  }

  v23 = v22;
  type metadata accessor for CMLDictionary();
  inited = swift_initStackObject();
  *(inited + 16) = v23;
  v24 = *(a1 + 64);
  v62 = a1 + 64;
  v25 = 1 << *(a1 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & v24;
  v61 = (v25 + 63) >> 6;
  v51 = v6 + 16;
  v52 = v6;
  v64 = (v6 + 32);
  v58 = (v14 + 32);
  v56 = (v6 + 8);
  v54 = a1;

  v28 = 0;
  v65 = 0;
  v29 = v55;
  while (1)
  {
    v30 = v63;
    if (v27)
    {
      v31 = v28;
      goto LABEL_11;
    }

    do
    {
      v31 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:

        while (1)
        {
          swift_unexpectedError();
          __break(1u);
LABEL_22:
          OUTLINED_FUNCTION_2_29();
        }
      }

      if (v31 >= v61)
      {
        __swift_storeEnumTagSinglePayload(v18, 1, 1, TupleTypeMetadata2);
        v27 = 0;
        goto LABEL_12;
      }

      v27 = *(v62 + 8 * v31);
      ++v28;
    }

    while (!v27);
    v28 = v31;
LABEL_11:
    v32 = __clz(__rbit64(v27));
    v27 &= v27 - 1;
    v33 = v32 | (v31 << 6);
    v34 = v53;
    v35 = (*(v54 + 48) + 16 * v33);
    v37 = *v35;
    v36 = v35[1];
    v38 = v52;
    (*(v52 + 16))(v53, *(v54 + 56) + *(v52 + 72) * v33, a2);
    v39 = *(TupleTypeMetadata2 + 48);
    *v18 = v37;
    *(v18 + 1) = v36;
    (*(v38 + 32))(&v18[v39], v34, a2);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, TupleTypeMetadata2);

    v29 = v55;
LABEL_12:
    (*v58)(v30, v18, v60);
    if (__swift_getEnumTagSinglePayload(v30, 1, TupleTypeMetadata2) == 1)
    {
      break;
    }

    v40 = v30;
    v41 = *v30;
    v42 = v40[1];
    (*v64)(v29, v40 + *(TupleTypeMetadata2 + 48), a2);
    v43 = sub_237B70DD4(a2, v57);
    v44 = v41;
    v45 = v65;
    sub_237A2EABC(v44, v42, v43);
    v65 = v45;
    if (v45)
    {
      goto LABEL_20;
    }

    (*v56)(v29, a2);
  }

  type metadata accessor for CMLFeatureValue();

  v47 = v65;
  v48 = sub_237A2E858(v46);
  if (v47)
  {
    goto LABEL_22;
  }

  v49 = v48;
  swift_setDeallocating();
  tc_v1_release();
  return v49;
}

uint64_t sub_237B01994@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_237B00FDC(a1, *(a2 + 24), *(a3 - 8));
  *a4 = result;
  return result;
}

void sub_237B019D8(void *a1, int a2, void *a3)
{
  v4 = v3;
  v76 = a3;
  HIDWORD(v75) = a2;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v72 = a1[5];
  v9 = a1[6];

  v93 = v6;

  v77 = v8;

  v10 = 0;
  while (1)
  {
    while (1)
    {
      if (v10 == sub_237A2EAA4())
      {
LABEL_16:

        return;
      }

      v11 = v9;
      v12 = sub_237A2EB64(v10);
      if (v4)
      {
        goto LABEL_21;
      }

      v14 = v12;
      v15 = v13;
      v10 = sub_237B6A974(v10);
      v82 = v14;
      v83 = v15;
      v5(&v78, &v82);

      v84 = v78;
      v85 = v79;
      v86 = v80;
      v87 = v81;
      v16 = v7(&v84);
      v24 = OUTLINED_FUNCTION_15_27(v16, v17, v18, v19, v20, v21, v22, v23, v67, v68, v69, v70, v71, v72, v73, *(&v73 + 1), v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82, v83, v84);
      if (v30)
      {
        break;
      }

      sub_237B02450(v24, v25, v26, v27, v28, v29);
      v9 = v11;
    }

    *&v84 = v24;
    *(&v84 + 1) = v25;
    *&v85 = v26;
    *(&v85 + 1) = v27;
    v86 = v28;
    v87 = v29;
    v31 = v72(&v88, &v84);
    v39 = OUTLINED_FUNCTION_15_27(v31, v32, v33, v34, v35, v36, v37, v38, v67, v68, v69, v70, v71, v72, v73, *(&v73 + 1), v74, v75, v76, v77, v78, *(&v78 + 1), v79, *(&v79 + 1), v80, v81, v82, v83, v84);
    sub_237B02450(v39, v40, v41, v42, v43, v44);
    if (v89 == 255)
    {
      goto LABEL_16;
    }

    v84 = v88;
    LOBYTE(v85) = v89;
    v69 = v90;
    v70 = v91;
    HIDWORD(v71) = v92;
    v45 = *v76;
    v73 = v88;
    v74 = v89;
    v47 = sub_237ACB180(v88, *(&v88 + 1), v89);
    v48 = v45[2];
    v49 = (v46 & 1) == 0;
    v50 = v48 + v49;
    if (__OFADD__(v48, v49))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      swift_unexpectedError();
      __break(1u);
LABEL_22:
      sub_237C0932C();
      __break(1u);
      goto LABEL_23;
    }

    v51 = v46;
    if (v45[3] >= v50)
    {
      if ((v75 & 0x100000000) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BDE8, &qword_237C0EC80);
        sub_237C090BC();
      }
    }

    else
    {
      sub_237ABF994(v50, BYTE4(v75) & 1);
      v52 = sub_237ACB180(v73, *(&v73 + 1), v74);
      if ((v51 & 1) != (v53 & 1))
      {
        goto LABEL_22;
      }

      v47 = v52;
    }

    v54 = *v76;
    if (v51)
    {
      break;
    }

    v54[(v47 >> 6) + 8] |= 1 << v47;
    v55 = v54[6] + 24 * v47;
    *v55 = v73;
    *(v55 + 16) = v74;
    v56 = v54[7] + 24 * v47;
    *v56 = v69;
    *(v56 + 8) = v70;
    *(v56 + 16) = BYTE4(v71);
    v57 = v54[2];
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      goto LABEL_20;
    }

    v54[2] = v59;
    HIDWORD(v75) = 1;
    v9 = v11;
  }

  v60 = *(v54[7] + 24 * v47 + 16);
  v61 = swift_allocError();
  swift_willThrow();
  v62 = OUTLINED_FUNCTION_83();
  sub_2379E9288(v62, v63, v60);

  v64 = OUTLINED_FUNCTION_83();
  sub_2379E8CE8(v64, v65, v60);
  v82 = v61;
  v66 = v61;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AAA8, &qword_237C0ECD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2379E8CE8(v69, v70, SBYTE4(v71));

    sub_2379E8CE8(v73, *(&v73 + 1), v74);

    return;
  }

LABEL_23:
  *&v78 = 0;
  *(&v78 + 1) = 0xE000000000000000;
  sub_237C08EDC();
  MEMORY[0x2383DC360](0xD00000000000001BLL, 0x8000000237C17280);
  sub_237C0907C();
  MEMORY[0x2383DC360](39, 0xE100000000000000);
  sub_237C090DC();
  __break(1u);
}

uint64_t sub_237B01EB4(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || -(-1 << *(a4 + 32)) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return sub_237C08E3C();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_237B01F58()
{
  result = qword_27DE9CCF8;
  if (!qword_27DE9CCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CCF8);
  }

  return result;
}

unint64_t sub_237B01FB0()
{
  result = qword_27DE9CD00;
  if (!qword_27DE9CD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD00);
  }

  return result;
}

unint64_t sub_237B02008()
{
  result = qword_27DE9CD08;
  if (!qword_27DE9CD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE9CD08);
  }

  return result;
}

uint64_t sub_237B02128(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_237B02360(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE9CD60, &qword_237C12AE0);
    sub_237B023E4(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_237B023E4(uint64_t a1)
{
  result = OUTLINED_FUNCTION_14_17(a1);
  if (!result)
  {
    type metadata accessor for CMLDictionary();
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

void sub_237B02450(void *a1, void *a2, char a3, void *a4, void *a5, char a6)
{
  if (a3 != -1)
  {
    sub_2379E8CE8(a1, a2, a3);

    sub_2379E8CE8(a4, a5, a6);
  }
}

uint64_t sub_237B0251C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_237B02A68(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    v17 = inited;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    v8 = (a1 + 40);
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v9 = *(v8 - 1);
      v10 = *v8;
      v16[3] = MEMORY[0x277D837D0];
      v16[4] = &off_284AC56F0;
      v16[0] = v9;
      v16[1] = v10;
      __swift_project_boxed_opaque_existential_1(v16, MEMORY[0x277D837D0]);
      type metadata accessor for CMLFeatureValue();
      swift_bridgeObjectRetain_n();

      v11 = sub_237A2E7CC();
      if (v1)
      {
        goto LABEL_13;
      }

      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_237A2DE9C(v12);

      v8 += 2;
      ++v6;
    }

    type metadata accessor for CMLColumn();
    v13 = sub_237A2ED1C(v17, 2);
    if (v1)
    {
      type metadata accessor for _UntypedColumn();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v15 + 16) = v13;
    }

    return v15;
  }

  else
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B02C68(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    v8 = MEMORY[0x277D83B88];
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

      v9 = *(a1 + 8 * v6 + 32);
      v30 = v8;
      v31 = &off_284AC55D0;
      v29[0] = v9;
      v10 = __swift_project_boxed_opaque_existential_1(v29, v8);
      v18 = sub_237B0F164(*v10, v11, v12, v13, v14, v15, v16, v17, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v30, v31, v32[0], v32[1], v32[2], v32[3], v32[4], v33, v34, v35, v36, v37, v38, v39);
      if (v1)
      {
        goto LABEL_15;
      }

      v19 = v18;
      if (!v18)
      {
        goto LABEL_13;
      }

      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      v20 = sub_237A2E764(v19, 1);
      __swift_destroy_boxed_opaque_existential_1(v29);
      sub_237A2DE9C(v20);

      ++v6;
    }

    type metadata accessor for CMLColumn();
    v21 = sub_237A2ED1C(inited, 0);
    v22 = v33;
    if (v1)
    {
      type metadata accessor for _UntypedColumn();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v33 + 16) = v21;
    }

    return v22;
  }

  else
  {
LABEL_14:
    __break(1u);
LABEL_15:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t sub_237B02E5C(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    while (v7 != v6)
    {
      if (v6 >= *(a1 + 16))
      {
        __break(1u);
        goto LABEL_12;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AEC8, &qword_237C0C2A0);
      v16[3] = v9;
      v16[4] = sub_237B060E8();
      v16[0] = v8;
      v10 = *__swift_project_boxed_opaque_existential_1(v16, v9);
      type metadata accessor for CMLFeatureValue();
      swift_bridgeObjectRetain_n();
      sub_237BF258C(v10);
      v11 = sub_237A2DECC();
      if (v1)
      {
        goto LABEL_13;
      }

      v12 = v11;
      __swift_destroy_boxed_opaque_existential_1(v16);
      sub_237A2DE9C(v12);

      ++v6;
    }

    type metadata accessor for CMLColumn();
    v13 = sub_237A2ED1C(inited, 3);
    v14 = v17;
    if (v1)
    {
      type metadata accessor for _UntypedColumn();
      swift_deallocPartialClassInstance();
    }

    else
    {
      *(v17 + 16) = v13;
    }

    return v14;
  }

  else
  {
LABEL_12:
    __break(1u);
LABEL_13:
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void sub_237B03064(uint64_t a1)
{
  v3 = MEMORY[0x2383DDAC0](0);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for CMLSequence();
    inited = swift_initStackObject();
    v6 = 0;
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    v7 = *(a1 + 16);
    while (1)
    {
      if (v7 == v6)
      {

        type metadata accessor for CMLColumn();
        v11 = sub_237A2ED1C(inited, 6);
        if (!v1)
        {
          *(v12[10] + 16) = v11;
          return;
        }

        goto LABEL_10;
      }

      if (v6 >= *(a1 + 16))
      {
        break;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v12[3] = &type metadata for MLDataValue.MultiArrayType;
      v12[4] = &off_284AC3CA8;
      v12[0] = v8;
      __swift_project_boxed_opaque_existential_1(v12, &type metadata for MLDataValue.MultiArrayType);
      v9 = v8;
      v10 = sub_237AC85C4();
      __swift_destroy_boxed_opaque_existential_1(v12);
      sub_237A2DE9C(v10);
      if (v1)
      {

        swift_setDeallocating();
        sub_237A2E6E8();
        swift_deallocClassInstance();

LABEL_10:
        type metadata accessor for _UntypedColumn();
        swift_deallocPartialClassInstance();
        return;
      }

      ++v6;
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_237B0320C(uint64_t a1)
{
  result = MEMORY[0x2383DDAC0](0);
  if (result)
  {
    v4 = result;
    type metadata accessor for CMLSequence();
    result = swift_initStackObject();
    v5 = result;
    v6 = 0;
    *(result + 16) = v4;
    *(result + 24) = 1;
    v7 = *(a1 + 16);
    while (1)
    {
      if (v7 == v6)
      {

        type metadata accessor for CMLColumn();
        v12 = sub_237A2ED1C(v5, 4);
        if (v1)
        {
          goto LABEL_10;
        }

        v13 = v15;
        *(v15 + 16) = v12;
        return v13;
      }

      if (v6 >= *(a1 + 16))
      {
        break;
      }

      v8 = *(a1 + 8 * v6 + 32);
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B150, &unk_237C152C0);
      v14[3] = v9;
      v14[4] = sub_237B06164();
      v14[0] = v8;
      v10 = *__swift_project_boxed_opaque_existential_1(v14, v9);
      swift_bridgeObjectRetain_n();
      v11 = sub_237B033D4(v10);
      __swift_destroy_boxed_opaque_existential_1(v14);
      sub_237A2DE9C(v11);
      if (v1)
      {

        swift_setDeallocating();
        sub_237A2E6E8();
        swift_deallocClassInstance();

LABEL_10:
        v13 = v15;
        type metadata accessor for _UntypedColumn();
        swift_deallocPartialClassInstance();
        return v13;
      }

      ++v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_237B033D4(uint64_t a1)
{
  v2 = MEMORY[0x2383DDA80](0);
  if (v2)
  {
    v3 = v2;
    type metadata accessor for CMLDictionary();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    v5 = 1 << *(a1 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a1 + 64);
    v8 = (v5 + 63) >> 6;

    v9 = 0;
    v29 = inited;
    while (v7)
    {
LABEL_10:
      v11 = __clz(__rbit64(v7)) | (v9 << 6);
      v12 = (*(a1 + 48) + 16 * v11);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(a1 + 56) + 8 * v11);
      v36 = MEMORY[0x277D839F8];
      v37 = &off_284AC56A8;
      v35[0] = v15;
      __swift_project_boxed_opaque_existential_1(v35, MEMORY[0x277D839F8]);

      v24 = sub_237B0F594(v16, v17, v18, v19, v20, v21, v22, v23, v29, v30, v31, v32, v33, v34, v35[0], v35[1], v35[2], v36, v37, *v38, *&v38[8], *&v38[16], v39, v40, v41, v42, v43, v44, v45, v46);
      if (!v24)
      {
        goto LABEL_14;
      }

      v7 &= v7 - 1;
      type metadata accessor for CMLFeatureValue();
      swift_initStackObject();
      v25 = sub_237A2E764(v24, 1);
      __swift_destroy_boxed_opaque_existential_1(v35);
      sub_237A2EABC(v14, v13, v25);
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v8)
      {

        type metadata accessor for CMLFeatureValue();

        v27 = sub_237A2E858(v26);
        swift_setDeallocating();
        tc_v1_release();
        return v27;
      }

      v7 = *(a1 + 64 + 8 * v10);
      ++v9;
      if (v7)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  __break(1u);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

void sub_237B03618(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9B318, &qword_237C12D60);
  v4 = swift_allocObject();
  v5 = 0;
  *(v4 + 16) = xmmword_237C0B660;
  *(v4 + 32) = a1;
  while (1)
  {
    v6 = v5 + 1;
    if (v5 >= v5 + 1)
    {
      break;
    }

    v7 = *(v4 + 8 * v5 + 32) ^ (*(v4 + 8 * v5 + 32) >> 30);
    v8 = 0x5851F42D00000000 * v7 + 0x4C957F2D00000000 * HIDWORD(v7) + 1284865837 * v7;
    v9 = v8 + v6;
    if (__CFADD__(v8, v6))
    {
      goto LABEL_9;
    }

    v10 = *(v4 + 24);
    if (v6 >= v10 >> 1)
    {
      sub_237BC0D70(v10 > 1, v5 + 2, 1, v4);
      v4 = v11;
    }

    *(v4 + 16) = v5 + 2;
    *(v4 + 8 * v5++ + 40) = v9;
    if (v5 == 623)
    {
      *a2 = xmmword_237C12C80;
      *(a2 + 16) = xmmword_237C12C90;
      *(a2 + 32) = xmmword_237C12CA0;
      *(a2 + 48) = xmmword_237C12CB0;
      *(a2 + 64) = xmmword_237C12CC0;
      *(a2 + 80) = xmmword_237C12CD0;
      *(a2 + 96) = 0x5851F42D4C957F2DLL;
      *(a2 + 104) = v4;
      *(a2 + 112) = 0;
      return;
    }
  }

  __break(1u);
LABEL_9:
  __break(1u);
}

void sub_237B03780()
{
  v1 = v0[14];
  if (v1 == v0[1])
  {
    sub_237B05B68();
    v1 = v0[14];
  }

  if ((v1 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v1 < *(v0[13] + 16))
  {
    v0[14] = v1 + 1;
    return;
  }

  __break(1u);
}

uint64_t sub_237B038C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v77 = a4;
  v78 = a5;
  v76 = a2;
  v70 = sub_237C05ADC();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a3;
  v14 = sub_237BA2F3C();
  v15 = 0;
  v80 = *(v14 + 16);
  v81 = v14;
  v91 = v10;
  v87 = (v10 + 32);
  v88 = v10 + 16;
  v16 = v14 + 40;
  v17 = MEMORY[0x277D84F90];
  v69 = v14 + 40;
LABEL_2:
  for (i = (v16 + 16 * v15); ; i += 2)
  {
    if (v80 == v15)
    {
      goto LABEL_41;
    }

    if (v15 >= *(v81 + 16))
    {
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v19 = *(i - 1);
    v20 = *i;

    v84 = v19;
    v86 = v20;
    v21 = sub_237ACDA88();
    if (!v21)
    {
      goto LABEL_49;
    }

    v22 = v21;
    v23 = sub_2379DFF68(0, *(v21 + 16));
    sub_237B03EA4(v23, a1, v76, v77, v78);
    v85 = v24;
    if (v6)
    {

LABEL_41:

      return v17;
    }

    if (*(a1 + 16))
    {
      break;
    }

    ++v15;
  }

  v71 = *(a1 + 16);
  v25 = 0;
  v74 = 0;
  v75 = v85 + 32;
  v92 = v22;
  v72 = v15 + 1;
  v73 = a1;
  while (1)
  {
    v26 = *(v17 + 16);
    v83 = v25;
    if (v26 <= v25)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AE38, &unk_237C12D50);
      v27 = sub_237C085AC();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_10();
        sub_237BC1E44();
        v17 = v65;
      }

      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      if (v29 >= v28 >> 1)
      {
        OUTLINED_FUNCTION_106(v28);
        sub_237BC1E44();
        v17 = v66;
      }

      *(v17 + 16) = v29 + 1;
      *(v17 + 8 * v29 + 32) = v27;
      v25 = v83;
    }

    if (v25 >= *(v85 + 16))
    {
      break;
    }

    v82 = v17;
    v30 = *(v75 + 8 * v25);
    v31 = *(v30 + 16);
    if (v31)
    {
      v93 = MEMORY[0x277D84F90];

      sub_237AC8AF4(0, v31, 0);
      v32 = v93;
      v90 = (*(v91 + 80) + 32) & ~*(v91 + 80);
      v89 = v22 + v90;
      v33 = 32;
      v34 = v70;
      while (1)
      {
        v35 = *(v30 + v33);
        if ((v35 & 0x8000000000000000) != 0)
        {
          break;
        }

        if (v35 >= *(v22 + 16))
        {
          goto LABEL_43;
        }

        v36 = *(v91 + 72);
        (*(v91 + 16))(v13, v89 + v36 * v35, v34);
        v93 = v32;
        v38 = v32[2];
        v37 = v32[3];
        if (v38 >= v37 >> 1)
        {
          v39 = OUTLINED_FUNCTION_106(v37);
          sub_237AC8AF4(v39, v38 + 1, 1);
          v34 = v70;
          v32 = v93;
        }

        v32[2] = v38 + 1;
        (*v87)(v32 + v90 + v38 * v36, v13, v34);
        v33 += 8;
        --v31;
        v22 = v92;
        if (!v31)
        {

          v25 = v83;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
      goto LABEL_44;
    }

    v32 = MEMORY[0x277D84F90];
LABEL_26:
    v40 = v82;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = v86;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_237B05FE4(v40, v42, v43, v44);
      v40 = v64;
    }

    if (v25 >= *(v40 + 16))
    {
      goto LABEL_46;
    }

    v46 = v40;
    v47 = v40 + 32;
    swift_isUniquelyReferenced_nonNull_native();
    v48 = v25;
    v49 = *(v47 + 8 * v25);
    v93 = v49;
    v50 = v47;
    *(v47 + 8 * v48) = 0x8000000000000000;
    v51 = sub_237ACAC78(v84, v45);
    if (__OFADD__(v49[2], (v52 & 1) == 0))
    {
      goto LABEL_47;
    }

    v53 = v51;
    v54 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9BA78, &unk_237C0E560);
    if (sub_237C090AC())
    {
      v55 = v86;
      v56 = sub_237ACAC78(v84, v86);
      if ((v54 & 1) != (v57 & 1))
      {
        goto LABEL_50;
      }

      v53 = v56;
    }

    else
    {
      v55 = v86;
    }

    v58 = v93;
    if (v54)
    {
      *(v93[7] + 8 * v53) = v32;
    }

    else
    {
      v93[(v53 >> 6) + 8] |= 1 << v53;
      v59 = (v58[6] + 16 * v53);
      *v59 = v84;
      v59[1] = v55;
      *(v58[7] + 8 * v53) = v32;
      v60 = v58[2];
      v61 = __OFADD__(v60, 1);
      v62 = v60 + 1;
      if (v61)
      {
        goto LABEL_48;
      }

      v58[2] = v62;
    }

    v63 = v83 + 1;
    *(v50 + 8 * v83) = v58;

    v25 = v63;
    v15 = v72;
    a1 = v73;
    v17 = v46;
    v22 = v92;
    v6 = v74;
    if (v63 == v71)
    {

      v16 = v69;
      goto LABEL_2;
    }
  }

LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  result = sub_237C0932C();
  __break(1u);
  return result;
}

void sub_237B03EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = 0xD000000000000024;
  if (!*(a2 + 16))
  {
    v10 = "-zero proportion is required.";
    goto LABEL_16;
  }

  v66 = *(a2 + 16);
  v8 = COERCE_DOUBLE(sub_237B0251C(a2));
  if (v9)
  {
    goto LABEL_62;
  }

  if (v8 < 0.0)
  {
    v10 = "ed.";
    v5 = 0xD00000000000002ALL;
LABEL_16:
    v23 = v10 | 0x8000000000000000;
    sub_2379E8AF0();
    v24 = OUTLINED_FUNCTION_6_2(&type metadata for MLCreateError);
    *v25 = v5;
    v25[1] = v23;
    OUTLINED_FUNCTION_52(v24, v25);
    return;
  }

  v11 = COERCE_DOUBLE(sub_2379FBDB8(a2));
  if ((v12 & 1) == 0)
  {
    if (v11 <= 0.0)
    {
      v10 = "e proportions are allowed.";
      v5 = 0xD00000000000002DLL;
      goto LABEL_16;
    }

    v65 = *(a1 + 16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE9AF10, &qword_237C0D670);
    sub_237A474D0();
    v67 = sub_237C088BC();
    v13 = 0;
    v14 = a2 + 32;
    v15 = 0.0;
    do
    {
      v16 = *(v14 + 8 * v13++);
      v15 = v15 + v16;
    }

    while (v66 != v13);
    v69 = MEMORY[0x277D84F90];
    sub_237AC8B54();
    v17 = v66;
    v18 = 0;
    v19 = *(v69 + 16);
    do
    {
      v20 = *(v14 + 8 * v18);
      v21 = *(v69 + 24);
      v22 = v19 + 1;
      if (v19 >= v21 >> 1)
      {
        OUTLINED_FUNCTION_106(v21);
        sub_237AC8B54();
        v17 = v66;
      }

      ++v18;
      *(v69 + 16) = v22;
      *(v69 + 8 * v19++ + 32) = v20 / v15;
    }

    while (v17 != v18);
    sub_237BC0EDC(0, 1, 1, MEMORY[0x277D84F90]);
    v27 = v26;
    v28 = 0;
    v29 = *(v26 + 16);
    v30 = 8 * v29;
    do
    {
      if (v29 + v28)
      {
        v31 = *(v27 + v30 + 8 * v28 + 24);
      }

      else
      {
        v31 = 0.0;
      }

      v32 = *(v69 + 32 + 8 * v28);
      v33 = *(v27 + 24);
      if (v29 + v28 >= v33 >> 1)
      {
        sub_237BC0EDC(v33 > 1, v29 + v28 + 1, 1, v27);
        v27 = v34;
      }

      *(v27 + 16) = v29 + v28 + 1;
      *(v27 + v30 + 8 * v28++ + 32) = v32 + v31;
    }

    while (v22 != v28);

    v35 = *(v27 + 16);
    if (v35)
    {
      v70 = MEMORY[0x277D84F90];
      sub_237AC8A34(0, v35, 0);
      v36 = 32;
      v37 = v70;
      while (1)
      {
        v38 = round(*(v27 + v36) * v65);
        if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          break;
        }

        if (v38 <= -9.22337204e18)
        {
          goto LABEL_58;
        }

        if (v38 >= 9.22337204e18)
        {
          goto LABEL_59;
        }

        v40 = *(v70 + 16);
        v39 = *(v70 + 24);
        if (v40 >= v39 >> 1)
        {
          v41 = OUTLINED_FUNCTION_106(v39);
          sub_237AC8A34(v41, v40 + 1, 1);
        }

        *(v70 + 16) = v40 + 1;
        *(v70 + 8 * v40 + 32) = v38;
        v36 += 8;
        if (!--v35)
        {

          goto LABEL_33;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
    }

    else
    {

      v37 = MEMORY[0x277D84F90];
LABEL_33:
      v42 = 0;
      v43 = 0;
      v44 = v37 + 32;
      v45 = v66;
      v64 = a1 + 32;
      v68 = MEMORY[0x277D84F90];
      while (v43 != v45)
      {
        if (v43 >= *(v37 + 16))
        {
          goto LABEL_61;
        }

        if (v42 < *(v44 + 8 * v43))
        {
          sub_237BC0EB4(0, 1, 1, MEMORY[0x277D84F90]);
          v47 = v64;
          v46 = v67 + 32;
          v49 = v48;
          v50 = v67;
          v51 = v42;
          v52 = v65;
          while ((v42 & 0x8000000000000000) == 0)
          {
            if (v51 >= *(v50 + 16))
            {
              goto LABEL_54;
            }

            v53 = *(v46 + 8 * v51);
            if (v53 >= v52)
            {
              goto LABEL_55;
            }

            v54 = *(v47 + 8 * v53);
            v56 = *(v49 + 16);
            v55 = *(v49 + 24);
            if (v56 >= v55 >> 1)
            {
              v57 = OUTLINED_FUNCTION_106(v55);
              sub_237BC0EB4(v57, v56 + 1, 1, v49);
              v47 = v64;
              v46 = v67 + 32;
              v52 = v65;
              v49 = v58;
              v50 = v67;
            }

            *(v49 + 16) = v56 + 1;
            *(v49 + 8 * v56 + 32) = v54;
            if (v43 >= *(v37 + 16))
            {
              goto LABEL_56;
            }

            if (++v51 >= *(v44 + 8 * v43))
            {
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
LABEL_55:
          __break(1u);
LABEL_56:
          __break(1u);
          goto LABEL_57;
        }

        v51 = v42;
        v49 = MEMORY[0x277D84F90];
LABEL_47:
        v59 = v68;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_7_10();
          sub_237BC0DEC();
          v59 = v62;
        }

        v61 = *(v59 + 16);
        v60 = *(v59 + 24);
        v45 = v66;
        if (v61 >= v60 >> 1)
        {
          OUTLINED_FUNCTION_106(v60);
          sub_237BC0DEC();
          v45 = v66;
          v59 = v63;
        }

        ++v43;
        *(v59 + 16) = v61 + 1;
        v68 = v59;
        *(v59 + 8 * v61 + 32) = v49;
        v42 = v51;
        if (v43 == v45)
        {

          return;
        }
      }
    }

    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
}