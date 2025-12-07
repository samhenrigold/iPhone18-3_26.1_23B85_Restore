void sub_1E4074F98()
{
  OUTLINED_FUNCTION_31_1();
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1D8, &qword_1E42E8CC8);
  OUTLINED_FUNCTION_17_2(v8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v60 = v13;
  v61 = v12;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_9_3();
  v59 = v14;
  OUTLINED_FUNCTION_138();
  v15 = sub_1E4205144();
  OUTLINED_FUNCTION_0_10();
  v58 = v16;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_3();
  v57 = v18;
  v19 = sub_1E42051E4();
  sub_1E32AE9B0(v19);
  OUTLINED_FUNCTION_81_26();
  v63 = v11;
  v64 = v15;
  v62 = v7;
  while (1)
  {
    if (v2 == v3)
    {

      v23 = 0;
      v24 = 0;
      goto LABEL_13;
    }

    if (v0)
    {
      OUTLINED_FUNCTION_90_21();
    }

    else
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_45;
      }

      v20 = OUTLINED_FUNCTION_94_23();
    }

    v21 = v20;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_45:
      __break(1u);
      return;
    }

    v22 = sub_1E4205A44();
    if (v22 != 2 && (v22 & 1) != 0)
    {
      break;
    }

    ++v3;
  }

  v25 = sub_1E4205964();

  v23 = sub_1E42054D4();
  v24 = v26;

LABEL_13:
  v27 = *(v5 + 16);
  v28 = &type metadata for ViewModelKeys.Sports;
  v29 = (v5 + 32);
  v30 = MEMORY[0x1E69E7CA0];
  if (!v27)
  {
LABEL_29:

    v31 = 0;
    goto LABEL_30;
  }

  while (1)
  {
    v31 = *v29;
    v68 = v28;
    v69 = &off_1F5D7BC68;
    LOBYTE(v67[0]) = 7;

    v32 = OUTLINED_FUNCTION_97_2();
    sub_1E3F9F164(v32, v31, v30 + 8);
    if (!*(&v71 + 1))
    {
      __swift_destroy_boxed_opaque_existential_1(v67);
      sub_1E325F6F0(&v70, &unk_1ECF296E0, &unk_1E4298030);
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(v67);
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_28;
    }

    v33 = v28;
    v34 = v65;
    v35 = v66;
    __swift_destroy_boxed_opaque_existential_1(v67);
    if (!v24)
    {

      v28 = v33;
      goto LABEL_28;
    }

    v36 = v34 == v23 && v24 == v35;
    if (v36)
    {
      break;
    }

    v37 = sub_1E42079A4();

    v28 = v33;
    if (v37)
    {

      goto LABEL_30;
    }

LABEL_28:

    ++v29;
    if (!--v27)
    {
      goto LABEL_29;
    }
  }

  v28 = v33;
LABEL_30:
  v38 = v59;
  sub_1E42051C4();
  v39 = v63;
  sub_1E4205154();
  (*(v60 + 8))(v38, v61);
  v40 = v64;
  OUTLINED_FUNCTION_52(v39, 1, v64);
  if (v36)
  {

    v41 = &qword_1ECF3F1D8;
    v42 = &qword_1E42E8CC8;
    v43 = v39;
LABEL_40:
    sub_1E325F6F0(v43, v41, v42);
    goto LABEL_41;
  }

  v45 = v57;
  v44 = v58;
  v46 = OUTLINED_FUNCTION_57();
  v47(v46);
  if (!v31)
  {
    v50 = OUTLINED_FUNCTION_46_62();
    v51(v50);
    v70 = 0u;
    v71 = 0u;
LABEL_39:
    v41 = &unk_1ECF296E0;
    v42 = &unk_1E4298030;
    v43 = &v70;
    goto LABEL_40;
  }

  v68 = v28;
  v69 = &off_1F5D7BC68;
  LOBYTE(v67[0]) = 13;
  v48 = OUTLINED_FUNCTION_97_2();
  sub_1E3F9F164(v48, v31, v30 + 8);

  __swift_destroy_boxed_opaque_existential_1(v67);
  if (!*(&v71 + 1))
  {
    v52 = OUTLINED_FUNCTION_46_62();
    v53(v52);
    goto LABEL_39;
  }

  if (swift_dynamicCast())
  {
    MEMORY[0x1E69109E0](8250, 0xE200000000000000);
    v49 = sub_1E4205114();
    MEMORY[0x1E69109E0](v49);

    (*(v44 + 8))(v45, v40);
  }

  else
  {
    v54 = OUTLINED_FUNCTION_46_62();
    v55(v54);
  }

LABEL_41:
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4075498()
{
  OUTLINED_FUNCTION_31_1();
  v0 = sub_1E41FDEC4();
  OUTLINED_FUNCTION_0_10();
  v49 = v1;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1D8, &qword_1E42E8CC8);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - v8;
  v10 = sub_1E42051B4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  v17 = sub_1E4205144();
  OUTLINED_FUNCTION_0_10();
  v19 = v18;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_5();
  v23 = v22 - v21;
  sub_1E42051C4();
  sub_1E4205154();
  (*(v12 + 8))(v16, v10);
  OUTLINED_FUNCTION_52(v9, 1, v17);
  if (v24)
  {
    sub_1E325F6F0(v9, &qword_1ECF3F1D8, &qword_1E42E8CC8);
LABEL_7:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v25 = (*(v19 + 32))(v23, v9, v17);
  v26 = MEMORY[0x1E690FA80](v25);
  if (v27 & 1) != 0 || (v28 = v26, v29 = MEMORY[0x1E690FA90](), (v30) || (v33 = v29) == 0)
  {
    v31 = OUTLINED_FUNCTION_44_63();
    v32(v31);
    goto LABEL_7;
  }

  v34 = [objc_opt_self() sharedInstance];
  if (v34)
  {
    v35 = v34;
    v48 = v33;
    v36 = sub_1E3741090(0xD000000000000022, 0x80000001E428F3D0, v34);
    v38 = v37;

    if (v38)
    {
      v54 = v36;
      v55 = v38;
      v52 = 0x4040737469684040;
      v53 = 0xE800000000000000;
      v50 = v28;
      v50 = sub_1E4207944();
      v51 = v39;
      sub_1E32822E0(v50, v39, v40);
      OUTLINED_FUNCTION_2_178();
      sub_1E42071F4();
      OUTLINED_FUNCTION_34_75();
      v42 = v41;

      v54 = &v54;
      v55 = v42;
      v52 = 0x7374614274614040;
      v53 = 0xEA00000000004040;
      v50 = v48;
      v50 = sub_1E4207944();
      v51 = v43;
      OUTLINED_FUNCTION_2_178();
      sub_1E42071F4();
      OUTLINED_FUNCTION_34_75();
      v45 = v44;

      v54 = &v54;
      v55 = v45;
      sub_1E41FDE64();
      sub_1E42071E4();
      (*(v49 + 8))(v5, v0);

      v46 = OUTLINED_FUNCTION_44_63();
      v47(v46);
      goto LABEL_7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E40758F8(uint64_t a1, uint64_t a2)
{
  sub_1E379D7E4(a2, v16, &qword_1ECF33020, &qword_1E42BA400);
  v3 = v17;
  if (v17)
  {
    v4 = v18;
    __swift_project_boxed_opaque_existential_1(v16, v17);
    v5 = (v4[1])(0, 0xE000000000000000, v3, v4);
    __swift_destroy_boxed_opaque_existential_1(v16);
    if (v5)
    {
      return sub_1E4203644();
    }
  }

  else
  {
    sub_1E325F6F0(v16, &qword_1ECF33020, &qword_1E42BA400);
  }

  v17 = &type metadata for ViewModelKeys.Sports;
  v18 = &off_1F5D7BC68;
  LOBYTE(v16[0]) = 8;
  sub_1E3F9F164(v16, a1, MEMORY[0x1E69E7CA0] + 8);
  if (v15)
  {
    if (swift_dynamicCast())
    {
      v7 = v12;
      v6 = v13;
      __swift_destroy_boxed_opaque_existential_1(v16);
      goto LABEL_11;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v16);
    sub_1E325F6F0(v14, &unk_1ECF296E0, &unk_1E4298030);
  }

  v7 = 0;
  v6 = 0xE000000000000000;
LABEL_11:
  sub_1E3755B54();
  sub_1E39F9114(v7, v6);
  v9 = v8;

  if (!v9)
  {
    v10 = [objc_opt_self() systemGray3Color];
  }

  return sub_1E4203644();
}

uint64_t sub_1E4075AB0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1E42079A4() & 1) == 0 || a1[2] != *(a2 + 16))
  {
    goto LABEL_60;
  }

  v5 = *(a1 + 32);
  v6 = *(a2 + 32);
  v7 = sub_1E4203674();
  v8 = 0;
  if ((v7 & 1) != 0 && v5 == v6)
  {
    v9 = a1[5] == *(a2 + 40) && a1[6] == *(a2 + 48);
    if (!v9 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_60;
    }

    v10 = a1[8];
    v11 = *(a2 + 64);
    if (v10)
    {
      if (!v11)
      {
        goto LABEL_60;
      }

      v12 = a1[7] == *(a2 + 56) && v10 == v11;
      if (!v12 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v11)
    {
      goto LABEL_60;
    }

    v13 = a1[10];
    v14 = *(a2 + 80);
    if (v13)
    {
      if (!v14)
      {
        goto LABEL_60;
      }

      v15 = a1[9] == *(a2 + 72) && v13 == v14;
      if (!v15 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v14)
    {
      goto LABEL_60;
    }

    v16 = a1[11] == *(a2 + 88) && a1[12] == *(a2 + 96);
    if (!v16 && (sub_1E42079A4() & 1) == 0)
    {
      goto LABEL_60;
    }

    v17 = type metadata accessor for SportsPlayByPlayItemViewData(0);
    if ((sub_1E41FE184() & 1) == 0)
    {
      goto LABEL_60;
    }

    OUTLINED_FUNCTION_78_22();
    if (v18)
    {
      if (!v19)
      {
        goto LABEL_60;
      }

      v22 = *v20 == *v21 && v18 == v19;
      if (!v22 && (sub_1E42079A4() & 1) == 0)
      {
        goto LABEL_60;
      }
    }

    else if (v19)
    {
      goto LABEL_60;
    }

    if (*(a1 + v17[13]) == *(a2 + v17[13]))
    {
      OUTLINED_FUNCTION_78_22();
      if (v23)
      {
        if (!v24)
        {
          goto LABEL_60;
        }

        v27 = *v25 == *v26 && v23 == v24;
        if (!v27 && (sub_1E42079A4() & 1) == 0)
        {
          goto LABEL_60;
        }

LABEL_57:
        if (OUTLINED_FUNCTION_51_51(v17[15]) && OUTLINED_FUNCTION_51_51(v17[16]) && *(a1 + v17[17]) == *(a2 + v17[17]))
        {
          OUTLINED_FUNCTION_9_183();
          v8 = sub_1E4072DAC(a1 + v29, a2 + v29, v30, v31, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3DA0]);
          return v8 & 1;
        }

        goto LABEL_60;
      }

      if (!v24)
      {
        goto LABEL_57;
      }
    }

LABEL_60:
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1E4075D08(uint64_t a1)
{
  v2 = v1;
  sub_1E4206014();
  MEMORY[0x1E69124B0](*(v1 + 16));
  v3 = *(v1 + 32);
  sub_1E42036B4();
  MEMORY[0x1E69124B0](v3);
  sub_1E4206014();
  if (*(v2 + 64))
  {
    OUTLINED_FUNCTION_92_15();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  if (*(v2 + 80))
  {
    OUTLINED_FUNCTION_92_15();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  sub_1E4206014();
  v4 = type metadata accessor for SportsPlayByPlayItemViewData(0);
  sub_1E41FE1B4();
  sub_1E4078194(&qword_1ECF3F178, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E4205DB4();
  if (*(v2 + v4[12] + 8))
  {
    OUTLINED_FUNCTION_92_15();
    OUTLINED_FUNCTION_24_110();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  MEMORY[0x1E69124B0](*(v2 + v4[13]));
  if (*(v2 + v4[14] + 8))
  {
    OUTLINED_FUNCTION_92_15();
    OUTLINED_FUNCTION_24_110();
    sub_1E4206014();
  }

  else
  {
    OUTLINED_FUNCTION_93_17();
  }

  OUTLINED_FUNCTION_55_50(v4[15]);
  sub_1E4077B44(v5, v6, v7);
  OUTLINED_FUNCTION_24_110();
  sub_1E4205DB4();
  OUTLINED_FUNCTION_55_50(v4[16]);
  OUTLINED_FUNCTION_24_110();
  sub_1E4205DB4();
  sub_1E4207B64();
  sub_1E4205BF4();
  sub_1E4078194(&qword_1ECF3F188, MEMORY[0x1E69D3D90], MEMORY[0x1E69D3D98]);
  return sub_1E4205DB4();
}

uint64_t sub_1E4075F40()
{
  OUTLINED_FUNCTION_4_73();
  sub_1E4075D08(v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E4075F80(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4075D08(v2);
  return sub_1E4207BA4();
}

uint64_t sub_1E407600C(uint64_t a1, char a2)
{
  OUTLINED_FUNCTION_4_73();
  MEMORY[0x1E69124B0](a1);
  sub_1E4207B64();
  return sub_1E4207BA4();
}

uint64_t sub_1E4076098(uint64_t a1)
{
  v2 = *v1;
  sub_1E4207B44();
  MEMORY[0x1E69124B0](v2);
  sub_1E4207B64();
  return sub_1E4207BA4();
}

uint64_t sub_1E40760F4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (v2 == 2)
  {
    if (v3 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v3 == 2)
    {
      goto LABEL_17;
    }

    v4 = 0;
    if (*a1 != *a2 || ((v3 ^ v2) & 1) != 0)
    {
      return v4 & 1;
    }
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 == 2)
  {
    if (v6 != 2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v6 == 2)
    {
      goto LABEL_17;
    }

    v4 = 0;
    if (*(a1 + 16) != *(a2 + 16) || ((v6 ^ v5) & 1) != 0)
    {
      return v4 & 1;
    }
  }

  v7 = *(a1 + 40);
  v8 = *(a2 + 40);
  if (v7 == 2)
  {
    if (v8 == 2)
    {
LABEL_21:
      v4 = *(a1 + 41) ^ *(a2 + 41) ^ 1;
      return v4 & 1;
    }

LABEL_17:
    v4 = 0;
    return v4 & 1;
  }

  if (v8 == 2)
  {
    goto LABEL_17;
  }

  v4 = 0;
  if (*(a1 + 32) == *(a2 + 32) && ((v8 ^ v7) & 1) == 0)
  {
    goto LABEL_21;
  }

  return v4 & 1;
}

uint64_t sub_1E40761D4()
{
  if (*(v0 + 8) != 2)
  {
    v1 = *v0;
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v1);
  }

  sub_1E4207B64();
  if (*(v0 + 24) != 2)
  {
    v2 = v0[2];
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v2);
  }

  sub_1E4207B64();
  if (*(v0 + 40) != 2)
  {
    v3 = v0[4];
    sub_1E4207B64();
    MEMORY[0x1E69124B0](v3);
  }

  sub_1E4207B64();
  return sub_1E4207B64();
}

uint64_t sub_1E407629C()
{
  OUTLINED_FUNCTION_4_73();
  sub_1E40761D4();
  return sub_1E4207BA4();
}

uint64_t sub_1E40762E0(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E40761D4();
  return sub_1E4207BA4();
}

void sub_1E407631C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v40 = sub_1E42059B4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v39 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  if (!*(v1 + 16))
  {
    v47 = 0u;
    v48 = 0u;
    goto LABEL_10;
  }

  v9 = *(v1 + 32);
  v45 = &type metadata for ViewModelKeys.Sports;
  v46 = &off_1F5D7BC68;
  LOBYTE(v43) = 7;

  sub_1E3F9F164(&v43, v9, MEMORY[0x1E69E7CA0] + 8);

  __swift_destroy_boxed_opaque_existential_1(&v43);
  if (!*(&v48 + 1))
  {
LABEL_10:
    sub_1E325F6F0(&v47, &unk_1ECF296E0, &unk_1E4298030);
    v11 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v10 = swift_dynamicCast();
  if (v10)
  {
    v11 = v43;
  }

  else
  {
    v11 = 0;
  }

  if (v10)
  {
    v12 = v44;
  }

  else
  {
    v12 = 0;
  }

LABEL_11:
  sub_1E42051E4();

  v43 = sub_1E3EA9868(v13);
  sub_1E4076D24(&v43, v11, v12);

  v14 = v43;
  v15 = sub_1E32AE9B0(v43);
  if (!v15)
  {
    v37 = 0;
    v41 = 0xE000000000000000;
LABEL_26:

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v16 = v15;
  if (v15 >= 1)
  {
    v37 = 0;
    v38 = v8;
    v17 = 0;
    v18 = (v3 + 8);
    v41 = 0xE000000000000000;
    v42 = v14 & 0xC000000000000001;
    v19 = v40;
    do
    {
      if (v42)
      {
        v20 = MEMORY[0x1E6911E60](v17, v14);
      }

      else
      {
        v20 = *(v14 + 8 * v17 + 32);
      }

      v21 = v20;
      v22 = sub_1E42059C4();
      v23 = MEMORY[0x1E69102F0](v22);
      v25 = v24;
      v26 = *v18;
      (*v18)(v8, v19);
      if (v25)
      {
      }

      else
      {
        v27 = v16;
        v28 = v14;
        v29 = v39;
        sub_1E42059C4();
        v30 = sub_1E42059A4();
        v31 = v19;
        v32 = v30;
        v34 = v33;
        v26(v29, v31);
        if (v34)
        {
        }

        else
        {

          *&v47 = v23;
          v43 = sub_1E4207944();
          v44 = v35;
          MEMORY[0x1E69109E0](45, 0xE100000000000000);
          *&v47 = v32;
          OUTLINED_FUNCTION_27_0();
          v36 = sub_1E4207944();
          MEMORY[0x1E69109E0](v36);

          v37 = v43;
          v41 = v44;
        }

        v19 = v40;
        v14 = v28;
        v16 = v27;
        v8 = v38;
      }

      ++v17;
    }

    while (v16 != v17);
    goto LABEL_26;
  }

  __break(1u);

  __break(1u);
}

void *sub_1E407668C(uint64_t a1)
{
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC8];
  v50 = *(a1 + 16);
  while (1)
  {
    v4 = v2;
    if (v50 == v2)
    {

      return v3;
    }

    if (v2 >= *(a1 + 16))
    {
      break;
    }

    v54 = &type metadata for ViewModelKeys.Sports;
    v55 = &off_1F5D7BC68;
    LOBYTE(v53[0]) = 7;

    OUTLINED_FUNCTION_86_20(v5, v6, v7, v8, v9, v10, v11, v12, v46, v48);
    if (!v57)
    {

      __swift_destroy_boxed_opaque_existential_1(v53);
      sub_1E325F6F0(v56, &unk_1ECF296E0, &unk_1E4298030);
      return v3;
    }

    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v53);
      return v3;
    }

    v13 = __swift_destroy_boxed_opaque_existential_1(v53);
    v54 = &type metadata for ViewModelKeys.Sports;
    v55 = &off_1F5D7BC68;
    LOBYTE(v53[0]) = 8;
    OUTLINED_FUNCTION_86_20(v13, v14, v15, v16, v17, v18, v19, v20, v47, v49);

    if (v57)
    {
      swift_dynamicCast();
      __swift_destroy_boxed_opaque_existential_1(v53);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v53);
      sub_1E325F6F0(v56, &unk_1ECF296E0, &unk_1E4298030);
    }

    sub_1E3755B54();
    v21 = OUTLINED_FUNCTION_57();
    sub_1E39F9114(v21, v22);
    v24 = v23;

    if (v24)
    {
      swift_isUniquelyReferenced_nonNull_native();
      v53[0] = v3;
      v30 = OUTLINED_FUNCTION_277();
      v32 = sub_1E327D33C(v30, v31);
      if (__OFADD__(v3[2], (v33 & 1) == 0))
      {
        goto LABEL_26;
      }

      v34 = v32;
      HIDWORD(v48) = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F190, &qword_1E42E88B8);
      if (sub_1E4207644())
      {
        v35 = OUTLINED_FUNCTION_277();
        v37 = sub_1E327D33C(v35, v36);
        if ((BYTE4(v48) & 1) != (v38 & 1))
        {
          goto LABEL_28;
        }

        v34 = v37;
        if ((v48 & 0x100000000) != 0)
        {
LABEL_19:

          v3 = v53[0];
          v43 = *(v53[0] + 56);
          v44 = *(v43 + 8 * v34);
          *(v43 + 8 * v34) = v24;

          goto LABEL_20;
        }
      }

      else if ((v48 & 0x100000000) != 0)
      {
        goto LABEL_19;
      }

      v3 = v53[0];
      *(v53[0] + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v39 = (v3[6] + 16 * v34);
      *v39 = v51;
      v39[1] = v52;
      *(v3[7] + 8 * v34) = v24;
      v40 = v3[2];
      v41 = __OFADD__(v40, 1);
      v42 = v40 + 1;
      if (v41)
      {
        goto LABEL_27;
      }

      v3[2] = v42;
LABEL_20:
      v2 = v4 + 1;
    }

    else
    {
      v25 = OUTLINED_FUNCTION_277();
      v27 = sub_1E327D33C(v25, v26);
      v29 = v28;

      v2 = v4 + 1;
      if (v29)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v53[0] = v3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F190, &qword_1E42E88B8);
        sub_1E4207644();
        v3 = v53[0];

        sub_1E4207664();
        goto LABEL_20;
      }
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

void *sub_1E4076A68(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
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

  v8 = *(a4 + 16);
  v9 = sub_1E4076B54(v8, v7);
  v10 = *(sub_1E42059F4() - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E4076C50(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E4076B54(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1D0, &unk_1E42E8CB8);
  v4 = *(sub_1E42059F4() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E4076C50(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = sub_1E42059F4(), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    sub_1E42059F4();

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E4076D24(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_bridgeObjectRetain_n();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1E34AF5E0(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;

  sub_1E4076DD8(v10, a2, a3);
  sub_1E4207554();
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E4076DD8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[1];
  swift_bridgeObjectRetain_n();
  result = sub_1E4207914();
  if (result < v7)
  {
    v9 = result;
    v10 = sub_1E3EA8B74(v7 / 2);
    v12[0] = v11;
    v12[1] = (v7 / 2);

    result = sub_1E4076F10(v12, &v13, a1, v9, a2, a3);
    if (v3)
    {
      if (v7 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v7 < -1)
    {
LABEL_12:
      __break(1u);
      return result;
    }

    *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;
    swift_bridgeObjectRelease_n();
  }

LABEL_5:
  if (v7 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v7)
  {
    sub_1E3F9A910(0, v7, 1, a1, a2, a3);
  }

  return swift_bridgeObjectRelease_n();
}

uint64_t sub_1E4076F10(void **a1, int a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v131 = a1;
  v142 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x1E69E7CC0];
LABEL_118:
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_161;
    }

    OUTLINED_FUNCTION_44_2();
    swift_bridgeObjectRetain_n();
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_120:
      v113 = (v9 + 16);
      v114 = *(v9 + 2);
      for (i = v9; ; v9 = i)
      {
        if (v114 < 2)
        {

          return swift_bridgeObjectRelease_n();
        }

        if (!*v142)
        {
          goto LABEL_158;
        }

        v115 = &v9[16 * v114];
        v116 = *v115;
        v9 = v113;
        v117 = &v113[2 * v114];
        v118 = v117[1];
        v119 = *v142 + 8 * *v115;

        OUTLINED_FUNCTION_39_66(v120, v121, v122, v123, v124, v125, v126, v127, v129, v130, v131, v132, v133, i, v136, v137, v114, v142, v143);
        v143 = v119;
        if (v119)
        {
          break;
        }

        if (v118 < v116)
        {
          goto LABEL_146;
        }

        if (v114 - 2 >= *v113)
        {
          goto LABEL_147;
        }

        *v115 = v116;
        *(v115 + 1) = v118;
        if (*v113 < v141)
        {
          goto LABEL_148;
        }

        v114 = *v113 - 1;
        memmove(v117, v117 + 2, 16 * (*v113 - v141));
        *v113 = v114;
      }

      swift_bridgeObjectRelease_n();
    }

LABEL_155:
    v9 = sub_1E37FFF5C(v9);
    goto LABEL_120;
  }

  v130 = a4;
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRetain_n();
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v144 = a6;
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v134 = v9;
      v12 = *v142;
      v13 = a6;
      v14 = v8 + 1;
      v132 = v8;
      v15 = *(*v142 + 8 * v8);
      v9 = *(*v142 + 8 * v11);
      v16 = v15;
      v17 = sub_1E4205964();
      v18 = sub_1E42054D4();
      v20 = v19;

      if (v13)
      {
        if (v18 == a5 && v20 == v13)
        {
          v138 = 1;
        }

        else
        {
          v138 = sub_1E42079A4();
        }
      }

      else
      {
        v138 = 0;
      }

      v11 = v14;

      v22 = (v12 + 8 * v132 + 16);
      v136 = 8 * v132;
      v137 = v7;
      for (j = 8 * v132 + 8; ; j += 8)
      {
        v24 = v11++;
        if (v11 >= v7)
        {
          break;
        }

        v25 = *(v22 - 1);
        v26 = *v22;
        v9 = v25;
        v27 = sub_1E4205964();
        v28 = sub_1E42054D4();
        v30 = v29;

        if (v144)
        {
          if (v28 == a5 && v30 == v144)
          {

            v7 = v137;
            if ((v138 & 1) == 0)
            {
              v11 = v24 + 1;
              goto LABEL_36;
            }
          }

          else
          {
            v32 = sub_1E42079A4() & 1;

            v7 = v137;
            if ((v138 & 1) != v32)
            {
              break;
            }
          }
        }

        else
        {

          v7 = v137;
          if (v138)
          {
            goto LABEL_26;
          }
        }

        ++v22;
      }

      if ((v138 & 1) == 0)
      {
LABEL_36:
        v9 = v134;
        a6 = v144;
        goto LABEL_37;
      }

LABEL_26:
      v11 = v24 + 1;
      v33 = v132;
      if (v24 + 1 < v132)
      {
        goto LABEL_152;
      }

      if (v132 >= v11)
      {
        v9 = v134;
        a6 = v144;
        v10 = v132;
        goto LABEL_38;
      }

      v34 = v24;
      v9 = v134;
      v35 = 8 * v132;
      a6 = v144;
      do
      {
        if (v33 != v34)
        {
          v36 = *v142;
          if (!*v142)
          {
            goto LABEL_159;
          }

          v37 = *(v36 + v35);
          *(v36 + v35) = *(v36 + j);
          *(v36 + j) = v37;
        }

        ++v33;
        j -= 8;
        v35 += 8;
      }

      while (v33 < v34--);
LABEL_37:
      v10 = v132;
    }

LABEL_38:
    v39 = v142[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_151;
      }

      if (v11 - v10 < v130)
      {
        break;
      }
    }

LABEL_64:
    if (v11 < v10)
    {
      goto LABEL_150;
    }

    v140 = v11;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v110 = OUTLINED_FUNCTION_27();
      v9 = sub_1E37FFF70(v110, v111, v112, v9);
    }

    v59 = *(v9 + 2);
    v58 = *(v9 + 3);
    v60 = v59 + 1;
    if (v59 >= v58 >> 1)
    {
      v9 = sub_1E37FFF70((v58 > 1), v59 + 1, 1, v9);
    }

    *(v9 + 2) = v60;
    v61 = v9 + 32;
    v62 = &v9[16 * v59 + 32];
    *v62 = v10;
    *(v62 + 1) = v140;
    v137 = *v131;
    if (!*v131)
    {
      goto LABEL_160;
    }

    if (v59)
    {
      v136 = (v9 + 32);
      while (1)
      {
        v63 = v60 - 1;
        v64 = &v61[16 * v60 - 16];
        v65 = &v9[16 * v60];
        if (v60 >= 4)
        {
          break;
        }

        if (v60 == 3)
        {
          v66 = *(v9 + 4);
          v67 = *(v9 + 5);
          v76 = __OFSUB__(v67, v66);
          v68 = v67 - v66;
          v69 = v76;
LABEL_85:
          if (v69)
          {
            goto LABEL_137;
          }

          v81 = *v65;
          v80 = *(v65 + 1);
          v82 = __OFSUB__(v80, v81);
          v83 = v80 - v81;
          v84 = v82;
          if (v82)
          {
            goto LABEL_140;
          }

          v85 = *(v64 + 1);
          v86 = v85 - *v64;
          if (__OFSUB__(v85, *v64))
          {
            goto LABEL_143;
          }

          if (__OFADD__(v83, v86))
          {
            goto LABEL_145;
          }

          if (v83 + v86 >= v68)
          {
            if (v68 < v86)
            {
              v63 = v60 - 2;
            }

            goto LABEL_107;
          }

          goto LABEL_100;
        }

        if (v60 < 2)
        {
          goto LABEL_139;
        }

        v88 = *v65;
        v87 = *(v65 + 1);
        v76 = __OFSUB__(v87, v88);
        v83 = v87 - v88;
        v84 = v76;
LABEL_100:
        if (v84)
        {
          goto LABEL_142;
        }

        v90 = *v64;
        v89 = *(v64 + 1);
        v76 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v76)
        {
          goto LABEL_144;
        }

        if (v91 < v83)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v63 - 1 >= v60)
        {
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
          goto LABEL_154;
        }

        if (!*v142)
        {
          goto LABEL_157;
        }

        v95 = &v61[16 * v63 - 16];
        v96 = *v95;
        v97 = v63;
        v98 = &v61[16 * v63];
        v99 = *(v98 + 1);
        v100 = *v142 + 8 * *v95;

        OUTLINED_FUNCTION_39_66(v101, v102, v103, v104, v105, v106, v107, v108, v129, v130, v131, v132, v133, v134, v136, v137, v140, v142, v143);
        v143 = v100;
        if (v100)
        {
          OUTLINED_FUNCTION_44_2();
          swift_bridgeObjectRelease_n();
        }

        if (v99 < v96)
        {
          goto LABEL_132;
        }

        v109 = *(v9 + 2);
        if (v97 > v109)
        {
          goto LABEL_133;
        }

        *v95 = v96;
        *(v95 + 1) = v99;
        if (v97 >= v109)
        {
          goto LABEL_134;
        }

        v60 = v109 - 1;
        memmove(v98, v98 + 16, 16 * (v109 - 1 - v97));
        *(v9 + 2) = v109 - 1;
        v61 = v136;
        a6 = v144;
        if (v109 <= 2)
        {
          goto LABEL_114;
        }
      }

      v70 = &v61[16 * v60];
      v71 = *(v70 - 8);
      v72 = *(v70 - 7);
      v76 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      if (v76)
      {
        goto LABEL_135;
      }

      v75 = *(v70 - 6);
      v74 = *(v70 - 5);
      v76 = __OFSUB__(v74, v75);
      v68 = v74 - v75;
      v69 = v76;
      if (v76)
      {
        goto LABEL_136;
      }

      v77 = *(v65 + 1);
      v78 = v77 - *v65;
      if (__OFSUB__(v77, *v65))
      {
        goto LABEL_138;
      }

      v76 = __OFADD__(v68, v78);
      v79 = v68 + v78;
      if (v76)
      {
        goto LABEL_141;
      }

      if (v79 >= v73)
      {
        v93 = *v64;
        v92 = *(v64 + 1);
        v76 = __OFSUB__(v92, v93);
        v94 = v92 - v93;
        if (v76)
        {
          goto LABEL_149;
        }

        if (v68 < v94)
        {
          v63 = v60 - 2;
        }

        goto LABEL_107;
      }

      goto LABEL_85;
    }

LABEL_114:
    v8 = v140;
    v7 = v142[1];
    if (v140 >= v7)
    {
      goto LABEL_118;
    }
  }

  if (__OFADD__(v10, v130))
  {
    goto LABEL_153;
  }

  if (v10 + v130 >= v39)
  {
    v40 = v142[1];
  }

  else
  {
    v40 = v10 + v130;
  }

  if (v40 < v10)
  {
LABEL_154:
    __break(1u);
    goto LABEL_155;
  }

  if (v11 == v40)
  {
    goto LABEL_64;
  }

  v133 = v40;
  v134 = v9;
  v41 = v11;
  v42 = *v142;
  v43 = *v142 + 8 * v41 - 8;
  v132 = v10;
  v44 = v10 - v41;
LABEL_48:
  v137 = v43;
  v139 = v41;
  v45 = *(v42 + 8 * v41);
  v136 = v44;
  v46 = v43;
  while (1)
  {
    v47 = *v46;
    v48 = v45;
    v49 = v47;
    v50 = sub_1E4205964();
    v51 = sub_1E42054D4();
    v53 = v52;

    if (!a6)
    {

LABEL_62:
      v41 = v139 + 1;
      v43 = (v137 + 1);
      v44 = v136 - 1;
      if (v139 + 1 == v133)
      {
        v11 = v133;
        v9 = v134;
        v10 = v132;
        goto LABEL_64;
      }

      goto LABEL_48;
    }

    if (v51 == a5 && v53 == a6)
    {
    }

    else
    {
      v55 = sub_1E42079A4();

      if ((v55 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    if (!v42)
    {
      break;
    }

    v56 = *v46;
    v45 = *(v46 + 8);
    *v46 = v45;
    *(v46 + 8) = v56;
    v46 -= 8;
    if (__CFADD__(v44++, 1))
    {
      goto LABEL_62;
    }
  }

  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_157:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_158:

  __break(1u);
LABEL_159:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_160:
  OUTLINED_FUNCTION_44_2();
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_161:
  OUTLINED_FUNCTION_44_2();
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}

uint64_t sub_1E4077728(void **__src, id *__dst, id *a3, void **a4, uint64_t a5, uint64_t a6)
{
  v7 = a4;
  v8 = a3;
  v9 = __dst;
  v10 = __src;
  v11 = __dst - __src;
  v12 = a3 - __dst;
  if (v11 < v12)
  {
    if (a4 != __src || &__src[v11] <= a4)
    {
      memmove(a4, __src, 8 * v11);
    }

    v14 = &v7[v11];
    while (1)
    {
      if (v7 >= v14 || v9 >= v8)
      {
        v28 = v10;
        goto LABEL_53;
      }

      v46 = v9;
      v16 = v7;
      v17 = *v7;
      v18 = *v9;
      v19 = v17;
      v20 = sub_1E4205964();
      v21 = sub_1E42054D4();
      v23 = v22;

      if (!a6)
      {
        break;
      }

      if (v21 == a5 && v23 == a6)
      {
      }

      else
      {
        v25 = sub_1E42079A4();

        if ((v25 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v26 = v46;
      v9 = v46 + 1;
      v7 = v16;
      if (v10 != v46)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v10;
    }

LABEL_20:
    v26 = v16;
    v7 = v16 + 1;
    v9 = v46;
    if (v10 == v16)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v10 = *v26;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v7[v12];
  v43 = v7;
  v44 = v10;
LABEL_32:
  v28 = v9--;
  for (--v8; v14 > v7 && v28 > v10; --v8)
  {
    v47 = v14;
    v31 = v14 - 1;
    v30 = *(v14 - 1);
    v32 = v9;
    v33 = *v9;
    v34 = v30;
    v35 = v33;
    sub_1E4205964();
    OUTLINED_FUNCTION_54_52();
    v36 = sub_1E42054D4();
    v38 = v37;

    if (a6)
    {
      if (v36 == a5 && v38 == a6)
      {

        v9 = v32;
LABEL_50:
        v7 = v43;
        v10 = v44;
        v14 = v47;
        if (v8 + 1 != v28)
        {
          *v8 = *v9;
        }

        goto LABEL_32;
      }

      OUTLINED_FUNCTION_31_90();
      v6 = sub_1E42079A4();

      v9 = v32;
      if (v6)
      {
        goto LABEL_50;
      }
    }

    else
    {

      v9 = v32;
    }

    v7 = v43;
    if (v47 != v8 + 1)
    {
      *v8 = *v31;
    }

    v14 = v31;
    v10 = v44;
  }

LABEL_53:
  v40 = v14 - v7;
  if (v28 != v7 || v28 >= &v7[v40])
  {
    memmove(v28, v7, 8 * v40);
  }

  return 1;
}

char *sub_1E4077A28(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E4077A48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E4077A48(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1C8, &qword_1E42E8CB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 16);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || &v13[v14] <= v12)
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

unint64_t sub_1E4077B44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F180;
  if (!qword_1ECF3F180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F180);
  }

  return result;
}

unint64_t sub_1E4077B9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F198;
  if (!qword_1ECF3F198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F198);
  }

  return result;
}

unint64_t sub_1E4077BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F1A0;
  if (!qword_1ECF3F1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1A0);
  }

  return result;
}

unint64_t sub_1E4077C4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F1A8;
  if (!qword_1ECF3F1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1A8);
  }

  return result;
}

