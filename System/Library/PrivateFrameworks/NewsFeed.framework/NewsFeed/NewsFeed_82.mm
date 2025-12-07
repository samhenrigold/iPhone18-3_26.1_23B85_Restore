void sub_1D628F694(uint64_t a1)
{
  if (!*(v1 + 10))
  {
    return;
  }

  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 10) == 1)
  {
    if ((v3 & 0x100) == 0)
    {
      sub_1D6273544(a1, *v1);
      return;
    }

    v8 = *(v1 + 8);
    if (v8 <= 1)
    {
      if (*(v1 + 8))
      {
        if (v2)
        {
          if (v2 != 1)
          {
            v9 = a1;
            v10 = *v1;
            v11 = *(v1 + 8);
            v12 = 1;
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      else if (v2)
      {
        if (v2 != 1)
        {
          v9 = a1;
          v10 = *v1;
          v11 = *(v1 + 8);
          v12 = 0;
          goto LABEL_38;
        }

LABEL_28:
        v6 = 1;
LABEL_39:
        v7 = 1;
        goto LABEL_40;
      }
    }

    else if (v8 == 2)
    {
      if (v2)
      {
        if (v2 != 1)
        {
          v9 = a1;
          v10 = *v1;
          v11 = *(v1 + 8);
          v12 = 2;
          goto LABEL_38;
        }

        goto LABEL_28;
      }
    }

    else
    {
      if (v8 != 3)
      {
        return;
      }

      if (v2)
      {
        if (v2 != 1)
        {
          v9 = a1;
          v10 = *v1;
          v11 = *(v1 + 8);
          v12 = 3;
LABEL_38:
          sub_1D610CA28(v10, v12, 1);
          sub_1D6273544(v9, v2);
          v6 = v2;
          v3 = v11;
          goto LABEL_39;
        }

        goto LABEL_28;
      }
    }

    v15 = 1;
LABEL_35:
    sub_1D610CA74(0, v3, v15, sub_1D60CF6A8, sub_1D60CF6DC);
    return;
  }

  if (v3 >> 8 > 0xFE)
  {
    return;
  }

  if ((v3 & 0x100) == 0)
  {
    v5 = v3;
    sub_1D610CA5C(v2, v3);
    sub_1D6273544(a1, v2);
    v6 = v2;
    v3 = v5;
    v7 = 2;
LABEL_40:
    sub_1D610CA74(v6, v3, v7, sub_1D60CF6A8, sub_1D60CF6DC);
    return;
  }

  v13 = *(v1 + 8);
  if (v13 <= 2)
  {
    if (v2)
    {
      if (v2 == 1)
      {
        v6 = 1;
      }

      else
      {
        v17 = *(v1 + 8);
        sub_1D610CA5C(v2, v3);
        sub_1D6273544(a1, v2);
        v6 = v2;
        v3 = v17;
      }

      v7 = 2;
      goto LABEL_40;
    }

    goto LABEL_34;
  }

  if (v13 != 3)
  {
    return;
  }

  if (!v2)
  {
LABEL_34:
    v15 = 2;
    goto LABEL_35;
  }

  if (v2 == 1)
  {
    v14 = 1;
  }

  else
  {
    v19 = *v1;
    v20 = *(v1 + 8);
    sub_1D610CA5C(v19, v3);
    sub_1D6273544(a1, v2);
    v14 = v2;
    v3 = v20;
  }

  sub_1D610CA74(v14, v3, 2, sub_1D60CF6A8, sub_1D60CF6DC);
}

double sub_1D628FA70(uint64_t *a1)
{
  v2 = *(v1 + 8);
  if (v2 < 0)
  {
    v4 = v2 & 0x7FFFFFFFFFFFFFFFLL;
    v5 = *(v4 + 16);
    v6 = *(v4 + 24);

    sub_1D6288980(a1, v5, v6);
  }

  else
  {
    sub_1D62881C8(a1);
  }

  return result;
}

unint64_t sub_1D628FB34(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  sub_1D5D0A048(*v1);
  sub_1D628FBC4(a1);
  result = sub_1D5D09FB0(v5);
  if (!v2)
  {
    sub_1D5D0A048(v4);
    sub_1D628FBC4(a1);
    return sub_1D5D09FB0(v4);
  }

  return result;
}

double sub_1D628FBC4(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1 >> 61;
  if (v3 > 3)
  {
    if (v3 <= 5)
    {
      v4 = a1;
      v2 &= 0x1FFFFFFFFFFFFFFFuLL;
LABEL_7:
      v5 = *(v2 + 16);

      sub_1D6273544(v4, v5);

      return result;
    }

    if (v3 == 6)
    {
      v7 = *((v2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

      sub_1D6273544(a1, v7);
    }
  }

  else
  {
    if (v3 <= 1)
    {
      v4 = a1;
      if (v3)
      {
        v2 &= 0x1FFFFFFFFFFFFFFFuLL;
      }

      goto LABEL_7;
    }

    if (v3 != 2)
    {
      return sub_1D628FBC4(a1);
    }
  }

  return result;
}

void sub_1D628FCD8(uint64_t a1)
{
  v4 = v1[5];
  v12[4] = v1[4];
  v12[5] = v4;
  v5 = v1[7];
  v12[6] = v1[6];
  v12[7] = v5;
  v6 = v1[1];
  v12[0] = *v1;
  v12[1] = v6;
  v7 = v1[3];
  v12[2] = v1[2];
  v12[3] = v7;
  v8 = sub_1D6011280(v12);
  v9 = sub_1D5D756C8(v12);
  if (v8 == 1)
  {
    sub_1D627683C(a1, v9[14]);
  }

  else
  {
    v11 = v9[6];
    v10 = v9[7];
    sub_1D627683C(a1, *v9);
    if (!v2)
    {
      if (v11)
      {

        sub_1D6273544(a1, v11);
        sub_1D6273544(a1, v10);
        sub_1D5CDE22C(v11, v10);
      }
    }
  }
}

void sub_1D628FDC8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v4, v5, v6, v7, v8, v9);
  sub_1D690A374(a1);
  sub_1D5E1DE98(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1D628FE64(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v22 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a2, v14);
  result = swift_getEnumCaseMultiPayload();
  if (result != 1)
  {
    (*(v5 + 32))(v11, v16, v4);
    (*(v5 + 16))(v7, v11, v4);
    sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    if (swift_dynamicCast())
    {
      v20 = *(&v23 + 1);
      v21 = v24;
      __swift_project_boxed_opaque_existential_1(&v22, *(&v23 + 1));
      (*(v21 + 8))(a1, v20, v21);
      (*(v5 + 8))(v11, v4);
      return __swift_destroy_boxed_opaque_existential_1(&v22);
    }

    else
    {
      v24 = 0;
      v22 = 0u;
      v23 = 0u;
      (*(v5 + 8))(v11, v4);
      return sub_1D5BFB774(&v22, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    }
  }

  return result;
}

void sub_1D629012C(uint64_t a1)
{
  v4 = v1[5];
  v13[4] = v1[4];
  v13[5] = v4;
  v5 = v1[7];
  v13[6] = v1[6];
  v13[7] = v5;
  v6 = v1[1];
  v13[0] = *v1;
  v13[1] = v6;
  v7 = v1[3];
  v13[2] = v1[2];
  v13[3] = v7;
  v8 = sub_1D5CFD35C(v13);
  v9 = sub_1D5CFD34C(v13);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      sub_1D627683C(a1, v9[14]);
    }

    else
    {
      v14 = *v9;
      sub_1D6289B90(a1);
    }
  }

  else if (v8)
  {
    v12 = v9[6];
    v11 = v9[7];
    sub_1D627683C(a1, *v9);
    if (!v2 && v12)
    {

      sub_1D6273544(a1, v12);
      sub_1D6273544(a1, v11);
      sub_1D5CDE22C(v12, v11);
    }
  }

  else
  {
    v10 = v9[1];
    v14 = *v9;

    sub_1D62895DC(a1);

    if (!v2)
    {
      v14 = v10;

      sub_1D62895DC(a1);
    }
  }
}

void sub_1D62902C0(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v8 = v1[8];
  sub_1D5C82CD8(v8);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v8);
  if (!v2)
  {
    swift_beginAccess();
    v5 = v1[11];

    sub_1D6274044(a1, v5);

    swift_beginAccess();

    sub_1D62904AC(a1);

    if (v3[13])
    {
      v6 = v3[17];

      sub_1D5DEA234(v6);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v6);
    }

    swift_beginAccess();
    v7 = v3[19];

    sub_1D626DB9C(a1, v7);
  }
}

void sub_1D62904AC(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 24);

  sub_1D6284A20(a1, v4);
  if (v2)
  {
    goto LABEL_3;
  }

  swift_beginAccess();
  v5 = *(v1 + 40);

  sub_1D6284A20(a1, v5);

  swift_beginAccess();
  v6 = *(v1 + 56);

  sub_1D6284A20(a1, v6);

  swift_beginAccess();
  v7 = *(v1 + 72);

  sub_1D6284A20(a1, v7);

  swift_beginAccess();
  v8 = *(v1 + 88);

  sub_1D6284A20(a1, v8);

  swift_beginAccess();
  v9 = *(v1 + 104);

  sub_1D6284A20(a1, v9);

  swift_beginAccess();
  v10 = *(v1 + 112);
  v11 = *(v1 + 120);

  sub_1D6273544(a1, v10);
  sub_1D62843FC(a1, v11, sub_1D6273544);

  swift_beginAccess();
  v12 = *(v1 + 128);
  v13 = *(v1 + 136);

  sub_1D6273544(a1, v12);
  sub_1D62843FC(a1, v13, sub_1D6273544);

  swift_beginAccess();
  v37 = *(v1 + 144);
  v38 = *(v1 + 152);
  v14 = *(v1 + 168);
  v35 = *(v1 + 160);
  if (v35 == 1)
  {
    sub_1D5C75A4C(v37, v38, 1);

    sub_1D5C75A4C(v37, v38, 1);
    v15 = sub_1D5E26E28(&unk_1F51131F8);
    v16 = swift_allocObject();
    *(v16 + 16) = v37;
    *(v16 + 24) = v38;
    *(v16 + 32) = v15;
    *(v16 + 40) = 0;
    sub_1D6C4D24C(v16 | 0x3000000000000000);
  }

  else
  {
    sub_1D5C75A4C(v37, v38, 0);
  }

  v36 = *(v14 + 16);
  if (!v36)
  {
LABEL_20:
    sub_1D5D2F2C8(v37, v38, v35);
LABEL_3:

    return;
  }

  v17 = 0;
  while (v17 < *(v14 + 16))
  {
    v39 = v17;
    v18 = v14 + 32 + 40 * v17;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    v23 = *(v18 + 32);

    v41 = v21;
    v45 = v22;
    v40 = v23;
    sub_1D5C75A4C(v21, v22, v23);
    v24 = qword_1EDF2AB18;

    if (v24 != -1)
    {
      swift_once();
    }

    v42[0] = v20;
    v42[1] = v19;
    v25 = sub_1D6844380(v42);
    v26 = *(v25 + 16);
    if (v26)
    {
      v27 = 0;
      v28 = 32;
      while (v27 < *(v25 + 16))
      {
        v29 = *(v25 + v28);
        v30 = *(v25 + v28 + 16);
        v31 = *(v25 + v28 + 32);
        v44 = *(v25 + v28 + 48);
        v43[1] = v30;
        v43[2] = v31;
        v43[0] = v29;
        sub_1D5E3B610(v43, v42);
        sub_1D6844F60(a1);
        ++v27;
        sub_1D5E3B66C(v43);
        v28 += 56;
        if (v26 == v27)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
      break;
    }

LABEL_16:

    if (v40)
    {
      v32 = v45;
      sub_1D5C75A4C(v21, v45, 1);
      v33 = sub_1D5E26E28(&unk_1F5113220);
      v34 = swift_allocObject();
      *(v34 + 16) = v41;
      *(v34 + 24) = v32;
      *(v34 + 32) = v33;
      *(v34 + 40) = 0;
      sub_1D6C4D24C(v34 | 0x3000000000000000);

      sub_1D5D2F2C8(v41, v32, 1);
    }

    else
    {

      sub_1D5D2F2C8(v21, v45, 0);
    }

    v17 = v39 + 1;
    if (v39 + 1 == v36)
    {
      goto LABEL_20;
    }
  }

  __break(1u);
}

double sub_1D6290ACC(uint64_t *a1)
{
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 > 1)
  {
    v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    if (v5 == 2)
    {
      v30 = *(v6 + 32);

      sub_1D6298B34(a1);

      return result;
    }

    if (v5 == 3)
    {
      if (*(v6 + 40) >= 3u)
      {
        v8 = *(v6 + 16);
        v7 = *(v6 + 24);
        v9 = *(v6 + 32);
        v30 = v8;
        v31 = v7;
        v32 = v9;
        v33 = 10;
        sub_1D5F58038(v8, v7, v9, 3);
        sub_1D5F58038(v8, v7, v9, 3);
        v10 = sub_1D703E0C8(&v30, &v33);
        if (v2)
        {
          sub_1D5F57FEC(v8, v7, v9, 3);
        }

        else
        {
          v26 = v10;
          v27 = swift_allocObject();
          *(v27 + 16) = v8;
          *(v27 + 24) = v7;
          *(v27 + 32) = v26;
          *(v27 + 40) = 0;

          sub_1D6C4D24C(v27 | 0x3000000000000000);
          sub_1D5F57FEC(v8, v7, v9, 3);
        }
      }

      return result;
    }

    v17 = *(v6 + 16);
    v16 = *(v6 + 24);
    v18 = *(v6 + 32);
    v19 = *(v6 + 40);
    v20 = *(v6 + 48);
    if (v19 > 1)
    {
      if (v19 != 2)
      {
        v30 = *(v6 + 16);
        v31 = v16;
        v32 = v18;
        v33 = 10;
        sub_1D5F58038(v17, v16, v18, 3);

        sub_1D5F58038(v17, v16, v18, 3);
        v25 = sub_1D703E0C8(&v30, &v33);
        if (v2)
        {
          sub_1D5F57FEC(v17, v16, v18, 3);

          return result;
        }

        v28 = v25;
        v29 = swift_allocObject();
        *(v29 + 16) = v17;
        *(v29 + 24) = v16;
        *(v29 + 32) = v28;
        *(v29 + 40) = 0;

        sub_1D6C4D24C(v29 | 0x3000000000000000);

        goto LABEL_15;
      }

      v21 = *(v6 + 16);
      v22 = *(v6 + 24);
      v23 = *(v6 + 32);
      v24 = 2;
    }

    else
    {
      v21 = *(v6 + 16);
      v22 = *(v6 + 24);
      v23 = *(v6 + 32);
      v24 = v19 != 0;
    }

    sub_1D5F58038(v21, v22, v23, v24);

LABEL_15:
    v30 = v20;

    sub_1D6290ACC(a1);
    sub_1D5F57FEC(v17, v16, v18, v19);

    return result;
  }

  if (v5)
  {
    v12 = v4 & 0x1FFFFFFFFFFFFFFFLL;
    v14 = *(v12 + 16);
    v13 = *(v12 + 24);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    *(v15 + 24) = v13;

    sub_1D6C4D24C(v15 | 0xB000000000000000);
  }

  return result;
}

void sub_1D6290E24(uint64_t *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6284F74(a1, v4);
  if (v2)
  {
  }

  else
  {

    if ((~*(v1 + 56) & 0xF000000000000007) != 0)
    {
      *&v41 = *(v1 + 56);

      sub_1D6290ACC(a1);
    }

    v5 = *(v1 + 144);
    v37 = *(v1 + 128);
    v38 = v5;
    v6 = *(v1 + 176);
    v39 = *(v1 + 160);
    v40 = v6;
    v7 = *(v1 + 80);
    v33 = *(v1 + 64);
    v34 = v7;
    v8 = *(v1 + 112);
    v35 = *(v1 + 96);
    v36 = v8;
    v47 = v39;
    v48 = v6;
    v45 = v37;
    v46 = v5;
    v43 = v35;
    v44 = v8;
    v41 = v33;
    v42 = v7;
    if (sub_1D5CFD0B8(&v41) != 1)
    {
      v21 = v45;
      v22 = v46;
      v23 = v47;
      v24 = v48;
      v17 = v41;
      v18 = v42;
      v19 = v43;
      v20 = v44;
      v27 = v35;
      v28 = v36;
      v25 = v33;
      v26 = v34;
      v31 = v39;
      v32 = v40;
      v29 = v37;
      v30 = v38;
      sub_1D5CFD190(&v25, v16);
      sub_1D629012C(a1);
      v16[4] = v21;
      v16[5] = v22;
      v16[6] = v23;
      v16[7] = v24;
      v16[0] = v17;
      v16[1] = v18;
      v16[2] = v19;
      v16[3] = v20;
      sub_1D5CFD368(v16);
    }

    v9 = *(v1 + 192);
    if (v9)
    {
      sub_1D626FA1C(a1, v9);
    }

    LOBYTE(v30) = *(v1 + 280);
    v10 = *(v1 + 248);
    v27 = *(v1 + 232);
    v28 = v10;
    v11 = *(v1 + 216);
    v25 = *(v1 + 200);
    v26 = v11;
    v29 = *(v1 + 264);
    if (v30 != 254)
    {
      *&v16[0] = v27;
      sub_1D62B5354(&v25, &v17, &qword_1EDF33718, &type metadata for FormatShadow);

      sub_1D62895DC(a1);

      sub_1D5D0ABCC(&v25, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v12 = *(v1 + 512);
    if (v12)
    {
      sub_1D6273544(a1, v12);
    }

    if (*(v1 + 520) != 9)
    {
      v13 = *(v1 + 528);
      if ((v13 & 0xF000000000000007) != 0xF000000000000007)
      {
        *&v17 = *(v1 + 528);
        sub_1D5CFCFAC(v13);
        sub_1D62895DC(a1);
      }
    }

    if (*(v1 + 536) != 9)
    {
      v14 = *(v1 + 544);
      if ((v14 & 0xF000000000000007) != 0xF000000000000007)
      {
        *&v17 = *(v1 + 544);
        sub_1D5CFCFAC(v14);
        sub_1D62895DC(a1);
      }
    }

    v15 = *(v1 + 560);
    if (v15)
    {
      sub_1D6273544(a1, v15);
    }
  }
}

void sub_1D62911AC(uint64_t *a1)
{
  v3 = v1[1];
  if (*v1)
  {
    v4 = a1;
    sub_1D6290E24(a1);
    if (v2)
    {
      return;
    }

    a1 = v4;
  }

  sub_1D62744A4(a1, v3);
}

double sub_1D62911F8(uint64_t *a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  if (v7 >> 6 > 1)
  {

    sub_1D6273544(a1, v5);
    if (!v2)
    {
      sub_1D6290E24(a1);
    }
  }

  else
  {

    sub_1D6273544(a1, v5);
  }

  return sub_1D6057D74(v5, v4, v6, v7);
}

void sub_1D62912C0(uint64_t *a1)
{
  v3 = *v1;
  if (*(v1 + 24) >> 6 > 1u)
  {
    sub_1D6273544(a1, v3);
    if (!v2)
    {
      sub_1D6290E24(a1);
    }
  }

  else
  {
    sub_1D6273544(a1, v3);
  }
}

void sub_1D6291314(uint64_t *a1)
{
  sub_1D6273544(a1, *v1);
  if (!v2)
  {
    sub_1D6290E24(a1);
  }
}

void sub_1D629134C(uint64_t *a1)
{
  v3 = v1;
  v7 = *(v1 + 32);
  sub_1D5C82CD8(v7);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v7);
  if (!v2)
  {
    swift_beginAccess();
    v5 = *(v1 + 40);

    sub_1D6274044(a1, v5);

    if (*(v3 + 48))
    {
      v6 = *(v3 + 80);

      sub_1D5DEA234(v6);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v6);
    }
  }
}

double sub_1D62914C8(void *a1)
{
  v4 = *v1;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = *(v1 + 48);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v30 = *(v1 + 80);
  v29 = *(v1 + 88);
  v21 = *(v1 + 104);
  v22 = *(v1 + 96);
  v27 = *(v1 + 112);
  v23 = *(v1 + 128);
  v24 = *(v1 + 120);
  v28 = *(v1 + 136);
  v25 = *(v1 + 152);
  v26 = *(v1 + 144);
  v12 = *(v1 + 160);
  if (!v4 || (sub_1D62744A4(a1, v4), !v2))
  {
    if (v11 >> 11 > 0x1E || (sub_1D5E1DA6C(v5, v6, v7, v8, v9, v10, v11), sub_1D690A374(a1), sub_1D5E1DE98(v5, v6, v7, v8, v9, v10, v11), !v2))
    {
      if ((~v30 & 0xF000000000000007) == 0 || (, sub_1D62895DC(a1), , !v2))
      {
        if (!v29 || (sub_1D6273544(a1, v29), !v2))
        {
          v14 = v28;
          if (v27 != 255 && (v27 & 1) != 0)
          {
            sub_1D6189668(v22, v21, v27);
            sub_1D6189668(v22, v21, v27);
            v15 = sub_1D5E26E28(&unk_1F50F4780);
            v16 = swift_allocObject();
            *(v16 + 16) = v22;
            *(v16 + 24) = v21;
            *(v16 + 32) = v15;
            *(v16 + 40) = 0;
            sub_1D6C4D24C(v16 | 0x3000000000000000);
            sub_1D60107F0(v22, v21, v27);

            v14 = v28;
          }

          if (v14 != 255 && (v14 & 1) != 0)
          {
            sub_1D6189668(v24, v23, v14);
            sub_1D6189668(v24, v23, v14);
            v17 = sub_1D5E26E28(&unk_1F50F47A8);
            v18 = swift_allocObject();
            *(v18 + 16) = v24;
            *(v18 + 24) = v23;
            *(v18 + 32) = v17;
            *(v18 + 40) = 0;
            sub_1D6C4D24C(v18 | 0x3000000000000000);
            sub_1D60107F0(v24, v23, v14);
          }

          if (v12 != 255 && (v12 & 1) != 0)
          {
            sub_1D6189668(v26, v25, v12);
            sub_1D6189668(v26, v25, v12);
            v19 = sub_1D5E26E28(&unk_1F50F47D0);
            v20 = swift_allocObject();
            *(v20 + 16) = v26;
            *(v20 + 24) = v25;
            *(v20 + 32) = v19;
            *(v20 + 40) = 0;
            sub_1D6C4D24C(v20 | 0x3000000000000000);
            sub_1D60107F0(v26, v25, v12);
          }
        }
      }
    }
  }

  return result;
}

void sub_1D629183C(uint64_t a1)
{
  v5 = v1[6];
  v4 = v1[7];
  sub_1D627683C(a1, *v1);
  if (!v2)
  {
    if (v5)
    {

      sub_1D6273544(a1, v5);
      sub_1D6273544(a1, v4);
      sub_1D5CDE22C(v5, v4);
    }
  }
}

double sub_1D62918D4(uint64_t *a1)
{
  v5 = v1[9];
  v4 = v1[10];
  v6 = v1[11];
  v8 = v1[14];
  v7 = v1[15];
  v9 = v1[17];
  if (v5 < 3 || (v10 = v1[8], sub_1D62B5D30(v10, v5), sub_1D6284A20(a1, v5), sub_1D5C5D428(v10, v5), !v2))
  {

    sub_1D626DEC0(a1, v6);

    if (!v2)
    {

      sub_1D626DA28(a1, v8);

      sub_1D627AD20(a1, v7);

      sub_1D6284DD8(a1, v9);

      sub_1D626DB9C(a1, v4);
    }
  }

  return result;
}

