uint64_t sub_1D987D13C(uint64_t a1)
{
  v2 = 0xD00000000000001DLL;
  v3 = 0x80000001D9937450;
  v53 = &type metadata for SQLTableInfo;
  v54 = &off_1F55178B0;
  v4 = 0xD000000000000015;
  v51 = 0xD000000000000015;
  v52 = 0x80000001D9937450;
  v5 = objc_autoreleasePoolPush();
  v6 = sub_1D987EB68(a1, &v51, sub_1D98BD82C);
  objc_autoreleasePoolPop(v5);
  __swift_destroy_boxed_opaque_existential_1(&v51);
  if (v6)
  {
    v7 = *(v6 + 16);
    if (v7)
    {
      v51 = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v7, 0);
      v8 = v51;
      v9 = (v6 + 40);
      do
      {
        v3 = *(v9 - 1);
        v4 = *v9;
        v51 = v8;
        v10 = *(v8 + 16);
        v11 = *(v8 + 24);

        if (v10 >= v11 >> 1)
        {
          sub_1D986C620(v11 > 1, v10 + 1, 1);
          v8 = v51;
        }

        *(v8 + 16) = v10 + 1;
        v12 = v8 + 16 * v10;
        *(v12 + 32) = v3;
        *(v12 + 40) = v4;
        v9 += 2;
        --v7;
      }

      while (v7);

      v13 = sub_1D98B3BF4(v8);
      v14 = 0;
      v15 = MEMORY[0x1E69E7CC0];
      v2 = v13 + 56;
LABEL_8:
      while (v14 != 8)
      {
        if (v14 > 7)
        {
          __break(1u);
          goto LABEL_43;
        }

        v16 = &unk_1F5517F88 + 24 * v14;
        v17 = *(v16 + 4);
        v4 = *(v16 + 5);
        v18 = v16[48];
        v3 = v16[49];
        ++v14;
        if (*(v13 + 16))
        {
          sub_1D992C074();

          sub_1D992B6D4();
          v19 = sub_1D992C0C4();
          v20 = ~(-1 << *(v13 + 32));
          while (1)
          {
            v21 = v19 & v20;
            if (((*(v2 + (((v19 & v20) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v19 & v20)) & 1) == 0)
            {
              break;
            }

            v22 = (*(v13 + 48) + 16 * v21);
            if (*v22 != v17 || v22[1] != v4)
            {
              v24 = sub_1D992BF64();
              v19 = v21 + 1;
              if ((v24 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_8;
          }
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D98B98AC(0, *(v15 + 16) + 1, 1);
          v15 = v55;
        }

        v26 = v15;
        v27 = *(v15 + 16);
        v28 = *(v26 + 24);
        if (v27 >= v28 >> 1)
        {
          sub_1D98B98AC(v28 > 1, v27 + 1, 1);
          v26 = v55;
        }

        *(v26 + 16) = v27 + 1;
        v29 = v26 + 24 * v27;
        *(v29 + 32) = v17;
        *(v29 + 40) = v4;
        *(v29 + 48) = v18;
        *(v29 + 49) = v3;
        v15 = v26;
      }

      v30 = *(v15 + 16);
      if (v30)
      {
        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        v51 = 0;
        v52 = 0xE000000000000000;
        sub_1D992BD64();

        v51 = 0xD00000000000002ELL;
        v52 = 0x80000001D99374B0;
        v55 = MEMORY[0x1E69E7CC0];
        sub_1D986C620(0, v30, 0);
        v31 = v55;
        v50 = v15;
        v32 = (v15 + 40);
        do
        {
          v33 = *(v32 - 1);
          v34 = *v32;
          v55 = v31;
          v36 = *(v31 + 16);
          v35 = *(v31 + 24);

          if (v36 >= v35 >> 1)
          {
            sub_1D986C620(v35 > 1, v36 + 1, 1);
            v31 = v55;
          }

          *(v31 + 16) = v36 + 1;
          v37 = v31 + 16 * v36;
          *(v37 + 32) = v33;
          *(v37 + 40) = v34;
          v32 += 3;
          --v30;
        }

        while (v30);
        v38 = MEMORY[0x1DA739D10](v31, MEMORY[0x1E69E6158]);
        v40 = v39;

        MEMORY[0x1DA739C30](v38, v40);

        sub_1D986A454(v51, v52, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);

        v41 = sub_1D98D0AE0(0xD000000000000015, 0x80000001D9937450, v50);
        v44 = sub_1D987005C(v41, v42, v43);

        if ((v44 & 1) == 0)
        {
          sub_1D98DCEB4(0xD000000000000026, 0x80000001D99374E0, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
          v45 = 0;
          return v45 & 1;
        }
      }

      else
      {

        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        sub_1D986A454(0xD000000000000039, 0x80000001D9937510, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
      }

      v45 = 1;
      return v45 & 1;
    }
  }

  if (qword_1ED8BD6D8 != -1)
  {
LABEL_43:
    swift_once();
  }

  sub_1D986A454(v2 + 32, 0x80000001D9937470, v2 + 71, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
  v46 = sub_1D98C5248(v4, v3, &unk_1F5517F88);
  v45 = sub_1D987005C(v46, v47, v48);

  return v45 & 1;
}

uint64_t sub_1D987D76C(uint64_t a1)
{
  v54 = &type metadata for SQLTableInfo;
  v55 = &off_1F55178B0;
  v52 = 1936154996;
  v53 = 0xE400000000000000;
  v2 = objc_autoreleasePoolPush();
  v3 = sub_1D987EB68(a1, &v52, sub_1D98BD82C);
  objc_autoreleasePoolPop(v2);
  __swift_destroy_boxed_opaque_existential_1(&v52);
  if (v3)
  {
    v4 = *(v3 + 16);
    if (v4)
    {
      v52 = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v4, 0);
      v5 = v52;
      v6 = (v3 + 40);
      do
      {
        v8 = *(v6 - 1);
        v7 = *v6;
        v52 = v5;
        v9 = *(v5 + 16);
        v10 = *(v5 + 24);

        if (v9 >= v10 >> 1)
        {
          sub_1D986C620(v10 > 1, v9 + 1, 1);
          v5 = v52;
        }

        *(v5 + 16) = v9 + 1;
        v11 = v5 + 16 * v9;
        *(v11 + 32) = v8;
        *(v11 + 40) = v7;
        v6 += 2;
        --v4;
      }

      while (v4);

      v12 = sub_1D98B3BF4(v5);
      v13 = 0;
      v14 = MEMORY[0x1E69E7CC0];
LABEL_8:
      while (v13 != 6)
      {
        if (v13 > 5)
        {
          __break(1u);
          goto LABEL_43;
        }

        v15 = &unk_1F5517EA0 + 24 * v13;
        v17 = *(v15 + 4);
        v16 = *(v15 + 5);
        v18 = v15[48];
        v19 = v15[49];
        ++v13;
        if (*(v12 + 16))
        {
          sub_1D992C074();

          sub_1D992B6D4();
          v20 = sub_1D992C0C4();
          v21 = ~(-1 << *(v12 + 32));
          while (1)
          {
            v22 = v20 & v21;
            if (((*(v12 + 56 + (((v20 & v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v20 & v21)) & 1) == 0)
            {
              break;
            }

            v23 = (*(v12 + 48) + 16 * v22);
            if (*v23 != v17 || v23[1] != v16)
            {
              v25 = sub_1D992BF64();
              v20 = v22 + 1;
              if ((v25 & 1) == 0)
              {
                continue;
              }
            }

            goto LABEL_8;
          }
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D98B98AC(0, *(v14 + 16) + 1, 1);
          v14 = v56;
        }

        v27 = v14;
        v28 = *(v14 + 16);
        v29 = *(v27 + 24);
        if (v28 >= v29 >> 1)
        {
          sub_1D98B98AC(v29 > 1, v28 + 1, 1);
          v27 = v56;
        }

        *(v27 + 16) = v28 + 1;
        v30 = v27 + 24 * v28;
        *(v30 + 32) = v17;
        *(v30 + 40) = v16;
        *(v30 + 48) = v18;
        *(v30 + 49) = v19;
        v14 = v27;
      }

      v31 = *(v14 + 16);
      if (v31)
      {
        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        v52 = 0;
        v53 = 0xE000000000000000;
        sub_1D992BD64();

        v52 = 0xD00000000000001DLL;
        v53 = 0x80000001D9937390;
        v56 = MEMORY[0x1E69E7CC0];
        sub_1D986C620(0, v31, 0);
        v32 = v56;
        v33 = v14;
        v34 = (v14 + 40);
        do
        {
          v36 = *(v34 - 1);
          v35 = *v34;
          v56 = v32;
          v38 = *(v32 + 16);
          v37 = *(v32 + 24);

          if (v38 >= v37 >> 1)
          {
            sub_1D986C620(v37 > 1, v38 + 1, 1);
            v32 = v56;
          }

          *(v32 + 16) = v38 + 1;
          v39 = v32 + 16 * v38;
          *(v39 + 32) = v36;
          *(v39 + 40) = v35;
          v34 += 3;
          --v31;
        }

        while (v31);
        v40 = MEMORY[0x1DA739D10](v32, MEMORY[0x1E69E6158]);
        v42 = v41;

        MEMORY[0x1DA739C30](v40, v42);

        sub_1D986A454(v52, v53, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);

        v43 = sub_1D98D0AE0(1936154996, 0xE400000000000000, v33);
        v46 = sub_1D987005C(v43, v44, v45);

        if ((v46 & 1) == 0)
        {
          sub_1D98DCEB4(0xD000000000000015, 0x80000001D99373B0, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
          v47 = 0;
          return v47 & 1;
        }
      }

      else
      {

        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        sub_1D986A454(0xD000000000000028, 0x80000001D99373D0, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
      }

      v47 = 1;
      return v47 & 1;
    }
  }

  if (qword_1ED8BD6D8 != -1)
  {
LABEL_43:
    swift_once();
  }

  sub_1D986A454(0xD00000000000002CLL, 0x80000001D9937360, 0xD000000000000064, 0x80000001D9937110, 0xD00000000000001DLL, 0x80000001D9937280);
  v48 = sub_1D98C5248(1936154996, 0xE400000000000000, &unk_1F5517EA0);
  v47 = sub_1D987005C(v48, v49, v50);

  return v47 & 1;
}

uint64_t sub_1D987DD8C(uint64_t a1)
{
  sub_1D987C7B0(a1, 0x5F6C616369676F6CLL, 0xEE00736B636F6C63, &unk_1F55181B0);
  v3 = v2;
  v5 = v4;
  v24 = v4;
  if (v2)
  {
    v6 = *(v2 + 16);

    v7 = (v3 + 40);
    v8 = -v6;
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        v5 = v24;
        goto LABEL_10;
      }

      if (++v9 >= *(v3 + 16))
      {
        break;
      }

      v10 = v7 + 2;
      v12 = *(v7 - 1);
      v11 = *v7;

      sub_1D992BD64();

      MEMORY[0x1DA739C30](v12, v11);
      MEMORY[0x1DA739C30](59, 0xE100000000000000);
      v13 = sub_1D987005C(0xD000000000000015, 0x80000001D99371F0, 0);

      v7 = v10;
      if ((v13 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();

        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D9937210);
        MEMORY[0x1DA739C30](0x5F6C616369676F6CLL, 0xEE00736B636F6C63);
        MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D99371D0);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  v14 = sub_1D987CAF0(a1);

  if ((v14 & 1) == 0)
  {

    if (qword_1ED8BD6D8 == -1)
    {
LABEL_21:
      sub_1D98DCEB4(0xD000000000000039, 0x80000001D99370D0, 0xD000000000000064, 0x80000001D9937110, 0xD000000000000012, 0x80000001D9937180);
      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  if (v5)
  {
    v15 = v5 + 72;
    v16 = -*(v5 + 16);
    v17 = -1;
    do
    {
      if (v16 + v17 == -1)
      {

        return 1;
      }

      if (++v17 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v18 = v15 + 48;

      v19 = sub_1D99072FC();
      v22 = sub_1D987005C(v19, v20, v21);

      v5 = v24;

      v15 = v18;
    }

    while ((v22 & 1) != 0);

    if (qword_1ED8BD6D8 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D99371A0);
    MEMORY[0x1DA739C30](0x5F6C616369676F6CLL, 0xEE00736B636F6C63);
    MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D99371D0);
LABEL_19:
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000064, 0x80000001D9937110, 0xD000000000000012, 0x80000001D9937180);

    return 0;
  }

  return 1;
}

uint64_t sub_1D987E250(uint64_t a1)
{
  sub_1D987C3AC(a1);
  v3 = v2;
  v5 = v4;
  v24 = v4;
  if (v2)
  {
    v6 = *(v2 + 16);

    v7 = (v3 + 40);
    v8 = -v6;
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        v5 = v24;
        goto LABEL_10;
      }

      if (++v9 >= *(v3 + 16))
      {
        break;
      }

      v10 = v7 + 2;
      v12 = *(v7 - 1);
      v11 = *v7;

      sub_1D992BD64();

      MEMORY[0x1DA739C30](v12, v11);
      MEMORY[0x1DA739C30](59, 0xE100000000000000);
      v13 = sub_1D987005C(0xD000000000000015, 0x80000001D99371F0, 0);

      v7 = v10;
      if ((v13 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();

        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D9937210);
        MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9937450);
        MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D99371D0);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  v14 = sub_1D987D13C(a1);

  if ((v14 & 1) == 0)
  {

    if (qword_1ED8BD6D8 == -1)
    {
LABEL_21:
      sub_1D98DCEB4(0xD000000000000040, 0x80000001D9937400, 0xD000000000000064, 0x80000001D9937110, 0xD000000000000012, 0x80000001D9937180);
      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  if (v5)
  {
    v15 = v5 + 72;
    v16 = -*(v5 + 16);
    v17 = -1;
    do
    {
      if (v16 + v17 == -1)
      {

        return 1;
      }

      if (++v17 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v18 = v15 + 48;

      v19 = sub_1D99072FC();
      v22 = sub_1D987005C(v19, v20, v21);

      v5 = v24;

      v15 = v18;
    }

    while ((v22 & 1) != 0);

    if (qword_1ED8BD6D8 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D99371A0);
    MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9937450);
    MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D99371D0);
LABEL_19:
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000064, 0x80000001D9937110, 0xD000000000000012, 0x80000001D9937180);

    return 0;
  }

  return 1;
}

uint64_t sub_1D987E6D4(uint64_t a1)
{
  sub_1D987C7B0(a1, 1936154996, 0xE400000000000000, &unk_1F5517F50);
  v3 = v2;
  v5 = v4;
  v24 = v4;
  if (v2)
  {
    v6 = *(v2 + 16);

    v7 = (v3 + 40);
    v8 = -v6;
    v9 = -1;
    while (1)
    {
      if (v8 + v9 == -1)
      {

        v5 = v24;
        goto LABEL_10;
      }

      if (++v9 >= *(v3 + 16))
      {
        break;
      }

      v10 = v7 + 2;
      v12 = *(v7 - 1);
      v11 = *v7;

      sub_1D992BD64();

      MEMORY[0x1DA739C30](v12, v11);
      MEMORY[0x1DA739C30](59, 0xE100000000000000);
      v13 = sub_1D987005C(0xD000000000000015, 0x80000001D99371F0, 0);

      v7 = v10;
      if ((v13 & 1) == 0)
      {
        swift_bridgeObjectRelease_n();

        if (qword_1ED8BD6D8 != -1)
        {
          swift_once();
        }

        sub_1D992BD64();
        MEMORY[0x1DA739C30](0xD000000000000026, 0x80000001D9937210);
        MEMORY[0x1DA739C30](1936154996, 0xE400000000000000);
        MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D99371D0);
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_10:
  v14 = sub_1D987D76C(a1);

  if ((v14 & 1) == 0)
  {

    if (qword_1ED8BD6D8 == -1)
    {
LABEL_21:
      sub_1D98DCEB4(0xD00000000000002FLL, 0x80000001D9937330, 0xD000000000000064, 0x80000001D9937110, 0xD000000000000012, 0x80000001D9937180);
      return 0;
    }

LABEL_27:
    swift_once();
    goto LABEL_21;
  }

  if (v5)
  {
    v15 = v5 + 72;
    v16 = -*(v5 + 16);
    v17 = -1;
    do
    {
      if (v16 + v17 == -1)
      {

        return 1;
      }

      if (++v17 >= *(v5 + 16))
      {
        goto LABEL_26;
      }

      v18 = v15 + 48;

      v19 = sub_1D99072FC();
      v22 = sub_1D987005C(v19, v20, v21);

      v5 = v24;

      v15 = v18;
    }

    while ((v22 & 1) != 0);

    if (qword_1ED8BD6D8 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D99371A0);
    MEMORY[0x1DA739C30](1936154996, 0xE400000000000000);
    MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D99371D0);
LABEL_19:
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD000000000000064, 0x80000001D9937110, 0xD000000000000012, 0x80000001D9937180);

    return 0;
  }

  return 1;
}

uint64_t sub_1D987EB68(uint64_t a1, void *a2, uint64_t (*a3)(uint64_t))
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_1D990C1E0();
  if (result)
  {
    v5 = result;
    v21 = a3;
    v6 = 0;
    v7 = *(result + 16);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v7 == v6)
      {

        return v8;
      }

      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v9 = *(v5 + 8 * v6 + 32);
      if (!*(v9 + 16))
      {
        goto LABEL_21;
      }

      v10 = sub_1D9889410(1701667182, 0xE400000000000000);
      if ((v11 & 1) == 0)
      {

        goto LABEL_21;
      }

      v12 = *(v9 + 56) + 24 * v10;
      v14 = *v12;
      v13 = *(v12 + 8);
      v15 = *(v12 + 16);
      sub_1D986C8B8(*v12, v13, *(v12 + 16));

      if (v15 == 4 && (v13 | v14) == 0)
      {
        goto LABEL_21;
      }

      if (v15)
      {
        sub_1D986C908(v14, v13, v15);
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48410, &qword_1D992FD50);
      result = swift_dynamicCast();
      if ((result & 1) != 0 && v23)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          v20 = OUTLINED_FUNCTION_1();
          result = v21(v20);
          v8 = result;
        }

        v18 = *(v8 + 16);
        v17 = *(v8 + 24);
        if (v18 >= v17 >> 1)
        {
          result = (v21)(v17 > 1, v18 + 1, 1, v8);
          v8 = result;
        }

        ++v6;
        *(v8 + 16) = v18 + 1;
        v19 = v8 + 16 * v18;
        *(v19 + 32) = v22;
        *(v19 + 40) = v23;
      }

      else
      {
LABEL_21:
        ++v6;
      }
    }
  }

  return 0;
}

void sub_1D987ED7C()
{
  OUTLINED_FUNCTION_8_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48430, qword_1D992FD70);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OUTLINED_FUNCTION_3_3();
  type metadata accessor for ComponentIdentifiersTable.Record(v5);
  OUTLINED_FUNCTION_2_2();
  v24[3] = v6;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v25 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OUTLINED_FUNCTION_6_3())
  {
    OUTLINED_FUNCTION_5_3();
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v2 == v1)
      {

        goto LABEL_14;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      sub_1D98AD2F4(v10, v0);
      OUTLINED_FUNCTION_10_1();
      if (v11)
      {
        OUTLINED_FUNCTION_11_0();
        ++v1;
      }

      else
      {
        sub_1D987F364(v0, v25, type metadata accessor for ComponentIdentifiersTable.Record);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_1();
          sub_1D98BDEE4(v15, v16, v17, v9);
          v9 = v18;
        }

        OUTLINED_FUNCTION_9_3();
        if (v13)
        {
          OUTLINED_FUNCTION_4_3();
          sub_1D98BDEE4(v19, v20, v21, v22);
          v9 = v23;
        }

        OUTLINED_FUNCTION_0_10();
        sub_1D987F364(v25, v14, type metadata accessor for ComponentIdentifiersTable.Record);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_7_1();
  }
}

void sub_1D987EF74()
{
  OUTLINED_FUNCTION_8_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48428, &qword_1D992FD68);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OUTLINED_FUNCTION_3_3();
  type metadata accessor for TagsTable.Record(v5);
  OUTLINED_FUNCTION_2_2();
  v24[3] = v6;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v25 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OUTLINED_FUNCTION_6_3())
  {
    OUTLINED_FUNCTION_5_3();
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v2 == v1)
      {

        goto LABEL_14;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      sub_1D98F67D4(v10, v0);
      OUTLINED_FUNCTION_10_1();
      if (v11)
      {
        OUTLINED_FUNCTION_11_0();
        ++v1;
      }

      else
      {
        sub_1D987F364(v0, v25, type metadata accessor for TagsTable.Record);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_1();
          sub_1D98BE0E8(v15, v16, v17, v9);
          v9 = v18;
        }

        OUTLINED_FUNCTION_9_3();
        if (v13)
        {
          OUTLINED_FUNCTION_4_3();
          sub_1D98BE0E8(v19, v20, v21, v22);
          v9 = v23;
        }

        OUTLINED_FUNCTION_0_10();
        sub_1D987F364(v25, v14, type metadata accessor for TagsTable.Record);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_7_1();
  }
}

void sub_1D987F16C()
{
  OUTLINED_FUNCTION_8_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48420, &qword_1D992FD60);
  MEMORY[0x1EEE9AC00](((*(*(v4 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = OUTLINED_FUNCTION_3_3();
  type metadata accessor for LogicalClocksTable.Record(v5);
  OUTLINED_FUNCTION_2_2();
  v24[3] = v6;
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v25 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (OUTLINED_FUNCTION_6_3())
  {
    OUTLINED_FUNCTION_5_3();
    v9 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v2 == v1)
      {

        goto LABEL_14;
      }

      if (v1 >= *(v3 + 16))
      {
        break;
      }

      sub_1D9892930(v10, v0);
      OUTLINED_FUNCTION_10_1();
      if (v11)
      {
        OUTLINED_FUNCTION_11_0();
        ++v1;
      }

      else
      {
        sub_1D987F364(v0, v25, type metadata accessor for LogicalClocksTable.Record);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = OUTLINED_FUNCTION_1();
          sub_1D98BE448(v15, v16, v17, v9);
          v9 = v18;
        }

        OUTLINED_FUNCTION_9_3();
        if (v13)
        {
          OUTLINED_FUNCTION_4_3();
          sub_1D98BE448(v19, v20, v21, v22);
          v9 = v23;
        }

        OUTLINED_FUNCTION_0_10();
        sub_1D987F364(v25, v14, type metadata accessor for LogicalClocksTable.Record);
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_7_1();
  }
}

uint64_t sub_1D987F364(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D987F3D4(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D987F478(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t sub_1D987F4B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
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

uint64_t sub_1D987F4FC(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for DbDataTypeAffinity(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 4 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 4) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DbDataTypeAffinity(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D987F6BC()
{
  result = qword_1ECB48438;
  if (!qword_1ECB48438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48438);
  }

  return result;
}

uint64_t sub_1D987F738(unsigned __int8 a1)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](a1);
  return sub_1D992C0C4();
}

uint64_t sub_1D987F79C(uint64_t a1)
{
  v2 = *v1;
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](v2);
  return sub_1D992C0C4();
}

void sub_1D987F810()
{
  v0 = type metadata accessor for ResourceType(0);
  __swift_allocate_value_buffer(v0, qword_1ED8BFB48);
  v1 = __swift_project_value_buffer(v0, qword_1ED8BFB48);
  type metadata accessor for PersistentStorage();
  v2 = sub_1D992AD44();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D98F97F8();
  v6 = type metadata accessor for DataVault(0);
  v7 = objc_allocWithZone(v6);
  (*(v3 + 16))(v7 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, v5, v2);
  v9.receiver = v7;
  v9.super_class = v6;
  v8 = objc_msgSendSuper2(&v9, sel_init);
  (*(v3 + 8))(v5, v2);
  sub_1D98CB418(v1);
}

uint64_t sub_1D987F978(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D992AD44();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9, a1, v6);
  v10 = objc_allocWithZone(SiriAnalyticsUnifiedBiomeStream);
  v11 = sub_1D9880714(v9, 0);
  (*(v7 + 8))(a1, v6);
  *(v3 + 16) = v11;
  *(v3 + 24) = a2;
  return v3;
}

void sub_1D987FA90(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *(v6 + 16);
  if (a2 >> 60 == 15)
  {
    v12 = 0;
  }

  else
  {
    v12 = sub_1D992AD74();
  }

  OUTLINED_FUNCTION_0_0();
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v21 = sub_1D987FCA8;
  v22 = v13;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D987FCB0;
  v20 = &block_descriptor;
  v14 = _Block_copy(&v17);

  OUTLINED_FUNCTION_0_0();
  v15 = swift_allocObject();
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v21 = sub_1D987FD20;
  v22 = v15;
  v17 = MEMORY[0x1E69E9820];
  v18 = 1107296256;
  v19 = sub_1D987FD4C;
  v20 = &block_descriptor_6;
  v16 = _Block_copy(&v17);

  [v11 fetchMessagesSinceBookmark:v12 receiveMessage:v14 completion:v16];
  _Block_release(v16);
  _Block_release(v14);
}

uint64_t sub_1D987FC44(void *a1, uint64_t (*a2)(void))
{
  sub_1D992B104();
  v4 = a1;
  v5 = sub_1D992B114();
  v6 = a2();

  return v6 & 1;
}

uint64_t sub_1D987FCB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  LOBYTE(v3) = v3();

  return v3 & 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D987FD4C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a2;
  v7 = *(a1 + 32);
  if (a2)
  {

    v8 = v6;
    v6 = sub_1D992AD84();
    v10 = v9;
  }

  else
  {

    v10 = 0xF000000000000000;
  }

  v7(v6, v10, a3, a4);
  sub_1D9866358(v6, v10);
}

uint64_t sub_1D987FE18()
{
  sub_1D9880418();
  v1 = sub_1D992B624();
  v3 = sub_1D988045C(v1, v2);
  v0[18] = v3;
  if (qword_1ED8BD7C8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for ResourceType(0);
  __swift_project_value_buffer(v4, qword_1ED8BFB48);
  v5 = sub_1D98C6250();
  if (v6)
  {

    v7 = v0[1];

    return v7(0);
  }

  else
  {
    v9 = v5;
    v10 = sub_1D992AD44();
    v0[19] = v10;
    v11 = *(v10 - 8);
    v0[20] = v11;
    v0[21] = *(v11 + 64);
    v0[22] = OUTLINED_FUNCTION_20();
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48440, &qword_1D9930058);
    v0[23] = v12;
    v0[24] = *(*(v12 - 8) + 64);
    v13 = OUTLINED_FUNCTION_20();
    v0[25] = v13;
    v0[2] = v0;
    v0[7] = v13;
    v0[3] = sub_1D988008C;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48448, &qword_1D9930060);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D98804D0;
    v0[13] = &block_descriptor_9;
    v0[14] = v14;
    [v3 vendResource:v9 readonly:1 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D988008C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D9880394;
  }

  else
  {
    v2 = sub_1D988019C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D988019C()
{
  v1 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[19];
  v5 = v0[20];
  v6 = OUTLINED_FUNCTION_20();
  sub_1D98805EC(v1, v6);
  v7 = *v6;
  v8 = *(v6 + 1);
  (*(v5 + 32))(v2, &v6[*(v3 + 48)], v4);

  type metadata accessor for SandboxExtension();
  v9 = swift_allocObject();
  *(v9 + 24) = v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  *(v9 + 16) = v7;
  sub_1D988E70C();
  v10 = v0[22];
  v11 = v0[20];
  v13 = v0[18];
  v12 = v0[19];
  v14 = OUTLINED_FUNCTION_20();
  (*(v11 + 16))(v14, v10, v12);
  type metadata accessor for MessageStoreReader();
  OUTLINED_FUNCTION_0_0();
  v15 = swift_allocObject();
  sub_1D987F978(v14, v9);

  (*(v11 + 8))(v10, v12);

  v16 = v0[1];

  return v16(v15);
}

uint64_t sub_1D9880394()
{
  v1 = *(v0 + 144);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

unint64_t sub_1D9880418()
{
  result = qword_1ED8BDB90;
  if (!qword_1ED8BDB90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED8BDB90);
  }

  return result;
}

id sub_1D988045C(uint64_t a1, uint64_t a2)
{
  v2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v3 = sub_1D992B614();

  v4 = [v2 initWithMachServiceName_];

  return v4;
}

uint64_t sub_1D98804D0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;

    return sub_1D98F1C38();
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48440, &qword_1D9930058);
    MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = (&v12 - v9);
    *v10 = sub_1D992B624();
    v10[1] = v11;
    sub_1D992AD14();
    return sub_1D98EF830(v5, v10);
  }
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  return sub_1D986A8BC(a2 + 32, a1 + 32);
}

{
  return sub_1D986A8BC(a2 + 32, a1 + 32);
}

uint64_t sub_1D98805EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48440, &qword_1D9930058);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t MessageStoreReader.__deallocating_deinit()
{
  MessageStoreReader.deinit();
  OUTLINED_FUNCTION_0_0();

  return swift_deallocClassInstance();
}

id sub_1D9880714(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D992ACD4();
  v7 = [v3 initWithReadOnlyStorageURL:v6 prefs:a2];

  v8 = sub_1D992AD44();
  (*(*(v8 - 8) + 8))(a1, v8);
  return v7;
}

unint64_t sub_1D98807B4(uint64_t a1, uint64_t a2)
{
  sub_1D992BD64();

  MEMORY[0x1DA739C30](a1, a2);
  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return 0xD000000000000015;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1D9880874(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D98808B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

id RawUnifiedStreamMessage.underlying.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics23RawUnifiedStreamMessage_underlying);
  *a1 = v2;
  return v2;
}

id static RawUnifiedStreamMessage.event(with:dataVersion:)(uint64_t a1, unint64_t a2, int a3)
{
  if (a3 != 1)
  {
    return 0;
  }

  v4 = v3;
  objc_allocWithZone(MEMORY[0x1E69CF568]);
  sub_1D987BA38(a1, a2);
  result = sub_1D9880B04(a1, a2);
  if (result)
  {
    v8 = result;
    v9 = objc_allocWithZone(v4);
    *&v9[OBJC_IVAR____TtC13SiriAnalytics23RawUnifiedStreamMessage_underlying] = v8;
    v10.receiver = v9;
    v10.super_class = v4;
    return objc_msgSendSuper2(&v10, sel_init);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id RawUnifiedStreamMessage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RawUnifiedStreamMessage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9880B04(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1D992AD74();
    sub_1D9866358(a1, a2);
  }

  v6 = [v2 initWithData_];

  return v6;
}

uint64_t sub_1D9880B9C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 8))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D9880BDC(uint64_t result, int a2, int a3)
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

uint64_t sub_1D9880C74(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_32_0();
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](a2);
  return sub_1D992C0C4();
}