unint64_t sub_1E4077CEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F1B8;
  if (!qword_1ECF3F1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1B8);
  }

  return result;
}

unint64_t sub_1E4077D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F1C0;
  if (!qword_1ECF3F1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F1C0);
  }

  return result;
}

uint64_t sub_1E4077DC0(uint64_t a1)
{
  sub_1E389B768();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    v4 = sub_1E41FE1B4();
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = sub_1E4205BF4();
      if (v6 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return v2;
}

_BYTE *sub_1E4077EF8(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SportsStatisticUpdate(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 9))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 8);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t storeEnumTagSinglePayload for SportsStatisticUpdate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1E4078084(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && *(a1 + 42))
    {
      return OUTLINED_FUNCTION_17_7(*a1 + 254);
    }

    v3 = *(a1 + 41);
    v4 = v3 >= 2;
    v5 = (v3 + 2147483646) & 0x7FFFFFFF;
    if (!v4)
    {
      return OUTLINED_FUNCTION_17_7(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_17_7(v5);
}

uint64_t sub_1E40780CC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 41) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1E407813C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E4078194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void OUTLINED_FUNCTION_58_38()
{
  *(v0 + 16) = v1;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = v4;
  *(v5 + 40) = v2 & 1;
}

uint64_t OUTLINED_FUNCTION_62_36()
{

  return sub_1E4205E84();
}

uint64_t OUTLINED_FUNCTION_82_23()
{

  return sub_1E379D7E4(v2, v3 + v4, v0, v1);
}

uint64_t OUTLINED_FUNCTION_83_22()
{

  return sub_1E4205B94();
}

uint64_t OUTLINED_FUNCTION_84_23()
{

  return sub_1E42059F4();
}

uint64_t OUTLINED_FUNCTION_86_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);

  return sub_1E3F9F164(va, v10, v11 + 8);
}

uint64_t OUTLINED_FUNCTION_88_19()
{

  return __swift_storeEnumTagSinglePayload(v0, 1, 1, v1);
}

uint64_t OUTLINED_FUNCTION_89_19()
{

  return sub_1E379D7E4(v2, v3, v0, v1);
}

void OUTLINED_FUNCTION_91_20()
{

  JUMPOUT(0x1E69109E0);
}

id OUTLINED_FUNCTION_94_23()
{
  v3 = *(v0 + 8 * v1 + 32);

  return v3;
}

uint64_t sub_1E40783C0()
{
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E4078400();

  return v1;
}

double sub_1E4078400()
{
  sub_1E4078504();
  sub_1E407872C();
  v1 = sub_1E40789C0();
  v2 = (*(*v0 + 1712))(v1);
  sub_1E3C37CBC(v2, 23);

  OUTLINED_FUNCTION_36();
  v4 = (*(v3 + 1736))();
  sub_1E3C37CBC(v4, 17);

  OUTLINED_FUNCTION_36();
  v6 = (*(v5 + 1760))();
  sub_1E3C37CBC(v6, 39);

  return result;
}

double sub_1E4078504()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 214;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 1984))(5);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 2056))(1, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1696))(21);

  (v1)(v7);
  v8 = objc_opt_self();
  v9 = *sub_1E3E5FDEC();
  v10 = [v8 vui:v9 dynamicColorWithLightColor:*sub_1E3E60364() darkColor:?];

  OUTLINED_FUNCTION_36();
  (*(v11 + 680))(v10);

  (v1)(v12);
  OUTLINED_FUNCTION_2_1();
  (*(v13 + 1792))(10);

  return result;
}

double sub_1E407872C()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 217;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_2_1();
  (*(v2 + 2056))(1, 0);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 1984))(1);

  (v1)(v5);
  OUTLINED_FUNCTION_2_1();
  (*(v6 + 1696))(21);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1792))(10);

  (v1)(v9);
  v10 = objc_opt_self();
  v11 = *sub_1E3E5FDEC();
  v12 = [v10 vui:v11 dynamicColorWithLightColor:*sub_1E3E60364() darkColor:?];

  OUTLINED_FUNCTION_36();
  (*(v13 + 680))(v12);

  v15 = (v1)(v14);
  v20[0] = sub_1E3952C28(12.0);
  v20[1] = v16;
  v20[2] = v17;
  v20[3] = v18;
  v21 = 0;
  (*(*v15 + 184))(v20);

  return result;
}

double sub_1E40789C0()
{
  OUTLINED_FUNCTION_2_138();
  v0 += 220;
  v1 = *v0;
  (*v0)();
  OUTLINED_FUNCTION_30();
  (*(v2 + 1808))(2);

  (v1)(v3);
  OUTLINED_FUNCTION_2_1();
  (*(v4 + 440))(0x3FF0000000000000, 0);

  (v1)(v5);
  OUTLINED_FUNCTION_30();
  (*(v6 + 208))(0x403C000000000000, 0);

  (v1)(v7);
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 312))(0x403C000000000000, 0);

  return result;
}

__objc2_class **sub_1E4078B58()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout;
  v3 = *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  v4 = v3;
  if (v3 == 1)
  {
    v5 = *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel);
    if (v5)
    {
      v6 = *(*v5 + 392);

      v4 = v6(v7);

      if (!v4 || *v4 == _TtCC8VideosUI19VerticalStackLayout16FooterViewLayout)
      {
        goto LABEL_7;
      }
    }

    v4 = 0;
LABEL_7:
    v8 = *(v1 + v2);
    *(v1 + v2) = v4;

    sub_1E3781D80(v8);
  }

  sub_1E37C5408(v3);
  return v4;
}

uint64_t sub_1E4078C64(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout) = a1;
  return sub_1E3781D80(v2);
}

id sub_1E4078C7C(char a1, double a2, double a3)
{
  v4 = v3;
  v23.receiver = v3;
  v23.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v23, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  if (a2 != 0.0 || a3 != 0.0)
  {
    v9 = sub_1E4078B58();
    if (!v9 || (((*v9)[4].cache)(v24), v10 = *v24, v11 = *&v24[1], v12 = *&v24[2], v13 = *&v24[3], , (v25 & 1) != 0))
    {
      v10 = *MEMORY[0x1E69DDCE0];
      v11 = *(MEMORY[0x1E69DDCE0] + 8);
      v12 = *(MEMORY[0x1E69DDCE0] + 16);
      v13 = *(MEMORY[0x1E69DDCE0] + 24);
    }

    v14 = sub_1E3952BE0(v10, v11, v12, v13);
    v15 = MEMORY[0x1E69E7CC0];
    v22 = MEMORY[0x1E69E7CC0];
    v16 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
    result = OUTLINED_FUNCTION_5_0(&v4[OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements], v21);
    if (*&v4[v16])
    {
      type metadata accessor for VerticalStackView();

      sub_1E3B98DD4(v17, &v22, 0, a2 - v14, v11, v10);

      v15 = v22;
      if ((a1 & 1) == 0)
      {
LABEL_12:
        v18 = 0;
        v19 = *(v15 + 16);
        v20 = (v15 + 64);
        while (v19 != v18)
        {
          if (v18 >= *(v15 + 16))
          {
            __break(1u);
            return result;
          }

          ++v18;
          result = [*(v20 - 4) setFrame_];
          v20 += 5;
        }
      }
    }

    else if ((a1 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  return result;
}

void sub_1E4078EC8(char *a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel] = a2;

  v4 = OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_subviewElements;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!v5)
  {

    if (a1)
    {
      goto LABEL_20;
    }

    goto LABEL_30;
  }

  if (a1)
  {

    v7 = sub_1E4079328(v6, a1);

    if ((v7 & 1) == 0)
    {
      v5 = *&v2[v4];
      if (!v5)
      {
        goto LABEL_20;
      }

      goto LABEL_9;
    }

LABEL_30:
    [v2 vui_setNeedsLayout];
    return;
  }

LABEL_9:
  v8 = sub_1E32AE9B0(v5);

  for (i = 0; v8 != i; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](i, v5);
    }

    else
    {
      if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v10 = *(v5 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_33;
    }

    OUTLINED_FUNCTION_5_0(v10 + 16, v19);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      [Strong vui_removeFromSuperView];
    }
  }