void sub_1D6291A5C(uint64_t *a1)
{
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(v1 + 40);
  v8 = v7 >> 5;
  if (v7 >> 5 > 3)
  {
    if (v7 >> 5 <= 5)
    {
      v9 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
      if (v9 <= 1)
      {
        if (!v9)
        {

          sub_1D6290ACC(a1);
          if (v2)
          {
LABEL_24:

            return;
          }

LABEL_25:

          sub_1D6273544(a1, v6);

          v12 = a1;
          v13 = v5;
LABEL_28:
          sub_1D6273544(v12, v13);

          return;
        }

LABEL_23:

        sub_1D6290ACC(a1);
        if (v2)
        {
          goto LABEL_24;
        }

        goto LABEL_25;
      }

LABEL_22:
      if (v9 != 2)
      {
        return;
      }

      goto LABEL_23;
    }

    if (v8 == 6)
    {
      sub_1D6291E90(a1);
    }
  }

  else
  {
    if (v7 >> 5 <= 1)
    {
      if (!v8)
      {
        return;
      }

      v9 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
      if (v9 <= 1)
      {

        sub_1D6290ACC(a1);

        if (v2)
        {
          return;
        }

        sub_1D6273544(a1, v6);

        v12 = a1;
        v13 = v5;
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    if (v8 != 2 && BYTE1(v6) <= 2u)
    {
      if (!BYTE1(v6))
      {

        sub_1D6290ACC(a1);

        return;
      }

      if (BYTE1(v6) == 1)
      {
        if (!v4)
        {
          return;
        }

        v11 = *(v1 + 8);
      }

      else
      {
        v11 = *v1;
      }

      sub_1D6273544(a1, v11);
    }
  }
}

void sub_1D6291CFC(uint64_t *a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = (v1[1] >> 59) & 2 | (v1[1] >> 2) & 1;
  if (v6 <= 1)
  {

    sub_1D6290ACC(a1);

    if (v2)
    {
      return;
    }

    sub_1D6273544(a1, v4);

    v7 = a1;
    v8 = v5;
  }

  else
  {
    if (v6 != 2)
    {
      return;
    }

    sub_1D6290ACC(a1);
    if (v2)
    {

      return;
    }

    sub_1D6273544(a1, v4);

    v7 = a1;
    v8 = v5;
  }

  sub_1D6273544(v7, v8);
}

void sub_1D6291E90(uint64_t *a1)
{
  v5 = *(v1 + 8);
  v4 = *(v1 + 16);
  v6 = *(v1 + 24);
  if (*(v1 + 40))
  {
    v7 = 2;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7 & 0xFFFFFFFE | (v5 >> 1) & 1;
  if (!v8)
  {
    v10 = (v5 >> 59) & 2 | (v5 >> 2) & 1;
    if (v10 <= 1)
    {

      sub_1D6290ACC(a1);

      if (v2)
      {
        return;
      }

      sub_1D6273544(a1, v4);

      v14 = a1;
      v15 = v6;
      goto LABEL_26;
    }

    if (v10 != 2)
    {
      return;
    }

    goto LABEL_17;
  }

  if (v8 != 1)
  {
    v11 = *(v1 + 32);
    v12 = (v4 >> 59) & 2 | (v4 >> 2) & 1;
    if (v12 > 1)
    {
      if (v12 != 2)
      {
        return;
      }
    }

    else if (!v12)
    {

      sub_1D6290ACC(a1);
      v13 = v2;
      if (v2)
      {
        goto LABEL_21;
      }

LABEL_22:

      sub_1D6273544(a1, v6);
      if (!v13)
      {

        sub_1D6273544(a1, v11);

        return;
      }

      goto LABEL_27;
    }

    sub_1D6290ACC(a1);
    v13 = v2;
    if (v2)
    {
      goto LABEL_21;
    }

    goto LABEL_22;
  }

  v9 = (v5 >> 59) & 2 | (v5 >> 2) & 1;
  if (v9 <= 1 || v9 == 2)
  {
LABEL_17:

    sub_1D6290ACC(a1);
    if (!v2)
    {

      sub_1D6273544(a1, v4);

      v14 = a1;
      v15 = v6;
LABEL_26:
      sub_1D6273544(v14, v15);
LABEL_27:

      return;
    }

LABEL_21:
  }
}

uint64_t sub_1D6292190(uint64_t result)
{
  if ((*(v1 + 48) & 0xF0) == 0x30)
  {
    return sub_1D62921EC(result);
  }

  return result;
}

uint64_t sub_1D62921EC(uint64_t result)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 17);
  if (v5 <= 1)
  {
    if (!*(v1 + 17))
    {
      if (v4 > 0xFD)
      {
        return result;
      }

      v8 = v4 >> 6;
      if (v4 >> 6 > 1)
      {
        if (v8 == 2)
        {
          if (v4)
          {
            sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
            sub_1D5C75A4C(v2, v3, 1);
            v9 = &unk_1F50F4600;
            goto LABEL_55;
          }
        }

        else if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
          sub_1D5C75A4C(v2, v3, 1);
          v9 = &unk_1F50F4628;
          goto LABEL_55;
        }
      }

      else if (v8)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
          sub_1D5C75A4C(v2, v3, 1);
          v9 = &unk_1F50F45D8;
          goto LABEL_55;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 0);
        sub_1D5C75A4C(v2, v3, 1);
        v9 = &unk_1F50F45B0;
LABEL_55:
        v22 = sub_1D5E26E28(v9);
        v23 = swift_allocObject();
        *(v23 + 16) = v2;
        *(v23 + 24) = v3;
        *(v23 + 32) = v22;
        *(v23 + 40) = 0;
        sub_1D6C4D24C(v23 | 0x3000000000000000);
      }

      v16 = v2;
      v17 = v3;
      v18 = v4;
      v19 = 0;
      return sub_1D5E1E134(v16, v17, v18, v19);
    }

    if (v4 > 0xFD)
    {
      return result;
    }

    v12 = v4 >> 6;
    if (v4 >> 6 > 1)
    {
      if (v12 == 2)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
          sub_1D5C75A4C(v2, v3, 1);
          v13 = &unk_1F50F4600;
          goto LABEL_59;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
        sub_1D5C75A4C(v2, v3, 1);
        v13 = &unk_1F50F4628;
        goto LABEL_59;
      }
    }

    else if (v12)
    {
      if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
        sub_1D5C75A4C(v2, v3, 1);
        v13 = &unk_1F50F45D8;
        goto LABEL_59;
      }
    }

    else if (v4)
    {
      sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 1u);
      sub_1D5C75A4C(v2, v3, 1);
      v13 = &unk_1F50F45B0;
LABEL_59:
      v24 = sub_1D5E26E28(v13);
      v25 = swift_allocObject();
      *(v25 + 16) = v2;
      *(v25 + 24) = v3;
      *(v25 + 32) = v24;
      *(v25 + 40) = 0;
      sub_1D6C4D24C(v25 | 0x3000000000000000);
    }

    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = 1;
    return sub_1D5E1E134(v16, v17, v18, v19);
  }

  if (v5 == 2)
  {
    if (v4 > 0xFD)
    {
      return result;
    }

    v10 = v4 >> 6;
    if (v4 >> 6 > 1)
    {
      if (v10 == 2)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
          sub_1D5C75A4C(v2, v3, 1);
          v11 = &unk_1F50F4600;
          goto LABEL_41;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
        sub_1D5C75A4C(v2, v3, 1);
        v11 = &unk_1F50F4628;
        goto LABEL_41;
      }
    }

    else if (v10)
    {
      if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
        sub_1D5C75A4C(v2, v3, 1);
        v11 = &unk_1F50F45D8;
        goto LABEL_41;
      }
    }

    else if (v4)
    {
      sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 2u);
      sub_1D5C75A4C(v2, v3, 1);
      v11 = &unk_1F50F45B0;
LABEL_41:
      v14 = sub_1D5E26E28(v11);
      v15 = swift_allocObject();
      *(v15 + 16) = v2;
      *(v15 + 24) = v3;
      *(v15 + 32) = v14;
      *(v15 + 40) = 0;
      sub_1D6C4D24C(v15 | 0x3000000000000000);
    }

    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = 2;
    return sub_1D5E1E134(v16, v17, v18, v19);
  }

  if (v5 == 3 && v4 <= 0xFD)
  {
    v6 = v4 >> 6;
    if (v4 >> 6 > 1)
    {
      if (v6 == 2)
      {
        if (v4)
        {
          sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
          sub_1D5C75A4C(v2, v3, 1);
          v7 = &unk_1F50F4600;
          goto LABEL_47;
        }
      }

      else if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
        sub_1D5C75A4C(v2, v3, 1);
        v7 = &unk_1F50F4628;
        goto LABEL_47;
      }
    }

    else if (v6)
    {
      if (v4)
      {
        sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
        sub_1D5C75A4C(v2, v3, 1);
        v7 = &unk_1F50F45D8;
        goto LABEL_47;
      }
    }

    else if (v4)
    {
      sub_1D5E1DCA8(*v1, *(v1 + 8), *(v1 + 16), 3u);
      sub_1D5C75A4C(v2, v3, 1);
      v7 = &unk_1F50F45B0;
LABEL_47:
      v20 = sub_1D5E26E28(v7);
      v21 = swift_allocObject();
      *(v21 + 16) = v2;
      *(v21 + 24) = v3;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      sub_1D6C4D24C(v21 | 0x3000000000000000);
    }

    v16 = v2;
    v17 = v3;
    v18 = v4;
    v19 = 3;
    return sub_1D5E1E134(v16, v17, v18, v19);
  }

  return result;
}

void sub_1D629274C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 >= 2)
  {
    sub_1D6284A20(a1, v2);
  }
}

void sub_1D6292770(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v16 = *(v1 + 32);
  sub_1D5C82CD8(v16);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v16);
  }

  else
  {
    sub_1D5C92A8C(v16);
    swift_beginAccess();
    v5 = *(v1 + 48);

    sub_1D6274044(a1, v5);

    swift_beginAccess();
    v6 = v3[8];
    if (v6 >> 62 == 1)
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[8]);
      sub_1D5EB1500(v7);

      sub_1D6288D68(a1, v7, v8);
      sub_1D5EB15C4(v7);

      sub_1D5EB15C4(v6);
    }

    if (v3[10])
    {
      sub_1D6292A8C(a1);
    }

    v9 = v3[15];
    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 72);
      if (v10)
      {

        sub_1D62707E8(a1, v10, v11);
      }

      swift_beginAccess();
      v12 = *(v9 + 88);

      sub_1D6272D88(a1, v12);
    }

    swift_beginAccess();
    if (v3[16])
    {

      sub_1D6292CB8(a1, v13);
    }

    if (v3[17])
    {
      v14 = v3[21];

      sub_1D5DEA234(v14);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v14);
    }

    swift_beginAccess();
    v15 = v3[11];

    sub_1D626DB9C(a1, v15);
  }
}

void sub_1D6292A8C(void *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6270510(a1, v4);

  if (!v2)
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      sub_1D6273544(a1, v5);
    }

    v6 = *(v1 + 64);
    if (v6)
    {
      sub_1D626FA1C(a1, v6);
    }

    v34 = *(v1 + 176);
    v7 = *(v1 + 144);
    v31 = *(v1 + 128);
    v32 = v7;
    v33 = *(v1 + 160);
    v8 = *(v1 + 112);
    v30[0] = *(v1 + 96);
    v30[1] = v8;
    if (v34 != 254)
    {
      *&v19 = v31;
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v30, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v9 = *(v1 + 232);
    v10 = *(v1 + 248);
    v11 = *(v1 + 200);
    v19 = *(v1 + 184);
    v20 = v11;
    v21 = *(v1 + 216);
    v22 = v9;
    v12 = *(v1 + 296);
    v13 = *(v1 + 328);
    v27 = *(v1 + 312);
    v28 = v13;
    v14 = *(v1 + 264);
    v15 = *(v1 + 280);
    v23 = v10;
    v24 = v14;
    v29 = *(v1 + 344);
    v25 = v15;
    v26 = v12;
    if (sub_1D60081E0(&v19) != 1)
    {
      v17[8] = v27;
      v17[9] = v28;
      v18 = v29;
      v17[4] = v23;
      v17[5] = v24;
      v17[6] = v25;
      v17[7] = v26;
      v17[0] = v19;
      v17[1] = v20;
      v17[2] = v21;
      v17[3] = v22;
      v16 = sub_1D62B4E2C(v17);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          sub_1D5D04BC4(v17);
          sub_1D62914C8(a1);
        }
      }

      else
      {
        sub_1D5D04BC4(v17);
      }
    }
  }
}

double sub_1D6292CB8(uint64_t *a1, __n128 a2)
{
  v4 = v2;
  if (!*(v2 + 16) || (sub_1D673266C(a1), !v3))
  {
    v7 = *(v2 + 24);
    if (!v7)
    {
      goto LABEL_8;
    }

    v8 = v3;
    swift_beginAccess();
    v9 = *(v7 + 72);
    if (v9)
    {

      sub_1D62707E8(a1, v9, v10);

      if (v3)
      {
        return result;
      }

      v8 = 0;
    }

    swift_beginAccess();
    v11 = *(v7 + 88);

    v3 = v8;
    sub_1D6272D88(a1, v11);

    if (!v8)
    {
LABEL_8:
      swift_beginAccess();
      v13 = *(v4 + 32);
      sub_1D5C82CD8(v13);
      sub_1D626D654(a1);
      sub_1D5C92A8C(v13);
      if (!v3)
      {
        swift_beginAccess();
        v12 = *(v4 + 40);

        sub_1D6274044(a1, v12);
      }
    }
  }

  return result;
}

void sub_1D6292E58(uint64_t a1)
{
  v3 = *v1;
  if (*(v1 + 64) > 1u)
  {
    if (*(v1 + 64) == 2)
    {
      v5 = *(v1 + 48);
      v4 = *(v1 + 56);
      sub_1D627683C(a1, v3);
      if (!v2)
      {
        if (v5)
        {

          sub_1D6273544(a1, v5);
          sub_1D6273544(a1, v4);
          sub_1D5CDE22C(v5, v4);
        }
      }
    }
  }

  else if (*(v1 + 64))
  {
    sub_1D6276AB0(a1, v3);
  }
}

void sub_1D6292F10(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6283774(a1, v4);
  if (v2)
  {

    return;
  }

  v5 = *(v1 + 56);
  v6 = *(v1 + 104);
  v26 = *(v1 + 120);
  v7 = *(v1 + 72);
  v24[0] = v5;
  v24[1] = v7;
  v24[2] = *(v1 + 88);
  v25 = v6;
  v8 = v5;
  if (v26 <= 1u)
  {
    if (v26)
    {
      v9 = *(v1 + 72);
      v10 = *(v1 + 104);
      v20 = *(v1 + 88);
      v21 = v10;
      LOBYTE(v22) = *(v1 + 120);
      v18 = *(v1 + 56);
      v19 = v9;
      sub_1D619916C(&v18, v17);
      sub_1D6276AB0(a1, v8);
      goto LABEL_10;
    }
  }

  else
  {
    if (v26 == 2)
    {
      v14 = v25;
      v15 = *(v1 + 72);
      v16 = *(v1 + 104);
      v20 = *(v1 + 88);
      v21 = v16;
      LOBYTE(v22) = *(v1 + 120);
      v18 = *(v1 + 56);
      v19 = v15;
      sub_1D619916C(&v18, v17);
      sub_1D627683C(a1, v8);
      if (v14)
      {

        sub_1D6273544(a1, v14);
        sub_1D6273544(a1, *(&v14 + 1));
        sub_1D5CDE22C(v14, *(&v14 + 1));
      }

      goto LABEL_10;
    }

    if (v26 == 3)
    {
LABEL_10:
      sub_1D5D0ABCC(v24, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
    }
  }

  v11 = *(v1 + 128);
  if (v11)
  {
    sub_1D626FA1C(a1, v11);
  }

  v23 = *(v1 + 216);
  v12 = *(v1 + 184);
  v20 = *(v1 + 168);
  v21 = v12;
  v22 = *(v1 + 200);
  v13 = *(v1 + 152);
  v18 = *(v1 + 136);
  v19 = v13;
  if (v23 != 254)
  {
    v17[0] = v20;
    swift_retain_n();
    sub_1D62895DC(a1);

    sub_1D5D0ABCC(&v18, &qword_1EDF33718, &type metadata for FormatShadow);
  }
}

double sub_1D62931B8(uint64_t a1)
{

  sub_1D62895DC(a1);

  return result;
}

void sub_1D629320C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = *(v1 + 4);
  v25 = *(v1 + 3);
  v26 = v6;
  v27 = *(v1 + 80);
  v7 = *(v1 + 2);
  v23 = *(v1 + 1);
  v24 = v7;
  v8 = v1[11];
  v9 = *(v1 + 7);
  v28[0] = *(v1 + 6);
  v28[1] = v9;
  v10 = *(v1 + 8);
  v11 = *(v1 + 9);
  v12 = *(v1 + 10);
  v32 = *(v1 + 176);
  v30 = v11;
  v31 = v12;
  v29 = v10;
  v21 = v5;
  v22 = v4;

  sub_1D6EE4610(a1);
  if (v2)
  {

    return;
  }

  v13 = v23;
  if (v27 <= 1u)
  {
    if (!v27)
    {
      goto LABEL_11;
    }

    v18 = v25;
    v19 = v26;
    v20 = v27;
    v16 = v23;
    v17 = v24;
    sub_1D619916C(&v16, v15);
    sub_1D6276AB0(a1, v13);
LABEL_10:
    sub_1D5D0ABCC(&v23, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
LABEL_11:
    if (!v8)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (v27 != 2)
  {
    if (!v8)
    {
      goto LABEL_13;
    }

LABEL_12:
    sub_1D626FA1C(a1, v8);
    goto LABEL_13;
  }

  v14 = v26;
  v18 = v25;
  v19 = v26;
  v20 = v27;
  v16 = v23;
  v17 = v24;
  sub_1D619916C(&v16, v15);
  sub_1D627683C(a1, v13);
  if (v14)
  {

    sub_1D6273544(a1, v14);
    sub_1D6273544(a1, *(&v14 + 1));
    sub_1D5CDE22C(v14, *(&v14 + 1));
    goto LABEL_10;
  }

  sub_1D5D0ABCC(&v23, &qword_1EDF273F0, &type metadata for FormatGroupNodeMaskPath);
  if (v8)
  {
    goto LABEL_12;
  }

LABEL_13:
  if (v32 != 254)
  {
    *&v16 = v29;
    swift_retain_n();
    sub_1D62895DC(a1);

    sub_1D5D0ABCC(v28, &qword_1EDF33718, &type metadata for FormatShadow);
  }
}

double sub_1D62934C4(void *a1)
{
  v5 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v7 = *(v1 + 6);
  v31 = *(v1 + 5);
  v32 = v7;
  v33 = *(v1 + 7);
  v34 = *(v1 + 128);
  v8 = *(v1 + 4);
  v30[0] = *(v1 + 3);
  v30[1] = v8;
  v9 = v1[17];
  *&v19 = v5;
  *(&v19 + 1) = v4;

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v6)
    {
      sub_1D626FA1C(a1, v6);
    }

    if (v34 != 254)
    {
      *&v19 = v31;
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v30, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if (v9)
    {
      sub_1D6273544(a1, v9);
    }

    v11 = *(v1 + 37);
    v27 = *(v1 + 35);
    v28 = v11;
    v29 = *(v1 + 156);
    v12 = *(v1 + 29);
    v23 = *(v1 + 27);
    v24 = v12;
    v13 = *(v1 + 33);
    v25 = *(v1 + 31);
    v26 = v13;
    v14 = *(v1 + 21);
    v19 = *(v1 + 19);
    v20 = v14;
    v15 = *(v1 + 25);
    v21 = *(v1 + 23);
    v22 = v15;
    if (sub_1D60081E0(&v19) != 1)
    {
      v17[8] = v27;
      v17[9] = v28;
      v18 = v29;
      v17[4] = v23;
      v17[5] = v24;
      v17[6] = v25;
      v17[7] = v26;
      v17[0] = v19;
      v17[1] = v20;
      v17[2] = v21;
      v17[3] = v22;
      v16 = sub_1D62B4E2C(v17);
      if (v16 > 1)
      {
        if (v16 == 2)
        {
          sub_1D5D04BC4(v17);
          return sub_1D62914C8(a1);
        }
      }

      else
      {
        sub_1D5D04BC4(v17);
      }
    }
  }

  return result;
}

void sub_1D62936F0(uint64_t result)
{
  if (*(v1 + 16) >= 0xCu)
  {
    sub_1D6EE4610(result);
  }
}

void sub_1D6293788(uint64_t *a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 3)
  {
    if (v4 < 2 || v4 != 2)
    {
      return;
    }

    v6 = *(*((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + 24);

    sub_1D6284CF8(a1, v6);
    if (!v2)
    {

      sub_1D6293788(a1);
    }

LABEL_17:

    return;
  }

  if (v4 != 4)
  {
    if (v4 != 5)
    {
      return;
    }

    v8 = *((v3 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D6293788(a1);
    if (v2 || !v8)
    {
      return;
    }

    sub_1D62938C4(a1);
    goto LABEL_17;
  }

  sub_1D6293788(a1);
  if (!v2)
  {
    sub_1D6293788(a1);
  }
}

void sub_1D62938C4(uint64_t *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6283A60(a1, v4);
  if (v2)
  {

    return;
  }

  v5 = *(v1 + 56);
  if (v5)
  {
    sub_1D6273544(a1, v5);
  }

  swift_beginAccess();
  v6 = *(v1 + 64);
  if (v6)
  {

    sub_1D627A76C(a1, v6);
  }

  if ((~*(v1 + 72) & 0xF000000000000007) != 0)
  {
    *&v24[0] = *(v1 + 72);

    sub_1D62891F0(a1, v7, v8, v9, v10, v11, v12, v13, v14);
  }

  v15 = *(v1 + 80);
  if (v15)
  {
    sub_1D626FA1C(a1, v15);
  }

  v16 = *(v1 + 120);
  if (v16 >= 3)
  {
    if (v16 != 3)
    {
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v19 = *(v1 + 120);
      sub_1D5D0AF9C(v16);
      sub_1D5D0AFBC(v17);
      sub_1D5D0AFBC(v18);
      sub_1D6288794(a1, v17, v18);
      sub_1D5D0AFCC(v17);
      sub_1D5D0AFCC(v18);
      sub_1D5D0AFAC(v19);
    }
  }

  else
  {
    sub_1D5D0AFAC(v16);
  }

  v25 = *(v1 + 224);
  v20 = *(v1 + 192);
  v24[2] = *(v1 + 176);
  v24[3] = v20;
  v24[4] = *(v1 + 208);
  v21 = *(v1 + 160);
  v24[0] = *(v1 + 144);
  v24[1] = v21;
  if (v25 != 254)
  {
    swift_retain_n();
    sub_1D62895DC(a1);

    sub_1D5D0ABCC(v24, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~*(v1 + 232) & 0xF000000000000007) != 0)
  {

    sub_1D62895DC(a1);
  }

  v23 = *(v1 + 248);
  v22 = *(v1 + 256);
  if (v23)
  {
    if (v23 == 1)
    {
      return;
    }

    sub_1D62B5D88(v23);

    sub_1D6276054(a1, v23);
  }

  else
  {
  }

  if (v22)
  {

    sub_1D6276054(a1, v22);
  }

  sub_1D62B5D44(v23);
}

void sub_1D6293C0C(uint64_t a1)
{
  v4 = v1[7];
  v32[6] = v1[6];
  v32[7] = v4;
  v33 = *(v1 + 128);
  v5 = v1[3];
  v32[2] = v1[2];
  v32[3] = v5;
  v6 = v1[5];
  v32[4] = v1[4];
  v32[5] = v6;
  v7 = v1[1];
  v32[0] = *v1;
  v32[1] = v7;
  if (sub_1D6011234(v32) == 1)
  {
    sub_1D5D756B8(v32);
    v8 = v1[3];
    v25 = v1[2];
    v26 = v8;
    v9 = v1[1];
    v23 = *v1;
    v24 = v9;
    v31 = *(v1 + 128);
    v10 = v1[7];
    v29 = v1[6];
    v30 = v10;
    v11 = v1[5];
    v27 = v1[4];
    v28 = v11;
    sub_1D5D756B8(&v23);

    sub_1D62895DC(a1);
  }

  else
  {
    v12 = sub_1D5D756B8(v32);
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v25 = v12[2];
    v26 = v13;
    v23 = v15;
    v24 = v14;
    v16 = v12[7];
    v18 = v12[4];
    v17 = v12[5];
    v29 = v12[6];
    v30 = v16;
    v27 = v18;
    v28 = v17;
    v19 = sub_1D6011280(&v23);
    v20 = sub_1D5D756C8(&v23);
    if (v19 == 1)
    {
      sub_1D627683C(a1, v20[14]);
    }

    else
    {
      v22 = v20[6];
      v21 = v20[7];
      sub_1D627683C(a1, *v20);
      if (!v2)
      {
        if (v22)
        {

          sub_1D6273544(a1, v22);
          sub_1D6273544(a1, v21);
          sub_1D5CDE22C(v22, v21);
        }
      }
    }
  }
}

void sub_1D6293DB8(uint64_t a1)
{
  v4 = *(v1 + 112);
  v25[6] = *(v1 + 96);
  v25[7] = v4;
  v26 = *(v1 + 128);
  v5 = *(v1 + 48);
  v25[2] = *(v1 + 32);
  v25[3] = v5;
  v6 = *(v1 + 80);
  v25[4] = *(v1 + 64);
  v25[5] = v6;
  v7 = *(v1 + 16);
  v25[0] = *v1;
  v25[1] = v7;
  v8 = sub_1D5F78DC4(v25);
  if (v8)
  {
    if (v8 == 1)
    {
      v9 = sub_1D5DEA32C(v25);
      v21 = *(v9 + 80);
      v22 = *(v9 + 96);
      v23 = *(v9 + 112);
      v24 = *(v9 + 128);
      v17 = *(v9 + 16);
      v18 = *(v9 + 32);
      v19 = *(v9 + 48);
      v20 = *(v9 + 64);
      v16 = *v9;
      sub_1D6293C0C(a1);
    }

    else
    {
      sub_1D5DEA32C(v25);
    }
  }

  else
  {
    v10 = sub_1D5DEA32C(v25);
    sub_1D5F78F40(v10, v15);
    v20 = v15[4];
    v21 = v15[5];
    v22 = v15[6];
    v23 = v15[7];
    v16 = v15[0];
    v17 = v15[1];
    v18 = v15[2];
    v19 = v15[3];
    v11 = sub_1D6011280(&v16);
    v12 = sub_1D5D756C8(&v16);
    if (v11 == 1)
    {
      sub_1D627683C(a1, v12[14]);
    }

    else
    {
      v14 = v12[6];
      v13 = v12[7];
      sub_1D627683C(a1, *v12);
      if (!v2 && v14)
      {

        sub_1D6273544(a1, v14);
        sub_1D6273544(a1, v13);
        sub_1D5CDE22C(v14, v13);
      }
    }
  }
}

void sub_1D6293F70(uint64_t a1)
{
  v4 = v1[5];
  v5 = v1[7];
  v43 = v1[6];
  v44 = v5;
  v6 = v1[1];
  v7 = v1[3];
  v39 = v1[2];
  v40 = v7;
  v8 = v1[3];
  v9 = v1[5];
  v41 = v1[4];
  v42 = v9;
  v10 = v1[1];
  v37 = *v1;
  v38 = v10;
  v11 = v1[7];
  v46[6] = v43;
  v46[7] = v11;
  v46[2] = v39;
  v46[3] = v8;
  v46[4] = v41;
  v46[5] = v4;
  v45 = *(v1 + 128);
  v47 = *(v1 + 128);
  v46[0] = v37;
  v46[1] = v6;
  if (sub_1D6011234(v46) == 1)
  {
    v26[0] = *sub_1D5D756B8(v46);
    v30 = v39;
    v31 = v40;
    v28 = v37;
    v29 = v38;
    v36 = v45;
    v34 = v43;
    v35 = v44;
    v32 = v41;
    v33 = v42;
    sub_1D5D756B8(&v28);

    sub_1D62895DC(a1);
  }

  else
  {
    v12 = sub_1D5D756B8(v46);
    v13 = v12[3];
    v15 = *v12;
    v14 = v12[1];
    v27[2] = v12[2];
    v27[3] = v13;
    v27[0] = v15;
    v27[1] = v14;
    v16 = v12[7];
    v18 = v12[4];
    v17 = v12[5];
    v27[6] = v12[6];
    v27[7] = v16;
    v27[4] = v18;
    v27[5] = v17;
    if (sub_1D6011280(v27) == 1)
    {
      v19 = *(sub_1D5D756C8(v27) + 112);
      v36 = v45;
      v34 = v43;
      v35 = v44;
      v30 = v39;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v28 = v37;
      v29 = v38;
      v20 = sub_1D5D756B8(&v28);
      sub_1D62B73AC(v20, v26);
      sub_1D627683C(a1, v19);
    }

    else
    {
      v21 = sub_1D5D756C8(v27);
      v22 = *v21;
      v24 = v21[6];
      v23 = v21[7];
      v28 = v37;
      v29 = v38;
      v34 = v43;
      v35 = v44;
      v36 = v45;
      v30 = v39;
      v31 = v40;
      v32 = v41;
      v33 = v42;
      v25 = sub_1D5D756B8(&v28);
      sub_1D62B73AC(v25, v26);
      sub_1D627683C(a1, v22);
      if (!v2)
      {
        if (v24)
        {

          sub_1D6273544(a1, v24);
          sub_1D6273544(a1, v23);
          sub_1D5CDE22C(v24, v23);
        }
      }
    }

    sub_1D62B7408(&v37);
  }
}

void sub_1D62941E4(uint64_t a1)
{
  sub_1D5F78F40(v1, v8);
  sub_1D5F78F40(v8, v9);
  v10[4] = v9[4];
  v10[5] = v9[5];
  v10[6] = v9[6];
  v10[7] = v9[7];
  v10[0] = v9[0];
  v10[1] = v9[1];
  v10[2] = v9[2];
  v10[3] = v9[3];
  v4 = sub_1D6011280(v10);
  v5 = sub_1D5D756C8(v10);
  if (v4 == 1)
  {
    sub_1D627683C(a1, v5[14]);
  }

  else
  {
    v7 = v5[6];
    v6 = v5[7];
    sub_1D627683C(a1, *v5);
    if (!v2)
    {
      if (v7)
      {

        sub_1D6273544(a1, v7);
        sub_1D6273544(a1, v6);
        sub_1D5CDE22C(v7, v6);
      }
    }
  }
}

void sub_1D62942F4(uint64_t *a1)
{
  v4 = *(v1 + 8);

  sub_1D6287A8C(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D62938C4(a1);
    }
  }
}

void sub_1D6294364(uint64_t *a1)
{
  v3 = v1;
  v14 = v1[4];
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v14);
  }

  else
  {
    sub_1D5C92A8C(v14);
    swift_beginAccess();
    v5 = v1[6];

    sub_1D6274044(a1, v5);

    if (v3[7])
    {
      sub_1D62938C4(a1);
    }

    v6 = v3[8];
    if (v6)
    {
      swift_beginAccess();
      v7 = *(v6 + 72);
      if (v7)
      {

        sub_1D62707E8(a1, v7, v8);
      }

      swift_beginAccess();
      v9 = *(v6 + 88);

      sub_1D6272D88(a1, v9);
    }

    sub_1D6287A8C(a1);

    swift_beginAccess();
    v10 = v3[11];
    if (v10 >> 62 == 1)
    {
      v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[11]);
      sub_1D5EB1500(v11);

      sub_1D6288D68(a1, v11, v12);
      sub_1D5EB15C4(v11);

      sub_1D5EB15C4(v10);
    }

    if (v3[18])
    {
      v13 = v3[22];

      sub_1D5DEA234(v13);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v13);
    }
  }
}