BOOL sub_1D9880CCC(uint64_t a1, uint64_t a2)
{
  if ((sub_1D992AE54() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for PreprocessorCounterKey(0);
  OUTLINED_FUNCTION_14_1();
  return v4 && v3 == v2;
}

uint64_t sub_1D9880D1C()
{
  OUTLINED_FUNCTION_13_0();
  sub_1D992AE84();
  OUTLINED_FUNCTION_31_0(&qword_1ED8BF060);
  OUTLINED_FUNCTION_22_0();
  sub_1D992B5D4();
  v0 = type metadata accessor for PreprocessorCounterKey(0);
  OUTLINED_FUNCTION_16_2(v0);
  v2 = *(v1 + 8);
  sub_1D992C0A4();
  return MEMORY[0x1DA73A5D0](v2);
}

uint64_t sub_1D9880D84()
{
  OUTLINED_FUNCTION_32_0();
  sub_1D992AE84();
  OUTLINED_FUNCTION_31_0(&qword_1ED8BF060);
  sub_1D992B5D4();
  v0 = type metadata accessor for PreprocessorCounterKey(0);
  OUTLINED_FUNCTION_16_2(v0);
  v2 = *(v1 + 8);
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](v2);
  return sub_1D992C0C4();
}

uint64_t sub_1D9880E28(char a1)
{
  OUTLINED_FUNCTION_32_0();
  MEMORY[0x1DA73A5D0](a1 & 1);
  return sub_1D992C0C4();
}

uint64_t sub_1D9880E68(uint64_t a1, uint64_t a2)
{
  if ((sub_1D992AE54() & 1) != 0 && ((type metadata accessor for PreprocessorResultCounterKey(0), OUTLINED_FUNCTION_14_1(), v7) ? (v7 = v6 == v5) : (v7 = 0), v7 && (v8 = v4, sub_1D992B1E4(), OUTLINED_FUNCTION_0_12(), sub_1D9882BDC(v9, v10, MEMORY[0x1E69CE6C8]), sub_1D992B784(), sub_1D992B784(), v14 == v13)))
  {
    v11 = *(a1 + *(v8 + 28)) ^ *(a2 + *(v8 + 28)) ^ 1;
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t sub_1D9880F64()
{
  OUTLINED_FUNCTION_13_0();
  sub_1D992AE84();
  OUTLINED_FUNCTION_31_0(&qword_1ED8BF060);
  OUTLINED_FUNCTION_22_0();
  sub_1D992B5D4();
  v1 = type metadata accessor for PreprocessorResultCounterKey(0);
  OUTLINED_FUNCTION_16_2(v1);
  v3 = *(v2 + 8);
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](v3);
  sub_1D992B1E4();
  OUTLINED_FUNCTION_0_12();
  sub_1D9882BDC(v4, v5, MEMORY[0x1E69CE6B8]);
  sub_1D992B5D4();
  return MEMORY[0x1DA73A5D0](*(v0 + *(v1 + 28)));
}

uint64_t sub_1D9881034()
{
  OUTLINED_FUNCTION_32_0();
  sub_1D9880F64();
  return sub_1D992C0C4();
}

uint64_t sub_1D9881084(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D992C074();
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](v2);
  return sub_1D992C0C4();
}

uint64_t sub_1D9881104(uint64_t a1, uint64_t a2)
{
  sub_1D992C074();
  sub_1D992AE84();
  OUTLINED_FUNCTION_31_0(&qword_1ED8BF060);
  sub_1D992B5D4();
  v4 = *(v2 + *(a2 + 20) + 8);
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](v4);
  return sub_1D992C0C4();
}

uint64_t sub_1D98811B8(uint64_t a1)
{
  sub_1D992C074();
  sub_1D9880F64();
  return sub_1D992C0C4();
}

uint64_t sub_1D98811F8(char a1)
{
  type metadata accessor for MonotonicTimestamp(0);
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  v7 = type metadata accessor for PreprocessorTelemetry(0);
  v8 = *(v1 + *(v7 + 24));
  v9 = mach_absolute_time();
  LOBYTE(v18) = 0;
  MonotonicTimestamp.init(cpuTicks:clockType:)(v9, &v18);
  v10 = *(v6 + *(v1 + 28));
  sub_1D9882CC0();
  if (qword_1ED8BD6F0 != -1)
  {
    swift_once();
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0x6F69747563657865, 0xEB00000000203A6ELL);
  sub_1D992AE84();
  sub_1D9882D14(&qword_1ED8BD8D0, MEMORY[0x1EEE78948]);
  v11 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v11);

  MEMORY[0x1DA739C30](0x203A7065747320, 0xE700000000000000);
  sub_1D992BE24();
  result = MEMORY[0x1DA739C30](544497952, 0xE400000000000000);
  if (v10 < v8)
  {
    __break(1u);
  }

  else if (((v10 - v8) & 0x8000000000000000) == 0)
  {
    v13 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v13);

    MEMORY[0x1DA739C30](29550, 0xE200000000000000);
    sub_1D986A454(v18, v19, 0xD000000000000067, 0x80000001D99376C0, 0x657473286B72616DLL, 0xEB00000000293A70);

    v14 = *(v7 + 40);
    sub_1D987B930();
    v15 = *(*(v1 + v14) + 16);
    result = sub_1D987B9C0(v15);
    v16 = *(v1 + v14);
    *(v16 + 16) = v15 + 1;
    v17 = v16 + 24 * v15;
    *(v17 + 32) = a1;
    *(v17 + 40) = v8;
    *(v17 + 48) = v10;
    *(v1 + v14) = v16;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1D98814A4()
{
  OUTLINED_FUNCTION_6_2();
  v24 = *(type metadata accessor for PreprocessorCounterKey(0) - 8);
  MEMORY[0x1EEE9AC00](*(v24 + 64));
  OUTLINED_FUNCTION_13();
  v23 = v3 - v2;
  v4 = *(v0 + *(type metadata accessor for PreprocessorTelemetry(0) + 32));
  v28 = MEMORY[0x1E69E7CD0];
  v5 = v4 + 64;
  OUTLINED_FUNCTION_1_5();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v25 = v11;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  if (v8)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_28_0();
      OUTLINED_FUNCTION_7_2();
      v14 = v23;
      sub_1D9882C64(v15, v23, v16);
      v17 = sub_1D992AE84();
      v27 = &v23;
      OUTLINED_FUNCTION_6();
      v19 = v18;
      MEMORY[0x1EEE9AC00](*(v20 + 64));
      OUTLINED_FUNCTION_19_3();
      v26 = &v23;
      MEMORY[0x1EEE9AC00](v21);
      (*(v19 + 16))(&v23 - v22, v14, v17);
      sub_1D98B6650();
      (*(v19 + 8))(v1, v17);
      OUTLINED_FUNCTION_3_4();
      sub_1D9882CC0();
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      sub_1D98D45A8(v28);
      OUTLINED_FUNCTION_7();
      return;
    }

    ++v12;
    if (*(v5 + 8 * v13))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
}

