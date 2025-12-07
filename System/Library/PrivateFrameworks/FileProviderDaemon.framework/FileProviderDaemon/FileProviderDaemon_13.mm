void sub_1CF1C9844(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v2;
    sub_1CF1D348C(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v19;
  }

  else
  {
    v6 = sub_1CEFE863C(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v20 = *v3;
      if (!v9)
      {
        sub_1CF7D2808();
        v10 = v20;
      }

      *(*(v10 + 56) + 8 * v8), v11, v12, v13, v14, v15, v16, v17;
      sub_1CF1D0310(v8, v10);

      *v3 = v10;
    }

    else
    {
    }
  }
}

void sub_1CF1C9978(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t, void), void (*a6)(void))
{
  v7 = v6;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v6;
    sub_1CF1D3624(a1, a2, a3, isUniquelyReferenced_nonNull_native, a4, a5);
    *v6 = v27;
  }

  else
  {
    v15 = sub_1CF7BF2C0(a2, a3);
    if (v16)
    {
      v17 = v15;
      v18 = swift_isUniquelyReferenced_nonNull_native();
      v26 = *v6;
      v28 = *v7;
      if (!v18)
      {
        a6();
        v26 = v28;
      }

      *(*(v26 + 56) + 8 * v17), v19, v20, v21, v22, v23, v24, v25;
      sub_1CF1CF5D4(v17, v26);
      *v7 = v26;
    }
  }
}

uint64_t sub_1CF1C9A6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1B40, &unk_1CF9FCB70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_1CEFCCC44(a1, &qword_1EC4C1B40, &unk_1CF9FCB70);
    v16 = sub_1CF7BF2C0(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v24 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D2BF0();
        v20 = v24;
      }

      sub_1CEFE55D0(*(v20 + 56) + *(v12 + 72) * v18, v10, &unk_1EC4BE360, &qword_1CF9FE650);
      sub_1CF1D0D74(v18, v20, &unk_1EC4BE360, &qword_1CF9FE650);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_1CEFCCC44(v10, &qword_1EC4C1B40, &unk_1CF9FCB70);
  }

  else
  {
    sub_1CEFE55D0(a1, v15, &unk_1EC4BE360, &qword_1CF9FE650);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_1CF1D46B8(v15, a2, a3, v21, sub_1CF7D2BF0, sub_1CF7CAEE8, &unk_1EC4BE360, &qword_1CF9FE650);
    *v4 = v24;
  }

  return result;
}

void sub_1CF1C9D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1CF1D3948(a1, a2, a3, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
  }

  else
  {
    v9 = sub_1CF7BF2C0(a2, a3);
    if (v10)
    {
      v11 = v9;
      v12 = swift_isUniquelyReferenced_nonNull_native();
      v13 = *v3;
      v15 = *v4;
      if (!v12)
      {
        sub_1CF7D2E60();
        v13 = v15;
      }

      sub_1CF1CF5D4(v11, v13);
      *v4 = v13;
    }
  }
}

void sub_1CF1C9DE8(uint64_t a1, char a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v5 = sub_1CEFE863C(a3);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v3;
      v13 = *v4;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D37B4();
        v9 = v13;
      }

      sub_1CF1D0310(v7, v9);
      *v4 = v9;
    }

    else
    {
    }
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    sub_1CF1D3C18(a1, a3, v11);

    *v3 = v14;
  }
}

uint64_t sub_1CF1C9EE0(void *a1, uint64_t a2)
{
  v3 = v2;
  if (*a1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1] == 1;
  }

  if (v5)
  {
    sub_1CEFCCC44(a1, &qword_1EC4BE198, &qword_1CF9FCAE0);
    v8 = sub_1CF7BF380(a2);
    if (v9)
    {
      v10 = v8;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v12 = *v2;
      v14 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_1CF7D3910();
        v12 = v14;
      }

      sub_1CEFF701C(*(v12 + 56) + 16 * v10, &v15);
      sub_1CF1D0790(v10, v12);
      *v3 = v12;
    }

    else
    {
      v15 = xmmword_1CF9FC980;
    }

    return sub_1CEFCCC44(&v15, &qword_1EC4BE198, &qword_1CF9FCAE0);
  }

  else
  {
    sub_1CEFF701C(a1, &v15);
    v6 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    result = sub_1CF1D3D6C(&v15, a2, v6);
    *v2 = v13;
  }

  return result;
}

void sub_1CF1C9FF0(uint64_t a1, void *a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_1CF1D40B0(a1, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v12;
  }

  else
  {
    v6 = sub_1CEFE863C(a2);
    if (v7)
    {
      v8 = v6;
      v9 = swift_isUniquelyReferenced_nonNull_native();
      v10 = *v2;
      v13 = *v3;
      if (!v9)
      {
        sub_1CF7D3C24();
        v10 = v13;
      }

      sub_1CF1D0310(v8, v10);
      *v3 = v10;
    }

    else
    {
    }
  }
}

uint64_t sub_1CF1CA0F4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1C0, &unk_1CFA058B0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v21 - v12;
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_1CEFCCC44(a1, &qword_1EC4BE1C0, &unk_1CFA058B0);
    v14 = sub_1CF7BF380(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF7D49F4();
        v18 = v22;
      }

      sub_1CEFE55D0(*(v18 + 56) + *(v10 + 72) * v16, v8, &unk_1EC4C04B0, &unk_1CF9FCB20);
      sub_1CF1D0FB4(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_1CEFCCC44(v8, &qword_1EC4BE1C0, &unk_1CFA058B0);
  }

  else
  {
    sub_1CEFE55D0(a1, v13, &unk_1EC4C04B0, &unk_1CF9FCB20);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_1CF1D4828(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

uint64_t sub_1CF1CA348(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4DD0, &unk_1CF9FCB30);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04C0, &qword_1CFA07B10);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  if ((*(v12 + 48))(a1, 1, v11, v13) == 1)
  {
    sub_1CEFCCC44(a1, &unk_1EC4C4DD0, &unk_1CF9FCB30);
    v16 = sub_1CF7BF2C0(a2, a3);
    if (v17)
    {
      v18 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v20 = *v4;
      v24 = *v4;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1CF7D4794();
        v20 = v24;
      }

      sub_1CEFE55D0(*(v20 + 56) + *(v12 + 72) * v18, v10, &unk_1EC4C04C0, &qword_1CFA07B10);
      sub_1CF1D0D74(v18, v20, &unk_1EC4C04C0, &qword_1CFA07B10);
      *v4 = v20;
      (*(v12 + 56))(v10, 0, 1, v11);
    }

    else
    {
      (*(v12 + 56))(v10, 1, 1, v11);
    }

    return sub_1CEFCCC44(v10, &unk_1EC4C4DD0, &unk_1CF9FCB30);
  }

  else
  {
    sub_1CEFE55D0(a1, v15, &unk_1EC4C04C0, &qword_1CFA07B10);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v4;
    result = sub_1CF1D46B8(v15, a2, a3, v21, sub_1CF7D4794, sub_1CF7CE3B0, &unk_1EC4C04C0, &qword_1CFA07B10);
    *v4 = v24;
  }

  return result;
}

uint64_t sub_1CF1CA5F0(char a1)
{
  if (a1 <= 0x1Eu)
  {
    if (a1 == 28)
    {
      return 25705;
    }

    if (a1 != 29)
    {
      if (a1 == 30)
      {
        return 0x656D616E656C6966;
      }

      goto LABEL_14;
    }

    return 0x695F746E65726170;
  }

  else if (a1 > 0x20u)
  {
    if (a1 != 33)
    {
      if (a1 == 34)
      {
        return 0xD000000000000012;
      }

      goto LABEL_14;
    }

    return 0x5F746E65746E6F63;
  }

  else
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        return 0xD000000000000010;
      }

LABEL_14:
      v2 = sub_1CF07FC44(a1);
      v4 = v3;
      MEMORY[0x1D3868CC0](v2);
      v4, v5, v6, v7, v8, v9, v10, v11;
      return 0x617461646174656DLL;
    }

    return 0x656C69665F736676;
  }
}

uint64_t sub_1CF1CA75C(char a1)
{
  sub_1CF9E81D8();
  if (a1 <= 0x1Eu)
  {
    switch(a1)
    {
      case 28:
        v2 = 0;
        goto LABEL_18;
      case 29:
        v2 = 1;
        goto LABEL_18;
      case 30:
        v2 = 2;
        goto LABEL_18;
    }
  }

  else if (a1 > 0x20u)
  {
    if (a1 == 33)
    {
      v2 = 6;
      goto LABEL_18;
    }

    if (a1 == 34)
    {
      v2 = 7;
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 == 31)
    {
      v2 = 4;
      goto LABEL_18;
    }

    if (a1 == 32)
    {
      v2 = 5;
LABEL_18:
      MEMORY[0x1D386A470](v2);
      return sub_1CF9E8228();
    }
  }

  MEMORY[0x1D386A470](3);
  sub_1CF07FC44(a1);
  v4 = v3;
  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

void *sub_1CF1CA888()
{
  v0 = sub_1CF1CB714();
  v8 = *v0->tree;
  if (v8)
  {
    v24 = MEMORY[0x1E69E7CC0];
    v9 = v0;
    sub_1CF680BDC(0, v8, 0);
    v17 = v9;
    v18 = v24;
    v19 = *(v24 + 16);
    v20 = 32;
    do
    {
      v21 = *(&v17->super.isa + v20);
      v22 = *(v24 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1CF680BDC((v22 > 1), v19 + 1, 1);
        v17 = v9;
      }

      *(v24 + 16) = v19 + 1;
      *(v24 + v19 + 32) = v21;
      ++v20;
      ++v19;
      --v8;
    }

    while (v8);
    v17, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v0, v1, v2, v3, v4, v5, v6, v7;
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8C90(v18);
  sub_1CF1E8C90(&stru_1F4BEC7F8);
  return &unk_1F4BEC7D0;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1CA9A0()
{
  v0 = sub_1CF1CB714();
  v8 = *v0->tree;
  if (v8)
  {
    v60 = MEMORY[0x1E69E7CC0];
    v9 = v0;
    sub_1CF680BDC(0, v8, 0);
    v17 = v9;
    v18 = v60;
    v19 = *(v60 + 16);
    v20 = 32;
    do
    {
      v21 = *(&v17->super.isa + v20);
      v22 = *(v60 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1CF680BDC((v22 > 1), v19 + 1, 1);
        v17 = v9;
      }

      *(v60 + 16) = v19 + 1;
      *(v60 + v19 + 32) = v21;
      ++v20;
      ++v19;
      --v8;
    }

    while (v8);
    v17, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v0, v1, v2, v3, v4, v5, v6, v7;
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8C90(v18);
  v23 = &unk_1F4BEC820;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_1CF1F68E4(0, unk_1F4BEC830 + 1, 1, &unk_1F4BEC820, v24, v25, v26, v27);
  }

  v29 = *v23->tree;
  v28 = *v23->tester;
  if (v29 >= v28 >> 1)
  {
    v23 = sub_1CF1F68E4((v28 > 1), v29 + 1, 1, v23, v24, v25, v26, v27);
  }

  *v23->tree = v29 + 1;
  *(&v23[1].super.isa + v29) = 33;
  sub_1CEFD57E0(0, &qword_1EDEAB520, 0x1E6967388);
  type metadata accessor for VFSItem(0);
  if (swift_dynamicCastMetatype())
  {
    v37 = v23;
  }

  else
  {
    v38 = v29 + 1;
    v37 = MEMORY[0x1E69E7CC0];
    v39 = 32;
    do
    {
      v40 = *(&v23->super.isa + v39);
      if ((v40 - 28) >= 7)
      {
        v41 = 0xE400000000000000;
        switch(*(&v23->super.isa + v39))
        {
          case 1:
            v41 = 0xEB00000000737365;
            goto LABEL_43;
          case 3:
          case 0x11:
            v41 = 0xE900000000000064;
            goto LABEL_43;
          case 4:
            v41 = 0x80000001CFA2C0E0;
            goto LABEL_43;
          case 5:
            v42 = 1952539743;
            goto LABEL_33;
          case 6:
            v41 = 0x80000001CFA2C100;
            goto LABEL_43;
          case 7:
            v41 = 0xEE00657461645F64;
            goto LABEL_43;
          case 8:
            v41 = 0xE800000000000000;
            goto LABEL_43;
          case 9:
            v41 = 0xED00006B6E61725FLL;
            goto LABEL_43;
          case 0xA:
            v41 = 0xEA00000000006567;
            goto LABEL_43;
          case 0xB:
            v41 = 0xE90000000000006ELL;
            goto LABEL_43;
          case 0xC:
            v41 = 0x80000001CFA2C160;
            goto LABEL_43;
          case 0xD:
            v41 = 0x80000001CFA2C180;
            goto LABEL_43;
          case 0xE:
            v41 = 0x80000001CFA2C1A0;
            goto LABEL_43;
          case 0xF:
            v42 = 2053731167;
LABEL_33:
            v41 = (v42 | 0xED00006500000000);
            goto LABEL_43;
          case 0x10:
            v41 = 0xEC000000656C6261;
            goto LABEL_43;
          case 0x12:
            v41 = 0x80000001CFA2C1E0;
            goto LABEL_43;
          case 0x13:
            v41 = 0x80000001CFA2C200;
            goto LABEL_43;
          case 0x14:
            v41 = 0xEF626F6C625F656ELL;
            goto LABEL_43;
          case 0x15:
            v41 = 0xEB00000000746F6FLL;
            goto LABEL_43;
          case 0x16:
            v41 = 0xED0000746F6F7265;
            goto LABEL_43;
          case 0x17:
            v41 = 0x80000001CFA2C250;
            goto LABEL_43;
          case 0x18:
            v41 = 0xE700000000000000;
            goto LABEL_43;
          case 0x19:
            0xEA0000000000746ELL, v30, v31, v32, v33, v34, v35, v36;
            goto LABEL_16;
          case 0x1A:
            v41 = 0x80000001CFA2C280;
            goto LABEL_43;
          case 0x1B:
            v41 = 0x80000001CFA2C2A0;
            goto LABEL_43;
          default:
LABEL_43:
            v43 = sub_1CF9E8048();
            v41, v44, v45, v46, v47, v48, v49, v50;
            if ((v43 & 1) == 0)
            {
              break;
            }

            goto LABEL_16;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680BDC(0, *v37->tree + 1, 1);
      }

      v52 = *v37->tree;
      v51 = *v37->tester;
      if (v52 >= v51 >> 1)
      {
        sub_1CF680BDC((v51 > 1), v52 + 1, 1);
      }

      *v37->tree = v52 + 1;
      *(&v37[1].super.isa + v52) = v40;
LABEL_16:
      ++v39;
      --v38;
    }

    while (v38);
    v23, v30, v31, v32, v33, v34, v35, v36;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v37 = sub_1CF1F68E4(0, *v37->tree + 1, 1, v37, v53, v54, v55, v56);
  }

  v58 = *v37->tree;
  v57 = *v37->tester;
  if (v58 >= v57 >> 1)
  {
    v37 = sub_1CF1F68E4((v57 > 1), v58 + 1, 1, v37, v53, v54, v55, v56);
  }

  *v37->tree = v58 + 1;
  *(&v37[1].super.isa + v58) = 34;
  return v37;
}

uint64_t sub_1CF1CAFDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1CF1CB714();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE150, &qword_1CF9FCA88);
  v4 = sub_1CEFCCCEC(&qword_1EC4BE158, &qword_1EC4BE150, &qword_1CF9FCA88, MEMORY[0x1E69E6340]);
  v6 = sub_1CF054A5C(sub_1CEFED338, 0, v3, &type metadata for SnapshotItemSQLFields, MEMORY[0x1E69E73E0], v4, MEMORY[0x1E69E7410], v5);
  v2, v7, v8, v9, v10, v11, v12, v13;
  v14 = sub_1CF9E6D98();
  v6, v15, v16, v17, v18, v19, v20, v21;
  v26 = v14;
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CEFCCCEC(&qword_1EC4BE140, &qword_1EC4BE148, &qword_1CF9FC990, MEMORY[0x1E69E6328]);
    sub_1CF9E6E08();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CF9E6E18();
  }

  type metadata accessor for VFSItem(0);
  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CEFCCCEC(&qword_1EC4BE160, &qword_1EC4BE148, &qword_1CF9FC990, MEMORY[0x1E69E6350]);
    v26 = sub_1CF9E7A08();
  }

  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion(0, AssociatedTypeWitness, AssociatedConformanceWitness, v24);
  if (!swift_dynamicCastMetatype())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    sub_1CF9E6E18();
  }

  return v26;
}

