uint64_t sub_245F8BCE8(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_245F8BD84(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = sub_245F8E498(MEMORY[0x277D84F90]);
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return v2;
}

uint64_t sub_245F8BDE4(void *a1)
{
  v2 = *(v1 + 16);
  v3 = sub_246091C04();
  if (!*(v2 + 16))
  {

    return 0;
  }

  v5 = sub_245F8D968(v3, v4);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  sub_245F8E5C8(*(v2 + 56) + 32 * v5, v10);
  sub_245F8E624(&qword_27EE39ED0, &unk_246096480);
  if (swift_dynamicCast())
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_245F8BEA0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_2460917D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*v1 + 128);
  v9 = v8(v5);
  if (!v9)
  {
    goto LABEL_36;
  }

  v10 = v9;
  v11 = sub_246091C04();
  if (!*(v10 + 16))
  {

    goto LABEL_35;
  }

  v82 = v7;
  v13 = sub_245F8D968(v11, v12);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_35;
  }

  sub_245F8E5C8(*(v10 + 56) + 32 * v13, &v85);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_36:
    v44 = *(v4 + 56);
    v45 = a1;
    return v44(v45, 1, 1, v3);
  }

  v16 = v83;
  v17 = v84;
  v18 = (v8)();
  if (!v18)
  {
LABEL_35:

    goto LABEL_36;
  }

  v19 = v18;
  v79 = v16;
  v20 = sub_246091C04();
  if (!*(v19 + 16))
  {

    goto LABEL_35;
  }

  v80 = v17;
  v81 = a1;
  v22 = sub_245F8D968(v20, v21);
  v24 = v23;

  if ((v24 & 1) == 0)
  {

    goto LABEL_39;
  }

  sub_245F8E5C8(*(v19 + 56) + 32 * v22, &v85);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    a1 = v81;
    goto LABEL_36;
  }

  v25 = v84;
  v78 = v83;
  v26 = (v8)();
  if (!v26)
  {
LABEL_42:
    v46 = 808464430;
LABEL_43:
    v47 = 0xE400000000000000;
LABEL_44:
    v48 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v49 = sub_246091BD4();
    [v48 setDateFormat_];

    v85 = v79;
    v86 = v80;

    MEMORY[0x24C196640](v46, v47);

    MEMORY[0x24C196640](v78, v25);

    v50 = sub_246091BD4();

    v51 = [v48 dateFromString_];

    if (v51)
    {
      v52 = v82;
      sub_246091794();

      v53 = v81;
      (*(v4 + 32))(v81, v52, v3);
      return (*(v4 + 56))(v53, 0, 1, v3);
    }

    v44 = *(v4 + 56);
    v45 = v81;
    return v44(v45, 1, 1, v3);
  }

  v27 = v26;
  v28 = sub_246091C04();
  if (!*(v27 + 16))
  {

    goto LABEL_41;
  }

  v30 = sub_245F8D968(v28, v29);
  v32 = v31;

  if ((v32 & 1) == 0)
  {
LABEL_41:

    goto LABEL_42;
  }

  sub_245F8E5C8(*(v27 + 56) + 32 * v30, &v85);

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_42;
  }

  result = v84;
  v34 = HIBYTE(v84) & 0xF;
  v35 = v83 & 0xFFFFFFFFFFFFLL;
  if ((v84 & 0x2000000000000000) != 0)
  {
    v36 = HIBYTE(v84) & 0xF;
  }

  else
  {
    v36 = v83 & 0xFFFFFFFFFFFFLL;
  }

  if (!v36)
  {
    v46 = 808464430;

    goto LABEL_43;
  }

  if ((v84 & 0x1000000000000000) != 0)
  {
    v40 = sub_245F8DA98(v83, v84, 10);
    v75 = v74;

    if ((v75 & 1) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_42;
  }

  if ((v84 & 0x2000000000000000) == 0)
  {
    if ((v83 & 0x1000000000000000) != 0)
    {
      v37 = ((v84 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v76 = v84;
      v37 = sub_2460922B4();
      result = v76;
    }

    v38 = *v37;
    if (v38 == 43)
    {
      if (v35 >= 1)
      {
        v57 = v35 - 1;
        if (v35 != 1)
        {
          v40 = 0;
          if (!v37)
          {
            goto LABEL_89;
          }

          v58 = v37 + 1;
          while (1)
          {
            v59 = *v58 - 48;
            if (v59 > 9)
            {
              break;
            }

            v60 = 10 * v40;
            if ((v40 * 10) >> 64 != (10 * v40) >> 63)
            {
              break;
            }

            v40 = v60 + v59;
            if (__OFADD__(v60, v59))
            {
              break;
            }

            ++v58;
            if (!--v57)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_88;
      }

      goto LABEL_97;
    }

    if (v38 == 45)
    {
      if (v35 >= 1)
      {
        v39 = v35 - 1;
        if (v35 != 1)
        {
          v40 = 0;
          if (!v37)
          {
            goto LABEL_89;
          }

          v41 = v37 + 1;
          while (1)
          {
            v42 = *v41 - 48;
            if (v42 > 9)
            {
              break;
            }

            v43 = 10 * v40;
            if ((v40 * 10) >> 64 != (10 * v40) >> 63)
            {
              break;
            }

            v40 = v43 - v42;
            if (__OFSUB__(v43, v42))
            {
              break;
            }

            ++v41;
            if (!--v39)
            {
              goto LABEL_87;
            }
          }
        }

        goto LABEL_88;
      }

      __break(1u);
      goto LABEL_96;
    }

    if (v35)
    {
      v40 = 0;
      if (!v37)
      {
        goto LABEL_89;
      }

      while (1)
      {
        v64 = *v37 - 48;
        if (v64 > 9)
        {
          break;
        }

        v65 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          break;
        }

        v40 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          break;
        }

        ++v37;
        if (!--v35)
        {
          goto LABEL_87;
        }
      }
    }

    goto LABEL_88;
  }

  v85 = v83;
  v86 = v84 & 0xFFFFFFFFFFFFFFLL;
  if (v83 != 43)
  {
    if (v83 == 45)
    {
      if (!v34)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

      v37 = (v34 - 1);
      if (v34 != 1)
      {
        v40 = 0;
        v54 = &v85 + 1;
        while (1)
        {
          v55 = *v54 - 48;
          if (v55 > 9)
          {
            break;
          }

          v56 = 10 * v40;
          if ((v40 * 10) >> 64 != (10 * v40) >> 63)
          {
            break;
          }

          v40 = v56 - v55;
          if (__OFSUB__(v56, v55))
          {
            break;
          }

          ++v54;
          if (!--v37)
          {
            goto LABEL_89;
          }
        }
      }
    }

    else if (v34)
    {
      v40 = 0;
      v66 = &v85;
      while (1)
      {
        v67 = *v66 - 48;
        if (v67 > 9)
        {
          break;
        }

        v68 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          break;
        }

        v40 = v68 + v67;
        if (__OFADD__(v68, v67))
        {
          break;
        }

        v66 = (v66 + 1);
        if (!--v34)
        {
LABEL_87:
          LOBYTE(v37) = 0;
          goto LABEL_89;
        }
      }
    }

LABEL_88:
    v40 = 0;
    LOBYTE(v37) = 1;
LABEL_89:
    LOBYTE(v83) = v37;
    v69 = v37;

    if ((v69 & 1) == 0)
    {
LABEL_90:
      sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
      v70 = swift_allocObject();
      v71 = MEMORY[0x277D83B88];
      *(v70 + 16) = xmmword_246096460;
      v72 = MEMORY[0x277D83C10];
      *(v70 + 56) = v71;
      *(v70 + 64) = v72;
      *(v70 + 32) = v40;
      v46 = sub_246091C24();
      v47 = v73;
      goto LABEL_44;
    }

    goto LABEL_42;
  }

  if (v34)
  {
    v37 = (v34 - 1);
    if (v34 != 1)
    {
      v40 = 0;
      v61 = &v85 + 1;
      while (1)
      {
        v62 = *v61 - 48;
        if (v62 > 9)
        {
          break;
        }

        v63 = 10 * v40;
        if ((v40 * 10) >> 64 != (10 * v40) >> 63)
        {
          break;
        }

        v40 = v63 + v62;
        if (__OFADD__(v63, v62))
        {
          break;
        }

        ++v61;
        if (!--v37)
        {
          goto LABEL_89;
        }
      }
    }

    goto LABEL_88;
  }

LABEL_98:
  __break(1u);
  return result;
}

unint64_t sub_245F8C668(void *a1)
{
  v2 = (*(*v1 + 128))();
  if (!v2)
  {
    goto LABEL_9;
  }

  v3 = v2;
  v4 = sub_246091C04();
  if (!*(v3 + 16))
  {

    goto LABEL_8;
  }

  v6 = sub_245F8D968(v4, v5);
  v8 = v7;

  if ((v8 & 1) == 0)
  {
LABEL_8:

LABEL_9:
    v10 = 0;
    v11 = 1;
    return v10 | (v11 << 32);
  }

  sub_245F8E5C8(*(v3 + 56) + 32 * v6, v14);

  v9 = swift_dynamicCast();
  v10 = v13;
  v11 = v9 ^ 1;
  if (!v9)
  {
    v10 = 0;
  }

  return v10 | (v11 << 32);
}

unint64_t sub_245F8C770()
{
  v1 = (*(*v0 + 152))();
  if ((v1 & 0x100000000) != 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = (*(*v0 + 160))();
  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  else
  {
    return __PAIR64__(v3, v2);
  }
}

id sub_245F8C838()
{
  v1 = (*(*v0 + 136))();
  if (v1)
  {
    v2 = v1;
    result = OCNonModularSPI_AppleMakerNote_FocusAccelerometerVector();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = sub_246091C04();
    v7 = v6;

    if (*(v2 + 16))
    {
      v8 = sub_245F8D968(v5, v7);
      v10 = v9;

      if (v10)
      {
        sub_245F8E5C8(*(v2 + 56) + 32 * v8, v15);

        sub_245F8E66C();
        if (swift_dynamicCast())
        {
          v11 = [v14 objectAtIndexedSubscript_];
          sub_246092174();
          swift_unknownObjectRelease();
          if (swift_dynamicCast() & 1) != 0 && (v12 = [v14 objectAtIndexedSubscript_], sub_246092174(), swift_unknownObjectRelease(), (swift_dynamicCast()))
          {
            v13 = [v14 objectAtIndexedSubscript_];
            sub_246092174();

            swift_unknownObjectRelease();
            if (swift_dynamicCast())
            {
              return v14;
            }
          }

          else
          {
          }
        }

        return 0;
      }
    }

    else
    {
    }
  }

  return 0;
}

void *sub_245F8CA6C()
{
  result = (*(*v0 + 136))();
  if (result)
  {
    v2 = result;
    result = OCNonModularSPI_AppleMakerNote_Timestamp();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v3 = result;
    v4 = sub_246091C04();
    v6 = v5;

    if (v2[2])
    {
      v7 = sub_245F8D968(v4, v6);
      v9 = v8;

      if (v9)
      {
        sub_245F8E5C8(v2[7] + 32 * v7, v11);

        if (swift_dynamicCast())
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  return result;
}

void *sub_245F8CB8C()
{
  v1 = (*(*v0 + 136))();
  if (!v1)
  {
    goto LABEL_10;
  }

  v2 = v1;
  result = OCNonModularSPI_AppleMakerNote_Camera();
  if (result)
  {
    v4 = result;
    v5 = sub_246091C04();
    v7 = v6;

    if (*(v2 + 16))
    {
      v8 = sub_245F8D968(v5, v7);
      v10 = v9;

      if (v10)
      {
        sub_245F8E5C8(*(v2 + 56) + 32 * v8, v15);

        v11 = swift_dynamicCast();
        v12 = v14;
        v13 = v11 ^ 1;
        if (!v11)
        {
          v12 = 0;
        }

        goto LABEL_11;
      }
    }

    else
    {
    }

LABEL_10:
    v12 = 0;
    v13 = 1;
LABEL_11:
    v15[0] = v13;
    return (v12 | (v13 << 32));
  }

  __break(1u);
  return result;
}

uint64_t sub_245F8CCB4()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v48 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v47 - v9;
  v11 = sub_245FA3174();
  v12 = v3;
  v13 = *(v3 + 16);
  v53 = v11;
  v54 = v3 + 16;
  v50 = v2;
  v52 = v13;
  (v13)(v10);
  v14 = sub_2460918D4();
  v15 = sub_246091FA4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_245F8A000, v14, v15, "metadata: {", v16, 2u);
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  v17 = *(v12 + 8);
  v18 = v50;
  v55 = v12 + 8;
  v51 = v17;
  v17(v10, v50);
  v19 = -1 << *(*(v1 + 16) + 32);
  v20 = *(v1 + 16);
  v23 = *(v20 + 64);
  v21 = v20 + 64;
  v22 = v23;
  v24 = ~v19;
  v25 = -v19;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v72 = *(v1 + 16);
  v73 = v21;
  v74 = v24;
  v75 = 0;
  v76 = v26 & v22;
  v77 = 0;

  sub_245F8D20C(&v64);
  v68 = v64;
  v69 = v65;
  *(&v27 + 1) = *(&v66 + 1);
  v70 = v66;
  v71 = v67;
  v28 = v65;
  if (v65)
  {
    *&v27 = 136446466;
    v49 = v27;
    do
    {
      v39 = v68;
      sub_245F8E6C0((&v69 + 8), v63);
      *&v64 = *(&v39 + 1);
      *(&v64 + 1) = v28;
      sub_245F8E6C0(v63, &v65);
      v52(v7, v53, v18);
      sub_245F8E7A4(&v64, v62, &qword_27EE39EE8, &qword_246096490);
      v40 = sub_2460918D4();
      v41 = sub_246091FA4();
      if (os_log_type_enabled(v40, v41))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        v61 = v30;
        *v29 = v49;
        v59[0] = v39;
        v31 = sub_2460923D4();
        v33 = sub_245F8D3C0(v31, v32, &v61);

        *(v29 + 4) = v33;
        *(v29 + 12) = 2082;
        sub_245F8E7A4(v62, v59, &qword_27EE39EE8, &qword_246096490);
        v56 = v59[0];
        v57 = v59[1];
        sub_245F8E6C0(&v60, &v58);
        sub_245F8E624(&qword_27EE39EE8, &qword_246096490);
        v34 = sub_246091C54();
        v36 = v35;
        sub_245F8E744(v62, &qword_27EE39EE8, &qword_246096490);
        v37 = sub_245F8D3C0(v34, v36, &v61);

        *(v29 + 14) = v37;
        _os_log_impl(&dword_245F8A000, v40, v41, "%{public}s -> %{public}s", v29, 0x16u);
        swift_arrayDestroy();
        v38 = v30;
        v18 = v50;
        MEMORY[0x24C1989D0](v38, -1, -1);
        MEMORY[0x24C1989D0](v29, -1, -1);
      }

      else
      {

        sub_245F8E744(v62, &qword_27EE39EE8, &qword_246096490);
      }

      v51(v7, v18);
      sub_245F8E744(&v64, &qword_27EE39EE8, &qword_246096490);
      sub_245F8D20C(&v64);
      v68 = v64;
      v69 = v65;
      v70 = v66;
      v71 = v67;
      v28 = v65;
    }

    while (v65);
  }

  sub_245F8E6B8(v72);
  v42 = v48;
  v52(v48, v53, v18);
  v43 = sub_2460918D4();
  v44 = sub_246091FA4();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_245F8A000, v43, v44, "}  // metadata:", v45, 2u);
    MEMORY[0x24C1989D0](v45, -1, -1);
  }

  return (v51)(v42, v18);
}

uint64_t sub_245F8D20C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (!v7)
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v25 = 0u;
        v26 = 0u;
        v24 = 0u;
        *v1 = v3;
        v1[1] = v4;
        v1[2] = v6;
        v1[3] = v11;
        v1[4] = 0;
        goto LABEL_14;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  v8 = v1[3];
LABEL_10:
  v12 = (v7 - 1) & v7;
  v13 = __clz(__rbit64(v7)) | (v8 << 6);
  v14 = (*(v3 + 48) + 16 * v13);
  v16 = *v14;
  v15 = v14[1];
  sub_245F8E5C8(*(v3 + 56) + 32 * v13, &v21);
  *&v24 = v16;
  *(&v24 + 1) = v15;
  sub_245F8E6C0(&v21, &v25);
  v17 = *(&v24 + 1);
  *v1 = v3;
  v1[1] = v4;
  v1[2] = v6;
  v1[3] = v8;
  v1[4] = v12;

  if (v17)
  {
    v21 = v24;
    v22 = v25;
    v23 = v26;
    v19 = v1[5];
    if (!__OFADD__(v19, 1))
    {
      v1[5] = v19 + 1;
      *a1 = v19;
      v20 = v22;
      *(a1 + 8) = v21;
      *(a1 + 24) = v20;
      *(a1 + 40) = v23;
      return result;
    }

    goto LABEL_17;
  }

LABEL_14:
  result = sub_245F8E744(&v24, &qword_27EE39EF0, &qword_2460964D8);
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_245F8D380()
{

  return swift_deallocClassInstance();
}

unint64_t sub_245F8D3C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_245F8D48C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_245F8E5C8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_245F8E6F4(v11);
  return v7;
}