void sub_1D98816F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_6_2();
  a19 = v21;
  a20 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C0, &qword_1D9930160);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](((*(v24 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = &a9 - v25;
  v27 = *(v20 + *(type metadata accessor for PreprocessorTelemetry(0) + 32));
  OUTLINED_FUNCTION_1_5();
  v30 = v29 & v28;
  v32 = (v31 + 63) >> 6;

  v33 = 0;
  v34 = 0;
  while (v30)
  {
LABEL_7:
    OUTLINED_FUNCTION_28_0();
    v38 = v37 | (v36 << 6);
    type metadata accessor for PreprocessorCounterKey(0);
    OUTLINED_FUNCTION_7_2();
    sub_1D9882C64(v39, v26, v40);
    v41 = *(*(v27 + 56) + 8 * v38);
    *&v26[*(v23 + 48)] = v41;
    sub_1D986B804(v26, &qword_1ECB484C0, &qword_1D9930160);
    v42 = __CFADD__(v34, v41);
    v34 += v41;
    if (v42)
    {
      __break(1u);
LABEL_10:

      OUTLINED_FUNCTION_7();
      return;
    }
  }

  while (1)
  {
    v35 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v35 >= v32)
    {
      goto LABEL_10;
    }

    v30 = *(v27 + 64 + 8 * v35);
    ++v33;
    if (v30)
    {
      v33 = v35;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D9881858()
{
  OUTLINED_FUNCTION_6_2();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C0, &qword_1D9930160);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v2 + 64));
  OUTLINED_FUNCTION_8_3();
  v49 = v3;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v5 = *(v0 + *(OUTLINED_FUNCTION_30_0() + 32)) + 64;
  OUTLINED_FUNCTION_1_5();
  v8 = v7 & v6;
  v10 = (v9 + 63) >> 6;
  v51 = v11;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC8];
  v46 = v10;
  v47 = v5;
  for (i = v1; v8; v5 = v47)
  {
    v14 = v12;
LABEL_6:
    v15 = v51;
    type metadata accessor for PreprocessorCounterKey(0);
    OUTLINED_FUNCTION_7_2();
    sub_1D9882C64(v16, v1, v17);
    v18 = v49;
    v19 = *(v50 + 48);
    v54 = *(*(v15 + 56) + 8 * (__clz(__rbit64(v8)) | (v14 << 6)));
    *(v1 + v19) = v54;
    sub_1D9866D34(v1, v18, &qword_1ECB484C0, &qword_1D9930160);
    sub_1D992AE84();
    v53 = &v45;
    OUTLINED_FUNCTION_6();
    v21 = v20;
    MEMORY[0x1EEE9AC00](*(v22 + 64));
    OUTLINED_FUNCTION_13();
    v25 = v24 - v23;
    v26 = *(v21 + 16);
    v55 = v27;
    v52 = v26;
    (v26)(v25, v18);
    OUTLINED_FUNCTION_3_4();
    sub_1D9882CC0();
    swift_isUniquelyReferenced_nonNull_native();
    v56 = v13;
    sub_1D9889568();
    OUTLINED_FUNCTION_18_0();
    if (__OFADD__(v30, v31))
    {
      goto LABEL_19;
    }

    v32 = v28;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484D8, &qword_1D9930178);
    v34 = sub_1D992BE34();
    v13 = v56;
    if (v34)
    {
      v35 = sub_1D9889568();
      v37 = v55;
      if ((v33 & 1) != (v36 & 1))
      {
        goto LABEL_22;
      }

      v32 = v35;
      if (v33)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v37 = v55;
      if (v33)
      {
        goto LABEL_14;
      }
    }

    OUTLINED_FUNCTION_10_2(v13 + 8 * (v32 >> 6));
    v52(v38 + *(v21 + 72) * v32, v25, v37);
    OUTLINED_FUNCTION_25_0();
    if (v40)
    {
      goto LABEL_21;
    }

    *(v13 + 16) = v39;
LABEL_14:
    v41 = *(v13 + 56);
    v42 = *(v41 + 8 * v32);
    v43 = __CFADD__(v42, v54);
    v44 = v42 + v54;
    if (v43)
    {
      goto LABEL_20;
    }

    v8 &= v8 - 1;
    *(v41 + 8 * v32) = v44;
    (*(v21 + 8))(v25, v37);
    v1 = i;
    sub_1D986B804(i, &qword_1ECB484C0, &qword_1D9930160);
    v12 = v14;
    v10 = v46;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v10)
    {

      OUTLINED_FUNCTION_7();
      return;
    }

    v8 = *(v5 + 8 * v14);
    ++v12;
    if (v8)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1D992BFC4();
  __break(1u);
}

void sub_1D9881BC8()
{
  OUTLINED_FUNCTION_6_2();
  v1 = v0;
  v43 = sub_1D992B1E4();
  OUTLINED_FUNCTION_6();
  v3 = v2;
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_8_3();
  v44 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v34 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C8, &qword_1D9930168);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_8_3();
  v40 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v34 - v11;
  v36 = *(v1 + *(type metadata accessor for PreprocessorTelemetry(0) + 36)) + 64;
  OUTLINED_FUNCTION_1_5();
  v14 = v13 & v12;
  v35 = (v15 + 63) >> 6;
  v37 = (v3 + 8);
  v38 = (v3 + 16);
  v45 = v16;

  v17 = 0;
  v34 = 0;
  v18 = v39;
  v19 = v43;
  while (v14)
  {
LABEL_7:
    OUTLINED_FUNCTION_26_0();
    v22 = v21 | (v17 << 6);
    v23 = v45;
    type metadata accessor for PreprocessorResultCounterKey(0);
    OUTLINED_FUNCTION_17_0();
    OUTLINED_FUNCTION_6_4();
    sub_1D9882C64(v24, v18, v25);
    v26 = *(*(v23 + 56) + 8 * v22);
    v27 = v40;
    *(v18 + *(v41 + 48)) = v26;
    sub_1D9866D34(v18, v27, &qword_1ECB484C8, &qword_1D9930168);
    v28 = v27 + *(v3 + 8);
    v3 = v42;
    (*v38)(v42, v28, v19);
    OUTLINED_FUNCTION_2_3();
    sub_1D9882CC0();
    v29 = v44;
    sub_1D992B1D4();
    OUTLINED_FUNCTION_0_12();
    sub_1D9882BDC(&qword_1ECB479E0, v30, MEMORY[0x1E69CE6D0]);
    OUTLINED_FUNCTION_22_0();
    v31 = sub_1D992BC34();
    v32 = *v37;
    (*v37)(v29, v19);
    v32(v3, v19);
    sub_1D986B804(v18, &qword_1ECB484C8, &qword_1D9930168);
    if (v31)
    {
      v33 = __CFADD__(v34, v26);
      v34 += v26;
      if (v33)
      {
        __break(1u);
LABEL_11:

        OUTLINED_FUNCTION_7();
        return;
      }
    }
  }

  while (1)
  {
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v20 >= v35)
    {
      goto LABEL_11;
    }

    v14 = *(v36 + 8 * v20);
    ++v17;
    if (v14)
    {
      v17 = v20;
      goto LABEL_7;
    }
  }

  __break(1u);
}

void sub_1D9881EB8()
{
  OUTLINED_FUNCTION_6_2();
  v82 = sub_1D992B1E4();
  OUTLINED_FUNCTION_6();
  v2 = v1;
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_8_3();
  v84 = v4;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v83 = v66 - v6;
  v7 = &qword_1D9930168;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C8, &qword_1D9930168);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  OUTLINED_FUNCTION_8_3();
  v73 = v9;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v80 = v66 - v11;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v66 - v13;
  v15 = *&v0[*(type metadata accessor for PreprocessorTelemetry(0) + 36)] + 64;
  OUTLINED_FUNCTION_1_5();
  v18 = v17 & v16;
  v20 = (v19 + 63) >> 6;
  v78 = (v2 + 8);
  v79 = (v2 + 16);
  v21 = v14;
  v86 = v22;

  v23 = 0;
  v74 = MEMORY[0x1E69E7CC8];
  v76 = v15;
  v77 = v20;
  v85 = v21;
  while (1)
  {
    v24 = v23;
    if (!v18)
    {
      break;
    }

    while (1)
    {
      v23 = v24;
LABEL_7:
      OUTLINED_FUNCTION_26_0();
      v26 = v25 | (v23 << 6);
      v27 = v86;
      type metadata accessor for PreprocessorResultCounterKey(0);
      OUTLINED_FUNCTION_17_0();
      OUTLINED_FUNCTION_6_4();
      sub_1D9882C64(v28, v21, v29);
      v30 = *(v81 + 48);
      v75 = *(*(v27 + 56) + 8 * v26);
      *(v21 + v30) = v75;
      v31 = v21;
      v32 = v80;
      sub_1D9866D34(v31, v80, &qword_1ECB484C8, v7);
      v33 = v32 + *(v0 + 8);
      v0 = v83;
      v34 = v7;
      v35 = v82;
      (*v79)(v83, v33, v82);
      OUTLINED_FUNCTION_2_3();
      sub_1D9882CC0();
      v36 = v84;
      sub_1D992B1D4();
      OUTLINED_FUNCTION_0_12();
      sub_1D9882BDC(&qword_1ECB479E0, v37, MEMORY[0x1E69CE6D0]);
      LOBYTE(v26) = sub_1D992BC34();
      v38 = *v78;
      (*v78)(v36, v35);
      v38(v0, v35);
      if (v26)
      {
        break;
      }

      v21 = v85;
      sub_1D986B804(v85, &qword_1ECB484C8, v34);
      v24 = v23;
      v7 = v34;
    }

    v39 = v73;
    v7 = v34;
    sub_1D9866D34(v85, v73, &qword_1ECB484C8, v34);
    sub_1D992AE84();
    v68 = v66;
    OUTLINED_FUNCTION_6();
    MEMORY[0x1EEE9AC00](*(v40 + 64));
    OUTLINED_FUNCTION_13();
    v43 = v42 - v41;
    v71 = v45;
    v72 = v44;
    v46 = v45 + 16;
    v47 = *(v45 + 16);
    v47(v42 - v41, v39);
    OUTLINED_FUNCTION_2_3();
    sub_1D9882CC0();
    v48 = v74;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v87 = v48;
    v67 = sub_1D9889568();
    OUTLINED_FUNCTION_18_0();
    v74 = (v50 + v51);
    v21 = v85;
    if (__OFADD__(v50, v51))
    {
      goto LABEL_21;
    }

    v52 = v49;
    v66[0] = v47;
    v66[1] = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484D8, &qword_1D9930178);
    v53 = sub_1D992BE34();
    v0 = v87;
    v20 = v77;
    v70 = v43;
    if (v53)
    {
      v54 = sub_1D9889568();
      if ((v52 & 1) != (v55 & 1))
      {
        goto LABEL_24;
      }

      v56 = v75;
      v15 = v76;
      if (v52)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v56 = v75;
      v15 = v76;
      v54 = v67;
      if (v52)
      {
        goto LABEL_17;
      }
    }

    OUTLINED_FUNCTION_10_2(&v0[8 * (v54 >> 6)]);
    v58 = v57;
    (v66[0])(v59 + *(v71 + 72) * v57, v70, v72);
    OUTLINED_FUNCTION_25_0();
    if (v61)
    {
      goto LABEL_23;
    }

    v54 = v58;
    *(v0 + 2) = v60;
LABEL_17:
    v74 = v0;
    v62 = *(v0 + 7);
    v63 = *(v62 + 8 * v54);
    v64 = __CFADD__(v63, v56);
    v65 = v63 + v56;
    if (v64)
    {
      goto LABEL_22;
    }

    *(v62 + 8 * v54) = v65;
    (*(v71 + 8))(v70, v72);
    sub_1D986B804(v21, &qword_1ECB484C8, v7);
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v20)
    {

      OUTLINED_FUNCTION_7();
      return;
    }

    v18 = *(v15 + 8 * v23);
    ++v24;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  sub_1D992BFC4();
  __break(1u);
}

uint64_t sub_1D98823FC(void *a1, uint64_t a2, uint64_t a3)
{
  v39 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C0, &qword_1D9930160);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  OUTLINED_FUNCTION_19_3();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v38 - v9;
  sub_1D9866D34(a2, &v38 - v9, &qword_1ECB484C0, &qword_1D9930160);
  v11 = sub_1D992AE84();
  OUTLINED_FUNCTION_6();
  v13 = v12;
  MEMORY[0x1EEE9AC00](*(v14 + 64));
  OUTLINED_FUNCTION_13();
  v17 = v16 - v15;
  (*(v13 + 16))(v16 - v15, v10, v11);
  OUTLINED_FUNCTION_3_4();
  sub_1D9882CC0();
  v18 = sub_1D992AE54();
  result = (*(v13 + 8))(v17, v11);
  if (v18)
  {
    v38 = v3;
    sub_1D9866D34(a2, v4, &qword_1ECB484C0, &qword_1D9930160);
    v20 = (v4 + *(type metadata accessor for PreprocessorCounterKey(0) + 20));
    v21 = *v20;
    v22 = *(v20 + 1);
    OUTLINED_FUNCTION_3_4();
    sub_1D9882CC0();
    v23 = *(a2 + *(v6 + 48));
    v24 = v39;
    swift_isUniquelyReferenced_nonNull_native();
    v25 = v24;
    v40 = *v24;
    sub_1D98895D8(v21, v22);
    OUTLINED_FUNCTION_18_0();
    if (__OFADD__(v28, v29))
    {
      __break(1u);
    }

    else
    {
      v30 = v26;
      v31 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484D0, &qword_1D9930170);
      result = sub_1D992BE34();
      v32 = v40;
      if (result)
      {
        result = sub_1D98895D8(v21, v22);
        if ((v31 & 1) != (v33 & 1))
        {
LABEL_13:
          result = sub_1D992BFC4();
          __break(1u);
          return result;
        }

        v30 = result;
      }

      *v25 = v32;
      if ((v31 & 1) == 0)
      {
        result = sub_1D989D128(v30, v21, v22, 0, v32);
      }

      v34 = v32[7];
      v35 = *(v34 + 8 * v30);
      v36 = __CFADD__(v35, v23);
      v37 = v35 + v23;
      if (!v36)
      {
        *(v34 + 8 * v30) = v37;
        return result;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D98826B4()
{
  OUTLINED_FUNCTION_13_0();
  sub_1D992B1E4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v1 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_27();
  if (sub_1D992AE54() & 1) != 0 && (v2 = type metadata accessor for PreprocessorResultCounterKey(0), v3 = *(v2 + 24), sub_1D992B1D4(), OUTLINED_FUNCTION_0_12(), sub_1D9882BDC(v4, v5, MEMORY[0x1E69CE6D0]), OUTLINED_FUNCTION_29_1(), v6 = OUTLINED_FUNCTION_24_0(), v7(v6), (v3))
  {
    return *(v0 + *(v2 + 28));
  }

  else
  {
    return 0;
  }
}

void sub_1D98827BC()
{
  OUTLINED_FUNCTION_6_2();
  v41 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484C8, &qword_1D9930168);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v4 + 64));
  OUTLINED_FUNCTION_8_3();
  v38 = v5;
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v7 = *(v0 + *(OUTLINED_FUNCTION_30_0() + 36));
  OUTLINED_FUNCTION_1_5();
  v10 = v9 & v8;
  v12 = (v11 + 63) >> 6;

  v13 = 0;
  v39 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    v14 = v13;
    if (!v10)
    {
      break;
    }

