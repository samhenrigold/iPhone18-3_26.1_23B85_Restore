uint64_t sub_21408B890@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_2146D8958();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v24 - v12;
  v14 = *&v1[OBJC_IVAR____TtC9BlastDoor21OverridingFileManager_overrides];
  if (*(v14 + 16) && (v15 = sub_21408C56C(0, 1), (v16 & 1) != 0))
  {
    (*(v5 + 16))(v13, *(v14 + 56) + *(v5 + 72) * v15, v4);
    (*(v5 + 56))(v13, 0, 1, v4);
    return (*(v5 + 32))(a1, v13, v4);
  }

  else
  {
    v18 = *(v5 + 56);
    v18(v13, 1, 1, v4);
    if (*(v14 + 16) && (v19 = sub_21408C56C(99, 0), (v20 & 1) != 0))
    {
      (*(v5 + 16))(v7, *(v14 + 56) + *(v5 + 72) * v19, v4);
      sub_2146D88B8();
      (*(v5 + 8))(v7, v4);
      v18(v11, 0, 1, v4);
      (*(v5 + 32))(a1, v11, v4);
      result = (*(v5 + 48))(v13, 1, v4);
    }

    else
    {
      v18(v11, 1, 1, v4);
      v21 = type metadata accessor for OverridingFileManager();
      v24.receiver = v2;
      v24.super_class = v21;
      v22 = objc_msgSendSuper2(&v24, sel_temporaryDirectory);
      sub_2146D88E8();

      v23 = *(v5 + 48);
      if (v23(v11, 1, v4) != 1)
      {
        sub_213FB2DF4(v11, &unk_27C9131A0, &unk_2146E9D10);
      }

      result = (v23)(v13, 1, v4);
    }

    if (result != 1)
    {
      return sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
    }
  }

  return result;
}

void sub_21408BBEC(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  v32 = a5;
  v30 = a3;
  v31 = a2;
  v37 = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = sub_2146D8958();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = a1;
  v36 = 0;
  v33 = v5;
  sub_21408B3B8(&v35, v13);
  v18 = *(v15 + 48);
  if (v18(v13, 1, v14) != 1)
  {
    v20 = *(v15 + 32);
    v20(v17, v13, v14);
    if (a4)
    {
      v21 = sub_2146D8898();
      v35 = 0;
      v22 = [v33 createDirectoryAtURL:v21 withIntermediateDirectories:1 attributes:0 error:{&v35, v30}];

      if (!v22)
      {
        v29 = v35;
        sub_2146D8838();

        swift_willThrow();
        (*(v15 + 8))(v17, v14);
        return;
      }

      v23 = v35;
    }

    v20(v32, v17, v14);
    return;
  }

  sub_213FB2DF4(v13, &unk_27C9131A0, &unk_2146E9D10);
  sub_21407E1D8(v30, v11);
  if (v18(v11, 1, v14) == 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = sub_2146D8898();
    (*(v15 + 8))(v11, v14);
  }

  v35 = 0;
  v24 = type metadata accessor for OverridingFileManager();
  v34.receiver = v33;
  v34.super_class = v24;
  v25 = objc_msgSendSuper2(&v34, sel_URLForDirectory_inDomain_appropriateForURL_create_error_, a1, v31, v19, a4 & 1, &v35);

  v26 = v35;
  if (v25)
  {
    sub_2146D88E8();
    v27 = v26;
  }

  else
  {
    v28 = v35;
    sub_2146D8838();

    swift_willThrow();
  }
}

id sub_21408C1BC()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_21408C250(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for OverridingFileManager();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

unint64_t sub_21408C2B8(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x216055840](*(v1 + 40), a1, 4);

  return sub_21408C71C(v2, v3);
}

unint64_t sub_21408C300(uint64_t a1, uint64_t a2)
{
  sub_2146DA958();
  sub_2146D9698();
  v4 = sub_2146DA9B8();

  return sub_21408C788(a1, a2, v4);
}

unint64_t sub_21408C378(uint64_t a1)
{
  v2 = sub_2146D9E78();

  return sub_21408C840(a1, v2);
}

unint64_t sub_21408C3BC(uint64_t a1)
{
  sub_2146DA958();
  type metadata accessor for CFString(0);
  sub_21408DE90(&qword_280B34D80, type metadata accessor for CFString, aQe);
  sub_2146D8CB8();
  v2 = sub_2146DA9B8();

  return sub_21408C908(a1, v2);
}

unint64_t sub_21408C470(uint64_t a1)
{
  sub_2146D8B88();
  sub_21408DE90(&unk_27C914340, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v2 = sub_2146D94D8();

  return sub_21408CA14(a1, v2);
}

unint64_t sub_21408C508(uint64_t a1)
{
  sub_2146DA008();
  v2 = sub_2146D94D8();

  return sub_21408CBD4(a1, v2);
}

unint64_t sub_21408C56C(uint64_t a1, char a2)
{
  sub_2146DA958();
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    MEMORY[0x216055860](1);
    v4 = a1;
  }

  MEMORY[0x216055860](v4);
  v5 = sub_2146DA9B8();

  return sub_21408CD6C(a1, a2 & 1, v5);
}

uint64_t sub_21408C67C(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = sub_2146DA958();
  a2(v5);
  sub_2146D9698();

  v6 = sub_2146DA9B8();

  return a3(a1, v6);
}