unint64_t sub_245F8D48C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_245F8D598(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_2460922B4();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_245F8D598(uint64_t a1, unint64_t a2)
{
  v3 = sub_245F8D5E4(a1, a2);
  sub_245F8D714(&unk_2858DD5D8);
  return v3;
}

void *sub_245F8D5E4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_245F8D800(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_2460922B4();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_246091D04();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_245F8D800(v10, 0);
        result = sub_246092264();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_245F8D714(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_245F8D874(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_245F8D800(uint64_t a1, uint64_t a2)
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

  sub_245F8E624(&unk_27EE3B0E0, "jX");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_245F8D874(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&unk_27EE3B0E0, "jX");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_245F8D968(uint64_t a1, uint64_t a2)
{
  sub_246092504();
  sub_246091C94();
  v4 = sub_246092544();

  return sub_245F8D9E0(a1, a2, v4);
}

unint64_t sub_245F8D9E0(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2460923E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unsigned __int8 *sub_245F8DA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_246091D74();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_245F8E024(result, v5);
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
      result = sub_2460922B4();
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

uint64_t sub_245F8E024(uint64_t a1, unint64_t a2)
{
  v2 = sub_246091D84();
  v6 = sub_245F8E0A4(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_245F8E0A4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_246092104();
    if (!v9 || (v10 = v9, v11 = sub_245F8D800(v9, 0), v12 = sub_245F8E1FC(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_246091C84();

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
      return sub_246091C84();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_2460922B4();
LABEL_4:

  return sub_246091C84();
}

unint64_t sub_245F8E1FC(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_245F8E41C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_246091D34();
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
          result = sub_2460922B4();
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

    result = sub_245F8E41C(v12, a6, a7);
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

    result = sub_246091D14();
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

unint64_t sub_245F8E41C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_246091D44();
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
    v5 = MEMORY[0x24C1966A0](15, a1 >> 16);
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

unint64_t sub_245F8E498(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3B250, qword_2460964E0);
    v3 = sub_246092384();
    v4 = a1 + 32;

    while (1)
    {
      sub_245F8E7A4(v4, &v13, &qword_27EE39EF8, &unk_246096ED0);
      v5 = v13;
      v6 = v14;
      result = sub_245F8D968(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_245F8E6C0(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_245F8E5C8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_245F8E624(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_245F8E66C()
{
  result = qword_27EE39EE0;
  if (!qword_27EE39EE0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE39EE0);
  }

  return result;
}

_OWORD *sub_245F8E6C0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_245F8E6F4(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_245F8E744(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = sub_245F8E624(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_245F8E7A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_245F8E624(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_245F8E80C(void *a1, double a2, double a3)
{
  if (a2 < a3)
  {
    *a1 = 0;
    result = (*(*v3 + 128))();
    if (result < 0)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v8 = result;
    if (result)
    {
      v9 = 0.0;
      v10 = 0;
      v11 = *(*v3 + 216);
      v12 = 1;
      v13 = result;
      while (v8 >= v13)
      {
        result = v11(v18, --v13);
        if ((v19 & 1) == 0)
        {
          if (v18[0] >= a2 && v18[0] < a3)
          {
            if (__OFADD__(v10++, 1))
            {
              goto LABEL_23;
            }

            v16 = v18[1];
            *a1 = v10;
            v17 = v9;
            if (v12)
            {
              v17 = v16;
            }

            if (v17 > v16)
            {
              v16 = v17;
            }

            v9 = v16;
            v12 = 0;
          }

          else if (v18[0] >= a3)
          {
            return *&v9;
          }
        }

        if (!v13)
        {
          return *&v9;
        }
      }

      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }
  }

  v9 = 0.0;
  return *&v9;
}

char *sub_245F8E95C(double *a1)
{
  v3 = *a1;
  v4 = (*(*v1 + 128))();
  if (v4 < 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4;
  if (v4)
  {
    v6 = *(*v1 + 216);
    v7 = MEMORY[0x277D84F90];
    v8 = v3;
    v9 = v4;
    while (v5 >= v9)
    {
      v6(v15, --v9);
      if ((v16 & 1) == 0)
      {
        v10 = v15[0];
        if (v3 < v15[0])
        {
          v11 = v15[1];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_245F8F6A0(0, *(v7 + 2) + 1, 1, v7);
          }

          v13 = *(v7 + 2);
          v12 = *(v7 + 3);
          if (v13 >= v12 >> 1)
          {
            v7 = sub_245F8F6A0((v12 > 1), v13 + 1, 1, v7);
          }

          *(v7 + 2) = v13 + 1;
          *&v7[8 * v13 + 32] = v11;
          if (v8 < v10)
          {
            v8 = v10;
          }
        }
      }

      if (!v9)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

LABEL_16:
  v7 = MEMORY[0x277D84F90];
  v8 = v3;
LABEL_17:
  *a1 = v8;
  return v7;
}

uint64_t sub_245F8EADC()
{
  sub_24608F6B8();

  return swift_deallocClassInstance();
}

uint64_t *sub_245F8EB0C(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  type metadata accessor for GyroCircularBuffer(0);
  swift_allocObject();
  v6[0] = v3;
  v6[1] = v4;
  return sub_24608EB44(a1, v6);
}

uint64_t sub_245F8EBA4(void *a1)
{
  v2 = v1;
  *(v1 + 16) = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  *(v1 + 40) = xmmword_246096500;
  *(v1 + 56) = 0x3FF0000000000000;
  if (![a1 isDeviceMotionAvailable])
  {
    goto LABEL_4;
  }

  type metadata accessor for GyroCircularBuffer(0);
  swift_allocObject();
  __asm { FMOV            V0.2D, #-1.0 }

  v14 = _Q0;
  v9 = sub_24608EB44(100, &v14);
  if (v9)
  {
    v10 = v9;
    [*(v2 + 16) setQualityOfService_];
    *(v2 + 24) = a1;
    v11 = a1;
    [v11 setGyroUpdateInterval_];
    sub_245F8E624(&qword_27EE39F00, &qword_246096530);
    v12 = swift_allocObject();
    *(v12 + 24) = 0;

    *(v12 + 16) = v10;

    *(v2 + 32) = v12;
  }

  else
  {
LABEL_4:

    type metadata accessor for MotionManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v2;
}

void sub_245F8ECF8()
{
  v1 = *(v0 + 24);
  if (([v1 isGyroActive] & 1) == 0)
  {
    v2 = *(v0 + 16);
    v4[4] = sub_245F8F89C;
    v4[5] = v0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_245F8FC20;
    v4[3] = &unk_2858DD600;
    v3 = _Block_copy(v4);

    [v1 startGyroUpdatesToQueue:v2 withHandler:v3];
    _Block_release(v3);
  }
}

void sub_245F8EDE0(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (!a2)
    {
      v11 = *(a3 + 32);
      MEMORY[0x28223BE20](v8);
      *&v24[-16] = a1;
      v12 = a1;
      os_unfair_lock_lock((v11 + 24));
      sub_245F8FB74((v11 + 16));
      os_unfair_lock_unlock((v11 + 24));

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v13 = a2;
  v14 = sub_245FA3174();
  (*(v7 + 16))(v10, v14, v6);
  v15 = a2;
  v16 = sub_2460918D4();
  v17 = sub_246091FB4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136446210;
    v25[3] = a2;
    v20 = a2;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v21 = sub_246091C54();
    v23 = sub_245F8D3C0(v21, v22, v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_245F8A000, v16, v17, "Motion Manager: Gyro error: %{public}s", v18, 0xCu);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
}

void sub_245F8F07C()
{
  v1 = *(v0 + 24);
  if (([v1 isDeviceMotionActive] & 1) == 0)
  {
    v2 = *(v0 + 16);
    v4[4] = sub_245F8F8BC;
    v4[5] = v0;
    v4[0] = MEMORY[0x277D85DD0];
    v4[1] = 1107296256;
    v4[2] = sub_245F8FC20;
    v4[3] = &unk_2858DD628;
    v3 = _Block_copy(v4);

    [v1 startDeviceMotionUpdatesToQueue:v2 withHandler:v3];
    _Block_release(v3);
  }
}

void sub_245F8F164(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a1)
  {
    if (!a2)
    {
      v11 = *(a3 + 32);
      MEMORY[0x28223BE20](v8);
      *&v24[-16] = a1;
      v12 = a1;
      os_unfair_lock_lock((v11 + 24));
      sub_245F8FAA8((v11 + 16));
      os_unfair_lock_unlock((v11 + 24));

      return;
    }
  }

  else if (!a2)
  {
    return;
  }

  v13 = a2;
  v14 = sub_245FA3174();
  (*(v7 + 16))(v10, v14, v6);
  v15 = a2;
  v16 = sub_2460918D4();
  v17 = sub_246091FB4();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v25[0] = v19;
    *v18 = 136446210;
    v25[3] = a2;
    v20 = a2;
    sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
    v21 = sub_246091C54();
    v23 = sub_245F8D3C0(v21, v22, v25);

    *(v18 + 4) = v23;
    _os_log_impl(&dword_245F8A000, v16, v17, "Motion Manager: DeviceMotion error: %{public}s", v18, 0xCu);
    sub_245F8E6F4(v19);
    MEMORY[0x24C1989D0](v19, -1, -1);
    MEMORY[0x24C1989D0](v18, -1, -1);
  }

  else
  {
  }

  (*(v7 + 8))(v10, v6);
}

void sub_245F8F3E8(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

id sub_245F8F488(SEL *a1, const char **a2)
{
  v4 = *(v2 + 24);
  result = [v4 *a1];
  if (result)
  {
    v6 = *a2;

    return [v4 v6];
  }

  return result;
}

uint64_t sub_245F8F4E0(void *a1, double a2, double a3)
{
  v7 = *(v3 + 32);
  os_unfair_lock_lock((v7 + 24));
  v13 = 0;
  v8 = (*(**(v7 + 16) + 288))(&v13, a2, a3);
  v10 = v9;
  v11 = v13;
  os_unfair_lock_unlock((v7 + 24));
  if ((v10 & 1) == 0)
  {
    *a1 = v11;
  }

  return v8;
}

uint64_t sub_245F8F598()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  (*(**(v1 + 16) + 224))(&v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_245F8F604()
{
  v1 = *(v0 + 32);
  os_unfair_lock_lock((v1 + 24));
  sub_245F8F8C4((v1 + 16), &v3);
  os_unfair_lock_unlock((v1 + 24));
  return v3;
}

uint64_t sub_245F8F658()
{

  return swift_deallocClassInstance();
}

char *sub_245F8F6A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE39F18, &qword_246096608);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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

id sub_245F8F7A4(void *a1)
{
  [a1 rotationRate];
  [a1 rotationRate];
  [a1 rotationRate];
  return [a1 timestamp];
}

uint64_t type metadata accessor for GyroCircularBuffer(uint64_t a1)
{
  result = qword_27EE3B2C0;
  if (!qword_27EE3B2C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245F8F8A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_245F8F8C4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = (*(*v4 + 296))(v2 + 40);
  result = swift_endAccess();
  *a2 = v5;
  return result;
}

__n128 initializeBufferWithCopyOfBuffer for OCGyroData(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for OCGyroData(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for OCGyroData(uint64_t result, int a2, int a3)
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

uint64_t sub_245F8FA10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F8FA30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_27EE39F08)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE39F08);
    }
  }
}

uint64_t sub_245F8FAA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 timestamp];
  v5 = v4;
  [v2 rotationRate];
  v10[0] = v5;
  v10[1] = sqrt(v8 * v8 + v6 * v6 + v7 * v7);
  return (*(*v3 + 264))(v10);
}

uint64_t sub_245F8FB74(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = v2;
  sub_245F8F7A4(v4);
  v6 = v5;
  v8 = v7;

  v10[0] = v6;
  v10[1] = v8;
  return (*(*v3 + 264))(v10);
}

uint64_t sub_245F8FC60(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245F8FCC0(uint64_t *a1))(uint64_t a1, char a2)
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
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245F8FD54;
}

void sub_245F8FD54(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245F8FE24(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v33 = a1;
  v34 = a2;
  v42[20] = *MEMORY[0x277D85DE8];
  v4 = sub_246092034();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x28223BE20](v4);
  v30 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246092004();
  MEMORY[0x28223BE20](v6);
  v7 = sub_246091A64();
  MEMORY[0x28223BE20](v7 - 8);
  *(v2 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v2 + 32) = xmmword_246096630;
  *(v2 + 48) = xmmword_246096620;
  v35 = 1;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 1;
  *(v2 + 240) = 0;
  v8 = sub_245F90360();
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  v9 = (v2 + 144);
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  v29[1] = "gyroCacheInterval";
  v29[2] = v8;
  *(v2 + 208) = 0u;
  sub_246091A34();
  *&v37 = MEMORY[0x277D84F90];
  sub_245F91E3C(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  sub_245F9218C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660, MEMORY[0x277D83970]);
  sub_2460921A4();
  (*(v31 + 104))(v30, *MEMORY[0x277D85260], v32);
  *(v2 + 248) = sub_246092074();
  sub_245F8E624(&qword_27EE39F20, &qword_246096668);
  inited = swift_initStackObject();
  v11 = *MEMORY[0x277CC4E30];
  *(inited + 32) = *MEMORY[0x277CC4E30];
  v12 = MEMORY[0x277D84CC0];
  *(inited + 16) = xmmword_246096640;
  *(inited + 40) = 1278226488;
  v13 = *MEMORY[0x277CC4EC8];
  v14 = MEMORY[0x277D83B88];
  *(inited + 80) = v33;
  v15 = MEMORY[0x277CC4DD8];
  *(inited + 64) = v12;
  *(inited + 72) = v13;
  v16 = *v15;
  *(inited + 104) = v14;
  *(inited + 112) = v16;
  *(inited + 144) = v14;
  *(inited + 120) = v34;
  v17 = v11;
  v18 = v13;
  v19 = v16;
  sub_245F91D00(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39F28, &qword_246096670);
  swift_arrayDestroy();
  type metadata accessor for CFString(0);
  sub_245F91E3C(&qword_27EE39F30, type metadata accessor for CFString, &unk_246096804);
  v20 = sub_246091B34();

  v42[0] = 0;
  result = CVPixelBufferPoolCreate(*MEMORY[0x277CBECE8], 0, v20, v42);
  if (result)
  {

    sub_245F91E84(v3 + 16);
    v22 = *(v3 + 192);
    v39 = *(v3 + 176);
    v40 = v22;
    v41 = *(v3 + 208);
    v23 = *(v3 + 160);
    v37 = *v9;
    v38 = v23;
    sub_245F91EAC(&v37);
LABEL_6:

    type metadata accessor for MaskingManager();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v24 = v42[0];
  if (v42[0])
  {
    *(v3 + 224) = v42[0];
    v36 = 0;
    *&v37 = 0;
    v25 = v24;
    result = OCMaskingCreate();
    if (result)
    {

      sub_245F91E84(v3 + 16);
      v26 = *(v3 + 192);
      v39 = *(v3 + 176);
      v40 = v26;
      v41 = *(v3 + 208);
      v27 = *(v3 + 160);
      v37 = *v9;
      v38 = v27;
      sub_245F91EAC(&v37);

      goto LABEL_6;
    }

    v28 = v37;
    if (v37)
    {

      *(v3 + 232) = v28;
      return v3;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_245F90360()
{
  result = qword_27EE3A220;
  if (!qword_27EE3A220)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A220);
  }

  return result;
}

uint64_t sub_245F903AC()
{
  result = OCMaskingDestroy();
  if (result)
  {
    __break(1u);
  }

  else
  {
    sub_245F91E84(v0 + 16);

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_245F9040C()
{
  if (*(v0 + 240))
  {
    return 1;
  }

  if (OCMaskingStart())
  {
    return 0;
  }

  result = 1;
  *(v0 + 240) = 1;
  return result;
}

uint64_t sub_245F90454()
{
  if (*(v0 + 240) == 1)
  {
    if (OCMaskingStop())
    {
      return 0;
    }

    *(v0 + 240) = 0;
  }

  return 1;
}

void sub_245F90494(double *a1, void *a2, uint64_t a3, uint64_t *a4, char a5, __n128 a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10)
{
  v48 = a9;
  v49 = a10;
  v46 = a7;
  v47 = a8;
  v45 = a6;
  v16 = sub_2460919F4();
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_246091A64();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 241) & 1) == 0)
  {
    v24 = *a1;
    if (*a1 - *(v10 + 40) >= 0.2)
    {
      v25 = *a4;
      v26 = *(a4 + 3);
      v42 = *(a4 + 2);
      v41 = v26;
      v27 = *(a4 + 5);
      v40 = *(a4 + 4);
      v39 = v27;
      *(v10 + 40) = v24;
      *(v10 + 241) = 1;
      v43 = *(v10 + 248);
      v44 = v21;
      v28 = swift_allocObject();
      swift_weakInit();
      v29 = swift_allocObject();
      *(v29 + 16) = v28;
      v30 = *(a3 + 16);
      *(v29 + 32) = *a3;
      *(v29 + 48) = v30;
      *(v29 + 64) = *(a3 + 32);
      *(v29 + 72) = a2;
      *(v29 + 80) = v24;
      v31 = v46;
      *(v29 + 96) = v45;
      *(v29 + 112) = v25;
      v32 = v47;
      v33 = v48;
      *(v29 + 128) = v31;
      *(v29 + 144) = v32;
      v34 = v49;
      *(v29 + 160) = v33;
      *(v29 + 176) = v34;
      v35 = v41;
      *(v29 + 192) = v42;
      *(v29 + 208) = v35;
      v36 = v39;
      *(v29 + 224) = v40;
      *(v29 + 240) = v36;
      *(v29 + 256) = a5 & 1;
      aBlock[4] = sub_245F91FB8;
      aBlock[5] = v29;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_245F913A4;
      aBlock[3] = &unk_2858DD7A0;
      v37 = _Block_copy(aBlock);

      v38 = a2;

      sub_246091A14();
      v51 = MEMORY[0x277D84F90];
      sub_245F91E3C(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245F9218C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680, MEMORY[0x277D83970]);
      sub_2460921A4();
      MEMORY[0x24C1969D0](0, v23, v18, v37);
      _Block_release(v37);
      (*(v50 + 8))(v18, v16);
      (*(v20 + 8))(v23, v44);
    }
  }
}

uint64_t sub_245F9089C(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, int a5, double a6, __n128 a7, __n128 a8, __n128 a9, float32x4_t a10, __n128 a11, __n128 a12, __n128 a13, uint64_t a14, uint64_t a15, uint64_t a16, __n128 a17, __int128 a18)
{
  *&v137 = a4;
  v138 = a12;
  v139 = a13;
  v135 = a10;
  v136 = a11;
  v133 = a8;
  v134 = a9;
  v141 = a7;
  v167 = *MEMORY[0x277D85DE8];
  v22 = sub_2460918F4();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v120 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  *&v140 = &v120 - v27;
  MEMORY[0x28223BE20](v28);
  v30 = &v120 - v29;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v32 = result;
    v123 = a5;
    v122 = v25;
    v130 = a18;
    v131 = a17;
    sub_24608FC58();
    OCSignPostsAriadneDbgCode();
    kdebug_trace();
    v142 = 1;
    *(v32 + 64) = 0u;
    *(v32 + 80) = 0u;
    v33 = v32 + 64;
    *(v32 + 96) = 0u;
    *(v32 + 112) = 0u;
    *(v32 + 128) = 1;
    v34 = *(v32 + 208);
    v166[3] = *(v32 + 192);
    v166[4] = v34;
    v35 = *(v32 + 176);
    v166[1] = *(v32 + 160);
    v166[2] = v35;
    v166[0] = *(v32 + 144);
    *(v32 + 176) = 0u;
    *(v32 + 192) = 0u;
    *(v32 + 208) = 0u;
    *(v32 + 144) = 0u;
    *(v32 + 160) = 0u;
    sub_245F91EAC(v166);
    v36 = sub_245FA3174();
    v37 = *(v23 + 16);
    v127 = v36;
    v128 = v23 + 16;
    v126 = v37;
    (v37)(v30);
    v38 = v23;
    v39 = sub_2460918D4();
    v40 = sub_246091FA4();
    v132 = v22;
    v41 = v40;
    v42 = os_log_type_enabled(v39, v40);
    v129 = a3;
    v125 = a2;
    if (v42)
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      *&v165[0] = v44;
      *v43 = 134349314;
      *(v43 + 4) = a6;
      *(v43 + 12) = 2082;
      v155 = v141;
      v124 = v38;
      sub_245F8E624(&qword_27EE3A2F0, &unk_246096850);
      v121 = v32;
      sub_245F9218C(&qword_27EE3A340, &qword_27EE3A2F0, &unk_246096850, MEMORY[0x277D84B08]);
      v45 = sub_246092404();
      v47 = sub_245F8D3C0(v45, v46, v165);

      *(v43 + 14) = v47;
      v32 = v121;
      _os_log_impl(&dword_245F8A000, v39, v41, "Masking Manager: Started bounding box compute at timestamp %{public}f with world point %{public}s", v43, 0x16u);
      sub_245F8E6F4(v44);
      MEMORY[0x24C1989D0](v44, -1, -1);
      v48 = v43;
      a3 = v129;
      MEMORY[0x24C1989D0](v48, -1, -1);

      v49 = v124;
      v50 = *(v124 + 8);
      v51 = v132;
      v50(v30, v132);
    }

    else
    {

      v50 = *(v38 + 8);
      v51 = v132;
      v50(v30, v132);
      v49 = v38;
    }

    v58 = sub_245F913F0(a3, v137, v141, v133, v134, v135, v136, v138, v139, v131, v52, v53, v54, v55, v56, v57, v130);
    v59 = v140;
    if (v58)
    {
      v126(v140, v127, v51);

      v60 = sub_2460918D4();
      v61 = sub_246091FC4();
      if (os_log_type_enabled(v60, v61))
      {
        v124 = v49;
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        *&v165[0] = v63;
        *v62 = 136446210;
        if (*(v32 + 128))
        {
LABEL_38:

          __break(1u);
          goto LABEL_39;
        }

        v64 = v63;
        v65 = *(v32 + 96);
        v141 = *(v32 + 112);
        v66 = *(v32 + 64);
        v138 = *(v32 + 80);
        v139 = v65;
        v137 = v66;

        v155 = v137;
        v156 = v138;
        v157 = v139;
        v158 = v141;
        type metadata accessor for simd_float4x4(0);
        v67 = sub_246091C54();
        v69 = sub_245F8D3C0(v67, v68, v165);

        *(v62 + 4) = v69;
        _os_log_impl(&dword_245F8A000, v60, v61, "Masking Manager: Successfully computed bounding box with transform = %{public}s", v62, 0xCu);
        sub_245F8E6F4(v64);
        MEMORY[0x24C1989D0](v64, -1, -1);
        MEMORY[0x24C1989D0](v62, -1, -1);

        v70 = v140;
        v51 = v132;
      }

      else
      {

        v70 = v59;
      }

      v50(v70, v51);
      if (v123)
      {
        v155.n128_u64[0] = 0;
        v156 = 0u;
        v157 = 0u;
        v158 = 0u;
        memset(v159, 0, 28);
        result = OCMaskingGetDebugInfo();
        if (result)
        {
          memset(v165, 0, sizeof(v165));
          sub_245F9215C(v165);
          v126(v122, v127, v51);
          v82 = sub_2460918D4();
          v83 = sub_246091FB4();
          if (os_log_type_enabled(v82, v83))
          {
            v84 = swift_slowAlloc();
            *v84 = 0;
            _os_log_impl(&dword_245F8A000, v82, v83, "Masking Manager: Failed to get masking debug info!", v84, 2u);
            MEMORY[0x24C1989D0](v84, -1, -1);
          }

          v85 = (v50)(v122, v51);
          if ((*(*v32 + 168))(v85))
          {
            v87 = v86;
            ObjectType = swift_getObjectType();
            v89 = *(v33 + 48);
            v148[2] = *(v33 + 32);
            v148[3] = v89;
            v90 = *(v33 + 16);
            v148[0] = *v33;
            v148[1] = v90;
            v91 = *(v33 + 96);
            v92 = *(v33 + 128);
            v152 = *(v33 + 112);
            v153 = v92;
            v93 = *(v33 + 128);
            v154 = *(v33 + 144);
            v94 = *(v33 + 96);
            v150 = *(v33 + 80);
            v151 = v94;
            v145 = v152;
            v146 = v93;
            v147 = *(v33 + 144);
            v149 = *(v33 + 64);
            v143 = v150;
            v144 = v91;
            v95 = *(v87 + 8);
            sub_245F8E7A4(&v150, &v160, &qword_27EE3AB10, &qword_246096678);
            v95(v148, &v143, v125, v129, ObjectType, v87);

            swift_unknownObjectRelease();
            v162 = v145;
            v163 = v146;
            v164 = v147;
            v160 = v143;
            v161 = v144;
            v96 = &v160;
            return sub_245F91EAC(v96);
          }
        }

        v97 = v155.n128_u64[0];
        if (!v155.n128_u64[0])
        {
LABEL_39:
          __break(1u);
          return result;
        }

        v98 = v32;
        type metadata accessor for OCDataBuffer();
        v99 = sub_246091194(v97);
        sub_246022048(v99, 0, v165);

        v139 = *(&v165[1] + 8);
        v140 = *(v165 + 8);
        v137 = *(&v165[3] + 8);
        v138 = *(&v165[2] + 8);
        v100 = *&v165[0];
        v101 = *(&v165[4] + 1);
        v160 = 0u;
        v161 = 0u;
        v162 = 0u;
        v163 = 0u;
        v164 = 0u;
        sub_245F9215C(&v160);
        if (v100 && DWORD2(v159[1]))
        {
          v102 = 0;
          v103 = 4 * DWORD2(v159[1]);
          v141 = xmmword_246096650;
          while (*&v159[1])
          {
            if (!v100)
            {
              __break(1u);
              break;
            }

            v104 = *(*&v159[1] + v102);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v100 = sub_245F91CEC(v100);
            }

            if (*(v100 + 2) <= v104)
            {
              __break(1u);
            }

            *&v100[48 * v104 + 64] = v141;
            v102 += 4;
            if (v103 == v102)
            {
              goto LABEL_28;
            }
          }

          __break(1u);
          goto LABEL_38;
        }

LABEL_28:
        v105 = *(v33 + 128);
        v152 = *(v33 + 112);
        v153 = v105;
        v154 = *(v33 + 144);
        v106 = *(v33 + 96);
        v150 = *(v33 + 80);
        v151 = v106;
        v32 = v98;
        *(v98 + 144) = v100;
        v107 = v140;
        *(v98 + 168) = v139;
        *(v98 + 152) = v107;
        v108 = v138;
        *(v98 + 200) = v137;
        *(v98 + 184) = v108;
        *(v98 + 216) = v101;
        sub_245F91EAC(&v150);
      }

      sub_24608FC64();
      OCSignPostsAriadneDbgCode();
      v109 = kdebug_trace();
      if ((*(*v32 + 168))(v109))
      {
        v111 = v110;
        v112 = swift_getObjectType();
        v113 = *(v33 + 48);
        v152 = *(v33 + 32);
        v153 = v113;
        LOBYTE(v154) = *(v33 + 64);
        v114 = *(v33 + 16);
        v150 = *v33;
        v151 = v114;
        v115 = *(v33 + 96);
        v116 = *(v33 + 128);
        v165[2] = *(v33 + 112);
        v165[3] = v116;
        v117 = *(v33 + 128);
        v165[4] = *(v33 + 144);
        v118 = *(v33 + 96);
        v165[0] = *(v33 + 80);
        v165[1] = v118;
        v162 = v165[2];
        v163 = v117;
        v164 = *(v33 + 144);
        v160 = v165[0];
        v161 = v115;
        v119 = *(v111 + 8);
        sub_245F8E7A4(v165, &v155, &qword_27EE3AB10, &qword_246096678);
        v119(&v150, &v160, v125, v129, v112, v111);
        goto LABEL_31;
      }
    }

    else if ((*(*v32 + 168))())
    {
      v72 = v71;
      v73 = a3;
      v74 = swift_getObjectType();
      v75 = *(v33 + 48);
      v152 = *(v33 + 32);
      v153 = v75;
      LOBYTE(v154) = *(v33 + 64);
      v76 = *(v33 + 16);
      v150 = *v33;
      v151 = v76;
      v77 = *(v33 + 96);
      v78 = *(v33 + 128);
      v165[2] = *(v33 + 112);
      v165[3] = v78;
      v79 = *(v33 + 128);
      v165[4] = *(v33 + 144);
      v80 = *(v33 + 96);
      v165[0] = *(v33 + 80);
      v165[1] = v80;
      v162 = v165[2];
      v163 = v79;
      v164 = *(v33 + 144);
      v160 = v165[0];
      v161 = v77;
      v81 = *(v72 + 8);
      sub_245F8E7A4(v165, &v155, &qword_27EE3AB10, &qword_246096678);
      v81(&v150, &v160, v125, v73, v74, v72);
LABEL_31:

      swift_unknownObjectRelease();
      v157 = v162;
      v158 = v163;
      v159[0] = v164;
      v155 = v160;
      v156 = v161;
      v96 = &v155;
      return sub_245F91EAC(v96);
    }
  }

  return result;
}

uint64_t sub_245F9135C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_245F913A4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_245F913F0(void *a1, uint64_t a2, __n128 a3, __n128 a4, __n128 a5, float32x4_t a6, __n128 a7, __n128 a8, __n128 a9, __n128 a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17)
{
  v18 = v17;
  v65 = a9;
  v66 = a10;
  v63 = a3;
  v64 = a8;
  v61 = a6;
  v62 = a7;
  v59 = a4;
  v60 = a5;
  v87 = *MEMORY[0x277D85DE8];
  v20 = sub_2460918F4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v56 - v25;
  if (v18[15].i8[0])
  {
    v58 = a17;
    v85 = 0;
    v86 = 0;
    [a1 transform];
    v79 = v27;
    v80 = v28;
    v81 = v29;
    v82 = v30;
    [a1 center];
    v83 = v31;
    v32 = [a1 planeExtent];
    [v32 width];
    v57 = v33;

    v34 = [a1 planeExtent];
    [v34 height];
    v56 = v35;

    *&v36 = v57;
    *(&v36 + 1) = v56;
    v84 = v36;
    v85 = 0;
    LODWORD(v86) = 0;
    v73 = v64;
    v74 = v65;
    v75 = v66;
    v76 = v58;
    v77 = v63;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    ObjectVoxelsAndComputeBBox = OCMaskingCreateObjectVoxelsAndComputeBBox();
    if (!ObjectVoxelsAndComputeBBox)
    {
      sub_2460219F0(ObjectVoxelsAndComputeBBox, *&v69, *&v70, *&v71, *&v72, v59.n128_f64[0], v60.n128_f64[0], v61);
      OCBoundingBox.init(transform:)(&v68, v52);
      v67 = v68;
      OCBoundingBox.scale(_:)(v78, v18[3]);
      v53 = v78[1];
      v54 = v78[2];
      v55 = v78[3];
      v18[4] = v78[0];
      v18[5] = v53;
      v18[6] = v54;
      v18[7] = v55;
      v18[8].i8[0] = 0;
      return 1;
    }

    v38 = ObjectVoxelsAndComputeBBox;
    v39 = sub_245FA3174();
    (*(v21 + 16))(v23, v39, v20);
    v40 = sub_2460918D4();
    v41 = sub_246091FB4();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v66.n128_u64[0] = swift_slowAlloc();
      v78[0].i64[0] = v66.n128_u64[0];
      *v42 = 136446210;
      v68.transform.columns[0].i32[0] = v38;
      type metadata accessor for OCReturn(0);
      v43 = sub_246091C54();
      v45 = sub_245F8D3C0(v43, v44, v78);

      *(v42 + 4) = v45;
      _os_log_impl(&dword_245F8A000, v40, v41, "Masking Manager: Failed to compute bounding box with error: %{public}s", v42, 0xCu);
      v46 = v66.n128_u64[0];
      sub_245F8E6F4(v66.n128_u64[0]);
      MEMORY[0x24C1989D0](v46, -1, -1);
      MEMORY[0x24C1989D0](v42, -1, -1);
    }

    (*(v21 + 8))(v23, v20);
    result = 0;
    v78[0].i8[0] = 1;
  }

  else
  {
    v48 = sub_245FA3174();
    (*(v21 + 16))(v26, v48, v20);
    v49 = sub_2460918D4();
    v50 = sub_246091FB4();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_245F8A000, v49, v50, "Masking Manager: Failed to compute bounding box because masking manager has not been started!", v51, 2u);
      MEMORY[0x24C1989D0](v51, -1, -1);
    }

    (*(v21 + 8))(v26, v20);
    result = 0;
    LOBYTE(v79) = 1;
  }

  v18[4] = 0u;
  v18[5] = 0u;
  v18[6] = 0u;
  v18[7] = 0u;
  v18[8].i8[0] = 1;
  return result;
}

uint64_t sub_245F9190C(uint64_t a1, uint64_t a2)
{
  sub_246092504();
  swift_getWitnessTable();
  sub_246091884();
  return sub_246092544();
}

_DWORD *sub_245F91988@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_245F919A4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_246091874();
}

char *sub_245F91A10(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE39F58, &qword_24609AD40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    memcpy(v12, v13, 48 * v8);
  }

  return v10;
}

unint64_t sub_245F91B2C(uint64_t a1)
{
  sub_246092504();
  type metadata accessor for CFString(0);
  sub_245F91E3C(&qword_27EE39F68, type metadata accessor for CFString, &unk_2460967D8);
  sub_246091884();
  v2 = sub_246092544();

  return sub_245F91BE0(a1, v2);
}

unint64_t sub_245F91BE0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_245F91E3C(&qword_27EE39F68, type metadata accessor for CFString, &unk_2460967D8);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_246091874();

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

unint64_t sub_245F91D00(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE39F60, qword_246096860);
    v3 = sub_246092384();
    v4 = a1 + 32;

    while (1)
    {
      sub_245F8E7A4(v4, &v11, &qword_27EE39F28, &qword_246096670);
      v5 = v11;
      result = sub_245F91B2C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_245F8E6C0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_245F91E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_245F91EAC(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AB10, &qword_246096678);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245F91F38()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245F91F70()
{

  return MEMORY[0x2821FE8E8](v0, 257, 15);
}

uint64_t sub_245F92008(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

__n128 sub_245F92034(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245F92048(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F92068(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_245F9218C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_245F9135C(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 sub_245F921D4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_245F921E8(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F92208(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_245F92254(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 sub_245F922A0(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_245F922BC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 80))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_245F92318(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_245F92390()
{
  result = MEMORY[0x24C196640](0xD000000000000032, 0x800000024609E7C0);
  qword_27EE3B558 = 0xD00000000000001ELL;
  qword_27EE3B560 = 0x800000024609E7A0;
  return result;
}

uint64_t sub_245F92400()
{
  result = sub_246091C04();
  qword_27EE3B570 = result;
  qword_27EE3B578 = v1;
  return result;
}

uint64_t sub_245F92434()
{
  if (!sub_245F94E08(0xD00000000000001ALL, 0x800000024609E440))
  {
    return 2;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_246091BD4();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_245F9252C()
{
  if (sub_245F94E08(0xD00000000000002ALL, 0x800000024609E4A0))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_27EE3EF51 = v2;
}

char *sub_245F925DC()
{
  if (qword_27EE3B580 != -1)
  {
    swift_once();
  }

  return &byte_27EE3EF51;
}

void sub_245F9262C()
{
  if (sub_245F94E08(0xD000000000000021, 0x800000024609E4D0))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 0;
  }

  byte_27EE3EF52 = v2;
}

char *sub_245F926DC()
{
  if (qword_27EE3B588 != -1)
  {
    swift_once();
  }

  return &byte_27EE3EF52;
}

void sub_245F9272C()
{
  if (qword_27EE3B550 != -1)
  {
    swift_once();
  }

  if (sub_245F94E08(qword_27EE3B558, qword_27EE3B560))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    [v0 floatForKey_];
    v3 = v2;
  }

  else
  {
    v3 = 1.0;
  }

  dword_27EE3EF54 = LODWORD(v3);
}

int *sub_245F92808()
{
  if (qword_27EE3B590 != -1)
  {
    swift_once();
  }

  return &dword_27EE3EF54;
}

uint64_t sub_245F92858()
{
  if (!sub_245F94E08(0xD000000000000014, 0x800000024609E500))
  {
    return 2;
  }

  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_246091BD4();
  v2 = [v0 BOOLForKey_];

  return v2;
}

void sub_245F92920()
{
  if (sub_245F94E08(0xD00000000000003ELL, 0x800000024609E5F0))
  {

    v0 = [objc_opt_self() standardUserDefaults];
    v1 = sub_246091BD4();
    v2 = [v0 BOOLForKey_];
  }

  else
  {
    v2 = 1;
  }

  byte_27EE3EF58 = v2;
}

char *sub_245F929D0()
{
  if (qword_27EE3B598 != -1)
  {
    swift_once();
  }

  return &byte_27EE3EF58;
}

unint64_t sub_245F92A20()
{
  if (qword_27EE3B568 != -1)
  {
    swift_once();
  }

  v0 = sub_245F94E08(qword_27EE3B570, qword_27EE3B578);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

unint64_t sub_245F92B24()
{
  v0 = sub_245F94E08(0xD00000000000003ALL, 0x800000024609E520);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

unint64_t sub_245F92BFC()
{
  v0 = sub_245F94E08(0xD00000000000003CLL, 0x800000024609E560);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

unint64_t sub_245F92CD4()
{
  v0 = sub_245F94E08(0xD000000000000048, 0x800000024609E5A0);
  if (v0)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 floatForKey_];
    v4 = v3;

    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v0 == 0) << 32);
}

uint64_t sub_245F92E28()
{
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v253 = &v240 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v250 = &v240 - v4;
  MEMORY[0x28223BE20](v5);
  v249 = &v240 - v6;
  MEMORY[0x28223BE20](v7);
  v255 = &v240 - v8;
  MEMORY[0x28223BE20](v9);
  v254 = &v240 - v10;
  MEMORY[0x28223BE20](v11);
  v248 = &v240 - v12;
  MEMORY[0x28223BE20](v13);
  v252 = &v240 - v14;
  MEMORY[0x28223BE20](v15);
  v243 = &v240 - v16;
  MEMORY[0x28223BE20](v17);
  v257 = &v240 - v18;
  MEMORY[0x28223BE20](v19);
  v258 = &v240 - v20;
  MEMORY[0x28223BE20](v21);
  v242 = &v240 - v22;
  MEMORY[0x28223BE20](v23);
  v247 = &v240 - v24;
  MEMORY[0x28223BE20](v25);
  v251 = &v240 - v26;
  MEMORY[0x28223BE20](v27);
  v246 = &v240 - v28;
  MEMORY[0x28223BE20](v29);
  v245 = &v240 - v30;
  MEMORY[0x28223BE20](v31);
  v256 = &v240 - v32;
  MEMORY[0x28223BE20](v33);
  v35 = &v240 - v34;
  MEMORY[0x28223BE20](v36);
  v244 = &v240 - v37;
  MEMORY[0x28223BE20](v38);
  v241 = &v240 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v240 - v41;
  MEMORY[0x28223BE20](v43);
  v45 = &v240 - v44;
  v46 = sub_245FA3234();
  v47 = v1;
  v49 = *(v1 + 16);
  v48 = v1 + 16;
  v261 = v49;
  v262 = v46;
  (v49)(v45);
  v50 = sub_2460918D4();
  v51 = sub_246091FA4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = v47;
    v53 = v35;
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_245F8A000, v50, v51, "User defaults summary:", v54, 2u);
    v55 = v54;
    v35 = v53;
    v47 = v52;
    MEMORY[0x24C1989D0](v55, -1, -1);
  }

  v260 = *(v47 + 8);
  v263 = v47 + 8;
  v260(v45, v0);
  v56 = sub_245F94E08(0xD00000000000001ALL, 0x800000024609E440);
  v259 = v48;
  if (v56)
  {
    v240 = v35;

    v57 = [objc_opt_self() standardUserDefaults];
    v58 = sub_246091BD4();
    v59 = [v57 BOOLForKey_];

    v261(v42, v262, v0);
    v60 = sub_2460918D4();
    v61 = sub_246091FA4();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      v264[0] = v63;
      *v62 = 136380931;
      *(v62 + 4) = sub_245F8D3C0(0xD00000000000001ALL, 0x800000024609E440, v264);
      *(v62 + 12) = 1025;
      *(v62 + 14) = v59;
      _os_log_impl(&dword_245F8A000, v60, v61, "%{private}s: %{BOOL,private}d", v62, 0x12u);
      sub_245F8E6F4(v63);
      MEMORY[0x24C1989D0](v63, -1, -1);
      MEMORY[0x24C1989D0](v62, -1, -1);
    }

    v260(v42, v0);
    v35 = v240;
  }

  v64 = sub_245F95340();
  v65 = v258;
  v66 = v256;
  if ((v64 & 0x100000000) == 0)
  {
    v67 = *&v64;
    v68 = v241;
    v261(v241, v262, v0);
    v69 = sub_2460918D4();
    v70 = sub_246091FA4();
    if (os_log_type_enabled(v69, v70))
    {
      v71 = v67;
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v264[0] = v73;
      *v72 = 136380931;
      *(v72 + 4) = sub_245F8D3C0(0xD00000000000002BLL, 0x800000024609E770, v264);
      *(v72 + 12) = 2049;
      *(v72 + 14) = v71;
      _os_log_impl(&dword_245F8A000, v69, v70, "%{private}s: %{private}f", v72, 0x16u);
      sub_245F8E6F4(v73);
      MEMORY[0x24C1989D0](v73, -1, -1);
      v74 = v72;
      v65 = v258;
      MEMORY[0x24C1989D0](v74, -1, -1);
    }

    v260(v68, v0);
  }

  if (sub_245F94E08(0xD000000000000034, 0x800000024609E460))
  {

    v75 = [objc_opt_self() standardUserDefaults];
    v76 = sub_246091BD4();
    v77 = [v75 BOOLForKey_];

    v78 = v244;
    v261(v244, v262, v0);
    v79 = sub_2460918D4();
    v80 = sub_246091FA4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v264[0] = v82;
      *v81 = 136380931;
      *(v81 + 4) = sub_245F8D3C0(0xD000000000000034, 0x800000024609E460, v264);
      *(v81 + 12) = 1025;
      *(v81 + 14) = v77;
      _os_log_impl(&dword_245F8A000, v79, v80, "%{private}s: %{BOOL,private}d", v81, 0x12u);
      sub_245F8E6F4(v82);
      MEMORY[0x24C1989D0](v82, -1, -1);
      MEMORY[0x24C1989D0](v81, -1, -1);
    }

    v260(v78, v0);
    v65 = v258;
    v66 = v256;
  }

  v83 = sub_245F95410();
  v84 = v257;
  if ((v83 & 0x100000000) == 0)
  {
    v85 = *&v83;
    v261(v35, v262, v0);
    v86 = sub_2460918D4();
    v87 = sub_246091FA4();
    if (os_log_type_enabled(v86, v87))
    {
      v88 = v85;
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v264[0] = v90;
      *v89 = 136380931;
      *(v89 + 4) = sub_245F8D3C0(0xD000000000000029, 0x800000024609E740, v264);
      *(v89 + 12) = 2049;
      *(v89 + 14) = v88;
      _os_log_impl(&dword_245F8A000, v86, v87, "%{private}s: %{private}f", v89, 0x16u);
      sub_245F8E6F4(v90);
      v91 = v90;
      v65 = v258;
      MEMORY[0x24C1989D0](v91, -1, -1);
      MEMORY[0x24C1989D0](v89, -1, -1);
    }

    v260(v35, v0);
  }

  v92 = sub_245F954E0();
  if ((v93 & 1) == 0)
  {
    v94 = v92;
    v261(v66, v262, v0);
    v95 = sub_2460918D4();
    v96 = sub_246091FA4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v264[0] = v98;
      *v97 = 136380931;
      *(v97 + 4) = sub_245F8D3C0(0xD000000000000025, 0x800000024609E710, v264);
      *(v97 + 12) = 2049;
      *(v97 + 14) = v94;
      _os_log_impl(&dword_245F8A000, v95, v96, "%{private}s: %{private}f", v97, 0x16u);
      sub_245F8E6F4(v98);
      v99 = v98;
      v84 = v257;
      MEMORY[0x24C1989D0](v99, -1, -1);
      v100 = v97;
      v65 = v258;
      MEMORY[0x24C1989D0](v100, -1, -1);
    }

    v260(v66, v0);
  }

  if (sub_245F94E08(0xD00000000000002ALL, 0x800000024609E4A0))
  {

    v101 = [objc_opt_self() standardUserDefaults];
    v102 = sub_246091BD4();
    v103 = [v101 BOOLForKey_];

    v104 = v245;
    v261(v245, v262, v0);
    v105 = sub_2460918D4();
    v106 = sub_246091FA4();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = swift_slowAlloc();
      v108 = swift_slowAlloc();
      v264[0] = v108;
      *v107 = 136380931;
      *(v107 + 4) = sub_245F8D3C0(0xD00000000000002ALL, 0x800000024609E4A0, v264);
      *(v107 + 12) = 1025;
      *(v107 + 14) = v103;
      _os_log_impl(&dword_245F8A000, v105, v106, "%{private}s: %{BOOL,private}d", v107, 0x12u);
      sub_245F8E6F4(v108);
      MEMORY[0x24C1989D0](v108, -1, -1);
      MEMORY[0x24C1989D0](v107, -1, -1);
    }

    v260(v104, v0);
    v84 = v257;
    v65 = v258;
  }

  v109 = sub_245F94E08(0xD000000000000021, 0x800000024609E4D0);
  v110 = v251;
  if (v109)
  {

    v111 = [objc_opt_self() standardUserDefaults];
    v112 = sub_246091BD4();
    v113 = [v111 BOOLForKey_];

    v114 = v246;
    v261(v246, v262, v0);
    v115 = sub_2460918D4();
    v116 = sub_246091FA4();
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v264[0] = v118;
      *v117 = 136380931;
      *(v117 + 4) = sub_245F8D3C0(0xD000000000000021, 0x800000024609E4D0, v264);
      *(v117 + 12) = 1025;
      *(v117 + 14) = v113;
      _os_log_impl(&dword_245F8A000, v115, v116, "%{private}s: %{BOOL,private}d", v117, 0x12u);
      sub_245F8E6F4(v118);
      MEMORY[0x24C1989D0](v118, -1, -1);
      MEMORY[0x24C1989D0](v117, -1, -1);
    }

    v260(v114, v0);
    v84 = v257;
    v65 = v258;
  }

  if (qword_27EE3B550 != -1)
  {
    swift_once();
  }

  v119 = qword_27EE3B558;
  v120 = qword_27EE3B560;
  if (sub_245F94E08(qword_27EE3B558, qword_27EE3B560))
  {

    v121 = [objc_opt_self() standardUserDefaults];
    v122 = sub_246091BD4();
    [v121 floatForKey_];
    v124 = v123;

    v261(v110, v262, v0);
    v125 = sub_2460918D4();
    v126 = sub_246091FA4();
    if (os_log_type_enabled(v125, v126))
    {
      v127 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v264[0] = v128;
      *v127 = 136380931;
      *(v127 + 4) = sub_245F8D3C0(v119, v120, v264);
      *(v127 + 12) = 2049;
      *(v127 + 14) = v124;
      _os_log_impl(&dword_245F8A000, v125, v126, "%{private}s: %{private}f", v127, 0x16u);
      sub_245F8E6F4(v128);
      MEMORY[0x24C1989D0](v128, -1, -1);
      MEMORY[0x24C1989D0](v127, -1, -1);
    }

    v260(v110, v0);
    v84 = v257;
    v65 = v258;
  }

  if (sub_245F94E08(0xD000000000000014, 0x800000024609E500))
  {

    v129 = [objc_opt_self() standardUserDefaults];
    v130 = sub_246091BD4();
    v131 = [v129 BOOLForKey_];

    v132 = v247;
    v261(v247, v262, v0);
    v133 = sub_2460918D4();
    v134 = sub_246091FA4();
    if (os_log_type_enabled(v133, v134))
    {
      v135 = swift_slowAlloc();
      v136 = swift_slowAlloc();
      v264[0] = v136;
      *v135 = 136380931;
      *(v135 + 4) = sub_245F8D3C0(0xD000000000000014, 0x800000024609E500, v264);
      *(v135 + 12) = 1025;
      *(v135 + 14) = v131;
      _os_log_impl(&dword_245F8A000, v133, v134, "%{private}s: %{BOOL,private}d", v135, 0x12u);
      sub_245F8E6F4(v136);
      MEMORY[0x24C1989D0](v136, -1, -1);
      MEMORY[0x24C1989D0](v135, -1, -1);
    }

    v260(v132, v0);
    v84 = v257;
    v65 = v258;
  }

  v137 = sub_245F9559C();
  v138 = v254;
  v139 = v252;
  if (v140)
  {
    v141 = sub_245F9565C();
    if (v142)
    {
      goto LABEL_43;
    }
  }

  else
  {
    v145 = v137;
    v146 = v254;
    v147 = v252;
    v148 = v242;
    v261(v242, v262, v0);
    v149 = sub_2460918D4();
    v150 = sub_246091FA4();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v264[0] = v152;
      *v151 = 136380931;
      *(v151 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x800000024609E6F0, v264);
      *(v151 + 12) = 2049;
      *(v151 + 14) = v145;
      _os_log_impl(&dword_245F8A000, v149, v150, "%{private}s: %{private}ld", v151, 0x16u);
      sub_245F8E6F4(v152);
      v153 = v152;
      v84 = v257;
      MEMORY[0x24C1989D0](v153, -1, -1);
      v154 = v151;
      v65 = v258;
      MEMORY[0x24C1989D0](v154, -1, -1);
    }

    v260(v148, v0);
    v139 = v147;
    v138 = v146;
    v141 = sub_245F9565C();
    if (v155)
    {
LABEL_43:
      v143 = sub_245F95718();
      if ((v143 & 0x100000000) != 0)
      {
        goto LABEL_44;
      }

      goto LABEL_53;
    }
  }

  v156 = v141;
  v261(v65, v262, v0);
  v157 = sub_2460918D4();
  v158 = sub_246091FA4();
  if (os_log_type_enabled(v157, v158))
  {
    v159 = v139;
    v160 = v65;
    v161 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v264[0] = v162;
    *v161 = 136380931;
    *(v161 + 4) = sub_245F8D3C0(0xD00000000000001DLL, 0x800000024609E6D0, v264);
    *(v161 + 12) = 2049;
    *(v161 + 14) = v156;
    _os_log_impl(&dword_245F8A000, v157, v158, "%{private}s: %{private}f", v161, 0x16u);
    sub_245F8E6F4(v162);
    v163 = v162;
    v84 = v257;
    MEMORY[0x24C1989D0](v163, -1, -1);
    MEMORY[0x24C1989D0](v161, -1, -1);

    v164 = v160;
    v139 = v159;
    v138 = v254;
  }

  else
  {

    v164 = v65;
  }

  v260(v164, v0);
  v143 = sub_245F95718();
  if ((v143 & 0x100000000) != 0)
  {
LABEL_44:
    v144 = sub_245F957E8();
    if ((v144 & 0x100000000) != 0)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_53:
  v165 = *&v143;
  v261(v84, v262, v0);
  v166 = sub_2460918D4();
  v167 = sub_246091FA4();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = v165;
    v169 = swift_slowAlloc();
    v170 = swift_slowAlloc();
    v264[0] = v170;
    *v169 = 136380931;
    *(v169 + 4) = sub_245F8D3C0(0xD000000000000023, 0x800000024609E6A0, v264);
    *(v169 + 12) = 2049;
    *(v169 + 14) = v168;
    _os_log_impl(&dword_245F8A000, v166, v167, "%{private}s: %{private}f", v169, 0x16u);
    sub_245F8E6F4(v170);
    MEMORY[0x24C1989D0](v170, -1, -1);
    MEMORY[0x24C1989D0](v169, -1, -1);
  }

  v260(v84, v0);
  v144 = sub_245F957E8();
  if ((v144 & 0x100000000) == 0)
  {
LABEL_56:
    v171 = *&v144;
    v172 = v243;
    v261(v243, v262, v0);
    v173 = sub_2460918D4();
    v174 = sub_246091FA4();
    if (os_log_type_enabled(v173, v174))
    {
      v175 = v171;
      v176 = swift_slowAlloc();
      v177 = swift_slowAlloc();
      v264[0] = v177;
      *v176 = 136380931;
      *(v176 + 4) = sub_245F8D3C0(0xD000000000000020, 0x800000024609E670, v264);
      *(v176 + 12) = 2049;
      *(v176 + 14) = v175;
      _os_log_impl(&dword_245F8A000, v173, v174, "%{private}s: %{private}f", v176, 0x16u);
      sub_245F8E6F4(v177);
      MEMORY[0x24C1989D0](v177, -1, -1);
      MEMORY[0x24C1989D0](v176, -1, -1);
    }

    v260(v172, v0);
  }

LABEL_59:
  if (sub_245F94E08(0xD00000000000003ELL, 0x800000024609E5F0))
  {

    v178 = [objc_opt_self() standardUserDefaults];
    v179 = sub_246091BD4();
    v180 = [v178 BOOLForKey_];

    v261(v139, v262, v0);
    v181 = sub_2460918D4();
    v182 = sub_246091FA4();
    if (os_log_type_enabled(v181, v182))
    {
      v183 = swift_slowAlloc();
      v184 = swift_slowAlloc();
      v264[0] = v184;
      *v183 = 136380931;
      *(v183 + 4) = sub_245F8D3C0(0xD00000000000003ELL, 0x800000024609E5F0, v264);
      *(v183 + 12) = 1025;
      *(v183 + 14) = v180;
      _os_log_impl(&dword_245F8A000, v181, v182, "%{private}s: %{BOOL,private}d", v183, 0x12u);
      sub_245F8E6F4(v184);
      MEMORY[0x24C1989D0](v184, -1, -1);
      MEMORY[0x24C1989D0](v183, -1, -1);
    }

    v260(v139, v0);
  }

  if (qword_27EE3B568 != -1)
  {
    swift_once();
  }

  v185 = qword_27EE3B570;
  v186 = qword_27EE3B578;
  if (sub_245F94E08(qword_27EE3B570, qword_27EE3B578))
  {

    v187 = [objc_opt_self() standardUserDefaults];
    v188 = sub_246091BD4();
    [v187 floatForKey_];
    v190 = v189;

    v191 = v248;
    v261(v248, v262, v0);
    v192 = sub_2460918D4();
    v193 = sub_246091FA4();
    if (os_log_type_enabled(v192, v193))
    {
      v194 = swift_slowAlloc();
      v195 = swift_slowAlloc();
      v264[0] = v195;
      *v194 = 136380931;
      *(v194 + 4) = sub_245F8D3C0(v185, v186, v264);
      *(v194 + 12) = 2049;
      *(v194 + 14) = v190;
      _os_log_impl(&dword_245F8A000, v192, v193, "%{private}s: %{private}f", v194, 0x16u);
      sub_245F8E6F4(v195);
      MEMORY[0x24C1989D0](v195, -1, -1);
      MEMORY[0x24C1989D0](v194, -1, -1);
    }

    v260(v191, v0);
  }

  v196 = sub_245F94E08(0xD00000000000003ALL, 0x800000024609E520);
  v197 = v255;
  if (v196)
  {

    v198 = [objc_opt_self() standardUserDefaults];
    v199 = sub_246091BD4();
    [v198 floatForKey_];
    v201 = v200;

    v261(v138, v262, v0);
    v202 = sub_2460918D4();
    v203 = sub_246091FA4();
    if (os_log_type_enabled(v202, v203))
    {
      v204 = swift_slowAlloc();
      v205 = swift_slowAlloc();
      v264[0] = v205;
      *v204 = 136380931;
      *(v204 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x800000024609E520, v264);
      *(v204 + 12) = 2049;
      *(v204 + 14) = v201;
      _os_log_impl(&dword_245F8A000, v202, v203, "%{private}s: %{private}f", v204, 0x16u);
      sub_245F8E6F4(v205);
      MEMORY[0x24C1989D0](v205, -1, -1);
      v206 = v204;
      v197 = v255;
      MEMORY[0x24C1989D0](v206, -1, -1);
    }

    v260(v138, v0);
  }

  if (sub_245F94E08(0xD00000000000003CLL, 0x800000024609E560))
  {

    v207 = [objc_opt_self() standardUserDefaults];
    v208 = sub_246091BD4();
    [v207 floatForKey_];
    v210 = v209;

    v261(v197, v262, v0);
    v211 = sub_2460918D4();
    v212 = sub_246091FA4();
    if (os_log_type_enabled(v211, v212))
    {
      v213 = v197;
      v214 = swift_slowAlloc();
      v215 = swift_slowAlloc();
      v264[0] = v215;
      *v214 = 136380931;
      *(v214 + 4) = sub_245F8D3C0(0xD00000000000003CLL, 0x800000024609E560, v264);
      *(v214 + 12) = 2049;
      *(v214 + 14) = v210;
      _os_log_impl(&dword_245F8A000, v211, v212, "%{private}s: %{private}f", v214, 0x16u);
      sub_245F8E6F4(v215);
      MEMORY[0x24C1989D0](v215, -1, -1);
      MEMORY[0x24C1989D0](v214, -1, -1);

      v216 = v213;
    }

    else
    {

      v216 = v197;
    }

    v260(v216, v0);
  }

  if (sub_245F94E08(0xD000000000000048, 0x800000024609E5A0))
  {

    v217 = [objc_opt_self() standardUserDefaults];
    v218 = sub_246091BD4();
    [v217 floatForKey_];
    v220 = v219;

    v221 = v249;
    v261(v249, v262, v0);
    v222 = sub_2460918D4();
    v223 = sub_246091FA4();
    if (os_log_type_enabled(v222, v223))
    {
      v224 = swift_slowAlloc();
      v225 = swift_slowAlloc();
      v264[0] = v225;
      *v224 = 136380931;
      *(v224 + 4) = sub_245F8D3C0(0xD000000000000048, 0x800000024609E5A0, v264);
      *(v224 + 12) = 2049;
      *(v224 + 14) = v220;
      _os_log_impl(&dword_245F8A000, v222, v223, "%{private}s: %{private}f", v224, 0x16u);
      sub_245F8E6F4(v225);
      MEMORY[0x24C1989D0](v225, -1, -1);
      MEMORY[0x24C1989D0](v224, -1, -1);
    }

    v260(v221, v0);
  }

  v226 = sub_245F94E08(0xD00000000000003ALL, 0x800000024609E630);
  v227 = v253;
  if (v226)
  {

    v228 = [objc_opt_self() standardUserDefaults];
    v229 = sub_246091BD4();
    v230 = [v228 BOOLForKey_];

    v231 = v250;
    v261(v250, v262, v0);
    v232 = sub_2460918D4();
    v233 = sub_246091FA4();
    if (os_log_type_enabled(v232, v233))
    {
      v234 = swift_slowAlloc();
      v235 = swift_slowAlloc();
      v264[0] = v235;
      *v234 = 136380931;
      *(v234 + 4) = sub_245F8D3C0(0xD00000000000003ALL, 0x800000024609E630, v264);
      *(v234 + 12) = 1025;
      *(v234 + 14) = v230;
      _os_log_impl(&dword_245F8A000, v232, v233, "%{private}s: %{BOOL,private}d", v234, 0x12u);
      sub_245F8E6F4(v235);
      MEMORY[0x24C1989D0](v235, -1, -1);
      MEMORY[0x24C1989D0](v234, -1, -1);
    }

    v260(v231, v0);
  }

  v261(v227, v262, v0);
  v236 = sub_2460918D4();
  v237 = sub_246091FA4();
  if (os_log_type_enabled(v236, v237))
  {
    v238 = swift_slowAlloc();
    *v238 = 0;
    _os_log_impl(&dword_245F8A000, v236, v237, "End of user defaults summary", v238, 2u);
    MEMORY[0x24C1989D0](v238, -1, -1);
  }

  return (v260)(v227, v0);
}

unint64_t sub_245F94E08(uint64_t a1, unint64_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v41 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v42 = &v41 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v41 - v10;
  v45 = [objc_opt_self() standardUserDefaults];
  v12 = sub_245FA3234();
  v13 = *(v5 + 16);
  v13(v11, v12, v4);

  v14 = sub_2460918D4();
  v15 = sub_246091FA4();

  v16 = os_log_type_enabled(v14, v15);
  v43 = v5;
  v44 = a1;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v46 = v18;
    *v17 = 136380675;
    *(v17 + 4) = sub_245F8D3C0(v44, a2, &v46);
    _os_log_impl(&dword_245F8A000, v14, v15, "Settings: Looking for key = %{private}s", v17, 0xCu);
    sub_245F8E6F4(v18);
    MEMORY[0x24C1989D0](v18, -1, -1);
    v19 = v17;
    v5 = v43;
    MEMORY[0x24C1989D0](v19, -1, -1);
  }

  v20 = *(v5 + 8);
  v20(v11, v4);
  v21 = v4;
  v22 = sub_246091BD4();
  v23 = [v45 stringForKey_];

  if (v23)
  {
    v24 = sub_246091C04();
    v26 = v25;

    v27 = v42;
    v13(v42, v12, v21);

    v28 = sub_2460918D4();
    v29 = sub_246091FA4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = v21;
      v31 = swift_slowAlloc();
      v32 = v27;
      v33 = swift_slowAlloc();
      v46 = v33;
      *v31 = 136380931;
      *(v31 + 4) = sub_245F8D3C0(v44, a2, &v46);
      *(v31 + 12) = 2081;
      *(v31 + 14) = sub_245F8D3C0(v24, v26, &v46);
      _os_log_impl(&dword_245F8A000, v28, v29, "Settings: Found defaults %{private}s: %{private}s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v31, -1, -1);

      v20(v32, v30);
    }

    else
    {

      v20(v27, v21);
    }
  }

  else
  {
    v34 = v41;
    v13(v41, v12, v21);

    v35 = sub_2460918D4();
    v36 = v21;
    v37 = sub_246091FA4();

    if (os_log_type_enabled(v35, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v46 = v39;
      *v38 = 136380675;
      *(v38 + 4) = sub_245F8D3C0(v44, a2, &v46);
      _os_log_impl(&dword_245F8A000, v35, v37, "Settings: %{private}s not found!", v38, 0xCu);
      sub_245F8E6F4(v39);
      MEMORY[0x24C1989D0](v39, -1, -1);
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    v20(v34, v36);
    return 0;
  }

  return v26;
}

unint64_t sub_245F95340()
{
  if (sub_245F94E08(0xD00000000000002BLL, 0x800000024609E770) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_245F95410()
{
  if (sub_245F94E08(0xD000000000000029, 0x800000024609E740) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_245F954E0()
{
  result = sub_245F94E08(0xD000000000000025, 0x800000024609E710);
  if (result)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 doubleForKey_];
    v4 = v3;

    if (v4 <= 0.0)
    {
      return 0;
    }

    else
    {
      return *&v4;
    }
  }

  return result;
}

unint64_t sub_245F9559C()
{
  result = sub_245F94E08(0xD00000000000001CLL, 0x800000024609E6F0);
  if (result)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    v3 = [v1 integerForKey_];

    if ((v3 & ~(v3 >> 63)) >= 3024)
    {
      return 3024;
    }

    else
    {
      return v3 & ~(v3 >> 63);
    }
  }

  return result;
}

unint64_t sub_245F9565C()
{
  result = sub_245F94E08(0xD00000000000001DLL, 0x800000024609E6D0);
  if (result)
  {

    v1 = [objc_opt_self() standardUserDefaults];
    v2 = sub_246091BD4();
    [v1 doubleForKey_];
    v4 = v3;

    if (v4 <= 0.0)
    {
      return 0;
    }

    else
    {
      return *&v4;
    }
  }

  return result;
}

unint64_t sub_245F95718()
{
  if (sub_245F94E08(0xD000000000000023, 0x800000024609E6A0) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

unint64_t sub_245F957E8()
{
  if (sub_245F94E08(0xD000000000000020, 0x800000024609E670) && (, v0 = [objc_opt_self() standardUserDefaults], v1 = sub_246091BD4(), objc_msgSend(v0, sel_floatForKey_, v1), v3 = v2, v0, v1, v3 > 0.0))
  {
    v4 = 0;
    v5 = LODWORD(v3);
  }

  else
  {
    v5 = 0;
    v4 = 1;
  }

  return v5 | (v4 << 32);
}

__n128 PhotogrammetrySample.Camera.init(id:intrinsics:transform:trackingState:calibrationData:wideToDepthTransform:)@<Q0>(int a1@<W0>, _OWORD *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>)
{
  v10 = *a3;
  *(a6 + 224) = 0u;
  *(a6 + 240) = 0u;
  *(a6 + 256) = 0u;
  *(a6 + 272) = 0u;
  *(a6 + 288) = 1;
  *(a6 + 304) = 0u;
  *(a6 + 320) = 0u;
  *(a6 + 336) = 0u;
  *(a6 + 352) = 0u;
  *(a6 + 368) = 1;
  *a6 = a1;
  v11 = a2[1];
  *(a6 + 16) = *a2;
  *(a6 + 32) = v11;
  *(a6 + 48) = a2[2];
  *(a6 + 64) = a7;
  *(a6 + 80) = a8;
  *(a6 + 96) = a9;
  *(a6 + 112) = a10;
  *(a6 + 128) = v10;
  *(a6 + 136) = a4;
  v12 = *(a5 + 48);
  *(a6 + 176) = *(a5 + 32);
  *(a6 + 192) = v12;
  *(a6 + 208) = *(a5 + 64);
  result = *(a5 + 16);
  *(a6 + 144) = *a5;
  *(a6 + 160) = result;
  return result;
}

__n128 sub_245F95934(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *(v2 + 256) = *(a1 + 32);
  *(v2 + 272) = v3;
  *(v2 + 288) = *(a1 + 64);
  v4 = *(a1 + 16);
  *(v2 + 224) = *a1;
  *(v2 + 240) = v4;
  v5 = *(a2 + 48);
  *(v2 + 336) = *(a2 + 32);
  *(v2 + 352) = v5;
  *(v2 + 368) = *(a2 + 64);
  result = *(a2 + 16);
  *(v2 + 304) = *a2;
  *(v2 + 320) = result;
  return result;
}

__n128 PhotogrammetrySample.Camera.intrinsics.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 48);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 PhotogrammetrySample.Camera.intrinsics.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v2;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  return result;
}

void PhotogrammetrySample.Camera.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void *PhotogrammetrySample.Camera.calibrationData.getter()
{
  v1 = *(v0 + 136);
  v2 = v1;
  return v1;
}

__n128 PhotogrammetrySample.Camera.wideToDepthTransform.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 192);
  *(a1 + 32) = *(v1 + 176);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 208);
  result = *(v1 + 160);
  *a1 = *(v1 + 144);
  *(a1 + 16) = result;
  return result;
}

__n128 PhotogrammetrySample.Camera.wideToDepthTransform.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 176) = *(a1 + 32);
  *(v1 + 192) = v2;
  *(v1 + 208) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 144) = *a1;
  *(v1 + 160) = result;
  return result;
}

void __swiftcall PhotogrammetrySample.Object.init(transform:boundingBox:)(CoreOC::PhotogrammetrySample::Object *__return_ptr retstr, simd_float4x4 *transform, simd_float4x4 *boundingBox)
{
  retstr->transform.columns[0] = v3;
  retstr->transform.columns[1] = v4;
  retstr->transform.columns[2] = v5;
  retstr->transform.columns[3] = v6;
  retstr->boundingBox.columns[0] = v7;
  retstr->boundingBox.columns[1] = v8;
  retstr->boundingBox.columns[2] = v9;
  retstr->boundingBox.columns[3] = v10;
}

void PhotogrammetrySample.Object.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

void PhotogrammetrySample.Object.boundingBox.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[4] = a1;
  v4[5] = a2;
  v4[6] = a3;
  v4[7] = a4;
}

void __swiftcall PhotogrammetrySample.Scene.init(boundingBox:)(CoreOC::PhotogrammetrySample::Scene *__return_ptr retstr, simd_float4x4 *boundingBox)
{
  retstr->boundingBox.columns[0] = v2;
  retstr->boundingBox.columns[1] = v3;
  retstr->boundingBox.columns[2] = v4;
  retstr->boundingBox.columns[3] = v5;
}

void PhotogrammetrySample.Scene.boundingBox.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
}

uint64_t PhotogrammetrySample.metadata.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

void *PhotogrammetrySample.depthDataMap.getter()
{
  v1 = *(v0 + 32);
  v2 = v1;
  return v1;
}

void *PhotogrammetrySample.depthConfidenceMap.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.gravity.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = result;
  *(v4 + 56) = a2;
  *(v4 + 64) = a3;
  *(v4 + 72) = a4 & 1;
  return result;
}

void *PhotogrammetrySample.objectMask.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

void *PhotogrammetrySample.pointCloudData.getter()
{
  v1 = *(v0 + 88);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.camera.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 96), 0x171uLL);
  memcpy(a1, (v1 + 96), 0x171uLL);
  return sub_245F8E7A4(__dst, &v4, &qword_27EE39F78, &unk_246096990);
}

void *PhotogrammetrySample.camera.setter(const void *a1)
{
  memcpy(v4, (v1 + 96), 0x171uLL);
  sub_245F8E744(v4, &qword_27EE39F78, &unk_246096990);
  return memcpy((v1 + 96), a1, 0x171uLL);
}

__n128 PhotogrammetrySample.object.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 592);
  *(a1 + 96) = *(v1 + 576);
  *(a1 + 112) = v2;
  *(a1 + 128) = *(v1 + 608);
  v3 = *(v1 + 528);
  *(a1 + 32) = *(v1 + 512);
  *(a1 + 48) = v3;
  v4 = *(v1 + 560);
  *(a1 + 64) = *(v1 + 544);
  *(a1 + 80) = v4;
  result = *(v1 + 496);
  *a1 = *(v1 + 480);
  *(a1 + 16) = result;
  return result;
}