LABEL_6:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v16 = v15 | (v13 << 6);
    v17 = type metadata accessor for PreprocessorResultCounterKey(0);
    OUTLINED_FUNCTION_5();
    OUTLINED_FUNCTION_6_4();
    sub_1D9882C64(v18, v1, v19);
    v20 = *(*(v7 + 56) + 8 * v16);
    *(v1 + *(v3 + 48)) = v20;
    if ((v41(v1) & 1) == 0)
    {
      goto LABEL_7;
    }

    sub_1D9866D34(v1, v38, &qword_1ECB484C8, &qword_1D9930168);
    v21 = (v38 + *(v17 + 20));
    v22 = *v21;
    v37 = *(v21 + 1);
    OUTLINED_FUNCTION_2_3();
    sub_1D9882CC0();
    swift_isUniquelyReferenced_nonNull_native();
    v42 = v39;
    v36 = sub_1D98895D8(v22, v37);
    v23 = *(v39 + 16);
    v40 = v24;
    if (__OFADD__(v23, (v24 & 1) == 0))
    {
      goto LABEL_20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484D0, &qword_1D9930170);
    if (sub_1D992BE34())
    {
      v25 = sub_1D98895D8(v22, v37);
      if ((v40 & 1) != (v26 & 1))
      {
        goto LABEL_23;
      }

      if ((v40 & 1) == 0)
      {
LABEL_14:
        OUTLINED_FUNCTION_10_2(v42 + 8 * (v25 >> 6));
        v28 = v27 + 16 * v25;
        *v28 = v22;
        *(v28 + 8) = v37;
        *(*(v42 + 56) + 8 * v25) = 0;
        v29 = *(v42 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          goto LABEL_22;
        }

        *(v42 + 16) = v31;
      }
    }

    else
    {
      v25 = v36;
      if ((v40 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    v39 = v42;
    v32 = *(v42 + 56);
    v33 = *(v32 + 8 * v25);
    v34 = __CFADD__(v33, v20);
    v35 = v33 + v20;
    if (v34)
    {
      goto LABEL_21;
    }

    *(v32 + 8 * v25) = v35;
LABEL_7:
    sub_1D986B804(v1, &qword_1ECB484C8, &qword_1D9930168);
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      OUTLINED_FUNCTION_7();
      return;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v14;
    if (v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  sub_1D992BFC4();
  __break(1u);
}

uint64_t sub_1D9882AAC()
{
  OUTLINED_FUNCTION_13_0();
  sub_1D992B1E4();
  OUTLINED_FUNCTION_6();
  MEMORY[0x1EEE9AC00](*(v1 + 64));
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_27();
  if (sub_1D992AE54() & 1) != 0 && (v2 = type metadata accessor for PreprocessorResultCounterKey(0), v3 = *(v2 + 24), sub_1D992B1D4(), OUTLINED_FUNCTION_0_12(), sub_1D9882BDC(v4, v5, MEMORY[0x1E69CE6D0]), OUTLINED_FUNCTION_29_1(), v6 = OUTLINED_FUNCTION_24_0(), v7(v6), (v3))
  {
    v8 = *(v0 + *(v2 + 28)) ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D9882BDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9882C64(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  v4 = OUTLINED_FUNCTION_27();
  v5(v4);
  return a2;
}

uint64_t sub_1D9882CC0()
{
  v1 = OUTLINED_FUNCTION_13_0();
  v2(v1);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D9882D14(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D992AE84();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FullyQualifiedMessageTypeKey(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FullyQualifiedMessageTypeKey(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1D9882DD8(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9882E74(uint64_t a1)
{
  sub_1D992AE84();
  if (v1 <= 0x3F)
  {
    sub_1D9882F58();
    if (v2 <= 0x3F)
    {
      sub_1D9882FA0(319);
      if (v3 <= 0x3F)
      {
        sub_1D98830AC(319);
        if (v4 <= 0x3F)
        {
          sub_1D9883164(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

unint64_t sub_1D9882F58()
{
  result = qword_1ECB47880;
  if (!qword_1ECB47880)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ECB47880);
  }

  return result;
}

void sub_1D9882FA0(uint64_t a1)
{
  if (!qword_1ECB47EF8[0])
  {
    v2 = type metadata accessor for PreprocessorCounterKey(255);
    v3 = sub_1D9882BDC(&qword_1ECB47CA0, type metadata accessor for PreprocessorCounterKey, &unk_1D9930328);
    v4 = sub_1D9883058();
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E76D8];
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for CounterDigest(a1, v7);
    if (!v6)
    {
      atomic_store(v5, qword_1ECB47EF8);
    }
  }
}

unint64_t sub_1D9883058()
{
  result = qword_1ECB47898;
  if (!qword_1ECB47898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47898);
  }

  return result;
}

void sub_1D98830AC(uint64_t a1)
{
  if (!qword_1ECB47EF0)
  {
    v2 = type metadata accessor for PreprocessorResultCounterKey(255);
    v3 = sub_1D9882BDC(&qword_1ECB47BC0, type metadata accessor for PreprocessorResultCounterKey, &unk_1D99302C0);
    v4 = sub_1D9883058();
    v7[0] = v2;
    v7[1] = MEMORY[0x1E69E76D8];
    v7[2] = v3;
    v7[3] = v4;
    v5 = type metadata accessor for CounterDigest(a1, v7);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECB47EF0);
    }
  }
}

void sub_1D9883164(uint64_t a1)
{
  if (!qword_1ECB479A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB484E0, &qword_1D99301F8);
    v1 = sub_1D992B804();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB479A8);
    }
  }
}

uint64_t sub_1D98831F0(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    result = sub_1D992B1E4();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PreprocessorResultCounterKey.RedactionResult(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for PreprocessorResultCounterKey.RedactionResult(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98833F8()
{
  result = qword_1ECB484E8;
  if (!qword_1ECB484E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB484E8);
  }

  return result;
}

unint64_t sub_1D98834E0()
{
  result = qword_1ECB47BC8;
  if (!qword_1ECB47BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47BC8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_29_1()
{

  return sub_1D992BC34();
}

uint64_t OUTLINED_FUNCTION_30_0()
{

  return type metadata accessor for PreprocessorTelemetry(0);
}

uint64_t OUTLINED_FUNCTION_32_0()
{

  return sub_1D992C074();
}

_BYTE *storeEnumTagSinglePayload for PlatformFeatures(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D98836A4()
{
  result = qword_1ECB484F0;
  if (!qword_1ECB484F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB484F0);
  }

  return result;
}

uint64_t sub_1D98836F8(char a1)
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](a1 & 1);
  return sub_1D992C0C4();
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D9883764(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D98837A4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9883800()
{
  sub_1D986D4C8((v0 + 2), &v7);
  if (v8)
  {
    sub_1D986D53C(&v7, v9);
    v1 = v10;
    v2 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v3 = (*(v2 + 8))(v1, v2);
    *&v7 = 32;
    *(&v7 + 1) = 0xE100000000000000;
    MEMORY[0x1DA739C30](v3);

    v4 = *(&v7 + 1);
    v5 = v7;
    __swift_destroy_boxed_opaque_existential_1(v9);
  }

  else
  {
    sub_1D988395C(&v7);
    v5 = 0;
    v4 = 0xE000000000000000;
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1D992BD64();

  strcpy(v9, "DELETE FROM ");
  BYTE5(v9[1]) = 0;
  HIWORD(v9[1]) = -5120;
  MEMORY[0x1DA739C30](*v0, v0[1]);
  MEMORY[0x1DA739C30](10, 0xE100000000000000);
  MEMORY[0x1DA739C30](v5, v4);

  MEMORY[0x1DA739C30](59, 0xE100000000000000);
  return v9[0];
}

uint64_t sub_1D988395C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB484F8, &qword_1D99304F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D98839C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D9883A20(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 24);
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

uint64_t sub_1D9883A60(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_1D9883AE8()
{
  sub_1D992C074();
  MEMORY[0x1DA73A5D0](0);
  return sub_1D992C0C4();
}

uint64_t sub_1D9883B34(uint64_t a1)
{
  sub_1D992C074();
  sub_1D9883AC0();
  return sub_1D992C0C4();
}

uint64_t sub_1D9883B7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23[1] = a1;
  v5 = *(a2 + 16);
  v23[0] = sub_1D992BC04();
  OUTLINED_FUNCTION_0();
  v7 = v6;
  MEMORY[0x1EEE9AC00](((*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v23 - v9;
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](*(v13 + 64));
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v3[3];
  v17 = v3[4];
  v18 = __swift_project_boxed_opaque_existential_1(v3, v16);
  v19 = v17;
  v20 = *(a2 + 24);
  (*(v20 + 16))(v18, v16, v19, v5, v20);
  if (__swift_getEnumTagSinglePayload(v10, 1, v5) == 1)
  {
    (*(v7 + 8))(v10, v23[0]);
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    v24 = 0;
    v25 = 0xE000000000000000;
    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000018, 0x80000001D9937810);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECB48500, &unk_1D9932390);
    sub_1D992BE24();
    sub_1D98DCEB4(v24, v25, 0xD00000000000006DLL, 0x80000001D99377A0, 0x6F74286574697277, 0xEA0000000000293ALL);

    type metadata accessor for ProtoUnion.ProtoUnionError(0, v5, v20, v21);
    swift_getWitnessTable();
    swift_allocError();
    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v15, v10, v5);
    sub_1D992B784();
    sub_1D992B9D4();
    return (*(v12 + 8))(v15, v5);
  }
}

uint64_t sub_1D9883EC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v10 = type metadata accessor for ProtoUnionReader(0, a2, a3, a5);
  OUTLINED_FUNCTION_0();
  v12 = v11;
  MEMORY[0x1EEE9AC00](((*(v13 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = &v19 - v14;
  result = sub_1D9884084(a1, a2, a3, &v19 - v14);
  if (!v5)
  {
    sub_1D9884444(v10, &v19);
    if (v20)
    {
      (*(v12 + 8))(v15, v10);
      sub_1D986D53C(&v19, v21);
      sub_1D986D53C(v21, &v19);
      return sub_1D986D53C(&v19, a4);
    }

    else
    {
      sub_1D9884760(&v19);
      sub_1D992B484();
      v17 = sub_1D98847C8();
      OUTLINED_FUNCTION_2_4(v17);
      OUTLINED_FUNCTION_1_6();
      (*(v18 + 104))();
      swift_willThrow();
      return (*(v12 + 8))(v15, v10);
    }
  }

  return result;
}

uint64_t sub_1D9884084@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  OUTLINED_FUNCTION_0();
  v38 = v7;
  MEMORY[0x1EEE9AC00](*(v8 + 64));
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - v11;
  v13 = sub_1D992BC04();
  OUTLINED_FUNCTION_0();
  v15 = v14;
  MEMORY[0x1EEE9AC00](*(v16 + 64));
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v33 - v19;
  __swift_storeEnumTagSinglePayload(&v33 - v19, 1, 1, a2);
  v49 = xmmword_1D9930500;
  v47 = 0;
  v48 = 0;
  v39 = a2;
  v40 = a3;
  v41 = v20;
  v42 = &v47;
  v43 = &v49;
  v44 = a1;
  v21 = v50;
  sub_1D992B964();
  if (!v21)
  {
    v35 = a3;
    v50 = v12;
    v22 = v38;
    v36 = v10;
    (*(v15 + 16))(v18, v20, v13);
    if (__swift_getEnumTagSinglePayload(v18, 1, a2) == 1)
    {
      (*(v15 + 8))(v18, v13);
    }

    else
    {
      v34 = v13;
      v23 = *(v22 + 32);
      v24 = v50;
      v23(v50, v18, a2);
      v25 = *(&v49 + 1);
      if (*(&v49 + 1) >> 60 == 15)
      {
        (*(v22 + 8))(v24, a2);
      }

      else
      {
        v26 = v23;
        v27 = v47;
        if (v47)
        {
          v28 = v49;
          v38 = v48;
          v26(v36, v50, a2);
          v46 = 0;
          memset(v45, 0, sizeof(v45));
          sub_1D9884BD0(v28, v25, v27, v38, v45, a2, v35, v37);
          v29 = v49;
          sub_1D987BA38(v28, v25);
          sub_1D9866358(v29, *(&v29 + 1));
          return (*(v15 + 8))(v20, v34);
        }

        (*(v22 + 8))(v50, a2);
      }

      v13 = v34;
    }

    sub_1D992B484();
    v31 = sub_1D98847C8();
    OUTLINED_FUNCTION_2_4(v31);
    OUTLINED_FUNCTION_1_6();
    (*(v32 + 104))();
    swift_willThrow();
  }

  sub_1D9866358(v49, *(&v49 + 1));
  return (*(v15 + 8))(v20, v13);
}

uint64_t sub_1D9884444@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2;
  v7 = a1[11];
  sub_1D9884820(v4 + v7, &v21);
  if (*(&v22 + 1))
  {
    return sub_1D986D53C(&v21, a2);
  }

  v20 = a2;
  sub_1D9884760(&v21);
  v9 = (v4 + a1[10]);
  v10 = *v9;
  v11 = v9[1];
  v12 = sub_1D992BC04();
  v24 = &v19;
  OUTLINED_FUNCTION_0();
  v19 = v13;
  MEMORY[0x1EEE9AC00](((*(v14 + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = &v19 - v15;
  result = sub_1D992B474();
  if (!v3)
  {
    v17 = v19;
    if (__swift_getEnumTagSinglePayload(v16, 1, v10) == 1)
    {
      (*(v17 + 8))(v16, v12);
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
    }

    else
    {
      *(&v22 + 1) = v10;
      v23 = v11;
      __swift_allocate_boxed_opaque_existential_1(&v21);
      OUTLINED_FUNCTION_1_6();
      (*(v18 + 32))();
    }

    sub_1D9884890(&v21, v4 + v7);
    return sub_1D9884820(v4 + v7, v20);
  }

  return result;
}

uint64_t sub_1D9884760(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491C0, &unk_1D99305E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D98847C8()
{
  result = qword_1ECB479C0;
  if (!qword_1ECB479C0)
  {
    sub_1D992B484();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB479C0);
  }

  return result;
}

uint64_t sub_1D9884820(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491C0, &unk_1D99305E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9884890(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB491C0, &unk_1D99305E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9884900(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, uint64_t a7)
{
  v13 = (*(a7 + 24))(a6, a7);
  if (v13)
  {
    v15 = v13;
    v16 = v14;
    v17 = sub_1D992BC04();
    (*(*(v17 - 8) + 8))(a2, v17);
    (*(*(a6 - 8) + 16))(a2, a1, a6);
    __swift_storeEnumTagSinglePayload(a2, 0, 1, a6);
    *a3 = v15;
    a3[1] = v16;
    v18 = [a5 readData];
    if (v18)
    {
      v19 = v18;
      v20 = sub_1D992AD84();
      v22 = v21;
    }

    else
    {
      v20 = 0;
      v22 = 0xF000000000000000;
    }

    v26 = *a4;
    v27 = a4[1];
    *a4 = v20;
    a4[1] = v22;
    return sub_1D9866358(v26, v27);
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      swift_once();
    }

    sub_1D992BD64();
    MEMORY[0x1DA739C30](0xD000000000000021, 0x80000001D9937770);
    sub_1D992BF54();
    sub_1D98DCEB4(0, 0xE000000000000000, 0xD00000000000006DLL, 0x80000001D99377A0, 0x6F72662864616572, 0xEB00000000293A6DLL);

    v23 = sub_1D992B484();
    sub_1D98847C8();
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x1E6999BA8], v23);
    return swift_willThrow();
  }
}

__n128 sub_1D9884BD0@<Q0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  OUTLINED_FUNCTION_1_6();
  (*(v16 + 32))(a8);
  v18 = type metadata accessor for ProtoUnionReader(0, a6, a7, v17);
  v19 = (a8 + v18[9]);
  *v19 = a1;
  v19[1] = a2;
  v20 = (a8 + v18[10]);
  *v20 = a3;
  v20[1] = a4;
  v21 = a8 + v18[11];
  result = *a5;
  v23 = *(a5 + 16);
  *v21 = *a5;
  *(v21 + 16) = v23;
  *(v21 + 32) = *(a5 + 32);
  return result;
}

uint64_t getEnumTagSinglePayload for BiomeIdentifier(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *sub_1D9884D00(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1D9884DA4(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1D9885190();
    if (v2 <= 0x3F)
    {
      sub_1D98851DC(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D9884E4C(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1D9884FA0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) + 23) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D9885190()
{
  result = qword_1ECB479D0;
  if (!qword_1ECB479D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECB48500, &unk_1D9932390);
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1ECB479D0);
  }

  return result;
}

void sub_1D98851DC(uint64_t a1)
{
  if (!qword_1ECB479D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1ECB48500, &unk_1D9932390);
    v1 = sub_1D992BC04();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECB479D8);
    }
  }
}

void sub_1D988525C(void *a1)
{
  v2 = sub_1D992B044();
  if (v2)
  {
    v7 = v2;
    sub_1D986621C(v2);
  }

  else
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    sub_1D992BD64();

    v3 = [a1 description];
    v4 = sub_1D992B624();
    v6 = v5;

    MEMORY[0x1DA739C30](v4, v6);

    MEMORY[0x1DA739C30](0x45796E4120736120, 0xEC000000746E6576);
    sub_1D98DCEB4(0x7420656C62616E55, 0xEF2070617277206FLL, 0xD00000000000006FLL, 0x80000001D9937A60, 0x293A5F28646E6573, 0xE800000000000000);
  }
}

id sub_1D9885410()
{
  v0 = type metadata accessor for ResourceType(0);
  MEMORY[0x1EEE9AC00](*(*(v0 - 8) + 64));
  v2 = &v15 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for PersistentStorage();
  v3 = sub_1D992AD44();
  OUTLINED_FUNCTION_6();
  v5 = v4;
  v7 = v6[8];
  MEMORY[0x1EEE9AC00](v6);
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF0;
  sub_1D98F97F8();
  v9 = type metadata accessor for DataVault(0);
  v10 = objc_allocWithZone(v9);
  (*(v5 + 16))(v10 + OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory, &v15 - v8, v3);
  v15.receiver = v10;
  v15.super_class = v9;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  (*(v5 + 8))(&v15 - v8, v3);
  sub_1D98CB4C0(v2);

  MEMORY[0x1EEE9AC00](v12);
  sub_1D98C601C(&v15 - v8);
  sub_1D98876F0(v2);
  v13 = objc_allocWithZone(type metadata accessor for RawUnifiedStream());
  return sub_1D98855DC(&v15 - v8, 3, 0);
}

id sub_1D98855DC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source;
  *&v3[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___source] = 0;
  v9 = &v3[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner];
  *v9 = 0u;
  *(v9 + 1) = 0u;
  *(v9 + 4) = 0;
  if (qword_1ED8BF440 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1ED8BF440);
  }

  if (byte_1ED8BFBD1 != 1)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    sub_1D98DCEB4(0xD000000000000032, 0x80000001D9937AF0, 0xD00000000000006FLL, 0x80000001D9937A60, 0xD00000000000002DLL, 0x80000001D9937C20);
    goto LABEL_26;
  }

  type metadata accessor for PersistentStorage();
  v10 = OUTLINED_FUNCTION_4_4();
  if (a3)
  {
    if ((sub_1D98F900C() & 1) == 0)
    {
      if (qword_1ED8BF428 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      sub_1D98DCE30();
      MEMORY[0x1EEE9AC00]("ge representation.");
      OUTLINED_FUNCTION_2_5();
      v16 = sub_1D9887950;
LABEL_25:
      sub_1D98DD12C(v14 | v13, v12 | 0x8000000000000000, 0xD00000000000002DLL, v15 | 0x8000000000000000, v16, v11);

LABEL_26:
      v29 = sub_1D992AD44();
      (*(*(v29 - 8) + 8))(a1, v29);

      sub_1D9887898(*v9, *(v9 + 1), *(v9 + 2), *(v9 + 3), *(v9 + 4));
      type metadata accessor for RawUnifiedStream();
      swift_deallocPartialClassInstance();
      return 0;
    }
  }

  else if ((sub_1D98F8F10(v10) & 1) == 0)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    sub_1D98DCE30();
    MEMORY[0x1EEE9AC00]("ge representation.");
    OUTLINED_FUNCTION_2_5();
    v16 = sub_1D98878FC;
    goto LABEL_25;
  }

  if (qword_1ED8BF428 != -1)
  {
    OUTLINED_FUNCTION_0_14();
    swift_once();
  }

  sub_1D992BD64();

  v32 = 0xD000000000000015;
  v33 = 0x80000001D9937C50;
  v17 = sub_1D992AD44();
  sub_1D9887904();
  v18 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v18);

  MEMORY[0x1DA739C30](0x6E6F64616572202CLL, 0xEC000000203A796CLL);
  if (a3)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (a3)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x1DA739C30](v19, v20);

  sub_1D986A454(v32, v33, 0xD00000000000006FLL, 0x80000001D9937A60, 0xD00000000000002DLL, 0x80000001D9937C20);

  sub_1D986E35C(0, &qword_1ECB48080, 0x1E698F130);
  v21 = sub_1D992AD24();
  v23 = sub_1D9885D68(v21, v22, 0x100000, a2);
  v24 = OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream_storeConfig;
  *&v3[OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream_storeConfig] = v23;
  v25 = sub_1D992B614();
  v26 = *&v4[v24];
  type metadata accessor for RawUnifiedStreamMessage();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v31.receiver = v4;
  v31.super_class = type metadata accessor for RawUnifiedStream();
  v28 = objc_msgSendSuper2(&v31, sel_initWithPrivateStreamIdentifier_storeConfig_eventDataClass_, v25, v26, ObjCClassFromMetadata);

  (*(*(v17 - 8) + 8))(a1, v17);
  return v28;
}

uint64_t sub_1D9885B80()
{
  sub_1D992BD64();
  sub_1D992AD44();
  sub_1D9887904();
  v0 = sub_1D992BF34();

  MEMORY[0x1DA739C30](0x6F6E2073656F6420, 0xEF74736978652074);
  return v0;
}

unint64_t sub_1D9885C28()
{
  sub_1D992BD64();

  sub_1D992AD44();
  sub_1D9887904();
  v0 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v0);

  return 0xD00000000000001ELL;
}

uint64_t sub_1D9885CC8(uint64_t a1)
{
  sub_1D992BD64();
  MEMORY[0x1DA739C30](0xD000000000000015, 0x80000001D9937C70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48A60, &unk_1D9931CC0);
  sub_1D992BE24();
  return 0;
}

id sub_1D9885D68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = sub_1D992B614();

  v8 = [v6 initWithStoreBasePath:v7 segmentSize:a3 protectionClass:a4];

  return v8;
}

void *sub_1D9885DF4@<X0>(void *a1@<X8>)
{
  v3 = v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner;
  v5 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner);
  v4 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner + 8);
  v6 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner + 16);
  v7 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner + 24);
  v8 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner + 32);
  if (v5)
  {
    v9 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner + 8);
    v10 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner);
    v11 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream____lazy_storage___pruner + 16);
    v12 = v7;
    v13 = v8;
  }

  else
  {
    v14 = *(v1 + OBJC_IVAR____TtC13SiriAnalytics16RawUnifiedStream_storeConfig);
    v13 = 0x80000001D9937830;
    v15 = objc_allocWithZone(MEMORY[0x1E698F120]);
    v16 = v14;
    v9 = 0x40F5180000000000;
    v17 = [v15 initPruneOnAccess:0 filterByAgeOnRead:0 maxAge:0 maxStreamSize:86400.0];
    [v16 setPruningPolicy_];

    v18 = *v3;
    v22 = *(v3 + 16);
    v23 = *(v3 + 8);
    v20 = *(v3 + 32);
    v21 = *(v3 + 24);
    *v3 = v16;
    *(v3 + 8) = xmmword_1D99306E0;
    *(v3 + 24) = 0xD000000000000027;
    *(v3 + 32) = 0x80000001D9937830;
    v12 = 0xD000000000000027;
    v10 = v16;
    sub_1D9887898(v18, v23, v22, v21, v20);
    v11 = 0x4000000;
  }

  result = sub_1D9887970(v5, v4, v6, v7, v8);
  *a1 = v10;
  a1[1] = v9;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  return result;
}

id RawUnifiedStream.__allocating_init(privateStreamIdentifier:storeConfig:eventDataClass:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_6_5(a1, a2);

  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  v6 = [objc_allocWithZone(v3) initWithPrivateStreamIdentifier:v5 storeConfig:v2 eventDataClass:ObjCClassFromMetadata];

  return v6;
}

id RawUnifiedStream.__allocating_init(publicStream:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);

  return [v3 initWithPublicStream_];
}

id RawUnifiedStream.__allocating_init(restrictedStreamIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);
  v4 = sub_1D992B614();

  v5 = [v3 initWithRestrictedStreamIdentifier_];

  return v5;
}

id RawUnifiedStream.__allocating_init(restrictedStreamIdentifier:protectionClass:)()
{
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_4_4();
  v2 = sub_1D992B614();

  v3 = [v1 initWithRestrictedStreamIdentifier:v2 protectionClass:v0];

  return v3;
}

id RawUnifiedStream.__allocating_init(restrictedStreamIdentifier:storeConfig:)()
{
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_4_4();
  v2 = sub_1D992B614();

  v3 = [v1 initWithRestrictedStreamIdentifier:v2 storeConfig:v0];

  return v3;
}

id RawUnifiedStream.__allocating_init(restrictedStreamIdentifier:storeConfig:eventDataClass:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_6_5(a1, a2);

  if (ObjCClassFromMetadata)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  v6 = [objc_allocWithZone(v3) initWithRestrictedStreamIdentifier:v5 storeConfig:v2 eventDataClass:ObjCClassFromMetadata];

  return v6;
}

id sub_1D988641C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v7 = objc_allocWithZone(v4);
  v8 = sub_1D992B614();

  v9 = [v7 *a4];

  return v9;
}