double sub_1D6294640(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  if (!*v1 || (, sub_1D6276054(a1, v5), , !v2))
  {
    if (v4)
    {

      sub_1D6276054(a1, v4);
    }
  }

  return result;
}

void sub_1D62946C0(uint64_t a1)
{
  v3 = *v1;
  switch(*(v1 + 32))
  {
    case 1:
    case 2:
    case 3:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
    case 9:
    case 0xA:
    case 0xB:
      goto LABEL_2;
    case 0xC:
      return;
    default:
      v5 = *(v1 + 16);
      v4 = *(v1 + 24);
      v6 = *(v1 + 8);
      v7 = a1;
      sub_1D6273544(a1, v3);
      if (!v2)
      {
        sub_1D6273544(v7, v6);
        sub_1D6273544(v7, v5);
        a1 = v7;
        v3 = v4;
LABEL_2:
        sub_1D6273544(a1, v3);
      }

      break;
  }
}

double sub_1D6294750(uint64_t a1)
{
  v3 = *v1;

  sub_1D6276054(a1, v3);

  return result;
}

void sub_1D62947BC(uint64_t *a1)
{
  v4 = *(v1 + 24);
  v28 = *(v1 + 16);
  v5 = *(v1 + 104);
  v26[2] = *(v1 + 88);
  v26[3] = v5;
  v26[4] = *(v1 + 120);
  v27 = *(v1 + 136);
  v6 = *(v1 + 72);
  v26[0] = *(v1 + 56);
  v26[1] = v6;
  v7 = *(v1 + 144);
  v8 = *(v1 + 176);
  v9 = *(v1 + 184);
  v11 = *(v1 + 192);
  v10 = *(v1 + 200);
  v12 = *(v1 + 208);

  sub_1D6EE4610(a1);
  if (v2)
  {

    return;
  }

  v25 = v8;

  if ((~v28 & 0xF000000000000007) != 0)
  {

    v13 = a1;
    sub_1D62891F0(a1, v15, v16, v17, v18, v19, v20, v21, v22);

    v14 = v4;
    if (!v4)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v13 = a1;
  v14 = v4;
  if (v4)
  {
LABEL_7:
    sub_1D626FA1C(v13, v14);
  }

LABEL_8:
  if (v27 != 254)
  {
    swift_retain_n();
    sub_1D62895DC(v13);

    sub_1D5D0ABCC(v26, &qword_1EDF33718, &type metadata for FormatShadow);
  }

  if ((~v7 & 0xF000000000000007) != 0)
  {

    sub_1D62895DC(v13);
  }

  if (v25 >= 3)
  {
    if (v25 != 3)
    {
      v23 = *(v25 + 16);
      v24 = *(v25 + 24);
      sub_1D5D0AF9C(v25);
      sub_1D5D0AFBC(v23);
      sub_1D5D0AFBC(v24);
      sub_1D6288794(v13, v23, v24);
      sub_1D5D0AFCC(v23);
      sub_1D5D0AFCC(v24);
      sub_1D5D0AFAC(v25);
    }
  }

  else
  {
    sub_1D5D0AFAC(v25);
  }

  if (v9)
  {
    sub_1D6273544(v13, v9);
  }

  if (v11)
  {
    sub_1D627A76C(v13, v11);
  }

  if (v10)
  {
    if (v10 == 1)
    {
      return;
    }

    sub_1D62B5D88(v10);

    sub_1D6276054(v13, v10);
  }

  else
  {
  }

  if (v12)
  {

    sub_1D6276054(v13, v12);
  }

  sub_1D62B5D44(v10);
}

unint64_t sub_1D6294B3C(unint64_t result)
{
  v2 = *v1;
  if (*v1 >= 3)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = result;
    sub_1D5D0AFBC(v3);
    sub_1D5D0AFBC(v4);
    sub_1D6288794(v5, v3, v4);
    sub_1D5D0AFCC(v3);
    return sub_1D5D0AFCC(v4);
  }

  return result;
}

void sub_1D6294BE0(uint64_t *a1)
{
  v3 = v1;
  v18 = v1[4];
  sub_1D5C82CD8(v18);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v18);
  }

  else
  {
    sub_1D5C92A8C(v18);
    swift_beginAccess();
    v5 = v1[6];

    sub_1D6274044(a1, v5);

    if (v3[7])
    {
      sub_1D62989EC(a1, sub_1D6270360);
    }

    v6 = v3[8];
    if (v6)
    {
      swift_beginAccess();
      v7 = *(v6 + 72);
      if (v7)
      {

        sub_1D62707E8(a1, v7, v8);
      }

      swift_beginAccess();
      v9 = *(v6 + 88);

      sub_1D6272D88(a1, v9);
    }

    v10 = v3[9];
    if (v10 < 0)
    {
      v15 = v10 & 0x7FFFFFFFFFFFFFFFLL;
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);

      sub_1D6288C94(a1, v16, v17);
    }

    swift_beginAccess();
    v11 = v3[11];
    if (v11 >> 62 == 1)
    {
      v12 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v13 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[11]);
      sub_1D5EB1500(v12);

      sub_1D6288D68(a1, v12, v13);
      sub_1D5EB15C4(v12);

      sub_1D5EB15C4(v11);
    }

    if (v3[17])
    {
      v14 = v3[21];

      sub_1D5DEA234(v14);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v14);
    }
  }
}

void sub_1D6294F28(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 104);
  v8[2] = *(v1 + 88);
  v8[3] = v6;
  v8[4] = *(v1 + 120);
  v9 = *(v1 + 136);
  v7 = *(v1 + 72);
  v8[0] = *(v1 + 56);
  v8[1] = v7;

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v5)
    {
      sub_1D6273544(a1, v5);
    }

    if (v4)
    {
      sub_1D626FA1C(a1, v4);
    }

    if (v9 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v8, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }
}

double sub_1D6295048(uint64_t *a1)
{
  v4 = v1[9];
  v5 = v1[11];
  v7 = v1[13];
  v6 = v1[14];
  if (!v1[10] || (sub_1D6295134(a1), !v2))
  {

    sub_1D626DEC0(a1, v5);

    if (!v2)
    {

      sub_1D626DA28(a1, v7);

      sub_1D627AD20(a1, v6);

      sub_1D626DB9C(a1, v4);
    }
  }

  return result;
}

void sub_1D6295134(uint64_t *a1)
{
  v3 = v2;
  v5 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8, v7);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v52, v10);
  v53 = (&v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12, v13);
  v54 = &v51 - v14;
  v15 = type metadata accessor for FormatItemNodeAction(0);
  v66 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v51 - v21;
  if ((*(v1 + 112) & 0xFE) != 0x7E)
  {
    v23 = v18;
    v24 = &v51 - v21;
    v25 = a1;
    v26 = *(v1 + 48);
    if ((v26 & 0xF000000000000007) == 0xF000000000000007)
    {
      a1 = v25;
      v22 = &v51 - v21;
      v18 = v23;
    }

    else
    {
      v51 = v6;
      *&v61 = v26;

      sub_1D62895DC(v25);
      if (v2)
      {

        return;
      }

      a1 = v25;
      v22 = v24;
      v18 = v23;
      v6 = v51;
    }
  }

  v27 = *(v1 + 176);
  if (v27 != 255)
  {
    v28 = *(v1 + 136);
    v58 = *(v1 + 120);
    v59 = v28;
    *v60 = *(v1 + 152);
    *&v60[16] = *(v1 + 168);
    v60[24] = v27;
    v61 = v58;
    v62 = v28;
    v63 = *v60;
    v64 = *&v60[16];
    v65 = v27;
    sub_1D62B5E68(&v61, &v55);
    sub_1D628D2F4(a1);
    if (v2)
    {
      v55 = v58;
      v56 = v59;
      v57[0] = *v60;
      *(v57 + 9) = *&v60[9];
      sub_1D62B5EC4(&v55);
      return;
    }

    v55 = v58;
    v56 = v59;
    v57[0] = *v60;
    *(v57 + 9) = *&v60[9];
    sub_1D62B5EC4(&v55);
  }

  sub_1D5C00D70(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_cellAction, v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v66 + 6))(v22, 1, v15) != 1)
  {
    sub_1D62B50EC(v22, v18, type metadata accessor for FormatItemNodeAction);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if ((EnumCaseMultiPayload - 2) < 6)
    {
LABEL_14:
      sub_1D62B51D0(v22, type metadata accessor for FormatItemNodeAction);
      goto LABEL_15;
    }

    if (EnumCaseMultiPayload)
    {
      v41 = v18;
      v42 = v54;
      sub_1D5D5E33C(v41, v54, type metadata accessor for FormatCommandOpenURL);
      v43 = v53;
      sub_1D62B50EC(v42, v53, type metadata accessor for FormatCommandOpenURL);
      v44 = swift_getEnumCaseMultiPayload();
      if (!v44)
      {
        sub_1D62B51D0(v42, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v43, type metadata accessor for FormatCommandOpenURL);
        goto LABEL_14;
      }

      v40 = v1;
      if (v44 == 1)
      {
        sub_1D62B51D0(v42, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v43, type metadata accessor for FormatCommandOpenURL);
      }

      else
      {
        v66 = v22;
        v46 = *v43;
        v45 = v43[1];
        v47 = v43[2];
        *&v61 = v46;
        *(&v61 + 1) = v45;
        *&v62 = v47;
        LOBYTE(v58) = 6;

        v48 = sub_1D703E0C8(&v61, &v58);
        if (v2)
        {
          sub_1D62B51D0(v54, type metadata accessor for FormatCommandOpenURL);

          v22 = v66;
LABEL_40:
          v36 = type metadata accessor for FormatItemNodeAction;
          v37 = v22;
LABEL_26:
          sub_1D62B51D0(v37, v36);
          return;
        }

        v49 = v48;

        v50 = swift_allocObject();
        *(v50 + 16) = v46;
        *(v50 + 24) = v45;
        *(v50 + 32) = v49;
        *(v50 + 40) = 0;
        sub_1D6C4D24C(v50 | 0x3000000000000000);

        sub_1D62B51D0(v54, type metadata accessor for FormatCommandOpenURL);
        v22 = v66;
      }
    }

    else
    {
      v40 = v1;
      sub_1D62B5F18(v18, &v61);
      sub_1D62B5F18(&v61, &v58);
      sub_1D6295E98(a1);
      if (v2)
      {
        sub_1D62B5F74(&v61);
        goto LABEL_40;
      }

      sub_1D62B5F74(&v61);
    }

    v1 = v40;
    goto LABEL_14;
  }

  sub_1D5B6EF64(v22, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
LABEL_15:
  v30 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
  v31 = v1;
  if (v30 >= 3)
  {
    if (v30 != 3)
    {
      v38 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle);
      v39 = *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8);
      sub_1D62B5DD0(v30);
      sub_1D6273544(a1, v38);
      if (v2)
      {
        sub_1D62B5E14(v38, v39);
        return;
      }

      sub_1D6273544(a1, v39);
      v3 = 0;
      sub_1D62B5E14(v38, v39);
    }
  }

  else
  {
    sub_1D62B5E14(v30, *(v1 + OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle_swipeActionStyle + 8));
  }

  v32 = OBJC_IVAR____TtC8NewsFeed19FormatItemNodeStyle__selectors;
  swift_beginAccess();
  v33 = *(v31 + v32);
  v34 = *(v33 + 16);

  if (v34)
  {
    v35 = 0;
    while (v35 < *(v33 + 16))
    {
      sub_1D62B50EC(v33 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v35, v9, type metadata accessor for FormatItemNodeStyle.Selector);
      sub_1D62960AC(a1);
      if (v3)
      {

        v36 = type metadata accessor for FormatItemNodeStyle.Selector;
        v37 = v9;
        goto LABEL_26;
      }

      ++v35;
      sub_1D62B51D0(v9, type metadata accessor for FormatItemNodeStyle.Selector);
      if (v34 == v35)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_24:
  }
}

void sub_1D6295934(uint64_t *a1)
{
  v3 = v1;
  v13 = v1[6];
  sub_1D5C82CD8(v13);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v13);
  }

  else
  {
    sub_1D5C92A8C(v13);
    swift_beginAccess();
    v5 = v1[8];

    sub_1D6274044(a1, v5);

    swift_beginAccess();
    v6 = v3[9];

    sub_1D626DEC0(a1, v6);

    swift_beginAccess();
    v7 = v3[11];

    sub_1D626DA28(a1, v7);

    swift_beginAccess();
    v8 = v3[14];
    if (v8 >> 62 == 1)
    {
      v9 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[14]);
      sub_1D5EB1500(v9);

      sub_1D6288D68(a1, v9, v10);
      sub_1D5EB15C4(v9);

      sub_1D5EB15C4(v8);
    }

    swift_beginAccess();
    v11 = v3[15];

    sub_1D62828D8(a1, v11);

    if (v3[16])
    {
      v12 = v3[20];

      sub_1D5DEA234(v12);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v12);
    }
  }
}

void sub_1D6295BD4(uint64_t *a1)
{
  v3 = v1;
  v5 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v24[-v11];
  v13 = type metadata accessor for FormatItemNodeAction(0);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D62B50EC(v3, v16, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) >= 6)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D62B5F18(v16, v25);
      sub_1D62B5F18(v25, v24);
      sub_1D6295E98(a1);
      sub_1D62B5F74(v25);
      return;
    }

    sub_1D5D5E33C(v16, v12, type metadata accessor for FormatCommandOpenURL);
    sub_1D62B50EC(v12, v8, type metadata accessor for FormatCommandOpenURL);
    if (swift_getEnumCaseMultiPayload() <= 1)
    {
      sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
      v12 = v8;
LABEL_6:
      sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
      return;
    }

    v19 = *v8;
    v18 = *(v8 + 1);
    v20 = *(v8 + 2);
    v25[0] = v19;
    v25[1] = v18;
    v25[2] = v20;
    v24[0] = 6;

    v21 = sub_1D703E0C8(v25, v24);
    if (!v2)
    {
      v22 = v21;

      v23 = swift_allocObject();
      *(v23 + 16) = v19;
      *(v23 + 24) = v18;
      *(v23 + 32) = v22;
      *(v23 + 40) = 0;
      sub_1D6C4D24C(v23 | 0x3000000000000000);

      goto LABEL_6;
    }

    sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
  }
}

