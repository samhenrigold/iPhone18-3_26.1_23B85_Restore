unint64_t sub_255DE277C(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, uint64_t), void (*a5)(uint64_t), uint64_t (*a6)(uint64_t))
{
  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = *(a3 + 48);
    v13 = StringResolvable.resolved(with:)(a2);
    if (v6)
    {
      return a1;
    }

    if (a1 >> 61 == 5)
    {
      v60 = v13;
      v61 = v14;
      v58 = a5;
      v59 = v12;
      v56 = a6;
      v57 = a4;
      v15 = *((a1 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v16 = sub_255E3AB08();
      v17 = v16;
      v18 = 0;
      v19 = 1 << *(v15 + 32);
      v20 = -1;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      v21 = v20 & *(v15 + 64);
      v22 = (v19 + 63) >> 6;
      v23 = v16 + 64;
      if (v21)
      {
        while (1)
        {
          v24 = __clz(__rbit64(v21));
          v21 &= v21 - 1;
LABEL_13:
          v27 = v24 | (v18 << 6);
          v28 = (*(v15 + 48) + 16 * v27);
          v29 = *(*(v15 + 56) + 8 * v27);
          v30 = *v28;
          v31 = v28[1];
          *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
          v32 = (v17[6] + 16 * v27);
          *v32 = v30;
          v32[1] = v31;
          *(v17[7] + 8 * v27) = v29;
          v33 = v17[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            break;
          }

          v17[2] = v35;

          if (!v21)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
LABEL_8:
        v25 = v18;
        while (1)
        {
          v18 = v25 + 1;
          if (__OFADD__(v25, 1))
          {
            break;
          }

          if (v18 >= v22)
          {
            if (v17[2])
            {
              v49 = sub_255D3CA20(v60, v61);
              v51 = v50;

              if (v51)
              {
                v52 = *(v17[7] + 8 * v49);

                if ((~v59 & 0xF000000000000007) != 0)
                {

                  a1 = v57(v52, a2, v59);

                  v58(v59);
                }

                else
                {
                  a1 = v56(v52);
                }

                return a1;
              }
            }

            else
            {
            }

            sub_255D5C33C();
            swift_allocError();
            *v54 = a1;
            *(v54 + 32) = 1;
            swift_willThrow();
            goto LABEL_35;
          }

          v26 = *(v15 + 64 + 8 * v18);
          ++v25;
          if (v26)
          {
            v24 = __clz(__rbit64(v26));
            v21 = (v26 - 1) & v26;
            goto LABEL_13;
          }
        }

        __break(1u);
      }

      __break(1u);
      goto LABEL_41;
    }

    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v48 = a1;
    v48[1] = v47;
    swift_willThrow();
LABEL_35:

    return a1;
  }

  v36 = *((a3 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v37 = sub_255D8F9E4(a2);
  if ((v38 & 1) == 0)
  {
    v44 = v37;
    v45 = sub_255DDFB40(a1);
    if (v6)
    {
      return a1;
    }

    if ((v44 & 0x8000000000000000) == 0 && v44 < *(v45 + 16))
    {
      v46 = *(v45 + 8 * v44 + 32);

      if ((~v36 & 0xF000000000000007) != 0)
      {

        a1 = a4(v46, a2, v36);

        a5(v36);
      }

      else
      {
        a1 = a6(v46);
      }

      return a1;
    }

    sub_255D5C33C();
    swift_allocError();
    *v53 = a1;
    *(v53 + 32) = 1;
    swift_willThrow();
    goto LABEL_35;
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_41:
    swift_once();
  }

  v39 = sub_255E386A8();
  __swift_project_value_buffer(v39, qword_27F8152D8);
  v40 = sub_255E38688();
  v41 = sub_255E3A848();
  if (os_log_type_enabled(v40, v41))
  {
    v42 = swift_slowAlloc();
    *v42 = 0;
    _os_log_impl(&dword_255D2E000, v40, v41, "SubReference to find value, unable to resolve index", v42, 2u);
    MEMORY[0x259C4F9E0](v42, -1, -1);
  }

  sub_255D5C33C();
  a1 = swift_allocError();
  *v43 = 2;
  *(v43 + 8) = 0;
  *(v43 + 16) = 0;
  *(v43 + 24) = 0;
  *(v43 + 32) = 5;
  swift_willThrow();
  return a1;
}

uint64_t sub_255DE2D20@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83E8, &qword_255E55338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DE5D40();
  sub_255E3AE28();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    sub_255D38950(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DE2F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F707265746E69 && a2 == 0xEC00000064657461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DE2F8C(uint64_t a1)
{
  v2 = sub_255DE5D40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DE2FC8(uint64_t a1)
{
  v2 = sub_255DE5D40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t StringResolvable.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E83E8, &qword_255E55338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-1] - v7;
  sub_255D3CE1C(a1, v15);
  sub_255D8E89C(v15, &v16);
  if (v2)
  {

    sub_255D3CE1C(a1, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_255DE5D40();
    sub_255E3AE28();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    sub_255D38950(&qword_27F7E7398, &qword_27F7E7390, &qword_255E55340, protocol conformance descriptor for Referenceable<A>);
    sub_255E3ABC8();
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    (*(v6 + 8))(v8, v5);
    v14 = v16;
    v9 = v17;
    v10 = v18;
    result = __swift_destroy_boxed_opaque_existential_1Tm(v15);
    v12 = v14;
    v13 = v10 | 0x80;
  }

  else
  {
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v12 = v16;
    v9 = v17;
    v13 = v18;
  }

  *a2 = v12;
  *(a2 + 16) = v9;
  *(a2 + 24) = v13;
  return result;
}

uint64_t _s6LiftUI15LocalStateStoreCyypSgSScig_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v8 = *(*v4 + 112);
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_255D3CA20(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_7:
    v16 = *(v4 + *(*v4 + 120));
    if (v16)
    {
      return (*(*v16 + 248))(v18);
    }

    *a3 = 0u;
    a3[1] = 0u;
    return result;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  MEMORY[0x28223BE20](v14);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v17 + 16))
  {
    sub_255D3951C(v17 + 32 * v13 + 32, a3);
  }

  __break(1u);
  return result;
}

uint64_t sub_255DE3530@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v18[0] = a1;
  v18[1] = a2;
  v8 = *(*v4 + 112);
  result = swift_beginAccess();
  v10 = *(v4 + v8);
  if (!*(v10 + 16))
  {
    goto LABEL_7;
  }

  v11 = sub_255D3CA20(a1, a2);
  if ((v12 & 1) == 0)
  {

LABEL_7:
    v16 = *(v4 + *(*v4 + 120));
    if (v16)
    {
      return (*(*v16 + 248))(v18);
    }

    *a3 = 0xF000000000000007;
    return result;
  }

  v13 = *(*(v10 + 56) + 8 * v11);

  MEMORY[0x28223BE20](v14);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  swift_getKeyPath();
  sub_255E38728();

  if ((v13 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v13 < *(v17 + 16))
  {
    *a3 = *(v17 + 8 * v13 + 32);
  }

  __break(1u);
  return result;
}

unint64_t sub_255DE373C()
{
  result = qword_27F7E83D8;
  if (!qword_27F7E83D8)
  {
    result = swift_getWitnessTable(MEMORY[0x277D837E8], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_27F7E83D8);
  }

  return result;
}

uint64_t sub_255DE3790@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255DF3B58();
  *a1 = result;
  return result;
}

void sub_255DE37E8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = a4;
  v7 = a3;
  v8 = a2;
  v9 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a4) & 0xF;
  }

  v10 = 4 * v9;
  v11 = a2 >> 14;
  if (a2 >> 14 == 4 * v9)
  {
    v108 = 0;
    v12 = 0;
    v13 = 0;
    if (v10 >= a2 >> 14)
    {
LABEL_5:
      v14 = sub_255E3A618();
      v15 = MEMORY[0x259C4E8B0](v14);
      v17 = v16;

      v115 = sub_255DE5180(v15, v17);
      LOBYTE(v116) = v18 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
      if (swift_dynamicCast())
      {
        sub_255D34910(v108, v12, v13, 255);
        v19 = 0;
        v20 = 0;
        v12 = 0;
        v21 = v119;
LABEL_59:
        sub_255D348B4(v21, v12, v20, v19 & 1);
        sub_255D34910(v21, v12, v20, v19);
        *a1 = v21;
        *(a1 + 8) = v12;
        *(a1 + 16) = v20;
        *(a1 + 24) = v19 & 1;
        return;
      }

      v64 = sub_255E3A618();
      v65 = v13;
      v66 = MEMORY[0x259C4E8B0](v64);
      v68 = v67;

      sub_255D34910(v108, v12, v65, 255);
      v19 = 1;
      v7 = 0xF000000000000007;
      v21 = v66;
      v12 = v68;
      goto LABEL_57;
    }

LABEL_76:
    __break(1u);
LABEL_77:
    sub_255D5C33C();
    swift_allocError();
    *v102 = 2;
    *(v102 + 8) = 0;
    *(v102 + 16) = 0;
    *(v102 + 24) = 0;
    *(v102 + 32) = 5;
    swift_willThrow();
    v80 = v10;
    v81 = v5;
    goto LABEL_61;
  }

  v111 = v4;
  v13 = 0;
  v12 = 0;
  v108 = 0;
  v22 = 0;
  v120 = 255;
  v23 = a2;
  v104 = 4 * v9;
  while (1)
  {
    if (v22)
    {
      v8 = v23;
    }

    if (v112 = v23, v5 = sub_255E3A5F8(), v114 = v24, v5 == 46) && v24 == 0xE100000000000000 || (v25 = sub_255E3AC68(), v24 = v114, (v25))
    {
      v26 = v8 >> 14;
      if (v8 >> 14 == v11)
      {
        v8 = 0;
        v22 = 1;
        if (v5 == 91)
        {
          goto LABEL_26;
        }
      }

      else if (v120 == 0xFF)
      {
        if (v11 < v26)
        {
          goto LABEL_82;
        }

        v36 = sub_255E3A618();
        v108 = MEMORY[0x259C4E8B0](v36);
        v12 = v37;
        v7 = a3;

        v24 = v114;
        v8 = 0;
        v22 = 1;
        v13 = 0xF000000000000007;
        v120 = 1;
        if (v5 == 91)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v27 = swift_allocObject();
        if (v11 < v26)
        {
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
          goto LABEL_85;
        }

        v28 = v27;
        v106 = v5;
        v29 = v13;
        v30 = v12;
        v31 = v120;
        sub_255D348B4(v108, v30, v29, v120 & 1);
        v32 = sub_255E3A618();
        v33 = MEMORY[0x259C4E8B0](v32);
        v35 = v34;

        *(v28 + 16) = v33;
        *(v28 + 24) = v35;
        *(v28 + 32) = 0;
        *(v28 + 40) = 0;
        *(v28 + 48) = 0xF000000000000007;
        sub_255DEDB88(v28, v108, v30, v29, v31 & 1, &v115);
        if (v111)
        {
          sub_255D34910(v108, v30, v29, v31);

          v90 = v108;
          v91 = v30;
          v92 = v29;
          v93 = v31;
          goto LABEL_79;
        }

        v111 = 0;
        sub_255D34910(v108, v30, v29, v31);
        sub_255D34910(v108, v30, v29, v31);

        v8 = 0;
        v12 = v116;
        v108 = v115;
        v13 = v117;
        v22 = 1;
        v120 = v118;
        v6 = a4;
        v5 = v106;
        v7 = a3;
        v10 = v104;
        v24 = v114;
        if (v106 == 91)
        {
LABEL_26:
          if (v24 == 0xE100000000000000)
          {
            goto LABEL_28;
          }
        }
      }
    }

    else
    {
      v22 = 0;
      if (v5 == 91)
      {
        goto LABEL_26;
      }
    }

    v38 = sub_255E3AC68();
    v24 = v114;
    if ((v38 & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_28:
    if ((v22 & 1) == 0)
    {
      break;
    }

    v22 = 1;
LABEL_30:
    v39 = v112;
    if (v5 != 93)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (v24 == 0xE100000000000000)
    {

      if ((v22 & 1) == 0)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

LABEL_46:
    v5 = v13;
    v62 = sub_255E3AC68();

    v63 = v22 | ~v62;
    v7 = a3;
    if ((v63 & 1) == 0)
    {
LABEL_50:
      if (v120 == 0xFF)
      {
        if (v39 >> 14 >= v8 >> 14)
        {
          v94 = sub_255E3A618();
          v95 = MEMORY[0x259C4E8B0](v94);
          v97 = v96;

          v115 = sub_255DE5180(v95, v97);
          LOBYTE(v116) = v98 & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8428, &unk_255E55820);
          if (swift_dynamicCast())
          {
            sub_255D34910(v108, v12, v13, 255);
            v78 = 0;
            v7 = 0;
            v5 = 0;
            v10 = v119;
          }

          else
          {
            v100 = sub_255E3A618();
            v10 = MEMORY[0x259C4E8B0](v100);
            v5 = v101;

            sub_255D34910(v108, v12, v13, 255);
            v78 = 1;
            v7 = 0xF000000000000007;
          }

          goto LABEL_74;
        }

LABEL_86:
        __break(1u);
        goto LABEL_87;
      }

      v69 = swift_allocObject();
      v70 = v108;
      if (v39 >> 14 >= v8 >> 14)
      {
        v71 = v69;
        v72 = v120;
        sub_255D348B4(v108, v12, v13, v120 & 1);
        v73 = v72;
        v74 = sub_255E3A618();
        v75 = MEMORY[0x259C4E8B0](v74);
        v77 = v76;

        *(v71 + 16) = v75;
        *(v71 + 24) = v77;
        *(v71 + 32) = 0;
        *(v71 + 40) = 0;
        *(v71 + 48) = 0xF000000000000007;
        sub_255DEDB88(v71, v108, v12, v13, v73 & 1, &v115);
        if (v111)
        {
          goto LABEL_65;
        }

        sub_255D34910(v108, v12, v13, v73);
        sub_255D34910(v108, v12, v13, v73);

        v10 = v115;
        v5 = v116;
        v7 = v117;
        v78 = v118;
        if (v118 == 255)
        {
          goto LABEL_77;
        }

LABEL_74:
        sub_255D348B4(v10, v5, v7, v78 & 1);
        sub_255D34910(v10, v5, v7, v78);
        *a1 = v10;
        *(a1 + 8) = v5;
        *(a1 + 16) = v7;
        *(a1 + 24) = v78 & 1;
        return;
      }

LABEL_85:
      __break(1u);
      goto LABEL_86;
    }

LABEL_47:
    v23 = v39;
    v11 = v39 >> 14;
    if (v11 != v10)
    {
      v23 = sub_255E3A588();
      v11 = v23 >> 14;
    }

    if (v11 == v10)
    {
      if (v22)
      {
        v21 = v108;
        v7 = v13;
        v19 = v120;
        goto LABEL_57;
      }

      if (v120 == 0xFF)
      {
        if (v10 >= v8 >> 14)
        {
          goto LABEL_5;
        }

        goto LABEL_76;
      }

      v83 = swift_allocObject();
      if (v10 >= v8 >> 14)
      {
        v84 = v83;
        v85 = v120;
        sub_255D348B4(v108, v12, v13, v120 & 1);
        v73 = v85;
        v86 = sub_255E3A618();
        v87 = MEMORY[0x259C4E8B0](v86);
        v89 = v88;

        *(v84 + 16) = v87;
        *(v84 + 24) = v89;
        v70 = v108;
        *(v84 + 32) = 0;
        *(v84 + 40) = 0;
        *(v84 + 48) = 0xF000000000000007;
        sub_255DEDB88(v84, v108, v12, v13, v85 & 1, &v115);
        if (!v111)
        {
          sub_255D34910(v108, v12, v13, v85);
          sub_255D34910(v108, v12, v13, v85);

          v21 = v115;
          v12 = v116;
          v7 = v117;
          v19 = v118;
LABEL_57:
          if (v19 != -1)
          {
            v20 = v7;
            goto LABEL_59;
          }

          sub_255D5C33C();
          swift_allocError();
          *v79 = 5;
          *(v79 + 8) = 0;
          *(v79 + 16) = 0;
          *(v79 + 24) = 0;
          *(v79 + 32) = 5;
          swift_willThrow();
          v80 = v21;
          v81 = v12;
LABEL_61:
          v82 = v7;
LABEL_71:
          sub_255D34910(v80, v81, v82, 255);
          return;
        }

LABEL_65:
        sub_255D34910(v70, v12, v13, v73);
        v90 = v70;
        v91 = v12;
        v92 = v13;
        v93 = v73;
        goto LABEL_79;
      }

LABEL_87:
      __break(1u);
      return;
    }
  }

  v40 = v8 >> 14;
  if (v8 >> 14 == v11)
  {
    v41 = v111;
    v42 = v108;
    goto LABEL_40;
  }

  if (v120 == 0xFF)
  {
    if (v11 < v40)
    {
      goto LABEL_84;
    }

    v50 = sub_255E3A618();
    v42 = MEMORY[0x259C4E8B0](v50);
    v12 = v51;
    v7 = a3;

    v120 = 1;
    v13 = 0xF000000000000007;
    v41 = v111;
LABEL_40:
    v52 = sub_255E3A588();
    sub_255DE37E8(&v115, v52, v7, v6);
    if (v41)
    {
      sub_255D34910(v42, v12, v13, v120);

      return;
    }

    v107 = v5;
    v111 = 0;
    v113 = v53;
    v54 = v42;
    v55 = v13;
    v56 = v12;
    v58 = v115;
    v57 = v116;
    v59 = v117;
    v109 = v118;
    v60 = v120;
    if (v120 == 0xFF)
    {

      sub_255D5C33C();
      swift_allocError();
      *v99 = 2;
      *(v99 + 8) = 0;
      *(v99 + 16) = 0;
      *(v99 + 24) = 0;
      *(v99 + 32) = 5;
      swift_willThrow();
      sub_255D34870(v58, v57, v59, v109);
      v80 = v54;
      v81 = v56;
      v82 = v55;
      goto LABEL_71;
    }

    v61 = swift_allocObject();
    *(v61 + 16) = v58;
    *(v61 + 24) = v57;
    *(v61 + 32) = v59;
    *(v61 + 40) = v109;
    *(v61 + 48) = 0xF000000000000007;
    sub_255DE63F8(v54, v56, v55, v60);
    sub_255D348B4(v58, v57, v59, v109);
    sub_255DEDB88(v61 | 0x8000000000000000, v54, v56, v55, v60 & 1, &v115);
    sub_255D34910(v54, v56, v55, v60);
    sub_255D34870(v58, v57, v59, v109);
    sub_255D34910(v54, v56, v55, v60);

    v8 = 0;
    v12 = v116;
    v108 = v115;
    v13 = v117;
    v22 = 1;
    v120 = v118;
    v39 = v113;
    v24 = v114;
    v6 = a4;
    v5 = v107;
    v7 = a3;
    v10 = v104;
    if (v107 != 93)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

  v43 = swift_allocObject();
  if (v11 < v40)
  {
    goto LABEL_83;
  }

  v44 = v43;
  v45 = v120;
  sub_255D348B4(v108, v12, v13, v120 & 1);
  v46 = sub_255E3A618();
  v47 = MEMORY[0x259C4E8B0](v46);
  v49 = v48;

  *(v44 + 16) = v47;
  *(v44 + 24) = v49;
  *(v44 + 32) = 0;
  *(v44 + 40) = 0;
  *(v44 + 48) = 0xF000000000000007;
  sub_255DEDB88(v44, v108, v12, v13, v45 & 1, &v115);
  v41 = v111;
  if (!v111)
  {
    sub_255D34910(v108, v12, v13, v45);
    sub_255D34910(v108, v12, v13, v45);

    v42 = v115;
    v12 = v116;
    v13 = v117;
    v120 = v118;
    v6 = a4;
    v7 = a3;
    goto LABEL_40;
  }

  sub_255D34910(v108, v12, v13, v45);

  v90 = v108;
  v91 = v12;
  v92 = v13;
  v93 = v45;
LABEL_79:
  sub_255D34910(v90, v91, v92, v93);
}

unint64_t sub_255DE46E4(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, unint64_t, uint64_t, uint64_t, unint64_t, uint64_t), void (*a7)(uint64_t, uint64_t, unint64_t, uint64_t), uint64_t a8)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = result;
  v12 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
  }

  v13 = a2 >> 14;
  v93 = 4 * v12;
  if (a2 >> 14 == 4 * v12)
  {
    v14 = v12 << 16;
    v15 = (a4 >> 60) & ((a3 & 0x800000000000000) == 0);
    v16 = a2;
    goto LABEL_5;
  }

  v84 = v12;
  v85 = result;
  v22 = 0;
  v24 = 0;
  v91 = 0;
  v25 = 0;
  v26 = 255;
  v16 = a2;
  do
  {
    if (v25)
    {
      v10 = v16;
    }

    result = sub_255E3A5F8();
    v28 = result;
    v94 = result;
    v96 = v27;
    if (result == 46 && v27 == 0xE100000000000000 || (result = sub_255E3AC68(), v28 = v94, v27 = v96, (result & 1) != 0))
    {
      v29 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        v10 = 0;
        v25 = 1;
        if (v28 == 91)
        {
          goto LABEL_30;
        }
      }

      else if (v26 == 0xFF)
      {
        if (v13 < v29)
        {
          goto LABEL_80;
        }

        v37 = sub_255E3A618();
        v91 = MEMORY[0x259C4E8B0](v37);
        v24 = v38;
        v9 = a3;

        v28 = v94;
        v27 = v96;
        v10 = 0;
        v25 = 1;
        v22 = 0xF000000000000007;
        v26 = 1;
        if (v94 == 91)
        {
          goto LABEL_30;
        }
      }

      else
      {
        result = swift_allocObject();
        if (v13 < v29)
        {
          __break(1u);
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
LABEL_82:
          __break(1u);
LABEL_83:
          __break(1u);
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          return result;
        }

        v30 = result;
        v31 = sub_255E3A618();
        v32 = MEMORY[0x259C4E8B0](v31);
        v33 = v24;
        v35 = v34;

        *(v30 + 16) = v32;
        *(v30 + 24) = v35;
        *(v30 + 32) = 0;
        *(v30 + 40) = 0;
        *(v30 + 48) = 0xF000000000000007;
        v36 = v91;
        a6(&v98, v30, v91, v33, v22, v26 & 1);
        if (v90)
        {
          goto LABEL_73;
        }

        v90 = 0;
        a7(v91, v33, v22, v26);

        v10 = 0;
        v24 = v99;
        v91 = v98;
        v22 = v100;
        v25 = 1;
        v26 = v101;
        v8 = a4;
        v9 = a3;
        v28 = v94;
        v27 = v96;
        if (v94 == 91)
        {
LABEL_30:
          if (v27 == 0xE100000000000000)
          {
            goto LABEL_32;
          }
        }
      }
    }

    else
    {
      v25 = 0;
      if (v94 == 91)
      {
        goto LABEL_30;
      }
    }

    result = sub_255E3AC68();
    v28 = v94;
    v27 = v96;
    if ((result & 1) == 0)
    {
      goto LABEL_34;
    }

LABEL_32:
    if ((v25 & 1) == 0)
    {
      v39 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        v40 = v26;
      }

      else
      {
        if (v26 != 0xFF)
        {
          result = swift_allocObject();
          if (v13 < v39)
          {
            goto LABEL_81;
          }

          v41 = result;
          v42 = sub_255E3A618();
          v43 = MEMORY[0x259C4E8B0](v42);
          v33 = v24;
          v45 = v44;

          *(v41 + 16) = v43;
          *(v41 + 24) = v45;
          *(v41 + 32) = 0;
          *(v41 + 40) = 0;
          *(v41 + 48) = 0xF000000000000007;
          v36 = v91;
          a6(&v98, v41, v91, v33, v22, v26 & 1);
          v46 = v90;
          if (v90)
          {
LABEL_73:

            a7(v36, v33, v22, v26);

            return v16;
          }

          a7(v91, v33, v22, v26);

          v24 = v99;
          v91 = v98;
          v22 = v100;
          v40 = v101;
          v8 = a4;
          v9 = a3;
LABEL_45:
          v49 = sub_255E3A588();
          sub_255DE37E8(&v98, v49, v9, v8);
          if (v46)
          {
            a7(v91, v24, v22, v40);

            return v16;
          }

          v86 = v50;
          v51 = v24;
          v52 = v98;
          v53 = v99;
          v54 = v100;
          v102 = v101;
          if (v40 == 0xFF)
          {

            sub_255D5C33C();
            swift_allocError();
            *v82 = 2;
            *(v82 + 8) = 0;
            *(v82 + 16) = 0;
            *(v82 + 24) = 0;
            *(v82 + 32) = 5;
            swift_willThrow();
            sub_255D34870(v52, v53, v54, v102);
            return v16;
          }

          v55 = swift_allocObject();
          *(v55 + 16) = v52;
          *(v55 + 24) = v53;
          *(v55 + 32) = v54;
          v56 = v102;
          *(v55 + 40) = v102;
          *(v55 + 48) = 0xF000000000000007;
          sub_255D348B4(v52, v53, v54, v56);
          a6(&v98, v55 | 0x8000000000000000, v91, v51, v22, v40 & 1);
          v90 = 0;
          sub_255D34870(v52, v53, v54, v102);
          a7(v91, v51, v22, v40);

          v10 = 0;
          v24 = v99;
          v91 = v98;
          v22 = v100;
          v25 = 1;
          v26 = v101;
          v16 = v86;
          v8 = a4;
          v9 = a3;
          v27 = v96;
          if (v94 != 93)
          {
            goto LABEL_51;
          }

          goto LABEL_48;
        }

        if (v13 < v39)
        {
          goto LABEL_83;
        }

        v47 = sub_255E3A618();
        v91 = MEMORY[0x259C4E8B0](v47);
        v24 = v48;
        v9 = a3;

        v40 = 1;
        v22 = 0xF000000000000007;
      }

      v46 = v90;
      goto LABEL_45;
    }

    v25 = 1;