id RawUnifiedStreamAdapter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RawUnifiedStreamAdapter.init()()
{
  type metadata accessor for RawUnifiedStream();
  *&v0[OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying] = sub_1D9885410();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for RawUnifiedStreamAdapter();
  return objc_msgSendSuper2(&v2, sel_init);
}

void sub_1D988665C(void *a1)
{
  if (*(v1 + OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying))
  {
    sub_1D986621C(a1);
  }
}

void sub_1D98866F4(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1D992BC94();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = *(v1 + OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying);
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1DA73A2C0](v4, a1);
      }

      else
      {
        v6 = *(a1 + 8 * v4 + 32);
      }

      v7 = v6;
      if (v5)
      {
        sub_1D986621C(v6);
      }

      ++v4;
    }

    while (v3 != v4);
  }
}

void sub_1D98867DC()
{
  if (*(v0 + OBJC_IVAR___SiriAnalyticsRawUnifiedStream_underlying))
  {
    sub_1D9885DF4(v2);
    v1 = objc_autoreleasePoolPush();
    sub_1D98870F8(v2);
    objc_autoreleasePoolPop(v1);

    v4 = v3;
    sub_1D988769C(&v4);
  }
}

id sub_1D98868B8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static RawUnifiedStream.vend()()
{
  type metadata accessor for ResourceType(0);
  *(v0 + 160) = OUTLINED_FUNCTION_20();

  return MEMORY[0x1EEE6DFA0](sub_1D9886984, 0, 0);
}

uint64_t sub_1D9886984()
{
  if (qword_1ED8BF440 != -1)
  {
    OUTLINED_FUNCTION_1_7(&qword_1ED8BF440);
  }

  if (byte_1ED8BFBD1 != 1)
  {
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    sub_1D98DCEB4(0xD000000000000032, 0x80000001D9937AF0, 0xD00000000000006FLL, 0x80000001D9937A60, 0x2928646E6576, 0xE600000000000000);
    goto LABEL_9;
  }

  receiver = v0[10].receiver;
  sub_1D986E35C(0, &qword_1ED8BDB90, off_1E8586448);
  v2 = sub_1D992B624();
  v4 = sub_1D988045C(v2, v3);
  v0[10].super_class = v4;
  type metadata accessor for PersistentStorage();
  v5 = sub_1D992AD44();
  v0[11].receiver = v5;
  OUTLINED_FUNCTION_6();
  v7 = v6;
  v0[11].super_class = v6;
  v0[12].receiver = *(v8 + 64);
  v9 = swift_task_alloc();
  sub_1D98F97F8();
  v10 = type metadata accessor for DataVault(0);
  v11 = objc_allocWithZone(v10);
  v12 = OBJC_IVAR___SiriAnalyticsDataVault_containingDirectory;
  v13 = *(v7 + 2);
  v0[12].super_class = v13;
  v0[13].receiver = ((v7 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000);
  (v13)(&v11[v12], v9, v5);
  v0[9].receiver = v11;
  v0[9].super_class = v10;
  v14 = objc_msgSendSuper2(v0 + 9, sel_init);
  v15 = *(v7 + 1);
  v0[13].super_class = v15;
  v0[14].receiver = ((v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000);
  (v15)(v9, v5);

  sub_1D98CB4C0(receiver);

  v16 = sub_1D98C6250();
  LOBYTE(v5) = v17;
  sub_1D98876F0(receiver);
  if (v5)
  {

LABEL_9:

    super_class = v0->super_class;

    return super_class(0, 0);
  }

  v0[14].super_class = swift_task_alloc();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48440, &qword_1D9930058);
  v0[15].receiver = v20;
  v0[15].super_class = *(*(v20 - 8) + 64);
  v21 = OUTLINED_FUNCTION_20();
  v0[16].receiver = v21;
  v0[1].receiver = v0;
  v0[3].super_class = v21;
  v0[1].super_class = sub_1D9886D54;
  v22 = swift_continuation_init();
  v0[8].super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48448, &qword_1D9930060);
  v0[5].receiver = MEMORY[0x1E69E9820];
  v0[5].super_class = 1107296256;
  v0[6].receiver = sub_1D98804D0;
  v0[6].super_class = &block_descriptor_0;
  v0[7].receiver = v22;
  [(objc_class *)v4 vendResource:v16 readonly:1 completion:&v0[5]];

  return MEMORY[0x1EEE6DEC8](&v0[1]);
}

uint64_t sub_1D9886D54()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1D9887068;
  }

  else
  {
    v2 = sub_1D9886E64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9886E64()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];
  v4 = v0[22];
  v5 = v0[23];
  v6 = OUTLINED_FUNCTION_20();
  sub_1D98805EC(v1, v6);
  v7 = *v6;
  v8 = *(v6 + 1);
  (*(v5 + 32))(v2, &v6[*(v3 + 48)], v4);

  type metadata accessor for SandboxExtension();
  v9 = swift_allocObject();
  *(v9 + 24) = v8;
  *(v9 + 32) = 0;
  *(v9 + 40) = 1;
  *(v9 + 16) = v7;
  sub_1D988E70C();
  v10 = v0[29];
  v11 = v0[27];
  v12 = v0[25];
  v14 = v0[21];
  v13 = v0[22];
  v15 = OUTLINED_FUNCTION_20();
  v12(v15, v10, v13);
  v16 = objc_allocWithZone(type metadata accessor for RawUnifiedStream());
  v17 = sub_1D98855DC(v15, 3, 1);

  v11(v10, v13);

  if (!v17)
  {

    v9 = 0;
  }

  v18 = v0[1];

  return v18(v17, v9);
}

uint64_t sub_1D9887068(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

void sub_1D98870F8(uint64_t a1)
{
  p_aBlock = 0xD000000000000077;
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = *a1;
  v7 = objc_allocWithZone(MEMORY[0x1E698F140]);
  swift_bridgeObjectRetain_n();
  v8 = v6;
  v9 = sub_1D98875A0(v5, v4, 2, v6);
  if (!v9)
  {

    if (qword_1ED8BF428 == -1)
    {
LABEL_7:
      sub_1D98DCEB4(p_aBlock - 81, 0x80000001D9937C90, 0xD000000000000077, 0x80000001D9937CC0, 0x2928656E757270, 0xE700000000000000);
      return;
    }

LABEL_9:
    swift_once();
    goto LABEL_7;
  }

  v10 = v9;
  v17 = v1;
  v18 = v6;
  if (qword_1ED8BF428 != -1)
  {
    swift_once();
  }

  sub_1D992BD64();

  aBlock = 0x20676E696E757250;
  v20 = 0xEF206D6165727473;
  MEMORY[0x1DA739C30](v5, v4);
  MEMORY[0x1DA739C30](0xD000000000000010, 0x80000001D9937D40);
  v25 = *(a1 + 16);
  v11 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v11);

  MEMORY[0x1DA739C30](0x736574796220, 0xE600000000000000);
  sub_1D986A454(0x20676E696E757250, 0xEF206D6165727473, 0xD000000000000077, 0x80000001D9937CC0, 0x2928656E757270, 0xE700000000000000);

  [v10 pruneStreamToMaxStreamSizeInBytes_];
  aBlock = 0;
  v20 = 0xE000000000000000;
  sub_1D992BD64();
  p_aBlock = &aBlock;
  MEMORY[0x1DA739C30](0x20676E696E757250, 0xEF206D6165727473);
  MEMORY[0x1DA739C30](v5, v4);
  MEMORY[0x1DA739C30](0x616D206874697720, 0xEF203A6567612078);
  v12 = *(a1 + 8);
  sub_1D992B8F4();
  MEMORY[0x1DA739C30](0x73646E6F63657320, 0xE800000000000000);
  sub_1D986A454(aBlock, v20, 0xD000000000000077, 0x80000001D9937CC0, 0x2928656E757270, 0xE700000000000000);

  [v10 pruneStreamToMaxSegmentAge_];
  v13 = type metadata accessor for RawUnifiedStreamMessage();
  v14 = objc_allocWithZone(MEMORY[0x1E698F318]);
  v15 = sub_1D9887614(v5, v4, v18, v13);
  v23 = j_nullsub_1;
  v24 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v20 = 1107296256;
  v21 = sub_1D9887574;
  v22 = &block_descriptor_13;
  v16 = _Block_copy(&aBlock);

  [v15 pruneExpiredEventsWithBlock_];

  _Block_release(v16);
  if (swift_isEscapingClosureAtFileLocation())
  {
    __break(1u);
    goto LABEL_9;
  }
}

id sub_1D98875A0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = sub_1D992B614();

  v8 = [v4 initWithStream:v7 permission:a3 config:a4];

  return v8;
}

id sub_1D9887614(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = sub_1D992B614();

  if (a4)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  }

  else
  {
    ObjCClassFromMetadata = 0;
  }

  v9 = [v4 initWithPrivateStreamIdentifier:v7 storeConfig:a3 eventDataClass:ObjCClassFromMetadata];

  return v9;
}

