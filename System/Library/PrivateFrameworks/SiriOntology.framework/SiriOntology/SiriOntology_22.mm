void sub_1C076D914(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v6 = sub_1C0771C78();
  sub_1C051D6F4(v6, v7, v8);
  v9 = sub_1C095DADC();
  v12 = v9;
  v13 = v10;
  if (qword_1EBE15880 != -1)
  {
    v9 = swift_once();
  }

  if (!qword_1EBE1F730 || (v14 = qword_1EBE1F730, v15 = sub_1C095D74C(), v16 = [v14 firstMatchInString:v15 options:0 range:{v12, v13}], v14, v15, !v16))
  {
    sub_1C076E764(v9, v10, v11);
    swift_allocError();
    *v20 = a1;
    *(v20 + 8) = a2;
    *(v20 + 16) = 7;
    swift_willThrow();

    return;
  }

  v17 = sub_1C095D74C();
  v18 = [v16 rangeWithName_];

  if (v18 == sub_1C095D14C() || (sub_1C095DACC(), (v19 & 1) != 0))
  {
    v41 = 0;
    v43 = 0;
  }

  else
  {
    v21 = sub_1C095D8EC();
    v41 = MEMORY[0x1C68DD630](v21);
    v43 = v22;
  }

  v23 = sub_1C095D74C();
  v24 = [v16 rangeWithName_];

  if (v24 == sub_1C095D14C() || (sub_1C095DACC(), (v25 & 1) != 0))
  {
    v40 = 0;
    v42 = 0;
  }

  else
  {
    v26 = sub_1C095D8EC();
    v40 = MEMORY[0x1C68DD630](v26);
    v42 = v27;
  }

  v28 = sub_1C07714C8(v16, 0x746E4965756C6176, 0xED00006C6562614CLL, a1, a2, sub_1C077105C, sub_1C076EE24);
  v29 = sub_1C095D74C();
  v30 = [v16 &selRef:v29 initWithIdAsString:? connectionID:? + 4];

  if (v30 == sub_1C095D14C())
  {
    v31 = 0;
    LOBYTE(v32) = 1;
    v33 = v43;
    if (!v43)
    {
      goto LABEL_21;
    }

LABEL_19:

    *a3 = v41;
    *(a3 + 8) = v33;
    *(a3 + 16) = v40;
    *(a3 + 24) = v42;
    *(a3 + 32) = v28;
    *(a3 + 36) = BYTE4(v28) & 1;
    *(a3 + 40) = v31;
    *(a3 + 44) = v32;
    return;
  }

  sub_1C095DACC();
  v33 = v43;
  if (v34)
  {
    v31 = 0;
    LOBYTE(v32) = 1;
    if (v43)
    {
      goto LABEL_19;
    }
  }

  else
  {
    sub_1C095D8EC();
    v35 = sub_1C095DA6C();
    v31 = v35;
    v32 = HIDWORD(v35) & 1;
    if (v43)
    {
      goto LABEL_19;
    }
  }

LABEL_21:

  sub_1C076E764(v36, v37, v38);
  swift_allocError();
  *v39 = a1;
  *(v39 + 8) = a2;
  *(v39 + 16) = 7;
  swift_willThrow();
}

void sub_1C076DD64(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v36 = v7 | (v6 << 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v8 = sub_1C0771C78();
  sub_1C051D6F4(v8, v9, v10);
  v11 = sub_1C095DADC();
  v14 = v11;
  v15 = v12;
  if (qword_1EBE15888 != -1)
  {
    v11 = swift_once();
  }

  if (!qword_1EBE1F738 || (v16 = qword_1EBE1F738, v17 = sub_1C095D74C(), v18 = [v16 firstMatchInString:v17 options:0 range:{v14, v15, a1, a2, 15, v36}], v16, v17, !v18))
  {
    sub_1C076E764(v11, v12, v13);
    swift_allocError();
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = 8;
    swift_willThrow();

    return;
  }

  v19 = sub_1C095D74C();
  v20 = [v18 rangeWithName_];

  if (v20 == sub_1C095D14C() || (sub_1C095DACC(), (v21 & 1) != 0))
  {
    v37 = 0;
    v22 = 0;
  }

  else
  {
    v24 = sub_1C095D8EC();
    v37 = MEMORY[0x1C68DD630](v24);
    v22 = v25;
  }

  v26 = sub_1C095D74C();
  v27 = [v18 rangeWithName_];

  v28 = sub_1C095D14C();
  if (v27 == v28 || (v28 = sub_1C095DACC(), (v30 & 1) != 0))
  {
    v31 = 0;
    LOBYTE(v32) = 1;
    if (v22)
    {
LABEL_17:

      *a3 = v37;
      *(a3 + 8) = v22;
      *(a3 + 16) = v31;
      *(a3 + 20) = v32;
      return;
    }
  }

  else
  {
    sub_1C095D8EC();
    v28 = sub_1C095DA6C();
    v31 = v28;
    v32 = HIDWORD(v28) & 1;
    if (v22)
    {
      goto LABEL_17;
    }
  }

  sub_1C076E764(v28, v29, v30);
  swift_allocError();
  *v33 = a1;
  *(v33 + 8) = a2;
  *(v33 + 16) = 8;
  swift_willThrow();
}

void sub_1C076E08C(unint64_t a1@<X0>, unint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1;
  }

  v7 = 7;
  if (((a2 >> 60) & ((a1 & 0x800000000000000) == 0)) != 0)
  {
    v7 = 11;
  }

  v32 = v7 | (v6 << 16);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v8 = sub_1C0771C78();
  sub_1C051D6F4(v8, v9, v10);
  v11 = sub_1C095DADC();
  v13 = v12;
  if (qword_1EBE15898 != -1)
  {
    swift_once();
  }

  if (!qword_1EBE1F748)
  {
    goto LABEL_12;
  }

  v14 = qword_1EBE1F748;
  v15 = sub_1C095D74C();
  v16 = [v14 firstMatchInString:v15 options:0 range:{v11, v13, a1, a2, 15, v32}];

  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = sub_1C095D74C();
  v18 = [v16 rangeWithName_];

  if (v18 == sub_1C095D14C() || (sub_1C095DACC(), (v19 & 1) != 0))
  {

LABEL_12:
    v20 = 2;
LABEL_13:
    *a3 = v20;
    return;
  }

  v21 = sub_1C095D8EC();
  v22 = MEMORY[0x1C68DD630](v21);
  v24 = v23;

  if (v22 == 1819047270 && v24 == 0xE400000000000000 || (sub_1C095DF3C() & 1) != 0)
  {

    *a3 = 0;
    return;
  }

  if (v22 == 0x6C616974726170 && v24 == 0xE700000000000000)
  {

LABEL_23:
    v20 = 1;
    goto LABEL_13;
  }

  v25 = sub_1C095DF3C();

  if (v25)
  {

    goto LABEL_23;
  }

  sub_1C076E764(v26, v27, v28);
  swift_allocError();
  *v29 = a1;
  *(v29 + 8) = a2;
  *(v29 + 16) = 10;
  swift_willThrow();
}

void sub_1C076E388(uint64_t a1@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
  v6 = sub_1C0771C78();
  sub_1C051D6F4(v6, v7, v8);
  v9 = sub_1C095DADC();
  v12 = v9;
  v13 = v10;
  if (qword_1EBE15858 != -1)
  {
    v9 = swift_once();
  }

  if (qword_1EBE1F708 && (v14 = qword_1EBE1F708, v15 = sub_1C095D74C(), v16 = [v14 firstMatchInString:v15 options:0 range:{v12, v13}], v14, v15, v16))
  {
    v26 = a3;
    v27 = sub_1C07714C8(v16, 0x646E497472617473, 0xEF6C6562614C7865, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v28 = sub_1C07714C8(v16, 0x7865646E49646E65, 0xED00006C6562614CLL, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v17 = sub_1C07714C8(v16, 0xD000000000000011, 0x80000001C0A026F0, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v18 = sub_1C07714C8(v16, 0x6F63696E55646E65, 0xEF6C6562614C6564, a1, a2, sub_1C076FFC8, sub_1C076E89C);
    v19 = sub_1C07714C8(v16, 0x6D69547472617473, 0xEE006C6562614C65, a1, a2, sub_1C077105C, sub_1C076EE24);
    v20 = sub_1C07714C8(v16, 0x4C656D6954646E65, 0xEC0000006C656261, a1, a2, sub_1C077105C, sub_1C076EE24);
    if ((v27 & 0x100000000) != 0 || (v28 & 0x100000000) != 0 || (v17 & 0x100000000) != 0 || (v18 & 0x100000000) != 0 || (v19 & 0x100000000) != 0 || (v23 = v20, (v20 & 0x100000000) != 0))
    {
      sub_1C076E764(v20, v21, v22);
      swift_allocError();
      *v25 = a1;
      *(v25 + 8) = a2;
      *(v25 + 16) = 2;
      swift_willThrow();
    }

    else
    {

      *v26 = v27;
      v26[1] = v28;
      v26[2] = v17;
      v26[3] = v18;
      v26[4] = v19;
      v26[5] = v23;
    }
  }

  else
  {
    sub_1C076E764(v9, v10, v11);
    swift_allocError();
    *v24 = a1;
    *(v24 + 8) = a2;
    *(v24 + 16) = 2;
    swift_willThrow();
  }
}

unint64_t sub_1C076E764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F758;
  if (!qword_1EBE1F758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F758);
  }

  return result;
}

id sub_1C076E7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1C095D74C();

  v10[0] = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_1C095D17C();

    swift_willThrow();
  }

  return v6;
}

