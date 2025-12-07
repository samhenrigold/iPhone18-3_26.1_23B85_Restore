uint64_t sub_1CF23B07C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C1C20, &unk_1CFA0A250);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v26 = 0xD000000000000011;
        }

        else
        {
          v26 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v27 = 0x80000001CFA2C070;
        }

        else
        {
          v27 = 0x80000001CFA2C090;
        }
      }

      else if (v2 == 4)
      {
        v27 = 0xEA0000000000726FLL;
        v26 = 0x7272655F7473616CLL;
      }

      else
      {
        v27 = 0xE800000000000000;
        v26 = 0x797469726F697270;
      }
    }

    else if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xEF657461645F7972;
        v26 = 0x7465725F7478656ELL;
      }

      else
      {
        v26 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v2)
      {
        v27 = 0xEB00000000746E75;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD000000000000026;
    *(v8 + 40) = 0x80000001CFA35FF0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B3A4(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v26 = 0xD000000000000011;
        }

        else
        {
          v26 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v27 = 0x80000001CFA2C070;
        }

        else
        {
          v27 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (v2 == 4)
        {
          v26 = 0x7272655F7473616CLL;
        }

        else
        {
          v26 = 0x797469726F697270;
        }

        if (v2 == 4)
        {
          v27 = 0xEA0000000000726FLL;
        }

        else
        {
          v27 = 0xE800000000000000;
        }
      }
    }

    else if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xEF657461645F7972;
        v26 = 0x7465725F7478656ELL;
      }

      else
      {
        v26 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v2)
      {
        v27 = 0xEB00000000746E75;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001CFA360D0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B6BC(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v42, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v30 = 0xD000000000000011;
        }

        else
        {
          v30 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v31 = 0x80000001CFA2C070;
        }

        else
        {
          v31 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (v2 == 4)
        {
          v30 = 0x7272655F7473616CLL;
        }

        else
        {
          v30 = 0x797469726F697270;
        }

        if (v2 == 4)
        {
          v31 = 0xEA0000000000726FLL;
        }

        else
        {
          v31 = 0xE800000000000000;
        }
      }
    }

    else
    {
      v26 = 0x6574617473;
      v27 = 0xEF657461645F7972;
      v28 = 0x7465725F7478656ELL;
      if (v2 != 2)
      {
        v28 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }

      v29 = 0xEB00000000746E75;
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v29 = 0xE500000000000000;
      }

      if (v2 <= 1u)
      {
        v30 = v26;
      }

      else
      {
        v30 = v28;
      }

      if (v2 <= 1u)
      {
        v31 = v29;
      }

      else
      {
        v31 = v27;
      }
    }

    MEMORY[0x1D3868CC0](v30, v31);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v8 + 32) = 0xD00000000000001ALL;
    *(v8 + 40) = 0x80000001CFA360B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23B9D0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v26 = 0xD000000000000011;
        }

        else
        {
          v26 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v27 = 0x80000001CFA2C070;
        }

        else
        {
          v27 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (v2 == 4)
        {
          v26 = 0x7272655F7473616CLL;
        }

        else
        {
          v26 = 0x797469726F697270;
        }

        if (v2 == 4)
        {
          v27 = 0xEA0000000000726FLL;
        }

        else
        {
          v27 = 0xE800000000000000;
        }
      }
    }

    else if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xEF657461645F7972;
        v26 = 0x7465725F7478656ELL;
      }

      else
      {
        v26 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v2)
      {
        v27 = 0xEB00000000746E75;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD00000000000002CLL;
    *(v8 + 40) = 0x80000001CFA36100;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23BCE8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF0F8(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2 > 3u)
    {
      if (v2 > 5u)
      {
        if (v2 == 6)
        {
          v26 = 0xD000000000000011;
        }

        else
        {
          v26 = 0xD00000000000001ALL;
        }

        if (v2 == 6)
        {
          v27 = 0x80000001CFA2C070;
        }

        else
        {
          v27 = 0x80000001CFA2C090;
        }
      }

      else
      {
        if (v2 == 4)
        {
          v26 = 0x7272655F7473616CLL;
        }

        else
        {
          v26 = 0x797469726F697270;
        }

        if (v2 == 4)
        {
          v27 = 0xEA0000000000726FLL;
        }

        else
        {
          v27 = 0xE800000000000000;
        }
      }
    }

    else if (v2 > 1u)
    {
      if (v2 == 2)
      {
        v27 = 0xEF657461645F7972;
        v26 = 0x7465725F7478656ELL;
      }

      else
      {
        v26 = 0x7272655F7473616CLL;
        v27 = 0xEF657461645F726FLL;
      }
    }

    else
    {
      if (v2)
      {
        v26 = 0x6F635F7972746572;
      }

      else
      {
        v26 = 0x6574617473;
      }

      if (v2)
      {
        v27 = 0xEB00000000746E75;
      }

      else
      {
        v27 = 0xE500000000000000;
      }
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD000000000000029;
    *(v8 + 40) = 0x80000001CFA385F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C000(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B0, &qword_1CF9FDDB8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1CA5F0(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000003DLL;
    *(v8 + 40) = 0x80000001CFA377B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C214(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EC4C5730, &qword_1CF9FCCE0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1CA5F0(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA377F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C420(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE498, &qword_1CF9FDDB0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1CA5F0(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000039;
    *(v8 + 40) = 0x80000001CFA37820;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C62C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE490, &unk_1CF9FF020);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1CA5F0(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA37860;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23C840(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE488, &qword_1CF9FDDA8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1CA5F0(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA37890;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23CA4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA20, &qword_1CF9FF030);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v43 - v7;
  if (*(a2 + 16) && (v9 = sub_1CF7BF3BC(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v47);
  }

  else
  {
    memset(v47, 0, sizeof(v47));
  }

  sub_1CEFCCBDC(v47, &v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v47, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
    return sub_1CEFE55D0(v8, a3, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
    sub_1CEFCCC44(v8, &qword_1EC4BEA20, &qword_1CF9FF030);
    sub_1CF24CD3C();
    swift_allocError();
    v14 = v13;
    sub_1CEFCCBDC(v47, v13, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1CF9E7948();
    v46, v15, v16, v17, v18, v19, v20, v21;
    v43 = 0xD000000000000025;
    v44 = 0x80000001CFA378C0;
    sub_1CEFCCBDC(v47, &v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v22 = sub_1CF9E6948();
    v24 = v23;
    MEMORY[0x1D3868CC0](v22);
    v24, v25, v26, v27, v28, v29, v30, v31;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v32 = sub_1CF1CA5F0(a1);
    v34 = v33;
    MEMORY[0x1D3868CC0](v32);
    v34, v35, v36, v37, v38, v39, v40, v41;
    v42 = v44;
    *(v14 + 32) = v43;
    *(v14 + 40) = v42;
    *(v14 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v47, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23CD44(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BF3BC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1CA5F0(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000001DLL;
    *(v8 + 40) = 0x80000001CFA378F0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23CF40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BF3BC(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v41);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v38;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v41, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1CF9E7948();
    v40, v11, v12, v13, v14, v15, v16, v17;
    sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18 = sub_1CF9E6948();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v28 = sub_1CF1CA5F0(v3);
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v10 + 32) = 0xD000000000000023;
    *(v10 + 40) = 0x80000001CFA37910;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23D13C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD00000000000001DLL;
    *(v11 + 40) = 0x80000001CFA361C0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

unint64_t sub_1CF23D344(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v43);
  }

  else
  {
    memset(v43, 0, sizeof(v43));
  }

  sub_1CEFCCBDC(v43, &v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39 | ((v40 & 1) << 32);
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v43, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1CF9E7948();
    v42, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v43, &v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD000000000000027;
    *(v11 + 40) = 0x80000001CFA361E0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23D568(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CEFEAD20(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9A0, &qword_1CF9FEF38);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF357F60(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000025;
    *(v8 + 40) = 0x80000001CFA36210;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23D77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, __int128 *a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v44);
  }

  else
  {
    memset(v44, 0, sizeof(v44));
  }

  sub_1CEFCCBDC(v44, &v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4A0, &unk_1CFA03A10);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v44, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v41;
  }

  else
  {
    sub_1CEFF0584(0, 0xB000000000000000);
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v44, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v42 = 0;
    v43 = 0xE000000000000000;
    sub_1CF9E7948();
    v43, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFCCBDC(v44, &v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v21 = sub_1CF9E6948();
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v31 = a4(a1);
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v13 + 32) = 0xD000000000000025;
    *(v13 + 40) = 0x80000001CFA36270;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v44, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23D9AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BF3BC(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v41);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v38;
  }

  else
  {
    sub_1CEFE48D8(0, 0xF000000000000000);
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v41, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1CF9E7948();
    v40, v11, v12, v13, v14, v15, v16, v17;
    sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18 = sub_1CF9E6948();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v28 = sub_1CF1CA5F0(v3);
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    *(v10 + 32) = 0xD000000000000028;
    *(v10 + 40) = 0x80000001CFA38580;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23DBC0(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF0448F0(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    v26 = 0xE500000000000000;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v2)
    {
      if (v2 == 1)
      {
        v27 = 0xD000000000000010;
      }

      else
      {
        v27 = 0xD000000000000012;
      }

      if (v2 == 1)
      {
        v26 = 0x80000001CFA2C3F0;
      }

      else
      {
        v26 = 0x80000001CFA2C410;
      }
    }

    else
    {
      v27 = 0x6574617473;
    }

    MEMORY[0x1D3868CC0](v27, v26);
    v26, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD000000000000027;
    *(v8 + 40) = 0x80000001CFA362C0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23DE0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A0, &qword_1CF9FD3F0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD00000000000002DLL;
    *(v11 + 40) = 0x80000001CFA362F0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E024(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD000000000000027;
    *(v11 + 40) = 0x80000001CFA362C0;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E22C(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFB60(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2B0, &unk_1CF9FD410);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1D841C(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000024;
    *(v8 + 40) = 0x80000001CFA37580;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E440(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFB60(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1D841C(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD000000000000020;
    *(v8 + 40) = 0x80000001CFA375B0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23E63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BFB60(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v50);
  }

  else
  {
    memset(v50, 0, sizeof(v50));
  }

  sub_1CEFCCBDC(v50, v49, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v9 = v46;
    *a3 = v45;
    a3[1] = v9;
    v10 = v48;
    a3[2] = v47;
    a3[3] = v10;
  }

  else
  {
    v45 = 0uLL;
    *&v46 = 0;
    *(&v46 + 1) = 0xB000000000000000;
    v47 = 0u;
    v48 = 0u;
    v44[0] = 0uLL;
    v44[1] = v46;
    memset(&v44[2], 0, 32);
    sub_1CEFCCC44(v44, &unk_1EC4BF260, &unk_1CFA01B60);
    sub_1CF24CD3C();
    swift_allocError();
    v12 = v11;
    sub_1CEFCCBDC(v50, v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_1CF9E7948();
    0xE000000000000000, v13, v14, v15, v16, v17, v18, v19;
    v42 = 0xD000000000000026;
    v43 = 0x80000001CFA37640;
    sub_1CEFCCBDC(v50, v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v20 = sub_1CF9E6948();
    v22 = v21;
    MEMORY[0x1D3868CC0](v20);
    v22, v23, v24, v25, v26, v27, v28, v29;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v30 = sub_1CF1D841C(v3);
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = v43;
    *(v12 + 32) = v42;
    *(v12 + 40) = v40;
    *(v12 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23E884(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (*(a2 + 16) && (v7 = a3(a1), (v8 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v7, v42);
  }

  else
  {
    memset(v42, 0, sizeof(v42));
  }

  sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  type metadata accessor for NSFileProviderItemIdentifier(0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v39;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v11 = v10;
    sub_1CEFCCBDC(v42, v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v40 = 0;
    v41 = 0xE000000000000000;
    sub_1CF9E7948();
    v41, v12, v13, v14, v15, v16, v17, v18;
    sub_1CEFCCBDC(v42, &v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v19 = sub_1CF9E6948();
    v21 = v20;
    MEMORY[0x1D3868CC0](v19);
    v21, v22, v23, v24, v25, v26, v27, v28;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v29 = a4(a1);
    v31 = v30;
    MEMORY[0x1D3868CC0](v29);
    v31, v32, v33, v34, v35, v36, v37, v38;
    *(v11 + 32) = 0xD000000000000033;
    *(v11 + 40) = 0x80000001CFA37600;
    *(v11 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v42, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23EA90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BFB60(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v59);
  }

  else
  {
    memset(v59, 0, sizeof(v59));
  }

  sub_1CEFCCBDC(v59, &v57, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA10, &qword_1CF9FEFF8);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v59, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v11 = *&v55[16];
    v12 = v56;
    v13 = *v55;
    *a3 = v54;
    *(a3 + 16) = v13;
    *(a3 + 32) = v11;
    *(a3 + 40) = v12;
  }

  else
  {
    *v55 = 0;
    *&v55[8] = xmmword_1CF9FD920;
    v56 = 0;
    sub_1CF24D114(0, 0, 0, 1, 0, 0, v8, v9);
    sub_1CF24CD3C();
    swift_allocError();
    v15 = v14;
    sub_1CEFCCBDC(v59, v14, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_1CF9E7948();
    0xE000000000000000, v16, v17, v18, v19, v20, v21, v22;
    v57 = 0xD000000000000012;
    v58 = 0x80000001CFA362A0;
    v23 = sub_1CF9E82E8();
    v25 = v24;
    MEMORY[0x1D3868CC0](v23);
    v25, v26, v27, v28, v29, v30, v31, v32;
    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v59, &v54, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v33 = sub_1CF9E6948();
    v35 = v34;
    MEMORY[0x1D3868CC0](v33);
    v35, v36, v37, v38, v39, v40, v41, v42;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v43 = sub_1CF1D841C(v3);
    v45 = v44;
    MEMORY[0x1D3868CC0](v43);
    v45, v46, v47, v48, v49, v50, v51, v52;
    v53 = v58;
    *(v15 + 32) = v57;
    *(v15 + 40) = v53;
    *(v15 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v59, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23ED24(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFB60(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v39, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = sub_1CF1D841C(v2);
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v8 + 32) = 0xD00000000000001BLL;
    *(v8 + 40) = 0x80000001CFA375E0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23EF20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v45);
  }

  else
  {
    memset(v45, 0, sizeof(v45));
  }

  sub_1CEFCCBDC(v45, &v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a5 = v41;
    *(a5 + 8) = v42;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v45, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_1CF9E7948();
    v44, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFCCBDC(v45, &v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v21 = sub_1CF9E6948();
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v31 = a4(a1);
    v33 = v32;
    MEMORY[0x1D3868CC0](v31);
    v33, v34, v35, v36, v37, v38, v39, v40;
    *(v13 + 32) = 0xD000000000000020;
    *(v13 + 40) = 0x80000001CFA36540;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v45, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23F130@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = a1;
  if (*(a2 + 16) && (v6 = sub_1CF7BFB60(a1), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v52);
  }

  else
  {
    memset(v52, 0, sizeof(v52));
  }

  sub_1CEFCCBDC(v52, &v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9F0, &unk_1CF9FEFC0);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v48;
    a3[1] = v49;
  }

  else
  {
    sub_1CF24D104(1, 0, 0, 0);
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v52, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v50 = 0;
    v51 = 0xE000000000000000;
    sub_1CF9E7948();
    v51, v11, v12, v13, v14, v15, v16, v17;
    v18 = sub_1CF9E82E8();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v52, &v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v28 = sub_1CF9E6948();
    v30 = v29;
    MEMORY[0x1D3868CC0](v28);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v38 = sub_1CF1D841C(v3);
    v40 = v39;
    MEMORY[0x1D3868CC0](v38);
    v40, v41, v42, v43, v44, v45, v46, v47;
    *(v10 + 32) = 0xD000000000000012;
    *(v10 + 40) = 0x80000001CFA362A0;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v52, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF23F398(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFABC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v40);
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  sub_1CEFCCBDC(v40, &v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v37 & 1;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v40, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1CF9E7948();
    v39, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v40, &v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = v2 >> 2;
    if (v26 == 63)
    {
      v27 = 0xE400000000000000;
      v28 = 1701079411;
    }

    else if (v26 == 55)
    {
      v27 = 0xE400000000000000;
      v28 = 1701869940;
    }

    else
    {
      v28 = sub_1CF1D841C(v2);
      v27 = v29;
    }

    MEMORY[0x1D3868CC0](v28, v27);
    v27, v30, v31, v32, v33, v34, v35, v36;
    *(v8 + 32) = 0xD000000000000023;
    *(v8 + 40) = 0x80000001CFA37670;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23F5D8(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFABC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v40);
  }

  else
  {
    memset(v40, 0, sizeof(v40));
  }

  sub_1CEFCCBDC(v40, &v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v37;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v40, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v38 = 0;
    v39 = 0xE000000000000000;
    sub_1CF9E7948();
    v39, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v40, &v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v26 = v2 >> 2;
    if (v26 == 63)
    {
      v27 = 0xE400000000000000;
      v28 = 1701079411;
    }

    else if (v26 == 55)
    {
      v27 = 0xE400000000000000;
      v28 = 1701869940;
    }

    else
    {
      v28 = sub_1CF1D841C(v2);
      v27 = v29;
    }

    MEMORY[0x1D3868CC0](v28, v27);
    v27, v30, v31, v32, v33, v34, v35, v36;
    *(v8 + 32) = 0xD00000000000001ELL;
    *(v8 + 40) = 0x80000001CFA376A0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23F814(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (*(a2 + 16) && (v4 = sub_1CF7BFABC(a1), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v50);
  }

  else
  {
    memset(v50, 0, sizeof(v50));
  }

  sub_1CEFCCBDC(v50, &v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v47;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v50, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v48 = 0;
    v49 = 0xE000000000000000;
    sub_1CF9E7948();
    v49, v9, v10, v11, v12, v13, v14, v15;
    v16 = sub_1CF9E82E8();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20746F6720, 0xE500000000000000);
    sub_1CEFCCBDC(v50, &v48, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v26 = sub_1CF9E6948();
    v28 = v27;
    MEMORY[0x1D3868CC0](v26);
    v28, v29, v30, v31, v32, v33, v34, v35;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    v36 = v2 >> 2;
    if (v36 == 63)
    {
      v37 = 0xE400000000000000;
      v38 = 1701079411;
    }

    else if (v36 == 55)
    {
      v37 = 0xE400000000000000;
      v38 = 1701869940;
    }

    else
    {
      v38 = sub_1CF1D841C(v2);
      v37 = v39;
    }

    MEMORY[0x1D3868CC0](v38, v37);
    v37, v40, v41, v42, v43, v44, v45, v46;
    *(v8 + 32) = 0xD000000000000012;
    *(v8 + 40) = 0x80000001CFA362A0;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v50, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23FAA0(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (v4 = sub_1CF7D52B8(), (v5 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v4, v38);
  }

  else
  {
    memset(v38, 0, sizeof(v38));
  }

  sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9B8, &qword_1CF9FEF70);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v35;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v8 = v7;
    sub_1CEFCCBDC(v38, v7, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v36 = 0;
    v37 = 0xE000000000000000;
    sub_1CF9E7948();
    v37, v9, v10, v11, v12, v13, v14, v15;
    sub_1CEFCCBDC(v38, &v36, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v16 = sub_1CF9E6948();
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1)
    {
      if (a1 == 1)
      {
        v26 = 0x64695F6D657469;
      }

      else
      {
        v26 = 0x657079745F626F6ALL;
      }

      if (a1 == 1)
      {
        v27 = 0xE700000000000000;
      }

      else
      {
        v27 = 0xE800000000000000;
      }
    }

    else
    {
      v27 = 0xE400000000000000;
      v26 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v26, v27);
    v27, v28, v29, v30, v31, v32, v33, v34;
    *(v8 + 32) = 0xD00000000000003DLL;
    *(v8 + 40) = 0x80000001CFA36420;
    *(v8 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23FCF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a1;
  if (*(a2 + 16) && (v5 = a3(a1), (v6 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v5, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF730, &qword_1CF9FF048);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v36;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v9 = v8;
    sub_1CEFCCBDC(v39, v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_1CF9E7948();
    v38, v10, v11, v12, v13, v14, v15, v16;
    sub_1CEFCCBDC(v39, &v37, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v17 = sub_1CF9E6948();
    v19 = v18;
    MEMORY[0x1D3868CC0](v17);
    v19, v20, v21, v22, v23, v24, v25, v26;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v3)
    {
      if (v3 == 1)
      {
        v27 = 0x64695F6D657469;
      }

      else
      {
        v27 = 0x657079745F626F6ALL;
      }

      if (v3 == 1)
      {
        v28 = 0xE700000000000000;
      }

      else
      {
        v28 = 0xE800000000000000;
      }
    }

    else
    {
      v28 = 0xE400000000000000;
      v27 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v27, v28);
    v28, v29, v30, v31, v32, v33, v34, v35;
    *(v9 + 32) = 0xD000000000000028;
    *(v9 + 40) = 0x80000001CFA38620;
    *(v9 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

uint64_t sub_1CF23FF54@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v6 = sub_1CF7D52B8(), (v7 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v6, v41);
  }

  else
  {
    memset(v41, 0, sizeof(v41));
  }

  sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9C8, &unk_1CFA12A40);
  if (swift_dynamicCast())
  {
    result = sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    *a3 = v37;
    *(a3 + 8) = v38;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v10 = v9;
    sub_1CEFCCBDC(v41, v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1CF9E7948();
    v40, v11, v12, v13, v14, v15, v16, v17;
    sub_1CEFCCBDC(v41, &v39, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v18 = sub_1CF9E6948();
    v20 = v19;
    MEMORY[0x1D3868CC0](v18);
    v20, v21, v22, v23, v24, v25, v26, v27;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (a1)
    {
      if (a1 == 1)
      {
        v28 = 0x64695F6D657469;
      }

      else
      {
        v28 = 0x657079745F626F6ALL;
      }

      if (a1 == 1)
      {
        v29 = 0xE700000000000000;
      }

      else
      {
        v29 = 0xE800000000000000;
      }
    }

    else
    {
      v29 = 0xE400000000000000;
      v28 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v28, v29);
    v29, v30, v31, v32, v33, v34, v35, v36;
    *(v10 + 32) = 0xD00000000000002ALL;
    *(v10 + 40) = 0x80000001CFA36510;
    *(v10 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }

  return result;
}

uint64_t sub_1CF2401BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t *a4, uint64_t *a5)
{
  v7 = a1;
  if (*(a2 + 16) && (v9 = a3(a1), (v10 & 1) != 0))
  {
    sub_1CEFD1104(*(a2 + 56) + 32 * v9, v43);
  }

  else
  {
    memset(v43, 0, sizeof(v43));
  }

  sub_1CEFCCBDC(v43, &v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC50, &qword_1CF9FB4B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  if (swift_dynamicCast())
  {
    sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    return v40 & 1;
  }

  else
  {
    sub_1CF24CD3C();
    swift_allocError();
    v13 = v12;
    sub_1CEFCCBDC(v43, v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_1CF9E7948();
    v42, v14, v15, v16, v17, v18, v19, v20;
    sub_1CEFCCBDC(v43, &v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    v21 = sub_1CF9E6948();
    v23 = v22;
    MEMORY[0x1D3868CC0](v21);
    v23, v24, v25, v26, v27, v28, v29, v30;
    MEMORY[0x1D3868CC0](0x20726F6620, 0xE500000000000000);
    if (v7)
    {
      if (v7 == 1)
      {
        v31 = 0x64695F6D657469;
      }

      else
      {
        v31 = 0x657079745F626F6ALL;
      }

      if (v7 == 1)
      {
        v32 = 0xE700000000000000;
      }

      else
      {
        v32 = 0xE800000000000000;
      }
    }

    else
    {
      v32 = 0xE400000000000000;
      v31 = 1684957547;
    }

    MEMORY[0x1D3868CC0](v31, v32);
    v32, v33, v34, v35, v36, v37, v38, v39;
    *(v13 + 32) = 0xD000000000000025;
    *(v13 + 40) = 0x80000001CFA38650;
    *(v13 + 48) = 4;
    swift_willThrow();
    return sub_1CEFCCC44(v43, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  }
}

void sub_1CF24041C(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = sub_1CF24EF90();
  v8 = MEMORY[0x1D38688F0](v6, &_s9SQLFieldsON_4, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a2 + 16);
  if (!v9)
  {
LABEL_39:
    sub_1CF246D50(v8, v58);
    if (v52)
    {
LABEL_40:
      v8, v41, v42, v43, v44, v45, v46, v47;
    }

    else
    {
      v8, v41, v42, v43, v44, v45, v46, v47;
      v48 = v58[3];
      *(a4 + 32) = v58[2];
      *(a4 + 48) = v48;
      *(a4 + 64) = v59;
      v49 = v58[1];
      *a4 = v58[0];
      *(a4 + 16) = v49;
    }

    return;
  }

  v10 = 0;
  v11 = a2 + 32;
  while (1)
  {
    v12 = (a3 + v10);
    if (__OFADD__(a3, v10))
    {
      break;
    }

    v13 = *(v11 + v10);
    if (*(v11 + v10) <= 3u)
    {
      if (*(v11 + v10) > 1u)
      {
        *(&v56 + 1) = &type metadata for NSecTimestamp;
        v22 = [a1 longAtIndex_];
      }

      else
      {
        if (!*(v11 + v10))
        {
          *(&v56 + 1) = &type metadata for JobThrottlingState;
          v14 = [a1 longAtIndex_];
          if (v14 >= 3)
          {
            goto LABEL_43;
          }

          LOBYTE(v55) = v14;
          goto LABEL_22;
        }

        v22 = [a1 longAtIndex_];
        *(&v56 + 1) = MEMORY[0x1E69E6530];
      }

      goto LABEL_21;
    }

    if (*(v11 + v10) > 5u)
    {
      if (v13 == 6)
      {
        *(&v56 + 1) = &type metadata for JobThrottlingDomainWideError;
        v23 = sub_1CF94C0BC([a1 longAtIndex_]);
        if (v23 == 13)
        {
LABEL_43:
          sub_1CF1DA5D8();
          swift_allocError();
          *v50 = 0;
          swift_willThrow();
          __swift_deallocate_boxed_opaque_existential_0(&v55);
          goto LABEL_40;
        }

        LOBYTE(v55) = v23;
      }

      else
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_32;
        }

        v37 = [a1 stringAtIndex_];
        v38 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v40 = v39;

        *(&v56 + 1) = MEMORY[0x1E69E6158];
        *&v55 = v38;
        *(&v55 + 1) = v40;
      }
    }

    else
    {
      if (v13 != 4)
      {
        *(&v56 + 1) = &type metadata for JobSchedulingPriority;
        v22 = [a1 unsignedLongAtIndex_];
LABEL_21:
        *&v55 = v22;
        goto LABEL_22;
      }

      if ([a1 isNullAtIndex_])
      {
        goto LABEL_32;
      }

      v15 = [a1 dataAtIndex_];
      v16 = sub_1CF9E5B88();
      v18 = v17;

      sub_1CF4C2898(v16, v18);
      if (v52)
      {
        sub_1CEFE4714(v16, v18);
        goto LABEL_40;
      }

      v20 = v19;
      sub_1CEFE4714(v16, v18);
      if (!v20)
      {
LABEL_32:
        v55 = 0u;
        v56 = 0u;
        sub_1CEFCCC44(&v55, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_33;
      }

      swift_getErrorValue();
      *(&v56 + 1) = v54;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v55);
      (*(*(v54 - 8) + 16))(boxed_opaque_existential_0);
    }

LABEL_22:
    sub_1CEFE9EB8(&v55, v57);
    sub_1CEFD1104(v57, &v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v8;
    v26 = sub_1CF7BF0F8(v13);
    v27 = *v8->tree;
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_47;
    }

    v30 = v25;
    if (*v8->tester >= v29)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v60;
        if (v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_1CF7CF384();
        v8 = v60;
        if (v30)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_1CF7C3430(v29, isUniquelyReferenced_nonNull_native);
      v31 = sub_1CF7BF0F8(v13);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_49;
      }

      v26 = v31;
      v8 = v60;
      if (v30)
      {
LABEL_30:
        v36 = (*v8[1].tester + 32 * v26);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1CEFE9EB8(&v55, v36);
        __swift_destroy_boxed_opaque_existential_1(v57);
        goto LABEL_33;
      }
    }

    *(&v8[2].super.isa + (v26 >> 6)) |= 1 << v26;
    *(*v8[1].tree + v26) = v13;
    sub_1CEFE9EB8(&v55, (*v8[1].tester + 32 * v26));
    __swift_destroy_boxed_opaque_existential_1(v57);
    v33 = *v8->tree;
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (v34)
    {
      goto LABEL_48;
    }

    *v8->tree = v35;
LABEL_33:
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }

    if (v9 == ++v10)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF2408F8(uint64_t a1@<X0>, id a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v62 = a4;
  v8 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58[1] = v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CF9E5268();
  v60 = *(v10 - 8);
  v61 = v10;
  *&v11 = MEMORY[0x1EEE9AC00](v10).n128_u64[0];
  v59 = v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a2 columns];
  v14 = sub_1CF1CD084();
  v15 = MEMORY[0x1D38688F0](v13, &type metadata for SnapshotItemSQLFields, MEMORY[0x1E69E7CA0] + 8, v14);
  v16 = 0;
  v73 = *(a1 + 16);
  v64 = a2;
  v65 = a1 + 32;
  v63 = a3;
  while (1)
  {
    if (v73 == v16)
    {
      sub_1CF2018B8(v15, v62);
      goto LABEL_46;
    }

    if (__OFADD__(a3, v16))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      sub_1CF9E8108();
      __break(1u);
LABEL_56:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v18 = *(v65 + v16);
    if (v18 <= 0x1E)
    {
      switch(v18)
      {
        case 0x1C:
          v71 = &type metadata for VFSItemID;
          v35 = [a2 longAtIndex_];
          if (v35 != 0x8000000000000000)
          {
            if (v35)
            {
LABEL_26:
              if ((v35 & 0x8000000000000000) == 0)
              {
                LOBYTE(v36) = 1;
                goto LABEL_30;
              }

              v35 = -v35;
              v36 = HIDWORD(v35);
              if (!HIDWORD(v35))
              {
                goto LABEL_30;
              }

              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF24D0AC();
              v56 = v59;
              v57 = v61;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v60 + 8))(v56, v57);
              swift_willThrow();
LABEL_48:
              __swift_deallocate_boxed_opaque_existential_0(&v70);
LABEL_46:
              v15, v37, v38, v39, v40, v41, v42, v43;
              return;
            }

LABEL_23:
            LOBYTE(v36) = 2;
LABEL_30:
            *&v70 = v35;
            BYTE8(v70) = v36;
            goto LABEL_34;
          }

          break;
        case 0x1D:
          v71 = &type metadata for VFSItemID;
          v35 = [a2 longAtIndex_];
          if (v35 != 0x8000000000000000)
          {
            if (v35)
            {
              goto LABEL_26;
            }

            goto LABEL_23;
          }

          break;
        case 0x1E:
          v71 = &type metadata for Filename;
          v19 = [a2 stringAtIndex_];
          v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v22 = v21;

          *&v70 = v20;
          *(&v70 + 1) = v22;
          goto LABEL_34;
        default:
          goto LABEL_32;
      }

      LOBYTE(v36) = 2;
      v35 = 1;
      goto LABEL_30;
    }

    if (*(v65 + v16) <= 0x20u)
    {
      if (v18 == 31)
      {
        v34 = [a2 longLongAtIndex_];
        v71 = MEMORY[0x1E69E76D8];
        if ((v34 & 0x8000000000000000) != 0)
        {
          goto LABEL_54;
        }

        *&v70 = v34;
      }

      else
      {
        v23 = [a2 unsignedIntAtIndex_];
        v71 = MEMORY[0x1E69E7668];
        LODWORD(v70) = v23;
      }

      goto LABEL_34;
    }

    if (v18 == 33)
    {
      v71 = &type metadata for VFSVersion;
      v24 = swift_allocObject();
      v25 = a2;
      v26 = v24;
      *&v70 = v24;
      if ([v25 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_56;
      }

      sub_1CF9E5688();
      swift_allocObject();
      sub_1CF9E5678();
      v27 = [v64 dataAtIndex_];
      v28 = sub_1CF9E5B88();
      v30 = v29;

      sub_1CF1E10C4();
      sub_1CF9E5668();
      if (v4)
      {
        sub_1CEFE4714(v28, v30);

        goto LABEL_48;
      }

      sub_1CEFE4714(v28, v30);

      v31 = v67;
      v32 = v68;
      v33 = v69;
      *(v26 + 16) = v66;
      *(v26 + 24) = v31;
      *(v26 + 32) = v32;
      *(v26 + 40) = v33;
      a3 = v63;
      a2 = v64;
      goto LABEL_34;
    }

    if (v18 == 34)
    {
      break;
    }

LABEL_32:
    sub_1CF07F730(v18, a2, (a3 + v16), &v70);
    if (v4)
    {
      goto LABEL_46;
    }

    if (!v71)
    {
      sub_1CEFCCC44(&v70, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      goto LABEL_3;
    }

LABEL_34:
    sub_1CEFE9EB8(&v70, v72);
    sub_1CEFD1104(v72, &v70);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v15;
    v45 = sub_1CF7BF3BC(v18);
    v47 = *v15->tree;
    v48 = (v46 & 1) == 0;
    v49 = __OFADD__(v47, v48);
    v50 = v47 + v48;
    if (v49)
    {
      goto LABEL_52;
    }

    v51 = v46;
    if (*v15->tester < v50)
    {
      sub_1CF7C3EA4(v50, isUniquelyReferenced_nonNull_native);
      v45 = sub_1CF7BF3BC(v18);
      if ((v51 & 1) != (v52 & 1))
      {
        goto LABEL_55;
      }

LABEL_39:
      v15 = v66;
      if (v51)
      {
        goto LABEL_2;
      }

      goto LABEL_40;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_39;
    }

    v55 = v45;
    sub_1CF7CF840();
    v45 = v55;
    v15 = v66;
    if (v51)
    {
LABEL_2:
      v17 = (*v15[1].tester + 32 * v45);
      __swift_destroy_boxed_opaque_existential_1(v17);
      sub_1CEFE9EB8(&v70, v17);
      __swift_destroy_boxed_opaque_existential_1(v72);
      goto LABEL_3;
    }

LABEL_40:
    *(&v15[2].super.isa + (v45 >> 6)) |= 1 << v45;
    *(*v15[1].tree + v45) = v18;
    sub_1CEFE9EB8(&v70, (*v15[1].tester + 32 * v45));
    __swift_destroy_boxed_opaque_existential_1(v72);
    v53 = *v15->tree;
    v49 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v49)
    {
      goto LABEL_53;
    }

    *v15->tree = v54;
LABEL_3:
    if (++v16 == 0x80000000)
    {
      goto LABEL_51;
    }
  }

  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
  *&v70 = swift_allocObject();
  sub_1CF9E7B68();
  __break(1u);
}

void sub_1CF241018(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = sub_1CF1CD084();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for SnapshotItemSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v10 = *(a2 + 16);
  v11 = a2 + 32;
  while (1)
  {
    if (v10 == v9)
    {
      sub_1CF201F24(v8, a4);
      v8, v53, v54, v55, v56, v57, v58, v59;
      return;
    }

    v13 = (a3 + v9);
    if (__OFADD__(a3, v9))
    {
      break;
    }

    v14 = *(v11 + v9);
    if (*(v11 + v9) <= 0x1Eu)
    {
      switch(v14)
      {
        case 0x1C:
          type metadata accessor for NSFileProviderItemIdentifier(0);
          v64 = v19;
          v20 = [a1 stringAtIndex_];
          if (!v20)
          {
LABEL_28:
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v32 = v31;
            v33 = sub_1CF9E6888();
            v32, v34, v35, v36, v37, v38, v39, v40;
            v20 = v33;
          }

LABEL_29:
          *&v63 = v20;
          goto LABEL_30;
        case 0x1D:
          type metadata accessor for NSFileProviderItemIdentifier(0);
          v64 = v30;
          v20 = [a1 stringAtIndex_];
          if (!v20)
          {
            goto LABEL_28;
          }

          goto LABEL_29;
        case 0x1E:
          v64 = &type metadata for Filename;
          v16 = [a1 stringAtIndex_];
          v17 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
LABEL_26:
          v28 = v17;
          v29 = v18;

          *&v63 = v28;
          *(&v63 + 1) = v29;
          goto LABEL_30;
      }
    }

    else if (*(v11 + v9) > 0x20u)
    {
      if (v14 == 33 || v14 == 34)
      {
        v64 = &type metadata for FPItemVersionData;
        v16 = [a1 dataAtIndex_];
        v17 = sub_1CF9E5B88();
        goto LABEL_26;
      }
    }

    else
    {
      if (v14 == 31)
      {
        v20 = [a1 longLongAtIndex_];
        v64 = MEMORY[0x1E69E76D8];
        if (v20 < 0)
        {
          goto LABEL_47;
        }

        goto LABEL_29;
      }

      if (v14 == 32)
      {
        v15 = [a1 unsignedIntAtIndex_];
        v64 = MEMORY[0x1E69E7668];
        LODWORD(v63) = v15;
        goto LABEL_30;
      }
    }

    sub_1CF07F730(*(v11 + v9), a1, (a3 + v9), &v63);
    if (v61)
    {
      v8, v21, v22, v23, v24, v25, v26, v27;
      return;
    }

    if (!v64)
    {
      sub_1CEFCCC44(&v63, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      goto LABEL_3;
    }

LABEL_30:
    sub_1CEFE9EB8(&v63, v65);
    sub_1CEFD1104(v65, &v63);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v66 = v8;
    v43 = sub_1CF7BF3BC(v14);
    v44 = *v8->tree;
    v45 = (v42 & 1) == 0;
    v46 = v44 + v45;
    if (__OFADD__(v44, v45))
    {
      goto LABEL_45;
    }

    v47 = v42;
    if (*v8->tester >= v46)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v66;
        if ((v42 & 1) == 0)
        {
          goto LABEL_37;
        }
      }

      else
      {
        sub_1CF7CF840();
        v8 = v66;
        if ((v47 & 1) == 0)
        {
          goto LABEL_37;
        }
      }
    }

    else
    {
      sub_1CF7C3EA4(v46, isUniquelyReferenced_nonNull_native);
      v48 = sub_1CF7BF3BC(v14);
      if ((v47 & 1) != (v49 & 1))
      {
        goto LABEL_48;
      }

      v43 = v48;
      v8 = v66;
      if ((v47 & 1) == 0)
      {
LABEL_37:
        *(&v8[2].super.isa + (v43 >> 6)) |= 1 << v43;
        *(*v8[1].tree + v43) = v14;
        sub_1CEFE9EB8(&v63, (*v8[1].tester + 32 * v43));
        __swift_destroy_boxed_opaque_existential_1(v65);
        v50 = *v8->tree;
        v51 = __OFADD__(v50, 1);
        v52 = v50 + 1;
        if (v51)
        {
          goto LABEL_46;
        }

        *v8->tree = v52;
        goto LABEL_3;
      }
    }

    v12 = (*v8[1].tester + 32 * v43);
    __swift_destroy_boxed_opaque_existential_1(v12);
    sub_1CEFE9EB8(&v63, v12);
    __swift_destroy_boxed_opaque_existential_1(v65);
LABEL_3:
    if (++v9 == 0x80000000)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF24144C(uint64_t a1, id a2, int a3)
{
  v5 = [a2 columns];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9D0, &unk_1CF9FEFA0);
  v7 = sub_1CEFCCCEC(&qword_1EC4BE9D8, &qword_1EC4BE9D0, &unk_1CF9FEFA0, &unk_1CF9FCF98);
  v8 = MEMORY[0x1D38688F0](v5, v6, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_28:
    sub_1CF203F08(v8);
    if (v38)
    {
LABEL_31:
      v8, v30, v31, v32, v33, v34, v35, v36;
    }

    else
    {
      v8, v30, v31, v32, v33, v34, v35, v36;
    }

    return;
  }

  v10 = 0;
  v11 = a1 + 32;
  while (1)
  {
    v12 = (a3 + v10);
    if (__OFADD__(a3, v10))
    {
      break;
    }

    v13 = *(v11 + v10);
    if (v13 >> 2 == 55)
    {
      *(&v41 + 1) = &type metadata for JobCode;
      v15 = sub_1CF043D7C([a2 longAtIndex_]);
      if (v15 == 89)
      {
LABEL_30:
        sub_1CF1DA5D8();
        swift_allocError();
        *v37 = 0;
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v40);
        goto LABEL_31;
      }

      LOBYTE(v40) = v15;
    }

    else if (v13 >> 2 == 63)
    {
      *(&v41 + 1) = &type metadata for FileTreeSide;
      v14 = [a2 longAtIndex_];
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_30;
        }

        LOBYTE(v40) = 1;
      }

      else
      {
        LOBYTE(v40) = 0;
      }
    }

    else
    {
      if (v13 != 64)
      {
        v40 = 0u;
        v41 = 0u;
        sub_1CEFCCC44(&v40, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_26;
      }

      *(&v41 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE2A8, &qword_1CF9FD3F8);
      *&v40 = a2;
      DWORD2(v40) = a3 + v10;
      v16 = a2;
    }

    sub_1CEFE9EB8(&v40, v42);
    sub_1CEFD1104(v42, &v40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v8;
    v19 = sub_1CF7BFABC(v13);
    v20 = *v8->tree;
    v21 = (v18 & 1) == 0;
    v22 = v20 + v21;
    if (__OFADD__(v20, v21))
    {
      goto LABEL_35;
    }

    v23 = v18;
    if (*v8->tester >= v22)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v8 = v43;
        if (v18)
        {
          goto LABEL_22;
        }
      }

      else
      {
        sub_1CF7D1620();
        v8 = v43;
        if (v23)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
      sub_1CF7C7E28(v22, isUniquelyReferenced_nonNull_native);
      v24 = sub_1CF7BFABC(v13);
      if ((v23 & 1) != (v25 & 1))
      {
        goto LABEL_37;
      }

      v19 = v24;
      v8 = v43;
      if (v23)
      {
LABEL_22:
        v26 = (*v8[1].tester + 32 * v19);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_1CEFE9EB8(&v40, v26);
        __swift_destroy_boxed_opaque_existential_1(v42);
        goto LABEL_26;
      }
    }

    *(&v8[2].super.isa + (v19 >> 6)) |= 1 << v19;
    *(*v8[1].tree + v19) = v13;
    sub_1CEFE9EB8(&v40, (*v8[1].tester + 32 * v19));
    __swift_destroy_boxed_opaque_existential_1(v42);
    v27 = *v8->tree;
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_36;
    }

    *v8->tree = v29;
LABEL_26:
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_34;
    }

    if (v9 == ++v10)
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  sub_1CF9E8108();
  __break(1u);
}

unint64_t sub_1CF2417D4(uint64_t a1, id a2, int a3)
{
  v8 = v4;
  v10 = [a2 columns];
  v11 = sub_1CF1D9F60();
  v12 = MEMORY[0x1D38688F0](v10, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v11);
  v13 = v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    v5 = 0;
    v76 = a1 + 32;
    do
    {
      v15 = (a3 + v5);
      if (__OFADD__(a3, v5))
      {
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v6 = *(v76 + v5);
      v16 = v6 >> 5;
      if (v6 >> 5 > 1)
      {
        if (v16 == 3)
        {
          if (v6 == 96)
          {
            type metadata accessor for NSFileProviderItemIdentifier(0);
            *(&v79 + 1) = v20;
            v19 = [a2 stringAtIndex_];
            if (v19)
            {
              goto LABEL_29;
            }

            goto LABEL_22;
          }
        }

        else if (v16 == 2)
        {
          switch(v6)
          {
            case '@':
              goto LABEL_23;
            case 'A':
              v30 = &type metadata for JobReason;
LABEL_28:
              *(&v79 + 1) = v30;
              v19 = [a2 unsignedLongAtIndex_];
LABEL_29:
              *&v78 = v19;
LABEL_30:
              sub_1CEFE9EB8(&v78, v80);
              sub_1CEFD1104(v80, &v78);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v81 = v13;
              v12 = sub_1CF7BFB60(v6);
              v32 = *v13->tree;
              v33 = (v31 & 1) == 0;
              v34 = __OFADD__(v32, v33);
              v35 = v32 + v33;
              if (v34)
              {
                __break(1u);
LABEL_58:
                __break(1u);
                goto LABEL_59;
              }

              v15 = v31;
              if (*v13->tester < v35)
              {
                sub_1CF7C8288(v35, isUniquelyReferenced_nonNull_native);
                v12 = sub_1CF7BFB60(v6);
                if ((v15 & 1) != (v36 & 1))
                {
                  sub_1CF9E8108();
                  __break(1u);
LABEL_60:
                  sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
                }

                goto LABEL_35;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_35:
                v13 = v81;
                if ((v15 & 1) == 0)
                {
                  goto LABEL_42;
                }
              }

              else
              {
                v3 = v12;
                sub_1CF7D1634();
                v12 = v3;
                v13 = v81;
                if ((v15 & 1) == 0)
                {
LABEL_42:
                  *(&v13[2].super.isa + (v12 >> 6)) |= 1 << v12;
                  *(*v13[1].tree + v12) = v6;
                  sub_1CEFE9EB8(&v78, (*v13[1].tester + 32 * v12));
                  v12 = __swift_destroy_boxed_opaque_existential_1(v80);
                  v41 = *v13->tree;
                  v34 = __OFADD__(v41, 1);
                  v42 = v41 + 1;
                  if (v34)
                  {
                    goto LABEL_58;
                  }

                  *v13->tree = v42;
                  goto LABEL_44;
                }
              }

              v3 = (*v13[1].tester + 32 * v12);
              __swift_destroy_boxed_opaque_existential_1(v3);
              sub_1CEFE9EB8(&v78, v3);
              v12 = __swift_destroy_boxed_opaque_existential_1(v80);
              goto LABEL_44;
            case 'B':
              type metadata accessor for NSFileProviderItemIdentifier(0);
              *(&v79 + 1) = v18;
              v19 = [a2 stringAtIndex_];
              if (v19)
              {
                goto LABEL_29;
              }

LABEL_22:
              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v3 = v21;
              v22 = sub_1CF9E6888();
              v3, v23, v24, v25, v26, v27, v28, v29;
              v19 = v22;
              goto LABEL_29;
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          if ((v6 & 1) == 0)
          {
            v30 = &type metadata for JobSchedulingPriority;
            goto LABEL_28;
          }

          v17 = &type metadata for NSecTimestamp;
          goto LABEL_19;
        }
      }

      else
      {
        if (!*(v76 + v5))
        {
LABEL_23:
          v19 = [a2 longAtIndex_];
          *(&v79 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_29;
        }

        if (v6 == 1)
        {
          v17 = &type metadata for JobWaitCondition;
LABEL_19:
          *(&v79 + 1) = v17;
          v19 = [a2 longAtIndex_];
          goto LABEL_29;
        }

        if (([a2 isNullAtIndex_] & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([a2 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          v74 = v8;
          if (swift_dynamicCastMetatype())
          {
            goto LABEL_60;
          }

          sub_1CF9E5688();
          swift_allocObject();
          sub_1CF9E5678();
          v37 = [a2 dataAtIndex_];
          v38 = sub_1CF9E5B88();
          v40 = v39;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          sub_1CF9E5668();
          if (v74)
          {
            sub_1CEFE4714(v38, v40);
            v13, v52, v53, v54, v55, v56, v57, v58;

            return v5;
          }

          sub_1CEFE4714(v38, v40);

          v3 = v81;
          *(&v79 + 1) = type metadata accessor for Continuation();
          *&v78 = v3;
          v8 = 0;
          goto LABEL_30;
        }
      }

      v78 = 0u;
      v79 = 0u;
      v12 = sub_1CEFCCC44(&v78, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_44:
      if (v5 == 0x7FFFFFFF)
      {
        goto LABEL_52;
      }

      ++v5;
    }

    while (v14 != v5);
  }

  v43 = sub_1CF23E884(66, v13, sub_1CF7BFB60, sub_1CF1D841C);
  if (v8)
  {
    v13, v44, v45, v46, v47, v48, v49, v50;
  }

  else
  {
    v3 = v43;
    v14 = sub_1CF23E884(96, v13, sub_1CF7BFB60, sub_1CF1D841C);
    v6 = sub_1CEFF0CDC(32, v13, sub_1CF7BFB60, sub_1CF1D841C);
    v15 = sub_1CEFF0EE4(33, v13, sub_1CF7BFB60, sub_1CF1D841C);
    v12 = sub_1CF23E440(65, v13);
    isUniquelyReferenced_nonNull_native = 0;
LABEL_53:
    v5 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C0290, &qword_1CF9FB3F0);
    v59 = swift_allocObject();
    *(v59 + 144) = v3;
    *(v59 + 152) = v14;
    *(v59 + 16) = 0u;
    *(v59 + 32) = 0u;
    *(v59 + 48) = 1;
    *(v59 + 56) = 0u;
    *(v59 + 72) = 0u;
    *(v59 + 88) = 0;
    *(v59 + 96) = xmmword_1CF9FEC30;
    *(v59 + 112) = 0;
    *(v59 + 120) = v6;
    *(v59 + 128) = v15;
    *(v59 + 136) = v5;
    if ((v5 & 0x8000) != 0)
    {
      *(v59 + 96) = 2359552;
      *(v59 + 112) = 0;
    }

    v12 = sub_1CF246F18(v13);
    if (isUniquelyReferenced_nonNull_native)
    {

      v13, v60, v61, v62, v63, v64, v65, v66;
    }

    else
    {
LABEL_59:
      v5 = v12;

      v13, v67, v68, v69, v70, v71, v72, v73;
    }
  }

  return v5;
}

void sub_1CF241F04(uint64_t a1, id a2, int a3, uint64_t *a4, uint64_t *a5)
{
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (v9)
  {
    v10 = 0;
    v55 = a1 + 32;
    while (1)
    {
      v11 = (a3 + v10);
      if (__OFADD__(a3, v10))
      {
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        sub_1CF9E8108();
        __break(1u);
LABEL_50:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v12 = *(v55 + v10);
      if (v12 == 99)
      {
        v13 = [a2 unsignedLongLongAtIndex_];
        *(&v58 + 1) = &type metadata for CapturedContent;
        v14 = swift_allocObject();
        *&v57 = v14;
        *(v14 + 16) = v13;
        *(v14 + 24) = 0;
        *(v14 + 28) = 1;
        *(v14 + 32) = xmmword_1CF9F4E20;
        *(v14 + 48) = 0;
        *(v14 + 56) = 0;
        *(v14 + 64) = 1;
        *(v14 + 72) = 0;
        goto LABEL_22;
      }

      v15 = v12 >> 5;
      if (v12 >> 5)
      {
        break;
      }

      if (!*(v55 + v10))
      {
        goto LABEL_18;
      }

      if (v12 == 1)
      {
        v17 = &type metadata for JobWaitCondition;
LABEL_17:
        *(&v58 + 1) = v17;
        v18 = [a2 longAtIndex_];
LABEL_21:
        *&v57 = v18;
        goto LABEL_22;
      }

      if ([a2 isNullAtIndex_])
      {
LABEL_30:
        v57 = 0u;
        v58 = 0u;
        sub_1CEFCCC44(&v57, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
      if ([a2 isNullAtIndex_])
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
      }

      if (swift_dynamicCastMetatype())
      {
        goto LABEL_50;
      }

      sub_1CF9E5688();
      swift_allocObject();
      sub_1CF9E5678();
      v29 = [a2 dataAtIndex_];
      v30 = sub_1CF9E5B88();
      v32 = v31;

      sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
      sub_1CF9E5668();
      if (v53)
      {
        sub_1CEFE4714(v30, v32);
        v8, v44, v45, v46, v47, v48, v49, v50;

        return;
      }

      sub_1CEFE4714(v30, v32);

      v33 = v60;
      *(&v58 + 1) = type metadata accessor for Continuation();
      *&v57 = v33;
LABEL_22:
      sub_1CEFE9EB8(&v57, v59);
      sub_1CEFD1104(v59, &v57);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60 = v8;
      v20 = sub_1CF7BFB60(v12);
      v22 = *v8->tree;
      v23 = (v21 & 1) == 0;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        goto LABEL_47;
      }

      v26 = v21;
      if (*v8->tester >= v25)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v20;
          sub_1CF7D1634();
          v20 = v34;
          v8 = v60;
          if ((v26 & 1) == 0)
          {
LABEL_36:
            *(&v8[2].super.isa + (v20 >> 6)) |= 1 << v20;
            *(*v8[1].tree + v20) = v12;
            sub_1CEFE9EB8(&v57, (*v8[1].tester + 32 * v20));
            __swift_destroy_boxed_opaque_existential_1(v59);
            v35 = *v8->tree;
            v24 = __OFADD__(v35, 1);
            v36 = v35 + 1;
            if (v24)
            {
              goto LABEL_48;
            }

            *v8->tree = v36;
            goto LABEL_38;
          }

          goto LABEL_28;
        }
      }

      else
      {
        sub_1CF7C8288(v25, isUniquelyReferenced_nonNull_native);
        v20 = sub_1CF7BFB60(v12);
        if ((v26 & 1) != (v27 & 1))
        {
          goto LABEL_49;
        }
      }

      v8 = v60;
      if ((v26 & 1) == 0)
      {
        goto LABEL_36;
      }

LABEL_28:
      v28 = (*v8[1].tester + 32 * v20);
      __swift_destroy_boxed_opaque_existential_1(v28);
      sub_1CEFE9EB8(&v57, v28);
      __swift_destroy_boxed_opaque_existential_1(v59);
LABEL_38:
      if (v10 == 0x7FFFFFFF)
      {
        goto LABEL_46;
      }

      if (v9 == ++v10)
      {
        goto LABEL_40;
      }
    }

    if (v15 == 1)
    {
      if (v12)
      {
        v17 = &type metadata for NSecTimestamp;
        goto LABEL_17;
      }

      v16 = &type metadata for JobSchedulingPriority;
    }

    else
    {
      if (v15 != 2)
      {
        goto LABEL_30;
      }

      if (v12 == 64)
      {
LABEL_18:
        v18 = [a2 longAtIndex_];
        *(&v58 + 1) = MEMORY[0x1E69E6530];
        goto LABEL_21;
      }

      if (v12 != 65)
      {
        goto LABEL_30;
      }

      v16 = &type metadata for JobReason;
    }

    *(&v58 + 1) = v16;
    v18 = [a2 unsignedLongAtIndex_];
    goto LABEL_21;
  }

LABEL_40:
  sub_1CF205BFC(v8, a4, a5);
  if (v53)
  {
    v8, v37, v38, v39, v40, v41, v42, v43;
  }

  else
  {
    v8, v37, v38, v39, v40, v41, v42, v43;
  }
}

void sub_1CF242420(uint64_t a1, id a2, int a3)
{
  v89 = a3;
  v4 = a2;
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = 0;
  v83 = v4;
  v84 = a1 + 32;
  v10 = *(a1 + 16);
  v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  while (1)
  {
    if (v10 == v9)
    {
      sub_1CF2054B0(v8);
      v8, v69, v70, v71, v72, v73, v74, v75;
      return;
    }

    v12 = (v89 + v9);
    if (__OFADD__(v89, v9))
    {
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      sub_1CF9E8108();
      __break(1u);
LABEL_72:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v13 = *(v84 + v9);
    v14 = v13 >> 5;
    if (v13 >> 5 <= 1)
    {
      if (v14)
      {
        if (v14 != 1)
        {
          goto LABEL_3;
        }

        if ((v13 & 1) == 0)
        {
          v15 = &type metadata for JobSchedulingPriority;
LABEL_37:
          *(&v87 + 1) = v15;
          v27 = [v4 unsignedLongAtIndex_];
          goto LABEL_38;
        }

        v16 = &type metadata for NSecTimestamp;
      }

      else
      {
        if (!*(v84 + v9))
        {
          goto LABEL_31;
        }

        if (v13 != 1)
        {
          if ([v4 v11[463]])
          {
            goto LABEL_3;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v4 v11[463]])
          {
            goto LABEL_73;
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_72;
          }

          sub_1CF9E5688();
          swift_allocObject();
          sub_1CF9E5678();
          v45 = [v4 dataAtIndex_];
          v46 = sub_1CF9E5B88();
          v48 = v47;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          sub_1CF9E5668();
          if (v3)
          {
            break;
          }

          sub_1CEFE4714(v46, v48);

          v18 = *&v85[0];
          v19 = type metadata accessor for Continuation();
LABEL_55:
          *(&v87 + 1) = v19;
          *&v86 = v18;
          goto LABEL_39;
        }

        v16 = &type metadata for JobWaitCondition;
      }

      *(&v87 + 1) = v16;
      v27 = [v4 longAtIndex_];
LABEL_38:
      *&v86 = v27;
      goto LABEL_39;
    }

    if (v14 == 4)
    {
      if (v13 != 129 || ([v4 v11[463]] & 1) != 0)
      {
        goto LABEL_3;
      }

      v17 = [v4 integerAtIndex_];
      if (!v17)
      {
LABEL_2:
        v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_3:
        v86 = 0u;
        v87 = 0u;
        sub_1CEFCCC44(&v86, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_4;
      }

      v18 = [objc_opt_self() domainVersionWithVersion_];
      v19 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      goto LABEL_55;
    }

    if (v14 != 3)
    {
      if (v14 != 2)
      {
        goto LABEL_3;
      }

      if (*(v84 + v9) > 0x41u)
      {
        if (v13 == 66)
        {
          type metadata accessor for NSFileProviderItemIdentifier(0);
          *(&v87 + 1) = v49;
          v27 = [v4 stringAtIndex_];
          if (!v27)
          {
            _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v51 = v50;
            v52 = sub_1CF9E6888();
            v51, v53, v54, v55, v56, v57, v58, v59;
            v27 = v52;
          }

          goto LABEL_38;
        }

        if (v13 != 67)
        {
          goto LABEL_3;
        }

        v27 = [v4 unsignedLongAtIndex_];
        v28 = MEMORY[0x1E69E6810];
        goto LABEL_35;
      }

      if (v13 != 64)
      {
        if (v13 != 65)
        {
          goto LABEL_2;
        }

        v15 = &type metadata for JobReason;
        goto LABEL_37;
      }

LABEL_31:
      v27 = [v4 longAtIndex_];
      v28 = MEMORY[0x1E69E6530];
LABEL_35:
      *(&v87 + 1) = v28;
      goto LABEL_38;
    }

    if (v13 == 97)
    {
      *(&v87 + 1) = &type metadata for Filename;
      v41 = [v4 stringAtIndex_];
      v42 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v44 = v43;

      *&v86 = v42;
      *(&v86 + 1) = v44;
      goto LABEL_39;
    }

    if (v13 != 98)
    {
      goto LABEL_3;
    }

    if ([v4 v11[463]])
    {
      memset(v85, 0, 41);
LABEL_64:
      0, v20, v21, v22, v23, v24, v25, v26;
      goto LABEL_3;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA00, &qword_1CF9FEFF0);
    if ([v4 v11[463]])
    {
LABEL_73:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_72;
    }

    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    v60 = [v4 dataAtIndex_];
    v46 = sub_1CF9E5B88();
    v48 = v61;

    sub_1CEFCCCEC(&qword_1EC4BEA08, &qword_1EC4BEA00, &qword_1CF9FEFF0, &unk_1CFA1D980);
    sub_1CF9E5668();
    if (v3)
    {
      break;
    }

    sub_1CEFE4714(v46, v48);

    v62 = *(&v85[1] + 1);
    if (!*(&v85[1] + 1))
    {
      v4 = v83;
      v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      goto LABEL_64;
    }

    *(&v87 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA00, &qword_1CF9FEFF0);
    v63 = swift_allocObject();
    *&v86 = v63;
    v64 = BYTE8(v85[0]);
    v65 = *&v85[1];
    v66 = *&v85[2];
    v67 = BYTE8(v85[2]);
    *(v63 + 16) = *&v85[0];
    *(v63 + 24) = v64;
    *(v63 + 32) = v65;
    *(v63 + 40) = v62;
    *(v63 + 48) = v66;
    *(v63 + 56) = v67;
LABEL_39:
    sub_1CEFE9EB8(&v86, v88);
    sub_1CEFD1104(v88, v85);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v86 = v8;
    v30 = sub_1CF7BFB60(v13);
    v32 = *v8->tree;
    v33 = (v31 & 1) == 0;
    v34 = __OFADD__(v32, v33);
    v35 = v32 + v33;
    if (v34)
    {
      goto LABEL_69;
    }

    v36 = v31;
    if (*v8->tester >= v35)
    {
      v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v68 = v30;
        sub_1CF7D1634();
        v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        v30 = v68;
      }

      v4 = v83;
      v8 = v86;
      if (v36)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_1CF7C8288(v35, isUniquelyReferenced_nonNull_native);
      v30 = sub_1CF7BFB60(v13);
      if ((v36 & 1) != (v37 & 1))
      {
        goto LABEL_71;
      }

      v4 = v83;
      v11 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v8 = v86;
      if (v36)
      {
LABEL_48:
        v40 = (*v8[1].tester + 32 * v30);
        __swift_destroy_boxed_opaque_existential_1(v40);
        sub_1CEFE9EB8(v85, v40);
        __swift_destroy_boxed_opaque_existential_1(v88);
        goto LABEL_4;
      }
    }

    *(&v8[2].super.isa + (v30 >> 6)) |= 1 << v30;
    *(*v8[1].tree + v30) = v13;
    sub_1CEFE9EB8(v85, (*v8[1].tester + 32 * v30));
    __swift_destroy_boxed_opaque_existential_1(v88);
    v38 = *v8->tree;
    v34 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v34)
    {
      goto LABEL_70;
    }

    *v8->tree = v39;
LABEL_4:
    if (++v9 == 0x80000000)
    {
      goto LABEL_68;
    }
  }

  sub_1CEFE4714(v46, v48);
  v8, v76, v77, v78, v79, v80, v81, v82;
}

void sub_1CF242BD4(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v70 = a3;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v65 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a2;
  v13 = [a2 columns];
  v14 = sub_1CF1D9F60();
  v15 = MEMORY[0x1D38688F0](v13, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    v63 = v10;
    v64 = v9;
    v17 = 0;
    v69 = a1 + 32;
    do
    {
      v18 = (v70 + v17);
      if (__OFADD__(v70, v17))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v61 = v65;
        v62 = v64;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v63 + 8))(v61, v62);
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v71);
        goto LABEL_55;
      }

      v19 = *(v69 + v17);
      v20 = v19 >> 5;
      if (v19 >> 5 > 1)
      {
        if (v20 == 4)
        {
          if (v19 == 129 && ([v68 isNullAtIndex_] & 1) == 0)
          {
            v25 = [v68 integerAtIndex_];
            if (v25)
            {
              v26 = [objc_opt_self() domainVersionWithVersion_];
              v27 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
              goto LABEL_43;
            }
          }
        }

        else if (v20 == 2)
        {
          switch(v19)
          {
            case '@':
              goto LABEL_25;
            case 'A':
              v28 = &type metadata for JobReason;
LABEL_30:
              *(&v72 + 1) = v28;
              v24 = [v68 unsignedLongAtIndex_];
LABEL_31:
              *&v71 = v24;
              goto LABEL_32;
            case 'B':
              *(&v72 + 1) = &type metadata for VFSItemID;
              v22 = [v68 longAtIndex_];
              if (v22 == 0x8000000000000000)
              {
                LOBYTE(v23) = 2;
                v22 = 1;
              }

              else if (v22)
              {
                if ((v22 & 0x8000000000000000) != 0)
                {
                  v22 = -v22;
                  v23 = HIDWORD(v22);
                  if (HIDWORD(v22))
                  {
                    goto LABEL_60;
                  }
                }

                else
                {
                  LOBYTE(v23) = 1;
                }
              }

              else
              {
                LOBYTE(v23) = 2;
              }

              *&v71 = v22;
              BYTE8(v71) = v23;
              goto LABEL_32;
          }
        }
      }

      else if (v20)
      {
        if (v20 == 1)
        {
          if ((v19 & 1) == 0)
          {
            v28 = &type metadata for JobSchedulingPriority;
            goto LABEL_30;
          }

          v21 = &type metadata for NSecTimestamp;
          goto LABEL_20;
        }
      }

      else
      {
        if (!*(v69 + v17))
        {
LABEL_25:
          v24 = [v68 longAtIndex_];
          *(&v72 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_31;
        }

        if (v19 == 1)
        {
          v21 = &type metadata for JobWaitCondition;
LABEL_20:
          *(&v72 + 1) = v21;
          v24 = [v68 longAtIndex_];
          goto LABEL_31;
        }

        if (([v68 isNullAtIndex_] & 1) == 0)
        {
          v67 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v68 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_63;
          }

          sub_1CF9E5688();
          swift_allocObject();
          sub_1CF9E5678();
          v39 = [v68 dataAtIndex_];
          v40 = sub_1CF9E5B88();
          v42 = v41;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          v43 = v67;
          sub_1CF9E5668();
          v4 = v43;
          if (v43)
          {
            sub_1CEFE4714(v40, v42);
            v15, v54, v55, v56, v57, v58, v59, v60;

            return;
          }

          sub_1CEFE4714(v40, v42);

          v26 = v74;
          v27 = type metadata accessor for Continuation();
LABEL_43:
          *(&v72 + 1) = v27;
          *&v71 = v26;
LABEL_32:
          sub_1CEFE9EB8(&v71, v73);
          sub_1CEFD1104(v73, &v71);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v74 = v15;
          v30 = sub_1CF7BFB60(v19);
          v32 = *v15->tree;
          v33 = (v31 & 1) == 0;
          v34 = __OFADD__(v32, v33);
          v35 = v32 + v33;
          if (v34)
          {
            goto LABEL_59;
          }

          v36 = v31;
          if (*v15->tester < v35)
          {
            sub_1CF7C8288(v35, isUniquelyReferenced_nonNull_native);
            v30 = sub_1CF7BFB60(v19);
            if ((v36 & 1) != (v37 & 1))
            {
              goto LABEL_62;
            }

            goto LABEL_37;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_37:
            v15 = v74;
            if ((v36 & 1) == 0)
            {
              goto LABEL_50;
            }
          }

          else
          {
            v44 = v30;
            sub_1CF7D1634();
            v30 = v44;
            v15 = v74;
            if ((v36 & 1) == 0)
            {
LABEL_50:
              *(&v15[2].super.isa + (v30 >> 6)) |= 1 << v30;
              *(*v15[1].tree + v30) = v19;
              sub_1CEFE9EB8(&v71, (*v15[1].tester + 32 * v30));
              __swift_destroy_boxed_opaque_existential_1(v73);
              v45 = *v15->tree;
              v34 = __OFADD__(v45, 1);
              v46 = v45 + 1;
              if (v34)
              {
                __break(1u);
LABEL_62:
                sub_1CF9E8108();
                __break(1u);
LABEL_63:
                sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
              }

              *v15->tree = v46;
              goto LABEL_52;
            }
          }

          v38 = (*v15[1].tester + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v38);
          sub_1CEFE9EB8(&v71, v38);
          __swift_destroy_boxed_opaque_existential_1(v73);
          goto LABEL_52;
        }
      }

      v71 = 0u;
      v72 = 0u;
      sub_1CEFCCC44(&v71, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_52:
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_58;
      }

      ++v17;
    }

    while (v16 != v17);
  }

  sub_1CF20520C(v15);
LABEL_55:
  v15, v47, v48, v49, v50, v51, v52, v53;
}

void sub_1CF2432B8(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v71 = a3;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v66 = &v64 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  v13 = [a2 columns];
  v14 = sub_1CF1D9F60();
  v15 = MEMORY[0x1D38688F0](v13, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    v64 = v10;
    v65 = v9;
    v17 = 0;
    v70 = a1 + 32;
    while (1)
    {
      v18 = (v71 + v17);
      if (__OFADD__(v71, v17))
      {
        __break(1u);
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v62 = v66;
        v63 = v65;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v64 + 8))(v62, v63);
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v72);
        goto LABEL_61;
      }

      v19 = *(v70 + v17);
      v20 = v19 >> 5;
      if (v19 >> 5 <= 1)
      {
        break;
      }

      if (v20 == 4)
      {
        if (v19 == 128)
        {
          v21 = &type metadata for Fields;
LABEL_31:
          *(&v73 + 1) = v21;
          v26 = [v69 longAtIndex_];
          goto LABEL_32;
        }

        if (v19 != 129 || ([v69 isNullAtIndex_] & 1) != 0 || (v23 = objc_msgSend(v69, sel_integerAtIndex_, v18)) == 0)
        {
LABEL_41:
          v72 = 0u;
          v73 = 0u;
          sub_1CEFCCC44(&v72, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          goto LABEL_58;
        }

        v24 = [objc_opt_self() domainVersionWithVersion_];
        v25 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
LABEL_49:
        *(&v73 + 1) = v25;
        *&v72 = v24;
        goto LABEL_33;
      }

      if (v20 != 2)
      {
        goto LABEL_41;
      }

      if (*(v70 + v17) <= 0x41u)
      {
        if (v19 != 64)
        {
          if (v19 != 65)
          {
            goto LABEL_41;
          }

          v22 = &type metadata for JobReason;
          goto LABEL_25;
        }

LABEL_23:
        v26 = [v69 longAtIndex_];
        v27 = MEMORY[0x1E69E6530];
LABEL_29:
        *(&v73 + 1) = v27;
LABEL_32:
        *&v72 = v26;
        goto LABEL_33;
      }

      if (v19 != 66)
      {
        if (v19 != 67)
        {
          goto LABEL_41;
        }

        v26 = [v69 unsignedLongAtIndex_];
        v27 = MEMORY[0x1E69E6810];
        goto LABEL_29;
      }

      *(&v73 + 1) = &type metadata for VFSItemID;
      v38 = [v69 longAtIndex_];
      if (v38 == 0x8000000000000000)
      {
        LOBYTE(v39) = 2;
        v38 = 1;
      }

      else if (v38)
      {
        if ((v38 & 0x8000000000000000) != 0)
        {
          v38 = -v38;
          v39 = HIDWORD(v38);
          if (HIDWORD(v38))
          {
            goto LABEL_66;
          }
        }

        else
        {
          LOBYTE(v39) = 1;
        }
      }

      else
      {
        LOBYTE(v39) = 2;
      }

      *&v72 = v38;
      BYTE8(v72) = v39;
LABEL_33:
      sub_1CEFE9EB8(&v72, v74);
      sub_1CEFD1104(v74, &v72);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75 = v15;
      v29 = sub_1CF7BFB60(v19);
      v31 = *v15->tree;
      v32 = (v30 & 1) == 0;
      v33 = __OFADD__(v31, v32);
      v34 = v31 + v32;
      if (v33)
      {
        goto LABEL_65;
      }

      v35 = v30;
      if (*v15->tester >= v34)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v45 = v29;
          sub_1CF7D1634();
          v29 = v45;
          v15 = v75;
          if ((v35 & 1) == 0)
          {
LABEL_56:
            *(&v15[2].super.isa + (v29 >> 6)) |= 1 << v29;
            *(*v15[1].tree + v29) = v19;
            sub_1CEFE9EB8(&v72, (*v15[1].tester + 32 * v29));
            __swift_destroy_boxed_opaque_existential_1(v74);
            v46 = *v15->tree;
            v33 = __OFADD__(v46, 1);
            v47 = v46 + 1;
            if (v33)
            {
              __break(1u);
LABEL_68:
              sub_1CF9E8108();
              __break(1u);
LABEL_69:
              sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
            }

            *v15->tree = v47;
            goto LABEL_58;
          }

          goto LABEL_39;
        }
      }

      else
      {
        sub_1CF7C8288(v34, isUniquelyReferenced_nonNull_native);
        v29 = sub_1CF7BFB60(v19);
        if ((v35 & 1) != (v36 & 1))
        {
          goto LABEL_68;
        }
      }

      v15 = v75;
      if ((v35 & 1) == 0)
      {
        goto LABEL_56;
      }

LABEL_39:
      v37 = (*v15[1].tester + 32 * v29);
      __swift_destroy_boxed_opaque_existential_1(v37);
      sub_1CEFE9EB8(&v72, v37);
      __swift_destroy_boxed_opaque_existential_1(v74);
LABEL_58:
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_64;
      }

      if (v16 == ++v17)
      {
        goto LABEL_60;
      }
    }

    if (v20)
    {
      if (v20 != 1)
      {
        goto LABEL_41;
      }

      if (v19)
      {
        v21 = &type metadata for NSecTimestamp;
        goto LABEL_31;
      }

      v22 = &type metadata for JobSchedulingPriority;
LABEL_25:
      *(&v73 + 1) = v22;
      v26 = [v69 unsignedLongAtIndex_];
      goto LABEL_32;
    }

    if (!*(v70 + v17))
    {
      goto LABEL_23;
    }

    if (v19 == 1)
    {
      v21 = &type metadata for JobWaitCondition;
      goto LABEL_31;
    }

    if ([v69 isNullAtIndex_])
    {
      goto LABEL_41;
    }

    v68 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
    if ([v69 isNullAtIndex_])
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_69;
    }

    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    v40 = [v69 dataAtIndex_];
    v41 = sub_1CF9E5B88();
    v43 = v42;

    sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
    v44 = v68;
    sub_1CF9E5668();
    v4 = v44;
    if (v44)
    {
      sub_1CEFE4714(v41, v43);
      v15, v55, v56, v57, v58, v59, v60, v61;

      return;
    }

    sub_1CEFE4714(v41, v43);

    v24 = v75;
    v25 = type metadata accessor for Continuation();
    goto LABEL_49;
  }

LABEL_60:
  sub_1CF204AF4(v15);
LABEL_61:
  v15, v48, v49, v50, v51, v52, v53, v54;
}

void sub_1CF2439E0(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v72 = a3;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v65 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v67 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = a2;
  v13 = [a2 columns];
  v14 = sub_1CF1D9F60();
  v15 = MEMORY[0x1D38688F0](v13, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    v65 = v10;
    v66 = v9;
    v17 = 0;
    v71 = a1 + 32;
    do
    {
      v18 = (v72 + v17);
      if (__OFADD__(v72, v17))
      {
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        sub_1CF9E51B8();
        sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
        sub_1CF24D0AC();
        v63 = v67;
        v64 = v66;
        sub_1CF9E57D8();
        sub_1CF9E50D8();
        (*(v65 + 8))(v63, v64);
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v73);
        goto LABEL_59;
      }

      v19 = *(v71 + v17);
      v20 = v19 >> 5;
      if (v19 >> 5 > 1)
      {
        if (v20 == 4)
        {
          if (v19 == 129 && ([v70 isNullAtIndex_] & 1) == 0)
          {
            v24 = [v70 integerAtIndex_];
            if (v24)
            {
              v25 = [objc_opt_self() domainVersionWithVersion_];
              v26 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
              goto LABEL_40;
            }
          }
        }

        else if (v20 == 2)
        {
          if (*(v71 + v17) > 0x41u)
          {
            if (v19 == 66)
            {
              *(&v74 + 1) = &type metadata for VFSItemID;
              v29 = [v70 longAtIndex_];
              if (v29 == 0x8000000000000000)
              {
                LOBYTE(v30) = 2;
                v29 = 1;
              }

              else if (v29)
              {
                if ((v29 & 0x8000000000000000) != 0)
                {
                  v29 = -v29;
                  v30 = HIDWORD(v29);
                  if (HIDWORD(v29))
                  {
                    goto LABEL_64;
                  }
                }

                else
                {
                  LOBYTE(v30) = 1;
                }
              }

              else
              {
                LOBYTE(v30) = 2;
              }

              *&v73 = v29;
              BYTE8(v73) = v30;
              goto LABEL_46;
            }

            if (v19 == 67)
            {
              v27 = [v70 unsignedLongAtIndex_];
              v28 = MEMORY[0x1E69E6810];
              goto LABEL_30;
            }
          }

          else
          {
            if (v19 == 64)
            {
              goto LABEL_23;
            }

            if (v19 == 65)
            {
              v22 = &type metadata for JobReason;
              goto LABEL_25;
            }
          }
        }
      }

      else if (v20)
      {
        if (v20 == 1)
        {
          if (v19)
          {
            v21 = &type metadata for NSecTimestamp;
            goto LABEL_18;
          }

          v22 = &type metadata for JobSchedulingPriority;
LABEL_25:
          *(&v74 + 1) = v22;
          v23 = [v70 unsignedLongAtIndex_];
LABEL_26:
          *&v73 = v23;
          goto LABEL_46;
        }
      }

      else
      {
        if (!*(v71 + v17))
        {
LABEL_23:
          v27 = [v70 longAtIndex_];
          v28 = MEMORY[0x1E69E6530];
LABEL_30:
          *(&v74 + 1) = v28;
          *&v73 = v27;
          goto LABEL_46;
        }

        if (v19 == 1)
        {
          v21 = &type metadata for JobWaitCondition;
LABEL_18:
          *(&v74 + 1) = v21;
          v23 = [v70 longAtIndex_];
          goto LABEL_26;
        }

        if (([v70 isNullAtIndex_] & 1) == 0)
        {
          v69 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v70 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_67;
          }

          sub_1CF9E5688();
          swift_allocObject();
          sub_1CF9E5678();
          v31 = [v70 dataAtIndex_];
          v32 = sub_1CF9E5B88();
          v34 = v33;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          v35 = v69;
          sub_1CF9E5668();
          v4 = v35;
          if (v35)
          {
            sub_1CEFE4714(v32, v34);
            v15, v56, v57, v58, v59, v60, v61, v62;

            return;
          }

          sub_1CEFE4714(v32, v34);

          v25 = v76;
          v26 = type metadata accessor for Continuation();
LABEL_40:
          *(&v74 + 1) = v26;
          *&v73 = v25;
LABEL_46:
          sub_1CEFE9EB8(&v73, v75);
          sub_1CEFD1104(v75, &v73);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = v15;
          v37 = sub_1CF7BFB60(v19);
          v39 = *v15->tree;
          v40 = (v38 & 1) == 0;
          v41 = __OFADD__(v39, v40);
          v42 = v39 + v40;
          if (v41)
          {
            goto LABEL_63;
          }

          v43 = v38;
          if (*v15->tester < v42)
          {
            sub_1CF7C8288(v42, isUniquelyReferenced_nonNull_native);
            v37 = sub_1CF7BFB60(v19);
            if ((v43 & 1) != (v44 & 1))
            {
              goto LABEL_66;
            }

            goto LABEL_51;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
LABEL_51:
            v15 = v76;
            if ((v43 & 1) == 0)
            {
              goto LABEL_54;
            }
          }

          else
          {
            v46 = v37;
            sub_1CF7D1634();
            v37 = v46;
            v15 = v76;
            if ((v43 & 1) == 0)
            {
LABEL_54:
              *(&v15[2].super.isa + (v37 >> 6)) |= 1 << v37;
              *(*v15[1].tree + v37) = v19;
              sub_1CEFE9EB8(&v73, (*v15[1].tester + 32 * v37));
              __swift_destroy_boxed_opaque_existential_1(v75);
              v47 = *v15->tree;
              v41 = __OFADD__(v47, 1);
              v48 = v47 + 1;
              if (v41)
              {
                __break(1u);
LABEL_66:
                sub_1CF9E8108();
                __break(1u);
LABEL_67:
                sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
              }

              *v15->tree = v48;
              goto LABEL_56;
            }
          }

          v45 = (*v15[1].tester + 32 * v37);
          __swift_destroy_boxed_opaque_existential_1(v45);
          sub_1CEFE9EB8(&v73, v45);
          __swift_destroy_boxed_opaque_existential_1(v75);
          goto LABEL_56;
        }
      }

      v73 = 0u;
      v74 = 0u;
      sub_1CEFCCC44(&v73, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_56:
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_62;
      }

      ++v17;
    }

    while (v16 != v17);
  }

  sub_1CF2044E8(v15);
LABEL_59:
  v15, v49, v50, v51, v52, v53, v54, v55;
}

void sub_1CF2440F8(uint64_t a1, void *a2, int a3)
{
  v69 = a3;
  v5 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5268();
  v9 = *(v8 - 8);
  *&v10 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = a2;
  v13 = [a2 columns];
  v14 = sub_1CF1D9F60();
  v15 = MEMORY[0x1D38688F0](v13, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v14);
  v16 = *(a1 + 16);
  if (v16)
  {
    v62 = v7;
    v63 = v12;
    v64 = v9;
    v65 = v8;
    v17 = 0;
    v68 = a1 + 32;
    do
    {
      v18 = (v69 + v17);
      if (__OFADD__(v69, v17))
      {
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        sub_1CF9E8108();
        __break(1u);
LABEL_63:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v19 = *(v68 + v17);
      v20 = v19 >> 5;
      if (v19 >> 5 > 1)
      {
        if (v20 == 3)
        {
          if (v19 == 96)
          {
            *(&v71 + 1) = &type metadata for VFSItemID;
            v22 = [v67 longAtIndex_];
            if (v22 != 0x8000000000000000)
            {
              if (v22)
              {
                goto LABEL_16;
              }

              goto LABEL_25;
            }

            goto LABEL_33;
          }
        }

        else if (v20 == 2)
        {
          switch(v19)
          {
            case '@':
              goto LABEL_26;
            case 'A':
              v25 = &type metadata for JobReason;
LABEL_31:
              *(&v71 + 1) = v25;
              v24 = [v67 unsignedLongAtIndex_];
LABEL_32:
              *&v70 = v24;
LABEL_40:
              sub_1CEFE9EB8(&v70, v72);
              sub_1CEFD1104(v72, &v70);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v73 = v15;
              v33 = sub_1CF7BFB60(v19);
              v35 = *v15->tree;
              v36 = (v34 & 1) == 0;
              v37 = __OFADD__(v35, v36);
              v38 = v35 + v36;
              if (v37)
              {
                goto LABEL_60;
              }

              v39 = v34;
              if (*v15->tester < v38)
              {
                sub_1CF7C8288(v38, isUniquelyReferenced_nonNull_native);
                v33 = sub_1CF7BFB60(v19);
                if ((v39 & 1) != (v40 & 1))
                {
                  goto LABEL_62;
                }

                goto LABEL_45;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_45:
                v15 = v73;
                if ((v39 & 1) == 0)
                {
                  goto LABEL_48;
                }
              }

              else
              {
                v42 = v33;
                sub_1CF7D1634();
                v33 = v42;
                v15 = v73;
                if ((v39 & 1) == 0)
                {
LABEL_48:
                  *(&v15[2].super.isa + (v33 >> 6)) |= 1 << v33;
                  *(*v15[1].tree + v33) = v19;
                  sub_1CEFE9EB8(&v70, (*v15[1].tester + 32 * v33));
                  __swift_destroy_boxed_opaque_existential_1(v72);
                  v43 = *v15->tree;
                  v37 = __OFADD__(v43, 1);
                  v44 = v43 + 1;
                  if (v37)
                  {
                    goto LABEL_61;
                  }

                  *v15->tree = v44;
                  goto LABEL_50;
                }
              }

              v41 = (*v15[1].tester + 32 * v33);
              __swift_destroy_boxed_opaque_existential_1(v41);
              sub_1CEFE9EB8(&v70, v41);
              __swift_destroy_boxed_opaque_existential_1(v72);
              goto LABEL_50;
            case 'B':
              *(&v71 + 1) = &type metadata for VFSItemID;
              v22 = [v67 longAtIndex_];
              if (v22 != 0x8000000000000000)
              {
                if (v22)
                {
LABEL_16:
                  if ((v22 & 0x8000000000000000) != 0)
                  {
                    v22 = -v22;
                    v23 = HIDWORD(v22);
                    if (HIDWORD(v22))
                    {
                      sub_1CF9E51B8();
                      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
                      sub_1CF24D0AC();
                      v60 = v63;
                      v61 = v65;
                      sub_1CF9E57D8();
                      sub_1CF9E50D8();
                      (*(v64 + 8))(v60, v61);
                      swift_willThrow();
                      __swift_deallocate_boxed_opaque_existential_0(&v70);
LABEL_53:
                      v15, v46, v47, v48, v49, v50, v51, v52;
                      return;
                    }
                  }

                  else
                  {
                    LOBYTE(v23) = 1;
                  }

                  goto LABEL_39;
                }

LABEL_25:
                LOBYTE(v23) = 2;
LABEL_39:
                *&v70 = v22;
                BYTE8(v70) = v23;
                goto LABEL_40;
              }

LABEL_33:
              LOBYTE(v23) = 2;
              v22 = 1;
              goto LABEL_39;
          }
        }
      }

      else if (v20)
      {
        if (v20 == 1)
        {
          if ((v19 & 1) == 0)
          {
            v25 = &type metadata for JobSchedulingPriority;
            goto LABEL_31;
          }

          v21 = &type metadata for NSecTimestamp;
          goto LABEL_21;
        }
      }

      else
      {
        if (!*(v68 + v17))
        {
LABEL_26:
          v24 = [v67 longAtIndex_];
          *(&v71 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_32;
        }

        if (v19 == 1)
        {
          v21 = &type metadata for JobWaitCondition;
LABEL_21:
          *(&v71 + 1) = v21;
          v24 = [v67 longAtIndex_];
          goto LABEL_32;
        }

        if (([v67 isNullAtIndex_] & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v67 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_63;
          }

          sub_1CF9E5688();
          swift_allocObject();
          sub_1CF9E5678();
          v26 = [v67 dataAtIndex_];
          v27 = sub_1CF9E5B88();
          v29 = v28;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          v30 = v66;
          sub_1CF9E5668();
          v66 = v30;
          if (v30)
          {
            sub_1CEFE4714(v27, v29);
            v15, v53, v54, v55, v56, v57, v58, v59;

            return;
          }

          sub_1CEFE4714(v27, v29);

          v31 = v73;
          *(&v71 + 1) = type metadata accessor for Continuation();
          *&v70 = v31;
          goto LABEL_40;
        }
      }

      v70 = 0u;
      v71 = 0u;
      sub_1CEFCCC44(&v70, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_50:
      if (v17 == 0x7FFFFFFF)
      {
        goto LABEL_59;
      }

      ++v17;
    }

    while (v16 != v17);
  }

  v45 = v66;
  sub_1CF205E98(v15);
  if (v45)
  {
    goto LABEL_53;
  }

  v15, v46, v47, v48, v49, v50, v51, v52;
}

void sub_1CF244790(uint64_t a1, void *a2, int a3)
{
  v4 = v3;
  v89 = a3;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v78 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v79 = *(v9 - 8);
  v80 = v9;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 columns];
  v13 = sub_1CF1D9F60();
  v14 = v12;
  v15 = a2;
  v16 = MEMORY[0x1D38688F0](v14, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v13);
  v17 = 0;
  v82 = a2;
  v83 = a1 + 32;
  v18 = *(a1 + 16);
  v19 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
  while (1)
  {
    if (v18 == v17)
    {
      sub_1CF205860(v16);
LABEL_72:
      v16, v60, v61, v62, v63, v64, v65, v66;
      return;
    }

    v20 = (v89 + v17);
    if (__OFADD__(v89, v17))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      sub_1CF9E51B8();
      sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
      sub_1CF24D0AC();
      v74 = v77;
      v75 = v80;
      sub_1CF9E57D8();
      sub_1CF9E50D8();
      (*(v79 + 8))(v74, v75);
      swift_willThrow();
      __swift_deallocate_boxed_opaque_existential_0(&v86);
      goto LABEL_72;
    }

    v21 = *(v83 + v17);
    v22 = v21 >> 5;
    if (v21 >> 5 <= 1)
    {
      if (v22)
      {
        if (v22 != 1)
        {
          goto LABEL_3;
        }

        if ((v21 & 1) == 0)
        {
          v23 = &type metadata for JobSchedulingPriority;
LABEL_37:
          *(&v87 + 1) = v23;
          v28 = [v15 unsignedLongAtIndex_];
          goto LABEL_38;
        }

        v24 = &type metadata for NSecTimestamp;
      }

      else
      {
        if (!*(v83 + v17))
        {
          goto LABEL_31;
        }

        if (v21 != 1)
        {
          if ([v15 v19[463]])
          {
            goto LABEL_3;
          }

          v81 = v4;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([v15 v19[463]])
          {
            goto LABEL_81;
          }

          if (swift_dynamicCastMetatype())
          {
            goto LABEL_80;
          }

          sub_1CF9E5688();
          swift_allocObject();
          sub_1CF9E5678();
          v46 = [v15 dataAtIndex_];
          v47 = sub_1CF9E5B88();
          v49 = v48;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          v50 = v81;
          sub_1CF9E5668();
          v4 = v50;
          if (v50)
          {
            break;
          }

          sub_1CEFE4714(v47, v49);

          v26 = v84;
          v27 = type metadata accessor for Continuation();
LABEL_55:
          *(&v87 + 1) = v27;
          *&v86 = v26;
          goto LABEL_39;
        }

        v24 = &type metadata for JobWaitCondition;
      }

      *(&v87 + 1) = v24;
      v28 = [v15 longAtIndex_];
LABEL_38:
      *&v86 = v28;
      goto LABEL_39;
    }

    if (v22 == 4)
    {
      if (v21 != 129 || ([v15 v19[463]] & 1) != 0)
      {
        goto LABEL_3;
      }

      v25 = [v15 integerAtIndex_];
      if (!v25)
      {
LABEL_2:
        v19 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
LABEL_3:
        v86 = 0u;
        v87 = 0u;
        sub_1CEFCCC44(&v86, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_4;
      }

      v26 = [objc_opt_self() domainVersionWithVersion_];
      v27 = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      goto LABEL_55;
    }

    if (v22 != 3)
    {
      if (v22 != 2)
      {
        goto LABEL_3;
      }

      if (*(v83 + v17) > 0x41u)
      {
        if (v21 == 66)
        {
          *(&v87 + 1) = &type metadata for VFSItemID;
          v51 = [v15 longAtIndex_];
          if (v51 == 0x8000000000000000)
          {
            LOBYTE(v52) = 2;
            v51 = 1;
          }

          else if (v51)
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              v51 = -v51;
              v52 = HIDWORD(v51);
              if (HIDWORD(v51))
              {
                goto LABEL_78;
              }
            }

            else
            {
              LOBYTE(v52) = 1;
            }
          }

          else
          {
            LOBYTE(v52) = 2;
          }

          *&v86 = v51;
          BYTE8(v86) = v52;
          goto LABEL_39;
        }

        if (v21 != 67)
        {
          goto LABEL_3;
        }

        v28 = [v15 unsignedLongAtIndex_];
        v29 = MEMORY[0x1E69E6810];
        goto LABEL_35;
      }

      if (v21 != 64)
      {
        if (v21 != 65)
        {
          goto LABEL_2;
        }

        v23 = &type metadata for JobReason;
        goto LABEL_37;
      }

LABEL_31:
      v28 = [v15 longAtIndex_];
      v29 = MEMORY[0x1E69E6530];
LABEL_35:
      *(&v87 + 1) = v29;
      goto LABEL_38;
    }

    if (v21 == 97)
    {
      *(&v87 + 1) = &type metadata for Filename;
      v42 = [v15 stringAtIndex_];
      v43 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v45 = v44;

      *&v86 = v43;
      *(&v86 + 1) = v45;
      goto LABEL_39;
    }

    if (v21 != 98)
    {
      goto LABEL_3;
    }

    if ([v15 v19[463]])
    {
      v84 = 0u;
      v85 = 0u;
LABEL_68:
      sub_1CF24D058(0, *(&v84 + 1), v85, *(&v85 + 1));
      goto LABEL_3;
    }

    v81 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9E0, &qword_1CF9FEFB8);
    if ([v15 v19[463]])
    {
LABEL_81:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
    }

    if (swift_dynamicCastMetatype())
    {
      goto LABEL_80;
    }

    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    v53 = [v15 dataAtIndex_];
    v47 = sub_1CF9E5B88();
    v49 = v54;

    sub_1CEFCCCEC(&qword_1EC4BE9E8, &qword_1EC4BE9E0, &qword_1CF9FEFB8, &unk_1CFA1D980);
    v55 = v81;
    sub_1CF9E5668();
    v4 = v55;
    if (v55)
    {
      break;
    }

    sub_1CEFE4714(v47, v49);

    v56 = v84;
    if (!v84)
    {
      v15 = v82;
      v19 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      goto LABEL_68;
    }

    *(&v87 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE9E0, &qword_1CF9FEFB8);
    v57 = swift_allocObject();
    *&v86 = v57;
    v58 = *(&v84 + 1);
    *(v57 + 16) = v56;
    *(v57 + 24) = v58;
    *(v57 + 32) = v85;
LABEL_39:
    sub_1CEFE9EB8(&v86, v88);
    sub_1CEFD1104(v88, &v86);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v84 = v16;
    v31 = sub_1CF7BFB60(v21);
    v33 = *v16->tree;
    v34 = (v32 & 1) == 0;
    v35 = __OFADD__(v33, v34);
    v36 = v33 + v34;
    if (v35)
    {
      goto LABEL_76;
    }

    v37 = v32;
    if (*v16->tester >= v36)
    {
      v19 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v59 = v31;
        sub_1CF7D1634();
        v19 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
        v31 = v59;
      }

      v15 = v82;
      v16 = v84;
      if (v37)
      {
        goto LABEL_48;
      }
    }

    else
    {
      sub_1CF7C8288(v36, isUniquelyReferenced_nonNull_native);
      v31 = sub_1CF7BFB60(v21);
      if ((v37 & 1) != (v38 & 1))
      {
        sub_1CF9E8108();
        __break(1u);
LABEL_80:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
      }

      v15 = v82;
      v19 = &_swift_FORCE_LOAD___swiftMLCompute___FileProviderDaemon;
      v16 = v84;
      if (v37)
      {
LABEL_48:
        v41 = (*v16[1].tester + 32 * v31);
        __swift_destroy_boxed_opaque_existential_1(v41);
        sub_1CEFE9EB8(&v86, v41);
        __swift_destroy_boxed_opaque_existential_1(v88);
        goto LABEL_4;
      }
    }

    *(&v16[2].super.isa + (v31 >> 6)) |= 1 << v31;
    *(*v16[1].tree + v31) = v21;
    sub_1CEFE9EB8(&v86, (*v16[1].tester + 32 * v31));
    __swift_destroy_boxed_opaque_existential_1(v88);
    v39 = *v16->tree;
    v35 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (v35)
    {
      goto LABEL_77;
    }

    *v16->tree = v40;
LABEL_4:
    if (++v17 == 0x80000000)
    {
      goto LABEL_75;
    }
  }

  sub_1CEFE4714(v47, v49);
  v16, v67, v68, v69, v70, v71, v72, v73;
}

_TtC18FileProviderDaemon8FSTester **sub_1CF245094(_TtC18FileProviderDaemon8FSTester **a1, id a2, int a3)
{
  v7 = v4;
  v9 = [a2 columns];
  v10 = sub_1CF1D9F60();
  v11 = MEMORY[0x1D38688F0](v9, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v10);
  v12 = v11;
  v13 = a1[2];
  if (v13)
  {
    v14 = 0;
    v80 = a1 + 4;
    do
    {
      v15 = (a3 + v14);
      if (__OFADD__(a3, v14))
      {
        __break(1u);
LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      v5 = *(v80 + v14);
      v16 = v5 >> 5;
      if (v5 >> 5 > 1)
      {
        if (v16 == 4)
        {
          if (v5 == 129 && ([a2 isNullAtIndex_] & 1) == 0)
          {
            v29 = [a2 integerAtIndex_];
            if (v29)
            {
              v3 = [objc_opt_self() domainVersionWithVersion_];
              *(&v83 + 1) = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
              *&v82 = v3;
              goto LABEL_31;
            }
          }
        }

        else if (v16 == 2)
        {
          switch(v5)
          {
            case '@':
              goto LABEL_24;
            case 'A':
              v30 = &type metadata for JobReason;
LABEL_29:
              *(&v83 + 1) = v30;
              v19 = [a2 unsignedLongAtIndex_];
LABEL_30:
              *&v82 = v19;
LABEL_31:
              sub_1CEFE9EB8(&v82, v84);
              sub_1CEFD1104(v84, &v82);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v85 = v12;
              a1 = v12;
              v31 = sub_1CF7BFB60(v5);
              v33 = *v12->tree;
              v34 = (v32 & 1) == 0;
              v35 = __OFADD__(v33, v34);
              v36 = v33 + v34;
              if (v35)
              {
                __break(1u);
                goto LABEL_57;
              }

              v15 = v32;
              if (*v12->tester < v36)
              {
                sub_1CF7C8288(v36, isUniquelyReferenced_nonNull_native);
                a1 = v85;
                v31 = sub_1CF7BFB60(v5);
                if ((v15 & 1) != (v37 & 1))
                {
                  goto LABEL_59;
                }

                goto LABEL_36;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_36:
                v12 = v85;
                if ((v15 & 1) == 0)
                {
                  goto LABEL_43;
                }
              }

              else
              {
                a1 = &v85;
                v3 = v31;
                sub_1CF7D1634();
                v31 = v3;
                v12 = v85;
                if ((v15 & 1) == 0)
                {
LABEL_43:
                  *(&v12[2].super.isa + (v31 >> 6)) |= 1 << v31;
                  *(*v12[1].tree + v31) = v5;
                  sub_1CEFE9EB8(&v82, (*v12[1].tester + 32 * v31));
                  v11 = __swift_destroy_boxed_opaque_existential_1(v84);
                  v42 = *v12->tree;
                  v35 = __OFADD__(v42, 1);
                  v43 = v42 + 1;
                  if (v35)
                  {
                    __break(1u);
LABEL_59:
                    sub_1CF9E8108();
                    __break(1u);
LABEL_60:
                    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
                  }

                  *v12->tree = v43;
                  goto LABEL_45;
                }
              }

              v3 = (*v12[1].tester + 32 * v31);
              __swift_destroy_boxed_opaque_existential_1(v3);
              sub_1CEFE9EB8(&v82, v3);
              v11 = __swift_destroy_boxed_opaque_existential_1(v84);
              goto LABEL_45;
            case 'B':
              type metadata accessor for NSFileProviderItemIdentifier(0);
              *(&v83 + 1) = v18;
              v19 = [a2 stringAtIndex_];
              if (v19)
              {
                goto LABEL_30;
              }

              _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
              v3 = v20;
              v21 = sub_1CF9E6888();
              v3, v22, v23, v24, v25, v26, v27, v28;
              *&v82 = v21;
              goto LABEL_31;
          }
        }
      }

      else if (v16)
      {
        if (v16 == 1)
        {
          if ((v5 & 1) == 0)
          {
            v30 = &type metadata for JobSchedulingPriority;
            goto LABEL_29;
          }

          v17 = &type metadata for NSecTimestamp;
          goto LABEL_19;
        }
      }

      else
      {
        if (!*(v80 + v14))
        {
LABEL_24:
          v19 = [a2 longAtIndex_];
          *(&v83 + 1) = MEMORY[0x1E69E6530];
          goto LABEL_30;
        }

        if (v5 == 1)
        {
          v17 = &type metadata for JobWaitCondition;
LABEL_19:
          *(&v83 + 1) = v17;
          v19 = [a2 longAtIndex_];
          goto LABEL_30;
        }

        if (([a2 isNullAtIndex_] & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
          if ([a2 isNullAtIndex_])
          {
            sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
          }

          v78 = v7;
          if (swift_dynamicCastMetatype())
          {
            goto LABEL_60;
          }

          sub_1CF9E5688();
          swift_allocObject();
          a1 = sub_1CF9E5678();
          v38 = [a2 dataAtIndex_];
          v39 = sub_1CF9E5B88();
          v41 = v40;

          sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
          sub_1CF9E5668();
          if (v78)
          {
            sub_1CEFE4714(v39, v41);
            v12, v53, v54, v55, v56, v57, v58, v59;

            return a1;
          }

          sub_1CEFE4714(v39, v41);

          v3 = v85;
          *(&v83 + 1) = type metadata accessor for Continuation();
          *&v82 = v3;
          v7 = 0;
          goto LABEL_31;
        }
      }

      v82 = 0u;
      v83 = 0u;
      v11 = sub_1CEFCCC44(&v82, &unk_1EC4BEC50, &qword_1CF9FB4B0);
LABEL_45:
      if (v14 == 0x7FFFFFFF)
      {
        goto LABEL_53;
      }

      ++v14;
    }

    while (v13 != v14);
  }

  v44 = sub_1CF23E884(66, v12, sub_1CF7BFB60, sub_1CF1D841C);
  if (v7)
  {
    v12, v45, v46, v47, v48, v49, v50, v51;
  }

  else
  {
    v3 = v44;
    v13 = sub_1CEFEF234(129, v12, sub_1CF7BFB60, sub_1CF1D841C);
    v5 = sub_1CEFF0CDC(32, v12, sub_1CF7BFB60, sub_1CF1D841C);
    v15 = sub_1CEFF0EE4(33, v12, sub_1CF7BFB60, sub_1CF1D841C);
    v11 = sub_1CF23E440(65, v12);
    isUniquelyReferenced_nonNull_native = 0;
LABEL_54:
    v60 = v11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFDD0, &unk_1CF9FAE80);
    v61 = swift_allocObject();
    v61[20] = 0;
    *(v61 + 168) = -1;
    v61[22] = 0;
    *(v61 + 184) = -1;
    *(v61 + 12) = 0u;
    *(v61 + 13) = 0u;
    *(v61 + 14) = 0u;
    *(v61 + 15) = 0u;
    *(v61 + 16) = 0u;
    *(v61 + 17) = 0u;
    v61[36] = 0;
    *(v61 + 296) = 1;
    *(v61 + 297) = 514;
    v62 = *(*v61 + 688);
    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE360, &qword_1CF9FE650);
    (*(*(v63 - 8) + 56))(v61 + v62, 1, 1, v63);
    v61[18] = v3;
    v61[19] = v13;
    *(v61 + 1) = 0u;
    *(v61 + 2) = 0u;
    *(v61 + 48) = 1;
    *(v61 + 7) = 0u;
    *(v61 + 9) = 0u;
    v61[15] = v5;
    v61[16] = v15;
    v61[17] = v60;
    v61[12] = 0;
    v61[13] = 0;
    v61[11] = 0;
    *(v61 + 112) = 0;
    a1 = v61;
    v31 = sub_1CF246F18(v12);
    if (isUniquelyReferenced_nonNull_native)
    {

      v12, v64, v65, v66, v67, v68, v69, v70;
    }

    else
    {
LABEL_57:
      a1 = v31;

      v12, v71, v72, v73, v74, v75, v76, v77;
    }
  }

  return a1;
}

void sub_1CF245898(uint64_t a1, id a2, int a3)
{
  v4 = v3;
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_53:
    sub_1CF204E80(v8);
    v8, v49, v50, v51, v52, v53, v54, v55;
    return;
  }

  v10 = 0;
  v65 = a1 + 32;
  while (1)
  {
    v11 = (a3 + v10);
    if (__OFADD__(a3, v10))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      sub_1CF9E8108();
      __break(1u);
LABEL_60:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v12 = *(v65 + v10);
    v13 = v12 >> 5;
    if (v12 >> 5 <= 1)
    {
      break;
    }

    if (v13 == 4)
    {
      if (v12 == 128)
      {
        v14 = &type metadata for Fields;
LABEL_31:
        *(&v68 + 1) = v14;
        v18 = [a2 longAtIndex_];
LABEL_32:
        *&v67 = v18;
        goto LABEL_33;
      }

      if (v12 != 129 || ([a2 isNullAtIndex_] & 1) != 0 || (v16 = objc_msgSend(a2, sel_integerAtIndex_, v11)) == 0)
      {
LABEL_41:
        v67 = 0u;
        v68 = 0u;
        sub_1CEFCCC44(&v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_51;
      }

      v17 = [objc_opt_self() domainVersionWithVersion_];
      *(&v68 + 1) = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      *&v67 = v17;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_41;
      }

      if (*(v65 + v10) <= 0x41u)
      {
        if (v12 != 64)
        {
          if (v12 != 65)
          {
            goto LABEL_41;
          }

          v15 = &type metadata for JobReason;
LABEL_25:
          *(&v68 + 1) = v15;
          v18 = [a2 unsignedLongAtIndex_];
          goto LABEL_32;
        }

LABEL_23:
        v18 = [a2 longAtIndex_];
        v19 = MEMORY[0x1E69E6530];
LABEL_29:
        *(&v68 + 1) = v19;
        goto LABEL_32;
      }

      if (v12 != 66)
      {
        if (v12 != 67)
        {
          goto LABEL_41;
        }

        v18 = [a2 unsignedLongAtIndex_];
        v19 = MEMORY[0x1E69E6810];
        goto LABEL_29;
      }

      type metadata accessor for NSFileProviderItemIdentifier(0);
      *(&v68 + 1) = v30;
      v18 = [a2 stringAtIndex_];
      if (v18)
      {
        goto LABEL_32;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v31;
      v33 = sub_1CF9E6888();
      v32, v34, v35, v36, v37, v38, v39, v40;
      *&v67 = v33;
    }

LABEL_33:
    sub_1CEFE9EB8(&v67, v69);
    sub_1CEFD1104(v69, &v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v8;
    v21 = sub_1CF7BFB60(v12);
    v23 = *v8->tree;
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_57;
    }

    v27 = v22;
    if (*v8->tester >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v21;
        sub_1CF7D1634();
        v21 = v46;
        v8 = v70;
        if ((v27 & 1) == 0)
        {
LABEL_49:
          *(&v8[2].super.isa + (v21 >> 6)) |= 1 << v21;
          *(*v8[1].tree + v21) = v12;
          sub_1CEFE9EB8(&v67, (*v8[1].tester + 32 * v21));
          __swift_destroy_boxed_opaque_existential_1(v69);
          v47 = *v8->tree;
          v25 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v25)
          {
            goto LABEL_58;
          }

          *v8->tree = v48;
          goto LABEL_51;
        }

        goto LABEL_39;
      }
    }

    else
    {
      sub_1CF7C8288(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1CF7BFB60(v12);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_59;
      }
    }

    v8 = v70;
    if ((v27 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_39:
    v29 = (*v8[1].tester + 32 * v21);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1CEFE9EB8(&v67, v29);
    __swift_destroy_boxed_opaque_existential_1(v69);
LABEL_51:
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_56;
    }

    if (v9 == ++v10)
    {
      goto LABEL_53;
    }
  }

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_41;
    }

    if (v12)
    {
      v14 = &type metadata for NSecTimestamp;
      goto LABEL_31;
    }

    v15 = &type metadata for JobSchedulingPriority;
    goto LABEL_25;
  }

  if (!*(v65 + v10))
  {
    goto LABEL_23;
  }

  if (v12 == 1)
  {
    v14 = &type metadata for JobWaitCondition;
    goto LABEL_31;
  }

  if ([a2 isNullAtIndex_])
  {
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
  if ([a2 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  v63 = v4;
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_60;
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v41 = [a2 dataAtIndex_];
  v42 = sub_1CF9E5B88();
  v44 = v43;

  sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
  sub_1CF9E5668();
  if (!v63)
  {
    sub_1CEFE4714(v42, v44);

    v45 = v70;
    *(&v68 + 1) = type metadata accessor for Continuation();
    *&v67 = v45;
    v4 = 0;
    goto LABEL_33;
  }

  sub_1CEFE4714(v42, v44);
  v8, v56, v57, v58, v59, v60, v61, v62;
}

void sub_1CF245E6C(uint64_t a1, id a2, int a3)
{
  v4 = v3;
  v6 = [a2 columns];
  v7 = sub_1CF1D9F60();
  v8 = MEMORY[0x1D38688F0](v6, &type metadata for JobSQLFields, MEMORY[0x1E69E7CA0] + 8, v7);
  v9 = *(a1 + 16);
  if (!v9)
  {
LABEL_51:
    sub_1CF2047F0(v8);
    v8, v49, v50, v51, v52, v53, v54, v55;
    return;
  }

  v10 = 0;
  v65 = a1 + 32;
  while (1)
  {
    v11 = (a3 + v10);
    if (__OFADD__(a3, v10))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      sub_1CF9E8108();
      __break(1u);
LABEL_58:
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 261);
    }

    v12 = *(v65 + v10);
    v13 = v12 >> 5;
    if (v12 >> 5 <= 1)
    {
      break;
    }

    if (v13 == 4)
    {
      if (v12 != 129 || ([a2 isNullAtIndex_] & 1) != 0 || (v17 = objc_msgSend(a2, sel_integerAtIndex_, v11)) == 0)
      {
LABEL_39:
        v67 = 0u;
        v68 = 0u;
        sub_1CEFCCC44(&v67, &unk_1EC4BEC50, &qword_1CF9FB4B0);
        goto LABEL_49;
      }

      v18 = [objc_opt_self() domainVersionWithVersion_];
      *(&v68 + 1) = sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
      *&v67 = v18;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_39;
      }

      if (*(v65 + v10) <= 0x41u)
      {
        if (v12 != 64)
        {
          if (v12 != 65)
          {
            goto LABEL_39;
          }

          v15 = &type metadata for JobReason;
LABEL_25:
          *(&v68 + 1) = v15;
          v16 = [a2 unsignedLongAtIndex_];
          goto LABEL_30;
        }

LABEL_23:
        v16 = [a2 longAtIndex_];
        v19 = MEMORY[0x1E69E6530];
LABEL_29:
        *(&v68 + 1) = v19;
        goto LABEL_30;
      }

      if (v12 != 66)
      {
        if (v12 != 67)
        {
          goto LABEL_39;
        }

        v16 = [a2 unsignedLongAtIndex_];
        v19 = MEMORY[0x1E69E6810];
        goto LABEL_29;
      }

      type metadata accessor for NSFileProviderItemIdentifier(0);
      *(&v68 + 1) = v30;
      v16 = [a2 stringAtIndex_];
      if (v16)
      {
        goto LABEL_30;
      }

      _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v32 = v31;
      v33 = sub_1CF9E6888();
      v32, v34, v35, v36, v37, v38, v39, v40;
      *&v67 = v33;
    }

LABEL_31:
    sub_1CEFE9EB8(&v67, v69);
    sub_1CEFD1104(v69, &v67);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v8;
    v21 = sub_1CF7BFB60(v12);
    v23 = *v8->tree;
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_55;
    }

    v27 = v22;
    if (*v8->tester >= v26)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v46 = v21;
        sub_1CF7D1634();
        v21 = v46;
        v8 = v70;
        if ((v27 & 1) == 0)
        {
LABEL_47:
          *(&v8[2].super.isa + (v21 >> 6)) |= 1 << v21;
          *(*v8[1].tree + v21) = v12;
          sub_1CEFE9EB8(&v67, (*v8[1].tester + 32 * v21));
          __swift_destroy_boxed_opaque_existential_1(v69);
          v47 = *v8->tree;
          v25 = __OFADD__(v47, 1);
          v48 = v47 + 1;
          if (v25)
          {
            goto LABEL_56;
          }

          *v8->tree = v48;
          goto LABEL_49;
        }

        goto LABEL_37;
      }
    }

    else
    {
      sub_1CF7C8288(v26, isUniquelyReferenced_nonNull_native);
      v21 = sub_1CF7BFB60(v12);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_57;
      }
    }

    v8 = v70;
    if ((v27 & 1) == 0)
    {
      goto LABEL_47;
    }

LABEL_37:
    v29 = (*v8[1].tester + 32 * v21);
    __swift_destroy_boxed_opaque_existential_1(v29);
    sub_1CEFE9EB8(&v67, v29);
    __swift_destroy_boxed_opaque_existential_1(v69);
LABEL_49:
    if (v10 == 0x7FFFFFFF)
    {
      goto LABEL_54;
    }

    if (v9 == ++v10)
    {
      goto LABEL_51;
    }
  }

  if (v13)
  {
    if (v13 != 1)
    {
      goto LABEL_39;
    }

    if (v12)
    {
      v14 = &type metadata for NSecTimestamp;
      goto LABEL_18;
    }

    v15 = &type metadata for JobSchedulingPriority;
    goto LABEL_25;
  }

  if (!*(v65 + v10))
  {
    goto LABEL_23;
  }

  if (v12 == 1)
  {
    v14 = &type metadata for JobWaitCondition;
LABEL_18:
    *(&v68 + 1) = v14;
    v16 = [a2 longAtIndex_];
LABEL_30:
    *&v67 = v16;
    goto LABEL_31;
  }

  if ([a2 isNullAtIndex_])
  {
    goto LABEL_39;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BFF40, &unk_1CF9FE780);
  if ([a2 isNullAtIndex_])
  {
    sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/Prequelite+FSSyncAdditions.swift", 145, 2, 260);
  }

  v63 = v4;
  if (swift_dynamicCastMetatype())
  {
    goto LABEL_58;
  }

  sub_1CF9E5688();
  swift_allocObject();
  sub_1CF9E5678();
  v41 = [a2 dataAtIndex_];
  v42 = sub_1CF9E5B88();
  v44 = v43;

  sub_1CEFCCCEC(&qword_1EDEA6218, &unk_1EC4BFF40, &unk_1CF9FE780, &unk_1CF9FC930);
  sub_1CF9E5668();
  if (!v63)
  {
    sub_1CEFE4714(v42, v44);

    v45 = v70;
    *(&v68 + 1) = type metadata accessor for Continuation();
    *&v67 = v45;
    v4 = 0;
    goto LABEL_31;
  }

  sub_1CEFE4714(v42, v44);
  v8, v56, v57, v58, v59, v60, v61, v62;
}

void sub_1CF24642C(id a1@<X1>, uint64_t a2@<X0>, int a3@<W2>, uint64_t a4@<X8>)
{
  v6 = [a1 columns];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA40, &qword_1CF9FF058);
  v8 = sub_1CEFCCCEC(&qword_1EDEA7F30, &qword_1EC4BEA40, &qword_1CF9FF058, &unk_1CFA02828);
  v9 = MEMORY[0x1D38688F0](v6, v7, MEMORY[0x1E69E7CA0] + 8, v8);
  v10 = *(a2 + 16);
  if (!v10)
  {
LABEL_29:
    sub_1CF23A828(v9, a4);
LABEL_30:
    v9, v41, v42, v43, v44, v45, v46, v47;
    return;
  }

  v11 = 0;
  v12 = a2 + 32;
  while (1)
  {
    v13 = (a3 + v11);
    if (__OFADD__(a3, v11))
    {
      break;
    }

    v14 = *(v12 + v11);
    if (*(v12 + v11))
    {
      if (v14 == 1)
      {
        if ([a1 isNullAtIndex_])
        {
          goto LABEL_13;
        }

        v15 = [a1 stringAtIndex_];
        if (!v15)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v17 = v16;
          v15 = sub_1CF9E6888();
          v17, v18, v19, v20, v21, v22, v23, v24;
        }

        type metadata accessor for NSFileProviderItemIdentifier(0);
        *(&v52 + 1) = v25;
        *&v51 = v15;
      }

      else
      {
        if ([a1 isNullAtIndex_])
        {
LABEL_13:
          v51 = 0u;
          v52 = 0u;
          sub_1CEFCCC44(&v51, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          goto LABEL_27;
        }

        v26 = sub_1CF043D7C([a1 longAtIndex_]);
        if (v26 == 89)
        {
          sub_1CF1DA5D8();
          swift_allocError();
          *v48 = 0;
          swift_willThrow();
          goto LABEL_30;
        }

        *(&v52 + 1) = &type metadata for JobCode;
        LOBYTE(v51) = v26;
      }
    }

    else
    {
      *(&v52 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA48, &qword_1CF9FF060);
      if ([a1 longAtIndex_])
      {
        sub_1CF1DA5D8();
        swift_allocError();
        *v40 = 0;
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v51);
        goto LABEL_30;
      }
    }

    sub_1CEFE9EB8(&v51, v53);
    sub_1CEFD1104(v53, &v51);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v54 = v9;
    v29 = sub_1CF7D52B8();
    v30 = *v9->tree;
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      goto LABEL_34;
    }

    v33 = v28;
    if (*v9->tester >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v9 = v54;
        if (v28)
        {
          goto LABEL_23;
        }
      }

      else
      {
        sub_1CF7D17B4();
        v9 = v54;
        if (v33)
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      sub_1CF7C8680(v32, isUniquelyReferenced_nonNull_native);
      v34 = sub_1CF7D52B8();
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_36;
      }

      v29 = v34;
      v9 = v54;
      if (v33)
      {
LABEL_23:
        v36 = (*v9[1].tester + 32 * v29);
        __swift_destroy_boxed_opaque_existential_1(v36);
        sub_1CEFE9EB8(&v51, v36);
        __swift_destroy_boxed_opaque_existential_1(v53);
        goto LABEL_27;
      }
    }

    *(&v9[2].super.isa + (v29 >> 6)) |= 1 << v29;
    *(*v9[1].tree + v29) = v14;
    sub_1CEFE9EB8(&v51, (*v9[1].tester + 32 * v29));
    __swift_destroy_boxed_opaque_existential_1(v53);
    v37 = *v9->tree;
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_35;
    }

    *v9->tree = v39;
LABEL_27:
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_33;
    }

    if (v10 == ++v11)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF24680C(uint64_t a1@<X0>, void *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v54 = a3;
  v6 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CF9E5268();
  v51 = *(v8 - 8);
  *&v9 = MEMORY[0x1EEE9AC00](v8).n128_u64[0];
  v49 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a2 columns];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA28, &qword_1CF9FF038);
  v13 = sub_1CEFCCCEC(qword_1EDEA7F38, &qword_1EC4BEA28, &qword_1CF9FF038, &unk_1CFA02828);
  v48 = v12;
  v14 = MEMORY[0x1D38688F0](v11, v12, MEMORY[0x1E69E7CA0] + 8, v13);
  v15 = *(a1 + 16);
  if (!v15)
  {
LABEL_34:
    sub_1CF23A928(v14, v52);
LABEL_35:
    v14, v36, v37, v38, v39, v40, v41, v42;
    return;
  }

  v47 = v8;
  v16 = 0;
  v53 = a1 + 32;
  while (1)
  {
    v17 = (v54 + v16);
    if (__OFADD__(v54, v16))
    {
      break;
    }

    v18 = *(v53 + v16);
    if (*(v53 + v16))
    {
      if (v18 == 1)
      {
        if ([a2 isNullAtIndex_])
        {
          goto LABEL_13;
        }

        v19 = [a2 longAtIndex_];
        if (v19 == 0x8000000000000000)
        {
          LOBYTE(v20) = 2;
          v19 = 1;
        }

        else if (v19)
        {
          if ((v19 & 0x8000000000000000) != 0)
          {
            v19 = -v19;
            v20 = HIDWORD(v19);
            if (HIDWORD(v19))
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF24D0AC();
              v44 = v49;
              v45 = v47;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v51 + 8))(v44, v45);
              swift_willThrow();
              goto LABEL_35;
            }
          }

          else
          {
            LOBYTE(v20) = 1;
          }
        }

        else
        {
          LOBYTE(v20) = 2;
        }

        *(&v56 + 1) = &type metadata for VFSItemID;
        *&v55 = v19;
        BYTE8(v55) = v20;
      }

      else
      {
        if ([a2 isNullAtIndex_])
        {
LABEL_13:
          v55 = 0u;
          v56 = 0u;
          sub_1CEFCCC44(&v55, &unk_1EC4BEC50, &qword_1CF9FB4B0);
          goto LABEL_32;
        }

        v21 = sub_1CF043D7C([a2 longAtIndex_]);
        if (v21 == 89)
        {
          sub_1CF1DA5D8();
          swift_allocError();
          *v43 = 0;
          swift_willThrow();
          goto LABEL_35;
        }

        *(&v56 + 1) = &type metadata for JobCode;
        LOBYTE(v55) = v21;
      }
    }

    else
    {
      *(&v56 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA30, &qword_1CF9FF040);
      if ([a2 longAtIndex_])
      {
        sub_1CF1DA5D8();
        swift_allocError();
        *v35 = 0;
        swift_willThrow();
        __swift_deallocate_boxed_opaque_existential_0(&v55);
        goto LABEL_35;
      }
    }

    sub_1CEFE9EB8(&v55, v57);
    sub_1CEFD1104(v57, &v55);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v14;
    v24 = sub_1CF7D52B8();
    v25 = *v14->tree;
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_40;
    }

    v28 = v23;
    if (*v14->tester >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v14 = v58;
        if (v23)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1CF7D17C8();
        v14 = v58;
        if (v28)
        {
          goto LABEL_28;
        }
      }
    }

    else
    {
      sub_1CF7C8694(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_1CF7D52B8();
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_42;
      }

      v24 = v29;
      v14 = v58;
      if (v28)
      {
LABEL_28:
        v31 = (*v14[1].tester + 32 * v24);
        __swift_destroy_boxed_opaque_existential_1(v31);
        sub_1CEFE9EB8(&v55, v31);
        __swift_destroy_boxed_opaque_existential_1(v57);
        goto LABEL_32;
      }
    }

    *(&v14[2].super.isa + (v24 >> 6)) |= 1 << v24;
    *(*v14[1].tree + v24) = v18;
    sub_1CEFE9EB8(&v55, (*v14[1].tester + 32 * v24));
    __swift_destroy_boxed_opaque_existential_1(v57);
    v32 = *v14->tree;
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_41;
    }

    *v14->tree = v34;
LABEL_32:
    if (v16 == 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    if (v15 == ++v16)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  sub_1CF9E8108();
  __break(1u);
}

void sub_1CF246D50(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1CF23BCE8(0, a1);
  if (!v2)
  {
    v6 = v5;
    v7 = sub_1CF23B9D0(5, a1);
    v8 = sub_1CF23B6BC(1, a1);
    v9 = sub_1CF23B3A4(2, a1);
    v10 = sub_1CF23B3A4(3, a1);
    v11 = sub_1CF23B07C(4, a1);
    v12 = sub_1CF23AD58(6, a1);
    v13 = sub_1CF23AA30(7, a1);
    v15 = 0x7FFFFFFFFFFFFFFFLL;
    if (((1 << v12) & 0x860) == 0)
    {
      v15 = v9;
    }

    if (v12 <= 0xBu)
    {
      v16 = v15;
    }

    else
    {
      v16 = v9;
    }

    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v16;
    *(a2 + 32) = v10;
    *(a2 + 40) = v11;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
    *(a2 + 64) = v14;
  }
}

uint64_t sub_1CF246E80(uint64_t a1, id a2)
{
  v8 = *a1;
  if (!*(a1 + 8))
  {
    goto LABEL_5;
  }

  if (*(a1 + 8) != 1)
  {
    v8 = (v8 != 0) << 63;
    goto LABEL_7;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_5:
    v8 = -v8;
  }

LABEL_7:
  v9 = [a2 bindLongParameter_];
  v10 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

  return v10;
}

uint64_t sub_1CF246F18(uint64_t a1)
{
  v4 = sub_1CF23E22C(64, a1);
  if (!v2)
  {
    if (v5)
    {
      v6 = 0;
      v7 = 0;
      v8 = 0;
      v17[1] = 0;
      v17[2] = 0;
    }

    else
    {
      v7 = &type metadata for SQLJobID;
      v9 = v4;
      v8 = sub_1CF1DAE84();
      v6 = v9;
    }

    v17[0] = v6;
    v17[3] = v7;
    v17[4] = v8;
    swift_beginAccess();
    sub_1CEFDA9E0(v17, v1 + 56, &unk_1EC4C1BE0, &unk_1CF9FD400);
    swift_endAccess();
    v10 = sub_1CF2036D8(a1, sub_1CEFED334);
    v13 = *(v1 + 96);
    v14 = *(v1 + 104);
    *(v1 + 96) = v10;
    *(v1 + 104) = v11;
    v15 = *(v1 + 112);
    *(v1 + 112) = v12;
    sub_1CF03D7A8(v13, v14, v15);
  }

  return v1;
}

uint64_t sub_1CF24701C(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 176);
  v6 = *(*v2 + 160);
  v9[0] = *(*v2 + 144);
  v9[1] = v6;
  v7 = type metadata accessor for ItemReconciliation(0, v9);
  (*(*(v7 - 8) + 16))(v2 + v5, a1, v7);
  *(v2 + *(*v2 + 184)) = a2;
  return sub_1CF05284C(*(a1 + *(v7 + 64)), *(a1 + *(v7 + 64) + 8), 1);
}

uint64_t sub_1CF247110(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 160);
  v7[0] = *(v2 + 144);
  v7[1] = v5;
  type metadata accessor for SchedulableReconciliation(0, v7);
  swift_allocObject();
  return sub_1CF24701C(a1, a2);
}

void sub_1CF247174(void (*a1)(char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = (*(a9 + 24))(sub_1CF209EF0, 0, a6, a9);
  if (!v9)
  {
    v17 = v16;
    if ([v16 next])
    {
      v19 = a6;
      do
      {
        v18 = objc_autoreleasePoolPush();
        sub_1CF20A0E8(v17, a1, a2, a4, a5, v19, a7);
        objc_autoreleasePoolPop(v18);
      }

      while (([v17 next] & 1) != 0);
    }
  }
}

uint64_t sub_1CF2472B0(uint64_t (*a1)(char *, uint64_t, uint64_t), _BYTE *a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v626) = a3;
  v627 = a2;
  v625 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v611 = type metadata accessor for ItemStateVersion(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v610 = *(v611 - 8);
  MEMORY[0x1EEE9AC00](v611);
  v589 = v556 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v581 = v556 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v588 = v556 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v580 = v556 - v18;
  v19 = swift_getAssociatedTypeWitness();
  v618 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v585 = v556 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v586 = v556 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v578 = v556 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v579 = v556 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v582 = v556 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v583 = v556 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v576 = v556 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v577 = v556 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v558 = v556 - v36;
  v37 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v587 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v597 = v556 - v38;
  v598 = v37;
  v596 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v584 = v556 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v607 = v556 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v614 = v556 - v44;
  v45 = swift_getAssociatedTypeWitness();
  v620 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v574 = v556 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v575 = v556 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v569 = v556 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v570 = v556 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v571 = v556 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v572 = v556 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v567 = v556 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v568 = v556 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v561 = v556 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v562 = v556 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v559 = v556 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v560 = v556 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v557 = v556 - v70;
  v71 = sub_1CF9E75D8();
  v606 = swift_getTupleTypeMetadata2();
  v573 = *(v606 - 8);
  MEMORY[0x1EEE9AC00](v606);
  v602 = v556 - v72;
  v73 = swift_getAssociatedConformanceWitness();
  v74 = swift_getAssociatedConformanceWitness();
  v621 = v45;
  *&v633 = v45;
  *(&v633 + 1) = v19;
  v619 = v19;
  v556[2] = v73;
  *&v634 = v73;
  *(&v634 + 1) = v74;
  v556[1] = v74;
  v622 = type metadata accessor for FileItemVersion(255, &v633);
  v624 = sub_1CF9E75D8();
  v623 = *(v624 - 8);
  MEMORY[0x1EEE9AC00](v624);
  v601 = v556 - ((v75 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v76);
  v592 = v556 - v77;
  MEMORY[0x1EEE9AC00](v78);
  v595 = v556 - v79;
  MEMORY[0x1EEE9AC00](v80);
  v82 = v556 - v81;
  MEMORY[0x1EEE9AC00](v83);
  v594 = v556 - v84;
  MEMORY[0x1EEE9AC00](v85);
  v591 = v556 - v86;
  MEMORY[0x1EEE9AC00](v87);
  v600 = v556 - v88;
  MEMORY[0x1EEE9AC00](v89);
  v91 = v556 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v599 = v556 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v96 = v556 - v95;
  MEMORY[0x1EEE9AC00](v97);
  v590 = v556 - v98;
  MEMORY[0x1EEE9AC00](v99);
  v101 = v556 - v100;
  MEMORY[0x1EEE9AC00](v102);
  v593 = v556 - v103;
  MEMORY[0x1EEE9AC00](v104);
  v106 = v556 - v105;
  v615 = v71;
  v603 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v565 = v556 - ((v108 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v109);
  v604 = v556 - v110;
  MEMORY[0x1EEE9AC00](v111);
  v612 = v556 - v112;
  v616 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v113);
  v563 = v556 - v114;
  v617 = AssociatedTypeWitness;
  v115 = sub_1CF9E75D8();
  v609 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v566 = v556 - ((v116 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v117);
  v605 = v556 - v118;
  MEMORY[0x1EEE9AC00](v119);
  v613 = v556 - v120;
  MEMORY[0x1EEE9AC00](v121);
  v123 = v556 - v122;
  v124 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](v124);
  v132 = MEMORY[0x1EEE9AC00](v125);
  v133 = v556 - v128;
  if ((v129 >> 6) <= 1u)
  {
    if (!(v129 >> 6))
    {
      if (v129 <= 2u)
      {
        if (v129)
        {
          if (v129 == 1)
          {
            v134 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 68);
            v135 = v625 + v134;
            v136 = &v627[v134];
            v137 = *&v627[v134 + 24] & 0xF000000000000000;
            v138 = (v137 == 0xB000000000000000) | v627[v134 + 12];
            if (*(v135 + 3) >> 60 == 11 || (v135[12] & 1) != 0)
            {
LABEL_133:
              v184 = v138 ^ 1;
              return v184 & 1;
            }

            v139 = *(v136 + 2);
            v140 = *(v135 + 2);
            if (v137 == 0xB000000000000000)
            {
              v139 = 0;
            }

            v141 = v140 == v139;
LABEL_129:
            v317 = v141;
            v138 = v317 & ~v138;
            goto LABEL_133;
          }

          v221 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 68);
          v222 = *(v625 + v221 + 16);
          v633 = *(v625 + v221);
          v634 = v222;
          v223 = *(v625 + v221 + 48);
          v635 = *(v625 + v221 + 32);
          v636 = v223;
          if ((*(&v222 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v224 = 0;
          }

          else
          {
            v224 = v634;
          }

          if ((*(&v222 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v225 = 0xF000000000000000;
          }

          else
          {
            v225 = *(&v634 + 1);
          }

          v226 = &v627[v221];
          v227 = v226[1];
          v629 = *v226;
          v630 = v227;
          v228 = v226[3];
          v631 = v226[2];
          v632 = v228;
          if ((*(&v227 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v229 = 0;
          }

          else
          {
            v229 = v630;
          }

          if ((*(&v630 + 1) & 0xF000000000000000) == 0xB000000000000000)
          {
            v230 = 0xF000000000000000;
          }

          else
          {
            v230 = *(&v630 + 1);
          }

          if (v225 >> 60 == 15)
          {
            if (v230 >> 60 == 15)
            {
              sub_1CEFCCBDC(&v633, v628, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFCCBDC(&v629, v628, &unk_1EC4BF260, &unk_1CFA01B60);
              sub_1CEFE48D8(v224, v225);
              v184 = 0;
              return v184 & 1;
            }
          }

          else if (v230 >> 60 != 15)
          {
            sub_1CEFCCBDC(&v633, v628, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v629, v628, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v633, v628, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCBDC(&v629, v628, &unk_1EC4BF260, &unk_1CFA01B60);
            v443 = sub_1CF328660(v224, v225, v229, v230);
            sub_1CEFCCC44(&v629, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFCCC44(&v633, &unk_1EC4BF260, &unk_1CFA01B60);
            sub_1CEFE48D8(v229, v230);
            sub_1CEFE48D8(v224, v225);
            v184 = !v443;
            return v184 & 1;
          }

          sub_1CEFCCBDC(&v633, v628, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFCCBDC(&v629, v628, &unk_1EC4BF260, &unk_1CFA01B60);
          sub_1CEFE48D8(v224, v225);
          sub_1CEFE48D8(v229, v230);
          v184 = 1;
          return v184 & 1;
        }

        v212 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 68);
        v213 = (v625 + v212);
        v214 = &v627[v212];
        v215 = v214[3] & 0xF000000000000000;
        v216 = v215 == 0xB000000000000000;
        if (v213[3] >> 60 != 11)
        {
          v216 = v215 != 0xB000000000000000;
          v217 = *v214;
          if (v215 == 0xB000000000000000)
          {
            v217 = 0;
          }

          v218 = *v213;
LABEL_87:
          if (v218 != v217)
          {
            v216 = 0;
          }

          goto LABEL_199;
        }

        goto LABEL_199;
      }

      if (v129 == 3)
      {
        v219 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 68);
        v220 = v625 + v219;
        if (*(v625 + v219 + 24) >> 60 == 11 || (v220[48] & 1) != 0)
        {
          v187 = 0;
          v188 = 1;
        }

        else
        {
          v188 = 0;
          v187 = *(v220 + 4);
        }

        v439 = &v627[v219];
        if (*&v627[v219 + 24] >> 60 != 11 && (v439[48] & 1) == 0)
        {
          v216 = 0;
          v440 = *(v439 + 4);
          if (v188)
          {
            goto LABEL_199;
          }

          goto LABEL_198;
        }
      }

      else
      {
        if (v129 != 4)
        {
          v231 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 68);
          v232 = v625 + v231;
          v233 = &v627[v231];
          v234 = *(v233 + 3) & 0xF000000000000000;
          v216 = v234 == 0xB000000000000000;
          if (*(v232 + 3) >> 60 != 11)
          {
            v216 = v234 != 0xB000000000000000;
            v217 = *(v233 + 7);
            if (v234 == 0xB000000000000000)
            {
              v217 = 0;
            }

            v218 = *(v232 + 7);
            goto LABEL_87;
          }

LABEL_199:
          v184 = v216 ^ 1;
          return v184 & 1;
        }

        v185 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 68);
        v186 = v625 + v185;
        if (*(v625 + v185 + 24) >> 60 == 11 || (v186[48] & 1) != 0)
        {
          v187 = 0;
          v188 = 1;
        }

        else
        {
          v188 = 0;
          v187 = *(v186 + 5);
        }

        v441 = &v627[v185];
        if (*&v627[v185 + 24] >> 60 != 11 && (v441[48] & 1) == 0)
        {
          v216 = 0;
          v440 = *(v441 + 5);
          if (v188)
          {
            goto LABEL_199;
          }

          goto LABEL_198;
        }
      }

      v440 = 0;
      v216 = 1;
      if (v188)
      {
        goto LABEL_199;
      }

LABEL_198:
      v216 = (v187 == v440) & ~v216;
      goto LABEL_199;
    }

    v151 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 64);
    v152 = v625 + v151;
    v153 = *(v625 + v151);
    v154 = *(v625 + v151 + 16);
    v155 = &v627[v151];
    v156 = *&v627[v151];
    v157 = v627[v151 + 16];
    if (v154 <= 1)
    {
      if (v152[16])
      {
        if (v157 == 1)
        {
          goto LABEL_110;
        }
      }

      else if (!v157)
      {
        v178 = v153 == v156;
LABEL_111:
        v184 = v178 ^ 1;
        return v184 & 1;
      }
    }

    else
    {
      if (v154 != 2)
      {
        if (v154 == 3)
        {
          if (v157 == 3)
          {
            *&v633 = v153;
            v158 = v153;
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
            v159 = sub_1CF9E6948();
            v161 = v160;
            *&v633 = v156;
            v162 = v156;
            v164 = sub_1CF9E6948();
            v170 = v163;
            if (v159 == v164 && v161 == v163)
            {
              v161, v163, v164, v165, v166, v167, v168, v169;
              v170, v171, v172, v173, v174, v175, v176, v177;
              v178 = 1;
            }

            else
            {
              v178 = sub_1CF9E8048();
              v161, v425, v426, v427, v428, v429, v430, v431;
              v170, v432, v433, v434, v435, v436, v437, v438;
            }

            goto LABEL_111;
          }

          goto LABEL_60;
        }

        v211 = *(v155 + 1);
        if (v153 | *(v152 + 1))
        {
          if (v157 != 4 || v156 != 1 || v211)
          {
            goto LABEL_60;
          }
        }

        else if (v157 != 4 || v211 | v156)
        {
          goto LABEL_60;
        }

LABEL_110:
        v178 = 1;
        goto LABEL_111;
      }

      if (v157 == 2)
      {
        goto LABEL_110;
      }
    }

LABEL_60:
    v178 = 0;
    goto LABEL_111;
  }

  if (v129 >> 6 != 3)
  {
    if (v129 > 0x83u)
    {
      if (v129 > 0x85u)
      {
        if (v129 == 134)
        {
          v210 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
          v184 = *(v625 + *(v210 + 60)) ^ v627[*(v210 + 60)];
          return v184 & 1;
        }

        v274 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
        v275 = v623;
        v276 = *(v623 + 16);
        v277 = v624;
        v276(v101, v625 + *(v274 + 48), v624);
        v278 = v622;
        v279 = *(v622 - 8);
        v625 = *(v279 + 48);
        LODWORD(v626) = v625(v101, 1, v622);
        if (v626 == 1)
        {
          (*(v275 + 8))(v101, v277);
          v280 = 0;
        }

        else
        {
          v619 = v276;
          v415 = v620;
          v416 = *(v620 + 16);
          v417 = v559;
          v618 = v274;
          v418 = v621;
          v416(v559, v101, v621);
          (*(v279 + 8))(v101, v278);
          (*(v415 + 32))(v560, v417, v418);
          v276 = v619;
          v274 = v618;
          swift_dynamicCast();
          v280 = v633;
        }

        v419 = v590;
        v276(v590, &v627[*(v274 + 48)], v277);
        v420 = v625(v419, 1, v278);
        v289 = v420 == 1;
        if (v420 == 1)
        {
          (*(v275 + 8))(v419, v277);
          v424 = 0;
        }

        else
        {
          v421 = v620;
          v422 = v561;
          v423 = v621;
          (*(v620 + 16))(v561, v419, v621);
          (*(v279 + 8))(v419, v278);
          (*(v421 + 32))(v562, v422, v423);
          swift_dynamicCast();
          v424 = v633;
        }

        if (v626 != 1)
        {
          v294 = v420 != 1 && v280 == v424;
          goto LABEL_184;
        }

LABEL_187:
        v184 = !v289;
        return v184 & 1;
      }

      if (v129 == 132)
      {
        v189 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
        v184 = *(v625 + *(v189 + 52)) != v627[*(v189 + 52)];
        return v184 & 1;
      }

      v273 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 56);
    }

    else
    {
      if (v129 <= 0x81u)
      {
        if (v129 == 128)
        {
          v621 = v130;
          v626 = v126;
          v179 = *(v126 + 48);
          v180 = v609;
          v181 = *(v609 + 16);
          v181(v556 - v128, v625, v115, v132);
          (v181)(&v133[v179], v627, v115);
          v182 = *(v616 + 48);
          v183 = v617;
          if (v182(v133, 1, v617) == 1)
          {
            if (v182(&v133[v179], 1, v183) == 1)
            {
              (*(v180 + 8))(v133, v115);
              v184 = 0;
              return v184 & 1;
            }
          }

          else
          {
            (v181)(v123, v133, v115);
            if (v182(&v133[v179], 1, v183) != 1)
            {
              v460 = v616;
              v461 = v563;
              (*(v616 + 32))(v563, &v133[v179], v183);
              v178 = sub_1CF9E6868();
              v462 = *(v460 + 8);
              v462(v461, v183);
              v462(v123, v183);
              (*(v180 + 8))(v133, v115);
              goto LABEL_111;
            }

            (*(v616 + 8))(v123, v183);
          }

          (*(v621 + 8))(v133, v626);
          goto LABEL_175;
        }

        v209 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 36);
LABEL_100:
        v184 = *(v625 + v209) != *&v627[v209];
        return v184 & 1;
      }

      if (v129 == 130)
      {
        v209 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 40);
        goto LABEL_100;
      }

      v273 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 44);
    }

    v184 = v627[v273] != *(v625 + v273);
    return v184 & 1;
  }

  if (v129 <= 0xC2u)
  {
    if (v129 != 192)
    {
      if (v129 == 193)
      {
        v626 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
        v190 = v623;
        v191 = *(v623 + 16);
        v192 = v624;
        v191(v91, v625 + *(v626 + 48), v624);
        v193 = v622;
        v194 = *(v622 - 8);
        v625 = *(v194 + 48);
        if (v625(v91, 1, v622) == 1)
        {
          (*(v190 + 8))(v91, v192);
          v195 = 0;
          v196 = 1;
        }

        else
        {
          v619 = v191;
          v295 = v620;
          v296 = v569;
          v297 = v621;
          (*(v620 + 16))(v569, v91, v621);
          (*(v194 + 8))(v91, v193);
          (*(v295 + 32))(v570, v296, v297);
          v191 = v619;
          swift_dynamicCast();
          v195 = v634;
          v196 = BYTE8(v634);
        }

        v298 = v600;
        v191(v600, &v627[*(v626 + 48)], v192);
        if (v625(v298, 1, v193) == 1)
        {
          (*(v190 + 8))(v298, v192);
          v299 = 0;
          v138 = 1;
        }

        else
        {
          v312 = v620;
          v313 = v195;
          v314 = v574;
          v315 = v621;
          (*(v620 + 16))(v574, v298, v621);
          (*(v194 + 8))(v298, v193);
          v316 = v314;
          v195 = v313;
          (*(v312 + 32))(v575, v316, v315);
          swift_dynamicCast();
          v299 = v634;
          v138 = BYTE8(v634);
        }

        if (v196)
        {
          goto LABEL_133;
        }

        v141 = v195 == v299;
        goto LABEL_129;
      }

      v620 = v131;
      v621 = v130;
      v626 = v126;
      v615 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
      v244 = v623;
      v245 = v625 + *(v615 + 48);
      v246 = v624;
      v625 = *(v623 + 16);
      v625(v82, v245, v624);
      v247 = v622;
      v248 = *(v622 - 8);
      v614 = *(v248 + 6);
      v249 = (v614)(v82, 1, v622);
      v612 = v248;
      if (v249 == 1)
      {
        (*(v244 + 8))(v82, v246);
        v250 = 1;
        v251 = v627;
        v252 = v617;
        v253 = v616;
        v254 = v613;
      }

      else
      {
        v300 = v618;
        v301 = v576;
        v302 = v619;
        (*(v618 + 16))(v576, &v82[*(v247 + 56)], v619);
        (*(v248 + 1))(v82, v247);
        (*(v300 + 32))(v577, v301, v302);
        v303 = v580;
        v304 = v611;
        swift_dynamicCast();
        v253 = v616;
        v254 = v613;
        v252 = v617;
        (*(v616 + 16))(v613, v303, v617);
        (*(v610 + 8))(v303, v304);
        v250 = 0;
        v251 = v627;
      }

      v627 = *(v253 + 56);
      (v627)(v254, v250, 1, v252);
      v305 = &v251[*(v615 + 48)];
      v306 = v595;
      v625(v595, v305, v246);
      if ((v614)(v306, 1, v247) == 1)
      {
        (*(v623 + 8))(v306, v246);
        v307 = 1;
        v308 = v252;
        v309 = v609;
        v310 = v253;
        v311 = v605;
      }

      else
      {
        v318 = v618;
        v319 = &v306[*(v247 + 56)];
        v320 = v306;
        v321 = v582;
        v322 = v619;
        (*(v618 + 16))(v582, v319, v619);
        (*(v612 + 1))(v320, v247);
        (*(v318 + 32))(v583, v321, v322);
        v323 = v588;
        v324 = v611;
        swift_dynamicCast();
        v311 = v605;
        (*(v253 + 16))(v605, v323, v252);
        (*(v610 + 8))(v323, v324);
        v307 = 0;
        v308 = v252;
        v309 = v609;
        v310 = v253;
      }

      (v627)(v311, v307, 1, v308);
      v325 = *(v626 + 48);
      v326 = *(v309 + 16);
      v327 = v620;
      v328 = v613;
      v326(v620, v613, v115);
      v627 = v325;
      v326(&v325[v327], v311, v115);
      v329 = *(v310 + 48);
      if (v329(v327, 1, v308) == 1)
      {
        v330 = *(v309 + 8);
        v330(v311, v115);
        v330(v328, v115);
        if (v329(&v627[v327], 1, v617) == 1)
        {
          v330(v327, v115);
          v184 = 0;
          return v184 & 1;
        }
      }

      else
      {
        v331 = v566;
        v326(v566, v327, v115);
        v332 = v627;
        v333 = v617;
        if (v329(&v627[v327], 1, v617) != 1)
        {
          v444 = v616;
          v445 = &v332[v327];
          v446 = v563;
          (*(v616 + 32))(v563, v445, v333);
          v178 = sub_1CF9E6868();
          v447 = *(v444 + 8);
          v447(v446, v333);
          v448 = *(v309 + 8);
          v448(v605, v115);
          v448(v613, v115);
          v447(v331, v333);
          v448(v327, v115);
          goto LABEL_111;
        }

        v334 = *(v309 + 8);
        v334(v605, v115);
        v334(v613, v115);
        (*(v616 + 8))(v331, v333);
      }

      (*(v621 + 8))(v327, v626);
      goto LABEL_175;
    }

    v619 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
    v235 = v623;
    v236 = *(v623 + 16);
    v237 = v624;
    v236(v96, v625 + *(v619 + 48), v624);
    v238 = v622;
    v239 = *(v622 - 8);
    v240 = *(v239 + 48);
    LODWORD(v626) = v240(v96, 1, v622);
    if (v626 == 1)
    {
      (*(v235 + 8))(v96, v237);
      v241 = 0;
      v242 = v627;
      v243 = v620;
    }

    else
    {
      v281 = v620;
      v282 = *(v620 + 16);
      v625 = v236;
      v283 = v567;
      v284 = v621;
      v282(v567, v96, v621);
      v285 = v96;
      v243 = v281;
      (*(v239 + 8))(v285, v238);
      v286 = v283;
      v236 = v625;
      (*(v281 + 32))(v568, v286, v284);
      swift_dynamicCast();
      v241 = DWORD2(v633);
      v242 = v627;
    }

    v287 = v599;
    v236(v599, &v242[*(v619 + 48)], v237);
    v288 = v240(v287, 1, v238);
    v289 = v288 == 1;
    if (v288 == 1)
    {
      (*(v623 + 8))(v287, v237);
      v293 = 0;
    }

    else
    {
      v290 = v287;
      v291 = v571;
      v292 = v621;
      (*(v243 + 16))(v571, v290, v621);
      (*(v239 + 8))(v290, v238);
      (*(v243 + 32))(v572, v291, v292);
      swift_dynamicCast();
      v293 = DWORD2(v633);
    }

    if (v626 != 1)
    {
      v294 = v288 != 1 && v241 == v293;
LABEL_184:
      v289 = v294;
      goto LABEL_187;
    }

    goto LABEL_187;
  }

  if (v129 > 0xC4u)
  {
    if (v129 != 197)
    {
      v268 = *(type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127) + 72);
      v269 = *(v625 + v268);
      v270 = *&v627[v268];
      v178 = (v269 | v270) == 0;
      if (v269 && v270)
      {
        sub_1CEFD57E0(0, &qword_1EDEAB580, 0x1E69674E0);
        v271 = v270;
        v272 = v269;
        v178 = sub_1CF9E7568();
      }

      goto LABEL_111;
    }

    v621 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
    v197 = v623;
    v198 = v625 + *(v621 + 48);
    v199 = v591;
    v200 = v624;
    v626 = *(v623 + 16);
    (v626)(v591, v198, v624);
    v201 = v622;
    v202 = *(v622 - 8);
    v203 = 1;
    v625 = *(v202 + 48);
    v204 = v625(v199, 1, v622);
    v620 = v202;
    if (v204 == 1)
    {
      v202 = v197;
      v205 = v200;
      v206 = v619;
      v207 = v618;
      v208 = v614;
    }

    else
    {
      v207 = v618;
      v208 = v614;
      v206 = v619;
      (*(v618 + 16))(v614, &v199[*(v201 + 56)], v619);
      v203 = 0;
      v205 = v201;
    }

    (*(v202 + 8))(v199, v205);
    v359 = *(v207 + 56);
    v360 = 1;
    v359(v208, v203, 1, v206);
    v361 = v594;
    (v626)(v594, &v627[*(v621 + 48)], v624);
    if (v625(v361, 1, v201) == 1)
    {
      v362 = v623;
      v363 = v624;
      v364 = v607;
    }

    else
    {
      v364 = v607;
      (*(v207 + 16))(v607, &v361[*(v201 + 56)], v206);
      v360 = 0;
      v362 = v620;
      v363 = v201;
    }

    (*(v362 + 8))(v361, v363);
    v359(v364, v360, 1, v206);
    v389 = *(TupleTypeMetadata2 + 48);
    v390 = v596;
    v391 = *(v596 + 16);
    v392 = v597;
    v393 = v614;
    v394 = v598;
    v391(v597, v614, v598);
    v627 = v389;
    v391(&v389[v392], v364, v394);
    v395 = *(v207 + 48);
    if (v395(v392, 1, v206) == 1)
    {
      v396 = *(v390 + 8);
      v396(v364, v394);
      v396(v393, v394);
      if (v395(&v627[v392], 1, v619) == 1)
      {
        v397 = v392;
        v398 = v394;
LABEL_165:
        v396(v397, v398);
        v184 = 0;
        return v184 & 1;
      }
    }

    else
    {
      v407 = v584;
      v391(v584, v392, v394);
      v408 = v627;
      v409 = v619;
      if (v395(&v627[v392], 1, v619) != 1)
      {
        v449 = v618;
        v450 = v558;
        (*(v618 + 32))(v558, &v408[v392], v409);
        v451 = sub_1CF9E6868();
        v452 = *(v449 + 8);
        v452(v450, v409);
        v453 = *(v390 + 8);
        v453(v607, v394);
        v453(v614, v394);
        v452(v407, v409);
        v453(v392, v394);
        v184 = v451 ^ 1;
        return v184 & 1;
      }

      v410 = *(v390 + 8);
      v410(v607, v394);
      v410(v614, v394);
      (*(v618 + 8))(v407, v409);
    }

    (*(v587 + 8))(v392, TupleTypeMetadata2);
LABEL_175:
    v184 = 1;
    return v184 & 1;
  }

  if (v129 != 195)
  {
    v619 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
    v255 = v623;
    v256 = v625 + *(v619 + 48);
    v257 = v624;
    v626 = *(v623 + 16);
    (v626)(v106, v256, v624);
    v258 = v622;
    v259 = *(v622 - 8);
    v260 = 1;
    v625 = *(v259 + 48);
    v261 = v625(v106, 1, v622);
    v618 = v259;
    if (v261 == 1)
    {
      v262 = v255;
      v263 = v257;
      v264 = v258;
      v265 = v621;
      v266 = v620;
      v267 = v612;
    }

    else
    {
      v266 = v620;
      v267 = v612;
      v265 = v621;
      (*(v620 + 16))(v612, v106, v621);
      v260 = 0;
      v262 = v259;
      v263 = v258;
      v264 = v258;
    }

    (*(v262 + 8))(v106, v263);
    v365 = *(v266 + 56);
    v366 = 1;
    v365(v267, v260, 1, v265);
    v367 = v593;
    (v626)(v593, &v627[*(v619 + 48)], v624);
    if (v625(v367, 1, v264) == 1)
    {
      v368 = v623;
      v369 = v624;
      v370 = v602;
      v371 = v604;
    }

    else
    {
      v371 = v604;
      (*(v266 + 16))(v604, v367, v265);
      v366 = 0;
      v368 = v618;
      v369 = v264;
      v370 = v602;
    }

    (*(v368 + 8))(v367, v369);
    v399 = v621;
    v365(v371, v366, 1, v621);
    v400 = *(v606 + 48);
    v401 = v603;
    v402 = *(v603 + 16);
    v403 = v612;
    v404 = v615;
    v402(v370, v612, v615);
    v627 = v400;
    v402(&v400[v370], v371, v404);
    v405 = *(v266 + 48);
    if (v405(v370, 1, v399) == 1)
    {
      v396 = *(v401 + 8);
      v406 = v615;
      v396(v371, v615);
      v396(v403, v406);
      if (v405(&v627[v370], 1, v621) == 1)
      {
        v397 = v370;
        v398 = v615;
        goto LABEL_165;
      }
    }

    else
    {
      v411 = v565;
      v402(v565, v370, v615);
      v412 = v627;
      if (v405(&v627[v370], 1, v621) != 1)
      {
        v454 = v620;
        v455 = v557;
        v456 = v621;
        (*(v620 + 32))(v557, &v412[v370], v621);
        v178 = sub_1CF9E6868();
        v457 = *(v454 + 8);
        v457(v455, v456);
        v458 = *(v603 + 8);
        v459 = v615;
        v458(v604, v615);
        v458(v612, v459);
        v457(v411, v456);
        v458(v370, v459);
        goto LABEL_111;
      }

      v413 = *(v603 + 8);
      v414 = v615;
      v413(v604, v615);
      v413(v612, v414);
      (*(v620 + 8))(v411, v621);
    }

    (*(v573 + 8))(v370, v606);
    goto LABEL_175;
  }

  v142 = type metadata accessor for ItemReconciliationHalf(0, a6, a9, v127);
  v143 = v623;
  v144 = *(v623 + 16);
  v145 = v592;
  v146 = v624;
  v144(v592, v625 + *(v142 + 48), v624);
  v147 = v622;
  v148 = *(v622 - 8);
  v149 = *(v148 + 48);
  v150 = v149(v145, 1, v622);
  v625 = v148;
  if (v150 == 1)
  {
    (*(v143 + 8))(v145, v146);
    v621 = 0;
    v626 = 0;
  }

  else
  {
    v335 = v618;
    v336 = *(v618 + 16);
    v337 = &v145[*(v147 + 56)];
    v620 = v142;
    v338 = v578;
    v617 = v149;
    v339 = v144;
    v340 = v145;
    v341 = v619;
    v336(v578, v337, v619);
    v342 = v340;
    v144 = v339;
    v149 = v617;
    (*(v148 + 8))(v342, v147);
    (*(v335 + 32))(v579, v338, v341);
    v343 = v581;
    v344 = v611;
    swift_dynamicCast();
    v345 = &v343[*(v344 + 36)];
    v346 = v345[1];
    v621 = *v345;
    v347 = *(v610 + 8);
    v626 = v346;

    v348 = v343;
    v142 = v620;
    v347(v348, v344);
    v143 = v623;
    v147 = v622;
  }

  v349 = v601;
  v144(v601, &v627[*(v142 + 48)], v146);
  if (v149(v349, 1, v147) == 1)
  {
    (*(v143 + 8))(v349, v146);
    v357 = v626;
    if (v626)
    {
      v358 = 0;
LABEL_209:
      v358, v350, v351, v352, v353, v354, v355, v356;
      v357, v463, v464, v465, v466, v467, v468, v469;
      v184 = 1;
      return v184 & 1;
    }

LABEL_210:
    0, v350, v351, v352, v353, v354, v355, v356;
    v184 = 0;
    return v184 & 1;
  }

  v372 = v618;
  v373 = v585;
  v374 = v619;
  (*(v618 + 16))(v585, &v349[*(v147 + 56)], v619);
  (*(v625 + 1))(v349, v147);
  (*(v372 + 32))(v586, v373, v374);
  v375 = v589;
  v376 = v611;
  swift_dynamicCast();
  v377 = &v375[*(v376 + 36)];
  v378 = *v377;
  v358 = v377[1];
  v379 = *(v610 + 8);

  v379(v375, v376);
  v357 = v626;
  if (!v626)
  {
    if (v358)
    {
      goto LABEL_209;
    }

    goto LABEL_210;
  }

  if (!v358)
  {
    goto LABEL_209;
  }

  v380 = v621;
  v381 = sub_1CEFE7394(v621, v357);
  if (v382)
  {
    if (v381 == 12565487 && v382 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v383, v384, v385, v386, v387, v388;
LABEL_212:
      v479 = sub_1CF9E69E8();
      v480 = sub_1CF025150(v479, v380, v357);
      v482 = v481;
      v380 = MEMORY[0x1D3868C10](v480);
      v484 = v483;
      v482, v483, v485, v486, v487, v488, v489, v490;
      goto LABEL_214;
    }

    v470 = v382;
    v471 = sub_1CF9E8048();
    v470, v472, v473, v474, v475, v476, v477, v478;
    if (v471)
    {
      goto LABEL_212;
    }
  }

  v484 = v357;
LABEL_214:
  v491 = sub_1CEFE7394(v378, v358);
  if (v492)
  {
    if (v491 == 12565487 && v492 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v493, v494, v495, v496, v497, v498;
LABEL_219:
      v508 = sub_1CF9E69E8();
      v509 = sub_1CF025150(v508, v378, v358);
      v511 = v510;
      v378 = MEMORY[0x1D3868C10](v509);
      v513 = v512;
      v511, v512, v514, v515, v516, v517, v518, v519;
      goto LABEL_221;
    }

    v499 = v492;
    v500 = sub_1CF9E8048();
    v499, v501, v502, v503, v504, v505, v506, v507;
    if (v500)
    {
      goto LABEL_219;
    }
  }

  v513 = v358;
LABEL_221:
  if (v380 == v378 && v484 == v513)
  {
    v357, v520, v521, v522, v523, v524, v525, v526;
    swift_bridgeObjectRelease_n();
    v184 = 0;
  }

  else
  {
    v534 = sub_1CF9E8048();
    v357, v535, v536, v537, v538, v539, v540, v541;
    swift_bridgeObjectRelease_n();
    v184 = v534 ^ 1;
  }

  v357, v527, v528, v529, v530, v531, v532, v533;
  v513, v542, v543, v544, v545, v546, v547, v548;
  v484, v549, v550, v551, v552, v553, v554, v555;
  return v184 & 1;
}

uint64_t sub_1CF24A924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = (*(a7 + 24))(sub_1CF21AEF0, 0, a4, a7, a5, a6);
  if (!v8)
  {
    v10 = v9;
    v7 = [v9 next];
  }

  return v7 & 1;
}

void sub_1CF24A9A8(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v54 = a3;
  v56 = a5;
  v57 = a8;
  v55 = a6;
  v51 = a2;
  v52 = a1;
  v11 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v49 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1CF9E5268();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CF9E6118();
  v48 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v47 = a7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  v22 = swift_dynamicCastMetatype();
  if (v22)
  {
    v23 = MEMORY[0x1EEE9AC00](v22);
    v24 = v53;
    v25 = v54;
    v26 = v55;
    v27 = (*(*(a9 + 8) + 24))(sub_1CF24F088, v23);
    if (!v24)
    {
      v28 = v27;
      v29 = MEMORY[0x1E69E7CC0];
      v59 = MEMORY[0x1E69E7CC0];
      v58 = 0;
      if ([v27 next])
      {
        v30 = v47;
        do
        {
          v31 = objc_autoreleasePoolPush();
          sub_1CF224C84(&v58, v28, &v59, v25, a4, v56, v26, v30, v57, a9);
          objc_autoreleasePoolPop(v31);
        }

        while (([v28 next] & 1) != 0);
        v29 = v59;
      }

      v29, v39, v40, v41, v42, v43, v44, v45;
    }
  }

  else
  {
    v32 = v48;
    v33 = v16;
    v34 = v13;
    v35 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v36 = sub_1CF9E6108();
    v37 = sub_1CF9E72A8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_1CEFC7000, v36, v37, "Should not call fixupOutOfSyncFSBaseVersion on non-ItemStateVersion types", v38, 2u);
      MEMORY[0x1D386CDC0](v38, -1, -1);
    }

    (*(v32 + 8))(v18, v33);
    sub_1CF9E5108();
    sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
    sub_1CF24D0AC();
    sub_1CF9E57D8();
    sub_1CF9E50D8();
    (*(v50 + 8))(v15, v34);
    swift_willThrow();
  }
}

id sub_1CF24AE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32 = a4;
  v34 = a7;
  v31[1] = a1;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v20 = qword_1EDEBBE40;
  (*(v8 + 56))(v16, 1, 1, v7);
  v31[0] = v16;
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v21 = *(v8 + 48);
  if (v21(v13, 1, v7) == 1)
  {
    v22 = v20;
    sub_1CF9E6048();
    if (v21(v13, 1, v7) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
  }

  (*(v8 + 16))(v19, v10, v7);
  *&v19[*(v17 + 20)] = v20;
  v23 = &v19[*(v17 + 24)];
  *v23 = "SQLDB: count sync paused items";
  *(v23 + 1) = 30;
  v23[16] = 2;
  v24 = v20;
  sub_1CF9E7468();
  sub_1CF9E6038();
  v26 = *(v8 + 8);
  v25 = (v8 + 8);
  v26(v10, v7);
  sub_1CEFCCC44(v31[0], &unk_1EC4BED20, &unk_1CFA00700);
  v27 = v33;
  v28 = (*(v34 + 24))(sub_1CF227DE8, 0, v32);
  if (v27)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v19, type metadata accessor for Signpost);
  }

  else
  {
    v29 = v28;
    if ([v28 next])
    {
      v25 = [v29 longAtIndex_];
    }

    else
    {
      v25 = 0;
    }

    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v19, type metadata accessor for Signpost);
  }

  return v25;
}

void sub_1CF24B27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = *(a9 + 32);
  v14 = unk_1F4BED368;
  v41 = qword_1F4BED360;
  v42 = unk_1F4BED368;
  v43 = a1;
  v44 = a2;

  v45 = a6;
  v13(sub_1CF24CC4C, v40, a6, a9);
  if (v9)
  {
    swift_arrayDestroy();
    v14, v25, v26, v27, v28, v29, v30, v31;
  }

  else
  {
    v14, v15, v16, v17, v18, v19, v20, v21;
    v22 = unk_1F4BED378;
    MEMORY[0x1EEE9AC00](v23);
    v39[2] = v24;
    v39[3] = v22;
    v39[4] = a1;
    v39[5] = a2;

    v13(sub_1CF24CC4C, v39, v45, a9);
    v22, v32, v33, v34, v35, v36, v37, v38;
    swift_arrayDestroy();
  }
}

void sub_1CF24B408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    v167 = 0x80000001CFA35120;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v8, v9, v10, v11, v12, v13, v14;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v16 = (*(*(AssociatedConformanceWitness + 8) + 8))(AssociatedTypeWitness);
    v18 = v17;
    MEMORY[0x1D3868CC0](v16);
    v18, v19, v20, v21, v22, v23, v24, v25;
    MEMORY[0x1D3868CC0](0x4C4C554E20, 0xE500000000000000);
    v167 = 0x80000001CFA34FB0;
  }

  v26 = swift_getAssociatedTypeWitness();
  v27 = swift_getAssociatedTypeWitness();
  v28 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion(0, v27, v28, v29);
  if (swift_dynamicCastMetatype())
  {
    v171 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA350D0);
    v30 = (*(*(v28 + 8) + 8))(v27);
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = 0xD000000000000027;
    v41 = 0x80000001CFA350F0;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v42, v43, v44, v45, v46, v47, v48;
    v171 = 0x80000001CFA34FD0;
    v49 = swift_getAssociatedConformanceWitness();
    v50 = (*(*(v49 + 8) + 8))(v26);
    v52 = v51;
    MEMORY[0x1D3868CC0](v50);
    v52, v53, v54, v55, v56, v57, v58, v59;
    v40 = 0x4C4C554E20;
    v41 = 0xE500000000000000;
  }

  MEMORY[0x1D3868CC0](v40, v41);
  v166 = v171;
  v60 = swift_getAssociatedTypeWitness();
  if (swift_dynamicCastMetatype())
  {
    v165 = 0x80000001CFA35080;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v61, v62, v63, v64, v65, v66, v67;
    v68 = swift_getAssociatedConformanceWitness();
    v69 = (*(*(v68 + 8) + 8))(v60);
    v71 = v70;
    MEMORY[0x1D3868CC0](v69);
    v71, v72, v73, v74, v75, v76, v77, v78;
    MEMORY[0x1D3868CC0](0x4C4C554E20, 0xE500000000000000);
    v165 = 0x80000001CFA34FF0;
  }

  v79 = swift_getAssociatedTypeWitness();
  v80 = swift_getAssociatedTypeWitness();
  v81 = swift_getAssociatedConformanceWitness();
  type metadata accessor for ItemStateVersion(0, v80, v81, v82);
  if (swift_dynamicCastMetatype())
  {
    v172 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000018, 0x80000001CFA35030);
    v83 = (*(*(v81 + 8) + 8))(v80);
    v85 = v84;
    MEMORY[0x1D3868CC0](v83);
    v85, v86, v87, v88, v89, v90, v91, v92;
    v93 = 0xD000000000000027;
    v94 = 0x80000001CFA35050;
  }

  else
  {
    sub_1CF9E7948();
    0xE000000000000000, v95, v96, v97, v98, v99, v100, v101;
    v172 = 0x80000001CFA35010;
    v102 = swift_getAssociatedConformanceWitness();
    v103 = (*(*(v102 + 8) + 8))(v79);
    v105 = v104;
    MEMORY[0x1D3868CC0](v103);
    v105, v106, v107, v108, v109, v110, v111, v112;
    v93 = 0x4C4C554E20;
    v94 = 0xE500000000000000;
  }

  v113 = MEMORY[0x1D3868CC0](v93, v94);
  v114 = MEMORY[0x1EEE9AC00](v113);
  v115 = v168;
  v169 = *(a7 + 32);
  v169(sub_1CF24CCA0, v114);
  if (v115)
  {
    v172, v116, v117, v118, v119, v120, v121, v122;
    v165, v123, v124, v125, v126, v127, v128, v129;
    v166, v130, v131, v132, v133, v134, v135, v136;
    v167, v137, v138, v139, v140, v141, v142, v143;
  }

  else
  {
    v172, v116, v117, v118, v119, v120, v121, v122;
    v165, v144, v145, v146, v147, v148, v149, v150;
    v166, v151, v152, v153, v154, v155, v156, v157;
    v167, v158, v159, v160, v161, v162, v163, v164;
    (v169)(sub_1CF22B420, 0, a4, a7);
    (v169)(sub_1CF22B43C, 0, a4, a7);
    (v169)(sub_1CF22B458, 0, a4, a7);
    (v169)(sub_1CF22B474, 0, a4, a7);
    (v169)(sub_1CF22B490, 0, a4, a7);
    (v169)(sub_1CF22B4AC, 0, a4, a7);
    (v169)(sub_1CF22B4C8, 0, a4, a7);
    (v169)(sub_1CF22B4E4, 0, a4, a7);
    (v169)(sub_1CF24FAA0, 0, a4, a7);
    (v169)(sub_1CF22B500, 0, a4, a7);
    (v169)(sub_1CF22B51C, 0, a4, a7);
    (v169)(sub_1CF22B538, 0, a4, a7);
    (v169)(sub_1CF22B554, 0, a4, a7);
  }
}