__n128 PhotogrammetrySample.object.setter(uint64_t a1)
{
  v2 = *(a1 + 112);
  *(v1 + 576) = *(a1 + 96);
  *(v1 + 592) = v2;
  *(v1 + 608) = *(a1 + 128);
  v3 = *(a1 + 48);
  *(v1 + 512) = *(a1 + 32);
  *(v1 + 528) = v3;
  v4 = *(a1 + 80);
  *(v1 + 544) = *(a1 + 64);
  *(v1 + 560) = v4;
  result = *(a1 + 16);
  *(v1 + 480) = *a1;
  *(v1 + 496) = result;
  return result;
}

__n128 PhotogrammetrySample.scene.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 672);
  *(a1 + 32) = *(v1 + 656);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 688);
  result = *(v1 + 640);
  *a1 = *(v1 + 624);
  *(a1 + 16) = result;
  return result;
}

__n128 PhotogrammetrySample.scene.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  *(v1 + 656) = *(a1 + 32);
  *(v1 + 672) = v2;
  *(v1 + 688) = *(a1 + 64);
  result = *(a1 + 16);
  *(v1 + 624) = *a1;
  *(v1 + 640) = result;
  return result;
}

uint64_t PhotogrammetrySample.captureMode.setter(uint64_t result, char a2)
{
  *(v2 + 696) = result;
  *(v2 + 704) = a2 & 1;
  return result;
}

