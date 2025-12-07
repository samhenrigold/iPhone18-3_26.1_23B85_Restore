uint64_t sub_261A70BF0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE00, &qword_261A8CAC8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A77164();
  sub_261A85CD4();
  LOBYTE(v12) = 0;
  sub_261A85B14();
  if (!v2)
  {
    v9 = *(v3 + 32);
    v12 = *(v3 + 16);
    v13 = v9;
    v11[15] = 1;
    sub_261A7720C();
    sub_261A85B54();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_261A70D6C()
{
  if (*v0)
  {
    return 0x6973736572707865;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_261A70DA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_261A85BA4() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6973736572707865 && a2 == 0xEA00000000006E6FLL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_261A85BA4();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_261A70E88(uint64_t a1)
{
  v2 = sub_261A77164();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A70EC4(uint64_t a1)
{
  v2 = sub_261A77164();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_261A70F00@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_261A76F5C(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_261A70F68()
{

  return MEMORY[0x2821FE8D8](v0, 81, 7);
}

uint64_t sub_261A70FFC(unint64_t a1)
{
  v13 = swift_allocObject();
  *(v13 + 16) = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    v5 = sub_261A85994();
    if (v5 < 0)
    {
      __break(1u);
    }

    v3 = v5;
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_7:
    v4 = MEMORY[0x277D84F90];
    goto LABEL_8;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v3)
  {
    goto LABEL_7;
  }

LABEL_3:
  v4 = sub_261A856E4();
  *(v4 + 16) = v3;
  bzero((v4 + 32), v3);
LABEL_8:
  v14 = swift_allocObject();
  *(v14 + 16) = v4;
  v6 = v14 + 16;
  if (a1 >> 62)
  {
    v7 = sub_261A85994();
    if (!v7)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
LABEL_25:
      swift_beginAccess();
      a1 = *(v13 + 16);

LABEL_26:

      return a1;
    }
  }

  result = swift_beginAccess();
  v9 = 0;
  while ((a1 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x266716BE0](v9, a1);
    v10 = result;
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_27;
    }

LABEL_20:
    v12 = *(v10 + 64);
    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v12 >= *(*v6 + 16))
    {
      goto LABEL_29;
    }

    if (!*(*v6 + v12 + 32))
    {
      sub_261A71240(v10, v14, v13);
      if (v1)
      {

        goto LABEL_26;
      }
    }

    ++v9;
    if (v11 == v7)
    {
      goto LABEL_25;
    }
  }

  if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_30;
  }

  v10 = *(a1 + 8 * v9 + 32);

  v11 = v9 + 1;
  if (!__OFADD__(v9, 1))
  {
    goto LABEL_20;
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_261A71240(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = *(a1 + 64);
  swift_beginAccess();
  v8 = *(a2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_32;
  }

  if ((v7 & 0x8000000000000000) == 0)
  {
    goto LABEL_3;
  }

LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  a3 = sub_261A85994();
LABEL_6:

  swift_beginAccess();
  if (a3)
  {
    v10 = 0;
    v7 = v8 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x266716BE0](v10, v8);
        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
LABEL_20:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v10 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          v8 = sub_261A67BBC(v8);
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_33;
          }

LABEL_3:
          if (v7 < *(v8 + 16))
          {
            v23 = a3;
            v21 = v7;
            *(v8 + v7 + 32) = 1;
            *(a2 + 16) = v8;
            swift_endAccess();
            v22 = v6;
            v8 = *(v6 + 72);
            if (!(v8 >> 62))
            {
              a3 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_6;
            }

            goto LABEL_35;
          }

          goto LABEL_34;
        }

        v11 = *(v8 + 8 * v10 + 32);

        v6 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          goto LABEL_20;
        }
      }

      v12 = *(v11 + 64);
      if ((v12 & 0x8000000000000000) != 0)
      {
        goto LABEL_30;
      }

      v13 = *(a2 + 16);
      if (v12 >= *(v13 + 16))
      {
        goto LABEL_31;
      }

      v14 = *(v13 + v12 + 32);
      if (v14)
      {
        if (v14 != 2)
        {

          v19 = *(v22 + 16);
          v18 = *(v22 + 24);
          sub_261A77260();
          swift_allocError();
          *v20 = v19;
          *(v20 + 8) = v18;
          *(v20 + 16) = 0u;
          *(v20 + 32) = 0u;
          *(v20 + 48) = 0;
          swift_willThrow();
        }
      }

      else
      {
        sub_261A71240(v11, a2, v23);
        if (v3)
        {
        }
      }

      ++v10;
    }

    while (v6 != a3);
  }

  swift_beginAccess();

  MEMORY[0x2667169A0](v15);
  if (*((*(v23 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v23 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_261A856D4();
  }

  sub_261A856F4();
  swift_endAccess();
  swift_beginAccess();
  v16 = *(a2 + 16);
  result = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 16) = v16;
  if ((result & 1) == 0)
  {
    result = sub_261A67BBC(v16);
    v16 = result;
  }

  if (v21 >= *(v16 + 16))
  {
    __break(1u);
  }

  else
  {
    *(v16 + v21 + 32) = 2;
    *(a2 + 16) = v16;
    return swift_endAccess();
  }

  return result;
}

unint64_t sub_261A7156C()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 48);
  if (v5 <= 2)
  {
    if (!*(v0 + 48))
    {
      sub_261A858C4();

      v13 = 0xD000000000000011;
      MEMORY[0x2667168A0](v2, v1);
      v8 = 0x8000000261A8ED70;
      v7 = 0xD000000000000012;
      goto LABEL_17;
    }

    if (v5 == 1)
    {
      sub_261A858C4();

      v13 = 0xD00000000000002BLL;
LABEL_14:
      v7 = v2;
      v8 = v1;
      goto LABEL_17;
    }

    v9 = *(v0 + 32);
    sub_261A858C4();

    v13 = v9;
    MEMORY[0x2667168A0](0xD000000000000012, 0x8000000261A8ED00);
    MEMORY[0x2667168A0](v2, v1);
    v10 = 0x20646E6120;
    v11 = 0xE500000000000000;
LABEL_16:
    MEMORY[0x2667168A0](v10, v11);
    v7 = v4;
    v8 = v3;
    goto LABEL_17;
  }

  if (*(v0 + 48) > 4u)
  {
    if (v5 == 5)
    {
      sub_261A858C4();

      v13 = v2;
      v6 = "ences a non-metric expression ";
      v7 = 0xD00000000000001DLL;
      goto LABEL_10;
    }

    sub_261A858C4();

    v13 = v2;
    v10 = 0xD00000000000002ELL;
    v11 = 0x8000000261A8EC60;
    goto LABEL_16;
  }

  if (v5 != 3)
  {
    sub_261A858C4();

    v13 = v4;
    MEMORY[0x2667168A0](0xD00000000000002ELL, 0x8000000261A8ECB0);
    goto LABEL_14;
  }

  sub_261A858C4();

  v13 = v2;
  v6 = "f an expression for threshold ";
  v7 = 0xD00000000000001FLL;
LABEL_10:
  v8 = v6 | 0x8000000000000000;
LABEL_17:
  MEMORY[0x2667168A0](v7, v8);
  return v13;
}

uint64_t sub_261A71868(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_261A76A64(v5, v7) & 1;
}