LABEL_20:
  *&v2[v4] = a1;

  v13 = *&v2[v4];
  if (!v13)
  {
    goto LABEL_30;
  }

  v14 = sub_1E32AE9B0(v13);

  for (j = 0; ; ++j)
  {
    if (v14 == j)
    {

      goto LABEL_30;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x1E6911E60](j, v13);
    }

    else
    {
      if (j >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v16 = *(v13 + 8 * j + 32);
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_5_0(v16 + 16, v18);
    v17 = swift_unknownObjectWeakLoadStrong();
    MEMORY[0x1EEE9AC00](v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF35970, &unk_1E42C5BA0);
    sub_1E4148DE0(sub_1E3AFA53C);
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
}

id sub_1E4079198()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  *(v0 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel) = 0;
  OUTLINED_FUNCTION_0_330(&OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1);
}

id sub_1E4079224(void *a1)
{
  swift_getObjectType();
  *(v1 + OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView_viewModel) = 0;
  OUTLINED_FUNCTION_0_330(&OBJC_IVAR____TtCC8VideosUI17VerticalStackView10FooterView____lazy_storage___viewLayout);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

uint64_t sub_1E4079328(unint64_t a1, unint64_t a2)
{
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1E4207384())
  {
    if (a2 >> 62)
    {
      result = sub_1E4207384();
    }

    else
    {
      result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (i != result)
    {
      v14 = 0;
      return v14 & 1;
    }

    if (!i)
    {
      goto LABEL_31;
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
LABEL_31:
      v14 = 1;
      return v14 & 1;
    }

    if (i < 0)
    {
      break;
    }

    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF38980, &unk_1E42D1610);
    v11 = 4;
    while (1)
    {
      v12 = v11 - 4;
      v13 = v11 - 3;
      if (__OFADD__(v11 - 4, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a1);
      }

      else
      {
        if (v12 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }
      }

      if ((a2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v11 - 4, a2);
      }

      else
      {
        if (v12 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_35;
        }
      }

      sub_1E4079534();
      v14 = sub_1E4205E84();

      if (v14)
      {
        ++v11;
        if (v13 != i)
        {
          continue;
        }
      }

      return v14 & 1;
    }

    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_1E4079534()
{
  result = qword_1EE279300;
  if (!qword_1EE279300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ECF38980, &unk_1E42D1610);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279300);
  }

  return result;
}

void sub_1E4079598(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  v16[0] = MEMORY[0x1E69E7CC0];
  v5 = sub_1E32AE9B0(v3);

  v6 = 0;
  while (v5 != v6)
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1E6911E60](v6, v3);
      v7 = v8;
    }

    else
    {
      if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v7 = *(v3 + 8 * v6 + 32);
    }

    if (__OFADD__(v6, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    if (!(*(*v7 + 488))(v8))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_134_9();
    if (!v11 || (sub_1E3740AE8(234, v9, v10), (v12 & 1) == 0))
    {

      goto LABEL_13;
    }

    type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v16[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v4 = v16[0];
      ++v6;
    }

    else
    {
LABEL_13:

      ++v6;
    }
  }

  v13 = sub_1E32AE9B0(v4);
  for (i = 0; v13 != i; ++i)
  {
    if ((v4 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](i, v4);
    }

    else
    {
      if (i >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v15 = *(v4 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      goto LABEL_29;
    }

    v16[0] = v15;
    sub_1E407C05C(v16);
  }
}

uint64_t sub_1E40797E8(unint64_t a1, unint64_t a2, char a3)
{
  v3[8] = a2;
  if (a3)
  {
    OUTLINED_FUNCTION_5_0((v3 + 2), v155);
    v5 = sub_1E32AE9B0(v3[2]);
    OUTLINED_FUNCTION_27_11((v3 + 2));

    sub_1E379738C(v6);
    v7 = swift_endAccess();
  }

  else
  {
    OUTLINED_FUNCTION_27_11((v3 + 3));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F238, &qword_1E42E8DF0);
    OUTLINED_FUNCTION_38_75();
    swift_endAccess();
    OUTLINED_FUNCTION_27_11((v3 + 4));
    if (v3[4])
    {
      OUTLINED_FUNCTION_38_75();
    }

    swift_endAccess();
    OUTLINED_FUNCTION_27_11((v3 + 5));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F240, &qword_1E42E8DF8);
    sub_1E4205D14();
    swift_endAccess();
    OUTLINED_FUNCTION_27_11((v3 + 6));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F248, &qword_1E42E8E00);
    OUTLINED_FUNCTION_38_75();
    swift_endAccess();
    OUTLINED_FUNCTION_27_11((v3 + 7));
    if (v3[7])
    {
      OUTLINED_FUNCTION_38_75();
    }

    swift_endAccess();
    OUTLINED_FUNCTION_27_11((v3 + 10));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F250, &qword_1E42E8E08);
    sub_1E4205D14();
    swift_endAccess();
    OUTLINED_FUNCTION_3_0((v3 + 2), v155);
    v3[2] = a1;

    v5 = 0;
  }

  sub_1E4079598(v7, v8);
  v153 = a1;
  v9 = sub_1E407BA38(a1, 0x27u, v5);
  OUTLINED_FUNCTION_3_0((v3 + 6), v157);
  v10 = v3[6];

  OUTLINED_FUNCTION_2_252();
  v150 = 0;
  v146 = v3;
  v3[6] = sub_1E407BD2C(v11, v10, v12, sub_1E407D4BC);

  v147 = sub_1E407D8F0();
  v152 = sub_1E4205CB4();
  v13 = 0;
  OUTLINED_FUNCTION_10_105();
  v16 = v15 & v14;
  v18 = (v17 + 63) >> 6;
  v154 = v5;
LABEL_9:
  v19 = v13;
  if (!v16)
  {
    goto LABEL_11;
  }

  do
  {
    v13 = v19;
LABEL_14:
    OUTLINED_FUNCTION_24_111();
    v21 = *(v9[6] + ((v13 << 9) | (8 * v20)));
    if (__OFSUB__(v21, v5))
    {
      goto LABEL_137;
    }

    v16 &= v16 - 1;
    OUTLINED_FUNCTION_16_154(v21 - v5, v138, v139, v140, v143, v144, v146, v147, v150, v152, v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E3798394();
    sub_1E38D2054(v163, v159);
    if (v159[0])
    {
      v22 = sub_1E407AF48(v5, v159[0], 0x27u);
      if (!v22)
      {

        goto LABEL_18;
      }

      v23 = v22;
      v144 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
      HIDWORD(v140) = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v152;
      v139 = sub_1E3928950(v21);
      LODWORD(v143) = v24;
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v25, v26))
      {
        goto LABEL_144;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200, &qword_1E42E8DB8);
      v27 = sub_1E4207644();
      v152 = v163[0];
      if (v27)
      {
        v28 = sub_1E3928950(v21);
        if ((v143 & 1) != (v29 & 1))
        {
          goto LABEL_150;
        }

        v30 = v144;
        if ((v143 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v30 = v144;
        v28 = v139;
        if ((v143 & 1) == 0)
        {
LABEL_24:
          v31 = OUTLINED_FUNCTION_0_331(v28, v152 + 8 * (v28 >> 6));
          *(*(v32 + 48) + 8 * v31) = v21;
          OUTLINED_FUNCTION_29_99(v31);
          if (v35)
          {
            goto LABEL_147;
          }

          *(v34 + 16) = v33;
          goto LABEL_28;
        }
      }

      v36 = *(v152 + 56);
      v37 = *(v36 + 8 * v28);
      *(v36 + 8 * v28) = v30;

LABEL_28:

      v5 = v154;
      goto LABEL_9;
    }

LABEL_18:

    v19 = v13;
    v5 = v154;
  }

  while (v16);
  while (1)
  {
LABEL_11:
    v13 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
LABEL_131:
      __break(1u);
LABEL_132:
      __break(1u);
      goto LABEL_133;
    }

    if (v13 >= v18)
    {
      break;
    }

    v16 = v9[v13 + 8];
    ++v19;
    if (v16)
    {
      goto LABEL_14;
    }
  }

  OUTLINED_FUNCTION_3_0((v146 + 3), v156);
  v38 = v146[3];

  OUTLINED_FUNCTION_3_260();
  v146[3] = sub_1E407BD2C(v39, v38, v40, sub_1E407D304);

  v41 = sub_1E407BA38(v153, 0x28u, v5);
  if (v41[2])
  {
    OUTLINED_FUNCTION_3_0((v146 + 7), v159);
    if (v146[7])
    {
      v42 = v146[7];
    }

    else
    {
      type metadata accessor for ImageViewModel();
      v42 = sub_1E4205CB4();
    }

    OUTLINED_FUNCTION_2_252();
    v145 = 0;
    v146[7] = sub_1E407BD2C(v43, v42, v44, sub_1E407D4BC);
  }

  else
  {
    v145 = 0;
  }

  v151 = sub_1E4205CB4();
  v45 = 0;
  OUTLINED_FUNCTION_10_105();
  v48 = v47 & v46;
  v50 = (v49 + 63) >> 6;
  while (2)
  {
    v51 = v45;
    if (!v48)
    {
      goto LABEL_38;
    }

LABEL_37:
    v45 = v51;
LABEL_41:
    v52 = *(v41[6] + ((v45 << 9) | (8 * __clz(__rbit64(v48)))));
    if (__OFSUB__(v52, v5))
    {
      goto LABEL_138;
    }

    v48 &= v48 - 1;
    OUTLINED_FUNCTION_16_154(v52 - v5, v138, v139, v140, v143, v145, v146, v147, v151, v152, v153);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E3798394();
    sub_1E38D2054(v163, v158);
    if (v158[0])
    {
      v53 = sub_1E407AF48(v5, v158[0], 0x28u);
      if (!v53)
      {

        break;
      }

      v54 = v53;
      v143 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
      LODWORD(v139) = swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v151;
      v138 = sub_1E3928950(v52);
      HIDWORD(v140) = v55;
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v56, v57))
      {
        goto LABEL_145;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200, &qword_1E42E8DB8);
      v58 = sub_1E4207644();
      v151 = v163[0];
      if (v58)
      {
        sub_1E3928950(v52);
        OUTLINED_FUNCTION_10_170();
        if (!v61)
        {
          goto LABEL_150;
        }

        v62 = v143;
        if ((v60 & 1) == 0)
        {
LABEL_52:
          v63 = OUTLINED_FUNCTION_0_331(v59, v151 + 8 * (v59 >> 6));
          *(*(v64 + 48) + 8 * v63) = v52;
          OUTLINED_FUNCTION_29_99(v63);
          if (v35)
          {
            goto LABEL_148;
          }

          *(v66 + 16) = v65;
          goto LABEL_56;
        }
      }

      else
      {
        v62 = v143;
        v59 = v138;
        if ((v140 & 0x100000000) == 0)
        {
          goto LABEL_52;
        }
      }

      v67 = *(v151 + 56);
      v68 = *(v67 + 8 * v59);
      *(v67 + 8 * v59) = v62;

LABEL_56:

      v5 = v154;
      continue;
    }

    break;
  }

  v51 = v45;
  v5 = v154;
  if (v48)
  {
    goto LABEL_37;
  }

  while (1)
  {
LABEL_38:
    v45 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_132;
    }

    if (v45 >= v50)
    {
      break;
    }

    v48 = v41[v45 + 8];
    ++v51;
    if (v48)
    {
      goto LABEL_41;
    }
  }

  if (*(v151 + 16))
  {
    OUTLINED_FUNCTION_3_0((v146 + 4), v158);
    v69 = v153;
    if (v146[4])
    {
      v70 = v146[4];
    }

    else
    {
      v70 = sub_1E4205CB4();
    }

    OUTLINED_FUNCTION_3_260();
    v146[4] = sub_1E407BD2C(v71, v70, v72, sub_1E407D304);
  }

  else
  {
    v69 = v153;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858, &unk_1E42C9580);
  v73 = sub_1E4205CB4();
  v74 = sub_1E32AE9B0(v69);
  v75 = 0;
  v76 = v69 & 0xC000000000000001;
  v77 = v69 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v74 != v75)
    {
      if (v76)
      {
        MEMORY[0x1E6911E60](v75, v69);
      }

      else
      {
        if (v75 >= *(v77 + 16))
        {
          goto LABEL_135;
        }
      }

      v78 = v75 + 1;
      if (__OFADD__(v75, 1))
      {
        goto LABEL_134;
      }

      sub_1E407B1C8();
      if (!v79)
      {

        ++v75;
        continue;
      }

      if (__OFADD__(v154, v75))
      {
        goto LABEL_141;
      }

      v80 = v79;
      swift_isUniquelyReferenced_nonNull_native();
      v163[0] = v73;
      v148 = v154 + v75;
      sub_1E3928950(v154 + v75);
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v83, v84))
      {
        goto LABEL_142;
      }

      v85 = v81;
      v141 = v82;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F210, &qword_1E42E8DC8);
      v86 = sub_1E4207644();
      v87 = v163[0];
      if (v86)
      {
        v88 = v154 + v75;
        sub_1E3928950(v148);
        OUTLINED_FUNCTION_10_170();
        if (!v61)
        {
          goto LABEL_150;
        }

        v85 = v89;
        if ((v90 & 1) == 0)
        {
LABEL_77:
          v87[(v85 >> 6) + 8] |= 1 << v85;
          *(v87[6] + 8 * v85) = v88;
          *(v87[7] + 8 * v85) = v80;

          v91 = v87[2];
          v35 = __OFADD__(v91, 1);
          v92 = v91 + 1;
          if (v35)
          {
            goto LABEL_143;
          }

          v87[2] = v92;
          goto LABEL_81;
        }
      }

      else
      {
        v88 = v154 + v75;
        if ((v141 & 1) == 0)
        {
          goto LABEL_77;
        }
      }

      *(v87[7] + 8 * v85) = v80;

LABEL_81:
      v75 = v78;
      v73 = v87;
      v69 = v153;
      continue;
    }

    break;
  }

  if (v73[2])
  {
    OUTLINED_FUNCTION_3_0((v146 + 10), v163);
    v93 = v146[10];

    v146[10] = sub_1E407BDB4(v94, v93);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F0, &qword_1E42E8D30);
  v149 = sub_1E4205CB4();
  v95 = 0;
  OUTLINED_FUNCTION_10_105();
  v98 = v97 & v96;
  v100 = (v99 + 63) >> 6;
  while (1)
  {
    v101 = v95;
    if (!v98)
    {
      break;
    }

LABEL_90:
    OUTLINED_FUNCTION_24_111();
    v103 = (v95 << 9) | (8 * v102);
    v104 = *(v73[6] + v103);
    if (__OFSUB__(v104, v154))
    {
      goto LABEL_139;
    }

    v98 &= v98 - 1;
    v105 = *(v73[7] + v103);
    v162[1] = v153;
    v160 = (v104 - v154);
    v161 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    sub_1E3798394();
    sub_1E38D2054(&v160, v162);
    if (!v162[0])
    {

      continue;
    }

    v106 = sub_1E407B4AC(v105, v162[0]);

    if (!v106)
    {

      continue;
    }

    LODWORD(v139) = swift_isUniquelyReferenced_nonNull_native();
    v160 = v149;
    v138 = sub_1E3928950(v104);
    v142 = v107;
    OUTLINED_FUNCTION_11_53();
    if (__OFADD__(v108, v109))
    {
      goto LABEL_146;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F208, &qword_1E42E8DC0);
    v110 = sub_1E4207644();
    v149 = v160;
    if (v110)
    {
      sub_1E3928950(v104);
      OUTLINED_FUNCTION_10_170();
      if (!v61)
      {
        goto LABEL_150;
      }

      if (v112)
      {
LABEL_100:
        *(v149[7] + 8 * v111) = v106;

        continue;
      }
    }

    else
    {
      v111 = v138;
      if (v142)
      {
        goto LABEL_100;
      }
    }

    v113 = OUTLINED_FUNCTION_0_331(v111, &v149[v111 >> 6]);
    *(v149[6] + 8 * v113) = v104;
    *(v149[7] + 8 * v113) = v106;

    v114 = v149[2];
    v35 = __OFADD__(v114, 1);
    v115 = v114 + 1;
    if (v35)
    {
      goto LABEL_149;
    }

    v149[2] = v115;
  }

  while (1)
  {
    v95 = v101 + 1;
    if (__OFADD__(v101, 1))
    {
      break;
    }

    if (v95 >= v100)
    {

      v116 = v149;
      if (v149[2])
      {
        OUTLINED_FUNCTION_3_0((v146 + 5), &v160);
        v117 = v146[5];

        v146[5] = sub_1E407BE64(v118, v117);
      }

      v119 = v154;
      v121 = v151;
      v120 = v152;
      v122 = v146[9];
      [v122 setMaxConcurrentOperationCount_];
      v123 = sub_1E32AE9B0(v153);
      if (v123 < 0)
      {
        goto LABEL_140;
      }

      v124 = v123;
      if (!v123)
      {
LABEL_128:

        return sub_1E407A6EC();
      }

      v125 = 0;
      while (!__OFADD__(v119, v125))
      {
        if (*(v120 + 16))
        {
          v126 = sub_1E3928950(v119 + v125);
          if (v127)
          {
            [v122 addOperation_];
          }
        }

        if (*(v121 + 16))
        {
          v128 = sub_1E3928950(v119 + v125);
          if (v129)
          {
            [v122 addOperation_];
          }
        }

        if (v116[2])
        {
          v130 = sub_1E3928950(v119 + v125);
          if (v131)
          {
            v132 = *(v116[7] + 8 * v130);
            v133 = sub_1E32AE9B0(v132);

            for (i = 0; ; ++i)
            {
              if (v133 == i)
              {

                v119 = v154;
                v121 = v151;
                v120 = v152;
                v116 = v149;
                goto LABEL_127;
              }

              if ((v132 & 0xC000000000000001) != 0)
              {
                v135 = MEMORY[0x1E6911E60](i, v132);
              }

              else
              {
                if (i >= *((v132 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_130;
                }

                v135 = *(v132 + 8 * i + 32);
              }

              v136 = v135;
              if (__OFADD__(i, 1))
              {
                break;
              }

              [v122 addOperation_];
            }

            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }
        }

LABEL_127:
        if (++v125 == v124)
        {
          goto LABEL_128;
        }
      }

      goto LABEL_136;
    }

    v98 = v73[v95 + 8];
    ++v101;
    if (v98)
    {
      goto LABEL_90;
    }
  }

LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E407A6EC()
{
  v1 = v0;
  result = OUTLINED_FUNCTION_5_0((v0 + 2), v27);
  v3 = v0[2];
  if (v3 >> 62)
  {
    goto LABEL_29;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v26 = v4;
      while (1)
      {
        v6 = sub_1E407AEB0(v5, v1[8], v4);
        OUTLINED_FUNCTION_21_117((v1 + 3), v7, v8);
        v9 = v1[3];
        if (v9[2] && (v10 = sub_1E3928950(v5), (v11 & 1) != 0))
        {
          OUTLINED_FUNCTION_20_125(v10, v11);
          [v9 setQueuePriority_];
        }

        else
        {
          swift_endAccess();
        }

        OUTLINED_FUNCTION_21_117((v1 + 4), v12, v13);
        v14 = v1[4];
        if (v14 && v14[2] && (v15 = sub_1E3928950(v5), (v16 & 1) != 0))
        {
          OUTLINED_FUNCTION_20_125(v15, v16);
          [v14 setQueuePriority_];
        }

        else
        {
          swift_endAccess();
        }

        OUTLINED_FUNCTION_21_117((v1 + 5), v17, v18);
        v19 = v1[5];
        if (*(v19 + 16))
        {
          v20 = sub_1E3928950(v5);
          if (v21)
          {
            break;
          }
        }

        result = swift_endAccess();
LABEL_25:
        if (++v5 == v4)
        {
          return result;
        }
      }

      OUTLINED_FUNCTION_20_125(v20, v21);
      v22 = sub_1E32AE9B0(v19);

      for (i = 0; ; ++i)
      {
        if (v22 == i)
        {

          v4 = v26;
          goto LABEL_25;
        }

        if ((v19 & 0xC000000000000001) != 0)
        {
          v24 = MEMORY[0x1E6911E60](i, v19);
        }

        else
        {
          if (i >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v24 = *(v19 + 8 * i + 32);
        }

        v25 = v24;
        if (__OFADD__(i, 1))
        {
          break;
        }

        [v24 setQueuePriority_];
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      result = sub_1E4207384();
      if (result < 0)
      {
        __break(1u);
      }

      v4 = result;
    }

    while (result);
  }

  return result;
}

void sub_1E407A8EC(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v3 = v2;
    OUTLINED_FUNCTION_5_0(v2 + 16, v116);
    v10 = *(v2 + 16);
    if (v10 >> 62)
    {
      goto LABEL_46;
    }

    for (i = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10); i > a2; i = sub_1E4207384())
    {
      OUTLINED_FUNCTION_8_197(v3 + 16, v6, v7, v8, v9);
      v12 = *(v3 + 16);

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      *(v3 + 16) = v12;
      if (!isUniquelyReferenced_nonNull_bridgeObject || (v12 & 0x8000000000000000) != 0 || (v12 & 0x4000000000000000) != 0)
      {
        v12 = sub_1E37EFA58(v12);
        *(v3 + 16) = v12;
      }

      if (*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        __break(1u);
        return;
      }

      *((v12 & 0xFFFFFFFFFFFFFF8) + 8 * a2 + 0x20) = a1;
      *(v3 + 16) = v12;
      swift_endAccess();

      sub_1E4079598(v14, v15);
      v16 = *(v3 + 64);
      v17 = sub_1E32AE9B0(*(v3 + 16));
      v18 = sub_1E407AEB0(a2, v16, v17);
      v19 = *(*a1 + 488);
      v20 = v19();
      if (v20)
      {
        v22 = sub_1E373E010(39, v20, v21);

        if (v22)
        {
          type metadata accessor for ImageViewModel();
          v23 = swift_dynamicCastClass();
          if (v23)
          {
            v108 = v23;
            OUTLINED_FUNCTION_33_89();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
            v24 = sub_1E3798394();
            v32 = OUTLINED_FUNCTION_32_91(v24, v25, v26, v27, v28, v29, v30, v31, v105, v108, v111, v112, v115);
            sub_1E38D2054(v32, v33);

            if (!v111)
            {
              goto LABEL_42;
            }

            v34 = sub_1E407AF48(v109, v111, 0x27u);
            if (!v34)
            {
              goto LABEL_41;
            }

            v35 = v34;
            v36 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
            [v36 setQueuePriority_];
            [*(v3 + 72) addOperation_];
            OUTLINED_FUNCTION_8_197(v3 + 24, v37, v38, v39, v40);
            v106 = v35;
            v41 = v36;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v112 = *(v3 + 24);
            sub_1E407D03C(v41, a2, isUniquelyReferenced_nonNull_native);
            *(v3 + 24) = v112;
            swift_endAccess();
            OUTLINED_FUNCTION_8_197(v3 + 48, v43, v44, v45, v46);

            v47 = swift_isUniquelyReferenced_nonNull_native();
            v54 = OUTLINED_FUNCTION_23_102(v47, v48, v47, v49, v50, v51, v52, v53, v106, v109);
            sub_1E407CF24(v54, v55, v56);
            *(v3 + 48) = v112;
            swift_endAccess();
          }
        }
      }

      v57 = (v19)(v20);
      if (v57)
      {
        v59 = sub_1E373E010(40, v57, v58);

        if (v59)
        {
          type metadata accessor for ImageViewModel();
          v60 = swift_dynamicCastClass();
          if (v60)
          {
            v61 = v60;
            OUTLINED_FUNCTION_33_89();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
            v62 = sub_1E3798394();
            v70 = OUTLINED_FUNCTION_32_91(v62, v63, v64, v65, v66, v67, v68, v69, v105, v107, v111, v112, v115);
            sub_1E38D2054(v70, v71);

            if (!v111)
            {
              goto LABEL_42;
            }

            v72 = sub_1E407AF48(v61, v111, 0x27u);
            if (!v72)
            {
LABEL_41:

LABEL_42:

              return;
            }

            v73 = v72;
            v74 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
            [v74 setQueuePriority_];
            [*(v3 + 72) addOperation_];
            OUTLINED_FUNCTION_8_197(v3 + 32, v75, v76, v77, v78);
            if (*(v3 + 32))
            {
              v110 = v74;
              v79 = swift_isUniquelyReferenced_nonNull_native();
              v86 = OUTLINED_FUNCTION_23_102(v79, v80, v79, v81, v82, v83, v84, v85, v105, v110);
              sub_1E407D03C(v86, v87, v88);
              *(v3 + 32) = v113;
            }

            swift_endAccess();
          }
        }
      }

      sub_1E407B1C8();
      if (!v89)
      {
        return;
      }

      v94 = v89;
      OUTLINED_FUNCTION_8_197(v3 + 80, v90, v91, v92, v93);

      v95 = swift_isUniquelyReferenced_nonNull_native();
      v112 = *(v3 + 80);
      sub_1E407D154(v94, a2, v95, &qword_1ECF3F210, &qword_1E42E8DC8);
      *(v3 + 80) = v112;
      swift_endAccess();
      a1 = sub_1E407B4AC(v94, a1);

      if (!a1)
      {
LABEL_37:
        OUTLINED_FUNCTION_8_197(v3 + 40, v96, v97, v98, v99);
        if (a1)
        {
          v104 = swift_isUniquelyReferenced_nonNull_native();
          v114 = *(v3 + 40);
          sub_1E407D154(a1, a2, v104, &qword_1ECF3F208, &qword_1E42E8DC0);
          *(v3 + 40) = v114;
        }

        else
        {
          sub_1E407C71C(a2);
        }

        swift_endAccess();
        return;
      }

      v100 = sub_1E32AE9B0(a1);

      for (j = 0; ; ++j)
      {
        if (v100 == j)
        {

          goto LABEL_37;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v102 = MEMORY[0x1E6911E60](j, a1);
        }

        else
        {
          if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_45;
          }

          v102 = *(a1 + 8 * j + 32);
        }

        v103 = v102;
        if (__OFADD__(j, 1))
        {
          break;
        }

        [v102 setQueuePriority_];
        [*(v3 + 72) addOperation_];
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      ;
    }
  }
}

uint64_t sub_1E407AEB0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result - a2;
  if (__OFSUB__(result, a2))
  {
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v3 < 0)
  {
    v4 = __OFSUB__(0, v3);
    v3 = a2 - result;
    if (v4)
    {
      goto LABEL_24;
    }
  }

  v5 = result + a3;
  if (__OFADD__(result, a3))
  {
    goto LABEL_20;
  }

  v4 = __OFSUB__(v5, a2);
  v6 = v5 - a2;
  if (v4)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v6 < 0)
  {
    v4 = __OFSUB__(0, v6);
    v6 = -v6;
    if (v4)
    {
      goto LABEL_25;
    }
  }

  v7 = result - a3;
  if (__OFSUB__(result, a3))
  {
    goto LABEL_22;
  }

  v4 = __OFSUB__(v7, a2);
  v8 = v7 - a2;
  if (v4)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    v4 = __OFSUB__(0, v8);
    v8 = -v8;
    if (v4)
    {
      goto LABEL_26;
    }
  }

  if (v8 < v6)
  {
    v6 = v8;
  }

  if (v6 < v3)
  {
    v3 = v6;
  }

  if (v3)
  {
    return 4 * (v3 < 2);
  }

  else
  {
    return 8;
  }
}