void *PhotogrammetrySample.rawFeaturePoints.getter()
{
  v1 = *(v0 + 712);
  v2 = v1;
  return v1;
}

uint64_t PhotogrammetrySample.timestamp.setter(uint64_t result, char a2)
{
  *(v2 + 720) = result;
  *(v2 + 728) = a2 & 1;
  return result;
}

uint64_t PhotogrammetrySample.staticSegmentID.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for PhotogrammetrySample(0);
  v6 = v2 + *(result + 84);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t PhotogrammetrySample.init(id:image:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x277D84F90];
  *(a3 + 24) = sub_245F8E498(MEMORY[0x277D84F90]);
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0;
  *(a3 + 72) = 1;
  *(a3 + 80) = 0u;
  sub_245F97B00(v20);
  memcpy((a3 + 96), v20, 0x171uLL);
  sub_245F97B40(v21);
  v7 = v21[7];
  *(a3 + 576) = v21[6];
  *(a3 + 592) = v7;
  *(a3 + 608) = v22;
  v8 = v21[3];
  *(a3 + 512) = v21[2];
  *(a3 + 528) = v8;
  v9 = v21[5];
  *(a3 + 544) = v21[4];
  *(a3 + 560) = v9;
  v10 = v21[1];
  *(a3 + 480) = v21[0];
  *(a3 + 496) = v10;
  v23 = 1;
  *(a3 + 624) = 0u;
  *(a3 + 640) = 0u;
  *(a3 + 656) = 0u;
  *(a3 + 672) = 0u;
  *(a3 + 688) = 1;
  *(a3 + 696) = 0;
  *(a3 + 704) = 1;
  *(a3 + 712) = 0u;
  *(a3 + 728) = 1;
  v11 = type metadata accessor for PhotogrammetrySample(0);
  v12 = v11[19];
  v13 = sub_2460917D4();
  (*(*(v13 - 8) + 56))(a3 + v12, 1, 1, v13);
  v14 = v11[20];
  v15 = sub_246091834();
  result = (*(*(v15 - 8) + 56))(a3 + v14, 1, 1, v15);
  v17 = a3 + v11[21];
  *v17 = 0;
  *(v17 + 8) = 1;
  v18 = (a3 + v11[22]);
  *v18 = 0;
  v18[1] = 0;
  v19 = a3 + v11[23];
  *v19 = 0;
  *(v19 + 8) = 1;
  *(a3 + v11[24]) = v6;
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 1;
  return result;
}