void *sub_261A718C4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  v337 = a1;
  v324 = a4;
  if (v6)
  {
    v8 = a1;
    v342[0] = MEMORY[0x277D84F90];

    sub_261A85944();
    v5 = 0;
    v326 = v6;
    v329 = *(v8 + 16);
    v9 = (v8 + 72);
    while (v329 != v5)
    {
      if (v5 >= *(v8 + 16))
      {
        goto LABEL_115;
      }

      v11 = *(v9 - 5);
      v10 = *(v9 - 4);
      v12 = *(v9 - 3);
      v13 = *(v9 - 2);
      v14 = *(v9 - 1);
      v15 = *v9;
      type metadata accessor for ExpressionNode();
      v16 = swift_allocObject();
      *(v16 + 16) = v11;
      *(v16 + 24) = v10;
      v8 = v337;
      *(v16 + 32) = v12;
      *(v16 + 40) = v13;
      *(v16 + 48) = v14;
      *(v16 + 56) = v15;
      *(v16 + 64) = v5;
      *(v16 + 72) = MEMORY[0x277D84F90];
      *(v16 + 80) = 0;

      sub_261A85924();
      v7 = *(v342[0] + 2);
      sub_261A85954();
      sub_261A85964();
      sub_261A85934();
      v9 += 6;
      if (v326 == ++v5)
      {

        v7 = v342[0];
        a4 = v324;
        goto LABEL_7;
      }
    }

LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    v28 = sub_261A85994();
  }

  else
  {
LABEL_7:
    v17 = 0;
    v8 = *(a4 + 16);
    v18 = MEMORY[0x277D84F90];
    v19 = 40;
    v326 = v7;
LABEL_8:
    v20 = v19 + 24 * v17;
    while (v8 != v17)
    {
      if (v17 >= *(a4 + 16))
      {
        __break(1u);
        goto LABEL_114;
      }

      ++v17;
      v21 = v20 + 24;
      v22 = *(a4 + v20);
      v20 += 24;
      if (v22)
      {
        v23 = v19;
        v5 = *(a4 + v21 - 32);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_261A66A68(0, *(v18 + 2) + 1, 1, v18);
        }

        v25 = *(v18 + 2);
        v24 = *(v18 + 3);
        a4 = v324;
        if (v25 >= v24 >> 1)
        {
          v27 = sub_261A66A68((v24 > 1), v25 + 1, 1, v18);
          v19 = v23;
          a4 = v324;
          v18 = v27;
        }

        else
        {
          v19 = v23;
        }

        *(v18 + 2) = v25 + 1;
        v26 = &v18[16 * v25];
        *(v26 + 4) = v5;
        *(v26 + 5) = v22;
        v7 = v326;
        goto LABEL_8;
      }
    }

    v308 = v19;
    v5 = sub_261A7BF08(v18);

    v309 = v7 >> 62;
    if (v7 >> 62)
    {
      goto LABEL_118;
    }

    v28 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v29 = MEMORY[0x277D84F90];
  v338 = v5;
  if (v28)
  {
    v343 = MEMORY[0x277D84F90];
    sub_261A3F420(0, v28 & ~(v28 >> 63), 0);
    if ((v28 & 0x8000000000000000) == 0)
    {
      v30 = v343;
      v319 = v28;
      if ((v7 & 0xC000000000000001) != 0)
      {
        v31 = 0;
        v7 = v5 + 56;
        while (1)
        {
          v32 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_117;
          }

          v330 = v30;
          v33 = MEMORY[0x266716BE0]();
          v35 = *(v33 + 16);
          v34 = *(v33 + 24);
          if (*(v5 + 16))
          {
            sub_261A85C44();

            sub_261A85554();
            v36 = sub_261A85C84();
            v37 = -1 << *(v5 + 32);
            v38 = v36 & ~v37;
            if ((*(v7 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
            {
              v39 = ~v37;
              while (1)
              {
                v40 = (*(v5 + 48) + 16 * v38);
                v41 = *v40 == v35 && v40[1] == v34;
                if (v41 || (sub_261A85BA4() & 1) != 0)
                {
                  break;
                }

                v38 = (v38 + 1) & v39;
                if (((*(v7 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
                {
                  goto LABEL_36;
                }
              }

LABEL_64:

              v339 = xmmword_261A8C930;
LABEL_65:

              sub_261A77260();
              swift_allocError();
              *v65 = v339;
              *(v65 + 16) = xmmword_261A8C950;
              *(v65 + 32) = v35;
              *(v65 + 40) = v34;
              *(v65 + 48) = 2;
              swift_willThrow();

LABEL_66:

              goto LABEL_67;
            }
          }

          else
          {
          }

LABEL_36:
          if (*(a3 + 16))
          {
            sub_261A5BD84(v35, v34);
            if (v42)
            {
              goto LABEL_111;
            }
          }

          v30 = v330;
          v343 = v330;
          v44 = *(v330 + 2);
          v43 = *(v330 + 3);
          if (v44 >= v43 >> 1)
          {
            sub_261A3F420((v43 > 1), v44 + 1, 1);
            v30 = v343;
          }

          *(v30 + 2) = v44 + 1;
          v45 = &v30[24 * v44];
          *(v45 + 4) = v35;
          *(v45 + 5) = v34;
          *(v45 + 6) = v33;
          v31 = v32;
          v5 = v338;
          if (v32 == v319)
          {
            goto LABEL_110;
          }
        }
      }

      v53 = 0;
      v307 = v7 & 0xFFFFFFFFFFFFFF8;
      v305 = (v7 + 32);
      v7 = v5 + 56;
      while (v53 < *(v307 + 16))
      {
        v331 = v30;
        v54 = *&v305[8 * v53];
        v35 = *(v54 + 16);
        v34 = *(v54 + 24);
        if (*(v5 + 16))
        {
          sub_261A85C44();

          sub_261A85554();
          v55 = sub_261A85C84();
          v56 = -1 << *(v5 + 32);
          v57 = v55 & ~v56;
          if ((*(v7 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57))
          {
            v58 = ~v56;
            do
            {
              v59 = (*(v5 + 48) + 16 * v57);
              v60 = *v59 == v35 && v59[1] == v34;
              if (v60 || (sub_261A85BA4() & 1) != 0)
              {
                goto LABEL_64;
              }

              v57 = (v57 + 1) & v58;
            }

            while (((*(v7 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) != 0);
          }
        }

        else
        {
        }

        if (*(a3 + 16))
        {
          sub_261A5BD84(v35, v34);
          if (v61)
          {
LABEL_111:

            v339 = xmmword_261A8C940;
            goto LABEL_65;
          }
        }

        v30 = v331;
        v343 = v331;
        v63 = *(v331 + 2);
        v62 = *(v331 + 3);
        v29 = (v63 + 1);
        if (v63 >= v62 >> 1)
        {
          sub_261A3F420((v62 > 1), v63 + 1, 1);
          v30 = v343;
        }

        ++v53;
        *(v30 + 2) = v29;
        v64 = &v30[24 * v63];
        *(v64 + 4) = v35;
        *(v64 + 5) = v34;
        *(v64 + 6) = v54;
        v5 = v338;
        if (v53 == v319)
        {
LABEL_110:
          v46 = v30;
          v7 = v326;
          v29 = MEMORY[0x277D84F90];
          goto LABEL_43;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    v69 = sub_261A85994();
    if (!v69)
    {
      goto LABEL_123;
    }

LABEL_76:
    v70 = 0;
    v301 = v7 & 0xC000000000000001;
    v332 = v5 + 56;
    v300 = v69;
    do
    {
      sub_261A812B8(v70, v301 == 0, v7);
      if (v301)
      {
        v71 = MEMORY[0x266716BE0](v70, v7);
        v72 = __OFADD__(v70, 1);
        v73 = v70 + 1;
        if (v72)
        {
          goto LABEL_121;
        }
      }

      else
      {

        v72 = __OFADD__(v70, 1);
        v73 = v70 + 1;
        if (v72)
        {
          goto LABEL_121;
        }
      }

      v307 = v73;
      v309 = v71;
      v74 = *(v71 + 40);
      v343 = v29;
      v75 = v74 + 56;
      v76 = 1 << *(v74 + 32);
      if (v76 < 64)
      {
        v77 = ~(-1 << v76);
      }

      else
      {
        v77 = -1;
      }

      v78 = v77 & *(v74 + 56);
      v79 = (v76 + 63) >> 6;
      v320 = v74;
      swift_bridgeObjectRetain_n();
      v7 = 0;
      v312 = v29;
LABEL_87:
      v80 = a3;
      while (v78)
      {
LABEL_94:
        v82 = __clz(__rbit64(v78));
        v78 &= v78 - 1;
        v83 = (*(v320 + 48) + ((v7 << 10) | (16 * v82)));
        v85 = *v83;
        v84 = v83[1];
        v86 = *(v80 + 16);

        if (!v86 || (sub_261A5BD84(v85, v84), (v87 & 1) == 0))
        {
          if (!*(v338 + 16) || (sub_261A85C44(), sub_261A85554(), v88 = sub_261A85C84(), v89 = -1 << *(v338 + 32), v90 = v88 & ~v89, ((*(v332 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0))
          {
LABEL_105:
            if (!*(v305 + 2) || (sub_261A5BD84(v85, v84), (v94 & 1) == 0))
            {

              sub_261A77260();
              swift_allocError();
              *v96 = v85;
              *(v96 + 8) = v84;
              *(v96 + 16) = 0u;
              *(v96 + 32) = 0u;
              *(v96 + 48) = 3;
              swift_willThrow();

              goto LABEL_66;
            }

            MEMORY[0x2667169A0](v95);
            v5 = v338;
            if (*((v343 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v343 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_261A856D4();
            }

            sub_261A856F4();
            v312 = v343;
            goto LABEL_87;
          }

          v91 = ~v89;
          while (1)
          {
            v92 = (*(v338 + 48) + 16 * v90);
            v93 = *v92 == v85 && v92[1] == v84;
            if (v93 || (sub_261A85BA4() & 1) != 0)
            {
              break;
            }

            v90 = (v90 + 1) & v91;
            if (((*(v332 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) == 0)
            {
              goto LABEL_105;
            }
          }
        }

        v80 = a3;
        v5 = v338;
      }

      while (1)
      {
        v81 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          goto LABEL_116;
        }

        if (v81 >= v79)
        {
          break;
        }

        v78 = *(v75 + 8 * v81);
        ++v7;
        if (v78)
        {
          v7 = v81;
          goto LABEL_94;
        }
      }

      *(v309 + 72) = v312;

      v70 = v307;
      v7 = v326;
      v29 = MEMORY[0x277D84F90];
    }

    while (v307 != v300);
    goto LABEL_123;
  }

  v46 = MEMORY[0x277D84F90];
LABEL_43:

  v48 = sub_261A76634(v47, v5);

  if (*(v48 + 16))
  {

    v342[0] = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDC0, &qword_261A8C8E8);
    sub_261A772B4();
    sub_261A4E05C();
    v49 = sub_261A85684();
    v51 = v50;

    sub_261A77260();
    swift_allocError();
    *v52 = xmmword_261A8C940;
    *(v52 + 16) = xmmword_261A8C930;
    *(v52 + 32) = v49;
    *(v52 + 40) = v51;
    *(v52 + 48) = 2;
    swift_willThrow();
    goto LABEL_67;
  }

  if (*(v46 + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE20, &qword_261A8CAD0);
    v67 = sub_261A859C4();
    v68 = v46;
  }

  else
  {
    v68 = v46;
    v67 = MEMORY[0x277D84F98];
  }

  v342[0] = v67;
  sub_261A74714(v68, 1, v342);
  v304 = v312;
  if (v312)
  {

    goto LABEL_73;
  }

  v305 = v342[0];
  if (v309)
  {
    goto LABEL_122;
  }

  v69 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v69)
  {
    goto LABEL_76;
  }

LABEL_123:

  v97 = sub_261A70FFC(v7);
  v98 = v304;

  if (v304)
  {

    goto LABEL_73;
  }

  v340 = v97;
  if (v8)
  {
    v99 = 0;
    v100 = v324;
    v101 = -v8;
    v102 = MEMORY[0x277D84F90];
    do
    {
      v103 = *(v100 + 16);
      if (v99 > v103)
      {
        v103 = v99;
      }

      v104 = -v103;
      v105 = (v324 + 48 + 24 * v99++);
      while (1)
      {
        if (v104 + v99 == 1)
        {
          goto LABEL_169;
        }

        v98 = *(v105 - 1);
        if (v98)
        {
          if (*v105)
          {
            break;
          }
        }

        ++v99;
        v105 += 24;
        if (v101 + v99 == 1)
        {
          goto LABEL_141;
        }
      }

      v106 = *(v105 - 2);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v102 = sub_261A66A68(0, *(v102 + 2) + 1, 1, v102);
      }

      v108 = *(v102 + 2);
      v107 = *(v102 + 3);
      v8 = v108 + 1;
      v100 = v324;
      if (v108 >= v107 >> 1)
      {
        v110 = sub_261A66A68((v107 > 1), v108 + 1, 1, v102);
        v100 = v324;
        v102 = v110;
      }

      *(v102 + 2) = v8;
      v109 = &v102[16 * v108];
      *(v109 + 4) = v106;
      *(v109 + 5) = v98;
      v97 = v340;
    }

    while (v101 + v99);
  }

  else
  {
    v102 = MEMORY[0x277D84F90];
  }

LABEL_141:
  v98 = sub_261A7BF08(v102);

  v307 = v97 >> 62;
  if (v97 >> 62)
  {
    goto LABEL_172;
  }

  v333 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v333)
  {
LABEL_143:
    v8 = 0;
    v111 = v97 & 0xC000000000000001;
    v313 = v97 & 0xFFFFFFFFFFFFFF8;
    v310 = v97 + 32;
    v327 = v98;
    v321 = v97 & 0xC000000000000001;
    while (1)
    {
      if (v111)
      {
        v113 = MEMORY[0x266716BE0](v8, v97);
        v72 = __OFADD__(v8++, 1);
        if (v72)
        {
          goto LABEL_170;
        }
      }

      else
      {
        if (v8 >= *(v313 + 16))
        {
          goto LABEL_171;
        }

        v113 = *(v310 + 8 * v8);

        v72 = __OFADD__(v8++, 1);
        if (v72)
        {
          goto LABEL_170;
        }
      }

      v114 = *(v113 + 40);

      v115 = sub_261A73F48(v98, v114);

      if (v115)
      {
        break;
      }

      v112 = 1;
LABEL_145:
      *(v113 + 80) = v112;

      if (v8 == v333)
      {
        goto LABEL_173;
      }
    }

    v116 = *(v113 + 72);
    v98 = v116 & 0xFFFFFFFFFFFFFF8;
    if (v116 >> 62)
    {
      v117 = sub_261A85994();
    }

    else
    {
      v117 = *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v97 = v116 & 0xC000000000000001;

    v118 = 0;
    while (1)
    {
      v112 = v117 != v118;
      if (v117 == v118)
      {
LABEL_165:

        v97 = v340;
        v98 = v327;
        v111 = v321;
        goto LABEL_145;
      }

      if (v97)
      {
        v119 = MEMORY[0x266716BE0](v118, v116);
        if (__OFADD__(v118, 1))
        {
          goto LABEL_167;
        }
      }

      else
      {
        if (v118 >= *((v116 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_168;
        }

        if (__OFADD__(v118, 1))
        {
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          v333 = sub_261A85994();
          if (!v333)
          {
            break;
          }

          goto LABEL_143;
        }
      }

      v120 = *(v119 + 80);

      ++v118;
      if (v120 == 1)
      {
        goto LABEL_165;
      }
    }
  }

LABEL_173:

  v121 = sub_261A70348(a3);
  v328 = 0;
  v122 = *(v121 + 16);
  v123 = MEMORY[0x277D84F90];
  v306 = v121;
  if (v122)
  {
    v342[0] = MEMORY[0x277D84F90];
    v124 = v121;

    sub_261A3E8C8(v122);
    v125 = v122;
    v97 = 0;
    v126 = *(v124 + 16);
    v127 = (v124 + 40);
    do
    {
      if (v126 == v97)
      {
LABEL_385:
        __break(1u);
LABEL_386:
        __break(1u);
        goto LABEL_387;
      }

      v128 = *(v127 - 1);
      v8 = *v127;
      v123 = v342[0];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F180(0, *(v123 + 16) + 1, 1);
        v125 = v122;
        v123 = v342[0];
      }

      v130 = *(v123 + 16);
      v129 = *(v123 + 24);
      if (v130 >= v129 >> 1)
      {
        sub_261A3F180((v129 > 1), v130 + 1, 1);
        v125 = v122;
        v123 = v342[0];
      }

      *(v123 + 16) = v130 + 1;
      v131 = (v123 + 24 * v130);
      v131[5] = v8;
      v131[6] = v97;
      v131[4] = v128;
      v127 += 3;
      ++v97;
    }

    while (v125 != v97);

    v97 = v340;
  }

  v132 = v324;
  v133 = a3;
  v8 = v337;
  if (v307)
  {
    goto LABEL_395;
  }

  v134 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v134)
  {
    v342[0] = MEMORY[0x277D84F90];

    sub_261A3E8C8(v134);
    if (v134 < 0)
    {
LABEL_399:
      __break(1u);
LABEL_400:
      v135 = sub_261A85994();
      goto LABEL_188;
    }

    if (v307)
    {
      goto LABEL_400;
    }

    v135 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_188:
    v334 = v134;
    if ((v97 & 0xC000000000000001) != 0)
    {
      v136 = 0;
      v8 = v135 & ~(v135 >> 63);
      while (v8 != v136)
      {
        v137 = MEMORY[0x266716BE0](v136, v97);
        v138 = *(v137 + 16);
        v139 = *(v137 + 24);
        v140 = *(a3 + 16);

        swift_unknownObjectRelease();
        v141 = v140 + v136;
        if (__OFADD__(v140, v136))
        {
          goto LABEL_388;
        }

        v142 = v342[0];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261A3F180(0, *(v142 + 2) + 1, 1);
          v142 = v342[0];
        }

        v144 = *(v142 + 2);
        v143 = *(v142 + 3);
        if (v144 >= v143 >> 1)
        {
          sub_261A3F180((v143 > 1), v144 + 1, 1);
          v142 = v342[0];
        }

        ++v136;
        *(v142 + 2) = v144 + 1;
        v145 = &v142[24 * v144];
        *(v145 + 4) = v138;
        *(v145 + 5) = v139;
        *(v145 + 6) = v141;
        v97 = v340;
        if (v334 == v136)
        {
          goto LABEL_207;
        }
      }

LABEL_387:
      __break(1u);
LABEL_388:
      __break(1u);
LABEL_389:
      __break(1u);
    }

    else
    {
      v146 = 0;
      v147 = v135 & ~(v135 >> 63);
      v148 = a3;
      while (v147 != v146)
      {
        v149 = *(v148 + 16);
        v150 = v149 + v146;
        if (__OFADD__(v149, v146))
        {
          goto LABEL_391;
        }

        v151 = *(v97 + 8 * v146 + 32);
        v153 = *(v151 + 16);
        v152 = *(v151 + 24);
        v142 = v342[0];

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261A3F180(0, *(v142 + 2) + 1, 1);
          v142 = v342[0];
        }

        v155 = *(v142 + 2);
        v154 = *(v142 + 3);
        v8 = v155 + 1;
        v148 = a3;
        if (v155 >= v154 >> 1)
        {
          sub_261A3F180((v154 > 1), v155 + 1, 1);
          v148 = a3;
          v142 = v342[0];
        }

        ++v146;
        *(v142 + 2) = v8;
        v156 = &v142[24 * v155];
        *(v156 + 4) = v153;
        *(v156 + 5) = v152;
        *(v156 + 6) = v150;
        v97 = v340;
        if (v334 == v146)
        {
LABEL_207:
          v311 = v142;

          v132 = v324;
          v133 = a3;
          v8 = v337;
          goto LABEL_208;
        }
      }
    }

    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    v298 = sub_261A85994();
    v133 = a3;
    v134 = v298;
    v132 = v324;
  }

  v311 = MEMORY[0x277D84F90];
LABEL_208:
  v157 = 0;
  v158 = *(v132 + 16);
  v134 = MEMORY[0x277D84F90];
LABEL_209:
  v159 = v308 + 24 * v157;
  while (v158 != v157)
  {
    if (v157 >= *(v132 + 16))
    {
      __break(1u);
      goto LABEL_385;
    }

    v160 = *(v132 + v159);
    ++v157;
    v159 += 24;
    if (v160)
    {
      v161 = *(v133 + 16);
      v162 = *(v8 + 16);
      v72 = __OFADD__(v161, v162);
      v163 = v161 + v162;
      if (v72)
      {
        __break(1u);
LABEL_398:
        __break(1u);
        goto LABEL_399;
      }

      v164 = v163 + v157 - 1;
      if (__OFADD__(v163, v157 - 1))
      {
        goto LABEL_398;
      }

      v165 = *(v132 + v159 - 32);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_261A660EC(0, *(v134 + 16) + 1, 1, v134);
      }

      v167 = *(v134 + 16);
      v166 = *(v134 + 24);
      v132 = v324;
      v133 = a3;
      if (v167 >= v166 >> 1)
      {
        v169 = sub_261A660EC((v166 > 1), v167 + 1, 1, v134);
        v133 = a3;
        v134 = v169;
        v132 = v324;
      }

      *(v134 + 16) = v167 + 1;
      v168 = (v134 + 24 * v167);
      v168[4] = v165;
      v168[5] = v160;
      v168[6] = v164;
      v8 = v337;
      v97 = v340;
      goto LABEL_209;
    }
  }

  v342[0] = v123;

  sub_261A7F540(v170);
  sub_261A7F540(v134);
  if (*(v342[0] + 2))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB960, &qword_261A8AC18);
    v171 = sub_261A859C4();
  }

  else
  {
    v171 = MEMORY[0x277D84F98];
  }

  v342[0] = v171;

  sub_261A74364(v172, 1, v342);
  if (v328)
  {
    goto LABEL_410;
  }

  v173 = v342[0];
  if (v307)
  {
    v174 = sub_261A85994();
  }

  else
  {
    v174 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v175 = MEMORY[0x277D84F90];
  v322 = v173;
  v324 = v174;
  if (!v174)
  {
    v177 = MEMORY[0x277D84F90];
    goto LABEL_244;
  }

  v342[0] = MEMORY[0x277D84F90];
  sub_261A3E940(v174);
  if (v174 < 0)
  {
    __break(1u);
LABEL_402:
    __break(1u);
LABEL_403:
    v299 = sub_261A85994();
    v255 = a5;
    v256 = v299;
    v8 = v123;
    if (v299)
    {
      goto LABEL_327;
    }

    goto LABEL_404;
  }

  if ((v97 & 0xC000000000000001) != 0)
  {
    v176 = 0;
    v177 = v342[0];
    do
    {
      v178 = MEMORY[0x266716BE0](v176, v97);
      v179 = v178[4];
      v180 = v178[5];
      v181 = v178[6];
      v182 = v178[7];

      swift_unknownObjectRelease();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F3E0(0, *(v177 + 2) + 1, 1);
        v174 = v324;
        v177 = v342[0];
      }

      v184 = *(v177 + 2);
      v183 = *(v177 + 3);
      if (v184 >= v183 >> 1)
      {
        sub_261A3F3E0((v183 > 1), v184 + 1, 1);
        v174 = v324;
        v177 = v342[0];
      }

      ++v176;
      *(v177 + 2) = v184 + 1;
      v185 = &v177[32 * v184];
      *(v185 + 4) = v179;
      *(v185 + 5) = v180;
      *(v185 + 6) = v181;
      *(v185 + 7) = v182;
    }

    while (v174 != v176);
  }

  else
  {
    v186 = v97 + 32;
    v177 = v342[0];
    v187 = v174;
    do
    {
      v188 = *(*v186 + 32);
      v189 = *(*v186 + 40);
      v191 = *(*v186 + 48);
      v190 = *(*v186 + 56);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_261A3F3E0(0, *(v177 + 2) + 1, 1);
        v174 = v324;
        v177 = v342[0];
      }

      v97 = *(v177 + 2);
      v192 = *(v177 + 3);
      if (v97 >= v192 >> 1)
      {
        sub_261A3F3E0((v192 > 1), v97 + 1, 1);
        v174 = v324;
        v177 = v342[0];
      }

      *(v177 + 2) = v97 + 1;
      v193 = &v177[32 * v97];
      *(v193 + 4) = v188;
      *(v193 + 5) = v189;
      *(v193 + 6) = v191;
      *(v193 + 7) = v190;
      v186 += 8;
      --v187;
    }

    while (v187);
  }

  v8 = v337;
  v175 = MEMORY[0x277D84F90];
LABEL_244:
  v123 = *(v177 + 2);
  if (v123)
  {
    v194 = 0;
    v302 = *(v177 + 2);
    do
    {
      v314 = v177;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v314 = sub_261A67BD0(v177);
      }

      if (v194 >= *(v314 + 2))
      {
        goto LABEL_392;
      }

      v195 = &v314[32 * v194];
      v198 = *(v195 + 4);
      v196 = v195 + 32;
      v197 = v198;
      v199 = *(v198 + 16);
      if (v199)
      {
        v307 = v196;
        v308 = v194;
        v342[0] = v175;
        v328 = v199;
        sub_261A3E8E0(v199);
        v200 = 0;
        v97 = v197 + 56;
        v335 = v197;
        while (v200 < *(v197 + 16))
        {
          v202 = *(v97 - 24);
          v201 = *(v97 - 16);
          v203 = *(v97 - 8);
          v123 = *v97;
          if (v123 == 1)
          {
            v204 = *(v322 + 2);
            sub_261A77318(*(v97 - 24), *(v97 - 16), *(v97 - 8), 1u);

            if (!v204 || (v205 = sub_261A5BD84(v202, v201), (v206 & 1) == 0))
            {

              sub_261A7739C();
              swift_allocError();
              *v212 = v202;
              *(v212 + 8) = v201;
              *(v212 + 16) = 0;
              swift_willThrow();

              sub_261A773F0(v202, v201, v203, 1u);

              goto LABEL_73;
            }

            v207 = *(*(v322 + 7) + 8 * v205);
            sub_261A773F0(v202, v201, v203, 1u);
            v123 = 2;
            v203 = v207;
          }

          else
          {
            sub_261A77318(*(v97 - 24), *(v97 - 16), *(v97 - 8), *v97);
          }

          v208 = v342[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F360(0, *(v208 + 2) + 1, 1);
            v208 = v342[0];
          }

          v210 = *(v208 + 2);
          v209 = *(v208 + 3);
          if (v210 >= v209 >> 1)
          {
            sub_261A3F360((v209 > 1), v210 + 1, 1);
            v208 = v342[0];
          }

          ++v200;
          *(v208 + 2) = v210 + 1;
          v211 = &v208[32 * v210];
          *(v211 + 4) = v202;
          *(v211 + 5) = v201;
          *(v211 + 6) = v203;
          v211[56] = v123;
          v97 += 32;
          v197 = v335;
          v8 = v337;
          if (v328 == v200)
          {
            v196 = v307;
            v175 = MEMORY[0x277D84F90];
            v123 = v302;
            v194 = v308;
            goto LABEL_264;
          }
        }

        goto LABEL_386;
      }

      v208 = v175;
LABEL_264:
      ++v194;
      *v196 = v208;

      v174 = v324;
      v177 = v314;
    }

    while (v194 != v123);
  }

  *(v318 + 16) = v177;
  v213 = *(v306 + 16);
  if (v213 && (sub_261A84BF0(), (v328 = *(*(v306 + 48) + 16)) != 0))
  {

    v123 = 0;
    v215 = v175;
    do
    {
      ++v123;
      MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
      swift_getKeyPath();
      v343 = v175;
      sub_261A3E928(v213);
      v216 = v343;
      v217 = (v306 + 48);
      v218 = v213;
      do
      {
        v219 = *(v217 - 1);
        v220 = *v217;
        v342[0] = *(v217 - 2);
        v342[1] = v219;
        v342[2] = v220;

        swift_getAtKeyPath();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_261A3F3C0(0, *(v216 + 2) + 1, 1);
          v216 = v343;
        }

        v222 = *(v216 + 2);
        v221 = *(v216 + 3);
        if (v222 >= v221 >> 1)
        {
          sub_261A3F3C0((v221 > 1), v222 + 1, 1);
          v216 = v343;
        }

        *(v216 + 2) = v222 + 1;
        *&v216[8 * v222 + 32] = v341;
        v217 += 3;
        --v218;
      }

      while (v218);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = sub_261A66D74(0, v215[2] + 1, 1, v215);
        v215 = isUniquelyReferenced_nonNull_native;
      }

      v224 = v215[2];
      v223 = v215[3];
      if (v224 >= v223 >> 1)
      {
        isUniquelyReferenced_nonNull_native = sub_261A66D74((v223 > 1), v224 + 1, 1, v215);
        v215 = isUniquelyReferenced_nonNull_native;
      }

      v175 = MEMORY[0x277D84F90];
      v215[2] = v224 + 1;
      v215[v224 + 4] = v216;
    }

    while (v123 != v328);

    v174 = v324;
  }

  else
  {

    v215 = MEMORY[0x277D84F90];
  }

  v97 = v340;
  v8 = 0;
  if (a2)
  {
    v225 = *(a2 + 16);

    v342[0] = sub_261A6A430(0, v225);

    v226 = sub_261A76C50(v340, a2, v342);
    v8 = 0;
    swift_bridgeObjectRelease_n();
    *(v318 + 64) = v342[0];
    v227 = v318;
  }

  else
  {
    v123 = MEMORY[0x277D84F90];
    if (v174)
    {
      v342[0] = MEMORY[0x277D84F90];
      sub_261A3E910(v324);
      v228 = v324;
      if (v324 < 0)
      {
        goto LABEL_408;
      }

      v328 = v340 & 0xC000000000000001;
      if ((v340 & 0xC000000000000001) != 0)
      {
        v229 = 0;
        v226 = v342[0];
        do
        {
          v230 = *(MEMORY[0x266716BE0](v229, v340) + 64);
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F3A0(0, *(v226 + 2) + 1, 1);
            v228 = v324;
            v226 = v342[0];
          }

          v232 = *(v226 + 2);
          v231 = *(v226 + 3);
          if (v232 >= v231 >> 1)
          {
            sub_261A3F3A0((v231 > 1), v232 + 1, 1);
            v228 = v324;
            v226 = v342[0];
          }

          ++v229;
          *(v226 + 2) = v232 + 1;
          v233 = &v226[16 * v232];
          *(v233 + 4) = v230;
          v233[40] = 0;
        }

        while (v228 != v229);
      }

      else
      {
        v234 = v340 + 32;
        v226 = v342[0];
        v235 = v324;
        do
        {
          v236 = *(*v234 + 64);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F3A0(0, *(v226 + 2) + 1, 1);
            v228 = v324;
            v226 = v342[0];
          }

          v238 = *(v226 + 2);
          v237 = *(v226 + 3);
          if (v238 >= v237 >> 1)
          {
            sub_261A3F3A0((v237 > 1), v238 + 1, 1);
            v228 = v324;
            v226 = v342[0];
          }

          *(v226 + 2) = v238 + 1;
          v239 = &v226[16 * v238];
          *(v239 + 4) = v236;
          v239[40] = 0;
          v234 += 8;
          --v235;
        }

        while (v235);
      }

      v342[0] = v123;
      sub_261A3E8F8(v228);
      if (v328)
      {
        v240 = 0;
        v123 = v342[0];
        v97 = v340;
        v241 = v324;
        do
        {
          v242 = *(MEMORY[0x266716BE0](v240, v340) + 80);
          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F380(0, *(v123 + 16) + 1, 1);
            v241 = v324;
            v123 = v342[0];
          }

          v244 = *(v123 + 16);
          v243 = *(v123 + 24);
          if (v244 >= v243 >> 1)
          {
            sub_261A3F380((v243 > 1), v244 + 1, 1);
            v241 = v324;
            v123 = v342[0];
          }

          ++v240;
          *(v123 + 16) = v244 + 1;
          *(v123 + v244 + 32) = v242;
        }

        while (v241 != v240);
      }

      else
      {
        v245 = v340 + 32;
        v123 = v342[0];
        v246 = v324;
        do
        {
          v247 = *(*v245 + 80);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3F380(0, *(v123 + 16) + 1, 1);
            v123 = v342[0];
          }

          v249 = *(v123 + 16);
          v248 = *(v123 + 24);
          if (v249 >= v248 >> 1)
          {
            sub_261A3F380((v248 > 1), v249 + 1, 1);
            v123 = v342[0];
          }

          *(v123 + 16) = v249 + 1;
          *(v123 + v249 + 32) = v247;
          v245 += 8;
          --v246;
          v97 = v340;
        }

        while (v246);
      }

      v175 = MEMORY[0x277D84F90];
    }

    else
    {
      v226 = MEMORY[0x277D84F90];
    }

    v227 = v318;
    *(v318 + 64) = v123;
  }

  *(v227 + 40) = v226;
  v250 = *(v226 + 2);
  if (v250)
  {
    v251 = 0;
    v252 = v226 + 40;
    while (1)
    {
      v253 = (*v252 & 1) == 0;
      v72 = __OFADD__(v251, v253);
      v251 += v253;
      if (v72)
      {
        goto LABEL_389;
      }

      v252 += 16;
      if (!--v250)
      {
        goto LABEL_324;
      }
    }
  }

  v251 = 0;
LABEL_324:
  v123 = 0;

  *(v318 + 48) = v251;
  *(v318 + 24) = v215;
  v173 = *(a3 + 16);
  v254 = *(v337 + 16);

  if (__OFADD__(v173, v254))
  {
    goto LABEL_402;
  }

  *(v318 + 32) = &v173[v254];
  v255 = a5;
  v173 = v311;
  if (a5 >> 62)
  {
    goto LABEL_403;
  }

  v256 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v256)
  {
LABEL_404:
    v258 = MEMORY[0x277D84F90];
LABEL_405:

    result = v318;
    *(v318 + 56) = v258;
    return result;
  }

LABEL_327:
  v257 = 0;
  v328 = v255 & 0xFFFFFFFFFFFFFF8;
  v336 = v255 & 0xC000000000000001;
  v323 = v255 + 32;
  v307 = v97 & 0xC000000000000001;
  v306 = v97 + 32;
  v315 = v173 + 40;
  v258 = v175;
  v308 = v256;
  while (1)
  {
    while (1)
    {
      if (v336)
      {
        v123 = MEMORY[0x266716BE0](v257);
      }

      else
      {
        if (v257 >= *(v328 + 16))
        {
          goto LABEL_394;
        }

        v123 = *(v323 + 8 * v257);
      }

      v72 = __OFADD__(v257, 1);
      v259 = v257 + 1;
      if (v72)
      {
        goto LABEL_393;
      }

      v337 = v259;
      v260 = *(v311 + 2);
      if (v260)
      {
        break;
      }

LABEL_328:

      v257 = v337;
      if (v337 == v256)
      {
        goto LABEL_405;
      }
    }

    v261 = 0;
    v262 = v315;
    while (1)
    {
      v263 = *(v123 + 104) == *(v262 - 1) && *(v123 + 112) == *v262;
      if (v263 || (sub_261A85BA4() & 1) != 0)
      {
        break;
      }

      ++v261;
      v262 += 24;
      if (v260 == v261)
      {
        goto LABEL_328;
      }
    }

    v342[0] = *(v123 + 120);

    sub_261A75D10(v342);
    if (v8)
    {
      goto LABEL_411;
    }

    v264 = v342[0];
    if (!*(v342[0] + 2))
    {
      break;
    }

    sub_261A84BF0();
    v265 = *(v264 + 4);

    v266 = a2;
    if (a2)
    {
    }

    else if (v324)
    {
      v342[0] = v175;
      sub_261A3E8B0(v324);
      if (v324 < 0)
      {
        goto LABEL_407;
      }

      v267 = v324;
      v303 = v258;
      v266 = v342[0];
      if (v307)
      {
        v268 = 0;
        do
        {
          v269 = MEMORY[0x266716BE0](v268, v340);
          v270 = *(v269 + 16);
          v271 = *(v269 + 24);

          swift_unknownObjectRelease();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3EFB0(0, *(v266 + 2) + 1, 1);
            v267 = v324;
            v266 = v342[0];
          }

          v273 = *(v266 + 2);
          v272 = *(v266 + 3);
          if (v273 >= v272 >> 1)
          {
            sub_261A3EFB0((v272 > 1), v273 + 1, 1);
            v267 = v324;
            v266 = v342[0];
          }

          ++v268;
          *(v266 + 2) = v273 + 1;
          v274 = &v266[16 * v273];
          *(v274 + 4) = v270;
          *(v274 + 5) = v271;
        }

        while (v267 != v268);
      }

      else
      {
        v275 = v306;
        v276 = v324;
        do
        {
          v277 = *(*v275 + 16);
          v278 = *(*v275 + 24);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_261A3EFB0(0, *(v266 + 2) + 1, 1);
            v266 = v342[0];
          }

          v280 = *(v266 + 2);
          v279 = *(v266 + 3);
          if (v280 >= v279 >> 1)
          {
            sub_261A3EFB0((v279 > 1), v280 + 1, 1);
            v266 = v342[0];
          }

          *(v266 + 2) = v280 + 1;
          v281 = &v266[16 * v280];
          *(v281 + 4) = v277;
          *(v281 + 5) = v278;
          v275 += 8;
          --v276;
        }

        while (v276);
      }

      v97 = v340;
      v175 = MEMORY[0x277D84F90];
      v258 = v303;
    }

    else
    {
      v266 = v175;
    }

    v282 = *(v266 + 2);
    if (!v282)
    {
LABEL_381:

      v291 = *(v123 + 16);
      v290 = *(v123 + 24);
      v293 = *(v123 + 104);
      v292 = *(v123 + 112);
      sub_261A77260();
      swift_allocError();
      *v294 = v291;
      *(v294 + 8) = v290;
      *(v294 + 16) = v293;
      *(v294 + 24) = v292;
      *(v294 + 32) = 0;
      *(v294 + 40) = 0;
      *(v294 + 48) = 6;

      goto LABEL_382;
    }

    v283 = 0;
    v284 = v266 + 40;
    while (1)
    {
      v285 = *(v123 + 104) == *(v284 - 1) && *(v123 + 112) == *v284;
      if (v285 || (sub_261A85BA4() & 1) != 0)
      {
        break;
      }

      ++v283;
      v284 += 2;
      if (v282 == v283)
      {
        goto LABEL_381;
      }
    }

    v286 = *(a3 + 16);
    v8 = v286 + v261;
    if (__OFADD__(v286, v261))
    {
      __break(1u);
LABEL_407:
      __break(1u);
LABEL_408:
      __break(1u);
      while (1)
      {
        swift_deallocPartialClassInstance();
        __break(1u);
LABEL_410:
        swift_unexpectedError();
        __break(1u);
LABEL_411:
        MEMORY[0x2667175A0](v8);

        __break(1u);
      }
    }

    v256 = v308;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v258 = sub_261A66C68(0, *(v258 + 2) + 1, 1, v258);
    }

    v288 = *(v258 + 2);
    v287 = *(v258 + 3);
    if (v288 >= v287 >> 1)
    {
      v258 = sub_261A66C68((v287 > 1), v288 + 1, 1, v258);
    }

    *(v258 + 2) = v288 + 1;
    v289 = &v258[32 * v288];
    *(v289 + 4) = v8;
    *(v289 + 5) = v283;
    *(v289 + 6) = v265;
    *(v289 + 7) = v123;
    v257 = v337;
    v8 = 0;
    if (v337 == v308)
    {
      goto LABEL_405;
    }
  }

  v296 = *(v123 + 16);
  v295 = *(v123 + 24);
  sub_261A77260();
  swift_allocError();
  *v297 = v296;
  *(v297 + 8) = v295;
  *(v297 + 16) = 0u;
  *(v297 + 32) = 0u;
  *(v297 + 48) = 5;
