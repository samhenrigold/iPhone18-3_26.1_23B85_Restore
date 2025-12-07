id sub_1ABB4DA60(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v5 = sub_1ABF23BD4();
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 initWithLabel:v5 value:a3];

  return v6;
}

uint64_t sub_1ABB4DAD0()
{
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DB0C()
{
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DB5C()
{
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DBC0(uint64_t *a1, uint64_t *a2)
{
  sub_1ABAD219C(a1, a2);
  swift_arrayDestroy();
  sub_1ABA8FE90();

  return swift_deallocClassInstance();
}

uint64_t sub_1ABB4DFB0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result)
  {
    result = a1(result, *(v3 + 16) + 1, 1, v3);
    *v1 = result;
  }

  return result;
}

uint64_t sub_1ABB4E3B4(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

void (*sub_1ABB4E8DC(void *a1, uint64_t a2, uint64_t a3))(id *a1)
{
  v6 = sub_1ABA7C9A4(a3);
  sub_1ABAAB7C0(a2, v6, a3);
  if (v6)
  {
    v7 = *(a3 + 8 * a2 + 32);
  }

  else
  {
    v7 = MEMORY[0x1AC5AA170](a2, a3);
  }

  *a1 = v7;
  return sub_1ABB4F408;
}

uint64_t sub_1ABB4E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v5, v6, v7);
  if (v4)
  {
  }

  else
  {
    v10 = sub_1ABA7ECFC();
    v8 = MEMORY[0x1AC5AA170](v10);
  }

  *v3 = v8;
  return sub_1ABAA14BC();
}

uint64_t sub_1ABB4E9CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v5, v6, v7);
  if (v4)
  {
  }

  else
  {
    v10 = sub_1ABA7ECFC();
    v8 = MEMORY[0x1AC5AA170](v10);
  }

  *v3 = v8;
  return sub_1ABAA14BC();
}

uint64_t sub_1ABB4EA38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v12 = sub_1ABA7ECFC();
    v10 = MEMORY[0x1AC5AA170](v12);
  }

  *v3 = v10;
  return sub_1ABAA14BC();
}

uint64_t sub_1ABB4EA9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_1ABA7BEBC(a1, a2, a3);
  sub_1ABAAB7C0(v7, v8, v9);
  if (v6)
  {
    v10 = *(v4 + 8 * v5 + 32);
  }

  else
  {
    v12 = sub_1ABA7ECFC();
    v10 = MEMORY[0x1AC5AA170](v12);
  }

  *v3 = v10;
  return sub_1ABAA14BC();
}

id sub_1ABB4EB08(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1ABF23BD4();

  v7 = [a4 URLForResource:a1 withExtension:v6];

  return v7;
}

unint64_t sub_1ABB4EB7C()
{
  result = qword_1EB4D32B0;
  if (!qword_1EB4D32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D32B0);
  }

  return result;
}

void sub_1ABB4EBD0(uint64_t a1, void *a2)
{
  sub_1ABAFF390(0, &qword_1ED86B920, 0x1E696AD98);
  v3 = sub_1ABF240C4();

  [a2 setIncludedDetectionTypes_];
}

void sub_1ABB4EC5C()
{
  sub_1ABA83F90();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      MEMORY[0x1AC5AA8D0](v3);
      --v0;
    }

    while (v0);
  }
}

void sub_1ABB4EC9C()
{
  sub_1ABA83F90();
  if (v0)
  {
    v2 = (v1 + 56);
    do
    {
      v3 = *(v2 - 1);
      v4 = *v2;

      sub_1ABF23D34();
      MEMORY[0x1AC5AA8D0](v3 >> 14);
      MEMORY[0x1AC5AA8D0](v4 >> 14);

      v2 += 4;
      --v0;
    }

    while (v0);
  }
}

void sub_1ABB4ED20()
{
  sub_1ABA83F90();
  if (v0)
  {
    v2 = v1 + 56;
    do
    {
      v2 += 40;

      sub_1ABF23D34();

      --v0;
    }

    while (v0);
  }
}

void sub_1ABB4ED98()
{
  sub_1ABA83F90();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      sub_1ABF23D34();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

unint64_t sub_1ABB4EE04()
{
  result = qword_1EB4D3360;
  if (!qword_1EB4D3360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3360);
  }

  return result;
}

__n128 sub_1ABB4EE58(uint64_t a1, uint64_t a2)
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

uint64_t sub_1ABB4EE74(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 40);
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