LABEL_34:
    if (v28 != 93)
    {
      goto LABEL_51;
    }

LABEL_48:
    if (v27 == 0xE100000000000000)
    {

      if ((v25 & 1) == 0)
      {
        goto LABEL_56;
      }

      goto LABEL_52;
    }

LABEL_51:
    v57 = sub_255E3AC68();

    v58 = v25 | ~v57;
    v9 = a3;
    if ((v58 & 1) == 0)
    {
LABEL_56:
      if (v26 == 0xFF)
      {
        if (v16 >> 14 < v10 >> 14)
        {
          goto LABEL_85;
        }

        v76 = sub_255E3A618();
        v77 = MEMORY[0x259C4E8B0](v76);
        v79 = v78;

        v80 = 1;
        v81 = 0xF000000000000007;
      }

      else
      {
        v60 = v22;
        result = swift_allocObject();
        if (v16 >> 14 < v10 >> 14)
        {
          goto LABEL_84;
        }

        v61 = result;
        v62 = sub_255E3A618();
        v63 = MEMORY[0x259C4E8B0](v62);
        v65 = v64;

        *(v61 + 16) = v63;
        *(v61 + 24) = v65;
        *(v61 + 32) = 0;
        *(v61 + 40) = 0;
        *(v61 + 48) = 0xF000000000000007;
        a6(&v98, v61, v91, v24, v60, v26 & 1);
        if (v90)
        {
          v66 = v91;
          v67 = v24;
          v68 = v60;
          v69 = v26;
LABEL_66:
          a7(v66, v67, v68, v69);

          return v16;
        }

        a7(v91, v24, v60, v26);

        v77 = v98;
        v79 = v99;
        v81 = v100;
        v80 = v101;
        if (v101 == 255)
        {
          sub_255D5C33C();
          swift_allocError();
          *v83 = 2;
          *(v83 + 8) = 0;
          *(v83 + 16) = 0;
          *(v83 + 24) = 0;
          *(v83 + 32) = 5;
          goto LABEL_55;
        }
      }

      *v85 = v77;
      *(v85 + 8) = v79;
      *(v85 + 16) = v81;
      *(v85 + 24) = v80 & 1;
      return v16;
    }

LABEL_52:
    v13 = v16 >> 14;
    if (v16 >> 14 != v93)
    {
      result = sub_255E3A588();
      v16 = result;
      v13 = result >> 14;
    }
  }

  while (v13 != v93);
  v97 = v26;
  v70 = v8;
  v18 = v91;
  v20 = v24;
  v14 = v84 << 16;
  v15 = (v70 >> 60) & ((v9 & 0x800000000000000) == 0);
  if (v25)
  {
    v11 = v85;
    v21 = v97;
    goto LABEL_7;
  }

  if (v97 == 0xFF)
  {
    v11 = v85;
LABEL_5:
    if (v93 >= v10 >> 14)
    {
      v17 = sub_255E3A618();
      v18 = MEMORY[0x259C4E8B0](v17);
      v20 = v19;

      v21 = 1;
      v22 = 0xF000000000000007;
      goto LABEL_7;
    }

    goto LABEL_82;
  }

  v95 = v22;
  result = swift_allocObject();
  if (v93 < v10 >> 14)
  {
    goto LABEL_86;
  }

  v71 = result;
  v72 = sub_255E3A618();
  v73 = MEMORY[0x259C4E8B0](v72);
  v75 = v74;

  *(v71 + 16) = v73;
  *(v71 + 24) = v75;
  *(v71 + 32) = 0;
  *(v71 + 40) = 0;
  *(v71 + 48) = 0xF000000000000007;
  a6(&v98, v71, v91, v20, v95, v97 & 1);
  if (v90)
  {
    v66 = v91;
    v67 = v20;
    v68 = v95;
    v69 = v97;
    goto LABEL_66;
  }

  a7(v91, v20, v95, v97);

  v18 = v98;
  v20 = v99;
  v22 = v100;
  v21 = v101;
  v11 = v85;
LABEL_7:
  if (v21 == -1)
  {
    sub_255D5C33C();
    swift_allocError();
    *v59 = 5;
    *(v59 + 8) = 0;
    *(v59 + 16) = 0;
    *(v59 + 24) = 0;
    *(v59 + 32) = 5;
LABEL_55:
    swift_willThrow();
    return v16;
  }

  *v11 = v18;
  *(v11 + 8) = v20;
  *(v11 + 16) = v22;
  *(v11 + 24) = v21 & 1;
  v23 = 7;
  if (v15)
  {
    v23 = 11;
  }

  return v14 | v23;
}

unint64_t sub_255DE5180(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_255E3AA18();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_255DE6940(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void *sub_255DE5480(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8440, &qword_255E55848);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255DE55B4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8410, &unk_255E55800);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_255DE5708(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_255DE5850(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8458, &qword_255E55860);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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

char *sub_255DE5944(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8438, &qword_255E55840);
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

char *sub_255DE5A50(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8418, &unk_255E5F300);
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

char *sub_255DE5B60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8448, &qword_255E55850);
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

void *sub_255DE5C6C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6148, &qword_255E3BB78);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_255DE5CE0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE60D0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255DE5D00(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE61E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255DE5D20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE62EC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_255DE5D40()
{
  result = qword_27F7E83F0;
  if (!qword_27F7E83F0)
  {
    result = swift_getWitnessTable(byte_255E557A8, &type metadata for InlineInterpolationString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E83F0);
  }

  return result;
}

unint64_t sub_255DE5DEC()
{
  result = qword_27F7E83F8;
  if (!qword_27F7E83F8)
  {
    result = swift_getWitnessTable(aQi, &type metadata for InlineInterpolationString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E83F8);
  }

  return result;
}

unint64_t sub_255DE5E44()
{
  result = qword_27F7E8400;
  if (!qword_27F7E8400)
  {
    result = swift_getWitnessTable(byte_255E556C8, &type metadata for InlineInterpolationString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8400);
  }

  return result;
}

unint64_t sub_255DE5E9C()
{
  result = qword_27F7E8408;
  if (!qword_27F7E8408)
  {
    result = swift_getWitnessTable(byte_255E556F0, &type metadata for InlineInterpolationString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8408);
  }

  return result;
}

void *sub_255DE5EF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8420, &unk_255E55810, &qword_27F7E6330, &qword_255E3E0F0);
  *v3 = result;
  return result;
}

void *sub_255DE5F30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8470, &qword_255E55878, &qword_27F7E8478, &qword_255E55880);
  *v3 = result;
  return result;
}

void *sub_255DE5F70(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8480, &qword_255E55888, &qword_27F7E8488, &qword_255E55890);
  *v3 = result;
  return result;
}

void *sub_255DE5FB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E84A8, &qword_255E558B0, &qword_27F7E84B0, &qword_255E558B8);
  *v3 = result;
  return result;
}

void *sub_255DE5FF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8490, &qword_255E55898, &qword_27F7E8498, &qword_255E558A0);
  *v3 = result;
  return result;
}

char *sub_255DE6030(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE6410(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255DE6050(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE651C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_255DE6070(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE66F4(a1, a2, a3, *v3, &qword_27F7E8430, &unk_255E55830, &qword_27F7E65D0, &qword_255E3E0F8);
  *v3 = result;
  return result;
}

char *sub_255DE60B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_255DE683C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_255DE60D0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8418, &unk_255E5F300);
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

char *sub_255DE61E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8410, &unk_255E55800);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_255DE62EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8438, &qword_255E55840);
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

void sub_255DE63F8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_255D348B4(a1, a2, a3, a4 & 1);
  }
}