uint64_t sub_1E407AF48(uint64_t a1, uint64_t a2, unsigned int a3)
{
  OUTLINED_FUNCTION_26_0();
  v5 = (*(v4 + 392))();
  v6 = 0.0;
  if (v5)
  {
    type metadata accessor for ImageLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      v6 = (*(v7 + 2288))();
      v9 = v8;

      goto LABEL_6;
    }
  }

  v9 = 0;
LABEL_6:
  if ((*(*a2 + 392))(v5))
  {
    OUTLINED_FUNCTION_26_0();
    v11 = (*(v10 + 1560))();
  }

  else
  {
    v11 = sub_1E3A2532C();
  }

  sub_1E3D417B8(v11, v29);
  v12 = v29[0];
  v13 = v29[1];
  v14 = v29[2];
  v15 = v30;
  sub_1E3DF9E68(v35);
  LOBYTE(v23[0]) = 0;
  v19[0] = v13;
  v19[1] = v14;
  v20 = v15;
  memcpy(v21, v31, sizeof(v21));
  sub_1E3DC050C(v19);
  v16 = sub_1E39D7838(&unk_1F5D94660);
  memcpy(&__src[3] + 1, v36, 0x41uLL);
  *(&__src[11] + 2) = v32;
  *(&__src[13] + 2) = v33;
  *(&__src[15] + 2) = v34;
  __src[0] = v12;
  *&__src[1] = v6;
  __src[2] = v9;
  LOBYTE(__src[3]) = 0;
  nullsub_1();
  memcpy(__dst, __src, 0x82uLL);
  sub_1E3D41C40(a2, v16, a3, __dst);
  OUTLINED_FUNCTION_79_2();
  v23[0] = v12;
  *&v23[1] = v6;
  v23[2] = v9;
  v24 = 0;
  memcpy(v25, v36, sizeof(v25));
  v26 = v32;
  v27 = v33;
  v28 = v34;
  sub_1E39F8998(v23);
  return v15;
}

void sub_1E407B1C8()
{
  OUTLINED_FUNCTION_26_0();
  v2 = (*(v1 + 488))();
  if (!v2)
  {
    return;
  }

  sub_1E373E010(229, v2, v3);
  v4 = OUTLINED_FUNCTION_79_2();
  if (!v0)
  {
    return;
  }

  v5 = (*(*v0 + 488))(v4);
  if (!v5 || (v7 = sub_1E373E010(239, v5, v6), v8 = , !v7))
  {
LABEL_23:

    return;
  }

  v9 = (*(*v7 + 464))(v8);
  if (!v9)
  {

    goto LABEL_23;
  }

  v10 = v9;
  v11 = MEMORY[0x1E69E7CC0];
  v22 = MEMORY[0x1E69E7CC0];
  v12 = sub_1E32AE9B0(v9);
  v13 = 0;
  while (v12 != v13)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1E6911E60](v13, v10);
      v14 = v15;
    }

    else
    {
      if (v13 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v14 = *(v10 + 8 * v13 + 32);
    }

    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    if (!(*(*v14 + 488))(v15))
    {
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_134_9();
    if (!v18 || (sub_1E3740AE8(39, v16, v17), (v19 & 1) == 0))
    {

      goto LABEL_18;
    }

    type metadata accessor for ImageViewModel();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v11 = v22;
      ++v13;
    }

    else
    {
LABEL_18:

      ++v13;
    }
  }

  v20 = sub_1E32AE9B0(v11);
  v21 = sub_1E32AE9B0(v10);

  if (v20 != v21)
  {
  }
}

unint64_t sub_1E407B4AC(unint64_t a1, uint64_t a2)
{
  v4 = (*(*a2 + 488))();
  if (!v4)
  {
    return 0;
  }

  sub_1E373E010(229, v4, v5);
  v6 = OUTLINED_FUNCTION_79_2();
  if (!v2)
  {
    return 0;
  }

  v7 = (*(*v2 + 488))(v6);
  if (!v7)
  {
    goto LABEL_13;
  }

  v9 = sub_1E373E010(239, v7, v8);

  if (!v9)
  {
    goto LABEL_13;
  }

  v11 = (*(*v9 + 464))(v10);
  if (!v11)
  {

LABEL_13:

    return 0;
  }

  v12 = sub_1E32AE9B0(v11);
  if (v12 == sub_1E32AE9B0(a1))
  {
    v13 = MEMORY[0x1E69E7CC0];
    v23 = MEMORY[0x1E69E7CC0];
    v21 = a1;
    v22 = 0;

    while (1)
    {
      v14 = sub_1E407BF14();
      if (!v14)
      {
        break;
      }

      v16 = sub_1E407AF48(v14, v15, 0x27u);
      if (!v16)
      {

        goto LABEL_19;
      }

      v17 = v16;
      v18 = [objc_allocWithZone(VUIMediaInfoImageFetchOperation) initWithMediaInfo_];
      MEMORY[0x1E6910BF0]();
      if (*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();

      v13 = v23;
    }

    v19 = sub_1E32AE9B0(v13);

    if (v19)
    {
      return v13;
    }
  }

  else
  {

LABEL_19:
  }

  return 0;
}

uint64_t sub_1E407B75C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E324FBDC();
  (*(v6 + 16))(v10, v11, v4);
  v12 = sub_1E41FFC94();
  v13 = sub_1E42067E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134217984;
    *(v14 + 4) = a1;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v15, v16, "MediaShowcasingMetadataInteractor:: setIndex to %ld");
    OUTLINED_FUNCTION_6_0();
  }

  (*(v6 + 8))(v10, v4);
  *(v2 + 64) = a1;
  return sub_1E407A6EC();
}

uint64_t sub_1E407B8A8()
{

  return v0;
}

uint64_t sub_1E407B900()
{
  sub_1E407B8A8();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t sub_1E407B934()
{
  v0 = swift_allocObject();
  sub_1E407B96C();
  return v0;
}

void *sub_1E407B96C()
{
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1E407D8F0();
  v0[3] = sub_1E4205CB4();
  v0[4] = 0;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F0, &qword_1E42E8D30);
  v0[5] = OUTLINED_FUNCTION_14_174(v1);
  v2 = type metadata accessor for ImageViewModel();
  v3 = OUTLINED_FUNCTION_14_174(v2);
  v0[7] = 0;
  v0[8] = 0;
  v0[6] = v3;
  v0[9] = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858, &unk_1E42C9580);
  v0[10] = OUTLINED_FUNCTION_14_174(v4);
  return v0;
}

void *sub_1E407BA38(unint64_t a1, unsigned int a2, uint64_t a3)
{
  type metadata accessor for ImageViewModel();
  v4 = sub_1E4205CB4();
  v5 = sub_1E32AE9B0(a1);
  v6 = 0;
  while (2)
  {
    while (2)
    {
      for (i = v6; ; ++i)
      {
        if (v5 == i)
        {
          return v4;
        }

        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E6911E60](i, a1);
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_29;
          }

          v8 = *(a1 + 8 * i + 32);
        }

        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        v9 = *(*v8 + 488);

        if (v9(v10))
        {
          break;
        }

LABEL_14:

LABEL_15:
      }

      OUTLINED_FUNCTION_134_9();
      if (!v13 || (sub_1E3740AE8(a2, v11, v12), (v14 & 1) == 0))
      {

        goto LABEL_14;
      }

      v15 = swift_dynamicCastClass();
      if (!v15)
      {

        goto LABEL_15;
      }

      v16 = a3 + i;
      if (__OFADD__(a3, i))
      {
        goto LABEL_30;
      }

      v17 = v15;

      swift_isUniquelyReferenced_nonNull_native();
      v29 = sub_1E3928950(v16);
      v30 = v18;
      OUTLINED_FUNCTION_11_53();
      if (__OFADD__(v19, v20))
      {
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F8, &qword_1E42E8DB0);
      if (sub_1E4207644())
      {
        v21 = sub_1E3928950(v16);
        v23 = v30;
        if ((v30 & 1) != (v22 & 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        v21 = v29;
        v23 = v30;
      }

      if (v23)
      {
        *(v4[7] + 8 * v21) = v17;

        continue;
      }

      break;
    }

    v24 = OUTLINED_FUNCTION_0_331(v21, &v4[v21 >> 6]);
    *(v4[6] + 8 * v24) = v16;
    *(v4[7] + 8 * v24) = v17;

    v25 = v4[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      v4[2] = v27;
      continue;
    }

    break;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

uint64_t sub_1E407BD2C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, void, uint64_t, uint64_t *))
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = a2;
  a4(a1, a3, 0, isUniquelyReferenced_nonNull_native, &v12);
  v10 = v12;
  if (v4)
  {
  }

  return v10;
}

uint64_t sub_1E407BDB4(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E407D678(a1, sub_1E407D9C0, 0, isUniquelyReferenced_nonNull_native, &v8, &qword_1ECF3F220, &qword_1E42E8DD8, &qword_1ECF3F210, &qword_1E42E8DC8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1E407BE64(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1E407D678(a1, sub_1E407D9C0, 0, isUniquelyReferenced_nonNull_native, &v8, &qword_1ECF3F218, &qword_1E42E8DD0, &qword_1ECF3F208, &qword_1E42E8DC0);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1E407BF14()
{
  if (*(v0 + 32))
  {
    return 0;
  }

  v2 = *v0;
  if (*v0 >> 62)
  {
    v3 = sub_1E4207384();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v0 + 8);
  if (v4 == v3)
  {
LABEL_11:
    v1 = 0;
    *(v0 + 32) = 1;
    return v1;
  }

  v5 = v2 & 0xC000000000000001;
  sub_1E34AF4E4(*(v0 + 8), (v2 & 0xC000000000000001) == 0, v2);
  if ((v2 & 0xC000000000000001) != 0)
  {
    v1 = MEMORY[0x1E6911E60](v4, v2);
  }

  else
  {
    v1 = *(v2 + 8 * v4 + 32);
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 8) = v4 + 1;
    v5 = *(v0 + 16);
    v6 = sub_1E32AE9B0(v5);
    v4 = *(v0 + 24);
    if (v4 == v6)
    {

      goto LABEL_11;
    }

    sub_1E34AF4E4(*(v0 + 24), (v5 & 0xC000000000000001) == 0, v5);
    if ((v5 & 0xC000000000000001) == 0)
    {

      goto LABEL_14;
    }
  }

  result = MEMORY[0x1E6911E60](v4, v5);
LABEL_14:
  if (!__OFADD__(v4, 1))
  {
    *(v0 + 24) = v4 + 1;
    return v1;
  }

  __break(1u);
  return result;
}

void sub_1E407C05C(uint64_t **a1)
{
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *a1;
  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);

  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 136315138;
    v15 = *v9;
    v23 = v14;
    v16 = (*(v15 + 1096))();
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v16 = 7104878;
      v18 = 0xE300000000000000;
    }

    v19 = sub_1E3270FC8(v16, v18, &v23);

    *(v13 + 4) = v19;
    OUTLINED_FUNCTION_6_13(&dword_1E323F000, v20, v21, "MediaShowcasingMetadataInteractor: setupPortableScoreboard: %s");
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  v22 = (*(*v9 + 2104))(0);
  (*(*v9 + 2368))(v22);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E407C2C4()
{
  v30 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v29 = v5 - v4;
  OUTLINED_FUNCTION_5_0(v0 + 16, v35);
  v6 = *(v0 + 16);
  v31 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v7 = sub_1E32AE9B0(v6);

  v8 = 0;
  while (v7 != v8)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E6911E60](v8, v6);
      v9 = v10;
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_33;
      }

      v9 = *(v6 + 8 * v8 + 32);
    }

    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    if (!(*(*v9 + 488))(v10))
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_134_9();
    if (!v13 || (sub_1E3740AE8(234, v11, v12), (v14 & 1) == 0))
    {

      goto LABEL_13;
    }

    type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1E6910BF0]();
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v31 = v34;
      ++v8;
    }

    else
    {
LABEL_13:

      ++v8;
    }
  }

  v15 = v31;
  v16 = 0;
  v33 = sub_1E32AE9B0(v31);
  v32 = (v2 + 16);
  v17 = (v2 + 8);
  v19 = v29;
  v18 = v30;
  while (v33 != v16)
  {
    if ((v31 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1E6911E60](v16, v15);
    }

    else
    {
      if (v16 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_35;
      }

      v20 = *(v15 + 8 * v16 + 32);
    }

    if (__OFADD__(v16, 1))
    {
      goto LABEL_34;
    }

    v21 = sub_1E324FBDC();
    (*v32)(v19, v21, v18);

    v22 = sub_1E41FFC94();
    v23 = sub_1E42067E4();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315138;
      v26 = (*(*v20 + 1096))();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v26 = 7104878;
        v28 = 0xE300000000000000;
      }

      sub_1E3270FC8(v26, v28, &v34);
      OUTLINED_FUNCTION_79_2();
      *(v24 + 4) = v18;
      v18 = v30;
      _os_log_impl(&dword_1E323F000, v22, v23, "MediaShowcasingMetadataInteractor: cleanupPortableScoreboard: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_6_0();
      v15 = v31;
      v19 = v29;
      OUTLINED_FUNCTION_6_0();
    }

    (*v17)(v19, v18);
    (*(*v20 + 2376))(0);

    ++v16;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E407C71C(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1E3928950(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  swift_isUniquelyReferenced_nonNull_native();
  v8 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F208, &qword_1E42E8DC0);
  sub_1E4207644();
  v6 = *(*(v8 + 56) + 8 * v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F0, &qword_1E42E8D30);
  sub_1E4207664();
  *v2 = v8;
  return v6;
}