LABEL_382:

  swift_willThrow();

LABEL_73:

LABEL_67:
  swift_deallocPartialClassInstance();
  return v318;
}

uint64_t sub_261A73F48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_261A85C44();

      sub_261A85554();
      v19 = sub_261A85C84();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_261A85BA4() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

char *sub_261A74130(uint64_t *a1, char **a2, unint64_t *a3)
{
  v4 = *a3;
  v5 = *a1;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  result = sub_261A67BA8(v6);
  v6 = result;
  if ((v4 & 0x8000000000000000) != 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (v4 < *(v6 + 2))
  {
    *&v6[8 * v4 + 32] = v5;
    *a2 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_261A741AC()
{

  return MEMORY[0x2821FE8D8](v0, 72, 7);
}

uint64_t sub_261A74228(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_261A74270(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_261A742C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_261A74308(uint64_t result, int a2, int a3)
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

uint64_t sub_261A74364(void *a1, char a2, void *a3)
{
  v38 = a1[2];
  if (!v38)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261A5BD84(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v16) = v11;
  if (v9[3] < v15)
  {
    sub_261A757D0(v15, v5 & 1, &qword_27FECB960, &qword_261A8AC18);
    v10 = sub_261A5BD84(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v10;
  sub_261A74F58(&qword_27FECB960, &qword_261A8AC18);
  v10 = v21;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x2667175A0](v18);
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v23 = (v22[6] + 16 * v10);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v10) = v8;
  v24 = v22[2];
  v14 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000001BLL, 0x8000000261A8EB60);
    sub_261A85974();
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    result = sub_261A85984();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v38 != 1)
  {
    v7 = a1 + 9;
    v16 = 1;
    while (v16 < a1[2])
    {
      v5 = *(v7 - 2);
      v6 = *(v7 - 1);
      v26 = *v7;
      v27 = *a3;

      v28 = sub_261A5BD84(v5, v6);
      v30 = v27[2];
      v31 = (v29 & 1) == 0;
      v14 = __OFADD__(v30, v31);
      v32 = v30 + v31;
      if (v14)
      {
        goto LABEL_23;
      }

      v8 = v29;
      if (v27[3] < v32)
      {
        sub_261A757D0(v32, 1, &qword_27FECB960, &qword_261A8AC18);
        v28 = sub_261A5BD84(v5, v6);
        if ((v8 & 1) != (v33 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v8)
      {
        goto LABEL_8;
      }

      v34 = *a3;
      *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
      v35 = (v34[6] + 16 * v28);
      *v35 = v5;
      v35[1] = v6;
      *(v34[7] + 8 * v28) = v26;
      v36 = v34[2];
      v14 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v16;
      v34[2] = v37;
      v7 += 3;
      if (v38 == v16)
      {
      }
    }

    goto LABEL_25;
  }
}

uint64_t sub_261A74714(void *a1, char a2, void *a3)
{
  v41 = a1[2];
  if (!v41)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_261A5BD84(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_261A75514(v15, v5 & 1);
    v10 = sub_261A5BD84(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_261A85BE4();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v24 = v10;
  sub_261A74DD4();
  v10 = v24;
  if (v16)
  {
LABEL_8:
    v19 = *(v8 + 16);
    v18 = *(v8 + 24);
    sub_261A77260();
    v20 = swift_allocError();
    *v21 = v19;
    *(v21 + 8) = v18;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 1;
    swift_willThrow();

    v22 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return MEMORY[0x2667175A0](v20);
    }

    goto LABEL_26;
  }

LABEL_11:
  v25 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v26 = (v25[6] + 16 * v10);
  *v26 = v7;
  v26[1] = v6;
  *(v25[7] + 8 * v10) = v8;
  v27 = v25[2];
  v14 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_261A858C4();
    MEMORY[0x2667168A0](0xD00000000000001BLL, 0x8000000261A8EB60);
    sub_261A85974();
    MEMORY[0x2667168A0](39, 0xE100000000000000);
    result = sub_261A85984();
    __break(1u);
    return result;
  }

  v25[2] = v28;
  if (v41 != 1)
  {
    v5 = a1 + 9;
    v29 = 1;
    while (v29 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v30 = *a3;

      v31 = sub_261A5BD84(v7, v6);
      v33 = v30[2];
      v34 = (v32 & 1) == 0;
      v14 = __OFADD__(v33, v34);
      v35 = v33 + v34;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v32;
      if (v30[3] < v35)
      {
        sub_261A75514(v35, 1);
        v31 = sub_261A5BD84(v7, v6);
        if ((v16 & 1) != (v36 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v37 = *a3;
      *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
      v38 = (v37[6] + 16 * v31);
      *v38 = v7;
      v38[1] = v6;
      *(v37[7] + 8 * v31) = v8;
      v39 = v37[2];
      v14 = __OFADD__(v39, 1);
      v40 = v39 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v29;
      v37[2] = v40;
      v5 += 3;
      if (v41 == v29)
      {
      }
    }

    goto LABEL_25;
  }
}

void *sub_261A74AC8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB380, &qword_261A88868);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 32);
        v26 = (*(v4 + 48) + v18);
        v27 = *(v22 + 16);
        *v26 = v21;
        v26[1] = v20;
        v28 = *(v4 + 56) + v17;
        *v28 = v23;
        *(v28 + 8) = v24;
        *(v28 + 16) = v27;
        *(v28 + 32) = v25;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261A74C58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB208, &qword_261A87D48);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261A74DD4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE20, &qword_261A8CAD0);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_261A74F58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_261A859A4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = (*(v4 + 48) + 16 * v19);
        v22 = *v20;
        v21 = v20[1];
        v23 = *(*(v4 + 56) + 8 * v19);
        v24 = (*(v6 + 48) + 16 * v19);
        *v24 = v22;
        v24[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v23;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_261A750B0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
  v2 = *v0;
  v3 = sub_261A859A4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_261A75220(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB380, &qword_261A88868);
  v36 = v4;
  result = sub_261A859B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v26 = *(v25 + 8);
      v38 = *v25;
      v39 = *(v25 + 16);
      v37 = *(v25 + 32);
      if ((v36 & 1) == 0)
      {
      }

      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v38;
      *(v17 + 8) = v26;
      *(v17 + 16) = v39;
      *(v17 + 32) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_261A75514(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE20, &qword_261A8CAD0);
  v34 = v4;
  result = sub_261A859B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_261A757D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = sub_261A859B4();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t sub_261A75A68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
  v34 = v4;
  result = sub_261A859B4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_261A85C44();
      sub_261A85554();
      result = sub_261A85C84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_261A75D10(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_261A76A50(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_261A85B84();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          v14 = *v13;
          if (v11 >= *v13)
          {
            break;
          }

          *v13 = v11;
          v13[1] = v14;
          --v13;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_261A856E4();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_261A75E44(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_261A75E44(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v84 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_88:
    v5 = *v84;
    if (!*v84)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_261A76620(v8);
      v8 = result;
    }

    v76 = (v8 + 16);
    v77 = *(v8 + 16);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = (v8 + 16 * v77);
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_261A763A0((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v5);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_114;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_115;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_116;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  v83 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = v14 >= v13;
        ++v12;
        v13 = v14;
        if ((((v10 < v11) ^ v15) & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = 8 * v7 - 8;
        v17 = 8 * v9;
        v18 = v7;
        v19 = v9;
        do
        {
          if (v19 != --v18)
          {
            v21 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = *(v21 + v17);
            *(v21 + v17) = *(v21 + v16);
            *(v21 + v16) = v20;
          }

          ++v19;
          v16 -= 8;
          v17 += 8;
        }

        while (v19 < v18);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_261A65FE8(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v30 = *(v8 + 24);
    v31 = v5 + 1;
    if (v5 >= v30 >> 1)
    {
      result = sub_261A65FE8((v30 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v31;
    v32 = v8 + 32;
    v33 = (v8 + 32 + 16 * v5);
    *v33 = v9;
    v33[1] = v7;
    v85 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v31 - 1;
        if (v31 >= 4)
        {
          break;
        }

        if (v31 == 3)
        {
          v34 = *(v8 + 32);
          v35 = *(v8 + 40);
          v44 = __OFSUB__(v35, v34);
          v36 = v35 - v34;
          v37 = v44;
LABEL_57:
          if (v37)
          {
            goto LABEL_104;
          }

          v50 = (v8 + 16 * v31);
          v52 = *v50;
          v51 = v50[1];
          v53 = __OFSUB__(v51, v52);
          v54 = v51 - v52;
          v55 = v53;
          if (v53)
          {
            goto LABEL_106;
          }

          v56 = (v32 + 16 * v5);
          v58 = *v56;
          v57 = v56[1];
          v44 = __OFSUB__(v57, v58);
          v59 = v57 - v58;
          if (v44)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v54, v59))
          {
            goto LABEL_111;
          }

          if (v54 + v59 >= v36)
          {
            if (v36 < v59)
            {
              v5 = v31 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v31 < 2)
        {
          goto LABEL_112;
        }

        v60 = (v8 + 16 * v31);
        v62 = *v60;
        v61 = v60[1];
        v44 = __OFSUB__(v61, v62);
        v54 = v61 - v62;
        v55 = v44;
LABEL_72:
        if (v55)
        {
          goto LABEL_108;
        }

        v63 = (v32 + 16 * v5);
        v65 = *v63;
        v64 = v63[1];
        v44 = __OFSUB__(v64, v65);
        v66 = v64 - v65;
        if (v44)
        {
          goto LABEL_110;
        }

        if (v66 < v54)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v31)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v71 = (v32 + 16 * (v5 - 1));
        v72 = *v71;
        v73 = (v32 + 16 * v5);
        v74 = v73[1];
        sub_261A763A0((*a3 + 8 * *v71), (*a3 + 8 * *v73), (*a3 + 8 * v74), v85);
        if (v4)
        {
        }

        if (v74 < v72)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v71 = v72;
        v71[1] = v74;
        v75 = *(v8 + 16);
        if (v5 >= v75)
        {
          goto LABEL_101;
        }

        v31 = v75 - 1;
        result = memmove((v32 + 16 * v5), v73 + 2, 16 * (v75 - 1 - v5));
        *(v8 + 16) = v75 - 1;
        if (v75 <= 2)
        {
          goto LABEL_3;
        }
      }

      v38 = v32 + 16 * v31;
      v39 = *(v38 - 64);
      v40 = *(v38 - 56);
      v44 = __OFSUB__(v40, v39);
      v41 = v40 - v39;
      if (v44)
      {
        goto LABEL_102;
      }

      v43 = *(v38 - 48);
      v42 = *(v38 - 40);
      v44 = __OFSUB__(v42, v43);
      v36 = v42 - v43;
      v37 = v44;
      if (v44)
      {
        goto LABEL_103;
      }

      v45 = (v8 + 16 * v31);
      v47 = *v45;
      v46 = v45[1];
      v44 = __OFSUB__(v46, v47);
      v48 = v46 - v47;
      if (v44)
      {
        goto LABEL_105;
      }

      v44 = __OFADD__(v36, v48);
      v49 = v36 + v48;
      if (v44)
      {
        goto LABEL_107;
      }

      if (v49 >= v41)
      {
        v67 = (v32 + 16 * v5);
        v69 = *v67;
        v68 = v67[1];
        v44 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v44)
        {
          goto LABEL_113;
        }

        if (v36 < v70)
        {
          v5 = v31 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v83;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v22 = *a3;
  v23 = *a3 + 8 * v7 - 8;
  v24 = v9 - v7;
LABEL_30:
  v25 = *(v22 + 8 * v7);
  v26 = v24;
  v27 = v23;
  while (1)
  {
    v28 = *v27;
    if (v25 >= *v27)
    {
LABEL_29:
      ++v7;
      v23 += 8;
      --v24;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v22)
    {
      break;
    }

    *v27 = v25;
    v27[1] = v28;
    --v27;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_261A763A0(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (v20 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_261A76594(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_261A76620(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_261A76634(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_261A767D4(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_261A77444(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x266717700](v14, -1, -1);
  }

  return v10;
}

uint64_t sub_261A767D4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v36 = a4 + 56;

  v31 = 0;
  v32 = v5;
  v12 = 0;
  v34 = v10;
  v35 = v6;
  while (v9)
  {
LABEL_11:
    v15 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v16 = (*(v5 + 48) + ((v12 << 10) | (16 * v15)));
    v18 = *v16;
    v17 = v16[1];
    sub_261A85C44();

    sub_261A85554();
    v19 = sub_261A85C84();
    v20 = -1 << *(v4 + 32);
    v21 = v19 & ~v20;
    v22 = v21 >> 6;
    v23 = 1 << v21;
    if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) != 0)
    {
      v24 = v4;
      v25 = (*(v4 + 48) + 16 * v21);
      if (*v25 != v18 || v25[1] != v17)
      {
        v27 = ~v20;
        while ((sub_261A85BA4() & 1) == 0)
        {
          v21 = (v21 + 1) & v27;
          v22 = v21 >> 6;
          v23 = 1 << v21;
          if (((1 << v21) & *(v36 + 8 * (v21 >> 6))) == 0)
          {
            v4 = v24;
            v5 = v32;
            goto LABEL_23;
          }

          v28 = (*(v24 + 48) + 16 * v21);
          if (*v28 == v18 && v28[1] == v17)
          {
            break;
          }
        }
      }

      v13 = a1[v22];
      a1[v22] = v13 | v23;
      v4 = v24;
      v5 = v32;
      v10 = v34;
      v6 = v35;
      if ((v13 & v23) == 0 && __OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_27:

        return sub_261A6F4C8(a1, a2, v31, v4);
      }
    }

    else
    {
LABEL_23:

      v10 = v34;
      v6 = v35;
    }
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
      goto LABEL_27;
    }

    v9 = *(v6 + 8 * v14);
    ++v12;
    if (v9)
    {
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A76A64(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *(a1 + 48);
  v9 = *a2;
  v10 = a2[1];
  if (v8 <= 2)
  {
    if (*(a1 + 48))
    {
      if (v8 != 1)
      {
        if (*(a2 + 48) != 2)
        {
          return 0;
        }

        v12 = a1[4];
        v13 = a1[5];
        v14 = a2[2];
        v15 = a2[3];
        v16 = a2[4];
        v17 = a2[5];
        if ((v4 != v9 || v5 != v10) && (sub_261A85BA4() & 1) == 0)
        {
          return 0;
        }

        if ((v6 != v14 || v7 != v15) && (sub_261A85BA4() & 1) == 0)
        {
          return 0;
        }

        if (v12 == v16 && v13 == v17)
        {
          return 1;
        }

        goto LABEL_41;
      }

      if (*(a2 + 48) == 1)
      {
        goto LABEL_12;
      }
    }

    else if (!*(a2 + 48))
    {
      if (v4 != v9 || v5 != v10)
      {
        goto LABEL_41;
      }

      return 1;
    }

    return 0;
  }

  if (*(a1 + 48) <= 4u)
  {
    if (v8 == 3)
    {
      if (*(a2 + 48) != 3)
      {
        return 0;
      }

LABEL_12:
      if (v4 != v9 || v5 != v10)
      {
        goto LABEL_41;
      }

      return 1;
    }

    if (*(a2 + 48) == 4)
    {
      goto LABEL_34;
    }

    return 0;
  }

  if (v8 == 5)
  {
    if (*(a2 + 48) == 5)
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (*(a2 + 48) != 6)
  {
    return 0;
  }

LABEL_34:
  v18 = a2[2];
  v19 = a2[3];
  if ((v4 != v9 || v5 != v10) && (sub_261A85BA4() & 1) == 0)
  {
    return 0;
  }

  if (v6 == v18 && v7 == v19)
  {
    return 1;
  }

LABEL_41:

  return sub_261A85BA4();
}

char *sub_261A76C50(unint64_t a1, unint64_t a2, char **a3)
{
  v4 = a1;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v28 = MEMORY[0x277D84F90];
  result = sub_261A3F3A0(0, v5 & ~(v5 >> 63), 0);
  if ((v5 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v6 = v28;
    v9 = *(a2 + 16);
    v22 = v4 & 0xFFFFFFFFFFFFFF8;
    v23 = v5;
    v21 = v4 + 32;
    v26 = (a2 + 40);
    v27 = v4 & 0xC000000000000001;
    v24 = v4;
    while (1)
    {
      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        v5 = sub_261A85994();
        goto LABEL_3;
      }

      if (v27)
      {
        a2 = MEMORY[0x266716BE0]();
        v11 = v9 == 0;
        if (!v9)
        {
          goto LABEL_19;
        }
      }

      else
      {
        if (v8 >= *(v22 + 16))
        {
          goto LABEL_30;
        }

        a2 = *(v21 + 8 * v8);

        v11 = v9 == 0;
        if (!v9)
        {
LABEL_19:

          v12 = 0;
          goto LABEL_24;
        }
      }

      v12 = 0;
      v13 = v26;
      v11 = v9 == 0;
      while (1)
      {
        v14 = *(a2 + 16) == *(v13 - 1) && *(a2 + 24) == *v13;
        if (v14 || (sub_261A85BA4() & 1) != 0)
        {
          break;
        }

        ++v12;
        v13 += 2;
        v11 = v9 == v12;
        if (v9 == v12)
        {
          goto LABEL_19;
        }
      }

      v15 = *(a2 + 80);
      v4 = a3;
      v16 = *a3;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *a3 = v16;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v16 = sub_261A67C0C(v16);
        *a3 = v16;
      }

      if (v12 >= *(v16 + 2))
      {
        goto LABEL_29;
      }

      v16[v12 + 32] = v15;

      v5 = v23;
      v4 = v24;
LABEL_24:
      v19 = *(v28 + 16);
      v18 = *(v28 + 24);
      a2 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        sub_261A3F3A0((v18 > 1), v19 + 1, 1);
      }

      *(v28 + 16) = a2;
      v20 = v28 + 16 * v19;
      *(v20 + 32) = v12;
      *(v20 + 40) = v11;
      v8 = v10;
      if (v10 == v5)
      {
        return v6;
      }
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_261A76E98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_261A858C4();

  MEMORY[0x2667168A0](a1, a2);
  MEMORY[0x2667168A0](2108450, 0xE300000000000000);
  v6 = sub_261A844B8(a3);
  MEMORY[0x2667168A0](v6);

  MEMORY[0x2667168A0](10537, 0xE200000000000000);
  return 0xD000000000000011;
}

uint64_t sub_261A76F5C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBDE8, &qword_261A8CAC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A77164();
  sub_261A85CB4();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v17) = 0;
  v9 = sub_261A85A54();
  v11 = v10;
  v12 = v9;
  v20 = 1;
  sub_261A771B8();
  sub_261A85A94();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v14 = v19;
  v16 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_261A77164()
{
  result = qword_27FECBDF0;
  if (!qword_27FECBDF0)
  {
    result = swift_getWitnessTable(byte_261A8CE24, &type metadata for NamedExpression.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBDF0);
  }

  return result;
}

unint64_t sub_261A771B8()
{
  result = qword_27FECBDF8;
  if (!qword_27FECBDF8)
  {
    result = swift_getWitnessTable(byte_261A8D41C, &type metadata for Expression, v0, v1);
    atomic_store(result, &qword_27FECBDF8);
  }

  return result;
}

unint64_t sub_261A7720C()
{
  result = qword_27FECBE08;
  if (!qword_27FECBE08)
  {
    result = swift_getWitnessTable(byte_261A8D3F4, &type metadata for Expression, v0, v1);
    atomic_store(result, &qword_27FECBE08);
  }

  return result;
}

unint64_t sub_261A77260()
{
  result = qword_27FECBE10;
  if (!qword_27FECBE10)
  {
    result = swift_getWitnessTable(byte_261A8CDE4, &type metadata for EvaluatorError, v0, v1);
    atomic_store(result, &qword_27FECBE10);
  }

  return result;
}

unint64_t sub_261A772B4()
{
  result = qword_27FECBE18;
  if (!qword_27FECBE18)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FECBDC0, &qword_261A8C8E8);
    result = swift_getWitnessTable(MEMORY[0x277D83B68], v3, v0, v1);
    atomic_store(result, &qword_27FECBE18);
  }

  return result;
}

uint64_t sub_261A77318(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_261A77334@<X0>(uint64_t result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*result + 16))
  {
    *a3 = *(*result + 8 * v3 + 32);
    return result;
  }

  __break(1u);
  return result;
}

unint64_t sub_261A7739C()
{
  result = qword_27FECBE28;
  if (!qword_27FECBE28)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for Expression.EvaluationError, v0, v1);
    atomic_store(result, &qword_27FECBE28);
  }

  return result;
}

uint64_t sub_261A773F0(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 <= 1)
  {
  }

  return result;
}

uint64_t sub_261A7740C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261A77444@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_261A767D4(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_261A774B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 49))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 48);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_261A774F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

unint64_t sub_261A77578()
{
  result = qword_27FECBE30;
  if (!qword_27FECBE30)
  {
    result = swift_getWitnessTable(byte_261A8CCE4, &type metadata for NamedExpression.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE30);
  }

  return result;
}

unint64_t sub_261A775D4()
{
  result = qword_27FECBE38;
  if (!qword_27FECBE38)
  {
    result = swift_getWitnessTable(asc_261A8CDBC, &type metadata for VisitState, v0, v1);
    atomic_store(result, &qword_27FECBE38);
  }

  return result;
}

unint64_t sub_261A7762C()
{
  result = qword_27FECBE40;
  if (!qword_27FECBE40)
  {
    result = swift_getWitnessTable(aM_3, &type metadata for NamedExpression.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE40);
  }

  return result;
}

unint64_t sub_261A77684()
{
  result = qword_27FECBE48;
  if (!qword_27FECBE48)
  {
    result = swift_getWitnessTable(asc_261A8CC7C, &type metadata for NamedExpression.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE48);
  }

  return result;
}

uint64_t sub_261A776DC(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = MEMORY[0x277D84F90];
  if (v3)
  {
    v5 = a1;
    v46 = MEMORY[0x277D84F90];
    sub_261A3F4A0(0, v3, 0);
    v6 = v46;
    v7 = v5 + 64;
    result = sub_261A85854();
    v9 = result;
    v10 = 0;
    v11 = *(v5 + 36);
    v38 = v5 + 72;
    v39 = v3;
    v41 = v5 + 64;
    v42 = v5;
    v40 = v11;
    while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
    {
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_25;
      }

      if (v11 != *(v5 + 36))
      {
        goto LABEL_26;
      }

      v44 = v9 >> 6;
      v43 = v10;
      v13 = (*(v5 + 48) + 16 * v9);
      v14 = v13[1];
      v45 = *v13;
      v15 = (*(v5 + 56) + 16 * v9);
      v17 = *v15;
      v16 = v15[1];
      swift_bridgeObjectRetain_n();

      v18 = sub_261A698B4(v4);
      v19 = sub_261A82274(v17, v16, v18);
      if (v2)
      {
        sub_261A7D514();
        swift_allocError();
        *v37 = v45;
        v37[1] = v14;
        v37[2] = v17;
        v37[3] = v16;
        v37[4] = v2;
        v37[7] = 0x4000000000000000;
        swift_willThrow();

        return v6;
      }

      v23 = v19;
      v24 = v20;
      v25 = v21;
      v26 = v22;

      v28 = *(v46 + 16);
      v27 = *(v46 + 24);
      if (v28 >= v27 >> 1)
      {
        result = sub_261A3F4A0((v27 > 1), v28 + 1, 1);
      }

      *(v46 + 16) = v28 + 1;
      v29 = (v46 + 48 * v28);
      v29[4] = v45;
      v29[5] = v14;
      v29[6] = v23;
      v29[7] = v24;
      v29[8] = v25;
      v29[9] = v26;
      v5 = v42;
      v12 = 1 << *(v42 + 32);
      if (v9 >= v12)
      {
        goto LABEL_27;
      }

      v7 = v41;
      v30 = *(v41 + 8 * v44);
      if ((v30 & (1 << v9)) == 0)
      {
        goto LABEL_28;
      }

      v11 = v40;
      if (v40 != *(v42 + 36))
      {
        goto LABEL_29;
      }

      v31 = v30 & (-2 << (v9 & 0x3F));
      if (v31)
      {
        v12 = __clz(__rbit64(v31)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v32 = v44 << 6;
        v33 = v44 + 1;
        v34 = (v38 + 8 * v44);
        while (v33 < (v12 + 63) >> 6)
        {
          v36 = *v34++;
          v35 = v36;
          v32 += 64;
          ++v33;
          if (v36)
          {
            result = sub_261A4984C(v9, v40, 0);
            v12 = __clz(__rbit64(v35)) + v32;
            goto LABEL_4;
          }
        }

        result = sub_261A4984C(v9, v40, 0);
      }

LABEL_4:
      v10 = v43 + 1;
      v9 = v12;
      v2 = 0;
      v4 = MEMORY[0x277D84F90];
      if (v43 + 1 == v39)
      {
        return v6;
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
  }

  else
  {
    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_261A779E4(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void *sub_261A77A90(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_261A7B1A8(*(a1 + 16), 0);
  v4 = sub_261A7BC64(&v6, v3 + 4, v2, a1);
  sub_261A70290(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t sub_261A77B20(uint64_t a1)
{
  result = MEMORY[0x266716A20](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_261A81300(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_261A77C3C()
{
  v1 = v0[3];
  v9 = v0[2];
  v10 = v1;
  v2 = v0[5];
  v11 = v0[4];
  v12 = v2;
  v3 = v0[1];
  v7 = *v0;
  v8 = v3;
  if (*(&v10 + 1) >> 62)
  {
    if (*(&v10 + 1) >> 62 == 1)
    {
      *&v5 = 0;
      *(&v5 + 1) = 0xE000000000000000;
      sub_261A858C4();
      MEMORY[0x2667168A0](v7, *(&v7 + 1));
      MEMORY[0x2667168A0](0xD000000000000023, 0x8000000261A8EE20);
      MEMORY[0x2667168A0](v8, *(&v8 + 1));
      MEMORY[0x2667168A0](8250, 0xE200000000000000);
      *&v6 = v9;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB1B8, &qword_261A8C910);
      sub_261A85974();
    }

    else
    {
      sub_261A858C4();

      v5 = v7;
      MEMORY[0x2667168A0](0xD000000000000013, 0x8000000261A8EE00);
      MEMORY[0x2667168A0](v9, *(&v9 + 1));
      MEMORY[0x2667168A0](5720096, 0xE300000000000000);
    }

    return v5;
  }

  else
  {
    v6 = v7;
    sub_261A7E698(&v7, &v5);
    MEMORY[0x2667168A0](0x6F6620746F6E203ALL, 0xEB00000000646E75);
    return v6;
  }
}

uint64_t CounterAnalysis.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CounterAnalysis.name.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CounterAnalysis.displayName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CounterAnalysis.initialModeID.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CounterAnalysis.initialModeName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t sub_261A77F04@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 168);
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v10[3] = v2[4];
  v10[4] = v5;
  v10[1] = v3;
  v10[2] = v4;
  v10[0] = v2[1];
  v6 = v2[3];
  a1[3] = v2[4];
  a1[4] = v5;
  v7 = v2[1];
  a1[1] = v2[2];
  a1[2] = v6;
  *a1 = v7;
  return sub_261A39B98(v10, &v9);
}

char *static CounterAnalysis.availableNames.getter()
{
  v33 = sub_261A85394();
  v0 = *(v33 - 8);
  v1 = MEMORY[0x28223BE20](v33);
  v32 = v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v31 = v27 - v3;
  v4 = sub_261A7BFA0(0);
  v5 = *(v4 + 16);
  if (v5)
  {
    v34 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v5, 0);
    v6 = v34;
    v8 = *(v0 + 16);
    v7 = v0 + 16;
    v9 = *(v7 + 64);
    v27[1] = v4;
    v10 = v4 + ((v9 + 32) & ~v9);
    v28 = *(v7 + 56);
    v29 = v8;
    v11 = (v7 - 8);
    v30 = v7;
    do
    {
      v12 = v31;
      v13 = v33;
      v29(v31, v10, v33);
      v14 = v32;
      sub_261A85344();
      v15 = sub_261A85324();
      v17 = v16;
      v18 = *v11;
      (*v11)(v14, v13);
      v18(v12, v13);
      v34 = v6;
      v20 = *(v6 + 2);
      v19 = *(v6 + 3);
      if (v20 >= v19 >> 1)
      {
        sub_261A3EFB0((v19 > 1), v20 + 1, 1);
        v6 = v34;
      }

      *(v6 + 2) = v20 + 1;
      v21 = &v6[16 * v20];
      *(v21 + 4) = v15;
      *(v21 + 5) = v17;
      v10 += v28;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
  }

  v22 = sub_261A7BF08(v6);

  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_11;
  }

  v24 = sub_261A7B1A8(*(v22 + 16), 0);
  v25 = sub_261A7BC64(&v34, v24 + 4, v23, v22);
  sub_261A70290(v34);
  if (v25 != v23)
  {
    __break(1u);
LABEL_11:

    v24 = MEMORY[0x277D84F90];
  }

  v34 = v24;

  sub_261A7B22C(&v34);

  return v34;
}

unint64_t CounterAnalysis.__allocating_init(name:silicon:directories:)(uint64_t a1, unint64_t a2, __int128 *a3, char *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v31 - v9;
  v11 = sub_261A85394();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v31 - v16;
  v18 = a3[3];
  v34 = a3[2];
  v35 = v18;
  v36 = a3[4];
  v20 = *a3;
  v19 = a3[1];
  v21 = a1;
  v32 = v20;
  v33 = v19;
  sub_261A785EC(a1, a2, a4, v10);

  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_261A39BF4(&v32);
    sub_261A5E854(v10, &qword_27FECAEC8, &qword_261A8BFE0);
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v22 = sub_261A853D4();
    __swift_project_value_buffer(v22, qword_27FED7C90);

    v23 = sub_261A853B4();
    v24 = sub_261A85744();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v31[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_261A3E9E8(v21, a2, v31);
      _os_log_impl(&dword_261A33000, v23, v24, "could not find CounterAnalysis named %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x266717700](v26, -1, -1);
      MEMORY[0x266717700](v25, -1, -1);
    }

    sub_261A7D514();
    swift_allocError();
    *v27 = v21;
    v27[1] = a2;
    v27[7] = 0;
    swift_willThrow();
  }

  else
  {

    (*(v12 + 32))(v17, v10, v11);
    (*(v12 + 16))(v15, v17, v11);
    v31[2] = v34;
    v31[3] = v35;
    v31[4] = v36;
    v31[0] = v32;
    v31[1] = v33;
    v28 = v37;
    v29 = sub_261A7D80C(v15, v31);
    if (!v28)
    {
      a2 = v29;
    }

    (*(v12 + 8))(v17, v11);
  }

  return a2;
}

uint64_t sub_261A785EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v60 = a1;
  v61 = a2;
  v6 = sub_261A85394();
  v63 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v49 - v10;
  v12 = sub_261A7BFA0(a3);
  if (qword_27FECAD60 != -1)
  {
LABEL_26:
    swift_once();
  }

  v13 = sub_261A853D4();
  __swift_project_value_buffer(v13, qword_27FED7C90);

  v14 = sub_261A853B4();
  v15 = sub_261A85734();

  v16 = os_log_type_enabled(v14, v15);
  v62 = v12;
  if (v16)
  {
    v55 = v15;
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v65 = v53;
    v54 = v17;
    *v17 = 136315138;
    v18 = *(v12 + 16);
    v19 = MEMORY[0x277D84F90];
    if (v18)
    {
      v50 = v14;
      v51 = v9;
      v59 = v6;
      v52 = a4;
      v64 = MEMORY[0x277D84F90];
      sub_261A3EFB0(0, v18, 0);
      v19 = v64;
      v20 = *(v63 + 16);
      v21 = v12 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
      v56 = *(v63 + 72);
      v57 = v20;
      v58 = v63 + 16;
      v22 = (v63 + 8);
      do
      {
        v23 = v59;
        v57(v11, v21, v59);
        v24 = sub_261A85324();
        v26 = v25;
        (*v22)(v11, v23);
        v64 = v19;
        v28 = *(v19 + 16);
        v27 = *(v19 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_261A3EFB0((v27 > 1), v28 + 1, 1);
          v19 = v64;
        }

        *(v19 + 16) = v28 + 1;
        v29 = v19 + 16 * v28;
        *(v29 + 32) = v24;
        *(v29 + 40) = v26;
        v21 += v56;
        --v18;
      }

      while (v18);
      v9 = v51;
      a4 = v52;
      v6 = v59;
      v12 = v62;
      v14 = v50;
    }

    v30 = MEMORY[0x2667169D0](v19, MEMORY[0x277D837D0]);
    v32 = v31;

    v33 = sub_261A3E9E8(v30, v32, &v65);

    v34 = v54;
    *(v54 + 1) = v33;
    _os_log_impl(&dword_261A33000, v14, v55, "found CounterAnalysis specifications: %s", v34, 0xCu);
    v35 = v53;
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x266717700](v35, -1, -1);
    MEMORY[0x266717700](v34, -1, -1);
  }

  v36 = *(v12 + 16);
  if (v36)
  {
    v11 = 0;
    v59 = v12 + ((*(v63 + 80) + 32) & ~*(v63 + 80));
    v37 = (v63 + 8);
    do
    {
      if (v11 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_26;
      }

      (*(v63 + 16))(v9, v59 + *(v63 + 72) * v11, v6);
      v42 = sub_261A85324();
      v44 = v43;
      v65 = v60;
      v66 = v61;

      MEMORY[0x2667168A0](0x6E6F736A2ELL, 0xE500000000000000);
      if (v42 == v65 && v44 == v66)
      {
      }

      else
      {
        v46 = sub_261A85BA4();

        if ((v46 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      v38 = [objc_opt_self() defaultManager];
      sub_261A85364();
      v39 = v9;
      v40 = sub_261A85494();

      v41 = [v38 fileExistsAtPath_];

      v9 = v39;
      if (v41)
      {

        (*(v63 + 32))(a4, v39, v6);
        v47 = 0;
        return (*(v63 + 56))(a4, v47, 1, v6);
      }

LABEL_14:
      ++v11;
      (*v37)(v9, v6);
      v12 = v62;
    }

    while (v36 != v11);
  }

  v47 = 1;
  return (*(v63 + 56))(a4, v47, 1, v6);
}

uint64_t sub_261A78B30(uint64_t *a1, __int128 *a2, uint64_t a3)
{
  v122 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v107 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v120 = v107 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v121 = v107 - v14;
  v15 = a2[3];
  v141 = a2[2];
  v142 = v15;
  v143 = a2[4];
  v16 = a2[1];
  v139 = *a2;
  v140 = v16;
  v123 = a1;
  v138 = a1[7];
  v17 = *(v138 + 16);

  *&v126 = v17;
  if (!v17)
  {
    v29 = *(&v140 + 1);
    v28 = v140;
LABEL_8:
    sub_261A5E854(&v138, &qword_27FECB528, &qword_261A89458);
    v30 = v123;
    v32 = *v123;
    v31 = v123[1];
    v33 = v139;
    v128 = v141;
    v34 = DWORD2(v141) | 0x8000000000000000;
    sub_261A7D514();
    v127 = v142;
    v126 = v143;
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v31;
    *(v35 + 16) = v33;
    *(v35 + 32) = v28;
    *(v35 + 40) = v29;
    *(v35 + 48) = v128;
    *(v35 + 56) = v34;
    v36 = v126;
    *(v35 + 64) = v127;
    *(v35 + 80) = v36;
    swift_willThrow();

    sub_261A54910(v30);
    v5 = v124;
LABEL_11:
    type metadata accessor for CounterAnalysis();
    swift_deallocPartialClassInstance();
    return v5;
  }

  v113 = v10;
  v119 = v9;
  v114 = v8;
  v115 = v13;
  v116 = v12;
  v117 = v6;
  v118 = v5;
  v19 = 0;
  v20 = (v18 + 64);
  while (1)
  {
    if (v19 >= *(v18 + 16))
    {
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

    v5 = v18;
    *&v127 = v107;
    v8 = *(v20 - 4);
    v21 = *(v20 - 3);
    v23 = *(v20 - 2);
    v22 = *(v20 - 1);
    v24 = *v20;
    v25 = *(&v140 + 1);
    v125 = v140;
    v131 = v140;
    MEMORY[0x28223BE20](v18);
    v107[-2] = &v131;

    v26 = v128;
    v27 = sub_261A779E4(sub_261A7E818, &v107[-4], v8);
    v128 = v26;
    if (v27)
    {
      break;
    }

    ++v19;
    v20 += 5;
    v18 = v5;
    if (v126 == v19)
    {
      v28 = v125;
      v29 = v25;
      goto LABEL_8;
    }
  }

  *&v127 = v24;
  v37 = v8;
  sub_261A5E854(&v138, &qword_27FECB528, &qword_261A89458);
  v38 = v123;
  v39 = *v123;
  v136 = *(v123 + 1);
  v40 = v136;
  v137 = v39;
  v5 = v124;
  *(v124 + 16) = v39;
  *(v5 + 32) = v39;
  v41 = *(v38 + 32);
  v42 = *(v38 + 48);
  v135 = v41;
  *(v5 + 64) = v41;
  *(v5 + 80) = v41;
  *(v5 + 48) = v40;
  *(v5 + 152) = v42;
  *(v5 + 136) = v41;
  *(v5 + 120) = v40;
  *(v5 + 104) = v39;
  sub_261A3DF5C(&v137, &v131);
  sub_261A3DFB8(&v135, &v131);

  sub_261A3DF5C(&v137, &v131);
  sub_261A3DFB8(&v135, &v131);
  sub_261A3DF5C(&v136, &v131);
  sub_261A548D8(v38, &v131);
  v43 = v128;
  v44 = sub_261A776DC(v21);
  v125 = v43;
  if (v43)
  {

    sub_261A39BF4(&v139);

    sub_261A54910(v38);

    v45 = *(v5 + 120);
    v131 = *(v5 + 104);
    v132 = v45;
    v46 = *(v5 + 152);
    v133 = *(v5 + 136);
    v134 = v46;
    sub_261A54910(&v131);
    goto LABEL_11;
  }

  v109 = v44;
  v108 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBD40, &unk_261A8C450);
  v48 = sub_261A859A4();
  v49 = 0;
  v5 = v22 + 64;
  v50 = 1 << *(v22 + 32);
  v51 = -1;
  if (v50 < 64)
  {
    v51 = ~(-1 << v50);
  }

  v8 = v51 & *(v22 + 64);
  v52 = (v50 + 63) >> 6;
  v111 = v48 + 64;
  v112 = xmmword_261A8CE90;
  v107[0] = v23;
  v53 = v48;
  v107[1] = v37;
  v54 = v127;
  v110 = v48;
  if (!v8)
  {
LABEL_17:
    v56 = v49;
    while (1)
    {
      v49 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        goto LABEL_37;
      }

      if (v49 >= v52)
      {
        v73 = *(&v143 + 1);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v130 = v73;
        v75 = v125;
        sub_261A7D568(v53, sub_261A7BE30, 0, isUniquelyReferenced_nonNull_native, &v130);
        v125 = v75;
        if (v75)
        {

          MEMORY[0x2667175A0](v125);
          v104 = v124;

          v105 = *(v104 + 120);
          v131 = *(v104 + 104);
          v132 = v105;
          v106 = *(v104 + 152);
          v133 = *(v104 + 136);
          v134 = v106;
          sub_261A54910(&v131);
          type metadata accessor for CounterAnalysis();
          result = swift_deallocPartialClassInstance();
          __break(1u);
          return result;
        }

        v8 = v130;
        type metadata accessor for Platform();
        v76 = swift_allocObject();
        v77 = v142;
        *(v76 + 48) = v141;
        *(v76 + 64) = v77;
        *(v76 + 80) = v143;
        v78 = v140;
        *(v76 + 16) = v139;
        *(v76 + 32) = v78;
        v79 = v109;
        *(v76 + 96) = v122;
        *(v76 + 104) = v79;
        v80 = v107[0];
        *(v76 + 112) = v108;
        *(v76 + 120) = v80;
        *(v76 + 128) = v8;
        *(v76 + 136) = v54;
        v5 = v124;
        *(v124 + 168) = v76;

        v81 = v123;
        v82 = sub_261A3D960(v123, v54);
        sub_261A54910(v81);

        *(v5 + 96) = v82;
        if (qword_27FECAD60 != -1)
        {
          goto LABEL_39;
        }

        goto LABEL_33;
      }

      v57 = *(v5 + 8 * v49);
      ++v56;
      if (v57)
      {
        v55 = __clz(__rbit64(v57));
        v8 = (v57 - 1) & v57;
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v55 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_22:
    v58 = v55 | (v49 << 6);
    v59 = *(v22 + 56);
    v60 = (*(v22 + 48) + 16 * v58);
    v61 = v60[1];
    v128 = *v60;
    v62 = v59 + 32 * v58;
    v63 = *v62;
    LODWORD(v126) = *(v62 + 8);
    v64 = *(v62 + 16);
    v65 = *(v62 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB060, &unk_261A8D2C0);
    v66 = swift_allocObject();
    *(v66 + 16) = v112;
    v67 = v65 ? 0.0 : v64;
    v68 = v126 ? 0.0 : v63;
    *(v66 + 32) = v67;
    *(v66 + 40) = v68;
    *(v111 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
    v53 = v110;
    v69 = (*(v110 + 48) + 16 * v58);
    *v69 = v128;
    v69[1] = v61;
    *(*(v53 + 56) + 8 * v58) = v66;
    v70 = *(v53 + 16);
    v71 = __OFADD__(v70, 1);
    v72 = v70 + 1;
    if (v71)
    {
      break;
    }

    *(v53 + 16) = v72;

    v54 = v127;
    if (!v8)
    {
      goto LABEL_17;
    }
  }

LABEL_38:
  __break(1u);
LABEL_39:
  swift_once();
LABEL_33:
  v83 = sub_261A853D4();
  __swift_project_value_buffer(v83, qword_27FED7C90);

  v84 = sub_261A853B4();
  v85 = sub_261A85754();

  if (os_log_type_enabled(v84, v85))
  {
    v86 = swift_slowAlloc();
    v128 = swift_slowAlloc();
    v130 = v128;
    *v86 = 136446978;
    *&v127 = v84;
    v87 = sub_261A79938();
    v89 = sub_261A3E9E8(v87, v88, &v130);

    *(v86 + 4) = v89;
    *(v86 + 12) = 2080;
    v129 = *(*(v5 + 168) + 136);
    *&v112 = v129;
    v90 = *MEMORY[0x277CC8AF0];
    v91 = v113;
    v92 = *(v113 + 104);
    v123 = v8;
    LODWORD(v126) = v85;
    v93 = v120;
    v92(v120, v90, v119);
    v94 = v117;
    v95 = v114;
    v96 = v118;
    (*(v117 + 104))(v114, *MEMORY[0x277CC8B10], v118);

    v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
    sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83970]);
    v97 = v121;
    sub_261A85154();
    (*(v94 + 8))(v95, v96);
    (*(v91 + 8))(v93, v119);
    sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20, MEMORY[0x277CC8B28]);
    v98 = v116;
    sub_261A85674();
    (*(v115 + 8))(v97, v98);

    v99 = sub_261A3E9E8(v131, *(&v131 + 1), &v130);

    *(v86 + 14) = v99;
    *(v86 + 22) = 2050;
    v100 = *(v109 + 16);

    *(v86 + 24) = v100;

    *(v86 + 32) = 2050;
    v101 = v123[2];

    *(v86 + 34) = v101;
    v5 = v124;

    v102 = v127;
    _os_log_impl(&dword_261A33000, v127, v126, "initialized %{public}s with modes %s, %{public}ld expressions, %{public}ld constants", v86, 0x2Au);
    v103 = v128;
    swift_arrayDestroy();
    MEMORY[0x266717700](v103, -1, -1);
    MEMORY[0x266717700](v86, -1, -1);
  }

  else
  {

    swift_bridgeObjectRelease_n();
  }

  return v5;
}

unint64_t sub_261A79938()
{
  v1 = v0;
  sub_261A858C4();

  MEMORY[0x2667168A0](v1[6], v1[7]);
  MEMORY[0x2667168A0](10272, 0xE200000000000000);
  MEMORY[0x2667168A0](v1[4], v1[5]);
  MEMORY[0x2667168A0](0x20726F662029, 0xE600000000000000);
  v2 = v0[21];
  v3 = *(v2 + 32);
  v4 = *(v2 + 40);

  MEMORY[0x2667168A0](v3, v4);

  return 0xD000000000000016;
}

Recount::CounterAnalysis::CodingKeys_optional __swiftcall CounterAnalysis.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  v2 = v1;
  v3 = sub_261A859E4();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CounterAnalysis.CodingKeys.stringValue.getter()
{
  v1 = 0x6E6F63696C6973;
  if (*v0 != 1)
  {
    v1 = 0x636944746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369666963657073;
  }
}

uint64_t sub_261A79AF4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x6E6F63696C6973;
  if (v2 != 1)
  {
    v4 = 0x636944746E657665;
    v3 = 0xEF7972616E6F6974;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6369666963657073;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xED00006E6F697461;
  }

  v7 = 0xE700000000000000;
  v8 = 0x6E6F63696C6973;
  if (*a2 != 1)
  {
    v8 = 0x636944746E657665;
    v7 = 0xEF7972616E6F6974;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6369666963657073;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xED00006E6F697461;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261A85BA4();
  }

  return v11 & 1;
}

uint64_t sub_261A79C18()
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A79CD4(uint64_t a1)
{
  sub_261A85554();
}

uint64_t sub_261A79D7C(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

void sub_261A79E40(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006E6F697461;
  v4 = 0xE700000000000000;
  v5 = 0x6E6F63696C6973;
  if (v2 != 1)
  {
    v5 = 0x636944746E657665;
    v4 = 0xEF7972616E6F6974;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6369666963657073;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_261A79EB8()
{
  v1 = 0x6E6F63696C6973;
  if (*v0 != 1)
  {
    v1 = 0x636944746E657665;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6369666963657073;
  }
}

Recount::CounterAnalysis::CodingKeys_optional sub_261A79F2C@<W0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result.value = CounterAnalysis.CodingKeys.init(stringValue:)(*&a1).value;
  *a2 = v5;
  return result;
}

uint64_t sub_261A79F64(uint64_t a1)
{
  v2 = sub_261A7E200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_261A79FA0(uint64_t a1)
{
  v2 = sub_261A7E200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_261A79FF4(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE58, &qword_261A8CEA8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v30[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A7E200();
  sub_261A85CD4();
  v8 = *(v2 + 120);
  v50[0] = *(v2 + 104);
  v50[1] = v8;
  v9 = *(v2 + 152);
  v50[2] = *(v2 + 136);
  v50[3] = v9;
  v10 = *(v2 + 120);
  v46 = *(v2 + 104);
  v47 = v10;
  v11 = *(v2 + 152);
  v48 = *(v2 + 136);
  v49 = v11;
  v45 = 0;
  sub_261A548D8(v50, &v40);
  sub_261A7E254();
  v12 = v51;
  sub_261A85B54();
  if (v12)
  {
    v40 = v46;
    v41 = v47;
    v42 = v48;
    v43 = v49;
    sub_261A54910(&v40);
    (*(v5 + 8))(v7, v4);
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v17 = sub_261A853D4();
    __swift_project_value_buffer(v17, qword_27FED7C90);

    v18 = v12;
    v19 = sub_261A853B4();
    v20 = sub_261A85744();

    MEMORY[0x2667175A0](v12);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v40 = v22;
      *v21 = 136446466;
      v23 = sub_261A79938();
      v25 = sub_261A3E9E8(v23, v24, &v40);

      *(v21 + 4) = v25;
      *(v21 + 12) = 2082;
      swift_getErrorValue();
      v26 = sub_261A85BF4();
      v28 = sub_261A3E9E8(v26, v27, &v40);

      *(v21 + 14) = v28;
      _os_log_impl(&dword_261A33000, v19, v20, "failed to encode %{public}s: %{public}s", v21, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v22, -1, -1);
      MEMORY[0x266717700](v21, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v51 = v5;
    v39[0] = v46;
    v39[1] = v47;
    v39[2] = v48;
    v39[3] = v49;
    sub_261A54910(v39);
    v13 = *(v2 + 168);
    v14 = *(v13 + 32);
    v15 = *(v13 + 48);
    v16 = *(v13 + 80);
    v43 = *(v13 + 64);
    v44 = v16;
    v41 = v14;
    v42 = v15;
    v40 = *(v13 + 16);
    v36 = v15;
    v37 = v43;
    v38 = v16;
    v34 = v40;
    v35 = v14;
    v33 = 1;
    sub_261A39B98(&v40, v32);
    sub_261A5FE58();
    sub_261A85B54();
    v32[2] = v36;
    v32[3] = v37;
    v32[4] = v38;
    v32[0] = v34;
    v32[1] = v35;
    sub_261A39BF4(v32);
    v31 = *(v13 + 96);
    v30[7] = 2;
    type metadata accessor for EventDictionary();
    sub_261A7E724(&qword_27FECB9C0, 255, type metadata accessor for EventDictionary, byte_261A887F8);
    sub_261A85B54();
    return v51[1](v7, v4);
  }
}

void *sub_261A7A4C4(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 168);
  v6 = *(v5 + 136);
  v23[0] = a1;
  v23[1] = a2;
  v22[2] = v23;

  v7 = sub_261A779E4(sub_261A7E2A8, v22, v6);

  if (v7)
  {
    v8 = *(v2 + 152);
    v9 = (v8 + 32);
    v10 = *(v8 + 16) + 1;
    while (--v10)
    {
      v11 = v9[1];
      v24[0] = *v9;
      v24[1] = v11;
      v12 = v9[2];
      v13 = v9[3];
      v14 = v9[5];
      v24[4] = v9[4];
      v24[5] = v14;
      v24[2] = v12;
      v24[3] = v13;
      if (v24[0] != __PAIR128__(a2, a1))
      {
        v9 += 6;
        if ((sub_261A85BA4() & 1) == 0)
        {
          continue;
        }
      }

      type metadata accessor for CountingMode();
      swift_allocObject();
      sub_261A3DEAC(v24, v23);

      return sub_261A6A790(v24, v5);
    }

    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v16 = sub_261A853D4();
    __swift_project_value_buffer(v16, qword_27FED7C90);

    v17 = v2;
    v18 = sub_261A853B4();
    v19 = sub_261A85744();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_261A3E9E8(*(v17 + 32), *(v17 + 40), v23);
      *(v20 + 12) = 2080;
      *(v20 + 14) = sub_261A3E9E8(a1, a2, v23);
      _os_log_impl(&dword_261A33000, v18, v19, "CounterAnalysis %s failed to create mode named %s, despite being supported", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266717700](v21, -1, -1);
      MEMORY[0x266717700](v20, -1, -1);
    }
  }

  return 0;
}

void *CounterAnalysis.deinit()
{

  return v0;
}

uint64_t CounterAnalysis.__deallocating_deinit()
{
  CounterAnalysis.deinit();

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t sub_261A7A850@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_261A7DDC8(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t CounterAnalysis.hash(into:)(uint64_t a1)
{
  sub_261A85554();

  sub_261A85554();
}

uint64_t CounterAnalysis.hashValue.getter()
{
  sub_261A85C44();
  sub_261A85554();

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7A974()
{
  sub_261A85C44();
  sub_261A85554();

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7A9E4(uint64_t a1)
{
  sub_261A85554();

  sub_261A85554();
}

uint64_t sub_261A7AA4C(uint64_t a1)
{
  sub_261A85C44();
  sub_261A85554();

  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7AAC4@<X0>(void *a1@<X8>)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v3 = sub_261A85394();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v32 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(MEMORY[0x277CCAA00]) init];
  v7 = sub_261A85334();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBEC0, &qword_261A8D320);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_261A87870;
  v9 = *MEMORY[0x277CBE8E8];
  *(v8 + 32) = *MEMORY[0x277CBE8E8];
  type metadata accessor for URLResourceKey();
  v10 = v9;
  v11 = sub_261A856A4();

  v36[0] = 0;
  v12 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v11 options:0 error:v36];

  v13 = v36[0];
  if (!v12)
  {
    v28 = v36[0];
    v29 = sub_261A852F4();

    swift_willThrow();
    result = MEMORY[0x2667175A0](v29);
LABEL_10:
    v17 = MEMORY[0x277D84F90];
    goto LABEL_11;
  }

  v14 = sub_261A856B4();
  v15 = v13;

  v16 = *(v14 + 16);
  if (!v16)
  {

    goto LABEL_10;
  }

  v30[2] = v1;
  v31 = a1;
  v36[0] = MEMORY[0x277D84F90];
  sub_261A3F4C0(0, v16, 0);
  v17 = v36[0];
  v19 = *(v4 + 16);
  v18 = v4 + 16;
  v20 = *(v18 + 64);
  v30[1] = v14;
  v33 = (v20 + 32) & ~v20;
  v34 = v19;
  v21 = v14 + v33;
  v22 = *(v18 + 56);
  v35 = v18;
  v23 = v32;
  do
  {
    v34(v23, v21, v3);
    v36[0] = v17;
    v24 = v3;
    v26 = v17[2];
    v25 = v17[3];
    if (v26 >= v25 >> 1)
    {
      sub_261A3F4C0((v25 > 1), v26 + 1, 1);
      v17 = v36[0];
    }

    v17[2] = v26 + 1;
    (*(v18 + 16))(v17 + v33 + v26 * v22, v23, v24);
    v21 += v22;
    --v16;
    v3 = v24;
  }

  while (v16);

  a1 = v31;
LABEL_11:
  *a1 = v17;
  return result;
}

unint64_t sub_261A7ADE8@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = sub_261A85654();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_261A65AFC(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_261A65AFC((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_261A85634();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_261A85574();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_261A85574();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_261A85654();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_261A65AFC(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_261A85654();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_261A65AFC(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_261A65AFC((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_261A85574();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

void *sub_261A7B1A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB118, &qword_261A8D2D0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

uint64_t sub_261A7B22C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_261A76A3C(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_261A7B298(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_261A7B298(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_261A85B84();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_261A856E4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_261A7B460(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_261A7B390(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_261A7B390(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = sub_261A85BA4(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_261A7B460(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_261A76620(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_261A7BA3C((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = sub_261A85BA4();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = sub_261A85BA4();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_261A65FE8(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_261A65FE8((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
LABEL_128:
          __break(1u);
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
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
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_261A7BA3C((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_261A76620(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_261A76594(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = v9 + a4;
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = sub_261A85BA4(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

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
  return result;
}

uint64_t sub_261A7BA3C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (sub_261A85BA4() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (sub_261A85BA4() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

void *sub_261A7BC64(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_261A7BDD8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4() & 1;
  }
}

uint64_t sub_261A7BE30@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
}

uint64_t _s7Recount15CounterAnalysisC2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = a1[4] == a2[4] && a1[5] == a2[5];
  if (v4 || (v5 = sub_261A85BA4(), result = 0, (v5 & 1) != 0))
  {
    v7 = a1[21];
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = a2[21];
    if (v8 == *(v10 + 32) && v9 == *(v10 + 40))
    {
      return 1;
    }

    else
    {

      return sub_261A85BA4();
    }
  }

  return result;
}

uint64_t sub_261A7BF08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x266716A20](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_261A81300(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_261A7BFA0(char *a1)
{
  v160 = a1;
  v1 = 0;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBEA0, &qword_261A8D2D8);
  v152 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v151 = v139 - v2;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v147 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v144 = v139 - v3;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v143 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v141 = v139 - v4;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v142 = v139 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAEC8, &qword_261A8BFE0);
  MEMORY[0x28223BE20](v6 - 8);
  v163 = v139 - v7;
  v164 = sub_261A85314();
  v157 = *(v164 - 1);
  MEMORY[0x28223BE20](v164);
  v9 = v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261A85394();
  v166 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v162 = (v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v139 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v139 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v161 = v139 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = (v139 - v22);
  v24 = MEMORY[0x28223BE20](v21);
  v26 = v139 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = (v139 - v28);
  MEMORY[0x28223BE20](v27);
  v31 = (v139 - v30);
  v32 = sub_261A85504();
  MEMORY[0x28223BE20](v32 - 8);
  v165 = v10;
  if (v160)
  {

LABEL_15:
    v69 = v159;
    goto LABEL_16;
  }

  v155 = v23;
  v156 = v26;
  v150 = v31;
  v158 = v29;
  v160 = v9;
  v34 = v159;
  v35 = getenv("RECOUNT_ANALYSIS_PATH");
  v148 = v15;
  if (v35)
  {
    sub_261A854F4();
    v36 = sub_261A854E4();
    if (v37)
    {
      v168 = 59;
      v169 = 0xE100000000000000;
      MEMORY[0x28223BE20](v36);
      v139[-2] = &v168;
      v40 = sub_261A7ADE8(0x7FFFFFFFFFFFFFFFLL, 1, sub_261A7E818, &v139[-4], v38, v39, v139);
      v41 = *(v40 + 16);
      if (!v41)
      {

        v33 = MEMORY[0x277D84F90];
        v15 = v148;
        v69 = v34;
LABEL_16:
        v70 = MEMORY[0x277D84F90];
        if (qword_27FECAD60 != -1)
        {
          goto LABEL_65;
        }

        while (1)
        {
          v71 = sub_261A853D4();
          v72 = __swift_project_value_buffer(v71, qword_27FED7C90);

          v150 = v72;
          v73 = sub_261A853B4();
          v74 = sub_261A85734();

          if (os_log_type_enabled(v73, v74))
          {
            LODWORD(v157) = v74;
            v158 = v73;
            v148 = v15;
            v75 = swift_slowAlloc();
            v155 = swift_slowAlloc();
            v170 = v155;
            v156 = v75;
            *v75 = 136446210;
            v76 = *(v33 + 16);
            v77 = MEMORY[0x277D84F90];
            v160 = v33;
            if (v76)
            {
              v140 = v18;
              v149 = v1;
              v168 = MEMORY[0x277D84F90];
              sub_261A3EFB0(0, v76, 0);
              v77 = v168;
              v78 = *(v166 + 16);
              v79 = v33 + ((*(v166 + 80) + 32) & ~*(v166 + 80));
              v163 = *(v166 + 72);
              v164 = v78;
              v80 = (v166 + 8);
              do
              {
                v81 = v161;
                v164(v161, v79, v10);
                v82 = sub_261A85364();
                v84 = v83;
                (*v80)(v81, v10);
                v168 = v77;
                v86 = *(v77 + 16);
                v85 = *(v77 + 24);
                if (v86 >= v85 >> 1)
                {
                  sub_261A3EFB0((v85 > 1), v86 + 1, 1);
                  v77 = v168;
                }

                *(v77 + 16) = v86 + 1;
                v87 = v77 + 16 * v86;
                *(v87 + 32) = v82;
                *(v87 + 40) = v84;
                v79 += v163;
                --v76;
                v10 = v165;
              }

              while (v76);
              v1 = v149;
              v18 = v140;
              v69 = v159;
            }

            v167 = v77;
            v88 = v143;
            v89 = v141;
            (*(v143 + 104))(v141, *MEMORY[0x277CC8AF0], v154);
            v90 = v147;
            v91 = v144;
            (*(v147 + 104))(v144, *MEMORY[0x277CC8B10], v69);
            v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
            v164 = sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83970]);
            v92 = v142;
            sub_261A85154();
            (*(v90 + 8))(v91, v159);
            (*(v88 + 8))(v89, v154);
            sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20, MEMORY[0x277CC8B28]);
            v93 = v146;
            sub_261A85674();
            (*(v145 + 8))(v92, v93);

            v94 = sub_261A3E9E8(v168, v169, &v170);

            v95 = v156;
            *(v156 + 4) = v94;
            v96 = v158;
            _os_log_impl(&dword_261A33000, v158, v157, "searching in %{public}s for CounterAnalysis specifications", v95, 0xCu);
            v97 = v155;
            __swift_destroy_boxed_opaque_existential_1(v155);
            MEMORY[0x266717700](v97, -1, -1);
            MEMORY[0x266717700](v95, -1, -1);

            v15 = v148;
            v33 = v160;
            v70 = MEMORY[0x277D84F90];
          }

          else
          {
          }

          v168 = v70;
          v69 = *(v33 + 16);
          if (v69)
          {
            v70 = 0;
            v51 = (v166 + 8);
            while (v70 < *(v33 + 16))
            {
              (*(v166 + 16))(v18, v33 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v70, v10);
              sub_261A7AAC4(&v170);
              if (v1)
              {
                goto LABEL_68;
              }

              ++v70;
              (*v51)(v18, v10);
              sub_261A7FB04(v170);
              if (v69 == v70)
              {
                goto LABEL_31;
              }
            }

            __break(1u);
          }

          else
          {
LABEL_31:

            v98 = v168;
            v170 = MEMORY[0x277D84FA0];
            v160 = *(v168 + 16);
            if (!v160)
            {

              v70 = MEMORY[0x277D84F90];
LABEL_52:

              v113 = sub_261A853B4();
              v114 = sub_261A85734();
              if (os_log_type_enabled(v113, v114))
              {
                v115 = swift_slowAlloc();
                v116 = swift_slowAlloc();
                v117 = v116;
                v168 = v116;
                *v115 = 136446210;
                v118 = *(v70 + 16);
                v119 = MEMORY[0x277D84F90];
                if (v118)
                {
                  v158 = v116;
                  LODWORD(v159) = v114;
                  v160 = v115;
                  v162 = v113;
                  v167 = MEMORY[0x277D84F90];
                  sub_261A3EFB0(0, v118, 0);
                  v119 = v167;
                  v120 = v166 + 16;
                  v166 = *(v166 + 16);
                  v121 = v70 + ((*(v120 + 64) + 32) & ~*(v120 + 64));
                  v163 = *(v120 + 56);
                  v164 = v70;
                  v122 = (v120 - 8);
                  do
                  {
                    v123 = v161;
                    v124 = v165;
                    (v166)(v161, v121, v165);
                    v125 = sub_261A85364();
                    v127 = v126;
                    (*v122)(v123, v124);
                    v167 = v119;
                    v129 = *(v119 + 16);
                    v128 = *(v119 + 24);
                    if (v129 >= v128 >> 1)
                    {
                      sub_261A3EFB0((v128 > 1), v129 + 1, 1);
                      v119 = v167;
                    }

                    *(v119 + 16) = v129 + 1;
                    v130 = v119 + 16 * v129;
                    *(v130 + 32) = v125;
                    *(v130 + 40) = v127;
                    v121 += v163;
                    --v118;
                  }

                  while (v118);
                  v70 = v164;
                  v113 = v162;
                  v115 = v160;
                  LOBYTE(v114) = v159;
                  v117 = v158;
                }

                v131 = MEMORY[0x2667169D0](v119, MEMORY[0x277D837D0]);
                v133 = v132;

                v134 = sub_261A3E9E8(v131, v133, &v168);

                *(v115 + 4) = v134;

                _os_log_impl(&dword_261A33000, v113, v114, "discovered specifications: %{public}s", v115, 0xCu);
                __swift_destroy_boxed_opaque_existential_1(v117);
                MEMORY[0x266717700](v117, -1, -1);
                MEMORY[0x266717700](v115, -1, -1);
              }

              else
              {
              }

              v168 = v70;
              swift_getKeyPath();
              v135 = v151;
              sub_261A85284();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBEA8, &qword_261A8D318);
              sub_261A3BF78(&qword_27FECBEB0, &qword_27FECBEA8, &qword_261A8D318, MEMORY[0x277D83970]);
              sub_261A3BF78(&qword_27FECBEB8, &qword_27FECBEA0, &qword_261A8D2D8, MEMORY[0x277CC8C98]);
              v136 = v153;
              v137 = sub_261A85664();
              (*(v152 + 8))(v135, v136);

              return v137;
            }

            v149 = v1;
            v33 = 0;
            v156 = (*(v166 + 80) + 32) & ~*(v166 + 80);
            v158 = (v168 + v156);
            v163 = v166 + 16;
            v157 = (v166 + 8);
            v155 = (v166 + 32);
            v70 = MEMORY[0x277D84F90];
            v159 = v168;
            while (v33 < *(v98 + 16))
            {
              v164 = v70;
              v99 = *(v166 + 72);
              v100 = *(v166 + 16);
              v100(v15, v158 + v99 * v33, v10);
              v101 = v170;
              v1 = v15;
              v102 = sub_261A85324();
              v18 = v103;
              if (v101[2] && (v104 = v102, sub_261A85C44(), sub_261A85554(), v105 = sub_261A85C84(), v106 = -1 << *(v101 + 32), v107 = v105 & ~v106, ((*(v101 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v107) & 1) != 0))
              {
                v69 = ~v106;
                while (1)
                {
                  v108 = (v101[6] + 16 * v107);
                  v109 = *v108 == v104 && v108[1] == v18;
                  if (v109 || (sub_261A85BA4() & 1) != 0)
                  {
                    break;
                  }

                  v107 = (v107 + 1) & v69;
                  if (((*(v101 + ((v107 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v107) & 1) == 0)
                  {
                    goto LABEL_45;
                  }
                }

                v15 = v1;
                v10 = v165;
                (*v157)(v1, v165);

                v70 = v164;
              }

              else
              {
LABEL_45:

                v15 = v1;
                v110 = sub_261A85324();
                sub_261A81300(&v168, v110, v111);

                v10 = v165;
                v100(v162, v1, v165);
                v70 = v164;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v70 = sub_261A676B8(0, *(v70 + 16) + 1, 1, v70);
                }

                v69 = *(v70 + 16);
                v112 = *(v70 + 24);
                if (v69 >= v112 >> 1)
                {
                  v70 = sub_261A676B8((v112 > 1), v69 + 1, 1, v70);
                }

                (*v157)(v1, v10);
                *(v70 + 16) = v69 + 1;
                (*v155)(v70 + v156 + v69 * v99, v162, v10);
              }

              ++v33;
              v98 = v159;
              if (v33 == v160)
              {

                goto LABEL_52;
              }
            }
          }

          __break(1u);
LABEL_65:
          swift_once();
        }
      }

      v140 = v18;
      v149 = 0;
      v168 = MEMORY[0x277D84F90];
      sub_261A3F4C0(0, v41, 0);
      v33 = v168;
      LODWORD(v158) = *MEMORY[0x277CC91E8];
      v157 += 13;
      v156 = v166 + 56;
      v155 = (v166 + 32);
      v139[1] = v40;
      v42 = (v40 + 56);
      v43 = v150;
      do
      {
        v44 = *(v42 - 3);
        v45 = *(v42 - 2);
        v47 = *(v42 - 1);
        v46 = *v42;

        MEMORY[0x266716840](v44, v45, v47, v46);
        (*v157)(v160, v158, v164);
        (*v156)(v163, 1, 1, v10);
        sub_261A85374();

        v168 = v33;
        v49 = *(v33 + 16);
        v48 = *(v33 + 24);
        if (v49 >= v48 >> 1)
        {
          sub_261A3F4C0((v48 > 1), v49 + 1, 1);
          v33 = v168;
        }

        *(v33 + 16) = v49 + 1;
        (*(v166 + 32))(v33 + ((*(v166 + 80) + 32) & ~*(v166 + 80)) + *(v166 + 72) * v49, v43, v10);
        v42 += 4;
        --v41;
      }

      while (v41);

      goto LABEL_14;
    }
  }

  v149 = 0;
  v50 = sub_261A85494();
  v51 = [objc_opt_self() bundleWithIdentifier_];

  if (v51)
  {
    v140 = v18;
    v150 = v51;
    v52 = [v51 resourceURL];
    v51 = v164;
    v53 = v160;
    v1 = v157;
    v54 = v156;
    v18 = v155;
    if (v52)
    {
      v55 = v52;
      sub_261A85354();

      v168 = 0x736973796C616E41;
      v169 = 0xE800000000000000;
      v56 = *MEMORY[0x277CC91C0];
      v57 = *(v1 + 13);
      v57(v53, v56, v51);
      sub_261A4E05C();
      sub_261A85384();
      (*(v1 + 1))(v53, v51);
      v58 = v166;
      v59 = v54;
      v60 = *(v166 + 8);
      v61 = v18;
      v62 = v165;
      v60(v61, v165);
      sub_261A85304();
      v60(v59, v62);
      v57(v53, v56, v51);
      v10 = v62;
      (*(v58 + 56))(v163, 1, 1, v62);
      v63 = v161;
      sub_261A85374();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB120, &qword_261A8D2E0);
      v64 = *(v58 + 72);
      v65 = (*(v58 + 80) + 32) & ~*(v58 + 80);
      v66 = swift_allocObject();
      *(v66 + 16) = xmmword_261A8CE90;
      v67 = v66 + v65;
      v68 = v158;
      (*(v58 + 16))(v67, v158, v62);
      (*(v58 + 32))(v67 + v64, v63, v62);

      v60(v68, v62);
      v33 = v66;
LABEL_14:
      v1 = v149;
      v15 = v148;
      v18 = v140;
      goto LABEL_15;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_68:
  MEMORY[0x2667175A0](v1);
  (*v51)(v18, v10);

  __break(1u);
  return result;
}

unint64_t sub_261A7D514()
{
  result = qword_27FECBE50;
  if (!qword_27FECBE50)
  {
    result = swift_getWitnessTable(a9_4, &type metadata for CounterAnalysisError, v0, v1);
    atomic_store(result, &qword_27FECBE50);
  }

  return result;
}

uint64_t sub_261A7D568(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, int a4, void *a5)
{
  v7 = a1 + 64;
  v8 = -1 << *(a1 + 32);
  if (-v8 < 64)
  {
    v9 = ~(-1 << -v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 64);
  v11 = (63 - v8) >> 6;

  v12 = 0;
  v39 = a5;
  v40 = v7;
  v38 = v11;
  while (v10)
  {
    v47 = a4;
    v14 = v12;
LABEL_14:
    v16 = __clz(__rbit64(v10)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    a2(&v43, v46);

    v21 = v43;
    v20 = v44;
    v22 = v45;
    v23 = *a5;
    v25 = sub_261A5BD84(v43, v44);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      goto LABEL_25;
    }

    v29 = v24;
    if (*(v23 + 24) >= v28)
    {
      if ((v47 & 1) == 0)
      {
        sub_261A750B0();
      }
    }

    else
    {
      sub_261A75A68(v28, v47 & 1);
      v30 = sub_261A5BD84(v21, v20);
      if ((v29 & 1) != (v31 & 1))
      {
        goto LABEL_27;
      }

      v25 = v30;
    }

    v10 &= v10 - 1;
    v32 = *a5;
    if (v29)
    {
      v13 = *(v32[7] + 8 * v25);

      *(v32[7] + 8 * v25) = v13;
    }

    else
    {
      v32[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v32[6] + 16 * v25);
      *v33 = v21;
      v33[1] = v20;
      *(v32[7] + 8 * v25) = v22;
      v34 = v32[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_26;
      }

      v32[2] = v36;
    }

    a4 = 1;
    v12 = v14;
    a5 = v39;
    v7 = v40;
    v11 = v38;
  }

  v15 = v12;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      sub_261A70290(a1);
    }

    v10 = *(v7 + 8 * v14);
    ++v15;
    if (v10)
    {
      v47 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_261A85BE4();
  __break(1u);
  return result;
}

uint64_t sub_261A7D80C(char *a1, __int128 *a2)
{
  v48 = sub_261A85394();
  v5 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261A85174();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2[3];
  v58 = a2[2];
  v59 = v11;
  v60 = a2[4];
  v12 = a2[1];
  v56 = *a2;
  v57 = v12;
  v13 = sub_261A853A4();
  if (v2)
  {
    v15 = v48;
    v22 = v47;
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v23 = sub_261A853D4();
    v21 = __swift_project_value_buffer(v23, qword_27FED7C90);
    (*(v5 + 16))(v22, a1, v15);
    sub_261A39B98(&v56, &v50);
    v24 = v2;
    v25 = sub_261A853B4();
    v26 = sub_261A85744();
    sub_261A39BF4(&v56);
    MEMORY[0x2667175A0](v2);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v46 = a1;
      v28 = v27;
      v45 = swift_slowAlloc();
      *&v50 = v45;
      *v28 = 136446722;
      v29 = sub_261A85364();
      v31 = v30;
      v32 = v22;
      v33 = *(v5 + 8);
      v33(v32, v48);
      v34 = sub_261A3E9E8(v29, v31, &v50);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2082;
      v36 = *(&v57 + 1);
      v35 = v57;

      sub_261A39BF4(&v56);
      v37 = sub_261A3E9E8(v35, v36, &v50);

      *(v28 + 14) = v37;
      *(v28 + 22) = 2082;
      swift_getErrorValue();
      v38 = sub_261A85BF4();
      v40 = sub_261A3E9E8(v38, v39, &v50);

      *(v28 + 24) = v40;
      v15 = v48;
      _os_log_impl(&dword_261A33000, v25, v26, "failed to decode CounterAnalysis from URL %{public}s for %{public}s: %{public}s", v28, 0x20u);
      v21 = v45;
      swift_arrayDestroy();
      MEMORY[0x266717700](v21, -1, -1);
      v41 = v28;
      a1 = v46;
      MEMORY[0x266717700](v41, -1, -1);
    }

    else
    {
      sub_261A39BF4(&v56);

      v42 = v22;
      v33 = *(v5 + 8);
      v33(v42, v15);
    }

    swift_willThrow();
    v33(a1, v15);
  }

  else
  {
    v16 = v14;
    v45 = v5;
    v46 = a1;
    v17 = v13;
    sub_261A851B4();
    swift_allocObject();
    sub_261A851A4();
    (*(v8 + 104))(v10, *MEMORY[0x277CC86A8], v7);
    sub_261A85184();
    sub_261A85164();
    sub_261A7E6D0();
    sub_261A85194();
    v55[0] = v50;
    v55[1] = v51;
    v55[2] = v52;
    v55[3] = v53;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v50 = v56;
    v51 = v57;
    sub_261A39B98(&v56, v49);
    v18 = sub_261A4D704(&v50);
    v19 = v48;
    v20 = v18;
    v52 = v58;
    v53 = v59;
    v54 = v60;
    v50 = v56;
    v51 = v57;
    type metadata accessor for CounterAnalysis();
    v21 = swift_allocObject();
    sub_261A39B98(&v56, v49);
    sub_261A78B30(v55, &v50, v20);
    (*(v45 + 8))(v46, v19);
    sub_261A39BF4(&v56);

    sub_261A47728(v17, v16);
  }

  return v21;
}

uint64_t sub_261A7DDC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBE90, &qword_261A8D2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v19 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_261A7E200();
  sub_261A85CB4();
  if (v1)
  {
    if (qword_27FECAD60 != -1)
    {
      swift_once();
    }

    v8 = sub_261A853D4();
    v18 = __swift_project_value_buffer(v8, qword_27FED7C90);
    v9 = v1;
    v10 = sub_261A853B4();
    v11 = sub_261A85744();
    MEMORY[0x2667175A0](v1);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *&v21 = v13;
      *v12 = 136446210;
      swift_getErrorValue();
      v14 = sub_261A85BF4();
      v18 = v15;
      v16 = sub_261A3E9E8(v14, v15, &v21);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_261A33000, v10, v11, "failed to decode CounterAnalysis: %{public}s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x266717700](v13, -1, -1);
      MEMORY[0x266717700](v12, -1, -1);
    }

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v19[0]) = 0;
    sub_261A7E6D0();
    sub_261A85A94();
    v26[0] = v21;
    v26[1] = v22;
    v26[2] = v23;
    v26[3] = v24;
    type metadata accessor for EventDictionary();
    LOBYTE(v19[0]) = 2;
    sub_261A7E724(&qword_27FECBA00, 255, type metadata accessor for EventDictionary, a9_5);
    sub_261A85A94();
    v7 = v21;
    v20 = 1;
    sub_261A5FFB0();
    sub_261A85A94();
    v19[2] = v23;
    v19[3] = v24;
    v19[4] = v25;
    v19[0] = v21;
    v19[1] = v22;
    type metadata accessor for CounterAnalysis();
    v18 = swift_allocObject();
    sub_261A78B30(v26, v19, v7);
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v18;
}

unint64_t sub_261A7E200()
{
  result = qword_27FECBE60;
  if (!qword_27FECBE60)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CounterAnalysis.CodingKeys, &type metadata for CounterAnalysis.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE60);
  }

  return result;
}

unint64_t sub_261A7E254()
{
  result = qword_27FECBE68;
  if (!qword_27FECBE68)
  {
    result = swift_getWitnessTable("\r\n{ ", &type metadata for CounterAnalysisSpec, v0, v1);
    atomic_store(result, &qword_27FECBE68);
  }

  return result;
}

unint64_t sub_261A7E2C8()
{
  result = qword_27FECBE70;
  if (!qword_27FECBE70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CounterAnalysis.CodingKeys, &type metadata for CounterAnalysis.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE70);
  }

  return result;
}

unint64_t sub_261A7E320()
{
  result = qword_27FECBE78;
  if (!qword_27FECBE78)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CounterAnalysis.CodingKeys, &type metadata for CounterAnalysis.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE78);
  }

  return result;
}

unint64_t sub_261A7E378()
{
  result = qword_27FECBE80;
  if (!qword_27FECBE80)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for CounterAnalysis.CodingKeys, &type metadata for CounterAnalysis.CodingKeys, v0, v1);
    atomic_store(result, &qword_27FECBE80);
  }

  return result;
}

uint64_t sub_261A7E5A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 96))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 60);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 30;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

double sub_261A7E5F8(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 88) = 0;
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 96) = 1;
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
      result = 0.0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      HIDWORD(v4) = -a2;
      LODWORD(v4) = -a2;
      *a1 = 0u;
      *(a1 + 48) = 0;
      *(a1 + 56) = (v4 >> 2) << 32;
      *(a1 + 64) = 0u;
      *(a1 + 80) = 0u;
      return result;
    }

    *(a1 + 96) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_261A7E6D0()
{
  result = qword_27FECBE98;
  if (!qword_27FECBE98)
  {
    result = swift_getWitnessTable(aE_2, &type metadata for CounterAnalysisSpec, v0, v1);
    atomic_store(result, &qword_27FECBE98);
  }

  return result;
}

uint64_t sub_261A7E724(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261A7E76C@<X0>(uint64_t *a2@<X8>)
{
  result = sub_261A85324();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_261A7E798(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_261A85BA4() & 1;
  }
}

unint64_t sub_261A7E834()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB018, &unk_261A87D10);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v38 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB020, &qword_261A87880);
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB028, &unk_261A87D20);
  v7 = MEMORY[0x28223BE20](v6);
  v46 = &v38 - v8;
  v9 = *v0;
  v10 = *(v0 + 8);
  v11 = v0[2];
  v12 = *(v11 + 16);
  v13 = MEMORY[0x277D84F90];
  v48 = v14;
  v49 = v7;
  if (v12)
  {
    v39 = v9;
    v40 = v10;
    v41 = v4;
    v42 = v2;
    v43 = v1;
    v54 = MEMORY[0x277D84F90];
    sub_261A3EFB0(0, v12, 0);
    v13 = v54;
    v15 = (v11 + 32);
    v50 = xmmword_261A87870;
    v16 = MEMORY[0x277D839F8];
    v17 = MEMORY[0x277D83A80];
    do
    {
      v18 = *v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECB030, &qword_261A88860);
      v19 = swift_allocObject();
      *(v19 + 16) = v50;
      *(v19 + 56) = v16;
      *(v19 + 64) = v17;
      *(v19 + 32) = v18;
      v20 = sub_261A854D4();
      v22 = v21;
      v54 = v13;
      v24 = *(v13 + 16);
      v23 = *(v13 + 24);
      if (v24 >= v23 >> 1)
      {
        sub_261A3EFB0((v23 > 1), v24 + 1, 1);
        v13 = v54;
      }

      *(v13 + 16) = v24 + 1;
      v25 = v13 + 16 * v24;
      *(v25 + 32) = v20;
      *(v25 + 40) = v22;
      ++v15;
      --v12;
    }

    while (v12);
    v2 = v42;
    v1 = v43;
    v4 = v41;
    v10 = v40;
    v9 = v39;
  }

  v54 = 0;
  v55 = 0xE000000000000000;
  sub_261A858C4();

  v54 = 0xD000000000000012;
  v55 = 0x8000000261A8EEC0;
  v52 = v9;
  v26 = sub_261A85B94();
  MEMORY[0x2667168A0](v26);

  MEMORY[0x2667168A0](544108320, 0xE400000000000000);
  v27 = 0xEA00000000007963;
  v28 = 0x6E65696369666645;
  if (v10 != 1)
  {
    v28 = 0x616D726F66726550;
    v27 = 0xEB0000000065636ELL;
  }

  if (v10)
  {
    v29 = v28;
  }

  else
  {
    v29 = 0x647261646E617453;
  }

  if (v10)
  {
    v30 = v27;
  }

  else
  {
    v30 = 0xE800000000000000;
  }

  MEMORY[0x2667168A0](v29, v30);

  MEMORY[0x2667168A0](0x920666F20, 0xE500000000000000);
  v51 = v13;
  v32 = v44;
  v31 = v45;
  v33 = v47;
  (*(v45 + 104))(v44, *MEMORY[0x277CC8AF0], v47);
  (*(v2 + 104))(v4, *MEMORY[0x277CC8B10], v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECAF58, &qword_261A87428);
  sub_261A3BF78(&qword_27FECB038, &qword_27FECAF58, &qword_261A87428, MEMORY[0x277D83970]);
  v34 = v2;
  v35 = v46;
  sub_261A85154();
  (*(v34 + 8))(v4, v1);
  (*(v31 + 8))(v32, v33);
  sub_261A3BF78(&qword_27FECB040, &qword_27FECB028, &unk_261A87D20, MEMORY[0x277CC8B28]);
  v36 = v49;
  sub_261A85674();
  (*(v48 + 8))(v35, v36);

  MEMORY[0x2667168A0](v52, v53);

  return v54;
}

uint64_t CounterSample.init(time:cpuKind:counterValues:)@<X0>(uint64_t result@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *a2;
  *a4 = result;
  *(a4 + 8) = v4;
  *(a4 + 16) = a3;
  return result;
}

uint64_t - infix(_:_:)@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result - *a2;
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    v5 = a2[2];
    v6 = *(result + 16);
    v7 = *(result + 8);

    v8 = sub_261A7EE80(v6, v5);

    *a3 = v4;
    *(a3 + 8) = v7;
    *(a3 + 16) = v8;
  }

  return result;
}

uint64_t sub_261A7EE80(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v27 = MEMORY[0x277D84F90];
  sub_261A3F3C0(0, v6, 0);
  result = v27;
  v26 = v4;
  v24 = a1;
  v25 = a2;
  if (v6)
  {
    v8 = (a1 + 32);
    v9 = (a2 + 32);
    v10 = v6;
    v11 = v5;
    v12 = v5;
    while (v4)
    {
      if (!v11)
      {
        goto LABEL_23;
      }

      v13 = *v8;
      v14 = *v9;
      v28 = result;
      v16 = *(result + 16);
      v15 = *(result + 24);
      if (v16 >= v15 >> 1)
      {
        v23 = v12;
        sub_261A3F3C0((v15 > 1), v16 + 1, 1);
        v12 = v23;
        result = v28;
      }

      --v11;
      *(result + 16) = v16 + 1;
      *(result + 8 * v16 + 32) = v13 - v14;
      --v4;
      ++v9;
      ++v8;
      if (!--v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = v5;
LABEL_13:
  if (v26 > v12)
  {
    while (v6 < v26)
    {
      v17 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_25;
      }

      if (v12 != v6)
      {
        if (v6 >= v12)
        {
          goto LABEL_26;
        }

        v18 = *(v24 + 32 + 8 * v6);
        v19 = *(v25 + 32 + 8 * v6);
        v29 = result;
        v21 = *(result + 16);
        v20 = *(result + 24);
        if (v21 >= v20 >> 1)
        {
          v22 = v12;
          sub_261A3F3C0((v20 > 1), v21 + 1, 1);
          v12 = v22;
          result = v29;
        }

        *(result + 16) = v21 + 1;
        *(result + 8 * v21 + 32) = v18 - v19;
        ++v6;
        if (v17 != v26)
        {
          continue;
        }
      }

      return result;
    }

LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_261A7F07C(unsigned __int8 a1)
{
  sub_261A85C44();
  sub_261A85554();

  return sub_261A85C84();
}

uint64_t sub_261A7F15C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_261A81300(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void *sub_261A7F260(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_261A65C08(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FECBCB8, &qword_261A8BFC8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}