uint64_t sub_1CF24BD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22B570, 0, a4, a7, a5, a6);
  if (!v7)
  {
    (v10)(sub_1CF22B58C, 0, a4, a7);
    (v10)(sub_1CF22B5A8, 0, a4, a7);
    (v10)(sub_1CF22B5C4, 0, a4, a7);
    (v10)(sub_1CF22B5E0, 0, a4, a7);
    (v10)(sub_1CF22B5FC, 0, a4, a7);
    (v10)(sub_1CF22B618, 0, a4, a7);
    (v10)(sub_1CF22B634, 0, a4, a7);
    (v10)(sub_1CF22B650, 0, a4, a7);
    (v10)(sub_1CF22B66C, 0, a4, a7);
    (v10)(sub_1CF22B688, 0, a4, a7);
    (v10)(sub_1CF22B6A4, 0, a4, a7);
    return (v10)(sub_1CF22B6C0, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24BFCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22B6DC, 0, a4, a7, a5, a6);
  if (!v7)
  {
    (v10)(sub_1CF22B6F8, 0, a4, a7);
    (v10)(sub_1CF22B714, 0, a4, a7);
    (v10)(sub_1CF22B730, 0, a4, a7);
    (v10)(sub_1CF22B74C, 0, a4, a7);
    (v10)(sub_1CF22B768, 0, a4, a7);
    (v10)(sub_1CF22B784, 0, a4, a7);
    (v10)(sub_1CF22B7A0, 0, a4, a7);
    (v10)(sub_1CF24FAA4, 0, a4, a7);
    (v10)(sub_1CF22B7BC, 0, a4, a7);
    return (v10)(sub_1CF22B7D8, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22B7F4, 0, a4, a7, a5, a6);
  if (!v7)
  {
    (v10)(sub_1CF22B810, 0, a4, a7);
    (v10)(sub_1CF22B8CC, 0, a4, a7);
    (v10)(sub_1CF22B988, 0, a4, a7);
    (v10)(sub_1CF22BA44, 0, a4, a7);
    (v10)(sub_1CF22BB00, 0, a4, a7);
    return (v10)(sub_1CF22BB1C, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C3A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a7 + 32);
  result = v10(sub_1CF22BB38, 0, a4, a7, a5, a6);
  if (!v7)
  {
    (v10)(sub_1CF22BB54, 0, a4, a7);
    (v10)(sub_1CF22BB70, 0, a4, a7);
    (v10)(sub_1CF22BB8C, 0, a4, a7);
    (v10)(sub_1CF22BBA8, 0, a4, a7);
    (v10)(sub_1CF22BBC4, 0, a4, a7);
    return (v10)(sub_1CF22BBE0, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF24BFCC(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    v16 = sub_1CF24C3A4(a1, a2, a3, a4, a5, a6, a7);
    v17 = MEMORY[0x1EEE9AC00](v16);
    v18 = *(a7 + 32);
    v18(sub_1CF24CC90, v17);
    (v18)(sub_1CF22BDCC, 0, a4, a7);
    (v18)(sub_1CF22BDE8, 0, a4, a7);
    (v18)(sub_1CF22BE04, 0, a4, a7);
    (v18)(sub_1CF24FAA0, 0, a4, a7);
    return (v18)(sub_1CF22BE20, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24C7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF24BFCC(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    sub_1CF24C3A4(a1, a2, a3, a4, a5, a6, a7);
    return sub_1CF24BD20(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1CF24C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a7 + 32);
  result = v14(a8, 0, a4, a7, a5, a6);
  if (!v11)
  {
    (v14)(a9, 0, a4, a7);
    (v14)(a10, 0, a4, a7);
    return (v14)(a11, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24CABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v13 = *(a7 + 32);
  result = v13(a8, 0, a4, a7, a5, a6);
  if (!v10)
  {
    (v13)(a9, 0, a4, a7);
    return (v13)(a10, 0, a4, a7);
  }

  return result;
}

uint64_t sub_1CF24CB58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1CF24C3A4(a1, a2, a3, a4, a5, a6, a7);
  if (!v7)
  {
    return sub_1CF24C218(a1, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t sub_1CF24CBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = *(a7 + 32);
  result = v12(a8, 0, a4, a7, a5, a6);
  if (!v9)
  {
    return (v12)(a9, 0, a4, a7);
  }

  return result;
}

void sub_1CF24CCFC(_TtC18FileProviderDaemon8FSTester *result, char *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (result)
  {
    result, a2, a3, a4, a5, a6, a7, a8;

    a2, v9, v10, v11, v12, v13, v14, v15;
  }
}

unint64_t sub_1CF24CD3C()
{
  result = qword_1EC4BFB30;
  if (!qword_1EC4BFB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4BFB30);
  }

  return result;
}

uint64_t sub_1CF24CDE0(char a1)
{
  v2 = sub_1CF9E5CF8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v8 = v7;
  result = (*(v3 + 8))(v5, v2);
  v9 = v8 * 1000000000.0;
  if (COERCE__INT64(fabs(v8 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v9 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v9 < 9.22337204e18)
  {
    return v9;
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_1CF24D058(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4)
{
  if (a1)
  {

    a3, v5, v6, v7, v8, v9, v10, v11;
  }
}

unint64_t sub_1CF24D0AC()
{
  result = qword_1EDEAB450;
  if (!qword_1EDEAB450)
  {
    sub_1CF9E5268();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB450);
  }

  return result;
}

void sub_1CF24D104(void *a1, uint64_t a2, _TtC18FileProviderDaemon8FSTester *a3, void *a4)
{
  if (a1 != 1)
  {
    sub_1CF24D058(a1, a2, a3, a4);
  }
}

void sub_1CF24D114(uint64_t a1, const char *a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a4 != 1)
  {
    a4, a2, a3, a4, a5, a6, a7, a8;
  }
}

id sub_1CF24D160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = (*(a7 + 24))(sub_1CF233DD0, 0, a4, a7, a5, a6);
  if (!v7)
  {
    v9 = result;
    if (([result next] & 1) == 0)
    {
      sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 3936);
    }

    v10 = [v9 longAtIndex_];

    return v10;
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF24D218(unint64_t a1, uint64_t a2, uint64_t a3, void (**a4)(char *, uint64_t), uint64_t a5, void *a6, void (*a7)(void), void (*a8)(char *, uint64_t), uint64_t a9)
{
  v136 = a4;
  v139 = a6;
  v140 = a3;
  v133 = a1;
  v134 = a2;
  v137 = a7;
  v138 = a9;
  strcpy(v141, "id parentID filename contentType ");
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v143 = AssociatedTypeWitness;
  v144 = MEMORY[0x1E69E6158];
  v145 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v129 = &v119 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C50C0, &unk_1CFA084A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v128 = &v119 - v13;
  v132 = swift_getAssociatedTypeWitness();
  v130 = *(v132 - 1);
  MEMORY[0x1EEE9AC00](v132);
  v15 = &v119 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v119 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v119 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v119 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v119 - v26;
  v28 = *(v138 + 8);
  v29 = a5;
  v30 = a5;
  v31 = a8;
  v32 = v135;
  v33 = sub_1CF24D160(v140, v136, v30, v139, v137, a8, v28);
  if (v32)
  {
    return a8;
  }

  v135 = v29;
  v124 = v21;
  v125 = v18;
  v123 = v15;
  v126 = v24;
  v127 = v27;
  v34 = v134;
  v35 = MEMORY[0x1EEE9AC00](v33);
  v36 = v133;
  *(&v119 - 2) = v133;
  *(&v119 - 1) = v37;
  v38 = v139;
  v39 = v140;
  (*(v138 + 32))(sub_1CF24F724, v35);
  result = sub_1CF24D160(v39, v136, v135, v38, v137, v31, v28);
  if (__OFADD__(v34, 1))
  {
    __break(1u);
  }

  else
  {
    v41 = MEMORY[0x1EEE9AC00](result);
    *(&v119 - 2) = v36;
    *(&v119 - 1) = v42;
    v43 = (*(v28 + 24))(sub_1CF24F72C, v41);
    v44 = v127;
    v45 = v43;
    v140 = 0;
    AssociatedTypeWitness = sub_1CF9E6DA8();
    result = sub_1CF9E6DA8();
    v146 = result;
    if ((v34 & 0x8000000000000000) == 0)
    {
      v46 = &selRef_initWithTarget_;
      v47 = v130;
      if (v34)
      {
        if ([v45 next])
        {
          v122 = (v47 + 16);
          v120 = (v47 + 32);
          v136 = (v47 + 8);
          v48 = *(swift_getAssociatedConformanceWitness() + 8);
          v137 = *(v48 + 16);
          v138 = v48 + 16;
          v49 = v123;
          v121 = v45;
          v119 = v48;
          while (1)
          {
            v50 = v45;
            a8 = v132;
            v51 = v140;
            v137();
            v140 = v51;
            if (v51)
            {

LABEL_35:
              v146, v89, v90, v91, v92, v93, v94, v95;
              AssociatedTypeWitness, v96, v97, v98, v99, v100, v101, v102;
              return a8;
            }

            v52 = [v50 isNullAtIndex_];
            v139 = v50;
            if (v52)
            {
              break;
            }

            v53 = [v50 BOOLAtIndex_];
            v54 = [v50 longAtIndex_];
            v55 = v50;
            v56 = v54;
            if (!v53)
            {
              goto LABEL_20;
            }

            v57 = v55;
            a8 = v132;
            v58 = v140;
            v137();
            v140 = v58;
            if (v58)
            {

              (*v136)(v44, v132);
              goto LABEL_35;
            }

            v133 = v56;
            v134 = v34;
            LOBYTE(v56) = 4;
            v59 = [v57 stringAtIndex_];
            v60 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
            v62 = v61;

            v63 = [v57 isNullAtIndex_];
            v64 = v125;
            v65 = v124;
            if ((v63 & 1) == 0)
            {
              v66 = [v57 longAtIndex_];
              if (v66 >= 5 || ((0x17u >> v66) & 1) == 0)
              {
                v62, v67, v68, v69, v70, v71, v72, v73;
                v146, v103, v104, v105, v106, v107, v108, v109;
                AssociatedTypeWitness, v110, v111, v112, v113, v114, v115, v116;
                sub_1CF1DA5D8();
                swift_allocError();
                *v117 = 0;
                swift_willThrow();

                a8 = *v136;
                v118 = v132;
                (*v136)(v126, v132);
                a8(v44, v118);
                return a8;
              }

              v56 = 0x300020100uLL >> (8 * v66);
            }

            v130 = v60;
            v74 = *v122;
            v75 = v65;
            v76 = v132;
            (*v122)(v75, v44, v132);
            v74(v64, v126, v76);
            v135 = v62;
            if (v63)
            {
              v77 = 1;
              v78 = v129;
              v79 = v128;
            }

            else
            {
              v78 = v129;
              if (v56 > 1u)
              {
                v79 = v128;
                if (v56 == 2)
                {
                  sub_1CF9E5F18();
                }

                else
                {
                  sub_1CF9E5FC8();
                }
              }

              else
              {
                v79 = v128;
                if (v56)
                {
                  sub_1CF9E5F98();
                }

                else
                {
                  sub_1CF9E5F78();
                }
              }

              v77 = 0;
            }

            v81 = sub_1CF9E5FF8();
            (*(*(v81 - 8) + 56))(v79, v77, 1, v81);
            v82 = v132;
            v83 = TupleTypeMetadata[12];
            v84 = &v78[TupleTypeMetadata[16]];
            v85 = TupleTypeMetadata[20];
            v86 = *v120;
            (*v120)(v78, v124, v132);
            v86(&v78[v83], v125, v82);
            v87 = v135;
            *v84 = v130;
            v84[1] = v87;
            sub_1CEFE55D0(v79, &v78[v85], &unk_1EC4C50C0, &unk_1CFA084A0);
            sub_1CF9E6E58();
            sub_1CF9E6E18();
            v88 = *v136;
            (*v136)(v126, v82);
            v44 = v127;
            v88(v127, v82);
            v49 = v123;
            v45 = v121;
            v34 = v134 - 1;
            if (v134 == 1)
            {
              goto LABEL_32;
            }

LABEL_31:
            if (![v139 next])
            {
              goto LABEL_32;
            }
          }

          [v50 longAtIndex_];
LABEL_20:
          v80 = v132;
          (*v122)(v49, v44, v132);
          sub_1CF9E6E58();
          sub_1CF9E6E18();
          (*v136)(v44, v80);
          if (!--v34)
          {
            goto LABEL_32;
          }

          goto LABEL_31;
        }

LABEL_32:
        v46 = &selRef_initWithTarget_;
      }

      a8 = AssociatedTypeWitness;
      [v45 v46[219]];

      return a8;
    }
  }

  __break(1u);
  return result;
}

void sub_1CF24DBF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v67 = a7;
  v64 = a3;
  v65 = a6;
  v63 = a5;
  v71 = a4;
  v68 = a1;
  v69 = a2;
  v7 = sub_1CF9E6068();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v17);
  v70 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    swift_once();
  }

  v19 = qword_1EDEBBE40;
  (*(v8 + 56))(v16, 1, 1, v7);
  sub_1CEFCCBDC(v16, v13, &unk_1EC4BED20, &unk_1CFA00700);
  v20 = *(v8 + 48);
  if (v20(v13, 1, v7) == 1)
  {
    v21 = v19;
    sub_1CF9E6048();
    if (v20(v13, 1, v7) != 1)
    {
      sub_1CEFCCC44(v13, &unk_1EC4BED20, &unk_1CFA00700);
    }
  }

  else
  {
    (*(v8 + 32))(v10, v13, v7);
  }

  v22 = v70;
  (*(v8 + 16))(v70, v10, v7);
  *(v22 + *(v17 + 20)) = v19;
  v23 = v22 + *(v17 + 24);
  *v23 = "SQLDB: Fetch pending indexing items";
  *(v23 + 8) = 35;
  *(v23 + 16) = 2;
  v24 = v19;
  sub_1CF9E7468();
  sub_1CF9E6038();
  (*(v8 + 8))(v10, v7);
  v25 = sub_1CEFCCC44(v16, &unk_1EC4BED20, &unk_1CFA00700);
  v26 = MEMORY[0x1EEE9AC00](v25);
  v28 = v68;
  v27 = v69;
  *(&v63 - 2) = v68;
  *(&v63 - 1) = v27;
  v29 = v66;
  v30 = (*(v67 + 24))(sub_1CF24EFE4, v26);
  if (v29)
  {
    sub_1CF9E7458();
    sub_1CF9E6038();
    sub_1CEFD5218(v22, type metadata accessor for Signpost);
    return;
  }

  v31 = v30;
  v32 = sub_1CF1CBB20();
  v33 = *v32->tree;
  v32, v34, v35, v36, v37, v38, v39, v40;
  if (v33 >> 31)
  {
    __break(1u);
    goto LABEL_19;
  }

  v41 = sub_1CF1CC7A8();
  v42 = *v41->tree;
  v41, v43, v44, v45, v46, v47, v48, v49;
  if (v42 >> 31)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v50 = __OFADD__(v33, v42);
  v51 = v33 + v42;
  if (v50)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (__OFADD__(v51, 12))
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v52 = sub_1CEFE9C6C();
  v53 = *v52->tree;
  v52, v54, v55, v56, v57, v58, v59, v60;
  if (v53 >> 31)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (__OFADD__(v51 + 12, v53))
  {
LABEL_23:
    __break(1u);
    return;
  }

  v73 = 0;
  v72 = v28;
  if ([v31 next])
  {
    do
    {
      v61 = objc_autoreleasePoolPush();
      sub_1CF2344D8(&v73);
      objc_autoreleasePoolPop(v61);
    }

    while (([v31 next] & 1) != 0);
  }

  sub_1CF9E7458();
  v62 = v70;
  sub_1CF9E6038();
  sub_1CEFD5218(v62, type metadata accessor for Signpost);
}

uint64_t sub_1CF24E150(char *a1, char *a2, char *a3, void (*a4)(uint64_t *, void *), char *a5, void *a6, uint64_t a7)
{
  v68 = a7;
  v70 = a6;
  v71 = a4;
  v72 = a5;
  v73 = a1;
  v69 = a3;
  v66 = a2;
  v7 = sub_1CF9E5248();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v63[1] = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1CF9E5268();
  v64 = *(v9 - 8);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v63[0] = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E6068();
  v12 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BED20, &unk_1CFA00700);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = v63 - v19;
  v21 = type metadata accessor for Signpost(0);
  MEMORY[0x1EEE9AC00](v21);
  v76 = v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEAE980 != -1)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v23 = qword_1EDEBBE40;
    v12[7](v20, 1, 1, v11);
    sub_1CEFCCBDC(v20, v17, &unk_1EC4BED20, &unk_1CFA00700);
    v24 = v12[6];
    if ((v24)(v17, 1, v11) == 1)
    {
      v25 = v23;
      sub_1CF9E6048();
      if ((v24)(v17, 1, v11) != 1)
      {
        sub_1CEFCCC44(v17, &unk_1EC4BED20, &unk_1CFA00700);
      }
    }

    else
    {
      (v12[4])(v14, v17, v11);
    }

    v26 = v76;
    (v12[2])(v76, v14, v11);
    *&v26[*(v21 + 20)] = v23;
    v27 = &v26[*(v21 + 24)];
    *v27 = "SQLDB: Fetch pending indexing deletions";
    *(v27 + 1) = 39;
    v27[16] = 2;
    v28 = v23;
    sub_1CF9E7468();
    sub_1CF9E6038();
    v29 = v12[1];
    ++v12;
    (v29)(v14, v11);
    v30 = sub_1CEFCCC44(v20, &unk_1EC4BED20, &unk_1CFA00700);
    v31 = MEMORY[0x1EEE9AC00](v30);
    v21 = v73;
    v63[-2] = v73;
    v32 = v68;
    v14 = v69;
    v33 = v67;
    v11 = v70;
    v34 = (*(v68 + 32))(sub_1CF24F038, v31);
    v20 = v33;
    if (v33)
    {
LABEL_8:
      sub_1CF9E7458();
      v38 = v76;
      sub_1CF9E6038();
      sub_1CEFD5218(v38, type metadata accessor for Signpost);
      return v21;
    }

    v67 = v28;
    v35 = MEMORY[0x1EEE9AC00](v34);
    v36 = v66;
    v63[-2] = v21;
    v63[-1] = v36;
    v37 = (*(*(v32 + 8) + 24))(sub_1CF24F040, v35);
    v17 = v37;
    if (![v37 next])
    {
      break;
    }

    v40 = 0;
    while (1)
    {
      v41 = objc_autoreleasePoolPush();
      if (__OFADD__(v40, 1))
      {
        break;
      }

      v12 = v41;
      v42 = [v17 isNullAtIndex_];
      v70 = (v40 + 1);
      if (v42)
      {
        v43 = 0;
        v44 = -1;
      }

      else
      {
        v45 = v17;
        v46 = [v45 longAtIndex_];
        v43 = v46;
        if (v46)
        {
          if (v46 == 0x8000000000000000)
          {
            v44 = 2;
            v43 = 1;
          }

          else if (v46 < 0)
          {
            v43 = -v46;
            if (-v46 >> 32)
            {
              sub_1CF9E51B8();
              sub_1CF4C5FCC(MEMORY[0x1E69E7CC0]);
              sub_1CF24D0AC();
              v61 = v63[0];
              v62 = v65;
              sub_1CF9E57D8();
              sub_1CF9E50D8();
              (*(v64 + 8))(v61, v62);
              swift_willThrow();

              objc_autoreleasePoolPop(v12);
              goto LABEL_8;
            }

            v44 = 0;
          }

          else
          {
            v44 = 1;
          }
        }

        else
        {
          v44 = 2;
        }
      }

      if ([v17 isNullAtIndex_])
      {
        v11 = 0;
      }

      else
      {
        v47 = v17;
        v11 = [v47 stringAtIndex_];
        if (!v11)
        {
          _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
          v73 = v21;
          v49 = v48;
          v11 = sub_1CF9E6888();
          v50 = v49;
          v21 = v73;
          v50, v51, v52, v53, v54, v55, v56, v57;
        }
      }

      v58 = [v17 longAtIndex_];
      if (v58 < v21)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/implementations/file-system/persistence/SQLReconciliationTable.swift", 141, 2, 4234);
      }

      v59 = v58;
      v74 = v43;
      v75 = v44;
      v14 = v72;
      v71(&v74, v11);

      objc_autoreleasePoolPop(v12);
      ++v40;
      v21 = v59;
      if (([v17 next] & 1) == 0)
      {
        v21 = v59;
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_35:
    swift_once();
  }

LABEL_32:

  sub_1CF9E7458();
  v60 = v76;
  sub_1CF9E6038();
  sub_1CEFD5218(v60, type metadata accessor for Signpost);
  return v21;
}