double sub_1D6295E98(uint64_t *a1)
{
  v2 = *v1;
  v3 = v1[3];
  if (*(v1 + 50))
  {
    v4 = 8;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 & 0xFFFFFFF8 | (*(v1 + 24) >> 11) & 7;
  if (v5 <= 3)
  {
    if ((v5 - 1) < 2)
    {
      return result;
    }

    if (v5)
    {
      if (v1[2] == 1 && (v2 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_30;
      }

      return result;
    }

    v7 = (v3 >> 3) & 7;
    if (v7 <= 1)
    {
      if (v7)
      {
        return result;
      }
    }

    else if (v7 != 2 && v7 != 3)
    {
      v8 = v1[3];
      if (v8 >> 6 >= 2)
      {
        if ((v8 & 7) == 1)
        {
LABEL_10:
          if ((v1[1] & 0xF000000000000007) == 0xF000000000000007)
          {
            return result;
          }

          v6 = a1;
          goto LABEL_31;
        }

        return result;
      }
    }
  }

  else
  {
    if (((1 << v5) & 0x330) != 0)
    {
      return result;
    }

    if (v5 != 6)
    {
      sub_1D690A374(a1);
      return result;
    }

    if (v3 >> 6 && v3 >> 6 != 1)
    {
      if ((v3 & 0x3F) != 1)
      {
        return result;
      }

      goto LABEL_10;
    }
  }

  if (v1[2] == 1 && (v2 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_30:
    v6 = a1;
LABEL_31:

    sub_1D6E5C118(v6);
  }

  return result;
}

void sub_1D62960AC(uint64_t *a1)
{
  v55 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v55, v3);
  v54 = (&v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v51 - v7;
  v9 = type metadata accessor for FormatItemNodeAction(0);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54684(0, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v51 - v15;
  v17 = v1[1];
  v70 = *v1;
  v71 = v17;

  v18 = a1;
  v19 = v72;
  sub_1D6EE4610(a1);
  if (v19)
  {

    return;
  }

  v51 = v8;
  v52 = v12;

  v69 = *(v1 + 80);
  v20 = *(v1 + 2);
  v68[0] = *(v1 + 1);
  v68[1] = v20;
  v21 = *(v1 + 4);
  v68[2] = *(v1 + 3);
  v68[3] = v21;
  v53 = v16;
  v22 = v1;
  if ((v69 & 0xFE) == 0x7E)
  {
    v72 = 0;
    v24 = v56;
  }

  else
  {
    v23 = *&v68[0];
    if ((*&v68[0] & 0xF000000000000007) == 0xF000000000000007)
    {
      v72 = 0;
      a1 = v18;
      v16 = v53;
      v24 = v56;
    }

    else
    {
      *&v65 = *&v68[0];
      sub_1D62B5354(v68, &v57, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      sub_1D5CFCFAC(v23);
      sub_1D62895DC(v18);
      v24 = v56;
      v72 = 0;

      sub_1D5D0ABCC(v68, &qword_1EDF270D0, &type metadata for FormatPreviewParameters);
      a1 = v18;
      v16 = v53;
    }
  }

  v25 = *(v1 + 144);
  if (v25 != 255)
  {
    v26 = *(v1 + 13);
    v65 = *(v1 + 11);
    v66 = v26;
    v67[0] = *(v1 + 15);
    *&v67[1] = v1[17];
    BYTE8(v67[1]) = v25;
    v57 = v65;
    v58 = v26;
    v59 = v67[0];
    v60 = *&v67[1];
    v61 = v25;
    sub_1D62B5E68(&v57, &v62);
    v27 = v72;
    sub_1D628D2F4(a1);
    if (v27)
    {
      v62 = v65;
      v63 = v66;
      v64[0] = v67[0];
      *(v64 + 9) = *(v67 + 9);
      sub_1D62B5EC4(&v62);
      return;
    }

    v72 = 0;
    v62 = v65;
    v63 = v66;
    v64[0] = v67[0];
    *(v64 + 9) = *(v67 + 9);
    sub_1D62B5EC4(&v62);
    v16 = v53;
  }

  v28 = type metadata accessor for FormatItemNodeStyle.Selector(0);
  sub_1D5C00D70(v1 + *(v28 + 28), v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
  if ((*(v24 + 48))(v16, 1, v9) == 1)
  {
    sub_1D5B6EF64(v16, qword_1EDF2AF80, type metadata accessor for FormatItemNodeAction);
    goto LABEL_17;
  }

  v29 = v16;
  v30 = v16;
  v31 = v52;
  sub_1D62B50EC(v30, v52, type metadata accessor for FormatItemNodeAction);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 6)
  {
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload)
  {
    v40 = v31;
    v41 = v51;
    sub_1D5D5E33C(v40, v51, type metadata accessor for FormatCommandOpenURL);
    v42 = v54;
    sub_1D62B50EC(v41, v54, type metadata accessor for FormatCommandOpenURL);
    if (swift_getEnumCaseMultiPayload() > 1)
    {
      v56 = v28;
      v43 = a1;
      v45 = *v42;
      v44 = v42[1];
      v46 = v42[2];
      *&v57 = *v42;
      *(&v57 + 1) = v44;
      *&v58 = v46;
      LOBYTE(v65) = 6;

      v47 = v72;
      v48 = sub_1D703E0C8(&v57, &v65);
      v72 = v47;
      if (!v47)
      {
        v49 = v48;

        v50 = swift_allocObject();
        *(v50 + 16) = v45;
        *(v50 + 24) = v44;
        *(v50 + 32) = v49;
        *(v50 + 40) = 0;
        a1 = v43;
        sub_1D6C4D24C(v50 | 0x3000000000000000);

        sub_1D62B51D0(v51, type metadata accessor for FormatCommandOpenURL);
        v33 = v53;
        v28 = v56;
        goto LABEL_16;
      }

      sub_1D62B51D0(v51, type metadata accessor for FormatCommandOpenURL);

      v39 = v53;
LABEL_29:
      sub_1D62B51D0(v39, type metadata accessor for FormatItemNodeAction);
      return;
    }

    sub_1D62B51D0(v41, type metadata accessor for FormatCommandOpenURL);
    sub_1D62B51D0(v42, type metadata accessor for FormatCommandOpenURL);
  }

  else
  {
    sub_1D62B5F18(v31, &v57);
    sub_1D62B5F18(&v57, &v65);
    v38 = v72;
    sub_1D6295E98(a1);
    if (v38)
    {
      sub_1D62B5F74(&v57);
      v39 = v29;
      goto LABEL_29;
    }

    v72 = 0;
    sub_1D62B5F74(&v57);
  }

LABEL_15:
  v33 = v29;
LABEL_16:
  sub_1D62B51D0(v33, type metadata accessor for FormatItemNodeAction);
LABEL_17:
  v34 = (v22 + *(v28 + 40));
  v35 = *v34;
  if (*v34 >= 4)
  {
    v36 = v34[1];
    sub_1D62B5DD0(*v34);
    v37 = v72;
    sub_1D6273544(a1, v35);
    if (!v37)
    {
      sub_1D6273544(a1, v36);
    }

    sub_1D62B5E14(v35, v36);
  }
}

void sub_1D629678C(uint64_t a1)
{
  v3 = *v1;
  if (*v1 >= 3)
  {
    v4 = v1[1];
    sub_1D6273544(a1, v3);
    if (!v2)
    {
      sub_1D6273544(a1, v4);
    }
  }
}

double sub_1D62967D0(uint64_t a1)
{
  v4 = v1[1];
  v5 = v1[2];
  if ((~*v1 & 0xF000000000000007) == 0 || (, sub_1D62895DC(a1), , !v2))
  {
    if ((~v4 & 0xF000000000000007) == 0 || (, sub_1D6012F58(), , !v2))
    {
      if ((~v5 & 0xF000000000000007) != 0)
      {

        sub_1D6012F58();
      }
    }
  }

  return result;
}

double sub_1D629690C(uint64_t *a1, __n128 a2)
{
  v4 = v2;
  v6 = v2[4];
  if ((v6 & 0x8000000000000000) == 0)
  {
    if (!v2[5])
    {
      goto LABEL_8;
    }

    goto LABEL_3;
  }

  v8 = v6 & 0x7FFFFFFFFFFFFFFFLL;
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);

  sub_1D6288C94(a1, v9, v10);
  if (v3)
  {

    return result;
  }

  if (v4[5])
  {
LABEL_3:
    sub_1D6296C18(a1);
    if (v3)
    {
      return result;
    }
  }

LABEL_8:
  v11 = v4[6];
  if (v11)
  {
    swift_beginAccess();
    v12 = *(v11 + 72);
    if (v12)
    {

      sub_1D62707E8(a1, v12, v13);
      if (v3)
      {
LABEL_13:

        return result;
      }
    }

    swift_beginAccess();
    v14 = *(v11 + 88);

    sub_1D6272D88(a1, v14);
    if (v3)
    {
      goto LABEL_13;
    }
  }

  v20 = v4[7];
  sub_1D5C82CD8(v20);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v20);
  if (!v3)
  {
    swift_beginAccess();
    v15 = v4[9];

    sub_1D6274044(a1, v15);

    swift_beginAccess();
    v16 = v4[11];
    if (v16 >> 62 == 1)
    {
      v17 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v18 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v4[11]);
      sub_1D5EB1500(v17);

      sub_1D6288D68(a1, v17, v18);
      sub_1D5EB15C4(v17);

      result = sub_1D5EB15C4(v16);
    }

    if (v4[16])
    {
      v19 = v4[20];

      sub_1D5DEA234(v19);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v19);
    }
  }

  return result;
}

void sub_1D6296C18(uint64_t *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D6283604(a1, v4);

  if (!v2)
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      sub_1D6273544(a1, v5);
    }

    if ((~*(v1 + 64) & 0xF000000000000007) != 0)
    {
      *&v28[0] = *(v1 + 64);

      sub_1D62891F0(a1, v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = *(v1 + 72);
    if (v14)
    {
      sub_1D626FA1C(a1, v14);
    }

    v29 = *(v1 + 184);
    v15 = *(v1 + 152);
    v28[2] = *(v1 + 136);
    v28[3] = v15;
    v28[4] = *(v1 + 168);
    v16 = *(v1 + 120);
    v28[0] = *(v1 + 104);
    v28[1] = v16;
    if (v29 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v28, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v17 = *(v1 + 208);
    if (v17 != 255 && (v17 & 1) != 0)
    {
      v18 = *(v1 + 192);
      v19 = *(v1 + 200);
      sub_1D6189668(v18, v19, *(v1 + 208));
      sub_1D6189668(v18, v19, v17);
      v20 = sub_1D5E26E28(&unk_1F5112AC8);
      v21 = swift_allocObject();
      *(v21 + 16) = v18;
      *(v21 + 24) = v19;
      *(v21 + 32) = v20;
      *(v21 + 40) = 0;
      sub_1D6C4D24C(v21 | 0x3000000000000000);
      sub_1D60107F0(v18, v19, v17);
    }

    v22 = *(v1 + 232);
    if (v22 != 255 && (v22 & 1) != 0)
    {
      v23 = *(v1 + 216);
      v24 = *(v1 + 224);
      sub_1D6189668(v23, v24, *(v1 + 232));
      sub_1D6189668(v23, v24, v22);
      v25 = sub_1D5E26E28(&unk_1F5112AF0);
      v26 = swift_allocObject();
      *(v26 + 16) = v23;
      *(v26 + 24) = v24;
      *(v26 + 32) = v25;
      *(v26 + 40) = 0;
      sub_1D6C4D24C(v26 | 0x3000000000000000);
      sub_1D60107F0(v23, v24, v22);
    }

    v27 = *(v1 + 240);
    if (v27)
    {
      sub_1D6273EA4(a1, v27);
    }
  }
}

double sub_1D6296F08(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  if ((*v4 & 0x8000000000000000) != 0)
  {
    v6 = *v4 & 0x7FFFFFFFFFFFFFFFLL;
    v7 = *(v6 + 0x10);
    v8 = *(v6 + 24);

    a4(a1, v7, v8);
  }

  return result;
}

void sub_1D6296FA4(uint64_t *a1)
{
  v4 = *(v1 + 24);
  v34 = *(v1 + 16);
  v30 = *(v1 + 32);
  v31 = v4;
  v5 = *(v1 + 112);
  v32[2] = *(v1 + 96);
  v32[3] = v5;
  v32[4] = *(v1 + 128);
  v33 = *(v1 + 144);
  v6 = *(v1 + 80);
  v32[0] = *(v1 + 64);
  v32[1] = v6;
  v7 = *(v1 + 152);
  v8 = *(v1 + 160);
  v9 = *(v1 + 168);
  v10 = *(v1 + 176);
  v11 = *(v1 + 184);
  v12 = *(v1 + 192);
  v13 = *(v1 + 200);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    v29 = v13;
    if (v34)
    {
      sub_1D6273544(a1, v34);
    }

    if ((~v31 & 0xF000000000000007) != 0)
    {

      sub_1D62891F0(a1, v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if (v30)
    {
      sub_1D626FA1C(a1, v30);
    }

    if (v33 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v32, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    v23 = v11;
    v22 = v10;
    if (v9 != 255 && (v9 & 1) != 0)
    {
      sub_1D6189668(v7, v8, v9);
      sub_1D6189668(v7, v8, v9);
      v24 = sub_1D5E26E28(&unk_1F5112A78);
      v25 = swift_allocObject();
      *(v25 + 16) = v7;
      *(v25 + 24) = v8;
      *(v25 + 32) = v24;
      *(v25 + 40) = 0;
      sub_1D6C4D24C(v25 | 0x3000000000000000);
      sub_1D60107F0(v7, v8, v9);

      v23 = v11;
      v22 = v10;
    }

    if (v12 != 255 && (v12 & 1) != 0)
    {
      v26 = v22;
      sub_1D6189668(v22, v23, v12);
      sub_1D6189668(v26, v23, v12);
      v27 = sub_1D5E26E28(&unk_1F5112AA0);
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      *(v28 + 24) = v23;
      *(v28 + 32) = v27;
      *(v28 + 40) = 0;
      sub_1D6C4D24C(v28 | 0x3000000000000000);
      sub_1D60107F0(v26, v23, v12);
    }

    if (v29)
    {
      sub_1D6273EA4(a1, v29);
    }
  }
}

void sub_1D62972FC(uint64_t a1)
{
  if (*(v1 + 32) == 1)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = *(v1 + 8);
    sub_1D6273544(a1, *v1);
    if (!v2)
    {
      sub_1D6273544(a1, v6);
      sub_1D6273544(a1, v4);
      sub_1D6273544(a1, v5);
    }
  }
}

void sub_1D629736C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  v7 = v1[2];
  v6 = v1[3];
  sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);
    sub_1D6273544(a1, v7);
    sub_1D6273544(a1, v6);
  }
}

void sub_1D62973E8(uint64_t *a1, __n128 a2)
{
  v5 = v2[1];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[8];
  if ((~v5 & 0xF000000000000007) != 0 || (v2[3] & 7) != 7)
  {
    v12 = *v2;
    if ((v6 & 4) != 0)
    {
      sub_1D6E5C118(a1);
      if (v3)
      {
        return;
      }
    }

    else
    {
      v20 = v2[8];
      v13 = v2[2];
      sub_1D62B7098(v12, v5, v13, v6);
      sub_1D6282658(a1, v12);
      if (v3)
      {
        sub_1D62B7110(v12, v5, v13, v6);
        return;
      }

      sub_1D626CB38(a1, v5, v13, v6, v14, v15, v16);
      sub_1D62B7110(v12, v5, v13, v6);
      v10 = v20;
    }
  }

  if ((~(v7 & v9) & 0x3000000000000007) == 0)
  {
    goto LABEL_12;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    sub_1D6297BE8(a1);
    if (!v3)
    {
      goto LABEL_12;
    }
  }

  else
  {
    sub_1D62B6FC0(v7, v8, v9);
    sub_1D626CAA4(a1, v7, v8, v9, v17, v18, v19);
    sub_1D62B7020(v7, v8, v9);
    if (!v3)
    {
LABEL_12:
      sub_1D627DA04(a1, v10);
    }
  }
}

void sub_1D629758C(uint64_t *a1, __n128 a2)
{
  v4 = v2[3];
  if ((v4 & 4) != 0)
  {
    sub_1D6E5C118(a1);
  }

  else
  {
    v5 = v2[1];
    v6 = v2[2];
    sub_1D6282658(a1, *v2);
    if (!v3)
    {
      sub_1D626CB38(a1, v5, v6, v4, v8, v9, v10);
    }
  }
}

void sub_1D62975F8(uint64_t *a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = v8[2];
  if ((v9 & 0x2000000000000000) != 0)
  {
    sub_1D6297BE8(a1);
  }

  else
  {
    sub_1D626CAA4(a1, *v8, v8[1], v9, a6, a7, a8);
  }
}

void sub_1D6297650(uint64_t a1)
{
  v3 = *(v1 + 32);
  v4 = *(v1 + 56);
  if (v3 != 255 && (v3 & 1) != 0)
  {
    v5 = *(v1 + 56);
    v6 = *(v1 + 24);
    v7 = *(v6 + 24);
    v8 = a1;
    sub_1D62B5FC8(v6, 1);
    sub_1D6277824(v8, v7);
    if (v2)
    {
      sub_1D62B5FD4(v6, v3);
      return;
    }

    sub_1D628E4DC(v8, *(v6 + 32));
    sub_1D62B5FD4(v6, v3);
    a1 = v8;
    v4 = v5;
  }

  sub_1D62779BC(a1, v4);
}

void sub_1D6297730(uint64_t *a1, unint64_t a2)
{
  v4 = a2 >> 61;
  if ((a2 >> 61) <= 1)
  {
    if (v4)
    {
      sub_1D62973E8(a1, *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20));
    }

    else
    {
      sub_1D62978C0(a1, *(a2 + 48));
    }
  }

  else if (v4 == 2)
  {
    v8 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
    v9 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D627EC58(a1, v8);
    if (!v2)
    {
      sub_1D6297730(a1, v9);
    }
  }

  else if (v4 == 3)
  {
    v5 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *((a2 & 0x1FFFFFFFFFFFFFFFLL) + 0x20);

    sub_1D628DEA4(a1, v7);
    if (!v2)
    {
      sub_1D627B710(a1, v5);
      sub_1D6297730(a1, v6);
    }
  }
}

void sub_1D62978C0(uint64_t *a1, __n128 a2)
{
  v5 = *v2;
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  v10 = v2[7];
  if ((v6 & 4) != 0)
  {
    sub_1D6E5C118(a1);
    if (v3)
    {
      return;
    }

    if ((v9 & 0x2000000000000000) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v19 = v2[7];
    v11 = v2[1];
    v12 = v2[2];

    sub_1D6282658(a1, v5);
    if (v3)
    {
      sub_1D62B7130(v5, v11, v12, v6);
      return;
    }

    sub_1D626CB38(a1, v11, v12, v6, v13, v14, v15);
    sub_1D62B7130(v5, v11, v12, v6);
    v10 = v19;
    if ((v9 & 0x2000000000000000) != 0)
    {
LABEL_8:
      sub_1D6297BE8(a1);
      goto LABEL_9;
    }
  }

  sub_1D626CAA4(a1, v7, v8, v9, v16, v17, v18);
LABEL_9:
  sub_1D6297F18(a1, v10);
}

void sub_1D6297A24(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 61;
  if (v4 <= 2)
  {
    if (v4)
    {
      v6 = v3 & 0x1FFFFFFFFFFFFFFFLL;
      if (v4 == 1)
      {
        sub_1D6297650(a1);
        return;
      }

      v12 = *(v6 + 16);
      v13 = *(v12 + 24);

      sub_1D6277298(a1, v13);
      if (!v2)
      {
        sub_1D628E374(a1, *(v12 + 32));
      }
    }

    else
    {
      if ((*(v3 + 48) & 1) == 0)
      {
        return;
      }

      v7 = *(v3 + 16);
      v8 = *(v3 + 24);
      v9 = *(v3 + 32);
      v10 = *(v3 + 40);
      v11 = *(v10 + 24);
      sub_1D5F26358(v7, v8, v9);
      sub_1D62B5FC8(v10, 1);

      sub_1D6277824(a1, v11);
      if (!v2)
      {
        sub_1D628E4DC(a1, *(v10 + 32));
      }

      sub_1D5F26348(v7, v8, v9);
      sub_1D5FC4E9C(v10, 1);
    }
  }
}

uint64_t sub_1D6297B88(uint64_t result)
{
  if (*(v1 + 32) == 1)
  {
    v3 = *(v1 + 24);
    v4 = result;
    result = sub_1D6277824(result, *(v3 + 24));
    if (!v2)
    {
      return sub_1D628E4DC(v4, *(v3 + 32));
    }
  }

  return result;
}

void sub_1D6297BE8(uint64_t *a1)
{
  v4 = *v1;
  v5 = *v1 >> 62;
  if (!v5)
  {
    sub_1D6287E20(a1);
    return;
  }

  if (v5 == 1)
  {
    v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v7 = *(v6 + 16);
    v8 = *(v6 + 24);
    v10 = *(v6 + 32);
    v9 = *(v6 + 40);
    v12 = *(v6 + 48);
    v11 = *(v6 + 56);
    v13 = *(v6 + 64);
    v14 = swift_allocObject();
    *(v14 + 16) = v7;
    *(v14 + 24) = v8;
    *(v14 + 32) = v10;
    *(v14 + 40) = v9;

    swift_bridgeObjectRetain_n();
    sub_1D5E433CC(v12, v11, v13);

    sub_1D6C4D24C(v14 | 0x9000000000000000);

    if (v13 > 1)
    {
      if (v13 != 2)
      {

        sub_1D5E4342C(v12, v11, 0xFFu);
        return;
      }

      sub_1D5E433E0(v12, v11, 2u);
      sub_1D6273544(a1, v12);
      if (!v2)
      {
        sub_1D6273544(a1, v11);
      }

      sub_1D5E4342C(v12, v11, 2u);
      v15 = v12;
      v16 = v11;
      v17 = 2;
    }

    else if (v13)
    {
      sub_1D5E433E0(v12, v11, 1u);
      sub_1D6273544(a1, v12);

      sub_1D5E4342C(v12, v11, 1u);
      v15 = v12;
      v16 = v11;
      v17 = 1;
    }

    else
    {
      sub_1D5E433E0(v12, v11, 0);
      sub_1D6273544(a1, v12);

      sub_1D5E4342C(v12, v11, 0);
      v15 = v12;
      v16 = v11;
      v17 = 0;
    }

    sub_1D5E4342C(v15, v16, v17);
  }

  else
  {
    v18 = *((v4 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    swift_retain_n();

    sub_1D6297BE8(a1);
    if (v2)
    {
    }

    else
    {

      sub_1D62844E8(a1, v18, sub_1D6297BE8);
    }
  }
}

uint64_t sub_1D6297ED0(uint64_t result)
{
  if (*(v1 + 8) == 1)
  {
    v3 = *v1;
    v4 = result;
    result = sub_1D6277824(result, *(v3 + 24));
    if (!v2)
    {
      return sub_1D628E4DC(v4, *(v3 + 32));
    }
  }

  return result;
}

void sub_1D6297F18(uint64_t *a1, unint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37[-v11];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D62809AC(a1, v15);
      if (!v2)
      {
        sub_1D62A10B8(a1, v16);
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (!v13)
    {
      v14 = swift_projectBox();
      sub_1D62B50EC(v14, v12, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v12, v8, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v8, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      v29 = *v8;
      v28 = v8[1];
      v30 = v8[2];
      v39 = v29;
      v40 = v28;
      v41 = v30;
      v38 = 6;

      v31 = sub_1D703E0C8(&v39, &v38);
      if (v2)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);

LABEL_9:

        return;
      }

      v35 = v31;

      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      *(v36 + 24) = v28;
      *(v36 + 32) = v35;
      *(v36 + 40) = 0;
      sub_1D6C4D24C(v36 | 0x3000000000000000);

      sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
      return;
    }

    v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *(v17 + 40);
    v22 = *(v17 + 64);
    if (*(v17 + 66))
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 & 0xFFFFFFF8 | (v22 >> 11) & 7;
    if (v24 > 3)
    {
      if (((1 << v24) & 0x330) != 0)
      {
        return;
      }

      if (v24 != 6)
      {
        v39 = *(v17 + 16);
        v40 = v18;
        v41 = v20;
        v42 = v21;
        v43 = *(v17 + 48);
        v44 = v22 & 0xC7FF;
        sub_1D690A374(a1);
        return;
      }

      if (v21 >> 6 && v21 >> 6 != 1)
      {
        if ((v21 & 0x3F) != 1 || (v18 & 0xF000000000000007) == 0xF000000000000007)
        {
          return;
        }

        v39 = *(v17 + 24);

        v26 = v18;
LABEL_39:
        sub_1D5CFCFAC(v26);
        sub_1D6E5C118(a1);

        return;
      }

      goto LABEL_33;
    }

    if ((v24 - 1) < 2)
    {
      return;
    }

    if (v24)
    {
      goto LABEL_33;
    }

    v27 = (v21 >> 3) & 7;
    if (v27 <= 1)
    {
      v32 = v19 & 0xF000000000000007;
      if (v27)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v17 + 32) == 1;
      }

      goto LABEL_34;
    }

    if (v27 == 2)
    {
LABEL_33:
      v32 = v19 & 0xF000000000000007;
      v33 = *(v17 + 32) == 1;
LABEL_34:
      if (!v33 || v32 == 0xF000000000000007)
      {
        return;
      }

      goto LABEL_38;
    }

    if (v27 != 3)
    {
      v39 = *(v17 + 16);
      v40 = v18;
      v41 = v20;
      LOBYTE(v42) = v21 & 0xC7;
      sub_1D628E970(a1);
      return;
    }

    if (*(v17 + 32) == 1 && (v19 & 0xF000000000000007) != 0xF000000000000007)
    {
LABEL_38:
      v39 = *(v17 + 16);

      v26 = v19;
      goto LABEL_39;
    }
  }
}