char *sub_255DE6410(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84A0, &qword_255E558A8);
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

void *sub_255DE651C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8450, &qword_255E55858);
  v10 = *(sub_255E39068() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_255E39068() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_255DE66F4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

char *sub_255DE683C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8460, &qword_255E55868);
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

unsigned __int8 *sub_255DE6940(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_255E3A608();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_255DE6ECC(result, v5);
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
      result = sub_255E3AA18();
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

uint64_t sub_255DE6ECC(uint64_t a1, unint64_t a2)
{
  v2 = sub_255E3A618();
  v6 = sub_255DE6F4C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_255DE6F4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_255E3A8B8();
    if (!v9 || (v10 = v9, v11 = sub_255DE5C6C(v9, 0), v12 = sub_255DE70A4(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_255E3A568();

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
      return sub_255E3A568();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_255E3AA18();
LABEL_4:

  return sub_255E3A568();
}

unint64_t sub_255DE70A4(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_255DE72C4(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_255E3A5D8();
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
          result = sub_255E3AA18();
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

    result = sub_255DE72C4(v12, a6, a7);
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

    result = sub_255E3A5B8();
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

unint64_t sub_255DE72C4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_255E3A5E8();
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
    v5 = MEMORY[0x259C4E920](15, a1 >> 16);
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

uint64_t objectdestroyTm_3(void (*a1)(void, void, void, void))
{
  a1(*(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40));
  if ((~*(v1 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v1, 56, 7);
}

uint64_t sub_255DE73A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_255DE73EC(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_255DE743C(uint64_t a1, int a2)
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

uint64_t sub_255DE7484(uint64_t result, int a2, int a3)
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

uint64_t sub_255DE74DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  sub_255D3CE1C(a1, &v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    sub_255D34630(v37, v42);
    v45 = *v4;
    v10 = v45;
    if (v45)
    {
      v11 = v44;
      v30 = __swift_project_boxed_opaque_existential_1(v42, v43);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v12 = sub_255E38AE8();
      v32 = &v28;
      v31 = *(v12 - 8);
      MEMORY[0x28223BE20](v12);
      v33 = v5;
      v14 = &v28 - v13;
      v39 = *(v4 + 8);
      v37[0] = *(v4 + 24);
      v15 = swift_allocObject();
      v29 = a4;
      *(v15 + 16) = a2;
      v16 = *(v4 + 16);
      *(v15 + 24) = *v4;
      *(v15 + 40) = v16;
      *(v15 + 56) = *(v4 + 32);
      *(v15 + 64) = v10;
      *(v15 + 72) = a3;
      sub_255DE9654(&v45, v35);
      sub_255DE9654(&v45, v35);

      sub_255DC8A90(&v39, v35);
      sub_255DC8A90(v37, v35);

      sub_255E38E98();

      v17 = sub_255D48A94(v10);
      v18 = *(v11 + 8);
      v19 = sub_255DE96C4(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908);
      v34[0] = v18;
      v34[1] = v19;
      WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v12, v34);
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v17, a2, a3, v12, WitnessTable, v29);

      (*(v31 + 8))(v14, v12);
    }

    else
    {
      v22 = v44;
      __swift_project_boxed_opaque_existential_1(v42, v43);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8138, &qword_255E53908);
      v23 = sub_255E38AE8();
      v40 = v23;
      v36[0] = v22;
      v36[1] = sub_255DE96C4(&qword_27F7E8140, &qword_27F7E8138, &qword_255E53908);
      v41 = swift_getWitnessTable(MEMORY[0x277CDFAC0], v23, v36);
      __swift_allocate_boxed_opaque_existential_1(&v39);
      sub_255E38E98();
      v24 = v40;
      v25 = v41;
      v26 = __swift_project_boxed_opaque_existential_1(&v39, v40);
      a4[3] = v24;
      a4[4] = *(v25 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
      (*(*(v24 - 8) + 16))(boxed_opaque_existential_1, v26, v24);
      __swift_destroy_boxed_opaque_existential_1Tm(&v39);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v42);
  }

  else
  {
    v38 = 0;
    memset(v37, 0, sizeof(v37));
    sub_255D395E4(v37, &qword_27F7E8130, &qword_255E53900);
    return sub_255D3CE1C(a1, a4);
  }
}

uint64_t sub_255DE7928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v42 = a2;
  v43 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v34 - v10;
  v38 = sub_255E385E8();
  v37 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E558C0;
  v41 = a4;
  v15 = *(a4 + 8);
  v16 = *(a4 + 16);
  *(inited + 32) = v15;
  v40 = inited + 32;
  v39 = inited;
  *(inited + 40) = v16;
  sub_255E385F8();
  sub_255DE8F80();

  v17 = sub_255E3A7D8();
  v18 = MEMORY[0x277D84F90];
  if (!v17)
  {
LABEL_8:
    v26 = v39;
    sub_255DCB5B4(v18, (v39 + 48));

    v45[0] = *(v41 + 24);
    *(v26 + 56) = v45[0];
    v27 = swift_allocObject();
    *(v27 + 16) = v42;
    *(v26 + 72) = v27 | 0x2000000000000000;
    sub_255DC8A90(v45, &v44);
    v28 = sub_255DC53CC(v26);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F40, &unk_255E559F0);
    swift_arrayDestroy();
    v29 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for RemoteStateStore(0);
    swift_allocObject();

    v31 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v30, v28, v29);
    v32 = sub_255E3A778();
    (*(*(v32 - 8) + 56))(v11, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a5;
    v33[5] = v31;
    v33[6] = a6;

    sub_255D52540(0, 0, v11, &unk_255E5A580, v33);
  }

  v19 = v17;
  v44 = MEMORY[0x277D84F90];
  sub_255DE60B0(0, v17 & ~(v17 >> 63), 0);
  v18 = v44;
  result = sub_255E3A7C8();
  if ((v19 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v36 = a6;
    do
    {
      v21 = sub_255E3A7F8();
      v23 = *v22;
      v21(v45, 0);
      v44 = v18;
      v25 = *(v18 + 16);
      v24 = *(v18 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_255DE60B0((v24 > 1), v25 + 1, 1);
        v18 = v44;
      }

      *(v18 + 16) = v25 + 1;
      *(v18 + 8 * v25 + 32) = v23;
      sub_255E3A7E8();
      --v19;
    }

    while (v19);
    (*(v37 + 8))(v13, v38);
    a6 = v36;
    a5 = v35;
    v11 = v34;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_255DE7D6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7465537865646E69;
  v4 = 0xEB0000000079654BLL;
  if (v2 != 1)
  {
    v3 = 0x654B74657366666FLL;
    v4 = 0xE900000000000079;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x736E6F69746361;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7465537865646E69;
  v8 = 0xEB0000000079654BLL;
  if (*a2 != 1)
  {
    v7 = 0x654B74657366666FLL;
    v8 = 0xE900000000000079;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x736E6F69746361;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255DE7E88()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE7F38(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DE7FD4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255DE8080@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255DE99F0(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255DE80B0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xEB0000000079654BLL;
  v5 = 0x7465537865646E69;
  if (v2 != 1)
  {
    v5 = 0x654B74657366666FLL;
    v4 = 0xE900000000000079;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x736E6F69746361;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255DE811C()
{
  v1 = 0x7465537865646E69;
  if (*v0 != 1)
  {
    v1 = 0x654B74657366666FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x736E6F69746361;
  }
}

unint64_t sub_255DE8184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255DE99F0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255DE81AC(uint64_t a1)
{
  v2 = sub_255DE976C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DE81E8(uint64_t a1)
{
  v2 = sub_255DE976C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_255DE823C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_255DE8FD8(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_255DE8284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  sub_255D3CE1C(a1, v41);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8028, &unk_255E55A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8128, &qword_255E538F8);
  if (swift_dynamicCast())
  {
    v47 = a7;
    sub_255D34630(v39, v44);
    if (a4)
    {
      v33 = v46;
      v32[1] = __swift_project_boxed_opaque_existential_1(v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v15 = sub_255E38AE8();
      v35 = v32;
      v34 = *(v15 - 8);
      MEMORY[0x28223BE20](v15);
      v36 = v7;
      v17 = v32 - v16;
      v18 = swift_allocObject();
      v18[2] = a2;
      v18[3] = a4;
      v18[4] = a5;
      v18[5] = a6;
      v18[6] = a4;
      v18[7] = a3;
      swift_bridgeObjectRetain_n();

      v19 = v33;
      sub_255E38EA8();

      v20 = sub_255D48A94(a4);
      v21 = *(v19 + 8);
      v22 = sub_255DE96C4(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10);
      v37[0] = v21;
      v37[1] = v22;
      WitnessTable = swift_getWitnessTable(MEMORY[0x277CDFAD8], v15, v37);
      View.liftUI_viewWithAppliedModifiers(_:store:localStore:)(v20, a2, a3, v15, WitnessTable, v47);

      (*(v34 + 8))(v17, v15);
    }

    else
    {
      v25 = v46;
      __swift_project_boxed_opaque_existential_1(v44, v45);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8150, &qword_255E55A10);
      v26 = sub_255E38AE8();
      v42 = v26;
      v38[0] = v25;
      v38[1] = sub_255DE96C4(&qword_27F7E8158, &qword_27F7E8150, &qword_255E55A10);
      v43 = swift_getWitnessTable(MEMORY[0x277CDFAC0], v26, v38);
      __swift_allocate_boxed_opaque_existential_1(v41);
      sub_255E38EA8();
      v27 = v42;
      v28 = v43;
      v29 = __swift_project_boxed_opaque_existential_1(v41, v42);
      v30 = v47;
      v47[3] = v27;
      v30[4] = *(v28 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v30);
      (*(*(v27 - 8) + 16))(boxed_opaque_existential_1, v29, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v41);
    }

    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  else
  {
    v40 = 0;
    memset(v39, 0, sizeof(v39));
    sub_255D395E4(v39, &qword_27F7E8130, &qword_255E53900);
    return sub_255D3CE1C(a1, a7);
  }
}

uint64_t sub_255DE8684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6A70, &unk_255E559E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = sub_255E385E8();
  v38 = *(v14 - 8);
  v39 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6F38, &unk_255E44000);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 32) = a4;
  v40 = inited;
  v41 = inited + 32;
  *(inited + 40) = a5;
  sub_255E385F8();
  sub_255DE8F80();

  v18 = sub_255E3A7D8();
  v19 = MEMORY[0x277D84F90];
  if (!v18)
  {
LABEL_8:
    v27 = v40;
    sub_255DCB5B4(v19, (v40 + 48));

    v28 = sub_255DC53CC(v27);
    swift_setDeallocating();
    sub_255D395E4(v41, &qword_27F7E6F40, &unk_255E559F0);
    v29 = sub_255DC5124(MEMORY[0x277D84F90]);
    type metadata accessor for RemoteStateStore(0);
    swift_allocObject();

    v31 = RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(v30, v28, v29);
    v32 = sub_255E3A778();
    (*(*(v32 - 8) + 56))(v13, 1, 1, v32);
    v33 = swift_allocObject();
    v33[2] = 0;
    v33[3] = 0;
    v33[4] = a6;
    v33[5] = v31;
    v33[6] = a7;

    sub_255D52540(0, 0, v13, &unk_255E48080, v33);
  }

  v20 = v18;
  v44 = MEMORY[0x277D84F90];
  sub_255DE60B0(0, v18 & ~(v18 >> 63), 0);
  v19 = v44;
  result = sub_255E3A7C8();
  if ((v20 & 0x8000000000000000) == 0)
  {
    v35 = v13;
    v36 = a6;
    v37 = a7;
    do
    {
      v22 = sub_255E3A7F8();
      v24 = *v23;
      v22(v43, 0);
      v44 = v19;
      v26 = *(v19 + 16);
      v25 = *(v19 + 24);
      if (v26 >= v25 >> 1)
      {
        sub_255DE60B0((v25 > 1), v26 + 1, 1);
        v19 = v44;
      }

      *(v19 + 16) = v26 + 1;
      *(v19 + 8 * v26 + 32) = v24;
      sub_255E3A7E8();
      --v20;
    }

    while (v20);
    (*(v38 + 8))(v16, v39);
    a6 = v36;
    a7 = v37;
    v13 = v35;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

uint64_t sub_255DE8A34(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7465537865646E69;
  }

  else
  {
    v3 = 0x736E6F69746361;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xEB0000000079654BLL;
  }

  if (*a2)
  {
    v5 = 0x7465537865646E69;
  }

  else
  {
    v5 = 0x736E6F69746361;
  }

  if (*a2)
  {
    v6 = 0xEB0000000079654BLL;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255DE8AE4()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE8B70(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255DE8BE8(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255DE8C70@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

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

void sub_255DE8CD0(uint64_t *a1@<X8>)
{
  v2 = 0x736E6F69746361;
  if (*v1)
  {
    v2 = 0x7465537865646E69;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000079654BLL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255DE8D18()
{
  if (*v0)
  {
    return 0x7465537865646E69;
  }

  else
  {
    return 0x736E6F69746361;
  }
}

uint64_t sub_255DE8D5C@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

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

uint64_t sub_255DE8DC0(uint64_t a1)
{
  v2 = sub_255DE9718();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DE8DFC(uint64_t a1)
{
  v2 = sub_255DE9718();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DE8E58@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_255DE935C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t sub_255DE8E88(uint64_t a1)
{
  result = sub_255DE8EB0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DE8EB0()
{
  result = qword_27F7E84B8;
  if (!qword_27F7E84B8)
  {
    result = swift_getWitnessTable(byte_255E55980, &type metadata for OnDeleteModifier, v0, v1);
    atomic_store(result, &qword_27F7E84B8);
  }

  return result;
}

unint64_t sub_255DE8F04(uint64_t a1)
{
  result = sub_255DE8F2C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DE8F2C()
{
  result = qword_27F7E84C0;
  if (!qword_27F7E84C0)
  {
    result = swift_getWitnessTable(byte_255E55958, &type metadata for OnMoveModifier, v0, v1);
    atomic_store(result, &qword_27F7E84C0);
  }

  return result;
}

unint64_t sub_255DE8F80()
{
  result = qword_27F7E84C8;
  if (!qword_27F7E84C8)
  {
    v3 = sub_255E385F8();
    result = swift_getWitnessTable(MEMORY[0x277CC9A50], v3, v0, v1);
    atomic_store(result, &qword_27F7E84C8);
  }

  return result;
}

uint64_t sub_255DE8FD8@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84E0, &qword_255E55A28);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DE976C();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
  LOBYTE(v32[0]) = 0;
  sub_255D7B658();
  sub_255E3ABA8();
  v9 = v34;
  if (v34)
  {
    v30 = a2;
    v10 = *(v34 + 16);
    if (v10)
    {
      v28 = v6;
      v29 = v5;
      v33 = MEMORY[0x277D84F90];
      sub_255DE5EF0(0, v10, 0);
      v11 = v33;
      v27[1] = v9;
      v12 = v9 + 32;
      do
      {
        sub_255D7B730(v12, v31);
        sub_255D34630(v31, v32);
        v33 = v11;
        v14 = *(v11 + 16);
        v13 = *(v11 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_255DE5EF0((v13 > 1), v14 + 1, 1);
          v11 = v33;
        }

        *(v11 + 16) = v14 + 1;
        sub_255D34630(v32, v11 + 40 * v14 + 32);
        v12 += 40;
        --v10;
      }

      while (v10);

      v5 = v29;
      a2 = v30;
      v6 = v28;
    }

    else
    {

      v11 = MEMORY[0x277D84F90];
      a2 = v30;
    }
  }

  else
  {
    v11 = 0;
  }

  LOBYTE(v32[0]) = 1;
  v15 = sub_255E3AB88();
  v17 = 0xE800000000000000;
  v18 = v16;
  if (v16)
  {
    v17 = v16;
  }

  v29 = v15;
  v30 = v17;
  LOBYTE(v32[0]) = 2;
  v19 = sub_255E3AB88();
  v22 = 0x7465537865646E69;
  if (v18)
  {
    v22 = v29;
  }

  v29 = v22;
  if (v20)
  {
    v23 = v19;
  }

  else
  {
    v23 = 0x74657366666FLL;
  }

  if (v20)
  {
    v24 = v20;
  }

  else
  {
    v24 = 0xE600000000000000;
  }

  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v26 = v29;
  v25 = v30;
  *a2 = v11;
  a2[1] = v26;
  a2[2] = v25;
  a2[3] = v23;
  a2[4] = v24;
  return result;
}

uint64_t sub_255DE935C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E84D0, &unk_255E55A18);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_255DE9718();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7428, &qword_255E480C0);
    LOBYTE(v18[0]) = 0;
    sub_255D7B658();
    sub_255E3ABA8();
    v8 = v20;
    if (v20)
    {
      v9 = *(v20 + 16);
      if (v9)
      {
        v15 = v4;
        v16 = v3;
        v19 = MEMORY[0x277D84F90];
        sub_255DE5EF0(0, v9, 0);
        v7 = v19;
        v14 = v8;
        v10 = v8 + 32;
        do
        {
          sub_255D7B730(v10, v17);
          sub_255D34630(v17, v18);
          v19 = v7;
          v12 = *(v7 + 16);
          v11 = *(v7 + 24);
          if (v12 >= v11 >> 1)
          {
            sub_255DE5EF0((v11 > 1), v12 + 1, 1);
            v7 = v19;
          }

          *(v7 + 16) = v12 + 1;
          sub_255D34630(v18, v7 + 40 * v12 + 32);
          v10 += 40;
          --v9;
        }

        while (v9);

        v4 = v15;
        v3 = v16;
      }

      else
      {

        v7 = MEMORY[0x277D84F90];
      }
    }

    else
    {
      v7 = 0;
    }

    LOBYTE(v18[0]) = 1;
    sub_255E3AB88();
    (*(v4 + 8))(v6, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

uint64_t sub_255DE9654(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8148, &qword_255E53910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_255DE96C4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277CE04A0], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255DE9718()
{
  result = qword_27F7E84D8;
  if (!qword_27F7E84D8)
  {
    result = swift_getWitnessTable(byte_255E55C6C, &type metadata for OnDeleteModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E84D8);
  }

  return result;
}

unint64_t sub_255DE976C()
{
  result = qword_27F7E84E8;
  if (!qword_27F7E84E8)
  {
    result = swift_getWitnessTable(aZT, &type metadata for OnMoveModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E84E8);
  }

  return result;
}

unint64_t sub_255DE97E4()
{
  result = qword_27F7E84F0;
  if (!qword_27F7E84F0)
  {
    result = swift_getWitnessTable(byte_255E55B04, &type metadata for OnDeleteModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E84F0);
  }

  return result;
}

unint64_t sub_255DE983C()
{
  result = qword_27F7E84F8;
  if (!qword_27F7E84F8)
  {
    result = swift_getWitnessTable(byte_255E55BF4, &type metadata for OnMoveModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E84F8);
  }

  return result;
}

unint64_t sub_255DE9894()
{
  result = qword_27F7E8500;
  if (!qword_27F7E8500)
  {
    result = swift_getWitnessTable(aUtD, &type metadata for OnMoveModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8500);
  }

  return result;
}

unint64_t sub_255DE98EC()
{
  result = qword_27F7E8508;
  if (!qword_27F7E8508)
  {
    result = swift_getWitnessTable(byte_255E55B54, &type metadata for OnMoveModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8508);
  }

  return result;
}

unint64_t sub_255DE9944()
{
  result = qword_27F7E8510;
  if (!qword_27F7E8510)
  {
    result = swift_getWitnessTable(aEuX, &type metadata for OnDeleteModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8510);
  }

  return result;
}

unint64_t sub_255DE999C()
{
  result = qword_27F7E8518;
  if (!qword_27F7E8518)
  {
    result = swift_getWitnessTable(aUq0, &type metadata for OnDeleteModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8518);
  }

  return result;
}

unint64_t sub_255DE99F0(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_255DE9A3C(unsigned __int8 *a1)
{
  type metadata accessor for BasicLiftUIDataSource();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [objc_opt_self() bundleForClass_];
  v3 = sub_255E3A4C8();
  v4 = [v2 objectForInfoDictionaryKey_];

  if (v4)
  {
    sub_255E3A8D8();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      sub_255E383D8();
    }
  }

  else
  {
    sub_255D395E4(v7, &qword_27F7E7C08, &qword_255E4EF88);
  }

  sub_255E383D8();
}

uint64_t LiftUIDataSource.request(for:)(uint64_t a1)
{
  v2 = sub_255E38588();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E383B8();
}

uint64_t BasicLiftUIDataSource.data(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DD8034;

  return sub_255DEA664(a1);
}

uint64_t BasicLiftUIDataSource.request(for:)(uint64_t a1)
{
  v2 = sub_255E38588();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E383B8();
}

uint64_t sub_255DE9EC0(uint64_t a1)
{
  v2 = sub_255E38588();
  MEMORY[0x28223BE20](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_255E383B8();
}

uint64_t sub_255DE9FA0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_255DEB140;

  return sub_255DEA664(a1);
}

void static RemoteLoader.requestWithLiftUIHeaders(request:reloadType:)(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = sub_255E38408();
  (*(*(v6 - 8) + 16))(a3, a1, v6);
  v7 = v5;
  sub_255DE9A3C(&v7);
}

uint64_t sub_255DEA0CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  type metadata accessor for AnyWeakDataSource();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_255E398D8();
}

uint64_t EnvironmentValues.liftUIDataSource.getter()
{
  sub_255D397C4();
  sub_255E38D58();
  return v1;
}

uint64_t _s7SwiftUI4ViewP04LiftB0E14liftUIDelegateyQrAD0dF0_pF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getKeyPath();
  type metadata accessor for AnyWeakDelegate();
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  sub_255E398D8();
}

uint64_t EnvironmentValues.liftUIDelegate.getter()
{
  sub_255D39770();
  sub_255E38D58();
  return v1;
}

uint64_t sub_255DEA354(uint64_t a1)
{
  type metadata accessor for BasicLiftUIDataSource();
  result = swift_allocObject();
  *&xmmword_27F7E8520 = result;
  *(&xmmword_27F7E8520 + 1) = &protocol witness table for BasicLiftUIDataSource;
  return result;
}

uint64_t sub_255DEA38C@<X0>(_OWORD *a1@<X8>)
{
  if (qword_27F7E5E78 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = xmmword_27F7E8520;

  return swift_unknownObjectRetain();
}

void (*EnvironmentValues.liftUIDataSource.modify(uint64_t *a1))(__int128 **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_255D397C4();
  sub_255E38D58();
  *v4 = v4[1];
  return sub_255DEA4A4;
}

void sub_255DEA4A4(__int128 **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_255E38D68();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_255E38D68();
  }

  free(v2);
}

void (*EnvironmentValues.liftUIDelegate.modify(uint64_t *a1))(__int128 **a1, char a2)
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
  *(v3 + 32) = v1;
  *(v3 + 40) = sub_255D39770();
  sub_255E38D58();
  *v4 = v4[1];
  return sub_255DEA5D0;
}

void sub_255DEA5D0(__int128 **a1, char a2)
{
  v2 = *a1;
  (*a1)[1] = **a1;
  if (a2)
  {
    swift_unknownObjectRetain();
    sub_255E38D68();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_255E38D68();
  }

  free(v2);
}

uint64_t sub_255DEA664(uint64_t a1)
{
  v1[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
  v1[3] = swift_task_alloc();
  v2 = sub_255E38588();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_255DEA75C, 0, 0);
}

uint64_t sub_255DEA75C()
{
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  sub_255E383C8();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_255D395E4(v0[3], &qword_27F7E6B28, &unk_255E48060);
LABEL_6:
    v0[7] = [objc_opt_self() sharedSession];
    v5 = swift_task_alloc();
    v0[8] = v5;
    *v5 = v0;
    v5[1] = sub_255DEA9B0;
    v6 = v0[2];

    return MEMORY[0x28211ECF8](v6, 0);
  }

  (*(v0[5] + 32))(v0[6], v0[3], v0[4]);
  if ((sub_255E38548() & 1) == 0)
  {
    (*(v0[5] + 8))(v0[6], v0[4]);
    goto LABEL_6;
  }

  v4 = sub_255E38598();
  v8 = v7;
  (*(v0[5] + 8))(v0[6], v0[4]);

  v9 = v0[1];

  return v9(v4, v8);
}

uint64_t sub_255DEA9B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 96) = v3;

  if (v3)
  {
    v6 = sub_255DEACAC;
  }

  else
  {

    v6 = sub_255DEAAD0;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_255DEAAD0()
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  v2 = v0[11];
  if (!v1)
  {
LABEL_4:

    v5 = v0[9];
    v6 = v0[10];

    v7 = v0[1];

    return v7(v5, v6);
  }

  v3 = v1;
  v4 = v2;
  if ([v3 statusCode] - 200 <= 0x63)
  {
    v2 = v0[11];

    goto LABEL_4;
  }

  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[9];
  v12 = v0[2];
  type metadata accessor for RemoteLoaderError(0);
  sub_255DEB0DC();
  swift_allocError();
  v14 = v13;
  v15 = sub_255E38408();
  (*(*(v15 - 8) + 16))(v14, v12, v15);
  swift_storeEnumTagMultiPayload();
  swift_willThrow();

  sub_255D37E60(v11, v9);

  v16 = v0[1];

  return v16();
}

uint64_t sub_255DEACAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t dispatch thunk of LiftUIDataSource.data(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_255DEAE74;

  return v9(a1, a2, a3);
}

uint64_t sub_255DEAE74(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t get_witness_table_7SwiftUI4ViewRzlAA15ModifiedContentVyxAA30_EnvironmentKeyWritingModifierVy04LiftB00J12UIDataSource_pGGAaBHPxAaBHD1__AiA0cI0HPyHCHCTm(uint64_t *a1, uint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
  v8 = sub_255E38AE8();
  v10[0] = v7;
  v10[1] = sub_255DEB068(a4, a2, a3);
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v8, v10);
}

uint64_t sub_255DEB068(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_255DEB0DC()
{
  result = qword_27F7E73D8;
  if (!qword_27F7E73D8)
  {
    v3 = type metadata accessor for RemoteLoaderError(255);
    result = swift_getWitnessTable(byte_255E54FB4, v3, v0, v1);
    atomic_store(result, &qword_27F7E73D8);
  }

  return result;
}

uint64_t sub_255DEB154()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DEB1D8(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255DEB234@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255DEB2D4@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255DEB32C(uint64_t a1)
{
  v2 = sub_255DEB96C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DEB368(uint64_t a1)
{
  v2 = sub_255DEB96C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DEB3A4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8560, &qword_255E560E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DEB96C();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABC8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DEB524@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8548, &qword_255E560D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - v9;
  v11 = *(v3 + 8);
  v12 = *(v3 + 16);
  v13 = *(v3 + 24);
  v26 = *v3;
  v27 = v11;
  v28 = v12;
  v29 = v13;
  sub_255D3E5A8(v26, v11, v12, v13);
  v14 = StringResolvable.resolved(with:)(a2);
  if (v4)
  {

    sub_255D38060(v26, v27, v28, v29);
    v16 = 0xEC0000006C616369;
    v17 = 0x6863726172656968;
  }

  else
  {
    v17 = v14;
    v16 = v15;
    sub_255D38060(v26, v27, v28, v29);
  }

  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19 = sub_255DEB854(v17, v16);
  if (v19 <= 1)
  {
    if (v19)
    {
      sub_255E39128();
    }

    else
    {
      sub_255E39148();
    }

    goto LABEL_13;
  }

  if (v19 == 2)
  {
    sub_255E39138();
    goto LABEL_13;
  }

  if (v19 == 3)
  {
    sub_255E39158();
LABEL_13:
    v21 = sub_255E39168();
    (*(*(v21 - 8) + 56))(v10, 0, 1, v21);
    goto LABEL_14;
  }

  v20 = sub_255E39168();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
LABEL_14:
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8550, &qword_255E560D8);
  v22 = sub_255E38AE8();
  a3[3] = v22;
  v23 = sub_255DEB8A0();
  v25[0] = v18;
  v25[1] = v23;
  a3[4] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v22, v25);
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39A88();
  return sub_255DEB904(v10);
}

unint64_t sub_255DEB7D8(uint64_t a1)
{
  result = sub_255DEB800();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255DEB800()
{
  result = qword_27F7E8540;
  if (!qword_27F7E8540)
  {
    result = swift_getWitnessTable(aA_13, &type metadata for SymbolRenderingModeModifier, v0, v1);
    atomic_store(result, &qword_27F7E8540);
  }

  return result;
}

unint64_t sub_255DEB854(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255DEB8A0()
{
  result = qword_27F7E8558;
  if (!qword_27F7E8558)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8550, &qword_255E560D8);
    result = swift_getWitnessTable(MEMORY[0x277CE0868], v3, v0, v1);
    atomic_store(result, &qword_27F7E8558);
  }

  return result;
}

uint64_t sub_255DEB904(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8548, &qword_255E560D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_255DEB96C()
{
  result = qword_27F7E8568;
  if (!qword_27F7E8568)
  {
    result = swift_getWitnessTable(aEt, &type metadata for SymbolRenderingModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8568);
  }

  return result;
}

unint64_t sub_255DEB9D4()
{
  result = qword_27F7E8570;
  if (!qword_27F7E8570)
  {
    result = swift_getWitnessTable(asc_255E561BC, &type metadata for SymbolRenderingModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8570);
  }

  return result;
}

unint64_t sub_255DEBA2C()
{
  result = qword_27F7E8578;
  if (!qword_27F7E8578)
  {
    result = swift_getWitnessTable(byte_255E560F4, &type metadata for SymbolRenderingModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8578);
  }

  return result;
}

unint64_t sub_255DEBA84()
{
  result = qword_27F7E8580;
  if (!qword_27F7E8580)
  {
    result = swift_getWitnessTable(byte_255E5611C, &type metadata for SymbolRenderingModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E8580);
  }

  return result;
}

void *sub_255DEBAD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = (*(a3 + 16))(v20);
  if (!v4)
  {
    v21 = a1;
    v10 = (*(a3 + 24))(a2, a3);
    result = sub_255D3CE1C(v20, a4);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = 0;
      v13 = v10 + 32;
      while (v12 < *(v10 + 16))
      {
        sub_255D3CE1C(v13, v17);
        v14 = v18;
        v15 = v19;
        __swift_project_boxed_opaque_existential_1(v17, v18);
        (*(v15 + 16))(v16, a4, v21, v14, v15);
        ++v12;
        __swift_destroy_boxed_opaque_existential_1Tm(a4);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        result = sub_255D34630(v16, a4);
        v13 += 40;
        if (v11 == v12)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
    }
  }

  return result;
}

uint64_t sub_255DEBC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7265696669646F6DLL && a2 == 0xE900000000000073)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_255E3AC68();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_255DEBD00(uint64_t a1)
{
  v2 = sub_255DED428();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DEBD3C(uint64_t a1)
{
  v2 = sub_255DED428();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255DEBD78@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E85B8, &qword_255E56460);
  v52 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - v5;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v7 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v9 = &v42 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v11 = sub_255E3AAE8();
  v12 = __swift_project_value_buffer(v11, qword_27F8152F0);
  if (!*(v10 + 16) || (v13 = sub_255D3CA98(v12), (v14 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v10 + 56) + 32 * v13, &v56);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError(0);
    sub_255DED5C4(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v49 = v6;
  v48 = v4;
  v50 = v7;
  v15 = *&v55[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v47 = v15;
  v18 = v63;
  v19 = sub_255E3ABD8();
  if (!*(v19 + 16))
  {

    type metadata accessor for DynamicKeyError(0);
    sub_255DED5C4(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
    swift_allocError();
    sub_255E3AB68();
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v50 + 8))(v9, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = *(v19 + 40);
  v45 = *(v19 + 32);
  v21 = *(v19 + 48);
  LODWORD(v46) = *(v19 + 56);
  swift_bridgeObjectRetain_n();

  v22 = sub_255E3AB68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
  v23 = v21;
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 56) = &type metadata for DynamicKey;
  *(inited + 64) = v16;
  v25 = v46;
  v26 = swift_allocObject();
  *(inited + 32) = v26;
  v27 = v45;
  *(v26 + 16) = v45;
  *(v26 + 24) = v20;
  *(v26 + 32) = v23;
  *(v26 + 40) = v25;
  *&v56 = v22;

  sub_255D3CDA0(inited);
  v28 = sub_255E0AAE8(v27, v20, v56);
  v44 = v29;
  v30 = v28;

  v53[0] = v27;
  v53[1] = v20;
  v53[2] = v23;
  v54 = v25;
  sub_255E3AB78();
  v43 = v23;
  v58 = v30;
  v59 = v44;
  __swift_allocate_boxed_opaque_existential_1(&v56);
  sub_255E3A7B8();
  sub_255D34630(&v56, v60);
  *&v56 = v27;
  *(&v56 + 1) = v20;
  v57 = v43;
  LOBYTE(v58) = v46;
  sub_255DED428();
  v31 = v49;
  sub_255E3AB58();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E85C8, &qword_255E56468);
  sub_255DED47C();
  v32 = v48;
  sub_255E3ABA8();
  if (v56)
  {
    v33 = v56;
  }

  else
  {
    v33 = MEMORY[0x277D84F90];
  }

  v34 = *(v33 + 16);
  if (v34)
  {
    v53[0] = MEMORY[0x277D84F90];
    sub_255DE5FF0(0, v34, 0);
    v35 = v53[0];
    v46 = v33;
    v36 = v33 + 32;
    do
    {
      sub_255DED554(v36, v55);
      sub_255D34630(v55, &v56);
      v53[0] = v35;
      v38 = *(v35 + 16);
      v37 = *(v35 + 24);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v45 = v38 + 1;
        sub_255DE5FF0((v37 > 1), v38 + 1, 1);
        v39 = v45;
        v35 = v53[0];
      }

      *(v35 + 16) = v39;
      sub_255D34630(&v56, v35 + 40 * v38 + 32);
      v36 += 40;
      --v34;
    }

    while (v34);
  }

  else
  {

    v35 = MEMORY[0x277D84F90];
  }

  v40 = v61;
  v41 = v62;
  __swift_mutable_project_boxed_opaque_existential_1(v60, v61);
  (*(v41 + 32))(v35, v40, v41);

  (*(v52 + 8))(v31, v32);
  (*(v50 + 8))(v9, v63);
  sub_255DED58C(v60, v51);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255DB0548(v60);
}

uint64_t sub_255DEC6D0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v31 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v10 = sub_255E3AAE8();
  v11 = __swift_project_value_buffer(v10, qword_27F8152F0);
  if (!*(v9 + 16) || (v12 = sub_255D3CA98(v11), (v13 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v9 + 56) + 32 * v12, &v41);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError(0);
    sub_255DED5C4(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v37 = v5;
  v46 = v6;
  v36 = a2;
  v14 = v40[0];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = sub_255D3CAFC();
  sub_255E3AE28();
  if (v2)
  {
  }

  else
  {
    v35 = v14;
    v17 = v37;
    v18 = sub_255E3ABD8();
    if (*(v18 + 16))
    {
      v19 = *(v18 + 32);
      v20 = *(v18 + 40);
      v33 = *(v18 + 48);
      v34 = *(v18 + 56);
      swift_bridgeObjectRetain_n();

      v21 = sub_255E3AB68();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_255E3BBC0;
      *(inited + 56) = &type metadata for DynamicKey;
      *(inited + 64) = v15;
      v23 = swift_allocObject();
      *(inited + 32) = v23;
      *(v23 + 16) = v19;
      *(v23 + 24) = v20;
      v24 = v33;
      *(v23 + 32) = v33;
      *(v23 + 40) = v34;
      *&v41 = v21;

      sub_255D3CDA0(inited);
      v25 = v19;
      v26 = sub_255E0AE3C(v19, v20, v41);
      v27 = v46;
      v32 = v28;
      v31 = v26;

      v38[0] = v25;
      v38[1] = v20;
      v38[2] = v24;
      v39 = v34;
      sub_255E3AB78();

      v42 = v31;
      v43 = v32;
      __swift_allocate_boxed_opaque_existential_1(&v41);
      sub_255E3A7B8();
      (*(v27 + 8))(v8, v17);

      sub_255D34630(&v41, v44);
      v29 = v44[1];
      v30 = v36;
      *v36 = v44[0];
      v30[1] = v29;
      *(v30 + 4) = v45;
    }

    else
    {

      type metadata accessor for DynamicKeyError(0);
      sub_255DED5C4(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
      swift_allocError();
      sub_255E3AB68();
      sub_255E3A9C8();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();

      (*(v46 + 8))(v8, v17);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255DECCC4()
{
  if (*v0)
  {
    return 0x61696C6169746E61;
  }

  else
  {
    return 0x6C6C69466F65;
  }
}

uint64_t sub_255DECD04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6C69466F65 && a2 == 0xE600000000000000;
  if (v6 || (sub_255E3AC68() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x61696C6169746E61 && a2 == 0xEB00000000646573)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_255E3AC68();

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

uint64_t sub_255DECDE0(uint64_t a1)
{
  v2 = sub_255DED220();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255DECE1C(uint64_t a1)
{
  v2 = sub_255DED220();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t FillStyle.encode(to:)(void *a1, unsigned int a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8588, &unk_255E56240);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DED220();
  sub_255E3AE58();
  v9[15] = 0;
  sub_255E3AC08();
  if (!v2)
  {
    v9[14] = 1;
    sub_255E3AC08();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_255DECFF8@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_255DED060(a2);
  if (!v2)
  {
    *a1 = result & 1;
    a1[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_255DED030(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return FillStyle.encode(to:)(a1, v2 | *v1);
}

uint64_t sub_255DED060(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E85B0, &qword_255E563F8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255DED220();
  sub_255E3AE28();
  if (v1)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11[15] = 0;
  v7 = sub_255E3AB98();
  v11[14] = 1;
  v8 = sub_255E3AB98();
  (*(v4 + 8))(v6, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  if ((v8 == 2) | v8 & 1)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 0xFFFFFFFE | v7 & 1;
}

unint64_t sub_255DED220()
{
  result = qword_27F7E8590;
  if (!qword_27F7E8590)
  {
    result = swift_getWitnessTable(byte_255E563A8, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F7E8590);
  }

  return result;
}

unint64_t sub_255DED314()
{
  result = qword_27F7E8598;
  if (!qword_27F7E8598)
  {
    result = swift_getWitnessTable(aI_5, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F7E8598);
  }

  return result;
}

unint64_t sub_255DED36C()
{
  result = qword_27F7E85A0;
  if (!qword_27F7E85A0)
  {
    result = swift_getWitnessTable(byte_255E562F0, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F7E85A0);
  }

  return result;
}

unint64_t sub_255DED3C4()
{
  result = qword_27F7E85A8;
  if (!qword_27F7E85A8)
  {
    result = swift_getWitnessTable(byte_255E56318, &_s10CodingKeysON, v0, v1);
    atomic_store(result, &qword_27F7E85A8);
  }

  return result;
}

unint64_t sub_255DED428()
{
  result = qword_27F7E85C0;
  if (!qword_27F7E85C0)
  {
    result = swift_getWitnessTable(aP, &type metadata for ShapeStyleContentBox.ShapeStyleContentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E85C0);
  }

  return result;
}

unint64_t sub_255DED47C()
{
  result = qword_27F7E85D0;
  if (!qword_27F7E85D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E85C8, &qword_255E56468);
    v4[0] = sub_255DED500();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F7E85D0);
  }

  return result;
}

unint64_t sub_255DED500()
{
  result = qword_27F7E85D8;
  if (!qword_27F7E85D8)
  {
    result = swift_getWitnessTable(byte_255E56584, &type metadata for ShapeStyleModifierBox, v0, v1);
    atomic_store(result, &qword_27F7E85D8);
  }

  return result;
}

uint64_t sub_255DED5C4(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

unint64_t sub_255DED630()
{
  result = qword_27F7E85E0;
  if (!qword_27F7E85E0)
  {
    result = swift_getWitnessTable(aM_11, &type metadata for ShapeStyleContentBox.ShapeStyleContentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E85E0);
  }

  return result;
}

unint64_t sub_255DED688()
{
  result = qword_27F7E85E8;
  if (!qword_27F7E85E8)
  {
    result = swift_getWitnessTable(byte_255E564CC, &type metadata for ShapeStyleContentBox.ShapeStyleContentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E85E8);
  }

  return result;
}

unint64_t sub_255DED6E0()
{
  result = qword_27F7E85F0;
  if (!qword_27F7E85F0)
  {
    result = swift_getWitnessTable(byte_255E564F4, &type metadata for ShapeStyleContentBox.ShapeStyleContentCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E85F0);
  }

  return result;
}

uint64_t sub_255DED764(void (*a1)(void))
{
  v2 = swift_allocObject();
  a1();
  return v2;
}

uint64_t RemoteStateStore.set(reference:value:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  if (*(a1 + 24) != 1)
  {
    sub_255D5C33C();
    swift_allocError();
    v21 = v20;
    *(v20 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v22 = swift_allocObject();
    *v21 = v22;
    *(v22 + 16) = v4;
    *(v22 + 24) = v5;
    *(v22 + 32) = v6;
    *(v22 + 40) = 0;
    *(v21 + 32) = 2;
    swift_willThrow();
  }

  v7 = *a2;
  if (!*(v2 + qword_27F7E85F8))
  {
    return sub_255DEF304(v2, v7, v4, v5, v6, 1);
  }

  v8 = v3;
  v9 = qword_27F7E8600;
  swift_beginAccess();
  v10 = *(v2 + v9);
  v11 = *(v10 + 16);

  if (!v11 || (v12 = sub_255D3CA20(v4, v5), (v13 & 1) == 0))
  {
    swift_endAccess();

    return sub_255DEF304(v2, v7, v4, v5, v6, 1);
  }

  v14 = *(v10 + 56) + 32 * v12;
  v16 = *v14;
  v15 = *(v14 + 8);
  v17 = *(v14 + 16);
  v18 = *(v14 + 24);
  swift_endAccess();
  sub_255D5C258(v16, v15, v17, v18);
  sub_255DEE318(v6, v16, v15, v17, v18, v27);
  if (v8)
  {

    return sub_255D4DE84(v16, v15, v17, v18);
  }

  else
  {
    v23 = v27[0];
    v24 = v27[1];
    v26 = v27[2];
    v25 = v28;
    v29 = v7;
    RemoteStateStore.set(reference:value:)(v27, &v29);
    sub_255D4DE84(v16, v15, v17, v18);

    return sub_255D4DE84(v23, v24, v26, v25);
  }
}

uint64_t LocalStateStore.getScrollViewProxy(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _s6LiftUI15LocalStateStoreCyypSgSScig_0(a1, a2, &v8);
  if (v9)
  {
    v4 = sub_255E38B18();
    v5 = swift_dynamicCast();
    return (*(*(v4 - 8) + 56))(a3, v5 ^ 1u, 1, v4);
  }

  else
  {
    sub_255D395E4(&v8, &qword_27F7E7C08, &qword_255E4EF88);
    v7 = sub_255E38B18();
    return (*(*(v7 - 8) + 56))(a3, 1, 1, v7);
  }
}

void sub_255DEDB88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEE4FC(v9, a4, &v18);
      sub_255D2F870(a4);
      v9 = v18;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E76A8, &unk_255E567B0);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    sub_255D348B4(a2, a3, a4, 0);
  }
}

uint64_t sub_255DEDD6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEE74C(v9, a4, &v19);
      sub_255D2F870(a4);
      v9 = v19;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7390, &qword_255E55340);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    return sub_255D3E5D8(a2, a3, a4, 0);
  }
}

void sub_255DEDF50(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEE99C(v9, a4, &v18);
      sub_255D2F870(a4);
      v9 = v18;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    sub_255D348B4(a2, a3, a4, 0);
  }
}

void sub_255DEE134(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEEBEC(v9, a4, &v18);
      sub_255D2F870(a4);
      v9 = v18;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E86C0, &unk_255E567C0);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    sub_255D348B4(a2, a3, a4, 0);
  }
}

uint64_t sub_255DEE318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a5)
  {
    v9 = a1;
    if ((~a4 & 0xF000000000000007) != 0)
    {

      sub_255DEEE3C(v9, a4, &v19);
      sub_255D2F870(a4);
      v9 = v19;
    }

    else
    {
      sub_255D34858(a1);
    }

    *a6 = a2;
    *(a6 + 8) = a3;
    *(a6 + 16) = v9;
    *(a6 + 24) = 1;
  }

  else
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v11 = sub_255E386A8();
    __swift_project_value_buffer(v11, qword_27F8152D8);
    v12 = sub_255E38688();
    v13 = sub_255E3A848();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_255D2E000, v12, v13, "Attempting to add a subreference to a value", v14, 2u);
      MEMORY[0x259C4F9E0](v14, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a2;
    *(v17 + 24) = a3;
    *(v17 + 32) = a4;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
    return sub_255D5C258(a2, a3, a4, 0);
  }
}

void sub_255DEE4FC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEE4FC(a1, v16, &v19);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEE4FC(a1, v9, &v19);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEE74C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEE74C(a1, v16, &v19);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEE74C(a1, v9, &v19);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEE99C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEE99C(a1, v16, &v19);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEE99C(a1, v9, &v19);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEEBEC(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEEBEC(a1, v16, &v19);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEEBEC(a1, v9, &v19);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void sub_255DEEE3C(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  if (a2 < 0)
  {
    v12 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
    v13 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x18);
    v14 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
    v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
    v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
    v17 = swift_allocObject();
    v18 = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v13;
    *(v17 + 32) = v14;
    *(v17 + 40) = v15;
    if ((~v16 & 0xF000000000000007) != 0)
    {
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D612A0(v12, v13, v14, v15);
      sub_255D34858(v16);
      sub_255DEEE3C(a1, v16, &v19);
      sub_255D4CB98(v12, v13, v14, v15);
      sub_255D2F870(v16);
      *(v18 + 48) = v19;
      *a3 = v18 | 0x8000000000000000;
    }

    else
    {
      *(v17 + 48) = a1;
      *a3 = v17 | 0x8000000000000000;
      sub_255D34858(a1);

      sub_255D612A0(v12, v13, v14, v15);
    }
  }

  else
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 24);
    v7 = *(a2 + 32);
    v8 = *(a2 + 40);
    v9 = *(a2 + 48);
    v10 = swift_allocObject();
    v11 = v10;
    *(v10 + 16) = v5;
    *(v10 + 24) = v6;
    *(v10 + 32) = v7;
    *(v10 + 40) = v8;
    if ((~v9 & 0xF000000000000007) != 0)
    {
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D3E5A8(v5, v6, v7, v8);
      sub_255D34858(v9);
      sub_255DEEE3C(a1, v9, &v19);
      sub_255D38060(v5, v6, v7, v8);
      sub_255D2F870(v9);
      *(v11 + 48) = v19;
      *a3 = v11;
    }

    else
    {
      *(v10 + 48) = a1;
      *a3 = v10;
      sub_255D3E5A8(v5, v6, v7, v8);

      sub_255D34858(a1);
    }
  }
}

void *RemoteStateStore.binding<A>(forKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = a3;
  v10[5] = a4;
  v10[6] = v5;
  v10[7] = a1;
  v10[8] = a2;
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = a3;
  v11[5] = a4;
  v11[6] = v5;
  v11[7] = a1;
  v11[8] = a2;
  sub_255E3A8A8();
  swift_retain_n();
  swift_bridgeObjectRetain_n();

  return sub_255E3A068();
}

uint64_t RemoteStateStore.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(v3 + qword_27F7E85F8);
  if (v6)
  {
    v7 = a3;
    v8 = qword_27F7E8600;
    swift_beginAccess();
    v9 = *(v3 + v8);
    v10 = *(v9 + 16);

    if (v10)
    {
      v11 = sub_255D3CA20(a1, a2);
      if (v12)
      {
        v13 = *(v9 + 56) + 32 * v11;
        v14 = *v13;
        v15 = *(v13 + 8);
        v16 = *(v13 + 16);
        v17 = *(v13 + 24);
        swift_endAccess();
        sub_255D5C258(v14, v15, v16, v17);
        sub_255DDEBF8(v6, v14, v15, v16, v17, v19);

        result = sub_255D4DE84(v14, v15, v16, v17);
        *v7 = v19[0];
        return result;
      }
    }

    swift_endAccess();

    a3 = v7;
  }

  return sub_255DE3530(a1, a2, a3);
}

uint64_t sub_255DEF304(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B80, &unk_255E56600);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a5;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
  }

  RemoteStateStore.subscript.getter(a3, a4, &v22);
  v12 = v22;
  if ((~v22 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v22);
    sub_255D5C33C();
    swift_allocError();
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = &type metadata for DecodableState;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  sub_255D5C324(v12);
  if ((v12 >> 61) >= 4)
  {
    if (v12 >> 61 == 4)
    {
      if ((~a5 & 0xF000000000000007) != 0)
      {
        sub_255D5C30C(v12);
        sub_255D34858(a5);

        sub_255DF0CC0(v18, a5, a2, a1, &v22);

        if (v6)
        {
          sub_255D5C324(v12);
          sub_255D2F870(a5);
          return sub_255D5C324(v12);
        }

        v21 = v22;

        sub_255DF2888(v21, a3, a4);
        sub_255D2F870(a5);

LABEL_18:
        sub_255D5C324(v12);
        return sub_255D5C324(v12);
      }
    }

    else if ((~a5 & 0xF000000000000007) != 0)
    {
      v19 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      sub_255D5C30C(v12);

      sub_255D34858(a5);
      sub_255DEFC30(v19, a5, a2, a1, &v22);
      if (v6)
      {

        v20 = 0xF000000000000007;
      }

      else
      {

        v20 = v22;
      }

      sub_255DF2888(v20, a3, a4);
      sub_255D2F870(a5);
      sub_255D5C324(v20);
      goto LABEL_18;
    }

    sub_255D5C30C(v12);

    sub_255DF2888(a2, a3, a4);
    goto LABEL_18;
  }

  sub_255DF2888(a2, a3, a4);
  return sub_255D5C324(v12);
}

void *sub_255DEF60C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_255D5C33C();
    swift_allocError();
    v16 = v15;
    *(v15 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7418, qword_255E567D0);
    v17 = swift_allocObject();
    *v16 = v17;
    *(v17 + 16) = a3;
    *(v17 + 24) = a4;
    *(v17 + 32) = a5;
    *(v17 + 40) = 0;
    *(v16 + 32) = 2;
    swift_willThrow();
  }

  RemoteStateStore.subscript.getter(a3, a4, &v86);
  v11 = v86;
  if ((~v86 & 0xF000000000000007) == 0)
  {
    sub_255D5C324(v86);
    sub_255D5C33C();
    swift_allocError();
    v13 = v12;
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    *v13 = a3;
    *(v13 + 8) = a4;
    *(v13 + 16) = v14;
    *(v13 + 32) = 0;
    swift_willThrow();
  }

  sub_255D5C324(v11);
  if (v11 >> 61 != 5)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E73E8, &unk_255E480A0);
    sub_255D7B470();
    swift_allocError();
    *v40 = v11;
    v40[1] = v39;
    return swift_willThrow();
  }

  v82 = a4;
  v83 = a5;
  v84 = a2;
  v81 = a1;
  v19 = *((v11 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
  result = sub_255E3AB08();
  v20 = result;
  v21 = 0;
  v22 = 1 << *(v19 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(v19 + 64);
  v25 = (v22 + 63) >> 6;
  for (i = result + 8; v24; result = )
  {
    v27 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
LABEL_16:
    v30 = v27 | (v21 << 6);
    v31 = (*(v19 + 48) + 16 * v30);
    v32 = *(*(v19 + 56) + 8 * v30);
    v33 = *v31;
    v34 = v31[1];
    *(i + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    v35 = (*(v20 + 48) + 16 * v30);
    *v35 = v33;
    v35[1] = v34;
    *(*(v20 + 56) + 8 * v30) = v32;
    v36 = *(v20 + 16);
    v37 = __OFADD__(v36, 1);
    v38 = v36 + 1;
    if (v37)
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    *(v20 + 16) = v38;
  }

  v28 = v21;
  while (1)
  {
    v21 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    if (v21 >= v25)
    {
      break;
    }

    v29 = *(v19 + 64 + 8 * v21);
    ++v28;
    if (v29)
    {
      v27 = __clz(__rbit64(v29));
      v24 = (v29 - 1) & v29;
      goto LABEL_16;
    }
  }

  sub_255D5C324(v11);
  result = sub_255E3AB08();
  v41 = result;
  v42 = 0;
  v43 = 1 << *(v20 + 32);
  v44 = *(v20 + 64);
  v45 = -1;
  if (v43 < 64)
  {
    v45 = ~(-1 << v43);
  }

  v46 = v45 & v44;
  v47 = (v43 + 63) >> 6;
  v48 = result + 8;
  if ((v45 & v44) == 0)
  {
LABEL_24:
    v50 = v42;
    while (1)
    {
      v42 = v50 + 1;
      if (__OFADD__(v50, 1))
      {
        goto LABEL_51;
      }

      if (v42 >= v47)
      {

        if ((~v83 & 0xF000000000000007) != 0)
        {

          sub_255D34858(v83);
          sub_255DF03DC(v41, v83, v84, v81, &v86);
          if (v85)
          {

            v79 = 0xF000000000000007;
          }

          else
          {

            v79 = v86;
          }

          sub_255DF2888(v79, a3, v82);
          sub_255D2F870(v83);
          sub_255D5C324(v79);
        }

        result = sub_255E3AB08();
        v60 = result;
        v61 = 0;
        v62 = *(v84 + 64);
        v63 = 1 << *(v84 + 32);
        v64 = -1;
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        v65 = v64 & v62;
        v66 = (v63 + 63) >> 6;
        v67 = result + 8;
        if ((v64 & v62) == 0)
        {
LABEL_37:
          v69 = v61;
          while (1)
          {
            v61 = v69 + 1;
            if (__OFADD__(v69, 1))
            {
              goto LABEL_52;
            }

            if (v61 >= v66)
            {
              v80 = swift_allocObject();
              *(v80 + 16) = v60;

              sub_255DF2888(v80 | 0xA000000000000000, a3, v82);
            }

            v70 = *(v84 + 64 + 8 * v61);
            ++v69;
            if (v70)
            {
              v68 = __clz(__rbit64(v70));
              v65 = (v70 - 1) & v70;
              goto LABEL_42;
            }
          }
        }

        while (1)
        {
          v68 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
LABEL_42:
          v71 = v68 | (v61 << 6);
          v72 = (*(v84 + 48) + 16 * v71);
          v73 = *(*(v84 + 56) + 8 * v71);
          v74 = *v72;
          v75 = v72[1];
          *(v67 + ((v71 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v71;
          v76 = (v60[6] + 16 * v71);
          *v76 = v74;
          v76[1] = v75;
          *(v60[7] + 8 * v71) = v73;
          v77 = v60[2];
          v37 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v37)
          {
            goto LABEL_55;
          }

          v60[2] = v78;

          if (!v65)
          {
            goto LABEL_37;
          }
        }
      }

      v51 = i[v42];
      ++v50;
      if (v51)
      {
        v49 = __clz(__rbit64(v51));
        v46 = (v51 - 1) & v51;
        goto LABEL_29;
      }
    }
  }

  while (1)
  {
    v49 = __clz(__rbit64(v46));
    v46 &= v46 - 1;
LABEL_29:
    v52 = v49 | (v42 << 6);
    v53 = (*(v20 + 48) + 16 * v52);
    v54 = *(*(v20 + 56) + 8 * v52);
    v55 = *v53;
    v56 = v53[1];
    *(v48 + ((v52 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v52;
    v57 = (v41[6] + 16 * v52);
    *v57 = v55;
    v57[1] = v56;
    *(v41[7] + 8 * v52) = v54;
    v58 = v41[2];
    v37 = __OFADD__(v58, 1);
    v59 = v58 + 1;
    if (v37)
    {
      break;
    }

    v41[2] = v59;

    if (!v46)
    {
      goto LABEL_24;
    }
  }

LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
  return result;
}

uint64_t sub_255DEFC30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v70 = *(a2 + 16);
    v71 = v9;
    v72 = v10;

    v12 = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
    }

    v20 = v12;
    v21 = v13;
    if ((~v11 & 0xF000000000000007) == 0)
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v70 = a1;
      sub_255D82054(a3, v20, v21, isUniquelyReferenced_nonNull_native);

      goto LABEL_10;
    }

    v45 = *(a1 + 16);

    if (v45 && (v46 = sub_255D3CA20(v20, v21), (v47 & 1) != 0))
    {
      v48 = *(*(a1 + 56) + 8 * v46);
      if ((v48 >> 61) >= 4)
      {
        if (v48 >> 61 == 4)
        {
          swift_retain_n();

          sub_255DF0CC0(v63, v11, a3, a4, &v70);

          v65 = v70;
          v66 = swift_isUniquelyReferenced_nonNull_native();
          v73 = a1;
          sub_255D82054(v65, v20, v21, v66);
          sub_255D2F870(v11);

          v23 = v73;
          goto LABEL_11;
        }

        swift_retain_n();

        sub_255DEFC30(v64, v11, a3, a4, &v70);

        v67 = v70;

        v68 = swift_isUniquelyReferenced_nonNull_native();
        *&v70 = a1;
        sub_255D82054(v67, v20, v21, v68);
        sub_255D2F870(v11);

LABEL_10:
        v23 = v70;
LABEL_11:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        v24 = sub_255E3AB08();
        v25 = v24;
        v26 = 0;
        v27 = 1 << *(v23 + 32);
        v28 = -1;
        if (v27 < 64)
        {
          v28 = ~(-1 << v27);
        }

        v29 = v28 & *(v23 + 64);
        v30 = (v27 + 63) >> 6;
        v31 = v24 + 64;
        if (v29)
        {
          while (1)
          {
            v32 = __clz(__rbit64(v29));
            v29 &= v29 - 1;
LABEL_20:
            v35 = v32 | (v26 << 6);
            v36 = (*(v23 + 48) + 16 * v35);
            v37 = *(*(v23 + 56) + 8 * v35);
            v38 = *v36;
            v39 = v36[1];
            *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
            v40 = (v25[6] + 16 * v35);
            *v40 = v38;
            v40[1] = v39;
            *(v25[7] + 8 * v35) = v37;
            v41 = v25[2];
            v42 = __OFADD__(v41, 1);
            v43 = v41 + 1;
            if (v42)
            {
              break;
            }

            v25[2] = v43;

            if (!v29)
            {
              goto LABEL_15;
            }
          }
        }

        else
        {
LABEL_15:
          v33 = v26;
          while (1)
          {
            v26 = v33 + 1;
            if (__OFADD__(v33, 1))
            {
              break;
            }

            if (v26 >= v30)
            {
              v44 = swift_allocObject();

              *(v44 + 16) = v25;
              *a5 = v44 | 0xA000000000000000;
              return result;
            }

            v34 = *(v23 + 64 + 8 * v26);
            ++v33;
            if (v34)
            {
              v32 = __clz(__rbit64(v34));
              v29 = (v34 - 1) & v34;
              goto LABEL_20;
            }
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_43;
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v49 = sub_255E386A8();
      __swift_project_value_buffer(v49, qword_27F8152D8);
      v50 = sub_255E38688();
      v51 = sub_255E3A868();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_255D2E000, v50, v51, "Referenceable.updatedDict: Have a subreference but next structure is a value", v52, 2u);
        MEMORY[0x259C4F9E0](v52, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v53 = 3;
      *(v53 + 8) = 0;
      *(v53 + 16) = 0;
      *(v53 + 24) = 0;
      *(v53 + 32) = 5;
      swift_willThrow();
    }

    else
    {

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v54 = sub_255E386A8();
      __swift_project_value_buffer(v54, qword_27F8152D8);

      v55 = sub_255E38688();
      v56 = sub_255E3A868();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v70 = v58;
        *v57 = 136315394;
        *(v57 + 4) = sub_255D378C0(v20, v21, &v70);
        *(v57 + 12) = 2080;
        v59 = sub_255E3A418();
        v61 = sub_255D378C0(v59, v60, &v70);

        *(v57 + 14) = v61;
        _os_log_impl(&dword_255D2E000, v55, v56, "Referenceable.updatedDict: key not found %s dict: %s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C4F9E0](v58, -1, -1);
        MEMORY[0x259C4F9E0](v57, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v62 = v20;
      *(v62 + 8) = v21;
      *(v62 + 32) = 4;
      swift_willThrow();
    }

    return sub_255D2F870(v11);
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_43:
    swift_once();
  }

  v15 = sub_255E386A8();
  __swift_project_value_buffer(v15, qword_27F8152D8);
  v16 = sub_255E38688();
  v17 = sub_255E3A868();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_255D2E000, v16, v17, "Referenceable.updatedDict: trying to modify a dictionary using an index subreference", v18, 2u);
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v19 = 5;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DF03DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v9 = *(a2 + 32);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    v92 = *(a2 + 16);
    v93 = v9;
    v94 = v10;

    v12 = StringResolvable.resolved(with:)(a4);
    if (v5)
    {
    }

    v20 = v13;
    if ((~v11 & 0xF000000000000007) == 0)
    {
      v89 = v12;
      v90 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
      v21 = sub_255E3AB08();
      v22 = v21;
      v23 = 0;
      v24 = 1 << *(a3 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(a3 + 64);
      v27 = (v24 + 63) >> 6;
      v28 = v21 + 64;
      while (v26)
      {
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_18:
        v32 = v29 | (v23 << 6);
        v33 = (*(a3 + 48) + 16 * v32);
        v34 = *(*(a3 + 56) + 8 * v32);
        v35 = *v33;
        v36 = v33[1];
        *(v28 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
        v37 = (v22[6] + 16 * v32);
        *v37 = v35;
        v37[1] = v36;
        *(v22[7] + 8 * v32) = v34;
        v38 = v22[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_56;
        }

        v22[2] = v40;
      }

      v30 = v23;
      while (1)
      {
        v23 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_54;
        }

        if (v23 >= v27)
        {
          v51 = swift_allocObject();
          *(v51 + 16) = v22;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v92 = a1;
          sub_255D82054(v51 | 0xA000000000000000, v89, v90, isUniquelyReferenced_nonNull_native);

          goto LABEL_30;
        }

        v31 = *(a3 + 64 + 8 * v23);
        ++v30;
        if (v31)
        {
          v29 = __clz(__rbit64(v31));
          v26 = (v31 - 1) & v31;
          goto LABEL_18;
        }
      }
    }

    v41 = v12;
    v42 = *(a1 + 16);

    if (v42 && (v43 = sub_255D3CA20(v41, v20), (v44 & 1) != 0))
    {
      v45 = *(*(a1 + 56) + 8 * v43);
      if ((v45 >> 61) >= 4)
      {
        if (v45 >> 61 == 4)
        {
          swift_retain_n();

          sub_255DF1378(v83, v11, a3, a4, &v92);

          v85 = v92;
          v86 = swift_isUniquelyReferenced_nonNull_native();
          v95 = a1;
          sub_255D82054(v85, v41, v20, v86);
          sub_255D2F870(v11);

          v53 = v95;
        }

        else
        {
          swift_retain_n();

          sub_255DF03DC(v84, v11, a3, a4, &v92);

          v87 = v92;

          v88 = swift_isUniquelyReferenced_nonNull_native();
          *&v92 = a1;
          sub_255D82054(v87, v41, v20, v88);
          sub_255D2F870(v11);

LABEL_30:
          v53 = v92;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
        v54 = sub_255E3AB08();
        v55 = v54;
        v56 = 0;
        v57 = 1 << *(v53 + 32);
        v58 = -1;
        if (v57 < 64)
        {
          v58 = ~(-1 << v57);
        }

        v59 = v58 & *(v53 + 64);
        v60 = (v57 + 63) >> 6;
        v61 = v54 + 64;
        while (v59)
        {
          v62 = __clz(__rbit64(v59));
          v59 &= v59 - 1;
LABEL_40:
          v65 = v62 | (v56 << 6);
          v66 = (*(v53 + 48) + 16 * v65);
          v67 = *(*(v53 + 56) + 8 * v65);
          v68 = *v66;
          v69 = v66[1];
          *(v61 + ((v65 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v65;
          v70 = (v55[6] + 16 * v65);
          *v70 = v68;
          v70[1] = v69;
          *(v55[7] + 8 * v65) = v67;
          v71 = v55[2];
          v39 = __OFADD__(v71, 1);
          v72 = v71 + 1;
          if (v39)
          {
            goto LABEL_55;
          }

          v55[2] = v72;
        }

        v63 = v56;
        while (1)
        {
          v56 = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            break;
          }

          if (v56 >= v60)
          {
            v73 = swift_allocObject();

            *(v73 + 16) = v55;
            *a5 = v73 | 0xA000000000000000;
            return result;
          }

          v64 = *(v53 + 64 + 8 * v56);
          ++v63;
          if (v64)
          {
            v62 = __clz(__rbit64(v64));
            v59 = (v64 - 1) & v64;
            goto LABEL_40;
          }
        }

        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v46 = sub_255E386A8();
      __swift_project_value_buffer(v46, qword_27F8152D8);
      v47 = sub_255E38688();
      v48 = sub_255E3A868();
      if (os_log_type_enabled(v47, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&dword_255D2E000, v47, v48, "Referenceable.updatedDict: Have a subreference but next structure is a value", v49, 2u);
        MEMORY[0x259C4F9E0](v49, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v50 = 3;
      *(v50 + 8) = 0;
      *(v50 + 16) = 0;
      *(v50 + 24) = 0;
      *(v50 + 32) = 5;
      swift_willThrow();
    }

    else
    {

      if (qword_27F7E5E80 != -1)
      {
        swift_once();
      }

      v74 = sub_255E386A8();
      __swift_project_value_buffer(v74, qword_27F8152D8);

      v75 = sub_255E38688();
      v76 = sub_255E3A868();

      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        *&v92 = v78;
        *v77 = 136315394;
        *(v77 + 4) = sub_255D378C0(v41, v20, &v92);
        *(v77 + 12) = 2080;
        v79 = sub_255E3A418();
        v81 = sub_255D378C0(v79, v80, &v92);

        *(v77 + 14) = v81;
        _os_log_impl(&dword_255D2E000, v75, v76, "Referenceable.updatedDict: key not found %s dict: %s", v77, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x259C4F9E0](v78, -1, -1);
        MEMORY[0x259C4F9E0](v77, -1, -1);
      }

      sub_255D5C33C();
      swift_allocError();
      *v82 = v41;
      *(v82 + 8) = v20;
      *(v82 + 32) = 4;
      swift_willThrow();
    }

    return sub_255D2F870(v11);
  }

  if (qword_27F7E5E80 != -1)
  {
LABEL_57:
    swift_once();
  }

  v15 = sub_255E386A8();
  __swift_project_value_buffer(v15, qword_27F8152D8);
  v16 = sub_255E38688();
  v17 = sub_255E3A868();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_255D2E000, v16, v17, "Referenceable.updatedDict: trying to modify a dictionary using an index subreference", v18, 2u);
    MEMORY[0x259C4F9E0](v18, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v19 = 5;
  *(v19 + 8) = 0;
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = 5;
  return swift_willThrow();
}

uint64_t sub_255DF0CC0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v6 = sub_255E386A8();
    __swift_project_value_buffer(v6, qword_27F8152D8);
    v7 = sub_255E38688();
    v8 = sub_255E3A868();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_255D2E000, v7, v8, "Referenceable.updatedArray: trying to modify an array using an key subreference", v9, 2u);
      MEMORY[0x259C4F9E0](v9, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 4;
LABEL_13:
    *v10 = v11;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v25 = 5;
LABEL_14:
    *(v10 + 32) = v25;
    return swift_willThrow();
  }

  v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v17 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v18 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v44 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v45 = v16;
  v46 = v17;

  v19 = sub_255D8F9E4(a4);
  if (v20)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v21 = sub_255E386A8();
    __swift_project_value_buffer(v21, qword_27F8152D8);
    v22 = sub_255E38688();
    v23 = sub_255E3A848();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_255D2E000, v22, v23, "SubReference to update array, unable to resolve index", v24, 2u);
      MEMORY[0x259C4F9E0](v24, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 2;
    goto LABEL_13;
  }

  v27 = v19;
  if (v19 < 0 || v19 >= *(a1 + 2))
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v28 = sub_255E386A8();
    __swift_project_value_buffer(v28, qword_27F8152D8);

    v29 = sub_255E38688();
    v30 = sub_255E3A868();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v44 = v32;
      *v31 = 134218242;
      *(v31 + 4) = v27;
      *(v31 + 12) = 2080;
      v33 = MEMORY[0x259C4E9D0](a1, &type metadata for DecodableState);
      v35 = sub_255D378C0(v33, v34, &v44);

      *(v31 + 14) = v35;
      _os_log_impl(&dword_255D2E000, v29, v30, "Referenceable.updatedArray: index out of range idx: %ld array: %s", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x259C4F9E0](v32, -1, -1);
      MEMORY[0x259C4F9E0](v31, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    *v10 = v27;
    v25 = 3;
    goto LABEL_14;
  }

  if ((~v18 & 0xF000000000000007) == 0)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    if (v27 < *(a1 + 2))
    {
      *&a1[8 * v27 + 32] = a3;
LABEL_22:

      sub_255DCB4C0(a1, a5);
    }

    __break(1u);
    goto LABEL_46;
  }

  v36 = *&a1[8 * v19 + 32];
  if ((v36 >> 61) >= 4)
  {
    if (v36 >> 61 == 4)
    {
      sub_255D34858(v18);

      sub_255DF0CC0(v42, v18, a3, a4, &v44);
      if (v5)
      {
LABEL_40:
        sub_255D2F870(v18);
      }

      a3 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_255DF5ECC(a1);
      }

      sub_255D2F870(v18);
      if (v27 < *(a1 + 2))
      {
LABEL_44:
        *&a1[8 * v27 + 32] = a3;

        goto LABEL_22;
      }

      __break(1u);
    }

    sub_255D34858(v18);

    sub_255DEFC30(v43, v18, a3, a4, &v44);
    if (v5)
    {
      goto LABEL_40;
    }

    a3 = v44;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    result = sub_255D2F870(v18);
    if (v27 >= *(a1 + 2))
    {
      __break(1u);
      return result;
    }

    goto LABEL_44;
  }

  sub_255D34858(v18);

  if (qword_27F7E5E80 != -1)
  {
LABEL_46:
    swift_once();
  }

  v37 = sub_255E386A8();
  __swift_project_value_buffer(v37, qword_27F8152D8);
  v38 = sub_255E38688();
  v39 = sub_255E3A868();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_255D2E000, v38, v39, "Referenceable.updatedArray: Have a subreference but next structure is a value", v40, 2u);
    MEMORY[0x259C4F9E0](v40, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v41 = 3;
  *(v41 + 8) = 0;
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  *(v41 + 32) = 5;
  swift_willThrow();

  return sub_255D2F870(v18);
}

uint64_t sub_255DF1378@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (qword_27F7E5E80 != -1)
    {
LABEL_56:
      swift_once();
    }

    v6 = sub_255E386A8();
    __swift_project_value_buffer(v6, qword_27F8152D8);
    v7 = sub_255E38688();
    v8 = sub_255E3A868();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_255D2E000, v7, v8, "Referenceable.updatedArray: trying to modify an array using an key subreference", v9, 2u);
      MEMORY[0x259C4F9E0](v9, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 4;
    goto LABEL_12;
  }

  v69 = a5;
  v15 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x28);
  v17 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x30);
  v66 = *((a2 & 0x7FFFFFFFFFFFFFFFLL) + 0x10);
  v67 = v15;
  v68 = v16;

  v18 = sub_255D8F9E4(a4);
  if (v19)
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v20 = sub_255E386A8();
    __swift_project_value_buffer(v20, qword_27F8152D8);
    v21 = sub_255E38688();
    v22 = sub_255E3A848();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_255D2E000, v21, v22, "SubReference to update array, unable to resolve index", v23, 2u);
      MEMORY[0x259C4F9E0](v23, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    v11 = 2;
LABEL_12:
    *v10 = v11;
    *(v10 + 8) = 0;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v24 = 5;
LABEL_13:
    *(v10 + 32) = v24;
    return swift_willThrow();
  }

  v26 = v18;
  if (v18 < 0 || v18 >= *(a1 + 2))
  {

    if (qword_27F7E5E80 != -1)
    {
      swift_once();
    }

    v48 = sub_255E386A8();
    __swift_project_value_buffer(v48, qword_27F8152D8);

    v49 = sub_255E38688();
    v50 = sub_255E3A868();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *&v66 = v52;
      *v51 = 134218242;
      *(v51 + 4) = v26;
      *(v51 + 12) = 2080;
      v53 = MEMORY[0x259C4E9D0](a1, &type metadata for DecodableState);
      v55 = sub_255D378C0(v53, v54, &v66);

      *(v51 + 14) = v55;
      _os_log_impl(&dword_255D2E000, v49, v50, "Referenceable.updatedArray: index out of range idx: %ld array: %s", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x259C4F9E0](v52, -1, -1);
      MEMORY[0x259C4F9E0](v51, -1, -1);
    }

    sub_255D5C33C();
    swift_allocError();
    *v10 = v26;
    v24 = 3;
    goto LABEL_13;
  }

  if ((~v17 & 0xF000000000000007) == 0)
  {
    v65 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7548, &qword_255E4AEA0);
    v27 = sub_255E3AB08();
    v28 = a3;
    v29 = v27;
    v30 = 0;
    v17 = a3 + 64;
    v31 = 1 << *(a3 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(a3 + 64);
    v34 = (v31 + 63) >> 6;
    v35 = v27 + 64;
    if (v33)
    {
      while (1)
      {
        v36 = __clz(__rbit64(v33));
        v33 &= v33 - 1;
LABEL_26:
        v39 = v36 | (v30 << 6);
        v40 = (*(v28 + 48) + 16 * v39);
        v41 = *(*(v28 + 56) + 8 * v39);
        v42 = *v40;
        v43 = v40[1];
        *(v35 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
        v44 = (v29[6] + 16 * v39);
        *v44 = v42;
        v44[1] = v43;
        *(v29[7] + 8 * v39) = v41;
        v45 = v29[2];
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          break;
        }

        v29[2] = v47;

        v28 = a3;
        if (!v33)
        {
          goto LABEL_21;
        }
      }

      __break(1u);
LABEL_58:
      a1 = sub_255DF5ECC(a1);
    }

    else
    {
LABEL_21:
      v37 = v30;
      while (1)
      {
        v30 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          __break(1u);
          goto LABEL_56;
        }

        if (v30 >= v34)
        {
          break;
        }

        v38 = *(v17 + 8 * v30);
        ++v37;
        if (v38)
        {
          v36 = __clz(__rbit64(v38));
          v33 = (v38 - 1) & v38;
          goto LABEL_26;
        }
      }

      v17 = swift_allocObject();
      *(v17 + 16) = v29;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_58;
      }
    }

    if (v65 < *(a1 + 2))
    {
      *&a1[8 * v65 + 32] = v17 | 0xA000000000000000;
LABEL_42:

      sub_255DCB4C0(a1, v69);
    }

    __break(1u);
    goto LABEL_60;
  }

  v56 = *&a1[8 * v18 + 32];
  if ((v56 >> 61) >= 4)
  {
    if (v56 >> 61 == 4)
    {
      sub_255D34858(v17);

      sub_255DF1378(v62, v17, a3, a4, &v66);
      if (v5)
      {
LABEL_50:
        sub_255D2F870(v17);
      }

      v63 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a1 = sub_255DF5ECC(a1);
      }

      sub_255D2F870(v17);
      if (v26 < *(a1 + 2))
      {
LABEL_54:
        *&a1[8 * v26 + 32] = v63;

        goto LABEL_42;
      }

      __break(1u);
    }

    sub_255D34858(v17);

    sub_255DF03DC(v64, v17, a3, a4, &v66);
    if (v5)
    {
      goto LABEL_50;
    }

    v63 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_255DF5ECC(a1);
    }

    result = sub_255D2F870(v17);
    if (v26 >= *(a1 + 2))
    {
      __break(1u);
      return result;
    }

    goto LABEL_54;
  }

  sub_255D34858(v17);

  if (qword_27F7E5E80 != -1)
  {
LABEL_60:
    swift_once();
  }

  v57 = sub_255E386A8();
  __swift_project_value_buffer(v57, qword_27F8152D8);
  v58 = sub_255E38688();
  v59 = sub_255E3A868();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 0;
    _os_log_impl(&dword_255D2E000, v58, v59, "Referenceable.updatedArray: Have a subreference but next structure is a value", v60, 2u);
    MEMORY[0x259C4F9E0](v60, -1, -1);
  }

  sub_255D5C33C();
  swift_allocError();
  *v61 = 3;
  *(v61 + 8) = 0;
  *(v61 + 16) = 0;
  *(v61 + 24) = 0;
  *(v61 + 32) = 5;
  swift_willThrow();

  return sub_255D2F870(v17);
}

uint64_t RemoteStateStore.init()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7F98, &unk_255E537E0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v10 - v3;
  v5 = qword_27F7E8600;
  v6 = MEMORY[0x277D84F90];
  *(v0 + v5) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v0 + qword_27F7E85F8) = 0;
  v7 = *(*v0 + 104);
  v10[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
  sub_255E38708();
  (*(v2 + 32))(v0 + v7, v4, v1);
  v8 = *(*v0 + 112);
  *(v0 + v8) = sub_255DC513C(v6);
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  return v0;
}

char *StateDict.init(parent:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = v4[11];
  sub_255E3A6F8();
  v6 = sub_255E38748();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = v4[13];
  v11 = sub_255E3A6A8();
  v12 = v4[10];
  v13 = v4[12];
  v25 = v11;
  v14 = sub_255E3A6F8();
  sub_255DF5B34(&v25, v14);
  (*(v7 + 32))(&v2[v10], v9, v6);
  v15 = *(*v2 + 112);
  v16 = MEMORY[0x277D83B88];
  swift_getTupleTypeMetadata2();
  v17 = sub_255E3A6A8();
  v18 = sub_255DF5EF8(v17, v12, v16, v13);

  *&v2[v15] = v18;
  *&v2[*(*v2 + 128)] = 0;
  *&v2[*(*v2 + 120)] = a1;
  if (a1)
  {
    v19 = type metadata accessor for StateDict(0, v12, v5, v13);

    swift_getWitnessTable(protocol conformance descriptor for StateDict<A, B>, v19);
    v25 = sub_255E386D8();
    v20 = swift_allocObject();
    swift_weakInit();
    v21 = swift_allocObject();
    v21[2] = v12;
    v21[3] = v5;
    v21[4] = v13;
    v21[5] = v20;
    sub_255E386F8();
    v22 = sub_255E38758();
  }

  else
  {
    v22 = 0;
  }

  *&v2[*(*v2 + 128)] = v22;

  return v2;
}

uint64_t RemoteStateStore.init(parent:initialSet:referenceKeyMap:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = qword_27F7E8600;
  *(v3 + v6) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v3 + qword_27F7E85F8) = a1;
  v7 = swift_retain_n();
  v8 = sub_255DC3628(v7);
  v9 = v8;
  v10 = a2 + 64;
  v11 = 1 << *(a2 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(a2 + 64);
  v75 = *(*v8 + 112);
  v14 = (v11 + 63) >> 6;

  v76 = a2;

  v16 = 0;
  v72 = v14;
  v73 = a2 + 64;
  v74 = v9;
  while (1)
  {
    if (!v13)
    {
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        if (v17 >= v14)
        {

          v67 = qword_27F7E8600;
          swift_beginAccess();
          *(v9 + v67) = a3;

          return v9;
        }

        v13 = *(v10 + 8 * v17);
        ++v16;
        if (v13)
        {
          v16 = v17;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

LABEL_12:
    v18 = __clz(__rbit64(v13)) | (v16 << 6);
    v19 = (*(v76 + 48) + 16 * v18);
    v20 = v19[1];
    v79 = *v19;
    v21 = *(*(v76 + 56) + 8 * v18);
    MEMORY[0x28223BE20](v15);
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    swift_getKeyPath();
    v77 = v21;

    v78 = v20;

    v9 = v74;
    v23 = sub_255E38718();
    v25 = v24;
    v26 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v25 = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_255DE55B4(0, *(v26 + 2) + 1, 1, v26);
      *v25 = v26;
    }

    v29 = *(v26 + 2);
    v28 = *(v26 + 3);
    if (v29 >= v28 >> 1)
    {
      v26 = sub_255DE55B4((v28 > 1), v29 + 1, 1, v26);
      *v25 = v26;
    }

    *(v26 + 2) = v29 + 1;
    *&v26[8 * v29 + 32] = v77;

    v23(v81, 0);

    MEMORY[0x28223BE20](v30);
    v31 = swift_getKeyPath();
    MEMORY[0x28223BE20](v31);
    swift_getKeyPath();
    sub_255E38728();

    v32 = *(v81[0] + 16);

    swift_beginAccess();
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v80 = *(v74 + v75);
    *(v74 + v75) = 0x8000000000000000;
    v35 = sub_255D3CA20(v79, v78);
    v36 = *(v80 + 16);
    v37 = (v34 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      goto LABEL_45;
    }

    v39 = v34;
    if (*(v80 + 24) >= v38)
    {
      break;
    }

    sub_255D80CA0(v38, v33);
    v40 = v80;
    v41 = v78;
    v42 = sub_255D3CA20(v79, v78);
    if ((v39 & 1) != (v43 & 1))
    {
      goto LABEL_48;
    }

    v35 = v42;
    v44 = v32 - 1;
    if (v39)
    {
LABEL_5:
      *(*(v40 + 56) + 8 * v35) = v44;
      goto LABEL_6;
    }

LABEL_24:
    *(v40 + 8 * (v35 >> 6) + 64) |= 1 << v35;
    v45 = (*(v40 + 48) + 16 * v35);
    *v45 = v79;
    v45[1] = v41;
    *(*(v40 + 56) + 8 * v35) = v44;
    v46 = *(v40 + 16);
    v47 = __OFADD__(v46, 1);
    v48 = v46 + 1;
    if (v47)
    {
      goto LABEL_46;
    }

    *(v40 + 16) = v48;

LABEL_6:
    v13 &= v13 - 1;
    *(v74 + v75) = v40;
    swift_endAccess();

    v14 = v72;
    v10 = v73;
  }

  if (v33)
  {
    v40 = v80;
    goto LABEL_23;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E7528, &unk_255E48B20);
  v49 = sub_255E3AB08();
  v40 = v49;
  if (!*(v80 + 16))
  {
LABEL_42:

LABEL_23:
    v41 = v78;
    v44 = v32 - 1;
    if (v39)
    {
      goto LABEL_5;
    }

    goto LABEL_24;
  }

  v50 = (v49 + 64);
  v51 = (v80 + 64);
  v52 = ((1 << *(v40 + 32)) + 63) >> 6;
  if (v40 != v80 || v50 >= &v51[8 * v52])
  {
    memmove(v50, v51, 8 * v52);
  }

  v53 = 0;
  *(v40 + 16) = *(v80 + 16);
  v54 = 1 << *(v80 + 32);
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & *(v80 + 64);
  v57 = (v54 + 63) >> 6;
  v69 = v57;
  if (v56)
  {
    do
    {
      v58 = __clz(__rbit64(v56));
      v70 = (v56 - 1) & v56;
LABEL_40:
      v61 = v58 | (v53 << 6);
      v62 = (*(v80 + 48) + 16 * v61);
      v64 = *v62;
      v63 = v62[1];
      v65 = *(*(v80 + 56) + 8 * v61);
      v66 = (*(v40 + 48) + 16 * v61);
      *v66 = v64;
      v66[1] = v63;
      *(*(v40 + 56) + 8 * v61) = v65;

      v57 = v69;
      v56 = v70;
    }

    while (v70);
  }

  v59 = v53;
  while (1)
  {
    v53 = v59 + 1;
    if (__OFADD__(v59, 1))
    {
      break;
    }

    if (v53 >= v57)
    {
      goto LABEL_42;
    }

    v60 = *(v80 + 64 + 8 * v53);
    ++v59;
    if (v60)
    {
      v58 = __clz(__rbit64(v60));
      v70 = (v60 - 1) & v60;
      goto LABEL_40;
    }
  }

LABEL_47:
  __break(1u);
LABEL_48:
  result = sub_255E3AD28();
  __break(1u);
  return result;
}

uint64_t sub_255DF26AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_beginAccess();

  sub_255E3A458();

  if (v9)
  {
    v6 = *(v2 + *(*v2 + 120));
    if (v6)
    {
      return (*(*v6 + 248))(a1);
    }

    else
    {
      return (*(*(*(v5 + 88) - 8) + 56))(a2, 1, 1, *(v5 + 88));
    }
  }

  else
  {
    sub_255DF3B58();
    v8 = *(v5 + 88);
    sub_255E3A728();

    return (*(*(v8 - 8) + 56))(a2, 0, 1, v8);
  }
}

uint64_t sub_255DF2888(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[0] = a2;
  v22[1] = a3;
  if ((~a1 & 0xF000000000000007) != 0)
  {
    v8 = *(*v3 + 112);
    swift_beginAccess();
    v9 = *(v3 + v8);
    if (*(v9 + 16))
    {

      v10 = sub_255D3CA20(a2, a3);
      if (v11)
      {
        v12 = *(*(v9 + 56) + 8 * v10);

        MEMORY[0x28223BE20](v13);
        KeyPath = swift_getKeyPath();
        MEMORY[0x28223BE20](KeyPath);
        swift_getKeyPath();
        v15 = sub_255E38718();
        v17 = v16;
        v18 = *v16;
        result = swift_isUniquelyReferenced_nonNull_native();
        *v17 = v18;
        if (result)
        {
          if ((v12 & 0x8000000000000000) == 0)
          {
            goto LABEL_9;
          }
        }

        else
        {
          result = sub_255DF5ECC(v18);
          v18 = result;
          *v17 = result;
          if ((v12 & 0x8000000000000000) == 0)
          {
LABEL_9:
            if (v12 < *(v18 + 16))
            {
              *(v18 + 8 * v12 + 32) = a1;

              v15(v21, 0);

              goto LABEL_14;
            }

LABEL_19:
            __break(1u);
            return result;
          }
        }

        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = *(v3 + *(*v3 + 120));
    if (!v19)
    {
      sub_255DD5C54(a2, a3, a1);
      sub_255D5C324(a1);
    }

    v21[0] = a1;
    v20 = *(*v19 + 256);
    sub_255D5C30C(a1);

    v20(v21, v22);
LABEL_14:

    return sub_255D5C324(a1);
  }
}

uint64_t sub_255DF2B68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24[0] = a2;
  v24[1] = a3;
  sub_255DF6210(a1, &v21);
  if (!v22)
  {
    sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);

    return sub_255D395E4(&v21, &qword_27F7E7C08, &qword_255E4EF88);
  }

  sub_255D8B0B0(&v21, v23);
  v7 = *(*v3 + 112);
  swift_beginAccess();
  v8 = *(v3 + v7);
  if (*(v8 + 16))
  {

    v9 = sub_255D3CA20(a2, a3);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      MEMORY[0x28223BE20](v12);
      KeyPath = swift_getKeyPath();
      MEMORY[0x28223BE20](KeyPath);
      swift_getKeyPath();
      v14 = sub_255E38718();
      v16 = v15;
      v17 = *v15;
      result = swift_isUniquelyReferenced_nonNull_native();
      *v16 = v17;
      if (result)
      {
        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_6;
        }
      }

      else
      {
        result = sub_255DF5EE0(v17);
        v17 = result;
        *v16 = result;
        if ((v11 & 0x8000000000000000) == 0)
        {
LABEL_6:
          if (v11 < *(v17 + 16))
          {
            __swift_assign_boxed_opaque_existential_0((v17 + 32 * v11 + 32), v23);
            v14(&v21, 0);

LABEL_12:

            sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
            return __swift_destroy_boxed_opaque_existential_1Tm(v23);
          }

          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
      return result;
    }
  }

  v19 = *(v3 + *(*v3 + 120));
  if (v19)
  {
    sub_255D3951C(v23, &v21);
    v20 = *(*v19 + 256);

    v20(&v21, v24);
    goto LABEL_12;
  }

  sub_255DD5EE0(a2, a3, v23);
  sub_255D395E4(a1, &qword_27F7E7C08, &qword_255E4EF88);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_255DF2E88(uint64_t a1, uint64_t a2)
{
  v47 = *v2;
  v48 = a2;
  v4 = *(v47 + 80);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v45 = &v40 - v6;
  v8 = *(v7 + 88);
  v9 = sub_255E3A8A8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v44 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v40 - v14;
  v16 = *(v8 - 8);
  MEMORY[0x28223BE20](v13);
  v18 = &v40 - v17;
  (*(v10 + 16))(v15, a1, v9);
  if ((*(v16 + 48))(v15, 1, v8) == 1)
  {
    (*(v5 + 8))(v48, v4);
    v19 = *(v10 + 8);
    v19(a1, v9);
    return (v19)(v15, v9);
  }

  v46 = v9;
  v42 = v5;
  v43 = a1;
  (*(v16 + 32))(v18, v15, v8);
  v21 = v4;
  swift_beginAccess();
  v22 = *(v47 + 96);

  v23 = v48;
  sub_255E3A458();

  v25 = v18;
  if (v50)
  {
    v26 = *(v2 + *(*v2 + 120));
    v27 = v46;
    if (v26)
    {
      v28 = v25;
      v41 = v25;
      v29 = v42;
      v30 = v45;
      (*(v42 + 16))(v45, v23, v21);
      v31 = v44;
      (*(v16 + 16))(v44, v28, v8);
      (*(v16 + 56))(v31, 0, 1, v8);
      v47 = *v26 + 256;
      v32 = *v47;

      v32(v31, v30);

      (*(v29 + 8))(v23, v21);
      (*(v10 + 8))(v43, v46);
      return (*(v16 + 8))(v41, v8);
    }

    sub_255DF4050(v23);
    (*(v42 + 8))(v23, v4);
    (*(v10 + 8))(v43, v27);
  }

  else
  {
    v33 = v49;
    MEMORY[0x28223BE20](v24);
    *(&v40 - 4) = v4;
    *(&v40 - 3) = v8;
    *(&v40 - 2) = v22;
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    *(&v40 - 4) = v4;
    *(&v40 - 3) = v8;
    *(&v40 - 2) = v22;
    swift_getKeyPath();
    v47 = sub_255E38718();
    v36 = v35;
    sub_255E3A6F8();
    sub_255E3A698();
    sub_255DF5E78(v33, *v36, v8);
    v37 = *v36;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v39 = v37 & 0xFFFFFFFFFFFFFF8;
    if ((isClassOrObjCExistentialType & 1) == 0)
    {
      v39 = v37;
    }

    (*(v16 + 24))(v39 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * v33, v18, v8);
    (v47)(&v49, 0);

    (*(v42 + 8))(v48, v21);
    (*(v10 + 8))(v43, v46);
  }

  return (*(v16 + 8))(v25, v8);
}

uint64_t (*RemoteStateStore.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  RemoteStateStore.subscript.getter(a2, a3, a1);
  return sub_255DF350C;
}

uint64_t sub_255DF350C(uint64_t *a1, char a2)
{
  v4 = a1[2];
  v5 = *a1;

  v6 = a1[1];
  if ((a2 & 1) == 0)
  {
    return sub_255DF2888(v5, v6, v4);
  }

  sub_255D5C30C(v5);
  sub_255DF2888(v5, v6, v4);

  return sub_255D5C324(v5);
}

uint64_t sub_255DF35AC@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  RemoteStateStore.subscript.getter(a1, a2, &v12);
  v8 = v12;
  if ((~v12 & 0xF000000000000007) != 0)
  {

    sub_255D5C324(v8);
    sub_255D7D8D8(a3, a4);

    v9 = 0;
  }

  else
  {
    sub_255D5C324(v12);
    v9 = 1;
  }

  v10 = *(*(a3 - 8) + 56);

  return v10(a5, v9, 1, a3);
}

uint64_t sub_255DF36B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_255E3A8A8();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v20 - v15;
  (*(v14 + 16))(&v20 - v15, a1, v13);
  v17 = *(a7 - 8);
  if ((*(v17 + 48))(v16, 1, a7) == 1)
  {
    (*(v14 + 8))(v16, v13);
    v18 = 0xF000000000000007;
  }

  else
  {
    (*(a8 + 8))(&v21, a7, a8);
    v18 = v21;
    (*(v17 + 8))(v16, a7);
  }

  return sub_255DF2888(v18, a5, a6);
}

uint64_t sub_255DF38D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *(*v2 + 104);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);

  v5 = *(*v2 + 120);
  v6 = *(v2 + v5);
  *(v2 + v5) = 0;

  if (v6)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v7 = *(v6 + *(*v6 + 120));
      swift_retain_n();

      v6 = v7;
    }

    while (v7);
  }

  return v2;
}