void sub_1E407C7F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F228, &qword_1E42E8DE0);
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {

LABEL_32:
    *v3 = v7;
    return;
  }

  v32 = v3;
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
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        sub_1E373CBF0(0, (v31 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v32;
    goto LABEL_32;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
      v21 = v20;
    }

    v22 = sub_1E4207B34();
    v23 = -1 << *(v7 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    *(*(v7 + 48) + 8 * v26) = v19;
    *(*(v7 + 56) + 8 * v26) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1E407CA58(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F230, &qword_1E42E8DE8);
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return;
  }

  v31 = v3;
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
  v14 = v6 + 64;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_32;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      sub_1E373CBF0(0, (v30 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v4 & 1) == 0)
    {
    }

    v21 = sub_1E4207B34();
    v22 = -1 << *(v7 + 32);
    v23 = v21 & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
    {
      break;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    *(*(v7 + 48) + 8 * v25) = v19;
    *(*(v7 + 56) + 8 * v25) = v20;
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v26 = 0;
  v27 = (63 - v22) >> 6;
  while (++v24 != v27 || (v26 & 1) == 0)
  {
    v28 = v24 == v27;
    if (v24 == v27)
    {
      v24 = 0;
    }

    v26 |= v28;
    v29 = *(v14 + 8 * v24);
    if (v29 != -1)
    {
      v25 = __clz(__rbit64(~v29)) + (v24 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1E407CCC4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = sub_1E4207724();
  v9 = v8;
  if (!*(v7 + 16))
  {
LABEL_31:

LABEL_32:
    *v5 = v9;
    return;
  }

  v33 = v5;
  v10 = 0;
  v11 = (v7 + 64);
  v12 = 1 << *(v7 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v7 + 64);
  v15 = (v12 + 63) >> 6;
  v16 = v8 + 64;
  if (!v14)
  {
LABEL_7:
    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_34;
      }

      if (v10 >= v15)
      {
        break;
      }

      v19 = v11[v10];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v14 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v33;
      goto LABEL_32;
    }

    v32 = 1 << *(v7 + 32);
    v5 = v33;
    if (v32 >= 64)
    {
      sub_1E373CBF0(0, (v32 + 63) >> 6, v7 + 64);
    }

    else
    {
      *v11 = -1 << v32;
    }

    *(v7 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    OUTLINED_FUNCTION_24_111();
    v14 &= v14 - 1;
LABEL_12:
    v20 = v17 | (v10 << 6);
    v21 = *(*(v7 + 48) + 8 * v20);
    v22 = *(*(v7 + 56) + 8 * v20);
    if ((v6 & 1) == 0)
    {
    }

    v23 = sub_1E4207B34();
    v24 = -1 << *(v9 + 32);
    v25 = v23 & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      break;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    *(*(v9 + 48) + 8 * v27) = v21;
    *(*(v9 + 56) + 8 * v27) = v22;
    ++*(v9 + 16);
    if (!v14)
    {
      goto LABEL_7;
    }
  }

  v28 = 0;
  v29 = (63 - v24) >> 6;
  while (++v26 != v29 || (v28 & 1) == 0)
  {
    v30 = v26 == v29;
    if (v26 == v29)
    {
      v26 = 0;
    }

    v28 |= v30;
    v31 = *(v16 + 8 * v26);
    if (v31 != -1)
    {
      v27 = __clz(__rbit64(~v31)) + (v26 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
}

void sub_1E407CF24(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3928950(a2);
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F8, &qword_1E42E8DB0);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E3928950(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    *(*(v14 + 56) + 8 * v10) = a1;
  }

  else
  {
    sub_1E407D264(v10, a2, a1, v14);
  }
}

void sub_1E407D03C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3928950(a2);
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200, &qword_1E42E8DB8);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v12 = sub_1E3928950(a2);
  if ((v11 & 1) != (v13 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v10 = v12;
LABEL_5:
  v14 = *v4;
  if (v11)
  {
    v15 = *(v14 + 56);
    v16 = *(v15 + 8 * v10);
    *(v15 + 8 * v10) = a1;
  }

  else
  {
    sub_1E407D264(v10, a2, a1, v14);
  }
}

void sub_1E407D154(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  sub_1E3928950(a2);
  OUTLINED_FUNCTION_11_53();
  if (__OFADD__(v12, v13))
  {
    __break(1u);
    goto LABEL_11;
  }

  v14 = v10;
  v15 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v16 = sub_1E3928950(a2);
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_11:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v14 = v16;
LABEL_5:
  v18 = *v5;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;
    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    sub_1E407D264(v14, a2, a1, v18);
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E407D264(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = OUTLINED_FUNCTION_0_331(a1, a4 + 8 * (a1 >> 6));
  *(v5[6] + 8 * result) = v6;
  *(v5[7] + 8 * result) = v7;
  v8 = v5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    v5[2] = v10;
  }

  return result;
}

uint64_t sub_1E407D2A8(void *a1, uint64_t a2, void *a3)
{
  *a1 = a3;
  v4 = a3;
  return a2;
}

uint64_t sub_1E407D2D4(void *a1, uint64_t a2, uint64_t a3)
{
  *a1 = a3;

  return a2;
}

void sub_1E407D304(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v82 = a5;
  v12 = a3;
  sub_1E394CDB0(a1, a2, a3, v81);
  OUTLINED_FUNCTION_9_184();
  v63 = v12;

  if (v8)
  {
    while (1)
    {
      HIDWORD(v75) = a4;
      v21 = v5;
LABEL_8:
      OUTLINED_FUNCTION_13_183();
      v80 = v25;
      v26 = *(v24 + v23);
      v34 = OUTLINED_FUNCTION_27_98(v26, v27, v28, v29, v30, v31, v32, v33, v59, v61, v63, v65, v67, v69, v71, v73, v75, v77, v79, v80);
      v35(v34);

      v44 = OUTLINED_FUNCTION_34_76(v36, v37, v38, v39, v40, v41, v42, v43, v60, v62, v64, v66, v68, v70, v72, v74, v76, v78);
      OUTLINED_FUNCTION_11_53();
      v48 = v46 + v47;
      if (__OFADD__(v46, v47))
      {
        break;
      }

      v49 = v45;
      if (*(v12 + 24) >= v48)
      {
        if ((v75 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F200, &qword_1E42E8DB8);
          v12 = v82;
          sub_1E4207654();
        }
      }

      else
      {
        v50 = v82;
        sub_1E407C7F4(v48, BYTE4(v75) & 1);
        v12 = *v50;
        v51 = sub_1E3928950(v10);
        if ((v49 & 1) != (v52 & 1))
        {
          goto LABEL_23;
        }

        v44 = v51;
      }

      OUTLINED_FUNCTION_26_117();
      if (v49)
      {
        v54 = *(v53 + 56);
        v55 = *(v54 + 8 * v44);
        *(v54 + 8 * v44) = v6;
      }

      else
      {
        OUTLINED_FUNCTION_1_289(v53);
        if (v58)
        {
          goto LABEL_22;
        }

        *(v56 + 16) = v57;
      }

      a4 = 1;
      v5 = v21;
    }
  }

  else
  {
    v22 = v5;
    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v21 >= v7)
      {
        OUTLINED_FUNCTION_31_91(v13, v14, v15, v16, v17, v18, v19, v20, v59, v61, v12, v65, v67, v69, v71);

        return;
      }

      ++v22;
      if (*(v9 + 8 * v21))
      {
        HIDWORD(v75) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E407D4BC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t *a5)
{
  v78 = a5;
  v12 = a3;
  sub_1E394CDB0(a1, a2, a3, v77);
  OUTLINED_FUNCTION_9_184();
  v59 = v12;

  if (v8)
  {
    while (1)
    {
      HIDWORD(v71) = a4;
      v21 = v5;
LABEL_8:
      OUTLINED_FUNCTION_13_183();
      v76 = v23;

      v32 = OUTLINED_FUNCTION_27_98(v24, v25, v26, v27, v28, v29, v30, v31, v55, v57, v59, v61, v63, v65, v67, v69, v71, v73, v75, v76);
      v33(v32);

      v42 = OUTLINED_FUNCTION_34_76(v34, v35, v36, v37, v38, v39, v40, v41, v56, v58, v60, v62, v64, v66, v68, v70, v72, v74);
      OUTLINED_FUNCTION_11_53();
      v46 = v44 + v45;
      if (__OFADD__(v44, v45))
      {
        break;
      }

      v47 = v43;
      if (*(v12 + 24) >= v46)
      {
        if ((v71 & 0x100000000) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F1F8, &qword_1E42E8DB0);
          v12 = v78;
          sub_1E4207654();
        }
      }

      else
      {
        v48 = v78;
        sub_1E407CA58(v46, BYTE4(v71) & 1);
        v12 = *v48;
        v49 = sub_1E3928950(v10);
        if ((v47 & 1) != (v50 & 1))
        {
          goto LABEL_23;
        }

        v42 = v49;
      }

      OUTLINED_FUNCTION_26_117();
      if (v47)
      {
        *(*(v51 + 56) + 8 * v42) = v6;
      }

      else
      {
        OUTLINED_FUNCTION_1_289(v51);
        if (v54)
        {
          goto LABEL_22;
        }

        *(v52 + 16) = v53;
      }

      a4 = 1;
      v5 = v21;
    }
  }

  else
  {
    v22 = v5;
    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v21 >= v7)
      {
        OUTLINED_FUNCTION_31_91(v13, v14, v15, v16, v17, v18, v19, v20, v55, v57, v12, v61, v63, v65, v67);

        return;
      }

      ++v22;
      if (*(v9 + 8 * v21))
      {
        HIDWORD(v71) = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1E4207A74();
  __break(1u);
}

void sub_1E407D678(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v43 = a5;
  sub_1E394CDB0(a1, a2, a3, v42);
  v10 = v42[1];
  v11 = v42[3];
  v12 = v42[4];
  v37 = v42[5];
  v38 = v42[0];
  v13 = (v42[2] + 64) >> 6;

  if (v12)
  {
    while (1)
    {
      v39 = a4;
      v14 = v11;
LABEL_8:
      OUTLINED_FUNCTION_24_111();
      v17 = (v14 << 9) | (8 * v16);
      v18 = *(*(v38 + 56) + v17);
      v41[0] = *(*(v38 + 48) + v17);
      v41[1] = v18;

      v37(v40, v41);

      v19 = v40[0];
      v20 = v40[1];
      v21 = *v43;
      v22 = sub_1E3928950(v40[0]);
      OUTLINED_FUNCTION_11_53();
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v23;
      if (v21[3] >= v26)
      {
        if ((v39 & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(a8, a9);
          sub_1E4207654();
        }
      }

      else
      {
        sub_1E407CCC4(v26, v39 & 1, a6, a7);
        v28 = sub_1E3928950(v19);
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_24;
        }

        v22 = v28;
      }

      v12 &= v12 - 1;
      v30 = *v43;
      if (v27)
      {
        *(v30[7] + 8 * v22) = v20;
      }

      else
      {
        v30[(v22 >> 6) + 8] |= 1 << v22;
        *(v30[6] + 8 * v22) = v19;
        *(v30[7] + 8 * v22) = v20;
        v31 = v30[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_23;
        }

        v30[2] = v33;
      }

      a4 = 1;
      v11 = v14;
      if (!v12)
      {
        goto LABEL_3;
      }
    }
  }

  else
  {
LABEL_3:
    v15 = v11;
    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v14 >= v13)
      {
        sub_1E34AF4DC(v38);

        return;
      }

      v12 = *(v10 + 8 * v14);
      ++v15;
      if (v12)
      {
        v39 = a4;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1E4207A74();
  __break(1u);
}

unint64_t sub_1E407D8F0()
{
  result = qword_1EE23AF30;
  if (!qword_1EE23AF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE23AF30);
  }

  return result;
}

uint64_t sub_1E407D988()
{
  OUTLINED_FUNCTION_25_106();
  result = v1();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E407D9D8()
{
  OUTLINED_FUNCTION_25_106();
  result = v1();
  *v0 = result;
  v0[1] = v3;
  return result;
}

uint64_t sub_1E407DA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1E38E51A8(&unk_1F5D94688, a2, a3);
  v9 = v3;
  if (TVAppFeature.isEnabled.getter(17, v4, v5))
  {
    sub_1E38E8158(&v8, 127, v6);
    return v9;
  }

  return v3;
}

void sub_1E407DA90(void *a1, uint64_t a2, uint64_t a3)
{
  if (sub_1E404C4C8(*(v3 + OBJC_IVAR____TtC8VideosUI19StackViewController_stackType), 1, a3))
  {
    v5 = 169;
    v6 = 189;
  }

  else
  {
    sub_1E407DD70(a1, 127);
    sub_1E407DD70(a1, 128);
    sub_1E407DD70(a1, 123);
    sub_1E407DD70(a1, 148);
    sub_1E407DD70(a1, 135);
    sub_1E407DD70(a1, 137);
    sub_1E407DD70(a1, 130);
    sub_1E407DD70(a1, 121);
    sub_1E407DC98(a1, 170);
    sub_1E407DC98(a1, 171);
    sub_1E407DC98(a1, 173);
    sub_1E407DC98(a1, 178);
    sub_1E407DC98(a1, 179);
    sub_1E407DC98(a1, 197);
    sub_1E407DC98(a1, 216);
    sub_1E407DC98(a1, 194);
    sub_1E407DC98(a1, 215);
    sub_1E407DC98(a1, 206);
    sub_1E407DC98(a1, 198);
    sub_1E407DC98(a1, 183);
    sub_1E407DC98(a1, 184);
    sub_1E407DC98(a1, 187);
    sub_1E407DC98(a1, 188);
    sub_1E407DC98(a1, 190);
    sub_1E407DC98(a1, 193);
    sub_1E407DC98(a1, 200);
    sub_1E407DC98(a1, 201);
    sub_1E407DC98(a1, 189);
    if ((TVAppFeature.isEnabled.getter(17, v7, v8) & 1) == 0)
    {
      sub_1E407DC98(a1, 174);
    }

    sub_1E407DC98(a1, 256);
    sub_1E407DC98(a1, 213);
    sub_1E407DC98(a1, 214);
    sub_1E407DC98(a1, 196);
    v5 = 199;
    v6 = 244;
  }

  sub_1E407DC98(a1, v6);

  sub_1E407DC98(a1, v5);
}

void sub_1E407DC98(void *a1, uint64_t a2)
{
  sub_1E3859230(a2);
  if (_MergedGlobals_270 != -1)
  {
    swift_once();
  }

  if (!sub_1E407F450(a2, qword_1EE28CB70, v4))
  {
    type metadata accessor for CardCollectionViewCell();
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v6 = sub_1E4205ED4();

  [a1 vui:ObjCClassFromMetadata registerClass:v6 forCellWithReuseIdentifier:?];
}

void sub_1E407DD70(void *a1, uint64_t a2)
{
  type metadata accessor for ViewControllerHostingCollectionViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1E3859230(a2);
  v5 = sub_1E4205ED4();

  [a1 vui:ObjCClassFromMetadata registerClass:v5 forCellWithReuseIdentifier:?];
}

id sub_1E407DDFC(void *a1, uint64_t a2, unsigned __int16 *a3)
{
  v4 = v3;
  v8 = sub_1E42046B4();
  MEMORY[0x1EEE9AC00](v8 - 8);
  OUTLINED_FUNCTION_9_3();
  v210 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B7B0, &qword_1E429EC30);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v213 = &v205 - v11;
  v214 = sub_1E4204724();
  OUTLINED_FUNCTION_0_10();
  v212 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_9_3();
  v211 = v14;
  *&v218 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  *&v217 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v216 = &v205 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v205 - v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296B0, &unk_1E429BA90);
  OUTLINED_FUNCTION_0_10();
  v215 = v21;
  MEMORY[0x1EEE9AC00](v22);
  sub_1E3859230(a3[49]);
  v23 = sub_1E4205ED4();

  v222 = a2;
  v24 = sub_1E41FE7E4();
  v219 = [a1 vui:v23 dequeueReusableCellWithIdentifier:v24 indexPath:?];

  v27 = TVAppFeature.isEnabled.getter(10, v25, v26);
  v28 = MEMORY[0x1E69E7D40];
  v220 = a1;
  v221 = a3;
  if (v27)
  {
    OUTLINED_FUNCTION_18_137();
    v30 = (*(v29 + 992))();
    v33 = v28;
    if (v31 == 1)
    {
      v34 = v28;
      v35 = sub_1E324FBDC();
      v36 = v217;
      v37 = v218;
      (*(v217 + 16))(v20, v35, v218);
      v38 = sub_1E41FFC94();
      v39 = sub_1E42067F4();
      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_1E323F000, v38, v39, "StackViewController+Cells:: missing view layout environment", v40, 2u);
        MEMORY[0x1E69143B0](v40, -1, -1);
      }

      (*(v36 + 8))(v20, v37);
      a3 = v221;
      v28 = v34;
    }

    else
    {
      v48 = v31;
      v208 = v30;
      LOBYTE(v227[0]) = v30;
      *(&v227[0] + 1) = v31;
      LOWORD(v227[1]) = v32;
      *&v229[0] = v31;
      MEMORY[0x1EEE9AC00](v30);
      *(&v205 - 2) = v227;
      *(&v205 - 1) = v220;
      v49 = v48;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE00, &unk_1E42E76E8);
      v51 = sub_1E4148D98(sub_1E407FADC, (&v205 - 4), v50);
      v52 = (*v33 & *v4) + 536;
      v53 = *((*v33 & *v4) + 0x218);
      v54 = (v53)(v51);
      sub_1E4200104();

      v209 = v4;
      v55 = v53();
      sub_1E42000B4();

      v56 = *(&v229[0] + 1);
      if (*(&v229[0] + 1))
      {
        v228[0] = v229[0];
        *&v228[1] = *&v229[1];
        sub_1E4200034();

        v52 = *&v229[0];
        v206 = *&v229[1];
        v207 = *(&v229[0] + 1);
      }

      v57 = (*(*v221 + 392))();
      if (v57)
      {
        (*(*v57 + 1640))(LOBYTE(v227[0]), *(&v227[0] + 1), LOWORD(v227[1]));

        sub_1E39DFB80(v208, v48);
        v58 = OUTLINED_FUNCTION_19_147();
        v59(v58);
      }

      else
      {
        v60 = OUTLINED_FUNCTION_19_147();
        v61(v60);
        sub_1E39DFB80(v208, v48);
      }

      v4 = v209;
      a3 = v221;
      v28 = MEMORY[0x1E69E7D40];
      if (v56)
      {
        sub_1E3790548(v52, v207, v206);
      }
    }
  }

  else
  {
    type metadata accessor for LayoutGrid();
    [a1 frame];
    Width = CGRectGetWidth(v230);
    v42 = sub_1E3A2579C(Width);
    v43 = (*(*a3 + 392))(v42);
    if (v43)
    {
      v44 = v43;
      v45 = [v220 vuiTraitCollection];
      sub_1E3C2AE10();
      v47 = v46;
      (*(*v44 + 1640))();
    }
  }

  v62 = v219;
  *&v227[0] = v219;
  v63 = sub_1E3280A90(0, &qword_1EE23B120, 0x1E69DC7F8);
  v219 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C250, &qword_1E42DCE78);
  if ((swift_dynamicCast() & 1) == 0)
  {
    memset(v228, 0, 40);
    sub_1E325F748(v228, &unk_1ECF429D0, &qword_1E42DCE80);
LABEL_29:
    LOBYTE(v223) = 0;
    v78 = sub_1E41FE854();
    v79 = *((*v28 & *v4) + 0x2F0);
    if (*(v79() + 16) && (sub_1E3928950(v78), (v80 & 1) != 0))
    {
      OUTLINED_FUNCTION_20_126();
      memcpy(v81, v82, v83);
      OUTLINED_FUNCTION_20_126();
      memmove(v84, v85, v86);
      sub_1E3AE1020(v228, v227);

      nullsub_1();
    }

    else
    {

      sub_1E3790540(v229);
    }

    memcpy(v228, v229, sizeof(v228));
    if (sub_1E3AD9318(v228) == 1)
    {
      memcpy(v227, v229, sizeof(v227));
      sub_1E325F748(v227, &unk_1ECF296A0, &qword_1E42DF0E0);
    }

    else
    {
      v87 = *(&v229[10] + 1);
      memcpy(v227, v229, sizeof(v227));

      sub_1E325F748(v227, &unk_1ECF296A0, &qword_1E42DF0E0);
      if (v87)
      {
        v225[0] = 2;
        memset(&v225[1], 0, 35);
        v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE18, &unk_1E42E7808);
        sub_1E4148C68(sub_1E40595A4, v88, v226);
        v217 = v226[1];
        v218 = v226[0];
        v89 = *&v226[2];
        v90 = WORD4(v226[2]);
        LOBYTE(v223) = BYTE8(v226[2]);
        v91 = BYTE10(v226[2]);
        if (LOBYTE(v226[0]) == 2)
        {

          v92 = HIBYTE(v90);
        }

        else
        {
          v95 = sub_1E41FE844();
          v96 = sub_1E407F49C(v95, v87);

          v92 = v96 & 1;
        }

        v94 = v217;
        v93 = v218;
        goto LABEL_41;
      }
    }

    LOBYTE(v90) = 0;
    v89 = 0;
    v92 = 0;
    v91 = 0;
    v93 = xmmword_1E42A9820;
    v94 = 0uLL;
LABEL_41:
    v226[0] = v93;
    v226[1] = v94;
    *&v226[2] = v89;
    BYTE8(v226[2]) = v90;
    BYTE9(v226[2]) = v92;
    BYTE10(v226[2]) = v91;
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EE18, &unk_1E42E7808);
    sub_1E4148C68(sub_1E405A6D4, v97, v227);
    v98 = v227[0];
    LOBYTE(v223) = BYTE8(v227[2]);
    if (LOBYTE(v227[0]) == 2)
    {
      v99 = v219;
      v225[0] = v219;
      memset(v227, 0, 40);
    }

    else
    {
      *&v218 = v63;
      v100 = WORD4(v227[2]) | (BYTE10(v227[2]) << 16);
      v101 = v220;
      v102 = sub_1E407F528(v220);
      v104 = v103;
      v105 = sub_1E41FE854();
      if (*(v79() + 16) && (sub_1E3928950(v105), (v106 & 1) != 0))
      {
        OUTLINED_FUNCTION_20_126();
        memcpy(v107, v108, v109);
        OUTLINED_FUNCTION_20_126();
        memmove(v110, v111, v112);
        sub_1E3AE1020(v226, v225);

        nullsub_1();
      }

      else
      {

        sub_1E3790540(v227);
      }

      memcpy(v226, v227, sizeof(v226));
      v113 = sub_1E3AD9318(v226);
      v114 = *(&v227[0] + 1);
      memcpy(v225, v227, sizeof(v225));
      sub_1E325F748(v225, &unk_1ECF296A0, &qword_1E42DF0E0);
      if (v113 == 1)
      {
        v114 = 0;
      }

      v115 = [v101 numberOfItemsInSection_];
      LOBYTE(v223) = 0;
      v99 = v219;
      v225[0] = v219;
      v224 = 0;
      *(&v227[1] + 1) = &type metadata for CollectionViewCellContext;
      *&v227[2] = &off_1F5D621F8;
      v116 = swift_allocObject();
      *&v227[0] = v116;
      *(v116 + 16) = v98 & 1;
      *(v116 + 17) = BYTE1(v98) & 1;
      *(v116 + 18) = BYTE2(v98) & 1;
      *(v116 + 24) = v102;
      *(v116 + 32) = v104;
      *(v116 + 40) = v114;
      *(v116 + 48) = v115;
      *(v116 + 56) = v224;
      *(v116 + 57) = BYTE1(v100);
      *(v116 + 58) = BYTE2(v100) & 1;
      v63 = v218;
    }

    type metadata accessor for UIFactory();
    v117 = v99;
    sub_1E38E5240(v221, v225, v227, 0, v4, v63, v226);

    sub_1E325F748(v227, &qword_1ECF296C0, &unk_1E429BBE0);
    return v99;
  }

  sub_1E3251BE8(v228, v229);
  v64 = *(a3 + 3);
  if (!v64)
  {
    __swift_destroy_boxed_opaque_existential_1(v229);
    goto LABEL_29;
  }

  v65 = *(a3 + 2);
  OUTLINED_FUNCTION_18_137();
  v67 = (*(v66 + 680))();
  v68 = sub_1E378A81C(v65, v64, v67);

  if (([objc_opt_self() isSearchEnabled] & 1) == 0 || (type metadata accessor for UnifiedMessagingBubbleTipViewModel(), (v69 = swift_dynamicCastClass()) == 0))
  {
LABEL_52:
    if (v68)
    {
LABEL_65:
      v142 = sub_1E324FBDC();
      v143 = v216;
      v144 = v217;
      v145 = v218;
      (*(v217 + 16))(v216, v142, v218);
      v146 = v68;
      v147 = sub_1E41FFC94();
      v148 = sub_1E4206814();

      if (os_log_type_enabled(v147, v148))
      {
        v209 = v4;
        v149 = swift_slowAlloc();
        v150 = swift_slowAlloc();
        *&v227[0] = v150;
        *v149 = 136315650;
        swift_beginAccess();
        v151 = *(&v229[1] + 1);
        v152 = __swift_project_boxed_opaque_existential_1(v229, *(&v229[1] + 1));
        *(&v228[1] + 1) = v151;
        __swift_allocate_boxed_opaque_existential_1(v228);
        OUTLINED_FUNCTION_8_198();
        (*(v153 + 16))();
        v154 = sub_1E3294FA4(v228);
        sub_1E3270FC8(v154, v155, v227);
        OUTLINED_FUNCTION_11_5();

        *(v149 + 4) = v152;
        *(v149 + 12) = 2080;
        swift_beginAccess();
        v156 = *(&v229[1] + 1);
        v157 = *&v229[2];
        __swift_project_boxed_opaque_existential_1(v229, *(&v229[1] + 1));
        v158 = (*(v157 + 8))(v156, v157);
        swift_endAccess();
        if (v158)
        {
          v159 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
        }

        else
        {
          v159 = 0;
          *&v228[1] = 0;
          *(&v228[0] + 1) = 0;
        }

        *&v228[0] = v158;
        *(&v228[1] + 1) = v159;
        v160 = sub_1E3294FA4(v228);
        sub_1E3270FC8(v160, v161, v227);
        OUTLINED_FUNCTION_11_5();

        *(v149 + 14) = v156;
        *(v149 + 22) = 2080;
        if (v68)
        {
          v162 = sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
          v163 = v146;
        }

        else
        {
          v163 = 0;
          v162 = 0;
          *&v228[1] = 0;
          *(&v228[0] + 1) = 0;
        }

        *&v228[0] = v163;
        *(&v228[1] + 1) = v162;
        v164 = v146;
        v165 = sub_1E3294FA4(v228);
        sub_1E3270FC8(v165, v166, v227);
        OUTLINED_FUNCTION_11_5();

        *(v149 + 24) = v156;
        _os_log_impl(&dword_1E323F000, v147, v148, "StackViewController:: Dequeue: Hosting Cell: %s, Existing ViewController: %s, New View Controller: %s", v149, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E69143B0](v150, -1, -1);
        MEMORY[0x1E69143B0](v149, -1, -1);

        (*(v217 + 8))(v216, v218);
        v4 = v209;
      }

      else
      {

        (*(v144 + 8))(v143, v145);
      }

      swift_beginAccess();
      v167 = *(&v229[1] + 1);
      v168 = *&v229[2];
      __swift_mutable_project_boxed_opaque_existential_1(v229, *(&v229[1] + 1));
      v169 = *(v168 + 16);
      v170 = v146;
      v169(v68, v167, v168);
      swift_endAccess();
      if (!v68)
      {
        __swift_destroy_boxed_opaque_existential_1(v229);
        return v219;
      }

      v171 = *(*v221 + 576);
      v172 = v170;
      v173 = v171();
      v99 = v219;
      if (v173)
      {
        v174 = v173;
        (*((*MEMORY[0x1E69E7D40] & *v4) + 0x1A0))(v227);
        if (*(&v227[1] + 1))
        {
          sub_1E3251BE8(v227, v228);
          [v99 frame];
          type metadata accessor for Metrics(0);
          sub_1E3BA8620();
          v175 = v213;
          (*(*v174 + 224))();
          v176 = v214;
          if (__swift_getEnumTagSinglePayload(v175, 1, v214) == 1)
          {

            v177 = &qword_1ECF2B7B0;
            v178 = &qword_1E429EC30;
            v179 = v175;
LABEL_79:
            sub_1E325F748(v179, v177, v178);
LABEL_88:
            __swift_destroy_boxed_opaque_existential_1(v228);
            goto LABEL_89;
          }

          v181 = v211;
          v180 = v212;
          (*(v212 + 32))(v211, v175, v176);
          v223 = v172;
          sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
          v182 = v172;
          v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3C260, &unk_1E42DCEA0);
          if (OUTLINED_FUNCTION_12_167(v183))
          {
            v184 = OUTLINED_FUNCTION_4_258();
            v186.n128_f64[0] = v185(v184);
            OUTLINED_FUNCTION_9_185(v186, v187, v188, v189);

            type metadata accessor for CollectionImpressionManager();
            OUTLINED_FUNCTION_3_261();
            OUTLINED_FUNCTION_8_198();
            (*(v190 + 16))();
            sub_1E42046D4();
            v191 = sub_1E3F0AE74();
            OUTLINED_FUNCTION_10_171(v191, &off_1F5D8D100);
            v192 = OUTLINED_FUNCTION_5_237();
            v193(v192);
          }

          else
          {
            memset(v226, 0, 40);
            sub_1E325F748(v226, &qword_1ECF3C268, &unk_1E42E5630);
            v223 = v182;
            v182 = v182;
            v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3E3E0, &qword_1E42DCE90);
            if ((OUTLINED_FUNCTION_12_167(v194) & 1) == 0)
            {
              (*(v180 + 8))(v181, v176);

              memset(v226, 0, 40);
              v177 = &unk_1ECF3E3D0;
              v178 = &qword_1E42DCE98;
              v179 = v226;
              goto LABEL_79;
            }

            v195 = OUTLINED_FUNCTION_4_258();
            v197.n128_f64[0] = v196(v195);
            OUTLINED_FUNCTION_9_185(v197, v198, v199, v200);

            type metadata accessor for ViewImpressionManager();
            OUTLINED_FUNCTION_3_261();
            OUTLINED_FUNCTION_8_198();
            (*(v201 + 16))();
            sub_1E42046D4();
            v202 = sub_1E3F09578();
            OUTLINED_FUNCTION_10_171(v202, &off_1F5D8D098);
            v203 = OUTLINED_FUNCTION_5_237();
            v204(v203);
          }

          (*(v176 + 8))(v181, v214);
          __swift_destroy_boxed_opaque_existential_1(v227);
          goto LABEL_88;
        }

        sub_1E325F748(v227, &unk_1ECF296D0, &qword_1E429BAA0);
      }

      else
      {
      }