double sub_1D629836C(uint64_t *a1)
{
  v4 = *v1;
  v5 = *v1 >> 62;
  if (v5)
  {
    v6 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    if (v5 == 1)
    {
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);

      sub_1D62888F4(a1, v7, v8);

LABEL_17:

      return result;
    }

    v14 = *(v6 + 24);
    v20[0] = *(v6 + 16);
    swift_retain_n();

    sub_1D629836C(a1);
    if (!v2)
    {

      sub_1D62844E8(a1, v14, sub_1D629836C);

      goto LABEL_17;
    }

LABEL_15:

    return result;
  }

  v9 = *(v4 + 16);
  if ((v9 >> 62) < 2)
  {
    return result;
  }

  if (v9 >> 62 != 2)
  {
    v15 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v20[0] = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    swift_retain_n();

    sub_1D6298B34(a1);
    if (!v2)
    {

      sub_1D627496C(a1, v15);

      swift_bridgeObjectRelease_n();
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (!*((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
  {
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v20[0] = v11;
    v20[1] = v10;
    v20[2] = v12;
    v19 = 6;
    sub_1D5D27950(v11, v10, v12, 0);

    sub_1D5D27950(v11, v10, v12, 0);
    v13 = sub_1D703E0C8(v20, &v19);
    if (v2)
    {
      sub_1D5D28C84(v11, v10, v12, 0);
    }

    else
    {
      v17 = v13;
      v18 = swift_allocObject();
      *(v18 + 16) = v11;
      *(v18 + 24) = v10;
      *(v18 + 32) = v17;
      *(v18 + 40) = 0;

      sub_1D6C4D24C(v18 | 0x3000000000000000);
      sub_1D5D28C84(v11, v10, v12, 0);
    }
  }

  return result;
}

void sub_1D629863C(uint64_t *a1)
{
  v3 = v1;
  *&v49 = *(v1 + 32);
  sub_1D5C82CD8(v49);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v49);
  }

  else
  {
    sub_1D5C92A8C(v49);
    swift_beginAccess();
    v5 = *(v1 + 48);

    sub_1D6274044(a1, v5);

    if (*(v3 + 56))
    {
      sub_1D62989EC(a1, sub_1D62701B4);
    }

    v57 = *(v3 + 64);

    sub_1D629836C(a1);

    v6 = *(v3 + 152);
    v7 = *(v3 + 184);
    v47 = *(v3 + 168);
    v48[0] = v7;
    *(v48 + 9) = *(v3 + 193);
    v8 = *(v3 + 88);
    v9 = *(v3 + 120);
    v43 = *(v3 + 104);
    v44 = v9;
    v45 = *(v3 + 136);
    v46 = v6;
    v41 = *(v3 + 72);
    v42 = v8;
    v10 = *(v3 + 152);
    v11 = *(v3 + 184);
    v55 = *(v3 + 168);
    v56[0] = v11;
    *(v56 + 9) = *(v3 + 193);
    v12 = *(v3 + 88);
    v13 = *(v3 + 120);
    v51 = *(v3 + 104);
    v52 = v13;
    v53 = *(v3 + 136);
    v54 = v10;
    v49 = *(v3 + 72);
    v50 = v12;
    if (sub_1D60486AC(&v49) != 1)
    {
      v31 = v55;
      v32[0] = v56[0];
      *(v32 + 9) = *(v56 + 9);
      v27 = v51;
      v28 = v52;
      v29 = v53;
      v30 = v54;
      v25 = v49;
      v26 = v50;
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 9) = *(v48 + 9);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v33 = v41;
      v34 = v42;
      sub_1D62B4994(&v33, v23);
      sub_1D62867D4(a1);
      v23[6] = v31;
      v24[0] = v32[0];
      *(v24 + 9) = *(v32 + 9);
      v23[2] = v27;
      v23[3] = v28;
      v23[4] = v29;
      v23[5] = v30;
      v23[0] = v25;
      v23[1] = v26;
      sub_1D62B49F0(v23);
    }

    swift_beginAccess();
    v14 = *(v3 + 232);
    if (v14 >> 62 == 1)
    {
      v15 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((v14 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v3 + 232));
      sub_1D5EB1500(v15);

      sub_1D6288D68(a1, v15, v16);
      sub_1D5EB15C4(v15);

      sub_1D5EB15C4(v14);
    }

    v17 = *(v3 + 272);
    if (v17)
    {
      v19 = *(v3 + 304);
      v18 = *(v3 + 312);
      v20 = *(v3 + 288);
      v21 = *(v3 + 296);
      v22 = *(v3 + 280);
      *&v33 = v17;
      *(&v33 + 1) = v22;
      *&v34 = v20;
      *(&v34 + 1) = v21;
      *&v35 = v19;
      *(&v35 + 1) = v18;

      sub_1D5DEA234(v19);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v19);
    }
  }
}

void sub_1D62989EC(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  swift_beginAccess();
  v6 = *(v2 + 48);

  a2(a1, v6);

  if (!v3)
  {
    v7 = *(v2 + 56);
    if (v7)
    {
      sub_1D6273544(a1, v7);
    }

    v8 = *(v2 + 64);
    if (v8)
    {
      sub_1D626FA1C(a1, v8);
    }

    v15 = *(v2 + 176);
    v9 = *(v2 + 144);
    v12 = *(v2 + 128);
    v13 = v9;
    v14 = *(v2 + 160);
    v10 = *(v2 + 112);
    v11[0] = *(v2 + 96);
    v11[1] = v10;
    if (v15 != 254)
    {
      v16 = v12;
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v11, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }
}

void sub_1D6298B34(uint64_t *a1)
{
  v3 = *v1 >> 62;
  if (v3 >= 2)
  {
    if (v3 == 2)
    {
      if (!*((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        v6 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        v5 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v7 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
        v12[0] = v6;
        v12[1] = v5;
        v12[2] = v7;
        v13 = 6;
        sub_1D5D27950(v6, v5, v7, 0);
        sub_1D5D27950(v6, v5, v7, 0);
        v8 = sub_1D703E0C8(v12, &v13);
        if (v2)
        {
          sub_1D5D28C84(v6, v5, v7, 0);
        }

        else
        {
          v10 = v8;
          v11 = swift_allocObject();
          *(v11 + 16) = v6;
          *(v11 + 24) = v5;
          *(v11 + 32) = v10;
          *(v11 + 40) = 0;

          sub_1D6C4D24C(v11 | 0x3000000000000000);
          sub_1D5D28C84(v6, v5, v7, 0);
        }
      }
    }

    else
    {
      v9 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v12[0] = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      swift_retain_n();

      sub_1D6298B34(a1);
      if (v2)
      {
      }

      else
      {

        sub_1D627496C(a1, v9);

        swift_bridgeObjectRelease_n();
      }
    }
  }
}

uint64_t sub_1D6298D88(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = a1;
  v28 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10, v11);
  v13 = *(v7 + 16);
  v13(&v21 - v14, v2, v6, v12);
  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (swift_dynamicCast())
  {
    v22 = v13;
    v24 = v2;
    v16 = *(&v26 + 1);
    v15 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    v17 = *(v15 + 8);
    v23 = v5;
    v17(v5, v16, v15);
    result = __swift_destroy_boxed_opaque_existential_1(&v25);
    if (v3)
    {
      return result;
    }

    v5 = v23;
    v4 = v24;
    v13 = v22;
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    sub_1D5BFB774(&v25, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  (v13)(v9, v4 + *(v28 + 52), v6);
  if (swift_dynamicCast())
  {
    v19 = *(&v26 + 1);
    v20 = v27;
    __swift_project_boxed_opaque_existential_1(&v25, *(&v26 + 1));
    (*(v20 + 8))(v5, v19, v20);
    return __swift_destroy_boxed_opaque_existential_1(&v25);
  }

  else
  {
    v27 = 0;
    v25 = 0u;
    v26 = 0u;
    return sub_1D5BFB774(&v25, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }
}

uint64_t sub_1D6299010(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 32);
  v7[0] = *(a2 + 16);
  v7[1] = v4;
  v5 = type metadata accessor for FormatRange(0, v7);
  result = sub_1D6298D88(a1, v5);
  if (!v2)
  {
    return sub_1D6298D88(a1, v5);
  }

  return result;
}

double sub_1D6299090(uint64_t *a1)
{
  v3 = *v1;
  switch((*v1 >> 58) & 0x3C | (*v1 >> 1) & 3)
  {
    case 1uLL:

      v5 = &unk_1F5113428;
      goto LABEL_19;
    case 2uLL:

      v8 = &unk_1F5113400;
      goto LABEL_22;
    case 3uLL:

      v8 = &unk_1F51133D8;
LABEL_22:
      sub_1D6299AC8(a1, v8);
      goto LABEL_46;
    case 4uLL:

      sub_1D6299D10(a1);
      goto LABEL_46;
    case 5uLL:

      sub_1D6299F94(a1);
      goto LABEL_46;
    case 6uLL:

      sub_1D6294364(a1);
      goto LABEL_46;
    case 7uLL:
      v10 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      v11 = v10[4];
      v12 = v10[5];
      swift_beginAccess();
      v14 = v10[2];
      v13 = v10[3];
      swift_beginAccess();
      v15 = v10[12];
      swift_retain_n();

      sub_1D6C4D7E4(v11, v12, 1u, v14, v13, v15, a1, v10);

      goto LABEL_34;
    case 8uLL:

      sub_1D629A334(a1);
      goto LABEL_46;
    case 9uLL:

      sub_1D6D0B48C();
      goto LABEL_46;
    case 0xAuLL:

      sub_1D62DFC84();
      goto LABEL_46;
    case 0xBuLL:

      sub_1D71A3218();
      goto LABEL_46;
    case 0xCuLL:

      sub_1D6AD6E28();
      goto LABEL_46;
    case 0xDuLL:

      sub_1D626CE84(a1);
      goto LABEL_46;
    case 0xEuLL:

      sub_1D628BB04(a1);
      goto LABEL_46;
    case 0xFuLL:

      sub_1D7224D14(a1);
      goto LABEL_46;
    case 0x10uLL:

      sub_1D629A4A0(a1);
      goto LABEL_46;
    case 0x11uLL:

      sub_1D629134C(a1);
      goto LABEL_46;
    case 0x12uLL:

      sub_1D713E478(a1);
      goto LABEL_46;
    case 0x13uLL:

      sub_1D67C72AC();
      goto LABEL_46;
    case 0x14uLL:

      sub_1D6EAFDB0(a1);
      goto LABEL_46;
    case 0x15uLL:

      sub_1D628ED30(a1);
      goto LABEL_46;
    case 0x16uLL:
      return result;
    case 0x17uLL:

      sub_1D626D484(a1);
      goto LABEL_46;
    case 0x18uLL:

      sub_1D629863C(a1);
      goto LABEL_46;
    case 0x19uLL:

      sub_1D629690C(a1, v9);
      goto LABEL_46;
    case 0x1AuLL:

      sub_1D629A778(a1);
      goto LABEL_46;
    case 0x1BuLL:

      sub_1D6294BE0(a1);
      goto LABEL_46;
    case 0x1CuLL:
      sub_1D629AB04(a1);
      return result;
    case 0x1DuLL:

      sub_1D69D60D4();
      goto LABEL_46;
    case 0x1EuLL:
      v17 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);

      v26 = sub_1D71FB9B0(v18, v19, v20, v21, v22, v23, v24, v25);
      sub_1D6C4D418(v26);
      if (v2)
      {
      }

      else
      {

        if (v17[8])
        {
          v27 = v17[12];

          sub_1D5DEA234(v27);

          sub_1D626D2A0(a1);

          sub_1D5CBF568(v27);
        }

        swift_beginAccess();
        v28 = v17[7];

        sub_1D626DB9C(a1, v28);

LABEL_34:
      }

      break;
    case 0x1FuLL:

      sub_1D629AD30(a1);
      goto LABEL_46;
    case 0x20uLL:

      sub_1D629B384(a1);
      goto LABEL_46;
    case 0x21uLL:

      sub_1D6D9D0F4();
      goto LABEL_46;
    case 0x22uLL:

      sub_1D6F7B844();
      goto LABEL_46;
    case 0x23uLL:
      v6 = *((v3 & 0xFFFFFFFFFFFFFF9) + 0x10);
      swift_beginAccess();
      v7 = *(v6 + 48);

      sub_1D626DB9C(a1, v7);

      goto LABEL_34;
    case 0x24uLL:

      sub_1D5EB8F2C();
      goto LABEL_46;
    case 0x25uLL:

      sub_1D6C4D24C(0xC000000000000000);
      goto LABEL_46;
    case 0x26uLL:

      sub_1D629B904(a1);
      goto LABEL_46;
    case 0x27uLL:

      sub_1D629BBE0(a1);
      goto LABEL_46;
    case 0x28uLL:

      sub_1D62902C0(a1);
      goto LABEL_46;
    default:

      v5 = &unk_1F5113450;
LABEL_19:
      sub_1D6299880(a1, v5);
LABEL_46:

      break;
  }

  return result;
}

void sub_1D6299880(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v14 = *(v2 + 64);
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v14);
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 88);

    sub_1D6274044(a1, v7);

    swift_beginAccess();
    if (*(v5 + 128) == 1)
    {
      v9 = *(v5 + 112);
      v8 = *(v5 + 120);
      sub_1D5C75A4C(v9, v8, 1);
      sub_1D5C75A4C(v9, v8, 1);
      v10 = sub_1D5E26E28(a2);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v8;
      *(v11 + 32) = v10;
      *(v11 + 40) = 0;
      sub_1D6C4D24C(v11 | 0x3000000000000000);
      sub_1D5D2F2C8(v9, v8, 1);
    }

    if (*(v5 + 136))
    {
      v12 = *(v5 + 168);

      sub_1D5DEA234(v12);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v12);
    }

    swift_beginAccess();
    v13 = *(v5 + 96);

    sub_1D626DB9C(a1, v13);
  }
}

void sub_1D6299AC8(uint64_t *a1, uint64_t a2)
{
  v5 = v2;
  swift_beginAccess();
  v14 = *(v2 + 88);
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v14);
  if (!v3)
  {
    swift_beginAccess();
    v7 = *(v2 + 96);

    sub_1D6274044(a1, v7);

    swift_beginAccess();
    if (*(v5 + 136) == 1)
    {
      v9 = *(v5 + 120);
      v8 = *(v5 + 128);
      sub_1D5C75A4C(v9, v8, 1);
      sub_1D5C75A4C(v9, v8, 1);
      v10 = sub_1D5E26E28(a2);
      v11 = swift_allocObject();
      *(v11 + 16) = v9;
      *(v11 + 24) = v8;
      *(v11 + 32) = v10;
      *(v11 + 40) = 0;
      sub_1D6C4D24C(v11 | 0x3000000000000000);
      sub_1D5D2F2C8(v9, v8, 1);
    }

    if (*(v5 + 144))
    {
      v12 = *(v5 + 176);

      sub_1D5DEA234(v12);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v12);
    }

    swift_beginAccess();
    v13 = *(v5 + 104);

    sub_1D626DB9C(a1, v13);
  }
}

void sub_1D6299D10(uint64_t *a1)
{
  v3 = v1;
  v14 = v1[4];
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v14);
  }

  else
  {
    sub_1D5C92A8C(v14);
    swift_beginAccess();
    v5 = v1[6];

    sub_1D6274044(a1, v5);

    if (v3[7])
    {
      sub_1D629C19C(a1);
    }

    v6 = v3[8];
    if (v6)
    {
      swift_beginAccess();
      v7 = *(v6 + 72);
      if (v7)
      {

        sub_1D62707E8(a1, v7, v8);
      }

      swift_beginAccess();
      v9 = *(v6 + 88);

      sub_1D6272D88(a1, v9);
    }

    swift_beginAccess();
    v10 = v3[10];
    if (v10 >> 62 == 1)
    {
      v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[10]);
      sub_1D5EB1500(v11);

      sub_1D6288D68(a1, v11, v12);
      sub_1D5EB15C4(v11);

      sub_1D5EB15C4(v10);
    }

    if (v3[17])
    {
      v13 = v3[21];

      sub_1D5DEA234(v13);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v13);
    }
  }
}

void sub_1D6299F94(uint64_t *a1)
{
  v3 = v1;
  v17 = *(v1 + 32);
  sub_1D5D085B4(v17);
  sub_1D62A1DA4(a1, v5);
  if (v2)
  {
    sub_1D5D05694(v17);
  }

  else
  {
    sub_1D5D05694(v17);
    swift_beginAccess();
    v6 = *(v1 + 48);

    sub_1D6274044(a1, v6);

    if (*(v3 + 56))
    {
      sub_1D6290E24(a1);
    }

    v7 = *(v3 + 64);
    if (v7)
    {
      swift_beginAccess();
      v8 = *(v7 + 72);
      if (v8)
      {

        sub_1D62707E8(a1, v8, v9);
      }

      swift_beginAccess();
      v10 = *(v7 + 88);

      sub_1D6272D88(a1, v10);
    }

    sub_1D6E5C118(a1);

    if ((*(v3 + 130) >> 1) <= 0x7Eu)
    {
      v11 = *(v3 + 128) | (*(v3 + 130) << 16);
      v18 = *(v3 + 80);
      v19 = *(v3 + 88);
      v20 = *(v3 + 96);
      v21 = *(v3 + 104);
      v22 = *(v3 + 112);
      v23 = *(v3 + 120);
      sub_1D5D0A5BC(v18, v19, v20, v21, v22, v23, v11);
      sub_1D626D110(a1);
      sub_1D5D0A678(v18, v19, v20, v21, v22, v23, v11);
    }

    swift_beginAccess();
    v12 = *(v3 + 144);
    if (v12 >> 62 == 1)
    {
      v13 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v14 = *((v12 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v3 + 144));
      sub_1D5EB1500(v13);

      sub_1D6288D68(a1, v13, v14);
      sub_1D5EB15C4(v13);

      sub_1D5EB15C4(v12);
    }

    swift_beginAccess();
    v15 = *(v3 + 184);

    sub_1D62828D8(a1, v15);

    if (*(v3 + 208))
    {
      v16 = *(v3 + 240);

      sub_1D5DEA234(v16);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v16);
    }
  }
}

void sub_1D629A334(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v7 = *(v1 + 32);
  sub_1D5C82CD8(v7);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v7);
  if (!v2)
  {
    swift_beginAccess();
    v5 = *(v1 + 40);

    sub_1D6274044(a1, v5);

    if (*(v3 + 48))
    {
      v6 = *(v3 + 80);

      sub_1D5DEA234(v6);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v6);
    }
  }
}

void sub_1D629A4A0(uint64_t *a1)
{
  v3 = v1;

  sub_1D62A3A64(a1, v5);
  if (v2)
  {

    return;
  }

  v17 = v1[8];
  sub_1D5C82CD8(v17);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v17);
  swift_beginAccess();
  v6 = v1[10];

  sub_1D6274044(a1, v6);

  v7 = v3[11];
  if (v7)
  {
    swift_beginAccess();
    v8 = *(v7 + 96);

    sub_1D626FB44(a1, v8);
  }

  swift_beginAccess();
  v9 = v3[13];
  if (v9 >> 62 == 1)
  {
    v10 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v11 = *((v9 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(v3[13]);
    sub_1D5EB1500(v10);

    sub_1D6288D68(a1, v10, v11);
    sub_1D5EB15C4(v10);

    sub_1D5EB15C4(v9);
  }

  if (v3[20])
  {
    v12 = v3[24];

    sub_1D5DEA234(v12);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v12);
  }

  v13 = v3[26];
  if (!v13)
  {
    v16 = 0;
    goto LABEL_17;
  }

  if (v13 == 1)
  {
    v16 = 1;
    goto LABEL_17;
  }

  if (v13 != 2)
  {
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    sub_1D5D0A59C(v13);
    sub_1D5D0A57C(v14);

    sub_1D6288CD4(a1, v14, v15);
    sub_1D5D0A58C(v14);

    v16 = v13;
LABEL_17:
    sub_1D5D0A5AC(v16);
  }
}

void sub_1D629A778(uint64_t *a1)
{
  v3 = v1;
  *&v33 = *(v1 + 32);
  sub_1D5C82CD8(v33);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    swift_beginAccess();
    v5 = *(v1 + 48);

    sub_1D6274044(a1, v5);

    if (*(v3 + 56))
    {
      sub_1D629C434(a1, sub_1D62B7AA4, sub_1D62B7B00);
    }

    v6 = *(v3 + 64);
    if (v6)
    {
      swift_beginAccess();
      v7 = *(v6 + 72);
      if (v7)
      {

        sub_1D62707E8(a1, v7, v8);
      }

      swift_beginAccess();
      v9 = *(v6 + 88);

      sub_1D6272D88(a1, v9);
    }

    *&v33 = *(v3 + 72);

    sub_1D629CE04(a1);

    swift_beginAccess();
    v10 = *(v3 + 88);
    if (v10 >> 62 == 1)
    {
      v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v3 + 88));
      sub_1D5EB1500(v11);

      sub_1D6288D68(a1, v11, v12);
      sub_1D5EB15C4(v11);

      sub_1D5EB15C4(v10);
    }

    v13 = *(v3 + 152);
    if (v13 != 254)
    {
      v14 = *(v3 + 208);
      v15 = *(v3 + 176);
      v30 = *(v3 + 192);
      v31 = v14;
      v16 = *(v3 + 176);
      v28 = *(v3 + 160);
      v29 = v16;
      v26 = *(v3 + 128);
      v33 = v26;
      v17 = *(v3 + 208);
      v38 = v30;
      v39 = v17;
      *&v27 = *(v3 + 144);
      *(&v27 + 1) = v13;
      v32 = *(v3 + 224);
      v34 = v27;
      v35 = v13;
      v40 = *(v3 + 224);
      v36 = v28;
      v37 = v15;
      sub_1D62B7A48(&v33, v24);
      sub_1D62A2F14();
      v24[4] = v30;
      v24[5] = v31;
      v25 = v32;
      v24[0] = v26;
      v24[1] = v27;
      v24[2] = v28;
      v24[3] = v29;
      sub_1D62B61EC(v24);
    }

    v18 = *(v3 + 232);
    if (v18)
    {
      v20 = *(v3 + 264);
      v19 = *(v3 + 272);
      v22 = *(v3 + 248);
      v21 = *(v3 + 256);
      v23 = *(v3 + 240);
      *&v33 = v18;
      *(&v33 + 1) = v23;
      v34 = v22;
      v35 = v21;
      *&v36 = v20;
      *(&v36 + 1) = v19;

      sub_1D5DEA234(v20);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v20);
    }
  }
}

void sub_1D629AB04(uint64_t *a1)
{
  v4 = v1[4];
  v11 = v1[6];
  v9 = v1[11];
  v5 = v1[15];
  v10 = v1[2];
  sub_1D5C82CD8(v10);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v10);
  if (!v2)
  {

    sub_1D6274044(a1, v4);

    if (!(v11 >> 62))
    {
      goto LABEL_5;
    }

    if (v11 >> 62 == 1)
    {
      v6 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v7 = *((v11 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v11);
      sub_1D5EB1500(v6);

      sub_1D6288D68(a1, v6, v7);
      sub_1D5EB15C4(v6);

      sub_1D5EB15C4(v11);
LABEL_5:
      if (!v9)
      {
        return;
      }

      goto LABEL_6;
    }

    if (v11 == 0x8000000000000000)
    {
      v8 = 0x8000000000000000;
    }

    else
    {
      v8 = 0x8000000000000008;
    }

    sub_1D5EB15C4(v8);
    if (v9)
    {
LABEL_6:

      sub_1D5DEA234(v5);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v5);
    }
  }
}