uint64_t PhotogrammetrySample.init(id:image:orientation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v8 = MEMORY[0x277D84F90];
  *(a4 + 24) = sub_245F8E498(MEMORY[0x277D84F90]);
  *(a4 + 32) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0;
  *(a4 + 72) = 1;
  *(a4 + 80) = 0u;
  sub_245F97B00(v22);
  memcpy((a4 + 96), v22, 0x171uLL);
  sub_245F97B40(v23);
  v9 = v23[7];
  *(a4 + 576) = v23[6];
  *(a4 + 592) = v9;
  *(a4 + 608) = v24;
  v10 = v23[3];
  *(a4 + 512) = v23[2];
  *(a4 + 528) = v10;
  v11 = v23[5];
  *(a4 + 544) = v23[4];
  *(a4 + 560) = v11;
  v12 = v23[1];
  *(a4 + 480) = v23[0];
  *(a4 + 496) = v12;
  v25 = 1;
  *(a4 + 624) = 0u;
  *(a4 + 640) = 0u;
  *(a4 + 656) = 0u;
  *(a4 + 672) = 0u;
  *(a4 + 688) = 1;
  *(a4 + 696) = 0;
  *(a4 + 704) = 1;
  *(a4 + 712) = 0u;
  *(a4 + 728) = 1;
  v13 = type metadata accessor for PhotogrammetrySample(0);
  v14 = v13[19];
  v15 = sub_2460917D4();
  (*(*(v15 - 8) + 56))(a4 + v14, 1, 1, v15);
  v16 = v13[20];
  v17 = sub_246091834();
  result = (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  v19 = a4 + v13[21];
  *v19 = 0;
  *(v19 + 8) = 1;
  v20 = (a4 + v13[22]);
  *v20 = 0;
  v20[1] = 0;
  v21 = a4 + v13[23];
  *v21 = 0;
  *(v21 + 8) = 1;
  *(a4 + v13[24]) = v8;
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t static PhotogrammetrySample.makeSample(shot:shotMetadata:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PhotogrammetrySample(0);
  v134 = *(v6 - 1);
  MEMORY[0x28223BE20](v6);
  v8 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  if (*a1 == *a2)
  {
    v10 = *(a1 + 8);
    v11 = *(a1 + 16);
    v13 = *(a1 + 24);
    v12 = *(a1 + 32);
    if (CVPixelBufferGetWidth(v10) >= 1 && CVPixelBufferGetHeight(v10) >= 1 && sub_245FC6568(v10))
    {
      v133.i64[0] = v12;
      if (!v11 || (v14 = v11, v15 = sub_245FC664C(v14), v14, v15))
      {
        if (!v13 || (v16 = v13, v17 = sub_245FC6820(v16), v16, v17))
        {
          v132 = type metadata accessor for ObjectCaptureSession.Metadata.Shot(0);
          v18 = a2 + v132[7];
          v19 = *(v18 + 112);
          v20 = *(v18 + 80);
          v189 = *(v18 + 96);
          v190 = v19;
          v21 = *(v18 + 112);
          v191 = *(v18 + 128);
          v22 = *(v18 + 48);
          v23 = *(v18 + 16);
          v185 = *(v18 + 32);
          v186 = v22;
          v24 = *(v18 + 48);
          v25 = *(v18 + 80);
          v187 = *(v18 + 64);
          v188 = v25;
          v26 = *v18;
          v27 = *v18;
          v184[1] = *(v18 + 16);
          v184[0] = v26;
          v193[6] = v189;
          v193[7] = v21;
          v194 = *(v18 + 128);
          v193[2] = v185;
          v193[3] = v24;
          v193[4] = v187;
          v193[5] = v20;
          v192 = *(v18 + 144);
          v195 = *(v18 + 144);
          v193[0] = v27;
          v193[1] = v23;
          result = sub_245F97C14(v193);
          if (result != 1)
          {
            v29 = v194;
            if (v194)
            {
              v30 = v191;
              v31 = sub_245FC66D0(v29);
              result = sub_245F8E744(v184, &qword_27EE3A990, &qword_246099C20);
              if (!v31)
              {
                return (*(v134 + 56))(a3, 1, 1, v6);
              }
            }
          }

          v32 = v9 * 1000.0;
          if (COERCE__INT64(fabs(v9 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
          {
            __break(1u);
          }

          else if (v32 > -9.22337204e18)
          {
            if (v32 < 9.22337204e18)
            {
              v127.i64[0] = v32;
              v128.i32[0] = *(a2 + 144);
              v33 = v10;
              v129.i64[0] = sub_245F8E498(MEMORY[0x277D84F90]);
              sub_245F97B00(v168);
              memcpy(v8 + 96, v168, 0x171uLL);
              sub_245F97B40(v169);
              v34 = v169[7];
              *(v8 + 36) = v169[6];
              *(v8 + 37) = v34;
              v8[608] = v170;
              v35 = v169[3];
              *(v8 + 32) = v169[2];
              *(v8 + 33) = v35;
              v36 = v169[5];
              *(v8 + 34) = v169[4];
              *(v8 + 35) = v36;
              v37 = v169[1];
              *(v8 + 30) = v169[0];
              *(v8 + 31) = v37;
              v171 = 1;
              *(v8 + 39) = 0u;
              *(v8 + 40) = 0u;
              *(v8 + 41) = 0u;
              *(v8 + 42) = 0u;
              v8[688] = 1;
              v38 = v6[19];
              v39 = sub_2460917D4();
              (*(*(v39 - 8) + 56))(&v8[v38], 1, 1, v39);
              v40 = v6[20];
              v41 = sub_246091834();
              v42 = *(*(v41 - 8) + 56);
              v131 = v40;
              v42(&v8[v40], 1, 1, v41);
              v43 = &v8[v6[22]];
              *v43 = 0;
              *(v43 + 1) = 0;
              v44 = &v8[v6[23]];
              *v44 = 0;
              v130 = v44;
              v44[8] = 1;
              *v8 = v127.i64[0];
              *(v8 + 1) = v33;
              v45 = v33;
              *(v8 + 4) = v128.i32[0];
              v46 = a2 + v132[10];
              v47 = *(v46 + 8);
              v128.i64[0] = *v46;
              v127.i64[0] = v47;
              v48 = *(v46 + 16);
              LOBYTE(v40) = *(v46 + 24);
              v126.i64[0] = sub_245FFF67C(v45, v128.i64[0], v47, v48, v40);

              v49 = *(v18 + 112);
              v50 = *(v18 + 80);
              v177 = *(v18 + 96);
              v178 = v49;
              v51 = *(v18 + 112);
              v179 = *(v18 + 128);
              v52 = *(v18 + 48);
              v53 = *(v18 + 16);
              v173 = *(v18 + 32);
              v174 = v52;
              v54 = *(v18 + 48);
              v55 = *(v18 + 80);
              v175 = *(v18 + 64);
              v176 = v55;
              v56 = *(v18 + 16);
              v172[0] = *v18;
              v57 = v172[0];
              v172[1] = v56;
              v181[6] = v177;
              v181[7] = v51;
              v182 = *(v18 + 128);
              v181[2] = v173;
              v181[3] = v54;
              v181[4] = v175;
              v181[5] = v50;
              *(v8 + 3) = v126.i64[0];
              *(v8 + 4) = v11;
              v58 = v128.i64[0];
              *(v8 + 5) = v13;
              *(v8 + 6) = v58;
              *(v8 + 7) = v127.i64[0];
              *(v8 + 8) = v48;
              v8[72] = v40;
              v180 = *(v18 + 144);
              v183 = *(v18 + 144);
              v181[0] = v57;
              v181[1] = v53;
              v59 = sub_245F97C14(v181);
              v60 = v182;
              if (v59 == 1)
              {
                v60 = 0;
              }

              v61 = v133.i64[0];
              *(v8 + 10) = v60;
              *(v8 + 11) = v61;
              v62 = *(a2 + 16);
              v63 = *(a2 + 32);
              v64 = *(a2 + 48);
              v65 = *(a2 + 64);
              v66 = *(a2 + 80);
              v67 = *(a2 + 96);
              v68 = *(a2 + 112);
              v69 = *(a2 + 128);
              v70 = *(a2 + 136);
              v71 = *(a2 + 208);
              v165[11] = *(a2 + 192);
              v165[12] = v71;
              LOBYTE(v165[13]) = *(a2 + 224);
              v72 = *(a2 + 176);
              v165[9] = *(a2 + 160);
              v165[10] = v72;
              v164 = 1;
              LODWORD(v165[0]) = 0;
              v165[1] = v62;
              v165[2] = v63;
              v165[3] = v64;
              v165[4] = v65;
              v165[5] = v66;
              v165[6] = v67;
              v165[7] = v68;
              LOBYTE(v165[8]) = v69;
              *(&v165[8] + 1) = v70;
              memset(&v165[14], 0, 64);
              LOBYTE(v165[18]) = 1;
              memset(&v165[19], 0, 64);
              LOBYTE(v165[23]) = 1;
              nullsub_1();
              memcpy(v166, v8 + 96, 0x171uLL);
              v73 = v61;
              v74 = v11;
              v75 = v13;
              v76 = v70;
              sub_245F8E7A4(v172, v167, &qword_27EE3A990, &qword_246099C20);
              sub_245F8E744(v166, &qword_27EE39F78, &unk_246096990);
              memcpy(v8 + 96, v165, 0x171uLL);
              memcpy(v167, v165, 0x171uLL);
              if (sub_245F97C38(v167) != 1)
              {
                v77 = *(a2 + 288);
                *(v8 + 22) = *(a2 + 272);
                *(v8 + 23) = v77;
                v8[384] = *(a2 + 304);
                v78 = *(a2 + 256);
                *(v8 + 20) = *(a2 + 240);
                *(v8 + 21) = v78;
                v79 = *(a2 + 368);
                *(v8 + 27) = *(a2 + 352);
                *(v8 + 28) = v79;
                v8[464] = *(a2 + 384);
                v80 = *(a2 + 336);
                *(v8 + 25) = *(a2 + 320);
                *(v8 + 26) = v80;
              }

              v81 = *(v18 + 112);
              v82 = *(v18 + 80);
              v150 = *(v18 + 96);
              v151 = v81;
              v83 = *(v18 + 112);
              v152 = *(v18 + 128);
              v84 = *(v18 + 48);
              v85 = *(v18 + 16);
              v146 = *(v18 + 32);
              v147 = v84;
              v86 = *(v18 + 48);
              v87 = *(v18 + 80);
              v148 = *(v18 + 64);
              v149 = v87;
              v88 = *(v18 + 16);
              v145[0] = *v18;
              v145[1] = v88;
              v160 = v150;
              v161 = v83;
              v162 = *(v18 + 128);
              v156 = v146;
              v157 = v86;
              v158 = v148;
              v159 = v82;
              v153 = *(v18 + 144);
              v163 = *(v18 + 144);
              v154 = v145[0];
              v155 = v85;
              if (sub_245F97C14(&v154) == 1)
              {
                v89 = v132;
                v90 = (a2 + v132[8]);
                if ((v90[4].i8[9] & 1) == 0)
                {
                  v133 = *v90;
                  v129 = v90[1];
                  v128 = v90[2];
                  v127 = v90[3];
                  v91 = sub_246090E60();
                  *&v92 = sub_246021644(v133, v129, v128, v127, *v91);
                  v135.i8[0] = 0;
                  *(v8 + 39) = v92;
                  *(v8 + 40) = v93;
                  *(v8 + 41) = v94;
                  *(v8 + 42) = v95;
                  v8[688] = 0;
                }
              }

              else
              {
                v125 = v155;
                v126 = v154;
                v123 = v157;
                v124 = v156;
                v133 = v158;
                v128 = v160;
                v129 = v159;
                v127 = v161;
                v97 = v152;
                v98 = sub_246090EC4();
                *v99.i64 = sub_246021644(v126, v125, v124, v123, *v98);
                v125 = v100;
                v126 = v99;
                v123 = v102;
                v124 = v101;
                sub_245F8E744(v145, &qword_27EE3A990, &qword_246099C20);
                v135 = v133;
                v136 = v129;
                v137 = v128;
                v138 = v127;
                v139 = v126;
                v140 = v125;
                v141 = v124;
                v142 = v123;
                sub_245F97D8C(&v135);
                v103 = v142;
                *(v8 + 36) = v141;
                *(v8 + 37) = v103;
                v8[608] = v143;
                v104 = v138;
                *(v8 + 32) = v137;
                *(v8 + 33) = v104;
                v105 = v140;
                *(v8 + 34) = v139;
                *(v8 + 35) = v105;
                v106 = v136;
                *(v8 + 30) = v135;
                *(v8 + 31) = v106;
                v89 = v132;
              }

              v107 = *(a2 + v89[9]);
              if (v107 == 2)
              {
                v108 = -1;
              }

              else
              {
                v135.i8[0] = v107 & 1;
                v108 = ObjectCaptureSession.Metadata.Shot.CaptureMode.rawValue.getter();
              }

              *(v8 + 87) = v108;
              v8[704] = 0;
              v109 = *(a2 + v89[11]);
              *(v8 + 89) = v109;
              *(v8 + 90) = v9;
              v8[728] = 0;
              v110 = *(v18 + 16);
              v135 = *v18;
              v136 = v110;
              v111 = *(v18 + 112);
              v141 = *(v18 + 96);
              v142 = v111;
              v143 = *(v18 + 128);
              v144 = *(v18 + 144);
              v112 = *(v18 + 48);
              v137 = *(v18 + 32);
              v138 = v112;
              v113 = *(v18 + 80);
              v139 = *(v18 + 64);
              v140 = v113;
              if (sub_245F97C14(&v135) == 1 || v144 == 1)
              {
                v114 = a2 + v89[8];
                if (*(v114 + 73) & 1) != 0 || (*(v114 + 72))
                {
                  v115 = -1;
                }

                else
                {
                  v115 = *(v114 + 64);
                }
              }

              else
              {
                v115 = *(&v143 + 1);
              }

              v116 = &v8[v6[21]];
              v117 = v6[24];
              *v116 = v115;
              v116[8] = 0;
              v118 = v89[6];
              v119 = v109;
              sub_245F97C5C(a2 + v118, &v8[v131]);
              *&v8[v117] = *(a2 + v89[13]);
              v120 = (a2 + v89[12]);
              v121 = *v120;
              LOBYTE(v120) = *(v120 + 8);
              v122 = v130;
              *v130 = v121;
              v122[8] = v120;
              sub_245F97CCC(v8, a3);
              (*(v134 + 56))(a3, 0, 1, v6);

              return sub_245F97D30(v8);
            }

LABEL_40:
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_40;
        }
      }
    }
  }

  v96 = *(v134 + 56);

  return v96(a3, 1, 1, v6);
}

void sub_245F97058(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v2 = v1;
  v4 = v3;
  v91 = v5;
  v7 = v6;
  v8 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v8 - 8);
  v90 = &v77 - v9;
  if (*(v2 + 728))
  {
    __break(1u);
    goto LABEL_27;
  }

  v10 = *(v2 + 720);
  v11 = *(v2 + 8);
  v12 = *(v2 + 32);
  v13 = *(v2 + 40);
  v14 = *(v2 + 88);
  v15 = v14;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  sub_246036680(v16, v12, v13, v14, v140, v10);
  v19 = v140[0];
  v20 = v140[1];
  v21 = v140[2];
  v87 = v140[4];
  v88 = v140[3];
  sub_245F97D94(v135);
  v137 = 1;
  v22 = type metadata accessor for PhotogrammetrySample(0);
  v24 = *(v22 + 80);
  v23 = *(v22 + 84);
  v86 = v22;
  v25 = (v2 + v23);
  v26 = *v25;
  v27 = *(v25 + 8);
  v28 = *(*v4 + 104);
  v85 = v24;
  v29 = v28(v2 + v24, v26, v27);
  v30 = *(v2 + 496);
  v138[0] = *(v2 + 480);
  v138[1] = v30;
  v31 = *(v2 + 528);
  v138[2] = *(v2 + 512);
  v138[3] = v31;
  v32 = *(v2 + 544);
  v33 = *(v2 + 576);
  v34 = *(v2 + 592);
  v35 = *(v2 + 608);
  v94 = *(v2 + 560);
  v95 = v32;
  v138[4] = v32;
  v138[5] = v94;
  v92 = v34;
  v93 = v33;
  v138[6] = v33;
  v138[7] = v34;
  v139 = v35;
  if (sub_245F97DBC(v138) != 1)
  {
    v46 = sub_246090EC4();
    *v37.i64 = sub_246021574(v95, v94, v93, v92, *v46);
    v36 = 0;
    v105.n128_u8[0] = 0;
    if ((*(v2 + 688) & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    if (v36)
    {
      OCNonModularSPI_Serialization_InvalidBoundingBoxTransform();
    }

    v92 = v40;
    v93 = v39;
    v94 = v38;
    v95 = v37;
    OCNonModularSPI_Serialization_InvalidObjectTransform();
    goto LABEL_9;
  }

  v36 = 1;
  v37 = 0uLL;
  v38 = 0uLL;
  v39 = 0uLL;
  v40 = 0uLL;
  if (*(v2 + 688))
  {
    goto LABEL_6;
  }

LABEL_4:
  v95 = *(v2 + 624);
  v94 = *(v2 + 640);
  v93 = *(v2 + 656);
  v92 = *(v2 + 672);
  v41 = sub_246090E60();
  *v42.i64 = sub_246021574(v95, v94, v93, v92, *v41);
  v94 = v43;
  v95 = v42;
  v92 = v45;
  v93 = v44;
LABEL_9:
  v47 = *(v2 + 696);
  v48 = *(v2 + 704);
  v89 = v21;
  if (v48)
  {
    goto LABEL_13;
  }

  if (v47 == 1)
  {
    sub_2460368C0(v29, 0, &v105, v95, v94, v93, v92);
    v95.i32[0] = 0;
    v92 = v106;
    v53 = v108;
    v93 = v107;
    v94 = v105;
    v51 = v109;
    v134 = v136;
    v52 = BYTE8(v109);
    LOBYTE(v124[0]) = 0;
    v131 = v135[6];
    v132 = v135[7];
    v133 = v135[8];
    v127 = v135[2];
    v128 = v135[3];
    v129 = v135[4];
    v130 = v135[5];
    v125 = v135[0];
    v126 = v135[1];
    goto LABEL_17;
  }

  if (v47)
  {
LABEL_13:
    v54 = *(v2 + 80);
    v81 = v42;
    v82 = v43;
    v83 = v44;
    v84 = v45;
    v55 = v54;
    sub_246036888(v54, v29, 0, &v105, v95, v94, v93, v92, v81, v82, v83, v84);
    nullsub_1();
    v52 = 0;
    v51 = 0;
    v131 = v111;
    v132 = v112;
    v133 = v113;
    v134 = v114;
    v127 = v107;
    v128 = v108;
    v129 = v109;
    v130 = v110;
    v125 = v105;
    v126 = v106;
    v53 = 0uLL;
    v95.i32[0] = v137;
    if (v48)
    {
      v93 = 0uLL;
      v94 = 0uLL;
      v56 = 2;
      v92 = 0uLL;
      v84 = 0uLL;
      goto LABEL_18;
    }

    v92 = 0uLL;
    v93 = 0uLL;
    v94 = 0uLL;
  }

  else
  {
    v49 = *(v2 + 80);
    v81 = v42;
    v82 = v43;
    v83 = v44;
    v84 = v45;
    v50 = v49;
    sub_246036888(v49, v29, 0, &v105, v95, v94, v93, v92, v81, v82, v83, v84);
    nullsub_1();
    v51 = 0;
    v52 = 0;
    v131 = v111;
    v132 = v112;
    v133 = v113;
    v134 = v114;
    v127 = v107;
    v128 = v108;
    v129 = v109;
    v130 = v110;
    v53 = 0uLL;
    v125 = v105;
    v126 = v106;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95.i32[0] = v137;
  }

LABEL_17:
  v84 = v53;
  ObjectCaptureSession.Metadata.Shot.CaptureMode.init(rawValue:)(v47);
  v56 = v105.n128_u8[0];
LABEL_18:
  memcpy(v124, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v124) == 1)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  memcpy(v123, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v123) == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memcpy(v122, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v122) == 1)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v83.n128_u32[0] = v52;
  v119 = v122[128];
  memcpy(v120, (v2 + 96), sizeof(v120));
  memcpy(v121, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v121) == 1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v57 = *(v2 + 16);
  memcpy(v118, (v2 + 96), sizeof(v118));
  if (sub_245F97C38(v118) == 1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v82.n128_u64[0] = v7;
  memcpy(v117, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v117) == 1)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v58 = v56;
  v59 = v51;
  v81.n128_u64[0] = v20;
  memcpy(v116, (v2 + 96), 0x171uLL);
  if (sub_245F97C38(v116) != 1)
  {
    v141[0] = v124[1];
    v141[1] = v124[2];
    v79 = v123[5];
    v80 = v123[4];
    v77 = v123[7];
    v78 = v123[6];
    v60 = v121[17];
    v142[1] = *&v118[160];
    v142[2] = *&v118[176];
    v142[3] = *&v118[192];
    v143 = v118[208];
    v141[2] = v124[3];
    v142[0] = *&v118[144];
    v145 = v117[18];
    v144[2] = v117[16];
    v144[3] = v117[17];
    v144[0] = v117[14];
    v144[1] = v117[15];
    v147 = v116[23];
    v146[2] = v116[21];
    v146[3] = v116[22];
    v146[0] = v116[19];
    v146[1] = v116[20];
    memcpy(v115, v120, 0x171uLL);
    sub_245F97DD8(v115, &v105);
    v61 = sub_246036790();
    v62 = sub_246036790();
    sub_24603679C(v141, &v119, v60, v57, v142, v144, v146, v61, &v105, v80, v79, v78, v77, v62);
    v63 = v90;
    sub_245F8E7A4(v2 + v85, v90, &qword_27EE3A350, &unk_2460969A0);
    v103[6] = v131;
    v103[7] = v132;
    v103[8] = v133;
    v104 = v134;
    v103[2] = v127;
    v103[3] = v128;
    v103[4] = v129;
    v103[5] = v130;
    v103[0] = v125;
    v103[1] = v126;
    v99[0] = v94;
    v99[1] = v92;
    v99[2] = v93;
    v99[3] = v84;
    v100 = v59;
    v101 = v83.n128_u8[0];
    v102 = v95.i8[0];
    v98 = v58;
    v64 = *(v2 + 48);
    v65 = *(v2 + 56);
    v66 = *(v2 + 64);
    v67 = *(v2 + 72);
    v68 = *(v2 + 712);
    v69 = *(v86 + 96);
    v70 = v2 + *(v86 + 92);
    v71 = *v70;
    LOBYTE(v70) = *(v70 + 8);
    v96 = v71;
    v97 = v70;
    v72 = *(v2 + v69);
    v73 = v68;

    sub_246036B50(&v105, v63, v103, v99, &v98, v64, v65, v66, v91, v10, v67, v68, &v96, v72);
    v74 = v82.n128_u64[0];
    *v82.n128_u64[0] = v19;
    v75 = v88;
    v76 = v89;
    v74[1] = v81.n128_u64[0];
    v74[2] = v76;
    v74[3] = v75;
    v74[4] = v87;
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t sub_245F9780C(uint64_t a1)
{
  v3 = *(v1 + 720);
  v4 = *(v1 + 88);
  if (v4)
  {
    v5 = v4;
    filteredDepthPointCloud(_:)(v9);

    v6 = v9[3];
    *(a1 + 32) = v9[2];
    *(a1 + 48) = v6;
    *(a1 + 64) = v10;
    v7 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v7;
  }

  else
  {
    *(a1 + 64) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return v3;
}

void sub_245F9789C(uint64_t a1@<X8>)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + 592);
  v30 = *(v1 + 576);
  v31 = v7;
  v32 = *(v1 + 608);
  v8 = *(v1 + 528);
  v27[2] = *(v1 + 512);
  v27[3] = v8;
  v9 = *(v1 + 560);
  v28 = *(v1 + 544);
  v29 = v9;
  v10 = *(v1 + 496);
  v27[0] = *(v1 + 480);
  v27[1] = v10;
  if (sub_245F97DBC(v27) != 1)
  {
    v25 = v28;
    v24 = v29;
    v20 = v31;
    v23 = v30;
LABEL_8:
    v22 = v20;
    v21 = sub_246090EC4();
    *&v16 = sub_246021574(v25, v24, v23, v22, *v21);
    v15 = 0;
    v26 = 0;
    goto LABEL_9;
  }

  if ((*(v1 + 688) & 1) == 0)
  {
    v25 = *(v1 + 624);
    v24 = *(v1 + 640);
    v23 = *(v1 + 656);
    v20 = *(v1 + 672);
    goto LABEL_8;
  }

  v11 = sub_245FA3174();
  (*(v4 + 16))(v6, v11, v3);
  v12 = sub_2460918D4();
  v13 = sub_246091FB4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_245F8A000, v12, v13, "No bounding box found in the PhotogrammetrySample!", v14, 2u);
    MEMORY[0x24C1989D0](v14, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  v15 = 1;
  v16 = 0uLL;
  v17 = 0uLL;
  v18 = 0uLL;
  v19 = 0uLL;
LABEL_9:
  *a1 = v16;
  *(a1 + 16) = v17;
  *(a1 + 32) = v18;
  *(a1 + 48) = v19;
  *(a1 + 64) = v15;
}

double sub_245F97B00(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0;
  return result;
}

double sub_245F97B40(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 1;
  return result;
}

uint64_t type metadata accessor for PhotogrammetrySample(uint64_t a1)
{
  result = qword_27EE3B620;
  if (!qword_27EE3B620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_245F97BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_245F8E624(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_245F97C14(uint64_t a1)
{
  v1 = *(a1 + 128);
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

uint64_t sub_245F97C38(uint64_t a1)
{
  v1 = *(a1 + 136);
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

uint64_t sub_245F97C5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F97CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySample(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245F97D30(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySample(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_245F97D94(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 1;
  *(a1 + 128) = xmmword_246096980;
  *(a1 + 144) = 0;
  return result;
}

uint64_t sub_245F97DBC(uint64_t a1)
{
  if (*(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F97E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 76);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 80);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_245F97F80(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 76);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 80);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_245F980BC(uint64_t a1)
{
  type metadata accessor for CVBuffer(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGImagePropertyOrientation(319);
    if (v2 <= 0x3F)
    {
      sub_245F98528();
      if (v3 <= 0x3F)
      {
        sub_245F9858C(319, &qword_27EE39F90, type metadata accessor for CVBuffer, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          sub_245F9858C(319, &unk_27EE3ABC0, type metadata accessor for CMAcceleration, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_245F98868(319, &qword_27EE39F98, &type metadata for PhotogrammetrySample.Camera, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              sub_245F98868(319, &qword_27EE39FA0, &type metadata for PhotogrammetrySample.Object, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_245F98868(319, &qword_27EE39FA8, &type metadata for PhotogrammetrySample.Scene, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  sub_245F98868(319, &qword_27EE39FB0, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    sub_245F9858C(319, &qword_27EE39FB8, sub_245F98618, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_245F98868(319, &qword_27EE39FC0, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
                      if (v11 <= 0x3F)
                      {
                        sub_245F9858C(319, &qword_27EE39FC8, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
                        if (v12 <= 0x3F)
                        {
                          sub_245F9858C(319, &qword_27EE3ABA0, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
                          if (v13 <= 0x3F)
                          {
                            sub_245F98868(319, &qword_27EE39FD0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                            if (v14 <= 0x3F)
                            {
                              sub_245F98868(319, &qword_27EE39FD8, &type metadata for ObjectCaptureSession.Frame.Feedback, MEMORY[0x277D83D88]);
                              if (v15 <= 0x3F)
                              {
                                sub_245F9858C(319, &unk_27EE3ABE0, type metadata accessor for TemporalDepthPointCloud, MEMORY[0x277D83940]);
                                if (v16 <= 0x3F)
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
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_245F98528()
{
  if (!qword_27EE39F88)
  {
    v0 = sub_246091B74();
    if (!v1)
    {
      atomic_store(v0, &qword_27EE39F88);
    }
  }
}

void sub_245F9858C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_245F98618()
{
  result = qword_27EE3ABD0;
  if (!qword_27EE3ABD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3ABD0);
  }

  return result;
}

uint64_t sub_245F9866C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 369))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 136);
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

uint64_t sub_245F986C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 360) = 0;
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
    *(result + 368) = 0;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 369) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 369) = 0;
    }

    if (a2)
    {
      *(result + 136) = a2;
    }
  }

  return result;
}

__n128 sub_245F98790(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_245F987B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 128))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F987D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 128) = v3;
  return result;
}

void sub_245F98868(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

__n128 sub_245F988B8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MeshBounds(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MeshBounds(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
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

  *(result + 24) = v3;
  return result;
}

int64_t sub_245F98918@<X0>(__CVBuffer *a1@<X0>, int64_t a2@<X1>, int64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  Width = CVPixelBufferGetWidth(a1);
  result = CVPixelBufferGetHeight(a1);
  if ((a3 | a2) < 0 || Width <= a2 || result <= a3)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  result = CVPixelBufferGetBaseAddress(a1);
  if (!result)
  {
LABEL_18:
    __break(1u);
    return result;
  }

  v13 = a3 * BytesPerRow;
  if ((a3 * BytesPerRow) >> 64 != (a3 * BytesPerRow) >> 63)
  {
    goto LABEL_14;
  }

  v14 = *(*(a4 - 8) + 64);
  if (!v14)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v13 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_17;
  }

  v15 = v13 / v14;
  v16 = __OFADD__(a2, v15);
  v17 = a2 + v15;
  if (v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  (*(*(a4 - 8) + 16))(a5, result + *(*(a4 - 8) + 72) * v17, a4);

  return CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

void sub_245F98A6C(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
}

BOOL sub_245F98A80(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, uint64_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, __n128 a8)
{
  v42 = a7;
  v43 = a8;
  v40 = a5;
  v41 = a6;
  v13 = sub_2460918F4();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v40 - v18;
  v21 = *v8;
  v20 = *(v8 + 8);
  v22 = sub_2460209E8(a1, a2, a3, a4, 1, v40, v41, v42, v43, *v8, v20);
  v24 = v23;
  v26 = v25;
  *(v8 + 16) = v22;
  *(v8 + 24) = v23;
  *(v8 + 32) = v25 & 1;
  v27 = sub_245FA3174();
  v28 = *(v14 + 16);
  if (v26)
  {
    v28(v16, v27, v13);
    v29 = sub_2460918D4();
    v30 = sub_246091FB4();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44 = v32;
      *v31 = 136380675;
      *(v31 + 4) = sub_245F8D3C0(0xD000000000000043, 0x800000024609E800, &v44);
      _os_log_impl(&dword_245F8A000, v29, v30, "ObjectCaptureSession.%{private}s: Failed to map image point to world point!", v31, 0xCu);
      sub_245F8E6F4(v32);
      MEMORY[0x24C1989D0](v32, -1, -1);
      MEMORY[0x24C1989D0](v31, -1, -1);
    }

    (*(v14 + 8))(v16, v13);
  }

  else
  {
    v28(v19, v27, v13);
    v33 = sub_2460918D4();
    v34 = sub_246091FC4();
    if (os_log_type_enabled(v33, v34))
    {
      v35.n128_u64[0] = v22;
      v35.n128_u64[1] = v24;
      v43 = v35;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136381955;
      *(v36 + 4) = sub_245F8D3C0(0xD000000000000043, 0x800000024609E800, &v44);
      *(v36 + 12) = 2050;
      *(v36 + 14) = *&v22;
      *(v36 + 22) = 2050;
      v38 = v43.n128_f32[2];
      *(v36 + 24) = v43.n128_f32[1];
      *(v36 + 32) = 2050;
      *(v36 + 34) = v38;
      *(v36 + 42) = 2050;
      *(v36 + 44) = v21;
      *(v36 + 52) = 2050;
      *(v36 + 54) = v20;
      _os_log_impl(&dword_245F8A000, v33, v34, "ObjectCaptureSession.%{private}s: Successfully computed world point: x = %{public}f, y = %{public}f, z = %{public}f, from tap image point: u = %{public}f, v = %{public}f", v36, 0x3Eu);
      sub_245F8E6F4(v37);
      MEMORY[0x24C1989D0](v37, -1, -1);
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v14 + 8))(v19, v13);
  }

  return (v26 & 1) == 0;
}

__n128 sub_245F98E0C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_245F98E20(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F98E40(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
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

  *(result + 33) = v3;
  return result;
}

void type metadata accessor for CGPoint()
{
  if (!qword_27EE39FE8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE39FE8);
    }
  }
}

uint64_t sub_245F98EE0()
{
  v0 = sub_245F9BA0C(&unk_2858DDDE8);
  result = swift_arrayDestroy();
  qword_27EE3EF60 = v0;
  return result;
}

uint64_t sub_245F98F2C@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v42 = sub_246091704();
  v39 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_2460918F4();
  v44 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091554();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  sub_245F8E624(&qword_27EE39FF0, "fN");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096460;
  v17 = *MEMORY[0x277CBE7C0];
  *(inited + 32) = *MEMORY[0x277CBE7C0];
  v18 = v17;
  sub_245F9BB74(inited);
  swift_setDeallocating();
  sub_245F9D3A4(inited + 32, type metadata accessor for URLResourceKey);
  v38 = a1;
  sub_246091624();

  sub_246091544();
  (*(v7 + 8))(v9, v6);
  sub_245F8E7A4(v15, v12, &qword_27EE39F80, &unk_246096C10);
  v19 = sub_2460917D4();
  v20 = *(v19 - 8);
  v21 = (*(v20 + 48))(v12, 1, v19);
  v22 = v44;
  v24 = v41;
  v23 = v42;
  if (v21 == 1)
  {
    sub_245F9BD7C(v12);
    v25 = sub_245FA31EC();
    v26 = v40;
    (*(v22 + 16))(v5, v25, v40);
    v27 = v39;
    (*(v39 + 16))(v24, v38, v23);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = v23;
      v32 = swift_slowAlloc();
      v45 = v32;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v33 = sub_2460916F4();
      v38 = v5;
      v35 = v34;
      (*(v27 + 8))(v24, v31);
      v36 = sub_245F8D3C0(v33, v35, &v45);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_245F8A000, v28, v29, "Image Helper: Creation data is nil for: %{private,mask.hash}s.", v30, 0x16u);
      sub_245F8E6F4(v32);
      MEMORY[0x24C1989D0](v32, -1, -1);
      MEMORY[0x24C1989D0](v30, -1, -1);

      (*(v44 + 8))(v38, v40);
    }

    else
    {

      (*(v27 + 8))(v24, v23);
      (*(v22 + 8))(v5, v26);
    }

    sub_246091764();
    return sub_245F9BD7C(v15);
  }

  else
  {
    sub_245F9BD7C(v15);
    return (*(v20 + 32))(v43, v12, v19);
  }
}

void sub_245F994C8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v153 = a1;
  v152 = a3;
  v154 = sub_2460917D4();
  v155 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v149 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  MEMORY[0x28223BE20](v5 - 8);
  v148 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v159 = &v141 - v8;
  v144 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v144);
  v10 = &v141 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091704();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v156 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v157 = &v141 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v141 - v17;
  v19 = sub_2460918F4();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v160 = (&v141 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v22);
  v150 = &v141 - v23;
  MEMORY[0x28223BE20](v24);
  v147 = &v141 - v25;
  MEMORY[0x28223BE20](v26);
  v146 = &v141 - v27;
  MEMORY[0x28223BE20](v28);
  v145 = &v141 - v29;
  MEMORY[0x28223BE20](v30);
  v158 = &v141 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v141 - v33;
  v35 = sub_245FA31EC();
  v170 = v20;
  v171 = v19;
  v36 = *(v20 + 16);
  v166 = v35;
  v167 = v36;
  v168 = v20 + 16;
  (v36)(v34);
  v37 = *(v12 + 16);
  v172 = a2;
  v161 = v37;
  v162 = v12 + 16;
  v37(v18, a2, v11);
  v38 = sub_2460918D4();
  v39 = sub_246091FC4();
  v40 = os_log_type_enabled(v38, v39);
  v163 = v12;
  v164 = v11;
  if (v40)
  {
    v41 = v12;
    v42 = v11;
    v43 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v173 = v169;
    *v43 = 141558275;
    *(v43 + 4) = 1752392040;
    *(v43 + 12) = 2081;
    sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v44 = sub_2460923D4();
    v151 = v10;
    v46 = v45;
    v47 = *(v41 + 8);
    v47(v18, v42);
    v48 = sub_245F8D3C0(v44, v46, &v173);
    v10 = v151;

    *(v43 + 14) = v48;
    _os_log_impl(&dword_245F8A000, v38, v39, "Image Helper: Trying to load sample = %{private,mask.hash}s...", v43, 0x16u);
    v49 = v169;
    sub_245F8E6F4(v169);
    MEMORY[0x24C1989D0](v49, -1, -1);
    MEMORY[0x24C1989D0](v43, -1, -1);
  }

  else
  {

    v47 = *(v12 + 8);
    v47(v18, v11);
  }

  v169 = *(v170 + 8);
  (v169)(v34, v171);
  v50 = sub_246091674();
  v51 = CGImageSourceCreateWithURL(v50, 0);

  if (v51)
  {
    v52 = v165;
    v53 = sub_245F9BE38(v51, 0, v172);
    v54 = v52;
    if (v52)
    {
    }

    else
    {
      v165 = v47;
      v68 = v53;
      PhotogrammetrySample.init(id:image:)(v153, v68, v10);
      v69 = sub_245F9C46C(v51, 0, v172);

      *(v10 + 3) = v69;
      v167(v158, v166, v171);
      v70 = v68;
      v71 = sub_2460918D4();
      v72 = sub_246091FA4();
      v73 = os_log_type_enabled(v71, v72);
      v160 = v70;
      if (v73)
      {
        v74 = v10;
        v75 = v70;
        v76 = swift_slowAlloc();
        *v76 = 134349312;
        *(v76 + 4) = CVPixelBufferGetWidth(v75);
        *(v76 + 12) = 2050;
        *(v76 + 14) = CVPixelBufferGetHeight(v75);

        _os_log_impl(&dword_245F8A000, v71, v72, "Image Helper: Loaded image w=%{public}ld h=%{public}ld", v76, 0x16u);
        v10 = v74;
        MEMORY[0x24C1989D0](v76, -1, -1);
      }

      else
      {

        v71 = v70;
      }

      v81 = v157;
      v82 = v155;

      v170 += 8;
      (v169)(v158, v171);
      type metadata accessor for PhotogrammetryMetadataHelper();
      v83 = sub_245F8BD84(v69);
      v84 = *(*v83 + 176);
      v158 = v83;
      v85 = v84();
      if ((v88 & 1) == 0)
      {
        v89 = v85;
        v90 = v86;
        v151 = v87;
        v91 = v145;
        v167(v145, v166, v171);
        v92 = sub_2460918D4();
        v93 = sub_246091FA4();
        if (os_log_type_enabled(v92, v93))
        {
          v94 = swift_slowAlloc();
          v142 = v94;
          v143 = swift_slowAlloc();
          v176 = v143;
          *v94 = 136446210;
          v173 = v89;
          v174 = v90;
          v175 = v151;
          type metadata accessor for CMAcceleration(0);
          v95 = sub_246091C54();
          v156 = 0;
          v97 = v89;
          v98 = v90;
          v99 = sub_245F8D3C0(v95, v96, &v176);
          v100 = v171;
          v82 = v155;

          v101 = v142;
          *(v142 + 1) = v99;
          v90 = v98;
          v89 = v97;
          v102 = v101;
          _os_log_impl(&dword_245F8A000, v92, v93, "Image Helper: Sample loader attached metadata gravity = %{public}s", v101, 0xCu);
          v103 = v143;
          sub_245F8E6F4(v143);
          MEMORY[0x24C1989D0](v103, -1, -1);
          MEMORY[0x24C1989D0](v102, -1, -1);

          v104 = v145;
          v105 = v100;
          v54 = v156;
        }

        else
        {

          v104 = v91;
          v105 = v171;
        }

        (v169)(v104, v105);
        v106 = v151;
        *(v10 + 6) = v89;
        *(v10 + 7) = v90;
        *(v10 + 8) = v106;
        v10[72] = 0;
        v81 = v157;
      }

      v107 = sub_245F9C9F0(v51, 0);
      v108 = *(v10 + 4);
      *(v10 + 4) = v107;
      v109 = v107;

      if (v107)
      {
      }

      else
      {
        v167(v146, v166, v171);
        v110 = sub_2460918D4();
        v111 = sub_246091F94();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          *v112 = 0;
          _os_log_impl(&dword_245F8A000, v110, v111, "Image Helper: Didn't find embedded disparity map, checking for depth.", v112, 2u);
          v113 = v112;
          v82 = v155;
          v81 = v157;
          MEMORY[0x24C1989D0](v113, -1, -1);
        }

        (v169)(v146, v171);
        v114 = sub_245F9CEB8(v51, 0);

        *(v10 + 4) = v114;
      }

      type metadata accessor for PhotogrammetryImageHelper();
      v115 = v159;
      sub_245F9A538(v172, v159);
      v116 = v115;
      v117 = v148;
      sub_245F8E7A4(v116, v148, &qword_27EE39F80, &unk_246096C10);
      v118 = v154;
      if ((*(v82 + 48))(v117, 1, v154) == 1)
      {
        sub_245F9BD7C(v117);
      }

      else
      {
        v119 = v149;
        (*(v82 + 32))(v149, v117, v118);
        v120 = *(v144 + 76);
        sub_245F9BD7C(&v10[v120]);
        (*(v82 + 16))(&v10[v120], v119, v118);
        (*(v82 + 56))(&v10[v120], 0, 1, v118);
        v121 = sub_245FA3174();
        v167(v147, v121, v171);
        v122 = sub_2460918D4();
        v123 = sub_246091FC4();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          *v124 = 134349056;
          *(v124 + 4) = v153;
          _os_log_impl(&dword_245F8A000, v122, v123, "Image Folder Reader: Parsed EXIF capture timestamp field of sample (id = %{public}ld)", v124, 0xCu);
          v125 = v124;
          v118 = v154;
          MEMORY[0x24C1989D0](v125, -1, -1);
        }

        (v169)(v147, v171);
        (*(v82 + 8))(v149, v118);
      }

      v126 = v150;
      v167(v150, v166, v171);
      v127 = v164;
      v161(v81, v172, v164);
      v128 = sub_2460918D4();
      v129 = sub_246091F94();
      if (os_log_type_enabled(v128, v129))
      {
        v130 = swift_slowAlloc();
        v156 = v54;
        v131 = v127;
        v132 = v130;
        v133 = swift_slowAlloc();
        v151 = v10;
        v134 = v133;
        v173 = v133;
        *v132 = 141558275;
        *(v132 + 4) = 1752392040;
        *(v132 + 12) = 2081;
        sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
        v135 = sub_2460923D4();
        v136 = v81;
        v138 = v137;
        (v165)(v136, v131);
        v139 = sub_245F8D3C0(v135, v138, &v173);

        *(v132 + 14) = v139;
        _os_log_impl(&dword_245F8A000, v128, v129, "Image Helper: Successfully loaded %{private,mask.hash}s!", v132, 0x16u);
        sub_245F8E6F4(v134);
        v140 = v134;
        v10 = v151;
        MEMORY[0x24C1989D0](v140, -1, -1);
        MEMORY[0x24C1989D0](v132, -1, -1);
      }

      else
      {

        (v165)(v81, v127);
      }

      (v169)(v126, v171);
      sub_245F9BD7C(v159);
      sub_245F97CCC(v10, v152);
      sub_245F9D3A4(v10, type metadata accessor for PhotogrammetrySample);
    }
  }

  else
  {
    v55 = v160;
    v167(v160, v166, v171);
    v56 = v156;
    v57 = v164;
    v161(v156, v172, v164);
    v58 = sub_2460918D4();
    v59 = sub_246091FB4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = v56;
      v62 = swift_slowAlloc();
      v173 = v62;
      *v60 = 141558275;
      *(v60 + 4) = 1752392040;
      *(v60 + 12) = 2081;
      v63 = sub_2460916F4();
      v65 = v64;
      v47(v61, v57);
      v66 = sub_245F8D3C0(v63, v65, &v173);

      *(v60 + 14) = v66;
      _os_log_impl(&dword_245F8A000, v58, v59, "Image Helper: Error in CGImageSourceCreateWithURL for %{private,mask.hash}s", v60, 0x16u);
      sub_245F8E6F4(v62);
      MEMORY[0x24C1989D0](v62, -1, -1);
      MEMORY[0x24C1989D0](v60, -1, -1);

      v67 = v160;
    }

    else
    {

      v47(v56, v57);
      v67 = v55;
    }

    (v169)(v67, v171);
    v173 = 0;
    v174 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000036, 0x800000024609E850);
    v77 = sub_2460916F4();
    MEMORY[0x24C196640](v77);

    v78 = v173;
    v79 = v174;
    sub_245F9BDE4();
    swift_allocError();
    *v80 = v78;
    *(v80 + 8) = v79;
    *(v80 + 16) = 1;
    swift_willThrow();
  }
}

uint64_t sub_245F9A538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_246091704();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460918F4();
  v34 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v32 - v12;
  v14 = sub_246091674();
  v15 = CGImageSourceCreateWithURL(v14, 0);

  if (v15)
  {
    v16 = a2;
    v17 = sub_245F9C46C(v15, 0, a1);
    type metadata accessor for PhotogrammetryMetadataHelper();
    v18 = sub_245F8BD84(v17);
    (*(*v18 + 144))(v18);

    v19 = sub_2460917D4();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v13, 1, v19) == 1)
    {
      sub_245F9BD7C(v13);
      return (*(v20 + 56))(v16, 1, 1, v19);
    }

    else
    {
      (*(v20 + 32))(v16, v13, v19);
      return (*(v20 + 56))(v16, 0, 1, v19);
    }
  }

  else
  {
    v22 = sub_245FA31EC();
    (*(v34 + 16))(v10, v22, v8);
    (*(v5 + 16))(v7, a1, v4);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v35 = v32;
      *v25 = 141558275;
      *(v25 + 4) = 1752392040;
      *(v25 + 12) = 2081;
      v26 = sub_2460916F4();
      v33 = a2;
      v28 = v27;
      (*(v5 + 8))(v7, v4);
      v29 = sub_245F8D3C0(v26, v28, &v35);
      a2 = v33;

      *(v25 + 14) = v29;
      _os_log_impl(&dword_245F8A000, v23, v24, "Image Helper: Error in CGImageSourceCreateWithURL for %{private,mask.hash}s", v25, 0x16u);
      v30 = v32;
      sub_245F8E6F4(v32);
      MEMORY[0x24C1989D0](v30, -1, -1);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    (*(v34 + 8))(v10, v8);
    v31 = sub_2460917D4();
    return (*(*(v31 - 8) + 56))(a2, 1, 1, v31);
  }
}

id sub_245F9A9C8(uint64_t a1)
{
  v6[1] = *MEMORY[0x277D85DE8];
  v1 = sub_246091B34();

  v6[0] = 0;
  v2 = [swift_getObjCClassFromMetadata() depthDataFromDictionaryRepresentation:v1 error:v6];

  if (v2)
  {
    v3 = v6[0];
  }

  else
  {
    v4 = v6[0];
    sub_2460915D4();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_245F9AABC()
{
  if ((sub_2460915E4() & 1) == 0)
  {
    return 0;
  }

  sub_2460915F4();
  v0 = sub_246091C64();
  v2 = v1;

  if (qword_27EE3B630 != -1)
  {
    swift_once();
  }

  v3 = sub_245F9AB64(v0, v2, qword_27EE3EF60);

  return v3 & 1;
}

uint64_t sub_245F9AB64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_246092504();
  sub_246091C94();
  v6 = sub_246092544();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2460923E4() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_245F9AC5C(uint64_t a1)
{
  v2 = sub_246091704();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v27[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_246091674();
  v11 = CGImageSourceCreateWithURL(v10, 0);

  if (v11)
  {
    v12 = sub_245F9C46C(v11, 0, a1);
    type metadata accessor for PhotogrammetryMetadataHelper();
    v13 = sub_245F8BD84(v12);
    v14 = (*(*v13 + 152))(v13);
    if ((v14 & 0x100000000) != 0)
    {
    }

    else
    {
      v15 = v14;
      v16 = (*(*v13 + 160))();

      if ((v16 & 0x100000000) == 0)
      {
        return v15 | (v16 << 32);
      }
    }
  }

  else
  {
    v18 = sub_245FA31EC();
    (*(v7 + 16))(v9, v18, v6);
    (*(v3 + 16))(v5, a1, v2);
    v19 = sub_2460918D4();
    v20 = sub_246091FB4();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30 = v29;
      *v21 = 141558275;
      *(v21 + 4) = 1752392040;
      *(v21 + 12) = 2081;
      v28 = v20;
      v22 = sub_2460916F4();
      v24 = v23;
      (*(v3 + 8))(v5, v2);
      v25 = sub_245F8D3C0(v22, v24, &v30);

      *(v21 + 14) = v25;
      _os_log_impl(&dword_245F8A000, v19, v28, "Image Helper: Error in CGImageSourceCreateWithURL for %{private,mask.hash}s", v21, 0x16u);
      v26 = v29;
      sub_245F8E6F4(v29);
      MEMORY[0x24C1989D0](v26, -1, -1);
      MEMORY[0x24C1989D0](v21, -1, -1);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
    }

    (*(v7 + 8))(v9, v6);
  }

  return 0;
}

uint64_t sub_245F9AFEC()
{
  if ((sub_2460915E4() & 1) == 0)
  {
    return 0;
  }

  sub_2460915F4();
  v0 = sub_246091C64();
  v2 = v1;

  if (v0 == 1667851624 && v2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v4 = sub_2460923E4();

    return v4 & 1;
  }
}

id sub_245F9B098(uint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x277D85DE8];
  v3 = sub_246091704();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v51 - v12;
  if ((sub_2460915E4() & 1) == 0)
  {
    return 0;
  }

  v52 = v13;
  v53 = v4;
  v54 = v7;
  sub_2460915F4();
  v14 = sub_246091C64();
  v16 = v15;

  if (v14 == 1667851624 && v16 == 0xE400000000000000)
  {

    v17 = v8;
  }

  else
  {
    v18 = sub_2460923E4();

    v17 = v8;
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  v19 = sub_246091674();
  v56 = 0;
  Version = OCNonModularSPI_CMPhoto_readVersion();

  v21 = v56;
  v22 = v56;
  v23 = sub_245FA31EC();
  v24 = *(v17 + 16);
  if (Version)
  {
    v25 = v54;
    v24(v10, v23, v54);
    v26 = v53;
    (*(v53 + 16))(v6, a1, v3);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v52 = v22;
      v30 = v29;
      v31 = swift_slowAlloc();
      v51 = v17;
      v32 = v31;
      v56 = v31;
      *v30 = 141558275;
      *(v30 + 4) = 1752392040;
      *(v30 + 12) = 2081;
      v33 = sub_2460916F4();
      v35 = v34;
      (*(v26 + 8))(v6, v3);
      v36 = sub_245F8D3C0(v33, v35, &v56);

      *(v30 + 14) = v36;
      _os_log_impl(&dword_245F8A000, v27, v28, "Image Helper: Error when reading HEIC version for %{private,mask.hash}s", v30, 0x16u);
      sub_245F8E6F4(v32);
      MEMORY[0x24C1989D0](v32, -1, -1);
      MEMORY[0x24C1989D0](v30, -1, -1);

      (*(v51 + 8))(v10, v54);
    }

    else
    {

      (*(v26 + 8))(v6, v3);
      (*(v17 + 8))(v10, v25);
    }

    return 0;
  }

  v37 = v52;
  v38 = v54;
  v24(v52, v23, v54);
  v39 = sub_2460918D4();
  v40 = sub_246091F94();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v55 = v21;
    v56 = v42;
    *v41 = 136315138;
    v43 = v22;
    sub_245F8E624(&qword_27EE3A008, &qword_246096C20);
    v44 = sub_246091C54();
    v46 = sub_245F8D3C0(v44, v45, &v56);

    *(v41 + 4) = v46;
    _os_log_impl(&dword_245F8A000, v39, v40, "Image Helper: Read HEIC version %s", v41, 0xCu);
    sub_245F8E6F4(v42);
    MEMORY[0x24C1989D0](v42, -1, -1);
    MEMORY[0x24C1989D0](v41, -1, -1);
  }

  (*(v17 + 8))(v37, v38);
  if (!v22)
  {
    return 0;
  }

  v56 = 0;
  v57 = 0;
  v47 = v22;
  sub_246091BF4();

  v48 = v56;
  v49 = v57;

  if (v49)
  {
    return v48;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245F9B614(uint64_t a1, id *a2)
{
  result = sub_246091BE4();
  *a2 = 0;
  return result;
}

uint64_t sub_245F9B68C(uint64_t a1, id *a2)
{
  v3 = sub_246091BF4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_245F9B70C@<X0>(uint64_t *a2@<X8>)
{
  sub_246091C04();
  v3 = sub_246091BD4();

  *a2 = v3;
  return result;
}

uint64_t sub_245F9B750()
{
  v0 = sub_246091C04();
  v1 = MEMORY[0x24C1966D0](v0);

  return v1;
}

uint64_t sub_245F9B78C(uint64_t a1)
{
  sub_246091C04();
  sub_246091C94();
}

uint64_t sub_245F9B7E0(uint64_t a1)
{
  sub_246091C04();
  sub_246092504();
  sub_246091C94();
  v1 = sub_246092544();

  return v1;
}

uint64_t sub_245F9B854(void *a1, uint64_t *a2)
{
  v2 = sub_246091C04();
  v4 = v3;
  if (v2 == sub_246091C04() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_2460923E4();
  }

  return v7 & 1;
}

uint64_t sub_245F9B8DC@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_246091BD4();

  *a2 = v3;
  return result;
}

uint64_t sub_245F9B924@<X0>(uint64_t *a1@<X8>)
{
  result = sub_246091C04();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_245F9B950(uint64_t a1)
{
  v2 = sub_245F9D530(&qword_27EE3A030, type metadata accessor for URLResourceKey, &unk_246096E38);
  v3 = sub_245F9D530(&qword_27EE3A038, type metadata accessor for URLResourceKey, &unk_246096DD8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_245F9BA0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A050, &qword_246096EE8);
    v3 = sub_246092254();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_246092504();

      sub_246091C94();
      result = sub_246092544();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2460923E4();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_245F9BB74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A048, &qword_246096EE0);
    v3 = sub_246092254();
    v4 = 0;
    v5 = v3 + 56;
    v25 = v1;
    v26 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v26 + 8 * v4);
      sub_246091C04();
      sub_246092504();
      v27 = v7;
      sub_246091C94();
      v8 = sub_246092544();

      v10 = -1 << *(v3 + 32);
      v11 = v8 & ~v10;
      v12 = v11 >> 6;
      v13 = *(v5 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if (((1 << v11) & v13) == 0)
      {
        goto LABEL_15;
      }

      v15 = ~v10;
      do
      {
        v16 = sub_246091C04();
        v18 = v17;
        if (v16 == sub_246091C04() && v18 == v19)
        {

LABEL_4:
          v6 = v25;
          goto LABEL_5;
        }

        v21 = sub_2460923E4();

        if (v21)
        {

          goto LABEL_4;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v5 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v6 = v25;
LABEL_15:
      *(v5 + 8 * v12) = v14 | v13;
      *(*(v3 + 48) + 8 * v11) = v27;
      v22 = *(v3 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v24;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_245F9BD7C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE39F80, &unk_246096C10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245F9BDE4()
{
  result = qword_27EE39FF8;
  if (!qword_27EE39FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE39FF8);
  }

  return result;
}

void *sub_245F9BE38(CGImageSource *a1, size_t a2, uint64_t a3)
{
  v63 = a3;
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v60 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v59 = (&v55 - v9);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v55 - v15;
  ImageAtIndex = CGImageSourceCreateImageAtIndex(a1, a2, 0);
  if (ImageAtIndex)
  {
    v18 = ImageAtIndex;
    v19 = sub_245F9D654();
    if (v19)
    {
      v20 = v19;
    }

    else
    {
      v32 = sub_245FA31EC();
      v33 = v11;
      v34 = v11[2];
      v35 = v16;
      v58 = v10;
      (v34)(v16, v32, v10);
      v36 = v6;
      v37 = *(v6 + 16);
      v38 = v59;
      v39 = v5;
      v37(v59, v63, v5);
      v40 = sub_2460918D4();
      v41 = sub_246091FB4();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v60 = v35;
        v43 = v42;
        v57 = swift_slowAlloc();
        v61 = v57;
        *v43 = 141558275;
        *(v43 + 4) = 1752392040;
        *(v43 + 12) = 2081;
        v56 = sub_2460916F4();
        v45 = v44;
        (*(v36 + 8))(v38, v39);
        v46 = sub_245F8D3C0(v56, v45, &v61);

        *(v43 + 14) = v46;
        _os_log_impl(&dword_245F8A000, v40, v41, "Image Helper: Error converting CGImageSource to CVPixelBuffer for %{private,mask.hash}s", v43, 0x16u);
        v47 = v57;
        sub_245F8E6F4(v57);
        MEMORY[0x24C1989D0](v47, -1, -1);
        MEMORY[0x24C1989D0](v43, -1, -1);

        v33[1](v60, v58);
      }

      else
      {

        (*(v36 + 8))(v38, v39);
        v33[1](v35, v58);
      }

      v61 = 0;
      v62 = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0xD000000000000042, 0x800000024609E900);
      v51 = sub_2460916F4();
      MEMORY[0x24C196640](v51);

      v20 = v61;
      v52 = v62;
      sub_245F9BDE4();
      swift_allocError();
      *v53 = v20;
      *(v53 + 8) = v52;
      *(v53 + 16) = 1;
      swift_willThrow();
    }
  }

  else
  {
    v21 = sub_245FA31EC();
    (v11[2])(v13, v21, v10);
    v22 = v60;
    (*(v6 + 16))(v60, v63, v5);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v58 = v10;
      v59 = v11;
      v26 = v25;
      v27 = swift_slowAlloc();
      v61 = v27;
      *v26 = 141558275;
      *(v26 + 4) = 1752392040;
      *(v26 + 12) = 2081;
      LODWORD(v57) = v24;
      v28 = sub_2460916F4();
      v30 = v29;
      (*(v6 + 8))(v22, v5);
      v31 = sub_245F8D3C0(v28, v30, &v61);

      *(v26 + 14) = v31;
      _os_log_impl(&dword_245F8A000, v23, v57, "Image Helper: Error in CGImageSourceCreateImageAtIndex for %{private,mask.hash}s", v26, 0x16u);
      sub_245F8E6F4(v27);
      MEMORY[0x24C1989D0](v27, -1, -1);
      MEMORY[0x24C1989D0](v26, -1, -1);

      v59[1](v13, v58);
    }

    else
    {

      (*(v6 + 8))(v22, v5);
      v11[1](v13, v10);
    }

    v61 = 0;
    v62 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD00000000000003BLL, 0x800000024609E8C0);
    v48 = sub_2460916F4();
    MEMORY[0x24C196640](v48);

    v20 = v61;
    v49 = v62;
    sub_245F9BDE4();
    swift_allocError();
    *v50 = v20;
    *(v50 + 8) = v49;
    *(v50 + 16) = 1;
    swift_willThrow();
  }

  return v20;
}

void *sub_245F9C46C(CGImageSource *a1, size_t a2, uint64_t a3)
{
  v6 = sub_246091704();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v44 = sub_2460918F4();
  v13 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v42 - v17;
  v19 = CGImageSourceCopyPropertiesAtIndex(a1, a2, 0);
  v20 = sub_245FA31EC();
  v43 = v13;
  v21 = *(v13 + 16);
  v22 = (v7 + 16);
  if (!v19)
  {
    v21(v15, v20, v44);
    (*v22)(v9, a3, v6);
    v31 = sub_2460918D4();
    v32 = sub_246091FB4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v45 = v34;
      *v33 = 141558275;
      *(v33 + 4) = 1752392040;
      *(v33 + 12) = 2081;
      sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v35 = sub_2460923D4();
      v37 = v36;
      (*(v7 + 8))(v9, v6);
      v38 = sub_245F8D3C0(v35, v37, &v45);

      *(v33 + 14) = v38;
      _os_log_impl(&dword_245F8A000, v31, v32, "Image Helper: Can't get CGImageProperties for EXIF for %{private,mask.hash}s!", v33, 0x16u);
      sub_245F8E6F4(v34);
      MEMORY[0x24C1989D0](v34, -1, -1);
      MEMORY[0x24C1989D0](v33, -1, -1);
    }

    else
    {

      (*(v7 + 8))(v9, v6);
    }

    (*(v43 + 8))(v15, v44);
    return sub_245F8E498(MEMORY[0x277D84F90]);
  }

  v21(v18, v20, v44);
  (*v22)(v12, a3, v6);
  v23 = sub_2460918D4();
  v24 = sub_246091F94();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v45 = v42;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_245F9D530(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v26 = sub_2460923D4();
    v28 = v27;
    (*(v7 + 8))(v12, v6);
    v29 = sub_245F8D3C0(v26, v28, &v45);

    *(v25 + 14) = v29;
    _os_log_impl(&dword_245F8A000, v23, v24, "Image Helper: Got CGImageProperties EXIF metadata for %{private,mask.hash}s.", v25, 0x16u);
    v30 = v42;
    sub_245F8E6F4(v42);
    MEMORY[0x24C1989D0](v30, -1, -1);
    MEMORY[0x24C1989D0](v25, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v12, v6);
  }

  (*(v43 + 8))(v18, v44);
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v45 = 0;
  v39 = v19;
  result = sub_246091B44();
  v41 = v45;
  if (v45)
  {

    return v41;
  }

  __break(1u);
  return result;
}

id sub_245F9C9F0(CGImageSource *a1, size_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_245FA31EC();
  v16 = *(v5 + 16);
  v44 = v15;
  v45 = v16;
  v17 = v4;
  (v16)(v14);
  v18 = sub_2460918D4();
  v19 = sub_246091FA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245F8A000, v18, v19, "Image Helper: Trying to find kCGImageAuxiliaryDataTypeDisparity in the CGImageSource.", v20, 2u);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v22 = v17;
  v21(v14, v17);
  v23 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a1, a2, *MEMORY[0x277CD2C90]);
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = v23;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_11;
  }

  v46 = 0;
  sub_246091B54();

  v25 = v46;
  if (!v46)
  {
LABEL_11:
    v45(v7, v44, v17);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "Image Helper: No Auxiliary Depth Data found in the CGImageSource, not using depth.", v34, 2u);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    v31 = v7;
    goto LABEL_14;
  }

  sub_245F9D608();
  v26 = sub_245F9A9C8(v25);
  v36 = v26;
  if (!v26)
  {
    v27 = v43;
    v45(v43, v44, v22);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Image Helper: Can't load AVDepthData fromDictionaryRepresentation, can't produce disparity map.", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    v31 = v27;
LABEL_14:
    v21(v31, v22);
    return 0;
  }

  if ([v26 depthDataType] != 1717856627)
  {
    v37 = [v36 depthDataByConvertingToDepthDataType_];

    v36 = v37;
  }

  v45(v42, v44, v17);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v38, v39, "Image Helper: Got disparity map!", v40, 2u);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  v21(v42, v17);
  v41 = [v36 depthDataMap];

  return v41;
}

id sub_245F9CEB8(CGImageSource *a1, size_t a2)
{
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v43 = &v42 - v9;
  MEMORY[0x28223BE20](v10);
  v42 = &v42 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = sub_245FA31EC();
  v16 = *(v5 + 16);
  v44 = v15;
  v45 = v16;
  v17 = v4;
  (v16)(v14);
  v18 = sub_2460918D4();
  v19 = sub_246091FA4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245F8A000, v18, v19, "Image Helper: Trying to find kCGImageAuxiliaryDataTypeDepth in the CGImageSource.", v20, 2u);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v22 = v17;
  v21(v14, v17);
  v23 = CGImageSourceCopyAuxiliaryDataInfoAtIndex(a1, a2, *MEMORY[0x277CD2C88]);
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = v23;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {

    goto LABEL_11;
  }

  v46 = 0;
  sub_246091B54();

  v25 = v46;
  if (!v46)
  {
LABEL_11:
    v45(v7, v44, v17);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "Image Helper: No Auxiliary Depth Data found in the CGImageSource, not using depth.", v34, 2u);
      MEMORY[0x24C1989D0](v34, -1, -1);
    }

    v31 = v7;
    goto LABEL_14;
  }

  sub_245F9D608();
  v26 = sub_245F9A9C8(v25);
  v36 = v26;
  if (!v26)
  {
    v27 = v43;
    v45(v43, v44, v22);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Image Helper: Can't load AVDepthData fromDictionaryRepresentation, can't produce depth map.", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    v31 = v27;
LABEL_14:
    v21(v31, v22);
    return 0;
  }

  if ([v26 depthDataType] != 1717855600)
  {
    v37 = [v36 depthDataByConvertingToDepthDataType_];

    v36 = v37;
  }

  v45(v42, v44, v17);
  v38 = sub_2460918D4();
  v39 = sub_246091FA4();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v38, v39, "Image Helper: Got depth map!", v40, 2u);
    MEMORY[0x24C1989D0](v40, -1, -1);
  }

  v21(v42, v17);
  v41 = [v36 depthDataMap];

  return v41;
}