void *sub_1CF1CB300()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0x6465727574706143, 0xEF746E65746E6F43), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE168, &unk_1CF9FCA90);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEB128;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE168, &unk_1CF9FCA90);
    *&v7 = &unk_1F4BEB128;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0x6465727574706143, 0xEF746E65746E6F43);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CB510()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000012, 0x80000001CFA2EC80), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE178, &unk_1CF9FCAA0);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEB0B0;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE178, &unk_1CF9FCAA0);
    *&v7 = &unk_1F4BEB0B0;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000012, 0x80000001CFA2EC80);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

_BYTE *sub_1CF1CB714()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0x6174654D6D657449, 0xEC00000061746164), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, v5);
    sub_1CEFE9EB8(v5, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE150, &qword_1CF9FCA88);
    swift_dynamicCast();
    v3 = v6;
  }

  else
  {
    swift_endAccess();
    v3 = byte_1F4BEAD78;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE150, &qword_1CF9FCA88);
    *&v7 = byte_1F4BEAD78;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0x6174654D6D657449, 0xEC00000061746164);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CB920()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0x746F726854626F4ALL, 0xEB00000000656C74), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF760, &qword_1CF9FCBB0);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEAD50;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BF760, &qword_1CF9FCBB0);
    *&v7 = &unk_1F4BEAD50;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0x746F726854626F4ALL, 0xEB00000000656C74);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CBB20()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000015, 0x80000001CFA2ED60), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1CF1CA888();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    *&v7 = v3;
    swift_beginAccess();

    sub_1CF1C8750(&v7, 0xD000000000000015, 0x80000001CFA2ED60);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CBD20()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B0, &unk_1CF9FF000);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v10 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {
    v2, v3, v4, v5, v6, v7, v8, v9;
    goto LABEL_9;
  }

  v11 = sub_1CEFE4328(v0, v2);
  v13 = v12;
  v2, v12, v14, v15, v16, v17, v18, v19;
  if ((v13 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v20 = sub_1CF1CD16C();
    v21 = sub_1CF9E82E8();
    v23 = v22;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B8, &unk_1CF9FCB10);
    *&v27 = v20;
    swift_beginAccess();

    sub_1CF1C8750(&v27, v21, v23);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v10[7] + 32 * v11, &v27);
  swift_endAccess();
  sub_1CEFE9EB8(&v27, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1B8, &unk_1CF9FCB10);
  swift_dynamicCast();
  v20 = v25;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

void *sub_1CF1CBF6C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000036, 0x80000001CFA2ECE0), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D8, &qword_1CF9FCBA8);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEC870;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D8, &qword_1CF9FCBA8);
    *&v7 = &unk_1F4BEC870;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000036, 0x80000001CFA2ECE0);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CC164()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD000000000000036, 0x80000001CFA2ED20), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E0, &qword_1CF9FCBB8);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = &unk_1F4BEC898;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1E0, &qword_1CF9FCBB8);
    *&v7 = &unk_1F4BEC898;
    swift_beginAccess();
    sub_1CF1C8750(&v7, 0xD000000000000036, 0x80000001CFA2ED20);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

void *sub_1CF1CC35C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2) && (v1 = sub_1CEFE4328(0xD00000000000001FLL, 0x80000001CFA2ECC0), (v2 & 1) != 0))
  {
    sub_1CEFD1104(v0[7] + 32 * v1, &v7);
    swift_endAccess();
    sub_1CEFE9EB8(&v7, &v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
    swift_dynamicCast();
    v3 = v5;
  }

  else
  {
    swift_endAccess();
    v3 = sub_1CF1CD628();
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
    *&v7 = v3;
    swift_beginAccess();

    sub_1CF1C8750(&v7, 0xD00000000000001FLL, 0x80000001CFA2ECC0);
    swift_endAccess();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v3;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1CC55C()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4E60, &unk_1CF9FCAD0);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v10 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {
    v2, v3, v4, v5, v6, v7, v8, v9;
    goto LABEL_9;
  }

  v11 = sub_1CEFE4328(v0, v2);
  v13 = v12;
  v2, v12, v14, v15, v16, v17, v18, v19;
  if ((v13 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v20 = sub_1CF1CD278();
    v21 = sub_1CF9E82E8();
    v23 = v22;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
    *&v27 = v20;
    swift_beginAccess();

    sub_1CF1C8750(&v27, v21, v23);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v10[7] + 32 * v11, &v27);
  swift_endAccess();
  sub_1CEFE9EB8(&v27, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE190, &qword_1CFA038F0);
  swift_dynamicCast();
  v20 = v25;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1CC7A8()
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFBD0, &unk_1CF9FCBC0);
  v0 = sub_1CF9E82E8();
  v2 = v1;
  swift_beginAccess();
  v10 = off_1EDEADD38;
  if (!*(off_1EDEADD38 + 2))
  {
    v2, v3, v4, v5, v6, v7, v8, v9;
    goto LABEL_9;
  }

  v11 = sub_1CEFE4328(v0, v2);
  v13 = v12;
  v2, v12, v14, v15, v16, v17, v18, v19;
  if ((v13 & 1) == 0)
  {
LABEL_9:
    swift_endAccess();
    v20 = sub_1CF1CA9A0();
    v21 = sub_1CF9E82E8();
    v23 = v22;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
    *&v27 = v20;
    swift_beginAccess();

    sub_1CF1C8750(&v27, v21, v23);
    swift_endAccess();
    goto LABEL_10;
  }

  sub_1CEFD1104(v10[7] + 32 * v11, &v27);
  swift_endAccess();
  sub_1CEFE9EB8(&v27, &v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE148, &qword_1CF9FC990);
  swift_dynamicCast();
  v20 = v25;
LABEL_10:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v20;
}

uint64_t sub_1CF1CCB0C(uint64_t *a1, uint64_t *a2)
{
  if (qword_1EDEAB730 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  os_unfair_recursive_lock_lock_with_options();
  swift_endAccess();
  if (qword_1EDEADD30 != -1)
  {
    swift_once();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = sub_1CF9E82E8();
  v6 = v5;
  swift_beginAccess();
  v14 = off_1EDEADD38;
  if (*(off_1EDEADD38 + 2))
  {
    v15 = sub_1CEFE4328(v4, v6);
    v17 = v16;
    v6, v16, v18, v19, v20, v21, v22, v23;
    if (v17)
    {
      sub_1CEFD1104(v14[7] + 32 * v15, &v31);
      swift_endAccess();
      sub_1CEFE9EB8(&v31, &v30);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A8, &qword_1CF9FCAE8);
      swift_dynamicCast();
      v24 = v29;
      goto LABEL_12;
    }
  }

  else
  {
    v6, v7, v8, v9, v10, v11, v12, v13;
  }

  swift_endAccess();
  if (qword_1EDEAE328 != -1)
  {
    swift_once();
  }

  v24 = qword_1EDEBBD68;

  v25 = sub_1CF9E82E8();
  v27 = v26;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A8, &qword_1CF9FCAE8);
  *&v31 = v24;
  swift_beginAccess();

  sub_1CF1C8750(&v31, v25, v27);
  swift_endAccess();
LABEL_12:
  swift_beginAccess();
  os_unfair_recursive_lock_unlock();
  swift_endAccess();
  return v24;
}

uint64_t sub_1CF1CCD90(unsigned __int8 *a1)
{
  v1 = *a1;
  if ((v1 - 28) <= 6)
  {
    return 1;
  }

  if (sub_1CF07FC44(v1) == 0x756F635F6B6E696CLL && v3 == 0xEA0000000000746ELL)
  {
    v3, v3, v4, v5, v6, v7, v8, v9;
    v20 = 0;
  }

  else
  {
    v11 = v3;
    v12 = sub_1CF9E8048();
    v11, v13, v14, v15, v16, v17, v18, v19;
    v20 = v12 ^ 1;
  }

  return v20 & 1;
}

uint64_t sub_1CF1CCE40(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E6530];
  }

  v7[0] = a1;
  v7[3] = v2;
  v3 = sub_1CEFF8EA0(v7);
  v5 = v4;
  sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    return v3;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1CCF08(uint64_t a1, char a2)
{
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v7[1] = 0;
    v7[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E6810];
  }

  v7[0] = a1;
  v7[3] = v2;
  v3 = sub_1CEFF8EA0(v7);
  v5 = v4;
  sub_1CEFCCC44(v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v5)
  {
    return v3;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF1CCFD0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF1CAFDC(*(a1 + 16), *(a1 + 24));
  *a2 = result;
  return result;
}

unint64_t sub_1CF1CD000(uint64_t a1)
{
  *(a1 + 8) = sub_1CF1CD030();
  result = sub_1CF1CD084();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF1CD030()
{
  result = qword_1EDEACB60;
  if (!qword_1EDEACB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB60);
  }

  return result;
}

unint64_t sub_1CF1CD084()
{
  result = qword_1EDEACB70;
  if (!qword_1EDEACB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB70);
  }

  return result;
}

unint64_t sub_1CF1CD0DC()
{
  result = qword_1EDEACB68;
  if (!qword_1EDEACB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEACB68);
  }

  return result;
}

uint64_t sub_1CF1CD130(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void *sub_1CF1CD16C()
{
  if (qword_1EDEAE328 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDEBBD68;
  v1 = *(qword_1EDEBBD68 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1CF680C0C(0, v1, 0);
    v2 = v9;
    v3 = (v0 + 32);
    v4 = *v9->tree;
    do
    {
      v6 = *v3++;
      v5 = v6;
      v10 = v2;
      v7 = *v2->tester;
      if (v4 >= v7 >> 1)
      {
        sub_1CF680C0C((v7 > 1), v4 + 1, 1);
        v2 = v10;
      }

      *v2->tree = v4 + 1;
      *(&v2[1].super.isa + v4++) = v5;
      --v1;
    }

    while (v1);
  }

  sub_1CF1E8CA4(v2);
  return &unk_1F4BEC848;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF1CD278()
{
  sub_1CF1E8CCC(&stru_1F4BEC988);
  v0 = &unk_1F4BEC960;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v0 = sub_1CF1F6958(0, unk_1F4BEC970 + 1, 1, &unk_1F4BEC960, v1, v2, v3, v4);
  }

  v6 = *v0->tree;
  v5 = *v0->tester;
  v7 = v5 >> 1;
  v8 = v6 + 1;
  if (v5 >> 1 <= v6)
  {
    v0 = sub_1CF1F6958((v5 > 1), v6 + 1, 1, v0, v1, v2, v3, v4);
    v5 = *v0->tester;
    v7 = v5 >> 1;
  }

  *v0->tree = v8;
  *(&v0[1].super.isa + v6) = -60;
  v9 = v6 + 2;
  if (v7 < v9)
  {
    v0 = sub_1CF1F6958((v5 > 1), v9, 1, v0, v1, v2, v3, v4);
  }

  *v0->tree = v9;
  *(&v0[1].super.isa + v8) = -59;
  v67 = v0;
  v10 = sub_1CF1CB300();
  v18 = *v10->tree;
  if (v18)
  {
    v65 = MEMORY[0x1E69E7CC0];
    v19 = v10;
    sub_1CF680C6C(0, v18, 0);
    v27 = v19;
    v28 = v65;
    v29 = *(v65 + 16);
    v30 = 32;
    do
    {
      v31 = *(&v27->super.isa + v30);
      v32 = *(v65 + 24);
      if (v29 >= v32 >> 1)
      {
        sub_1CF680C6C((v32 > 1), v29 + 1, 1);
        v27 = v19;
      }

      *(v65 + 16) = v29 + 1;
      *(v65 + v29 + 32) = v31;
      ++v30;
      ++v29;
      --v18;
    }

    while (v18);
    v27, v20, v21, v22, v23, v24, v25, v26;
  }

  else
  {
    v10, v11, v12, v13, v14, v15, v16, v17;
    v28 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v28);
  v33 = sub_1CF03D7E8();
  v41 = *(v33 + 2);
  v42 = MEMORY[0x1E69E7CC0];
  v64 = v33;
  if (v41)
  {
    v43 = (v33 + 32);
    while (1)
    {
      v45 = *v43++;
      v44 = v45;
      if (!v45)
      {
        break;
      }

      if (v44 == 1)
      {
        v46 = 0x80000001CFA2C3F0;
        goto LABEL_22;
      }

      0x80000001CFA2C410, v34, v35, v36, v37, v38, v39, v40;
LABEL_17:
      if (!--v41)
      {
        goto LABEL_28;
      }
    }

    v46 = 0xE500000000000000;
LABEL_22:
    v47 = sub_1CF9E8048();
    v46, v48, v49, v50, v51, v52, v53, v54;
    if ((v47 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680BAC(0, *(v42 + 16) + 1, 1);
      }

      v56 = *(v42 + 16);
      v55 = *(v42 + 24);
      if (v56 >= v55 >> 1)
      {
        sub_1CF680BAC((v55 > 1), v56 + 1, 1);
      }

      *(v42 + 16) = v56 + 1;
      *(v42 + v56 + 32) = v44;
    }

    goto LABEL_17;
  }

LABEL_28:
  v64, v34, v35, v36, v37, v38, v39, v40;
  v57 = *(v42 + 16);
  if (v57)
  {
    v66 = MEMORY[0x1E69E7CC0];
    sub_1CF680C6C(0, v57, 0);
    v58 = v66;
    v59 = *(v66 + 16);
    v60 = 32;
    do
    {
      v61 = *(v42 + v60);
      v62 = *(v66 + 24);
      if (v59 >= v62 >> 1)
      {
        sub_1CF680C6C((v62 > 1), v59 + 1, 1);
      }

      *(v66 + 16) = v59 + 1;
      *(v66 + v59 + 32) = v61 | 0x40;
      ++v60;
      ++v59;
      --v57;
    }

    while (v57);
  }

  else
  {

    v58 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v58);
  return v67;
}

void *sub_1CF1CD628()
{
  sub_1CF1E8CCC(&stru_1F4BEC8E8);
  sub_1CF1E8CCC(&stru_1F4BEC910);
  sub_1CF1E8CCC(&stru_1F4BEC938);
  v0 = sub_1CF1CB300();
  v8 = *v0->tree;
  if (v8)
  {
    v55 = MEMORY[0x1E69E7CC0];
    v9 = v0;
    sub_1CF680C6C(0, v8, 0);
    v17 = v9;
    v18 = v55;
    v19 = *(v55 + 16);
    v20 = 32;
    do
    {
      v21 = *(&v17->super.isa + v20);
      v22 = *(v55 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1CF680C6C((v22 > 1), v19 + 1, 1);
        v17 = v9;
      }

      *(v55 + 16) = v19 + 1;
      *(v55 + v19 + 32) = v21;
      ++v20;
      ++v19;
      --v8;
    }

    while (v8);
    v17, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v0, v1, v2, v3, v4, v5, v6, v7;
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v18);
  v23 = sub_1CF03D7E8();
  v31 = *(v23 + 2);
  v32 = MEMORY[0x1E69E7CC0];
  v54 = v23;
  if (v31)
  {
    v33 = (v23 + 32);
    while (1)
    {
      v35 = *v33++;
      v34 = v35;
      if (!v35)
      {
        break;
      }

      if (v34 == 1)
      {
        v36 = 0x80000001CFA2C3F0;
        goto LABEL_16;
      }

      0x80000001CFA2C410, v24, v25, v26, v27, v28, v29, v30;
LABEL_11:
      if (!--v31)
      {
        goto LABEL_22;
      }
    }

    v36 = 0xE500000000000000;
LABEL_16:
    v37 = sub_1CF9E8048();
    v36, v38, v39, v40, v41, v42, v43, v44;
    if ((v37 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1CF680BAC(0, *(v32 + 16) + 1, 1);
      }

      v46 = *(v32 + 16);
      v45 = *(v32 + 24);
      if (v46 >= v45 >> 1)
      {
        sub_1CF680BAC((v45 > 1), v46 + 1, 1);
      }

      *(v32 + 16) = v46 + 1;
      *(v32 + v46 + 32) = v34;
    }

    goto LABEL_11;
  }

LABEL_22:
  v54, v24, v25, v26, v27, v28, v29, v30;
  v47 = *(v32 + 16);
  if (v47)
  {
    v56 = MEMORY[0x1E69E7CC0];
    sub_1CF680C6C(0, v47, 0);
    v48 = v56;
    v49 = *(v56 + 16);
    v50 = 32;
    do
    {
      v51 = *(v32 + v50);
      v52 = *(v56 + 24);
      if (v49 >= v52 >> 1)
      {
        sub_1CF680C6C((v52 > 1), v49 + 1, 1);
      }

      *(v56 + 16) = v49 + 1;
      *(v56 + v49 + 32) = v51 | 0x40;
      ++v50;
      ++v49;
      --v47;
    }

    while (v47);
  }

  else
  {

    v48 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CCC(v48);
  return &unk_1F4BEC8C0;
}

uint64_t sub_1CF1CD93C()
{
  v0 = sub_1CF1CC35C();
  v8 = *v0->tree;
  if (v8)
  {
    v64 = MEMORY[0x1E69E7CC0];
    v9 = v0;
    sub_1CF680C3C(0, v8, 0);
    v17 = v9;
    v18 = v64;
    v19 = *(v64 + 16);
    v20 = 32;
    do
    {
      v21 = *(&v17->super.isa + v20);
      v22 = *(v64 + 24);
      if (v19 >= v22 >> 1)
      {
        sub_1CF680C3C((v22 > 1), v19 + 1, 1);
        v17 = v9;
      }

      *(v64 + 16) = v19 + 1;
      *(v64 + v19 + 32) = v21;
      ++v20;
      ++v19;
      --v8;
    }

    while (v8);
    v17, v10, v11, v12, v13, v14, v15, v16;
  }

  else
  {
    v0, v1, v2, v3, v4, v5, v6, v7;
    v18 = MEMORY[0x1E69E7CC0];
  }

  v23 = sub_1CF1CC55C();
  v31 = v23;
  v32 = *v23->tree;
  v33 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v34 = v23 + 1;
    v35 = MEMORY[0x1E69E7CC0];
    do
    {
      isa_low = LOBYTE(v34->super.isa);
      v34 = (v34 + 1);
      v36 = isa_low;
      if (isa_low <= 0xC5)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v35 = sub_1CF1F6944(0, *v35->tree + 1, 1, v35, v27, v28, v29, v30);
        }

        v39 = *v35->tree;
        v38 = *v35->tester;
        if (v39 >= v38 >> 1)
        {
          v35 = sub_1CF1F6944((v38 > 1), v39 + 1, 1, v35, v27, v28, v29, v30);
        }

        *v35->tree = v39 + 1;
        *(&v35[1].super.isa + v39) = v36 | 0x10;
      }

      --v32;
    }

    while (v32);
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v31, v24, v25, v26, v27, v28, v29, v30;
  sub_1CF1E8CB8(v35);
  sub_1CF1E8CB8(&stru_1F4BEC9B0);
  v40 = sub_1CF1CB510();
  v48 = *v40->tree;
  if (v48)
  {
    v49 = v40;
    sub_1CF680C3C(0, v48, 0);
    v57 = v49;
    v58 = v33;
    v59 = *(v33 + 16);
    v60 = 32;
    do
    {
      v61 = *(&v57->super.isa + v60);
      v62 = *(v33 + 24);
      if (v59 >= v62 >> 1)
      {
        sub_1CF680C3C((v62 > 1), v59 + 1, 1);
        v57 = v49;
      }

      *(v33 + 16) = v59 + 1;
      *(v33 + v59 + 32) = v61 | 0x20;
      ++v60;
      ++v59;
      --v48;
    }

    while (v48);
    v57, v50, v51, v52, v53, v54, v55, v56;
  }

  else
  {
    v40, v41, v42, v43, v44, v45, v46, v47;
    v58 = MEMORY[0x1E69E7CC0];
  }

  sub_1CF1E8CB8(v58);
  return v18;
}

uint64_t __swift_deallocate_boxed_opaque_existential_0(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1D386CDC0);
  }

  return result;
}