unint64_t sub_21408C71C(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21408C788(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2146DA6A8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_21408C840(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_2140538A4(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x216054D80](v9, a1);
      sub_21408DE3C(v9);
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

unint64_t sub_21408C908(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_21408DE90(&qword_280B34D80, type metadata accessor for CFString, aQe);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_2146D8CA8();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_21408CA14(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_2146D8B88();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_21408DE90(&qword_27C904F48, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v15 = sub_2146D9578();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_21408CBD4(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_2146DA008();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_2146D9578();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_21408CD6C(uint64_t a1, char a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      if (*(v8 + 8) == 1)
      {
        if (a2)
        {
          return result;
        }
      }

      else if ((a2 & 1) == 0 && *v8 == a1)
      {
        return result;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_21408CDF4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEB00000000657079;
      v8 = 0x546567617373654DLL;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD000000000000011;
          v7 = 0x80000002147882F0;
          break;
        case 2:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000214788310;
          break;
        case 3:
          v7 = 0xE400000000000000;
          v8 = 1262770030;
          break;
        case 4:
          v7 = 0xE600000000000000;
          v8 = 0x4B4457524C6ELL;
          break;
        case 5:
          v7 = 0xE400000000000000;
          v8 = 1263359854;
          break;
        case 6:
          v8 = 0xD000000000000012;
          v7 = 0x8000000214788340;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x8000000214788360;
          break;
        case 8:
          v7 = 0xE400000000000000;
          v8 = 1146241390;
          break;
        case 9:
          v7 = 0xE400000000000000;
          v8 = 1262576493;
          break;
        case 0xA:
          v7 = 0xE400000000000000;
          v8 = 1262838637;
          break;
        case 0xB:
          v8 = 0x4B464E636DLL;
          v7 = 0xE500000000000000;
          break;
        case 0xC:
          v7 = 0xE500000000000000;
          v8 = 0x4B4649636DLL;
          break;
        case 0xD:
          v7 = 0xE400000000000000;
          v8 = 1145655918;
          break;
        case 0xE:
          v7 = 0xE300000000000000;
          v8 = 4932718;
          break;
        case 0xF:
          v7 = 0xE300000000000000;
          v8 = 6901362;
          break;
        case 0x10:
          v7 = 0xE200000000000000;
          v8 = 22126;
          break;
        case 0x11:
          v7 = 0xE300000000000000;
          v8 = 5664368;
          break;
        case 0x12:
          v7 = 0xE400000000000000;
          v8 = 1263038064;
          break;
        case 0x13:
          v7 = 0xE400000000000000;
          v8 = 1448559214;
          break;
        case 0x14:
          v8 = 5003118;
          v7 = 0xE300000000000000;
          break;
        case 0x15:
          v8 = 4997742;
          v7 = 0xE300000000000000;
          break;
        case 0x16:
          v8 = 1448364142;
          goto LABEL_36;
        case 0x17:
          v7 = 0xE300000000000000;
          v8 = 5002350;
          break;
        case 0x18:
          v7 = 0xE400000000000000;
          v8 = 1447118958;
          break;
        case 0x19:
          v7 = 0xE300000000000000;
          v8 = 4997486;
          break;
        case 0x1A:
          v8 = 1447643246;
          goto LABEL_36;
        case 0x1B:
          v8 = 4999534;
          v7 = 0xE300000000000000;
          break;
        case 0x1C:
          v8 = 1263693424;
          goto LABEL_36;
        case 0x1D:
          v8 = 1263693411;
LABEL_36:
          v7 = 0xE400000000000000;
          break;
        case 0x1E:
          v7 = 0xE400000000000000;
          v8 = 1263693409;
          break;
        case 0x1F:
          v8 = 0x6D614E7473726946;
          v7 = 0xE900000000000065;
          break;
        case 0x20:
          v7 = 0xE800000000000000;
          v8 = 0x656D614E7473614CLL;
          break;
        default:
          break;
      }

      v9 = 0x546567617373654DLL;
      v10 = 0xEB00000000657079;
      switch(a1)
      {
        case 1:
          v10 = 0x80000002147882F0;
          if (v8 == 0xD000000000000011)
          {
            goto LABEL_97;
          }

          goto LABEL_98;
        case 2:
          v10 = 0x8000000214788310;
          if (v8 != 0xD00000000000001BLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 3:
          v10 = 0xE400000000000000;
          if (v8 != 1262770030)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 4:
          v10 = 0xE600000000000000;
          if (v8 != 0x4B4457524C6ELL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 5:
          v10 = 0xE400000000000000;
          if (v8 != 1263359854)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 6:
          v10 = 0x8000000214788340;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 7:
          v10 = 0x8000000214788360;
          if (v8 != 0xD000000000000012)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 8:
          v10 = 0xE400000000000000;
          if (v8 != 1146241390)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 9:
          v10 = 0xE400000000000000;
          if (v8 != 1262576493)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 10:
          v10 = 0xE400000000000000;
          if (v8 != 1262838637)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 11:
          v10 = 0xE500000000000000;
          if (v8 != 0x4B464E636DLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 12:
          v10 = 0xE500000000000000;
          if (v8 != 0x4B4649636DLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 13:
          v10 = 0xE400000000000000;
          if (v8 != 1145655918)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 14:
          v10 = 0xE300000000000000;
          if (v8 != 4932718)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 15:
          v10 = 0xE300000000000000;
          if (v8 != 6901362)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 16:
          v10 = 0xE200000000000000;
          if (v8 != 22126)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 17:
          v10 = 0xE300000000000000;
          if (v8 != 5664368)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 18:
          v10 = 0xE400000000000000;
          if (v8 != 1263038064)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 19:
          v10 = 0xE400000000000000;
          if (v8 != 1448559214)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 20:
          v11 = 5003118;
          goto LABEL_72;
        case 21:
          v11 = 4997742;
          goto LABEL_72;
        case 22:
          v13 = 1448364142;
          goto LABEL_102;
        case 23:
          v10 = 0xE300000000000000;
          v12 = 21614;
          goto LABEL_92;
        case 24:
          v10 = 0xE400000000000000;
          if (v8 != 1447118958)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 25:
          v10 = 0xE300000000000000;
          v12 = 16750;
LABEL_92:
          if (v8 != (v12 | 0x4C0000))
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 26:
          v13 = 1447643246;
          goto LABEL_102;
        case 27:
          v11 = 4999534;
LABEL_72:
          v10 = 0xE300000000000000;
          if (v8 != v11)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 28:
          v13 = 1263693424;
LABEL_102:
          v10 = 0xE400000000000000;
          if (v8 != v13)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 29:
          v9 = 1263693411;
          v10 = 0xE400000000000000;
          goto LABEL_96;
        case 30:
          v10 = 0xE400000000000000;
          if (v8 != 1263693409)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 31:
          v10 = 0xE900000000000065;
          if (v8 != 0x6D614E7473726946)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        case 32:
          v10 = 0xE800000000000000;
          if (v8 != 0x656D614E7473614CLL)
          {
            goto LABEL_98;
          }

          goto LABEL_97;
        default:
LABEL_96:
          if (v8 != v9)
          {
            goto LABEL_98;
          }

LABEL_97:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_98:
          v14 = sub_2146DA6A8();

          if (v14)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21408D4D4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE100000000000000;
      v8 = 99;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 100;
          break;
        case 2:
          v8 = 115;
          break;
        case 3:
          v8 = 114;
          break;
        case 4:
          v8 = 112;
          break;
        case 5:
          v7 = 0xE200000000000000;
          v8 = 29296;
          break;
        case 6:
          v7 = 0xE200000000000000;
          v8 = 29795;
          break;
        case 7:
          v7 = 0xE200000000000000;
          v8 = 27507;
          break;
        case 8:
          v7 = 0xE200000000000000;
          v8 = 27504;
          break;
        case 9:
          v7 = 0xE200000000000000;
          v8 = 27501;
          break;
        case 0xA:
          v7 = 0xE200000000000000;
          v8 = 25699;
          break;
        case 0xB:
          v7 = 0xE200000000000000;
          v8 = 28777;
          break;
        case 0xC:
          v7 = 0xE200000000000000;
          v8 = 26995;
          break;
        default:
          break;
      }

      v9 = 0xE100000000000000;
      v10 = 99;
      switch(a1)
      {
        case 1:
          if (v8 == 100)
          {
            goto LABEL_39;
          }

          goto LABEL_40;
        case 2:
          if (v8 != 115)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 3:
          if (v8 != 114)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 4:
          if (v8 != 112)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 5:
          v9 = 0xE200000000000000;
          if (v8 != 29296)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 6:
          v9 = 0xE200000000000000;
          if (v8 != 29795)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 7:
          v9 = 0xE200000000000000;
          if (v8 != 27507)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 8:
          v9 = 0xE200000000000000;
          if (v8 != 27504)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 9:
          v9 = 0xE200000000000000;
          if (v8 != 27501)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 10:
          v9 = 0xE200000000000000;
          v10 = 25699;
          goto LABEL_38;
        case 11:
          v9 = 0xE200000000000000;
          if (v8 != 28777)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        case 12:
          v9 = 0xE200000000000000;
          if (v8 != 26995)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        default:
LABEL_38:
          if (v8 != v10)
          {
            goto LABEL_40;
          }

LABEL_39:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_40:
          v11 = sub_2146DA6A8();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21408D760(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xED00007874612E65;
      v8 = 0x6C7070612E6D6F63;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x612E63696C627570;
          v7 = 0xEB00000000696376;
          break;
        case 2:
          v8 = 0x682E63696C627570;
          v7 = 0xEB00000000636965;
          break;
        case 3:
          v7 = 0xEB00000000316673;
          goto LABEL_21;
        case 4:
          v8 = 0x6D2E63696C627570;
          v7 = 0xEB00000000316669;
          break;
        case 5:
          v7 = 0xEB00000000666976;
          v8 = 0x612E63696C627570;
          break;
        case 6:
          v8 = 0x612E63696C627570;
          v7 = 0xEB00000000736976;
          break;
        case 7:
          v7 = 0xEB00000000666965;
          v8 = 0x682E63696C627570;
          break;
        case 8:
          v8 = 0xD000000000000010;
          v7 = 0x8000000214788090;
          break;
        case 9:
          v8 = 0x6A2E63696C627570;
          v7 = 0xEF7478652D676570;
          break;
        case 0xA:
          v7 = 0xEA00000000006F70;
LABEL_21:
          v8 = 0x6D2E63696C627570;
          break;
        case 0xB:
          v8 = 0x6A2E63696C627570;
          v7 = 0xEB00000000676570;
          break;
        case 0xC:
          v7 = 0xEA0000000000676ELL;
          v8 = 0x702E63696C627570;
          break;
        case 0xD:
          v8 = 0x772E63696C627570;
          v7 = 0xEB00000000706265;
          break;
        case 0xE:
          v8 = 0x742E63696C627570;
          v7 = 0xEB00000000666669;
          break;
        case 0xF:
          v7 = 0xEA0000000000706DLL;
          v8 = 0x622E63696C627570;
          break;
        case 0x10:
          v8 = 0x672E63696C627570;
          v7 = 0xEA00000000006669;
          break;
        case 0x11:
          v8 = 0xD000000000000019;
          v7 = 0x8000000214788110;
          break;
        case 0x12:
          v8 = 0xD000000000000018;
          v7 = 0x8000000214788130;
          break;
        case 0x13:
          v7 = 0xE700000000000000;
          v8 = 0x6E776F6E6B6E55;
          break;
        default:
          break;
      }

      v9 = 0x6C7070612E6D6F63;
      v10 = 0xED00007874612E65;
      switch(a1)
      {
        case 1:
          v11 = 0x612E63696C627570;
          v12 = 6906742;
          goto LABEL_47;
        case 2:
          v11 = 0x682E63696C627570;
          v12 = 6515045;
          goto LABEL_47;
        case 3:
          v10 = 0xEB00000000316673;
          goto LABEL_52;
        case 4:
          v11 = 0x6D2E63696C627570;
          v12 = 3237481;
          goto LABEL_47;
        case 5:
          v10 = 0xEB00000000666976;
          if (v8 != 0x612E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 6:
          v11 = 0x612E63696C627570;
          v12 = 7563638;
          goto LABEL_47;
        case 7:
          v10 = 0xEB00000000666965;
          if (v8 != 0x682E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 8:
          v9 = 0xD000000000000010;
          v10 = 0x8000000214788090;
          goto LABEL_55;
        case 9:
          v10 = 0xEF7478652D676570;
          if (v8 != 0x6A2E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 10:
          v10 = 0xEA00000000006F70;
LABEL_52:
          if (v8 != 0x6D2E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 11:
          v11 = 0x6A2E63696C627570;
          v12 = 6776176;
          goto LABEL_47;
        case 12:
          v10 = 0xEA0000000000676ELL;
          if (v8 != 0x702E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 13:
          v11 = 0x772E63696C627570;
          v12 = 7365221;
          goto LABEL_47;
        case 14:
          v11 = 0x742E63696C627570;
          v12 = 6710889;
LABEL_47:
          v10 = v12 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v8 != v11)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 15:
          v10 = 0xEA0000000000706DLL;
          if (v8 != 0x622E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 16:
          v10 = 0xEA00000000006669;
          if (v8 != 0x672E63696C627570)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 17:
          v10 = 0x8000000214788110;
          if (v8 != 0xD000000000000019)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 18:
          v10 = 0x8000000214788130;
          if (v8 != 0xD000000000000018)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        case 19:
          v10 = 0xE700000000000000;
          if (v8 != 0x6E776F6E6B6E55)
          {
            goto LABEL_57;
          }

          goto LABEL_56;
        default:
LABEL_55:
          if (v8 != v9)
          {
            goto LABEL_57;
          }

LABEL_56:
          if (v7 == v10)
          {

            return v4;
          }

LABEL_57:
          v13 = sub_2146DA6A8();

          if (v13)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_21408DD98()
{
  result = qword_27C904F90;
  if (!qword_27C904F90)
  {
    result = swift_getWitnessTable(aQ_67, &type metadata for OverridingFileManager.Override, v0, v1);
    atomic_store(result, &qword_27C904F90);
  }

  return result;
}

uint64_t sub_21408DE90(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_21408DED8()
{
  if (*(v0 + 16))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21408DF48@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21408DFB0(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21408E058(uint64_t a1)
{
  v8 = a1;
  v3 = *v1;
  v7 = *(v1 + 24);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 16) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_21408E194(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_21408E22C;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_21408E22C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *v3;
    v9 = *(v3 + 24);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {

      *(v3 + 16) = v2;
      return result;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v4 = *v3;
  v9 = *(v3 + 24);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v4(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v3 + 16) = v2;
}

uint64_t sub_21408E40C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_21408E458(uint64_t a1, uint64_t a2)
{

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  *a2 = *a1;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  *(a2 + 24) = v6;
}

__n128 sub_21408E4C4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v3;
  v1[1].n128_u8[8] = v4;
  return result;
}

void (*sub_21408E51C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  *v4 = *v1;
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_21408E5B4;
}

void sub_21408E5B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  else
  {

    *v3 = v5;
    *(v3 + 8) = v4;
    *(v3 + 16) = v6;
    *(v3 + 24) = v7;
  }

  free(v2);
}

unint64_t sub_21408E674@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EAEB0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904180, &qword_2146EAAE0);
  v3 = swift_allocObject();
  v4 = swift_allocObject();
  v4[2] = sub_213FDC8D0;
  v4[3] = 0;
  v4[4] = 1;
  v4[5] = sub_21403C354;
  v4[6] = 0;
  *(v3 + 16) = sub_2140597F4;
  *(v3 + 24) = v4;
  *(inited + 32) = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F20, &unk_2146E9D20);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v5 + 16) = sub_21408E9A0;
  *(v5 + 24) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_21408E9E0;
  *(v7 + 24) = v5;
  *(inited + 40) = v7;
  return sub_2140433DC(inited, a1);
}

unint64_t sub_21408E7D8(uint64_t a1)
{
  *(a1 + 8) = sub_21408E808();
  result = sub_21408E85C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21408E808()
{
  result = qword_27C904F98;
  if (!qword_27C904F98)
  {
    result = swift_getWitnessTable(byte_2146FD830, &type metadata for UnsupportedMessage, v0, v1);
    atomic_store(result, &qword_27C904F98);
  }

  return result;
}

unint64_t sub_21408E85C()
{
  result = qword_27C904FA0;
  if (!qword_27C904FA0)
  {
    result = swift_getWitnessTable(byte_2146FD858, &type metadata for UnsupportedMessage, v0, v1);
    atomic_store(result, &qword_27C904FA0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_21408E8C4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_21408E90C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_21408E960(uint64_t *a1, char *a2, char *a3)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *a3;
  v7 = *a2;
  return sub_2143BD420(v3, v4, &v7, v5) & 1;
}

uint64_t sub_21408E9A0(uint64_t *a1, char *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 16);
  v7 = *a2;
  return sub_2143BD420(v3, v4, &v7, v5) & 1;
}

uint64_t sub_21408EA0C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  type metadata accessor for FileDescriptor();
  v6 = swift_allocObject();
  v9 = 0;
  v8[2] = &v9;
  sub_21408ED74(sub_21408ED58, v8, v5, v4, &v9);

  if (v2)
  {

    return swift_deallocPartialClassInstance();
  }

  else
  {

    *(v6 + 16) = v9;
    *a2 = v6;
  }

  return result;
}

uint64_t sub_21408EAF8(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  if (archive_read_new())
  {
    lseek(*(v4 + 16), 0, 0);
    archive_read_support_format_zip_seekable();
    if (!archive_read_open_fd())
    {
      archive_read_next_header();
      sub_21408F29C();
      swift_allocError();
      *v7 = 6;
      swift_willThrow();
      archive_read_free();
      return v3;
    }

    archive_read_free();
    sub_21408F29C();
    swift_allocError();
    *v5 = 1;
  }

  else
  {
    sub_21408F29C();
    swift_allocError();
    *v6 = 0;
  }

  swift_willThrow();
  return v3;
}

void sub_21408ED74(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = sub_2146D8958();
  v11 = *(v38 - 8);
  v12 = MEMORY[0x28223BE20](v38);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  if (!a4)
  {
    v39 = 47;
    v40 = 0xE100000000000000;
    v41 = a3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
    sub_2140610B4();
    v37 = a5;
    v23 = sub_2146D9558();
    v25 = v24;

    MEMORY[0x2160545D0](v23, v25);

    sub_2146D8888();

    MEMORY[0x28223BE20](v26);
    *(&v37 - 2) = a1;
    *(&v37 - 1) = a2;
    sub_2146D88D8();
    (*(v11 + 8))(v16, v38);
    return;
  }

  v37 = a1;

  sub_2146A5650(v17);
  if (v5)
  {
    goto LABEL_18;
  }

  v39 = 47;
  v40 = 0xE100000000000000;
  v41 = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F20, &qword_2146EE8A0);
  sub_2140610B4();
  v18 = sub_2146D9558();
  v20 = v19;

  MEMORY[0x2160545D0](v18, v20);

  sub_2146D8888();

  MEMORY[0x28223BE20](v21);
  *(&v37 - 2) = v37;
  *(&v37 - 1) = a2;
  sub_2146D88D8();
  (*(v11 + 8))(v14, v38);
  if (*(a4 + 40))
  {
    v27 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      v36 = v27;
      swift_once();
      v27 = v36;
    }

    sub_2146D91D8(v27, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
    goto LABEL_18;
  }

  v28 = sandbox_extension_release();
  if (v28 == sub_2146D93B8())
  {
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
LABEL_18:

    return;
  }

  v29 = MEMORY[0x2160542A0]();
  sub_21408FA04();
  v30 = swift_allocError();
  *v31 = v29;
  *(v31 + 4) = 0;
  swift_willThrow();
  if (*(a4 + 40))
  {
    v22 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      v35 = v22;
      swift_once();
      v22 = v35;
    }

    sub_2146D91D8(v22, &dword_213FAF000, qword_280B35410, "Trying to release sandbox extension that is not consumed.", 57, 2, MEMORY[0x277D84F90]);
    goto LABEL_17;
  }

  v32 = sandbox_extension_release();
  if (v32 == sub_2146D93B8())
  {
    *(a4 + 32) = 0;
    *(a4 + 40) = 1;
LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  v33 = MEMORY[0x2160542A0]();
  sub_21408FA04();
  swift_allocError();
  *v34 = v33;
  *(v34 + 4) = 0;
  swift_willThrow();
}

unint64_t sub_21408F29C()
{
  result = qword_27C904FA8;
  if (!qword_27C904FA8)
  {
    result = swift_getWitnessTable(byte_2146F0B14, &type metadata for UnarchivingOperationError, v0, v1);
    atomic_store(result, &qword_27C904FA8);
  }

  return result;
}

uint64_t sub_21408F2F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = *a1;
  v5 = a1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_213FB54FC(v6, v5);
      *&v25 = v6;
      *(&v25 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_2146ECC00;
      sub_213FB54FC(0, 0xC000000000000000);
      result = sub_21408F6A0(&v25, a2, a3);
      v20 = v25;
      v21 = *(&v25 + 1) | 0x4000000000000000;
LABEL_22:
      *a1 = v20;
      a1[1] = v21;
      return result;
    }

    sub_213FB54FC(v6, v5);
    *&v25 = v6;
    WORD4(v25) = v5;
    BYTE10(v25) = BYTE2(v5);
    BYTE11(v25) = BYTE3(v5);
    BYTE12(v25) = BYTE4(v5);
    BYTE13(v25) = BYTE5(v5);
    BYTE14(v25) = BYTE6(v5);
    if (a2 == BYTE6(v5))
    {
      result = archive_read_data();
      if (result == a2)
      {
LABEL_21:
        v20 = v25;
        v21 = DWORD2(v25) | ((WORD6(v25) | (BYTE14(v25) << 16)) << 32);
        goto LABEL_22;
      }

      sub_21408F29C();
      swift_allocError();
      v10 = 5;
    }

    else
    {
      sub_21408F29C();
      swift_allocError();
      v10 = 4;
    }

    *v9 = v10;
    result = swift_willThrow();
    goto LABEL_21;
  }

  if (v7 == 2)
  {

    sub_213FB54FC(v6, v5);
    *&v25 = v6;
    *(&v25 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_2146ECC00;
    sub_213FB54FC(0, 0xC000000000000000);
    sub_2146D8968();
    v11 = v25;
    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    result = sub_2146D8728();
    if (result)
    {
      if (__OFSUB__(v13, sub_2146D8758()))
      {
        __break(1u);
      }

      else
      {
        v14 = __OFSUB__(v12, v13);
        v15 = v12 - v13;
        if (!v14)
        {
          v16 = sub_2146D8748();
          if (v16 >= v15)
          {
            v17 = v15;
          }

          else
          {
            v17 = v16;
          }

          if (v17 == a2)
          {
            result = archive_read_data();
            if (result == a2)
            {
LABEL_25:
              *a1 = v11;
              a1[1] = *(&v11 + 1) | 0x8000000000000000;
              return result;
            }

            v18 = 5;
          }

          else
          {
            v18 = 4;
          }

          sub_21408F29C();
          swift_allocError();
          *v24 = v18;
          result = swift_willThrow();
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {
    *(&v25 + 7) = 0;
    *&v25 = 0;
    if (a2)
    {
      sub_21408F29C();
      swift_allocError();
      v23 = 4;
    }

    else
    {
      result = archive_read_data();
      if (!result)
      {
        return result;
      }

      sub_21408F29C();
      swift_allocError();
      v23 = 5;
    }

    *v22 = v23;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_21408F6A0(int *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2146D89A8();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = sub_2146D8728();
  if (result)
  {
    result = sub_2146D8758();
    if (!__OFSUB__(v6, result))
    {
      v8 = v7 - v6;
      v9 = sub_2146D8748();
      if (v9 >= v8)
      {
        v10 = v8;
      }

      else
      {
        v10 = v9;
      }

      if (v10 == a2)
      {
        if (archive_read_data() == a2)
        {
        }

        v11 = 5;
      }

      else
      {
        v11 = 4;
      }

      sub_21408F29C();
      swift_allocError();
      *v12 = v11;
      swift_willThrow();
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_21408F798(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_2145B087C(result);
    }

    else
    {
      sub_2146D8778();
      swift_allocObject();
      sub_2146D8738();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_2146D89D8();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for Archive(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for Archive(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_21408F988()
{
  result = qword_27C904FB0;
  if (!qword_27C904FB0)
  {
    result = swift_getWitnessTable(asc_2146F0AEC, &type metadata for UnarchivingOperationError, v0, v1);
    atomic_store(result, &qword_27C904FB0);
  }

  return result;
}

unint64_t sub_21408FA04()
{
  result = qword_27C904FB8;
  if (!qword_27C904FB8)
  {
    result = swift_getWitnessTable(aAoml, &type metadata for SandboxExtensionError, v0, v1);
    atomic_store(result, &qword_27C904FB8);
  }

  return result;
}

uint64_t sub_21408FA70(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  v4 = sub_2146D9628();

  v5 = sub_2146D9628();

  xpc_dictionary_set_string(v3, (v4 + 32), (v5 + 32));
}

uint64_t sub_21408FB88(uint64_t a1, unsigned __int8 a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  sub_214090414(a1, &v13 - v6);
  v8 = sub_2146D8B88();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_214082B3C(v7);
  }

  else
  {
    sub_2146D8B28();
    (*(v9 + 8))(v7, v8);
  }

  v10 = sub_2146D9628();

  v11 = sub_2146D9628();

  xpc_dictionary_set_string(v3, (v10 + 32), (v11 + 32));
  sub_214082B3C(a1);
}

uint64_t sub_21408FD98()
{
  v1 = MEMORY[0x216056E20](v0);
  if (v1 == MEMORY[0x277D86448])
  {
    return 0;
  }

  if (v1 == MEMORY[0x277D86498])
  {
    return 1;
  }

  if (v1 == MEMORY[0x277D864C8])
  {
    return 2;
  }

  if (v1 == MEMORY[0x277D864C0])
  {
    return 3;
  }

  if (v1 == MEMORY[0x277D86470])
  {
    return 4;
  }

  if (v1 == MEMORY[0x277D86458])
  {
    return 5;
  }

  if (v1 == MEMORY[0x277D86460])
  {
    return 8;
  }

  if (v1 == MEMORY[0x277D86488])
  {
    return 9;
  }

  if (v1 == MEMORY[0x277D864D0])
  {
    return 10;
  }

  if (v1 == MEMORY[0x277D864B0])
  {
    return 11;
  }

  if (v1 == MEMORY[0x277D86468])
  {
    return 7;
  }

  if (v1 == MEMORY[0x277D86440])
  {
    return 6;
  }

  if (v1 == MEMORY[0x277D86450])
  {
    return 12;
  }

  if (v1 == MEMORY[0x277D86480])
  {
    return 13;
  }

  v3 = v1;
  sub_2146D9EF8();
  MEMORY[0x2160545D0](0xD00000000000001CLL, 0x800000021478C4F0);
  xpc_type_get_name(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FC0, &qword_2146F0B58);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](46, 0xE100000000000000);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_21408FFD8()
{
  if (sub_21408FD98() != 13)
  {
    return 4;
  }

  v1 = _blastdoor_xpc_ERROR_CONNECTION_INVALID();
  if (v1)
  {
    v2 = v1;
    swift_unknownObjectRelease();
    if (v2 == v0)
    {
      return 0;
    }
  }

  v3 = _blastdoor_xpc_ERROR_CONNECTION_INTERRUPTED();
  if (v3)
  {
    v4 = v3;
    swift_unknownObjectRelease();
    if (v4 == v0)
    {
      return 1;
    }
  }

  v5 = _blastdoor_xpc_ERROR_TERMINATION_IMMINENT();
  if (v5 && (v6 = v5, swift_unknownObjectRelease(), v6 == v0))
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

xpc_object_t sub_2140900AC(uint64_t a1, uint64_t a2)
{
  v3 = sub_2146D9628();
  v4 = xpc_dictionary_get_value(v2, (v3 + 32));

  return v4;
}

uint64_t sub_2140900F4(unsigned __int8 a1)
{
  v2 = sub_2146D9628();

  string = xpc_dictionary_get_string(v1, (v2 + 32));

  if (string)
  {
    return sub_2146D96E8();
  }

  else
  {
    return 0;
  }
}

xpc_object_t sub_2140901DC(unsigned __int8 a1)
{
  v2 = sub_2146D9628();

  v3 = xpc_dictionary_get_value(v1, (v2 + 32));

  return v3;
}

uint64_t sub_2140902B8@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_2146D9628();

  string = xpc_dictionary_get_string(v2, (v4 + 32));

  if (string)
  {
    sub_2146D96E8();
    sub_2146D8B18();
  }

  else
  {
    v7 = sub_2146D8B88();
    v8 = *(*(v7 - 8) + 56);

    return v8(a2, 1, 1, v7);
  }
}

uint64_t sub_214090414(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C904F30, &unk_2146EFA20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214090484(void *a1, unsigned __int8 a2)
{
  v4 = sub_2146D9628();

  xpc_dictionary_set_value(v2, (v4 + 32), a1);
}

unint64_t sub_2140905AC()
{
  result = qword_27C904FC8;
  if (!qword_27C904FC8)
  {
    result = swift_getWitnessTable(asc_2146F0BC0, &type metadata for XPCErrorType, v0, v1);
    atomic_store(result, &qword_27C904FC8);
  }

  return result;
}

unint64_t sub_214090604()
{
  result = qword_27C904FD0;
  if (!qword_27C904FD0)
  {
    result = swift_getWitnessTable(byte_2146F0C28, &type metadata for XPCObjectType, v0, v1);
    atomic_store(result, &qword_27C904FD0);
  }

  return result;
}

uint64_t sub_214090658@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result == 2007;
  if (result == 3007)
  {
    v2 = 2;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_214090674@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 3007)
  {
    v2 = 2;
  }

  else
  {
    v2 = 3;
  }

  if (result == 2007)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (!result)
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_2140906D8()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F0F58[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214090760(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F0F58[v2]);
  return sub_2146DA9B8();
}

uint64_t sub_2140908B4()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_2140908E4(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t sub_21409093C()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_21409096C(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_2140909CC(uint64_t result, uint64_t a2)
{
  *(v2 + 40) = result;
  *(v2 + 48) = a2;
  return result;
}

uint64_t sub_2140909F4()
{
  if (*(v0 + 72))
  {
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214090A64@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 72);
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214090ACC(uint64_t *a1)
{
  sub_2140325F8(*a1, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_214090B74(uint64_t a1)
{
  v8 = a1;
  v3 = *(v1 + 56);
  v7 = *(v1 + 80);
  v6[0] = 0x6E776F6E6B6E753CLL;
  v6[1] = 0xE90000000000003ELL;
  v6[2] = 0xD00000000000001CLL;
  v6[3] = 0x800000021478A360;
  if (v3(&v8, &v7, v6))
  {

    *(v1 + 72) = a1;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v5 = 0x6E776F6E6B6E753CLL;
    v5[1] = 0xE90000000000003ELL;
    v5[2] = 0xD00000000000001CLL;
    v5[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t (*sub_214090CB0(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 72);
  a1[1] = v1;
  a1[2] = v3;
  if (v3)
  {
    *a1 = v3;

    return sub_214090D48;
  }

  else
  {
    result = sub_2146DA018();
    __break(1u);
  }

  return result;
}

uint64_t sub_214090D48(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    v8 = *a1;
    v6 = *(v3 + 56);
    v9 = *(v3 + 80);
    v10 = 0x6E776F6E6B6E753CLL;
    v11 = 0xE90000000000003ELL;
    v12 = 0xD00000000000001CLL;
    v13 = 0x800000021478A360;
    if (v6(&v8, &v9, &v10))
    {

      *(v3 + 72) = v2;
      return result;
    }

    goto LABEL_8;
  }

  v8 = *a1;
  v4 = *(v3 + 56);
  v9 = *(v3 + 80);
  v10 = 0x6E776F6E6B6E753CLL;
  v11 = 0xE90000000000003ELL;
  v12 = 0xD00000000000001CLL;
  v13 = 0x800000021478A360;

  if ((v4(&v8, &v9, &v10) & 1) == 0)
  {
LABEL_8:
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  *(v3 + 72) = v2;
}

uint64_t sub_214090F28@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 56);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
}

uint64_t sub_214090F74(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  v6 = *(a1 + 24);

  *(a2 + 56) = v4;
  *(a2 + 64) = v3;
  *(a2 + 72) = v5;
  *(a2 + 80) = v6;
  return result;
}

__n128 sub_214090FE8(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u8[8];

  result = *a1;
  *(v1 + 56) = *a1;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

void (*sub_214091040(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  v5 = *(v1 + 64);
  v6 = *(v1 + 72);
  v7 = *(v1 + 80);
  *v4 = *(v1 + 56);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;

  return sub_2140910D8;
}

void sub_2140910D8(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v5 = **a1;
  v4 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = *(*a1 + 24);
  if (a2)
  {

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v6;
    *(v3 + 80) = v7;
  }

  else
  {

    *(v3 + 56) = v5;
    *(v3 + 64) = v4;
    *(v3 + 72) = v6;
    *(v3 + 80) = v7;
  }

  free(v2);
}

uint64_t sub_214091198@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 152);
  v4 = *(v1 + 184);
  v16 = *(v1 + 168);
  v3 = v16;
  v17 = v4;
  v18 = *(v1 + 200);
  v5 = v18;
  v11 = *(v1 + 88);
  v7 = *(v1 + 120);
  v12 = *(v1 + 104);
  v6 = v12;
  v13 = v7;
  v14 = *(v1 + 136);
  v8 = v14;
  v15 = v2;
  *a1 = v11;
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_214091538(&v11, v10);
}

__n128 sub_214091214(uint64_t a1)
{
  v3 = *(v1 + 168);
  v10[4] = *(v1 + 152);
  v10[5] = v3;
  v10[6] = *(v1 + 184);
  v11 = *(v1 + 200);
  v4 = *(v1 + 104);
  v10[0] = *(v1 + 88);
  v10[1] = v4;
  v5 = *(v1 + 136);
  v10[2] = *(v1 + 120);
  v10[3] = v5;
  sub_214091594(v10);
  v6 = *(a1 + 80);
  *(v1 + 152) = *(a1 + 64);
  *(v1 + 168) = v6;
  *(v1 + 184) = *(a1 + 96);
  v7 = *(a1 + 16);
  *(v1 + 88) = *a1;
  *(v1 + 104) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 120) = result;
  *(v1 + 200) = *(a1 + 112);
  *(v1 + 136) = v9;
  return result;
}

uint64_t sub_2140912CC@<X0>(_OWORD *a1@<X8>)
{
  v2 = v1[16];
  v9 = v1[15];
  v10 = v2;
  v11 = v1[17];
  v3 = v11;
  v4 = v1[14];
  v8[0] = v1[13];
  v5 = v8[0];
  v8[1] = v4;
  a1[2] = v9;
  a1[3] = v2;
  a1[4] = v3;
  *a1 = v5;
  a1[1] = v4;
  return sub_2140915E8(v8, &v7);
}

__n128 sub_214091318(uint64_t a1)
{
  v3 = v1[16];
  v7[2] = v1[15];
  v7[3] = v3;
  v7[4] = v1[17];
  v4 = v1[14];
  v7[0] = v1[13];
  v7[1] = v4;
  sub_214091658(v7);
  v5 = *(a1 + 48);
  v1[15] = *(a1 + 32);
  v1[16] = v5;
  v1[17] = *(a1 + 64);
  result = *(a1 + 16);
  v1[13] = *a1;
  v1[14] = result;
  return result;
}

uint64_t sub_214091398()
{
  v1 = *(v0 + 288);

  return v1;
}

uint64_t sub_2140913C8(uint64_t a1, uint64_t a2)
{

  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
  return result;
}

uint64_t sub_214091420()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_2146D9EF8();
  MEMORY[0x2160545D0](40, 0xE100000000000000);
  MEMORY[0x2160545D0](0x5472656B63697453, 0xEE006B6361427061);
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBF0);
  sub_2146D9FE8();
  MEMORY[0x2160545D0](0xD000000000000018, 0x800000021478BBB0);
  MEMORY[0x2160545D0](v1, v2);
  MEMORY[0x2160545D0](41, 0xE100000000000000);
  return 0;
}

uint64_t sub_2140915E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_214091658(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904FD8, &qword_2146F0C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2140916C4()
{
  result = qword_27C904FE0;
  if (!qword_27C904FE0)
  {
    result = swift_getWitnessTable(aQ_68, &type metadata for StickerTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904FE0);
  }

  return result;
}

unint64_t sub_214091744()
{
  result = qword_27C904FE8;
  if (!qword_27C904FE8)
  {
    result = swift_getWitnessTable(aM_157, &type metadata for StickerTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904FE8);
  }

  return result;
}

unint64_t sub_214091798()
{
  result = qword_27C904FF0;
  if (!qword_27C904FF0)
  {
    result = swift_getWitnessTable(byte_2146F0D4C, &type metadata for StickerTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C904FF0);
  }

  return result;
}

uint64_t sub_214091818(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214091854()
{
  result = qword_27C904FF8;
  if (!qword_27C904FF8)
  {
    result = swift_getWitnessTable(byte_2146FC660, &type metadata for StickerTapBack, v0, v1);
    atomic_store(result, &qword_27C904FF8);
  }

  return result;
}

unint64_t sub_2140918A8()
{
  result = qword_27C905000;
  if (!qword_27C905000)
  {
    result = swift_getWitnessTable(aQM_2, &type metadata for StickerTapBack, v0, v1);
    atomic_store(result, &qword_27C905000);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_9BlastDoor17_AttributedStringVSgSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t get_enum_tag_for_layout_string_9BlastDoor7TapBackV18MessageSummaryInfoVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_214091940(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 304))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214091988(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 296) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 304) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 304) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_214091A38()
{
  result = qword_27C905008;
  if (!qword_27C905008)
  {
    result = swift_getWitnessTable(aMp_4, &type metadata for StickerTapBack.AssociatedMessageType, v0, v1);
    atomic_store(result, &qword_27C905008);
  }

  return result;
}

uint64_t sub_214091AC0(uint64_t a1)
{
  *(a1 + 8) = sub_214091B74(&qword_27C905010, asc_2146FB4E0);
  result = sub_214091B74(&qword_27C905018, byte_2146FB508);
  *(a1 + 16) = result;
  return result;
}

uint64_t type metadata accessor for NotifyRecipientCommand(uint64_t a1)
{
  result = qword_280B30278;
  if (!qword_280B30278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_214091B74(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for NotifyRecipientCommand(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214091BE0()
{
  v1 = *v0;
  sub_21402D9F8(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_214091C14(uint64_t a1, uint64_t a2)
{
  result = sub_213FB54FC(*v2, *(v2 + 8));
  *v2 = a1;
  *(v2 + 8) = a2;
  return result;
}

uint64_t sub_214091C74(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_214091CC0()
{
  v1 = *(v0 + 24);
  sub_213FDCA18(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_214091CF4(uint64_t a1, uint64_t a2)
{
  result = sub_213FDC6BC(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t sub_214091D4C()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214091D7C(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214091E64()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_214091E94(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t sub_214091EEC()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_214091F1C(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t sub_214091F74()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t sub_214091FA4(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t sub_214091FFC()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_21409202C(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t sub_214092084()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_2140920B4(uint64_t a1, uint64_t a2)
{

  *(v2 + 80) = a1;
  *(v2 + 88) = a2;
  return result;
}

uint64_t sub_21409213C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 80);
  v13 = *(v1 + 64);
  v2 = v13;
  v14 = v3;
  v15 = *(v1 + 96);
  v4 = v15;
  v5 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v5;
  v6 = *(v1 + 48);
  v11 = *(v1 + 32);
  v7 = v11;
  v12 = v6;
  *a1 = v10[0];
  *(a1 + 16) = v5;
  *(a1 + 32) = v7;
  *(a1 + 48) = v6;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  return sub_214092198(v10, v9);
}

__n128 sub_2140921D0(uint64_t a1)
{
  v3 = *(v1 + 80);
  v9[4] = *(v1 + 64);
  v9[5] = v3;
  v10 = *(v1 + 96);
  v4 = *(v1 + 16);
  v9[0] = *v1;
  v9[1] = v4;
  v5 = *(v1 + 48);
  v9[2] = *(v1 + 32);
  v9[3] = v5;
  sub_214092240(v9);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 48);
  *(v1 + 32) = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

uint64_t sub_214092290@<X0>(void *a1@<X8>)
{
  v2 = v1[14];
  v3 = v1[15];
  *a1 = v1[13];
  a1[1] = v2;
  a1[2] = v3;
}

__n128 sub_2140922A4(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 104) = v4;
  *(v1 + 120) = v2;
  return result;
}

uint64_t sub_214092308()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_214092338(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_214092390()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_2140923C0(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t type metadata accessor for CollaborationMetadata(uint64_t a1)
{
  result = qword_280B30330;
  if (!qword_280B30330)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2140924AC(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CollaborationMetadata(0) + 24);

  return sub_2140924F0(a1, v3);
}

uint64_t sub_2140924F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C913090, &unk_2146E9DB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140925A8()
{
  v1 = *(v0 + *(type metadata accessor for CollaborationMetadata(0) + 28));

  return v1;
}

uint64_t sub_2140925E8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CollaborationMetadata(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214092678()
{
  type metadata accessor for CollaborationMetadata(0);
}

uint64_t sub_2140926AC(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationMetadata(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_214092734()
{
  type metadata accessor for CollaborationMetadata(0);
}

uint64_t sub_214092768(uint64_t a1)
{
  v3 = *(type metadata accessor for CollaborationMetadata(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_2140927F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CollaborationMetadata(0) + 40));
  v4 = v3[3];
  v5 = v3[5];
  v20 = v3[4];
  v6 = v20;
  v21 = v5;
  v7 = v3[7];
  v9 = v3[5];
  v22 = v3[6];
  v8 = v22;
  v23 = v7;
  v10 = v3[3];
  v11 = v3[1];
  v18 = v3[2];
  v19 = v10;
  v12 = v3[1];
  v17[0] = *v3;
  v13 = v17[0];
  v17[1] = v12;
  a1[2] = v18;
  a1[3] = v4;
  *a1 = v13;
  a1[1] = v11;
  v14 = v3[7];
  a1[6] = v8;
  a1[7] = v14;
  a1[4] = v6;
  a1[5] = v9;
  return sub_213FB2E54(v17, &v16, &qword_27C905020, ")\r");
}

__n128 sub_214092888(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for CollaborationMetadata(0) + 40));
  v4 = v3[5];
  v13[4] = v3[4];
  v13[5] = v4;
  v5 = v3[7];
  v13[6] = v3[6];
  v13[7] = v5;
  v6 = v3[3];
  v13[2] = v3[2];
  v13[3] = v6;
  v7 = v3[1];
  v13[0] = *v3;
  v13[1] = v7;
  sub_214092908(v13);
  v8 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v8;
  v9 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v9;
  v10 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v10;
  result = *(a1 + 32);
  v12 = *(a1 + 48);
  v3[2] = result;
  v3[3] = v12;
  return result;
}

uint64_t sub_214092908(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905020, ")\r");
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2140929E4()
{
  result = qword_27C905028;
  if (!qword_27C905028)
  {
    result = swift_getWitnessTable(byte_2146F8970, &type metadata for CollaborationMemberIdentity, v0, v1);
    atomic_store(result, &qword_27C905028);
  }

  return result;
}

unint64_t sub_214092A38()
{
  result = qword_27C905030;
  if (!qword_27C905030)
  {
    result = swift_getWitnessTable(aA_72, &type metadata for CollaborationMemberIdentity, v0, v1);
    atomic_store(result, &qword_27C905030);
  }

  return result;
}

uint64_t sub_214092AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_214092AF4()
{
  result = qword_27C905038;
  if (!qword_27C905038)
  {
    result = swift_getWitnessTable(aI_80, &type metadata for CloudKitContainerIdentifier, v0, v1);
    atomic_store(result, &qword_27C905038);
  }

  return result;
}

unint64_t sub_214092B48()
{
  result = qword_27C905040;
  if (!qword_27C905040)
  {
    result = swift_getWitnessTable(byte_2146F89E8, &type metadata for CloudKitContainerIdentifier, v0, v1);
    atomic_store(result, &qword_27C905040);
  }

  return result;
}

unint64_t sub_214092BC8()
{
  result = qword_27C905048;
  if (!qword_27C905048)
  {
    result = swift_getWitnessTable(byte_2146F8A10, &type metadata for CloudKitContainerOptions, v0, v1);
    atomic_store(result, &qword_27C905048);
  }

  return result;
}

unint64_t sub_214092C1C()
{
  result = qword_27C905050;
  if (!qword_27C905050)
  {
    result = swift_getWitnessTable(byte_2146F8A38, &type metadata for CloudKitContainerOptions, v0, v1);
    atomic_store(result, &qword_27C905050);
  }

  return result;
}

unint64_t sub_214092C9C()
{
  result = qword_27C905058;
  if (!qword_27C905058)
  {
    result = swift_getWitnessTable(byte_2146F8A60, &type metadata for CloudKitContainerSetupInfo, v0, v1);
    atomic_store(result, &qword_27C905058);
  }

  return result;
}

unint64_t sub_214092CF0()
{
  result = qword_27C905060;
  if (!qword_27C905060)
  {
    result = swift_getWitnessTable(aQ_69, &type metadata for CloudKitContainerSetupInfo, v0, v1);
    atomic_store(result, &qword_27C905060);
  }

  return result;
}

uint64_t sub_214092D44(uint64_t a1)
{
  *(a1 + 8) = sub_214092DAC(&qword_27C905068, aY_65);
  result = sub_214092DAC(&qword_27C905070, byte_2146F8AD8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214092DAC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for CollaborationMetadata(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214092DF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_214092E38(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_214092E90(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_214092ED8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_214092F28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 97))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_214092F84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_214093004(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 112);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_21409304C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 112) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_2140930E4(uint64_t a1)
{
  sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    sub_21409320C(319);
    if (v2 <= 0x3F)
    {
      sub_214078E0C(319, &qword_280B2E490, &qword_27C905078, &unk_2146F4400);
      if (v3 <= 0x3F)
      {
        sub_214078E0C(319, &qword_280B2E3C0, &unk_27C904F20, &qword_2146EE8A0);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, qword_280B2E9A0, &type metadata for CloudKitContainerSetupInfo);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_21409320C(uint64_t a1)
{
  if (!qword_280B35230)
  {
    sub_2146D8B08();
    v1 = sub_2146D9D38();
    if (!v2)
    {
      atomic_store(v1, &qword_280B35230);
    }
  }
}

uint64_t sub_214093264(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C905080, type metadata accessor for IDSDictionaryContext, aIv);
  result = sub_214093308(&qword_27C905088, type metadata accessor for IDSDictionaryContext, byte_214702BC8);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214093308(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_214093350(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C905090, type metadata accessor for IDSInvitationContextType, byte_214702BF0);
  result = sub_214093308(&qword_27C905098, type metadata accessor for IDSInvitationContextType, byte_214702C18);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2140933F4(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C9050A0, type metadata accessor for IDSInvitationContext, byte_2146FA4F0);
  result = sub_214093308(&qword_27C9050A8, type metadata accessor for IDSInvitationContext, byte_2146FA518);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214093498(uint64_t a1)
{
  *(a1 + 8) = sub_214093308(&qword_27C9050B0, type metadata accessor for IDSInvitation, protocol conformance descriptor for IDSInvitation);
  result = sub_214093308(&qword_27C9050B8, type metadata accessor for IDSInvitation, protocol conformance descriptor for IDSInvitation);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_21409353C(uint64_t a1)
{
  result = type metadata accessor for IDSSampleInvitation(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for IDSHomeKitInvitation(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for IDSKCSharingInvitation(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for IDSHealthInvitation(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for IDSActivitySharingInvitation(319);
          if (v6 <= 0x3F)
          {
            swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2140935F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IDSDictionaryContext(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_214093660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for IDSDictionaryContext(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_2140936DC(uint64_t a1)
{
  result = type metadata accessor for IDSDictionaryContext(319);
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_2140937A8(uint64_t a1)
{
  sub_2140939D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
  if (v1 <= 0x3F)
  {
    sub_2140939D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      type metadata accessor for IDSInvitationContextType(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2140938B4(uint64_t a1)
{
  type metadata accessor for IDSInvitationContext(319);
  if (v1 <= 0x3F)
  {
    sub_2140939D4(319, &qword_27C9050E0, MEMORY[0x277D83B88], type metadata accessor for Validated);
    if (v2 <= 0x3F)
    {
      sub_2140939D4(319, &qword_280B34BD0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_2140939D4(319, &qword_280B2E578, MEMORY[0x277D837D0], type metadata accessor for Validated);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2140939D4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_214093A24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*v8)
  {
    sub_214093C70();
  }

  else
  {
    v9 = MEMORY[0x277D837D0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2146EA710;
    *(inited + 32) = 0xD000000000000020;
    v11 = inited + 32;
    *(inited + 72) = v9;
    *(inited + 40) = 0x800000021478C510;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x800000021478C540;
    sub_2140457C0(inited);
    swift_setDeallocating();
    sub_213FB2DF4(v11, &qword_27C903FE0, &unk_2146EA760);
  }

  v12 = sub_2146D9468();

  return v12;
}

unint64_t sub_214093B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*v8)
  {
    return sub_214093C70();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146EA710;
  *(inited + 32) = 0xD000000000000020;
  v11 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0x800000021478C510;
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000021478C540;
  v12 = sub_2140457C0(inited);
  swift_setDeallocating();
  sub_213FB2DF4(v11, &qword_27C903FE0, &unk_2146EA760);
  return v12;
}

unint64_t sub_214093C70()
{
  v1 = type metadata accessor for MBDPersistentMenuItem(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);
  v9 = *(v0 + 72);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FC8, &unk_2146EA740);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E68D0;
  *(inited + 32) = 0x6C6576656CLL;
  *(inited + 40) = 0xE500000000000000;
  if ((v6 & 1) != 0 || (v11 = inited, v12 = MEMORY[0x277D83B88], *(inited + 48) = v5, *(inited + 72) = v12, *(inited + 80) = 0x5479616C70736964, *(inited + 88) = 0xEB00000000747865, v8 == 1))
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    if (v8)
    {
      v13 = MEMORY[0x277D837D0];
      v14 = v8;
    }

    else
    {
      v7 = 0;
      v14 = 0;
      v13 = 0;
      *(inited + 112) = 0;
    }

    v29 = inited + 32;
    v30 = v5;
    *(inited + 96) = v7;
    *(inited + 104) = v14;
    *(inited + 120) = v13;
    *(inited + 128) = 0x736D657469;
    *(inited + 136) = 0xE500000000000000;
    v15 = *(v9 + 16);
    v28 = v15;
    if (v15)
    {
      v16 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
      v17 = *(v2 + 72);

      v18 = MEMORY[0x277D84F90];
      do
      {
        sub_214096648(v16, v4);
        v19 = sub_2145FFEB8();
        sub_2140966AC(v4);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_214095798(0, v18[2] + 1, 1, v18);
        }

        v21 = v18[2];
        v20 = v18[3];
        if (v21 >= v20 >> 1)
        {
          v18 = sub_214095798((v20 > 1), v21 + 1, 1, v18);
        }

        v18[2] = v21 + 1;
        v18[v21 + 4] = v19;
        v16 += v17;
        --v15;
      }

      while (v15);
    }

    else
    {

      v18 = MEMORY[0x277D84F90];
    }

    *(v11 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050E8, &qword_2147726C0);
    *(v11 + 144) = v18;
    v22 = sub_214045690(v11);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD0, &unk_2146F14B0);
    swift_arrayDestroy();
    v23 = sub_2140418B8(v22);

    if (!v30)
    {
      if (v28)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v24 = swift_initStackObject();
        *(v24 + 32) = 0xD000000000000020;
        v25 = v24 + 32;
        *(v24 + 16) = xmmword_2146EA710;
        *(v24 + 40) = 0x800000021478C510;
        *(v24 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
        *(v24 + 48) = v23;
      }

      else
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903FD8, &unk_2146EA750);
        v24 = swift_initStackObject();
        *(v24 + 16) = xmmword_2146EA710;
        *(v24 + 32) = 0xD000000000000020;
        v25 = v24 + 32;
        *(v24 + 72) = MEMORY[0x277D837D0];
        *(v24 + 40) = 0x800000021478C510;
        *(v24 + 48) = 0xD00000000000001DLL;
        *(v24 + 56) = 0x800000021478C540;
      }

      v23 = sub_2140457C0(v24);
      swift_setDeallocating();
      sub_213FB2DF4(v25, &qword_27C903FE0, &unk_2146EA760);
    }

    return v23;
  }

  return result;
}

uint64_t sub_2140940B4()
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214094110(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();
  return sub_2146DA9B8();
}

uint64_t sub_214094158@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_2146DA098();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2140941D0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_2146DA098();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_214094228(uint64_t a1)
{
  v2 = sub_214096708();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214094264(uint64_t a1)
{
  v2 = sub_214096708();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2140942A0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9050F0, &qword_2146F14C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096708();
  sub_2146DAA08();
  if (!v2)
  {
    v9 = sub_2146DA0F8();
    if (v10)
    {
      if (v9 == 0xD00000000000001DLL && v10 == 0x800000021478C540)
      {

LABEL_13:
        (*(v6 + 8))(v8, v5);
        v11 = 0uLL;
        v12 = 0uLL;
        v13 = 0uLL;
        v14 = 0uLL;
        v15 = 0uLL;
LABEL_14:
        *a2 = v11;
        a2[1] = v12;
        a2[2] = v13;
        a2[3] = v14;
        a2[4] = v15;
        return __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v17 = sub_2146DA6A8();

      if (v17)
      {
        goto LABEL_13;
      }
    }

    sub_21409675C();
    sub_2146DA0C8();
    (*(v6 + 8))(v8, v5);
    v11 = v19[0];
    v12 = v19[1];
    v13 = v19[2];
    v14 = v19[3];
    v15 = v19[4];
    goto LABEL_14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2140944CC(void *a1)
{
  v2 = v1;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905108, &qword_2146F14C8);
  v20 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v5 = &v17 - v4;
  v7 = *v2;
  v6 = v2[1];
  v8 = v2[5];
  v18 = v2[6];
  v9 = v2[7];
  v17 = v2[8];
  v19 = v2[9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096708();
  v21 = v5;
  sub_2146DAA28();
  if (v7)
  {
    *&v23 = v7;
    *(&v23 + 1) = v6;
    v24 = *(v2 + 1);
    *&v25 = v2[4];
    *(&v25 + 1) = v8;
    v10 = v18;
    *&v26 = v18;
    *(&v26 + 1) = v9;
    *&v27 = v17;
    *(&v27 + 1) = v19;

    sub_213FDC9D0(v10, v9);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905110, &qword_2146F14D0);
    sub_2140967B0();
    v11 = v28;
    v12 = v21;
    sub_2146DA2A8();
    v13 = (v20 + 8);
    v22[2] = v25;
    v22[3] = v26;
    v22[4] = v27;
    v22[0] = v23;
    v22[1] = v24;
    sub_213FB2DF4(v22, &qword_27C905110, &qword_2146F14D0);
    return (*v13)(v12, v11);
  }

  else
  {
    v15 = v28;
    v16 = v21;
    sub_2146DA328();
    return (*(v20 + 8))(v16, v15);
  }
}

uint64_t sub_2140947A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x5479616C70736964;
  v4 = 0xEB00000000747865;
  if (v2 != 1)
  {
    v3 = 0x736D657469;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6C6576656CLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x5479616C70736964;
  v8 = 0xEB00000000747865;
  if (*a2 != 1)
  {
    v7 = 0x736D657469;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6C6576656CLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_2146DA6A8();
  }

  return v11 & 1;
}

uint64_t sub_2140948AC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214094950(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_2140949E0(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

unint64_t sub_214094A80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_214096BF8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_214094AB0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEB00000000747865;
  v5 = 0x5479616C70736964;
  if (v2 != 1)
  {
    v5 = 0x736D657469;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6C6576656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_214094B10()
{
  v1 = 0x5479616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x736D657469;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6576656CLL;
  }
}

unint64_t sub_214094B6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_214096BF8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_214094B94(uint64_t a1)
{
  v2 = sub_214096888();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_214094BD0(uint64_t a1)
{
  v2 = sub_214096888();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_214094C0C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905128, &qword_2146F14D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096888();
  sub_2146DAA08();
  if (!v2)
  {
    LOBYTE(v19) = 0;
    v9 = sub_2146DA1A8();
    LOBYTE(v19) = 1;
    v10 = sub_2146DA0F8();
    v13 = v12;
    v16 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
    v18 = 2;
    sub_2140968DC(&qword_27C905140, &qword_27C905148, byte_21476AEA0, MEMORY[0x277CC9C38]);
    sub_2146DA0D8();
    sub_2140A9B6C(v9, v16, v13, v19, v17);
    (*(v6 + 8))(v8, v5);
    v14 = v17[3];
    a2[2] = v17[2];
    a2[3] = v14;
    a2[4] = v17[4];
    v15 = v17[1];
    *a2 = v17[0];
    a2[1] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_214094EA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905150, &unk_2146F14E8);
  v14 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - v4;
  v6 = *(v1 + 24);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v11 = *(v1 + 72);
  v12 = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_214096888();
  sub_2146DAA28();
  if ((v6 & 1) == 0)
  {
    LOBYTE(v15) = 0;
    v9 = v13;
    sub_2146DA368();
    if (v9)
    {
      return (*(v14 + 8))(v5, v3);
    }

    if (v8 != 1)
    {
      v15 = v12;
      v16 = v8;
      v17 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904008, &qword_2146EC050);
      sub_214045AC0();
      sub_2146DA388();
      v15 = v11;
      v17 = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905138, &qword_2146F14E0);
      sub_2140968DC(&qword_27C905158, &qword_27C905160, byte_21476AED0, MEMORY[0x277CC9C40]);
      sub_2146DA2A8();
      return (*(v14 + 8))(v5, v3);
    }
  }

  result = sub_2146DA018();
  __break(1u);
  return result;
}

char *sub_21409515C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905258, &qword_2146F1948);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_21409526C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905240, &qword_2146F1930);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095390(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905238, &qword_2146F1928);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095520(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051D0, &qword_2146F18C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214095650(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_214095798(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905228, &qword_2146F1918);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C914A50, &qword_2146EC030);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140958E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905218, &qword_2146F1908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_2140959E4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051F8, &qword_2146F18E8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_214095AE0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905200, &qword_2146F18F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_214095C34(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051E0, &qword_2146F18D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095DAC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051B0, &qword_2146F1898);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_214095ECC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051D8, &qword_2146F18C8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_214095FE4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_2140960E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904D48, qword_2146EF9D0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_2140961EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9051B8, &qword_2146F18A0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_214096348(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

char *sub_214096524(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905198, &qword_2146F1880);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_214096648(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MBDPersistentMenuItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2140966AC(uint64_t a1)
{
  v2 = type metadata accessor for MBDPersistentMenuItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_214096708()
{
  result = qword_27C9050F8;
  if (!qword_27C9050F8)
  {
    result = swift_getWitnessTable(byte_2146F1830, &_s19CodingConfigurationV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_27C9050F8);
  }

  return result;
}

unint64_t sub_21409675C()
{
  result = qword_27C905100;
  if (!qword_27C905100)
  {
    result = swift_getWitnessTable(a9_27, &type metadata for MBDMenu, v0, v1);
    atomic_store(result, &qword_27C905100);
  }

  return result;
}

unint64_t sub_2140967B0()
{
  result = qword_27C905118;
  if (!qword_27C905118)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905110, &qword_2146F14D0);
    v4[0] = sub_214096834();
    result = swift_getWitnessTable(MEMORY[0x277CCA010], v3, v4);
    atomic_store(result, &qword_27C905118);
  }

  return result;
}

unint64_t sub_214096834()
{
  result = qword_27C905120;
  if (!qword_27C905120)
  {
    result = swift_getWitnessTable(byte_2146F15A8, &type metadata for MBDMenu, v0, v1);
    atomic_store(result, &qword_27C905120);
  }

  return result;
}

unint64_t sub_214096888()
{
  result = qword_27C905130;
  if (!qword_27C905130)
  {
    result = swift_getWitnessTable(aI_81, &_s19CodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C905130);
  }

  return result;
}

uint64_t sub_2140968DC(unint64_t *a1, unint64_t *a2, const char *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27C905138, &qword_2146F14E0);
    v10 = sub_214096964(a2, a3);
    result = swift_getWitnessTable(a4, v9, &v10);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_214096964(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for MBDPersistentMenuItem(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_2140969EC()
{
  result = qword_27C905168;
  if (!qword_27C905168)
  {
    result = swift_getWitnessTable(byte_2146F16C8, &_s19CodingConfigurationV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_27C905168);
  }

  return result;
}

unint64_t sub_214096A44()
{
  result = qword_27C905170;
  if (!qword_27C905170)
  {
    result = swift_getWitnessTable(byte_2146F17B8, &_s19CodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C905170);
  }

  return result;
}

unint64_t sub_214096A9C()
{
  result = qword_27C905178;
  if (!qword_27C905178)
  {
    result = swift_getWitnessTable(byte_2146F16F0, &_s19CodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C905178);
  }

  return result;
}

unint64_t sub_214096AF4()
{
  result = qword_27C905180;
  if (!qword_27C905180)
  {
    result = swift_getWitnessTable(byte_2146F1718, &_s19CodingConfigurationV10CodingKeysON_1, v0, v1);
    atomic_store(result, &qword_27C905180);
  }

  return result;
}

unint64_t sub_214096B4C()
{
  result = qword_27C905188;
  if (!qword_27C905188)
  {
    result = swift_getWitnessTable(byte_2146F1600, &_s19CodingConfigurationV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_27C905188);
  }

  return result;
}

unint64_t sub_214096BA4()
{
  result = qword_27C905190;
  if (!qword_27C905190)
  {
    result = swift_getWitnessTable(byte_2146F1628, &_s19CodingConfigurationV10CodingKeysON_2, v0, v1);
    atomic_store(result, &qword_27C905190);
  }

  return result;
}

unint64_t sub_214096BF8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2146DA098();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_214096C4C@<X0>(uint64_t a3@<X2>, void *a5@<X8>)
{
  sub_2146D9B28();
  result = sub_2146D94C8();
  if (result)
  {
    sub_21408014C();
    swift_allocError();
    *v8 = 512;
    swift_willThrow();
    return (*(*(a3 - 8) + 8))(a5, a3);
  }

  return result;
}

uint64_t sub_214096E18@<X0>(uint64_t a1@<X2>, uint64_t (*a2)(uint64_t)@<X4>, char a3@<W5>, uint64_t a4@<X8>)
{
  result = a2(a4);
  if (result)
  {
    sub_21408014C();
    swift_allocError();
    *v8 = 0;
    v8[1] = a3;
    swift_willThrow();
    return (*(*(a1 - 8) + 8))(a4, a1);
  }

  return result;
}

unint64_t sub_214096ED0()
{
  result = qword_27C905268;
  if (!qword_27C905268)
  {
    result = swift_getWitnessTable(aI_82, &type metadata for ArithmeticOperationError.OverflowType, v0, v1);
    atomic_store(result, &qword_27C905268);
  }

  return result;
}

unint64_t sub_214096F28()
{
  result = qword_27C905270;
  if (!qword_27C905270)
  {
    result = swift_getWitnessTable(byte_2146F19C8, &type metadata for ArithmeticOperationError.Operation, v0, v1);
    atomic_store(result, &qword_27C905270);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ArithmeticOperationError(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
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

_WORD *storeEnumTagSinglePayload for ArithmeticOperationError(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
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
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
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

BlastDoor::StickerEffect __swiftcall StickerEffect.init(defaultingRawValue:)(Swift::String_optional defaultingRawValue)
{
  v2 = v1;
  if (defaultingRawValue.value._object)
  {
    LOBYTE(defaultingRawValue.value._countAndFlagsBits) = StickerEffect.init(rawValue:)(defaultingRawValue.value);
    v3 = v5;
    if (v5 == 5)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return defaultingRawValue.value._countAndFlagsBits;
}

BlastDoor::StickerEffect_optional __swiftcall StickerEffect.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2146DA098();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t StickerEffect.rawValue.getter()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x63696D6F63;
  v4 = 0x7966667570;
  if (v1 != 3)
  {
    v4 = 0x6563736564697269;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656B6F727473;
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

unint64_t sub_214097240()
{
  result = qword_27C905278;
  if (!qword_27C905278)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StickerEffect, &type metadata for StickerEffect, v0, v1);
    atomic_store(result, &qword_27C905278);
  }

  return result;
}

uint64_t sub_214097294()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_214097368(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_214097428(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

void sub_214097504(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1701736302;
  v5 = 0xE500000000000000;
  v6 = 0x63696D6F63;
  v7 = 0xE500000000000000;
  v8 = 0x7966667570;
  if (v2 != 3)
  {
    v8 = 0x6563736564697269;
    v7 = 0xEA0000000000746ELL;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656B6F727473;
    v3 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_214097594(uint64_t a1)
{
  *(a1 + 8) = sub_2140975C4();
  result = sub_214097618();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_2140975C4()
{
  result = qword_280B30D98;
  if (!qword_280B30D98)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StickerEffect, &type metadata for StickerEffect, v0, v1);
    atomic_store(result, &qword_280B30D98);
  }

  return result;
}

unint64_t sub_214097618()
{
  result = qword_280B2F8C0;
  if (!qword_280B2F8C0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StickerEffect, &type metadata for StickerEffect, v0, v1);
    atomic_store(result, &qword_280B2F8C0);
  }

  return result;
}

unint64_t sub_21409772C()
{
  result = qword_280B32218[0];
  if (!qword_280B32218[0])
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StickerEffect, &type metadata for StickerEffect, v0, v1);
    atomic_store(result, qword_280B32218);
  }

  return result;
}

uint64_t sub_214097780@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v1 + *(v6 + 28), v5, &qword_27C903F40, &unk_2146F1C50);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) != 1)
  {
    return sub_214032588(v5, a1);
  }

  sub_213FB2DF4(v5, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_2140978EC()
{
  v1 = v0 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21409799C()
{
  if (*(v0 + 32) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 24);

    return v1;
  }

  return result;
}

uint64_t sub_214097A1C()
{
  if (*(v0 + 72) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v1 = *(v0 + 64);

    return v1;
  }

  return result;
}

uint64_t sub_214097A9C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(a1 + *(v7 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  if ((*(*(v8 - 8) + 48))(v6, 1, v8) != 1)
  {
    return sub_214032588(v6, a2);
  }

  sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
  result = sub_2146DA018();
  __break(1u);
  return result;
}

uint64_t sub_214097C0C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_213FB2E54(a1, &v9 - v6, &unk_27C9131A0, &unk_2146E9D10);
  sub_213FB2E54(v7, v5, &unk_27C9131A0, &unk_2146E9D10);
  sub_21402F5FC(v5);
  return sub_213FB2DF4(v7, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t sub_214097CFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  sub_213FB2E54(a1, &v6 - v3, &unk_27C9131A0, &unk_2146E9D10);
  sub_21402F5FC(v4);
  return sub_213FB2DF4(a1, &unk_27C9131A0, &unk_2146E9D10);
}

uint64_t (*sub_214097DB0(void *a1))()
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F40, &unk_2146F1C50) - 8) + 64);
  v4 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(v3);
  }

  v6 = v5;
  a1[1] = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9131A0, &unk_2146E9D10);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  if (v4)
  {
    a1[2] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    a1[2] = malloc(*(*(v7 - 8) + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  a1[3] = v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  sub_213FB2E54(v1 + *(v12 + 28), v6, &qword_27C903F40, &unk_2146F1C50);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_213FB2DF4(v6, &qword_27C903F40, &unk_2146F1C50);
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    sub_214032588(v6, v11);
    return sub_214097FAC;
  }

  return result;
}

void sub_214097FAC(void *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[1];
  if (a2)
  {
    sub_213FB2E54(a1[3], v2, &unk_27C9131A0, &unk_2146E9D10);
    sub_21402F5FC(v2);
    sub_213FB2DF4(v3, &unk_27C9131A0, &unk_2146E9D10);
  }

  else
  {
    sub_21402F5FC(a1[3]);
  }

  free(v3);
  free(v2);

  free(v4);
}

void (*sub_2140980AC(uint64_t *a1))(uint64_t *a1)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(v3);
  }

  a1[1] = v4;
  sub_213FB2E54(v1, v4, &qword_27C903F38, &unk_2146E9D40);
  return sub_21409815C;
}

void sub_21409815C(uint64_t *a1)
{
  v1 = a1[1];
  sub_21402EDB8(v1, *a1, &qword_27C903F38, &unk_2146E9D40);

  free(v1);
}

uint64_t sub_2140981A8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_214098244(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for AccountsRepresentativeCloudShareInfo(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409830C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21409845C(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_214065C38;
  }

  return result;
}

uint64_t sub_214098548@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_2140985B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_214098624(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 sub_2140986BC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*sub_214098734(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for AccountsRepresentativeCloudShareInfo(0) + 20);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_2140660B8;
}

unint64_t sub_2140988B8@<X0>(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_initStackObject();
  *(v3 + 16) = xmmword_2146EAEB0;
  v4 = sub_214069764(&unk_282654358);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C904110, qword_214734DE0);
  v5 = swift_allocObject();
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *(v5 + 16) = sub_21409A858;
  *(v5 + 24) = v6;
  *(v3 + 32) = v5;
  v7 = sub_214069888(&unk_2826543F8);
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  *(v8 + 16) = sub_21409A860;
  *(v8 + 24) = v9;
  *(v3 + 40) = v8;
  v10 = sub_2142E0124(v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C9040A8, &unk_2146EA9F0);
  v11 = swift_allocObject();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v11 + 16) = sub_21409A868;
  *(v11 + 24) = v12;
  *(inited + 32) = v11;
  return sub_21404352C(inited, a1);
}

unint64_t sub_214098A64@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_2146F1C40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130C0, &unk_2146EAA60);
  v4 = swift_allocObject();
  v5 = swift_allocObject();
  *(v5 + 16) = 0xD000000000000020;
  *(v5 + 24) = 0x800000021478C560;
  *(v4 + 16) = sub_21409A7EC;
  *(v4 + 24) = v5;
  *(v3 + 32) = v4;
  v6 = swift_allocObject();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000028;
  *(v7 + 24) = 0x800000021478C590;
  *(v6 + 16) = sub_21409A874;
  *(v6 + 24) = v7;
  *(v3 + 40) = v6;
  v8 = swift_allocObject();
  v9 = swift_allocObject();
  *(v9 + 16) = 0xD000000000000022;
  *(v9 + 24) = 0x800000021478C5C0;
  *(v8 + 16) = sub_21409A874;
  *(v8 + 24) = v9;
  *(v3 + 48) = v8;
  v10 = swift_allocObject();
  v11 = swift_allocObject();
  *(v11 + 16) = 0xD00000000000002ALL;
  *(v11 + 24) = 0x800000021478C5F0;
  *(v10 + 16) = sub_21409A874;
  *(v10 + 24) = v11;
  *(v3 + 56) = v10;
  v12 = swift_allocObject();
  v13 = swift_allocObject();
  *(v13 + 16) = v3;
  *(v12 + 16) = sub_21409A7F4;
  *(v12 + 24) = v13;
  *(inited + 32) = v12;
  return sub_214042A28(inited, a1);
}

void *sub_214098CC0@<X0>(char a1@<W1>, char *a2@<X8>, void *result@<X0>)
{
  v4 = 10;
  if ((a1 & 1) == 0)
  {
    result = sub_214098D08(result, &v5);
    if (v5 == 11)
    {
      v4 = 10;
    }

    else
    {
      v4 = v5;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t sub_214098D08@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result <= 98)
  {
    if (result <= 1)
    {
      if (!result)
      {
        *a2 = 0;
        return result;
      }

      if (result == 1)
      {
        *a2 = 1;
        return result;
      }
    }

    else
    {
      switch(result)
      {
        case 2:
          *a2 = 2;
          return result;
        case 3:
          *a2 = 3;
          return result;
        case 6:
          *a2 = 4;
          return result;
      }
    }
  }

  else if (result > 102)
  {
    switch(result)
    {
      case 103:
        *a2 = 7;
        return result;
      case 104:
        *a2 = 8;
        return result;
      case 200:
        *a2 = 9;
        return result;
    }
  }

  else
  {
    switch(result)
    {
      case 'c':
        *a2 = 10;
        return result;
      case 'e':
        *a2 = 5;
        return result;
      case 'f':
        *a2 = 6;
        return result;
    }
  }

  *a2 = 11;
  return result;
}

uint64_t sub_214098E38()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F2120[v1]);
  return sub_2146DA9B8();
}

uint64_t sub_214098EC0(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](qword_2146F2120[v2]);
  return sub_2146DA9B8();
}

unint64_t sub_214098FDC@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 11;
  if (result < 0xB)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2140990B0@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result - 1;
  if ((result - 1) >= 0x11)
  {
    v2 = 17;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_2140990D4()
{
  v1 = *v0;
  sub_2146DA958();
  MEMORY[0x216055860](v1 + 1);
  return sub_2146DA9B8();
}

uint64_t sub_21409914C(uint64_t a1)
{
  v2 = *v1;
  sub_2146DA958();
  MEMORY[0x216055860](v2 + 1);
  return sub_2146DA9B8();
}

uint64_t sub_214099300(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 8);
  v9 = *(v2 + 40);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 24), *(v2 + 32));

    *(v2 + 24) = a1;
    *(v2 + 32) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_214099444(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  v6 = *(v1 + 32);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214053CC4;
  }

  return result;
}

uint64_t sub_21409951C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_214099574(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);

  sub_213FDC6D0(v6, v7);
  result = *a1;
  *(v1 + 8) = *a1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  *(v1 + 40) = v5;
  return result;
}

void (*sub_2140995DC(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v4 = *(v1 + 8);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_2140540D0;
}

uint64_t sub_21409967C(uint64_t a1, uint64_t a2)
{
  v10[0] = a1;
  v10[1] = a2;
  v5 = *(v2 + 48);
  v9 = *(v2 + 80);
  v8[0] = 0x6E776F6E6B6E753CLL;
  v8[1] = 0xE90000000000003ELL;
  v8[2] = 0xD00000000000001CLL;
  v8[3] = 0x800000021478A360;
  if (v5(v10, &v9, v8))
  {
    sub_213FDC6D0(*(v2 + 64), *(v2 + 72));

    *(v2 + 64) = a1;
    *(v2 + 72) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v7 = 0x6E776F6E6B6E753CLL;
    v7[1] = 0xE90000000000003ELL;
    v7[2] = 0xD00000000000001CLL;
    v7[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_2140997C0(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 64);
  *(v3 + 24) = v5;
  v6 = *(v1 + 72);
  v4[4] = v6;
  if (v6 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v5;
    v4[1] = v6;

    return sub_214054570;
  }

  return result;
}

uint64_t sub_214099898@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  *a1 = *(v1 + 48);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 24) = v4;
  *(a1 + 32) = v5;

  return sub_213FDC9D0(v3, v4);
}

__n128 sub_2140998F0(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = v1[4].n128_i64[0];
  v7 = v1[4].n128_i64[1];

  sub_213FDC6D0(v6, v7);
  result = *a1;
  v1[3] = *a1;
  v1[4].n128_u64[0] = v3;
  v1[4].n128_u64[1] = v4;
  v1[5].n128_u8[0] = v5;
  return result;
}

void (*sub_214099958(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(v1 + 56);
  v6 = *(v1 + 64);
  v7 = *(v1 + 72);
  v8 = *(v1 + 80);
  *v4 = *(v1 + 48);
  *(v4 + 8) = v5;
  *(v4 + 16) = v6;
  *(v4 + 24) = v7;
  *(v4 + 32) = v8;

  sub_213FDC9D0(v6, v7);
  return sub_21405497C;
}

uint64_t sub_214099B24(char a1)
{
  result = type metadata accessor for AccountsRepresentativeMessage(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t sub_214099BC0(char a1)
{
  result = type metadata accessor for AccountsRepresentativeMessage(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t sub_214099C38()
{
  v1 = *(v0 + *(type metadata accessor for AccountsRepresentativeMessage(0) + 52));

  return v1;
}

uint64_t sub_214099C78(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccountsRepresentativeMessage(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t sub_214099D90(uint64_t a1)
{
  *(a1 + 8) = sub_214099E14(&qword_27C905288, type metadata accessor for AccountsRepresentativeCloudShareInfo, byte_2146F7430);
  result = sub_214099E14(&qword_27C905290, type metadata accessor for AccountsRepresentativeCloudShareInfo, byte_2146F7458);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_214099E14(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_214099E60()
{
  result = qword_27C905298;
  if (!qword_27C905298)
  {
    result = swift_getWitnessTable(aE_93, &type metadata for AccountsRepresentativeMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C905298);
  }

  return result;
}

unint64_t sub_214099EE0()
{
  result = qword_27C9052A0;
  if (!qword_27C9052A0)
  {
    result = swift_getWitnessTable(aU_107, &type metadata for AccountsRepresentativeMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C9052A0);
  }

  return result;
}

unint64_t sub_214099F38()
{
  result = qword_27C9052A8;
  if (!qword_27C9052A8)
  {
    result = swift_getWitnessTable(a9_28, &type metadata for AccountsRepresentativeMessage.Reason, v0, v1);
    atomic_store(result, &qword_27C9052A8);
  }

  return result;
}

unint64_t sub_214099FB8()
{
  result = qword_27C9052B0;
  if (!qword_27C9052B0)
  {
    result = swift_getWitnessTable(byte_2146F1E4C, &type metadata for AccountsRepresentativeMessage.Reason, v0, v1);
    atomic_store(result, &qword_27C9052B0);
  }

  return result;
}

unint64_t sub_21409A010()
{
  result = qword_27C9052B8;
  if (!qword_27C9052B8)
  {
    result = swift_getWitnessTable(asc_2146F1E9C, &type metadata for AccountsRepresentativeMessage.ContextType, v0, v1);
    atomic_store(result, &qword_27C9052B8);
  }

  return result;
}

uint64_t sub_21409A090(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409A0CC()
{
  result = qword_27C9052C0;
  if (!qword_27C9052C0)
  {
    result = swift_getWitnessTable(byte_2146F1F58, &type metadata for AccountsRepresentativeMessage.ContextType, v0, v1);
    atomic_store(result, &qword_27C9052C0);
  }

  return result;
}

uint64_t sub_21409A120(uint64_t a1)
{
  *(a1 + 8) = sub_214099E14(&qword_27C9052C8, type metadata accessor for AccountsRepresentativeMessage, byte_2146F7480);
  result = sub_214099E14(&qword_27C9052D0, type metadata accessor for AccountsRepresentativeMessage, a1_26);
  *(a1 + 16) = result;
  return result;
}

void sub_21409A1CC(uint64_t a1)
{
  sub_21409A2B4(319, &qword_27C9052F0, &unk_27C9131A0, &unk_2146E9D10);
  if (v1 <= 0x3F)
  {
    sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
    if (v2 <= 0x3F)
    {
      sub_21409A4BC(319, &qword_27C9052F8, type metadata accessor for CloudKitSharingToken);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_21409A2B4(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = type metadata accessor for Validated(a1, v6, v7, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_21409A330(uint64_t a1)
{
  sub_21403BEC8(319, &qword_27C905310, &type metadata for AccountsRepresentativeMessage.MessageType);
  if (v1 <= 0x3F)
  {
    sub_21403BEC8(319, &qword_27C905318, &type metadata for AccountsRepresentativeMessage.Reason);
    if (v2 <= 0x3F)
    {
      sub_21403BEC8(319, &qword_27C905320, &type metadata for AccountsRepresentativeMessage.ContextType);
      if (v3 <= 0x3F)
      {
        sub_21409A2B4(319, &qword_280B2E570, &qword_27C904008, &qword_2146EC050);
        if (v4 <= 0x3F)
        {
          sub_21403BEC8(319, &qword_280B34BD8, MEMORY[0x277D839B0]);
          if (v5 <= 0x3F)
          {
            sub_21409A4BC(319, &qword_27C905328, type metadata accessor for AccountsRepresentativeCloudShareInfo);
            if (v6 <= 0x3F)
            {
              sub_21403BEC8(319, &qword_280B34BE0, MEMORY[0x277D837D0]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_21409A4BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_2146D9D38();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TapBack.MessageSummaryInfo.AssociatedMessageMessageSummaryInfoTypeContentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_21409A680(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C903F38, &unk_2146E9D40);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_21409A6F0()
{
  result = qword_27C905330;
  if (!qword_27C905330)
  {
    result = swift_getWitnessTable(byte_2146F1F04, &type metadata for AccountsRepresentativeMessage.ContextType, v0, v1);
    atomic_store(result, &qword_27C905330);
  }

  return result;
}

unint64_t sub_21409A744()
{
  result = qword_27C905338;
  if (!qword_27C905338)
  {
    result = swift_getWitnessTable(byte_2146F1DF8, &type metadata for AccountsRepresentativeMessage.Reason, v0, v1);
    atomic_store(result, &qword_27C905338);
  }

  return result;
}

unint64_t sub_21409A798()
{
  result = qword_27C905340;
  if (!qword_27C905340)
  {
    result = swift_getWitnessTable(byte_2146F1CEC, &type metadata for AccountsRepresentativeMessage.MessageType, v0, v1);
    atomic_store(result, &qword_27C905340);
  }

  return result;
}

uint64_t sub_21409A7F4(__int128 *a1, char *a2)
{
  v3 = *a2;
  v4 = *(v2 + 16);
  v8 = *a1;
  v6[2] = &v8;
  v7 = v3;
  return sub_21441C130(sub_214047400, v6, v4) & 1;
}

uint64_t sub_21409A87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_21409A9C0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_21409A9C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_21409AAB4(void *a1, uint64_t a2, unint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905378, &qword_2146F25D8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21409C468();
  sub_2146DAA28();
  v13 = 0;
  sub_2146DA3E8();
  if (v3)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v12 = 1;
  sub_2146DA3D8();
  v11 = 2;
  sub_2146DA3D8();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21409AC5C()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x636967616DLL;
  }
}

uint64_t sub_21409ACAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21409BF7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21409ACD4(uint64_t a1)
{
  v2 = sub_21409C468();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21409AD10(uint64_t a1)
{
  v2 = sub_21409C468();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21409AD4C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21409B62C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_21409AD9C@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

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

uint64_t sub_21409AE00()
{
  if (*v0)
  {
    return 0x6574697277;
  }

  else
  {
    return 1684104562;
  }
}

uint64_t sub_21409AE30(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6574697277;
  }

  else
  {
    v3 = 1684104562;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6574697277;
  }

  else
  {
    v5 = 1684104562;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_2146DA6A8();
  }

  return v8 & 1;
}

uint64_t sub_21409AECC()
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409AF44(uint64_t a1)
{
  sub_2146D9698();
}

uint64_t sub_21409AFA8(uint64_t a1)
{
  sub_2146DA958();
  sub_2146D9698();

  return sub_2146DA9B8();
}

uint64_t sub_21409B01C@<X0>(char *a2@<X8>)
{
  v3 = sub_2146DA098();

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

void sub_21409B07C(uint64_t *a1@<X8>)
{
  v2 = 1684104562;
  if (*v1)
  {
    v2 = 0x6574697277;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_21409B0B0@<X0>(char *a3@<X8>)
{
  v4 = sub_2146DA098();

  v6 = 7;
  if (v4 < 7)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_21409B10C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x41657361426C696ELL;
    if (v1 != 1)
    {
      v5 = 0x4674707572726F63;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000012;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 5)
    {
      v2 = 0xD000000000000012;
    }

    v3 = 0xD000000000000014;
    if (v1 == 3)
    {
      v3 = 0x4964696C61766E69;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_21409B224(uint64_t a1)
{
  sub_2146D9698();
}

void sub_21409B36C(unint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xEE00737365726464;
    v9 = 0x41657361426C696ELL;
    if (v2 != 1)
    {
      v9 = 0x4674707572726F63;
      v8 = 0xEB00000000656C69;
    }

    v10 = v2 == 0;
    if (*v1)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0xD000000000000012;
    }

    if (v10)
    {
      v8 = 0x8000000214786200;
    }

    *a1 = v11;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x8000000214786260;
    v4 = 0xD000000000000015;
    if (v2 == 5)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v3 = 0x8000000214786280;
    }

    v5 = 0xEC0000006567616DLL;
    v6 = 0xD000000000000014;
    if (v2 == 3)
    {
      v6 = 0x4964696C61766E69;
    }

    else
    {
      v5 = 0x8000000214786240;
    }

    if (*v1 <= 4u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v5;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t static BitmapHelper.writeHeader(at:width:height:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 > 0xFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if ((a3 | a2) < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (a3 <= 0xFFFFFFFFLL)
  {
    *result = 0xB1A57D002;
    *(result + 8) = a2;
    *(result + 12) = a3;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

char *sub_21409B4F0(char *result, uint64_t a2, uint64_t a3, uint64_t a4, void *__dst)
{
  if (__dst)
  {
    if (a3)
    {
      v5 = a4 - a3;
      if (a4 - a3 < 0)
      {
        __break(1u);
      }

      else if (v5 >= result)
      {
        if (v5 >= a2)
        {
          if (!__OFADD__(result, a2 - result))
          {
            if (a2 >= result)
            {
              return memmove(__dst, &result[a3], a2 - result);
            }

            goto LABEL_16;
          }

LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      __break(1u);
      goto LABEL_14;
    }

    if (result)
    {
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    if (a2)
    {
LABEL_18:
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_21409B55C(int *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2146D89A8();
  v9 = *a1;
  if (a1[1] < v9)
  {
    __break(1u);
    goto LABEL_7;
  }

  result = sub_2146D8728();
  if (result)
  {
    v10 = result;
    result = sub_2146D8758();
    v11 = v9 - result;
    if (!__OFSUB__(v9, result))
    {
      result = sub_2146D8748();
      if ((a4 & 0x8000000000000000) == 0)
      {
        sub_21409B4F0(0, a4, a2, a3, (v10 + v11));
      }

      goto LABEL_8;
    }

LABEL_7:
    __break(1u);
LABEL_8:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_21409B62C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27C905358, &qword_2146F2428);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21409C468();
  sub_2146DAA08();
  v11 = 0;
  v6 = sub_2146DA228();
  v10 = 1;
  sub_2146DA218();
  v9 = 2;
  sub_2146DA218();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v6;
}

id sub_21409B7F8(void *a1)
{
  v3 = type metadata accessor for _BinaryDecoder();
  v4 = swift_allocObject();
  v5 = MEMORY[0x277D84F90];
  *(v4 + 16) = MEMORY[0x277D84F90];
  *(v4 + 24) = sub_214046008(v5);
  *(v4 + 32) = a1;
  *(v4 + 40) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27C9130B0, &unk_2146EBA30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2146E9BF0;
  *(inited + 32) = a1;
  v7 = inited & 0xC000000000000001;
  result = a1;
  if ((inited & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x216054E00](0, inited);
  }

  else
  {
    if (!*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v9 = result;
  }

  v10 = v9;
  [v9 open];

  v14[3] = v3;
  v14[4] = sub_21409C410();
  v14[0] = v4;

  result = sub_21409B62C(v14);
  v11 = result;
  if (v1)
  {
    if (v7)
    {
LABEL_13:
      v12 = MEMORY[0x216054E00](0, inited);
      goto LABEL_11;
    }

    if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_10:
      v12 = *(inited + 32);
LABEL_11:
      v13 = v12;
      [v12 close];

      return v11;
    }

    __break(1u);
  }

  if (v7)
  {
    goto LABEL_13;
  }

  if (*((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_21409B984(double a1, double a2)
{
  if (a1 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_15;
  }

  if (a1 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_16;
  }

  if (a2 <= -9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (a2 >= 9.22337204e18)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v2 = a2 * a1;
  if ((a2 * a1) >> 64 != v2 >> 63 || (v2 - 0x2000000000000000) >> 62 != 3)
  {
    v3 = 2;
LABEL_10:
    sub_21408014C();
    swift_allocError();
    *v4 = 0;
    v4[1] = v3;
    swift_willThrow();
    return;
  }

  if (__OFADD__(4 * v2, 16))
  {
    v3 = 0;
    goto LABEL_10;
  }
}

unint64_t sub_21409BAA8()
{
  result = qword_27C905348;
  if (!qword_27C905348)
  {
    result = swift_getWitnessTable(byte_2146F2210, &type metadata for BitmapHelperError.ErrorKind, v0, v1);
    atomic_store(result, &qword_27C905348);
  }

  return result;
}

unint64_t sub_21409BB00()
{
  result = qword_27C905350;
  if (!qword_27C905350)
  {
    result = swift_getWitnessTable(byte_2146F22B0, &type metadata for BitmapHelperError.Description, v0, v1);
    atomic_store(result, &qword_27C905350);
  }

  return result;
}

NSObject *sub_21409BB94(uint64_t a1, uint64_t a2)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (!a1 || a2 - a1 < 17)
  {
    v15 = sub_2146D9B88();
    if (qword_280B35360 != -1)
    {
      swift_once();
    }

    v9 = qword_280B35410;
    if (os_log_type_enabled(qword_280B35410, v15))
    {
      v16 = swift_slowAlloc();
      v17 = v16;
      *v16 = 134218240;
      v18 = a2 - a1;
      if (!a1)
      {
        v18 = 0;
      }

      *(v16 + 4) = v18;
      *(v16 + 12) = 2048;
      *(v16 + 14) = 16;
      _os_log_impl(&dword_213FAF000, v9, v15, "buffer.count (%ld) <= sizeOfHeader (%ld)", v16, 0x16u);
      MEMORY[0x216056AC0](v17, -1, -1);
    }

    sub_21407D454();
    swift_allocError();
    *v19 = 512;
    *(v19 + 8) = 0;
    swift_willThrow();
    goto LABEL_12;
  }

  sub_2146D8778();
  swift_allocObject();
  v30 = 0x1000000000;
  v31 = sub_2146D8738();
  sub_214680B28(&v30, 0);
  sub_21409B55C(&v30, a1, a2, 16);
  v6 = v31;
  v7 = sub_2146D8A18();
  v9 = v8;
  v10 = objc_allocWithZone(MEMORY[0x277CBEAE0]);
  v11 = sub_2146D8A38();
  v12 = [v10 initWithData_];

  v13 = sub_21409B7F8(v12);
  if (!v2)
  {
    v21 = v13;
    v32 = v6;
    v22 = v14;

    sub_213FB54FC(v7, v9);
    if (v21 == 0xB1A57D002)
    {
      v9 = HIDWORD(v22);
      sub_21409B984(v22, HIDWORD(v22));
      if (a2 - a1 == v23)
      {
        v24 = CGBitmapContextCreate((a1 + 16), v22, v9, 8uLL, 4 * v22, DeviceRGB, 0x2002u);
        if (v24)
        {
          v25 = v24;
          Image = CGBitmapContextCreateImage(v24);
          if (Image)
          {
            v9 = Image;

            return v9;
          }

          sub_21407D454();
          swift_allocError();
          *v29 = 768;
          *(v29 + 8) = 0;
          swift_willThrow();

          goto LABEL_12;
        }

        sub_21407D454();
        swift_allocError();
        *v28 = 1024;
      }

      else
      {
        sub_21407D454();
        swift_allocError();
        *v28 = 0;
      }

      *(v28 + 8) = 0;
      swift_willThrow();
    }

    else
    {
      sub_21407D454();
      swift_allocError();
      *v27 = 512;
      *(v27 + 8) = 0;
      swift_willThrow();
    }

LABEL_12:

    return v9;
  }

  sub_213FB54FC(v7, v9);

  return v9;
}

uint64_t sub_21409BF7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636967616DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_2146DA6A8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_2146DA6A8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_2146DA6A8();

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

void sub_21409C088(uint64_t a1, uint64_t a2, uint64_t a3, int a4, double a5, double a6)
{
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
  if (a5 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_45;
  }

  if (a5 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&a6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (a6 <= -9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (a6 >= 9.22337204e18)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v13 = DeviceRGB;
  sub_21409B984(a5, a6);
  if (v6)
  {
LABEL_27:

    return;
  }

  v15 = a5;
  if ((a5 - 0x2000000000000000) >> 62 != 3)
  {
    sub_21408014C();
    swift_allocError();
    *v16 = 512;
LABEL_26:
    swift_willThrow();
    goto LABEL_27;
  }

  if (!a2)
  {
    if (!v14)
    {
      sub_21407D454();
      swift_allocError();
      v25 = 257;
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  if (a3 - a2 != v14)
  {
LABEL_22:
    sub_21407D454();
    swift_allocError();
    v25 = 1;
    goto LABEL_25;
  }

  if (v15 > 0xFFFFFFFFLL)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17 = a6;
  if ((a6 | v15) < 0)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  if (v17 <= 0xFFFFFFFFLL)
  {
    *a2 = 0xB1A57D002;
    *(a2 + 8) = v15;
    *(a2 + 12) = v17;
    v18 = CGBitmapContextCreate((a2 + 16), a5, a6, 8uLL, 4 * v15, v13, 0x2002u);
    if (v18)
    {
      v19 = v18;
      CGContextSaveGState(v18);
      if (a4 == 1)
      {
LABEL_43:
        sub_2146D9B68();
        CGContextRestoreGState(v19);

        goto LABEL_27;
      }

      v20 = xmmword_2146F21C0;
      v21 = xmmword_2146F21D0;
      v22 = v15;
      v23 = 0.0;
      if (a4 <= 4)
      {
        switch(a4)
        {
          case 2:
            v21 = xmmword_2146F21F0;
            goto LABEL_42;
          case 3:
            v20 = xmmword_2146F21E0;
            v21 = xmmword_2146F21F0;
            goto LABEL_41;
          case 4:
            v20 = xmmword_2146F21E0;
            goto LABEL_32;
        }
      }

      else
      {
        if (a4 <= 6)
        {
          if (a4 == 5)
          {
            v20 = xmmword_2146F21F0;
            v21 = xmmword_2146F21E0;
            goto LABEL_41;
          }

          v20 = xmmword_2146F21D0;
          v21 = xmmword_2146F21E0;
LABEL_32:
          v22 = 0.0;
LABEL_41:
          v23 = v17;
          goto LABEL_42;
        }

        if (a4 == 7)
        {
          v20 = xmmword_2146F21D0;
          v21 = xmmword_2146F21C0;
        }

        else if (a4 == 8)
        {
          v20 = xmmword_2146F21F0;
          v21 = xmmword_2146F21C0;
LABEL_42:
          *&v26.a = v21;
          *&v26.c = v20;
          v26.tx = v22;
          v26.ty = v23;
          CGContextConcatCTM(v19, &v26);
          goto LABEL_43;
        }
      }

      v22 = 0.0;
      goto LABEL_42;
    }

    sub_21407D454();
    swift_allocError();
    v25 = 1025;
LABEL_25:
    *v24 = v25;
    *(v24 + 8) = 0;
    goto LABEL_26;
  }

LABEL_51:
  __break(1u);
}

unint64_t sub_21409C410()
{
  result = qword_280B2F6E8[0];
  if (!qword_280B2F6E8[0])
  {
    v3 = type metadata accessor for _BinaryDecoder();
    result = swift_getWitnessTable(byte_21477BCA0, v3, v0, v1);
    atomic_store(result, qword_280B2F6E8);
  }

  return result;
}

unint64_t sub_21409C468()
{
  result = qword_280B2FC20;
  if (!qword_280B2FC20)
  {
    result = swift_getWitnessTable(byte_2146F2584, &type metadata for BitmapImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B2FC20);
  }

  return result;
}

unint64_t sub_21409C4E0()
{
  result = qword_27C905360;
  if (!qword_27C905360)
  {
    result = swift_getWitnessTable(byte_2146F24F0, &type metadata for BitmapImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_27C905360);
  }

  return result;
}

unint64_t sub_21409C534(uint64_t a1)
{
  *(a1 + 8) = sub_21409C564();
  result = sub_21409C5B8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_21409C564()
{
  result = qword_27C905368;
  if (!qword_27C905368)
  {
    result = swift_getWitnessTable(byte_2146F2540, &type metadata for BitmapImage, v0, v1);
    atomic_store(result, &qword_27C905368);
  }

  return result;
}

unint64_t sub_21409C5B8()
{
  result = qword_27C905370;
  if (!qword_27C905370)
  {
    result = swift_getWitnessTable(byte_2146F2518, &type metadata for BitmapImage, v0, v1);
    atomic_store(result, &qword_27C905370);
  }

  return result;
}

unint64_t sub_21409C610()
{
  result = qword_280B2FC10;
  if (!qword_280B2FC10)
  {
    result = swift_getWitnessTable(aA_73, &type metadata for BitmapImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B2FC10);
  }

  return result;
}

unint64_t sub_21409C668()
{
  result = qword_280B2FC18;
  if (!qword_280B2FC18)
  {
    result = swift_getWitnessTable(aQ_70, &type metadata for BitmapImage.CodingKeys, v0, v1);
    atomic_store(result, &qword_280B2FC18);
  }

  return result;
}

uint64_t sub_21409C6F0@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 20));
  v4 = v3[7];
  v5 = v3[9];
  v27 = v3[8];
  v28[0] = v5;
  *(v28 + 9) = *(v3 + 153);
  v6 = v3[3];
  v7 = v3[5];
  v23 = v3[4];
  v8 = v23;
  v24 = v7;
  v9 = v3[5];
  v10 = v3[7];
  v25 = v3[6];
  v11 = v25;
  v26 = v10;
  v12 = v3[1];
  v13 = v3[3];
  v21 = v3[2];
  v14 = v21;
  v22 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  v17 = v3[9];
  a1[8] = v27;
  a1[9] = v17;
  *(a1 + 153) = *(v3 + 153);
  a1[4] = v8;
  a1[5] = v9;
  a1[6] = v11;
  a1[7] = v4;
  *a1 = v16;
  a1[1] = v12;
  a1[2] = v14;
  a1[3] = v6;
  return sub_21409C7E8(v20, &v19);
}

uint64_t type metadata accessor for BasicTextMessage(uint64_t a1)
{
  result = qword_280B2F3F8;
  if (!qword_280B2F3F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 sub_21409C820(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 20));
  v4 = v3[9];
  v14[8] = v3[8];
  v15[0] = v4;
  *(v15 + 9) = *(v3 + 153);
  v5 = v3[5];
  v14[4] = v3[4];
  v14[5] = v5;
  v6 = v3[7];
  v14[6] = v3[6];
  v14[7] = v6;
  v7 = v3[3];
  v14[2] = v3[2];
  v14[3] = v7;
  v8 = v3[1];
  v14[0] = *v3;
  v14[1] = v8;
  sub_21409C8C0(v14);
  v9 = *(a1 + 144);
  v3[8] = *(a1 + 128);
  v3[9] = v9;
  *(v3 + 153) = *(a1 + 153);
  v10 = *(a1 + 80);
  v3[4] = *(a1 + 64);
  v3[5] = v10;
  v11 = *(a1 + 112);
  v3[6] = *(a1 + 96);
  v3[7] = v11;
  v12 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v12;
  result = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = result;
  return result;
}

uint64_t sub_21409C938()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage(0) + 24);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21409C9C8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage(0) + 24);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21409CA64(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BasicTextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409CB2C(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage(0) + 24);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21409CC7C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BasicTextMessage(0) + 24);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409EFEC;
  }

  return result;
}

uint64_t sub_21409CD68@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409CDD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage(0) + 24));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409CE44(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage(0) + 24);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 sub_21409CEDC(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 24));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*sub_21409CF54(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BasicTextMessage(0) + 24);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409EFF0;
}

uint64_t sub_21409D000()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage(0) + 28);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21409D090@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage(0) + 28);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21409D12C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BasicTextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409D1F4(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage(0) + 28);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21409D344(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BasicTextMessage(0) + 28);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409EFEC;
  }

  return result;
}

uint64_t sub_21409D430@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409D49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409D50C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage(0) + 28);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}

__n128 sub_21409D5A4(__n128 *a1)
{
  v3 = a1[1].n128_u64[0];
  v4 = a1[1].n128_u64[1];
  v5 = a1[2].n128_u8[0];
  v6 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 28));
  v7 = v6[1].n128_i64[0];
  v8 = v6[1].n128_i64[1];

  sub_213FDC6D0(v7, v8);
  result = *a1;
  *v6 = *a1;
  v6[1].n128_u64[0] = v3;
  v6[1].n128_u64[1] = v4;
  v6[2].n128_u8[0] = v5;
  return result;
}

void (*sub_21409D61C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  v5 = *(type metadata accessor for BasicTextMessage(0) + 28);
  *(v4 + 36) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  v9 = v6[2];
  v10 = v6[3];
  LOBYTE(v6) = *(v6 + 32);
  *v4 = v8;
  *(v4 + 8) = v7;
  *(v4 + 16) = v9;
  *(v4 + 24) = v10;
  *(v4 + 32) = v6;

  sub_213FDC9D0(v9, v10);
  return sub_21409EFF0;
}

uint64_t sub_21409D6C8()
{
  v1 = v0 + *(type metadata accessor for BasicTextMessage(0) + 32);
  if (*(v1 + 24) == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);

    return v2;
  }

  return result;
}

uint64_t sub_21409D758@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for BasicTextMessage(0) + 32);
  v4 = *(v3 + 24);
  if (v4 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *a2 = *(v3 + 16);
    a2[1] = v4;
  }

  return result;
}

uint64_t sub_21409D7F4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  type metadata accessor for BasicTextMessage(0);
  sub_214031B48(v1, v2, 2, 0x6E776F6E6B6E753CLL, 0xE90000000000003ELL, 0xD00000000000001CLL, 0x800000021478A360);
}

uint64_t sub_21409D8BC(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for BasicTextMessage(0) + 32);
  v11[0] = a1;
  v11[1] = a2;
  v6 = *v5;
  v10 = *(v5 + 32);
  v9[0] = 0x6E776F6E6B6E753CLL;
  v9[1] = 0xE90000000000003ELL;
  v9[2] = 0xD00000000000001CLL;
  v9[3] = 0x800000021478A360;
  if (v6(v11, &v10, v9))
  {
    sub_213FDC6D0(*(v5 + 16), *(v5 + 24));

    *(v5 + 16) = a1;
    *(v5 + 24) = a2;
  }

  else
  {
    sub_214031C4C();
    swift_allocError();
    *v8 = 0x6E776F6E6B6E753CLL;
    v8[1] = 0xE90000000000003ELL;
    v8[2] = 0xD00000000000001CLL;
    v8[3] = 0x800000021478A360;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

void (*sub_21409DA0C(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for BasicTextMessage(0) + 32);
  *(v4 + 40) = v5;
  v6 = v1 + v5;
  v7 = *(v1 + v5 + 16);
  *(v4 + 24) = v7;
  v8 = *(v6 + 24);
  *(v4 + 32) = v8;
  if (v8 == 1)
  {
    result = sub_2146DA018();
    __break(1u);
  }

  else
  {
    *v4 = v7;
    *(v4 + 8) = v8;

    return sub_21409EFEC;
  }

  return result;
}

uint64_t sub_21409DAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for BasicTextMessage(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409DB64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for BasicTextMessage(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  LOBYTE(v3) = *(v3 + 32);
  *a2 = v5;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;

  return sub_213FDC9D0(v6, v7);
}

uint64_t sub_21409DBD4(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = *(a1 + 32);
  v7 = a2 + *(type metadata accessor for BasicTextMessage(0) + 32);
  v8 = *(v7 + 16);
  v9 = *(v7 + 24);

  sub_213FDC9D0(v4, v5);

  result = sub_213FDC6D0(v8, v9);
  *v7 = v3;
  *(v7 + 8) = v2;
  *(v7 + 16) = v4;
  *(v7 + 24) = v5;
  *(v7 + 32) = v6;
  return result;
}