unsigned __int8 *sub_1C076E89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1C0771D3C(a1, a2, a3);

  result = sub_1C095D8DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C076F944();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C095DC5C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_129;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if ((v31 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v32 = v29 + v30;
              v23 = __CFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_128;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_47:
            v17 = 0;
            v20 = v15;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v20 = 0;
        v17 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_129;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if ((v39 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v40 = v37 + v38;
            v23 = __CFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_128;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_129;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if ((v21 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v22 = v18 + v19;
            v23 = v21 >= v22;
            v15 = v21 - v22;
            if (!v23)
            {
              goto LABEL_128;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v20 = 0;
        v17 = 0;
LABEL_129:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
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

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_129;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if ((v69 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v70 = v67 + v68;
          v23 = __CFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_128;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_129;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if ((v52 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v53 = v50 + v51;
          v23 = v52 >= v53;
          v45 = v52 - v53;
          if (!v23)
          {
            goto LABEL_128;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_129;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if ((v61 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v62 = v59 + v60;
        v23 = __CFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_128;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_127:
      v17 = 0;
      v20 = v45;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C076EE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1C0771D3C(a1, a2, a3);

  result = sub_1C095D8DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C076F944();
    v42 = v41;

    v7 = v42;
    if ((v42 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C095DC5C();
      v9 = v71;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v24 = v9 - 1;
        if (v24)
        {
          v25 = a5 + 48;
          v26 = a5 + 55;
          v27 = a5 + 87;
          if (a5 > 10)
          {
            v25 = 58;
          }

          else
          {
            v27 = 97;
            v26 = 65;
          }

          if (result)
          {
            v15 = 0;
            v28 = result + 1;
            v17 = 1;
            do
            {
              v29 = *v28;
              if (v29 < 0x30 || v29 >= v25)
              {
                if (v29 < 0x41 || v29 >= v26)
                {
                  v20 = 0;
                  if (v29 < 0x61 || v29 >= v27)
                  {
                    goto LABEL_127;
                  }

                  v30 = -87;
                }

                else
                {
                  v30 = -55;
                }
              }

              else
              {
                v30 = -48;
              }

              v31 = v15 * a5;
              if (v31 != v31)
              {
                goto LABEL_126;
              }

              v32 = v29 + v30;
              v23 = __OFADD__(v31, v32);
              v15 = v31 + v32;
              if (v23)
              {
                goto LABEL_126;
              }

              ++v28;
              --v24;
            }

            while (v24);
LABEL_46:
            v17 = 0;
            v20 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        v17 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v33 = a5 + 48;
        v34 = a5 + 55;
        v35 = a5 + 87;
        if (a5 > 10)
        {
          v33 = 58;
        }

        else
        {
          v35 = 97;
          v34 = 65;
        }

        if (result)
        {
          v36 = 0;
          v17 = 1;
          do
          {
            v37 = *result;
            if (v37 < 0x30 || v37 >= v33)
            {
              if (v37 < 0x41 || v37 >= v34)
              {
                v20 = 0;
                if (v37 < 0x61 || v37 >= v35)
                {
                  goto LABEL_127;
                }

                v38 = -87;
              }

              else
              {
                v38 = -55;
              }
            }

            else
            {
              v38 = -48;
            }

            v39 = v36 * a5;
            if (v39 != v39)
            {
              goto LABEL_126;
            }

            v40 = v37 + v38;
            v23 = __OFADD__(v39, v40);
            v36 = v39 + v40;
            if (v23)
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v17 = 0;
          v20 = v36;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          v17 = 1;
          while (1)
          {
            v18 = *v16;
            if (v18 < 0x30 || v18 >= v12)
            {
              if (v18 < 0x41 || v18 >= v13)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v14)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v15 * a5;
            if (v21 != v21)
            {
              goto LABEL_126;
            }

            v22 = v18 + v19;
            v23 = __OFSUB__(v21, v22);
            v15 = v21 - v22;
            if (v23)
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
        v17 = 0;
LABEL_127:

        LOBYTE(v72) = v17;
        return (v20 | (v17 << 32));
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

  v43 = HIBYTE(v7) & 0xF;
  v72 = v8;
  v73 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v43)
      {
        v45 = 0;
        v63 = a5 + 48;
        v64 = a5 + 55;
        v65 = a5 + 87;
        if (a5 > 10)
        {
          v63 = 58;
        }

        else
        {
          v65 = 97;
          v64 = 65;
        }

        v66 = &v72;
        v17 = 1;
        while (1)
        {
          v67 = *v66;
          if (v67 < 0x30 || v67 >= v63)
          {
            if (v67 < 0x41 || v67 >= v64)
            {
              v20 = 0;
              if (v67 < 0x61 || v67 >= v65)
              {
                goto LABEL_127;
              }

              v68 = -87;
            }

            else
            {
              v68 = -55;
            }
          }

          else
          {
            v68 = -48;
          }

          v69 = v45 * a5;
          if (v69 != v69)
          {
            goto LABEL_126;
          }

          v70 = v67 + v68;
          v23 = __OFADD__(v69, v70);
          v45 = v69 + v70;
          if (v23)
          {
            goto LABEL_126;
          }

          v66 = (v66 + 1);
          if (!--v43)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v43)
    {
      v44 = v43 - 1;
      if (v44)
      {
        v45 = 0;
        v46 = a5 + 48;
        v47 = a5 + 55;
        v48 = a5 + 87;
        if (a5 > 10)
        {
          v46 = 58;
        }

        else
        {
          v48 = 97;
          v47 = 65;
        }

        v49 = &v72 + 1;
        v17 = 1;
        while (1)
        {
          v50 = *v49;
          if (v50 < 0x30 || v50 >= v46)
          {
            if (v50 < 0x41 || v50 >= v47)
            {
              v20 = 0;
              if (v50 < 0x61 || v50 >= v48)
              {
                goto LABEL_127;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v45 * a5;
          if (v52 != v52)
          {
            goto LABEL_126;
          }

          v53 = v50 + v51;
          v23 = __OFSUB__(v52, v53);
          v45 = v52 - v53;
          if (v23)
          {
            goto LABEL_126;
          }

          ++v49;
          if (!--v44)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v43)
  {
    v54 = v43 - 1;
    if (v54)
    {
      v45 = 0;
      v55 = a5 + 48;
      v56 = a5 + 55;
      v57 = a5 + 87;
      if (a5 > 10)
      {
        v55 = 58;
      }

      else
      {
        v57 = 97;
        v56 = 65;
      }

      v58 = &v72 + 1;
      v17 = 1;
      do
      {
        v59 = *v58;
        if (v59 < 0x30 || v59 >= v55)
        {
          if (v59 < 0x41 || v59 >= v56)
          {
            v20 = 0;
            if (v59 < 0x61 || v59 >= v57)
            {
              goto LABEL_127;
            }

            v60 = -87;
          }

          else
          {
            v60 = -55;
          }
        }

        else
        {
          v60 = -48;
        }

        v61 = v45 * a5;
        if (v61 != v61)
        {
          goto LABEL_126;
        }

        v62 = v59 + v60;
        v23 = __OFADD__(v61, v62);
        v45 = v61 + v62;
        if (v23)
        {
          goto LABEL_126;
        }

        ++v58;
        --v54;
      }

      while (v54);
LABEL_125:
      v17 = 0;
      v20 = v45;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

unsigned __int8 *sub_1C076F3AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_1C0771D3C(a1, a2, a3);

  result = sub_1C095D8DC();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1C076F944();
    v37 = v36;

    v7 = v37;
    if ((v37 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v9 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_1C095DC5C();
      v9 = v63;
    }

    v10 = *result;
    if (v10 == 43)
    {
      if (v9 >= 1)
      {
        v21 = v9 - 1;
        if (v21)
        {
          v22 = a5 + 48;
          v23 = a5 + 55;
          v24 = a5 + 87;
          if (a5 > 10)
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
            v15 = 0;
            v25 = result + 1;
            do
            {
              v26 = *v25;
              if (v26 < 0x30 || v26 >= v22)
              {
                if (v26 < 0x41 || v26 >= v23)
                {
                  v19 = 0;
                  if (v26 < 0x61 || v26 >= v24)
                  {
                    goto LABEL_127;
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

              v28 = v15 * a5;
              if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v15 = v28 + (v26 + v27);
              if (__OFADD__(v28, (v26 + v27)))
              {
                goto LABEL_126;
              }

              ++v25;
              --v21;
            }

            while (v21);
LABEL_46:
            v19 = v15;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v19 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v10 != 45)
    {
      if (v9)
      {
        v29 = a5 + 48;
        v30 = a5 + 55;
        v31 = a5 + 87;
        if (a5 > 10)
        {
          v29 = 58;
        }

        else
        {
          v31 = 97;
          v30 = 65;
        }

        if (result)
        {
          v32 = 0;
          do
          {
            v33 = *result;
            if (v33 < 0x30 || v33 >= v29)
            {
              if (v33 < 0x41 || v33 >= v30)
              {
                v19 = 0;
                if (v33 < 0x61 || v33 >= v31)
                {
                  goto LABEL_127;
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

            v35 = v32 * a5;
            if ((v32 * a5) >> 64 != (v32 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v32 = v35 + (v33 + v34);
            if (__OFADD__(v35, (v33 + v34)))
            {
              goto LABEL_126;
            }

            ++result;
            --v9;
          }

          while (v9);
          v19 = v35 + (v33 + v34);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v9 >= 1)
    {
      v11 = v9 - 1;
      if (v11)
      {
        v12 = a5 + 48;
        v13 = a5 + 55;
        v14 = a5 + 87;
        if (a5 > 10)
        {
          v12 = 58;
        }

        else
        {
          v14 = 97;
          v13 = 65;
        }

        if (result)
        {
          v15 = 0;
          v16 = result + 1;
          while (1)
          {
            v17 = *v16;
            if (v17 < 0x30 || v17 >= v12)
            {
              if (v17 < 0x41 || v17 >= v13)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v14)
                {
                  goto LABEL_127;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v15 * a5;
            if ((v15 * a5) >> 64 != (v15 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v15 = v20 - (v17 + v18);
            if (__OFSUB__(v20, (v17 + v18)))
            {
              goto LABEL_126;
            }

            ++v16;
            if (!--v11)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v19 = 0;
LABEL_127:

        return v19;
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

  v38 = HIBYTE(v7) & 0xF;
  v64 = v8;
  v65 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v38)
      {
        v40 = 0;
        v56 = a5 + 48;
        v57 = a5 + 55;
        v58 = a5 + 87;
        if (a5 > 10)
        {
          v56 = 58;
        }

        else
        {
          v58 = 97;
          v57 = 65;
        }

        v59 = &v64;
        while (1)
        {
          v60 = *v59;
          if (v60 < 0x30 || v60 >= v56)
          {
            if (v60 < 0x41 || v60 >= v57)
            {
              v19 = 0;
              if (v60 < 0x61 || v60 >= v58)
              {
                goto LABEL_127;
              }

              v61 = -87;
            }

            else
            {
              v61 = -55;
            }
          }

          else
          {
            v61 = -48;
          }

          v62 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v62 + (v60 + v61);
          if (__OFADD__(v62, (v60 + v61)))
          {
            goto LABEL_126;
          }

          v59 = (v59 + 1);
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v38)
    {
      v39 = v38 - 1;
      if (v39)
      {
        v40 = 0;
        v41 = a5 + 48;
        v42 = a5 + 55;
        v43 = a5 + 87;
        if (a5 > 10)
        {
          v41 = 58;
        }

        else
        {
          v43 = 97;
          v42 = 65;
        }

        v44 = &v64 + 1;
        while (1)
        {
          v45 = *v44;
          if (v45 < 0x30 || v45 >= v41)
          {
            if (v45 < 0x41 || v45 >= v42)
            {
              v19 = 0;
              if (v45 < 0x61 || v45 >= v43)
              {
                goto LABEL_127;
              }

              v46 = -87;
            }

            else
            {
              v46 = -55;
            }
          }

          else
          {
            v46 = -48;
          }

          v47 = v40 * a5;
          if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v40 = v47 - (v45 + v46);
          if (__OFSUB__(v47, (v45 + v46)))
          {
            goto LABEL_126;
          }

          ++v44;
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v38)
  {
    v48 = v38 - 1;
    if (v48)
    {
      v40 = 0;
      v49 = a5 + 48;
      v50 = a5 + 55;
      v51 = a5 + 87;
      if (a5 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v64 + 1;
      do
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            v19 = 0;
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_127;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v40 * a5;
        if ((v40 * a5) >> 64 != (v40 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v40 = v55 + (v53 + v54);
        if (__OFADD__(v55, (v53 + v54)))
        {
          goto LABEL_126;
        }

        ++v52;
        --v48;
      }

      while (v48);
LABEL_125:
      v19 = v40;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_1C076F944()
{
  v0 = sub_1C095D8EC();
  v4 = sub_1C076F9C4(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_1C076F9C4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1C095DB2C();
    if (!v9 || (v10 = v9, v11 = sub_1C076FB1C(v9, 0), v12 = sub_1C076FB90(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1C095D7AC();

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
      return sub_1C095D7AC();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1C095DC5C();
LABEL_4:

  return sub_1C095D7AC();
}

void *sub_1C076FB1C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F780, &qword_1C0999A58);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unint64_t sub_1C076FB90(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1C076FDB0(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1C095D85C();
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
          result = sub_1C095DC5C();
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

    result = sub_1C076FDB0(v12, a6, a7);
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

    result = sub_1C095D82C();
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

unint64_t sub_1C076FDB0(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1C095D87C();
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
    v5 = MEMORY[0x1C68DD6D0](15, a1 >> 16);
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

uint64_t sub_1C076FE2C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v15 = 0;
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v16[0] = a3;
    v16[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v13 = v16;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v13 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v13 = sub_1C095DC5C();
  }

  result = a6(v13, a1, a2, a3, a4, a5);
  if (!v6)
  {
    v17 = BYTE4(result) & 1;
    v15 = result | ((BYTE4(result) & 1) << 32);
    return v15 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

uint64_t sub_1C076FEFC(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_1C095DC5C();
  }

  result = sub_1C0771D90(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_1C076FFC8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C095D84C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C076FDB0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1C095D84C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if ((v48 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__CFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if ((v55 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__CFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if ((v39 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (v39 < v40)
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

uint64_t sub_1C0770434(uint64_t a1)
{
  result = sub_1C058C2E8(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return result;
  }

  v91 = result;
  v4 = 0;
  v5 = (a1 + 40);
  while (1)
  {
    v89 = v4;
    v6 = *(v5 - 1);
    v7 = *v5;
    v92 = v6;
    swift_bridgeObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F768, &qword_1C0999A50);
    v8 = sub_1C0771C78();
    sub_1C051D6F4(v8, v9, v10);
    v11 = sub_1C095DADC();
    v13 = v12;
    if (qword_1EBE15848 != -1)
    {
      swift_once();
    }

    if (!qword_1EBE1F6F8 || (v14 = qword_1EBE1F6F8, v15 = sub_1C095D74C(), v16 = [v14 firstMatchInString:v15 options:0 range:{v11, v13}], v14, v15, !v16))
    {

      sub_1C076E764(v71, v72, v73);
      swift_allocError();
      *v74 = v6;
      *(v74 + 8) = v7;
      *(v74 + 16) = 3;
      swift_willThrow();
      return sub_1C05149C4(v89, 0);
    }

    v17 = v16;
    v18 = sub_1C07714C8(v16, 0x65646E4965646F6ELL, 0xEE006C6562614C78, v6, v7, sub_1C076FFC8, sub_1C076E89C);
    if ((v18 & 0x100000000) != 0)
    {
      goto LABEL_76;
    }

    v19 = v18;
    v20 = sub_1C095D74C();
    v90 = v17;
    v21 = [v17 rangeWithName_];

    if (v21 == sub_1C095D14C() || (sub_1C095DACC(), (v22 & 1) != 0))
    {
      v17 = v90;
      goto LABEL_76;
    }

    v87 = v5;
    v23 = sub_1C095D8EC();
    v86 = MEMORY[0x1C68DD630](v23);
    v88 = v24;

    v25 = sub_1C095D74C();
    v17 = v90;
    v26 = [v90 rangeWithName_];

    if (v26 == sub_1C095D14C() || (sub_1C095DACC(), (v27 & 1) != 0))
    {

LABEL_76:

      sub_1C076E764(v75, v76, v77);
      swift_allocError();
      *v78 = v6;
      *(v78 + 8) = v7;
      *(v78 + 16) = 3;
      swift_willThrow();

      return sub_1C05149C4(v89, 0);
    }

    v28 = sub_1C095D8EC();
    v29 = MEMORY[0x1C68DD630](v28);
    v83 = v30;
    v84 = v29;

    v31 = sub_1C095D74C();
    v32 = [v90 rangeWithName_];

    if (v32 == sub_1C095D14C())
    {
      v81 = 0;
      v82 = 0;
    }

    else
    {
      sub_1C095DACC();
      if (v33)
      {
        v81 = 0;
        v82 = 0;
      }

      else
      {
        v34 = sub_1C095D8EC();
        v35 = MEMORY[0x1C68DD630](v34);
        v81 = v36;
        v82 = v35;
      }
    }

    v37 = sub_1C095D74C();
    v38 = [v90 rangeWithName_];

    if (v38 == sub_1C095D14C() || (sub_1C095DACC(), (v39 & 1) != 0))
    {
      v80 = 0;
      v93 = 1;
    }

    else
    {
      sub_1C095D8EC();
      v80 = sub_1C095DA2C();
      v93 = v40;
    }

    v41 = sub_1C095D74C();
    v42 = [v90 rangeWithName_];

    v85 = v3;
    if (v42 == sub_1C095D14C() || (sub_1C095DACC(), (v43 & 1) != 0))
    {
      v44 = 7;
LABEL_24:
      v79 = v44;
      v45 = v93;
      goto LABEL_25;
    }

    v65 = sub_1C095D8EC();
    v66 = MEMORY[0x1C68DD630](v65);
    v68 = v67;

    if (v66 == 0x61636F5669726953 && v68 == 0xE900000000000062 || (sub_1C095DF3C() & 1) != 0)
    {

      v44 = 1;
      goto LABEL_24;
    }

    if (v66 == 0x656C6946636F56 && v68 == 0xE700000000000000 || (sub_1C095DF3C() & 1) != 0)
    {

      v44 = 2;
      goto LABEL_24;
    }

    if (v66 == 0x526E6F69746E654DLL && v68 == 0xEF7265766C6F7365 || (sub_1C095DF3C() & 1) != 0)
    {

      v44 = 3;
      goto LABEL_24;
    }

    if (v66 == 0xD000000000000013 && 0x80000001C09CD610 == v68 || (sub_1C095DF3C() & 1) != 0)
    {

      v44 = 4;
      goto LABEL_24;
    }

    if (v66 == 0x4143726573726150 && v68 == 0xEA00000000004954 || (sub_1C095DF3C() & 1) != 0)
    {

      v44 = 5;
      goto LABEL_24;
    }

    if (v66 == 0x5353726573726150 && v68 == 0xE900000000000055)
    {

      v44 = 6;
      goto LABEL_24;
    }

    v45 = v93;
    if (sub_1C095DF3C())
    {

      v69 = 6;
LABEL_66:
      v79 = v69;
      goto LABEL_25;
    }

    if (v66 == 0x6E776F6E6B6E75 && v68 == 0xE700000000000000)
    {
    }

    else
    {
      v70 = sub_1C095DF3C();

      if ((v70 & 1) == 0)
      {
        v69 = 7;
        goto LABEL_66;
      }
    }

    v79 = 0;
LABEL_25:
    v46 = sub_1C07714C8(v90, 0x646E4970756F7267, 0xEF6C6562614C7865, v6, v7, sub_1C076FFC8, sub_1C076E89C);
    v47 = sub_1C07714C8(v90, 0xD000000000000018, 0x80000001C0A02710, v6, v7, sub_1C076FFC8, sub_1C076E89C);

    sub_1C05149C4(v89, 0);
    v48 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = sub_1C057EAB4(v19);
    v52 = *(v91 + 16);
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      break;
    }

    v55 = v50;
    if (*(v91 + 24) >= v54)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C0670214();
        v48 = v91;
        if (v55)
        {
          goto LABEL_33;
        }

LABEL_32:
        sub_1C0670C64();
        v48 = v91;
        goto LABEL_33;
      }

      if ((v50 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    else
    {
      sub_1C057B824(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_1C057EAB4(v19);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_80;
      }

      v51 = v56;
      v48 = v91;
      if ((v55 & 1) == 0)
      {
        goto LABEL_32;
      }
    }

LABEL_33:
    v58 = *(v48 + 56);
    v59 = *(v58 + 8 * v51);
    v60 = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 8 * v51) = v59;
    if ((v60 & 1) == 0)
    {
      v59 = sub_1C0519CF8(0, *(v59 + 2) + 1, 1, v59);
      *(v58 + 8 * v51) = v59;
    }

    v62 = *(v59 + 2);
    v61 = *(v59 + 3);
    if (v62 >= v61 >> 1)
    {
      *(v58 + 8 * v51) = sub_1C0519CF8((v61 > 1), v62 + 1, 1, v59);
    }

    v63 = *(v58 + 8 * v51);
    *(v63 + 16) = v62 + 1;
    v64 = v63 + 96 * v62;
    *(v64 + 32) = v86;
    *(v64 + 40) = v88;
    *(v64 + 48) = v84;
    *(v64 + 56) = v83;
    *(v64 + 64) = v82;
    *(v64 + 72) = v81;
    *(v64 + 80) = v80;
    *(v64 + 88) = v45 & 1;
    *(v64 + 89) = v79;
    *(v64 + 92) = v46;
    *(v64 + 96) = BYTE4(v46) & 1;
    LOBYTE(v92) = BYTE4(v46) & 1;
    *(v64 + 97) = v92;
    *(v64 + 99) = BYTE2(v92);
    *(v64 + 100) = v47;
    *(v64 + 104) = BYTE4(v47) & 1;
    *(v64 + 105) = v91;
    *(v64 + 108) = v91 >> 24;
    *(v64 + 112) = 0;
    *(v64 + 120) = 1;
    v5 = v87 + 2;
    v4 = sub_1C07721FC;
    v3 = v85 - 1;
    if (v85 == 1)
    {
      return v91;
    }
  }

  __break(1u);
LABEL_80:
  result = sub_1C095DF6C();
  __break(1u);
  return result;
}

uint64_t get_enum_tag_for_layout_string_12SiriOntology13UsoGraphUtilsO0D15FromStringErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 0xFu) <= 0xA)
  {
    return *(a1 + 16) & 0xF;
  }

  else
  {
    return (*a1 + 11);
  }
}

uint64_t sub_1C0770FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C0770FF0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
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

uint64_t sub_1C0771034(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0;
    LOBYTE(a2) = 11;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C077105C(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_104;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C095D84C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C076FDB0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_100;
  }

  if (v25 < a3 >> 16)
  {
LABEL_101:
    __break(1u);
    goto LABEL_102;
  }

  result = sub_1C095D84C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_99;
  }

  if (v26 < v13)
  {
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v42 = a6 + 55;
        }

        else
        {
          v41 = 97;
          v42 = 65;
        }

        if (a6 <= 10)
        {
          v43 = a6 + 48;
        }

        else
        {
          v43 = 58;
        }

        if (v27)
        {
          v32 = 0;
          v44 = v27 + 1;
          v45 = result - 1;
          do
          {
            v46 = *v44;
            if (v46 < 0x30 || v46 >= v43)
            {
              if (v46 < 0x41 || v46 >= v42)
              {
                v37 = 0;
                v38 = 1;
                if (v46 < 0x61 || v46 >= v41)
                {
                  return v37 | (v38 << 32);
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

            v48 = v32 * a6;
            if (v48 != v48)
            {
              goto LABEL_96;
            }

            v49 = v46 + v47;
            v32 = v48 + v49;
            if (__OFADD__(v48, v49))
            {
              goto LABEL_96;
            }

            ++v44;
            --v45;
          }

          while (v45);
LABEL_94:
          v38 = 0;
          v37 = v32;
          return v37 | (v38 << 32);
        }

        goto LABEL_95;
      }

      goto LABEL_96;
    }

    goto LABEL_103;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v50 = a6 + 87;
      if (a6 > 10)
      {
        v51 = a6 + 55;
      }

      else
      {
        v50 = 97;
        v51 = 65;
      }

      if (a6 <= 10)
      {
        v52 = a6 + 48;
      }

      else
      {
        v52 = 58;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v53 = *v27;
          if (v53 < 0x30 || v53 >= v52)
          {
            if (v53 < 0x41 || v53 >= v51)
            {
              v37 = 0;
              v38 = 1;
              if (v53 < 0x61 || v53 >= v50)
              {
                return v37 | (v38 << 32);
              }

              v54 = -87;
            }

            else
            {
              v54 = -55;
            }
          }

          else
          {
            v54 = -48;
          }

          v55 = v32 * a6;
          if (v55 != v55)
          {
            goto LABEL_96;
          }

          v56 = v53 + v54;
          v32 = v55 + v56;
          if (__OFADD__(v55, v56))
          {
            goto LABEL_96;
          }

          ++v27;
          if (!--result)
          {
            goto LABEL_94;
          }
        }
      }

      goto LABEL_95;
    }

LABEL_96:
    v37 = 0;
    v38 = 1;
    return v37 | (v38 << 32);
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 87;
      if (a6 > 10)
      {
        v30 = a6 + 55;
      }

      else
      {
        v29 = 97;
        v30 = 65;
      }

      if (a6 <= 10)
      {
        v31 = a6 + 48;
      }

      else
      {
        v31 = 58;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v31)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              v38 = 1;
              if (v35 < 0x61 || v35 >= v29)
              {
                return v37 | (v38 << 32);
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v39 = v32 * a6;
          if (v39 != v39)
          {
            goto LABEL_96;
          }

          v40 = v35 + v36;
          v32 = v39 - v40;
          if (__OFSUB__(v39, v40))
          {
            goto LABEL_96;
          }

          ++v33;
          if (!--v34)
          {
            goto LABEL_94;
          }
        }
      }

LABEL_95:
      v37 = 0;
      v38 = 0;
      return v37 | (v38 << 32);
    }

    goto LABEL_96;
  }

LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
  return result;
}

unint64_t sub_1C07714C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, unint64_t, uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t))
{
  v10 = sub_1C095D74C();
  v11 = [a1 rangeWithName_];

  if (v11 == sub_1C095D14C())
  {
    goto LABEL_3;
  }

  sub_1C095DACC();
  if (v12)
  {
    goto LABEL_3;
  }

  v15 = sub_1C095D8EC();
  v19 = v18;
  if (!((v15 ^ v16) >> 14))
  {

LABEL_3:
    v13 = 0;
    LOBYTE(v14) = 1;
    return v13 | ((v14 & 1) << 32);
  }

  v20 = v15;
  v21 = v16;
  v22 = v17;
  v23 = sub_1C076FE2C(v15, v16, v17, v18, 10, a6);
  if ((v23 & 0x10000000000) != 0)
  {
    v23 = a7(v20, v21, v22, v19, 10);
  }

  v14 = (v23 & 0x100000000uLL) >> 32;
  v13 = v23;
  if ((v23 & 0x100000000) != 0)
  {
    v13 = 0;
  }

  return v13 | ((v14 & 1) << 32);
}

char *sub_1C0771610(uint64_t a1, uint64_t a2)
{
  if (sub_1C095D7CC() >= 1)
  {
    v37 = 0;
    v4 = 0;
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      sub_1C095D7EC();
      v7 = sub_1C095D8BC();
      v9 = v7;
      v10 = v8;
      if (!*(v6 + 2))
      {
        if (v7 == 32 && v8 == 0xE100000000000000)
        {
          v11 = 1;
          goto LABEL_27;
        }

        v14 = sub_1C095DF3C();
        v16 = v9 == 46 && v10 == 0xE100000000000000;
        if ((v14 & 1) == 0 && !v16 && (sub_1C095DF3C() & 1) == 0)
        {

          sub_1C076E764(v33, v34, v35);
          swift_allocError();
          *v36 = a1;
          *(v36 + 8) = a2;
          *(v36 + 16) = 1;
          swift_willThrow();

          return v6;
        }
      }

      v11 = v10 == 0xE100000000000000;
      if (v9 == 34 && v10 == 0xE100000000000000)
      {
LABEL_3:

        v4 ^= 1u;
LABEL_4:
        ++v5;
        goto LABEL_5;
      }

LABEL_27:
      if (sub_1C095DF3C())
      {
        goto LABEL_3;
      }

      if (v9 == 46 && v11)
      {

        if (v4)
        {
          v4 = 1;
          goto LABEL_4;
        }
      }

      else
      {
        v17 = sub_1C095DF3C();

        if (v4 & 1 | ((v17 & 1) == 0))
        {
          v4 |= v17;
          goto LABEL_4;
        }
      }

      v18 = sub_1C095D7EC();
      if (__OFSUB__(v5, v37))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      if (sub_1C095D7EC() >> 14 < v18 >> 14)
      {
        goto LABEL_50;
      }

      v19 = sub_1C095D8EC();
      v20 = MEMORY[0x1C68DD630](v19);
      v22 = v21;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1C051B0D4(0, *(v6 + 2) + 1, 1, v6);
      }

      v24 = *(v6 + 2);
      v23 = *(v6 + 3);
      if (v24 >= v23 >> 1)
      {
        v6 = sub_1C051B0D4((v23 > 1), v24 + 1, 1, v6);
      }

      *(v6 + 2) = v24 + 1;
      v25 = &v6[16 * v24];
      *(v25 + 4) = v20;
      *(v25 + 5) = v22;
      if (__OFADD__(v5, 2))
      {
        goto LABEL_51;
      }

      v4 = 0;
      v37 = v5 + 1;
      v5 += 2;
LABEL_5:
      if (v5 >= sub_1C095D7CC())
      {
        goto LABEL_42;
      }
    }
  }

  v37 = 0;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC0];
LABEL_42:
  v26 = sub_1C095D7EC();
  if (__OFSUB__(v5, v37))
  {
    goto LABEL_52;
  }

  if (sub_1C095D7EC() >> 14 < v26 >> 14)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v27 = sub_1C095D8EC();
  a2 = MEMORY[0x1C68DD630](v27);
  a1 = v28;

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_54:
    v6 = sub_1C051B0D4(0, *(v6 + 2) + 1, 1, v6);
  }

  v30 = *(v6 + 2);
  v29 = *(v6 + 3);
  if (v30 >= v29 >> 1)
  {
    v6 = sub_1C051B0D4((v29 > 1), v30 + 1, 1, v6);
  }

  *(v6 + 2) = v30 + 1;
  v31 = &v6[16 * v30];
  *(v31 + 4) = a2;
  *(v31 + 5) = a1;
  return v6;
}

uint64_t sub_1C0771A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_1C095D16C();
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) <= a2)
  {
    goto LABEL_9;
  }

  if (a2 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = a1 + 16 * a2;
  v14 = *(v12 + 32);
  v13 = *(v12 + 40);
  v34[0] = v14;
  v34[1] = v13;

  v15 = sub_1C095D15C();
  sub_1C051D6F4(v15, v16, v17);
  v18 = sub_1C095DB5C();
  v20 = v19;
  (*(v8 + 8))(v11, v7);

  v21 = HIBYTE(v20) & 0xF;
  if ((v20 & 0x2000000000000000) == 0)
  {
    v21 = v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

LABEL_9:
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
LABEL_10:
    *a3 = v23;
    a3[1] = v24;
    a3[2] = v25;
    a3[3] = v26;
    a3[4] = v27;
    return result;
  }

  v22 = sub_1C0771610(v14, v13);
  if (v3)
  {
  }

  if (*(v22 + 2) != 3)
  {

    sub_1C076E764(v30, v31, v32);
    swift_allocError();
    *v33 = v14;
    *(v33 + 8) = v13;
    *(v33 + 16) = 1;
    return swift_willThrow();
  }

  v28 = v22;

  if (!*(v28 + 2))
  {
    goto LABEL_18;
  }

  v23 = sub_1C095D7CC();

  v29 = *(v28 + 2);
  if (v29 >= 2)
  {
    if (v29 != 2)
    {
      v24 = *(v28 + 6);
      v25 = *(v28 + 7);
      v26 = *(v28 + 8);
      v27 = *(v28 + 9);

      goto LABEL_10;
    }

    goto LABEL_20;
  }

LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_1C0771C78()
{
  result = qword_1EBE1F770;
  if (!qword_1EBE1F770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE1F768, &qword_1C0999A50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F770);
  }

  return result;
}

uint64_t sub_1C0771CFC(uint64_t result, uint64_t a2)
{
  if (result)
  {

    return swift_unownedRelease();
  }

  return result;
}

unint64_t sub_1C0771D3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F778;
  if (!qword_1EBE1F778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F778);
  }

  return result;
}

uint64_t sub_1C0771D90(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_1C095D84C();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1C076FDB0(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1C076FDB0(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_1C095D84C();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t type metadata accessor for Siri_Nl_Core_Protocol_SemVer(uint64_t a1)
{
  result = qword_1EBE1F7C0;
  if (!qword_1EBE1F7C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Siri_Nl_Core_Protocol_SemVer.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0) + 28);
  v4 = sub_1C095D38C();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1C0772478()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1F790);
  __swift_project_value_buffer(v0, qword_1EBE1F790);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "major_version";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "minor_version";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "patch_version";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t static Siri_Nl_Core_Protocol_SemVer._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nl_Core_Protocol_SemVer.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 3 || result == 2 || result == 1)
    {
      sub_1C095D52C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1C095D67C(), !v4))
  {
    if (!v3[1] || (result = sub_1C095D67C(), !v4))
    {
      if (!v3[2] || (result = sub_1C095D67C(), !v4))
      {
        type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
        return sub_1C095D36C();
      }
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SemVer.hashValue.getter()
{
  sub_1C095DFEC();
  type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  sub_1C0772D7C(&qword_1EBE1F7A8, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C077295C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0772D7C(&qword_1EBE1F7D0, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07729D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EBE158A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C095D6EC();
  v3 = __swift_project_value_buffer(v2, qword_1EBE1F790);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C0772A80(uint64_t a1)
{
  v2 = sub_1C0772D7C(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0772AEC(uint64_t a1, uint64_t a2)
{
  sub_1C0772D7C(&qword_1EBE1F488, type metadata accessor for Siri_Nl_Core_Protocol_SemVer, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SemVer);

  return sub_1C095D5AC();
}

uint64_t _s12SiriOntology0A24_Nl_Core_Protocol_SemVerV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  type metadata accessor for Siri_Nl_Core_Protocol_SemVer(0);
  sub_1C095D38C();
  sub_1C0772D7C(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C0772D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C0772DC4(void (*a1)(uint64_t *__return_ptr)@<X1>, void (*a2)(void *__return_ptr, uint64_t, uint64_t)@<X2>, char *a3@<X8>)
{
  a1(__src);
  v5 = __src[1];
  if (__src[1])
  {
    v6 = __src[0];
    v7 = __src[2];
    v8 = __src[3];
    v9 = *(__src[3] + 16);
    if (v9)
    {
      memcpy(__dst, (__src[3] + 1344 * v9 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v14 + 1);
      sub_1C05AFFBC(v6, v5, v7, v8);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v14 + 1, __src, 0x20AuLL);
        if (sub_1C057363C(v14 + 1) == 8)
        {
          v10 = sub_1C05272F0(v14 + 1);
          v11 = *(v10 + 16);
          v12 = *(v10 + 24);

          a2(v14, v11, v12);
          sub_1C05B000C(__dst);
          v13 = v14[0];
          if (LOBYTE(v14[0]) != 35)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1], __src[2], __src[3]);
    }
  }

  v13 = 35;
LABEL_10:
  *a3 = v13;
}

void sub_1C0772F10(uint64_t a1@<X0>, unsigned __int8 *a2@<X8>)
{
  sub_1C05B00B0(a1, __src);
  v3 = __src[1];
  if (!__src[1])
  {
    goto LABEL_9;
  }

  v4 = __src[0];
  v5 = __src[2];
  v6 = __src[3];
  v7 = *(__src[3] + 16);
  if (!v7)
  {
    sub_1C05AFFBC(__src[0], __src[1], __src[2], __src[3]);
    goto LABEL_9;
  }

  memcpy(__dst, (__src[3] + 1344 * v7 - 1312), 0x20AuLL);
  sub_1C05AFF4C(__dst, v10);
  sub_1C05AFFBC(v4, v3, v5, v6);
  memcpy(__src, __dst, 0x20AuLL);
  if (sub_1C0573598(__src) == 1)
  {
LABEL_9:
    v8 = -1;
    goto LABEL_10;
  }

  memcpy(v10, __src, 0x20AuLL);
  if (sub_1C057363C(v10) != 8)
  {
    sub_1C05B000C(__dst);
    goto LABEL_9;
  }

  sub_1C05272F0(v10);

  AddressOntologyNode.CountryCode.init(rawValue:)(&v9);
  sub_1C05B000C(__dst);
  v8 = v9;
  if (v9 == 255)
  {
    goto LABEL_9;
  }

LABEL_10:
  *a2 = v8;
}

void sub_1C0773048(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C05B00C4(a1, __src);
  v3 = __src[1];
  if (__src[1])
  {
    v4 = __src[0];
    v5 = __src[2];
    v6 = __src[3];
    v7 = *(__src[3] + 16);
    if (v7)
    {
      memcpy(__dst, (__src[3] + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v4, v3, v5, v6);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        if (sub_1C057363C(v10) == 8)
        {
          sub_1C05272F0(v10);

          AddressOntologyNode.Proximity.init(rawValue:)(&v9);
          sub_1C05B000C(__dst);
          v8 = v9;
          if (v9 != 5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1], __src[2], __src[3]);
    }
  }

  v8 = 5;
LABEL_10:
  *a2 = v8;
}

void sub_1C0773180(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C05B00D8(a1, __src);
  v3 = __src[1];
  if (__src[1])
  {
    v4 = __src[0];
    v5 = __src[2];
    v6 = __src[3];
    v7 = *(__src[3] + 16);
    if (v7)
    {
      memcpy(__dst, (__src[3] + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v4, v3, v5, v6);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        if (sub_1C057363C(v10) == 8)
        {
          sub_1C05272F0(v10);

          AddressOntologyNode.Continent.init(rawValue:)(&v9);
          sub_1C05B000C(__dst);
          v8 = v9;
          if (v9 != 8)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1], __src[2], __src[3]);
    }
  }

  v8 = 8;
LABEL_10:
  *a2 = v8;
}

void sub_1C07732B8(uint64_t a1@<X0>, char *a2@<X8>)
{
  sub_1C05B0100(a1, __src);
  v3 = __src[1];
  if (__src[1])
  {
    v4 = __src[0];
    v5 = __src[2];
    v6 = __src[3];
    v7 = *(__src[3] + 16);
    if (v7)
    {
      memcpy(__dst, (__src[3] + 1344 * v7 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v10);
      sub_1C05AFFBC(v4, v3, v5, v6);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v10, __src, 0x20AuLL);
        if (sub_1C057363C(v10) == 8)
        {
          sub_1C05272F0(v10);

          AddressOntologyNode.StreetType.init(rawValue:)(&v9);
          sub_1C05B000C(__dst);
          v8 = v9;
          if (v9 != 180)
          {
            goto LABEL_10;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1], __src[2], __src[3]);
    }
  }

  v8 = -76;
LABEL_10:
  *a2 = v8;
}

void sub_1C07733F0(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_1C05B0114(a1, __src);
  v3 = *(&__src[0] + 1);
  if (*(&__src[0] + 1))
  {
    v4 = *&__src[0];
    v5 = __src[1];
    v6 = *(*(&__src[1] + 1) + 16);
    if (v6)
    {
      memcpy(__dst, (*(&__src[1] + 1) + 1344 * v6 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v8);
      sub_1C05AFFBC(v4, v3, v5, *(&v5 + 1));
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v8, __src, 0x20AuLL);
        if (sub_1C057363C(v8) == 8)
        {
          sub_1C05272F0(v8);
          v7 = sub_1C095DD6C();
          sub_1C05B000C(__dst);
          if (!v7)
          {
            *a2 = 0;
            return;
          }
        }

        else
        {
          sub_1C05B000C(__dst);
        }
      }
    }

    else
    {
      sub_1C05AFFBC(*&__src[0], *(&__src[0] + 1), *&__src[1], *(&__src[1] + 1));
    }
  }

  *a2 = 1;
}

__n128 OccupantIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

uint64_t OccupantIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

double static OccupantIntentNode.from(intentNode:ontologyNode:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;

  return result;
}

void OccupantIntentNode.namePrefix.getter(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A60, &qword_1C0972FF0);
  swift_initStaticObject();
  sub_1C0772DC4(sub_1C05B0074, PersonOntologyNode.PersonNamePrefix.init(rawValue:), a1);
}

void OccupantIntentNode.namePostfix.getter(char *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17A58, qword_1C0972FD0);
  swift_initStaticObject();
  sub_1C0772DC4(sub_1C05B0088, PersonOntologyNode.PersonNamePostfix.init(rawValue:), a1);
}

uint64_t sub_1C0773760(uint64_t a1)
{
  v2 = v1[1];
  v14 = *v1;
  v15 = v2;
  v16 = *(v1 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
  inited = swift_initStaticObject();
  sub_1C05B06D4(inited);
  v4 = __src[1];
  if (__src[1])
  {
    v5 = __src[0];
    v6 = __src[2];
    v7 = __src[3];
    v8 = *(__src[3] + 16);
    if (v8)
    {
      memcpy(__dst, (__src[3] + 1344 * v8 - 1312), 0x20AuLL);
      sub_1C05AFF4C(__dst, v11);
      sub_1C05AFFBC(v5, v4, v6, v7);
      memcpy(__src, __dst, 0x20AuLL);
      if (sub_1C0573598(__src) != 1)
      {
        memcpy(v11, __src, 0x20AuLL);
        v9 = sub_1C057363C(v11);
        if (v9 == 4 || v9 == 7)
        {
          return *sub_1C05272F0(v11);
        }

        sub_1C05B000C(__dst);
      }
    }

    else
    {
      sub_1C05AFFBC(__src[0], __src[1], __src[2], __src[3]);
    }
  }

  return 0;
}

uint64_t CentroidIntentNode.intentNode.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
}

__n128 CentroidIntentNode.init(intentNode:ontologyNode:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *(a1 + 24);
  *a3 = *a1;
  result = *(a1 + 8);
  *(a3 + 8) = result;
  *(a3 + 24) = v3;
  *(a3 + 32) = a2;
  return result;
}

double static CentroidIntentNode.from(intentNode:ontologyNode:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  *a3 = *a1;
  a3[1] = v3;
  a3[2] = v4;
  a3[3] = v5;
  a3[4] = a2;

  return result;
}

uint64_t sub_1C07739BC(uint64_t result, uint64_t a2)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = a2;
    v3 = result;
    if (a2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17240, &qword_1C0970A20);
      v4 = sub_1C095D9CC();
      *(v4 + 16) = v2;
      v5 = v4 + 32;
      do
      {
        sub_1C05149F8(v3, v5, &qword_1EBE17240, &qword_1C0970A20);
        v5 += 40;
        --v2;
      }

      while (v2);
    }

    else
    {
      v4 = MEMORY[0x1E69E7CC0];
    }

    sub_1C05145B4(v3, &qword_1EBE17240, &qword_1C0970A20);
    return v4;
  }

  return result;
}

uint64_t NLIntent.ProtobufDeserializationError.hashValue.getter()
{
  v1 = *v0;
  sub_1C095DFEC();
  MEMORY[0x1C68DDE90](v1);
  return sub_1C095E03C();
}

void NLIntent.init(protobufData:)(uint64_t a1, unint64_t a2)
{
  v5 = sub_1C095D3BC();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v12 - v10;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  sub_1C0773CB4(a1, a2);
  sub_1C095D3AC();
  sub_1C0773D08();
  sub_1C095D57C();
  if (!v2)
  {
    sub_1C077CD70(v11, v9, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
    sub_1C0773DB4(v9);
    sub_1C077CDD8(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
  }

  sub_1C0773D60(a1, a2);
}

double sub_1C0773CB4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

unint64_t sub_1C0773D08()
{
  result = qword_1EBE14FF0;
  if (!qword_1EBE14FF0)
  {
    type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE14FF0);
  }

  return result;
}

double sub_1C0773D60(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_1C0773DB4(uint64_t a1)
{
  v2 = MEMORY[0x1EEE9AC00](a1);
  v332 = v3;
  v333 = v1;
  v4 = v2;
  v5 = type metadata accessor for Com_Apple_Siri_Product_Proto_NLState(0);
  v330 = *(v5 - 8);
  v331 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v325 = (&v325 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17780, &qword_1C0999E30);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v326 = &v325 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v329 = &v325 - v10;
  v395 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v397 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v381 = &v325 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v380 = &v325 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v394 = &v325 - v15;
  v393 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v400 = *(v393 - 8);
  MEMORY[0x1EEE9AC00](v393);
  v379 = &v325 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v389 = &v325 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v392 = &v325 - v20;
  v21 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v344 = &v325 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v343 = &v325 - v24;
  v25 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v342 = (&v325 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v341 = &v325 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v378 = &v325 - v30;
  v387 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v396 = *(v387 - 8);
  v31 = MEMORY[0x1EEE9AC00](v387);
  v377 = (&v325 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v376 = &v325 - v33;
  v399 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v398 = *(v399 - 1);
  MEMORY[0x1EEE9AC00](v399);
  v386 = (&v325 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v375 = &v325 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v391 = &v325 - v38;
  v39 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v338 = *(v39 - 8);
  v339 = v39;
  MEMORY[0x1EEE9AC00](v39);
  v404 = (&v325 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0));
  v41 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v349 = &v325 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v348 = &v325 - v44;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E00, &qword_1C099BAE0);
  MEMORY[0x1EEE9AC00](v45 - 8);
  v359 = &v325 - v46;
  v385 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element(0);
  v390 = *(v385 - 8);
  v47 = MEMORY[0x1EEE9AC00](v385);
  v347 = &v325 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v346 = &v325 - v50;
  MEMORY[0x1EEE9AC00](v49);
  v52 = &v325 - v51;
  v374 = type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node(0);
  v388 = *(v374 - 8);
  v53 = MEMORY[0x1EEE9AC00](v374);
  v345 = &v325 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v363 = &v325 - v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E10, &unk_1C0971270);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v351 = &v325 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = MEMORY[0x1EEE9AC00](v57);
  v350 = &v325 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v362 = &v325 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v361 = &v325 - v63;
  v366 = type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode(0);
  v373 = *(v366 - 8);
  v64 = MEMORY[0x1EEE9AC00](v366);
  v370 = &v325 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v64);
  v402 = &v325 - v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7E0, &qword_1C0999E38);
  v68 = *(v67 - 1);
  MEMORY[0x1EEE9AC00](v67);
  v406 = (&v325 - v69);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7E8, &unk_1C0999E40);
  v71 = MEMORY[0x1EEE9AC00](v70 - 8);
  v405 = &v325 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = MEMORY[0x1EEE9AC00](v71);
  v75 = &v325 - v74;
  v76 = MEMORY[0x1EEE9AC00](v73);
  v78 = &v325 - v77;
  MEMORY[0x1EEE9AC00](v76);
  v80 = (&v325 - v79);
  v81 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent(0) + 20);
  v335 = v4;
  v82 = *(v4 + v81);
  swift_beginAccess();
  v83 = *(v82 + 16);
  v84 = v83;
  if (v83 == 0.0)
  {
    v84 = 0.0;
  }

  v328 = v84;
  swift_beginAccess();
  v337 = v82;
  v85 = *(v82 + 24);
  v86 = *(v82 + 32);
  v87 = HIBYTE(v86) & 0xF;
  if ((v86 & 0x2000000000000000) == 0)
  {
    v87 = v85 & 0xFFFFFFFFFFFFLL;
  }

  v358 = v52;
  if (v87)
  {
    v327 = v85;
  }

  else
  {
    v327 = 0;
    v86 = 0;
  }

  v88 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__intentTree;
  v89 = v337;
  swift_beginAccess();
  v401 = v88;
  v90 = *(*(v89 + v88) + 16);
  if (!v90)
  {

    sub_1C077C1C0(v107, v108, v109);
    swift_allocError();
    v106 = 2;
LABEL_22:
    *v105 = v106;
    goto LABEL_23;
  }

  v334 = v86;
  v408 = (v68 + 56);
  v407 = (v68 + 48);

  v92 = 0;
  v384 = v91;
  while (1)
  {
    if (v92 == v90)
    {
      v93 = 1;
      v92 = v90;
    }

    else
    {
      if ((v92 & 0x8000000000000000) != 0)
      {
LABEL_268:
        __break(1u);
LABEL_269:
        __break(1u);
LABEL_270:
        __break(1u);
LABEL_271:
        __break(1u);
LABEL_272:
        __break(1u);
        goto LABEL_273;
      }

      if (v92 >= *(v91 + 16))
      {
        goto LABEL_269;
      }

      v94 = v91 + ((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v92;
      v95 = *(v67 + 12);
      v96 = v406;
      *v406 = v92;
      sub_1C077CD70(v94, v96 + v95, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      sub_1C0575620(v96, v78, &qword_1EBE1F7E0, &qword_1C0999E38);
      v93 = 0;
      ++v92;
    }

    v97 = *v408;
    (*v408)(v78, v93, 1, v67);
    sub_1C0575620(v78, v80, &qword_1EBE1F7E8, &unk_1C0999E40);
    v98 = *v407;
    if ((*v407)(v80, 1, v67) == 1)
    {
      break;
    }

    v99 = *v80;
    v100 = *(v67 + 12);
    v101 = *(v80 + v100);
    sub_1C077CDD8(v80 + v100, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if (v99)
    {
      v91 = v384;
      if ((v101 & 0x80000000) != 0 || *(v384 + 16) <= v101)
      {

        sub_1C077C1C0(v102, v103, v104);
        swift_allocError();
        v106 = 1;
        goto LABEL_22;
      }
    }

    else
    {
      v91 = v384;
      if (v101 != -1)
      {

        sub_1C077C1C0(v158, v159, v160);
        swift_allocError();
        *v161 = 0;
LABEL_23:
        swift_willThrow();
        return sub_1C077CDD8(v335, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
      }
    }
  }

  v403 = v90;
  v354 = sub_1C058C658(MEMORY[0x1E69E7CC0]);
  v90 = 0;
  while (1)
  {
    if (v90 == v403)
    {
      v111 = 1;
      v90 = v403;
      v112 = v405;
    }

    else
    {
      if ((v90 & 0x8000000000000000) != 0)
      {
        goto LABEL_270;
      }

      if (v90 >= *(v384 + 16))
      {
        goto LABEL_271;
      }

      v78 = v90 + 1;
      v113 = v384 + ((*(v373 + 80) + 32) & ~*(v373 + 80)) + *(v373 + 72) * v90;
      v114 = *(v67 + 12);
      v115 = v406;
      *v406 = v90;
      sub_1C077CD70(v113, v115 + v114, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v116 = v115;
      v112 = v405;
      sub_1C0575620(v116, v405, &qword_1EBE1F7E0, &qword_1C0999E38);
      v111 = 0;
      ++v90;
    }

    v97(v112, v111, 1, v67);
    sub_1C0575620(v112, v75, &qword_1EBE1F7E8, &unk_1C0999E40);
    if (v98(v75, 1, v67) == 1)
    {
      break;
    }

    v117 = *v75;
    v118 = *(v67 + 12);
    v119 = *&v75[v118];
    sub_1C077CDD8(&v75[v118], type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if ((v119 & 0x80000000) == 0)
    {
      if (v354[2] && (sub_1C0514E38(), (v120 & 1) != 0))
      {
      }

      else
      {
        v121 = MEMORY[0x1E69E7CC0];
      }

      v122 = v121;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v123 = v122;
      }

      else
      {
        v123 = sub_1C0578BE4(0, *(v122 + 16) + 1, 1, v122);
      }

      v125 = *(v123 + 2);
      v124 = *(v123 + 3);
      v126 = v125 + 1;
      if (v125 >= v124 >> 1)
      {
        v383 = v125 + 1;
        v140 = sub_1C0578BE4((v124 > 1), v125 + 1, 1, v123);
        v126 = v383;
        v123 = v140;
      }

      *(v123 + 2) = v126;
      *&v123[8 * v125 + 32] = v117;
      v127 = v123;

      v78 = v354;
      LODWORD(v383) = swift_isUniquelyReferenced_nonNull_native();
      *&v413[0] = v78;
      v129 = sub_1C0514E38();
      v130 = *(v78 + 16);
      v131 = (v128 & 1) == 0;
      v132 = v130 + v131;
      if (__OFADD__(v130, v131))
      {
        goto LABEL_272;
      }

      if (*(v78 + 24) >= v132)
      {
        if ((v383 & 1) == 0)
        {
          v78 = v413;
          v383 = v129;
          LODWORD(v382) = v128;
          sub_1C0670674();
          LOBYTE(v128) = v382;
          v129 = v383;
        }
      }

      else
      {
        LODWORD(v382) = v128;
        sub_1C057C22C(v132, v383);
        v78 = *&v413[0];
        v133 = sub_1C0514E38();
        v134 = v128 & 1;
        LOBYTE(v128) = v382;
        if ((v382 & 1) != v134)
        {
          goto LABEL_276;
        }

        v129 = v133;
      }

      v135 = *&v413[0];
      v354 = *&v413[0];
      if (v128)
      {
        v136 = *(*&v413[0] + 56);
        v78 = *(v136 + 8 * v129);
        *(v136 + 8 * v129) = v127;
      }

      else
      {
        *(*&v413[0] + 8 * (v129 >> 6) + 64) |= 1 << v129;
        *(v135[6] + 8 * v129) = v119;
        *(v135[7] + 8 * v129) = v127;
        v137 = v135[2];
        v138 = __OFADD__(v137, 1);
        v139 = v137 + 1;
        if (v138)
        {
          goto LABEL_275;
        }

        v135[2] = v139;
      }
    }
  }

  v75 = *(v384 + 16);
  if (v75)
  {
    v141 = sub_1C095D9CC();
    *(v141 + 16) = v75;
    v340 = v141;
    memset((v141 + 32), 1, v75);
  }

  else
  {
    v340 = MEMORY[0x1E69E7CC0];
  }

  v90 = v402;
  v67 = *&v401[v337];
  v78 = v67[2];
  if (!v78)
  {
    goto LABEL_63;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_273:
    v142 = sub_1C079172C(v340);
    goto LABEL_57;
  }

  v142 = v340;
LABEL_57:
  v143 = v67 + ((*(v373 + 80) + 32) & ~*(v373 + 80));
  v144 = *(v373 + 72);
  v340 = v142;
  v145 = v142 + 32;
  do
  {
    sub_1C077CD70(v143, v90, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    v146 = *v90;
    sub_1C077CDD8(v90, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
    if ((v146 & 0x80000000) == 0 && *(v340 + 16) > v146)
    {
      v145[v146] = 0;
    }

    v143 += v144;
    --v78;
  }

  while (v78);

LABEL_63:
  v147 = 0;
  v148 = v340;
  v78 = *(v340 + 16);
  v149 = MEMORY[0x1E69E7CC0];
LABEL_64:
  v150 = v147;
  while (v78 != v150)
  {
    if (v150 >= *(v148 + 16))
    {
      goto LABEL_265;
    }

    v147 = v150 + 1;
    v151 = *(v148 + v150++ + 32);
    if (v151 == 1)
    {
      v152 = v149;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v149 = v152;
      }

      else
      {
        v149 = sub_1C0578BE4(0, *(v152 + 2) + 1, 1, v152);
      }

      v154 = *(v149 + 2);
      v153 = *(v149 + 3);
      v67 = (v154 + 1);
      v148 = v340;
      if (v154 >= v153 >> 1)
      {
        v149 = sub_1C0578BE4((v153 > 1), v154 + 1, 1, v149);
        v148 = v340;
      }

      *(v149 + 2) = v67;
      *&v149[8 * v154 + 32] = v147 - 1;
      goto LABEL_64;
    }
  }

  v155 = v149;
  memset(v413, 0, 40);
  v382 = sub_1C07739BC(v413, v75);
  v156 = v354;
  v90 = v361;
  if (v75)
  {
    v78 = v354;
    v157 = sub_1C095D9CC();
    *(v157 + 16) = v75;
    v364 = v157;
    bzero((v157 + 32), v75);
    v156 = v78;
  }

  else
  {
    v364 = MEMORY[0x1E69E7CC0];
  }

  v162 = v370;
  v163 = v384;
  v164 = v155;
  v369 = *(v155 + 2);
  v354 = v156;
  if (v369)
  {
    v336 = v156 + 8;
    v356 = (v388 + 48);
    v357 = (v388 + 56);
    v398 += 6;
    v360 = (v396 + 56);
    v371 = (v396 + 48);
    v372 = (v390 + 48);
    v390 = v397 + 48;
    v365 = v384 + ((*(v373 + 80) + 32) & ~*(v373 + 80));
    v400 += 6;
LABEL_81:
    v165 = 0;
    v367 = v164;
    v368 = v164 + 32;
    while (2)
    {
      if (v165 >= *(v164 + 2))
      {
LABEL_257:
        __break(1u);
LABEL_258:
        __break(1u);
LABEL_259:
        __break(1u);
        goto LABEL_260;
      }

      v166 = *&v368[8 * v165];
      if ((v166 & 0x8000000000000000) != 0)
      {
        goto LABEL_258;
      }

      if (v166 >= *(v163 + 16))
      {
        goto LABEL_259;
      }

      v388 = v165;
      v167 = *(v373 + 72);
      v383 = v166;
      sub_1C077CD70(v365 + v167 * v166, v162, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
      v168 = *(v366 + 24);
      v67 = &unk_1C0971270;
      sub_1C05149F8(&v168[v162], v90, &qword_1EBE16E10, &unk_1C0971270);
      v75 = v372;
      v169 = *v372;
      v78 = v385;
      if ((*v372)(v90, 1, v385) == 1)
      {
        sub_1C077CDD8(v162, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
        sub_1C05145B4(v90, &qword_1EBE16E10, &unk_1C0971270);
        goto LABEL_83;
      }

      sub_1C05145B4(v90, &qword_1EBE16E10, &unk_1C0971270);
      v408 = v168;
      v170 = v362;
      sub_1C05149F8(&v168[v162], v362, &qword_1EBE16E10, &unk_1C0971270);
      if (v169(v170, 1, v78) == 1)
      {
        v171 = v357;
        v172 = v358;
        *v358 = 0;
        *(v172 + 1) = 0xE000000000000000;
        *(v172 + 2) = MEMORY[0x1E69E7CC0];
        (*v171)(&v172[*(v78 + 24)], 1, 1, v374);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        v67 = &qword_1EBE16E00;
        if (v169(v170, 1, v78) != 1)
        {
          sub_1C05145B4(v362, &qword_1EBE16E10, &unk_1C0971270);
        }
      }

      else
      {
        v172 = v358;
        sub_1C077CE38(v170, v358, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
        v67 = &qword_1EBE16E00;
      }

      v173 = v385;
      v78 = v359;
      sub_1C05149F8(&v172[*(v385 + 24)], v359, &qword_1EBE16E00, &qword_1C099BAE0);
      sub_1C077CDD8(v172, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      v174 = (*v356)(v78, 1, v374);
      v175 = v404;
      if (v174 == 1)
      {
        v162 = v370;
        sub_1C077CDD8(v370, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
        sub_1C05145B4(v78, &qword_1EBE16E00, &qword_1C099BAE0);
        v90 = v361;
        goto LABEL_83;
      }

      sub_1C077CE38(v78, v363, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      v176 = v408;
      v177 = v350;
      sub_1C05149F8(&v408[v370], v350, &qword_1EBE16E10, &unk_1C0971270);
      if (v169(v177, 1, v173) == 1)
      {
        v178 = v346;
        *v346 = 0;
        *(v178 + 1) = 0xE000000000000000;
        *(v178 + 2) = MEMORY[0x1E69E7CC0];
        (*v357)(&v178[*(v173 + 24)], 1, 1, v374);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        v179 = v169(v177, 1, v173);
        v180 = v178;
        v181 = v347;
        if (v179 != 1)
        {
          sub_1C05145B4(v350, &qword_1EBE16E10, &unk_1C0971270);
        }
      }

      else
      {
        v180 = v346;
        sub_1C077CE38(v177, v346, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
        v181 = v347;
      }

      v182 = v180[1];
      v353 = *v180;
      v355 = v182;

      sub_1C077CDD8(v180, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      v75 = v351;
      sub_1C05149F8(&v176[v370], v351, &qword_1EBE16E10, &unk_1C0971270);
      v183 = v385;
      if (v169(v75, 1, v385) == 1)
      {
        *v181 = 0;
        *(v181 + 1) = 0xE000000000000000;
        *(v181 + 2) = MEMORY[0x1E69E7CC0];
        (*v357)(&v181[*(v183 + 24)], 1, 1, v374);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        if (v169(v75, 1, v183) != 1)
        {
          sub_1C05145B4(v351, &qword_1EBE16E10, &unk_1C0971270);
        }
      }

      else
      {
        sub_1C077CE38(v75, v181, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      }

      v184 = *(v181 + 2);

      sub_1C077CDD8(v181, type metadata accessor for Com_Apple_Siri_Product_Proto_Element);
      v185 = v345;
      sub_1C077CD70(v363, v345, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1C077CDD8(v185, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
        v186 = v354;
        if (v354[2])
        {
          v352 = v184;
          v187 = sub_1C0514E38();
          v90 = v361;
          if (v188)
          {
            v67 = *(v186[7] + 8 * v187);
            v78 = v67[2];

            if (v78)
            {
              v189 = (v67 + 4);
              v190 = v382;
              v191 = v382 + 4;
              v75 = MEMORY[0x1E69E7CC0];
              while (1)
              {
                v193 = *v189++;
                v192 = v193;
                if ((v193 & 0x8000000000000000) != 0)
                {
                  goto LABEL_261;
                }

                if (v192 >= v190[2])
                {
                  goto LABEL_262;
                }

                v90 = &qword_1C0970A20;
                sub_1C05149F8(&v191[5 * v192], v412, &qword_1EBE17240, &qword_1C0970A20);
                if (*(&v412[1] + 1))
                {
                  sub_1C0531D80(v412, v413);
                  sub_1C0531D80(v413, v412);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v75 = sub_1C0578008(0, *(v75 + 2) + 1, 1, v75);
                  }

                  v195 = *(v75 + 2);
                  v194 = *(v75 + 3);
                  if (v195 >= v194 >> 1)
                  {
                    v75 = sub_1C0578008((v194 > 1), v195 + 1, 1, v75);
                  }

                  *(v75 + 2) = v195 + 1;
                  sub_1C0531D80(v412, &v75[40 * v195 + 32]);
                }

                else
                {
                  sub_1C05145B4(v412, &qword_1EBE17240, &qword_1C0970A20);
                }

                --v78;
                v190 = v382;
                if (!v78)
                {
                  goto LABEL_184;
                }
              }
            }

            v75 = MEMORY[0x1E69E7CC0];
LABEL_184:

            v90 = v361;
          }

          else
          {
            v75 = MEMORY[0x1E69E7CC0];
          }

          v184 = v352;
          if (*(v75 + 2))
          {
LABEL_186:
            v67 = swift_allocObject();
            v260 = v355;
            v67[2] = v353;
            v67[3] = v260;
            v67[4] = v184;
            v67[5] = v75;
            v257 = &type metadata for NonTerminalIntentNode;
            v258 = &protocol witness table for NonTerminalIntentNode;
LABEL_187:
            v162 = v370;
LABEL_188:
            v414[1] = 0;
            v414[2] = 0;
            v414[0] = v67;
            v414[3] = v257;
            v414[4] = v258;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v261 = v364;
            }

            else
            {
              v261 = sub_1C079172C(v364);
            }

            v78 = v383;
            if (v383 >= *(v261 + 2))
            {
              goto LABEL_263;
            }

            v364 = v261;
            v261[v383 + 32] = 1;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v382 = sub_1C0791718(v382);
            }

            sub_1C077CDD8(v363, type metadata accessor for Com_Apple_Siri_Product_Proto_Element.OneOf_Node);
            sub_1C077CDD8(v162, type metadata accessor for Com_Apple_Siri_Product_Proto_IntentNode);
            if (v78 >= v382[2])
            {
              goto LABEL_264;
            }

            sub_1C077C214(v414, &v382[5 * v78 + 4]);
LABEL_83:
            v165 = v388 + 1;
            v163 = v384;
            v164 = v367;
            if (v388 + 1 != v369)
            {
              continue;
            }

            v262 = 1 << *(v354 + 32);
            if (v262 < 64)
            {
              v263 = ~(-1 << v262);
            }

            else
            {
              v263 = -1;
            }

            v264 = v263 & v354[8];
            v75 = ((v262 + 63) >> 6);
            v265 = v364;
            v67 = (v364 + 32);

            v266 = 0;
            v267 = MEMORY[0x1E69E7CC0];
LABEL_200:
            while (v264)
            {
              v268 = v354;
LABEL_207:
              v270 = (v266 << 9) | (8 * __clz(__rbit64(v264)));
              v271 = *(v268[6] + v270);
              if ((v271 & 0x8000000000000000) != 0)
              {
                goto LABEL_266;
              }

              v272 = *(v265 + 16);
              if (v271 >= v272)
              {
                goto LABEL_267;
              }

              v264 &= v264 - 1;
              if ((*(v67 + v271) & 1) == 0)
              {
                v273 = *(v354[7] + v270);
                v274 = *(v273 + 16);
                v275 = (v273 + 32);
                while (v274)
                {
                  if (*v275 >= v272)
                  {
                    __break(1u);
                    goto LABEL_257;
                  }

                  v276 = *(v67 + *v275++);
                  --v274;
                  if ((v276 & 1) == 0)
                  {
                    goto LABEL_200;
                  }
                }

                v277 = v267;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
                  v265 = v364;
                  v267 = v277;
                }

                else
                {
                  v267 = sub_1C0578BE4(0, *(v277 + 2) + 1, 1, v277);
                  v265 = v364;
                }

                v279 = *(v267 + 2);
                v278 = *(v267 + 3);
                v78 = v279 + 1;
                if (v279 >= v278 >> 1)
                {
                  v280 = sub_1C0578BE4((v278 > 1), v279 + 1, 1, v267);
                  v265 = v364;
                  v267 = v280;
                }

                *(v267 + 2) = v78;
                *&v267[8 * v279 + 32] = v271;
              }
            }

            v268 = v354;
            v90 = v361;
            while (1)
            {
              v269 = v266 + 1;
              if (__OFADD__(v266, 1))
              {
                break;
              }

              if (v269 >= v75)
              {
                v75 = v267;

                v164 = v75;
                v162 = v370;
                v163 = v384;
                v369 = *(v75 + 2);
                if (!v369)
                {
                  goto LABEL_221;
                }

                goto LABEL_81;
              }

              v264 = v336[v269];
              ++v266;
              if (v264)
              {
                v266 = v269;
                goto LABEL_207;
              }
            }

LABEL_260:
            __break(1u);
LABEL_261:
            __break(1u);
LABEL_262:
            __break(1u);
LABEL_263:
            __break(1u);
LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
            goto LABEL_268;
          }
        }

        else
        {
          v75 = MEMORY[0x1E69E7CC0];
          v90 = v361;
          if (*(MEMORY[0x1E69E7CC0] + 16))
          {
            goto LABEL_186;
          }
        }

        v67 = 0;
        v257 = 0;
        v258 = 0;
        goto LABEL_187;
      }

      break;
    }

    v352 = v184;
    v196 = v348;
    sub_1C077CE38(v185, v348, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v197 = v196;
    v198 = v349;
    sub_1C077CD70(v197, v349, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
    v199 = *v198;
    v200 = *(*v198 + 16);
    v201 = v399;
    if (!v200)
    {
      v204 = MEMORY[0x1E69E7CC0];
LABEL_178:
      sub_1C077CDD8(v349, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      if (*(v204 + 2))
      {
        v67 = swift_allocObject();
        v259 = v355;
        v67[2] = v353;
        v67[3] = v259;
        v67[4] = v352;
        v67[5] = v204;
        sub_1C077CDD8(v348, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
        v257 = &type metadata for TerminalIntentNode;
        v258 = &protocol witness table for TerminalIntentNode;
      }

      else
      {
        sub_1C077CDD8(v348, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);

        v67 = 0;
        v257 = 0;
        v258 = 0;
      }

      v90 = v361;
      v162 = v370;
      goto LABEL_188;
    }

    v403 = v339[9];
    v202 = v339[7];
    v397 = v339[8];
    v203 = v199 + ((*(v338 + 80) + 32) & ~*(v338 + 80));
    v396 = *(v338 + 72);
    v204 = MEMORY[0x1E69E7CC0];
    v205 = v398;
    v402 = v202;
    while (2)
    {
      v408 = v204;
      v407 = v200;
      v406 = v203;
      sub_1C077CD70(v203, v175, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
      v206 = *v175;
      v207 = v391;
      sub_1C05149F8(&v202[v175], v391, &qword_1EBE17768, &unk_1C0971250);
      v401 = *v205;
      v208 = v175;
      v209 = (v401)(v207, 1, v201);
      v405 = v206;

      sub_1C05145B4(v207, &qword_1EBE17768, &unk_1C0971250);
      if (v209 == 1)
      {
        sub_1C0558714(v413);
        v210 = v393;
        v211 = v208;
        v212 = v403;
        goto LABEL_144;
      }

      v213 = v375;
      sub_1C05149F8(&v402[v208], v375, &qword_1EBE17768, &unk_1C0971250);
      v214 = v401;
      v215 = (v401)(v213, 1, v201);
      v216 = v386;
      if (v215 == 1)
      {
        *v386 = 0;
        *(v216 + 8) = 1;
        (*v360)(v216 + *(v201 + 5), 1, 1, v387);
        _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
        v217 = v214(v213, 1, v201);
        v218 = v378;
        if (v217 != 1)
        {
          sub_1C05145B4(v213, &qword_1EBE17768, &unk_1C0971250);
        }
      }

      else
      {
        sub_1C077CE38(v213, v386, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v218 = v378;
      }

      if (*(v216 + 8) == 1)
      {
        v219 = byte_1C0999E62[*v216];
      }

      else
      {
        v219 = 9;
      }

      sub_1C05149F8(v216 + *(v201 + 5), v218, &qword_1EBE17760, &unk_1C099BB10);
      if ((*v371)(v218, 1, v387) == 1)
      {
        sub_1C077CDD8(v216, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        sub_1C05145B4(v218, &qword_1EBE17760, &unk_1C099BB10);
        v211 = v404;
        goto LABEL_130;
      }

      v220 = v218;
      v221 = v376;
      sub_1C077CE38(v220, v376, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      sub_1C077CD70(v221, v377, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        v211 = v404;
        if (EnumCaseMultiPayload == 1)
        {
          v223 = v343;
          sub_1C077CE38(v377, v343, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          v224 = v344;
          sub_1C077CD70(v223, v344, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          sub_1C0778B9C(v224, v412);
          sub_1C077CDD8(v223, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
          sub_1C077CDD8(v376, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
          sub_1C077CDD8(v386, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
          memcpy(v413, v412, 0x301uLL);
          if (sub_1C077C378(v413) != 1)
          {
            memcpy(v409, v413, 0x301uLL);
            sub_1C077C390(v409);
            memcpy(v411, v409, 0x301uLL);
            nullsub_1();
            v225 = v411;
            goto LABEL_141;
          }

LABEL_130:
          v212 = v403;
          sub_1C0558714(v412);
LABEL_143:
          v210 = v393;
          memcpy(v413, v412, 0x309uLL);
LABEL_144:
          v231 = v392;
          sub_1C05149F8(&v211[v212], v392, &qword_1EBE17778, &unk_1C0971260);
          v232 = *v400;
          v233 = v211;
          v234 = (*v400)(v231, 1, v210);
          sub_1C05145B4(v231, &qword_1EBE17778, &unk_1C0971260);
          if (v234 == 1)
          {
            sub_1C077C284(v409);
            v235 = v233;
            v236 = v390;
            v75 = v395;
            v237 = v397;
          }

          else
          {
            v238 = v389;
            sub_1C05149F8(v233 + v403, v389, &qword_1EBE17778, &unk_1C0971260);
            if (v232(v238, 1, v210) == 1)
            {
              v239 = v232;
              v240 = v379;
              _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
              v241 = *(v210 + 20);
              if (qword_1EBE15458 != -1)
              {
                swift_once();
              }

              *(v240 + v241) = qword_1EBE15460;
              v242 = v239(v389, 1, v210);

              v75 = v395;
              v235 = v404;
              v237 = v397;
              if (v242 != 1)
              {
                sub_1C05145B4(v389, &qword_1EBE17778, &unk_1C0971260);
              }
            }

            else
            {
              v235 = v233;
              v243 = v238;
              v240 = v379;
              sub_1C077CE38(v243, v379, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
              v75 = v395;
              v237 = v397;
            }

            sub_1C0777DD8(v240, v412);
            sub_1C077CDD8(v240, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
            memcpy(v409, v412, 0x20AuLL);
            v236 = v390;
          }

          v244 = v394;
          sub_1C05149F8(v235 + v237, v394, &qword_1EBE17770, &unk_1C099BB00);
          v245 = *v236;
          if ((*v236)(v244, 1, v75) == 1)
          {
            sub_1C077CDD8(v235, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
            sub_1C05145B4(v244, &qword_1EBE17770, &unk_1C099BB00);
            v246 = 0;
            v247 = 0;
            v248 = 0;
            v201 = v399;
            v205 = v398;
            v204 = v408;
          }

          else
          {
            sub_1C05145B4(v244, &qword_1EBE17770, &unk_1C099BB00);
            v249 = v235 + v237;
            v250 = v380;
            sub_1C05149F8(v249, v380, &qword_1EBE17770, &unk_1C099BB00);
            if (v245(v250, 1, v75) == 1)
            {
              v251 = v75;
              v75 = v381;
              *v381 = 0;
              *(v75 + 1) = 0;
              *(v75 + 2) = 0xE000000000000000;
              _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
              sub_1C077CDD8(v235, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
              v252 = v245(v250, 1, v251);
              v204 = v408;
              if (v252 != 1)
              {
                sub_1C05145B4(v250, &qword_1EBE17770, &unk_1C099BB00);
              }
            }

            else
            {
              sub_1C077CDD8(v235, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
              v75 = v381;
              sub_1C077CE38(v250, v381, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
              v204 = v408;
            }

            v246 = *v75;
            v247 = *(v75 + 1);
            v248 = *(v75 + 2);

            sub_1C077CDD8(v75, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
            v253 = HIBYTE(v248) & 0xF;
            if ((v248 & 0x2000000000000000) == 0)
            {
              v253 = v247 & 0xFFFFFFFFFFFFLL;
            }

            if (!v253)
            {

              v246 = 0;
              v247 = 0;
              v248 = 0;
            }

            v201 = v399;
            v205 = v398;
          }

          memcpy(v412, v413, 0x309uLL);
          if (sub_1C0573614(v412) == 1 && (memcpy(v411, v409, 0x20AuLL), sub_1C0573598(v411) == 1) && !v248)
          {
          }

          else
          {
            memcpy(v410, v409, 0x20AuLL);
            memcpy(v411, v413, 0x309uLL);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v204 = sub_1C057895C(0, *(v204 + 2) + 1, 1, v204);
            }

            v255 = *(v204 + 2);
            v254 = *(v204 + 3);
            if (v255 >= v254 >> 1)
            {
              v204 = sub_1C057895C((v254 > 1), v255 + 1, 1, v204);
            }

            *(v204 + 2) = v255 + 1;
            v75 = &v204[1344 * v255];
            memcpy(v75 + 32, v410, 0x210uLL);
            *(v75 + 70) = v405;
            memcpy(v75 + 568, v411, 0x309uLL);
            v256 = *(v415 + 3);
            *(v75 + 1345) = v415[0];
            *(v75 + 337) = v256;
            *(v75 + 169) = v246;
            *(v75 + 170) = v247;
            *(v75 + 171) = v248;
          }

          v175 = v404;
          v203 = v406 + v396;
          v200 = v407 - 1;
          v202 = v402;
          if (v407 == 1)
          {
            goto LABEL_178;
          }

          continue;
        }

        v229 = v341;
        sub_1C077CE38(v377, v341, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
        v230 = v342;
        sub_1C077CD70(v229, v342, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
        sub_1C0778564(v230, v413);
        sub_1C077CDD8(v229, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
        sub_1C077CDD8(v376, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
        sub_1C077CDD8(v386, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v412[0] = v413[0];
        v412[1] = v413[1];
        *&v412[2] = *&v413[2];
        sub_1C077C3DC(v412);
        memcpy(v413, v412, 0x301uLL);
        nullsub_1();
        v225 = v413;
LABEL_141:
        memcpy(v410, v225, sizeof(v410));
        v212 = v403;
      }

      else
      {
        sub_1C077CDD8(v376, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
        sub_1C077CDD8(v386, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
        v227 = *v377;
        v226 = v377[1];
        v228 = HIBYTE(v226) & 0xF;
        if ((v226 & 0x2000000000000000) == 0)
        {
          v228 = v227 & 0xFFFFFFFFFFFFLL;
        }

        v211 = v404;
        if (!v228)
        {

          v227 = 0;
          v226 = 0;
        }

        v212 = v403;
        *&v412[0] = v227;
        *(&v412[0] + 1) = v226;
        sub_1C077C330(v412);
        memcpy(v413, v412, 0x301uLL);
        nullsub_1();
        memcpy(v410, v413, sizeof(v410));
      }

      break;
    }

    memcpy(v412 + 7, v410, 0x301uLL);
    memcpy(v411, v412, 0x308uLL);
    LOBYTE(v413[0]) = v219;
    memcpy(v413 + 1, v411, 0x308uLL);
    nullsub_1();
    memcpy(v412, v413, 0x309uLL);
    goto LABEL_143;
  }

LABEL_221:

  if (v382[2])
  {
    sub_1C05149F8((v382 + 4), v412, &qword_1EBE17240, &qword_1C0970A20);
    if (*(&v412[1] + 1))
    {
      sub_1C0531D80(v412, v413);
      v281 = v337;
      swift_beginAccess();
      LODWORD(v408) = *(v281 + 40);
      swift_beginAccess();
      LODWORD(v407) = *(v281 + 41);
      swift_beginAccess();
      LODWORD(v406) = *(v281 + 42);
      swift_beginAccess();
      LODWORD(v282) = *(v281 + 44);
      LODWORD(v402) = v282 - 0x7FFFFFFF;
      if ((v282 - 0x7FFFFFFF) >= 0x80000002)
      {
        v282 = v282;
      }

      else
      {
        v282 = 0;
      }

      v405 = v282;
      swift_beginAccess();
      LODWORD(v404) = *(v281 + 48);
      swift_beginAccess();
      LODWORD(v283) = *(v281 + 52);
      LODWORD(v401) = v283 - 0x7FFFFFFF;
      if ((v283 - 0x7FFFFFFF) >= 0x80000002)
      {
        v283 = v283;
      }

      else
      {
        v283 = 0;
      }

      v403 = v283;
      v284 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__nlState;
      swift_beginAccess();
      v285 = v329;
      sub_1C05149F8(v281 + v284, v329, &qword_1EBE17780, &qword_1C0999E30);
      v286 = v331;
      v399 = *(v330 + 48);
      v287 = (v399)(v285, 1, v331);
      sub_1C05145B4(v285, &qword_1EBE17780, &qword_1C0999E30);
      LODWORD(v400) = v287;
      if (v287 != 1)
      {
        v288 = v326;
        sub_1C05149F8(v281 + v284, v326, &qword_1EBE17780, &qword_1C0999E30);
        v289 = v399;
        if ((v399)(v288, 1, v286) == 1)
        {
          v290 = v286;
          v291 = v325;
          *v325 = 0;
          v291[1] = 0xE000000000000000;
          v292 = v288;
          v293 = MEMORY[0x1E69E7CC0];
          v291[2] = sub_1C058BA64(MEMORY[0x1E69E7CC0]);
          v291[3] = sub_1C058BC4C(v293);
          _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
          sub_1C077CDD8(v291, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
          v294 = v289(v292, 1, v290);
          v281 = v337;
          if (v294 != 1)
          {
            sub_1C05145B4(v326, &qword_1EBE17780, &qword_1C0999E30);
          }
        }

        else
        {
          v299 = v325;
          sub_1C077CE38(v288, v325, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
          sub_1C077CDD8(v299, type metadata accessor for Com_Apple_Siri_Product_Proto_NLState);
          v281 = v337;
        }
      }

      v300 = (v281 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__mitigatorClassification);
      swift_beginAccess();
      if (v300[8] == 1)
      {
        v301 = 0x2010003u >> (8 * *v300);
      }

      else
      {
        v301 = 3;
      }

      v302 = (v337 + OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__strippedVoiceTrigger);
      swift_beginAccess();
      v304 = *v302;
      v303 = v302[1];
      v305 = HIBYTE(v303) & 0xF;
      if ((v303 & 0x2000000000000000) == 0)
      {
        v305 = *v302 & 0xFFFFFFFFFFFFLL;
      }

      if (v305)
      {
        v397 = v302[1];
      }

      else
      {
        v304 = 0;
        v397 = 0;
      }

      v306 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__invalidVoiceTrigger;
      v307 = v337;
      swift_beginAccess();
      LODWORD(v399) = *(v307 + v306);
      v308 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__suggested;
      swift_beginAccess();
      LODWORD(v398) = *(v307 + v308);
      v309 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ProtoIntentP33_942AB7175EC71BF9D0D08DC04D18C2E013_StorageClass__metaDomainAction;
      swift_beginAccess();
      v310 = *(v307 + v309);
      v311 = *(v310 + 16);
      if (v311)
      {
        v395 = v304;
        LODWORD(v396) = v301;

        v312 = (v310 + 40);
        v313 = MEMORY[0x1E69E7CC0];
        do
        {
          if (*v312 == 1)
          {
            v314 = *(v312 - 1);
            if (v314)
            {
              v315 = v314 != 1;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v313 = sub_1C0578A88(0, *(v313 + 2) + 1, 1, v313);
              }

              v317 = *(v313 + 2);
              v316 = *(v313 + 3);
              if (v317 >= v316 >> 1)
              {
                v313 = sub_1C0578A88((v316 > 1), v317 + 1, 1, v313);
              }

              *(v313 + 2) = v317 + 1;
              v313[v317 + 32] = v315;
            }
          }

          v312 += 16;
          --v311;
        }

        while (v311);

        LOBYTE(v301) = v396;
        v304 = v395;
      }

      else
      {
        v313 = MEMORY[0x1E69E7CC0];
      }

      v318 = v400 == 1;
      v319 = v401 < 0x80000002;
      v320 = v402 < 0x80000002;
      sub_1C077CDD8(v335, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
      v321 = v332;
      sub_1C0531D80(v413, v332);

      v322 = v327;
      *(v321 + 40) = v328;
      *(v321 + 48) = v83 == 0.0;
      v323 = v334;
      *(v321 + 56) = v322;
      *(v321 + 64) = v323;
      *(v321 + 72) = v408;
      *(v321 + 73) = v407;
      *(v321 + 74) = v406;
      *(v321 + 80) = v405;
      *(v321 + 88) = v320;
      *(v321 + 89) = v404;
      *(v321 + 96) = v403;
      *(v321 + 104) = v319;
      *(v321 + 105) = v318;
      *(v321 + 106) = v301;
      v324 = v397;
      *(v321 + 112) = v304;
      *(v321 + 120) = v324;
      *(v321 + 128) = v399;
      *(v321 + 129) = v398;
      *(v321 + 136) = v313;
    }

    else
    {

      v295 = sub_1C05145B4(v412, &qword_1EBE17240, &qword_1C0970A20);
      sub_1C077C1C0(v295, v296, v297);
      swift_allocError();
      *v298 = 2;
      swift_willThrow();
      sub_1C077CDD8(v335, type metadata accessor for Com_Apple_Siri_Product_Proto_ProtoIntent);
    }
  }

  else
  {
    __break(1u);
LABEL_275:
    __break(1u);
LABEL_276:
    result = sub_1C095DF6C();
    __break(1u);
  }

  return result;
}

unint64_t sub_1C0776E88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F7D8;
  if (!qword_1EBE1F7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F7D8);
  }

  return result;
}

void sub_1C0776EEC(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v72 = v2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue(0);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v64 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17770, &unk_1C099BB00);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v59 - v8;
  v9 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v66 = *(v9 - 8);
  v67 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v62 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v59 - v14;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v60 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17768, &unk_1C0971250);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v59 - v22;
  v24 = *v1;
  v73 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v25 = v73[7];
  sub_1C05149F8(v1 + v25, v23, &qword_1EBE17768, &unk_1C0971250);
  v26 = *(v16 + 48);
  v27 = v26(v23, 1, v15);
  v71 = v24;

  sub_1C05145B4(v23, &qword_1EBE17768, &unk_1C0971250);
  if (v27 == 1)
  {
    sub_1C0558714(v78);
    v28 = v1;
    v29 = v67;
  }

  else
  {
    sub_1C05149F8(v1 + v25, v21, &qword_1EBE17768, &unk_1C0971250);
    v28 = v1;
    if (v26(v21, 1, v15) == 1)
    {
      v30 = v60;
      *v60 = 0;
      *(v30 + 8) = 1;
      v31 = *(v15 + 20);
      v32 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
      (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v33 = v26(v21, 1, v15);
      v29 = v67;
      if (v33 != 1)
      {
        sub_1C05145B4(v21, &qword_1EBE17768, &unk_1C0971250);
      }
    }

    else
    {
      v30 = v60;
      sub_1C077CE38(v21, v60, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
      v29 = v67;
    }

    sub_1C077780C(v30);
  }

  v34 = v73[9];
  v35 = v28 + v34;
  v36 = v28;
  v37 = v65;
  sub_1C05149F8(v35, v65, &qword_1EBE17778, &unk_1C0971260);
  v38 = *(v66 + 48);
  v39 = v38(v37, 1, v29);
  sub_1C05145B4(v37, &qword_1EBE17778, &unk_1C0971260);
  if (v39 == 1)
  {
    sub_1C077C284(v77);
    v40 = v36;
    v42 = v69;
    v41 = v70;
  }

  else
  {
    v43 = v36 + v34;
    v44 = v61;
    sub_1C05149F8(v43, v61, &qword_1EBE17778, &unk_1C0971260);
    v40 = v36;
    if (v38(v44, 1, v29) == 1)
    {
      v45 = v62;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v46 = *(v29 + 20);
      v42 = v69;
      if (qword_1EBE15458 != -1)
      {
        swift_once();
      }

      *(v45 + v46) = qword_1EBE15460;
      v47 = v38(v44, 1, v29);

      if (v47 != 1)
      {
        sub_1C05145B4(v44, &qword_1EBE17778, &unk_1C0971260);
      }
    }

    else
    {
      v45 = v62;
      sub_1C077CE38(v44, v62, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
      v42 = v69;
    }

    sub_1C0777DD8(v45, v74);
    sub_1C077CDD8(v45, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    memcpy(v77, v74, 0x20AuLL);
    v41 = v70;
  }

  v48 = v73[8];
  v49 = v68;
  sub_1C05149F8(v40 + v48, v68, &qword_1EBE17770, &unk_1C099BB00);
  v50 = *(v42 + 48);
  v51 = v50(v49, 1, v41);
  sub_1C05145B4(v49, &qword_1EBE17770, &unk_1C099BB00);
  if (v51 == 1)
  {
    sub_1C077CDD8(v40, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
LABEL_27:
    v54 = 0;
    v56 = 0;
    v55 = 0;
    goto LABEL_28;
  }

  v52 = v63;
  sub_1C05149F8(v40 + v48, v63, &qword_1EBE17770, &unk_1C099BB00);
  if (v50(v52, 1, v41) == 1)
  {
    v53 = v64;
    *v64 = 0;
    *(v53 + 1) = 0;
    *(v53 + 2) = 0xE000000000000000;
    _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
    sub_1C077CDD8(v40, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
    if (v50(v52, 1, v41) != 1)
    {
      sub_1C05145B4(v52, &qword_1EBE17770, &unk_1C099BB00);
    }
  }

  else
  {
    sub_1C077CDD8(v40, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
    v53 = v64;
    sub_1C077CE38(v52, v64, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  }

  v54 = *v53;
  v56 = *(v53 + 1);
  v55 = *(v53 + 2);

  sub_1C077CDD8(v53, type metadata accessor for Com_Apple_Siri_Product_Proto_OriginalElementValue);
  v57 = HIBYTE(v55) & 0xF;
  if ((v55 & 0x2000000000000000) == 0)
  {
    v57 = v56 & 0xFFFFFFFFFFFFLL;
  }

  if (!v57)
  {

    goto LABEL_27;
  }

LABEL_28:
  memcpy(v76, v78, 0x309uLL);
  if (sub_1C0573614(v76) == 1 && (memcpy(v75, v77, 0x20AuLL), sub_1C0573598(v75) == 1) && !v55)
  {

    sub_1C077CEA0(v74);
    memcpy(v72, v74, 0x540uLL);
  }

  else
  {
    memcpy(v74, v77, 0x20AuLL);
    v58 = v72;
    memcpy(v72, v74, 0x210uLL);
    v58[66] = v71;
    memcpy(v58 + 67, v78, 0x309uLL);
    v58[165] = v54;
    v58[166] = v56;
    v58[167] = v55;
    nullsub_1();
  }
}

void sub_1C077780C(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v37 = v2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v34 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - v6;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v33 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17760, &unk_1C099BB10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v33 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = (&v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v22 = *(v1 + 8);
  v43[0] = *v1;
  LOBYTE(v43[1]) = v22;
  sub_1C0778534(v43, v42);
  v36 = LOBYTE(v42[0]);
  v23 = type metadata accessor for Com_Apple_Siri_Product_Proto_Origin(0);
  sub_1C05149F8(v1 + *(v23 + 20), v14, &qword_1EBE17760, &unk_1C099BB10);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C05145B4(v14, &qword_1EBE17760, &unk_1C099BB10);
LABEL_3:
    sub_1C0558714(v43);
    memcpy(v37, v43, 0x309uLL);
    return;
  }

  sub_1C077CE38(v14, v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  sub_1C077CD70(v21, v19, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C077CDD8(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v29 = *v19;
    v28 = v19[1];
    v30 = HIBYTE(v28) & 0xF;
    if ((v28 & 0x2000000000000000) == 0)
    {
      v30 = *v19 & 0xFFFFFFFFFFFFLL;
    }

    if (!v30)
    {

      v29 = 0;
      v28 = 0;
    }

    *&v41[0] = v29;
    *(&v41[0] + 1) = v28;
    sub_1C077C330(v41);
    goto LABEL_14;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1C077CE38(v19, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    v31 = v33;
    sub_1C077CD70(v11, v33, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    sub_1C0778564(v31, v42);
    sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
    sub_1C077CDD8(v11, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    sub_1C077CDD8(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
    v41[0] = v42[0];
    v41[1] = v42[1];
    *&v41[2] = *&v42[2];
    sub_1C077C3DC(v41);
LABEL_14:
    memcpy(v42, v41, 0x301uLL);
    nullsub_1();
    v27 = v42;
    goto LABEL_15;
  }

  v25 = v35;
  sub_1C077CE38(v19, v35, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  v26 = v34;
  sub_1C077CD70(v25, v34, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C0778B9C(v26, v41);
  sub_1C077CDD8(v1, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin);
  sub_1C077CDD8(v25, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  sub_1C077CDD8(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_Origin.OneOf_OriginDetail);
  memcpy(v42, v41, 0x301uLL);
  if (sub_1C077C378(v42) == 1)
  {
    goto LABEL_3;
  }

  memcpy(v38, v42, 0x301uLL);
  sub_1C077C390(v38);
  memcpy(v39, v38, 0x301uLL);
  nullsub_1();
  v27 = v39;
LABEL_15:
  memcpy(v43, v27, 0x301uLL);
  memcpy(&v40[7], v43, 0x301uLL);
  v32 = v37;
  *v37 = v36;
  memcpy(v32 + 1, v40, 0x308uLL);
  nullsub_1();
}

void *sub_1C0777DD8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v50 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v49 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - v6;
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v46 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = &v43 - v10;
  v11 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v45 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F7F8, &unk_1C0999E50);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value(0);
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = (&v43 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v43 - v23;
  v25 = *(a1 + *(type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0) + 20));
  v26 = OBJC_IVAR____TtCV12SiriOntology34Com_Apple_Siri_Product_Proto_ValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  sub_1C05149F8(v25 + v26, v17, &qword_1EBE1F7F8, &unk_1C0999E50);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1C05145B4(v17, &qword_1EBE1F7F8, &unk_1C0999E50);
    sub_1C077C284(v54);
    v27 = v54;
    v28 = v50;
    return memcpy(v28, v27, 0x20AuLL);
  }

  v29 = v50;
  sub_1C077CE38(v17, v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  sub_1C077CD70(v24, v22, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    v31 = v29;
    if (EnumCaseMultiPayload <= 5)
    {
      if (EnumCaseMultiPayload != 4)
      {
        v41 = v44;
        sub_1C077CE38(v22, v44, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        v42 = v45;
        sub_1C077CD70(v41, v45, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        sub_1C0779C78(v42, v53);
        sub_1C077CDD8(v41, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
        sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
        memcpy(v54, v53, 0x20AuLL);
        if (sub_1C077CAEC(v54) == 1)
        {
          sub_1C077C284(v52);
        }

        else
        {
          memcpy(v51, v54, 0x20AuLL);
          sub_1C077CB10(v51);
          memcpy(v52, v51, 0x20AuLL);
          nullsub_1();
        }

        v27 = v52;
        goto LABEL_24;
      }

      sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      v33 = v22[1];
      *&v53[0] = *v22;
      *(&v53[0] + 1) = v33;
      sub_1C077CB74(v53);
      goto LABEL_22;
    }

    if (EnumCaseMultiPayload == 6)
    {
      v34 = v47;
      sub_1C077CE38(v22, v47, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      v35 = v46;
      sub_1C077CD70(v34, v46, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      sub_1C077C4A0(v35);
      v37 = v36;
      sub_1C077CDD8(v34, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
      sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      if (v37)
      {
        *&v53[0] = v37;
        sub_1C077CA8C(v53);
        goto LABEL_22;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
        v32 = v22[1];
        *&v53[0] = *v22;
        *(&v53[0] + 1) = v32;
        sub_1C077C440(v53);
LABEL_22:
        memcpy(v54, v53, 0x20AuLL);
        nullsub_1();
LABEL_23:
        v27 = v54;
LABEL_24:
        v28 = v31;
        return memcpy(v28, v27, 0x20AuLL);
      }

      v38 = v48;
      sub_1C077CE38(v22, v48, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      v39 = v49;
      sub_1C077CD70(v38, v49, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C077B134(v39, v52);
      sub_1C077CDD8(v38, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
      sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      if (*(&v52[1] + 1))
      {
        v53[0] = v52[0];
        v53[1] = v52[1];
        sub_1C05FC4D8(v53);
        goto LABEL_22;
      }
    }

    sub_1C077C284(v54);
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      *&v53[0] = *v22;
      sub_1C077CC34(v53);
    }

    else
    {
      sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
      *&v53[0] = *v22;
      sub_1C077CBD4(v53);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    *&v53[0] = *v22;
    sub_1C077CC94(v53);
  }

  else
  {
    sub_1C077CDD8(v24, type metadata accessor for Com_Apple_Siri_Product_Proto_Value.OneOf_Value);
    LODWORD(v53[0]) = *v22;
    sub_1C077CCF0(v53);
  }

  memcpy(v54, v53, 0x20AuLL);
  nullsub_1();
  v27 = v54;
  v28 = v29;
  return memcpy(v28, v27, 0x20AuLL);
}

uint64_t sub_1C0778534@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999E62[*result];
  }

  else
  {
    *a2 = 9;
  }

  return result;
}

uint64_t sub_1C0778564@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v42 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue(0);
  v44 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement(0);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v50 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v49 = (&v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17758, &unk_1C0971240);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  v17 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin(0) + 24);
  sub_1C05149F8(a1 + v17, v16, &qword_1EBE17758, &unk_1C0971240);
  v18 = *(v9 + 48);
  v19 = v18(v16, 1, v8);
  result = sub_1C05145B4(v16, &qword_1EBE17758, &unk_1C0971240);
  if (v19 == 1)
  {
    v39 = 0;
    v40 = 0;
    v43 = xmmword_1C0999870;
    v21 = a1;
  }

  else
  {
    sub_1C05149F8(a1 + v17, v14, &qword_1EBE17758, &unk_1C0971240);
    v21 = a1;
    if (v18(v14, 1, v8) == 1)
    {
      v22 = v49;
      *v49 = 0;
      v22[1] = 0xE000000000000000;
      v22[2] = 0;
      v22[3] = 0xE000000000000000;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v18(v14, 1, v8) != 1)
      {
        sub_1C05145B4(v14, &qword_1EBE17758, &unk_1C0971240);
      }
    }

    else
    {
      v22 = v49;
      sub_1C077CE38(v14, v49, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
    }

    result = sub_1C0779B98(v22, v52);
    v43 = *&v52[1];
    v39 = v52[3];
    v40 = v52[0];
  }

  v41 = v21;
  v23 = *v21;
  v24 = MEMORY[0x1E69E7CC0];
  v47 = *(*v21 + 16);
  if (v47)
  {
    v25 = 0;
    v45 = v23 + ((*(v48 + 80) + 32) & ~*(v48 + 80));
    v46 = v23;
    v26 = MEMORY[0x1E69E7CC0];
    while (v25 < *(v23 + 16))
    {
      v49 = v26;
      v27 = v50;
      sub_1C077CD70(v45 + *(v48 + 72) * v25, v50, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      v28 = *(*v27 + 16);
      if (v28)
      {
        v29 = *v27 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v30 = *(v44 + 72);
        do
        {
          sub_1C077CD70(v29, v5, type metadata accessor for Com_Apple_Siri_Product_Proto_ElementValue);
          sub_1C0776EEC(v5);
          memcpy(v52, v51, 0x540uLL);
          if (sub_1C077C428(v52) != 1)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_1C057895C(0, *(v24 + 2) + 1, 1, v24);
            }

            v32 = *(v24 + 2);
            v31 = *(v24 + 3);
            if (v32 >= v31 >> 1)
            {
              v24 = sub_1C057895C((v31 > 1), v32 + 1, 1, v24);
            }

            *(v24 + 2) = v32 + 1;
            memcpy(&v24[1344 * v32 + 32], v52, 0x540uLL);
          }

          v29 += v30;
          --v28;
        }

        while (v28);
      }

      sub_1C077CDD8(v50, type metadata accessor for Com_Apple_Siri_Product_Proto_TerminalElement);
      if (*(v24 + 2))
      {
        v26 = v49;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1C0578940(0, v26[2] + 1, 1, v26);
          v26 = result;
        }

        v34 = v26[2];
        v33 = v26[3];
        if (v34 >= v33 >> 1)
        {
          result = sub_1C0578940((v33 > 1), v34 + 1, 1, v26);
          v26 = result;
        }

        v26[2] = v34 + 1;
        v35 = &v26[4 * v34];
        v35[4] = 0;
        v35[5] = 0xE000000000000000;
        v35[6] = MEMORY[0x1E69E7CC0];
        v35[7] = v24;
        v23 = v46;
      }

      else
      {

        v23 = v46;
        v26 = v49;
      }

      ++v25;
      v24 = MEMORY[0x1E69E7CC0];
      if (v25 == v47)
      {
        goto LABEL_29;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = MEMORY[0x1E69E7CC0];
LABEL_29:
    result = sub_1C077CDD8(v41, type metadata accessor for Com_Apple_Siri_Product_Proto_DerivedOrigin);
    if (v43 == 1 && !v26[2])
    {

      v38 = v42;
      v42[4] = 0;
      *v38 = 0u;
      v38[1] = 0u;
    }

    else
    {
      v36 = v42;
      v37 = v39;
      *v42 = v40;
      *(v36 + 1) = v43;
      v36[3] = v37;
      v36[4] = v26;
    }
  }

  return result;
}

void sub_1C0778B9C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v116 = a2;
  v3 = type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan(0);
  v130 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v125 = &v103 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v117 = &v103 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE179C8, &qword_1C0972E60);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v103 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v129 = &v103 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v115 = &v103 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v126 = &v103 - v14;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v121 = &v103 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v103 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v103 - v22;
  v127 = v3;
  v128 = a1;
  v24 = *(a1 + *(v3 + 20));
  swift_beginAccess();
  v25 = *(v24 + 24);
  v123 = *(v24 + 16);
  v26 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__serializedValue;
  swift_beginAccess();
  sub_1C05149F8(v24 + v26, v23, &qword_1EBE17778, &unk_1C0971260);
  v27 = *(v16 + 48);
  v28 = v27(v23, 1, v15);
  v122 = v25;

  sub_1C05145B4(v23, &qword_1EBE17778, &unk_1C0971260);
  if (v28 == 1)
  {
    sub_1C077C284(v141);
  }

  else
  {
    sub_1C05149F8(v24 + v26, v21, &qword_1EBE17778, &unk_1C0971260);
    if (v27(v21, 1, v15) == 1)
    {
      v29 = v121;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v30 = *(v15 + 20);
      if (qword_1EBE15458 != -1)
      {
        swift_once();
      }

      *(v29 + v30) = qword_1EBE15460;
      v31 = v27(v21, 1, v15);

      if (v31 != 1)
      {
        sub_1C05145B4(v21, &qword_1EBE17778, &unk_1C0971260);
      }
    }

    else
    {
      v29 = v121;
      sub_1C077CE38(v21, v121, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    }

    sub_1C0777DD8(v29, v141);
    sub_1C077CDD8(v29, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
  }

  v32 = (v24 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__input);
  swift_beginAccess();
  v33 = v32[1];
  v121 = *v32;
  v34 = (v24 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchedTerm);
  swift_beginAccess();
  v35 = v34[1];
  v119 = *v34;
  v36 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefix;
  swift_beginAccess();
  v37 = v126;
  sub_1C05149F8(v24 + v36, v126, &qword_1EBE179C8, &qword_1C0972E60);
  v38 = *(v130 + 48);
  v39 = v127;
  v40 = v38(v37, 1, v127);
  v120 = v33;

  v118 = v35;

  sub_1C05145B4(v37, &qword_1EBE179C8, &qword_1C0972E60);
  v41 = 0;
  if (v40 != 1)
  {
    v42 = v115;
    sub_1C05149F8(v24 + v36, v115, &qword_1EBE179C8, &qword_1C0972E60);
    v43 = v38;
    if (v38(v42, 1, v39) == 1)
    {
      v44 = v117;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v45 = *(v39 + 20);
      if (qword_1EBE0FD48 != -1)
      {
        swift_once();
      }

      *(v44 + v45) = qword_1EBE0FD50;
      v46 = v43(v42, 1, v39);

      if (v46 != 1)
      {
        sub_1C05145B4(v42, &qword_1EBE179C8, &qword_1C0972E60);
      }
    }

    else
    {
      v44 = v117;
      sub_1C077CE38(v42, v117, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    v38 = v43;
    sub_1C0778B9C(v44, v131);
    if (sub_1C077C378(v131) == 1)
    {
      v41 = 0;
    }

    else
    {
      type metadata accessor for AnyMatchingSpan();
      v41 = swift_allocObject();
      memcpy((v41 + 16), v131, 0x301uLL);
    }
  }

  v117 = v41;
  v47 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__suffix;
  swift_beginAccess();
  v48 = v129;
  sub_1C05149F8(v24 + v47, v129, &qword_1EBE179C8, &qword_1C0972E60);
  v49 = v38(v48, 1, v39);
  sub_1C05145B4(v48, &qword_1EBE179C8, &qword_1C0972E60);
  v130 = 0;
  if (v49 != 1)
  {
    v50 = v124;
    sub_1C05149F8(v24 + v47, v124, &qword_1EBE179C8, &qword_1C0972E60);
    if (v38(v50, 1, v39) == 1)
    {
      v51 = v38;
      v52 = v125;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v53 = *(v39 + 20);
      if (qword_1EBE0FD48 != -1)
      {
        swift_once();
      }

      *(v52 + v53) = qword_1EBE0FD50;
      v54 = v51(v50, 1, v39);

      if (v54 != 1)
      {
        sub_1C05145B4(v50, &qword_1EBE179C8, &qword_1C0972E60);
      }
    }

    else
    {
      v52 = v125;
      sub_1C077CE38(v50, v125, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
    }

    sub_1C0778B9C(v52, v131);
    if (sub_1C077C378(v131) == 1)
    {
      v130 = 0;
    }

    else
    {
      type metadata accessor for AnyMatchingSpan();
      v55 = swift_allocObject();
      memcpy((v55 + 16), v131, 0x301uLL);
      v130 = v55;
    }
  }

  v56 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__start;
  swift_beginAccess();
  v57 = *(v24 + v56);
  v124 = v57 & ~(v57 >> 31);
  v58 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__end;
  swift_beginAccess();
  v59 = *(v24 + v58);
  v129 = v59 & ~(v59 >> 31);
  v60 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__startWithoutPrefix;
  swift_beginAccess();
  v61 = *(v24 + v60);
  v125 = v61 & ~(v61 >> 31);
  v62 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__endWithoutSuffix;
  swift_beginAccess();
  if ((*(v24 + v62) & 0x80000000) != 0)
  {
    v126 = 0;
LABEL_36:
    v139 = 0;
    v140 = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD00000000000001ALL, 0x80000001C0A030C0);
    sub_1C095DCBC();
    sub_1C095D1EC();

    goto LABEL_37;
  }

  v126 = *(v24 + v62);
  if (v57 < 0 || v59 < 0 || v61 < 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (*(v24 + v58) < *(v24 + v56) || *(v24 + v62) < *(v24 + v60))
  {
    v139 = 0;
    v140 = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD000000000000031, 0x80000001C0A03080);
    sub_1C095DCBC();
    sub_1C095D1EC();
  }

  v63 = v130;
  v64 = v117;
  v65 = v125;
  if (v57 > v129 || v126 < v125)
  {
    v139 = 0;
    v140 = 0xE000000000000000;
    sub_1C095DC1C();
    MEMORY[0x1C68DD690](0xD000000000000028, 0x80000001C0A03010);
    v138[0] = v124;
    v66 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v66);

    MEMORY[0x1C68DD690](0x646E49646E65202CLL, 0xEC000000203A7865);
    v138[0] = v129;
    v67 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v67);

    MEMORY[0x1C68DD690](0xD00000000000001BLL, 0x80000001C0A03040);
    v138[0] = v65;
    v68 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v68);

    MEMORY[0x1C68DD690](0xD00000000000001DLL, 0x80000001C0A03060);
    v138[0] = v126;
    v69 = sub_1C095DF0C();
    MEMORY[0x1C68DD690](v69);

    sub_1C095D1EC();
  }

  v70 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__confidence;
  swift_beginAccess();
  v110 = *(v24 + v70);
  v71 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__prefixSuffixConfidence;
  swift_beginAccess();
  v127 = *(v24 + v71);
  v72 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__explicit;
  swift_beginAccess();
  LODWORD(v115) = *(v24 + v72);
  v73 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isSuffixVariableMatch;
  swift_beginAccess();
  v114 = *(v24 + v73);
  v74 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPrefixVariableMatch;
  swift_beginAccess();
  v113 = *(v24 + v74);
  v75 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__isPayloadVariableMatch;
  swift_beginAccess();
  v112 = *(v24 + v75);
  v76 = (v24 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__locale);
  swift_beginAccess();
  v77 = v76[1];
  v111 = *v76;
  v78 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__numWords;
  swift_beginAccess();
  v109 = *(v24 + v78);
  v79 = (v24 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matchType);
  swift_beginAccess();
  v80 = *(v79 + 8);
  v136 = *v79;
  v137 = v80;
  sub_1C0779C48(&v136, v135);
  v108 = v135[0];
  v81 = (v24 + OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__appID);
  swift_beginAccess();
  v82 = *v81;
  v83 = v81[1];
  v107 = v82;
  v103 = v83;
  v84 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__matcherNames;
  swift_beginAccess();
  v85 = *(v24 + v84);
  v86 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__tags;
  swift_beginAccess();
  v87 = *(v24 + v86);
  v88 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationConfidences;
  swift_beginAccess();
  v130 = v63;
  v89 = *(v24 + v88);
  v90 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__altInterpretationPhoneSequences;
  swift_beginAccess();
  v91 = *(v24 + v90);
  v92 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__metadata;
  swift_beginAccess();
  v106 = *(v24 + v92);
  v93 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesStartTime;
  swift_beginAccess();
  v105 = *(v24 + v93);
  v94 = v64;
  v95 = OBJC_IVAR____TtCV12SiriOntology41Com_Apple_Siri_Product_Proto_MatchingSpanP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__preItnphrasesEndTime;
  swift_beginAccess();
  v104 = *(v24 + v95);

  v96 = v89;

  sub_1C077CDD8(v128, type metadata accessor for Com_Apple_Siri_Product_Proto_MatchingSpan);
  v134 = 0;
  v133 = 0;
  v132 = 0;
  v97 = v122;
  v98 = v116;
  *v116 = v123;
  v98[1] = v97;
  memcpy(v98 + 2, v141, 0x20AuLL);
  v99 = v120;
  v98[68] = v121;
  v98[69] = v99;
  v100 = v118;
  v98[70] = v119;
  v98[71] = v100;
  v98[72] = v94;
  v98[73] = v130;
  v98[74] = v124;
  v98[75] = v129;
  v101 = v126;
  v98[76] = v125;
  v98[77] = v101;
  v98[78] = v110;
  v98[79] = v127;
  LOBYTE(v101) = v114;
  *(v98 + 640) = v115;
  *(v98 + 641) = v101;
  LOBYTE(v101) = v112;
  *(v98 + 642) = v113;
  *(v98 + 643) = v101;
  v98[81] = v111;
  v98[82] = v77;
  v98[83] = v109;
  *(v98 + 672) = v108;
  v98[85] = v107;
  v98[86] = v103;
  v98[87] = v85;
  v98[88] = v87;
  v98[89] = v96;
  v98[90] = v91;
  v102 = v105;
  v98[91] = v106;
  v98[93] = v102;
  *(v98 + 752) = 0;
  v98[95] = v104;
  *(v98 + 768) = 0;
  *(v98 + 736) = 0;
  nullsub_1();
}

uint64_t sub_1C0779B98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = HIBYTE(v4) & 0xF;
  if ((v4 & 0x2000000000000000) == 0)
  {
    v6 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  v8 = a1[2];
  v7 = a1[3];
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = v8 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_AdjustmentReason);
  *a2 = v5;
  a2[1] = v4;
  a2[2] = v8;
  a2[3] = v7;
  return result;
}

uint64_t sub_1C0779C48@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999D40[*result];
  }

  else
  {
    *a2 = 15;
  }

  return result;
}

void *sub_1C0779C78@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v172 = a2;
  *&v174 = type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0);
  *&v173 = *(v174 - 8);
  v3 = MEMORY[0x1EEE9AC00](v174);
  v156 = (&v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v157 = (&v146 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C70, &unk_1C099BB30);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v155 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  *&v170 = &v146 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v154 = &v146 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v169 = &v146 - v13;
  v14 = type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence(0);
  v167 = *(v14 - 8);
  v168 = v14;
  MEMORY[0x1EEE9AC00](v14);
  *&v158 = &v146 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C68, &unk_1C0973580);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v153 = &v146 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  *&v166 = &v146 - v19;
  v20 = type metadata accessor for Com_Apple_Siri_Product_Proto_Interval(0);
  v162 = *(v20 - 8);
  v163 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v152 = (&v146 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C60, &unk_1C099BB40);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v151 = &v146 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  *&v161 = &v146 - v25;
  *&v26 = COERCE_DOUBLE(type metadata accessor for Com_Apple_Siri_Product_Proto_Duration(0));
  v164 = *(v26 - 8);
  v165 = *&v26;
  MEMORY[0x1EEE9AC00](v26);
  v150 = (&v146 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C58, &unk_1C0973570);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v149 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  *&v160 = &v146 - v31;
  v32 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v33 = *(v32 - 8);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v148 = (&v146 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v37 = &v146 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C50, &unk_1C099BB50);
  v39 = MEMORY[0x1EEE9AC00](v38 - 8);
  v147 = &v146 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v39);
  *&v159 = &v146 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v146 = &v146 - v44;
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v146 - v45;
  v47 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime(0) + 20);
  v171 = a1;
  v48 = *(a1 + v47);
  v49 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startDate;
  swift_beginAccess();
  sub_1C05149F8(v48 + v49, v46, &qword_1EBE17C50, &unk_1C099BB50);
  v50 = *(v33 + 48);
  v51 = v50(v46, 1, v32);
  sub_1C05145B4(v46, &qword_1EBE17C50, &unk_1C099BB50);
  v175 = v48;
  if (v51 == 1)
  {
    sub_1C077CD50(v184);
    v52 = v50;
  }

  else
  {
    v53 = v48 + v49;
    v54 = v146;
    sub_1C05149F8(v53, v146, &qword_1EBE17C50, &unk_1C099BB50);
    v52 = v50;
    if (v50(v54, 1, v32) == 1)
    {
      *v37 = 0;
      *(v37 + 2) = 0;
      *(v37 + 2) = 0;
      v37[24] = 1;
      *(v37 + 4) = 0;
      v37[40] = 1;
      v55 = MEMORY[0x1E69E7CC0];
      *(v37 + 41) = 0;
      *(v37 + 6) = v55;
      *(v37 + 7) = 0;
      v37[64] = 1;
      *(v37 + 17) = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v56 = *(v32 + 60);
      v57 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
      (*(*(v57 - 8) + 56))(&v37[v56], 1, 1, v57);
      v58 = *(v32 + 64);
      v59 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
      (*(*(v59 - 8) + 56))(&v37[v58], 1, 1, v59);
      if (v50(v54, 1, v32) != 1)
      {
        sub_1C05145B4(v54, &qword_1EBE17C50, &unk_1C099BB50);
      }
    }

    else
    {
      sub_1C077CE38(v54, v37, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
    }

    sub_1C077B1FC(v37, v184);
  }

  v60 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endDate;
  v61 = v175;
  swift_beginAccess();
  v62 = v159;
  sub_1C05149F8(v61 + v60, v159, &qword_1EBE17C50, &unk_1C099BB50);
  v63 = v52;
  v64 = v52(v62, 1, v32);
  sub_1C05145B4(v62, &qword_1EBE17C50, &unk_1C099BB50);
  if (v64 == 1)
  {
    sub_1C077CD50(v182);
    v66 = v164;
    v65 = v165;
  }

  else
  {
    v67 = v147;
    sub_1C05149F8(v61 + v60, v147, &qword_1EBE17C50, &unk_1C099BB50);
    v68 = v63(v67, 1, v32);
    v66 = v164;
    if (v68 == 1)
    {
      v69 = v148;
      *v148 = 0;
      *(v69 + 2) = 0;
      v69[2] = 0;
      *(v69 + 24) = 1;
      v69[4] = 0;
      *(v69 + 40) = 1;
      v70 = MEMORY[0x1E69E7CC0];
      *(v69 + 41) = 0;
      v69[6] = v70;
      v69[7] = 0;
      *(v69 + 64) = 1;
      *(v69 + 17) = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v71 = *(v32 + 60);
      v72 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
      (*(*(v72 - 8) + 56))(v69 + v71, 1, 1, v72);
      v73 = *(v32 + 64);
      v74 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
      (*(*(v74 - 8) + 56))(v69 + v73, 1, 1, v74);
      v75 = v63(v67, 1, v32);
      v65 = v165;
      if (v75 != 1)
      {
        sub_1C05145B4(v67, &qword_1EBE17C50, &unk_1C099BB50);
      }
    }

    else
    {
      v69 = v148;
      sub_1C077CE38(v67, v148, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
      v65 = v165;
    }

    sub_1C077B1FC(v69, v182);
  }

  v76 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__duration;
  swift_beginAccess();
  v77 = v160;
  sub_1C05149F8(v61 + v76, v160, &qword_1EBE17C58, &unk_1C0973570);
  v78 = *(v66 + 48);
  v79 = v78(v77, 1, *&v65);
  sub_1C05145B4(v77, &qword_1EBE17C58, &unk_1C0973570);
  if (v79 == 1)
  {
    v165 = 0.0;
    v80 = 13824;
  }

  else
  {
    v81 = v149;
    sub_1C05149F8(v61 + v76, v149, &qword_1EBE17C58, &unk_1C0973570);
    if (v78(v81, 1, *&v65) == 1)
    {
      v82 = v150;
      *v150 = 0;
      v82[1] = 0;
      *(v82 + 16) = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v78(v81, 1, *&v65) != 1)
      {
        sub_1C05145B4(v81, &qword_1EBE17C58, &unk_1C0973570);
      }
    }

    else
    {
      v82 = v150;
      sub_1C077CE38(v81, v150, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    }

    v83 = *v82 == 0.0;
    v84 = *v82;
    if (*v82 == 0.0)
    {
      v84 = 0.0;
    }

    v165 = v84;
    v85 = v82[1];
    v86 = *(v82 + 16);
    sub_1C077CDD8(v82, type metadata accessor for Com_Apple_Siri_Product_Proto_Duration);
    *&v179[0] = v85;
    BYTE8(v179[0]) = v86;
    sub_1C077C190(v179, v181);
    v80 = v83 | (v181[0] << 8);
  }

  LODWORD(v164) = v80;
  v87 = v162;
  v88 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__interval;
  swift_beginAccess();
  v89 = v161;
  sub_1C05149F8(v61 + v88, v161, &qword_1EBE17C60, &unk_1C099BB40);
  v90 = *(v87 + 48);
  v91 = v163;
  v92 = v90(v89, 1, v163);
  sub_1C05145B4(v89, &qword_1EBE17C60, &unk_1C099BB40);
  if (v92 == 1)
  {
    v163 = 0;
    LODWORD(v162) = 50331648;
    v93 = v168;
  }

  else
  {
    v94 = v151;
    sub_1C05149F8(v61 + v88, v151, &qword_1EBE17C60, &unk_1C099BB40);
    if (v90(v94, 1, v91) == 1)
    {
      v95 = v152;
      *v152 = 0;
      v95[1] = 0;
      *(v95 + 16) = 1;
      v95[3] = 0;
      *(v95 + 16) = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v96 = v90(v94, 1, v91);
      v93 = v168;
      if (v96 != 1)
      {
        sub_1C05145B4(v94, &qword_1EBE17C60, &unk_1C099BB40);
      }
    }

    else
    {
      v95 = v152;
      sub_1C077CE38(v94, v152, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
      v93 = v168;
    }

    sub_1C077BC2C(v95, v179);
    v163 = *&v179[0];
    LODWORD(v162) = DWORD2(v179[0]);
  }

  v97 = v167;
  v98 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__recurrence;
  swift_beginAccess();
  v99 = v61 + v98;
  v100 = v61;
  v101 = v166;
  sub_1C05149F8(v99, v166, &qword_1EBE17C68, &unk_1C0973580);
  v102 = *(v97 + 48);
  v103 = v102(v101, 1, v93);
  sub_1C05145B4(v101, &qword_1EBE17C68, &unk_1C0973580);
  if (v103 == 1)
  {
    v168 = 0;
    LODWORD(v167) = 13824;
    v104 = v173;
    v105 = v174;
  }

  else
  {
    v106 = v153;
    sub_1C05149F8(v100 + v98, v153, &qword_1EBE17C68, &unk_1C0973580);
    if (v102(v106, 1, v93) == 1)
    {
      v107 = v158;
      *v158 = 0;
      *(v107 + 8) = 0;
      *(v107 + 16) = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v108 = v102(v106, 1, v93);
      v105 = v174;
      if (v108 != 1)
      {
        sub_1C05145B4(v106, &qword_1EBE17C68, &unk_1C0973580);
      }
    }

    else
    {
      v107 = v158;
      sub_1C077CE38(v106, v158, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
      v105 = v174;
    }

    v109 = *v107;
    v168 = v109 & ~(v109 >> 31);
    v110 = *(v107 + 8);
    v111 = *(v107 + 16);
    sub_1C077CDD8(v107, type metadata accessor for Com_Apple_Siri_Product_Proto_Recurrence);
    *&v179[0] = v110;
    BYTE8(v179[0]) = v111;
    sub_1C077C190(v179, v180);
    LODWORD(v167) = (v109 >> 31) | (v180[0] << 8);
    v104 = v173;
  }

  v112 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startTime;
  v113 = v175;
  swift_beginAccess();
  v114 = v169;
  sub_1C05149F8(v113 + v112, v169, &qword_1EBE17C70, &unk_1C099BB30);
  v115 = *(v104 + 48);
  v116 = v115(v114, 1, v105);
  sub_1C05145B4(v114, &qword_1EBE17C70, &unk_1C099BB30);
  v173 = xmmword_1C0999D30;
  *&v158 = v115;
  if (v116 == 1)
  {
    LODWORD(v169) = 0;
    v166 = xmmword_1C0999D30;
    v160 = 0u;
    v161 = 0u;
    v159 = 0u;
  }

  else
  {
    v117 = v154;
    sub_1C05149F8(v113 + v112, v154, &qword_1EBE17C70, &unk_1C099BB30);
    if (v115(v117, 1, v105) == 1)
    {
      v118 = v157;
      *v157 = 0;
      *(v118 + 1) = 0xE000000000000000;
      *(v118 + 2) = 0;
      *(v118 + 3) = 0;
      *(v118 + 32) = 1;
      *(v118 + 5) = 0;
      *(v118 + 6) = 0xE000000000000000;
      *(v118 + 28) = 0;
      *(v118 + 58) = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v119 = *(v105 + 52);
      v120 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
      (*(*(v120 - 8) + 56))(v118 + v119, 1, 1, v120);
      if (v115(v117, 1, v105) != 1)
      {
        sub_1C05145B4(v117, &qword_1EBE17C70, &unk_1C099BB30);
      }
    }

    else
    {
      v118 = v157;
      sub_1C077CE38(v117, v157, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    }

    sub_1C077BD04(v118, v179);
    v166 = v179[0];
    v159 = v179[3];
    v160 = v179[2];
    v161 = v179[1];
    LODWORD(v169) = LOWORD(v179[4]) | (BYTE2(v179[4]) << 16);
  }

  v157 = &v179[26];
  v121 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endTime;
  v122 = v175;
  swift_beginAccess();
  v123 = v170;
  sub_1C05149F8(v122 + v121, v170, &qword_1EBE17C70, &unk_1C099BB30);
  v124 = v158;
  v125 = (v158)(v123, 1, v105);
  sub_1C05145B4(v123, &qword_1EBE17C70, &unk_1C099BB30);
  if (v125 == 1)
  {
    v126 = 0;
    v174 = 0u;
    v170 = 0u;
    v158 = 0u;
  }

  else
  {
    v127 = v122 + v121;
    v128 = v155;
    sub_1C05149F8(v127, v155, &qword_1EBE17C70, &unk_1C099BB30);
    v129 = v174;
    if (v124(v128, 1, v174) == 1)
    {
      v130 = v156;
      *v156 = 0;
      v130[1] = 0xE000000000000000;
      v130[2] = 0;
      v130[3] = 0;
      *(v130 + 32) = 1;
      v130[5] = 0;
      v130[6] = 0xE000000000000000;
      *(v130 + 28) = 0;
      *(v130 + 58) = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v131 = *(v129 + 52);
      v132 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
      (*(*(v132 - 8) + 56))(v130 + v131, 1, 1, v132);
      if (v124(v128, 1, v129) != 1)
      {
        sub_1C05145B4(v128, &qword_1EBE17C70, &unk_1C099BB30);
      }
    }

    else
    {
      v130 = v156;
      sub_1C077CE38(v128, v156, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
    }

    sub_1C077BD04(v130, v179);
    v158 = v179[1];
    v170 = v179[3];
    v173 = v179[0];
    v174 = v179[2];
    v126 = LOWORD(v179[4]) | (BYTE2(v179[4]) << 16);
  }

  v133 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__startPosition;
  v134 = v175;
  swift_beginAccess();
  v135 = *(v134 + v133);
  v136 = *(v134 + v133) == 0;
  v137 = OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__endPosition;
  swift_beginAccess();
  v138 = *(v134 + v137);
  v139 = *(v134 + v137) == 0;
  v140 = (v134 + OBJC_IVAR____TtCV12SiriOntology37Com_Apple_Siri_Product_Proto_DateTimeP33_697D571C32F0AF8F560B5FAE0C121ED613_StorageClass__temporalIntent);
  swift_beginAccess();
  v141 = *v140;
  LODWORD(v140) = *(v140 + 8);
  sub_1C077CDD8(v171, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTime);
  v178[6] = v184[6];
  v178[7] = v184[7];
  v178[8] = v184[8];
  v178[2] = v184[2];
  v178[3] = v184[3];
  v178[4] = v184[4];
  v178[5] = v184[5];
  v178[0] = v184[0];
  v178[1] = v184[1];
  *(&v178[16] + 8) = v182[7];
  *(&v178[17] + 8) = v182[8];
  *(&v178[15] + 8) = v182[6];
  *(&v178[11] + 8) = v182[2];
  *(&v178[12] + 8) = v182[3];
  *(&v178[13] + 8) = v182[4];
  *(&v178[14] + 8) = v182[5];
  *(&v178[9] + 8) = v182[0];
  if (v140)
  {
    v142 = 0x2010003u >> (8 * v141);
  }

  else
  {
    v142 = 3;
  }

  LOBYTE(v178[9]) = v185;
  BYTE8(v178[18]) = v183;
  *(&v178[10] + 8) = v182[1];
  v177 = v136;
  v176 = v139;
  memcpy(v179, v178, 0x130uLL);
  *&v179[19] = v165;
  WORD4(v179[19]) = v164;
  *&v179[20] = v163;
  DWORD2(v179[20]) = v162;
  *&v179[21] = v168;
  WORD4(v179[21]) = v167;
  v179[22] = v166;
  v179[23] = v161;
  v179[25] = v159;
  v179[24] = v160;
  v143 = v169;
  v144 = v157;
  *(v157 + 2) = BYTE2(v169);
  *v144 = v143;
  *(v144 + 24) = v158;
  *(v144 + 8) = v173;
  *(v144 + 56) = v170;
  *(v144 + 40) = v174;
  *(v144 + 74) = BYTE2(v126);
  *(v144 + 36) = v126;
  *&v179[31] = v135;
  BYTE8(v179[31]) = v136;
  *&v179[32] = v138;
  BYTE8(v179[32]) = v139;
  BYTE9(v179[32]) = v142;
  nullsub_1();
  return memcpy(v172, v179, 0x20AuLL);
}

uint64_t sub_1C077B134@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v7 = *a1;
    v6 = a1[1];
    v9 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v9 = *a1 & 0xFFFFFFFFFFFFLL;
    }

    if (v9)
    {
    }

    else
    {
      v7 = 0;
      v6 = 0;
    }

    result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    *a2 = v7;
    a2[1] = v6;
    a2[2] = v4;
    a2[3] = v3;
  }

  else
  {
    result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    *a2 = 0u;
    *(a2 + 1) = 0u;
  }

  return result;
}

double sub_1C077B1FC@<D0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod(0);
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v80 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C48, &unk_1C0973560);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v78 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v77 - v13;
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v96 = &v77 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C40, &unk_1C099BB60);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v86 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v77 - v21;
  v23 = a1[24] == 1;
  v94 = a2;
  v79 = v6;
  v93 = v4;
  v87 = v14;
  if (v23)
  {
    v24 = 0x605040302010007uLL >> (8 * a1[16]);
  }

  else
  {
    v24 = 7;
  }

  v92 = v24;
  v25 = *(a1 + 1);
  v90 = *a1;
  v89 = v25;
  v88 = *(a1 + 2);
  v81 = type metadata accessor for Com_Apple_Siri_Product_Proto_Date(0);
  v26 = *(v81 + 60);
  v27 = a1;
  sub_1C05149F8(&a1[v26], v22, &qword_1EBE17C40, &unk_1C099BB60);
  v28 = *(v16 + 48);
  v95 = 1;
  v29 = v28(v22, 1, v15);
  sub_1C05145B4(v22, &qword_1EBE17C40, &unk_1C099BB60);
  if (v29 == 1)
  {
    v86 = 0;
    v85 = 0;
    v30 = v27;
  }

  else
  {
    v31 = v86;
    sub_1C05149F8(&v27[v26], v86, &qword_1EBE17C40, &unk_1C099BB60);
    v30 = v27;
    if (v28(v31, 1, v15) == 1)
    {
      v32 = v96;
      *v96 = 0;
      *(v32 + 8) = 0xE000000000000000;
      *(v32 + 16) = 0;
      *(v32 + 24) = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v28(v31, 1, v15) != 1)
      {
        sub_1C05145B4(v31, &qword_1EBE17C40, &unk_1C099BB60);
      }
    }

    else
    {
      v32 = v96;
      sub_1C077CE38(v31, v96, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
    }

    sub_1C077C0C0(v32, &v100);
    v95 = *(&v100 + 1);
    v86 = v100;
    v85 = v101;
  }

  v33 = *(v30 + 40);
  *&v100 = *(v30 + 32);
  BYTE8(v100) = v33;
  sub_1C077C160(&v100, v110);
  v34 = v110[0];
  v83 = *(v30 + 41);
  v82 = *(v30 + 42);
  v96 = v30;
  v35 = *(v30 + 48);
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = v35 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
    v38 = *(v80 + 72);
    v39 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C077CD70(v37, v9, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      v40 = *v9;
      v41 = *(v9 + 1);
      v42 = v9[16];
      sub_1C077CDD8(v9, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
      *&v100 = v41;
      BYTE8(v100) = v42;
      sub_1C077C190(&v100, v110);
      v43 = v110[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_1C0578844(0, *(v39 + 2) + 1, 1, v39);
      }

      v45 = *(v39 + 2);
      v44 = *(v39 + 3);
      if (v45 >= v44 >> 1)
      {
        v39 = sub_1C0578844((v44 > 1), v45 + 1, 1, v39);
      }

      *(v39 + 2) = v45 + 1;
      v46 = &v39[2 * v45];
      v46[32] = v40;
      v46[33] = v43;
      v37 += v38;
      --v36;
    }

    while (v36);
  }

  else
  {
    v39 = MEMORY[0x1E69E7CC0];
  }

  v47 = v96;
  v23 = *(v96 + 64) == 1;
  v84 = v34;
  if (v23)
  {
    v48 = byte_1C0999E80[*(v96 + 56)];
  }

  else
  {
    v48 = 12;
  }

  LODWORD(v80) = v48;
  v49 = v93;
  v50 = *(v81 + 64);
  v51 = v87;
  sub_1C05149F8(v96 + v50, v87, &qword_1EBE17C48, &unk_1C0973560);
  v52 = *(v91 + 48);
  v53 = (v52)(v51, 1, v49);
  sub_1C05145B4(v51, &qword_1EBE17C48, &unk_1C0973560);
  if (v53 == 1)
  {
    v91 = 0;
    v93 = 0;
    v81 = 0;
    v87 = 0;
    v78 = 0;
    LODWORD(v79) = 0;
    LODWORD(v54) = v89;
    LODWORD(v52) = v88;
  }

  else
  {
    v55 = v47 + v50;
    v56 = v78;
    sub_1C05149F8(v55, v78, &qword_1EBE17C48, &unk_1C0973560);
    if ((v52)(v56, 1, v49) == 1)
    {
      v57 = v79;
      *v79 = 0;
      v57[2] = 0;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v58 = (v52)(v56, 1, v49);
      LODWORD(v54) = v89;
      LODWORD(v52) = v88;
      if (v58 != 1)
      {
        sub_1C05145B4(v56, &qword_1EBE17C48, &unk_1C0973560);
      }
    }

    else
    {
      v57 = v79;
      sub_1C077CE38(v56, v79, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
      LODWORD(v54) = v89;
      LODWORD(v52) = v88;
    }

    LODWORD(v59) = *v57;
    v60 = v57[1];
    v93 = (*v57 - 0x7FFFFFFF) < 0x80000002;
    if ((v59 - 0x7FFFFFFF) >= 0x80000002)
    {
      v59 = v59;
    }

    else
    {
      v59 = 0;
    }

    v91 = v59;
    v87 = v60 - 0x7FFFFFFF < 0x80000002;
    if (v60 - 0x7FFFFFFF >= 0x80000002)
    {
      v61 = v60;
    }

    else
    {
      v61 = 0;
    }

    v81 = v61;
    v62 = v57[2];
    sub_1C077CDD8(v57, type metadata accessor for Com_Apple_Siri_Product_Proto_FractionalPeriod);
    LODWORD(v79) = v62 - 0x7FFFFFFF < 0x80000002;
    if (v62 - 0x7FFFFFFF >= 0x80000002)
    {
      v63 = v62;
    }

    else
    {
      v63 = 0;
    }

    v78 = v63;
  }

  v64 = v53 == 1;
  v65 = v52 > 0x7FFFFFFE;
  if (v52 <= 0x7FFFFFFE)
  {
    v52 = v52;
  }

  else
  {
    v52 = 0;
  }

  v66 = v54 > 0x7FFFFFFE;
  if (v54 <= 0x7FFFFFFE)
  {
    v54 = v54;
  }

  else
  {
    v54 = 0;
  }

  v67 = v90 > 0x7FFFFFFE;
  if (v90 <= 0x7FFFFFFE)
  {
    v68 = v90;
  }

  else
  {
    v68 = 0;
  }

  v69 = *(v96 + 68);
  v70 = *(v96 + 68) == 0;
  sub_1C077CDD8(v96, type metadata accessor for Com_Apple_Siri_Product_Proto_Date);
  v110[0] = v66;
  v99 = v65;
  v98 = v64;
  v97 = v70;
  *&v100 = v68;
  BYTE8(v100) = v67;
  *&v101 = v54;
  BYTE8(v101) = v66;
  *&v102 = v52;
  BYTE8(v102) = v65;
  BYTE9(v102) = v92;
  *&v103 = v86;
  *(&v103 + 1) = v95;
  LOBYTE(v104) = v85;
  BYTE1(v104) = v84;
  BYTE2(v104) = v83;
  BYTE3(v104) = v82;
  *(&v104 + 1) = v39;
  LOBYTE(v105) = v80;
  *(&v105 + 1) = v91;
  *&v106 = v93;
  *(&v106 + 1) = v81;
  *&v107 = v87;
  *(&v107 + 1) = v78;
  LOBYTE(v108) = v79;
  BYTE1(v108) = v64;
  *(&v108 + 1) = v69;
  v109 = v70;
  nullsub_1();
  v71 = v107;
  v72 = v94;
  *(v94 + 96) = v106;
  *(v72 + 112) = v71;
  *(v72 + 128) = v108;
  *(v72 + 144) = v109;
  v73 = v103;
  *(v72 + 32) = v102;
  *(v72 + 48) = v73;
  v74 = v105;
  *(v72 + 64) = v104;
  *(v72 + 80) = v74;
  result = *&v100;
  v76 = v101;
  *v72 = v100;
  *(v72 + 16) = v76;
  return result;
}

uint64_t sub_1C077BC2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1 == 0.0;
  v5 = *(a1 + 16);
  if (*a1 == 0.0)
  {
    v6 = 0.0;
  }

  else
  {
    v6 = *a1;
  }

  v13 = *(a1 + 8);
  v14 = v5;
  sub_1C077C190(&v13, &v15);
  v7 = v15;
  v8 = *(a1 + 32);
  v13 = *(a1 + 24);
  v14 = v8;
  sub_1C077C160(&v13, &v15);
  v9 = v15;
  v10 = *(a1 + 33);
  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Interval);
  if (v10)
  {
    v12 = 0x1000000;
  }

  else
  {
    v12 = 0;
  }

  *a2 = v6;
  *(a2 + 8) = v12 | v4 | (v7 << 8) | (v9 << 16);
  return result;
}

uint64_t sub_1C077BD04@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17C38, &unk_1C0973550);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v39 - v10;
  v13 = *a1;
  v12 = a1[1];
  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  v39 = v9;
  if (v14)
  {
    v43 = v12;
    v44 = v13;
  }

  else
  {
    v43 = 0;
    v44 = 0;
  }

  v15 = *(a1 + 4);
  v41 = *(a1 + 5);
  v42 = v15;
  v16 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_Time(0) + 52);
  sub_1C05149F8(a1 + v16, v11, &qword_1EBE17C38, &unk_1C0973550);
  v17 = *(v5 + 48);
  v18 = v17(v11, 1, v4);
  sub_1C05145B4(v11, &qword_1EBE17C38, &unk_1C0973550);
  if (v18 == 1)
  {
    v19 = 3;
  }

  else
  {
    v20 = v39;
    sub_1C05149F8(a1 + v16, v39, &qword_1EBE17C38, &unk_1C0973550);
    if (v17(v20, 1, v4) == 1)
    {
      v21 = v40;
      *v40 = 0;
      *(v21 + 1) = 0;
      v21[16] = 1;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v17(v20, 1, v4) != 1)
      {
        sub_1C05145B4(v20, &qword_1EBE17C38, &unk_1C0973550);
      }
    }

    else
    {
      v21 = v40;
      sub_1C077CE38(v20, v40, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    }

    v22 = *v21;
    v23 = *(v21 + 1);
    v24 = v21[16];
    sub_1C077CDD8(v21, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimePeriod);
    v45 = v23;
    v46 = v24;
    sub_1C077C190(&v45, &v47);
    v19 = v22 | (v47 << 8);
  }

  LODWORD(v40) = v19;
  v25 = *(a1 + 32);
  v45 = a1[3];
  v46 = v25;
  sub_1C077C160(&v45, &v47);
  v26 = v47;
  v28 = a1[5];
  v27 = a1[6];
  v29 = HIBYTE(v27) & 0xF;
  if ((v27 & 0x2000000000000000) == 0)
  {
    v29 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v29)
  {
  }

  else
  {
    v28 = 0;
    v27 = 0;
  }

  if (v41 <= 0x7FFFFFFE)
  {
    v30 = v41;
  }

  else
  {
    v30 = 0;
  }

  v31 = *(a1 + 56);
  v32 = *(a1 + 57);
  v33 = *(a1 + 58);
  if (v42 <= 0x7FFFFFFE)
  {
    v34 = v42;
  }

  else
  {
    v34 = 0;
  }

  LOBYTE(v45) = v42 > 0x7FFFFFFE;
  LOBYTE(v47) = v41 > 0x7FFFFFFE;
  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_Time);
  v36 = v45;
  v37 = v47;
  v38 = v43;
  *a2 = v44;
  *(a2 + 8) = v38;
  *(a2 + 16) = v34;
  *(a2 + 24) = v36;
  *(a2 + 32) = v30;
  *(a2 + 40) = v37;
  *(a2 + 41) = v40;
  *(a2 + 43) = v26;
  *(a2 + 48) = v28;
  *(a2 + 56) = v27;
  *(a2 + 64) = v31;
  *(a2 + 65) = v32;
  *(a2 + 66) = v33;
  return result;
}

uint64_t sub_1C077C0C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v5 = *a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5)
  {
    v6 = a1;

    a1 = v6;
  }

  else
  {
    v4 = 0;
    v3 = 0;
  }

  if (*(a1 + 24) == 1)
  {
    v7 = byte_1C0999E80[a1[2]];
  }

  else
  {
    v7 = 12;
  }

  result = sub_1C077CDD8(a1, type metadata accessor for Com_Apple_Siri_Product_Proto_DateTimeHoliday);
  *a2 = v4;
  *(a2 + 8) = v3;
  *(a2 + 16) = v7;
  return result;
}

uint64_t sub_1C077C160@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999E6C[*result];
  }

  else
  {
    *a2 = 18;
  }

  return result;
}

uint64_t sub_1C077C190@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (*(result + 8) == 1)
  {
    *a2 = byte_1C0999E8D[*result];
  }

  else
  {
    *a2 = 53;
  }

  return result;
}

unint64_t sub_1C077C1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EBE1F7F0;
  if (!qword_1EBE1F7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE1F7F0);
  }

  return result;
}

uint64_t sub_1C077C214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17240, &qword_1C0970A20);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C077C284(uint64_t a1)
{
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 144) = 0xFFFFFFFF00;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 152) = 0u;
  result = (a1 + 152);
  result[7] = 0u;
  result[8] = 0u;
  result[9] = 0u;
  result[10] = 0u;
  result[11] = 0u;
  result[12] = 0u;
  result[13] = 0u;
  result[14] = 0u;
  result[15] = 0u;
  result[16] = 0u;
  result[17] = 0u;
  result[18] = 0u;
  result[19] = 0u;
  result[20] = 0u;
  result[21] = 0u;
  result[22] = 0u;
  return result;
}

uint64_t objectdestroyTm()
{

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1C077C330(uint64_t result)
{
  v1 = *(result + 672);
  v2 = *(result + 640) & 0x1010101;
  v3 = *(result + 736) & 1;
  v4 = *(result + 752) & 1;
  v5 = *(result + 768) & 1;
  *(result + 536) = *(result + 536);
  *(result + 640) = v2;
  *(result + 672) = v1;
  *(result + 736) = v3;
  *(result + 752) = v4;
  *(result + 768) = v5;
  return result;
}

uint64_t sub_1C077C378(uint64_t a1)
{
  v1 = *(a1 + 696);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C077C390(uint64_t result)
{
  v1 = *(result + 672);
  v2 = *(result + 768);
  v3 = *(result + 640) & 0x1010101;
  v4 = *(result + 736) & 1;
  v5 = *(result + 752) & 1;
  *(result + 536) = *(result + 536);
  *(result + 640) = v3;
  *(result + 672) = v1;
  *(result + 736) = v4;
  *(result + 752) = v5;
  *(result + 768) = v2 & 1 | 0x40;
  return result;
}

uint64_t sub_1C077C3DC(uint64_t result)
{
  v1 = *(result + 672);
  v2 = *(result + 768);
  v3 = *(result + 640) & 0x1010101;
  v4 = *(result + 736) & 1;
  v5 = *(result + 752) & 1;
  *(result + 536) = *(result + 536);
  *(result + 640) = v3;
  *(result + 672) = v1;
  *(result + 736) = v4;
  *(result + 752) = v5;
  *(result + 768) = v2 & 1 | 0x80;
  return result;
}

uint64_t sub_1C077C428(uint64_t a1)
{
  v1 = *(a1 + 528);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C077C440(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x70;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

double sub_1C077C4A0(uint64_t a1)
{
  v2 = type metadata accessor for Com_Apple_Siri_Product_Proto_Value(0);
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v38 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17778, &unk_1C0971260);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v37 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v37 - v7;
  v8 = type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16B50, &unk_1C096E0F0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  *&v39 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = *(type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue(0) + 20);
  v43 = a1;
  v18 = *(a1 + v17);
  v19 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__unit;
  swift_beginAccess();
  sub_1C05149F8(v18 + v19, v16, &qword_1EBE16B50, &unk_1C096E0F0);
  v20 = *(v9 + 48);
  *&v44 = v8;
  LODWORD(v8) = v20(v16, 1, v8);
  sub_1C05145B4(v16, &qword_1EBE16B50, &unk_1C096E0F0);
  v21 = 0uLL;
  v22 = 0uLL;
  if (v8 != 1)
  {
    v23 = v39;
    sub_1C05149F8(v18 + v19, v39, &qword_1EBE16B50, &unk_1C096E0F0);
    v24 = v44;
    if (v20(v23, 1, v44) == 1)
    {
      *v11 = 0;
      v11[1] = 0xE000000000000000;
      v11[2] = 0;
      v11[3] = 0xE000000000000000;
      v11[4] = 0;
      v11[5] = 0xE000000000000000;
      v11[6] = MEMORY[0x1E69E7CC0];
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      if (v20(v23, 1, v24) != 1)
      {
        sub_1C05145B4(v23, &qword_1EBE16B50, &unk_1C096E0F0);
      }
    }

    else
    {
      sub_1C077CE38(v23, v11, type metadata accessor for Com_Apple_Siri_Product_Proto_SemanticValue);
    }

    sub_1C077B134(v11, v46);
    v21 = v46[0];
    v22 = v46[1];
  }

  v44 = v22;
  v39 = v21;
  v25 = OBJC_IVAR____TtCV12SiriOntology40Com_Apple_Siri_Product_Proto_ScalarValueP33_FC4EE5074104C85BFB570AF81C8E8EC613_StorageClass__value;
  swift_beginAccess();
  v26 = v40;
  sub_1C05149F8(v18 + v25, v40, &qword_1EBE17778, &unk_1C0971260);
  v27 = v42;
  v28 = *(v41 + 48);
  v29 = v28(v26, 1, v42);
  sub_1C05145B4(v26, &qword_1EBE17778, &unk_1C0971260);
  if (v29 == 1)
  {
    sub_1C077CDD8(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
    sub_1C077C284(v46);
  }

  else
  {
    v30 = v37;
    sub_1C05149F8(v18 + v25, v37, &qword_1EBE17778, &unk_1C0971260);
    if (v28(v30, 1, v27) == 1)
    {
      v31 = v38;
      _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
      v32 = *(v27 + 20);
      if (qword_1EBE15458 != -1)
      {
        swift_once();
      }

      *(v31 + v32) = qword_1EBE15460;
      v33 = v28(v30, 1, v27);

      if (v33 != 1)
      {
        sub_1C05145B4(v30, &qword_1EBE17778, &unk_1C0971260);
      }
    }

    else
    {
      v31 = v38;
      sub_1C077CE38(v30, v38, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    }

    sub_1C0777DD8(v31, v46);
    sub_1C077CDD8(v31, type metadata accessor for Com_Apple_Siri_Product_Proto_Value);
    sub_1C077CDD8(v43, type metadata accessor for Com_Apple_Siri_Product_Proto_ScalarValue);
  }

  if (*(&v44 + 1) || (memcpy(v45, v46, 0x20AuLL), sub_1C0573598(v45) != 1))
  {
    type metadata accessor for TerminalElement.ScalarValue();
    v35 = swift_allocObject();
    memcpy(v35 + 1, v46, 0x20AuLL);
    v36 = v44;
    result = *&v39;
    v35[34] = v39;
    v35[35] = v36;
  }

  return result;
}

uint64_t sub_1C077CA8C(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x60;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CAEC(uint64_t a1)
{
  v1 = *(a1 + 72);
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

uint64_t sub_1C077CB10(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x50;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CB74(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x40;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CBD4(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x30;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CC34(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x20;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CC94(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

uint64_t sub_1C077CCF0(uint64_t result)
{
  v1 = *(result + 296);
  v2 = *(result + 312);
  v3 = *(result + 328);
  v4 = *(result + 344);
  v5 = *(result + 416) & 0xFFFFFFLL;
  v6 = *(result + 488) & 0xFFFFFFLL;
  v7 = *(result + 504) & 1;
  v8 = *(result + 520) & 0xFF01 | 0x10;
  *(result + 144) = *(result + 144);
  *(result + 296) = v1;
  *(result + 312) = v2;
  *(result + 328) = v3;
  *(result + 344) = v4;
  *(result + 416) = v5;
  *(result + 488) = v6;
  *(result + 504) = v7;
  *(result + 520) = v8;
  return result;
}

double sub_1C077CD50(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1C077CD70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C077CDD8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1C077CE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1C077CEA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v25 = MEMORY[0x1E69E7CC0];
    sub_1C0600B00(0, v1, 0);
    v2 = v25;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[5];
      v22 = v4[4];
      v23 = v5;
      v24 = *(v4 + 12);
      v6 = v4[1];
      v18 = *v4;
      v19 = v6;
      v7 = v4[3];
      v20 = v4[2];
      v21 = v7;
      sub_1C05AF88C(&v18, &v15);
      v25 = v2;
      v9 = *(v2 + 16);
      v8 = *(v2 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C0600B00((v8 > 1), v9 + 1, 1);
        v2 = v25;
      }

      v16 = &type metadata for BuilderNode;
      v17 = &off_1F3FA1508;
      v10 = swift_allocObject();
      *&v15 = v10;
      v11 = v23;
      *(v10 + 80) = v22;
      *(v10 + 96) = v11;
      *(v10 + 112) = v24;
      v12 = v19;
      *(v10 + 16) = v18;
      *(v10 + 32) = v12;
      v13 = v21;
      *(v10 + 48) = v20;
      *(v10 + 64) = v13;
      *(v2 + 16) = v9 + 1;
      sub_1C0531D80(&v15, v2 + 40 * v9 + 32);
      v4 = (v4 + 104);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1C077D000(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C0600C20(0, v1, 0);
    v4 = a1 + 40;
    v2 = v11;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17220, &qword_1C09709F8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE18280, &unk_1C0999F20);
      swift_dynamicCast();
      v6 = *(v11 + 16);
      v5 = *(v11 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_1C0600C20((v5 > 1), v6 + 1, 1);
      }

      *(v11 + 16) = v6 + 1;
      v7 = v11 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1C077D12C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_1C095DCDC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x1E69E7CC0];
  result = sub_1C0600C40(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x1C68DDAD0](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_1C0600C40((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
        v15 = &protocol witness table for TerminalOntologyNode<A>;
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_1C0531D80(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);

        if (v12 >= v11 >> 1)
        {
          sub_1C0600C40((v11 > 1), v12 + 1, 1);
          v3 = v16;
        }

        v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16E40, &qword_1C0970530);
        v15 = &protocol witness table for TerminalOntologyNode<A>;
        *&v13 = v10;
        *(v3 + 16) = v12 + 1;
        sub_1C0531D80(&v13, v3 + 40 * v12 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C077D304(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1C0600CE0(0, v1, 0);
    v2 = v27;
    v4 = (a1 + 32);
    do
    {
      v5 = v4[1];
      v6 = v4[3];
      v19 = v4[2];
      v20 = v6;
      v7 = v4[3];
      v8 = v4[4];
      v9 = v4[1];
      v18[0] = *v4;
      v18[1] = v9;
      v24 = v19;
      v25 = v7;
      v26 = v4[4];
      v23 = v5;
      v21 = v8;
      v22 = v18[0];
      sub_1C05149F8(v18, v17, &unk_1EBE17410, qword_1C0970CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBE17410, qword_1C0970CB0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16EC8, &unk_1C0999F10);
      swift_dynamicCast();
      v25 = v17[3];
      v26 = v17[4];
      v23 = v17[1];
      v24 = v17[2];
      v22 = v17[0];
      v27 = v2;
      v11 = *(v2 + 16);
      v10 = *(v2 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1C0600CE0((v10 > 1), v11 + 1, 1);
        v2 = v27;
      }

      *(v2 + 16) = v11 + 1;
      v12 = (v2 + 80 * v11);
      v12[2] = v22;
      v13 = v23;
      v14 = v24;
      v15 = v26;
      v12[5] = v25;
      v12[6] = v15;
      v12[3] = v13;
      v12[4] = v14;
      v4 += 5;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t static UsoGraphRedactionUtils.getRedactedGraph(graph:)(uint64_t a1)
{
  type metadata accessor for Graph();
  swift_allocObject();
  v2 = Graph.init()();
  v15 = v2;
  v14 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CD0];
  swift_beginAccess();
  v3 = v2[4];
  result = swift_unownedRetainStrong();
  if (v3)
  {

    swift_unownedRetain();

    v12[0] = v2;
    v12[1] = v3;
    swift_beginAccess();
    v5 = *(a1 + 32);
    result = swift_unownedRetainStrong();
    if (v5)
    {

      swift_unownedRetain();

      v11[0] = a1;
      v11[1] = v5;
      v10[0] = 0;
      v10[1] = 0;
      v9[0] = 0;
      v9[1] = 0;
      v6 = sub_1C0519A28(v11, v10, v9);

      swift_unownedRelease();
      sub_1C077D61C(&v15, &v14, &v13, v12, v6);

      swift_unownedRelease();

      v8 = v14;
      v7 = v15;

      sub_1C077D000(v8);

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

void sub_1C077D61C(uint64_t *a1, void **a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  v209 = *a4;
  v6 = *a3;
  v7 = *(swift_unownedRetainStrong() + 56);

  if (*(v6 + 16))
  {
    v8 = sub_1C095DFDC();
    v9 = -1 << *(v6 + 32);
    v10 = v8 & ~v9;
    if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      do
      {
        if (*(*(v6 + 48) + 8 * v10) == v7)
        {
          return;
        }

        v10 = (v10 + 1) & v11;
      }

      while (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }
  }

  *&v224 = a5;

  sub_1C051E5F8(&v224);
  v204 = *(v224 + 16);
  if (!v204)
  {

LABEL_108:
    v201 = *(swift_unownedRetainStrong() + 56);

    sub_1C051DFC8(&v224, v201);
    if (v204)
    {

      swift_unownedRelease();
    }

    return;
  }

  v12 = 0;
  v13 = 0;
  v203 = v224 + 32;
  v202 = v224;
  do
  {
    v211 = v12;
    v207 = v13;
    v14 = (v203 + 80 * v13);
    v15 = v14[1];
    v16 = v14[2];
    v17 = v14[3];
    v231 = v14[4];
    v18 = *v14;
    *&v230[16] = v16;
    *&v230[32] = v17;
    v229 = v18;
    *v230 = v15;
    v19 = v231;
    v20 = *a1;
    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v229);
    swift_unownedRetainStrong();
    v21 = *(*(&v19 + 1) + 64);
    v22 = *(*(&v19 + 1) + 72);
    v23 = *(*(&v19 + 1) + 80);
    v24 = *(*(&v19 + 1) + 88);
    v25 = *(*(&v19 + 1) + 96);

    swift_unownedRelease();
    *&v224 = v21;
    *(&v224 + 1) = v22;
    *v225 = v23;
    *&v225[8] = v24;
    *&v225[16] = v25;
    v26 = sub_1C0514CE0(&v224, 0, 0, 255, MEMORY[0x1E69E7CC0]);

    swift_unownedRetain();

    if (v211)
    {

      swift_unownedRelease();
    }

    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v229);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v27 = *(*(&v19 + 1) + 104);

    swift_unownedRelease();
    v28 = *(v27 + 16);
    if (v28)
    {
      v29 = v28 - 1;
      for (i = 32; ; i += 96)
      {
        v31 = *(v27 + i + 16);
        v224 = *(v27 + i);
        *v225 = v31;
        v32 = *(v27 + i + 32);
        v33 = *(v27 + i + 48);
        v34 = *(v27 + i + 64);
        *&v225[57] = *(v27 + i + 73);
        *&v225[32] = v33;
        *&v225[48] = v34;
        *&v225[16] = v32;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v35 = v26[13];
        sub_1C0518B04(&v224, &v222);
        sub_1C0518B04(&v224, &v222);

        swift_unownedRetain();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26[13] = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v35 = sub_1C0519CF8(0, *(v35 + 2) + 1, 1, v35);
          v26[13] = v35;
        }

        v38 = *(v35 + 2);
        v37 = *(v35 + 3);
        if (v38 >= v37 >> 1)
        {
          v35 = sub_1C0519CF8((v37 > 1), v38 + 1, 1, v35);
        }

        *(v35 + 2) = v38 + 1;
        v39 = &v35[96 * v38];
        v40 = *v225;
        *(v39 + 2) = v224;
        *(v39 + 3) = v40;
        v41 = *&v225[16];
        v42 = *&v225[32];
        v43 = *&v225[48];
        *(v39 + 105) = *&v225[57];
        *(v39 + 5) = v42;
        *(v39 + 6) = v43;
        *(v39 + 4) = v41;
        v26[13] = v35;
        swift_endAccess();
        sub_1C0518B60(&v224);

        swift_unownedRelease();
        if (!v29)
        {
          break;
        }

        --v29;
      }
    }

    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v229);
    swift_unownedRetainStrong();
    v44 = *(*(&v19 + 1) + 112);

    swift_unownedRelease();
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = (v44 + 40);
      do
      {
        v47 = *(v46 - 2);
        v48 = *v46;
        swift_unownedRetainStrong();
        v49 = v26[14];

        swift_unownedRetain();

        v50 = swift_isUniquelyReferenced_nonNull_native();
        v26[14] = v49;
        if ((v50 & 1) == 0)
        {
          v49 = sub_1C052233C(0, *(v49 + 2) + 1, 1, v49);
          v26[14] = v49;
        }

        v52 = *(v49 + 2);
        v51 = *(v49 + 3);
        if (v52 >= v51 >> 1)
        {
          v49 = sub_1C052233C((v51 > 1), v52 + 1, 1, v49);
        }

        *(v49 + 2) = v52 + 1;
        v53 = &v49[16 * v52];
        *(v53 + 8) = v47;
        *(v53 + 5) = v48;
        v26[14] = v49;

        swift_unownedRelease();
        v46 += 2;
        --v45;
      }

      while (v45);
    }

    v54 = &unk_1EBE17410;
    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v229);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v55 = *(*(&v19 + 1) + 120);

    swift_unownedRelease();
    v56 = *(v55 + 16);
    if (v56)
    {
      v57 = v56 - 1;
      for (j = 32; ; j += 192)
      {
        v59 = *(v55 + j);
        v60 = *(v55 + j + 16);
        v61 = *(v55 + j + 48);
        *&v225[16] = *(v55 + j + 32);
        *&v225[32] = v61;
        v224 = v59;
        *v225 = v60;
        v62 = *(v55 + j + 64);
        v63 = *(v55 + j + 80);
        v64 = *(v55 + j + 112);
        *&v225[80] = *(v55 + j + 96);
        *&v225[96] = v64;
        *&v225[48] = v62;
        *&v225[64] = v63;
        v65 = *(v55 + j + 128);
        v66 = *(v55 + j + 144);
        v67 = *(v55 + j + 160);
        *&v228[9] = *(v55 + j + 169);
        v227 = v66;
        *v228 = v67;
        v226 = v65;
        swift_unownedRetainStrong();
        swift_beginAccess();
        v68 = v26[15];
        sub_1C0521E78(&v224, &v222);

        swift_unownedRetain();
        sub_1C0521E78(&v224, &v222);
        v69 = swift_isUniquelyReferenced_nonNull_native();
        v26[15] = v68;
        if ((v69 & 1) == 0)
        {
          v68 = sub_1C0522E00(0, *(v68 + 2) + 1, 1, v68);
          v26[15] = v68;
        }

        v71 = *(v68 + 2);
        v70 = *(v68 + 3);
        if (v71 >= v70 >> 1)
        {
          v68 = sub_1C0522E00((v70 > 1), v71 + 1, 1, v68);
          v26[15] = v68;
        }

        *(v68 + 2) = v71 + 1;
        v72 = &v68[192 * v71];
        v73 = v224;
        v74 = *v225;
        v75 = *&v225[32];
        *(v72 + 4) = *&v225[16];
        *(v72 + 5) = v75;
        *(v72 + 2) = v73;
        *(v72 + 3) = v74;
        v76 = *&v225[48];
        v77 = *&v225[64];
        v78 = *&v225[96];
        *(v72 + 8) = *&v225[80];
        *(v72 + 9) = v78;
        *(v72 + 6) = v76;
        *(v72 + 7) = v77;
        v79 = v226;
        v80 = v227;
        v81 = *v228;
        *(v72 + 201) = *&v228[9];
        *(v72 + 11) = v80;
        *(v72 + 12) = v81;
        *(v72 + 10) = v79;
        v26[15] = v68;
        swift_endAccess();
        sub_1C05755CC(&v224);

        swift_unownedRelease();
        if (!v57)
        {
          break;
        }

        --v57;
      }

      v54 = &unk_1EBE17410;
    }

    else
    {
    }

    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v229);
    v224 = v19;
    Node.stringValue.getter();
    v83 = v82;

    swift_unownedRelease();
    if (v83)
    {

      type metadata accessor for Graph();
      swift_allocObject();
      v84 = Graph.init()();
      swift_beginAccess();
      v85 = v84[4];
      swift_unownedRetainStrong();
      if (!v85)
      {
        goto LABEL_111;
      }

      swift_unownedRetain();

      sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
      sub_1C0514A70(&v229);
      v222 = v19;
      v86 = Node.stringValue.getter();
      v88 = v87;

      swift_unownedRelease();
      if (qword_1ED5D7CA0 != -1)
      {
        swift_once();
      }

      v224 = xmmword_1ED5D7CA8;
      *v225 = xmmword_1ED5D7CB8;
      *&v225[16] = qword_1ED5D7CC8;

      v89 = sub_1C0514CE0(&v224, v86, v88, 1, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      swift_unownedRetainStrong();
      v90 = *(v85 + 56);

      swift_unownedRetainStrong();
      v91 = *(v89 + 56);

      *&v218 = v90;
      *(&v218 + 1) = v91;
      LODWORD(v219) = 0;
      *(&v219 + 1) = 0x797469746E65;
      *&v220 = 0xE600000000000000;
      *(&v220 + 1) = 0x746E656D75677241;
      v221 = 0xE800000000000000;
      swift_beginAccess();
      v92 = v84[2];

      sub_1C0514AC4(&v218, &v224);
      v93 = swift_isUniquelyReferenced_nonNull_native();
      v84[2] = v92;
      if ((v93 & 1) == 0)
      {
        v92 = sub_1C0514F9C(0, *(v92 + 2) + 1, 1, v92);
        v84[2] = v92;
      }

      v95 = *(v92 + 2);
      v94 = *(v92 + 3);
      if (v95 >= v94 >> 1)
      {
        v92 = sub_1C0514F9C((v94 > 1), v95 + 1, 1, v92);
        v84[2] = v92;
      }

      *(v92 + 2) = v95 + 1;
      v96 = &v92[64 * v95];
      v97 = v218;
      v98 = v219;
      v99 = v221;
      *(v96 + 4) = v220;
      *(v96 + 5) = v99;
      *(v96 + 2) = v97;
      *(v96 + 3) = v98;
      v84[2] = v92;
      swift_endAccess();
      sub_1C0514A70(&v218);
      swift_unownedRetainStrong();
      v100 = v26[7];

      v101 = *a2;

      v102 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v101;
      if ((v102 & 1) == 0)
      {
        v101 = sub_1C0578DE8(0, v101[2] + 1, 1, v101);
        *a2 = v101;
      }

      v104 = v101[2];
      v103 = v101[3];
      if (v104 >= v103 >> 1)
      {
        v101 = sub_1C0578DE8((v103 > 1), v104 + 1, 1, v101);
      }

      v101[2] = v104 + 1;
      v105 = &v101[2 * v104];
      v105[4] = v100;
      v105[5] = v84;
      *a2 = v101;
      *&v213 = 6369134;
      *(&v213 + 1) = 0xE300000000000000;
      *&v214 = 0xD00000000000001CLL;
      *(&v214 + 1) = 0x80000001C09CBA30;
      v215 = xmmword_1C0999ED0;
      *&v216 = 0;
      WORD4(v216) = 1;
      HIDWORD(v216) = 0;
      v217[0] = 1;
      *&v217[4] = 0;
      v217[8] = 1;
      *&v217[16] = 0;
      v217[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v106 = v26[13];

      swift_unownedRetain();
      sub_1C0518B04(&v213, &v224);
      v107 = swift_isUniquelyReferenced_nonNull_native();
      v26[13] = v106;
      if ((v107 & 1) == 0)
      {
        v106 = sub_1C0519CF8(0, *(v106 + 2) + 1, 1, v106);
        v26[13] = v106;
      }

      v109 = *(v106 + 2);
      v108 = *(v106 + 3);
      if (v109 >= v108 >> 1)
      {
        v106 = sub_1C0519CF8((v108 > 1), v109 + 1, 1, v106);
      }

      *(v106 + 2) = v109 + 1;
      v110 = &v106[96 * v109];
      v111 = v214;
      *(v110 + 2) = v213;
      *(v110 + 3) = v111;
      v112 = v215;
      v113 = v216;
      v114 = *v217;
      *(v110 + 105) = *&v217[9];
      *(v110 + 5) = v113;
      *(v110 + 6) = v114;
      *(v110 + 4) = v112;
      v26[13] = v106;
      swift_endAccess();

      sub_1C0518B60(&v213);

      swift_unownedRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17270, &qword_1C0970A58);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_1C096E0C0;
      strcpy((v115 + 32), "usoRedactionId");
      *(v115 + 47) = -18;
      *(v115 + 48) = xmmword_1C0999EE0;
      *(v115 + 64) = 0;
      *(v115 + 68) = 1;
      *(v115 + 72) = 0;
      *(v115 + 76) = 1;
      *&v224 = 0xD00000000000001CLL;
      *(&v224 + 1) = 0x80000001C09CBA30;
      v225[0] = 7;
      memset(&v225[8], 0, 96);
      *&v225[104] = v115;
      LODWORD(v226) = 0;
      BYTE4(v226) = 1;
      DWORD2(v226) = 0;
      BYTE12(v226) = 1;
      v227 = MEMORY[0x1E69E7CC0];
      *v228 = 0;
      v228[8] = 3;
      *&v228[16] = 0;
      v228[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v116 = v26[15];

      swift_unownedRetain();
      sub_1C0521E78(&v224, &v222);
      v117 = swift_isUniquelyReferenced_nonNull_native();
      v26[15] = v116;
      if ((v117 & 1) == 0)
      {
        v116 = sub_1C0522E00(0, *(v116 + 2) + 1, 1, v116);
        v26[15] = v116;
      }

      v119 = *(v116 + 2);
      v118 = *(v116 + 3);
      if (v119 >= v118 >> 1)
      {
        v116 = sub_1C0522E00((v118 > 1), v119 + 1, 1, v116);
        v26[15] = v116;
      }

      goto LABEL_55;
    }

    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
    sub_1C0514A70(&v229);
    swift_unownedRetainStrong();
    v131 = *(*(&v19 + 1) + 64);
    v130 = *(*(&v19 + 1) + 72);

    if (qword_1ED5BDED8 != -1)
    {
      swift_once();
    }

    if (__PAIR128__(v130, v131) == xmmword_1ED5BDEE0)
    {
    }

    else
    {
      v132 = sub_1C095DF3C();

      if ((v132 & 1) == 0)
      {
        goto LABEL_64;
      }
    }

    swift_unownedRetainStrong();
    v134 = *(*(&v19 + 1) + 24);
    v133 = *(*(&v19 + 1) + 32);
    v135 = *(*(&v19 + 1) + 40);
    sub_1C0514B20(v134, v133, *(*(&v19 + 1) + 40));

    if (v135 == 255)
    {
      goto LABEL_64;
    }

    if (v135)
    {
      sub_1C05144FC(v134, v133, v135);
LABEL_64:

      swift_unownedRelease();
      goto LABEL_65;
    }

    swift_unownedRelease();
    if ((v133 & 1) == 0)
    {
      type metadata accessor for Graph();
      swift_allocObject();
      v167 = Graph.init()();
      swift_beginAccess();
      v168 = v167[4];
      swift_unownedRetainStrong();
      if (!v168)
      {
        goto LABEL_112;
      }

      swift_unownedRetain();

      sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);
      sub_1C0514A70(&v229);
      v222 = v19;
      v169 = Node.int64Value.getter();
      v171 = v170;

      swift_unownedRelease();
      v224 = xmmword_1ED5BDEE0;
      *v225 = xmmword_1ED5BDEF0;
      *&v225[16] = qword_1ED5BDF00;

      v172 = sub_1C0514CE0(&v224, v169, v171 & 1, 0, MEMORY[0x1E69E7CC0]);

      swift_unownedRetain();

      swift_unownedRetainStrong();
      v173 = *(v168 + 56);

      swift_unownedRetainStrong();
      v174 = *(v172 + 56);

      *&v218 = v173;
      *(&v218 + 1) = v174;
      LODWORD(v219) = 0;
      *(&v219 + 1) = 0x797469746E65;
      *&v220 = 0xE600000000000000;
      *(&v220 + 1) = 0x746E656D75677241;
      v221 = 0xE800000000000000;
      swift_beginAccess();
      v175 = v167[2];

      sub_1C0514AC4(&v218, &v224);
      v176 = swift_isUniquelyReferenced_nonNull_native();
      v167[2] = v175;
      if ((v176 & 1) == 0)
      {
        v175 = sub_1C0514F9C(0, *(v175 + 2) + 1, 1, v175);
        v167[2] = v175;
      }

      v178 = *(v175 + 2);
      v177 = *(v175 + 3);
      if (v178 >= v177 >> 1)
      {
        v175 = sub_1C0514F9C((v177 > 1), v178 + 1, 1, v175);
        v167[2] = v175;
      }

      *(v175 + 2) = v178 + 1;
      v179 = &v175[64 * v178];
      v180 = v218;
      v181 = v219;
      v182 = v221;
      *(v179 + 4) = v220;
      *(v179 + 5) = v182;
      *(v179 + 2) = v180;
      *(v179 + 3) = v181;
      v167[2] = v175;
      swift_endAccess();
      sub_1C0514A70(&v218);
      swift_unownedRetainStrong();
      v183 = v26[7];

      v184 = *a2;

      v185 = swift_isUniquelyReferenced_nonNull_native();
      *a2 = v184;
      if ((v185 & 1) == 0)
      {
        v184 = sub_1C0578DE8(0, v184[2] + 1, 1, v184);
        *a2 = v184;
      }

      v187 = v184[2];
      v186 = v184[3];
      if (v187 >= v186 >> 1)
      {
        v184 = sub_1C0578DE8((v186 > 1), v187 + 1, 1, v184);
      }

      v184[2] = v187 + 1;
      v188 = &v184[2 * v187];
      v188[4] = v183;
      v188[5] = v167;
      *a2 = v184;
      *&v213 = 6369134;
      *(&v213 + 1) = 0xE300000000000000;
      *&v214 = 0xD00000000000001CLL;
      *(&v214 + 1) = 0x80000001C09CBA30;
      v215 = xmmword_1C0999ED0;
      *&v216 = 0;
      WORD4(v216) = 1;
      HIDWORD(v216) = 0;
      v217[0] = 1;
      *&v217[4] = 0;
      v217[8] = 1;
      *&v217[16] = 0;
      v217[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v189 = v26[13];

      swift_unownedRetain();
      sub_1C0518B04(&v213, &v224);
      v190 = swift_isUniquelyReferenced_nonNull_native();
      v26[13] = v189;
      if ((v190 & 1) == 0)
      {
        v189 = sub_1C0519CF8(0, *(v189 + 2) + 1, 1, v189);
        v26[13] = v189;
      }

      v192 = *(v189 + 2);
      v191 = *(v189 + 3);
      if (v192 >= v191 >> 1)
      {
        v189 = sub_1C0519CF8((v191 > 1), v192 + 1, 1, v189);
      }

      *(v189 + 2) = v192 + 1;
      v193 = &v189[96 * v192];
      v194 = v214;
      *(v193 + 2) = v213;
      *(v193 + 3) = v194;
      v195 = v215;
      v196 = v216;
      v197 = *v217;
      *(v193 + 105) = *&v217[9];
      *(v193 + 5) = v196;
      *(v193 + 6) = v197;
      *(v193 + 4) = v195;
      v26[13] = v189;
      swift_endAccess();

      sub_1C0518B60(&v213);

      swift_unownedRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17270, &qword_1C0970A58);
      v198 = swift_allocObject();
      *(v198 + 16) = xmmword_1C096E0C0;
      strcpy((v198 + 32), "usoRedactionId");
      *(v198 + 47) = -18;
      *(v198 + 48) = xmmword_1C0999EE0;
      *(v198 + 64) = 0;
      *(v198 + 68) = 1;
      *(v198 + 72) = 0;
      *(v198 + 76) = 1;
      *&v224 = 0xD00000000000001CLL;
      *(&v224 + 1) = 0x80000001C09CBA30;
      v225[0] = 7;
      memset(&v225[8], 0, 96);
      *&v225[104] = v198;
      LODWORD(v226) = 0;
      BYTE4(v226) = 1;
      DWORD2(v226) = 0;
      BYTE12(v226) = 1;
      v227 = MEMORY[0x1E69E7CC0];
      *v228 = 0;
      v228[8] = 3;
      *&v228[16] = 0;
      v228[24] = 1;
      swift_unownedRetainStrong();
      swift_beginAccess();
      v116 = v26[15];

      swift_unownedRetain();
      sub_1C0521E78(&v224, &v222);
      v199 = swift_isUniquelyReferenced_nonNull_native();
      v26[15] = v116;
      if ((v199 & 1) == 0)
      {
        v116 = sub_1C0522E00(0, *(v116 + 2) + 1, 1, v116);
        v26[15] = v116;
      }

      v119 = *(v116 + 2);
      v200 = *(v116 + 3);
      if (v119 >= v200 >> 1)
      {
        v116 = sub_1C0522E00((v200 > 1), v119 + 1, 1, v116);
        v26[15] = v116;
      }

LABEL_55:
      *(v116 + 2) = v119 + 1;
      v120 = &v116[192 * v119];
      v121 = v224;
      v122 = *v225;
      v123 = *&v225[32];
      *(v120 + 4) = *&v225[16];
      *(v120 + 5) = v123;
      *(v120 + 2) = v121;
      *(v120 + 3) = v122;
      v124 = *&v225[48];
      v125 = *&v225[64];
      v126 = *&v225[96];
      *(v120 + 8) = *&v225[80];
      *(v120 + 9) = v126;
      *(v120 + 6) = v124;
      *(v120 + 7) = v125;
      v127 = v226;
      v128 = v227;
      v129 = *v228;
      *(v120 + 201) = *&v228[9];
      *(v120 + 11) = v128;
      *(v120 + 12) = v129;
      *(v120 + 10) = v127;
      v26[15] = v116;
      swift_endAccess();

      swift_unownedRelease();

      swift_unownedRelease();

      sub_1C05755CC(&v224);

      swift_unownedRelease();
    }

LABEL_65:
    sub_1C05149F8(&v229, &v224, &unk_1EBE17410, qword_1C0970CB0);

    swift_unownedRelease();
    v212 = *&v230[8];
    v206 = *&v230[24];
    v136 = *&v230[40];
    v137 = *(swift_unownedRetainStrong() + 56);

    swift_unownedRetainStrong();
    v138 = v26[7];

    *&v222 = v137;
    *(&v222 + 1) = v138;
    *v223 = 0;
    *&v223[8] = v212;
    *&v223[24] = v206;
    *&v223[40] = v136;
    swift_beginAccess();
    v139 = *(v209 + 16);
    sub_1C0514AC4(&v229, &v224);
    sub_1C0514AC4(&v222, &v224);
    v140 = swift_isUniquelyReferenced_nonNull_native();
    *(v209 + 16) = v139;
    if ((v140 & 1) == 0)
    {
      v139 = sub_1C0514F9C(0, *(v139 + 2) + 1, 1, v139);
      *(v209 + 16) = v139;
    }

    v142 = *(v139 + 2);
    v141 = *(v139 + 3);
    if (v142 >= v141 >> 1)
    {
      v139 = sub_1C0514F9C((v141 > 1), v142 + 1, 1, v139);
    }

    *(v139 + 2) = v142 + 1;
    v143 = &v139[64 * v142];
    v144 = v222;
    v145 = *v223;
    v146 = *&v223[32];
    *(v143 + 4) = *&v223[16];
    *(v143 + 5) = v146;
    *(v143 + 2) = v144;
    *(v143 + 3) = v145;
    *(v209 + 16) = v139;
    swift_endAccess();
    sub_1C0514A70(&v229);
    sub_1C0514A70(&v222);
    *&v218 = v20;
    *(&v218 + 1) = v26;
    v54 = v19;
    swift_beginAccess();
    v147 = *(v19 + 16);
    v148 = *(v147 + 16);
    if (v148)
    {

      swift_unownedRetain();

      swift_beginAccess();
      v54 = (v148 - 1);
      v149 = 32;
      v150 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v151 = *(v147 + v149 + 48);
        v153 = *(v147 + v149);
        v152 = *(v147 + v149 + 16);
        *&v225[16] = *(v147 + v149 + 32);
        *&v225[32] = v151;
        v224 = v153;
        *v225 = v152;
        v154 = v153;
        swift_unownedRetainStrong();
        v155 = *(*(&v19 + 1) + 56);
        sub_1C0514AC4(&v224, &v213);

        if (v154 == v155 && (v156 = *(v19 + 24), *(v156 + 16)) && (v157 = sub_1C0514E38(), (v158 & 1) != 0))
        {
          v159 = *(*(v156 + 56) + 8 * v157);

          swift_unownedRetain();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_1C05198E0(0, v150[2] + 1, 1, v150);
          }

          v161 = v150[2];
          v160 = v150[3];
          if (v161 >= v160 >> 1)
          {
            v150 = sub_1C05198E0((v160 > 1), v161 + 1, 1, v150);
          }

          v215 = *&v225[16];
          v216 = *&v225[32];
          v162 = v224;
          v213 = v224;
          v214 = *v225;
          v150[2] = v161 + 1;
          v163 = &v150[10 * v161];
          v164 = v214;
          v165 = v216;
          *(v163 + 4) = v215;
          *(v163 + 5) = v165;
          *(v163 + 2) = v162;
          *(v163 + 3) = v164;
          v163[12] = v19;
          v163[13] = v159;
          if (!v54)
          {
LABEL_82:

            goto LABEL_84;
          }
        }

        else
        {
          sub_1C0514A70(&v224);
          if (!v54)
          {
            goto LABEL_82;
          }
        }

        --v54;
        v149 += 64;
      }
    }

    swift_unownedRetain();
    v150 = MEMORY[0x1E69E7CC0];
LABEL_84:
    v13 = v207 + 1;
    v166 = sub_1C0519EEC(v150);

    sub_1C077D61C(a1, a2, a3, &v218, v166);

    sub_1C0519E84(&v229);

    swift_unownedRelease();
    if (v207 + 1 == v204)
    {

      goto LABEL_108;
    }

    v12 = 1;
  }

  while (v13 < *(v202 + 16));
  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);

  __break(1u);
}