void sub_1CF1CDC08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v46 - v3;
  sub_1CEFCCBDC(v1, &v46 - v3, &unk_1EC4BFCC0, &unk_1CF9FCB50);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v14 = *v4;
        v15 = v4[8];
        MEMORY[0x1D386A470](8);
        if (v15)
        {
          if (v15 == 1)
          {
            MEMORY[0x1D386A470](1);
            MEMORY[0x1D386A4A0](v14);
          }

          else
          {
            if (v14)
            {
              v28 = 3;
            }

            else
            {
              v28 = 2;
            }

            MEMORY[0x1D386A470](v28);
          }
        }

        else
        {
          MEMORY[0x1D386A470](0);
          sub_1CF9E8208();
        }

        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFEC0, &unk_1CFA05590);
        v32 = &unk_1EC4BEC00;
        v33 = &unk_1CF9FCB60;
        v34 = &v4[*(v35 + 48)];
        goto LABEL_64;
      }

      v10 = *v4;
      v11 = v4[8];
      MEMORY[0x1D386A470](7);
      if (!v11)
      {
LABEL_10:
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
        return;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v10 = *v4;
      v11 = v4[8];
      MEMORY[0x1D386A470](5);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v10 = *v4;
      v11 = v4[8];
      MEMORY[0x1D386A470](6);
      if (!v11)
      {
        goto LABEL_10;
      }
    }

    if (v11 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v10);
    }

    else if (v10)
    {
      MEMORY[0x1D386A470](3);
    }

    else
    {
      MEMORY[0x1D386A470](2);
    }

    return;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F90, &unk_1CF9FCB80);
      v7 = *&v4[v6[16]];

      v8 = *v4;
      v9 = v4[8];
      MEMORY[0x1D386A470](1);
      if (v9)
      {
        if (v9 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v8);
        }

        else
        {
          if (v8)
          {
            v26 = 3;
          }

          else
          {
            v26 = 2;
          }

          MEMORY[0x1D386A470](v26);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      v31 = v6[12];
      MEMORY[0x1D386A470](v7);
      v32 = &qword_1EC4C1B40;
      v33 = &unk_1CF9FCB70;
      v34 = &v4[v31];
      goto LABEL_64;
    }

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCE0, &unk_1CFA05400);
    v17 = *&v4[v16[24]];
    v18 = *&v4[v16[28]];

    v19 = *v4;
    v20 = v4[8];
    MEMORY[0x1D386A470](2);
    if (v20)
    {
      if (v20 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v19);
      }

      else
      {
        if (v19)
        {
          v29 = 3;
        }

        else
        {
          v29 = 2;
        }

        MEMORY[0x1D386A470](v29);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    v36 = v16[12];
    v37 = v16[16];
    v38 = &v4[v16[20]];
    MEMORY[0x1D386A470](v17 & 0xFFFFFDFFFFFFBFFFLL);
    MEMORY[0x1D386A470](v18);
    sub_1CF1D56D0(*v38, *(v38 + 1), *(v38 + 2), *(v38 + 3), *(v38 + 4), *(v38 + 5), *(v38 + 6), *(v38 + 7));

LABEL_63:
    v32 = &qword_1EC4C1B40;
    v33 = &unk_1CF9FCB70;
    v34 = &v4[v36];
LABEL_64:
    sub_1CEFCCC44(v34, v32, v33);
    return;
  }

  if (EnumCaseMultiPayload != 2)
  {
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4FA0, &unk_1CFA19770);
    v22 = *&v4[v21[16] + 8];
    v23 = *&v4[v21[20]];
    v24 = *v4;
    v25 = v4[8];
    MEMORY[0x1D386A470](4);
    if (v25)
    {
      if (v25 == 1)
      {
        MEMORY[0x1D386A470](1);
        MEMORY[0x1D386A4A0](v24);
      }

      else
      {
        if (v24)
        {
          v30 = 3;
        }

        else
        {
          v30 = 2;
        }

        MEMORY[0x1D386A470](v30);
      }
    }

    else
    {
      MEMORY[0x1D386A470](0);
      sub_1CF9E8208();
    }

    v36 = v21[12];
    sub_1CF9E69C8();
    v22, v39, v40, v41, v42, v43, v44, v45;
    MEMORY[0x1D386A470](v23);
    goto LABEL_63;
  }

  v12 = *v4;
  v13 = v4[8];
  MEMORY[0x1D386A470](3);
  if (v13)
  {
    if (v13 == 1)
    {
      MEMORY[0x1D386A470](1);
      MEMORY[0x1D386A4A0](v12);
    }

    else
    {
      if (v12)
      {
        v27 = 3;
      }

      else
      {
        v27 = 2;
      }

      MEMORY[0x1D386A470](v27);
    }
  }

  else
  {
    MEMORY[0x1D386A470](0);
    sub_1CF9E8208();
  }

  sub_1CF1D56D0(*(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6), *(v4 + 7), *(v4 + 8), *(v4 + 9), *(v4 + 10));
}

void sub_1CF1CE0C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v85 - v3;
  sub_1CEFCCBDC(v1, &v85 - v3, &unk_1EC4BFD70, &qword_1CFA12AC0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v31 = *v4;
        MEMORY[0x1D386A470](8);
        _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v33 = v32;
        sub_1CF9E69C8();

        v33, v34, v35, v36, v37, v38, v39, v40;
        return;
      }

      v19 = *v4;
      v20 = 7;
    }

    else
    {
      v19 = *v4;
      if (EnumCaseMultiPayload == 4)
      {
        v20 = 5;
      }

      else
      {
        v20 = 6;
      }
    }

    MEMORY[0x1D386A470](v20);
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v77 = v76;
    sub_1CF9E69C8();

    v77, v78, v79, v80, v81, v82, v83, v84;
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {

      v21 = *v4;
      MEMORY[0x1D386A470](3);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v23 = v22;
      sub_1CF9E69C8();

      v23, v24, v25, v26, v27, v28, v29, v30;
      sub_1CF1D5750(*(v4 + 3), *(v4 + 4), *(v4 + 5), *(v4 + 6), *(v4 + 7), *(v4 + 8), *(v4 + 9), *(v4 + 10), *(v4 + 11), *(v4 + 12), *(v4 + 13), *(v4 + 14));
    }

    else
    {
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1D0, &unk_1CFA18150);
      v56 = v55[12];
      v57 = *&v4[v55[16] + 8];
      v58 = *&v4[v55[20]];
      v59 = *v4;
      MEMORY[0x1D386A470](4);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v61 = v60;
      sub_1CF9E69C8();
      v61, v62, v63, v64, v65, v66, v67, v68;
      sub_1CF9E69C8();
      v57, v69, v70, v71, v72, v73, v74, v75;
      MEMORY[0x1D386A470](v58);

      sub_1CEFCCC44(&v4[v56], &unk_1EC4BFBB0, &qword_1CF9FCB90);
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDA0, &qword_1CF9FCB98);
      v7 = v41[12];
      v42 = &v4[v41[20]];
      v43 = *&v4[v41[24]];
      v44 = *&v4[v41[28]];

      v45 = *v4;
      MEMORY[0x1D386A470](2);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v47 = v46;
      sub_1CF9E69C8();
      v47, v48, v49, v50, v51, v52, v53, v54;
      MEMORY[0x1D386A470](v43 & 0xFFFFFDFFFFFFBFFFLL);
      MEMORY[0x1D386A470](v44);

      sub_1CF1D5750(*v42, *(v42 + 1), *(v42 + 2), *(v42 + 3), *(v42 + 4), *(v42 + 5), *(v42 + 6), *(v42 + 7), *(v42 + 8), *(v42 + 9), *(v42 + 10), *(v42 + 11));
    }

    else
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BFDC0, &qword_1CF9FCBA0);
      v7 = v6[12];
      v8 = *&v4[v6[16]];

      v9 = *v4;
      MEMORY[0x1D386A470](1);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
      sub_1CF9E69C8();
      v11, v12, v13, v14, v15, v16, v17, v18;
      MEMORY[0x1D386A470](v8);
    }

    sub_1CEFCCC44(&v4[v7], &unk_1EC4BFBB0, &qword_1CF9FCB90);
  }
}

double sub_1CF1CE4A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1CEFE4328(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CF1E0();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    sub_1CEFE9EB8((*(v17 + 56) + 32 * v8), a3);
    sub_1CF1CEB88(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_1CF1CE544@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_1CEFE4328(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v19 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CF52C();
      v17 = v19;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    *a3 = *(*(v17 + 56) + 16 * v8);
    sub_1CF1CED38(v8, v17);
    *v4 = v17;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_1CF9F4E20;
  }

  return result;
}

double sub_1CF1CE5F4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = sub_1CEFE863C(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CF82C();
      v9 = v11;
    }

    sub_1CEFE9EB8((*(v9 + 56) + 32 * v7), a2);
    sub_1CF1CEEE8(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

double sub_1CF1CE694@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1CF7BF2C0(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v17 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7CFE1C();
      v10 = v17;
    }

    v11 = *(v10 + 56) + 32 * v8;
    v12 = *v11;
    v13 = *(v11 + 8);
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    *a3 = v12;
    *(a3 + 8) = v13;
    *(a3 + 16) = v15;
    *(a3 + 24) = v14;
    sub_1CF1CF3E0(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1CF1CE738(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1CF7BF2C0(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7CFFA8();
    v8 = v12;
  }

  v9 = v6;
  v10 = *(*(v8 + 56) + 8 * v6);
  sub_1CF1CF5D4(v9, v8);
  *v3 = v8;
  return v10;
}

uint64_t sub_1CF1CE7C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1CEFE4328(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v27 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CF7D0464();
      v17 = v27;
    }

    *(*(v17 + 48) + 16 * v8 + 8), v10, v11, v12, v13, v14, v15, v16;
    v18 = *(v17 + 56);
    v19 = sub_1CF9E5A58();
    v26 = *(v19 - 8);
    (*(v26 + 32))(a3, v18 + *(v26 + 72) * v8, v19);
    sub_1CF1CF978(v8, v17);
    *v4 = v17;
    v20 = *(v26 + 56);
    v21 = a3;
    v22 = 0;
    v23 = v19;
  }

  else
  {
    v24 = sub_1CF9E5A58();
    v20 = *(*(v24 - 8) + 56);
    v23 = v24;
    v21 = a3;
    v22 = 1;
  }

  return v20(v21, v22, 1, v23);
}

uint64_t sub_1CF1CE930(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CEFE863C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D20D0();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 24 * v5);
  sub_1CF1CFF30(v5, v7);
  *v2 = v7;
  return v8;
}

uint64_t sub_1CF1CE9E8(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CF7BF520(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v12 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D4234();
    v7 = v12;
  }

  v8 = *(v7 + 48);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  sub_1CEFCCC44(v8 + *(*(v9 - 8) + 72) * v5, &unk_1EC4BF650, &unk_1CF9FCB40);
  v10 = *(*(v7 + 56) + 8 * v5);
  sub_1CF1D0920(v5, v7);
  *v2 = v7;
  return v10;
}

uint64_t sub_1CF1CEABC(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1CEFE863C(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v10 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1CF7D4DB4();
    v7 = v10;
  }

  v8 = *(*(v7 + 56) + 32 * v5);
  sub_1CF1D1178(v5, v7);
  *v2 = v7;
  return v8;
}