LABEL_89:
      __swift_destroy_boxed_opaque_existential_1(v229);
      return v99;
    }

    goto LABEL_55;
  }

  v70 = *(*v69 + 928);

  v72 = v70(v71);
  v74 = v73;
  v75 = sub_1E3B58264();
  if (!v74)
  {

    goto LABEL_52;
  }

  if (v72 == *v75 && v74 == v75[1])
  {

    goto LABEL_55;
  }

  v77 = sub_1E42079A4();

  if ((v77 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_55:
  [v220 bounds];
  nullsub_1();
  v119 = v118;
  v121 = v120;
  v123 = v122;
  v126 = TVAppFeature.isEnabled.getter(10, v124, v125);
  v215 = v65;
  v127 = v28;
  if ((v126 & 1) == 0)
  {
    v131 = *sub_1E3E6011C();

LABEL_61:
    v132 = *_s8VideosUIAAC19initializeUIFactoryyyFZ_0();
    *&v228[2] = &off_1F5D62200;
    *&v228[0] = v119;
    *(&v228[0] + 1) = v121;
    *(&v228[1] + 1) = &type metadata for CollectionViewContext;
    *&v228[1] = v131;
    v133 = v132;
    v134 = sub_1E39C4090(a3, v68, v228);

    sub_1E325F748(v228, &qword_1ECF296C0, &unk_1E429BBE0);
    v135 = *((*v127 & *v4) + 0x2B8);
    v136 = v134;
    v137 = v4;
    v138 = v135(v228);
    v140 = v139;
    if (v134)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v227[0] = *v140;
      sub_1E3E8AFEC(v136, v215, v64, isUniquelyReferenced_nonNull_native);
      *v140 = *&v227[0];
    }

    else
    {
    }

    v138(v228, 0);

    v68 = v134;
    v4 = v137;
    goto LABEL_65;
  }

  result = [v4 vuiView];
  if (result)
  {
    v129 = result;
    v130 = [result vuiBackgroundColor];

    if (!v130)
    {
      v130 = *sub_1E3E6011C();
    }

    v131 = v130;
    goto LABEL_61;
  }

  __break(1u);
  return result;
}

uint64_t sub_1E407F450(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1E3740AE8(a1, a2, a3);
  if (v5)
  {
    return *(*(a2 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E407F49C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v5 = sub_1E4207B34();
    v6 = ~(-1 << *(a2 + 32));
    do
    {
      v7 = v5 & v6;
      v8 = (1 << (v5 & v6)) & *(a2 + 56 + (((v5 & v6) >> 3) & 0xFFFFFFFFFFFFFF8));
      v2 = v8 != 0;
      if (!v8)
      {
        break;
      }

      v5 = v7 + 1;
    }

    while (*(*(a2 + 48) + 8 * v7) != a1);
  }

  return v2;
}

double sub_1E407F528(void *a1)
{
  [a1 safeAreaInsets];
  [a1 vuiBounds];
  v3 = v2;
  v4 = OUTLINED_FUNCTION_6();
  v8 = v3 - sub_1E3952BE0(v4, v5, v6, v7);
  [a1 vuiBounds];
  v9 = OUTLINED_FUNCTION_6();
  sub_1E3952BD8(v9, v10, v11);
  return v8;
}

unint64_t sub_1E407F5BC()
{
  v1 = type metadata accessor for EntityLockupCollectionViewCell();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v1, 206, v2);
  v3 = type metadata accessor for BrandLockupCell();
  swift_isUniquelyReferenced_nonNull_native();
  v4 = OUTLINED_FUNCTION_14_175();
  sub_1E407F9CC(v4, 198, v5);
  OUTLINED_FUNCTION_6_224();
  v6 = type metadata accessor for OrdinalCardCell();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v6, 200, v7);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for FlowcaseViewCell();
  OUTLINED_FUNCTION_7_229();
  v8 = OUTLINED_FUNCTION_0_332();
  sub_1E407F9CC(v8, 175, v9);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for FeaturedCardCollectionViewCell();
  OUTLINED_FUNCTION_11_5();
  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v3, 173, v10);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for LeagueStandingsCard();
  OUTLINED_FUNCTION_11_186();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v0, 244, v11);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for ViewHostingCell();
  OUTLINED_FUNCTION_11_186();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v0, 199, v12);
  OUTLINED_FUNCTION_6_224();
  type metadata accessor for OrdinalListCell();
  OUTLINED_FUNCTION_11_186();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v0, 201, v13);
  v16 = TVAppFeature.isEnabled.getter(17, v14, v15);
  if ((v16 & 1) == 0)
  {
    swift_isUniquelyReferenced_nonNull_native();
    v19 = OUTLINED_FUNCTION_0_332();
    v16 = sub_1E407F9CC(v19, 174, v20);
  }

  if (sub_1E39DFFC0(v16, v17, v18))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4C0, &qword_1E42A9850);
    OUTLINED_FUNCTION_7_229();
    v21 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v21, 256, v22);
  }

  v23 = [objc_opt_self() currentDevice];
  v24 = [v23 userInterfaceIdiom];

  if (!v24)
  {
    type metadata accessor for SyndicationCell();
    OUTLINED_FUNCTION_7_229();
    v27 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v27, 196, v28);
  }

  if (TVAppFeature.isEnabled.getter(10, v25, v26))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A540, &qword_1E42A98B8);
    OUTLINED_FUNCTION_7_229();
    v29 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v29, 178, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4E0, &qword_1E42A9870);
    OUTLINED_FUNCTION_11_186();
    OUTLINED_FUNCTION_1_290();
    v32 = sub_1E407F9CC(v24, 179, v31);
    OUTLINED_FUNCTION_13_184(v32, v33, v34, v35, v36, v37, v38, v39, v98, v102);
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v24, 183, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4F0, &unk_1E42D7800);
    OUTLINED_FUNCTION_7_229();
    v41 = OUTLINED_FUNCTION_0_332();
    v43 = sub_1E407F9CC(v41, 189, v42);
    OUTLINED_FUNCTION_13_184(v43, v44, v45, v46, v47, v48, v49, v50, v99, v103);
    v51 = OUTLINED_FUNCTION_0_332();
    v53 = sub_1E407F9CC(v51, 214, v52);
    OUTLINED_FUNCTION_13_184(v53, v54, v55, v56, v57, v58, v59, v60, v100, v104);
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v24, 169, v61);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4A0, &unk_1E42D7810);
    OUTLINED_FUNCTION_11_186();
    OUTLINED_FUNCTION_1_290();
    sub_1E407F9CC(v24, 170, v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D540, &qword_1E42A98D8);
    OUTLINED_FUNCTION_11_186();
    OUTLINED_FUNCTION_1_290();
    v64 = sub_1E407F9CC(v24, 193, v63);
    OUTLINED_FUNCTION_13_184(v64, v65, v66, v67, v68, v69, v70, v71, v101, v105);
    v72 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v72, 190, v73);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C960, &unk_1E42A7840);
    OUTLINED_FUNCTION_7_229();
    v74 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v74, 171, v75);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D4B0, &qword_1E42A9840);
    OUTLINED_FUNCTION_7_229();
    v76 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v76, 196, v77);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3A520, &qword_1E42A98C8);
    OUTLINED_FUNCTION_7_229();
    v78 = OUTLINED_FUNCTION_0_332();
    sub_1E407F9CC(v78, 206, v79);
  }

  type metadata accessor for MonogramLockupCell();
  OUTLINED_FUNCTION_7_229();
  v80 = OUTLINED_FUNCTION_0_332();
  v82 = sub_1E407F9CC(v80, 194, v81);
  OUTLINED_FUNCTION_13_184(v82, v83, v84, v85, v86, v87, v88, v89, v98, v102);
  v90 = OUTLINED_FUNCTION_0_332();
  sub_1E407F9CC(v90, 215, v91);
  if (TVAppFeature.isEnabled.getter(10, v92, v93))
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D508, &qword_1E42A9890);
  }

  swift_isUniquelyReferenced_nonNull_native();
  OUTLINED_FUNCTION_1_290();
  sub_1E407F9CC(v6, 200, v94);
  swift_isUniquelyReferenced_nonNull_native();
  v95 = OUTLINED_FUNCTION_14_175();
  result = sub_1E407F9CC(v95, 187, v96);
  qword_1EE28CB70 = v106;
  return result;
}

unint64_t sub_1E407F9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1E3740AE8(a2, a2, a3);
  if (__OFADD__(v7[2], (v9 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F258, &unk_1E42E8E10);
  result = sub_1E4207644();
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  result = sub_1E3740AE8(a2, v13, v14);
  if ((v11 & 1) != (v15 & 1))
  {
LABEL_11:
    result = sub_1E4207A74();
    __break(1u);
    return result;
  }

  v10 = result;
LABEL_5:
  v16 = *v4;
  if (v11)
  {
    *(v16[7] + 8 * v10) = a1;
  }

  else
  {

    return sub_1E37519DC(v10, a2, a1, v16);
  }

  return result;
}

void sub_1E407FADC()
{
  v1 = *(v0 + 16);
  v2 = [*(v0 + 24) vuiTraitCollection];
  v3 = *(v1 + 8);
  *(v1 + 8) = v2;
}

id sub_1E407FB28(uint64_t a1)
{
  v2 = *(a1 + 56);
  OUTLINED_FUNCTION_15_167();
  MaxY = CGRectGetMaxY(v15);
  v4 = *(a1 + 48);
  [v4 contentOffset];
  if (v5 >= -MaxY)
  {
    if (*(a1 + 64) > 0.0)
    {
      CGRectGetHeight(*a1);
    }

    OUTLINED_FUNCTION_15_167();
    OUTLINED_FUNCTION_9_10();
    [v4 contentOffset];
    v16.origin.x = OUTLINED_FUNCTION_24_0();
    *&v6 = CGRectOffset(v16, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_15_167();
  }

  v12 = CGRect.center.getter(v6, v7, v8, v9);

  return [v2 setVuiCenter_];
}

void sub_1E407FC9C(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
}

void (*sub_1E407FCF8(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_statusBarView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

void *sub_1E407FD7C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_1E407FDBC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v17);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  v13 = a1;
  OUTLINED_FUNCTION_5_0(&v8[v12], v18);
  v14 = *&v8[v12];
  if (v14)
  {
    v15 = v14;
    [v15 setVuiAutoresizingMask_];

    v16 = *&v8[v12];
  }

  else
  {
    v16 = 0;
  }

  [v8 vui:v16 addSubview:v11 oldView:?];
}

void (*sub_1E407FE74(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E407FEF4;
}

void *sub_1E407FF0C(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView, a2);
  v4 = *(v2 + v3);
  v5 = v4;
  return v4;
}

void sub_1E407FF4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  OUTLINED_FUNCTION_3_102(a1, a2, a3, a4, a5, a6, a7, a8, v18);
  v11 = *&v8[v10];
  *&v8[v10] = a1;
  v12 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  v13 = a1;
  OUTLINED_FUNCTION_5_0(&v8[v12], v19);
  v14 = *&v8[v12];
  if (v14 && (v15 = v14, [v15 setVuiAutoresizingMask_], v15, (v16 = *&v8[v12]) != 0))
  {
    [v16 setVuiClipsToBounds_];
    v17 = *&v8[v12];
  }

  else
  {
    v17 = 0;
  }

  [v8 vui:v17 addSubview:v11 oldView:?];
}

void (*sub_1E408001C(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E408009C;
}

void sub_1E40800B4(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

uint64_t sub_1E4080134@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator, a1);
  return sub_1E4080180(v2 + v4, a2);
}

uint64_t sub_1E4080180(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F280, &qword_1E42E8E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E40801F0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator;
  swift_beginAccess();
  sub_1E408025C(a1, v1 + v3);
  swift_endAccess();
  sub_1E40808A4();
  return sub_1E4080B6C(a1);
}

uint64_t sub_1E408025C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F280, &qword_1E42E8E20);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*sub_1E40802CC(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1E4080330;
}

void sub_1E4080330(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1E40808A4();
  }
}

double sub_1E4080364(char a1, CGFloat a2, double a3)
{
  OUTLINED_FUNCTION_7_19();
  v9 = (*(v8 + 128))();
  if (v9)
  {
    v10 = v9;
    [v9 frame];
    OUTLINED_FUNCTION_3();

    v28.origin.x = 0.0;
    v28.origin.y = 0.0;
    v28.size.width = v3;
    v28.size.height = v4;
    CGRectGetHeight(v28);
  }

  OUTLINED_FUNCTION_7_19();
  v12 = *(v11 + 152);
  v13 = v12();
  if (v13)
  {
    v14 = v13;
    [v13 vui:a2 sizeThatFits:a3];
  }

  OUTLINED_FUNCTION_7_19();
  v16 = *(v15 + 176);
  v17 = v16();
  v27 = a2;
  if (v17)
  {
    v18 = v17;
    OUTLINED_FUNCTION_5_238();
    MaxY = CGRectGetMaxY(v29);
    [v18 vui:a2 sizeThatFits:a3];
    v21 = v20;
  }

  else
  {
    a2 = 0.0;
    v21 = 0.0;
    MaxY = 0.0;
  }

  OUTLINED_FUNCTION_5_238();
  CGRectGetHeight(v30);
  v31.origin.x = 0.0;
  v31.origin.y = MaxY;
  v31.size.width = a2;
  v31.size.height = v21;
  CGRectGetHeight(v31);
  if ((a1 & 1) == 0)
  {
    v22 = v12();
    OUTLINED_FUNCTION_5_238();
    [v23 v24];

    v25 = v16();
    [v25 setFrame_];
  }

  return v27;
}

void sub_1E40805E8(void *a1, char a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F288, qword_1E42E8E28);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v26 - v8;
  if (a2)
  {
    if (a1)
    {
      v10 = *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
      if (v10)
      {
        v11 = v10;
        v12 = a1;
        [v3 frame];
        Height = CGRectGetHeight(v27);
        v14 = (*((*MEMORY[0x1E69E7D40] & *v3) + 0x98))();
        if (v14)
        {
          v15 = v14;
          [v14 frame];
          OUTLINED_FUNCTION_9_10();

          v28.origin.x = OUTLINED_FUNCTION_24_0();
          v16 = CGRectGetHeight(v28);
        }

        else
        {
          v16 = 0.0;
        }

        v17 = v16 - Height;
        [v11 contentOffset];
        v19 = v18;
        [v12 contentOffset];
        if (v17 > v19 || v17 > v20)
        {
          [v11 contentOffset];
          if (v17 < v22)
          {
            v22 = v17;
          }

          [v12 setContentOffset_];
        }
      }
    }
  }

  v23 = *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
  *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView) = a1;
  v24 = a1;

  if (a1)
  {
    swift_getKeyPath();
    sub_1E41FE2F4();

    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1E4080C18();
    v25 = sub_1E4200844();

    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v25 = 0;
  }

  *(v3 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_scrollObserver) = v25;

  sub_1E40808A4();
}

void sub_1E40808A4()
{
  v5 = *&v0[OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView];
  if (!v5)
  {
LABEL_18:
    OUTLINED_FUNCTION_12_168();
    return;
  }

  v47 = v5;
  [v47 contentSize];
  if (v6 > 0.0)
  {
    OUTLINED_FUNCTION_0_94();
    v8 = *(v7 + 128);
    v9 = v8();
    if (v9)
    {
      v10 = v9;
      [v9 frame];
      OUTLINED_FUNCTION_3();
    }

    else
    {
      v1 = 0;
      v2 = 0;
      v3 = 0;
      v4 = 0;
    }

    OUTLINED_FUNCTION_0_94();
    v14 = (*(v13 + 152))();
    if (v14 || (v14 = v8()) != 0)
    {
      v15 = v14;
      [v14 frame];
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;

      v54.origin.x = v17;
      v54.origin.y = v19;
      v54.size.width = v21;
      v54.size.height = v23;
      MaxY = CGRectGetMaxY(v54);
    }

    else
    {
      MaxY = 0.0;
    }

    OUTLINED_FUNCTION_0_94();
    v26 = (*(v25 + 176))();
    if (v26)
    {
      v27 = v26;
      [v26 frame];
      v29 = v28;
      v31 = v30;
      v33 = v32;
      v46 = MaxY;
      v34 = v4;
      v35 = v3;
      v36 = v2;
      v37 = v1;
      v39 = v38;

      v55.origin.x = v29;
      v55.origin.y = v31;
      v55.size.width = v33;
      v55.size.height = v39;
      v1 = v37;
      v2 = v36;
      v3 = v35;
      v4 = v34;
      MaxY = v46;
      Height = CGRectGetHeight(v55);
    }

    else
    {
      Height = 0.0;
    }

    __src[0] = v1;
    __src[1] = v2;
    __src[2] = v3;
    __src[3] = v4;
    __src[4] = 0;
    *&__src[5] = MaxY;
    __src[6] = v47;
    __src[7] = v0;
    *&__src[8] = Height;
    memcpy(__dst, __src, sizeof(__dst));
    OUTLINED_FUNCTION_0_94();
    v42 = *(v41 + 200);
    v43 = v0;
    v42(v51);
    if (v51[3])
    {
      sub_1E327F454(v51, v48);
      sub_1E4080B6C(v51);
      v44 = v49;
      v45 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      (*(v45 + 8))(__dst, v44, v45);
      sub_1E4081098(__src);
      __swift_destroy_boxed_opaque_existential_1(v48);
    }

    else
    {
      sub_1E4081098(__src);
      sub_1E4080B6C(v51);
    }

    goto LABEL_18;
  }

  OUTLINED_FUNCTION_12_168();
}

uint64_t sub_1E4080B6C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F280, &qword_1E42E8E20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1E4080BD4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E40808A4();
  }
}

unint64_t sub_1E4080C18()
{
  result = qword_1EE23ADB8;
  if (!qword_1EE23ADB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F288, qword_1E42E8E28);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE23ADB8);
  }

  return result;
}

id sub_1E4080C7C(uint64_t a1, double a2, double a3)
{
  v9.receiver = v3;
  v9.super_class = type metadata accessor for PinningHeaderView();
  result = objc_msgSendSuper2(&v9, sel_hitTest_withEvent_, a1, a2, a3);
  if (result)
  {
    v8 = result == v3;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {

    return 0;
  }

  return result;
}

id sub_1E4080D94()
{
  OUTLINED_FUNCTION_0_8();
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView) = 0;
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator);
  v5 = OUTLINED_FUNCTION_14_176(&OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E4080E44(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8VideosUI17PinningHeaderView_collapsingView] = 0;
  *&v1[OBJC_IVAR____TtC8VideosUI17PinningHeaderView_pinnedView] = 0;
  OUTLINED_FUNCTION_28(OBJC_IVAR____TtC8VideosUI17PinningHeaderView_animator);
  v5.receiver = v1;
  v5.super_class = OUTLINED_FUNCTION_14_176(&OBJC_IVAR____TtC8VideosUI17PinningHeaderView_trackingScrollView);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E4080F14()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PinningHeaderView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E4080FD4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 48);
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