uint64_t sub_1D98876F0(uint64_t a1)
{
  v2 = type metadata accessor for ResourceType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1D9887898(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D98878D8(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1D992BC94();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

unint64_t sub_1D9887904()
{
  result = qword_1ED8BD8F0;
  if (!qword_1ED8BD8F0)
  {
    sub_1D992AD44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8BD8F0);
  }

  return result;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_1D986A8BC(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_12(uint64_t a1)
{
}

{
  return __swift_destroy_boxed_opaque_existential_1((a1 + 32));
}

void *sub_1D9887970(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
    v5 = result;
  }

  return result;
}

uint64_t sub_1D98879C8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_1D9887B40(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  v11 = *(v8 + 64);
  if (v9)
  {
    v12 = *(v8 + 64);
  }

  else
  {
    v12 = v11 + 1;
  }

  v13 = 8 * v12;
  v14 = a3 >= v10;
  v15 = a3 - v10;
  if (v15 != 0 && v14)
  {
    if (v12 <= 3)
    {
      v16 = ((v15 + ~(-1 << v13)) >> v13) + 1;
      if (HIWORD(v16))
      {
        v6 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v6 = v17;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v12] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_57:
        __break(1u);
        break;
      case 4:
        *&a1[v12] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            if (a2 >= v9)
            {
              if (v11 <= 3)
              {
                v22 = ~(-1 << (8 * v11));
              }

              else
              {
                v22 = -1;
              }

              if (v11)
              {
                v23 = v22 & (a2 - v9);
                if (v11 <= 3)
                {
                  v24 = v11;
                }

                else
                {
                  v24 = 4;
                }

                bzero(a1, v11);
                switch(v24)
                {
                  case 2:
                    *a1 = v23;
                    break;
                  case 3:
                    *a1 = v23;
                    a1[2] = BYTE2(v23);
                    break;
                  case 4:
                    *a1 = v23;
                    break;
                  default:
                    *a1 = v23;
                    break;
                }
              }
            }

            else
            {
              v21 = a2 + 1;

              __swift_storeEnumTagSinglePayload(a1, v21, v9, v7);
            }
          }
        }

        break;
    }
  }

  else
  {
    v18 = ~v10 + a2;
    if (v12 < 4)
    {
      v19 = (v18 >> v13) + 1;
      if (v12)
      {
        v20 = v18 & ~(-1 << v13);
        bzero(a1, v12);
        if (v12 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v12 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v18;
        }
      }
    }

    else
    {
      bzero(a1, v12);
      *a1 = v18;
      v19 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v12] = v19;
        break;
      case 2:
        *&a1[v12] = v19;
        break;
      case 3:
        goto LABEL_57;
      case 4:
        *&a1[v12] = v19;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1D9887E00(uint64_t a1, uint64_t a2)
{
  sub_1D992BD64();

  MEMORY[0x1DA739C30](a1, a2);
  MEMORY[0x1DA739C30](15145, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t sub_1D9887E94(uint64_t a1)
{
  if (*(a1 + 16) && (sub_1D9889410(1701667182, 0xE400000000000000), (v1 & 1) != 0))
  {
    v2 = OUTLINED_FUNCTION_0_15();
    sub_1D986C8B8(v2, v3, v4);

    v5 = OUTLINED_FUNCTION_0_15();
    v8 = sub_1D9892478(v5, v6, v7);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_0_15();
    sub_1D986C908(v11, v12, v13);
    if (v10)
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

uint64_t sub_1D9887F3C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1D9887E94(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1D9887FAC()
{
  v2 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for PreprocessorCounterKey(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = OUTLINED_FUNCTION_6_6();
  sub_1D988943C(v7);
  OUTLINED_FUNCTION_18_0();
  if (__OFADD__(v10, v11))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v8;
  v13 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485D0, &qword_1D9930960);
  result = OUTLINED_FUNCTION_10_3(v14);
  if ((result & 1) == 0)
  {
LABEL_5:
    *v1 = v23;
    if ((v13 & 1) == 0)
    {
      sub_1D988B4FC(v0, v6, type metadata accessor for PreprocessorCounterKey);
      v17 = OUTLINED_FUNCTION_9_2();
      result = sub_1D989D024(v17, v18, 0, v23);
    }

    v19 = v23[7];
    v20 = *(v19 + 8 * v12);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v19 + 8 * v12) = v22;
      return result;
    }

    goto LABEL_10;
  }

  result = sub_1D988943C(v0);
  if ((v13 & 1) == (v16 & 1))
  {
    v12 = result;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98880F0()
{
  v2 = OUTLINED_FUNCTION_13_0();
  type metadata accessor for PreprocessorResultCounterKey(v2);
  OUTLINED_FUNCTION_5();
  MEMORY[0x1EEE9AC00](*(v3 + 64));
  OUTLINED_FUNCTION_13();
  v6 = v5 - v4;
  swift_isUniquelyReferenced_nonNull_native();
  v7 = OUTLINED_FUNCTION_6_6();
  sub_1D98894FC(v7);
  OUTLINED_FUNCTION_18_0();
  if (__OFADD__(v10, v11))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v12 = v8;
  v13 = v9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485C8, &qword_1D9930958);
  result = OUTLINED_FUNCTION_10_3(v14);
  if ((result & 1) == 0)
  {
LABEL_5:
    *v1 = v23;
    if ((v13 & 1) == 0)
    {
      sub_1D988B4FC(v0, v6, type metadata accessor for PreprocessorResultCounterKey);
      v17 = OUTLINED_FUNCTION_9_2();
      result = sub_1D989D050(v17, v18, 0, v23);
    }

    v19 = v23[7];
    v20 = *(v19 + 8 * v12);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    if (!v21)
    {
      *(v19 + 8 * v12) = v22;
      return result;
    }

    goto LABEL_10;
  }

  result = sub_1D98894FC(v0);
  if ((v13 & 1) == (v16 & 1))
  {
    v12 = result;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D9888234(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for StreamTelemetryKey(0);
  MEMORY[0x1EEE9AC00](*(*(v4 - 8) + 64));
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v20 = v7;
  v8 = sub_1D9889650(a1);
  if (__OFADD__(*(v7 + 16), (v9 & 1) == 0))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v10 = v8;
  v11 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485D8, &qword_1D9930968);
  result = sub_1D992BE34();
  v13 = v20;
  if ((result & 1) == 0)
  {
LABEL_5:
    *v2 = v13;
    if ((v11 & 1) == 0)
    {
      sub_1D988B4FC(a1, v6, type metadata accessor for StreamTelemetryKey);
      result = sub_1D989D174(v10, v6, 0, v13);
    }

    v15 = *(v13 + 56);
    v16 = *(v15 + 4 * v10);
    v17 = __CFADD__(v16, 1);
    v18 = v16 + 1;
    if (!v17)
    {
      *(v15 + 4 * v10) = v18;
      return result;
    }

    goto LABEL_10;
  }

  result = sub_1D9889650(a1);
  if ((v11 & 1) == (v14 & 1))
  {
    v10 = result;
    goto LABEL_5;
  }

LABEL_11:
  result = sub_1D992BFC4();
  __break(1u);
  return result;
}

uint64_t sub_1D98883B4(uint64_t a1, uint64_t a2)
{
  if (sub_1D992AE54())
  {
    v4 = type metadata accessor for StreamTelemetryKey(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D9888408(uint64_t a1)
{
  sub_1D992AE84();
  sub_1D988B5B0(&qword_1ED8BF060);
  sub_1D992B5D4();
  v2 = type metadata accessor for StreamTelemetryKey(0);
  return MEMORY[0x1DA73A5D0](*(v1 + *(v2 + 20)));
}

uint64_t sub_1D9888478()
{
  sub_1D992C074();
  sub_1D992AE84();
  sub_1D988B5B0(&qword_1ED8BF060);
  sub_1D992B5D4();
  v1 = type metadata accessor for StreamTelemetryKey(0);
  MEMORY[0x1DA73A5D0](*(v0 + *(v1 + 20)));
  return sub_1D992C0C4();
}

uint64_t sub_1D9888500(uint64_t a1, uint64_t a2)
{
  sub_1D992C074();
  sub_1D992AE84();
  sub_1D988B5B0(&qword_1ED8BF060);
  sub_1D992B5D4();
  MEMORY[0x1DA73A5D0](*(v2 + *(a2 + 20)));
  return sub_1D992C0C4();
}

uint64_t OLEStreamTelemetry.__allocating_init()()
{
  v0 = swift_allocObject();
  OLEStreamTelemetry.init()();
  return v0;
}

uint64_t OLEStreamTelemetry.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  type metadata accessor for UnorderedMessagesService();
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  return v0;
}

uint64_t sub_1D988860C(uint64_t a1, char a2)
{
  v4 = (type metadata accessor for StreamTelemetryKey(0) - 8);
  MEMORY[0x1EEE9AC00](*(*v4 + 64));
  OUTLINED_FUNCTION_13();
  v7 = v6 - v5;
  sub_1D992AE84();
  OUTLINED_FUNCTION_5();
  (*(v8 + 16))(v7, a1);
  *(v7 + v4[7]) = a2;
  swift_beginAccess();
  sub_1D9888234(v7);
  OUTLINED_FUNCTION_1_8();
  sub_1D988B55C();
  return swift_endAccess();
}

uint64_t sub_1D98886F8()
{
  v1[5] = v0;
  v2 = type metadata accessor for StreamTelemetryKey(0);
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485A8, &qword_1D99307F8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D9888808, 0, 0);
}

id sub_1D9888808()
{
  v70 = v0[7];
  v74 = v0[6];
  v1 = v0[5];
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2 + 64;
  v4 = -1;
  v5 = -1 << *(v2 + 32);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  v6 = v4 & *(v2 + 64);
  v7 = (63 - v5) >> 6;
  v71 = v2;

  v8 = 0;
  v82 = MEMORY[0x1E69E7CC8];
  v75 = v0;
  v73 = v7;
  v69 = v3;
  while (1)
  {
    v0[12] = v82;
    if (!v6)
    {
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v43 = v0[10];
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485B0, &qword_1D9930800);
          __swift_storeEnumTagSinglePayload(v43, 1, 1, v44);
          v6 = 0;
          goto LABEL_11;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
        if (v6)
        {
          v8 = v9;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v9 = v8;
LABEL_10:
    v11 = v0[9];
    v10 = v0[10];
    v12 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v13 = v12 | (v9 << 6);
    sub_1D988B4FC(*(v71 + 48) + *(v70 + 72) * v13, v11, type metadata accessor for StreamTelemetryKey);
    v14 = *(*(v71 + 56) + 4 * v13);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485B0, &qword_1D9930800);
    v16 = *(v15 + 48);
    sub_1D988933C(v11, v10);
    *(v10 + v16) = v14;
    __swift_storeEnumTagSinglePayload(v10, 0, 1, v15);
LABEL_11:
    v17 = v0[11];
    sub_1D98893A0(v0[10], v17);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485B0, &qword_1D9930800);
    if (__swift_getEnumTagSinglePayload(v17, 1, v18) == 1)
    {

      v45 = v82[2];
      v46 = MEMORY[0x1E69E7CC0];
      if (v45)
      {
        v83 = MEMORY[0x1E69E7CC0];

        sub_1D992BDC4();
        v48 = sub_1D986C878(v82);
        v49 = v82;
        v51 = v50;
        v52 = 0;
        v53 = v82 + 8;
        v77 = v50;
        v79 = v45;
        while ((v48 & 0x8000000000000000) == 0 && v48 < 1 << *(v49 + 32))
        {
          v54 = v48 >> 6;
          if ((v53[v48 >> 6] & (1 << v48)) == 0)
          {
            goto LABEL_58;
          }

          if (*(v49 + 9) != v51)
          {
            goto LABEL_59;
          }

          v81 = v47;
          v55 = *(v49[7] + 8 * v48);
          v0 = v49;
          v56 = objc_allocWithZone(MEMORY[0x1E69CF420]);
          v57 = v55;
          result = [v56 init];
          if (!result)
          {
            __break(1u);
            return result;
          }

          [result setIngestionExtensionStreamStatistics_];

          sub_1D992BDA4();
          sub_1D992BDD4();
          sub_1D992BDE4();
          sub_1D992BDB4();
          v59 = 1 << *(v0 + 32);
          if (v48 >= v59)
          {
            goto LABEL_60;
          }

          v60 = v53[v54];
          if ((v60 & (1 << v48)) == 0)
          {
            goto LABEL_61;
          }

          v49 = v0;
          if (*(v0 + 9) != v51)
          {
            goto LABEL_62;
          }

          v61 = v60 & (-2 << (v48 & 0x3F));
          if (v61)
          {
            v59 = __clz(__rbit64(v61)) | v48 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v62 = v54 << 6;
            v63 = &v82[v54 + 9];
            v64 = v54 + 1;
            while (v64 < (v59 + 63) >> 6)
            {
              v66 = *v63++;
              v65 = v66;
              v62 += 64;
              ++v64;
              if (v66)
              {
                sub_1D988AD24(v48, v51, v81 & 1);
                v49 = v82;
                v59 = __clz(__rbit64(v65)) + v62;
                goto LABEL_45;
              }
            }

            sub_1D988AD24(v48, v51, v81 & 1);
            v49 = v82;
          }

LABEL_45:
          v47 = 0;
          ++v52;
          v48 = v59;
          v51 = v77;
          v0 = v75;
          if (v52 == v79)
          {

            v46 = v83;
            goto LABEL_47;
          }
        }

LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
      }

      else
      {
LABEL_47:
        if (!(v46 >> 62))
        {

          sub_1D992BF74();
          sub_1D986E35C(0, &qword_1ED8BD940, 0x1E69CF600);
          v67 = v46;
LABEL_49:
          v0[13] = v67;

          *(v0 + 120) = 0;
          v68 = swift_task_alloc();
          v0[14] = v68;
          *v68 = v0;
          v68[1] = sub_1D9888FE0;

          return sub_1D988D1DC(v67, v0 + 120);
        }
      }

      sub_1D986E35C(0, &qword_1ED8BD940, 0x1E69CF600);

      v67 = sub_1D992BEA4();

      goto LABEL_49;
    }

    v19 = v0[11];
    v20 = *(v19 + *(v18 + 48));
    sub_1D988933C(v19, v0[8]);
    if (v82[2])
    {
      v21 = sub_1D9889568();
      if (v22)
      {
        v23 = *(v82[7] + 8 * v21);
        goto LABEL_24;
      }
    }

    v76 = v20;
    v24 = v0[8];
    v25 = sub_1D9889188();
    v26 = sub_1D992AE84();
    v0 = *(v26 - 8);
    v27 = swift_task_alloc();
    v80 = v26;
    v72 = v0[2];
    v72(v27, v24, v26);
    v78 = v25;
    swift_isUniquelyReferenced_nonNull_native();
    sub_1D9889568();
    OUTLINED_FUNCTION_18_0();
    if (__OFADD__(v30, v31))
    {
      goto LABEL_56;
    }

    v32 = v28;
    v33 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485B8, &qword_1D9930808);
    if (sub_1D992BE34())
    {
      break;
    }

LABEL_19:
    if (v33)
    {
      v36 = v82[7];
      v37 = *(v36 + 8 * v32);
      *(v36 + 8 * v32) = v78;
      v23 = v78;

      v38 = v80;
    }

    else
    {
      v82[(v32 >> 6) + 8] |= 1 << v32;
      v38 = v80;
      v72(v82[6] + v0[9] * v32, v27, v80);
      *(v82[7] + 8 * v32) = v78;
      v39 = v82[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_63;
      }

      v23 = v78;
      v82[2] = v41;
    }

    (v0[1])(v27, v38);

    v0 = v75;
    v3 = v69;
    v20 = v76;
LABEL_24:
    v42 = &selRef_setPostProcessingCount_;
    if (!*(v0[8] + *(v74 + 20)))
    {
      v42 = &selRef_setPreProcessingCount_;
    }

    [v23 *v42];

    OUTLINED_FUNCTION_1_8();
    sub_1D988B55C();
    v7 = v73;
  }

  v34 = sub_1D9889568();
  if ((v33 & 1) == (v35 & 1))
  {
    v32 = v34;
    goto LABEL_19;
  }

  return sub_1D992BFC4();
}

uint64_t sub_1D9888FE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D98890F8, 0, 0);
}

uint64_t sub_1D98890F8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D9889188()
{
  result = [objc_allocWithZone(MEMORY[0x1E69CF418]) init];
  if (result)
  {
    v1 = result;
    sub_1D986E35C(0, qword_1ED8BD948, 0x1E69CF640);
    v2 = sub_1D992AE34();
    v4 = sub_1D988921C(v2, v3);
    [v1 setStreamId_];

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D988921C(uint64_t a1, unint64_t a2)
{
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = sub_1D992AD74();
  v6 = [v4 initWithBytesAsData_];

  sub_1D987106C(a1, a2);
  return v6;
}

uint64_t OLEStreamTelemetry.deinit()
{

  return v0;
}

uint64_t OLEStreamTelemetry.__deallocating_deinit()
{
  OLEStreamTelemetry.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for StreamTelemetryKey(uint64_t a1)
{
  result = qword_1ECB48098;
  if (!qword_1ECB48098)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D988933C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StreamTelemetryKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D98893A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB485A8, &qword_1D99307F8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D988943C(uint64_t a1)
{
  sub_1D992C074();
  sub_1D992AE84();
  sub_1D988B5B0(&qword_1ED8BF060);
  sub_1D992B5D4();
  v2 = *(a1 + *(type metadata accessor for PreprocessorCounterKey(0) + 20) + 8);
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](v2);
  v3 = sub_1D992C0C4();

  return sub_1D9889A38(a1, v3);
}

unint64_t sub_1D98894FC(uint64_t a1)
{
  sub_1D992C074();
  sub_1D9880F64();
  v2 = sub_1D992C0C4();

  return sub_1D9889BF0(a1, v2);
}

unint64_t sub_1D9889568()
{
  OUTLINED_FUNCTION_7_3();
  sub_1D992AE84();
  sub_1D988B5B0(&qword_1ED8BF060);
  sub_1D992B5C4();
  v0 = OUTLINED_FUNCTION_2_6();

  return sub_1D9889E68(v0, v1);
}

unint64_t sub_1D98895D8(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  OUTLINED_FUNCTION_5_5();
  sub_1D992C0A4();
  MEMORY[0x1DA73A5D0](a2);
  v4 = sub_1D992C0C4();

  return sub_1D988A000(v3, a2, v4);
}

unint64_t sub_1D9889650(uint64_t a1)
{
  sub_1D992C074();
  sub_1D992AE84();
  sub_1D988B5B0(&qword_1ED8BF060);
  sub_1D992B5D4();
  v2 = type metadata accessor for StreamTelemetryKey(0);
  MEMORY[0x1DA73A5D0](*(a1 + *(v2 + 20)));
  v3 = sub_1D992C0C4();

  return sub_1D988A07C(a1, v3);
}

unint64_t sub_1D98896FC()
{
  OUTLINED_FUNCTION_7_3();
  sub_1D992BCD4();
  v0 = OUTLINED_FUNCTION_2_6();

  return sub_1D988A220(v0, v1);
}

uint64_t sub_1D9889758(uint64_t a1, uint64_t a2, uint64_t (*a3)(_BYTE *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  OUTLINED_FUNCTION_5_5();
  a3(v10, a1, a2);
  sub_1D992C0C4();
  v7 = OUTLINED_FUNCTION_9_2();

  return a4(v7);
}

unint64_t sub_1D98897E0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_5_5();
  MEMORY[0x1DA73A600](a1);
  MEMORY[0x1DA73A600](a2);
  v4 = sub_1D992C0C4();

  return sub_1D988A9D0(a1, a2, v4);
}

unint64_t sub_1D9889858()
{
  OUTLINED_FUNCTION_7_3();
  sub_1D992BBC4();
  v0 = OUTLINED_FUNCTION_2_6();

  return sub_1D988AA48(v0, v1);
}

unint64_t sub_1D9889894(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_5_5();
  sub_1D992C0A4();
  v2 = sub_1D992C0C4();
  return sub_1D988AB08(v1, v2);
}

unint64_t sub_1D98898F4()
{
  OUTLINED_FUNCTION_7_3();
  sub_1D992B1E4();
  sub_1D988B1E4(&qword_1ECB479F8, MEMORY[0x1E69CE6B0]);
  sub_1D992B5C4();
  v0 = OUTLINED_FUNCTION_2_6();

  return sub_1D988AB68(v0, v1);
}

unint64_t sub_1D9889984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_1D992BF64() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D9889A38(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for PreprocessorCounterKey(0);
  MEMORY[0x1EEE9AC00](*(v5 - 8));
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1D988B4FC(*(v2 + 48) + v12 * v10, v8, type metadata accessor for PreprocessorCounterKey);
      if (sub_1D992AE54())
      {
        v13 = &v8[*(v5 + 20)];
        v14 = *v13;
        v15 = *(v13 + 1);
        sub_1D988B55C();
        v16 = (a1 + *(v5 + 20));
        v17 = *v16;
        v18 = *(v16 + 1);
        if (v14 == v17 && v15 == v18)
        {
          return v10;
        }
      }

      else
      {
        sub_1D988B55C();
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D9889BF0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for PreprocessorResultCounterKey(0);
  MEMORY[0x1EEE9AC00](*(v6 - 8));
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v3 + 64;
  v11 = -1 << *(v3 + 32);
  v12 = a2 & ~v11;
  if ((*(v3 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v7 + 72);
    v25 = v3;
    v26 = a1;
    do
    {
      sub_1D988B4FC(*(v3 + 48) + v14 * v12, v9, type metadata accessor for PreprocessorResultCounterKey);
      if ((sub_1D992AE54() & 1) != 0 && ((v15 = *(v6 + 20), v16 = *&v9[v15], v17 = *&v9[v15 + 8], v18 = (a1 + v15), v19 = *v18, v20 = *(v18 + 1), v16 == v19) ? (v21 = v17 == v20) : (v21 = 0), v21 && (sub_1D992B1E4(), sub_1D988B1E4(&qword_1ECB479E8, MEMORY[0x1E69CE6B0]), sub_1D992B784(), v3 = v25, a1 = v26, sub_1D992B784(), v28 == v27)))
      {
        v22 = v9[*(v6 + 28)];
        sub_1D988B55C();
        v21 = v22 == *(v26 + *(v6 + 28));
        a1 = v26;
        if (v21)
        {
          return v12;
        }
      }

      else
      {
        sub_1D988B55C();
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

unint64_t sub_1D9889E68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14[1] = a1;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    v7 = sub_1D992AE84();
    v8 = *(v7 - 8);
    MEMORY[0x1EEE9AC00](v8);
    v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v8 + 16))(v10, *(v3 + 48) + *(v11 + 72) * i, v7);
    sub_1D988B5B0(&qword_1ED8BF058);
    v12 = sub_1D992B5F4();
    (*(v8 + 8))(v10, v7);
    if (v12)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D988A000(int a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = *(v3 + 48) + 16 * result;
      v9 = *v8;
      v10 = *(v8 + 8);
      if (v9 == a1 && v10 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D988A07C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StreamTelemetryKey(0);
  MEMORY[0x1EEE9AC00](*(v5 - 8));
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1D988B4FC(*(v2 + 48) + v12 * v10, v8, type metadata accessor for StreamTelemetryKey);
      if (sub_1D992AE54())
      {
        v13 = v8[*(v5 + 20)];
        sub_1D988B55C();
        if (v13 == *(a1 + *(v5 + 20)))
        {
          return v10;
        }
      }

      else
      {
        sub_1D988B55C();
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D988A220(uint64_t a1, uint64_t a2)
{
  v4 = ~(-1 << *(v2 + 32));
  for (i = a2 & v4; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v4)
  {
    sub_1D988B44C(*(v2 + 48) + 40 * i, v8);
    v6 = MEMORY[0x1DA73A230](v8, a1);
    sub_1D988B4A8(v8);
    if (v6)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D988A2E4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  __s1[3] = *MEMORY[0x1E69E9840];
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = v3;
    v10 = ~v5;
    v11 = a2 >> 62;
    if (a1)
    {
      v12 = 0;
    }

    else
    {
      v12 = a2 == 0xC000000000000000;
    }

    v13 = !v12;
    v65 = v13;
    v56 = HIDWORD(a1);
    v14 = HIDWORD(a1) == a1;
    v15 = __OFSUB__(HIDWORD(a1), a1);
    v61 = v15;
    v60 = HIDWORD(a1) - a1;
    v16 = BYTE6(a2);
    v57 = a1;
    v58 = v3 + 64;
    v55 = a1 >> 32;
    v54 = (a1 >> 32) - a1;
    v62 = ~v5;
    v63 = BYTE6(a2);
    v64 = a2 >> 62;
    while (1)
    {
      v17 = (*(v7 + 48) + 16 * v6);
      v19 = *v17;
      v18 = v17[1];
      v20 = v18 >> 62;
      if (v14)
      {
        if (v19)
        {
          v21 = 0;
          v14 = 0;
        }

        else
        {
          v21 = v18 >= 0xC000000000000000;
          v14 = v18 == 0xC000000000000000;
        }

        v22 = !v21;
        if (((v22 | v65) & 1) == 0)
        {
          return v6;
        }

        v23 = 0;
      }

      else
      {
        v23 = 0;
        switch(v20)
        {
          case 0uLL:
            v23 = BYTE6(v18);
            break;
          case 1uLL:
            LODWORD(v23) = HIDWORD(v19) - v19;
            v14 = HIDWORD(v19) == v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_89;
            }

            v23 = v23;
            break;
          case 2uLL:
            v25 = *(v19 + 16);
            v24 = *(v19 + 24);
            v26 = __OFSUB__(v24, v25);
            v23 = v24 - v25;
            v14 = v23 == 0;
            if (!v26)
            {
              break;
            }

            goto LABEL_88;
          case 3uLL:
            break;
          default:
            goto LABEL_105;
        }
      }

      v27 = v16;
      switch(v11)
      {
        case 0uLL:
          goto LABEL_31;
        case 1uLL:
          v27 = v60;
          if (!v61)
          {
            goto LABEL_31;
          }

          __break(1u);
          goto LABEL_87;
        case 2uLL:
          v29 = *(a1 + 16);
          v28 = *(a1 + 24);
          v26 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v26)
          {
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
LABEL_89:
            __break(1u);
LABEL_90:
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
            __break(1u);
LABEL_98:
            __break(1u);
LABEL_99:
            __break(1u);
LABEL_100:
            __break(1u);
LABEL_101:
            __break(1u);
          }

LABEL_31:
          v14 = v23 == v27;
          if (v23 != v27)
          {
            goto LABEL_85;
          }

          if (v23 < 1)
          {
            return v6;
          }

          break;
        case 3uLL:
          if (!v23)
          {
            return v6;
          }

          goto LABEL_85;
        default:
          goto LABEL_105;
      }

      switch(v20)
      {
        case 1:
          if (v19 >> 32 < v19)
          {
            goto LABEL_90;
          }

          sub_1D987BA38(a1, a2);
          sub_1D987BA38(a1, a2);
          sub_1D987BA38(a1, a2);
          sub_1D987BA38(v19, v18);
          v35 = sub_1D992ABC4();
          if (!v35)
          {
            goto LABEL_65;
          }

          v40 = sub_1D992ABE4();
          if (__OFSUB__(v19, v40))
          {
            goto LABEL_93;
          }

          v35 += v19 - v40;
LABEL_65:
          sub_1D992ABD4();
          sub_1D988B228(__s1, v35, a1, a2);
          sub_1D987106C(a1, a2);
          sub_1D987106C(v19, v18);
          sub_1D987106C(a1, a2);
          v41 = __s1[0];
          sub_1D987106C(a1, a2);
          v4 = v58;
          v7 = v59;
          v10 = v62;
          v16 = v63;
          v11 = v64;
          if (v41)
          {
            return v6;
          }

          goto LABEL_85;
        case 2:
          v33 = *(v19 + 16);
          v34 = *(v19 + 24);
          sub_1D987BA38(a1, a2);
          sub_1D987BA38(a1, a2);
          sub_1D987BA38(a1, a2);
          sub_1D987BA38(v19, v18);
          v35 = sub_1D992ABC4();
          if (!v35)
          {
            goto LABEL_47;
          }

          v36 = sub_1D992ABE4();
          if (__OFSUB__(v33, v36))
          {
            goto LABEL_92;
          }

          v35 += v33 - v36;
LABEL_47:
          if (!__OFSUB__(v34, v33))
          {
            goto LABEL_65;
          }

          goto LABEL_91;
        case 3:
          memset(__s1, 0, 14);
          if (v11 == 2)
          {
            v43 = *(a1 + 16);
            v44 = *(a1 + 24);
            sub_1D987BA38(a1, a2);
            sub_1D987BA38(v19, v18);
            v45 = sub_1D992ABC4();
            if (v45)
            {
              v46 = sub_1D992ABE4();
              if (__OFSUB__(v43, v46))
              {
                goto LABEL_98;
              }

              v45 += v43 - v46;
            }

            v26 = __OFSUB__(v44, v43);
            v47 = v44 - v43;
            if (v26)
            {
              goto LABEL_96;
            }

            v48 = sub_1D992ABD4();
            v7 = v59;
            if (!v45)
            {
              __break(1u);
LABEL_102:
              __break(1u);
LABEL_103:
              __break(1u);
LABEL_104:
              __break(1u);
              sub_1D987106C(a1, a2);
              sub_1D987106C(a1, a2);

              __break(1u);
LABEL_105:
              JUMPOUT(0);
            }

LABEL_80:
            if (v48 >= v47)
            {
              v52 = v47;
            }

            else
            {
              v52 = v48;
            }

            v39 = memcmp(__s1, v45, v52);
            sub_1D987106C(v19, v18);
            sub_1D987106C(a1, a2);
            v4 = v58;
LABEL_84:
            v10 = v62;
            v16 = v63;
            v11 = v64;
            if (!v39)
            {
              return v6;
            }

            goto LABEL_85;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_95;
            }

            sub_1D987BA38(a1, a2);
            sub_1D987BA38(v19, v18);
            v30 = sub_1D992ABC4();
            if (v30)
            {
              v37 = sub_1D992ABE4();
              if (__OFSUB__(v57, v37))
              {
                goto LABEL_100;
              }

              v30 += v57 - v37;
            }

            v32 = sub_1D992ABD4();
            if (!v30)
            {
              goto LABEL_103;
            }

LABEL_57:
            if (v32 >= v54)
            {
              v38 = v54;
            }

            else
            {
              v38 = v32;
            }

            v39 = memcmp(__s1, v30, v38);
            sub_1D987106C(v19, v18);
            sub_1D987106C(a1, a2);
            goto LABEL_84;
          }

LABEL_67:
          __s2 = a1;
          v67 = BYTE2(a1);
          v68 = BYTE3(a1);
          v69 = v56;
          v70 = BYTE5(a1);
          v71 = BYTE6(a1);
          v72 = HIBYTE(a1);
          v73 = a2;
          v74 = BYTE2(a2);
          v75 = BYTE3(a2);
          v76 = BYTE4(a2);
          v77 = BYTE5(a2);
          v42 = memcmp(__s1, &__s2, v16);
          v16 = v63;
          v11 = v64;
          if (!v42)
          {
            return v6;
          }

LABEL_85:
          v6 = (v6 + 1) & v10;
          if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
          {
            return v6;
          }

          break;
        default:
          __s1[0] = v19;
          LOWORD(__s1[1]) = v18;
          BYTE2(__s1[1]) = BYTE2(v18);
          BYTE3(__s1[1]) = BYTE3(v18);
          BYTE4(__s1[1]) = BYTE4(v18);
          BYTE5(__s1[1]) = BYTE5(v18);
          if (!v11)
          {
            goto LABEL_67;
          }

          if (v11 == 1)
          {
            if (v55 < v57)
            {
              goto LABEL_94;
            }

            sub_1D987BA38(a1, a2);
            sub_1D987BA38(v19, v18);
            v30 = sub_1D992ABC4();
            if (v30)
            {
              v31 = sub_1D992ABE4();
              if (__OFSUB__(v57, v31))
              {
                goto LABEL_101;
              }

              v30 += v57 - v31;
            }

            v32 = sub_1D992ABD4();
            if (!v30)
            {
              goto LABEL_102;
            }

            goto LABEL_57;
          }

          v49 = *(a1 + 16);
          v50 = *(a1 + 24);
          sub_1D987BA38(a1, a2);
          sub_1D987BA38(v19, v18);
          v45 = sub_1D992ABC4();
          if (v45)
          {
            v51 = sub_1D992ABE4();
            if (__OFSUB__(v49, v51))
            {
              goto LABEL_99;
            }

            v45 += v49 - v51;
          }

          v26 = __OFSUB__(v50, v49);
          v47 = v50 - v49;
          if (v26)
          {
            goto LABEL_97;
          }

          v48 = sub_1D992ABD4();
          v7 = v59;
          if (!v45)
          {
            goto LABEL_104;
          }

          goto LABEL_80;
      }
    }
  }

  return v6;
}

unint64_t sub_1D988A9D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = -1 << *(v3 + 32);
  result = a3 & ~v5;
  if ((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v7 = ~v5;
    do
    {
      v8 = (*(v3 + 48) + 16 * result);
      v10 = *v8;
      v9 = v8[1];
      if (v10 == a1 && v9 == a2)
      {
        break;
      }

      result = (result + 1) & v7;
    }

    while (((*(v3 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D988AA48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_1D992B1A4();
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_1D992BBD4();

    if (v8)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_1D988AB08(int a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_1D988AB68(uint64_t a1, uint64_t a2)
{
  v13 = a1;
  v4 = sub_1D992B1E4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](*(v5 + 64));
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v2 + 64;
  v12 = ~(-1 << *(v2 + 32));
  for (i = a2 & v12; ((1 << i) & *(v14 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v12)
  {
    (*(v5 + 16))(v7, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_1D988B1E4(&qword_1ECB479F0, MEMORY[0x1E69CE6B0]);
    v9 = sub_1D992B5F4();
    (*(v5 + 8))(v7, v4);
    if (v9)
    {
      break;
    }
  }

  return i;
}

uint64_t sub_1D988AD24(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t dispatch thunk of OLEStreamTelemetry.emit()()
{
  v4 = (*(*v0 + 144) + **(*v0 + 144));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D988AED8;

  return v4();
}

uint64_t sub_1D988AED8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D988AFF4(uint64_t a1)
{
  result = sub_1D992AE84();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for StreamTelemetryEvent(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D988B148()
{
  result = qword_1ECB485C0;
  if (!qword_1ECB485C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB485C0);
  }

  return result;
}

uint64_t sub_1D988B1E4(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_2_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D988B228(uint64_t *__return_ptr a1@<X8>, char *__s1@<X0>, uint64_t a4@<X2>, unint64_t a5@<X3>)
{
  v17 = *MEMORY[0x1E69E9840];
  switch(a5 >> 62)
  {
    case 1uLL:
      v10 = a4 >> 32;
      if (a4 >> 32 < a4)
      {
        __break(1u);
      }

      v9 = a4;
      goto LABEL_9;
    case 2uLL:
      v9 = *(a4 + 16);
      v10 = *(a4 + 24);
LABEL_9:
      v8 = sub_1D988B394(v9, v10, a5 & 0x3FFFFFFFFFFFFFFFLL, __s1);
      if (!v5)
      {
        goto LABEL_10;
      }

      goto LABEL_14;
    case 3uLL:
      if (__s1)
      {
        v8 = 1;
LABEL_10:
        *a1 = v8 & 1;
      }

      else
      {
        __break(1u);
LABEL_13:
        __break(1u);
LABEL_14:

        __break(1u);
      }

      return;
    default:
      __s2 = a4;
      v12 = a5;
      v13 = BYTE2(a5);
      v14 = BYTE3(a5);
      v15 = BYTE4(a5);
      v16 = BYTE5(a5);
      if (!__s1)
      {
        goto LABEL_13;
      }

      v8 = memcmp(__s1, &__s2, BYTE6(a5)) == 0;
      goto LABEL_10;
  }
}

char *sub_1D988B394(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  result = sub_1D992ABC4();
  v8 = result;
  if (result)
  {
    result = sub_1D992ABE4();
    if (__OFSUB__(a1, result))
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v8 += a1 - result;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_14;
  }

  result = sub_1D992ABD4();
  if (result >= v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = result;
  }

  if (!a4)
  {
    goto LABEL_15;
  }

  if (!v8)
  {
LABEL_16:
    __break(1u);
    return result;
  }

  if (v8 == a4)
  {
    return 1;
  }

  else
  {
    return (memcmp(a4, v8, v11) == 0);
  }
}

uint64_t sub_1D988B4FC(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_5();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1D988B55C()
{
  v1 = OUTLINED_FUNCTION_13_0();
  v2(v1);
  OUTLINED_FUNCTION_5();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1D988B5B0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1D992AE84();
    OUTLINED_FUNCTION_2_6();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id PreprocessorShim.init(metastore:logicalClocks:metastoreQueue:telemetry:messageStaging:messageTopics:)(void *a1, char *a2, void *a3, void *a4, char *a5, char *a6)
{
  if (qword_1ECB47B38 != -1)
  {
    swift_once();
  }

  v12 = *&a2[OBJC_IVAR___SiriAnalyticsLogicalClocksProvider_provider];
  v23 = byte_1ECB49690;
  v13 = *&a5[OBJC_IVAR____TtC13SiriAnalytics27SiriAnalyticsMessageStaging_stagingStreamProvider];
  v14 = &a6[OBJC_IVAR___SiriAnalyticsMessageTopics_underlying];
  v25 = a2;
  v26 = a6;
  v16 = *&a6[OBJC_IVAR___SiriAnalyticsMessageTopics_underlying];
  v15 = *&a6[OBJC_IVAR___SiriAnalyticsMessageTopics_underlying + 8];
  v17 = *(v14 + 2);
  v18 = *(v14 + 3);
  type metadata accessor for Preprocessor();
  swift_allocObject();
  v24 = a4;

  v19 = a1;

  v20 = a3;
  *&v27[OBJC_IVAR___SiriAnalyticsPreprocessor_underlyingActor] = sub_1D98A3064(v19, v12, v20, a4, v13, v23, v16, v15, v17, v18);
  v28.receiver = v27;
  v28.super_class = type metadata accessor for PreprocessorShim();
  v21 = objc_msgSendSuper2(&v28, sel_init);

  return v21;
}

uint64_t sub_1D988B8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v6 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = &v13 - v7;
  sub_1D992B854();
  v9 = sub_1D992B874();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a2;
  v11[5] = a3;
  v11[6] = v10;
  v11[7] = a1;
  sub_1D988C370(a2, a3);
  sub_1D988BDE8(0, 0, v8, &unk_1D9930980, v11);

  return sub_1D988C380(v8);
}

uint64_t sub_1D988B9F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D988BA14, 0, 0);
}

uint64_t sub_1D988BA14()
{
  OUTLINED_FUNCTION_18();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    v0[10] = *(Strong + OBJC_IVAR___SiriAnalyticsPreprocessor_underlyingActor);

    v2 = swift_task_alloc();
    v0[11] = v2;
    *v2 = v0;
    v2[1] = sub_1D988BBC4;

    return sub_1D98A3120();
  }

  else
  {
    if (qword_1ED8BD6F0 != -1)
    {
      swift_once();
    }

    v4 = v0[5];
    sub_1D986A454(0xD000000000000031, 0x80000001D9937E40, 0xD000000000000066, 0x80000001D9937E80, 0xD00000000000001BLL, 0x80000001D9937EF0);
    if (v4)
    {
      v5 = v0[5];
      v6 = v0[6];

      v5(v7);
      sub_1D98750DC(v5, v6);
    }

    OUTLINED_FUNCTION_25();

    return v8();
  }
}

uint64_t sub_1D988BBC4()
{
  OUTLINED_FUNCTION_18();
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_1D988BD60;
  }

  else
  {

    v2 = sub_1D988BCDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D988BCDC()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 40);

  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);

    v2(v4);
    sub_1D98750DC(v2, v3);
  }

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_1D988BD60()
{
  OUTLINED_FUNCTION_18();
  v1 = v0[9];
  v2 = v0[5];

  if (v2)
  {
    v3 = v0[5];
    v4 = v0[6];

    v3(v5);
    sub_1D98750DC(v3, v4);
  }

  OUTLINED_FUNCTION_25();

  return v6();
}

uint64_t sub_1D988BDE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  MEMORY[0x1EEE9AC00](((*(*(v8 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = v21 - v9;
  sub_1D988C450(a3, v21 - v9);
  v11 = sub_1D992B874();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1D988C380(v10);
  }

  else
  {
    sub_1D992B864();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1D992B814();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1D992B6B4() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

id PreprocessorShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreprocessorShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreprocessorShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D988C1B0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D988C284;

  return sub_1D988B9F0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D988C284()
{
  OUTLINED_FUNCTION_18();

  OUTLINED_FUNCTION_25();

  return v0();
}

uint64_t sub_1D988C370(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D988C380(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D988C450(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48BB0, &qword_1D9930970);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StagingReport.addedCount.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount;
  OUTLINED_FUNCTION_2_7(a1);
  return *(v1 + v2);
}

uint64_t StagingReport.addedCount.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount;
  result = OUTLINED_FUNCTION_0_16(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t StagingReport.missingTimestampCount.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount;
  OUTLINED_FUNCTION_2_7(a1);
  return *(v1 + v2);
}

uint64_t StagingReport.missingTimestampCount.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount;
  result = OUTLINED_FUNCTION_0_16(a1);
  *(v1 + v3) = v2;
  return result;
}

uint64_t StagingReport.result.getter(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  OUTLINED_FUNCTION_2_7(a1);
  return *(v1 + v2);
}

uint64_t StagingReport.result.setter(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  result = OUTLINED_FUNCTION_0_16(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1D988C7F4(int a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount] = 0;
  *&v1[OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount] = 0;
  *&v1[OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_1D988CA04(uint64_t *a1)
{
  v2 = *a1;
  result = OUTLINED_FUNCTION_4_5(v1 + *a1, v7);
  v4 = *(v1 + v2);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v1 + v2) = v6;
  }

  return result;
}

uint64_t static StagingReport.supportsSecureCoding.setter(char a1)
{
  result = OUTLINED_FUNCTION_4_5(&byte_1ECB485F0, v3);
  byte_1ECB485F0 = a1;
  return result;
}

uint64_t sub_1D988CB88@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_1ECB485F0;
  return result;
}

uint64_t sub_1D988CBD4(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_1ECB485F0 = v1;
  return result;
}

Swift::Void __swiftcall StagingReport.encode(with:)(NSCoder with)
{
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount, v10);
  v3 = OUTLINED_FUNCTION_3_5();
  OUTLINED_FUNCTION_8_4();

  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount, v9);
  v4 = OUTLINED_FUNCTION_7_4();
  OUTLINED_FUNCTION_8_4();

  v5 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result, v8);
  v6 = *(v1 + v5);
  v7 = OUTLINED_FUNCTION_9_4();
  [(objc_class *)with.super.isa encodeInt:v6 forKey:v7];
}

id StagingReport.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount;
  *&v1[OBJC_IVAR____TtC13SiriAnalytics13StagingReport_addedCount] = 0;
  v5 = OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount;
  *&v1[OBJC_IVAR____TtC13SiriAnalytics13StagingReport_missingTimestampCount] = 0;
  v6 = OUTLINED_FUNCTION_3_5();
  v7 = OUTLINED_FUNCTION_6_7();

  OUTLINED_FUNCTION_4_5(&v1[v4], v16);
  *&v1[v4] = v7;
  v8 = OUTLINED_FUNCTION_7_4();
  v9 = OUTLINED_FUNCTION_6_7();

  OUTLINED_FUNCTION_4_5(&v1[v5], v15);
  *&v1[v5] = v9;
  v10 = OUTLINED_FUNCTION_9_4();
  v11 = OUTLINED_FUNCTION_6_7();

  *&v1[OBJC_IVAR____TtC13SiriAnalytics13StagingReport_result] = v11;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

id StagingReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id StagingReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t UnorderedMessagesService.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

id sub_1D988CFCC()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
  }

  else
  {
    v3 = v0;
    sub_1D9880418();
    v4 = sub_1D992B624();
    v6 = sub_1D988045C(v4, v5);
    v7 = *(v0 + 16);
    *(v3 + 16) = v6;
    v2 = v6;

    v1 = 0;
  }

  v8 = v1;
  return v2;
}

uint64_t UnorderedMessagesService.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t sub_1D988D048(uint64_t a1)
{
  *(v1 + 24) = 1;
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D988D0F4;

  return sub_1D988D1DC(a1, (v1 + 24));
}

uint64_t sub_1D988D0F4()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D988D1DC(uint64_t a1, _BYTE *a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = v2;
  *(v3 + 184) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D988D204, 0, 0);
}

uint64_t sub_1D988D204()
{
  v1 = *(v0 + 144);
  v28 = MEMORY[0x1E69E7CC0];
  v2 = sub_1D98682F0();
  v3 = v2;
  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v6 = v1 & 0xFFFFFFFFFFFFFF8;
  v7 = v1 + 32;
  v27 = v2;
  while (v3 != v4)
  {
    if (v5)
    {
      v2 = MEMORY[0x1DA73A2C0](v4, v26[18]);
    }

    else
    {
      if (v4 >= *(v6 + 16))
      {
        goto LABEL_21;
      }

      v2 = *(v7 + 8 * v4);
    }

    v8 = v2;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v2);
    }

    v9 = [v2 wrapAsAnyEvent];
    if (!v9)
    {
      goto LABEL_10;
    }

    v10 = v9;
    v11 = sub_1D988D748(v9);
    if (v12 >> 60 == 15)
    {

LABEL_10:
      goto LABEL_12;
    }

    v13 = v11;
    v14 = v12;
    v15 = v7;
    v16 = v6;
    v17 = v5;
    v18 = [v10 anyEventType];
    objc_allocWithZone(type metadata accessor for XPCMessageEnvelope());
    v19 = v18;
    v5 = v17;
    v6 = v16;
    v7 = v15;
    v3 = v27;
    v20 = XPCMessageEnvelope.init(eventTypeId:payload:)(v19, v13, v14);

    if (v20)
    {
      MEMORY[0x1DA739CE0]();
      if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D992B7D4();
      }

      v2 = sub_1D992B7F4();
      ++v4;
    }

    else
    {
LABEL_12:
      ++v4;
    }
  }

  v21 = sub_1D988CFCC();
  v26[20] = v21;
  type metadata accessor for XPCMessageEnvelope();
  v22 = sub_1D992B7A4();
  v26[21] = v22;

  v23 = sub_1D992B614();
  v26[22] = v23;

  v26[2] = v26;
  v26[3] = sub_1D988D580;
  v24 = swift_continuation_init();
  v26[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48670, &qword_1D99309F0);
  v26[10] = MEMORY[0x1E69E9820];
  v26[11] = 1107296256;
  v26[12] = sub_1D988D6BC;
  v26[13] = &block_descriptor_1;
  v26[14] = v24;
  [v21 publishUnorderedMessages:v22 topic:v23 completion:v26 + 10];
  v2 = v26 + 2;

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_1D988D580()
{
  OUTLINED_FUNCTION_18();
  v1 = *v0;
  OUTLINED_FUNCTION_17();
  *v2 = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D988D654, 0, 0);
}

uint64_t sub_1D988D654()
{
  OUTLINED_FUNCTION_18();
  v1 = *(v0 + 168);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D988D6BC(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return j__swift_continuation_resume(v1);
}

uint64_t UnorderedMessagesService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D988D748(void *a1)
{
  v1 = [a1 payload];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1D992AD84();

  return v3;
}

uint64_t dispatch thunk of UnorderedMessagesService.publish(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 120) + **(*v1 + 120));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D988DA5C;

  return v6(a1);
}

uint64_t dispatch thunk of UnorderedMessagesService.publish(_:topic:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1D988D0F4;

  return v8(a1, a2);
}

uint64_t sub_1D988DA68(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1D988DAA8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D988DB14()
{
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v57 = MEMORY[0x1E69E7CC0];
      sub_1D986C620(0, v3, 0);
      v4 = v57;
      v5 = (v2 + 40);
      do
      {
        v7 = *(v5 - 1);
        v6 = *v5;
        v57 = v4;
        v9 = *(v4 + 16);
        v8 = *(v4 + 24);

        if (v9 >= v8 >> 1)
        {
          sub_1D986C620(v8 > 1, v9 + 1, 1);
          v4 = v57;
        }

        *(v4 + 16) = v9 + 1;
        v10 = v4 + 16 * v9;
        *(v10 + 32) = v7;
        *(v10 + 40) = v6;
        v5 += 3;
        --v3;
      }

      while (v3);
    }

    v57 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    OUTLINED_FUNCTION_0_17();
    v11 = sub_1D992B5E4();
    v13 = v12;
  }

  else
  {
    v13 = 0xE100000000000000;
    v11 = 42;
  }

  if (*(v1 + 24) == 1)
  {
    v57 = 0x6469776F72;
    v58 = 0xE500000000000000;
    v14 = OUTLINED_FUNCTION_0_17();
    MEMORY[0x1DA739C30](v14);

    MEMORY[0x1DA739C30](v11, v13);

    v11 = 0x6469776F72;
    v13 = 0xE500000000000000;
  }

  v53 = v11;
  sub_1D986D4C8(v1 + 32, &v55);
  if (v56)
  {
    sub_1D986D53C(&v55, &v57);
    v15 = v59;
    v16 = v60;
    __swift_project_boxed_opaque_existential_1(&v57, v59);
    v17 = (*(v16 + 8))(v15, v16);
    *&v55 = 32;
    *(&v55 + 1) = 0xE100000000000000;
    MEMORY[0x1DA739C30](v17);

    v18 = *(&v55 + 1);
    v52 = v55;
    __swift_destroy_boxed_opaque_existential_1(&v57);
  }

  else
  {
    sub_1D988395C(&v55);
    v52 = 0;
    v18 = 0xE000000000000000;
  }

  if (*(v1 + 80))
  {
    v50 = 0;
    v19 = 0xE000000000000000;
  }

  else
  {
    v20 = *(v1 + 72);
    v57 = 0x2054494D494CLL;
    v58 = 0xE600000000000000;
    *&v55 = v20;
    v21 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v21);

    v19 = v58;
    v50 = v57;
  }

  v51 = v19;
  if (*(v1 + 96))
  {
    v48 = 0;
    v22 = 0xE000000000000000;
  }

  else
  {
    v23 = *(v1 + 88);
    v57 = 0x2054455346464FLL;
    v58 = 0xE700000000000000;
    *&v55 = v23;
    v24 = sub_1D992BF34();
    MEMORY[0x1DA739C30](v24);

    v22 = v58;
    v48 = v57;
  }

  v49 = v22;
  v54 = v1;
  v25 = *(v1 + 104);
  if (!v25)
  {
    v45 = 0;
    v44 = 0xE000000000000000;
    goto LABEL_39;
  }

  v26 = *(v25 + 16);
  v27 = MEMORY[0x1E69E7CC0];
  if (!v26)
  {
LABEL_37:
    v57 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB483F8, &unk_1D9931370);
    sub_1D986FD2C();
    OUTLINED_FUNCTION_0_17();
    v41 = sub_1D992B5E4();
    v43 = v42;

    v57 = 0x594220524544524FLL;
    v58 = 0xE900000000000020;
    MEMORY[0x1DA739C30](v41, v43);

    v45 = v57;
    v44 = v58;
LABEL_39:
    v57 = 0;
    v58 = 0xE000000000000000;
    sub_1D992BD64();

    v57 = 0x205443454C4553;
    v58 = 0xE700000000000000;
    MEMORY[0x1DA739C30](v53, v13);

    MEMORY[0x1DA739C30](0x204D4F52460ALL, 0xE600000000000000);
    MEMORY[0x1DA739C30](*v54, v54[1]);
    OUTLINED_FUNCTION_2_8();
    MEMORY[0x1DA739C30](v52, v18);

    OUTLINED_FUNCTION_2_8();
    MEMORY[0x1DA739C30](v45, v44);

    OUTLINED_FUNCTION_2_8();
    MEMORY[0x1DA739C30](v50, v51);

    OUTLINED_FUNCTION_1_10();
    MEMORY[0x1DA739C30](v48, v49);

    MEMORY[0x1DA739C30](59, 0xE100000000000000);
    return;
  }

  v46 = v18;
  v47 = v13;
  *&v55 = MEMORY[0x1E69E7CC0];
  sub_1D986C620(0, v26, 0);
  v28 = 0;
  v27 = v55;
  v29 = (v25 + 48);
  while (v28 < *(v25 + 16))
  {
    v30 = *(v29 - 2);
    v31 = *v29;
    if (v31 < 0)
    {
      v57 = 0x6469776F72;
      v58 = 0xE500000000000000;
      OUTLINED_FUNCTION_1_10();
      v33 = (v30 & 1) == 0;
    }

    else
    {
      v32 = *(v29 - 1);
      v57 = *(v29 - 2);
      v58 = v32;

      OUTLINED_FUNCTION_1_10();
      v33 = (v31 & 1) == 0;
    }

    if (v33)
    {
      v34 = 4412225;
    }

    else
    {
      v34 = 1129530692;
    }

    if (v33)
    {
      v35 = 0xE300000000000000;
    }

    else
    {
      v35 = 0xE400000000000000;
    }

    MEMORY[0x1DA739C30](v34, v35);

    v37 = v57;
    v36 = v58;
    *&v55 = v27;
    v39 = *(v27 + 16);
    v38 = *(v27 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_1D986C620(v38 > 1, v39 + 1, 1);
      v27 = v55;
    }

    ++v28;
    *(v27 + 16) = v39 + 1;
    v40 = v27 + 16 * v39;
    *(v40 + 32) = v37;
    *(v40 + 40) = v36;
    v29 += 24;
    if (v26 == v28)
    {
      v13 = v47;
      v18 = v46;
      goto LABEL_37;
    }
  }

  __break(1u);
}

uint64_t sub_1D988E0D0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7F && *(a1 + 17))
    {
      v2 = *a1 + 126;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
      if (v2 >= 0x7E)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_1D988E118(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

unint64_t sub_1D988E1A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 == 1)
  {
    return 0xD00000000000001BLL;
  }

  if (a3 == 2)
  {
    return 0xD000000000000017;
  }

  sub_1D992BD64();

  v4 = sub_1D992BF34();
  MEMORY[0x1DA739C30](v4);

  MEMORY[0x1DA739C30](2112032, 0xE300000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48410, &qword_1D992FD50);
  v5 = sub_1D992B6A4();
  MEMORY[0x1DA739C30](v5);

  MEMORY[0x1DA739C30](32032, 0xE200000000000000);
  return 0xD000000000000010;
}

char *sub_1D988E2FC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a1;
  v10 = HIDWORD(a1);
  v11 = HIDWORD(a2);
  v38 = HIDWORD(a3);
  v12 = MEMORY[0x1E69E9BB0];
  v39 = HIDWORD(a4);
  v37 = a6;
  if (a6)
  {
    v12 = MEMORY[0x1E69E9BA8];
  }

  v48 = *v12;
  v36 = a5;
  sub_1D992AD34();
  v14 = v13;
  sub_1D992B6B4();

  v40 = v9;
  v41 = v10;
  v42 = v8;
  v43 = v11;
  v44 = v7;
  v45 = v38;
  v46 = v6;
  v47 = v39;
  v15 = sandbox_extension_issue_file_to_process();

  if (v15)
  {
    v17 = sub_1D992B604();
    if (v18)
    {
      v19 = v17;
      v20 = v18;
      if (qword_1ED8BF428 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      sub_1D98DCE30();
      MEMORY[0x1EEE9AC00]("DROP TABLE IF EXISTS ");
      v34[2] = v36;
      v35 = v37 & 1;
      sub_1D98DD1DC(0xD000000000000060, v21 | 0x8000000000000000, 0xD00000000000001FLL, v22 | 0x8000000000000000, sub_1D988EB7C, v34);

      type metadata accessor for SandboxExtension();
      v14 = swift_allocObject();
      *(v14 + 24) = v20;
      *(v14 + 32) = 0;
      *(v14 + 40) = 1;
      *(v14 + 16) = v19;
      free(v15);
    }

    else
    {
      sub_1D988EB28();
      swift_allocError();
      *v33 = 0;
      v33[1] = 0;
      v33[2] = 1;
      swift_willThrow();
      free(v15);
    }

    return v14;
  }

  v23 = MEMORY[0x1DA739850](v16);
  v24 = MEMORY[0x1DA739850]();
  result = strerror(v24);
  if (result)
  {
    v26 = sub_1D992B604();
    v28 = v27;
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    v14 = qword_1ED8BFBC8;
    v29 = sub_1D988E1A0(v23, v26, v28);
    sub_1D98DCEB4(v29, v30, 0xD000000000000060, 0x80000001D99380C0, 0xD00000000000001FLL, 0x80000001D9938170);

    sub_1D988EB28();
    v31 = swift_allocError();
    OUTLINED_FUNCTION_3_6(v31, v32);
    return v14;
  }

  __break(1u);
  return result;
}

unint64_t sub_1D988E60C(uint64_t a1, char a2)
{
  sub_1D992BD64();

  v3 = sub_1D992AD24();
  MEMORY[0x1DA739C30](v3);

  MEMORY[0x1DA739C30](0x6E6F64616572202CLL, 0xEC000000203A796CLL);
  if (a2)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (a2)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x1DA739C30](v4, v5);

  MEMORY[0x1DA739C30](41, 0xE100000000000000);
  return 0xD00000000000001BLL;
}

void sub_1D988E70C()
{
  if (*(v0 + 40) == 1)
  {
    sub_1D992B6B4();
    v1 = sandbox_extension_consume();

    if (v1 < 0)
    {
      v10 = MEMORY[0x1DA739850](v2);
      v11 = MEMORY[0x1DA739850]();
      if (strerror(v11))
      {
        v12 = sub_1D992B604();
        v14 = v13;
        if (qword_1ED8BF428 != -1)
        {
          OUTLINED_FUNCTION_0_14();
          swift_once();
        }

        sub_1D988E1A0(v10, v12, v14);
        OUTLINED_FUNCTION_2_9();
        OUTLINED_FUNCTION_1_11();
        sub_1D98DCEB4(v15, v16, v17, v18, v19, v20);

        sub_1D988EB28();
        v21 = swift_allocError();
        OUTLINED_FUNCTION_3_6(v21, v22);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {
      if (qword_1ED8BF428 != -1)
      {
        OUTLINED_FUNCTION_0_14();
        swift_once();
      }

      if (*(sub_1D98DCE30() + 24) == 1)
      {

        sub_1D988E8C8(v3);
        OUTLINED_FUNCTION_2_9();
        OUTLINED_FUNCTION_1_11();
        sub_1D986A454(v4, v5, v6, v7, v8, v9);
      }

      else
      {
      }

      *(v0 + 32) = v1;
      *(v0 + 40) = 0;
    }
  }
}

unint64_t sub_1D988E8C8(uint64_t a1)
{
  sub_1D992BD64();

  MEMORY[0x1DA739C30](*(a1 + 16), *(a1 + 24));
  MEMORY[0x1DA739C30](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t SandboxExtension.deinit()
{
  if ((*(v0 + 40) & 1) == 0)
  {
    sandbox_extension_release();
    if (qword_1ED8BF428 != -1)
    {
      OUTLINED_FUNCTION_0_14();
      swift_once();
    }

    if (*(sub_1D98DCE30() + 24) == 1)
    {

      v2 = sub_1D988EA38(v1);
      sub_1D986A454(v2, v3, 0xD000000000000060, 0x80000001D99380C0, 0x74696E696564, 0xE600000000000000);
    }

    else
    {
    }
  }

  return v0;
}

unint64_t sub_1D988EA38(uint64_t a1)
{
  sub_1D992BD64();

  MEMORY[0x1DA739C30](*(a1 + 16), *(a1 + 24));
  MEMORY[0x1DA739C30](41, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t SandboxExtension.__deallocating_deinit()
{
  SandboxExtension.deinit();

  return swift_deallocClassInstance();
}

unint64_t sub_1D988EB28()
{
  result = qword_1ECB48678;
  if (!qword_1ECB48678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48678);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13SiriAnalytics16SandboxExtensionC0C5ErrorO(uint64_t a1)
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D988EBC0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 24))
  {
    return (*a1 + 2147483645);
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

  v5 = v4 + 1;
  v6 = v4 - 1;
  if (v5 >= 3)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D988EC28(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 2;
    }
  }

  return result;
}

void *sub_1D988EC7C(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = a2;
  }

  return result;
}

uint64_t sub_1D988ECBC(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1D988ED04@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D988ECBC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D988ED30@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D988ECD4(*v1);
  *a1 = result;
  return result;
}

uint64_t MessageGroupIdentifier.write(to:)(void *a1)
{
  v3 = type metadata accessor for MessageGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](*(*(v3 - 8) + 64));
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1D988EE2C(v1, v5);
  sub_1D988EE90(v5);
  [a1 writeUint32:0 forTag:1];
  v8 = v1;
  v9 = a1;
  return sub_1D992B9C4();
}

uint64_t sub_1D988EE2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessageGroupIdentifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D988EE90(uint64_t a1)
{
  v2 = type metadata accessor for ComponentId(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D988EEEC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for ComponentId(0);
  MEMORY[0x1EEE9AC00](*(*(v4 - 8) + 64));
  v6 = (&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for MessageGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](*(*(v7 - 8) + 64));
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D988EE2C(a1, v9);
  sub_1D988F924(v9, v6, type metadata accessor for ComponentId);
  [a2 writeInt32:*v6 forTag:0];
  sub_1D992B9F4();
  return sub_1D988EE90(v6);
}

uint64_t static MessageGroupIdentifier.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  MEMORY[0x1EEE9AC00](*(*(v5 - 8) + 64));
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-v8];
  v18 = 1;
  v10 = type metadata accessor for MessageGroupIdentifier(0);
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v10);
  v15 = a1;
  v16 = &v18;
  v17 = v9;
  sub_1D988F3BC();
  sub_1D992B964();
  if (!v2)
  {
    sub_1D988F478(v9, v7);
    if (__swift_getEnumTagSinglePayload(v7, 1, v10) == 1)
    {
      sub_1D988F410(v7);
      v11 = sub_1D992B484();
      sub_1D988F850(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
      swift_allocError();
      (*(*(v11 - 8) + 104))(v12, *MEMORY[0x1E6999BA8], v11);
      swift_willThrow();
    }

    else
    {
      sub_1D988F924(v7, a2, type metadata accessor for MessageGroupIdentifier);
    }
  }

  return sub_1D988F410(v9);
}

id sub_1D988F244(_BYTE *a1, id a2, BOOL *a3)
{
  if (*a1)
  {
    v4 = *a3;
    if (v4)
    {
      v5 = sub_1D992B484();
      sub_1D988F850(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
      swift_allocError();
      (*(*(v5 - 8) + 104))(v6, *MEMORY[0x1E6999BA8], v5);
      return swift_willThrow();
    }

    else
    {
      MEMORY[0x1EEE9AC00](v4);
      return sub_1D992B974();
    }
  }

  else
  {
    result = [a2 readUint32];
    *a3 = result != 0;
  }

  return result;
}

unint64_t sub_1D988F3BC()
{
  result = qword_1ECB47CD8;
  if (!qword_1ECB47CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47CD8);
  }

  return result;
}

uint64_t sub_1D988F410(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D988F478(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D988F530(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v10 - v6;
  result = static ComponentId.read(from:)(a2, &v10 - v6);
  if (!v2)
  {
    v9 = type metadata accessor for MessageGroupIdentifier(0);
    __swift_storeEnumTagSinglePayload(v7, 0, 1, v9);
    return sub_1D988F8B4(v7, a1);
  }

  return result;
}

_BYTE *_s6FieldsOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D988F7FC()
{
  result = qword_1ECB48690;
  if (!qword_1ECB48690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB48690);
  }

  return result;
}

uint64_t sub_1D988F850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D988F8B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB48680, &qword_1D9930C38);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D988F924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t ComponentId.write(to:)(void *a1)
{
  [a1 writeInt32:*v1 forTag:0];
  type metadata accessor for ComponentId(0);
  return sub_1D992B9F4();
}

uint64_t sub_1D988F9DC(int a1)
{
  if (a1 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D988FA14@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D988F9DC(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1D988FA40@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1D988F9F4(*v1);
  *a1 = result;
  return result;
}

uint64_t static ComponentId.read(from:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v24 = 0;
  v25 = 1;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0) - 8) + 64);
  MEMORY[0x1EEE9AC00](((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = &v19 - v6;
  v8 = sub_1D992AE84();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
  v21 = &v24;
  v22 = a1;
  v23 = v7;
  sub_1D988FE50();
  sub_1D992B964();
  if (!v2)
  {
    if ((v25 & 1) == 0)
    {
      v20 = v24;
      v9 = *(v8 - 8);
      MEMORY[0x1EEE9AC00](*(v9 + 64));
      v11 = ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
      v12 = (&v19 - v11);
      MEMORY[0x1EEE9AC00](v11);
      v13 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D9879FF8(v7, v13);
      if (__swift_getEnumTagSinglePayload(v13, 1, v8) != 1)
      {
        v19 = &v19;
        v16 = *(v9 + 32);
        v16(v12, v13, v8);
        v17 = type metadata accessor for ComponentId(0);
        v16(&a2[*(v17 + 20)], v12, v8);
        *a2 = v20;
        return sub_1D987625C(v7);
      }

      sub_1D987625C(v13);
    }

    v14 = sub_1D992B484();
    sub_1D9890158(&qword_1ECB479C0, MEMORY[0x1E6999BC0], MEMORY[0x1E6999BD8]);
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x1E6999BA8], v14);
    swift_willThrow();
  }

  return sub_1D987625C(v7);
}

id sub_1D988FD60(_BYTE *a1, uint64_t a2, id a3, uint64_t a4)
{
  if (*a1)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
    MEMORY[0x1EEE9AC00](((*(*(v5 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0));
    v7 = &v10 - v6;
    sub_1D992B9B4();
    return sub_1D98901A0(v7, a4);
  }

  else
  {
    result = [a3 readInt32];
    *a2 = result;
    *(a2 + 4) = 0;
  }

  return result;
}

unint64_t sub_1D988FE50()
{
  result = qword_1ECB47FB8;
  if (!qword_1ECB47FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB47FB8);
  }

  return result;
}

_BYTE *_s6FieldsOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1D9890104()
{
  result = qword_1ECB486A8;
  if (!qword_1ECB486A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB486A8);
  }

  return result;
}

uint64_t sub_1D9890158(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D98901A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB481D0, &qword_1D992F9F0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9890210(unsigned int a1)
{
  if (a1 >= 8)
  {
    return 7;
  }

  else
  {
    return (0x605040302010007uLL >> (8 * a1));
  }
}

uint64_t sub_1D9890274@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9890210(*a1);
  *a2 = result;
  return result;
}

BOOL sub_1D98902B0@<W0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D9890244(*a1);
  *a2 = result;
  return result;
}

id TagPredicate.write(to:)(void *a1)
{
  v3 = type metadata accessor for MessageGroupIdentifier(0);
  MEMORY[0x1EEE9AC00](*(*(v3 - 8) + 64));
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  switch(*v1 >> 61)
  {
    case 1uLL:
      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB486B8, &qword_1D9930E60);
      v16 = swift_projectBox();
      LOBYTE(v15) = *(v16 + *(v15 + 48));
      sub_1D988EE2C(v16, v5);
      MEMORY[0x1EEE9AC00](v17);
      *(&v19 - 4) = a1;
      *(&v19 - 3) = v5;
      *(&v19 - 16) = v15;
      OUTLINED_FUNCTION_5_6(3, sub_1D9890864);
      result = sub_1D9890884(v5);
      break;
    case 2uLL:
      OUTLINED_FUNCTION_0_18();
      MEMORY[0x1EEE9AC00](v11);
      OUTLINED_FUNCTION_1_12();
      v12 = sub_1D98919F0;
      v13 = 6;
      goto LABEL_6;
    case 3uLL:
      OUTLINED_FUNCTION_0_18();
      MEMORY[0x1EEE9AC00](v14);
      OUTLINED_FUNCTION_1_12();
      v12 = sub_1D9890848;
      v13 = 5;
LABEL_6:
      OUTLINED_FUNCTION_5_6(v13, v12);

      break;
    case 4uLL:
      OUTLINED_FUNCTION_0_18();
      MEMORY[0x1EEE9AC00](v10);
      *(&v19 - 2) = a1;
      *(&v19 - 1) = v5;
      sub_1D98907D8(v5);
      OUTLINED_FUNCTION_5_6(7, sub_1D98907BC);
      result = sub_1D9890810(v5);
      break;
    case 5uLL:
      if (v6 == 0xA000000000000000)
      {
        v18 = 2;
      }

      else
      {
        v18 = 4;
      }

      result = [a1 writeBOOL:1 forTag:v18];
      break;
    default:
      MEMORY[0x1EEE9AC00](*(v6 + 32));
      *(&v19 - 2) = v7;
      *(&v19 - 16) = v8;
      *(&v19 - 1) = a1;
      result = OUTLINED_FUNCTION_5_6(1, sub_1D98908E0);
      break;
  }

  return result;
}

id sub_1D9890584(uint64_t a1, uint64_t a2, unsigned __int8 a3, id a4)
{
  v7 = a3;
  if (!a3)
  {
    [a4 writeUint64:a1 forTag:1];
    v8 = a4;
    v9 = a2;
    goto LABEL_5;
  }

  v8 = a4;
  v9 = a1;
  if (v7 != 1)
  {
LABEL_5:
    v10 = 2;
    return [v8 writeUint64:v9 forTag:v10];
  }

  v10 = 1;
  return [v8 writeUint64:v9 forTag:v10];
}