void sub_1CF1CEB88(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v11 = sub_1CF9E8228();
      v10, v12, v13, v14, v15, v16, v17, v18;
      v19 = v11 & v7;
      if (v3 >= v8)
      {
        if (v19 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v19 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v19)
      {
LABEL_10:
        v20 = *(a2 + 48);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
        }

        v23 = *(a2 + 56);
        v24 = (v23 + 32 * v3);
        v25 = (v23 + 32 * v6);
        if (v3 != v6 || v24 >= v25 + 2)
        {
          v9 = v25[1];
          *v24 = *v25;
          v24[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }
}

void sub_1CF1CED38(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v10 = sub_1CF9E8228();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 16 * v3);
        v24 = (v22 + 16 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1CF1CEEE8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v12 = v11;
      sub_1CF9E81D8();
      v13 = v10;
      sub_1CF9E69C8();
      v14 = sub_1CF9E8228();
      v12, v15, v16, v17, v18, v19, v20, v21;

      v22 = v14 & v7;
      if (v3 >= v8)
      {
        if (v22 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v22 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v22)
      {
LABEL_10:
        v23 = *(a2 + 48);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
        }

        v26 = *(a2 + 56);
        v27 = (v26 + 32 * v3);
        v28 = (v26 + 32 * v6);
        if (v3 != v6 || v27 >= v28 + 2)
        {
          v9 = v28[1];
          *v27 = *v28;
          v27[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

unint64_t sub_1CF1CF0B0(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + v6);
      sub_1CF9E81D8();
      if (v9 <= 3)
      {
        if (v9 > 1)
        {
          v10 = (v9 == 2 ? 0xEC00000044495555 : 0xEF4449746E657645);
        }

        else
        {
          v10 = (v9 ? 0x80000001CFA2C2C0 : 0xE600000000000000);
        }
      }

      else if (v9 <= 5)
      {
        v10 = (v9 == 4 ? 0x80000001CFA2C2F0 : 0xED00006E6F697372);
      }

      else if (v9 == 6)
      {
        v10 = 0xEC0000007367616CLL;
      }

      else
      {
        v10 = (v9 == 7 ? 0xEF6574617453676ELL : 0xEF6E6F6974617265);
      }

      sub_1CF9E69C8();
      v10, v11, v12, v13, v14, v15, v16, v17;
      result = sub_1CF9E8228();
      v18 = result & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_27;
      }

LABEL_28:
      v19 = *(a2 + 48);
      v20 = (v19 + v3);
      v21 = (v19 + v6);
      if (v3 != v6 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(type metadata accessor for SyncState(0) - 8) + 72);
      v24 = v23 * v3;
      result = v22 + v23 * v3;
      v25 = v23 * v6;
      v26 = v22 + v23 * v6 + v23;
      if (v24 < v25 || result >= v26)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 == v25)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_5;
    }

LABEL_27:
    if (v3 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_28;
  }

LABEL_37:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1CF1CF3E0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = 16 * v6;
      v11 = *(a2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1CF9E81D8();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v12);
        }

        else
        {
          if (v12)
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          MEMORY[0x1D386A470](v14);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v15)
      {
LABEL_18:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v10);
        if (16 * v3 != v10 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1CF1CF5D4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_1CF9E81D8();
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v11);
        }

        else
        {
          if (v11)
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          MEMORY[0x1D386A470](v13);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v14)
      {
LABEL_18:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1CF7C8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v10 = sub_1CF9E8228();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        if (v18 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v18 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v18)
      {
LABEL_10:
        v19 = *(a2 + 48);
        v20 = (v19 + 16 * v3);
        v21 = (v19 + 16 * v6);
        if (v3 != v6 || v20 >= v21 + 1)
        {
          *v20 = *v21;
        }

        v22 = *(a2 + 56);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }
}

void sub_1CF1CF978(int64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    while (1)
    {
      v9 = *(*(a2 + 48) + 16 * v6 + 8);
      sub_1CF9E81D8();

      sub_1CF9E69C8();
      v10 = sub_1CF9E8228();
      v9, v11, v12, v13, v14, v15, v16, v17;
      v18 = v10 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v18 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v19 = *(a2 + 48);
      v20 = (v19 + 16 * v3);
      v21 = (v19 + 16 * v6);
      if (v3 != v6 || v20 >= v21 + 1)
      {
        *v20 = *v21;
      }

      v22 = *(a2 + 56);
      v23 = *(*(sub_1CF9E5A58() - 8) + 72);
      v24 = v23 * v3;
      v25 = v22 + v23 * v3;
      v26 = v23 * v6;
      v27 = v22 + v23 * v6 + v23;
      if (v24 < v26 || v25 >= v27)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v24 == v26)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v18 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v18)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

uint64_t sub_1CF1CFB68(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_1CF9E81D8();
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v11);
        }

        else
        {
          if (v11)
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          MEMORY[0x1D386A470](v13);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v14)
      {
LABEL_18:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + v9);
        if (16 * v3 != v9 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 4 * v3);
        v20 = (v18 + 4 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1CFD5C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
      sub_1CF9E81D8();
      v12 = v9;
      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();
      v11, v14, v15, v16, v17, v18, v19, v20;

      v21 = v13 & v7;
      if (v3 >= v8)
      {
        if (v21 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v21 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v21)
      {
LABEL_10:
        v22 = *(a2 + 48);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
        }

        v25 = *(a2 + 56);
        v26 = (v25 + 16 * v3);
        v27 = (v25 + 16 * v6);
        if (16 * v3 != 16 * v6 || (v3 = v6, v26 >= v27 + 1))
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

void sub_1CF1CFF30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v12 = v11;
      sub_1CF9E81D8();
      v13 = v10;
      sub_1CF9E69C8();
      v14 = sub_1CF9E8228();
      v12, v15, v16, v17, v18, v19, v20, v21;

      v22 = v14 & v7;
      if (v3 >= v8)
      {
        if (v22 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v22 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v22)
      {
LABEL_10:
        v23 = *(a2 + 48);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
        }

        v26 = *(a2 + 56);
        v27 = v26 + 24 * v3;
        v28 = (v26 + 24 * v6);
        if (v3 != v6 || v27 >= v28 + 24)
        {
          v9 = *v28;
          *(v27 + 16) = *(v28 + 2);
          *v27 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

uint64_t sub_1CF1D0104(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = 16 * v6;
      v10 = *(a2 + 48) + 16 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      sub_1CF9E81D8();
      if (v12)
      {
        if (v12 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v11);
        }

        else
        {
          if (v11)
          {
            v13 = 3;
          }

          else
          {
            v13 = 2;
          }

          MEMORY[0x1D386A470](v13);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v14 = result & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v14)
      {
LABEL_18:
        v15 = *(a2 + 48);
        v16 = 16 * v3;
        v17 = (v15 + 16 * v3);
        v18 = (v15 + v9);
        if (16 * v3 != v9 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + v16);
        v21 = (v19 + v9);
        if (v16 != v9 || (v3 = v6, v20 >= v21 + 1))
        {
          *v20 = *v21;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1D0310(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v11 = v10;
      sub_1CF9E81D8();
      v12 = v9;
      sub_1CF9E69C8();
      v13 = sub_1CF9E8228();
      v11, v14, v15, v16, v17, v18, v19, v20;

      v21 = v13 & v7;
      if (v3 >= v8)
      {
        if (v21 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v21 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v21)
      {
LABEL_10:
        v22 = *(a2 + 48);
        v23 = (v22 + 8 * v3);
        v24 = (v22 + 8 * v6);
        if (v3 != v6 || v23 >= v24 + 1)
        {
          *v23 = *v24;
        }

        v25 = *(a2 + 56);
        v26 = (v25 + 8 * v3);
        v27 = (v25 + 8 * v6);
        if (v3 != v6 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }
}

void sub_1CF1D04D8(int64_t a1, uint64_t a2)
{
  v4 = sub_1CF9E5A58();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = sub_1CF9E77D8();
    v13 = v11;
    v37 = (v12 + 1) & v11;
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v38 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = v15;
    do
    {
      v16 = v8;
      v17 = v38 * v10;
      v18 = v13;
      v19 = v14;
      v36(v7, *(a2 + 48) + v38 * v10, v4);
      sub_1CF1D57C0();
      v20 = sub_1CF9E6748();
      (*v35)(v7, v4);
      v13 = v18;
      v21 = v20 & v18;
      if (a1 >= v37)
      {
        if (v21 >= v37 && a1 >= v21)
        {
LABEL_15:
          v24 = *(a2 + 48);
          v25 = v24 + v38 * a1;
          v26 = v24 + v17 + v38;
          v27 = v38 * a1 < v17 || v25 >= v26;
          v14 = v19;
          if (v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v13 = v18;
            v8 = v16;
          }

          else
          {
            v28 = v38 * a1 == v17;
            v8 = v16;
            if (!v28)
            {
              swift_arrayInitWithTakeBackToFront();
              v13 = v18;
            }
          }

          v29 = *(a2 + 56);
          v30 = (v29 + 8 * a1);
          v31 = (v29 + 8 * v10);
          if (a1 != v10 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v21 >= v37 || a1 >= v21)
      {
        goto LABEL_15;
      }

      v14 = v19;
      v8 = v16;
LABEL_4:
      v10 = (v10 + 1) & v13;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(a2 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v34;
    ++*(a2 + 36);
  }
}

unint64_t sub_1CF1D0790(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1CF9E81C8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      result = v15 + 16 * v3;
      if (v3 < v6 || result >= v15 + 16 * v6 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v3 == v6)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1D0920(int64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFD70, &qword_1CFA12AC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v35 = &v34 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFCC0, &unk_1CF9FCB50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v34 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  v8 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = sub_1CF9E77D8();
    v40 = v17;
    v37 = a2 + 64;
    v38 = (v18 + 1) & v17;
    v19 = *(v8 + 72);
    v36 = v19;
    do
    {
      v20 = v19 * v16;
      sub_1CEFCCBDC(*(a2 + 48) + v19 * v16, v13, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF9E81D8();
      sub_1CEFCCBDC(v13, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = v35;
        sub_1CEFE55D0(v10, v35, &unk_1EC4BFD70, &qword_1CFA12AC0);
        MEMORY[0x1D386A470](1);
        sub_1CF1CE0C8(v41);
        v22 = v21;
        v23 = &unk_1EC4BFD70;
        v24 = &qword_1CFA12AC0;
      }

      else
      {
        v25 = v34;
        sub_1CEFE55D0(v10, v34, &unk_1EC4BFCC0, &unk_1CF9FCB50);
        MEMORY[0x1D386A470](0);
        sub_1CF1CDC08(v41);
        v22 = v25;
        v23 = &unk_1EC4BFCC0;
        v24 = &unk_1CF9FCB50;
      }

      sub_1CEFCCC44(v22, v23, v24);
      v26 = sub_1CF9E8228();
      sub_1CEFCCC44(v13, &unk_1EC4BF650, &unk_1CF9FCB40);
      v27 = v26 & v40;
      if (a1 >= v38)
      {
        v19 = v36;
        v14 = v37;
        if (v27 < v38)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v19 = v36;
        v14 = v37;
        if (v27 >= v38)
        {
          goto LABEL_13;
        }
      }

      if (a1 >= v27)
      {
LABEL_13:
        if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v19 * a1 != v20)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v28 = *(a2 + 56);
        v29 = (v28 + 8 * a1);
        v30 = (v28 + 8 * v16);
        if (a1 != v16 || v29 >= v30 + 1)
        {
          *v29 = *v30;
          a1 = v16;
        }
      }

LABEL_4:
      v16 = (v16 + 1) & v40;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(a2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v33;
    ++*(a2 + 36);
  }
}

unint64_t sub_1CF1D0D74(unint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_1CF9E77D8() + 1) & ~v7;
    while (1)
    {
      v12 = 16 * v8;
      v13 = *(a2 + 48) + 16 * v8;
      v14 = *v13;
      v15 = *(v13 + 8);
      sub_1CF9E81D8();
      if (v15)
      {
        if (v15 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v14);
        }

        else
        {
          v16 = v14 ? 3 : 2;
          MEMORY[0x1D386A470](v16);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v17 = result & v10;
      if (v5 >= v11)
      {
        break;
      }

      if (v17 < v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      v18 = *(a2 + 48);
      v19 = (v18 + 16 * v5);
      v20 = (v18 + v12);
      if (16 * v5 != v12 || v19 >= v20 + 1)
      {
        *v19 = *v20;
      }

      v21 = *(a2 + 56);
      v22 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 72);
      v23 = v22 * v5;
      result = v21 + v22 * v5;
      v24 = v22 * v8;
      v25 = v21 + v22 * v8 + v22;
      if (v23 < v24 || result >= v25)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v23 == v24)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    if (v17 < v11)
    {
      goto LABEL_5;
    }

LABEL_18:
    if (v5 < v17)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

LABEL_28:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CF1D0FB4(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1CF9E81C8();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1D1178(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v12 = v11;
      sub_1CF9E81D8();
      v13 = v10;
      sub_1CF9E69C8();
      v14 = sub_1CF9E8228();

      v12, v15, v16, v17, v18, v19, v20, v21;
      v22 = v14 & v7;
      if (v3 >= v8)
      {
        if (v22 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v22 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v22)
      {
LABEL_10:
        v23 = *(a2 + 48);
        v24 = (v23 + 8 * v3);
        v25 = (v23 + 8 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
        }

        v26 = *(a2 + 56);
        v27 = (v26 + 32 * v3);
        v28 = (v26 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v27 >= v28 + 2))
        {
          v9 = v28[1];
          *v27 = *v28;
          v27[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v29 = *(a2 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v31;
    ++*(a2 + 36);
  }
}

uint64_t sub_1CF1D134C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CF9E77D8() + 1) & ~v5;
    do
    {
      v10 = 16 * v6;
      v11 = *(a2 + 48) + 16 * v6;
      v12 = *v11;
      v13 = *(v11 + 8);
      sub_1CF9E81D8();
      if (v13)
      {
        if (v13 == 1)
        {
          MEMORY[0x1D386A470](1);
          MEMORY[0x1D386A4A0](v12);
        }

        else
        {
          if (v12)
          {
            v14 = 3;
          }

          else
          {
            v14 = 2;
          }

          MEMORY[0x1D386A470](v14);
        }
      }

      else
      {
        MEMORY[0x1D386A470](0);
        sub_1CF9E8208();
      }

      result = sub_1CF9E8228();
      v15 = result & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_18;
      }

      if (v3 >= v15)
      {
LABEL_18:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + v10);
        if (16 * v3 != v10 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (32 * v3 != 32 * v6 || (v3 = v6, v20 >= v21 + 2))
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CF1D154C(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
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
      sub_1CF7CF1E0();
      v11 = v19;
      goto LABEL_8;
    }

    sub_1CF7C3178(v16, a4 & 1);
    v11 = sub_1CEFE4328(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1CF9E8108();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    sub_1CEFE9EB8(a1, v22);
  }

  else
  {
    sub_1CF1D4DD8(v11, a2, a3, a1, v21);
  }
}

unint64_t sub_1CF1D169C(__int128 *a1, char a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1CF7BF13C(a1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a2 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a2 & 1) == 0)
  {
    v17 = result;
    sub_1CF7CF398();
    result = v17;
    goto LABEL_8;
  }

  sub_1CF7C37F4(v14, a2 & 1);
  result = sub_1CF7BF13C(a1);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a3;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    v20 = (v19[6] + 48 * result);
    v21 = *a1;
    v22 = a1[2];
    v20[1] = a1[1];
    v20[2] = v22;
    *v20 = v21;
    *(v19[7] + 8 * result) = a3;
    v23 = v19[2];
    v13 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v13)
    {
      v19[2] = v24;
      return sub_1CF1A8F60(a1, &v25);
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

void sub_1CF1D17EC(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CF7C3BDC(v16, a4 & 1);
      v11 = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7CF6B0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void sub_1CF1D19D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CEFE4328(a3, a4);
  v21 = *(v12 + 16);
  v22 = (v14 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
    goto LABEL_17;
  }

  v25 = v14;
  v26 = *(v12 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 < v24 || (a5 & 1) != 0)
    {
      sub_1CF7C4200(v24, a5 & 1);
      v13 = sub_1CEFE4328(a3, a4);
      if ((v25 & 1) != (v14 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v27 = v13;
      sub_1CF7CF854();
      v13 = v27;
    }
  }

  v28 = *v6;
  if (v25)
  {
    v29 = (v28[7] + 16 * v13);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;

    v30, v14, v15, v16, v17, v18, v19, v20;
    return;
  }

  v28[(v13 >> 6) + 8] |= 1 << v13;
  v31 = (v28[6] + 16 * v13);
  *v31 = a3;
  v31[1] = a4;
  v32 = (v28[7] + 16 * v13);
  *v32 = a1;
  v32[1] = a2;
  v33 = v28[2];
  v23 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (v23)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v34;
}

unint64_t sub_1CF1D1B58(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = sub_1CF7D52B0(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 >= v14 && (a3 & 1) == 0)
  {
    v17 = result;
    sub_1CF7CF9CC();
    result = v17;
    goto LABEL_8;
  }

  sub_1CF7C44C0(v14, a3 & 1);
  result = sub_1CF7D52B0(a2);
  if ((v15 & 1) == (v18 & 1))
  {
LABEL_8:
    v19 = *v4;
    if (v15)
    {
      *(v19[7] + 8 * result) = a1;
      return result;
    }

    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF1D1C7C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CF7BF4F4(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1CF7CFBE4();
      goto LABEL_7;
    }

    sub_1CF7C4B2C(v13, a3 & 1);
    v20 = sub_1CF7BF4F4(a2);
    if ((v14 & 1) == (v21 & 1))
    {
      v10 = v20;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if (v14)
  {
LABEL_8:
    v17 = v16[7];
    v18 = v17 + *(*(type metadata accessor for SyncState(0) - 8) + 72) * v10;

    return sub_1CF1D5818(a1, v18);
  }

LABEL_13:

  return sub_1CF1D4E9C(v10, a2, a1, v16);
}

void sub_1CF1D1DC8(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1CF7BF2C0(a5, a6);
  v25 = *(v16 + 16);
  v26 = (v18 & 1) == 0;
  v27 = __OFADD__(v25, v26);
  v28 = v25 + v26;
  if (v27)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v29 = v18;
  v30 = *(v16 + 24);
  if (v30 < v28 || (a7 & 1) == 0)
  {
    if (v30 < v28 || (a7 & 1) != 0)
    {
      sub_1CF7C4FE4(v28, a7 & 1);
      v17 = sub_1CF7BF2C0(a5, a6);
      if ((v29 & 1) != (v18 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v31 = v17;
      sub_1CF7CFE1C();
      v17 = v31;
    }
  }

  v32 = *v8;
  if ((v29 & 1) == 0)
  {
    v32[(v17 >> 6) + 8] |= 1 << v17;
    v35 = v32[6] + 16 * v17;
    *v35 = a5;
    *(v35 + 8) = a6;
    v36 = v32[7] + 32 * v17;
    *v36 = a1;
    *(v36 + 8) = a2;
    *(v36 + 16) = a3;
    *(v36 + 24) = a4;
    v37 = v32[2];
    v27 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (!v27)
    {
      v32[2] = v38;
      return;
    }

    goto LABEL_15;
  }

  v33 = v32[7] + 32 * v17;
  v34 = *(v33 + 24);
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = a3;
  *(v33 + 24) = a4;

  v34, v18, v19, v20, v21, v22, v23, v24;
}

void sub_1CF1D1F60(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF7BF2C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CF7C5300(v16, a4 & 1);
      v11 = sub_1CF7BF2C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7CFFA8();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = v21[6] + 16 * v11;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void sub_1CF1D214C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CF7C59C0(v16, a4 & 1);
      v11 = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D02E0();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7];
    v23 = *(v22 + 8 * v11);
    *(v22 + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v24 = (v21[6] + 16 * v11);
  *v24 = a2;
  v24[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v25 = v21[2];
  v15 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v26;
}

void sub_1CF1D22C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1CEFE4328(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_17;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 < v15 || (a4 & 1) == 0)
  {
    if (v17 >= v15 && (a4 & 1) == 0)
    {
      sub_1CF7D0464();
      goto LABEL_7;
    }

    sub_1CF7C5C7C(v15, a4 & 1);
    v25 = sub_1CEFE4328(a2, a3);
    if ((v16 & 1) == (v26 & 1))
    {
      v12 = v25;
      v18 = *v5;
      if (v16)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

LABEL_17:
    sub_1CF9E8108();
    __break(1u);
    return;
  }

LABEL_7:
  v18 = *v5;
  if (v16)
  {
LABEL_8:
    v19 = v18[7];
    v20 = sub_1CF9E5A58();
    v21 = *(v20 - 8);
    v22 = *(v21 + 40);
    v23 = v20;
    v24 = v19 + *(v21 + 72) * v12;

    v22(v24, a1, v23);
    return;
  }

LABEL_13:
  sub_1CF1D4FC4(v12, a2, a3, a1, v18);
}

id sub_1CF1D2448(__int128 *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CF7BF928(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7C5FFC(v13, a3 & 1);
      v8 = sub_1CF7BF928(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D06E4();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    return sub_1CEFDA9E0(a1, v18[7] + (v8 << 6), &unk_1EC4BF250, &unk_1CFA01B50);
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  v20 = (v18[7] + (v8 << 6));
  v21 = *a1;
  v22 = a1[1];
  v23 = a1[3];
  v20[2] = a1[2];
  v20[3] = v23;
  *v20 = v21;
  v20[1] = v22;
  v24 = v18[2];
  v12 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v25;

  return a2;
}

void sub_1CF1D262C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1CEFE4328(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1CEFE4328(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    v26 = v25[7];
    v27 = *(v26 + 8 * v15);
    *(v26 + 8 * v15) = a1;

    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v28 = (v25[6] + 16 * v15);
  *v28 = a2;
  v28[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v29 = v25[2];
  v19 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v25[2] = v30;
}

unint64_t sub_1CF1D27C0(int a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_1CF7BF2C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 >= v16 && (a4 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    v19 = result;
    sub_1CF7D0A44();
    result = v19;
    goto LABEL_8;
  }

  sub_1CF7C68A4(v16, a4 & 1);
  result = sub_1CF7BF2C0(a2, a3);
  if ((v17 & 1) == (v20 & 1))
  {
LABEL_8:
    v21 = *v5;
    if (v17)
    {
      *(v21[7] + 4 * result) = a1;
      return result;
    }

    v21[(result >> 6) + 8] |= 1 << result;
    v22 = v21[6] + 16 * result;
    *v22 = a2;
    *(v22 + 8) = a3;
    *(v21[7] + 4 * result) = a1;
    v23 = v21[2];
    v15 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (!v15)
    {
      v21[2] = v24;
      return result;
    }

    goto LABEL_13;
  }

LABEL_14:
  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

id sub_1CF1D2958(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_1CEFE863C(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v12 = sub_1CEFE863C(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        type metadata accessor for FPProviderDomainID(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  return a2;
}

void sub_1CF1D2AE0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
  v19 = *(v10 + 16);
  v20 = (v12 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v12;
  v24 = *(v10 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 < v22 || (a4 & 1) != 0)
    {
      sub_1CF7C6EBC(v22, a4 & 1);
      v11 = sub_1CEFE4328(a2, a3);
      if ((v23 & 1) != (v12 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v25 = v11;
      sub_1CF7D0D70();
      v11 = v25;
    }
  }

  v26 = *v5;
  if (v23)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v11);
    *(v27 + 8 * v11) = a1;

    v28, v12, v13, v14, v15, v16, v17, v18;
    return;
  }

  v26[(v11 >> 6) + 8] |= 1 << v11;
  v29 = (v26[6] + 16 * v11);
  *v29 = a2;
  v29[1] = a3;
  *(v26[7] + 8 * v11) = a1;
  v30 = v26[2];
  v21 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v31;
}

void sub_1CF1D2C88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1CEFE4328(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v15 = sub_1CEFE4328(a2, a3);
      if ((v21 & 1) != (v24 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v25 = *v9;
  if (v21)
  {
    *(v25[7] + 8 * v15) = a1;
    return;
  }

  v25[(v15 >> 6) + 8] |= 1 << v15;
  v26 = (v25[6] + 16 * v15);
  *v26 = a2;
  v26[1] = a3;
  *(v25[7] + 8 * v15) = a1;
  v27 = v25[2];
  v19 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v19)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25[2] = v28;
}

void sub_1CF1D2E34(uint64_t a1, void *a2, char a3, void (*a4)(void), void (*a5)(uint64_t, void))
{
  v8 = v5;
  v11 = *v5;
  v12 = sub_1CEFE863C(a2);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 < v17 || (a3 & 1) != 0)
    {
      a5(v17, a3 & 1);
      v12 = sub_1CEFE863C(a2);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      a4();
      v12 = v20;
    }
  }

  v22 = *v8;
  if (v18)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v12);
    *(v23 + 8 * v12) = a1;

    return;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  *(v22[6] + 8 * v12) = a2;
  *(v22[7] + 8 * v12) = a1;
  v25 = v22[2];
  v16 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v26;

  v27 = a2;
}

void sub_1CF1D2FB8(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CF7BFC48(a4);
  v21 = *(v12 + 16);
  v22 = (v14 & 1) == 0;
  v23 = __OFADD__(v21, v22);
  v24 = v21 + v22;
  if (v23)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v25 = v14;
  v26 = *(v12 + 24);
  if (v26 < v24 || (a5 & 1) == 0)
  {
    if (v26 < v24 || (a5 & 1) != 0)
    {
      sub_1CF7C8C2C(v24, a5 & 1);
      v13 = sub_1CF7BFC48(a4);
      if ((v25 & 1) != (v14 & 1))
      {
LABEL_16:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A0, &unk_1CFA17130);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v27 = v13;
      sub_1CF7D192C();
      v13 = v27;
    }
  }

  v28 = *v6;
  if ((v25 & 1) == 0)
  {
    v28[(v13 >> 6) + 8] |= 1 << v13;
    v39 = (v28[6] + 48 * v13);
    v40 = *a4;
    v41 = a4[1];
    *(v39 + 27) = *(a4 + 27);
    *v39 = v40;
    v39[1] = v41;
    v42 = (v28[7] + 24 * v13);
    *v42 = a1;
    v42[1] = a2;
    v42[2] = a3;
    v43 = v28[2];
    v23 = __OFADD__(v43, 1);
    v44 = v43 + 1;
    if (!v23)
    {
      v28[2] = v44;
      sub_1CEFCCBDC(a4, &v45, &qword_1EC4BE1A0, &unk_1CFA17130);
      return;
    }

    goto LABEL_15;
  }

  v29 = v28[7] + 24 * v13;
  v30 = *v29;
  v31 = *(v29 + 16);
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = a3;
  v30, v14, v15, v16, v17, v18, v19, v20;

  v31, v32, v33, v34, v35, v36, v37, v38;
}

void sub_1CF1D3180(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_1CEFF4768(a3, a4 & 0x1FF);
  v20 = v12[2];
  v21 = (v14 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
    goto LABEL_16;
  }

  v24 = v14;
  v25 = v12[3];
  if (v25 < v23 || (a5 & 1) == 0)
  {
    if (v25 >= v23 && (a5 & 1) == 0)
    {
      v26 = v13;
      sub_1CF7D1B08();
      v13 = v26;
      goto LABEL_8;
    }

    sub_1CF7C9130(v23, a5 & 1);
    v13 = sub_1CEFF4768(a3, a4 & 0x1FF);
    if ((v24 & 1) != (v14 & 1))
    {
LABEL_16:
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFC10, &qword_1CF9FE510);
      sub_1CF9E8108();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v27 = *v6;
  if (v24)
  {
    v28 = (v27[7] + 16 * v13);
    v29 = v28[1];
    *v28 = a1;
    v28[1] = a2;

    v29, v14, v15, v16, v17, v27, v18, v19;
  }

  else
  {
    sub_1CF1D50B8(v13, a3, a4 | (((a4 >> 8) & 1) << 8), a1, a2, v27);

    sub_1CEFD0988(a3, a4, BYTE1(a4) & 1);
  }
}

void sub_1CF1D3310(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CEFE4328(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CF7C949C(v16, a4 & 1);
      v11 = sub_1CEFE4328(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D1C90();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

void sub_1CF1D348C(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v16 = *(v7 + 16);
  v17 = (v9 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_17;
  }

  v20 = v9;
  v21 = *(v7 + 24);
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 < v19 || (a3 & 1) != 0)
    {
      sub_1CF7CA84C(v19, a3 & 1);
      v8 = sub_1CEFE863C(a2);
      if ((v20 & 1) != (v9 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v22 = v8;
      sub_1CF7D2808();
      v8 = v22;
    }
  }

  v23 = *v4;
  if (v20)
  {
    v24 = v23[7];
    v25 = *(v24 + 8 * v8);
    *(v24 + 8 * v8) = a1;

    v25, v9, v10, v11, v12, v13, v14, v15;
    return;
  }

  v23[(v8 >> 6) + 8] |= 1 << v8;
  *(v23[6] + 8 * v8) = a2;
  *(v23[7] + 8 * v8) = a1;
  v26 = v23[2];
  v18 = __OFADD__(v26, 1);
  v27 = v26 + 1;
  if (v18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v23[2] = v27;

  v28 = a2;
}

void sub_1CF1D3624(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1CF7BF2C0(a2, a3);
  v23 = *(v14 + 16);
  v24 = (v16 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v27 = v16;
  v28 = *(v14 + 24);
  if (v28 < v26 || (a4 & 1) == 0)
  {
    if (v28 < v26 || (a4 & 1) != 0)
    {
      a6(v26, a4 & 1);
      v15 = sub_1CF7BF2C0(a2, a3);
      if ((v27 & 1) != (v16 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v29 = v15;
      a5();
      v15 = v29;
    }
  }

  v30 = *v9;
  if ((v27 & 1) == 0)
  {
    v30[(v15 >> 6) + 8] |= 1 << v15;
    v33 = v30[6] + 16 * v15;
    *v33 = a2;
    *(v33 + 8) = a3;
    *(v30[7] + 8 * v15) = a1;
    v34 = v30[2];
    v25 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v25)
    {
      v30[2] = v35;
      return;
    }

    goto LABEL_15;
  }

  v31 = v30[7];
  v32 = *(v31 + 8 * v15);
  *(v31 + 8 * v15) = a1;

  v32, v16, v17, v18, v19, v20, v21, v22;
}

void sub_1CF1D37AC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1CF9E5A58();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1CF7BFCDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      *(v20[7] + 8 * v14) = a1;
      return;
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_1CF7D2980();
    goto LABEL_7;
  }

  sub_1CF7CAB28(v17, a3 & 1);
  v21 = sub_1CF7BFCDC(a2);
  if ((v18 & 1) != (v22 & 1))
  {
LABEL_14:
    sub_1CF9E8108();
    __break(1u);
    return;
  }

  v14 = v21;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  sub_1CF1D5114(v14, v11, a1, v20);
}

void sub_1CF1D3948(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1CF7BF2C0(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1CF7CB290(v16, a4 & 1);
      v11 = sub_1CF7BF2C0(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      sub_1CF7D2E60();
      v11 = v19;
    }
  }

  v21 = *v5;
  if ((v17 & 1) == 0)
  {
    v21[(v11 >> 6) + 8] |= 1 << v11;
    v24 = v21[6] + 16 * v11;
    *v24 = a2;
    *(v24 + 8) = a3;
    *(v21[7] + 8 * v11) = a1;
    v25 = v21[2];
    v15 = __OFADD__(v25, 1);
    v26 = v25 + 1;
    if (!v15)
    {
      v21[2] = v26;
      return;
    }

    goto LABEL_15;
  }

  v22 = v21[7];
  v23 = *(v22 + 8 * v11);
  *(v22 + 8 * v11) = a1;
}

void sub_1CF1D3AB0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CC16C(v13, a3 & 1);
      v8 = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D3654();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

unint64_t sub_1CF1D3C18(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CC430(v13, a3 & 1);
      result = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_16:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = result;
      sub_1CF7D37B4();
      result = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * result) = a1;
    return result;
  }

  v18[(result >> 6) + 8] |= 1 << result;
  *(v18[6] + 8 * result) = a2;
  *(v18[7] + 8 * result) = a1;
  v19 = v18[2];
  v12 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v18[2] = v20;

  return a2;
}

uint64_t sub_1CF1D3D6C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_1CF7BF380(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1CF7D3910();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1CF7CC6EC(v14, a3 & 1);
    v9 = sub_1CF7BF380(a2);
    if ((v15 & 1) != (v18 & 1))
    {
LABEL_16:
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v15)
  {
    v20 = v19[7] + 16 * v9;

    return sub_1CF1D5674(a1, v20);
  }

  else
  {

    return sub_1CF1D5284(v9, a2, a1, v19);
  }
}

_OWORD *sub_1CF1D3EE0(_OWORD *a1, void *a2, char a3, uint64_t (*a4)(void *), void (*a5)(void), void (*a6)(uint64_t, void), uint64_t (*a7)(void))
{
  v12 = v7;
  v15 = *v7;
  v16 = a4(a2);
  v18 = v15[2];
  v19 = (v17 & 1) == 0;
  v20 = __OFADD__(v18, v19);
  v21 = v18 + v19;
  if (v20)
  {
    __break(1u);
    goto LABEL_16;
  }

  v22 = v17;
  v23 = v15[3];
  if (v23 < v21 || (a3 & 1) == 0)
  {
    if (v23 >= v21 && (a3 & 1) == 0)
    {
      v24 = v16;
      a5();
      v16 = v24;
      goto LABEL_8;
    }

    a6(v21, a3 & 1);
    v16 = a4(a2);
    if ((v22 & 1) != (v25 & 1))
    {
LABEL_16:
      a7(0);
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v26 = *v12;
  if (v22)
  {
    v27 = (v26[7] + 32 * v16);
    __swift_destroy_boxed_opaque_existential_1(v27);

    return sub_1CEFE9EB8(a1, v27);
  }

  else
  {
    sub_1CF1D52EC(v16, a2, a1, v26);

    return a2;
  }
}

void sub_1CF1D40B0(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1CEFE863C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1CF7CCC54(v13, a3 & 1);
      v8 = sub_1CEFE863C(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        sub_1CF9E8108();
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = v8;
      sub_1CF7D3C24();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    v19 = v18[7];
    v20 = *(v19 + 8 * v8);
    *(v19 + 8 * v8) = a1;

    return;
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v21 = v18[2];
  v12 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v22;

  v23 = a2;
}

void sub_1CF1D421C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - v9;
  v11 = *v3;
  v13 = sub_1CF7BF520(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      sub_1CF7D3FDC();
      goto LABEL_7;
    }

    sub_1CF7CD440(v16, a3 & 1);
    v22 = sub_1CF7BF520(a2);
    if ((v17 & 1) == (v23 & 1))
    {
      v13 = v22;
      v19 = *v4;
      if (v17)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CEFCCBDC(a2, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF1D5354(v13, v10, a1, v19);
      return;
    }

LABEL_15:
    sub_1CF9E8108();
    __break(1u);
    return;
  }

LABEL_7:
  v19 = *v4;
  if ((v17 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v20 = v19[7];
  v21 = *(v20 + 8 * v13);
  *(v20 + 8 * v13) = a1;
}

void sub_1CF1D43C4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v29 - v9;
  v11 = *v3;
  v19 = sub_1CF7BF520(a2);
  v20 = v11[2];
  v21 = (v12 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v12;
  v24 = v11[3];
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      sub_1CF7D4234();
      goto LABEL_7;
    }

    sub_1CF7CD964(v22, a3 & 1);
    v28 = sub_1CF7BF520(a2);
    if ((v23 & 1) == (v12 & 1))
    {
      v19 = v28;
      v25 = *v4;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CEFCCBDC(a2, v10, &unk_1EC4BF650, &unk_1CF9FCB40);
      sub_1CF1D5354(v19, v10, a1, v25);
      return;
    }

LABEL_15:
    sub_1CF9E8108();
    __break(1u);
    return;
  }

LABEL_7:
  v25 = *v4;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = v25[7];
  v27 = *(v26 + 8 * v19);
  *(v26 + 8 * v19) = a1;

  v27, v12, v13, v14, v15, v16, v17, v18;
}

_OWORD *sub_1CF1D456C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CF0271B0(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_1CF7D45F0();
      goto LABEL_7;
    }

    sub_1CF7CE0F8(v13, a3 & 1);
    v19 = sub_1CF0271B0(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_1CF0272BC(a2, v21);
      return sub_1CF1D5418(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1(v17);

  return sub_1CEFE9EB8(a1, v17);
}

uint64_t sub_1CF1D46B8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(void), uint64_t *a7, uint64_t *a8)
{
  v11 = v8;
  v16 = *v8;
  v18 = sub_1CF7BF2C0(a2, a3);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
  }

  else
  {
    v22 = v17;
    v23 = v16[3];
    if (v23 >= v21 && (a4 & 1) != 0)
    {
LABEL_7:
      v24 = *v11;
      if (v22)
      {
LABEL_8:
        v25 = v24[7];
        v26 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
        return sub_1CEFDA9E0(a1, v25 + *(*(v26 - 8) + 72) * v18, a7, a8);
      }

      return sub_1CF1D51CC(v18, a2, a3, a1, v24, a7, a8);
    }

    if (v23 >= v21 && (a4 & 1) == 0)
    {
      a5();
      goto LABEL_7;
    }

    a6();
    v28 = sub_1CF7BF2C0(a2, a3);
    if ((v22 & 1) == (v29 & 1))
    {
      v18 = v28;
      v24 = *v11;
      if (v22)
      {
        goto LABEL_8;
      }

      return sub_1CF1D51CC(v18, a2, a3, a1, v24, a7, a8);
    }
  }

  result = sub_1CF9E8108();
  __break(1u);
  return result;
}

uint64_t sub_1CF1D4828(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_1CF7BF380(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
      return sub_1CEFDA9E0(a1, v17 + *(*(v18 - 8) + 72) * v10, &unk_1EC4C04B0, &unk_1CF9FCB20);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_1CF7D49F4();
    goto LABEL_7;
  }

  sub_1CF7CE3D4(v13, a3 & 1);
  v20 = sub_1CF7BF380(a2);
  if ((v14 & 1) != (v21 & 1))
  {
LABEL_15:
    result = sub_1CF9E8108();
    __break(1u);
    return result;
  }

  v10 = v20;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1CF1D54A8(v10, a2, a1, v16);
}

void sub_1CF1D4984(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v18 = sub_1CF7BF2C0(a2, a3);
  v19 = *(v10 + 16);
  v20 = (v11 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v22 = v11;
  v23 = *(v10 + 24);
  if (v23 >= v21 && (a4 & 1) != 0)
  {
    goto LABEL_7;
  }

  if (v23 >= v21 && (a4 & 1) == 0)
  {
    sub_1CF7D4C40();
LABEL_7:
    v24 = *v5;
    if (v22)
    {
LABEL_8:
      v25 = v24[7];
      *(v25 + 8 * v18), v11, v12, v13, v14, v15, v16, v17;
      *(v25 + 8 * v18) = a1;
      return;
    }

LABEL_11:
    v24[(v18 >> 6) + 8] |= 1 << v18;
    v27 = v24[6] + 16 * v18;
    *v27 = a2;
    *(v27 + 8) = a3;
    *(v24[7] + 8 * v18) = a1;
    v28 = v24[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      v24[2] = v30;
      return;
    }

    goto LABEL_14;
  }

  sub_1CF7CE718(v21, a4 & 1);
  v26 = sub_1CF7BF2C0(a2, a3);
  if ((v22 & 1) == (v11 & 1))
  {
    v18 = v26;
    v24 = *v5;
    if (v22)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

LABEL_15:
  sub_1CF9E8108();
  __break(1u);
}

unint64_t sub_1CF1D4ACC(uint64_t a1, char a2, uint64_t a3, char a4, void *a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  result = sub_1CEFE863C(a5);
  v16 = *(v13 + 16);
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = *(v13 + 24);
  if (v21 < v19 || (a6 & 1) == 0)
  {
    if (v21 < v19 || (a6 & 1) != 0)
    {
      sub_1CF7CEA10(v19, a6 & 1);
      result = sub_1CEFE863C(a5);
      if ((v20 & 1) != (v23 & 1))
      {
LABEL_16:
        type metadata accessor for NSFileProviderItemIdentifier(0);
        result = sub_1CF9E8108();
        __break(1u);
        return result;
      }
    }

    else
    {
      v22 = result;
      sub_1CF7D4DB4();
      result = v22;
    }
  }

  v24 = *v7;
  if (v20)
  {
    v25 = v24[7] + 32 * result;
    *v25 = a1;
    *(v25 + 8) = a2 & 1;
    *(v25 + 16) = a3;
    *(v25 + 24) = a4 & 1;
    return result;
  }

  v24[(result >> 6) + 8] |= 1 << result;
  *(v24[6] + 8 * result) = a5;
  v26 = v24[7] + 32 * result;
  *v26 = a1;
  *(v26 + 8) = a2 & 1;
  *(v26 + 16) = a3;
  *(v26 + 24) = a4 & 1;
  v27 = v24[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v24[2] = v28;

  return a5;
}

uint64_t sub_1CF1D4C68(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  result = sub_1CF7BF2C0(a5, a6);
  v19 = v16[2];
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_14;
  }

  v23 = v18;
  v24 = v16[3];
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 >= v22 && (a7 & 1) == 0)
    {
      v25 = result;
      sub_1CF7D4F34();
      result = v25;
      goto LABEL_8;
    }

    sub_1CF7CED04(v22, a7 & 1);
    result = sub_1CF7BF2C0(a5, a6);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_14:
      result = sub_1CF9E8108();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v8;
  if (v23)
  {
    v28 = v27[7] + 32 * result;
    *v28 = a1;
    *(v28 + 8) = a2 & 1;
    *(v28 + 16) = a3;
    *(v28 + 24) = a4 & 1;
  }

  else
  {

    return sub_1CF1D55B8(result, a5, a6, a1, a2 & 1, a3, a4 & 1, v27);
  }

  return result;
}

_OWORD *sub_1CF1D4DD8(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_1CEFE9EB8(a4, (a5[7] + 32 * a1));
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

unint64_t sub_1CF1D4E44(unint64_t result, _OWORD *a2, void *a3, double a4)
{
  a3[(result >> 6) + 8] |= 1 << result;
  v4 = (a3[6] + 48 * result);
  v5 = a2[1];
  *v4 = *a2;
  v4[1] = v5;
  v4[2] = a2[2];
  *(a3[7] + 8 * result) = a4;
  v6 = a3[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a3[2] = v8;
  }

  return result;
}

uint64_t sub_1CF1D4E9C(unint64_t a1, char a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for SyncState(0);
  result = sub_1CF04DC10(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1CF1D4F30(unint64_t result, uint64_t a2, char a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_1CF1D4F7C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_1CF1D4FC4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1CF9E5A58();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_1CF1D5074(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_1CF1D50B8(unint64_t result, uint64_t a2, __int16 a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = a6[6] + 16 * result;
  *v6 = a2;
  *(v6 + 8) = a3;
  *(v6 + 9) = HIBYTE(a3) & 1;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

uint64_t sub_1CF1D5114(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_1CF9E5A58();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_1CF1D51CC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a5[6] + 16 * a1;
  *v12 = a2;
  *(v12 + 8) = a3;
  v13 = a5[7];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  result = sub_1CEFE55D0(a4, v13 + *(*(v14 - 8) + 72) * a1, a6, a7);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

uint64_t sub_1CF1D5284(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1CEFF701C(a3, a4[7] + 16 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

_OWORD *sub_1CF1D52EC(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = sub_1CEFE9EB8(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_1CF1D5354(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF650, &unk_1CF9FCB40);
  result = sub_1CEFE55D0(a2, v8 + *(*(v9 - 8) + 72) * a1, &unk_1EC4BF650, &unk_1CF9FCB40);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

_OWORD *sub_1CF1D5418(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_1CEFE9EB8(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_1CF1D54A8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C04B0, &unk_1CF9FCB20);
  result = sub_1CEFE55D0(a3, v7 + *(*(v8 - 8) + 72) * a1, &unk_1EC4C04B0, &unk_1CF9FCB20);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

unint64_t sub_1CF1D5560(unint64_t result, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  *(a7[6] + 8 * result) = a2;
  v7 = a7[7] + 32 * result;
  *v7 = a3;
  *(v7 + 8) = a4 & 1;
  *(v7 + 16) = a5;
  *(v7 + 24) = a6;
  v8 = a7[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v10;
  }

  return result;
}

unint64_t sub_1CF1D55B8(unint64_t result, uint64_t a2, char a3, uint64_t a4, char a5, uint64_t a6, char a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = a8[6] + 16 * result;
  *v8 = a2;
  *(v8 + 8) = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5 & 1;
  *(v9 + 16) = a6;
  *(v9 + 24) = a7;
  v10 = a8[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a8[2] = v12;
  }

  return result;
}

void sub_1CF1D56D0(uint64_t result, unint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, uint64_t a4, unint64_t a5, _TtC18FileProviderDaemon8FSTester *a6, uint64_t a7, _TtC18FileProviderDaemon8FSTester *a8)
{
  if (a3 != 1)
  {
    sub_1CEFE4714(result, a2);
    a3, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFE4714(a4, a5);
    a6, v21, v22, v23, v24, v25, v26, v27;

    a8, v28, v29, v30, v31, v32, v33, v34;
  }
}

void sub_1CF1D5750(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, _TtC18FileProviderDaemon8FSTester *a5, void *a6, uint64_t a7, void *a8, _TtC18FileProviderDaemon8FSTester *a9, _TtC18FileProviderDaemon8FSTester *a10, uint64_t a11, _TtC18FileProviderDaemon8FSTester *a12)
{
  if (a9)
  {
    a9, a2, a3, a4, a5, a6, a7, a8;
    a5, v13, v14, v15, v16, v17, v18, v19;
    a10, v20, v21, v22, v23, v24, v25, v26;

    a12, v27, v28, v29, v30, v31, v32, v33;
  }
}

unint64_t sub_1CF1D57C0()
{
  result = qword_1EDEAB418;
  if (!qword_1EDEAB418)
  {
    sub_1CF9E5A58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB418);
  }

  return result;
}

uint64_t sub_1CF1D5818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SyncState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for SnapshotItemSQLFields(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 34;
  if (a2 + 34 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 34;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 34;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 0x1C)
  {
    v8 = v7 - 27;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 8)
  {
    return v8 - 7;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SnapshotItemSQLFields(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 34;
  if (a3 + 34 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xDE)
  {
    v5 = 0;
  }

  if (a2 > 0xDD)
  {
    v6 = ((a2 - 222) >> 8) + 1;
    *result = a2 + 34;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 34;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1CF1D59D4(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0x1C)
  {
    return v1 - 27;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1CF1D59E8(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 27;
  }

  return result;
}

unint64_t sub_1CF1D5A18()
{
  v1 = *v0;
  v2 = 0x7461447472617473;
  v3 = 0x426E656553736168;
  v4 = 0x66666F6B636162;
  if (v1 != 3)
  {
    v4 = 0x656C6174537369;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF1D5AC4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF1D6EC8(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF1D5AEC(uint64_t a1)
{
  v2 = sub_1CF1D6C48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF1D5B28(uint64_t a1)
{
  v2 = sub_1CF1D6C48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF1D5B64(void *a1)
{
  v2 = swift_allocObject();
  sub_1CF1D5BB4(a1);
  return v2;
}

uint64_t sub_1CF1D5BB4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v30 = &v27 - v5;
  v6 = sub_1CF9E5CF8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v31 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE210, &qword_1CF9FCCE8);
  v29 = *(v33 - 8);
  v9 = MEMORY[0x1EEE9AC00](v33);
  v11 = &v27 - v10;
  v12 = *(v7 + 56);
  v35 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  v12(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate, 1, 1, v6, v9);
  v13 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale;
  *(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale) = 2;
  v14 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff;
  *(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff) = 100000000;
  v15 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1CF1D6C48();
  v32 = v11;
  v16 = v34;
  sub_1CF9E8298();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
    sub_1CEFD9E84(v2 + v35);
    type metadata accessor for VFSLookupItemContinuation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v34 = v14;
    v28 = v13;
    v18 = v29;
    v17 = v30;
    LOBYTE(v36[0]) = 0;
    sub_1CF1D6D6C(&unk_1EDEAB3A0, MEMORY[0x1E6969558]);
    v20 = v31;
    v19 = v32;
    sub_1CF9E7D88();
    (*(v7 + 32))(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate, v20, v6);
    LOBYTE(v36[0]) = 1;
    sub_1CF9E7CF8();
    v22 = v35;
    swift_beginAccess();
    sub_1CEFE4804(v17, v2 + v22);
    swift_endAccess();
    LOBYTE(v36[0]) = 2;
    v23 = sub_1CF9E7D58();
    *(v2 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy) = v23 & 1;
    LOBYTE(v36[0]) = 3;
    v24 = sub_1CF9E7CD8();
    v26 = 100000000;
    if ((v25 & 1) == 0)
    {
      v26 = v24;
    }

    *(v2 + v34) = v26;
    LOBYTE(v36[0]) = 4;
    *(v2 + v28) = sub_1CF9E7CC8();
    sub_1CF9E7CA8();
    __swift_destroy_boxed_opaque_existential_1(v36);
    (*(v18 + 8))(v19, v33);
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return v2;
}

uint64_t sub_1CF1D60A0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F0, &qword_1CF9FCCD0);
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1F8, &qword_1CF9FCCD8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v19 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF1D6C48();
  sub_1CF9E82A8();
  LOBYTE(v23[0]) = 0;
  sub_1CF9E5CF8();
  sub_1CF1D6D6C(&qword_1EDEAB3D0, MEMORY[0x1E6969538]);
  v21 = v2;
  v14 = v22;
  sub_1CF9E7F08();
  if (v14)
  {
    return (*(v11 + 8))(v13, v10);
  }

  v22 = v6;
  v15 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  v16 = v21;
  swift_beginAccess();
  sub_1CF06EAD4(v16 + v15, v9);
  LOBYTE(v23[0]) = 1;
  sub_1CF9E7E68();
  sub_1CEFD9E84(v9);
  LOBYTE(v23[0]) = 2;
  sub_1CF9E7EC8();
  LOBYTE(v23[0]) = 3;
  sub_1CF9E7EE8();
  LOBYTE(v23[0]) = *(v21 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale);
  v24 = 4;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  sub_1CF1D6C9C();
  sub_1CF9E7F08();
  sub_1CF9E7E28();
  __swift_project_boxed_opaque_existential_1(v23, v23[3]);
  sub_1CF1D6D18();
  v17 = v22;
  sub_1CF9E82A8();
  (*(v19 + 8))(v17, v20);
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v23);
}

uint64_t sub_1CF1D64D4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v7 - v2;
  v4 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  swift_beginAccess();
  sub_1CF06EAD4(v0 + v4, v3);
  v5 = sub_1CF9E5CF8();
  LODWORD(v4) = (*(*(v5 - 8) + 48))(v3, 1, v5);
  sub_1CEFD9E84(v3);
  if (v4 != 1 && (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy) & 1) != 0)
  {
    return 2200000000;
  }

  if (*(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff) >= 10000000000)
  {
    return 10000000000;
  }

  return *(v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff);
}

uint64_t sub_1CF1D6608()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v82 - v3;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v82 - v11;
  v89 = 0x3A7472617473;
  v90 = 0xE600000000000000;
  v13 = *(v6 + 16);
  v13(&v82 - v11, v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate, v5, v10);
  sub_1CF9E5C98();
  v15 = v14;
  v84 = *(v6 + 8);
  result = v84(v12, v5);
  v17 = v15 * 1000000000.0;
  if (COERCE__INT64(fabs(v15 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v82 = v13;
  v83 = v8;
  v91 = v17;
  sub_1CF064F48();
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  v91 = v89;
  v92 = v90;
  v28 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;
  swift_beginAccess();
  sub_1CF06EAD4(v1 + v28, v4);
  if ((*(v6 + 48))(v4, 1, v5) != 1)
  {
    v29 = v83;
    (*(v6 + 32))(v83, v4, v5);
    v87 = 0x3A746E656F6E6520;
    v88 = 0xE800000000000000;
    v82(v12, v29, v5);
    sub_1CF9E5C98();
    v31 = v30;
    v32 = v84;
    result = v84(v12, v5);
    v33 = v31 * 1000000000.0;
    if (COERCE__INT64(fabs(v31 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v33 > -9.22337204e18)
      {
        if (v33 < 9.22337204e18)
        {
          v85 = v33;
          v34 = sub_1CF9E7F98();
          v36 = v35;
          MEMORY[0x1D3868CC0](v34);
          v36, v37, v38, v39, v40, v41, v42, v43;
          v44 = v88;
          MEMORY[0x1D3868CC0](v87, v88);
          v44, v45, v46, v47, v48, v49, v50, v51;
          v32(v29, v5);
          goto LABEL_10;
        }

LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_1CEFD9E84(v4);
LABEL_10:
  if (*(v1 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_hasSeenBusy) == 1)
  {
    MEMORY[0x1D3868CC0](0x7973756220, 0xE500000000000000);
  }

  v52 = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_isStale);
  if (v52 != 2 && (v52 & 1) != 0)
  {
    MEMORY[0x1D3868CC0](0x656C61747320, 0xE600000000000000);
  }

  v87 = 0x66666F6B63616220;
  v88 = 0xE90000000000003ALL;
  result = *(v1 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_backoff);
  if ((result & 0x8000000000000000) == 0)
  {
    v53 = 0;
    v54 = 0xE000000000000000;
LABEL_19:
    v56 = sub_1CF04F854(result);
    v58 = v57;
    v85 = v53;
    v86 = v54;
    MEMORY[0x1D3868CC0](v56);
    v58, v59, v60, v61, v62, v63, v64, v65;
    v66 = v86;
    MEMORY[0x1D3868CC0](v85, v86);
    v66, v67, v68, v69, v70, v71, v72, v73;
    v74 = v88;
    MEMORY[0x1D3868CC0](v87, v88);
    v74, v75, v76, v77, v78, v79, v80, v81;
    return v91;
  }

  v55 = __OFSUB__(0, result);
  result = -result;
  if (!v55)
  {
    v54 = 0xE100000000000000;
    v53 = 45;
    goto LABEL_19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1CF1D6AB8()
{
  v1 = OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_startDate;
  v2 = sub_1CF9E5CF8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = v0 + OBJC_IVAR____TtC18FileProviderDaemon25VFSLookupItemContinuation_deletionDetectionDate;

  return sub_1CEFD9E84(v3);
}

void sub_1CF1D6B38(uint64_t a1)
{
  sub_1CF9E5CF8();
  if (v1 <= 0x3F)
  {
    sub_1CF1A694C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

unint64_t sub_1CF1D6C48()
{
  result = qword_1EC4BE200;
  if (!qword_1EC4BE200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE200);
  }

  return result;
}

unint64_t sub_1CF1D6C9C()
{
  result = qword_1EC4BE208;
  if (!qword_1EC4BE208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE208);
  }

  return result;
}

unint64_t sub_1CF1D6D18()
{
  result = qword_1EDEA8858;
  if (!qword_1EDEA8858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEA8858);
  }

  return result;
}

uint64_t sub_1CF1D6D6C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1CF9E5CF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CF1D6DC4()
{
  result = qword_1EC4BE218;
  if (!qword_1EC4BE218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE218);
  }

  return result;
}

unint64_t sub_1CF1D6E1C()
{
  result = qword_1EC4BE220;
  if (!qword_1EC4BE220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE220);
  }

  return result;
}

unint64_t sub_1CF1D6E74()
{
  result = qword_1EC4BE228;
  if (!qword_1EC4BE228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE228);
  }

  return result;
}

uint64_t sub_1CF1D6EC8(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else
  {
    v12 = 0x80000001CFA2EDC0;
    if (a1 == 0xD000000000000015 && 0x80000001CFA2EDC0 == a2 || (sub_1CF9E8048() & 1) != 0)
    {
      a2, v12, a3, a4, a5, a6, a7, a8;
      return 1;
    }

    else
    {
      v13 = 0xEB00000000797375;
      if (a1 == 0x426E656553736168 && a2 == 0xEB00000000797375 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 2;
      }

      else if (a1 == 0x66666F6B636162 && a2 == 0xE700000000000000 || (sub_1CF9E8048() & 1) != 0)
      {
        a2, v13, a3, a4, a5, a6, a7, a8;
        return 3;
      }

      else if (a1 == 0x656C6174537369 && a2 == 0xE700000000000000)
      {
        0xE700000000000000, v13, a3, a4, a5, a6, a7, a8;
        return 4;
      }

      else
      {
        v14 = sub_1CF9E8048();
        a2, v15, v16, v17, v18, v19, v20, v21;
        if (v14)
        {
          return 4;
        }

        else
        {
          return 5;
        }
      }
    }
  }
}

void sub_1CF1D70E0()
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1CF680B7C(0, 28, 0);
  v0 = 0;
  v1 = v5;
  v2 = *v5->tree;
  do
  {
    v3 = byte_1F4BEAD78[v0 + 32];
    v6 = v1;
    v4 = *v1->tester;
    if (v2 >= v4 >> 1)
    {
      sub_1CF680B7C((v4 > 1), v2 + 1, 1);
      v1 = v6;
    }

    ++v0;
    *v1->tree = v2 + 1;
    *(&v1[1].super.isa + v2++) = v3;
  }

  while (v0 != 28);
  sub_1CF1E8B78(v1);
  qword_1EC4EBC90 = &unk_1F4BEAF50;
}

uint64_t sub_1CF1D71E8()
{
  v1 = *v0;
  sub_1CF9E81D8();
  if (v1 == 29)
  {
    MEMORY[0x1D386A470](1);
  }

  else if (v1 == 28)
  {
    MEMORY[0x1D386A470](0);
  }

  else
  {
    MEMORY[0x1D386A470](2);
    sub_1CF07FC44(v1);
    v3 = v2;
    sub_1CF9E69C8();
    v3, v4, v5, v6, v7, v8, v9, v10;
  }

  return sub_1CF9E8228();
}

void sub_1CF1D7280(uint64_t a1)
{
  v2 = *v1;
  if (v2 == 29)
  {
    v3 = 1;
    goto LABEL_5;
  }

  if (v2 == 28)
  {
    v3 = 0;
LABEL_5:
    MEMORY[0x1D386A470](v3);
    return;
  }

  MEMORY[0x1D386A470](2);
  sub_1CF07FC44(v2);
  v5 = v4;
  sub_1CF9E69C8();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

uint64_t sub_1CF1D7320(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  if (v2 == 29)
  {
    MEMORY[0x1D386A470](1);
  }

  else if (v2 == 28)
  {
    MEMORY[0x1D386A470](0);
  }

  else
  {
    MEMORY[0x1D386A470](2);
    sub_1CF07FC44(v2);
    v4 = v3;
    sub_1CF9E69C8();
    v4, v5, v6, v7, v8, v9, v10, v11;
  }

  return sub_1CF9E8228();
}

uint64_t sub_1CF1D73B4()
{
  v1 = *v0;
  if (v1 == 28)
  {
    return 0x695F746E65726170;
  }

  if (v1 == 29)
  {
    return 0x656D616E656C6966;
  }

  v3 = sub_1CF07FC44(v1);
  v5 = v4;
  MEMORY[0x1D3868CC0](v3);
  v5, v6, v7, v8, v9, v10, v11, v12;
  return 0x617461646174656DLL;
}

BOOL sub_1CF1D7454(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 29)
  {
    return v3 == 29;
  }

  if (v2 == 28)
  {
    return v3 == 28;
  }

  if ((v3 & 0xFE) == 0x1C)
  {
    return 0;
  }

  v5 = sub_1CF07FC44(v2);
  v7 = v6;
  v8 = sub_1CF07FC44(v3);
  v16 = v9;
  if (v5 != v8 || v7 != v9)
  {
    v18 = sub_1CF9E8048();
    v7, v19, v20, v21, v22, v23, v24, v25;
    v16, v26, v27, v28, v29, v30, v31, v32;
    return v18 & 1;
  }

  v7, v9, v10, v11, v12, v13, v14, v15;
  v16, v33, v34, v35, v36, v37, v38, v39;
  return 1;
}

char *sub_1CF1D7528(char a1, char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a1 == 29)
  {
    v10 = (v8 + *(a3 + 36));
    v11 = v10[1];
    if (v11)
    {
      v12 = *v10;

      v13 = MEMORY[0x1E69E6158];
    }

    else
    {
      0, a2, a3, a4, a5, a6, a7, a8;
      v12 = 0;
      v13 = 0;
      v17[2] = 0;
    }

    v17[0] = v12;
    v17[1] = v11;
    v17[3] = v13;
    v14 = sub_1CEFF8EA0(v17);
    v16 = v15;
    sub_1CEFCCC44(v17, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v16)
    {
      return v14;
    }

    else
    {
      result = sub_1CF9E7B68();
      __break(1u);
    }
  }

  else if (a1 == 28)
  {
    return (*(*(*(a3 + 24) + 8) + 32))(a2, *(a3 + 16));
  }

  else
  {
    return sub_1CF073E1C(a1, a2);
  }

  return result;
}

void sub_1CF1D7680(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 == 29)
  {
    a6[3] = &type metadata for Filename;
    v14 = [a1 stringAtIndex_];
    v15 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v17 = v16;

    *a6 = v15;
    a6[1] = v17;
  }

  else if (a2 == 28)
  {
    v8 = *(a5 + 8);
    v9 = *(v8 + 16);
    a6[3] = a4;
    __swift_allocate_boxed_opaque_existential_0(a6);
    v9(a1, a3, a4, v8);
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_0(a6);
    }
  }

  else
  {
    sub_1CF07F730(a2, a1, a3, a6);
  }
}

uint64_t sub_1CF1D7790@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v31 = a5;
  v32 = a3;
  v36 = &_s9SQLFieldsON;
  v37 = a2;
  v34 = sub_1CF080DBC();
  v38 = v34;
  v39 = a4;
  v9 = type metadata accessor for SQLCodableAccessorWrapper(0, &v36);
  v33 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v27 - v10);
  v12 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v36) = 28;
  v18 = sub_1CF0230AC(a2, a1);
  result = sub_1CF0230B4(&v36, v18, a2, a1, a4);
  if (!v5)
  {
    v29 = v17;
    v30 = a1;
    v27 = v14;
    v28 = v9;
    v20 = v34;
    LOBYTE(v35[0]) = 29;
    sub_1CF0230AC(a2, &type metadata for Filename);
    sub_1CF0230B4(v35, &type metadata for Filename, a2, &type metadata for Filename, a4);
    v35[0] = v36;
    v35[1] = v37;
    v21 = v11;
    sub_1CF021034(sub_1CEFED334, 0, a2, &_s9SQLFieldsON, a4, v20, v11);
    v22 = v28;
    WitnessTable = swift_getWitnessTable();
    v24 = v27;
    sub_1CF080E10(v11, v22, WitnessTable, v27);
    v26 = v29;
    v25 = v30;
    (*(v33 + 8))(v21, v22);
    return sub_1CF67E0DC(v26, v35, v24, v25, v32, v31);
  }

  return result;
}

uint64_t sub_1CF1D7B44(_BYTE *a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = 0xD000000000000010;
  v9 = *a1;
  v10 = 0x80000001CFA2C3F0;
  if (v9 == 1)
  {
    v11 = 0xD000000000000010;
  }

  else
  {
    v11 = 0xD000000000000012;
  }

  if (v9 == 1)
  {
    v12 = 0x80000001CFA2C3F0;
  }

  else
  {
    v12 = 0x80000001CFA2C410;
  }

  if (*a1)
  {
    v13 = v11;
  }

  else
  {
    v13 = 0x6574617473;
  }

  if (v9)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0xE500000000000000;
  }

  if (*a2 != 1)
  {
    v8 = 0xD000000000000012;
    v10 = 0x80000001CFA2C410;
  }

  if (*a2)
  {
    v15 = v8;
  }

  else
  {
    v15 = 0x6574617473;
  }

  if (*a2)
  {
    v16 = v10;
  }

  else
  {
    v16 = 0xE500000000000000;
  }

  if (v13 == v15 && v14 == v16)
  {
    v17 = 1;
  }

  else
  {
    v17 = sub_1CF9E8048();
  }

  v14, a2, v15, a4, a5, a6, a7, a8;
  v16, v18, v19, v20, v21, v22, v23, v24;
  return v17 & 1;
}

uint64_t sub_1CF1D7C20()
{
  v1 = *v0;
  sub_1CF9E81D8();
  v2 = 0x80000001CFA2C3F0;
  if (v1 != 1)
  {
    v2 = 0x80000001CFA2C410;
  }

  if (v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF1D7CC4(uint64_t a1)
{
  v2 = 0x80000001CFA2C3F0;
  if (*v1 != 1)
  {
    v2 = 0x80000001CFA2C410;
  }

  if (*v1)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  sub_1CF9E69C8();

  v3, v4, v5, v6, v7, v8, v9, v10;
}

uint64_t sub_1CF1D7D54(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  v3 = 0x80000001CFA2C3F0;
  if (v2 != 1)
  {
    v3 = 0x80000001CFA2C410;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  sub_1CF9E69C8();
  v4, v5, v6, v7, v8, v9, v10, v11;
  return sub_1CF9E8228();
}

unint64_t sub_1CF1D7DF4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF1DA934(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1CF1D7E24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xD000000000000010;
  v5 = 0x80000001CFA2C3F0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v5 = 0x80000001CFA2C410;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x6574617473;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_1CF1D7E94()
{
  v1 = 0xD000000000000010;
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
    return 0x6574617473;
  }
}

uint64_t sub_1CF1D7EF0@<X0>(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      *(a4 + 24) = &type metadata for JobWaitCondition;
      result = [a1 longAtIndex_];
      *a4 = result;
    }

    else
    {
      result = [a1 isNullAtIndex_];
      if (result)
      {
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        result = sub_1CF1DFFC4(a3);
        if (!v4)
        {
          v8 = result;
          result = type metadata accessor for Continuation();
          *(a4 + 24) = result;
          *a4 = v8;
        }
      }
    }
  }

  else
  {
    result = [a1 longAtIndex_];
    *(a4 + 24) = MEMORY[0x1E69E6530];
    *a4 = result;
  }

  return result;
}

uint64_t sub_1CF1D8010@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1CF023980(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    *(a4 + 8) = v7;
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t sub_1CF1D8040(_BYTE *a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = *a1 == 0;
  if (*a1)
  {
    v9 = 0x6D617473656D6974;
  }

  else
  {
    v9 = 0x797469726F697270;
  }

  if (v8)
  {
    v10 = 0xE800000000000000;
  }

  else
  {
    v10 = 0xE900000000000070;
  }

  if (*a2)
  {
    v11 = 0x6D617473656D6974;
  }

  else
  {
    v11 = 0x797469726F697270;
  }

  if (*a2)
  {
    v12 = 0xE900000000000070;
  }

  else
  {
    v12 = 0xE800000000000000;
  }

  if (v9 == v11 && v10 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
  }

  v10, a2, v11, a4, a5, a6, a7, a8;
  v12, v15, v16, v17, v18, v19, v20, v21;
  return v14 & 1;
}

uint64_t sub_1CF1D80EC()
{
  v1 = *v0;
  sub_1CF9E81D8();
  if (v1)
  {
    v2 = 0xE900000000000070;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  sub_1CF9E69C8();
  v2, v3, v4, v5, v6, v7, v8, v9;
  return sub_1CF9E8228();
}

void sub_1CF1D8174(uint64_t a1)
{
  if (*v1)
  {
    v2 = 0xE900000000000070;
  }

  else
  {
    v2 = 0xE800000000000000;
  }

  sub_1CF9E69C8();

  v2, v3, v4, v5, v6, v7, v8, v9;
}

uint64_t sub_1CF1D81E8(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  if (v2)
  {
    v3 = 0xE900000000000070;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  sub_1CF9E69C8();
  v3, v4, v5, v6, v7, v8, v9, v10;
  return sub_1CF9E8228();
}

void sub_1CF1D826C(void *a1@<X0>, char *a2@<X8>)
{
  v3 = a1[1];
  v4 = sub_1CF9E7C78();
  v3, v5, v6, v7, v8, v9, v10, v11;
  if (v4 == 1)
  {
    v12 = 1;
  }

  else
  {
    v12 = 2;
  }

  if (!v4)
  {
    v12 = 0;
  }

  *a2 = v12;
}

void sub_1CF1D82CC(uint64_t *a1@<X8>)
{
  v2 = 0x797469726F697270;
  if (*v1)
  {
    v2 = 0x6D617473656D6974;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000070;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CF1D8320()
{
  if (*v0)
  {
    return 0x6D617473656D6974;
  }

  else
  {
    return 0x797469726F697270;
  }
}

id sub_1CF1D8380@<X0>(id a1@<X1>, _BYTE *a2@<X0>, void *a3@<X8>)
{
  v4 = *a2 == 0;
  if (*a2)
  {
    v5 = &type metadata for NSecTimestamp;
  }

  else
  {
    v5 = &type metadata for JobSchedulingPriority;
  }

  a3[3] = v5;
  v6 = &selRef_longAtIndex_;
  if (v4)
  {
    v6 = &selRef_unsignedLongAtIndex_;
  }

  result = [a1 *v6];
  *a3 = result;
  return result;
}

uint64_t sub_1CF1D83F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_1CF023F08(a1, a2, a3);
  if (!v4)
  {
    *a4 = result;
    a4[1] = v7;
  }

  return result;
}

unint64_t sub_1CF1D841C(unsigned __int8 a1)
{
  v1 = a1 >> 5;
  if (v1 <= 1)
  {
    if (a1 >> 5)
    {
      v9 = (a1 & 1) == 0;
      if (a1)
      {
        v5 = 0x6D617473656D6974;
      }

      else
      {
        v5 = 0x797469726F697270;
      }

      if (v9)
      {
        v6 = 0xE800000000000000;
      }

      else
      {
        v6 = 0xE900000000000070;
      }
    }

    else
    {
      v4 = a1;
      if (a1)
      {
        if (a1 == 1)
        {
          v5 = 0xD000000000000010;
        }

        else
        {
          v5 = 0xD000000000000012;
        }

        if (v4 == 1)
        {
          v6 = 0x80000001CFA2C3F0;
        }

        else
        {
          v6 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v6 = 0xE500000000000000;
        v5 = 0x6574617473;
      }
    }

    MEMORY[0x1D3868CC0](v5, v6);
    v6, v10, v11, v12, v13, v14, v15, v16;
    return 0x696C756465686373;
  }

  else if (v1 == 4)
  {
    if (a1 == 128)
    {
      return 0x7366666964;
    }

    else
    {
      return 0x765F6E69616D6F64;
    }
  }

  else if (v1 == 3)
  {
    v2 = 0x695F746567726174;
    if (a1 != 96)
    {
      v2 = 0x665F746567726174;
    }

    if (a1 <= 0x61u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v7 = 25705;
    v8 = 0x695F656372756F73;
    if (a1 != 66)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 != 64)
    {
      v7 = 0x6E6F73616572;
    }

    if (a1 <= 0x41u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }
}

void sub_1CF1D86AC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  sub_1CF680B4C(0, 3, 0);
  v1 = v13;
  v3 = *v13->tree;
  v2 = *v13->tester;
  v4 = v2 >> 1;
  v5 = v3 + 1;
  if (v2 >> 1 <= v3)
  {
    sub_1CF680B4C((v2 > 1), v3 + 1, 1);
    v1 = v13;
    v2 = *v13->tester;
    v4 = v2 >> 1;
  }

  *v1->tree = v5;
  *(&v1[1].super.isa + v3) = 0;
  v6 = v3 + 2;
  if (v4 < (v3 + 2))
  {
    sub_1CF680B4C((v2 > 1), v3 + 2, 1);
    v1 = v13;
    v2 = *v13->tester;
    v4 = v2 >> 1;
  }

  *v1->tree = v6;
  *(&v1[1].super.isa + v5) = 1;
  if (v4 < (v3 + 3))
  {
    sub_1CF680B4C((v2 > 1), v3 + 3, 1);
  }

  *v13->tree = v3 + 3;
  *(&v13[1].super.isa + v6) = 2;
  sub_1CF1E8B64(v13);
  sub_1CF680B4C(0, 2, 0);
  v7 = v0;
  v9 = *(v0 + 16);
  v8 = *(v0 + 24);
  v10 = v8 >> 1;
  v11 = v9 + 1;
  if (v8 >> 1 <= v9)
  {
    sub_1CF680B4C((v8 > 1), v9 + 1, 1);
    v7 = v0;
    v8 = *(v0 + 24);
    v10 = v8 >> 1;
  }

  *v7->tree = v11;
  *(&v7[1].super.isa + v9) = 32;
  v12 = v9 + 2;
  if (v10 < v12)
  {
    sub_1CF680B4C((v8 > 1), v12, 1);
    v7 = v0;
  }

  *v7->tree = v12;
  *(&v7[1].super.isa + v11) = 33;
  sub_1CF1E8B64(v7);
  sub_1CF1E8B64(&stru_1F4BEAE80);
  qword_1EDEBBD68 = &unk_1F4BEAE58;
}

void sub_1CF1D88B0(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 5;
  if (v3 <= 1)
  {
    if (a2 >> 5)
    {
      MEMORY[0x1D386A470](2);
      if (a2)
      {
        v5 = 0xE900000000000070;
      }

      else
      {
        v5 = 0xE800000000000000;
      }
    }

    else
    {
      MEMORY[0x1D386A470](1);
      if (a2)
      {
        if (a2 == 1)
        {
          v5 = 0x80000001CFA2C3F0;
        }

        else
        {
          v5 = 0x80000001CFA2C410;
        }
      }

      else
      {
        v5 = 0xE500000000000000;
      }
    }

    sub_1CF9E69C8();

    v5, v6, v7, v8, v9, v10, v11, v12;
  }

  else
  {
    if (v3 == 4)
    {
      if (a2 == 128)
      {
        v4 = 10;
      }

      else
      {
        v4 = 11;
      }
    }

    else if (v3 == 3)
    {
      if (a2 > 0x61u)
      {
        if (a2 == 98)
        {
          v4 = 8;
        }

        else
        {
          v4 = 9;
        }
      }

      else if (a2 == 96)
      {
        v4 = 6;
      }

      else
      {
        v4 = 7;
      }
    }

    else if (a2 > 0x41u)
    {
      if (a2 == 66)
      {
        v4 = 4;
      }

      else
      {
        v4 = 5;
      }
    }

    else if (a2 == 64)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    MEMORY[0x1D386A470](v4);
  }
}

double sub_1CF1D8A78@<D0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;

  return result;
}

uint64_t sub_1CF1D8AD8()
{
  v1 = *v0;
  sub_1CF9E81D8();
  sub_1CF1D88B0(v3, v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8B28(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  sub_1CF1D88B0(v4, v2);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8BA4()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CF9FD650[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8C2C(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CF9FD650[v2]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D8C78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1CF043D7C(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1CF1D8D80()
{
  result = qword_1EC4BE238;
  if (!qword_1EC4BE238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BE238);
  }

  return result;
}

void sub_1CF1D8E0C(unsigned __int8 a1, id a2)
{
  v3 = a1 >> 5;
  if (!(a1 >> 5))
  {
    v9 = *(v2 + 96);
    v10 = *(v2 + 104);
    v11 = *(v2 + 112);
    sub_1CF03C530(v9, v10, v11);
    sub_1CF086728(a1, a2, v9, v10, v11);
    sub_1CF03D7A8(v9, v10, v11);
    return;
  }

  if (v3 == 1)
  {
    sub_1CF08692C(a1 & 1, a2, *(v2 + 120), *(v2 + 128));
    return;
  }

  if (v3 != 2)
  {
    goto LABEL_8;
  }

  if (a1 == 64)
  {
    swift_beginAccess();
    sub_1CF053478(v2 + 56, v16);
    if (v17)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F00, &unk_1CF9FE4A0);
      if (swift_dynamicCast())
      {
        v7 = [a2 bindLongParameter_];
        goto LABEL_9;
      }
    }

    else
    {
      sub_1CEFCCC44(v16, &unk_1EC4C1BE0, &unk_1CF9FD400);
    }

    v7 = [a2 bindObjectParameter_];
    goto LABEL_9;
  }

  if (a1 != 65)
  {
LABEL_8:
    v7 = [a2 bindObjectParameter_];
LABEL_9:
    v8 = v7;
    _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

    return;
  }

  v4 = *(v2 + 136);
  v17 = MEMORY[0x1E69E6810];
  v16[0] = v4;
  sub_1CEFF8EA0(v16);
  v6 = v5;
  sub_1CEFCCC44(v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E7B68();
    __break(1u);
  }
}

uint64_t sub_1CF1D90A0@<X0>(id a1@<X1>, uint64_t result@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = result >> 5;
  if (result >> 5)
  {
    if (v6 != 1)
    {
      if (v6 != 2)
      {
LABEL_7:
        *a4 = 0u;
        *(a4 + 16) = 0u;
        return result;
      }

      if (result != 64)
      {
        if (result == 65)
        {
          *(a4 + 24) = &type metadata for JobReason;
          result = [a1 unsignedLongAtIndex_];
          *a4 = result;
          return result;
        }

        goto LABEL_7;
      }

      goto LABEL_14;
    }

    if ((result & 1) == 0)
    {
      *(a4 + 24) = &type metadata for JobSchedulingPriority;
      result = [a1 unsignedLongAtIndex_];
      goto LABEL_16;
    }

    v7 = &type metadata for NSecTimestamp;
LABEL_13:
    *(a4 + 24) = v7;
    result = [a1 longAtIndex_];
LABEL_16:
    *a4 = result;
    return result;
  }

  if (!result)
  {
LABEL_14:
    result = [a1 longAtIndex_];
    *(a4 + 24) = MEMORY[0x1E69E6530];
    *a4 = result;
    return result;
  }

  if (result == 1)
  {
    v7 = &type metadata for JobWaitCondition;
    goto LABEL_13;
  }

  result = [a1 isNullAtIndex_];
  if (result)
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  else
  {
    result = sub_1CF1DFFC4(a3);
    if (!v4)
    {
      v9 = result;
      result = type metadata accessor for Continuation();
      *(a4 + 24) = result;
      *a4 = v9;
    }
  }

  return result;
}

unint64_t sub_1CF1D9214(unsigned __int8 a1)
{
  v1 = a1 >> 2;
  if (v1 == 63)
  {
    return 1701079411;
  }

  if (v1 == 55)
  {
    return 1701869940;
  }

  return sub_1CF1D841C(a1);
}

uint64_t sub_1CF1D9264(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42[0] = a1;
  v42[1] = a2;
  v42[2] = a3;
  v42[3] = a4;
  v8 = _s9SQLFieldsOMa_2(255, v42);
  sub_1CF9E7FA8();
  swift_allocObject();
  v9 = sub_1CF9E6D68();
  *v10 = -8964;
  v11 = sub_1CF045898(v9, v8);
  v12 = v11;
  if (qword_1EDEAE328 != -1)
  {
    v11 = swift_once();
  }

  v13 = qword_1EDEBBD68;
  v42[0] = qword_1EDEBBD68;
  MEMORY[0x1EEE9AC00](v11);
  v41[2] = a1;
  v41[3] = a2;
  v41[4] = a3;
  v41[5] = a4;

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE1A8, &qword_1CF9FCAE8);
  v15 = sub_1CEFCCCEC(&qword_1EC4BE2C0, &qword_1EC4BE1A8, &qword_1CF9FCAE8, MEMORY[0x1E69E6340]);
  v17 = sub_1CF054A5C(sub_1CEFED338, v41, v14, v8, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
  v13, v18, v19, v20, v21, v22, v23, v24;
  v25 = sub_1CF9E6D98();
  v12, v26, v27, v28, v29, v30, v31, v32;
  v17, v33, v34, v35, v36, v37, v38, v39;
  return v25;
}

BOOL sub_1CF1D9434(uint64_t a1, const char *a2, uint64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v8 = a1 >> 2;
  if (v8 == 55)
  {
    return (a2 & 0xFC) == 0xDC;
  }

  if (v8 == 63)
  {
    return a2 > 0xFBu;
  }

  if ((((a2 & 0xFC) >> 2) | 8) == 0x3F)
  {
    return 0;
  }

  return sub_1CF1DA680(a1, a2, a3, a4, a5, a6, a7, a8);
}

void sub_1CF1D9490(uint64_t a1, unsigned __int8 a2)
{
  v3 = a2 >> 2;
  if (v3 == 55)
  {
    v4 = 1;
    goto LABEL_5;
  }

  if (v3 == 63)
  {
    v4 = 0;
LABEL_5:
    MEMORY[0x1D386A470](v4);
    return;
  }

  MEMORY[0x1D386A470](2);

  sub_1CF1D88B0(a1, a2);
}

uint64_t sub_1CF1D9504(unsigned __int8 a1)
{
  sub_1CF9E81D8();
  sub_1CF1D9490(v3, a1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF1D954C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1CF1D9264(a1[2], a1[3], a1[4], a1[5]);
  *a2 = result;
  return result;
}

uint64_t sub_1CF1D9590(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF1D9490(v3, *v1);
  return sub_1CF9E8228();
}

void *sub_1CF1D95E4(uint64_t a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a1 >> 2;
  if (v9 == 55)
  {
    v14 = sub_1CF057C00();
    v11 = MEMORY[0x1E69E6530];
    v12 = qword_1CF9FD650[v14];
  }

  else
  {
    if (v9 != 63)
    {
      if ((a3 & 0x8000000000000000) != 0)
      {
        v13 = a3 & 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v13 = a3;
      }

      sub_1CF1DABD8(a1, v13, a2);
      if (!v7)
      {
        return v17;
      }

      return a2;
    }

    v10 = sub_1CF946E50(a3);
    v11 = MEMORY[0x1E69E6530];
    v12 = v10 & 1;
  }

  v19[3] = v11;
  v19[0] = v12;
  a2 = sub_1CEFF8EA0(v19);
  v16 = v15;
  sub_1CEFCCC44(v19, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v16)
  {
    return a2;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

id sub_1CF1D9764@<X0>(id a1@<X1>, id result@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = result >> 2;
  if (v5 == 55)
  {
    *(a4 + 24) = &type metadata for JobCode;
    result = sub_1CF043D7C([a1 longAtIndex_]);
    if (result == 89)
    {
LABEL_7:
      sub_1CF1DA5D8();
      swift_allocError();
      *v6 = 0;
      swift_willThrow();
      return __swift_deallocate_boxed_opaque_existential_0(a4);
    }

    *a4 = result;
  }

  else if (v5 == 63)
  {
    *(a4 + 24) = &type metadata for FileTreeSide;
    result = [a1 longAtIndex_];
    if (result != 1)
    {
      if (!result)
      {
        *a4 = 0;
        return result;
      }

      goto LABEL_7;
    }

    *a4 = 1;
  }

  else if (result == 64)
  {
    v8 = a3;
    *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
    *a4 = a1;
    *(a4 + 8) = v8;
    return a1;
  }

  else
  {
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

void sub_1CF1D98A0(char a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v22 = a6;
  v23 = a7;
  v24 = a10;
  v25 = a11;
  type metadata accessor for Job(0, &v22);
  sub_1CF05194C(a1);
  v22 = a7;
  v23 = a6;
  v24 = a11;
  v25 = a10;
  Item = type metadata accessor for Propagation.CreateItem(0, &v22);
  if (swift_dynamicCastMetatype() || (v22 = a7, v23 = a6, v24 = a11, v25 = a10, Item = type metadata accessor for Propagation.UpdateItem(0, &v22), swift_dynamicCastMetatype()) || (v22 = a7, v23 = a6, v24 = a11, v25 = a10, Item = type metadata accessor for Propagation.DeleteItem(0, &v22), swift_dynamicCastMetatype()) || (v22 = a6, v23 = a7, v24 = a10, v25 = a11, Item = type metadata accessor for Bouncing.BounceItem(0, &v22), swift_dynamicCastMetatype()) || (v22 = a6, v23 = a7, v24 = a10, v25 = a11, Item = type metadata accessor for Ingestion.CollectCapturedContent(0, &v22), swift_dynamicCastMetatype()) || (v22 = a6, v23 = a7, v24 = a10, v25 = a11, Item = type metadata accessor for Ingestion.MergeItems(0, &v22), swift_dynamicCastMetatype()))
  {
    WitnessTable = swift_getWitnessTable();
    v18 = a2;
    v19 = a3;
    v20 = Item;
LABEL_8:
    sub_1CF01E03C(v18, v19, v20, WitnessTable, &v22);
    return;
  }

  v22 = a6;
  v23 = a7;
  v24 = a10;
  v25 = a11;
  v21 = type metadata accessor for Ingestion.UnlinkOldVersion(0, &v22);
  if (swift_dynamicCastMetatype())
  {
    WitnessTable = swift_getWitnessTable();
    v18 = a2;
    v19 = a3;
    v20 = v21;
    goto LABEL_8;
  }

  sub_1CF9E7B68();
  __break(1u);
}