void sub_1D629AD30(uint64_t *a1)
{
  v3 = v1;
  v46 = *(v1 + 32);
  sub_1D5C82CD8(v46);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v46);
    return;
  }

  sub_1D5C92A8C(v46);
  swift_beginAccess();
  v5 = *(v1 + 48);

  sub_1D6274044(a1, v5);

  if (*(v3 + 56))
  {
    sub_1D629C434(a1, sub_1D62B7C6C, sub_1D62B7CC8);
  }

  v6 = *(v3 + 64);
  if (v6)
  {
    swift_beginAccess();
    v7 = *(v6 + 72);
    if (v7)
    {

      sub_1D62707E8(a1, v7, v8);
    }

    swift_beginAccess();
    v9 = *(v6 + 88);

    sub_1D6272D88(a1, v9);
  }

  v46 = *(v3 + 72);

  sub_1D629D0A0(a1, v10);

  v46 = *(v3 + 80);

  sub_1D6287A8C(a1);

  if (*(v3 + 88))
  {
    sub_1D62938C4(a1);
  }

  v11 = *(v3 + 112);
  if (v11 != 1)
  {
    v18 = *(v3 + 96);
    v17 = *(v3 + 104);
    v19 = *(v3 + 120);
    v20 = *(v3 + 128);
    v21 = *(v3 + 136);
    v22 = *(v3 + 144);
    v46 = v18;
    v45 = v19;
    v53 = v22;
    sub_1D62B7B54(v18, v17, v11, v19, v20, v21, v22);

    sub_1D6287A8C(a1);

    v38 = v18;
    if (v17 >= 3)
    {
      sub_1D6273544(a1, v17);
      v39 = v21;
      v44 = v38;
    }

    else
    {
      v44 = v18;
      v39 = v21;
    }

    v40 = v11;
    if (v11)
    {
      sub_1D62938C4(a1);
    }

    v41 = v53;
    if (v53)
    {
      sub_1D5C75A4C(v20, v39, 1);
      v42 = sub_1D5E26E28(&unk_1F51132C0);
      v43 = swift_allocObject();
      *(v43 + 16) = v20;
      *(v43 + 24) = v39;
      *(v43 + 32) = v42;
      *(v43 + 40) = 0;
      sub_1D6C4D24C(v43 | 0x3000000000000000);

      v40 = v11;
      v41 = v53;
    }

    sub_1D62B7BE0(v44, v17, v40, v45, v20, v39, v41);
  }

  v13 = *(v3 + 152);
  v12 = *(v3 + 160);
  v14 = *(v3 + 168);
  if ((*(v3 + 176) & 1) == 0)
  {
    v46 = *(v3 + 152);
    v47 = v12;
    v48 = v14;
    v52[0] = 0;
    sub_1D60AFDB4(v13, v12, v14, 0);
    v23 = sub_1D703E0C8(&v46, v52);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    *(v16 + 32) = v23;
    *(v16 + 40) = 0;

    goto LABEL_19;
  }

  if (v14)
  {
    sub_1D60AFDB4(*(v3 + 152), *(v3 + 160), v14, 1);
    v15 = sub_1D5E26E28(&unk_1F51132E8);
    v16 = swift_allocObject();
    *(v16 + 16) = v13;
    *(v16 + 24) = v12;
    *(v16 + 32) = v15;
    *(v16 + 40) = 0;
LABEL_19:
    sub_1D6C4D24C(v16 | 0x3000000000000000);
  }

  swift_beginAccess();
  v24 = *(v3 + 192);
  if (v24 >> 62 == 1)
  {
    v25 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v26 = *((v24 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    sub_1D5EB1500(*(v3 + 192));
    sub_1D5EB1500(v25);

    sub_1D6288D68(a1, v25, v26);
    sub_1D5EB15C4(v25);

    sub_1D5EB15C4(v24);
  }

  swift_beginAccess();
  v27 = *(v3 + 264);
  if (v27 != 255 && (v27 & 1) != 0)
  {
    v29 = *(v3 + 248);
    v28 = *(v3 + 256);
    sub_1D6189668(v29, v28, *(v3 + 264));
    sub_1D6189668(v29, v28, v27);
    v30 = sub_1D5E26E28(&unk_1F5113310);
    v31 = swift_allocObject();
    *(v31 + 16) = v29;
    *(v31 + 24) = v28;
    *(v31 + 32) = v30;
    *(v31 + 40) = 0;
    sub_1D6C4D24C(v31 | 0x3000000000000000);
    sub_1D60107F0(v29, v28, v27);
  }

  v32 = *(v3 + 272);
  if (v32)
  {
    v34 = *(v3 + 304);
    v33 = *(v3 + 312);
    v36 = *(v3 + 288);
    v35 = *(v3 + 296);
    v37 = *(v3 + 280);
    v46 = v32;
    v47 = v37;
    v48 = v36;
    v49 = v35;
    v50 = v34;
    v51 = v33;

    sub_1D5DEA234(v34);

    sub_1D626D2A0(a1);

    sub_1D5CBF568(v34);
  }
}

void sub_1D629B384(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  *&v33[0] = *(v1 + 32);
  sub_1D5C82CD8(*&v33[0]);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(*&v33[0]);
  }

  else
  {
    sub_1D5C92A8C(*&v33[0]);
    swift_beginAccess();
    v5 = *(v1 + 48);

    sub_1D6274044(a1, v5);

    v6 = *(v3 + 72);
    v7 = *(v3 + 104);
    v33[2] = *(v3 + 88);
    v34[0] = v7;
    *(v34 + 15) = *(v3 + 119);
    v33[0] = *(v3 + 56);
    v33[1] = v6;
    v8 = *(v3 + 72);
    v9 = *(v3 + 104);
    v31 = *(v3 + 88);
    v32[0] = v9;
    *(v32 + 15) = *(v3 + 119);
    v29 = *(v3 + 56);
    v30 = v8;
    sub_1D62B62D8(v33, v27);
    sub_1D629E538(a1);
    v27[1] = v30;
    v27[2] = v31;
    v28[0] = v32[0];
    *(v28 + 15) = *(v32 + 15);
    v27[0] = v29;
    sub_1D62B6334(v27);
    swift_beginAccess();
    if (*(v3 + 136))
    {

      sub_1D629C600(a1);
    }

    swift_beginAccess();
    v10 = *(v3 + 144);
    v11 = *(v3 + 152);
    v12 = *(v3 + 160);
    v13 = *(v3 + 168);
    v15 = *(v3 + 176);
    v14 = *(v3 + 184);
    v16 = *(v3 + 200) >> 6;
    if (v16)
    {
      if (v16 == 1)
      {
        v35 = *(v3 + 192);

        sub_1D6273544(a1, v10);

        if (v13)
        {
          sub_1D5C75A4C(v11, v12, 1);
          sub_1D5C75A4C(v11, v12, 1);
          v17 = sub_1D5E26E28(&unk_1F5113360);
          v18 = swift_allocObject();
          *(v18 + 16) = v11;
          *(v18 + 24) = v12;
          *(v18 + 32) = v17;
          *(v18 + 40) = 0;
          sub_1D6C4D24C(v18 | 0x3000000000000000);
          sub_1D5D2F2C8(v11, v12, 1);
        }

        sub_1D6273544(a1, v15);

        sub_1D6273544(a1, v14);

        v19 = v35;

        sub_1D6273544(a1, v19);
      }
    }

    else
    {
      v35 = *(v3 + 192);

      sub_1D6273544(a1, v10);

      if (v13)
      {
        sub_1D5C75A4C(v11, v12, 1);
        sub_1D5C75A4C(v11, v12, 1);
        v20 = sub_1D5E26E28(&unk_1F5113338);
        v21 = swift_allocObject();
        *(v21 + 16) = v11;
        *(v21 + 24) = v12;
        *(v21 + 32) = v20;
        *(v21 + 40) = 0;
        sub_1D6C4D24C(v21 | 0x3000000000000000);
        sub_1D5D2F2C8(v11, v12, 1);
      }

      if (v15)
      {
        sub_1D6273544(a1, v15);
      }

      sub_1D6273544(a1, v14);

      v22 = v35;

      sub_1D6273544(a1, v22);
    }

    swift_beginAccess();
    v23 = *(v3 + 208);
    if (v23 >> 62 == 1)
    {
      v25 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v24 = *((v23 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v3 + 208));
      sub_1D5EB1500(v25);

      sub_1D6288D68(a1, v25, v24);
      sub_1D5EB15C4(v25);

      sub_1D5EB15C4(v23);
    }

    if (*(v3 + 256))
    {
      v26 = *(v3 + 288);

      sub_1D5DEA234(v26);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v26);
    }
  }
}

void sub_1D629B904(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  *&v23 = *(v1 + 48);
  sub_1D5C82CD8(v23);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v23);
  }

  else
  {
    sub_1D5C92A8C(v23);
    swift_beginAccess();
    v5 = *(v1 + 64);

    sub_1D6274044(a1, v5);

    v6 = *(v3 + 72);
    if (v6 < 0)
    {
      v19 = v6 & 0x7FFFFFFFFFFFFFFFLL;
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);

      sub_1D6288C94(a1, v20, v21);
    }

    swift_beginAccess();
    if (*(v3 + 104))
    {
      v7 = *(v3 + 112);
      v23 = *(v3 + 96);
      v24 = v7;
      v8 = *(v3 + 144);
      v25 = *(v3 + 128);
      v26 = v8;
      v9 = *(&v8 + 1);
      sub_1D62B5354(&v23, &v22, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);

      sub_1D6273154(a1, v9);
      sub_1D5D0ABCC(&v23, &qword_1EDF0B498, &type metadata for FormatPuzzleEmbedNodeStyle);
    }

    swift_beginAccess();
    v10 = *(v3 + 160);
    if (v10 >> 62 == 1)
    {
      v11 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v12 = *((v10 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(*(v3 + 160));
      sub_1D5EB1500(v11);

      sub_1D6288D68(a1, v11, v12);
      sub_1D5EB15C4(v11);

      sub_1D5EB15C4(v10);
    }

    v13 = *(v3 + 224);
    if (v13)
    {
      v15 = *(v3 + 256);
      v14 = *(v3 + 264);
      v17 = *(v3 + 240);
      v16 = *(v3 + 248);
      v18 = *(v3 + 232);
      *&v23 = v13;
      *(&v23 + 1) = v18;
      *&v24 = v17;
      *(&v24 + 1) = v16;
      *&v25 = v15;
      *(&v25 + 1) = v14;

      sub_1D5DEA234(v15);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v15);
    }
  }
}

void sub_1D629BBE0(uint64_t *a1)
{
  v3 = v1;
  v10 = *(v1 + 32);
  sub_1D5C82CD8(v10);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v10);
  }

  else
  {
    sub_1D5C92A8C(v10);
    swift_beginAccess();
    v5 = *(v1 + 48);

    sub_1D6274044(a1, v5);

    swift_beginAccess();
    v6 = v3[7];
    if (v6 >> 62 == 1)
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[7]);
      sub_1D5EB1500(v7);

      sub_1D6288D68(a1, v7, v8);
      sub_1D5EB15C4(v7);

      sub_1D5EB15C4(v6);
    }

    swift_beginAccess();
    if (v3[12])
    {

      sub_1D629C710(a1);
    }

    if (v3[13])
    {
      v9 = v3[17];

      sub_1D5DEA234(v9);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v9);
    }
  }
}

void sub_1D629BE14(uint64_t *a1, __n128 a2)
{
  v4 = v2;
  v5 = *v2;
  switch(v4[6] >> 59)
  {
    case 1:
      sub_1D6290E24(a1);
      return;
    case 2:
      sub_1D62938C4(a1);
      return;
    case 3:
      sub_1D6295134(a1);
      return;
    case 4:
      swift_beginAccess();
      v11 = *(v5 + 96);

      sub_1D626FB44(a1, v11);
      goto LABEL_31;
    case 5:
      v13 = *(v5 + 56);
      if (v13)
      {
        v14 = a1;
        sub_1D626DA28(a1, v13);
        if (v3)
        {
          return;
        }
      }

      else
      {
        v14 = a1;
      }

      swift_beginAccess();
      v23 = *(v5 + 64);

      sub_1D626FD48(v14, v23);
LABEL_31:

      return;
    case 6:
      swift_beginAccess();
      v20 = *(v5 + 56);

      v21 = a1;
      sub_1D626FF20(a1, v20);

      if (!v3 && *(v5 + 74) != 255)
      {
        v22 = *(v5 + 72) | (*(v5 + 74) << 16);
        v24 = *(v5 + 64);
        sub_1D610CA74(v24, v22, SBYTE2(v22), sub_1D610CA28, sub_1D610CA5C);
        sub_1D628F694(v21);
        sub_1D610CA74(v24, v22, SBYTE2(v22), sub_1D60CF6A8, sub_1D60CF6DC);
      }

      return;
    case 7:
      v12 = sub_1D62701B4;
      goto LABEL_27;
    case 8:
      sub_1D6296C18(a1);
      return;
    case 9:
      v8 = sub_1D62B7AA4;
      v9 = sub_1D62B7B00;
      goto LABEL_9;
    case 0xALL:
      v12 = sub_1D6270360;
LABEL_27:
      sub_1D62989EC(a1, v12);
      return;
    case 0xBLL:
      sub_1D6292A8C(a1);
      return;
    case 0xCLL:
      sub_1D673266C(a1);
      return;
    case 0xDLL:
      swift_beginAccess();
      v16 = *(v5 + 72);
      if (!v16)
      {
        goto LABEL_22;
      }

      sub_1D62707E8(a1, v16, v17);
      if (!v3)
      {

LABEL_22:
        swift_beginAccess();
        v18 = *(v5 + 88);

        sub_1D6272D88(a1, v18);
      }

      goto LABEL_31;
    case 0xELL:
      v8 = sub_1D62B7C6C;
      v9 = sub_1D62B7CC8;
LABEL_9:
      sub_1D629C434(a1, v8, v9);
      return;
    case 0xFLL:
      sub_1D629C600(a1);
      return;
    case 0x10:
      v6 = v4[7];

      sub_1D6273154(a1, v6);

      return;
    case 0x11:
      sub_1D629C710(a1);
      return;
    default:
      sub_1D629C19C(a1);
      return;
  }
}

void sub_1D629C19C(uint64_t *a1)
{
  swift_beginAccess();
  v4 = *(v1 + 48);

  sub_1D626F824(a1, v4);

  if (!v2)
  {
    v5 = *(v1 + 56);
    if (v5)
    {
      sub_1D6273544(a1, v5);
    }

    if ((~*(v1 + 64) & 0xF000000000000007) != 0)
    {
      *&v17[0] = *(v1 + 64);

      sub_1D62891F0(a1, v6, v7, v8, v9, v10, v11, v12, v13);
    }

    v14 = *(v1 + 72);
    if (v14)
    {
      sub_1D626FA1C(a1, v14);
    }

    v18 = *(v1 + 184);
    v15 = *(v1 + 152);
    v17[2] = *(v1 + 136);
    v17[3] = v15;
    v17[4] = *(v1 + 168);
    v16 = *(v1 + 120);
    v17[0] = *(v1 + 104);
    v17[1] = v16;
    if (v18 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v17, &qword_1EDF33718, &type metadata for FormatShadow);
    }
  }
}

void sub_1D629C2FC(uint64_t a1)
{
  swift_beginAccess();
  v4 = *(v1 + 56);

  sub_1D626FF20(a1, v4);

  if (!v2 && *(v1 + 74) != 255)
  {
    v5 = *(v1 + 72) | (*(v1 + 74) << 16);
    v6 = *(v1 + 64);
    sub_1D610CA74(v6, v5, SBYTE2(v5), sub_1D610CA28, sub_1D610CA5C);
    sub_1D628F694(a1);
    sub_1D610CA74(v6, v5, SBYTE2(v5), sub_1D60CF6A8, sub_1D60CF6DC);
  }
}