uint64_t sub_245F9D3A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_245F9D404(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

__n128 sub_245F9D420(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_245F9D434(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_245F9D47C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_245F9D4C0(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_245F9D530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_245F9D608()
{
  result = qword_27EE3A040;
  if (!qword_27EE3A040)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A040);
  }

  return result;
}

CVPixelBufferRef sub_245F9D654()
{
  v1 = v0;
  pixelBufferOut[1] = *MEMORY[0x277D85DE8];
  v2 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF4B8]);
  if (!v2)
  {
    goto LABEL_15;
  }

  v3 = v2;
  pixelBufferOut[0] = 0;
  sub_245F8E624(&qword_27EE3A058, &qword_246096F00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096EF0;
  v5 = *MEMORY[0x277CC4D70];
  *(inited + 32) = *MEMORY[0x277CC4D70];
  v6 = *MEMORY[0x277CBED28];
  v7 = *MEMORY[0x277CC4D68];
  *(inited + 40) = *MEMORY[0x277CBED28];
  *(inited + 48) = v7;
  *(inited + 56) = v6;
  v8 = v6;
  v9 = v5;
  v10 = v7;
  sub_245F9D968(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE3A060, &qword_246096F08);
  swift_arrayDestroy();
  v11 = *MEMORY[0x277CBECE8];
  Width = CGImageGetWidth(v1);
  Height = CGImageGetHeight(v1);
  type metadata accessor for CFString(0);
  sub_245F8E624(&qword_27EE3A068, &unk_246096F10);
  sub_245F9DA80(&qword_27EE39F30, &unk_246096804);
  v14 = sub_246091B34();

  LODWORD(v11) = CVPixelBufferCreate(v11, Width, Height, 0x42475241u, v14, pixelBufferOut);

  v15 = 0;
  if (!v11)
  {
    v16 = pixelBufferOut[0];
    if (pixelBufferOut[0])
    {
      v17 = pixelBufferOut[0];
      v15 = 0;
      if (CVPixelBufferLockBaseAddress(v17, 0))
      {
LABEL_11:

        goto LABEL_12;
      }

      BytesPerRow = CVPixelBufferGetBytesPerRow(v17);
      BaseAddress = CVPixelBufferGetBaseAddress(v17);
      v20 = CGImageGetWidth(v1);
      v21 = CGImageGetHeight(v1);
      v22 = sub_245F9DA58(BaseAddress, v20, v21, BytesPerRow, v3);
      if (!v22)
      {
        v16 = 0;
        goto LABEL_10;
      }

      v23 = v22;
      CGImageGetWidth(v1);
      CGImageGetHeight(v1);
      sub_246091F74();
      v28.data = CVPixelBufferGetBaseAddress(v17);
      v28.rowBytes = CVPixelBufferGetBytesPerRow(v17);
      v24 = CGImageGetWidth(v1);
      if ((v24 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else
      {
        v28.width = v24;
        v25 = CGImageGetHeight(v1);
        if ((v25 & 0x8000000000000000) == 0)
        {
          v28.height = v25;
          vImagePermuteChannels_ARGB8888(&v28, &v28, byte_2858DDF20, 0);

          v26 = v17;
LABEL_10:
          CVPixelBufferUnlockBaseAddress(v17, 0);
          v15 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
    }
  }

LABEL_12:

  return v15;
}

unint64_t sub_245F9D968(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_245F8E624(&qword_27EE3A078, &qword_246096F48);
    v3 = sub_246092384();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *i;
      v8 = v5;
      result = sub_245F91B2C(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      *(v3[7] + 8 * result) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_245F9DA80(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFString(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

float sub_245F9DAC4(uint64_t a1)
{
  result = 0.0;
  if ((a1 - 1) <= 2)
  {
    return flt_246097014[a1 - 1];
  }

  return result;
}

uint64_t sub_245F9DAE4(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

float sub_245F9DAF4(char a1)
{
  result = 0.01;
  if (a1)
  {
    return 0.03;
  }

  return result;
}

void sub_245F9DB18(void *a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v67.n128_u64[0] = a2;
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_245F8E624(&qword_27EE3A350, &unk_2460969A0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v60 - v10;
  v12 = sub_246091834();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x28223BE20](v15).n128_u64[0];
  v66.n128_u64[0] = v60.n128_u64 - v17;
  v18 = [a1 geometry];
  v19 = [v18 colors];

  v70 = v19;
  if (!v19)
  {
    v36 = sub_245FA32CC();
    (*(v6 + 16))(v8, v36, v5);
    v37 = sub_2460918D4();
    v38 = sub_246091FB4();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v71 = v40;
      *v39 = 136380675;
      *(v39 + 4) = sub_245F8D3C0(0xD00000000000001ELL, 0x800000024609E950, &v71);
      _os_log_impl(&dword_245F8A000, v37, v38, "%{private}s: Failed to create mesh anchor from ARMeshAnchor, ARMeshAnchor does not have vertex colors!", v39, 0xCu);
      sub_245F8E6F4(v40);
      MEMORY[0x24C1989D0](v40, -1, -1);
      MEMORY[0x24C1989D0](v39, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v41 = 1;
    goto LABEL_25;
  }

  v20 = [a1 geometry];
  v21 = [v20 vertices];

  v22 = [v21 count];
  v23 = 3 * v22;
  if ((v22 * 3) >> 64 == (3 * v22) >> 63)
  {
    v24 = [v70 buffer];
    v25 = [v24 contents];
    v26 = v24;
    if ((v23 & 0x8000000000000000) == 0)
    {
      v64 = v14;
      v65 = a3;
      v28 = v68;
      for (i = v69; v23; --v23)
      {
        v30 = *v25;
        if (*v25 >= 0.0 && v30 < 0.0031307)
        {
          v29 = v30 * 12.92;
        }

        else
        {
          v29 = 0.0;
          if (v30 >= 0.0031307 && v30 <= 1.0)
          {
            v29 = (powf(v30, 0.41667) * 1.055) + -0.055;
          }
        }

        *v25++ = sub_246021418(v29, 0.0, 1.0);
      }

      sub_245FA28E4(v67.n128_i64[0], v11);
      v33 = *(v28 + 48);
      if (v33(v11, 1, i) == 1)
      {
        v34 = [a1 identifier];
        v35 = v66.n128_u64[0];
        sub_246091814();

        if (v33(v11, 1, i) != 1)
        {
          sub_245F8E744(v11, &qword_27EE3A350, &unk_2460969A0);
        }
      }

      else
      {
        v35 = v66.n128_u64[0];
        (*(v28 + 32))(v66.n128_u64[0], v11, i);
      }

      v42 = v64;
      (*(v28 + 16))(v64, v35, i);
      v43 = [a1 geometry];
      v44 = [v43 vertices];

      v45 = [a1 geometry];
      v46 = [v45 normals];

      v47 = [a1 geometry];
      v48 = [v47 faces];

      [a1 transform];
      v66 = v50;
      v67 = v49;
      v62 = v52;
      v63 = v51;
      [a1 timestamp];
      v54 = v53;
      [a1 corner];
      v61 = v55;
      [a1 extent];
      v60 = v56;
      v57 = sub_245FCCC80();
      a3 = v65;
      v58 = sub_2460364E0(v42, v44, v70, v46, v48, v57 & 1, v65, v67, v66, v63, v62, v54, v61, v60);
      (*(v28 + 8))(v35, i, v58);
      v41 = 0;
LABEL_25:
      v59 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
      (*(*(v59 - 8) + 56))(a3, v41, 1, v59);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_245F9E1C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>, __n128 a7@<Q0>, __n128 a8@<Q1>, __n128 a9@<Q2>, __n128 a10@<Q3>, double a11@<D4>, __n128 a12@<Q5>, __n128 a13@<Q6>)
{
  v101 = a12;
  v102 = a13;
  v99 = a9;
  v100 = a10;
  v97 = a7;
  v98 = a8;
  v107 = a5;
  v108 = a6;
  v104 = a3;
  v105 = a2;
  v16 = sub_2460918F4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v106 = &v93 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v103 = &v93 - v20;
  MEMORY[0x28223BE20](v21);
  v95 = &v93 - v22;
  v23 = sub_246091834();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v96 = &v93 - v28;
  MEMORY[0x28223BE20](v29);
  v94 = &v93 - v30;
  v32 = MEMORY[0x28223BE20](v31);
  v34 = &v93 - v33;
  v35 = *(*a4 + 264);
  v36 = v35(a1, v32);
  if (!v36)
  {
    v46 = sub_245FA32CC();
    (*(v17 + 16))(v106, v46, v16);
    (*(v24 + 16))(v26, v107, v23);
    v47 = sub_2460918D4();
    v48 = sub_246091FB4();
    v49 = v16;
    v50 = v17;
    if (os_log_type_enabled(v47, v48))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v109[0] = v52;
      *v51 = 136380931;
      *(v51 + 4) = sub_245F8D3C0(0xD00000000000005ALL, 0x800000024609E970, v109);
      *(v51 + 12) = 2082;
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v107 = v49;
      v53 = sub_2460923D4();
      v55 = v54;
      (*(v24 + 8))(v26, v23);
      v56 = sub_245F8D3C0(v53, v55, v109);

      *(v51 + 14) = v56;
      _os_log_impl(&dword_245F8A000, v47, v48, "%{private}s: Failed to create mesh anchor %{public}s from mutable data - failed to create buffer for vertex positions!", v51, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v52, -1, -1);
      MEMORY[0x24C1989D0](v51, -1, -1);

      (*(v50 + 8))(v106, v107);
    }

    else
    {

      (*(v24 + 8))(v26, v23);
      (*(v17 + 8))(v106, v49);
    }

    goto LABEL_17;
  }

  v106 = v36;
  v37 = v24;
  v38 = v16;
  v39 = (v35)(v105);
  if (!v39)
  {
    v57 = sub_245FA32CC();
    v58 = v17;
    v59 = v103;
    v60 = v16;
    (*(v17 + 16))(v103, v57, v16);
    v61 = v96;
    (*(v24 + 16))(v96, v107, v23);
    v62 = sub_2460918D4();
    v63 = sub_246091FB4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v109[0] = v65;
      *v64 = 136380931;
      *(v64 + 4) = sub_245F8D3C0(0xD00000000000005ALL, 0x800000024609E970, v109);
      *(v64 + 12) = 2082;
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v66 = sub_2460923D4();
      v67 = v61;
      v69 = v68;
      (*(v24 + 8))(v67, v23);
      v70 = sub_245F8D3C0(v66, v69, v109);

      *(v64 + 14) = v70;
      _os_log_impl(&dword_245F8A000, v62, v63, "%{private}s: Failed to create mesh anchor %{public}s from mutable data - failed to create buffer for vertex colors!", v64, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v65, -1, -1);
      MEMORY[0x24C1989D0](v64, -1, -1);

      v71 = *(v58 + 8);
      v72 = v103;
    }

    else
    {

      (*(v24 + 8))(v61, v23);
      v71 = *(v17 + 8);
      v72 = v59;
    }

    v90 = v60;
    goto LABEL_16;
  }

  v40 = v39;
  v41 = (v35)(v104);
  if (!v41)
  {
    v73 = sub_245FA32CC();
    v74 = v17;
    v75 = *(v17 + 16);
    v76 = v95;
    v75(v95, v73, v38);
    v77 = v24;
    v78 = v94;
    v79 = v23;
    (*(v24 + 16))(v94, v107, v23);
    v80 = sub_2460918D4();
    v81 = sub_246091FB4();
    if (os_log_type_enabled(v80, v81))
    {
      v82 = swift_slowAlloc();
      v107 = v38;
      v83 = v82;
      v84 = v77;
      v85 = swift_slowAlloc();
      v109[0] = v85;
      *v83 = 136380931;
      *(v83 + 4) = sub_245F8D3C0(0xD00000000000005ALL, 0x800000024609E970, v109);
      *(v83 + 12) = 2082;
      sub_245FA2A9C(&unk_27EE3A310, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      LODWORD(v105) = v81;
      v86 = sub_2460923D4();
      v88 = v87;
      (*(v84 + 8))(v78, v79);
      v89 = sub_245F8D3C0(v86, v88, v109);

      *(v83 + 14) = v89;
      _os_log_impl(&dword_245F8A000, v80, v105, "%{private}s: Failed to create mesh anchor %{public}s from mutable data - failed to create buffer for vertex normals!", v83, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v85, -1, -1);
      MEMORY[0x24C1989D0](v83, -1, -1);

      (*(v74 + 8))(v95, v107);
LABEL_17:
      v45 = 1;
      v44 = v108;
      goto LABEL_18;
    }

    (*(v77 + 8))(v78, v23);
    v71 = *(v74 + 8);
    v72 = v76;
    v90 = v38;
LABEL_16:
    v71(v72, v90);
    goto LABEL_17;
  }

  v42 = v41;
  (*(v37 + 16))(v34, v107, v23);
  v43 = sub_245FCCC80();
  v44 = v108;
  sub_2460364E0(v34, v106, v40, v42, 0, v43 & 1, v108, v97, v98, v99, v100, a11, v101, v102);
  v45 = 0;
LABEL_18:
  v91 = type metadata accessor for ObjectCaptureSession.Mesh.Anchor(0);
  return (*(*(v91 - 8) + 56))(v44, v45, 1, v91);
}