uint64_t StateDict.deinit()
{
  v1 = *(*v0 + 104);
  sub_255E3A6F8();
  v2 = sub_255E38748();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(*v0 + 120);
  v4 = *(v0 + v3);
  *(v0 + v3) = 0;

  if (v4)
  {
    do
    {

      if (!swift_isUniquelyReferenced_native())
      {
        break;
      }

      v5 = *(v4 + *(*v4 + 120));
      swift_retain_n();

      v4 = v5;
    }

    while (v5);
  }

  return v0;
}

uint64_t sub_255DF3B58()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_255E38728();

  return v1;
}

uint64_t sub_255DF3C30(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_255E38738();
}

uint64_t sub_255DF3D04()
{
  v1 = *(*v0 + 112);
  if (*(v0 + *(*v0 + 120)))
  {
    swift_beginAccess();
    v9 = *(v0 + v1);
    v2 = sub_255E3A428();

    swift_getWitnessTable(MEMORY[0x277D83480], v2, v9);
    sub_255E3A718();
    v10 = sub_255DF3D04();
    v3 = sub_255E3A978();
    swift_getWitnessTable(MEMORY[0x277D84060], v3, v10);
    sub_255E3A718();
    v4 = sub_255E3A688();

    v5 = sub_255E3A6F8();
    swift_getWitnessTable(MEMORY[0x277D83970], v5, v4);
    v6 = sub_255E3A988();

    return v6;
  }

  else
  {
    swift_beginAccess();
    v11 = *(v0 + v1);
    v8 = sub_255E3A428();

    swift_getWitnessTable(MEMORY[0x277D83480], v8, v11);
    return sub_255E3A988();
  }
}