uint64_t sub_1ABB4EEB4(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

uint64_t sub_1ABB4EF10(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1ABB4EF50(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1ABB4EFA0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1ABA7BBB0();
  v4 = sub_1ABA7D000();
  v5(v4);
  return a2;
}

uint64_t sub_1ABB4EFFC(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1ABA7BBB0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1ABB4F054(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1AC5AA8A0](v4);
  v17 = v4;
  if (v4)
  {
    v6 = 0;
    v16 = a2 + 32;
    do
    {
      v7 = v16 + 88 * v6;
      v8 = *(v7 + 16);
      v9 = *(v7 + 40);
      v10 = *(v7 + 56);
      v11 = *(v7 + 72);
      v12 = *(v7 + 80);

      sub_1ABF23D34();
      if (v8 == 0.0)
      {
        v13 = 0.0;
      }

      else
      {
        v13 = v8;
      }

      MEMORY[0x1AC5AA8D0](*&v13);
      sub_1ABF23D34();
      if (v9)
      {
        sub_1ABF25254();
        v14 = *(v9 + 16);
        MEMORY[0x1AC5AA8A0](v14);
        if (v14)
        {
          v15 = v9 + 40;
          do
          {

            sub_1ABF23D34();

            v15 += 16;
            --v14;
          }

          while (v14);
        }

        if (v10)
        {
LABEL_11:
          sub_1ABF25254();
          sub_1ABF23D34();
          if (!v11)
          {
            goto LABEL_15;
          }

          goto LABEL_12;
        }
      }

      else
      {
        sub_1ABF25254();
        if (v10)
        {
          goto LABEL_11;
        }
      }

      sub_1ABF25254();
      if (!v11)
      {
LABEL_15:
        sub_1ABF25254();
        goto LABEL_16;
      }

LABEL_12:
      sub_1ABF25254();
      sub_1ABF23D34();
LABEL_16:
      ++v6;
      sub_1ABB4F054(a1, v12);
    }

    while (v6 != v17);
  }

  return result;
}

uint64_t sub_1ABB4F304(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1ABF21814();
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB4F344(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D33C0, &qword_1ABF3C168);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB4F3B4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    sub_1ABA89740();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1ABB4F508(uint64_t a1, uint64_t a2)
{
  v2 = sub_1ABF24D84();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1ABB4F55C(char a1)
{
  if (a1)
  {
    return 0x7241746E65746E69;
  }

  else
  {
    return 0x79676F6C6F746E6FLL;
  }
}

uint64_t sub_1ABB4F5BC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1ABB4F508(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1ABB4F5EC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1ABB4F55C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1ABB4F618()
{
  sub_1ABAD219C(&qword_1EB4D3410, &qword_1ABF3C1F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1ABF34060;
  *(inited + 32) = 0;
  *(inited + 64) = &type metadata for OntologyContextGenerator;
  *(inited + 72) = &off_1F20806B8;
  *(inited + 80) = 1;
  *(inited + 112) = &type metadata for IntentArgContextGenerator;
  *(inited + 120) = &off_1F20801F0;
  sub_1ABAD219C(&qword_1EB4D3418, qword_1ABF3C200);
  sub_1ABB5086C();
  result = sub_1ABF239C4();
  off_1EB4D3400 = result;
  return result;
}

uint64_t *sub_1ABB4F6D8(uint64_t a1)
{
  v3 = v2;
  v4 = *(a1 + 16);
  v105 = *a1;
  v106 = v4;
  v5 = *(a1 + 32);
  v6 = *(a1 + 56);
  v103 = *(a1 + 40);
  v104 = v6;
  v79 = *v1;
  v84 = a1;
  v86 = v1[1];
  v107 = MEMORY[0x1E69E7CD0];
  v102 = MEMORY[0x1E69E7CD0];
  if (v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = &qword_1EB4D0000;
  v80 = *(v7 + 16);
  v87 = v5;
  if (!v80)
  {
    v83 = v3;

    v39 = MEMORY[0x1E69E7CD0];
LABEL_26:
    v40 = v79 + 56;
    sub_1ABA7D2A8();
    v43 = v42 & v41;
    v45 = (v44 + 63) >> 6;
    v92 = v39 + 56;

    v46 = 0;
    v89 = v79 + 56;
    v85 = v45;
    if (!v43)
    {
      goto LABEL_27;
    }

    do
    {
LABEL_31:
      v48 = __clz(__rbit64(v43));
      v43 &= v43 - 1;
      v49 = *(*(v79 + 48) + (v48 | (v46 << 6)));
      HIDWORD(v90) = v49;
      if (*(v39 + 16) && ((sub_1ABF25234(), !v49) ? (v50 = 0x79676F6C6F746E6FLL) : (v50 = 0x7241746E65746E69), !v49 ? (v51 = 0xE800000000000000) : (v51 = 0xE900000000000067), sub_1ABF23D34(), , v52 = sub_1ABF25294(), v53 = -1 << *(v39 + 32), v54 = v52 & ~v53, ((*(v92 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) != 0))
      {
        v55 = ~v53;
        while (1)
        {
          v56 = *(*(v39 + 48) + v54) ? 0x7241746E65746E69 : 0x79676F6C6F746E6FLL;
          v57 = *(*(v39 + 48) + v54) ? 0xE900000000000067 : 0xE800000000000000;
          if (v56 == v50 && v57 == v51)
          {
            break;
          }

          v59 = sub_1ABF25054();

          if (v59)
          {
            goto LABEL_59;
          }

          v54 = (v54 + 1) & v55;
          if (((*(v92 + ((v54 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v54) & 1) == 0)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
LABEL_52:
        if (qword_1EB4D0268 != -1)
        {
          sub_1ABA8F0B8();
          swift_once();
        }

        if (*(off_1EB4D3400 + 2))
        {
          v60 = sub_1ABAF8714(SBYTE4(v90));
          if (v61)
          {
            v68 = v39;
            sub_1ABA807D8(v60, v61, v62, v63, v64, v65, v66, v67, v79, v80, v81, v83, v85, v86, v87, v89, v90, v92);
            sub_1ABA946C0(&v93, v99);
            v69 = v100;
            v70 = v101;
            sub_1ABA93E20(v99, v100);
            v98 = v86;
            v93 = v105;
            v94 = v106;
            v95 = v87;
            v96 = v103;
            v97 = v104;
            v71 = *(v70 + 8);

            v72 = v71(&v98, &v93, v69, v70);
            if (v83)
            {
              goto LABEL_67;
            }

            v73 = v72;

            sub_1ABB7ECC8(v73);
            sub_1ABA84B54(v99);
            v39 = v68;
          }
        }
      }

LABEL_59:
      v40 = v89;
      v45 = v85;
    }

    while (v43);
    while (1)
    {
LABEL_27:
      v47 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        __break(1u);
        goto LABEL_69;
      }

      if (v47 >= v45)
      {
        break;
      }

      v43 = *(v40 + 8 * v47);
      ++v46;
      if (v43)
      {
        v46 = v47;
        goto LABEL_31;
      }
    }

    v34 = sub_1ABB455B8(v107);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_70;
    }

    goto LABEL_62;
  }

  v82 = v7 + 32;

  v9 = 0;
  v81 = v7;
  while (2)
  {
    if (v9 < *(v7 + 16))
    {
      v88 = v9 + 1;
      v10 = *(v82 + 8 * v9) + 64;
      sub_1ABA7D2A8();
      v13 = v12 & v11;
      v15 = (v14 + 63) >> 6;
      v91 = v16;

      v17 = 0;
      while (v13)
      {
LABEL_13:
        v19 = (*(v91 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
        v21 = *v19;
        v20 = v19[1];

        v22 = sub_1ABF24D84();
        if (v22)
        {
          if (v22 != 1)
          {

            *&v93 = 0;
            *(&v93 + 1) = 0xE000000000000000;
            sub_1ABF24AB4();

            *&v93 = 0x6F746172656E6567;
            *(&v93 + 1) = 0xEA00000000002072;
            MEMORY[0x1AC5A9410](v21, v20);

            MEMORY[0x1AC5A9410](0x74276E73656F6420, 0xEE00747369786520);
            v34 = *(&v93 + 1);
            v75 = v93;
            sub_1ABB4FDEC();
            swift_allocError();
            *v76 = v75;
            v76[1] = v34;
            swift_willThrow();

            return v34;
          }

          v23 = 1;
        }

        else
        {
          v23 = 0;
        }

        if (v8[77] != -1)
        {
          sub_1ABA8F0B8();
          swift_once();
        }

        v13 &= v13 - 1;
        if (*(off_1EB4D3400 + 2))
        {
          v24 = sub_1ABAF8714(v23);
          if (v25)
          {
            HIDWORD(v90) = v23;
            sub_1ABA807D8(v24, v25, v26, v27, v28, v29, v30, v31, v79, v80, v81, v82, v84, v86, v87, v88, v90, v91);
            sub_1ABA946C0(&v93, v99);
            v32 = v100;
            v33 = v101;
            v34 = sub_1ABA93E20(v99, v100);
            v98 = v86;
            v35 = v84[1];
            v93 = *v84;
            v94 = v35;
            v95 = v87;
            v96 = *(v84 + 40);
            v97 = *(v84 + 56);
            v36 = *(v33 + 8);

            v37 = v36(&v98, &v93, v32, v33);
            if (v3)
            {

              sub_1ABA84B54(v99);
              return v34;
            }

            v38 = v37;

            sub_1ABB7ECC8(v38);
            sub_1ABB18E84();
            sub_1ABA84B54(v99);
            v8 = &qword_1EB4D0000;
          }
        }
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_67:

          v34 = v107;

          sub_1ABA84B54(v99);
          return v34;
        }

        if (v18 >= v15)
        {
          break;
        }

        v13 = *(v10 + 8 * v18);
        ++v17;
        if (v13)
        {
          v17 = v18;
          goto LABEL_13;
        }
      }

      v7 = v81;
      v9 = v88;
      if (v88 != v80)
      {
        continue;
      }

      v83 = v3;

      v39 = v102;
      goto LABEL_26;
    }

    break;
  }

LABEL_69:
  __break(1u);
LABEL_70:
  sub_1ABD8EE84();
  v34 = v78;
LABEL_62:
  v74 = *(v34 + 16);
  *&v93 = v34 + 32;
  *(&v93 + 1) = v74;
  sub_1ABB4FE40(&v93);

  return v34;
}

unint64_t sub_1ABB4FDEC()
{
  result = qword_1EB4D3408;
  if (!qword_1EB4D3408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3408);
  }

  return result;
}

uint64_t sub_1ABB4FE40(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1ABF24FE4();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1ABF24164();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1ABB50028(v7, v8, a1, v4);
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
    return sub_1ABB4FF34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1ABB4FF34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 88 * a3;
    v8 = result - a3;
    while (2)
    {
      v9 = v8;
      v10 = v7;
      do
      {
        result = *(v10 - 11);
        if (result == *v10 && *(v10 - 10) == v10[1])
        {
          break;
        }

        result = sub_1ABF25054();
        if ((result & 1) == 0)
        {
          break;
        }

        if (!v6)
        {
          __break(1u);
          return result;
        }

        memcpy(__dst, v10, sizeof(__dst));
        memcpy(v10, v10 - 11, 0x58uLL);
        result = memcpy(v10 - 11, __dst, 0x58uLL);
        v10 -= 11;
      }

      while (!__CFADD__(v9++, 1));
      ++v4;
      v7 += 88;
      --v8;
      if (v4 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1ABB50028(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v82 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v8 = v6++;
      if (v6 < v5)
      {
        v9 = *a3;
        v10 = (*a3 + 88 * v6);
        v11 = *v10;
        v12 = v10[1];
        v13 = (*a3 + 88 * v8);
        if (*v13 == v11 && v13[1] == v12)
        {
          v15 = 0;
        }

        else
        {
          v15 = sub_1ABF25054();
        }

        v6 = v8 + 2;
        v16 = 88 * v8;
        v17 = (v9 + 88 * v8 + 184);
        while (v6 < v5)
        {
          if (*(v17 - 12) == *(v17 - 1) && *(v17 - 11) == *v17)
          {
            if (v15)
            {
              goto LABEL_21;
            }
          }

          else if ((v15 ^ sub_1ABF25054()))
          {
            break;
          }

          ++v6;
          v17 += 11;
        }

        if ((v15 & 1) == 0)
        {
          goto LABEL_28;
        }

LABEL_21:
        if (v6 < v8)
        {
          goto LABEL_122;
        }

        if (v8 < v6)
        {
          v19 = 88 * v6 - 88;
          v20 = v6;
          v21 = v8;
          do
          {
            if (v21 != --v20)
            {
              v22 = *a3;
              if (!*a3)
              {
                goto LABEL_127;
              }

              memcpy(__dst, (v22 + v16), sizeof(__dst));
              memmove((v22 + v16), (v22 + v19), 0x58uLL);
              memcpy((v22 + v19), __dst, 0x58uLL);
            }

            ++v21;
            v19 -= 88;
            v16 += 88;
          }

          while (v21 < v20);
        }
      }

LABEL_28:
      v23 = a3[1];
      if (v6 < v23)
      {
        if (__OFSUB__(v6, v8))
        {
          goto LABEL_121;
        }

        if (v6 - v8 < a4)
        {
          if (__OFADD__(v8, a4))
          {
            goto LABEL_123;
          }

          if (v8 + a4 >= v23)
          {
            v24 = a3[1];
          }

          else
          {
            v24 = v8 + a4;
          }

          if (v24 < v8)
          {
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
            return;
          }

          if (v6 != v24)
          {
            v78 = v7;
            v25 = *a3;
            v26 = *a3 + 88 * v6;
            v27 = v8 - v6;
            do
            {
              v28 = v27;
              v29 = v26;
              do
              {
                v30 = *(v29 - 11) == *v29 && *(v29 - 10) == v29[1];
                if (v30 || (sub_1ABF25054() & 1) == 0)
                {
                  break;
                }

                if (!v25)
                {
                  goto LABEL_125;
                }

                memcpy(__dst, v29, sizeof(__dst));
                memcpy(v29, v29 - 11, 0x58uLL);
                memcpy(v29 - 11, __dst, 0x58uLL);
                v29 -= 11;
              }

              while (!__CFADD__(v28++, 1));
              ++v6;
              v26 += 88;
              --v27;
            }

            while (v6 != v24);
            v6 = v24;
            v7 = v78;
          }
        }
      }

      if (v6 < v8)
      {
        goto LABEL_120;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1ABAD8820();
        v7 = v74;
      }

      v32 = v7[2];
      v33 = v32 + 1;
      if (v32 >= v7[3] >> 1)
      {
        sub_1ABAD8820();
        v7 = v75;
      }

      v7[2] = v33;
      v34 = v7 + 4;
      v35 = &v7[2 * v32 + 4];
      *v35 = v8;
      v35[1] = v6;
      v79 = *a1;
      if (!*a1)
      {
        goto LABEL_128;
      }

      if (v32)
      {
        while (1)
        {
          v36 = v33 - 1;
          v37 = &v34[2 * v33 - 2];
          v38 = &v7[2 * v33];
          if (v33 >= 4)
          {
            break;
          }

          if (v33 == 3)
          {
            v39 = v7[4];
            v40 = v7[5];
            v49 = __OFSUB__(v40, v39);
            v41 = v40 - v39;
            v42 = v49;
LABEL_69:
            if (v42)
            {
              goto LABEL_110;
            }

            v54 = *v38;
            v53 = v38[1];
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_113;
            }

            v58 = v37[1];
            v59 = v58 - *v37;
            if (__OFSUB__(v58, *v37))
            {
              goto LABEL_116;
            }

            if (__OFADD__(v56, v59))
            {
              goto LABEL_118;
            }

            if (v56 + v59 >= v41)
            {
              if (v41 < v59)
              {
                v36 = v33 - 2;
              }

              goto LABEL_91;
            }

            goto LABEL_84;
          }

          if (v33 < 2)
          {
            goto LABEL_112;
          }

          v61 = *v38;
          v60 = v38[1];
          v49 = __OFSUB__(v60, v61);
          v56 = v60 - v61;
          v57 = v49;
LABEL_84:
          if (v57)
          {
            goto LABEL_115;
          }

          v63 = *v37;
          v62 = v37[1];
          v49 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v49)
          {
            goto LABEL_117;
          }

          if (v64 < v56)
          {
            goto LABEL_98;
          }

LABEL_91:
          if (v36 - 1 >= v33)
          {
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
LABEL_121:
            __break(1u);
LABEL_122:
            __break(1u);
LABEL_123:
            __break(1u);
            goto LABEL_124;
          }

          if (!*a3)
          {
            goto LABEL_126;
          }

          v68 = v7;
          v69 = &v34[2 * v36 - 2];
          v70 = *v69;
          v71 = &v34[2 * v36];
          v72 = v71[1];
          sub_1ABB506A8((*a3 + 88 * *v69), (*a3 + 88 * *v71), (*a3 + 88 * v72), v79);
          if (v4)
          {
            goto LABEL_103;
          }

          if (v72 < v70)
          {
            goto LABEL_105;
          }

          v73 = v68[2];
          if (v36 > v73)
          {
            goto LABEL_106;
          }

          *v69 = v70;
          v69[1] = v72;
          if (v36 >= v73)
          {
            goto LABEL_107;
          }

          v33 = v73 - 1;
          memmove(&v34[2 * v36], v71 + 2, 16 * (v73 - 1 - v36));
          v7 = v68;
          v68[2] = v73 - 1;
          if (v73 <= 2)
          {
            goto LABEL_98;
          }
        }

        v43 = &v34[2 * v33];
        v44 = *(v43 - 8);
        v45 = *(v43 - 7);
        v49 = __OFSUB__(v45, v44);
        v46 = v45 - v44;
        if (v49)
        {
          goto LABEL_108;
        }

        v48 = *(v43 - 6);
        v47 = *(v43 - 5);
        v49 = __OFSUB__(v47, v48);
        v41 = v47 - v48;
        v42 = v49;
        if (v49)
        {
          goto LABEL_109;
        }

        v50 = v38[1];
        v51 = v50 - *v38;
        if (__OFSUB__(v50, *v38))
        {
          goto LABEL_111;
        }

        v49 = __OFADD__(v41, v51);
        v52 = v41 + v51;
        if (v49)
        {
          goto LABEL_114;
        }

        if (v52 >= v46)
        {
          v66 = *v37;
          v65 = v37[1];
          v49 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v49)
          {
            goto LABEL_119;
          }

          if (v41 < v67)
          {
            v36 = v33 - 2;
          }

          goto LABEL_91;
        }

        goto LABEL_69;
      }

LABEL_98:
      v5 = a3[1];
      if (v6 >= v5)
      {
        v82 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_129;
  }

  sub_1ABB50570(&v82, *a1, a3);
LABEL_103:
}

uint64_t sub_1ABB50570(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v15 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1ABE7A0B4();
    v15 = result;
  }

  v12 = v4;
  *v4 = v15;
  v6 = (v15 + 16);
  for (i = *(v15 + 16); ; *v6 = i)
  {
    if (i < 2)
    {
LABEL_10:
      *v12 = v15;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v4 = (v15 + 16 * i);
    v8 = *v4;
    v9 = &v6[2 * i];
    v10 = v9[1];
    sub_1ABB506A8((*a3 + 88 * *v4), (*a3 + 88 * *v9), (*a3 + 88 * v10), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v10 < v8)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (i - 2 >= *v6)
    {
      goto LABEL_12;
    }

    *v4 = v8;
    v4[1] = v10;
    v11 = *v6 - i;
    if (*v6 < i)
    {
      goto LABEL_13;
    }

    i = *v6 - 1;
    result = memmove(v9, v9 + 2, 16 * v11);
  }

  *v12 = v15;
  __break(1u);
  return result;
}

uint64_t sub_1ABB506A8(char *a1, char *a2, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 88;
  v9 = (a3 - a2) / 88;
  if (v8 < v9)
  {
    sub_1ABADD380(a1, (a2 - a1) / 88, a4);
    v10 = &v4[88 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_36;
      }

      v12 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
      if (v12 || (sub_1ABF25054() & 1) == 0)
      {
        break;
      }

      v13 = v6;
      v12 = v7 == v6;
      v6 += 88;
      if (!v12)
      {
        goto LABEL_16;
      }

LABEL_17:
      v7 += 88;
    }

    v13 = v4;
    v12 = v7 == v4;
    v4 += 88;
    if (v12)
    {
      goto LABEL_17;
    }

LABEL_16:
    memmove(v7, v13, 0x58uLL);
    goto LABEL_17;
  }

  sub_1ABADD380(a2, (a3 - a2) / 88, a4);
  v10 = &v4[88 * v9];
LABEL_19:
  v14 = v6 - 88;
  for (v5 -= 88; v10 > v4 && v6 > v7; v5 -= 88)
  {
    v16 = *(v6 - 11) == *(v10 - 11) && *(v6 - 10) == *(v10 - 10);
    if (!v16 && (sub_1ABF25054() & 1) != 0)
    {
      v12 = v5 + 88 == v6;
      v6 -= 88;
      if (!v12)
      {
        memmove(v5, v14, 0x58uLL);
        v6 = v14;
      }

      goto LABEL_19;
    }

    if (v10 != v5 + 88)
    {
      memmove(v5, v10 - 88, 0x58uLL);
    }

    v10 -= 88;
  }

LABEL_36:
  v17 = (v10 - v4) / 88;
  if (v6 != v4 || v6 >= &v4[88 * v17])
  {
    memmove(v6, v4, 88 * v17);
  }

  return 1;
}

unint64_t sub_1ABB5086C()
{
  result = qword_1EB4D3420;
  if (!qword_1EB4D3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3420);
  }

  return result;
}

uint64_t sub_1ABB508CC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1ABB508E4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 64);
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

uint64_t sub_1ABB50924(uint64_t result, int a2, int a3)
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
      *(result + 64) = (a2 - 1);
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

_BYTE *sub_1ABB50980(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1ABB50A5C()
{
  result = qword_1ED86D3B0;
  if (!qword_1ED86D3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED86D3B0);
  }

  return result;
}

uint64_t sub_1ABB50AC0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = a2[3];
  v8 = a2[4];
  v7 = a2[5];
  v9 = *(a2 + 104);
  if ((v9 & 0x10) != 0)
  {
    v50 = a2[12];
    v45 = *(a2 + 5);
    v35 = v5;
    sub_1ABF24AB4();
    v46[0] = 0;
    v46[1] = 0xE000000000000000;
    MEMORY[0x1AC5A9410](0xD000000000000028, 0x80000001ABF88250);
    *__dst = v3;
    *&__dst[8] = v4;
    *&__dst[16] = v35;
    *&__dst[24] = v6;
    *&__dst[32] = v8;
    *&__dst[40] = v7;
    v36 = *(a2 + 3);
    *&__dst[64] = *(a2 + 4);
    *&__dst[48] = v36;
    *&__dst[80] = v45;
    v48 = v50;
    v49 = v9;
    sub_1ABF24C54();
    sub_1ABB50F70();
    swift_allocError();
    *v37 = 0;
    *(v37 + 8) = 0xE000000000000000;
    *(v37 + 16) = 1;
    return swift_willThrow();
  }

  v42 = a2[4];
  v44 = a2[5];
  if ((v9 & 0xE0) == 0x20)
  {
    v10 = *(result + 16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v39 = a2[2];
      v12 = 0;
      v43 = v10 + 32;
      v50 = v4 + 56;
      v13 = MEMORY[0x1E69E7CC0];
      v14 = v11;
      v40 = v3;
      v41 = v10;
      for (i = v10; ; v14 = *(i + 16))
      {
        if (v12 >= v14)
        {
          __break(1u);
          return result;
        }

        result = memcpy(__dst, (v43 + 88 * v12), 0x58uLL);
        if (v4)
        {
          if ((v3 & 1) == 0)
          {
            break;
          }
        }

        sub_1ABB242A4(__dst, v46);
LABEL_9:
        v16 = v42;
        if (v6)
        {
          v17 = *&__dst[56];
          if (*&__dst[56])
          {
            if ((v39 & 1) == 0)
            {
              if (!*(v6 + 16))
              {
                goto LABEL_49;
              }

              sub_1ABF25234();

              sub_1ABF23D34();
              sub_1ABF25294();
              sub_1ABA7D2C8();
              while (1)
              {
                sub_1ABA8F0CC();
                if (((*(v6 + 56 + v18) >> v7) & 1) == 0)
                {
                  goto LABEL_51;
                }

                v19 = sub_1ABA7EEFC(*(v6 + 48));
                v21 = v21 && v17 == v20;
                if (v21 || (sub_1ABA807F8(v19, v20) & 1) != 0)
                {

                  LOBYTE(v3) = v40;
                  v16 = v42;
                  break;
                }
              }
            }
          }
        }

        LOBYTE(v7) = v44;
        if (v44)
        {
          v22 = *&__dst[72];
          if (*&__dst[72])
          {
            if ((v16 & 1) == 0)
            {
              if (!*(v44 + 16))
              {
LABEL_49:
                result = sub_1ABB24250(__dst);
                i = v41;
                goto LABEL_38;
              }

              sub_1ABF25234();

              sub_1ABF23D34();
              sub_1ABF25294();
              sub_1ABA7D2C8();
              while (1)
              {
                sub_1ABA8F0CC();
                if (((*(v44 + 56 + v23) >> v44) & 1) == 0)
                {
                  break;
                }

                v24 = sub_1ABA7EEFC(*(v44 + 48));
                v26 = v21 && v22 == v25;
                if (v26 || (sub_1ABA807F8(v24, v25) & 1) != 0)
                {

                  LOBYTE(v3) = v40;
                  goto LABEL_33;
                }
              }

LABEL_51:
              sub_1ABB24250(__dst);

LABEL_52:
              LOBYTE(v3) = v40;
              i = v41;
              goto LABEL_38;
            }
          }
        }

LABEL_33:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1ABAD8758();
          v13 = v32;
        }

        i = v41;
        v7 = *(v13 + 16);
        if (v7 >= *(v13 + 24) >> 1)
        {
          sub_1ABAD8758();
          v13 = v33;
        }

        *(v13 + 16) = v7 + 1;
        result = memcpy((v13 + 88 * v7 + 32), __dst, 0x58uLL);
LABEL_38:
        if (++v12 == v11)
        {
          goto LABEL_55;
        }
      }

      if (!*(v4 + 16))
      {
        goto LABEL_38;
      }

      v27 = *&__dst[32];
      sub_1ABF25234();
      sub_1ABB242A4(__dst, v46);

      sub_1ABF23D34();
      sub_1ABF25294();
      sub_1ABA7D2C8();
      while (1)
      {
        sub_1ABA8F0CC();
        if (((*(v50 + v28) >> v7) & 1) == 0)
        {
          break;
        }

        v29 = sub_1ABA7EEFC(*(v4 + 48));
        v31 = v21 && v30 == v27;
        if (v31 || (sub_1ABA807F8(v29, v30) & 1) != 0)
        {

          LOBYTE(v3) = v40;
          goto LABEL_9;
        }
      }

      result = sub_1ABB24250(__dst);
      goto LABEL_52;
    }
  }

  v13 = MEMORY[0x1E69E7CC0];
LABEL_55:
  a3[1] = 0;
  a3[2] = 0;
  *a3 = v13;
  return result;
}

unint64_t sub_1ABB50F70()
{
  result = qword_1EB4D3428;
  if (!qword_1EB4D3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3428);
  }

  return result;
}

uint64_t sub_1ABB50FC4()
{
  *&__src[0] = 0x746E756F63;
  *(&__src[0] + 1) = 0xE500000000000000;
  *&__src[1] = &unk_1F208E518;
  *(&__src[1] + 1) = 115;
  *&__src[2] = 0xE100000000000000;
  BYTE8(__src[2]) = 1;
  *&__src[3] = 0xD00000000000002CLL;
  *(&__src[3] + 1) = 0x80000001ABF882B0;
  *&__src[4] = 0;
  *(&__src[4] + 1) = 0xE000000000000000;
  memset(&__src[5], 0, 32);
  memset(v4, 0, sizeof(v4));
  memcpy((v0 + 16), __src, 0x70uLL);

  sub_1ABB51320(__src, &v2);
  sub_1ABAE4AA8(v4);

  sub_1ABB5137C(__src);
  return v0;
}

uint64_t sub_1ABB51098(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 32);
  if (v4 && *(v4 + 16) == 1 && !*(a1 + 8))
  {
    if (qword_1ED86E458 != -1)
    {
      swift_once();
    }

    v13 = sub_1ABF237F4();
    sub_1ABA7AA24(v13, qword_1ED86E460);
    v14 = sub_1ABF237D4();
    v15 = sub_1ABF24654();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1ABA78000, v14, v15, "array argument provided to count.", v16, 2u);
      MEMORY[0x1AC5AB8B0](v16, -1, -1);
    }

    sub_1ABE713BC();
  }

  else if (*(a1 + 8))
  {
    sub_1ABE48AB8();
  }

  sub_1ABAD219C(&qword_1EB4D10A0, &qword_1ABF33228);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1ABF34740;
  v6 = sub_1ABF24FF4();
  v8 = v7;
  *(v5 + 48) = 0;
  *(v5 + 72) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v5 + 112) = MEMORY[0x1E69E7CC0];
  v17 = v6;
  v18 = v7;

  MEMORY[0x1AC5A9410](126, 0xE100000000000000);

  MEMORY[0x1AC5A9410](126, 0xE100000000000000);

  v10 = v18;
  *(v5 + 32) = v6;
  *(v5 + 40) = v10;
  *(v5 + 56) = v6;
  *(v5 + 64) = v8;
  *(v5 + 80) = xmmword_1ABF3C450;
  *(v5 + 96) = xmmword_1ABF3C450;
  type metadata accessor for ResultGraph();
  v11 = swift_allocObject();
  *(v11 + 16) = sub_1ABF239C4();
  *(v11 + 24) = v9;
  LOBYTE(v17) = 0;
  sub_1ABE489A8(v5, &v17);
  return v5;
}

void *sub_1ABB513D0@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ABA7E400();
  result = memcpy(v5, v6, v7);
  if (v3)
  {
    v13[0] = v4;
    v13[1] = v3;
    sub_1ABA7E400();
    memcpy(v9, v10, v11);
    sub_1ABB51320(v13, v12);
    *a1 = v4;
    a1[1] = v3;
    return memcpy(a1 + 2, __src, 0x60uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1ABB5144C@<X0>(void *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1ABA7E400();
  result = memcpy(v5, v6, v7);
  if (v3)
  {
    v13[0] = v4;
    v13[1] = v3;
    sub_1ABA7E400();
    memcpy(v9, v10, v11);
    sub_1ABB51320(v13, &v12);
    *a1 = v4;
    a1[1] = v3;
    return memcpy(a1 + 2, __src, 0x60uLL);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1ABB514D8(uint64_t a1, uint64_t a2)
{
  sub_1ABA7EF0C();
  swift_beginAccess();
  v3 = *(a1 + 32);
  if (v3)
  {
    v4 = 1 << *(v3 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v3 + 64);
    v7 = (v4 + 63) >> 6;

    v9 = 0;
    while (v6)
    {
LABEL_10:
      v11 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v12 = *(*(v3 + 56) + ((v9 << 9) | (8 * v11)));
      sub_1ABA7EF0C();
      result = swift_beginAccess();
      if (*(v12 + 24))
      {
        type metadata accessor for QueryNode();

        v13 = sub_1ABE71A88();

        if (v13)
        {
          v14 = 1;
LABEL_14:

          return v14;
        }
      }
    }

    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v7)
      {
        v14 = 0;
        goto LABEL_14;
      }

      v6 = *(v3 + 64 + 8 * v10);
      ++v9;
      if (v6)
      {
        v9 = v10;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t sub_1ABB51634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v42 = a3;
  v43 = a1;
  v5 = sub_1ABE71C10();
  v6 = v5;
  if (v5 >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1ABF24CA4())
  {
    v45 = v4;
    v8 = 0;
    v50 = v6 & 0xC000000000000001;
    v44 = v6 & 0xFFFFFFFFFFFFFF8;
    v40 = 0x80000001ABF7EE80;
    v41 = 0x80000001ABF7EEA0;
    v39 = 0x80000001ABF7EE20;
    while (1)
    {
      if (v50)
      {
        v9 = MEMORY[0x1AC5AA170](v8, v6);
      }

      else
      {
        if (v8 >= *(v44 + 16))
        {
          goto LABEL_48;
        }

        v9 = *(v6 + 8 * v8 + 32);
      }

      v10 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v11 = *(v9 + 16);
      v12 = *(v9 + 24);
      v13 = qword_1ED86D3A8;

      if (v13 != -1)
      {
        swift_once();
      }

      v20 = qword_1ED87C3F8;
      if (*(qword_1ED87C3F8 + 16))
      {
        v4 = v6;
        v21 = i;
        v22 = sub_1ABA94FC8(v11, v12, v14, v15, v16, v17, v18, v19, v38, v39, v40, v41, v42, v43, v44, v45, *&v46[0], *(&v46[0] + 1));
        v24 = v23;

        if (v24)
        {
          sub_1ABA93E64(*(v20 + 56) + 40 * v22, v46);
          sub_1ABA946C0(v46, v47);
          v25 = v48;
          v26 = v49;
          sub_1ABA93E20(v47, v48);
          (*(v26 + 32))(v46, v43, v9, v25, v26);
          if (v45)
          {

            sub_1ABA84B54(v47);
            return v36 & 1;
          }

          v27 = *(v42 + 64);
          v28 = 0xE400000000000000;
          v29 = 1701736302;
          i = v21;
          switch(LOBYTE(v46[0]))
          {
            case 1:
              v29 = 0xD000000000000010;
              v28 = v39;
              break;
            case 2:
              v28 = 0xE700000000000000;
              v29 = sub_1ABA7BF00();
              break;
            case 3:
              v30 = 0x47746E657665;
              goto LABEL_24;
            case 4:
              v29 = sub_1ABA7D198();
              break;
            case 5:
              v29 = 0x49747865746E6F63;
              v28 = 0xEC0000007865646ELL;
              break;
            case 6:
              v30 = 0x476C61636F6CLL;
LABEL_24:
              v29 = sub_1ABA80704(v30);
              break;
            case 7:
              v29 = 0xD00000000000001ALL;
              v28 = v40;
              break;
            case 8:
              v29 = 0xD000000000000018;
              v28 = v41;
              break;
            default:
              break;
          }

          v31 = 0xE400000000000000;
          v6 = v4;
          v32 = 1701736302;
          switch(v27)
          {
            case 1:
              v32 = 0xD000000000000010;
              v31 = v39;
              break;
            case 2:
              v31 = 0xE700000000000000;
              v32 = 0x7865646E496F6ELL;
              break;
            case 3:
              v33 = 0x47746E657665;
              goto LABEL_34;
            case 4:
              v32 = 0x79676F6C6F746E6FLL;
              v31 = 0xED00007865646E49;
              break;
            case 5:
              sub_1ABA891B0();
              v31 = 0xEC0000007865646ELL;
              break;
            case 6:
              v33 = 0x476C61636F6CLL;
LABEL_34:
              v32 = v33 & 0xFFFFFFFFFFFFLL | 0x6172000000000000;
              v31 = 0xEF7865646E496870;
              break;
            case 7:
              v32 = 0xD00000000000001ALL;
              v31 = v40;
              break;
            case 8:
              v32 = 0xD000000000000018;
              v31 = v41;
              break;
            default:
              break;
          }

          if (v29 == v32 && v28 == v31)
          {
          }

          else
          {
            v35 = sub_1ABF25054();

            if ((v35 & 1) == 0)
            {

              sub_1ABA84B54(v47);
              v36 = 1;
              return v36 & 1;
            }
          }

          sub_1ABA84B54(v47);
        }

        else
        {

          i = v21;
          v6 = v4;
        }
      }

      else
      {
      }

      ++v8;
      if (v10 == i)
      {
        goto LABEL_50;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    ;
  }

LABEL_50:

  v36 = 0;
  return v36 & 1;
}

uint64_t sub_1ABB51AD8(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  if ((sub_1ABACECCC(*(a2 + 64), *a3) & 1) == 0)
  {
    return 0;
  }

  v3 = qword_1EB4CF230;

  if (v3 != -1)
  {
    sub_1ABA8F0DC();
    swift_once();
  }

  sub_1ABB130E0();
  v5 = v4;

  return v5 & 1;
}

uint64_t sub_1ABB51B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v9 = v7;
  v79 = a7;
  v68 = a1;
  Context = type metadata accessor for QueryContext(0);
  MEMORY[0x1EEE9AC00](Context);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __src[3] = type metadata accessor for DefaultOperator();
  __src[4] = &off_1F20885C8;
  __src[0] = v9;

  sub_1ABE19E30(__src, a5);
  v18 = v17;
  result = sub_1ABA84B54(__src);
  if (v8)
  {
    return result;
  }

  v67 = 0;
  v61 = a2;
  v62 = a3;
  v63 = a4;
  v20 = *(v18 + 16);
  v21 = v18;
  if (!v20)
  {
  }

  v66 = v16;
  v60 = Context;
  v22 = 0;
  v69 = 0;
  v23 = 0;
  memset(__src, 0, sizeof(__src));
  v58 = v79 + 1;
  v24 = __OFADD__(v79, 1);
  HIDWORD(v59) = v24;
  v77 = xmmword_1ABF34940;
  v78 = 0;
  v70 = v20 - 1;
  v25 = (v21 + 40);
  v79 = 0x1FFFFFFFELL;
  v57 = v21;
  while (1)
  {
    if (v23 >= v20)
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
      return result;
    }

    v27 = *(v25 - 1);
    v26 = *v25;
    swift_beginAccess();
    v28 = *(a5 + 32);
    if (!v28 || !*(v28 + 16))
    {
      swift_endAccess();
      goto LABEL_16;
    }

    v35 = sub_1ABA94FC8(v27, v26, v29, v30, v31, v32, v33, v34, v56, v57, v58, v59, v60, v61, v62, v63, v64, v65);
    if ((v36 & 1) == 0)
    {
      swift_endAccess();

      goto LABEL_16;
    }

    v37 = *(*(v28 + 56) + 8 * v35);
    swift_endAccess();

    sub_1ABA7EF0C();
    swift_beginAccess();
    if (!*(v37 + 24) || (v73 = *(v37 + 24), (sub_1ABE71D70() & 1) != 0))
    {

LABEL_16:
      v38 = __src;
      goto LABEL_17;
    }

    v39 = v66;
    result = sub_1ABE3CF94(v66);
    if ((v59 & 0x100000000) != 0)
    {
      goto LABEL_46;
    }

    v40 = v67;
    v65 = sub_1ABE177BC(v74, v39, &v73, a5, v58, v61, v62, v63);
    if (v40)
    {

      sub_1ABA925A4(__src, &qword_1EB4D3430, &unk_1ABF6B740);

      return sub_1ABB529C4(v39);
    }

    result = memcpy(v72, v74, 0x69uLL);
    v41 = *(v60 + 48);
    v42 = &v39[v41];
    v43 = *&v39[v41];
    v44 = (v68 + v41);
    v45 = *(v68 + v41) + v43;
    if (__OFADD__(*v44, v43))
    {
      goto LABEL_47;
    }

    HIDWORD(v64) = v22;
    v67 = 0;
    v46 = *(v42 + 1);
    v47 = *(v42 + 2);
    *v44 = v45;

    sub_1ABD7DA50(v46);
    v48 = v47;
    v49 = v68;
    sub_1ABD7DFB4(v48);
    v50 = *(v39 + 2);
    if (v50 <= *(v49 + 16))
    {
      v50 = *(v49 + 16);
    }

    *(v49 + 16) = v50;
    if (v72[11] >> 1 == 0xFFFFFFFFLL && (v72[13] & 0x1E) == 0)
    {
      v51 = v65;
      v52 = sub_1ABE47EF0();
      v22 = HIDWORD(v64);
      if (!v52)
      {
        sub_1ABE4933C();
        sub_1ABA7EF0C();
        swift_beginAccess();
        swift_beginAccess();

        sub_1ABD7DA50(v53);
        swift_endAccess();
        if (*(v68 + 8))
        {
          sub_1ABE47F28(v51);
        }

        else
        {

          *(v68 + 8) = v51;
        }

        v21 = v57;

        sub_1ABB529C4(v66);
        memcpy(v71, __src, sizeof(v71));
        goto LABEL_38;
      }

      sub_1ABB529C4(v66);
      goto LABEL_32;
    }

    sub_1ABB529C4(v66);
    v22 = HIDWORD(v64);
    if (v79 >> 1 != 0xFFFFFFFF || (v64 & 0x1E00000000) != 0)
    {
      sub_1ABA925A4(v72, &qword_1EB4D3430, &unk_1ABF6B740);
LABEL_32:
      memcpy(v71, __src, sizeof(v71));
      goto LABEL_33;
    }

    memcpy(v71, v72, sizeof(v71));
    v79 = v72[11];
    v69 = v72[12];
    v22 = LOBYTE(v72[13]);
LABEL_33:
    v21 = v57;
LABEL_38:
    v38 = v71;
LABEL_17:
    memcpy(v75, v38, sizeof(v75));
    if (v70 == v23)
    {
      break;
    }

    result = memcpy(__src, v75, sizeof(__src));
    *&v77 = v79;
    *(&v77 + 1) = v69;
    v78 = v22;
    v20 = *(v21 + 16);
    v25 += 2;
    ++v23;
  }

  if (v79 >> 1 != 0xFFFFFFFF || (v22 & 0x1E) != 0)
  {
    v54 = v68 + *(v60 + 32);
    memcpy(v74, v54, 0x69uLL);
    sub_1ABA925A4(v74, &qword_1EB4D3430, &unk_1ABF6B740);
    result = memcpy(v54, v75, 0x58uLL);
    v55 = v69;
    *(v54 + 88) = v79;
    *(v54 + 96) = v55;
    *(v54 + 104) = v22;
  }

  return result;
}

uint64_t sub_1ABB52134(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*a3)
  {
    v3 = *a3;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1ABB52174(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(*(a2 + 64))
  {
    case 2:
      sub_1ABA7BF00();
      break;
    case 3:
      v7 = 0x47746E657665;
      goto LABEL_7;
    case 4:
      sub_1ABA7D198();
      break;
    case 5:

      goto LABEL_9;
    case 6:
      v7 = 0x476C61636F6CLL;
LABEL_7:
      sub_1ABA80704(v7);
      break;
    default:
      break;
  }

  sub_1ABA891B0();
  v8 = sub_1ABF25054();

  if (v8)
  {
LABEL_9:
    v9 = qword_1EB4CF230;

    if (v9 != -1)
    {
      sub_1ABA8F0DC();
      swift_once();
    }

    sub_1ABB130E0();
    v11 = v10;

    LOBYTE(v12) = v11 ^ 1;
    return v12 & 1;
  }

  if ((sub_1ABB514D8(a3, a2) & 1) == 0)
  {
LABEL_18:
    LOBYTE(v12) = 1;
    return v12 & 1;
  }

  v12 = *(a3 + 24);
  v13 = qword_1EB4CF230;

  if (v13 != -1)
  {
    sub_1ABA8F0DC();
    swift_once();
  }

  sub_1ABB130E0();
  v15 = v14;

  v16 = sub_1ABB51634(a1, a3, a2);
  if (!v3)
  {
    if ((v15 & 1) == 0 || (v16 & 1) == 0 && (*(a3 + 16) == 0x7463656C657371 ? (v18 = *(a3 + 24) == 0xE700000000000000) : (v18 = 0), !v18 && (sub_1ABF25054() & 1) == 0 || (v19 = sub_1ABE719F4()) == 0 || (v20 = v19, sub_1ABA7EF0C(), swift_beginAccess(), v21 = *(v20 + 24), , , !v21) || (type metadata accessor for QueryNode(), v22 = sub_1ABE71A88(), , (v22 & 1) == 0)))
    {
      v24 = *(a3 + 16);
      v23 = *(a3 + 24);
      v25 = HIBYTE(v23) & 0xF;
      if ((v23 & 0x2000000000000000) == 0)
      {
        v25 = v24 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {

        sub_1ABE19D84(&v28, v24, v23);

        if (v29)
        {
          sub_1ABA946C0(&v28, v30);
          v26 = v31;
          v27 = v32;
          sub_1ABA93E20(v30, v31);
          LOBYTE(v28) = *(a2 + 64);
          LOBYTE(v12) = (*(v27 + 48))(a1, a3, &v28, v26, v27) ^ 1;
          sub_1ABA84B54(v30);
          return v12 & 1;
        }

        sub_1ABA925A4(&v28, &qword_1EB4D3438, &qword_1ABF3C4C0);
      }

      LOBYTE(v12) = 0;
      return v12 & 1;
    }

    goto LABEL_18;
  }

  return v12 & 1;
}

uint64_t sub_1ABB52538(void *a1, uint64_t a2)
{
  v4 = *(type metadata accessor for QueryContext(0) + 32);
  memcpy(__dst, (a2 + v4), 0x69uLL);
  memcpy(a1, (a2 + v4), 0x69uLL);
  sub_1ABB52954(__dst, &v6);
  return 0;
}

uint64_t sub_1ABB525B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ResultGraph();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = sub_1ABF239C4();
  *(v4 + 24) = v5;
  v7 = 0;
  sub_1ABE489A8(a3, &v7);
}

void *sub_1ABB528E4@<X0>(void *a1@<X8>)
{
  result = (*(**v1 + 128))(v5);
  if (!v2)
  {
    return memcpy(a1, v5, 0x70uLL);
  }

  return result;
}

uint64_t sub_1ABB52954(uint64_t a1, uint64_t a2)
{
  v4 = sub_1ABAD219C(&qword_1EB4D3430, &unk_1ABF6B740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB529C4(uint64_t a1)
{
  Context = type metadata accessor for QueryContext(0);
  (*(*(Context - 8) + 8))(a1, Context);
  return a1;
}

uint64_t static ViewService.DefaultResolverInteractionsView.databaseMigrator()()
{
  v0 = sub_1ABF22714();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  sub_1ABF22734();
  v2 = *(v1 + 104);
  v3 = sub_1ABA8F0F0();
  v2(v3);
  sub_1ABF22724();
  v4 = *(v1 + 8);
  v5 = sub_1ABA7D2D8();
  v4(v5);
  v6 = sub_1ABA8F0F0();
  v2(v6);
  sub_1ABA7D2E4(0xD000000000000023, v7, v8, sub_1ABB54280);
  v9 = sub_1ABA7D2D8();
  v4(v9);
  v10 = sub_1ABA8F0F0();
  v11 = (v2)(v10);
  sub_1ABA80814(v11, 0x80000001ABF88370, v12, sub_1ABB55254);
  v13 = sub_1ABA7D2D8();
  v4(v13);
  v14 = sub_1ABA8F0F0();
  v2(v14);
  sub_1ABA7D2E4(0xD000000000000017, v15, v16, sub_1ABB5570C);
  v17 = sub_1ABA7D2D8();
  v4(v17);
  v18 = sub_1ABA8F0F0();
  v2(v18);
  sub_1ABA7D2E4(0xD00000000000001CLL, v19, v20, sub_1ABB55898);
  v21 = sub_1ABA7D2D8();
  v4(v21);
  v22 = sub_1ABA8F0F0();
  v23 = (v2)(v22);
  sub_1ABA80814(v23, 0x80000001ABF883D0, v24, sub_1ABB55A84);
  v25 = sub_1ABA7D2D8();
  return (v4)(v25);
}

uint64_t sub_1ABB52CC0(uint64_t a1)
{
  v33 = a1;
  v26 = sub_1ABF222B4();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v27 = v25 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1ABF222D4();
  v32 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v25 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v25 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v25 - v12;
  *&v34[0] = MEMORY[0x1E69E7CC0];
  v14 = sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  v15 = sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
  sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
  v29 = v15;
  v30 = v14;
  sub_1ABF24964();
  v16 = v31;
  sub_1ABF22EB4();
  if (v16)
  {
    return (*(v32 + 8))(v13, v2);
  }

  v31 = v4;
  v18 = *(v32 + 8);
  v19 = v13;
  v20 = v32 + 8;
  v18(v19, v2);
  v21 = MEMORY[0x1E69E7CC0];
  *&v34[0] = MEMORY[0x1E69E7CC0];
  sub_1ABF24964();
  sub_1ABF22EB4();
  v32 = v20;
  v18(v10, v2);
  *&v34[0] = v21;
  sub_1ABF24964();
  sub_1ABF22EB4();
  v25[1] = "appIntentInvocationUUID";
  v18(v7, v2);
  *&v34[0] = v21;
  v22 = v31;
  sub_1ABF24964();
  sub_1ABF22EB4();
  v18(v22, v2);
  v35 = 0;
  memset(v34, 0, sizeof(v34));
  v36 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  v23 = v26;
  v24 = v27;
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v28 + 8))(v24, v23);
  return sub_1ABA925A4(v34, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABB53270()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1ABF22E64();
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF22624();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D74();
  v7 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226A4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D74();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF22644();
  return sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB53664()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1ABF22E64();
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF22624();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v7 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF22644();
  return sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB538EC(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  sub_1ABF22DB4();
  v13 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v12, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v14 = sub_1ABF22E64();
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v15 = *MEMORY[0x1E69A00B8];
  v16 = sub_1ABF22E44();
  (*(*(v16 - 8) + 104))(v6, v15, v16);
  sub_1ABA7B9B4(v6, 0, 1, v16);
  sub_1ABA7B9B4(v3, 1, 1, v16);
  sub_1ABF22694();

  sub_1ABA925A4(v3, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v6, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v12, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v12, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF22614();
  return sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB53D4C(uint64_t a1)
{
  v23 = a1;
  v1 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v19 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1ABF22DB4();
  v22 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v12, 0, 1, v22);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v24 = sub_1ABF22E64();
  sub_1ABA7B9B4(v9, 1, 1, v24);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v20 = *MEMORY[0x1E69A00B8];
  v13 = v20;
  v14 = sub_1ABF22E44();
  v15 = *(v14 - 8);
  v19 = *(v15 + 104);
  v21 = v15 + 104;
  v19(v6, v13, v14);
  sub_1ABA7B9B4(v6, 0, 1, v14);
  sub_1ABA7B9B4(v3, 1, 1, v14);
  sub_1ABF22694();

  sub_1ABA925A4(v3, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v6, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  v16 = v22;
  sub_1ABA7B9B4(v12, 0, 1, v22);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v9, 1, 1, v24);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v19(v6, v20, v14);
  sub_1ABA7B9B4(v6, 0, 1, v14);
  sub_1ABA7B9B4(v3, 1, 1, v14);
  sub_1ABF22694();

  sub_1ABA925A4(v3, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v6, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v12, 0, 1, v16);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v17 = v24;
  sub_1ABA7B9B4(v9, 1, 1, v24);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v9, 1, 1, v17);
  sub_1ABF22614();
  return sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB54280()
{
  v1 = sub_1ABF222D4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v19 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  result = sub_1ABF22E74();
  if (!v0)
  {
    v19[0] = v4;
    v20 = v2;
    v21 = MEMORY[0x1E69E7CC0];
    v12 = sub_1ABB55AE0(&qword_1EB4D3468, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    v13 = sub_1ABAD219C(&qword_1EB4D3470, &qword_1ABF3C4E0);
    sub_1ABB55B28(&qword_1EB4D3478, &qword_1EB4D3470, &qword_1ABF3C4E0);
    v19[1] = v13;
    v19[2] = v12;
    sub_1ABF24964();
    sub_1ABF22EB4();
    v14 = *(v20 + 8);
    v14(v10, v1);
    v15 = MEMORY[0x1E69E7CC0];
    v21 = MEMORY[0x1E69E7CC0];
    sub_1ABF24964();
    sub_1ABF22EB4();
    v16 = v7;
    v17 = v14;
    v14(v16, v1);
    v21 = v15;
    v18 = v19[0];
    sub_1ABF24964();
    sub_1ABF22EB4();
    return (v17)(v18, v1);
  }

  return result;
}

uint64_t sub_1ABB545EC()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1ABF22E64();
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF22624();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  v7 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226A4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DC4();
  sub_1ABA7B9B4(v2, 0, 1, v7);
  sub_1ABF22634();
  sub_1ABA925A4(v2, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v5, 1, 1, v6);
  sub_1ABF226C4();

  return sub_1ABA925A4(v5, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB54924()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v17 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - v4;
  v6 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  sub_1ABF22DB4();
  v12 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v11, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v11, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v18 = sub_1ABF22E64();
  sub_1ABA7B9B4(v8, 1, 1, v18);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v13 = *MEMORY[0x1E69A00B8];
  v14 = sub_1ABF22E44();
  (*(*(v14 - 8) + 104))(v5, v13, v14);
  sub_1ABA7B9B4(v5, 0, 1, v14);
  sub_1ABA7B9B4(v2, 1, 1, v14);
  sub_1ABF22694();

  sub_1ABA925A4(v2, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v5, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22D74();
  sub_1ABA7B9B4(v11, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v11, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v15 = v18;
  sub_1ABA7B9B4(v8, 1, 1, v18);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v11, 0, 1, v12);
  sub_1ABF22634();
  sub_1ABA925A4(v11, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v15);
  sub_1ABF226C4();

  sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22D74();
  sub_1ABA7B9B4(v11, 0, 1, v12);
  sub_1ABF22634();

  sub_1ABA925A4(v11, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v8, 1, 1, v15);
  sub_1ABF22614();
  return sub_1ABA925A4(v8, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB54DD8(uint64_t a1)
{
  v18[1] = a1;
  v1 = sub_1ABAD219C(&qword_1EB4D3480, &qword_1ABF3C4E8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v18 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - v5;
  v7 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  v10 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v18 - v11;
  sub_1ABF22DB4();
  v13 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v12, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v14 = sub_1ABF22E64();
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v15 = *MEMORY[0x1E69A00B8];
  v16 = sub_1ABF22E44();
  (*(*(v16 - 8) + 104))(v6, v15, v16);
  sub_1ABA7B9B4(v6, 0, 1, v16);
  sub_1ABA7B9B4(v3, 1, 1, v16);
  sub_1ABF22694();

  sub_1ABA925A4(v3, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABA925A4(v6, &qword_1EB4D3480, &qword_1ABF3C4E8);
  sub_1ABF22D84();
  sub_1ABA7B9B4(v12, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226A4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABF22DB4();
  sub_1ABA7B9B4(v12, 0, 1, v13);
  sub_1ABF22634();
  sub_1ABA925A4(v12, &qword_1EB4D3460, &qword_1ABF3C4D8);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF226C4();

  sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
  sub_1ABA7B9B4(v9, 1, 1, v14);
  sub_1ABF22614();
  return sub_1ABA925A4(v9, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB55254()
{
  v1 = sub_1ABF222B4();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1ABF22E84();
  if (!v0)
  {
    v6[1] = "ts WHERE source = 0";
    v8 = 0;
    memset(v7, 0, sizeof(v7));
    v9 = MEMORY[0x1E69E7CC0];
    sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
    sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
    sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
    sub_1ABF24964();
    sub_1ABF22EA4();
    (*(v2 + 8))(v4, v1);
    return sub_1ABA925A4(v7, &unk_1EB4D3C40, &unk_1ABF3FCC0);
  }

  return result;
}

uint64_t sub_1ABB55480()
{
  v0 = sub_1ABAD219C(&qword_1EB4D3458, &qword_1ABF3C4D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - v1;
  v3 = sub_1ABAD219C(&qword_1EB4D3460, &qword_1ABF3C4D8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-1] - v4;
  sub_1ABF22DB4();
  v6 = sub_1ABF22DD4();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v7 = sub_1ABF22E64();
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF226C4();

  sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
  v11 = MEMORY[0x1E69E6530];
  v12 = MEMORY[0x1E69A0180];
  v10[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v10);
  sub_1ABF22D94();
  sub_1ABA7B9B4(v5, 0, 1, v6);
  sub_1ABF225E4();
  sub_1ABA925A4(v5, &qword_1EB4D3460, &qword_1ABF3C4D8);
  v11 = MEMORY[0x1E69E63B0];
  v12 = MEMORY[0x1E69A0168];
  v10[0] = 0;
  sub_1ABF226D4();

  sub_1ABA84B54(v10);
  sub_1ABA7B9B4(v2, 1, 1, v7);
  sub_1ABF226C4();

  return sub_1ABA925A4(v2, &qword_1EB4D3458, &qword_1ABF3C4D0);
}

uint64_t sub_1ABB5570C()
{
  v1 = sub_1ABF22854();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1ABF22844();
  sub_1ABF22EC4();
  if (v0)
  {
    return (*(v2 + 8))(v7, v1);
  }

  v9 = *(v2 + 8);
  v9(v7, v1);
  sub_1ABF22844();
  sub_1ABF22EC4();
  return (v9)(v4, v1);
}

uint64_t sub_1ABB55898()
{
  v0 = sub_1ABF222B4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  v7 = MEMORY[0x1E69E7CC0];
  sub_1ABB55AE0(&qword_1EB4D3440, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1ABAD219C(&qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABB55B28(&qword_1EB4D3450, &qword_1EB4D3448, &qword_1ABF3C4C8);
  sub_1ABF24964();
  sub_1ABF22EA4();
  (*(v1 + 8))(v3, v0);
  return sub_1ABA925A4(v5, &unk_1EB4D3C40, &unk_1ABF3FCC0);
}

uint64_t sub_1ABB55A84()
{
  result = sub_1ABF22E74();
  if (!v0)
  {
    return sub_1ABF22E74();
  }

  return result;
}

uint64_t sub_1ABB55AE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1ABB55B28(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t ViewService.DefaultResolverInteractionsView.NonIntelligenceEngineEventSource.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1ABB55BA0@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.NonIntelligenceEngineEventSource.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Interaction.occurredAt.getter()
{
  sub_1ABAA0880();
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v0 = sub_1ABA7D000();

  return v1(v0);
}

uint64_t ViewService.DefaultResolverInteractionsView.Interaction.userAlignment.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(v2);
  *v0 = *(v1 + *(result + 20));
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Interaction.init(occurredAt:userAlignment:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  (*(v6 + 32))(a3, a1);
  result = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  *(a3 + *(result + 20)) = v5;
  return result;
}

BOOL static ViewService.DefaultResolverInteractionsView.Interaction.== infix(_:_:)()
{
  sub_1ABA81488();
  if ((sub_1ABF21E54() & 1) == 0)
  {
    return 0;
  }

  v2 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Interaction(0);
  return *(v1 + *(v2 + 20)) == *(v0 + *(v2 + 20));
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.init(typeName:bundleId:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a2)
  {
    if (a4)
    {
      *a5 = result;
      a5[1] = a2;
      a5[2] = a3;
      a5[3] = a4;
      return result;
    }

    v5 = 1;
  }

  else
  {

    v5 = 0;
  }

  sub_1ABB5C610();
  swift_allocError();
  *v6 = v5;
  return swift_willThrow();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();

  return sub_1ABF23D34();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.ValidityError.hashValue.getter()
{
  v1 = *v0;
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](v1);
  return sub_1ABF25294();
}

uint64_t static ViewService.DefaultResolverInteractionsView.CustomCandidateType.== infix(_:_:)(uint64_t a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v7 = v4[2];
  v8 = v4[3];
  v9 = v2 == *v4 && v3 == v4[1];
  if (v9 || (v10 = sub_1ABF25054(), result = 0, (v10 & 1) != 0))
  {
    if (v1 == v7 && v6 == v8)
    {
      return 1;
    }

    else
    {
      sub_1ABA7D000();

      return sub_1ABF25054();
    }
  }

  return result;
}

uint64_t sub_1ABB56030(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1ABF25054();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1ABB56100(char a1)
{
  if (a1)
  {
    return 0x6449656C646E7562;
  }

  else
  {
    return 0x656D614E65707974;
  }
}

uint64_t sub_1ABB56138@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56030(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB56160(uint64_t a1)
{
  v2 = sub_1ABB5C664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB5619C(uint64_t a1)
{
  v2 = sub_1ABB5C664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.DefaultResolverInteractionsView.CustomCandidateType.encode(to:)()
{
  sub_1ABA7BCA8();
  v3 = v2;
  v4 = sub_1ABAD219C(&qword_1EB4D3490, &qword_1ABF3C4F0);
  sub_1ABA7BB64();
  v7 = v5;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v6);
  sub_1ABB5E300();
  sub_1ABAA02AC(v3);
  sub_1ABB5C664();
  sub_1ABA8C6FC();
  sub_1ABF252E4();
  sub_1ABA7BF34();
  sub_1ABF24F34();
  if (!v0)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
  }

  (*(v7 + 8))(v1, v4);
  sub_1ABA7BC90();
}

uint64_t ViewService.DefaultResolverInteractionsView.CustomCandidateType.hashValue.getter()
{
  sub_1ABA7AB5C();
  sub_1ABAA0B5C();
  sub_1ABF23D34();
  sub_1ABF23D34();
  return sub_1ABF25294();
}

void ViewService.DefaultResolverInteractionsView.CustomCandidateType.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D34A0, &qword_1ABF3C4F8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABB5C664();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    v29 = sub_1ABF24E14();
    v31 = v30;
    v32 = sub_1ABF24E14();
    v34 = v33;
    v37 = v32;
    v35 = sub_1ABA8C53C();
    v36(v35);
    *v27 = v29;
    v27[1] = v31;
    v27[2] = v37;
    v27[3] = v34;

    sub_1ABA84B54(v25);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB56574(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1ABF25234();
  ViewService.DefaultResolverInteractionsView.CustomCandidateType.hash(into:)(v5);
  return sub_1ABF25294();
}

uint64_t static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v88[0] = *a1;
  v88[1] = v3;
  v88[2] = v5;
  v88[3] = v4;
  v89 = v6;
  v90 = v7;
  v91 = v8;
  v92 = v10;
  v93 = v9;
  v94 = v11;
  if (!v6)
  {
    if (v11)
    {
      goto LABEL_90;
    }

    if (v3)
    {
      if (!v8)
      {
        sub_1ABA9575C();
        sub_1ABAFF488(v59, v60, v61, v62, v63);
        sub_1ABA9575C();
        sub_1ABAFF488(v64, v65, v66, v67, v68);
        v54 = sub_1ABAA48D4();
        v58 = 0;
        goto LABEL_91;
      }

      if (v2 == v7 && v3 == v8)
      {
        sub_1ABA9575C();
        sub_1ABAFF488(v70, v71, v72, v73, v74);
        v75 = sub_1ABAA48D4();
        sub_1ABAFF488(v75, v76, v77, v78, 0);
LABEL_88:
        sub_1ABB5C6B8(v88);
        return 1;
      }

      v25 = sub_1ABF25054();
      v26 = sub_1ABAA4460();
      sub_1ABAFF488(v26, v27, v28, v29, 0);
      v30 = sub_1ABAA48D4();
      sub_1ABAFF488(v30, v31, v32, v33, 0);
      sub_1ABB5C6B8(v88);
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      v42 = sub_1ABAA4460();
      sub_1ABAFF488(v42, v43, v44, v45, 0);
      sub_1ABAFF488(v2, 0, v5, v4, 0);
      sub_1ABB5C6B8(v88);
      if (v8)
      {
        v46 = sub_1ABAA4460();
        sub_1ABAFF544(v46, v47, v48, v49, 0);
        return 0;
      }
    }

    return 1;
  }

  if (v6 != 1)
  {
    if (v5 | v3 | v2 | v4)
    {
      v34 = v5 | v3 | v4;
      if (v2 != 1 || v34)
      {
        if (v2 != 2 || v34)
        {
          if (v2 != 3 || v34)
          {
            if (v2 != 4 || v34)
            {
              if (v2 != 5 || v34)
              {
                if (v2 != 6 || v34)
                {
                  if (v11 != 2 || v7 != 7)
                  {
                    goto LABEL_90;
                  }
                }

                else if (v11 != 2 || v7 != 6)
                {
                  goto LABEL_90;
                }
              }

              else if (v11 != 2 || v7 != 5)
              {
                goto LABEL_90;
              }
            }

            else if (v11 != 2 || v7 != 4)
            {
              goto LABEL_90;
            }
          }

          else if (v11 != 2 || v7 != 3)
          {
            goto LABEL_90;
          }
        }

        else if (v11 != 2 || v7 != 2)
        {
          goto LABEL_90;
        }
      }

      else if (v11 != 2 || v7 != 1)
      {
        goto LABEL_90;
      }

      if (v10 | v8 | v9)
      {
LABEL_90:
        v82 = sub_1ABAA4460();
        sub_1ABAFF488(v82, v83, v84, v85, v86);
        v54 = sub_1ABAA48D4();
        v58 = v6;
        goto LABEL_91;
      }
    }

    else if (v11 != 2 || v10 | v8 | v7 | v9)
    {
      goto LABEL_90;
    }

    goto LABEL_88;
  }

  if (v11 != 1)
  {
    goto LABEL_90;
  }

  v12 = v2 == v7 && v3 == v8;
  if (!v12 && (sub_1ABF25054() & 1) == 0)
  {
    v50 = sub_1ABAA4460();
    sub_1ABAFF488(v50, v51, v52, v53, 1);
    v54 = sub_1ABAA48D4();
    v58 = 1;
LABEL_91:
    sub_1ABAFF488(v54, v55, v56, v57, v58);
    sub_1ABB5C6B8(v88);
    return 0;
  }

  if (v5 != v10 || v4 != v9)
  {
    sub_1ABA9575C();
    v14 = sub_1ABF25054();
    v15 = 1;
    v16 = sub_1ABAA4460();
    sub_1ABAFF488(v16, v17, v18, v19, 1);
    v20 = sub_1ABAA48D4();
    sub_1ABAFF488(v20, v21, v22, v23, 1);
    sub_1ABB5C6B8(v88);
    if (v14)
    {
      return v15;
    }

    return 0;
  }

  v15 = 1;
  sub_1ABAFF488(v7, v8, v5, v4, 1);
  v37 = sub_1ABAA48D4();
  sub_1ABAFF488(v37, v38, v39, v40, 1);
  sub_1ABB5C6B8(v88);
  return v15;
}

uint64_t sub_1ABB56918(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x766974696D697270 && a2 == 0xE900000000000065;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x656369766564 && a2 == 0xE600000000000000;
      if (v7 || (sub_1ABF25054() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x616D65686373 && a2 == 0xE600000000000000;
        if (v8 || (sub_1ABF25054() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 1819242356 && a2 == 0xE400000000000000;
          if (v9 || (sub_1ABF25054() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 7368801 && a2 == 0xE300000000000000;
            if (v10 || (sub_1ABF25054() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 1701603686 && a2 == 0xE400000000000000;
              if (v11 || (sub_1ABF25054() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6E6F73726570 && a2 == 0xE600000000000000;
                if (v12 || (sub_1ABF25054() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x72616D6563616C70 && a2 == 0xE90000000000006BLL;
                  if (v13 || (sub_1ABF25054() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6D6F74737563 && a2 == 0xE600000000000000)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1ABF25054();

                    if (v15)
                    {
                      return 9;
                    }

                    else
                    {
                      return 10;
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

uint64_t sub_1ABB56C24(char a1)
{
  result = 0x6E776F6E6B6E75;
  switch(a1)
  {
    case 1:
      result = 0x766974696D697270;
      break;
    case 2:
      result = 0x656369766564;
      break;
    case 3:
      result = 0x616D65686373;
      break;
    case 4:
      result = 1819242356;
      break;
    case 5:
      result = 7368801;
      break;
    case 6:
      result = 1701603686;
      break;
    case 7:
      result = 0x6E6F73726570;
      break;
    case 8:
      result = 0x72616D6563616C70;
      break;
    case 9:
      result = 0x6D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1ABB56D1C(uint64_t a1, uint64_t a2)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB56DA4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_1ABF25054();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1ABB56E34(uint64_t a1)
{
  v2 = sub_1ABB5C918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB56E70(uint64_t a1)
{
  v2 = sub_1ABB5C918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB56ECC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56918(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB56EF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1ABB56C1C();
  *a1 = result;
  return result;
}

uint64_t sub_1ABB56F1C(uint64_t a1)
{
  v2 = sub_1ABB5C720();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB56F58(uint64_t a1)
{
  v2 = sub_1ABB5C720();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB56F98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56D1C(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB56FC4(uint64_t a1)
{
  v2 = sub_1ABB5C774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57000(uint64_t a1)
{
  v2 = sub_1ABB5C774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB5703C(uint64_t a1)
{
  v2 = sub_1ABB5CA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57078(uint64_t a1)
{
  v2 = sub_1ABB5CA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB570B4(uint64_t a1)
{
  v2 = sub_1ABB5C8C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB570F0(uint64_t a1)
{
  v2 = sub_1ABB5C8C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB5712C(uint64_t a1)
{
  v2 = sub_1ABB5C870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57168(uint64_t a1)
{
  v2 = sub_1ABB5C870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB571A4(uint64_t a1)
{
  v2 = sub_1ABB5C81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB571E0(uint64_t a1)
{
  v2 = sub_1ABB5C81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB5721C(uint64_t a1)
{
  v2 = sub_1ABB5CA68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57258(uint64_t a1)
{
  v2 = sub_1ABB5CA68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB57294(uint64_t a1)
{
  v2 = sub_1ABB5C9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB572D0(uint64_t a1)
{
  v2 = sub_1ABB5C9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB57310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB56DA4(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_1ABB5733C(uint64_t a1)
{
  v2 = sub_1ABB5C96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB57378(uint64_t a1)
{
  v2 = sub_1ABB5C96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1ABB573B4(uint64_t a1)
{
  v2 = sub_1ABB5CABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB573F0(uint64_t a1)
{
  v2 = sub_1ABB5CABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.DefaultResolverInteractionsView.CandidateType.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1ABA7BCA8();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  sub_1ABAD219C(&qword_1EB4D34B0, &qword_1ABF3C508);
  sub_1ABA7BB64();
  v96 = v26;
  v97 = v25;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v27);
  sub_1ABA7FBE0();
  v95 = v28;
  v84[5] = sub_1ABAD219C(&qword_1EB4D34B8, &qword_1ABF3C510);
  sub_1ABA7BB64();
  v84[4] = v29;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v30);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v31);
  v84[2] = sub_1ABAD219C(&qword_1EB4D34C0, &qword_1ABF3C518);
  sub_1ABA7BB64();
  v84[1] = v32;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v33);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v34);
  v84[8] = sub_1ABAD219C(&qword_1EB4D34C8, &qword_1ABF3C520);
  sub_1ABA7BB64();
  v84[7] = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v37);
  v84[11] = sub_1ABAD219C(&qword_1EB4D34D0, &qword_1ABF3C528);
  sub_1ABA7BB64();
  v84[10] = v38;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v39);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v40);
  sub_1ABAD219C(&qword_1EB4D34D8, &qword_1ABF3C530);
  sub_1ABA7BB64();
  v93 = v42;
  v94 = v41;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v43);
  sub_1ABA7FBE0();
  v92 = v44;
  v84[14] = sub_1ABAD219C(&qword_1EB4D34E0, &qword_1ABF3C538);
  sub_1ABA7BB64();
  v84[13] = v45;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v46);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v47);
  sub_1ABAD219C(&qword_1EB4D34E8, &qword_1ABF3C540);
  sub_1ABA7BB64();
  v85 = v49;
  v86 = v48;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v50);
  sub_1ABA7FBE0();
  sub_1ABA8147C(v51);
  sub_1ABAD219C(&qword_1EB4D34F0, &qword_1ABF3C548);
  sub_1ABA7BB64();
  v88 = v53;
  v89 = v52;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v54);
  sub_1ABA7FBE0();
  v87 = v55;
  sub_1ABAD219C(&qword_1EB4D34F8, &qword_1ABF3C550);
  sub_1ABA7BB64();
  v90 = v57;
  v91 = v56;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v58);
  v60 = v84 - v59;
  sub_1ABAD219C(&qword_1EB4D3500, &qword_1ABF3C558);
  sub_1ABA7BB64();
  v100 = v61;
  v101 = v62;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v63);
  v65 = v84 - v64;
  v66 = *v20;
  v98 = *(v20 + 1);
  v68 = *(v20 + 2);
  v67 = *(v20 + 3);
  v69 = v20[32];
  sub_1ABAA02AC(v24);
  sub_1ABB5C720();
  v99 = v65;
  sub_1ABF252E4();
  if (!v69)
  {
    LOBYTE(v102) = 4;
    sub_1ABB5C96C();
    v75 = v99;
    v74 = v100;
    sub_1ABF24EC4();
    sub_1ABF24ED4();
    v76 = sub_1ABA8C53C();
    v77(v76);
    (*(v101 + 8))(v75, v74);
    goto LABEL_30;
  }

  if (v69 != 1)
  {
    if (v68 | v98 | v66 | v67)
    {
      v78 = v68 | v98 | v67;
      if (v66 != 1 || v78)
      {
        if (v66 != 2 || v78)
        {
          if (v66 != 3 || v78)
          {
            if (v66 != 4 || v78)
            {
              if (v66 != 5 || v78)
              {
                if (v66 != 6 || v78)
                {
                  LOBYTE(v102) = 8;
                  sub_1ABB5C81C();
                  sub_1ABAA281C(&_s13CandidateTypeO19PlacemarkCodingKeysON, &v102);
                  v81 = sub_1ABAB5C74();
                  v83 = &v104;
                }

                else
                {
                  LOBYTE(v102) = 7;
                  sub_1ABB5C870();
                  sub_1ABAA281C(&_s13CandidateTypeO16PersonCodingKeysON, &v102);
                  v81 = sub_1ABAB5C74();
                  v83 = v103;
                }
              }

              else
              {
                LOBYTE(v102) = 6;
                sub_1ABB5C8C4();
                sub_1ABAA281C(&_s13CandidateTypeO14FileCodingKeysON, &v102);
                v81 = sub_1ABAB5C74();
                v83 = &a11;
              }
            }

            else
            {
              LOBYTE(v102) = 5;
              sub_1ABB5C918();
              sub_1ABAA281C(&_s13CandidateTypeO13AppCodingKeysON, &v102);
              v81 = sub_1ABAB5C74();
              v83 = &a14;
            }
          }

          else
          {
            LOBYTE(v102) = 3;
            sub_1ABB5C9C0();
            sub_1ABAA281C(&_s13CandidateTypeO16SchemaCodingKeysON, &v102);
            v81 = sub_1ABAB5C74();
            v83 = &a17;
          }

          v82(v81, *(v83 - 32));
          goto LABEL_29;
        }

        LOBYTE(v102) = 2;
        sub_1ABB5CA14();
        sub_1ABAA281C(&_s13CandidateTypeO16DeviceCodingKeysON, &v102);
        v80 = v85;
        v79 = v86;
      }

      else
      {
        LOBYTE(v102) = 1;
        sub_1ABB5CA68();
        v68 = v87;
        v20 = v99;
        v67 = v100;
        sub_1ABF24EC4();
        v80 = v88;
        v79 = v89;
      }

      (*(v80 + 8))(v68, v79);
    }

    else
    {
      LOBYTE(v102) = 0;
      sub_1ABB5CABC();
      v20 = v99;
      v67 = v100;
      sub_1ABF24EC4();
      (*(v90 + 8))(v60, v91);
    }

LABEL_29:
    (*(v101 + 8))(v20, v67);
    goto LABEL_30;
  }

  LOBYTE(v102) = 9;
  sub_1ABB5C774();
  v71 = v99;
  v70 = v100;
  sub_1ABF24EC4();
  v102 = v66;
  v103[0] = v98;
  v103[1] = v68;
  v103[2] = v67;
  sub_1ABB5C7C8();
  sub_1ABF24F84();
  v72 = sub_1ABA7AC64();
  v73(v72);
  (*(v101 + 8))(v71, v70);
LABEL_30:
  sub_1ABA7BC90();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  if (!*(v1 + 32))
  {
    MEMORY[0x1AC5AA8A0](4);
    if (!v3)
    {
      return sub_1ABF25254();
    }

    sub_1ABF25254();
    sub_1ABAA0B5C();
    goto LABEL_6;
  }

  v5 = v1[2];
  v4 = v1[3];
  if (*(v1 + 32) == 1)
  {
    MEMORY[0x1AC5AA8A0](9);
    sub_1ABAA0B5C();
    sub_1ABF23D34();
LABEL_6:

    return sub_1ABF23D34();
  }

  if (v5 | v3 | v2 | v4)
  {
    v7 = v5 | v3 | v4;
    if (v2 == 1 && v7 == 0)
    {
      v9 = 1;
    }

    else if (v2 != 2 || v7)
    {
      if (v2 != 3 || v7)
      {
        if (v2 != 4 || v7)
        {
          if (v2 != 5 || v7)
          {
            if (v2 != 6 || v7)
            {
              v9 = 8;
            }

            else
            {
              v9 = 7;
            }
          }

          else
          {
            v9 = 6;
          }
        }

        else
        {
          v9 = 5;
        }
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 0;
  }

  return MEMORY[0x1AC5AA8A0](v9);
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateType.hashValue.getter()
{
  v1 = *(v0 + 32);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  v7 = v1;
  sub_1ABA7AB5C();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(v4);
  return sub_1ABF25294();
}

void ViewService.DefaultResolverInteractionsView.CandidateType.init(from:)()
{
  sub_1ABA7BCA8();
  v2 = v1;
  v132 = v3;
  v124 = sub_1ABAD219C(&qword_1EB4D3568, &qword_1ABF3C560);
  sub_1ABA7BB64();
  v126 = v4;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA7FBE0();
  v131 = v6;
  sub_1ABAD219C(&qword_1EB4D3570, &qword_1ABF3C568);
  sub_1ABA7BB64();
  v122 = v8;
  v123 = v7;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA7FBE0();
  v130 = v10;
  sub_1ABAD219C(&qword_1EB4D3578, &qword_1ABF3C570);
  sub_1ABA7BB64();
  v120 = v12;
  v121 = v11;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v13);
  sub_1ABA7FBE0();
  v134 = v14;
  v119 = sub_1ABAD219C(&qword_1EB4D3580, &qword_1ABF3C578);
  sub_1ABA7BB64();
  v118 = v15;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA7FBE0();
  v133 = v17;
  v115 = sub_1ABAD219C(&qword_1EB4D3588, &qword_1ABF3C580);
  sub_1ABA7BB64();
  v116 = v18;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v19);
  sub_1ABA7FBE0();
  v129 = v20;
  v117 = sub_1ABAD219C(&qword_1EB4D3590, &qword_1ABF3C588);
  sub_1ABA7BB64();
  v125 = v21;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v22);
  sub_1ABA7FBE0();
  v135 = v23;
  v114 = sub_1ABAD219C(&qword_1EB4D3598, &qword_1ABF3C590);
  sub_1ABA7BB64();
  v113 = v24;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v25);
  sub_1ABA7FBE0();
  v128 = v26;
  v112 = sub_1ABAD219C(&qword_1EB4D35A0, &qword_1ABF3C598);
  sub_1ABA7BB64();
  v111 = v27;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA7FBE0();
  v127 = v29;
  v110 = sub_1ABAD219C(&qword_1EB4D35A8, &qword_1ABF3C5A0);
  sub_1ABA7BB64();
  v109 = v30;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v102 - v32;
  v34 = sub_1ABAD219C(&qword_1EB4D35B0, &qword_1ABF3C5A8);
  sub_1ABA7BB64();
  v108 = v35;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v102 - v37;
  v39 = sub_1ABAD219C(&qword_1EB4D35B8, &unk_1ABF3C5B0);
  sub_1ABA7BB64();
  v41 = v40;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v102 - v43;
  v136 = v2;
  sub_1ABAA02AC(v2);
  sub_1ABB5C720();
  sub_1ABF252C4();
  if (v0)
  {
    goto LABEL_8;
  }

  v106 = v38;
  v105 = v34;
  v107 = v33;
  v46 = v134;
  v45 = v135;
  v47 = v133;
  v138 = v41;
  sub_1ABF24EA4();
  sub_1ABAD4EA4();
  if (v49 == v50 >> 1)
  {
LABEL_7:
    v63 = sub_1ABF24B44();
    swift_allocError();
    v65 = v64;
    sub_1ABAD219C(&qword_1EB4D0768, &qword_1ABF31050);
    *v65 = &type metadata for ViewService.DefaultResolverInteractionsView.CandidateType;
    sub_1ABF24DA4();
    sub_1ABF24B34();
    (*(*(v63 - 8) + 104))(v65, *MEMORY[0x1E69E6AF8], v63);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v138 + 8))(v44, v39);
LABEL_8:
    v66 = v136;
LABEL_9:
    sub_1ABA84B54(v66);
    sub_1ABA7BC90();
    return;
  }

  v104 = 0;
  if (v49 < (v50 >> 1))
  {
    v103 = *(v48 + v49);
    sub_1ABAD4E90();
    v52 = v51;
    v54 = v53;
    swift_unknownObjectRelease();
    if (v52 == v54 >> 1)
    {
      v55 = v132;
      switch(v103)
      {
        case 1:
          LOBYTE(v137[0]) = 1;
          sub_1ABB5CA68();
          v45 = v107;
          sub_1ABAA378C(&_s13CandidateTypeO19PrimitiveCodingKeysON, v137);
          swift_unknownObjectRelease();
          v78 = sub_1ABA80580();
          v79(v78, v110);
          v80 = sub_1ABA8E124();
          v81(v80);
          sub_1ABAA3F88();
          v60 = 1;
          goto LABEL_20;
        case 2:
          LOBYTE(v137[0]) = 2;
          sub_1ABB5CA14();
          sub_1ABAA378C(&_s13CandidateTypeO16DeviceCodingKeysON, v137);
          swift_unknownObjectRelease();
          v68 = sub_1ABA80580();
          v69(v68, v112);
          v70 = sub_1ABA8E124();
          v71(v70);
          v45 = 0;
          v61 = 0;
          v62 = 0;
          v60 = 2;
          goto LABEL_13;
        case 3:
          LOBYTE(v137[0]) = 3;
          sub_1ABB5C9C0();
          v45 = v128;
          sub_1ABAA378C(&_s13CandidateTypeO16SchemaCodingKeysON, v137);
          swift_unknownObjectRelease();
          v72 = sub_1ABA80580();
          v73(v72, v114);
          v74 = sub_1ABA8E124();
          v75(v74);
          sub_1ABAA3F88();
          v60 = 3;
          goto LABEL_20;
        case 4:
          LOBYTE(v137[0]) = 4;
          sub_1ABB5C96C();
          sub_1ABAA378C(&_s13CandidateTypeO14ToolCodingKeysON, v137);
          v67 = sub_1ABF24DB4();
          v66 = v136;
          v60 = v67;
          v45 = v92;
          swift_unknownObjectRelease();
          v93 = sub_1ABA8CC7C();
          v94(v93);
          v95 = sub_1ABA8E124();
          v96(v95);
          v61 = 0;
          v62 = 0;
          v97 = 0;
          goto LABEL_21;
        case 5:
          LOBYTE(v137[0]) = 5;
          sub_1ABB5C918();
          v45 = v129;
          sub_1ABAA378C(&_s13CandidateTypeO13AppCodingKeysON, v137);
          swift_unknownObjectRelease();
          v82 = sub_1ABA80580();
          v83(v82, v115);
          v84 = sub_1ABA8E124();
          v85(v84);
          sub_1ABAA3F88();
          v60 = 4;
          goto LABEL_20;
        case 6:
          LOBYTE(v137[0]) = 6;
          sub_1ABB5C8C4();
          v45 = v47;
          sub_1ABA974A0(&_s13CandidateTypeO14FileCodingKeysON, v137);
          swift_unknownObjectRelease();
          v86 = sub_1ABA80580();
          v87(v86, v119);
          v88 = sub_1ABA8E124();
          v89(v88);
          sub_1ABAA3F88();
          v60 = 5;
          goto LABEL_20;
        case 7:
          LOBYTE(v137[0]) = 7;
          sub_1ABB5C870();
          sub_1ABA974A0(&_s13CandidateTypeO16PersonCodingKeysON, v137);
          swift_unknownObjectRelease();
          (*(v120 + 8))(v46, v121);
          v76 = sub_1ABA8E124();
          v77(v76);
          sub_1ABAA3F88();
          v60 = 6;
          goto LABEL_20;
        case 8:
          LOBYTE(v137[0]) = 8;
          sub_1ABB5C81C();
          v45 = v130;
          sub_1ABAA378C(&_s13CandidateTypeO19PlacemarkCodingKeysON, v137);
          swift_unknownObjectRelease();
          (*(v122 + 8))(v45, v123);
          v90 = sub_1ABA8E124();
          v91(v90);
          sub_1ABAA3F88();
          v60 = 7;
          goto LABEL_20;
        case 9:
          LOBYTE(v137[0]) = 9;
          sub_1ABB5C774();
          sub_1ABA974A0(&_s13CandidateTypeO16CustomCodingKeysON, v137);
          sub_1ABB5CB10();
          sub_1ABF24E64();
          v66 = v136;
          swift_unknownObjectRelease();
          v98 = sub_1ABA96F6C();
          v99(v98);
          v100 = sub_1ABA8E124();
          v101(v100);
          v60 = v137[0];
          v45 = v137[1];
          v97 = 1;
          v61 = v137[2];
          v62 = v137[3];
          goto LABEL_21;
        default:
          LOBYTE(v137[0]) = 0;
          sub_1ABB5CABC();
          sub_1ABAA378C(&_s13CandidateTypeO17UnknownCodingKeysON, v137);
          swift_unknownObjectRelease();
          v56 = sub_1ABA80580();
          v57(v56, v105);
          v58 = sub_1ABA8E124();
          v59(v58);
          v60 = 0;
          v45 = 0;
          v61 = 0;
          v62 = 0;
LABEL_13:
          v97 = 2;
LABEL_20:
          v66 = v136;
LABEL_21:
          *v55 = v60;
          *(v55 + 8) = v45;
          *(v55 + 16) = v61;
          *(v55 + 24) = v62;
          *(v55 + 32) = v97;
          break;
      }

      goto LABEL_9;
    }

    goto LABEL_7;
  }

  __break(1u);
}

uint64_t sub_1ABB58B4C(uint64_t a1)
{
  v2 = *(v1 + 32);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  v8 = v2;
  sub_1ABF25234();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(v5);
  return sub_1ABF25294();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.type.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  v5 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 64);
  *(a1 + 32) = v6;
  return sub_1ABAFF488(v2, v3, v4, v5, v6);
}

double ViewService.DefaultResolverInteractionsView.CandidateID.init(id:bundleId:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  result = 0.0;
  *(a5 + 32) = 0u;
  *(a5 + 48) = 0u;
  *(a5 + 64) = 2;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.init(id:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a3;
  v7 = a3[1];
  v10 = a3[2];
  v9 = a3[3];
  v11 = *(a3 + 32);
  if (!*(a3 + 32))
  {
    if (v7)
    {

      v13 = v8;
      v14 = v7;
      goto LABEL_7;
    }

LABEL_6:

    v13 = 0;
    v14 = 0xE000000000000000;
    goto LABEL_7;
  }

  if (v11 != 1)
  {
    goto LABEL_6;
  }

  v13 = v10;
  v14 = v9;
LABEL_7:
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = v13;
  *(a4 + 24) = v14;
  *(a4 + 32) = v8;
  *(a4 + 40) = v7;
  *(a4 + 48) = v10;
  *(a4 + 56) = v9;
  *(a4 + 64) = v11;
  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.CandidateID.== infix(_:_:)(uint64_t a1)
{
  v2 = sub_1ABA7E428(a1);
  v6 = *(v5 + 24);
  v41 = *(v5 + 40);
  v42 = *(v5 + 32);
  v7 = *(v5 + 56);
  v40 = *(v5 + 48);
  v8 = *(v5 + 64);
  v9 = *(v4 + 16);
  v10 = *(v4 + 24);
  v11 = *(v4 + 32);
  v12 = *(v4 + 40);
  v13 = *(v4 + 48);
  v14 = *(v4 + 56);
  v15 = v2 == *v4 && v3 == *(v4 + 8);
  v39 = *(v4 + 64);
  if (v15 || (sub_1ABF25054()) && (v1 == v9 ? (v16 = v6 == v10) : (v16 = 0), v16 || (sub_1ABA7D000(), (sub_1ABF25054())))
  {
    v45[0] = v42;
    v45[1] = v41;
    v45[2] = v40;
    v45[3] = v7;
    v46 = v8;
    v43[0] = v11;
    v43[1] = v12;
    v43[2] = v13;
    v43[3] = v14;
    v44 = v39;
    sub_1ABB5E33C();
    sub_1ABAFF488(v17, v18, v19, v20, v21);
    v22 = sub_1ABAB50AC();
    sub_1ABAFF488(v22, v23, v24, v25, v26);
    v27 = static ViewService.DefaultResolverInteractionsView.CandidateType.== infix(_:_:)(v45, v43);
    v28 = sub_1ABAB50AC();
    sub_1ABAFF544(v28, v29, v30, v31, v32);
    sub_1ABB5E33C();
    sub_1ABAFF544(v33, v34, v35, v36, v37);
  }

  else
  {
    v27 = 0;
  }

  return v27 & 1;
}

uint64_t sub_1ABB58DF0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1ABF25054() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
    if (v6 || (sub_1ABF25054() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1701869940 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = sub_1ABF25054();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1ABB58EF8(unsigned __int8 a1)
{
  sub_1ABA7AB5C();
  MEMORY[0x1AC5AA8A0](a1);
  return sub_1ABF25294();
}

uint64_t sub_1ABB58F38(char a1)
{
  if (!a1)
  {
    return 25705;
  }

  if (a1 == 1)
  {
    return 0x6449656C646E7562;
  }

  return 1701869940;
}

uint64_t sub_1ABB58F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1ABF25234();
  a4(v8, v6);
  return sub_1ABF25294();
}

uint64_t sub_1ABB58FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1ABB58DF0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1ABB58FF8(uint64_t a1)
{
  v2 = sub_1ABB5CB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1ABB59034(uint64_t a1)
{
  v2 = sub_1ABB5CB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ViewService.DefaultResolverInteractionsView.CandidateID.encode(to:)()
{
  sub_1ABA7BCA8();
  v4 = v3;
  v5 = sub_1ABAD219C(&qword_1EB4D35C8, &qword_1ABF3C5C0);
  sub_1ABA7BB64();
  v7 = v6;
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABB5E300();
  v11 = *(v0 + 40);
  v12 = *(v0 + 32);
  v9 = *(v0 + 56);
  v10 = *(v0 + 48);
  v13 = *(v0 + 64);
  sub_1ABAA02AC(v4);
  sub_1ABB5CB64();
  sub_1ABA8C6FC();
  sub_1ABF252E4();
  sub_1ABF24F34();
  if (!v1)
  {
    sub_1ABA7BF34();
    sub_1ABF24F34();
    sub_1ABAFF488(v12, v11, v10, v9, v13);
    sub_1ABB5CBB8();
    sub_1ABA7BF34();
    sub_1ABF24F84();
    sub_1ABAFF544(v12, v11, v10, v9, v13);
  }

  (*(v7 + 8))(v2, v5);
  sub_1ABA7BC90();
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.hash(into:)(uint64_t a1)
{
  sub_1ABF23D34();
  sub_1ABF23D34();
  return ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(a1);
}

uint64_t ViewService.DefaultResolverInteractionsView.CandidateID.hashValue.getter()
{
  sub_1ABF25234();
  sub_1ABAA0B5C();
  sub_1ABF23D34();
  sub_1ABF23D34();
  ViewService.DefaultResolverInteractionsView.CandidateType.hash(into:)(v1);
  return sub_1ABF25294();
}

void ViewService.DefaultResolverInteractionsView.CandidateID.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1ABA7BCA8();
  v25 = v24;
  v27 = v26;
  sub_1ABAD219C(&qword_1EB4D35E0, &qword_1ABF3C5C8);
  sub_1ABA7BB64();
  sub_1ABA7BB88();
  MEMORY[0x1EEE9AC00](v28);
  sub_1ABA93E20(v25, v25[3]);
  sub_1ABB5CB64();
  sub_1ABF252C4();
  if (v23)
  {
    sub_1ABA84B54(v25);
  }

  else
  {
    v29 = sub_1ABA8B854();
    v31 = v30;
    v42 = v29;
    LOBYTE(v44[0]) = 1;
    v40 = sub_1ABA8B854();
    v41 = v32;
    sub_1ABB5CC0C();
    sub_1ABF24E64();
    v33 = sub_1ABA7ABFC();
    v34(v33);
    v39 = v46;
    v38 = v47;
    v35 = v49;
    v37 = v48;
    v36 = v50;
    v43[0] = v42;
    v43[1] = v31;
    v43[2] = v40;
    v43[3] = v41;
    v43[4] = v46;
    v43[5] = v47;
    v43[6] = v48;
    v43[7] = v49;
    LOBYTE(v43[8]) = v50;
    memcpy(v27, v43, 0x41uLL);
    sub_1ABB24348(v43, v44);
    sub_1ABA84B54(v25);
    v44[0] = v42;
    v44[1] = v31;
    v44[2] = v40;
    v44[3] = v41;
    v44[4] = v39;
    v44[5] = v38;
    v44[6] = v37;
    v44[7] = v35;
    v45 = v36;
    sub_1ABB243A4(v44);
  }

  sub_1ABA7BC90();
}

uint64_t sub_1ABB5960C(uint64_t a1)
{
  sub_1ABF25234();
  ViewService.DefaultResolverInteractionsView.CandidateID.hash(into:)(v2);
  return sub_1ABF25294();
}

uint64_t ViewService.DefaultResolverInteractionsView.InteractionSet.candidateInteractions.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.InteractionSet.tupleInteractions.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.InteractionSet.init(candidateInteractions:tupleInteractions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.occurredAt.getter()
{
  v2 = sub_1ABAA0880();
  v3 = *(type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(v2) + 24);
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  v6 = *(v5 + 16);

  return v6(v0, v1 + v3, v4);
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.tuple.getter()
{
  type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.tupleInteractionUserAlignment.getter()
{
  v2 = sub_1ABAA0880();
  result = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(v2);
  *v0 = *(v1 + *(result + 32));
  return result;
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.candidateInteractions.getter()
{
  type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
}

uint64_t ViewService.DefaultResolverInteractionsView.Event.init(eventId:originId:occurredAt:tuple:tupleInteractionUserAlignment:candidateInteractions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v12 = *a6;
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  v13 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  v14 = v13[6];
  sub_1ABF21EB4();
  sub_1ABA7BBB0();
  result = (*(v15 + 32))(&a8[v14], a4);
  *&a8[v13[7]] = a5;
  a8[v13[8]] = v12;
  *&a8[v13[9]] = a7;
  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Event.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1ABA81488();
  v5 = *(v4 + 8) == *(v2 + 8) && *(v3 + 16) == *(v2 + 16);
  if (!v5 && (sub_1ABF25054() & 1) == 0)
  {
    return 0;
  }

  v6 = type metadata accessor for ViewService.DefaultResolverInteractionsView.Event(0);
  if ((sub_1ABF21E54() & 1) == 0 || (sub_1ABB49A30(*(v3 + v6[7]), *(v2 + v6[7])) & 1) == 0 || *(v3 + v6[8]) != *(v2 + v6[8]))
  {
    return 0;
  }

  v7 = v6[9];
  v8 = *(v3 + v7);
  v9 = *(v2 + v7);

  return sub_1ABB5C470(v8, v9);
}

void sub_1ABB599B8()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D37E8, &qword_1ABF3D850);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D37F0, &unk_1ABF61890);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB59C20()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D37D8, &unk_1ABF3D840);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D37E0, &unk_1ABF61830);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB59E88()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D37C8, &qword_1ABF3D830);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D37D0, &qword_1ABF3D838);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A0F0()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D37B8, &unk_1ABF3D820);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D37C0, &unk_1ABF61990);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A358()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D37A8, &qword_1ABF3D810);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D37B0, &qword_1ABF3D818);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A5C0()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D3798, &unk_1ABF3D800);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D37A0, &unk_1ABF617C0);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5A828()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA972D4();
  v10 = sub_1ABAD219C(&qword_1EB4D3788, &unk_1ABF3D7F0);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  sub_1ABAA06BC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA972D4();
  v57 = v13;
  v58 = v4;
  if (v6 != v4 && (sub_1ABA8BC40(), v14))
  {
    v15 = 0;
    v54 = v6;
    v16 = v6 + 64;
    sub_1ABA8FEA0();
    sub_1ABAB5464();
    while (v17)
    {
      sub_1ABAA2514();
      v62 = v18;
LABEL_11:
      v22 = sub_1ABAA1734();
      v23(v22);
      v24 = sub_1ABAD219C(&qword_1EB4D3790, &unk_1ABF61850);
      v25 = sub_1ABAA14C8(v24);
      v26(v25);
      v27 = sub_1ABA8C548();
      sub_1ABA7B9B4(v27, v28, v29, v30);

LABEL_12:
      sub_1ABAE2F1C();
      v31 = sub_1ABA8B644();
      v32 = sub_1ABAA0A38();
      if (sub_1ABA7E1E0(v32, v33, v31) == 1)
      {
        goto LABEL_18;
      }

      v34 = sub_1ABAB5638();
      v35(v34);
      v0 = sub_1ABA94FC8(v0, &unk_1ABF61850, v36, v37, v38, v39, v40, v41, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v51 = sub_1ABA8CA98();
        v52(v51);
        goto LABEL_18;
      }

      v44 = sub_1ABAB59F8();
      v45(v44);
      v46 = sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA03E8(v46);
      v47 = sub_1ABA9546C();
      (unk_1ABF61850)(v47);
      (unk_1ABF61850)(v2, v7);
      v17 = v63;
    }

    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v19 >= v1)
      {
        sub_1ABA8B644();
        v48 = sub_1ABAA0A38();
        sub_1ABA7B9B4(v48, v49, 1, v50);
        v62 = 0;
        goto LABEL_12;
      }

      ++v15;
      if (*(v16 + 8 * v19))
      {
        sub_1ABA9A2F8();
        v62 = v20;
        v15 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5ACA8()
{
  sub_1ABA7E2A8();
  v4 = v3;
  v6 = v5;
  v7 = sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7AC18();
  MEMORY[0x1EEE9AC00](v9);
  sub_1ABA972D4();
  v10 = sub_1ABAD219C(&qword_1EB4D3778, &unk_1ABF3D7E0);
  v11 = sub_1ABA7AB80(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1ABA7AC18();
  sub_1ABAA06BC();
  MEMORY[0x1EEE9AC00](v12);
  sub_1ABA972D4();
  v57 = v13;
  v58 = v4;
  if (v6 != v4 && (sub_1ABA8BC40(), v14))
  {
    v15 = 0;
    v54 = v6;
    v16 = v6 + 64;
    sub_1ABA8FEA0();
    sub_1ABAB5464();
    while (v17)
    {
      sub_1ABAA2514();
      v62 = v18;
LABEL_11:
      v22 = sub_1ABAA1734();
      v23(v22);
      v24 = sub_1ABAD219C(&qword_1EB4D3780, &unk_1ABF61800);
      v25 = sub_1ABAA14C8(v24);
      v26(v25);
      v27 = sub_1ABA8C548();
      sub_1ABA7B9B4(v27, v28, v29, v30);

LABEL_12:
      sub_1ABAE2F1C();
      v31 = sub_1ABA8B644();
      v32 = sub_1ABAA0A38();
      if (sub_1ABA7E1E0(v32, v33, v31) == 1)
      {
        goto LABEL_18;
      }

      v34 = sub_1ABAB5638();
      v35(v34);
      v0 = sub_1ABA94FC8(v0, &unk_1ABF61800, v36, v37, v38, v39, v40, v41, v53, v54, v55, v56, v57, v58, v59, v60, v61, v62);
      v43 = v42;

      if ((v43 & 1) == 0)
      {
        v51 = sub_1ABA8CA98();
        v52(v51);
        goto LABEL_18;
      }

      v44 = sub_1ABAB59F8();
      v45(v44);
      v46 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA03E8(v46);
      v47 = sub_1ABA9546C();
      (unk_1ABF61800)(v47);
      (unk_1ABF61800)(v2, v7);
      v17 = v63;
    }

    while (1)
    {
      v19 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v19 >= v1)
      {
        sub_1ABA8B644();
        v48 = sub_1ABAA0A38();
        sub_1ABA7B9B4(v48, v49, 1, v50);
        v62 = 0;
        goto LABEL_12;
      }

      ++v15;
      if (*(v16 + 8 * v19))
      {
        sub_1ABA9A2F8();
        v62 = v20;
        v15 = v21;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5AFB8()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D1710, &qword_1ABF338A0);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D3760, &qword_1ABF3D7D0);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D3768, &qword_1ABF3D7D8);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3770, &qword_1EB4D1710, &qword_1ABF338A0);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B220()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D3750, &unk_1ABF61910);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D3758, &unk_1ABF3D7C0);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B488()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D3740, &qword_1ABF3D7A8);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D3748, &unk_1ABF3D7B0);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B6F0()
{
  sub_1ABA7E2A8();
  sub_1ABA81488();
  sub_1ABAD219C(&qword_1EB4D16F0, &qword_1ABF33880);
  sub_1ABA7BB64();
  MEMORY[0x1EEE9AC00](v4);
  sub_1ABA9482C();
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABAA5750(v6, v7, v8, v9, v10, v11, v12, v13, v40);
  v14 = sub_1ABAD219C(&qword_1EB4D3728, &qword_1ABF618E0);
  v15 = sub_1ABA7AB80(v14);
  MEMORY[0x1EEE9AC00](v15);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v16);
  sub_1ABA992E4();
  if (!v17 && (sub_1ABA97A24(), v17))
  {
    sub_1ABA8F100();
    while (v1)
    {
      sub_1ABA815F4();
LABEL_11:
      v19 = sub_1ABA7EF18();
      v20(v19);
      v21 = sub_1ABAD219C(&qword_1EB4D3730, &qword_1ABF3D7A0);
      v22 = sub_1ABA80834(v21);
      v23(v22);
      v24 = sub_1ABAA521C();
      sub_1ABB5E2E8(v24, v25, v26, v27);
LABEL_12:
      sub_1ABAA3BF8();
      sub_1ABAE2F1C();
      v28 = sub_1ABA885C8();
      sub_1ABAA5F50(v28);
      if (v17)
      {
        goto LABEL_19;
      }

      v29 = sub_1ABA7BF14();
      v30(v29);
      sub_1ABA96018();
      sub_1ABAFF5B8();
      if ((v31 & 1) == 0)
      {
        v38 = sub_1ABA83FB0();
        v39(v38);
        goto LABEL_19;
      }

      v32 = sub_1ABA7D300();
      v33(v32);
      v34 = sub_1ABB5E224(&qword_1EB4D3738, &qword_1EB4D16F0, &qword_1ABF33880);
      sub_1ABAA2BF8(v34);
      v35 = sub_1ABA83714();
      v3(v35);
      v36 = sub_1ABA7AC64();
      v3(v36);
      if ((v41 & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    while (!__OFADD__(v0, 1))
    {
      if (v0 + 1 >= v2)
      {
        v37 = sub_1ABA885C8();
        sub_1ABA90648(v37);
        goto LABEL_12;
      }

      sub_1ABA95254();
      if (v18)
      {
        sub_1ABA932E4();
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }
}

void sub_1ABB5B958(uint64_t a1, uint64_t a2)
{
  sub_1ABB5E318();
  if (v3 != v4 && (sub_1ABAABC68(), sub_1ABAA2FD8(), v5))
  {
    v6 = 0;
    sub_1ABA7D32C();
    v9 = v8 & v7;
    sub_1ABAA1BB4();
    while (v9)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v10) != 9)
      {
        sub_1ABB5E330();
        v15 = sub_1ABAFF5B8();
        if (v16)
        {
          sub_1ABAA1EA4(v15);
          if (v5)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v12)
      {
        sub_1ABA96BF4();
        v9 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BA38(uint64_t a1, uint64_t a2)
{
  sub_1ABB5E318();
  if (v3 != v4 && (sub_1ABAABC68(), sub_1ABAA2FD8(), v5))
  {
    v6 = 0;
    sub_1ABA7D32C();
    v9 = v8 & v7;
    sub_1ABAA1BB4();
    while (v9)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v10) != 7)
      {
        sub_1ABB5E330();
        v15 = sub_1ABAFF5B8();
        if (v16)
        {
          sub_1ABAA1EA4(v15);
          if (v5)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v12)
      {
        sub_1ABA96BF4();
        v9 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BB00(uint64_t a1, uint64_t a2)
{
  sub_1ABB5E318();
  if (v3 != v4 && (sub_1ABAABC68(), sub_1ABAA2FD8(), v5))
  {
    v6 = 0;
    sub_1ABA7D32C();
    v9 = v8 & v7;
    sub_1ABAA1BB4();
    while (v9)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v10) != 5)
      {
        sub_1ABB5E330();
        v15 = sub_1ABAFF5B8();
        if (v16)
        {
          sub_1ABAA1EA4(v15);
          if (v5)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v12)
      {
        sub_1ABA96BF4();
        v9 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BBC8(uint64_t a1, uint64_t a2)
{
  sub_1ABB5E318();
  if (v3 != v4 && (sub_1ABAABC68(), sub_1ABAA2FD8(), v5))
  {
    v6 = 0;
    sub_1ABA7D32C();
    v9 = v8 & v7;
    sub_1ABAA1BB4();
    while (v9)
    {
      sub_1ABA82760();
LABEL_12:
      if (sub_1ABAB5818(v10) != 8)
      {
        sub_1ABB5E330();
        v15 = sub_1ABAFF5B8();
        if (v16)
        {
          sub_1ABAA1EA4(v15);
          if (v5)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_15;
      }

      sub_1ABAB6898();
      if (v12)
      {
        sub_1ABA96BF4();
        v9 = v14 & v13;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BC90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1ABB5E318();
  if (v3 != v4 && (v5 = v3, sub_1ABAA2FD8(), v7))
  {
    v8 = v6;
    v9 = 0;
    sub_1ABA7D32C();
    v12 = v11 & v10;
    v14 = (v13 + 63) >> 6;
    while (v12)
    {
      v15 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      if (*(*(v5 + 48) + (v15 | (v9 << 6))) != 4)
      {
        v19 = v8();
        if (v20)
        {
          sub_1ABAA1EA4(v19);
          if (v7)
          {
            continue;
          }
        }
      }

      goto LABEL_15;
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {
        goto LABEL_15;
      }

      ++v16;
      if (*(v5 + 64 + 8 * v9))
      {
        sub_1ABA96BF4();
        v12 = v18 & v17;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:
    sub_1ABA82A2C();
  }
}

void sub_1ABB5BD84()
{
  sub_1ABA7E2A8();
  sub_1ABAABC68();
  v2 = type metadata accessor for CodableLocation(0);
  v46 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1ABA7AC18();
  v47 = v3 - v4;
  MEMORY[0x1EEE9AC00](v5);
  sub_1ABA972D4();
  v45 = v6;
  v7 = sub_1ABAD219C(&qword_1EB4D3718, &qword_1ABF3D790);
  v8 = sub_1ABA7AB80(v7);
  MEMORY[0x1EEE9AC00](v8);
  sub_1ABA7E40C();
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - v11;
  if (v0 == v1 || *(v0 + 16) != *(v1 + 16))
  {
LABEL_17:
    sub_1ABA97F14();
    sub_1ABA7BC1C();
  }

  else
  {
    v43 = v0;
    v44 = v10;
    v13 = 0;
    v14 = v0 + 64;
    sub_1ABA8FEA0();
    v17 = v16 & v15;
    v19 = (v18 + 63) >> 6;
    v48 = v12;
    while (v17)
    {
      sub_1ABAA2514();
      v49 = v20;
      v22 = v21 | (v13 << 6);
      v23 = v44;
LABEL_11:
      v28 = v43;
      v29 = v45;
      sub_1ABAFEEF4(*(v43 + 48) + *(v46 + 72) * v22, v45);
      v30 = *(*(v28 + 56) + 8 * v22);
      v31 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
      v32 = *(v31 + 48);
      sub_1ABB5E1C0(v29, v23);
      *(v23 + v32) = v30;
      sub_1ABA7B9B4(v23, 0, 1, v31);
      v12 = v48;
LABEL_12:
      sub_1ABAE2F1C();
      v33 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
      if (sub_1ABA7E1E0(v12, 1, v33) != 1)
      {
        v34 = *(v33 + 48);
        v35 = v47;
        sub_1ABB5E1C0(v12, v47);
        v36 = *&v12[v34];
        v37 = sub_1ABAF83B4();
        v39 = v38;
        sub_1ABAFEF58(v35);
        if (v39)
        {
          v40 = *(*(v1 + 56) + 8 * v37) == v36;
          v12 = v48;
          v17 = v49;
          if (v40)
          {
            continue;
          }
        }
      }

      goto LABEL_17;
    }

    v23 = v44;
    while (1)
    {
      v24 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v24 >= v19)
      {
        v41 = sub_1ABAD219C(&qword_1EB4D3720, &qword_1ABF3D798);
        sub_1ABA7B9B4(v23, 1, 1, v41);
        v49 = 0;
        goto LABEL_12;
      }

      ++v13;
      if (*(v14 + 8 * v24))
      {
        sub_1ABA9A2F8();
        v49 = v25;
        v22 = v27 | (v26 << 6);
        v13 = v26;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1ABB5C07C()
{
  sub_1ABA8BA68();
  if (v0 != v1 && (sub_1ABAA2FD8(), v3))
  {
    v4 = 0;
    v5 = v2 + 64;
    sub_1ABA7D32C();
    v8 = v7 & v6;
    v10 = (v9 + 63) >> 6;
    while (v8)
    {
      sub_1ABAA2514();
      v27 = v13;
LABEL_12:
      v17 = v12 | (v4 << 6);
      v18 = (*(v11 + 48) + 24 * v17);
      v20 = *v18;
      v19 = v18[1];
      v21 = *(*(v11 + 56) + 8 * v17);

      if (!v19)
      {
        goto LABEL_18;
      }

      sub_1ABAF8474(v20);
      v23 = v22;

      if ((v23 & 1) == 0)
      {

        goto LABEL_18;
      }

      sub_1ABD7AC08(v24, v21);
      v26 = v25;

      v8 = v27;
      if ((v26 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v10)
      {
        goto LABEL_18;
      }

      ++v14;
      if (*(v5 + 8 * v4))
      {
        sub_1ABA96BF4();
        v27 = v16 & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:
    sub_1ABA8D208();
  }
}

uint64_t sub_1ABB5C470(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    memcpy(__dst, (*(v3 + 48) + 72 * v12), sizeof(__dst));
    v13 = *(*(v3 + 56) + v12);
    v21 = *&__dst[16];
    v22 = *__dst;
    v19 = *&__dst[32];
    v20 = *&__dst[48];
    v14 = __dst[64];
    sub_1ABB24348(__dst, v23);
    v15 = *(&v22 + 1) == 0;
    if (*(&v22 + 1))
    {
      v25[0] = v22;
      v25[1] = v21;
      v25[2] = v19;
      v25[3] = v20;
      v26 = v14;
      v16 = sub_1ABAF84E4();
      v18 = v17;
      result = sub_1ABB243A4(v25);
      if ((v18 & 1) != 0 && v13 == *(*(a2 + 56) + v16))
      {
        continue;
      }
    }

    return v15;
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1ABB5C610()
{
  result = qword_1EB4D3488;
  if (!qword_1EB4D3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3488);
  }

  return result;
}

unint64_t sub_1ABB5C664()
{
  result = qword_1EB4D3498;
  if (!qword_1EB4D3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3498);
  }

  return result;
}

uint64_t sub_1ABB5C6B8(uint64_t a1)
{
  v2 = sub_1ABAD219C(&qword_1EB4D34A8, &qword_1ABF3C500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1ABB5C720()
{
  result = qword_1EB4D3508;
  if (!qword_1EB4D3508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3508);
  }

  return result;
}

unint64_t sub_1ABB5C774()
{
  result = qword_1EB4D3510;
  if (!qword_1EB4D3510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3510);
  }

  return result;
}

unint64_t sub_1ABB5C7C8()
{
  result = qword_1EB4D3518;
  if (!qword_1EB4D3518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3518);
  }

  return result;
}

unint64_t sub_1ABB5C81C()
{
  result = qword_1EB4D3520;
  if (!qword_1EB4D3520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3520);
  }

  return result;
}

unint64_t sub_1ABB5C870()
{
  result = qword_1EB4D3528;
  if (!qword_1EB4D3528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3528);
  }

  return result;
}

unint64_t sub_1ABB5C8C4()
{
  result = qword_1EB4D3530;
  if (!qword_1EB4D3530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3530);
  }

  return result;
}

unint64_t sub_1ABB5C918()
{
  result = qword_1EB4D3538;
  if (!qword_1EB4D3538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3538);
  }

  return result;
}

unint64_t sub_1ABB5C96C()
{
  result = qword_1EB4D3540;
  if (!qword_1EB4D3540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3540);
  }

  return result;
}

unint64_t sub_1ABB5C9C0()
{
  result = qword_1EB4D3548;
  if (!qword_1EB4D3548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3548);
  }

  return result;
}

unint64_t sub_1ABB5CA14()
{
  result = qword_1EB4D3550;
  if (!qword_1EB4D3550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3550);
  }

  return result;
}

unint64_t sub_1ABB5CA68()
{
  result = qword_1EB4D3558;
  if (!qword_1EB4D3558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3558);
  }

  return result;
}

unint64_t sub_1ABB5CABC()
{
  result = qword_1EB4D3560;
  if (!qword_1EB4D3560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3560);
  }

  return result;
}

unint64_t sub_1ABB5CB10()
{
  result = qword_1EB4D35C0;
  if (!qword_1EB4D35C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35C0);
  }

  return result;
}

unint64_t sub_1ABB5CB64()
{
  result = qword_1EB4D35D0;
  if (!qword_1EB4D35D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35D0);
  }

  return result;
}

unint64_t sub_1ABB5CBB8()
{
  result = qword_1EB4D35D8;
  if (!qword_1EB4D35D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35D8);
  }

  return result;
}

unint64_t sub_1ABB5CC0C()
{
  result = qword_1EB4D35E8;
  if (!qword_1EB4D35E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35E8);
  }

  return result;
}

unint64_t sub_1ABB5CC84()
{
  result = qword_1EB4D35F0;
  if (!qword_1EB4D35F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35F0);
  }

  return result;
}

unint64_t sub_1ABB5CCDC()
{
  result = qword_1EB4D35F8;
  if (!qword_1EB4D35F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D35F8);
  }

  return result;
}

unint64_t sub_1ABB5CD34()
{
  result = qword_1EB4D3600;
  if (!qword_1EB4D3600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3600);
  }

  return result;
}

unint64_t sub_1ABB5CD8C()
{
  result = qword_1EB4D3608;
  if (!qword_1EB4D3608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3608);
  }

  return result;
}

unint64_t sub_1ABB5CDE4()
{
  result = qword_1EB4D00F8;
  if (!qword_1EB4D00F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D00F8);
  }

  return result;
}

uint64_t sub_1ABB5CE70(uint64_t a1)
{
  result = sub_1ABF21EB4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1ABB5CF04(uint64_t a1)
{
  if ((*(a1 + 32) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 32) & 3;
  }
}

uint64_t sub_1ABB5CF20(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 33))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 32);
      if (v3 <= 2)
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

uint64_t sub_1ABB5CF60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1ABB5CFA8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
    *(result + 16) = 0;
    *(result + 24) = 0;
  }

  *(result + 32) = a2;
  return result;
}

uint64_t sub_1ABB5CFDC(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_1ABB5D01C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1ABB5D0B8(uint64_t a1)
{
  sub_1ABF21EB4();
  if (v1 <= 0x3F)
  {
    sub_1ABB5D174();
    if (v2 <= 0x3F)
    {
      sub_1ABB5D1C4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1ABB5D174()
{
  if (!qword_1EB4D3610)
  {
    v0 = sub_1ABF241F4();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB4D3610);
    }
  }
}

void sub_1ABB5D1C4(uint64_t a1)
{
  if (!qword_1EB4D3618)
  {
    sub_1ABB5D228();
    v1 = sub_1ABF23A44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB4D3618);
    }
  }
}

unint64_t sub_1ABB5D228()
{
  result = qword_1EB4CF6C0;
  if (!qword_1EB4CF6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4CF6C0);
  }

  return result;
}

_BYTE *sub_1ABB5D27C(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t _s13UserAlignmentOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s13CandidateTypeO10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1ABB5D548(unsigned __int8 *a1, int a2)
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

  return sub_1ABA84BA4(a1);
}

_BYTE *sub_1ABB5D594(_BYTE *result, int a2, int a3)
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

_BYTE *sub_1ABB5D640(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = sub_1ABA8BE70(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB5D71C()
{
  result = qword_1EB4D3620;
  if (!qword_1EB4D3620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3620);
  }

  return result;
}

unint64_t sub_1ABB5D774()
{
  result = qword_1EB4D3628;
  if (!qword_1EB4D3628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3628);
  }

  return result;
}

unint64_t sub_1ABB5D7CC()
{
  result = qword_1EB4D3630;
  if (!qword_1EB4D3630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3630);
  }

  return result;
}

unint64_t sub_1ABB5D824()
{
  result = qword_1EB4D3638;
  if (!qword_1EB4D3638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3638);
  }

  return result;
}

unint64_t sub_1ABB5D87C()
{
  result = qword_1EB4D3640;
  if (!qword_1EB4D3640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3640);
  }

  return result;
}

unint64_t sub_1ABB5D8D4()
{
  result = qword_1EB4D3648;
  if (!qword_1EB4D3648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3648);
  }

  return result;
}

unint64_t sub_1ABB5D92C()
{
  result = qword_1EB4D3650;
  if (!qword_1EB4D3650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3650);
  }

  return result;
}

unint64_t sub_1ABB5D984()
{
  result = qword_1EB4D3658;
  if (!qword_1EB4D3658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3658);
  }

  return result;
}

unint64_t sub_1ABB5D9DC()
{
  result = qword_1EB4D3660;
  if (!qword_1EB4D3660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3660);
  }

  return result;
}

unint64_t sub_1ABB5DA34()
{
  result = qword_1EB4D3668;
  if (!qword_1EB4D3668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3668);
  }

  return result;
}

unint64_t sub_1ABB5DA8C()
{
  result = qword_1EB4D3670;
  if (!qword_1EB4D3670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3670);
  }

  return result;
}

unint64_t sub_1ABB5DAE4()
{
  result = qword_1EB4D3678;
  if (!qword_1EB4D3678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3678);
  }

  return result;
}

unint64_t sub_1ABB5DB3C()
{
  result = qword_1EB4D3680;
  if (!qword_1EB4D3680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3680);
  }

  return result;
}

unint64_t sub_1ABB5DB94()
{
  result = qword_1EB4D3688;
  if (!qword_1EB4D3688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3688);
  }

  return result;
}

unint64_t sub_1ABB5DBEC()
{
  result = qword_1EB4D3690;
  if (!qword_1EB4D3690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3690);
  }

  return result;
}

unint64_t sub_1ABB5DC44()
{
  result = qword_1EB4D3698;
  if (!qword_1EB4D3698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3698);
  }

  return result;
}

unint64_t sub_1ABB5DC9C()
{
  result = qword_1EB4D36A0;
  if (!qword_1EB4D36A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36A0);
  }

  return result;
}

unint64_t sub_1ABB5DCF4()
{
  result = qword_1EB4D36A8;
  if (!qword_1EB4D36A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36A8);
  }

  return result;
}

unint64_t sub_1ABB5DD4C()
{
  result = qword_1EB4D36B0;
  if (!qword_1EB4D36B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36B0);
  }

  return result;
}

unint64_t sub_1ABB5DDA4()
{
  result = qword_1EB4D36B8;
  if (!qword_1EB4D36B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36B8);
  }

  return result;
}

unint64_t sub_1ABB5DDFC()
{
  result = qword_1EB4D36C0;
  if (!qword_1EB4D36C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36C0);
  }

  return result;
}

unint64_t sub_1ABB5DE54()
{
  result = qword_1EB4D36C8;
  if (!qword_1EB4D36C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36C8);
  }

  return result;
}

unint64_t sub_1ABB5DEAC()
{
  result = qword_1EB4D36D0;
  if (!qword_1EB4D36D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36D0);
  }

  return result;
}

unint64_t sub_1ABB5DF04()
{
  result = qword_1EB4D36D8;
  if (!qword_1EB4D36D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36D8);
  }

  return result;
}

unint64_t sub_1ABB5DF5C()
{
  result = qword_1EB4D36E0;
  if (!qword_1EB4D36E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36E0);
  }

  return result;
}

unint64_t sub_1ABB5DFB4()
{
  result = qword_1EB4D36E8;
  if (!qword_1EB4D36E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36E8);
  }

  return result;
}

unint64_t sub_1ABB5E00C()
{
  result = qword_1EB4D36F0;
  if (!qword_1EB4D36F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36F0);
  }

  return result;
}

unint64_t sub_1ABB5E064()
{
  result = qword_1EB4D36F8;
  if (!qword_1EB4D36F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D36F8);
  }

  return result;
}

unint64_t sub_1ABB5E0BC()
{
  result = qword_1EB4D3700;
  if (!qword_1EB4D3700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3700);
  }

  return result;
}

unint64_t sub_1ABB5E114()
{
  result = qword_1EB4D3708;
  if (!qword_1EB4D3708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3708);
  }

  return result;
}

unint64_t sub_1ABB5E16C()
{
  result = qword_1EB4D3710;
  if (!qword_1EB4D3710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3710);
  }

  return result;
}

uint64_t sub_1ABB5E1C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CodableLocation(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1ABB5E224(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1ABAE2850(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1ABB5E278()
{
  result = qword_1EB4D37F8;
  if (!qword_1EB4D37F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D37F8);
  }

  return result;
}

unint64_t ViewService.DefaultResolverInteractionsView.UserAlignment.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 10;
  if (result < 0xA)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1ABB5E370()
{
  result = qword_1EB4D3800;
  if (!qword_1EB4D3800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3800);
  }

  return result;
}

uint64_t sub_1ABB5E3CC@<X0>(uint64_t *a1@<X8>)
{
  result = ViewService.DefaultResolverInteractionsView.UserAlignment.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *_s13UserAlignmentOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1ABB5E580()
{
  result = qword_1EB4D3808;
  if (!qword_1EB4D3808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB4D3808);
  }

  return result;
}

unint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertToDeviceContextVectorData(from:)(unint64_t result)
{
  v1 = *(result + 16);
  if (v1 >> 61)
  {
    __break(1u);
  }

  else
  {
    v2 = 4 * v1;
    if (4 * v1)
    {
      if (v2 <= 14)
      {
        return sub_1ABF21D04();
      }

      else
      {
        sub_1ABF21A14();
        swift_allocObject();
        sub_1ABA7EDF8();
        sub_1ABF219D4();
        if (v2 >= 0x7FFFFFFF)
        {
          sub_1ABF21D64();
          result = swift_allocObject();
          *(result + 16) = 0;
          *(result + 24) = v2;
        }

        else
        {
          return v1 << 34;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertToDeviceContextVector(from:)(uint64_t result, unint64_t a2)
{
  v3 = result;
  v4 = 0;
  switch(a2 >> 62)
  {
    case 1uLL:
      LODWORD(v4) = HIDWORD(result) - result;
      if (!__OFSUB__(HIDWORD(result), result))
      {
        v4 = v4;
        goto LABEL_6;
      }

      __break(1u);
      goto LABEL_8;
    case 2uLL:
      v6 = *(result + 16);
      v5 = *(result + 24);
      v7 = __OFSUB__(v5, v6);
      v4 = v5 - v6;
      if (!v7)
      {
        goto LABEL_6;
      }

LABEL_8:
      __break(1u);
      break;
    case 3uLL:
      goto LABEL_6;
    default:
      v4 = BYTE6(a2);
LABEL_6:
      v8 = v4 / 4;
      v9 = sub_1ABA7EDF8();
      sub_1ABB0DBF0(v9, v10);
      result = sub_1ABB5F168(v8, v3, a2);
      break;
  }

  return result;
}

uint64_t sub_1ABB5E748(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  result = *a1;
  v6 = a1[1];
  v7 = a4 >> 62;
  v9 = 0;
  switch(a4 >> 62)
  {
    case 1uLL:
      LODWORD(v10) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        goto LABEL_25;
      }

      v10 = v10;
      goto LABEL_6;
    case 2uLL:
      v12 = *(a3 + 16);
      v11 = *(a3 + 24);
      v13 = __OFSUB__(v11, v12);
      v10 = v11 - v12;
      if (!v13)
      {
        goto LABEL_6;
      }

      goto LABEL_26;
    case 3uLL:
      goto LABEL_21;
    default:
      v10 = BYTE6(a4);
LABEL_6:
      if (v10 < 1)
      {
        goto LABEL_18;
      }

      if (v7)
      {
        if (v7 == 2)
        {
          v14 = *(a3 + 16);
        }

        else
        {
          v14 = a3;
        }
      }

      else
      {
        v14 = 0;
      }

      if ((v6 - 0x2000000000000000) >> 62 != 3)
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v15 = 4 * v6;
      if (v10 < 4 * v6)
      {
        v15 = v10;
      }

      v16 = v14 + v15;
      if (__OFADD__(v14, v15))
      {
        goto LABEL_23;
      }

      if (v16 < v14)
      {
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      if (v14 == v16)
      {
LABEL_18:
        v9 = 0;
LABEL_21:
        *a2 = v9 / 4;
        return result;
      }

      if (result)
      {
        result = sub_1ABF21DA4();
        v9 = v16 - v14;
        if (!__OFSUB__(v16, v14))
        {
          goto LABEL_21;
        }

        goto LABEL_27;
      }

LABEL_28:
      __break(1u);
      return result;
  }
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertUUIDToData(from:)(uint64_t a1)
{
  v2 = a1 + *(*(sub_1ABF21F04() - 8) + 64);

  return sub_1ABB5E8DC(a1, v2);
}

uint64_t sub_1ABB5E8DC(uint64_t a1, uint64_t a2)
{
  v8[3] = MEMORY[0x1E69E6290];
  v8[4] = MEMORY[0x1E6969DF8];
  v8[0] = a1;
  v8[1] = a2;
  v2 = sub_1ABA93E20(v8, MEMORY[0x1E69E6290]);
  v3 = *v2;
  if (*v2 && (v4 = v2[1], v5 = v4 - v3, v4 != v3))
  {
    if (v5 <= 14)
    {
      v6 = sub_1ABF21D04();
    }

    else if (v5 >= 0x7FFFFFFF)
    {
      v6 = MEMORY[0x1AC5A7380]();
    }

    else
    {
      v6 = MEMORY[0x1AC5A73A0]();
    }
  }

  else
  {
    v6 = 0;
  }

  sub_1ABA84B54(v8);
  return v6;
}

uint64_t sub_1ABB5E998(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  v51 = *MEMORY[0x1E69E9840];
  v45[0] = a1;
  v45[1] = a2;
  *&v48 = a1;
  *(&v48 + 1) = a2;

  sub_1ABAD219C(&qword_1EB4D3810, &qword_1ABF3D9A8);
  if (swift_dynamicCast())
  {
    sub_1ABA946C0(v46, &v49);
    sub_1ABA93E20(&v49, v50);
    sub_1ABF21A84();
    v46[0] = v48;
    sub_1ABA84B54(&v49);
    goto LABEL_59;
  }

  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_1ABB5FA40(v46);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    *&v46[0] = a1;
    *(&v46[0] + 1) = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v46;
    v6 = HIBYTE(a2) & 0xF;
  }

  else if ((a1 & 0x1000000000000000) != 0)
  {
    v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    sub_1ABA7EDF8();
    v5 = sub_1ABF24B74();
  }

  sub_1ABB5F248(v5, v6, &v49);
  v7 = *(&v49 + 1);
  v8 = v49;
  if (*(&v49 + 1) >> 60 != 15)
  {
    v46[0] = v49;
    goto LABEL_59;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

LABEL_12:
  *&v46[0] = MEMORY[0x1AC5A73E0](v9);
  *(&v46[0] + 1) = v10;
  MEMORY[0x1EEE9AC00](*&v46[0]);
  v40[2] = v45;
  v11 = sub_1ABB5F364(sub_1ABB5FAE0, v40);
  v13 = *(&v46[0] + 1) >> 62;
  v14 = v11;
  v16 = v15;
  v18 = v17;
  v19 = BYTE14(v46[0]);
  switch(*(&v46[0] + 1) >> 62)
  {
    case 1:
      LODWORD(v20) = DWORD1(v46[0]) - LODWORD(v46[0]);
      if (__OFSUB__(DWORD1(v46[0]), v46[0]))
      {
        goto LABEL_66;
      }

      v20 = v20;
LABEL_22:
      if (v12 == v20)
      {
        goto LABEL_23;
      }

      if (v13 == 2)
      {
        v19 = *(*&v46[0] + 24);
      }

      else if (v13 == 1)
      {
        v19 = *&v46[0] >> 32;
      }

      goto LABEL_56;
    case 2:
      v22 = *(*&v46[0] + 16);
      v21 = *(*&v46[0] + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (!v23)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_18:
      if (v12)
      {
        v19 = 0;
LABEL_56:
        if (v19 < v12)
        {
          __break(1u);
LABEL_66:
          __break(1u);
        }

        sub_1ABF21D74();
LABEL_58:

        goto LABEL_59;
      }

LABEL_23:
      v40[4] = v4;
      v41 = v8;
      v42 = v7;
      LOBYTE(v24) = 0;
      if ((v16 & 0x2000000000000000) != 0)
      {
        v25 = HIBYTE(v16) & 0xF;
      }

      else
      {
        v25 = v11 & 0xFFFFFFFFFFFFLL;
      }

      v26 = (v11 >> 59) & 1;
      if ((v16 & 0x1000000000000000) == 0)
      {
        LOBYTE(v26) = 1;
      }

      v27 = 4 << v26;
      v43 = (v16 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v44 = v16 & 0xFFFFFFFFFFFFFFLL;
      *(&v48 + 7) = 0;
      *&v48 = 0;
      break;
    case 3:
      goto LABEL_18;
    default:
      v20 = BYTE14(v46[0]);
      goto LABEL_22;
  }

  while (4 * v25 != v18 >> 14)
  {
    v4 = v18 & 0xC;
    v28 = v18;
    if (v4 == v27)
    {
      v32 = sub_1ABA7D348();
      v28 = sub_1ABB807B0(v32, v33, v34);
    }

    v29 = v28 >> 16;
    if (v28 >> 16 >= v25)
    {
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      sub_1ABA7EDF8();
      v9 = sub_1ABF23DF4();
      v8 = 0;
      v7 = 0xF000000000000000;
      goto LABEL_12;
    }

    if ((v16 & 0x1000000000000000) != 0)
    {
      v31 = sub_1ABF23E24();
    }

    else if ((v16 & 0x2000000000000000) != 0)
    {
      *&v49 = v14;
      *(&v49 + 1) = v44;
      v31 = *(&v49 + v29);
    }

    else
    {
      v30 = v43;
      if ((v14 & 0x1000000000000000) == 0)
      {
        v30 = sub_1ABF24B74();
      }

      v31 = *(v30 + v29);
    }

    if (v4 == v27)
    {
      v35 = sub_1ABA7D348();
      v18 = sub_1ABB807B0(v35, v36, v37);
      if ((v16 & 0x1000000000000000) == 0)
      {
LABEL_41:
        v18 = (v18 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_46;
      }
    }

    else if ((v16 & 0x1000000000000000) == 0)
    {
      goto LABEL_41;
    }

    if (v25 <= v18 >> 16)
    {
      goto LABEL_62;
    }

    sub_1ABA7D348();
    v18 = sub_1ABF23E04();
LABEL_46:
    *(&v48 + v24) = v31;
    v24 = v24 + 1;
    if ((v24 >> 8))
    {
      goto LABEL_61;
    }

    if (v24 == 14)
    {
      sub_1ABA7EF44();
      sub_1ABF21D94();
      LOBYTE(v24) = 0;
    }
  }

  if (v24)
  {
    sub_1ABA7EF44();
    sub_1ABF21D94();
    sub_1ABAC9310(v41, v42);
    goto LABEL_58;
  }

  sub_1ABAC9310(v41, v42);
LABEL_59:
  v38 = v46[0];
  sub_1ABB0DBF0(*&v46[0], *(&v46[0] + 1));

  sub_1ABA96210(v38, *(&v38 + 1));
  return v38;
}

uint64_t static ViewService.DefaultResolverInteractionsView.Utils.convertDataToUUID(from:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v37 = *MEMORY[0x1E69E9840];
  if (a2 >> 60 != 15)
  {
    v5 = a2 >> 62;
    v7 = HIDWORD(a1);
    switch(a2 >> 62)
    {
      case 1uLL:
        if (__OFSUB__(HIDWORD(a1), a1))
        {
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v8 = HIDWORD(a1) - a1;
LABEL_7:
        v11 = sub_1ABA7EDF8();
        sub_1ABB0DBF0(v11, v12);
LABEL_8:
        if (v8 == 16)
        {
          if (v5 == 2)
          {
            v14 = *(a1 + 16);
            v13 = *(a1 + 24);
            goto LABEL_18;
          }

          if (v5 != 1)
          {
            v25 = a1;
            v26 = BYTE2(a1);
            v27 = BYTE3(a1);
            v28 = v7;
            v29 = BYTE5(a1);
            v30 = BYTE6(a1);
            v31 = HIBYTE(a1);
            v32 = a2;
            v33 = BYTE2(a2);
            v34 = BYTE3(a2);
            v35 = BYTE4(a2);
            v36 = BYTE5(a2);
            v21 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
            sub_1ABF21EE4();

            v22 = sub_1ABF21F04();
            sub_1ABA7B9B4(a3, 0, 1, v22);
            v23 = sub_1ABA7EDF8();
            return sub_1ABAC9310(v23, v24);
          }

          v13 = a1 >> 32;
          if (a1 >> 32 >= a1)
          {
            v14 = a1;
LABEL_18:
            sub_1ABB5F900(v14, v13, a3);
            v19 = sub_1ABA7EDF8();

            return sub_1ABAC9310(v19, v20);
          }

LABEL_24:
          __break(1u);
        }

LABEL_13:
        v15 = sub_1ABA7EDF8();
        sub_1ABAC9310(v15, v16);
        break;
      case 2uLL:
        v10 = *(a1 + 16);
        v9 = *(a1 + 24);
        v8 = v9 - v10;
        if (!__OFSUB__(v9, v10))
        {
          goto LABEL_7;
        }

        goto LABEL_23;
      case 3uLL:
        goto LABEL_13;
      default:
        v8 = BYTE6(a2);
        goto LABEL_8;
    }
  }

  v17 = sub_1ABF21F04();

  return sub_1ABA7B9B4(a3, 1, 1, v17);
}

uint64_t sub_1ABB5F0DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) initWithUUIDBytes_];
    sub_1ABF21EE4();

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_1ABF21F04();
  return sub_1ABA7B9B4(a2, v4, 1, v5);
}

uint64_t sub_1ABB5F168(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = result;
  if (result)
  {
    v7 = sub_1ABF24164();
    *(v7 + 16) = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v9 = 0;
  v8[0] = v7 + 32;
  v8[1] = v6;
  result = sub_1ABB5E748(v8, &v9, a2, a3);
  if (v3)
  {
    if (v9 <= v6)
    {
      *(v7 + 16) = v9;

LABEL_10:
      sub_1ABA96210(a2, a3);
      return v7;
    }

    goto LABEL_12;
  }

  if (v9 <= v6)
  {
    *(v7 + 16) = v9;
    goto LABEL_10;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_1ABB5F248@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (a1 && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1ABF21D04();
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      sub_1ABF21A14();
      swift_allocObject();
      v8 = sub_1ABF219D4();
      if (a2 >= 0x7FFFFFFF)
      {
        sub_1ABF21D64();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void *sub_1ABB5F310(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a3;
  v6[1] = a4;
  v5[2] = v6;
  return sub_1ABB5F7E8(sub_1ABB5FB3C, v5, a1, a2);
}

uint64_t sub_1ABB5F364(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v5 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  switch(v6 >> 62)
  {
    case 1uLL:
      v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1ABA96210(v7, v6);
      *v5 = xmmword_1ABF3D990;
      sub_1ABA96210(0, 0xC000000000000000);
      v13 = v7 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_16;
      }

      if (v13 < v7)
      {
        goto LABEL_23;
      }

      if (sub_1ABF219E4() && __OFSUB__(v7, sub_1ABF21A04()))
      {
        goto LABEL_24;
      }

      sub_1ABF21A14();
      swift_allocObject();
      v14 = sub_1ABF219C4();

      v12 = v14;
LABEL_16:
      if (v13 < v7)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }

      v4 = sub_1ABB5F84C(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (v3)
      {
        goto LABEL_18;
      }

      goto LABEL_20;
    case 2uLL:
      v4 = v6 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1ABA96210(v7, v6);
      v17 = v7;
      v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *v5 = xmmword_1ABF3D990;
      sub_1ABA96210(0, 0xC000000000000000);
      sub_1ABF21D14();
      v7 = v17;
      v10 = sub_1ABB5F84C(*(v17 + 16), *(v17 + 24), a1);
      if (v3)
      {
        v11 = v18 | 0x8000000000000000;
LABEL_18:
        *v5 = v7;
        v5[1] = v11;
      }

      else
      {
        v4 = v10;
        v11 = v18 | 0x8000000000000000;
LABEL_20:
        *v5 = v7;
        v5[1] = v11;
      }

      return v4;
    case 3uLL:
      memset(v19, 0, 15);
      a1(&v17, v19, v19);
      if (!v3)
      {
        return v17;
      }

      return v4;
    default:
      v4 = v7 >> 8;
      sub_1ABA96210(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        v4 = v17;
      }

      v9 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v5 = v19[0];
      v5[1] = v9;
      return v4;
  }
}

uint64_t sub_1ABB5F728@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v4 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    v5 = 0xC000000000000000;
    goto LABEL_5;
  }

  if (v4 <= 14)
  {
    result = sub_1ABF21D04();
    v5 = v7 & 0xFFFFFFFFFFFFFFLL;
  }

  else if (v4 >= 0x7FFFFFFF)
  {
    result = MEMORY[0x1AC5A7380]();
    v5 = v8 | 0x8000000000000000;
  }

  else
  {
    result = MEMORY[0x1AC5A73A0]();
    v5 = v6 | 0x4000000000000000;
  }

LABEL_5:
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1ABB5F7A0(uint64_t result)
{
  if (result)
  {
    result = sub_1ABF24AC4();
    if ((v1 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1ABB5F7E8(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v6 = a4 - a3;
    v7 = a3;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  result = a1(&v9, v7, v6);
  if (!v4)
  {
    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1ABB5F84C(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_1ABF219E4();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_1ABF21A04();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_1ABF219F4();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}