uint64_t sub_1E4081014(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E408110C()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 352))();
}

uint64_t sub_1E40811AC()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 360))();
}

void (*sub_1E4081248(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = sub_1E4081208();
  return sub_1E4081290;
}

id sub_1E40812D4(uint64_t *a1, void (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = *(v3 + *a1);
  if (v5)
  {
    v6 = *(v3 + *a1);
  }

  else
  {
    v8 = v3;
    a2(0);
    v9 = a3();
    v10 = *(v3 + v4);
    *(v8 + v4) = v9;
    v6 = v9;

    v5 = 0;
  }

  v11 = v5;
  return v6;
}

void (*sub_1E4081358(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  *a1 = sub_1E40812A0();
  return sub_1E40813A0;
}

double sub_1E40813B0(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

uint64_t sub_1E40813E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedLibrarySidebarItems;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = a1;
}

uint64_t sub_1E408147C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E40814B0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E408153C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4081570(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

BOOL sub_1E40815FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  OUTLINED_FUNCTION_12_5();
  v2 += 86;
  v3 = *v2;
  if ((*v2)())
  {
    OUTLINED_FUNCTION_19_148();
    v5 = (*(v4 + 280))();
    v6 = sub_1E32AE9B0(v5);

    if (v6)
    {
      return 1;
    }
  }

  if (v3())
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_3();
  v9 = *((*(v8 + 632))() + 16);

  if (!v9)
  {
    return 0;
  }

  OUTLINED_FUNCTION_3_3();
  v11 = (*(v10 + 736))();
  sub_1E32AE9B0(v11);
  OUTLINED_FUNCTION_50();

  return v1 != 0;
}

uint64_t sub_1E4081764(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4081798(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E4081824(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4081858(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E40818E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4081918(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1E40819D8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RootSplitViewController();
  return objc_msgSendSuper2(&v2, sel_preferredDisplayMode);
}

uint64_t sub_1E4081A60(uint64_t a1)
{
  v4.receiver = v1;
  v4.super_class = type metadata accessor for RootSplitViewController();
  objc_msgSendSuper2(&v4, sel_setPreferredDisplayMode_, a1);
  return sub_1E4081AA8();
}

uint64_t sub_1E4081AA8()
{
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_3();
  v2 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & v3) + 0x198))();
  if (result)
  {
    result = [v0 preferredDisplayMode];
    if (result != 1)
    {
      sub_1E324FBDC();
      v5 = OUTLINED_FUNCTION_4_114();
      v6(v5);
      v7 = sub_1E41FFC94();
      v8 = sub_1E4206814();
      if (OUTLINED_FUNCTION_72_1(v8))
      {
        *OUTLINED_FUNCTION_125_0() = 0;
        OUTLINED_FUNCTION_48_5(&dword_1E323F000, v9, v10, "RootSplitViewController:: system overriding preferred display mode, clearing user sidebar hidden state");
        OUTLINED_FUNCTION_6_0();
      }

      v11 = OUTLINED_FUNCTION_74();
      v12(v11);
      OUTLINED_FUNCTION_36_3();
      return (*((*v2 & v13) + 0x1A0))(0);
    }
  }

  return result;
}

void *sub_1E4081C60(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E4081C9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_1E4081D30(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E4081D6C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E4081E00(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4081E34(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_1E4081EC0(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E4081EF4(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

void sub_1E4081F80()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 rootControllerConfig];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *&v5[v1] = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___sideBarController) = 0;
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = OUTLINED_FUNCTION_53_52(v6);
    v9 = v8;

    if (v9)
    {
      v10 = (v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_tvTitle);
      *v10 = v7;
      v10[1] = v9;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___splitTabBarController) = 0;
      v11 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager;
      type metadata accessor for LibrarySideBarManager();
      *(v1 + v11) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode) = 3;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress) = 0;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal) = 0;
      v12 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
      v13 = [v12 navigationBar];
      [v13 setHidden_];

      type metadata accessor for RootHostingViewController();
      v14 = v12;
      *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_secondaryColumnHostingController) = sub_1E41191BC(v14);
      v48.receiver = v1;
      v48.super_class = type metadata accessor for RootSplitViewController();
      v15 = objc_msgSendSuper2(&v48, sel_initWithStyle_, 1);
      v16 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_15_94();
      v18 = *(v17 + 232);
      v19 = v15;
      v20 = v18();
      OUTLINED_FUNCTION_15_94();
      v22 = *(v21 + 152);
      v23 = v19;
      v22(v15, &off_1F5D94850);

      v24 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager;
      v25 = *&v23[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager];
      OUTLINED_FUNCTION_4_0();
      v26 = swift_allocObject();
      swift_unknownObjectWeakInit();
      OUTLINED_FUNCTION_26_3();
      v28 = *((*v16 & v27) + 0x1A8);
      v29 = v25;

      v28(sub_1E4086940, v26);

      v30 = *&v23[v24];
      v31 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager;
      v32 = *&v23[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager];
      v33 = *((*v16 & *v30) + 0x300);
      v34 = v30;
      v35 = v32;
      v33(v32);

      v36 = *&v23[v31];
      OUTLINED_FUNCTION_21();
      v38 = *(v37 + 248);
      v39 = v23;
      v40 = v36;
      v38(v15, &off_1F5D8F8A0);

      v41 = v39;
      (*((*v16 & *v39) + 0x100))();
      OUTLINED_FUNCTION_71();
      OUTLINED_FUNCTION_15_94();
      v43 = *(v42 + 120);
      v44 = v39;
      v43(v15, &off_1F5D8F888);

      [v44 setPreferredDisplayMode_];
      [v44 setDisplayModeButtonVisibility_];
      sub_1E40824F8();
      [v44 setDelegate_];
      v45 = objc_opt_self();
      v46 = [v45 defaultCenter];
      [v46 addObserver:v44 selector:sel_willEnterForeground_ name:*MEMORY[0x1E69DF7E8] object:0];

      v47 = [v45 defaultCenter];
      [v47 addObserver:v44 selector:sel_didEnterBackground_ name:*MEMORY[0x1E69DF7E0] object:0];

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

id sub_1E40824F8()
{
  v1 = [v0 viewControllers];
  sub_1E38DA110();
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062B4();

  v3 = sub_1E32AE9B0(v2);

  if (!v3)
  {
    v5 = MEMORY[0x1E69E7D40];
    OUTLINED_FUNCTION_21();
    v7 = (*(v6 + 232))();
    [v0 setViewController:v7 forColumn:0];

    OUTLINED_FUNCTION_26_3();
    v9 = (*((*v5 & v8) + 0x100))();
    [v0 setViewController:v9 forColumn:3];

    v10 = *&v0[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_secondaryColumnHostingController];

    return [v0 setViewController:v10 forColumn:2];
  }

  return result;
}

void sub_1E408266C()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_rootControllerConfig;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 rootControllerConfig];

  *(v1 + v2) = v4;
  v5 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager;
  type metadata accessor for RootSplitViewManager();
  *(v1 + v5) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___sideBarController) = 0;
  v6 = [objc_opt_self() sharedInstance];
  if (!v6)
  {
    __break(1u);
  }

  v7 = v6;
  v8 = sub_1E3741090(22100, 0xE200000000000000, v6);
  v10 = v9;

  if (!v10)
  {
    __break(1u);
  }

  v11 = (v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_tvTitle);
  *v11 = v8;
  v11[1] = v10;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController____lazy_storage___splitTabBarController) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager;
  type metadata accessor for LibrarySideBarManager();
  *(v1 + v12) = _s8VideosUI26MetricsRecorderFactoryObjCCACycfC_0();
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedLibrarySidebarItems) = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_needsModeEvaluationOnDidAppear) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_isSidebarDisabled) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_stagedMode) = 3;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_viewIsVisible) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_userHasHiddenSidebar) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_presentedTipViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_accountMessageViewController) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_sidebarOpeningInProgress) = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_waitingForPresentationDismissal) = 0;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E4082870(char a1)
{
  v2 = v1;
  v21.receiver = v2;
  v21.super_class = type metadata accessor for RootSplitViewController();
  objc_msgSendSuper2(&v21, sel_viewDidAppear_, a1 & 1);
  v4 = *(v2 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager);
  v5 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_19_148();
  v7 = (*(v6 + 440))();
  sub_1E374E8E4(v7, 0);
  OUTLINED_FUNCTION_19_148();
  if (v9)
  {
    v10 = (*(v8 + 352))();
    if ([v2 isCollapsed])
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }

    v12 = *v5;
    if (v10)
    {
      (*((v12 & *v4) + 0x1C0))(v11);
    }

    else
    {
      (*((v12 & *v2) + 0x170))(v11);
    }
  }

  else if ((*(v8 + 304))())
  {
    OUTLINED_FUNCTION_3_3();
    if ((*(v13 + 352))())
    {
      [v2 isCollapsed];
      OUTLINED_FUNCTION_67_1();
      if (v15)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      (*((*v5 & v14) + 0x1C0))(v16);
    }

    OUTLINED_FUNCTION_3_3();
    (*(v17 + 312))(0);
  }

  OUTLINED_FUNCTION_3_3();
  (*(v18 + 392))(1);
  OUTLINED_FUNCTION_36_3();
  (*((*v5 & v19) + 0x100))();
  OUTLINED_FUNCTION_71();
  OUTLINED_FUNCTION_19_148();
  (*(v20 + 144))(0);
}

void sub_1E4082BB4(char a1)
{
  v7.receiver = v1;
  v7.super_class = type metadata accessor for RootSplitViewController();
  objc_msgSendSuper2(&v7, sel_viewWillDisappear_, a1 & 1);
  OUTLINED_FUNCTION_26_3();
  v3 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & v4) + 0x188))(0);
  OUTLINED_FUNCTION_26_3();
  (*((*v3 & v5) + 0x100))();
  OUTLINED_FUNCTION_71();
  (*((*v3 & v6) + 0x90))(1);
}

void sub_1E4082CF8()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v0);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_12_5();
  v2 = *(v1 + 928);
  v3 = v2();
  if (v3)
  {

    sub_1E324FBDC();
    v4 = OUTLINED_FUNCTION_4_114();
    v5(v4);
    v6 = sub_1E41FFC94();
    v7 = sub_1E4206814();
    if (OUTLINED_FUNCTION_72_1(v7))
    {
      *OUTLINED_FUNCTION_125_0() = 0;
      OUTLINED_FUNCTION_48_5(&dword_1E323F000, v8, v9, "RootSplitViewController:: account message: foregrounding, re-fetching message");
      OUTLINED_FUNCTION_6_0();
    }

    v10 = OUTLINED_FUNCTION_74();
    v3 = v11(v10);
  }

  v12 = (v2)(v3);
  if (v12)
  {
    (*(*v12 + 1000))(v12);
  }

  OUTLINED_FUNCTION_24_1();
  (*(v13 + 1128))();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4082EEC()
{
  OUTLINED_FUNCTION_120_1();
  v0 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v1 + 1136))();
  OUTLINED_FUNCTION_26_3();
  return (*((*v0 & v2) + 0x498))();
}

uint64_t sub_1E4082F9C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = sub_1E41FDF34();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  sub_1E41FDEE4();
  v13 = a1;
  a4();

  return (*(v8 + 8))(v12, v6);
}

id sub_1E4083074()
{
  v1 = [objc_opt_self() defaultCenter];
  [v1 removeObserver_];

  v3.receiver = v0;
  v3.super_class = type metadata accessor for RootSplitViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1E4083278()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  HIDWORD(v170) = v2;
  v172 = v3;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF396A0, &unk_1E42AE170);
  OUTLINED_FUNCTION_0_10();
  v167 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v174 = &v161 - v6;
  i = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  k = &v161 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v166 = &v161 - v14;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v161 - v17;
  v19 = *&v0[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager];
  v20 = MEMORY[0x1E69E7D40];
  v21 = *((*MEMORY[0x1E69E7D40] & *&v19->Flags) + 0x1B8);
  v22 = v21(v16);
  if (sub_1E374E8E4(v22, 2))
  {
    v171 = v9;
    v163 = v18;
    v175 = v0;
    v23 = (*v20 & *&v19->Flags) + 632;
    v24 = v19;
    v169 = *((*v20 & *&v19->Flags) + 0x278);
    v168 = v23;
    v25 = v169();
    v26 = 0;
    v27 = *(v25 + 16);
    v28 = (v25 + 32);
    v165 = i;
    while (v27 != v26)
    {
      if (v26 >= *(v25 + 16))
      {
        goto LABEL_86;
      }

      sub_1E327F454(v28, &v177);
      __swift_project_boxed_opaque_existential_1(&v177, v179);
      v29 = OUTLINED_FUNCTION_2_253();
      v31 = v30(v29);
      v1 = v32;
      v33 = sub_1E396B0E4();
      if (v31 == *v33 && v1 == v33[1])
      {

LABEL_16:

        sub_1E3251BE8(&v177, &v180);
        sub_1E3251BE8(&v180, &v182);
        v164 = type metadata accessor for LibrarySidebarItem();
        OUTLINED_FUNCTION_34_77();
        v62 = OUTLINED_FUNCTION_50();
        v162 = v63(v62);
        v161 = v64;
        OUTLINED_FUNCTION_34_77();
        v65 = OUTLINED_FUNCTION_2_253();
        i = v66(v65);
        v68 = v67;
        v69 = v184;
        OUTLINED_FUNCTION_34_77();
        v70 = OUTLINED_FUNCTION_50();
        v72 = v71(v70, v69);
        v73 = v183;
        v74 = v184;
        __swift_project_boxed_opaque_existential_1(&v182, v183);
        (v74[12])(v73, v74);
        OUTLINED_FUNCTION_43_69();
        v49 = MEMORY[0x1E69E7D40];
        (*((*MEMORY[0x1E69E7D40] & v75) + 0x118))();
        k = j__OUTLINED_FUNCTION_18();
        v76 = j__OUTLINED_FUNCTION_18();
        j__OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_195_3();
        BYTE3(v162) = v73 & 1;
        BYTE2(v162) = v76 & 1;
        BYTE1(v162) = v72 & 1;
        LOBYTE(v162) = 1;
        OUTLINED_FUNCTION_40_73(v162, 0, i, v68, v77, k & 1, v78, v79, 0, v162, v76 & 1, v73 & 1, SBYTE4(v162), v163);
        v25 = v80;
        __swift_destroy_boxed_opaque_existential_1(&v182);
LABEL_17:
        OUTLINED_FUNCTION_5_239();
        (*(v81 + 480))(0);
        v1 = *(v9 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager);
        v82 = *((*v49 & *v25) + 0x1C8);
        v83 = v1;
        v82(v1, &off_1F5D8BA78);

        v24 = v19;
        if ((*((*v49 & *&v19->Flags) + 0x2B0))())
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F340, &qword_1E42E8F20);
          v84 = swift_allocObject();
          *(v84 + 16) = xmmword_1E4297BE0;
          *(v84 + 56) = type metadata accessor for LibrarySidebarItem();
          *(v84 + 64) = &off_1EE277438;
          *(v84 + 32) = v25;
          v85 = *((*v49 & *&v19->Flags) + 0x280);
          v86 = v25;
          v85(v84);
          goto LABEL_44;
        }

        v87 = v25;
        OUTLINED_FUNCTION_32_92();
        v25 = v88();
        v28 = 0;
        k = *(v25 + 16);
        for (i = v25 + 32; ; i += 40)
        {
          if (k == v28)
          {

            v25 = v87;
            goto LABEL_44;
          }

          if (v28 >= *(v25 + 16))
          {
            goto LABEL_87;
          }

          sub_1E327F454(i, &v182);
          OUTLINED_FUNCTION_34_77();
          v89 = OUTLINED_FUNCTION_2_253();
          v24 = v90(v89);
          v1 = v91;
          v92 = sub_1E396B0E4();
          if (v24 == *v92 && v1 == v92[1])
          {

            __swift_destroy_boxed_opaque_existential_1(&v182);
          }

          else
          {
            v94 = v92;
            v24 = sub_1E42079A4();

            __swift_destroy_boxed_opaque_existential_1(&v182);
            if ((v24 & 1) == 0)
            {

              OUTLINED_FUNCTION_32_92();
              v25 = v95();
              i = 0;
              v28 = *(v25 + 16);
              k = 32;
              while (v28 != i)
              {
                if (i >= *(v25 + 16))
                {
                  goto LABEL_88;
                }

                sub_1E327F454(v25 + k, &v182);
                OUTLINED_FUNCTION_34_77();
                v96 = OUTLINED_FUNCTION_2_253();
                v98 = v97(v96);
                v1 = v99;
                if (v98 == *v94 && v99 == v94[1])
                {

                  __swift_destroy_boxed_opaque_existential_1(&v182);
LABEL_41:

                  v183 = type metadata accessor for LibrarySidebarItem();
                  v184 = &off_1EE277438;
                  v25 = v87;
                  *&v182 = v87;
                  v108 = *((*MEMORY[0x1E69E7D40] & *&v19->Flags) + 0x288);
                  v109 = v87;
                  v1 = v108(&v180);
                  v28 = v110;
                  v24 = *v110;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  *v28 = v24;
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    goto LABEL_90;
                  }

                  goto LABEL_42;
                }

                v24 = sub_1E42079A4();

                __swift_destroy_boxed_opaque_existential_1(&v182);
                if (v24)
                {
                  goto LABEL_41;
                }

                ++i;
                k += 40;
              }

              OUTLINED_FUNCTION_15_94();
              v102 = *(v101 + 648);
              v25 = v87;
              v103 = v87;
              v104 = v102(&v182);
              v106 = v105;
              sub_1E3E2422C();
              v107 = *(*v106 + 16);
              sub_1E3E24278(v107);
              sub_1E3E2587C(v107, v103, v106);
              v104(&v182, 0);
LABEL_44:
              while (2)
              {
                v176 = v172;
                OUTLINED_FUNCTION_5_239();
                v1 = *(v112 + 376);

                v164 = v25;
                v24 = v25;
                v25 = (v1)(v113);
                v114 = sub_1E32AE9B0(v25);
                if (v114)
                {
                  v28 = v114;
                  if (v114 >= 1)
                  {
                    for (j = 0; j != v28; j = (j + 1))
                    {
                      if ((v25 & 0xC000000000000001) != 0)
                      {
                        v116 = MEMORY[0x1E6911E60](j, v25);
                      }

                      else
                      {
                        v116 = *(v25 + 8 * j + 32);
                      }

                      v117 = v116;
                      if (v176)
                      {
                        v118 = *&v116[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
                        v119 = *&v116[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

                        sub_1E397B708(v118, v119);
                      }

                      else
                      {
                      }
                    }

                    goto LABEL_54;
                  }
                }

                else
                {
LABEL_54:

                  v121 = v169;
                  v122 = *((v169)(v120) + 16);

                  if (v122)
                  {
                    v123 = v175;
                    v124 = MEMORY[0x1E69E7D40];
                    OUTLINED_FUNCTION_27_29();
                    v126 = (*(v125 + 232))();
                    v121();
                    OUTLINED_FUNCTION_36_3();
                    (*((*v124 & v127) + 0x160))();

                    v129 = (*((*v124 & *v123) + 0x1C8))(v128);
                    v130 = v165;
                    v131 = v171;
                    if (v129)
                    {
                      v132 = v129;
                      v133 = OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented;
                      OUTLINED_FUNCTION_5_0(v129 + OBJC_IVAR____TtC8VideosUI28AccountMessageViewController_isPresented, &v182);
                      LOBYTE(v133) = v132[v133];

                      if ((v133 & 1) == 0)
                      {
                        sub_1E324FBDC();
                        OUTLINED_FUNCTION_66_4();
                        v134(v163);
                        v135 = sub_1E41FFC94();
                        v136 = sub_1E4206814();
                        if (os_log_type_enabled(v135, v136))
                        {
                          v137 = OUTLINED_FUNCTION_125_0();
                          *v137 = 0;
                          _os_log_impl(&dword_1E323F000, v135, v136, "RootSplitViewController:: account message: attempting to present from sideBar mode transition", v137, 2u);
                          OUTLINED_FUNCTION_6_0();
                        }

                        (*(v131 + 8))(v163, v130);
                      }
                    }

                    v138 = OUTLINED_FUNCTION_18();
                    sub_1E3F7DFAC(0, v138 & 1, v139, v140, v141, v142, v143, v144, v165, v166, v167, v168, v169, v170, v171, v172, v173, v174, v175, v176);
                  }

                  else
                  {
                    sub_1E324FBDC();
                    v145 = v171;
                    OUTLINED_FUNCTION_66_4();
                    v146 = v166;
                    v147 = v165;
                    v148(v166);
                    v149 = sub_1E41FFC94();
                    v150 = sub_1E4206814();
                    v151 = os_log_type_enabled(v149, v150);
                    v124 = MEMORY[0x1E69E7D40];
                    if (v151)
                    {
                      v152 = OUTLINED_FUNCTION_125_0();
                      *v152 = 0;
                      _os_log_impl(&dword_1E323F000, v149, v150, "RootSplitViewController:: can't update sidebar because no sections", v152, 2u);
                      OUTLINED_FUNCTION_6_0();
                    }

                    (*(v145 + 8))(v146, v147);
                  }

                  v171 = v176;
                  sub_1E4084434(v176, BYTE4(v170) & 1);
                  sub_1E3F76DEC();
                  *&v180 = (*((*v124 & *&v19->Flags) + 0x290))();
                  *(&v180 + 1) = v153;
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F1F0, &qword_1E42AE160);
                  sub_1E40869E4();
                  sub_1E4206194();
                  v154 = sub_1E38DA110();
                  v19 = &protocol descriptor for TemplateReparentable;
                  v172 = v154;
                  while (1)
                  {
                    *&v177 = MEMORY[0x1E69E6158];
                    *(&v177 + 1) = v154;
                    v178 = MEMORY[0x1E69E6168];
                    swift_getOpaqueTypeConformance2();
                    v24 = v174;
                    sub_1E4207174();
                    v25 = *(&v180 + 1);
                    if (!*(&v180 + 1))
                    {
                      (*(v167 + 8))(v174, v173);

                      goto LABEL_83;
                    }

                    v155 = v181;
                    objc_opt_self();
                    OUTLINED_FUNCTION_19_3();
                    v156 = swift_dynamicCastObjCClass();
                    if (v156)
                    {
                      break;
                    }

LABEL_80:
                  }

                  v175 = v155;
                  v1 = [v156 viewControllers];
                  swift_checkMetadataState();
                  OUTLINED_FUNCTION_19_3();
                  i = sub_1E42062B4();

                  if (i >> 62)
                  {
                    v28 = sub_1E4207384();
                  }

                  else
                  {
                    v28 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
                  }

                  for (k = 0; ; ++k)
                  {
                    if (v28 == k)
                    {

                      v154 = v172;
                      v155 = v175;
                      goto LABEL_80;
                    }

                    if ((i & 0xC000000000000001) != 0)
                    {
                      v157 = MEMORY[0x1E6911E60](k, i);
                    }

                    else
                    {
                      if (k >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_85;
                      }

                      v157 = *(i + 8 * k + 32);
                    }

                    v1 = v157;
                    if (__OFADD__(k, 1))
                    {
                      break;
                    }

                    swift_getObjectType();
                    v158 = OUTLINED_FUNCTION_19_3();
                    if (dynamic_cast_existential_1_conditional(v158, v159, &protocol descriptor for TemplateReparentable))
                    {
                      OUTLINED_FUNCTION_145();
                      ObjectType = swift_getObjectType();
                      (*(v154 + 64))(0, ObjectType, v154);
                    }
                  }

                  __break(1u);
LABEL_85:
                  __break(1u);
LABEL_86:
                  __break(1u);
LABEL_87:
                  __break(1u);
LABEL_88:
                  __break(1u);
                }

                __break(1u);
LABEL_90:
                v24 = sub_1E3E25304(v24);
                *v28 = v24;
LABEL_42:
                if (i >= *(v24 + 16))
                {
                  __break(1u);
                  return;
                }

                __swift_destroy_boxed_opaque_existential_1((v24 + k));
                sub_1E3251BE8(&v182, v24 + k);
                (v1)(&v180, 0);
                continue;
              }
            }
          }

          v28 = (v28 + 1);
        }
      }

      v24 = sub_1E42079A4();

      if (v24)
      {
        goto LABEL_16;
      }

      __swift_destroy_boxed_opaque_existential_1(&v177);
      v28 += 5;
      ++v26;
    }

    v164 = type metadata accessor for LibrarySidebarItem();
    k = *(&v19->Name + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle);
    v162 = *(&v19->Flags + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_libraryTitle);

    v48 = sub_1E396B0E4();
    i = v48[1];
    v161 = *v48;
    v49 = MEMORY[0x1E69E7D40];
    v50 = (*MEMORY[0x1E69E7D40] & *&v19->Flags) + 688;
    v51 = *((*MEMORY[0x1E69E7D40] & *&v19->Flags) + 0x2B0);

    v53 = v51(v52);
    v54 = v53;
    v51(v53);
    OUTLINED_FUNCTION_43_69();
    (*((*v49 & v55) + 0x118))(v56);
    v57 = j__OUTLINED_FUNCTION_18();
    LOBYTE(v51) = j__OUTLINED_FUNCTION_18();
    j__OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_195_3();
    BYTE3(v162) = (v50 & 1) == 0;
    BYTE2(v162) = v51 & 1;
    BYTE1(v162) = (v54 & 1) == 0;
    LOBYTE(v162) = 1;
    OUTLINED_FUNCTION_40_73(v162, k, 0, i, v58, v57 & 1, v59, v60, 0, v162, v51 & 1, SBYTE3(v162), SBYTE4(v162), v163);
    v25 = v61;
    goto LABEL_17;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_66_4();
  v35(k);
  v36 = v0;
  v37 = sub_1E41FFC94();
  v38 = sub_1E4206814();

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v171 = v9;
    v41 = v40;
    *&v182 = v40;
    *v39 = 136315138;
    v42 = (v21)();
    LOBYTE(v180) = v42;
    sub_1E3E25614(v42, v43, v44);
    v45 = sub_1E4207944();
    v47 = sub_1E3270FC8(v45, v46, &v182);

    *(v39 + 4) = v47;
    _os_log_impl(&dword_1E323F000, v37, v38, "RootSplitViewController:: commit changes for sidebar mode, but the current mode is %s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v171 + 8))(k, i);
  }

  else
  {

    (*(v9 + 8))(k, i);
  }