uint64_t (*sub_255DF3F64(void *a1, uint64_t *a2))(uint64_t *a1, char a2)
{
  v4 = *a2;
  v5 = a2[1];
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;
  RemoteStateStore.subscript.getter(v4, v5, a1);
  return sub_255DF3FB4;
}

uint64_t sub_255DF3FB4(uint64_t *a1, char a2)
{
  v4 = a1[3];
  v5 = *a1;

  v6 = a1[2];
  if ((a2 & 1) == 0)
  {
    return sub_255DF2888(v5, v6, v4);
  }

  sub_255D5C30C(v5);
  sub_255DF2888(v5, v6, v4);

  return sub_255D5C324(v5);
}

uint64_t sub_255DF4050(uint64_t a1)
{
  v16 = a1;
  v2 = *v1;
  v3 = v2[10];
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v15 - v6;
  v8 = v2[11];
  MEMORY[0x28223BE20](v5);
  (*(v10 + 16))(&v15 - v9);
  v20 = v3;
  v21 = v8;
  v11 = v2[12];
  v22 = v11;
  swift_getKeyPath();
  v17 = v3;
  v18 = v8;
  v15 = v11;
  v19 = v11;
  swift_getKeyPath();
  v12 = sub_255E38718();
  sub_255E3A6F8();
  sub_255E3A6D8();
  v12(v25, 0);

  (*(v4 + 16))(v7, v16, v3);
  sub_255DF3B58();
  v13 = sub_255E3A6C8();

  if (__OFSUB__(v13, 1))
  {
    __break(1u);
  }

  else
  {
    v23 = v13 - 1;
    v24 = 0;
    swift_beginAccess();
    sub_255E3A448();
    sub_255E3A468();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_255DF4308(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v3 = sub_255E3A6F8();
  return sub_255DF5B34(&v5, v3);
}

uint64_t StateDict.__allocating_init(parent:)(uint64_t a1)
{
  v2 = swift_allocObject();
  StateDict.init(parent:)(a1);
  return v2;
}

uint64_t sub_255DF4390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = type metadata accessor for StateDict(0, a3, a4, a5);
    swift_getWitnessTable(protocol conformance descriptor for StateDict<A, B>, v9);
    sub_255E386D8();

    sub_255E386E8();
  }

  return result;
}