double sub_1D629C434(uint64_t *a1, void (*a2)(__int128 *, void *), uint64_t (*a3)(__int128 *))
{
  swift_beginAccess();
  v8 = *(v3 + 48);

  sub_1D62833C4(a1, v8, a2, a3);

  if (!v4)
  {
    v10 = *(v3 + 56);
    if (v10)
    {
      sub_1D6273544(a1, v10);
    }

    if ((~*(v3 + 64) & 0xF000000000000007) != 0)
    {
      *&v23[0] = *(v3 + 64);

      sub_1D62891F0(a1, v11, v12, v13, v14, v15, v16, v17, v18);
    }

    v19 = *(v3 + 72);
    if (v19)
    {
      sub_1D626FA1C(a1, v19);
    }

    v24 = *(v3 + 184);
    v20 = *(v3 + 152);
    v23[2] = *(v3 + 136);
    v23[3] = v20;
    v23[4] = *(v3 + 168);
    v9 = *(v3 + 104);
    v21 = *(v3 + 120);
    v23[0] = v9;
    v23[1] = v21;
    if (v24 != 254)
    {
      swift_retain_n();
      sub_1D62895DC(a1);

      sub_1D5D0ABCC(v23, &qword_1EDF33718, &type metadata for FormatShadow);
    }

    if ((~*(v3 + 192) & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return *&v9;
}

double sub_1D629C600(uint64_t a1)
{
  swift_beginAccess();
  v4 = v1[6];

  sub_1D6272F68(a1, v4);

  if (!v2)
  {
    v6 = v1[7];
    if (v6)
    {
      sub_1D6273544(a1, v6);
    }

    if ((~v1[8] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v1[9] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

void sub_1D629C710(unint64_t a1)
{
  swift_beginAccess();
  v4 = v1[6];

  sub_1D627331C(a1, v4);

  if (!v2)
  {
    if ((~v1[7] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v1[8] & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    v5 = v1[10];
    if (v5)
    {
      if (v5 == 1)
      {
        v8 = 1;
      }

      else
      {
        if (v5 == 2)
        {
          return;
        }

        v6 = *(v5 + 16);
        v7 = *(v5 + 24);
        sub_1D5D0A59C(v5);
        sub_1D5D0A57C(v6);
        sub_1D5D0A57C(v7);
        sub_1D62886C0(a1, v6, v7);
        sub_1D5D0A58C(v6);
        sub_1D5D0A58C(v7);
        v8 = v5;
      }
    }

    else
    {
      v8 = 0;
    }

    sub_1D5D0A5AC(v8);
  }
}

double sub_1D629C8B0(uint64_t *a1)
{

  sub_1D6285C00(a1, v2, v3, v4, v5, v6, v7, v8);

  return result;
}

void sub_1D629C904(void *a1)
{
  v2 = *v1;
  if (*(v1 + 8))
  {
    if (*(v1 + 8) == 1)
    {
      sub_1D62744A4(a1, v2);
    }
  }

  else
  {
    sub_1D6273544(a1, v2);
  }
}

void sub_1D629C93C(uint64_t *a1)
{
  sub_1D5CF4A48(0, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v25 - v6;
  sub_1D5C8E028(0);
  v11 = MEMORY[0x1EEE9AC00](v8, v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v1;
  switch(*v1 >> 60)
  {
    case 1uLL:
      v19 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);

      swift_bridgeObjectRetain_n();
      sub_1D62747C4(a1, v19);

      swift_bridgeObjectRelease_n();
      return;
    case 2uLL:
      v20 = v10;
      v21 = swift_projectBox();
      sub_1D62B50EC(v21, v13, sub_1D5C8E028);
      sub_1D6284BAC(a1, *&v13[*(v20 + 36)]);
      sub_1D62B51D0(v13, sub_1D5C8E028);
      return;
    case 3uLL:
    case 4uLL:
      v23 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D6284A20(a1, v23);
      goto LABEL_13;
    case 5uLL:
      v24 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

      sub_1D62747C4(a1, v24);

      goto LABEL_13;
    case 6uLL:
      v22 = swift_projectBox();
      sub_1D62B7198(v22, v7, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      sub_1D62848B0(a1, *&v7[*(v4 + 36)]);
      sub_1D62B7204(v7, &qword_1EDF40040, type metadata accessor for FormatSelectorValue);
      return;
    case 7uLL:
      v26 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D62895DC(a1);
      return;
    case 8uLL:
      v16 = v14 & 0xFFFFFFFFFFFFFFFLL;
      v17 = *(v16 + 16);
      v18 = *(v16 + 24);

      sub_1D628D658(a1, v17, v18, sub_1D629C93C);

      return;
    case 9uLL:
      v26 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D6287A8C(a1);
      return;
    case 0xAuLL:
      v26 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D629CE04(a1);
      return;
    case 0xBuLL:
      return;
    case 0xCuLL:
      v26 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D6290ACC(a1);
      return;
    case 0xDuLL:
      v26 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      sub_1D629D0A0(a1, v11);
      return;
    default:
      v15 = *(v14 + 24);

      sub_1D6284A20(a1, v15);
LABEL_13:

      return;
  }
}

double sub_1D629CD1C(uint64_t *a1)
{

  sub_1D629C93C(a1);

  return result;
}

void sub_1D629CD70(uint64_t *a1)
{
  if ((*(v1 + 16) & 1) == 0)
  {
    sub_1D629C93C(a1);
  }
}

void sub_1D629CDD0(uint64_t *a1)
{
  if ((*(v1 + 32) & 1) == 0)
  {
    sub_1D629C93C(a1);
  }
}

void sub_1D629CE04(uint64_t *a1)
{
  v4 = *v1;
  v5 = *v1 >> 61;
  if (v5 > 1)
  {
    v6 = (v4 & 0x1FFFFFFFFFFFFFFFLL);
    if (v5 == 2)
    {
      v18 = v6[2];
      v19 = v6[3];

      sub_1D6288868(a1, v18, v19);
    }

    else
    {
      if (v5 == 3)
      {
        v8 = v6[2];
        v7 = v6[3];
        v9 = v6[4];
        *&v24 = v8;
        *(&v24 + 1) = v7;
        *&v25 = v9;
        v39 = 9;
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        v10 = sub_1D703E0C8(&v24, &v39);
        if (v2)
        {
        }

        else
        {
          v22 = v10;
          v23 = swift_allocObject();
          *(v23 + 16) = v8;
          *(v23 + 24) = v7;
          *(v23 + 32) = v22;
          *(v23 + 40) = 0;

          sub_1D6C4D24C(v23 | 0x3000000000000000);
        }

        return;
      }

      v20 = v6[3];
      *&v24 = v6[2];
      swift_retain_n();

      sub_1D629CE04(a1);
      if (v2)
      {

        return;
      }

      sub_1D6282C14(a1, v20);
    }

    return;
  }

  if (v5)
  {
    v21 = *((v4 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D6282D08(a1, v21);
    if (v2)
    {
    }

    else
    {

      sub_1D629CE04(a1);
    }
  }

  else
  {
    v11 = *(v4 + 224);
    v36 = *(v4 + 208);
    v37 = v11;
    v38 = *(v4 + 240);
    v12 = *(v4 + 160);
    v32 = *(v4 + 144);
    v33 = v12;
    v13 = *(v4 + 192);
    v34 = *(v4 + 176);
    v35 = v13;
    v14 = *(v4 + 96);
    v28 = *(v4 + 80);
    v29 = v14;
    v15 = *(v4 + 128);
    v30 = *(v4 + 112);
    v31 = v15;
    v16 = *(v4 + 32);
    v24 = *(v4 + 16);
    v25 = v16;
    v17 = *(v4 + 64);
    v26 = *(v4 + 48);
    v27 = v17;
    sub_1D629F098(a1);
  }
}

double sub_1D629D0A0(uint64_t *a1, __n128 a2)
{
  v5 = *v2;
  if (*v2 < 0)
  {
    v9 = v5 & 0x7FFFFFFFFFFFFFFFLL;
    if (*(v9 + 40) >= 2u)
    {
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      v12 = *(v9 + 32);
      v17[0] = v11;
      v17[1] = v10;
      v17[2] = v12;
      v18 = 6;
      sub_1D62B6240(v11, v10, v12, 2);
      sub_1D62B6240(v11, v10, v12, 2);
      v13 = sub_1D703E0C8(v17, &v18);
      if (v3)
      {
        return sub_1D62B628C(v11, v10, v12, 2);
      }

      else
      {
        v15 = v13;
        v16 = swift_allocObject();
        *(v16 + 16) = v11;
        *(v16 + 24) = v10;
        *(v16 + 32) = v15;
        *(v16 + 40) = 0;

        sub_1D6C4D24C(v16 | 0x3000000000000000);
        sub_1D62B628C(v11, v10, v12, 2);
      }
    }
  }

  else
  {
    v6 = *(v5 + 16);
    v7 = *(v5 + 24);

    sub_1D6279934(a1, v6);
    if (v3)
    {
    }

    else
    {
      v17[0] = v7;

      sub_1D629D0A0(a1, v14);
    }
  }

  return result;
}

double sub_1D629D254(uint64_t *a1)
{
  v3 = *(v1 + 16);
  v37[0] = *v1;
  v37[1] = v3;
  v4 = *(v1 + 32);
  *v38 = v4;
  *&v38[15] = *(v1 + 47);
  v5 = *(&v37[0] + 1);
  v6 = v3;
  v7 = ((4 * v38[18]) | (*&v38[16] >> 11) & 3);
  if (v7 <= 3)
  {
    if (((4 * v38[18]) | (*&v38[16] >> 11) & 3) > 1u)
    {
      if (v7 == 2)
      {
        *v36 = v37[0];
        v36[16] = v3;
        *&v36[17] = v3 >> 8;
        v36[23] = (*&v36[17] | (((DWORD1(v3) >> 8) | (BYTE7(v3) << 16)) << 32)) >> 48;
        *&v36[21] = DWORD1(v3) >> 8;
        *&v36[24] = *(&v3 + 1);
        *&v36[32] = *v38;
        *&v36[48] = *&v38[16] & 0xE7FF;
        sub_1D690A374(a1);
      }

      else
      {
        if (qword_1EDF1AD88 != -1)
        {
          swift_once();
        }

        v11 = qword_1EDF1AD90;
        v12 = (v6 & 1) == 0;
        v13 = swift_allocObject();
        *(v13 + 16) = *&v37[0];
        *(v13 + 24) = v5;
        *(v13 + 32) = v11;
        *(v13 + 40) = v12;

        sub_1D5CF5DBC(v37, v36);
        sub_1D6C4D24C(v13 | 0x3000000000000000);
      }
    }

    else if ((4 * v38[18]) | (*&v38[16] >> 11) & 3)
    {
      sub_1D6273544(a1, *&v37[0]);
    }

    else
    {
      sub_1D62744A4(a1, *&v37[0]);
    }
  }

  else if (((4 * v38[18]) | (*&v38[16] >> 11) & 3) <= 5u)
  {
    if (v7 == 4)
    {
      *v36 = v37[0];
      v36[16] = v3;
      *&v36[17] = v3 >> 8;
      v36[23] = (*&v36[17] | (((DWORD1(v3) >> 8) | (BYTE7(v3) << 16)) << 32)) >> 48;
      *&v36[21] = DWORD1(v3) >> 8;
      *&v36[24] = *(&v3 + 1);
      *&v36[32] = *v38;
      *&v36[48] = *&v38[16] & 0xE7FF;
      sub_1D629D858(a1, v4);
    }

    else
    {

      sub_1D62747C4(a1, *v38);
    }
  }

  else if (v7 == 6)
  {
    if ((*&v37[0] >> 62) - 2 < 2)
    {
      return v4.n128_f64[0];
    }

    v10 = v2;
    if (!(*&v37[0] >> 62))
    {
      if (*(*&v37[0] + 40))
      {
        return v4.n128_f64[0];
      }

      v22 = *(*&v37[0] + 16);
      v21 = *(*&v37[0] + 24);
      v23 = *(*&v37[0] + 32);
      *v36 = v22;
      *&v36[8] = v21;
      *&v36[16] = v23;
      LOBYTE(v33) = 1;
      v24 = v22;
      v25 = v21;
      v26 = v23;
LABEL_35:
      sub_1D5D27950(v24, v25, v26, 0);
      sub_1D5D27950(v22, v21, v23, 0);
      v27 = sub_1D703E0C8(v36, &v33);
      if (v10)
      {
        sub_1D5D28C84(v22, v21, v23, 0);
      }

      else
      {
        v28 = v27;
        v29 = swift_allocObject();
        *(v29 + 16) = v22;
        *(v29 + 24) = v21;
        *(v29 + 32) = v28;
        *(v29 + 40) = 0;

        sub_1D6C4D24C(v29 | 0x3000000000000000);
        sub_1D5D28C84(v22, v21, v23, 0);
      }

      return v4.n128_f64[0];
    }

    v19 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v18 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

    sub_1D5F33D5C(v18);
    sub_1D6273544(a1, v19);
    if (!v2)
    {
      *v36 = v18;
      sub_1D5F33D5C(v18);
      sub_1D628A8D0(a1);
      sub_1D5F33D8C(v18);
    }

    v4.n128_f64[0] = sub_1D5F33D8C(v18);
  }

  else
  {
    if (v7 == 7)
    {
      if ((*&v37[0] >> 62) < 2)
      {
        return v4.n128_f64[0];
      }

      if (*&v37[0] >> 62 == 3)
      {
        v8 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        *v36 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        swift_retain_n();

        sub_1D6298B34(a1);
        if (v2)
        {
        }

        else
        {

          sub_1D627496C(a1, v8);
          swift_bridgeObjectRelease_n();
        }

        return v4.n128_f64[0];
      }

      if (*((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
      {
        return v4.n128_f64[0];
      }

      v22 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v23 = *((*&v37[0] & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      *v36 = v22;
      *&v36[8] = v21;
      *&v36[16] = v23;
      LOBYTE(v33) = 6;
      v24 = v22;
      v25 = v21;
      v26 = v23;
      v10 = v2;
      goto LABEL_35;
    }

    v14 = *(*&v37[0] + 32);
    *v36 = *(*&v37[0] + 16);
    *&v36[16] = v14;
    *&v36[32] = *(*&v37[0] + 48);
    *&v36[43] = *(*&v37[0] + 59);
    v15 = *v36;
    sub_1D62B6438(v36, &v33, &qword_1EDF2ED78, type metadata accessor for FormatSwitchValue);
    sub_1D6274320(a1, v15);
    if (!v2)
    {
      v33 = *&v36[8];
      v34 = *&v36[24];
      v35[0] = *&v36[40];
      *(v35 + 15) = *&v36[55];
      sub_1D62B6438(&v36[8], v31, qword_1EDF2EEF8, type metadata accessor for FormatSwitchValue.DefaultValue);
      sub_1D629D254(a1);
      v31[0] = v33;
      v31[1] = v34;
      v32[0] = v35[0];
      *(v32 + 15) = *(v35 + 15);
      sub_1D5CF603C(v31);
    }

    sub_1D62B6514(v36);
  }

  return v4.n128_f64[0];
}

uint64_t sub_1D629D7C4(uint64_t *a1)
{
  v3 = *(v1 + 32);
  v8[0] = *(v1 + 16);
  v8[1] = v3;
  v9[0] = *(v1 + 48);
  *(v9 + 15) = *(v1 + 63);
  sub_1D5CF5DBC(v8, v6);
  sub_1D629D254(a1);
  v4 = *(v1 + 32);
  v6[0] = *(v1 + 16);
  v6[1] = v4;
  v7[0] = *(v1 + 48);
  *(v7 + 15) = *(v1 + 63);
  return sub_1D5CF603C(v6);
}

void sub_1D629D858(uint64_t a1, __n128 a2)
{
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = v10 >> 13;
  if (v10 >> 13 > 2)
  {
    if (v11 == 3)
    {
      if (*(v2 + 24))
      {
        return;
      }

      v20 = *v2;
      v21 = v4;
      v22 = v6;
      v15 = 6;
    }

    else
    {
      if (*(v2 + 24))
      {
        return;
      }

      v20 = *v2;
      v21 = v4;
      v22 = v6;
      v15 = 1;
    }

    v23 = v15;
    sub_1D62B78B4(v5, v4, v6, v7, v8, v9, v10);
    v16 = sub_1D703E0C8(&v20, &v23);
    if (!v3)
    {
      v17 = v16;
      v18 = swift_allocObject();
      *(v18 + 16) = v5;
      *(v18 + 24) = v4;
      *(v18 + 32) = v17;
      *(v18 + 40) = 0;

      sub_1D6C4D24C(v18 | 0x3000000000000000);
    }
  }

  else if (v11 >= 2)
  {
    v12 = (v10 >> 7) & 0x3E | (v10 >> 3) & 1;
    if (v12 - 5 >= 0xA && v12 >= 2)
    {
      if (v12 - 3 >= 2)
      {
        if ((v10 & 0xF0) == 0x30)
        {
          v20 = *v2;
          v21 = v4;
          LOWORD(v22) = v6;
          sub_1D62921EC(a1);
        }
      }

      else
      {
        v20 = *v2;
        v21 = v4;
        v22 = v6;
        v23 = 5;
        sub_1D62B78B4(v5, v4, v6, v7, v8, v9, v10);

        v14 = sub_1D703E0C8(&v20, &v23);

        if (v3)
        {
        }

        else
        {
          v19 = swift_allocObject();
          *(v19 + 16) = v5;
          *(v19 + 24) = v4;
          *(v19 + 32) = v14;
          *(v19 + 40) = 0;
          sub_1D6C4D24C(v19 | 0x3000000000000000);
        }
      }
    }
  }
}

double sub_1D629DA88(uint64_t *result)
{
  v3 = *(v1 + 16);
  if ((v3 & 0xF000000000000007) != 0x7000000000000007)
  {
    v4 = v3 >> 62;
    if (((v3 >> 57) & 0xF8 | v3 & 7 | 0x20) != 0x7F && v4 >= 2)
    {
      if (v4 == 2)
      {
        if (!*((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x28))
        {
          v9 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
          v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
          v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
          v16[0] = v9;
          v16[1] = v8;
          v16[2] = v10;
          v15 = 6;
          sub_1D5D27950(v9, v8, v10, 0);
          sub_1D5D27950(v9, v8, v10, 0);
          sub_1D614F63C(v3);
          v11 = sub_1D703E0C8(v16, &v15);
          if (v2)
          {
            sub_1D5D28C84(v9, v8, v10, 0);
          }

          else
          {
            v13 = v11;
            v14 = swift_allocObject();
            *(v14 + 16) = v9;
            *(v14 + 24) = v8;
            *(v14 + 32) = v13;
            *(v14 + 40) = 0;

            sub_1D6C4D24C(v14 | 0x3000000000000000);
            sub_1D5D28C84(v9, v8, v10, 0);
          }

          return sub_1D614F680(v3);
        }
      }

      else
      {
        v6 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v16[0] = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
        sub_1D614F63C(v3);
        swift_retain_n();

        sub_1D6298B34(result);
        if (v2)
        {
        }

        else
        {

          sub_1D627496C(result, v6);
          swift_bridgeObjectRelease_n();
        }

        return sub_1D614F680(v3);
      }
    }
  }

  return v12;
}

void sub_1D629DCA4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if ((v2 & 0xF000000000000007) != 0x7000000000000007 && ((v2 >> 57) & 0xF8 | v2 & 7 | 0x20) != 0x7F)
  {
    sub_1D6298B34(a1);
  }
}

void sub_1D629DD00(uint64_t *a1)
{
  if ((*v1 & 0x8000000000000000) != 0)
  {

    swift_retain_n();
    sub_1D629DD00(a1);
    if (!v2)
    {

      sub_1D629DD00(a1);
    }
  }

  else
  {
    sub_1D62881C8(a1);
  }
}

void sub_1D629DE2C(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  sub_1D6273544(a1, v4);
  if (!v2 && v5 >= 2)
  {
    sub_1D6273544(a1, v5);
  }
}

void sub_1D629DE6C(uint64_t *a1)
{
  if (((*v1 >> 57) & 0xF8 | *v1 & 7 | 0x20) != 0x7F)
  {
    sub_1D6298B34(a1);
  }
}

double sub_1D629DEB4(uint64_t a1)
{
  if ((~*v1 & 0xF000000000000007) != 0)
  {

    sub_1D62895DC(a1);
  }

  return result;
}

uint64_t sub_1D629DF14(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 + 16);
  v6 = sub_1D726393C();
  v7 = *(v6 - 8);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v11 = &v15 - v10;
  (*(v7 + 16))(&v15 - v10, v2 + *(a2 + 52), v6, v9);
  if ((*(*(v5 - 8) + 48))(v11, 1, v5) == 1)
  {
    (*(v7 + 8))(v11, v6);
LABEL_6:
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    return sub_1D5BFB774(&v15, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  }

  sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v12 = *(&v16 + 1);
  if (*(&v16 + 1))
  {
    v13 = v17;
    __swift_project_boxed_opaque_existential_1(&v15, *(&v16 + 1));
    (*(v13 + 8))(a1, v12, v13);
    return __swift_destroy_boxed_opaque_existential_1(&v15);
  }

  return sub_1D5BFB774(&v15, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
}

void sub_1D629E120(uint64_t a1)
{
  v4 = *(v1 + 8);

  sub_1D62895DC(a1);

  if (!v2)
  {
    sub_1D6273600(a1, v4);
  }
}

void sub_1D629E18C(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);

  sub_1D6273544(a1, v5);

  if (!v2)
  {
    if (v7)
    {
      sub_1D5C75A4C(v4, v6, 1);
      sub_1D5C75A4C(v4, v6, 1);
      v11 = sub_1D5E26E28(&unk_1F5113270);
      v12 = swift_allocObject();
      *(v12 + 16) = v4;
      *(v12 + 24) = v6;
      *(v12 + 32) = v11;
      *(v12 + 40) = 0;
      sub_1D6C4D24C(v12 | 0x3000000000000000);
      sub_1D5D2F2C8(v4, v6, 1);
    }

    sub_1D6273544(a1, v9);

    sub_1D6273544(a1, v8);

    sub_1D6273544(a1, v10);
  }
}

double sub_1D629E314(uint64_t a1)
{
  v5 = *v1;
  v4 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v9 = *(v1 + 32);
  v8 = *(v1 + 40);
  v10 = *(v1 + 48);

  sub_1D6273544(a1, v5);

  if (!v2)
  {
    if (v7)
    {
      sub_1D5C75A4C(v4, v6, 1);
      sub_1D5C75A4C(v4, v6, 1);
      v12 = sub_1D5E26E28(&unk_1F5113248);
      v13 = swift_allocObject();
      *(v13 + 16) = v4;
      *(v13 + 24) = v6;
      *(v13 + 32) = v12;
      *(v13 + 40) = 0;
      sub_1D6C4D24C(v13 | 0x3000000000000000);
      sub_1D5D2F2C8(v4, v6, 1);
    }

    if (v9)
    {
      sub_1D6273544(a1, v9);
    }

    sub_1D6273544(a1, v8);

    sub_1D6273544(a1, v10);
  }

  return result;
}

double sub_1D629E474(uint64_t a1)
{
  v2 = *(v1 + 56);
  if (!(v2 >> 6))
  {
    return sub_1D629E314(a1);
  }

  if (v2 >> 6 == 1)
  {
    sub_1D629E18C(a1);
  }

  return result;
}

void sub_1D629E538(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 66);
  v8 = *(v1 + 64);
  if ((*(v1 + 8) & 1) == 0)
  {
    v20 = *(v1 + 40);
    v9 = *v1;
    v10 = a1;
    sub_1D6273544(a1, v9);
    if (v2)
    {
      return;
    }

    a1 = v10;
    LOBYTE(v6) = v20;
  }

  v11 = v8 | (v7 << 16);
  if ((v11 & 0x80000000) == 0)
  {
    sub_1D6273544(a1, v3);
    return;
  }

  v12 = (v11 >> 13) & 8 | (v11 >> 11) & 7;
  if (v12 > 3)
  {
    if (((1 << v12) & 0x330) != 0)
    {
      return;
    }

    if (v12 != 6)
    {
      sub_1D690A374(a1);
      return;
    }

    if (v6 >> 6 && v6 >> 6 != 1)
    {
      if ((v6 & 0x3F) == 1 && (v4 & 0xF000000000000007) != 0xF000000000000007)
      {
        goto LABEL_16;
      }

      return;
    }

    goto LABEL_24;
  }

  if ((v12 - 1) < 2)
  {
    return;
  }

  if (v12)
  {
    goto LABEL_24;
  }

  v16 = (v6 >> 3) & 7;
  if (v16 <= 1)
  {
    if (v16)
    {
      v18 = 0;
    }

    else
    {
      v18 = v5 == 1;
    }

    if (!v18 || (v3 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

LABEL_26:
    v17 = a1;

    v15 = v17;
    goto LABEL_27;
  }

  if (v16 == 2 || v16 == 3 || !(v6 >> 6) || v6 >> 6 == 1)
  {
LABEL_24:
    if (v5 != 1 || (v3 & 0xF000000000000007) == 0xF000000000000007)
    {
      return;
    }

    goto LABEL_26;
  }

  if ((v6 & 7) == 1 && (v4 & 0xF000000000000007) != 0xF000000000000007)
  {
LABEL_16:
    v14 = a1;

    v15 = v14;
LABEL_27:
    sub_1D6E5C118(v15);
  }
}

void sub_1D629E768(uint64_t a1)
{
  if ((*(v1 + 8) & 1) == 0)
  {
    sub_1D6273544(a1, *v1);
  }
}

double sub_1D629E78C(uint64_t *a1)
{
  if (((*(v1 + 48) | (*(v1 + 50) << 16)) & 0x800000) != 0)
  {
    return sub_1D628DEA4(a1, *(v1 + 24));
  }

  sub_1D6273544(a1, *v1);
  return result;
}

double sub_1D629E820(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D6273544(a1, v4);
    }

    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v6 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }
  }

  return result;
}

uint64_t sub_1D629E924(uint64_t *a1)
{
  v30 = a1;
  sub_1D5C5A0E0(0, &qword_1EDF43F50, sub_1D5B55F44, &type metadata for FormatVideoPlayerContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v29 - v4;
  sub_1D5C5A0E0(0, &qword_1EDF43F48, sub_1D5B55668, &type metadata for FormatFont, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v6 - 8, v7);
  v9 = &v29 - v8;
  sub_1D5C5A0E0(0, &qword_1EDF43F60, sub_1D5B57AA8, &type metadata for FormatVideoNodeContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v29 - v12;
  sub_1D5C5A0E0(0, &qword_1EDF43F58, sub_1D5B57A00, &type metadata for FormatAsyncImageContent, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v17 = &v29 - v16;
  sub_1D5C5A0E0(0, &qword_1EDF43F40, sub_1D5B5706C, &type metadata for FormatColor, type metadata accessor for FormatPrimitivePropertyDefinition);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v29 - v20;
  v22 = type metadata accessor for FormatPropertyDefinition(0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v25 = &v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D62B50EC(v1, v25, type metadata accessor for FormatPropertyDefinition);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D62B6DB8(v25, v21);
      if ((~*(v21 + 9) & 0xF000000000000007) != 0)
      {
        v31 = *(v21 + 9);

        sub_1D62895DC(v30);
      }

      return sub_1D62B6E54(v21);
    }

    return sub_1D62B51D0(v25, type metadata accessor for FormatPropertyDefinition);
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_1D62B6808(v25, v13);
      if ((~*(v13 + 9) & 0xF000000000000007) != 0)
      {
        v31 = *(v13 + 9);

        sub_1D629CE04(v30);
      }

      return sub_1D62B68A4(v13);
    }

    else if (EnumCaseMultiPayload == 10)
    {
      sub_1D62B66D8(v25, v9);
      if ((~*(v9 + 9) & 0xF000000000000007) != 0)
      {
        v31 = *(v9 + 9);

        sub_1D6290ACC(v30);
      }

      return sub_1D62B6774(v9);
    }

    else
    {
      sub_1D62B65A8(v25, v5);
      if ((~*(v5 + 9) & 0xF000000000000007) != 0)
      {
        v31 = *(v5 + 9);

        sub_1D629D0A0(v30, v28);
      }

      return sub_1D62B6644(v5);
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 6 || EnumCaseMultiPayload == 7)
    {
      return sub_1D62B51D0(v25, type metadata accessor for FormatPropertyDefinition);
    }

    sub_1D62B6938(v25, v17);
    if ((~*(v17 + 9) & 0xF000000000000007) != 0)
    {
      v31 = *(v17 + 9);

      sub_1D6287A8C(v30);
    }

    return sub_1D62B69D4(v17);
  }
}

void sub_1D629EE1C(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 >= 3)
  {
    sub_1D6273544(a1, v2);
  }
}

void sub_1D629EE40(uint64_t *a1)
{
  v4 = *(v1 + 56);
  v5 = *v1;
  v6 = *(v1 + 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  v11 = *(v1 + 48);
  sub_1D5E1DA6C(*v1, v6, v7, v8, v9, v10, v11);
  sub_1D690A374(a1);
  sub_1D5E1DE98(v5, v6, v7, v8, v9, v10, v11);
  if (!v2 && (v4 & 0xF000000000000007) != 0x7000000000000007 && ((v4 >> 57) & 0xF8 | v4 & 7 | 0x20) != 0x7F)
  {
    sub_1D6298B34(a1);
  }
}

double sub_1D629EF60(uint64_t a1)
{
  v3 = *(v1 + 56);

  sub_1D6273154(a1, v3);

  return result;
}

double sub_1D629EFA8(uint64_t a1)
{

  sub_1D6EE4610(a1);

  return result;
}

double sub_1D629F02C(uint64_t *a1)
{

  sub_1D6298B34(a1);

  return result;
}

void sub_1D629F098(uint64_t *a1)
{
  v37 = v1[3];
  v38 = v1[4];
  v33 = v1[6];
  v34 = v1[5];
  v39 = v1[7];
  v32 = v1[8];
  v40 = v1[9];
  v31 = v1[10];
  v35 = v1[11];
  v30 = v1[12];
  v36 = v1[13];
  v26 = v1[16];
  v27 = v1[15];
  v28 = v1[17];
  v29 = v1[14];
  v24 = v1[20];
  v25 = v1[18];
  v22 = v1[21];
  v23 = v1[19];
  v20 = v1[23];
  v21 = v1[22];
  v5 = v1[24];
  v4 = v1[25];
  v7 = v1[26];
  v6 = v1[27];
  v9 = v1[28];
  v8 = v1[29];

  sub_1D6298B34(a1);
  if (v2)
  {
    goto LABEL_3;
  }

  v18 = v4;
  v19 = v5;
  v17 = v7;
  v16 = v9;

  sub_1D6298B34(a1);
  v10 = a1;

  sub_1D6298B34(a1);

  if ((~v37 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(a1);
    v12 = v39;
    v11 = v40;

    if ((~v38 & 0xF000000000000007) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v39;
    v11 = v40;
    if ((~v38 & 0xF000000000000007) == 0)
    {
LABEL_6:
      v14 = v35;
      v13 = v36;
      goto LABEL_9;
    }
  }

  sub_1D6298B34(v10);
  v14 = v35;
  v13 = v36;

LABEL_9:
  if ((~v34 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v33 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v12 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v32 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v11 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v31 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v14 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v30 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v13 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v29 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v27 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v26 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v28 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v10);
  }

  if ((~v25 & 0xF000000000000007) != 0)
  {

    v15 = v10;
    sub_1D6298B34(v10);
  }

  else
  {
    v15 = v10;
  }

  if ((~v23 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v24 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v22 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v21 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v20 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v19 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v18 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v17 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v6 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v16 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
  }

  if ((~v8 & 0xF000000000000007) != 0)
  {

    sub_1D6298B34(v15);
LABEL_3:
  }
}

void *sub_1D629F940(void *result)
{
  if (*(v1 + 8) == 1)
  {
    return sub_1D62744A4(result, *v1);
  }

  return result;
}

void sub_1D629F980(uint64_t a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + 1);
  *&v13 = *v2;
  *(&v13 + 1) = v10;

  sub_1D6EE4610(a1);

  if (!v3)
  {
    (*(v7 + 16))(v9, &v2[*(a2 + 36)], v6);
    sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    if (swift_dynamicCast())
    {
      v11 = *(&v14 + 1);
      v12 = v15;
      __swift_project_boxed_opaque_existential_1(&v13, *(&v14 + 1));
      (*(v12 + 8))(a1, v11, v12);
      __swift_destroy_boxed_opaque_existential_1(&v13);
    }

    else
    {
      v15 = 0;
      v13 = 0u;
      v14 = 0u;
      sub_1D5BFB774(&v13, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    }
  }
}

unint64_t sub_1D629FB8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];
  sub_1D5C82CD8(*v1);
  sub_1D626D654(a1);
  result = sub_1D5C92A8C(v5);
  if (!v2 && (~v4 & 0xF000000000000007) != 0)
  {
    sub_1D5C82CD8(v4);
    sub_1D626D654(a1);
    return sub_1D5C92A8C(v4);
  }

  return result;
}

void sub_1D629FC44(uint64_t a1)
{
  v4 = *v1;
  v5 = v1[1];
  sub_1D6273544(a1, v4);
  if (!v2)
  {
    sub_1D6273544(a1, v5);
  }
}

void sub_1D629FC7C(uint64_t *a1)
{
  swift_beginAccess();
  v4 = v1[9];

  sub_1D626DA28(a1, v4);

  if (!v2)
  {
    swift_beginAccess();
    v5 = v1[11];

    sub_1D627AD20(a1, v5);

    swift_beginAccess();
    v6 = v1[8];

    sub_1D626DB9C(a1, v6);
  }
}

double sub_1D629FD94(uint64_t *a1)
{
  v3 = *v1;
  if (*v1 < 0)
  {
    v7 = *((v3 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);

    sub_1D6282B60(a1, v7);
  }

  else if (*(v3 + 40))
  {
    v5 = *(v3 + 24);
    v4 = *(v3 + 32);
    sub_1D5F586D0(v5, v4, 1);
    sub_1D6288E04(a1, v5, v4);
    sub_1D5F5870C(v5, v4, 1);
  }

  return result;
}

uint64_t sub_1D629FE68(uint64_t result)
{
  if (*(v1 + 24) == 1)
  {
    v4 = v1 + 8;
    v3 = *(v1 + 8);
    v2 = *(v4 + 8);
    v5 = result;
    sub_1D5F586D0(v3, v2, 1);
    sub_1D6288E04(v5, v3, v2);
    return sub_1D5F5870C(v3, v2, 1);
  }

  return result;
}

void sub_1D629FEE0(uint64_t a1)
{
  if (*(v1 + 16) == 1)
  {
    sub_1D6288E04(a1, *v1, *(v1 + 8));
  }
}

double sub_1D629FF08(uint64_t *a1)
{
  v3 = *(v1 + 8);

  sub_1D626DA28(a1, v3);

  return result;
}

void sub_1D629FF8C(uint64_t a1)
{
  v5 = *v1;
  v4 = v1[1];

  sub_1D6273544(a1, v5);

  if (!v2)
  {

    sub_1D6273544(a1, v4);
  }
}

void sub_1D62A0004(uint64_t a1)
{
  if (*(v1 + 64))
  {
    v4 = *(v1 + 48);
    v3 = *(v1 + 56);
    sub_1D627683C(a1, *v1);
    if (!v2)
    {
      if (v4)
      {

        sub_1D6273544(a1, v4);
        sub_1D6273544(a1, v3);
        sub_1D5CDE22C(v4, v3);
      }
    }
  }

  else
  {
    sub_1D62895DC(a1);
  }
}

void sub_1D62A0100(unint64_t a1)
{
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];

  sub_1D6EE4610(a1);

  if (!v2)
  {
    if ((~v5 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if ((~v4 & 0xF000000000000007) != 0)
    {

      sub_1D62895DC(a1);
    }

    if (v6)
    {
      if (v6 != 1)
      {
        if (v6 != 2)
        {
          v7 = *(v6 + 16);
          v8 = *(v6 + 24);
          sub_1D5D0A59C(v6);
          sub_1D5D0A57C(v7);
          sub_1D5D0A57C(v8);
          sub_1D62886C0(a1, v7, v8);
          sub_1D5D0A58C(v7);
          sub_1D5D0A58C(v8);
          sub_1D5D0A5AC(v6);
        }

        return;
      }

      v9 = 1;
    }

    else
    {
      v9 = 0;
    }

    sub_1D5D0A5AC(v9);
  }
}

unint64_t sub_1D62A0290(unint64_t result)
{
  v2 = *v1;
  if (*v1 >= 2)
  {
    v3 = *(v2 + 16);
    v4 = *(v2 + 24);
    v5 = result;
    sub_1D5D0A57C(v3);
    sub_1D5D0A57C(v4);
    sub_1D62886C0(v5, v3, v4);
    sub_1D5D0A58C(v3);
    return sub_1D5D0A58C(v4);
  }

  return result;
}

double sub_1D62A0338(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(v7 + 48) & 1) == 0)
  {
    return sub_1D626C9C8(result, *(v7 + 16), *(v7 + 24), *(v7 + 32), *(v7 + 40), a6, a7);
  }

  return v8;
}

double sub_1D62A0360(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if ((*(v7 + 32) & 1) == 0)
  {
    return sub_1D626C9C8(result, *v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), a6, a7);
  }

  return v8;
}

void sub_1D62A0388(uint64_t *a1)
{
  v3 = v1;
  swift_beginAccess();
  v14 = v1[4];
  sub_1D5C82CD8(v14);
  sub_1D626D654(a1);
  if (v2)
  {
    sub_1D5C92A8C(v14);
  }

  else
  {
    sub_1D5C92A8C(v14);
    swift_beginAccess();
    v5 = v1[6];

    sub_1D6274044(a1, v5);

    sub_1D627B648(a1, v3[9]);
    swift_beginAccess();
    v6 = v3[11];
    if (v6 >> 62 == 1)
    {
      v7 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v8 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      sub_1D5EB1500(v3[11]);
      sub_1D5EB1500(v7);

      sub_1D6288D68(a1, v7, v8);
      sub_1D5EB15C4(v7);

      sub_1D5EB15C4(v6);
    }

    v9 = v3[13];
    if (v9)
    {
      swift_beginAccess();
      v10 = *(v9 + 72);
      if (v10)
      {

        sub_1D62707E8(a1, v10, v11);
      }

      swift_beginAccess();
      v12 = *(v9 + 88);

      sub_1D6272D88(a1, v12);
    }

    if (v3[15])
    {
      v13 = v3[19];

      sub_1D5DEA234(v13);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v13);
    }
  }
}

double sub_1D62A064C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  v7 = *(v4 + 32);

  a4(a1, v7);

  return result;
}

void sub_1D62A06A4(uint64_t *a1)
{
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[8];

  sub_1D626DEC0(a1, v5);

  if (!v2)
  {

    sub_1D627AD20(a1, v4);

    sub_1D626DA28(a1, v6);
  }
}

void sub_1D62A0750(uint64_t *a1)
{

  sub_1D6287A8C(a1);

  if (!v1)
  {
    sub_1D62938C4(a1);
  }
}

double sub_1D62A07BC(uint64_t *a1)
{
  v5 = v1[6];
  v4 = v1[7];
  v6 = v1[8];
  v8 = v1[11];
  v7 = v1[12];
  if (v4)
  {
    swift_beginAccess();
    v9 = *(v4 + 56);

    sub_1D626FF20(a1, v9);

    if (v2)
    {
      return result;
    }

    if (*(v4 + 74) != 255)
    {
      v11 = *(v4 + 72) | (*(v4 + 74) << 16);
      v12 = *(v4 + 64);
      sub_1D610CA74(v12, v11, SBYTE2(v11), sub_1D610CA28, sub_1D610CA5C);
      sub_1D628F694(a1);
      sub_1D610CA74(v12, v11, SBYTE2(v11), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }

  sub_1D626DEC0(a1, v6);

  if (!v2)
  {

    sub_1D626DA28(a1, v8);

    sub_1D627AD20(a1, v7);

    sub_1D626DB9C(a1, v5);
  }

  return result;
}

void sub_1D62A09D4(uint64_t *a1)
{
  v3 = v1;
  v9 = v1[6];
  sub_1D5C82CD8(v9);
  sub_1D626D654(a1);
  sub_1D5C92A8C(v9);
  if (!v2)
  {
    swift_beginAccess();
    v5 = v1[8];

    sub_1D6274044(a1, v5);

    swift_beginAccess();
    v6 = v3[9];

    sub_1D626DEC0(a1, v6);

    swift_beginAccess();
    v7 = v3[11];

    sub_1D626DA28(a1, v7);

    if (v3[15])
    {
      v8 = v3[19];

      sub_1D5DEA234(v8);

      sub_1D626D2A0(a1);

      sub_1D5CBF568(v8);
    }
  }
}

void sub_1D62A0BAC(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 9))
  {
    v3 = *(v1 + 8);
    if (v3 <= 1)
    {
      if (*(v1 + 8))
      {
        if (v2)
        {
          if (v2 == 1)
          {
            v4 = 1;
          }

          else
          {
            v12 = v2;
            sub_1D610CA34(v2, 1u);
            sub_1D6273544(a1, v12);
            v4 = v12;
            LOBYTE(v2) = 1;
          }
        }

        else
        {
          v4 = 0;
          LOBYTE(v2) = 1;
        }
      }

      else if (v2)
      {
        if (v2 == 1)
        {
          v4 = 1;
        }

        else
        {
          v10 = v2;
          sub_1D610CA34(v2, 0);
          sub_1D6273544(a1, v10);
          v4 = v10;
        }

        LOBYTE(v2) = 0;
      }

      else
      {
        v4 = 0;
      }
    }

    else if (v3 == 2)
    {
      if (v2)
      {
        if (v2 == 1)
        {
          v4 = 1;
        }

        else
        {
          v6 = v2;
          sub_1D610CA34(v2, 2u);
          sub_1D6273544(a1, v6);
          v4 = v6;
        }

        LOBYTE(v2) = 2;
      }

      else
      {
        v4 = 0;
        LOBYTE(v2) = 2;
      }
    }

    else
    {
      if (v3 != 3)
      {
        return;
      }

      if (v2)
      {
        if (v2 == 1)
        {
          v4 = 1;
        }

        else
        {
          v8 = v2;
          sub_1D610CA34(v2, 3u);
          sub_1D6273544(a1, v8);
          v4 = v8;
        }

        LOBYTE(v2) = 3;
      }

      else
      {
        v4 = 0;
        LOBYTE(v2) = 3;
      }
    }

    sub_1D60CF6A8(v4, v2, 1);
  }

  else
  {
    sub_1D6273544(a1, v2);
  }
}

void sub_1D62A0D94(uint64_t a1)
{
  v2 = *v1;
  if (*(v1 + 8) <= 1u)
  {
    if (v2 < 2)
    {
      return;
    }

LABEL_5:
    sub_1D6273544(a1, v2);
    return;
  }

  if (v2 >= 2)
  {
    goto LABEL_5;
  }
}

void sub_1D62A0E14(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = *(v1 + 34);
  v6 = *(v1 + 32);

  sub_1D6EE4610(a1);

  if (!v2)
  {
    v7 = v6 | (v5 << 16);
    if (BYTE2(v7) != 255)
    {
      sub_1D610CA74(v4, v7, SBYTE2(v7), sub_1D610CA28, sub_1D610CA5C);
      sub_1D628F694(a1);
      sub_1D610CA74(v4, v7, SBYTE2(v7), sub_1D60CF6A8, sub_1D60CF6DC);
    }
  }
}

void sub_1D62A0F74(uint64_t *a1)
{

  sub_1D6285C00(a1, v4, v5, v6, v7, v8, v9, v10);

  if (!v2)
  {
    swift_beginAccess();
    v11 = *(v1 + 24);

    sub_1D626DB9C(a1, v11);
  }
}

double sub_1D62A1040(uint64_t *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);

  sub_1D626DB9C(a1, v4);

  return result;
}

void sub_1D62A10B8(uint64_t *a1, unint64_t a2)
{
  v5 = type metadata accessor for FormatCommandOpenURL(0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v37[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v37[-v11];
  v13 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v13 == 2)
    {
      v15 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

      sub_1D62809AC(a1, v15);
      if (!v2)
      {
        sub_1D62A10B8(a1, v16);
      }

      goto LABEL_9;
    }
  }

  else
  {
    if (!v13)
    {
      v14 = swift_projectBox();
      sub_1D62B50EC(v14, v12, type metadata accessor for FormatCommandOpenURL);
      sub_1D62B50EC(v12, v8, type metadata accessor for FormatCommandOpenURL);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
        sub_1D62B51D0(v8, type metadata accessor for FormatCommandOpenURL);
        return;
      }

      v29 = *v8;
      v28 = v8[1];
      v30 = v8[2];
      v39 = v29;
      v40 = v28;
      v41 = v30;
      v38 = 6;

      v31 = sub_1D703E0C8(&v39, &v38);
      if (v2)
      {
        sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);

LABEL_9:

        return;
      }

      v35 = v31;

      v36 = swift_allocObject();
      *(v36 + 16) = v29;
      *(v36 + 24) = v28;
      *(v36 + 32) = v35;
      *(v36 + 40) = 0;
      sub_1D6C4D24C(v36 | 0x3000000000000000);

      sub_1D62B51D0(v12, type metadata accessor for FormatCommandOpenURL);
      return;
    }

    v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    v20 = *(v17 + 32);
    v21 = *(v17 + 40);
    v22 = *(v17 + 64);
    if (*(v17 + 66))
    {
      v23 = 8;
    }

    else
    {
      v23 = 0;
    }

    v24 = v23 & 0xFFFFFFF8 | (v22 >> 11) & 7;
    if (v24 > 3)
    {
      if (((1 << v24) & 0x330) != 0)
      {
        return;
      }

      if (v24 != 6)
      {
        v39 = *(v17 + 16);
        v40 = v18;
        v41 = v20;
        v42 = v21;
        v43 = *(v17 + 48);
        v44 = v22 & 0xC7FF;
        sub_1D690A374(a1);
        return;
      }

      if (v21 >> 6 && v21 >> 6 != 1)
      {
        if ((v21 & 0x3F) != 1 || (v18 & 0xF000000000000007) == 0xF000000000000007)
        {
          return;
        }

        v39 = *(v17 + 24);

        v26 = v18;
LABEL_39:
        sub_1D5CFCFAC(v26);
        sub_1D6E5C118(a1);

        return;
      }

      goto LABEL_33;
    }

    if ((v24 - 1) < 2)
    {
      return;
    }

    if (v24)
    {
      goto LABEL_33;
    }

    v27 = (v21 >> 3) & 7;
    if (v27 <= 1)
    {
      v32 = v19 & 0xF000000000000007;
      if (v27)
      {
        v33 = 0;
      }

      else
      {
        v33 = *(v17 + 32) == 1;
      }

      goto LABEL_34;
    }

    if (v27 == 2)
    {
LABEL_33:
      v32 = v19 & 0xF000000000000007;
      v33 = *(v17 + 32) == 1;
LABEL_34:
      if (!v33 || v32 == 0xF000000000000007)
      {
        return;
      }

      goto LABEL_38;
    }

    if (v27 != 3)
    {
      v39 = *(v17 + 16);
      v40 = v18;
      v41 = v20;
      LOBYTE(v42) = v21 & 0xC7;
      sub_1D628E970(a1);
      return;
    }

    if (*(v17 + 32) == 1 && (v19 & 0xF000000000000007) != 0xF000000000000007)
    {
LABEL_38:
      v39 = *(v17 + 16);

      v26 = v19;
      goto LABEL_39;
    }
  }
}

void sub_1D62A14D8(uint64_t *a1, uint64_t a2)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19 = *v2;

  sub_1D6285C00(a1, v10, v11, v12, v13, v14, v15, v16);

  if (!v3)
  {
    (*(v7 + 16))(v9, &v2[*(a2 + 36)], v6);
    sub_1D5B49474(0, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    if (swift_dynamicCast())
    {
      v17 = *(&v20 + 1);
      v18 = v21;
      __swift_project_boxed_opaque_existential_1(&v19, *(&v20 + 1));
      (*(v18 + 8))(a1, v17, v18);
      __swift_destroy_boxed_opaque_existential_1(&v19);
    }

    else
    {
      v21 = 0;
      v19 = 0u;
      v20 = 0u;
      sub_1D5BFB774(&v19, &qword_1EC8854D8, &qword_1EC8854D0, &protocol descriptor for FormatDerivable);
    }
  }
}

double sub_1D62A16A8(uint64_t *a1)
{

  sub_1D6290ACC(a1);

  return result;
}

void sub_1D62A16FC(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2)
  {
    sub_1D6273544(a1, v2);
  }
}

double sub_1D62A171C(uint64_t a1, void (*a2)(uint64_t))
{

  a2(a1);

  if (!v2)
  {

    a2(a1);
  }

  return result;
}

void sub_1D62A17B0(uint64_t a1)
{
  v4 = *v1;
  v5 = *v1 >> 62;
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      return;
    }

    v7 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v8 = *(v7 + 16);
    v9 = *(v7 + 24);
    sub_1D5F33D5C(v8);

    sub_1D5F33D5C(v8);
    sub_1D62A17B0(a1);
    sub_1D5F33D8C(v8);
    if (v2)
    {

      sub_1D5F33D8C(v8);
      return;
    }

    sub_1D62845E4(a1, v9);
    sub_1D5F33D8C(v8);
  }

  else
  {
    if (v5)
    {
      sub_1D62895DC(a1);
      return;
    }

    v6 = *(v4 + 16);

    sub_1D627683C(a1, v6);
  }
}

void sub_1D62A190C(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);

  sub_1D6290ACC(a1);

  if (!v2)
  {

    sub_1D6273544(a1, v4);

    sub_1D6273544(a1, v5);
  }
}

double sub_1D62A19EC(uint64_t *a1)
{
  if ((~*v1 & 0xF000000000000007) != 0)
  {

    sub_1D6E5C118(a1);
  }

  return result;
}

void sub_1D62A1A50()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = v3 >> 6;
  if (v3 >> 6 > 1)
  {
    if (v4 == 2)
    {
      if ((v3 & 1) == 0)
      {
        return;
      }

      v5 = &unk_1F50F4600;
    }

    else
    {
      if ((v3 & 1) == 0)
      {
        return;
      }

      v5 = &unk_1F50F4628;
    }
  }

  else if (v4)
  {
    if ((v3 & 1) == 0)
    {
      return;
    }

    v5 = &unk_1F50F45D8;
  }

  else
  {
    if ((v3 & 1) == 0)
    {
      return;
    }

    v5 = &unk_1F50F45B0;
  }

  sub_1D5E1DCD0(*v0, *(v0 + 8), v3);
  v6 = sub_1D5E26E28(v5);
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v2;
  *(v7 + 32) = v6;
  *(v7 + 40) = 0;
  sub_1D6C4D24C(v7 | 0x3000000000000000);
}

double sub_1D62A1B54()
{
  if (*(v0 + 16) == 1)
  {
    v3 = v0;
    v1 = *v0;
    v2 = *(v3 + 8);
    sub_1D5C75A4C(v1, v2, 1);
    v4 = sub_1D5E26E28(&unk_1F5112910);
    v5 = swift_allocObject();
    *(v5 + 16) = v1;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
    *(v5 + 40) = 0;
    sub_1D6C4D24C(v5 | 0x3000000000000000);
  }

  return result;
}

double sub_1D62A1C38(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);

  sub_1D6297BE8(a1);

  if (!v2)
  {
    if (v6)
    {
      sub_1D5C75A4C(v4, v5, 1);
      sub_1D5C75A4C(v4, v5, 1);
      v8 = sub_1D5E26E28(&unk_1F5113388);
      v9 = swift_allocObject();
      *(v9 + 16) = v4;
      *(v9 + 24) = v5;
      *(v9 + 32) = v8;
      *(v9 + 40) = 0;
      sub_1D6C4D24C(v9 | 0x3000000000000000);
      sub_1D5D2F2C8(v4, v5, 1);
    }
  }

  return result;
}

double sub_1D62A1D20(uint64_t *a1)
{

  sub_1D6E5C118(a1);

  if (!v1)
  {

    sub_1D6298B34(a1);
  }

  return result;
}

void sub_1D62A1DA4(uint64_t *a1, __n128 a2)
{
  v4 = *v2;
  v5 = *v2 >> 61;
  if (v5 > 2)
  {
    if (v5 > 4)
    {
      if (v5 != 5)
      {
        return;
      }
    }

    else
    {
      v6 = v4 & 0x1FFFFFFFFFFFFFFFLL;
      if (v5 == 3)
      {
        v7 = *(v6 + 16);

        v9 = a1;
LABEL_14:
        sub_1D6283BF0(v9, v7);

        return;
      }
    }

    sub_1D6E5C118(a1);
    return;
  }

  if (!v5)
  {
    sub_1D626D654(a1);
    return;
  }

  v11 = v4 & 0x1FFFFFFFFFFFFFFFLL;
  if (v5 != 1)
  {
    v7 = *(v11 + 16);

    v9 = a1;
    goto LABEL_14;
  }

  v13 = *(v11 + 16);
  v12 = *(v11 + 24);

  sub_1D5D085B4(v12);
  sub_1D6283CFC(a1, v13);
  if (!v3)
  {
    sub_1D5D085B4(v12);
    sub_1D62A1DA4(a1, v14);
    sub_1D5D05694(v12);
  }

  sub_1D5D05694(v12);
}

double sub_1D62A1F24(uint64_t *a1)
{

  sub_1D6E5C118(a1);

  if (!v1)
  {

    sub_1D62A1FA8(a1);
  }

  return result;
}

void sub_1D62A1FA8(uint64_t a1)
{
  v4 = *v1 >> 62;
  if (v4 > 1)
  {

    sub_1D62A1FA8(a1);

    if (v2)
    {
      return;
    }

    goto LABEL_5;
  }

  if (!v4)
  {
LABEL_5:

    sub_1D62A1FA8(a1);

    return;
  }

  v5 = *((*v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);

  sub_1D6273544(a1, v5);
}

double sub_1D62A2098(uint64_t a1)
{

  sub_1D62A1FA8(a1);

  if (!v1)
  {

    sub_1D62A1FA8(a1);
  }

  return result;
}

double sub_1D62A2138(uint64_t a1)
{

  sub_1D62A1FA8(a1);

  return result;
}

double sub_1D62A21BC(uint64_t a1)
{
  v3 = *v1;
  sub_1D5F33D5C(*v1);
  sub_1D628A8D0(a1);
  return sub_1D5F33D8C(v3);
}

void sub_1D62A2220(uint64_t *a1)
{
  v4 = *(v1 + 8);

  sub_1D6E5C118(a1);

  if (!v2)
  {
    sub_1D6285120(a1, v4);
  }
}

void sub_1D62A2288(uint64_t *a1)
{
  v4 = *(v1 + 24);

  sub_1D6E5C118(a1);

  if (!v2)
  {
    if (v4)
    {
      sub_1D6290E24(a1);
    }
  }
}

void sub_1D62A230C(uint64_t *a1)
{
  v5 = *v1;
  v4 = v1[1];
  v51 = v1[2];
  v27 = v1[19];
  v6 = *(v1 + 13);
  v47 = *(v1 + 12);
  v48 = v6;
  v49 = *(v1 + 14);
  v50 = *(v1 + 240);
  v7 = *(v1 + 11);
  v46[0] = *(v1 + 10);
  v46[1] = v7;
  v9 = v1[59];
  v8 = v1[60];
  v10 = v1[61];
  v11 = v1[62];
  v12 = v1[63];
  v13 = v1[65];
  *&v38 = v5;
  *(&v38 + 1) = v4;

  sub_1D6EE4610(a1);
  if (v2)
  {

    return;
  }

  if ((~v51 & 0xF000000000000007) != 0)
  {
    *&v38 = v51;

    sub_1D6290ACC(a1);
  }

  v14 = *(v1 + 13);
  v42 = *(v1 + 11);
  v43 = v14;
  v15 = *(v1 + 17);
  v44 = *(v1 + 15);
  v45 = v15;
  v16 = *(v1 + 5);
  v38 = *(v1 + 3);
  v39 = v16;
  v17 = *(v1 + 9);
  v40 = *(v1 + 7);
  v41 = v17;
  if (sub_1D5CFD0B8(&v38) != 1)
  {
    v33 = v42;
    v34 = v43;
    v35 = v44;
    v36 = v45;
    v29 = v38;
    v30 = v39;
    v31 = v40;
    v32 = v41;
    v19 = *(v1 + 3);
    v20 = *(v1 + 5);
    v21 = *(v1 + 9);
    v37[2] = *(v1 + 7);
    v37[3] = v21;
    v37[0] = v19;
    v37[1] = v20;
    v22 = *(v1 + 11);
    v23 = *(v1 + 13);
    v24 = *(v1 + 17);
    v37[6] = *(v1 + 15);
    v37[7] = v24;
    v37[4] = v22;
    v37[5] = v23;
    sub_1D5CFD190(v37, v28);
    sub_1D629012C(a1);
    v28[4] = v33;
    v28[5] = v34;
    v28[6] = v35;
    v28[7] = v36;
    v28[0] = v29;
    v28[1] = v30;
    v28[2] = v31;
    v28[3] = v32;
    sub_1D5CFD368(v28);
    v18 = v27;
    if (!v27)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v18 = v27;
  if (v27)
  {
LABEL_10:
    sub_1D626FA1C(a1, v18);
  }

LABEL_11:
  if (v50 == 254)
  {
    v25 = v8;
    v26 = v9;
    if (!v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  *&v37[0] = v47;
  swift_retain_n();
  sub_1D62895DC(a1);

  sub_1D5D0ABCC(v46, &qword_1EDF33718, &type metadata for FormatShadow);
  v25 = v8;
  v26 = v9;
  if (v9)
  {
LABEL_15:
    sub_1D6273544(a1, v26);
    v25 = v8;
  }

LABEL_16:
  if (v25 != 9)
  {
    if ((~v10 & 0xF000000000000007) != 0)
    {
      *&v37[0] = v10;
      sub_1D62B5D18(v25, v10);
      sub_1D5CFCFAC(v10);
      sub_1D62895DC(a1);
    }

    sub_1D62B5D00(v25, v10);
  }

  if (v11 != 9)
  {
    if ((~v12 & 0xF000000000000007) != 0)
    {
      *&v37[0] = v12;
      sub_1D62B5D18(v11, v12);
      sub_1D5CFCFAC(v12);
      sub_1D62895DC(a1);
    }

    sub_1D62B5D00(v11, v12);
  }

  if (v13)
  {
    sub_1D6273544(a1, v13);
  }
}