LABEL_83:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E4084434(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_120_1();
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_21();
  (*(v3 + 440))();
  OUTLINED_FUNCTION_26_3();
  (*((*v2 & v4) + 0x3F8))();

  sub_1E408450C();
}

void sub_1E408450C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_5();
  v15 = v14 - v13;
  v16 = *&v0[OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager];
  v91 = v8;
  (*((*MEMORY[0x1E69E7D40] & *v16) + 0x428))(&v93, v8);
  if (!v94)
  {
    sub_1E325F748(&v93, &unk_1ECF2F1D0, &qword_1E42AE148);
    v58 = sub_1E324FBDC();
    (*(v11 + 16))(v15, v58, v9);
    v59 = sub_1E41FFC94();
    v60 = sub_1E42067F4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 134218752;
      *(v61 + 4) = v91;
      *(v61 + 12) = 1024;
      *(v61 + 14) = v6 & 1;
      *(v61 + 18) = 1024;
      *(v61 + 20) = v4 & 1;
      *(v61 + 24) = 1024;
      *(v61 + 26) = v2 & 1;
      _os_log_impl(&dword_1E323F000, v59, v60, "RootSplitViewController::setSelectedIndex %ld invalid, userDriven %{BOOL}d, movingFocus %{BOOL}d, withAnimation %{BOOL}d", v61, 0x1Eu);
      OUTLINED_FUNCTION_6_0();
    }

    (*(v11 + 8))(v15, v9);
    goto LABEL_24;
  }

  sub_1E3251BE8(&v93, v95);
  if ([v0 displayMode] == 3 && (v6 & 1) != 0)
  {
    [v0 hideColumn_];
  }

  v17 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_15_94();
  v18 += 61;
  v19 = *v18;
  v20 = (*v18)() != v8;
  if (((v21 | v6 ^ 1 | v20) & 1) == 0)
  {
    v19();
    OUTLINED_FUNCTION_5_239();
    (*(v62 + 520))();
    sub_1E4084F7C(v6 & 1);
LABEL_23:
    __swift_destroy_boxed_opaque_existential_1(v95);
LABEL_24:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v89 = v19;
  v90 = v6;
  v22 = v97;
  OUTLINED_FUNCTION_34_77();
  v23 = OUTLINED_FUNCTION_50();
  v25 = v24(v23, v22);
  v27 = v26;
  OUTLINED_FUNCTION_1_31();
  v29 = (*((*v17 & v28) + 0x290))();
  v31 = v30;
  *&v93 = v25;
  *(&v93 + 1) = v27;
  v32 = sub_1E38DA110();
  sub_1E3CA4D00(&v93, v29, v31, MEMORY[0x1E69E6158], v32, MEMORY[0x1E69E6168]);

  v33 = v92;
  if (v92)
  {
    goto LABEL_7;
  }

  sub_1E327F454(v95, &v93);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F310, &qword_1E42AE150);
  v63 = type metadata accessor for RemoteBarItem();
  if (OUTLINED_FUNCTION_37_77(v63))
  {
    OUTLINED_FUNCTION_36_73();
    v64 = v96;
    v65 = v97;
    __swift_project_boxed_opaque_existential_1(v95, v96);
    v66 = (*(v65 + 16))(v64, v65);
    v68 = v67;

    *&v93 = v66;
    *(&v93 + 1) = v68;
    OUTLINED_FUNCTION_35_79();
    v33 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x450))(v27, 1, 1, v93, *(&v93 + 1));
  }

  else
  {
    v33 = 0;
  }

  sub_1E327F454(v95, &v93);
  v71 = type metadata accessor for LibraryBarItem();
  if (OUTLINED_FUNCTION_37_77(v71))
  {
    OUTLINED_FUNCTION_36_73();
    v72 = v33;
    v74 = *&v27[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier];
    v73 = *&v27[OBJC_IVAR____TtC8VideosUI14LibraryBarItem_identifier + 8];

    *&v93 = v74;
    *(&v93 + 1) = v73;
    OUTLINED_FUNCTION_35_79();
    v33 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x410))(v27, 0, 1, v93, *(&v93 + 1));
  }

  if (!v33 || (objc_opt_self(), (v75 = swift_dynamicCastObjCClass()) == 0))
  {
LABEL_7:
    OUTLINED_FUNCTION_5_239();
    (*(v34 + 464))();
    if (v33)
    {
      v35 = v33;
      v89();
      OUTLINED_FUNCTION_1_31();
      (*((*v17 & v36) + 0x208))();
      OUTLINED_FUNCTION_1_31();
      (*((*v17 & v37) + 0x1F0))(v91, 0);
      v38 = v90;
      if (v90)
      {
        type metadata accessor for VideosUI();
        v39 = v35;
        static VideosUI.notifyAppearingViewControllerOfTabSwitch(_:)(v33);
      }

      v40 = MEMORY[0x1E69E7D40];
      OUTLINED_FUNCTION_16_89();
      v42 = (*(v41 + 440))();
      if (sub_1E374E8E4(v42, 2))
      {
        v43 = v97;
        OUTLINED_FUNCTION_34_77();
        v44 = OUTLINED_FUNCTION_50();
        v45(v44, v43);
        OUTLINED_FUNCTION_1_31();
        (*((*v40 & v46) + 0x478))();

        objc_opt_self();
        v47 = swift_dynamicCastObjCClass();
        if (v47)
        {
          v48 = v47;
          OUTLINED_FUNCTION_21();
          v50 = *(v49 + 152);
          v51 = v35;
          v50(v48);
          v38 = v90;
        }

        if ((v38 & 1) == 0)
        {
          v52 = MEMORY[0x1E69E7D40];
          OUTLINED_FUNCTION_27_29();
          v54 = (*(v53 + 232))();
          v55 = v96;
          v56 = v97;
          __swift_project_boxed_opaque_existential_1(v95, v96);
          (*(v56 + 16))(v55, v56);
          OUTLINED_FUNCTION_36_3();
          v38 = v90;
          (*((*v52 & v57) + 0x170))();
        }
      }

      else
      {
        OUTLINED_FUNCTION_16_89();
        v70 = (*(v69 + 256))();
        [v70 setSelectedIndex_];
      }

      sub_1E4084F7C(v38 & 1);
    }

    goto LABEL_23;
  }

  v76 = [v75 viewControllers];
  v77 = sub_1E42062B4();

  v78 = sub_1E32AE9B0(v77);
  for (i = 0; ; ++i)
  {
    if (v78 == i)
    {

      v17 = MEMORY[0x1E69E7D40];
      goto LABEL_7;
    }

    if ((v77 & 0xC000000000000001) != 0)
    {
      v80 = MEMORY[0x1E6911E60](i, v77);
    }

    else
    {
      if (i >= *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_42;
      }

      v80 = *(v77 + 8 * i + 32);
    }

    v81 = v80;
    if (__OFADD__(i, 1))
    {
      break;
    }

    swift_getObjectType();
    v82 = OUTLINED_FUNCTION_19_3();
    if (dynamic_cast_existential_1_conditional(v82, v83, &protocol descriptor for TemplateReparentable))
    {
      v85 = v84;
      ObjectType = swift_getObjectType();
      v87 = (*((*MEMORY[0x1E69E7D40] & *v16) + 0x1B8))();
      v88 = sub_1E374E8E4(v87, 1);
      (*(v85 + 64))(v88, ObjectType, v85);
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t sub_1E4084F7C(char a1)
{
  v2 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_85();
  result = (*(v3 + 488))();
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_85();
    (*(v6 + 1064))(&v20);
    if (!v21)
    {
      return sub_1E325F748(&v20, &unk_1ECF2F1D0, &qword_1E42AE148);
    }

    sub_1E3251BE8(&v20, v22);
    v7 = v23;
    v8 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    OUTLINED_FUNCTION_66_4();
    v10 = v9(v7, v8);
    v12 = v11;
    OUTLINED_FUNCTION_67_1();
    v14 = (*((*v2 & v13) + 0x218))();
    if (v15)
    {
      if (v14 == v10 && v15 == v12)
      {
      }

      else
      {
        v17 = sub_1E42079A4();

        if ((v17 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      OUTLINED_FUNCTION_85();
      (*(v18 + 464))();
    }

    else
    {
    }

LABEL_14:
    OUTLINED_FUNCTION_85();
    (*(v19 + 1024))(a1 & 1);
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  return result;
}

uint64_t sub_1E40851B0()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1000))();
}

void sub_1E40852C4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = sub_1E324FBDC();
  (*(v10 + 16))(v14, v15, v8);

  v16 = sub_1E41FFC94();
  v17 = sub_1E4206814();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = *(v7 + 16);

    _os_log_impl(&dword_1E323F000, v16, v17, "RootSplitViewController:: update with bar items count %ld", v18, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v19 = OUTLINED_FUNCTION_57();
  v20(v19);
  sub_1E40824F8();
  v21 = MEMORY[0x1E69E7D40];
  OUTLINED_FUNCTION_27_29();
  v23 = *(v22 + 376);
  v24 = v3;
  v23(v3);
  OUTLINED_FUNCTION_67_1();
  (*((*v21 & v25) + 0x3F0))(v7, v5 & 1);
  OUTLINED_FUNCTION_67_1();
  v27 = (*((*v21 & v26) + 0x3A0))();
  if (v27)
  {
    v28 = *(*v27 + 880);
    v29 = swift_unknownObjectRetain();
    v28(v29, &off_1F5D8F8C0);
  }

  v30 = *(v1 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_libraryManager);
  OUTLINED_FUNCTION_27_29();
  v31 += 86;
  v32 = *v31;
  v33 = (*v31)();
  (*((*v21 & *v30) + 0x110))(v33 & 1);
  OUTLINED_FUNCTION_67_1();
  v35 = (*((*v21 & v34) + 0x1B8))();
  if (sub_1E374E8E4(v35, 1))
  {
    OUTLINED_FUNCTION_24_1();
    v37 = (*(v36 + 256))();
    v38 = [v37 tabBar];

    [v38 setHidden_];
  }

  sub_1E3F76770();
  sub_1E4083278();

  OUTLINED_FUNCTION_36_3();
  v40 = (*((*v21 & v39) + 0x168))();
  if (v40 != 3)
  {
    v41 = v40;
    OUTLINED_FUNCTION_24_1();
    if ((*(v42 + 352))())
    {
      OUTLINED_FUNCTION_24_1();
      if ((*(v43 + 384))())
      {
        OUTLINED_FUNCTION_27_29();
        (*(v44 + 448))(v41);
        OUTLINED_FUNCTION_36_3();
        (*((*v21 & v45) + 0x170))(3);
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E4085894()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1032))();
  if ((v1 & 1) == 0)
  {

    sub_1E408450C();
  }
}

BOOL sub_1E4085A3C()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  (*(v0 + 1072))();
  return (v1 & 1) == 0;
}

uint64_t sub_1E4085AFC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 656);

  v7 = v5(v6);
  v9 = v8;
  v12[0] = a1;
  v12[1] = a2;
  v10 = sub_1E38DA110();
  sub_1E3CA4D00(v12, v7, v9, MEMORY[0x1E69E6158], v10, MEMORY[0x1E69E6168]);

  return v12[2];
}

BOOL sub_1E4085C44()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  v1 = (*(v0 + 440))();

  return sub_1E374E8E4(v1, 1);
}

void sub_1E4085CF0()
{
  sub_1E38DA110();
  v1 = sub_1E42062A4();
  [v0 setViewControllers_];
}

uint64_t sub_1E4085D98()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1048))() & 1;
}

void sub_1E4085E2C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  OUTLINED_FUNCTION_15_94();
  v12 = (*(v11 + 440))();
  v24 = v12;
  v23 = 2;
  sub_1E397C3E4(v12, v13, v14);
  if (sub_1E4205E84())
  {
    OUTLINED_FUNCTION_5_239();
    (*(v15 + 1072))(v3, v1);
    if (v16)
    {
      v17 = sub_1E324FBDC();
      (*(v6 + 16))(v10, v17, v4);

      v18 = sub_1E41FFC94();
      v19 = sub_1E42067F4();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v22 = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_1E3270FC8(v3, v1, &v22);
        _os_log_impl(&dword_1E323F000, v18, v19, "RootSplitViewController: could not find index for %s from side bar selection", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v21);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v10, v4);
    }

    else
    {
      sub_1E408450C();
    }
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E4086098()
{
  OUTLINED_FUNCTION_120_1();
  OUTLINED_FUNCTION_21();
  return (*(v0 + 1152))();
}

uint64_t sub_1E40860F4(uint64_t a1, uint64_t a2)
{
  j__OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_21();
  return (*(v4 + 1168))(a1, a2, v5 & 1);
}

void sub_1E4086180(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  OUTLINED_FUNCTION_21();
  v6 = (*(v5 + 432))();
  if (v6)
  {

    OUTLINED_FUNCTION_4_0();
    v7 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a2;
    aBlock[4] = sub_1E4086A48;
    aBlock[5] = v8;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E378AEA4;
    aBlock[3] = &block_descriptor_161;
    v9 = _Block_copy(aBlock);

    [v3 dismissViewControllerAnimated:1 completion:v9];
    _Block_release(v9);
  }

  else if ((a2 & 0xFFFFFFFFFFFFFFFELL) == 2 && (OUTLINED_FUNCTION_16_89(), v11 = (*(v10 + 440))(), LOBYTE(aBlock[0]) = v11, v21 = 1, sub_1E397C3E4(v11, v12, v13), (sub_1E4205E84() & 1) == 0))
  {
    sub_1E3F7D644(a2);
    OUTLINED_FUNCTION_16_89();
    (*(v19 + 1160))();
  }

  else
  {
    OUTLINED_FUNCTION_12_5();
    v15 = (*(v14 + 440))();
    LOBYTE(aBlock[0]) = v15;
    v21 = 1;
    sub_1E397C3E4(v15, v16, v17);
    if ((sub_1E4205E84() & 1) == 0)
    {
      OUTLINED_FUNCTION_12_5();
      (*(v18 + 1176))();
    }
  }
}

void sub_1E408648C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [v4 vuiView];
  if (!v14)
  {
    __break(1u);
    goto LABEL_36;
  }

  v15 = v14;
  v16 = [v14 window];

  if (!v16)
  {
    return;
  }

  v17 = [v16 windowScene];

  if (!v17)
  {
    return;
  }

  v18 = [v17 interfaceOrientation];

  if (!UIDeviceOrientationIsLandscape(v18))
  {
    return;
  }

  v19 = [objc_opt_self() mainScreen];
  [v19 bounds];
  v21 = v20;
  v23 = v22;

  v24 = [v4 vuiView];
  if (!v24)
  {
LABEL_36:
    __break(1u);
    return;
  }

  v25 = v24;
  [v24 bounds];
  v27 = v26;
  v29 = v28;

  if (v21 == v27 && v23 == v29)
  {
    v31 = a3 == 1 && a2 == 2;
    v32 = v31;
    v33 = MEMORY[0x1E69E7D40];
    if (v31)
    {
      OUTLINED_FUNCTION_12_5();
      if ((*(v34 + 408))())
      {
        return;
      }

      sub_1E324FBDC();
      v35 = OUTLINED_FUNCTION_4_114();
      v36(v35);
      v37 = sub_1E41FFC94();
      v38 = sub_1E4206814();
      if (!OUTLINED_FUNCTION_72_1(v38))
      {
        v32 = 1;
        v40 = 1;
        goto LABEL_33;
      }

      v39 = OUTLINED_FUNCTION_125_0();
      *v39 = 0;
      _os_log_impl(&dword_1E323F000, v37, v12, "RootSplitViewController:: user elected to hide sidebar in landscape orientation", v39, 2u);
      v40 = 1;
    }

    else
    {
      if (a3 != 2 || a2 != 1)
      {
        return;
      }

      OUTLINED_FUNCTION_12_5();
      if (((*(v42 + 408))() & 1) == 0)
      {
        return;
      }

      v43 = sub_1E324FBDC();
      (*(v9 + 16))(v12, v43, v7);
      v37 = sub_1E41FFC94();
      v44 = sub_1E4206814();
      if (!os_log_type_enabled(v37, v44))
      {
        v32 = 0;
        v40 = 0;
        goto LABEL_33;
      }

      v45 = OUTLINED_FUNCTION_125_0();
      *v45 = 0;
      _os_log_impl(&dword_1E323F000, v37, v44, "RootSplitViewController:: user elected to unhide sidebar in landscape orientation", v45, 2u);
      v40 = 0;
    }

    OUTLINED_FUNCTION_6_0();
    v33 = MEMORY[0x1E69E7D40];
LABEL_33:

    v46 = OUTLINED_FUNCTION_74();
    v47(v46);
    (*((*v33 & *v4) + 0x1A0))(v32);
    [v4 setPreferredDisplayMode_];
  }
}

void sub_1E4086940()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    OUTLINED_FUNCTION_21();
    (*(v3 + 440))();
    sub_1E3F788B0();
  }
}

unint64_t sub_1E40869E4()
{
  result = qword_1EE279310;
  if (!qword_1EE279310)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F1F0, &qword_1E42AE160);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE279310);
  }

  return result;
}

void sub_1E4086A48()
{
  Kind = v0[1].Kind;
  Description = v0[1].Description;
  OUTLINED_FUNCTION_5_0(Kind + 16, v16);
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = MEMORY[0x1E69E7D40];
  if (Strong)
  {
    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_16_89();
    (*(v5 + 440))(0);
  }

  if ((Description & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    OUTLINED_FUNCTION_5_0(Kind + 16, v15);
    v6 = swift_unknownObjectWeakLoadStrong();
    if (!v6 || (v7 = v6, v8 = *(v6 + OBJC_IVAR____TtC8VideosUI23RootSplitViewController_manager), v7, OUTLINED_FUNCTION_67_1(), LOBYTE(v7) = (*((*v4 & v9) + 0x1B8))(), v8, v14[0] = v7, v14[31] = 1, sub_1E397C3E4(v10, v11, v12), v0 = &type metadata for RootSplitViewManager.Mode, (sub_1E4205E84() & 1) == 0))
    {
      OUTLINED_FUNCTION_5_0(Kind + 16, v14);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v13 = OUTLINED_FUNCTION_50();
        sub_1E3F7D644(v13);
      }
    }
  }
}

void type metadata accessor for DisplayMode()
{
  if (!qword_1ECF3F3D8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF3F3D8);
    }
  }
}

uint64_t OUTLINED_FUNCTION_53_52(void *a1)
{

  return sub_1E3741090(22100, 0xE200000000000000, a1);
}

uint64_t sub_1E4086C3C()
{
  if (*(v0 + 120))
  {
    v1 = *(v0 + 120);
  }

  else
  {
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BBB724();
    *(v0 + 120) = v1;
  }

  return v1;
}