uint64_t sub_255DF444C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 + a4 - 24);
  v8 = sub_255E3A8A8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v17 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v15 + 16))(&v17 - v13, a3, v7);
  (*(v9 + 16))(v12, a1, v8);
  return (*(**a2 + 256))(v12, v14);
}

void (*sub_255DF45F0(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x48uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *v2;
  v9 = sub_255E3A8A8();
  v7[1] = v9;
  v10 = *(v9 - 8);
  v7[2] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v13 = v12;
  v7[4] = v12;
  v14 = *(v8 + 80);
  v7[5] = v14;
  v15 = *(v14 - 8);
  v16 = v15;
  v7[6] = v15;
  v17 = *(v15 + 64);
  if (v5)
  {
    v7[7] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v7[7] = malloc(*(v15 + 64));
    v18 = malloc(v17);
  }

  v7[8] = v18;
  (*(v16 + 16))();
  sub_255DF26AC(a2, v13);
  return sub_255DF47F0;
}

void sub_255DF47F0(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = *(*a1 + 64);
  if (a2)
  {
    v5 = v2[5];
    v6 = v2[6];
    v8 = v2[3];
    v7 = v2[4];
    v9 = v2[1];
    v10 = v2[2];
    (*(v10 + 16))(v8, v7, v9);
    (*(v6 + 32))(v3, v4, v5);
    sub_255DF2E88(v8, v3);
    (*(v10 + 8))(v7, v9);
  }

  else
  {
    v8 = v2[3];
    v7 = v2[4];
    sub_255DF2E88(v7, v4);
  }

  free(v4);
  free(v3);
  free(v7);
  free(v8);

  free(v2);
}

uint64_t StateDict.__deallocating_deinit()
{
  StateDict.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_255DF494C@<X0>(void *a1@<X0>, uint64_t *a3@<X8>)
{
  type metadata accessor for StateDict(0, a1[10], a1[11], a1[12]);
  result = sub_255E386D8();
  *a3 = result;
  return result;
}

uint64_t StateDict.makeIterator()()
{
  v1 = v0;
  sub_255DF3D04();
  v2 = sub_255E3AAB8();

  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x2821FCFD8](sub_255DF6208, v3, TupleTypeMetadata2);
}

uint64_t sub_255DF4A6C@<X0>(uint64_t *a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = sub_255E3A8A8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  sub_255E3A958();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  sub_255DF4E90(sub_255DF6774, a2, MEMORY[0x277D84A98], TupleTypeMetadata2, v10, x8_0);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_255DF4BD8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = *(*a2 + 88);
  v7 = sub_255E3A8A8();
  v19 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v18 - v12;
  (*(v5 + 248))(a1);
  if ((*(v11 + 48))(v10, 1, v6) == 1)
  {
    (*(v19 + 8))(v10, v7);
    result = sub_255E3AAF8();
    __break(1u);
  }

  else
  {
    v14 = *(v11 + 32);
    v14(v13, v10, v6);
    v15 = *(v5 + 80);
    v16 = *(swift_getTupleTypeMetadata2() + 48);
    (*(*(v15 - 8) + 16))(a3, a1, v15);
    return (v14)(a3 + v16, v13, v6);
  }

  return result;
}