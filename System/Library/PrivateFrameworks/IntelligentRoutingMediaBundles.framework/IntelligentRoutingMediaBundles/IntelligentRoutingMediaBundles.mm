void *sub_2554EC1C8()
{
  v89 = *MEMORY[0x277D85DE8];
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E78, &qword_2554F2A80);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v72 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v72 - v4;
  v6 = sub_2554F21A8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v82 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v10 = sub_2554F2218();
  v11 = [v9 initWithPath_];

  if (!v11)
  {
    (*(v7 + 56))(v5, 1, 1, v6);
LABEL_8:
    sub_2554F19B4(v5);
    return 0;
  }

  v81 = v7;
  v12 = v11;
  v13 = sub_2554F2218();
  v14 = sub_2554F2218();
  v15 = [v12 URLForResource:v13 withExtension:v14];
  v77 = v12;

  if (v15)
  {
    sub_2554F2198();

    v16 = v81;
    (*(v81 + 56))(v3, 0, 1, v6);
  }

  else
  {
    v16 = v81;
    (*(v81 + 56))(v3, 1, 1, v6);
  }

  v17 = v82;
  sub_2554ECFC4(v3, v5);
  if ((*(v16 + 48))(v5, 1, v6) == 1)
  {

    goto LABEL_8;
  }

  (*(v16 + 32))(v17, v5, v6);
  v20 = sub_2554F21B8();
  v22 = v21;
  v23 = objc_opt_self();
  v24 = sub_2554F21C8();
  v85 = 0;
  v25 = [v23 propertyListWithData:v24 options:0 format:0 error:&v85];

  if (v25)
  {
    v73 = v20;
    v74 = v22;
    v79 = v6;
    v26 = v85;
    sub_2554F22D8();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E80, &qword_2554F2A88);
    if (swift_dynamicCast())
    {
      v18 = v84;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    if (qword_2814510B0 != -1)
    {
      goto LABEL_62;
    }

    while (1)
    {
      v27 = qword_2814511C8;
      v28 = 0;
      if ((sub_2554F21D8() & 1) != 0 && v27)
      {
        v29 = sub_2554F2218();
        v30 = [v27 arrayForKey_];

        if (v30)
        {
          v31 = sub_2554F2278();

          v28 = sub_2554F1A1C(v31);
        }

        else
        {
          v28 = 0;
        }
      }

      v34 = v18[2];
      if (v34)
      {
        v35 = 0;
        v78 = (v18 + 4);
        v72 = v34 - 1;
        v80 = MEMORY[0x277D84F90];
        v75 = v18;
        v76 = v28;
LABEL_25:
        v36 = v35;
        while (v36 < v18[2])
        {

          v38 = sub_2554ED034(v37, &v85);
          v39 = v86;
          if (v86)
          {
            v40 = v87;
            v41 = v88;
            if (!v28)
            {
              v83 = v85;

              goto LABEL_35;
            }

            v42 = v88;
            v83 = &v72;
            MEMORY[0x28223BE20](v38);
            v44 = v43;
            *(&v72 - 2) = &v85;

            v45 = sub_2554F1CC0(sub_2554F1D6C, (&v72 - 4), v28);

            if ((v45 & 1) == 0)
            {
              v83 = v44;
              v17 = v82;
              v41 = v42;
LABEL_35:
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v80 = sub_2554ED454(0, *(v80 + 2) + 1, 1, v80);
              }

              v47 = *(v80 + 2);
              v46 = *(v80 + 3);
              if (v47 >= v46 >> 1)
              {
                v80 = sub_2554ED454((v46 > 1), v47 + 1, 1, v80);
              }

              v35 = v36 + 1;
              v48 = v80;
              *(v80 + 2) = v47 + 1;
              v49 = &v48[32 * v47];
              *(v49 + 4) = v83;
              *(v49 + 5) = v39;
              v49[48] = v40 & 1;
              v49[49] = BYTE1(v40) & 1;
              v49[50] = BYTE2(v40) & 1;
              *(v49 + 7) = v41;
              v16 = v81;
              v18 = v75;
              v28 = v76;
              if (v72 == v36)
              {
LABEL_40:
                v50 = v80;
                goto LABEL_42;
              }

              goto LABEL_25;
            }

            v16 = v81;
            v17 = v82;
            v18 = v75;
            v28 = v76;
          }

          else
          {
          }

          if (v34 == ++v36)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
      }

      else
      {
        v50 = MEMORY[0x277D84F90];
LABEL_42:

        v78 = *(v50 + 2);
        if (!v78)
        {
          (*(v16 + 8))(v17, v79);

          sub_2554ED854(v73, v74);
          return 0;
        }

        v17 = 0;
        v51 = v50 + 56;
        v18 = MEMORY[0x277D84F98];
        v80 = v50;
        while (v17 < *(v50 + 2))
        {
          v54 = *(v51 - 3);
          v53 = *(v51 - 2);
          LODWORD(v83) = *(v51 - 8);
          v16 = *(v51 - 7);
          v55 = *(v51 - 6);
          v56 = *v51;
          swift_bridgeObjectRetain_n();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v85 = v18;
          v58 = sub_2554ED2C8(v54, v53);
          v60 = v18[2];
          v61 = (v59 & 1) == 0;
          v62 = __OFADD__(v60, v61);
          v63 = v60 + v61;
          if (v62)
          {
            goto LABEL_60;
          }

          v64 = v59;
          if (v18[3] >= v63)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v71 = v58;
              sub_2554F0E48();
              v58 = v71;
            }
          }

          else
          {
            sub_2554ED564(v63, isUniquelyReferenced_nonNull_native);
            v58 = sub_2554ED2C8(v54, v53);
            if ((v64 & 1) != (v65 & 1))
            {
              result = sub_2554F23A8();
              __break(1u);
              return result;
            }
          }

          v66 = v83;
          v18 = v85;
          if (v64)
          {
            v52 = *(v85 + 7) + 32 * v58;
            *v52 = v54;
            *(v52 + 8) = v53;
            *(v52 + 16) = v66;
            *(v52 + 17) = v16;
            *(v52 + 18) = v55;
            *(v52 + 24) = v56;
          }

          else
          {
            *(v85 + (v58 >> 6) + 8) |= 1 << v58;
            v67 = (v18[6] + 16 * v58);
            *v67 = v54;
            v67[1] = v53;
            v68 = v18[7] + 32 * v58;
            *v68 = v54;
            *(v68 + 8) = v53;
            *(v68 + 16) = v66;
            *(v68 + 17) = v16;
            *(v68 + 18) = v55;
            *(v68 + 24) = v56;
            v69 = v18[2];
            v62 = __OFADD__(v69, 1);
            v70 = v69 + 1;
            if (v62)
            {
              goto LABEL_61;
            }

            v18[2] = v70;
          }

          ++v17;
          v51 += 4;
          v50 = v80;
          if (v78 == v17)
          {
            (*(v81 + 8))(v82, v79);

            sub_2554ED854(v73, v74);

            return v18;
          }
        }
      }

      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      swift_once();
    }
  }

  v32 = v85;
  v33 = sub_2554F2188();

  swift_willThrow();
  sub_2554ED854(v20, v22);
  MEMORY[0x259C35DA0](v33);

  (*(v16 + 8))(v17, v6);
  return 0;
}

uint64_t sub_2554ECAF0()
{
  v1 = sub_2554EC1C8();
  if (!v1)
  {
    v1 = sub_2554F0FE4(MEMORY[0x277D84F90]);
  }

  *(v0 + 160) = v1;

  sub_2554EDA18(v2, (v0 + 16));
  v3 = *(v0 + 16);
  *(v0 + 192) = v3;
  *(v0 + 208) = *(v0 + 32);
  v4 = (v0 + 40);
  v5 = (v0 + 48);
  v6 = (v0 + 56);
  v7 = v3;
  while (1)
  {
    v8 = *v5;
    v9 = *v4;
    v10 = *v6;
    if (v7 < 0)
    {
      v16 = sub_2554F22F8();
      if (!v16)
      {
        break;
      }

      *(v0 + 176) = v16;
      sub_2554F112C();
      swift_dynamicCast();
      v15 = *(v0 + 168);
      v13 = v9;
      v14 = v8;
    }

    else
    {
      v11 = *v4;
      v12 = *v5;
      v13 = v9;
      if (!v8)
      {
        while (1)
        {
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v13 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_19;
          }

          v12 = *(*(v0 + 200) + 8 * v13);
          ++v11;
          if (v12)
          {
            goto LABEL_9;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x282200490]();
      }

LABEL_9:
      v14 = (v12 - 1) & v12;
      v15 = *(*(v7 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    }

    *(v0 + 224) = v13;
    *(v0 + 232) = v14;
    *(v0 + 216) = v15;
    if (!v15)
    {
      break;
    }

    *(v0 + 240) = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_41;
    }

    if (0x8F5C28F5C28F5C29 * v10 + 0x51EB851EB851EB8 <= 0xA3D70A3D70A3D70)
    {
      sub_2554F2288();
      *(v0 + 248) = 0;
      v46 = swift_task_alloc();
      *(v0 + 256) = v46;
      *v46 = v0;
      v46[1] = sub_2554EEEE8;

      return MEMORY[0x282200490]();
    }

    v17 = [v15 identifier];
    v18 = *(v0 + 216);
    if (v17)
    {
      v22 = v17;
      v23 = sub_2554F2228();
      v25 = v24;

      *(v0 + 264) = v23;
      *(v0 + 272) = v25;
      v26 = v18;
      v27 = sub_2554EC1C8();
      if (v27)
      {
        v28 = v27;
      }

      else
      {
        v28 = MEMORY[0x277D84F98];
      }

      if (v28[2] && (v29 = sub_2554ED2C8(v23, v25), (v30 & 1) != 0))
      {
        v31 = v28[7] + 32 * v29;
        v32 = *(v31 + 8);
        v47 = *v31;
        v33 = *(v31 + 16);
        v34 = *(v31 + 17);
        v35 = *(v31 + 18);
        v36 = *(v31 + 24);
        v37 = 256;
        if (!v34)
        {
          v37 = 0;
        }

        v38 = v37 | v33;
        v39 = 0x10000;
        if (!v35)
        {
          v39 = 0;
        }

        v40 = v38 | v39;
      }

      else
      {
        v47 = 0;
        v32 = 0;
        v40 = 0;
        v36 = 0;
      }

      *(v0 + 280) = v32;
      v41 = *(v0 + 216);

      v42 = sub_2554F1EA0(v23, v25);
      v44 = v43;
      *(v0 + 96) = v47;
      *(v0 + 288) = v43;
      *(v0 + 104) = v32;
      *(v0 + 112) = v40;
      *(v0 + 120) = v36;
      v45 = swift_task_alloc();
      *(v0 + 296) = v45;
      *v45 = v0;
      v45[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v23, v25, v41, (v0 + 96), v42, v44);
    }

    v7 = *(v0 + 192);
    v6 = (v0 + 240);
    v4 = (v0 + 224);
    v5 = (v0 + 232);
  }

  v7 = *(v0 + 192);
LABEL_19:
  sub_2554EDA10(v7);
  v19 = sub_2554ED8A8(*(v0 + 160));
  v20 = *(v0 + 8);

  return v20(v19);
}

uint64_t sub_2554ECFC4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E78, &qword_2554F2A80);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2554ED034@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!*(result + 16) || (v3 = result, result = sub_2554ED2C8(0xD000000000000010, 0x80000002554F2E70), (v4 & 1) == 0) || (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), (result & 1) == 0))
  {
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (!*(v3 + 16))
  {
    v6 = 0;
LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  result = sub_2554ED2C8(0xD000000000000019, 0x80000002554F2E90);
  if ((v5 & 1) != 0 && (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), result))
  {
    v6 = v16;
  }

  else
  {
    v6 = 0;
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  result = sub_2554ED2C8(0xD000000000000012, 0x80000002554F2EB0);
  if ((v7 & 1) != 0 && (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), result))
  {
    v8 = v16;
  }

  else
  {
    v8 = 0;
  }

  if (!*(v3 + 16))
  {
    v9 = 0;
    goto LABEL_30;
  }

  result = sub_2554ED2C8(0xD000000000000015, 0x80000002554F2ED0);
  if ((v12 & 1) == 0 || (sub_2554ED340(*(v3 + 56) + 32 * result, v18), result = swift_dynamicCast(), !result))
  {
LABEL_17:
    v9 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_30;
    }

    goto LABEL_18;
  }

  v9 = v16;
  if (!*(v3 + 16))
  {
    goto LABEL_30;
  }

LABEL_18:
  result = sub_2554ED2C8(0x707954616964656DLL, 0xE900000000000065);
  if (v10)
  {
    sub_2554ED340(*(v3 + 56) + 32 * result, v18);
    result = swift_dynamicCast();
    if (result)
    {
      if (v16 == 1)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2 * (v16 == 2);
      }

      goto LABEL_31;
    }
  }

LABEL_30:
  v11 = 0;
LABEL_31:
  v13 = 256;
  if (!v8)
  {
    v13 = 0;
  }

  v14 = v13 | v6;
  v15 = 0x10000;
  if (!v9)
  {
    v15 = 0;
  }

  *a2 = v16;
  *(a2 + 8) = v17;
  *(a2 + 16) = v14 | v15;
  *(a2 + 24) = v11;
  return result;
}

unint64_t sub_2554ED2C8(uint64_t a1, uint64_t a2)
{
  sub_2554F23F8();
  sub_2554F2248();
  v4 = sub_2554F2428();

  return sub_2554ED39C(a1, a2, v4);
}

uint64_t sub_2554ED340(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2554ED39C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2554F2388())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

char *sub_2554ED454(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E90, &qword_2554F2A98);
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

uint64_t sub_2554ED564(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E30, &qword_2554F2978);
  v36 = v4;
  result = sub_2554F2368();
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
      v25 = *(v5 + 56) + 32 * v21;
      v26 = *(v25 + 8);
      v41 = *v25;
      v39 = *(v25 + 17);
      v40 = *(v25 + 16);
      v38 = *(v25 + 18);
      v37 = *(v25 + 24);
      if ((v36 & 1) == 0)
      {
      }

      sub_2554F23F8();
      sub_2554F2248();
      result = sub_2554F2428();
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
      v17 = *(v7 + 56) + 32 * v15;
      *v17 = v41;
      *(v17 + 8) = v26;
      *(v17 + 16) = v40;
      *(v17 + 17) = v39;
      *(v17 + 18) = v38;
      *(v17 + 24) = v37;
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

uint64_t sub_2554ED854(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2554ED8A8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = sub_2554EDB04();
  result = MEMORY[0x259C35A00](v3, &type metadata for IRMBBundle, v4);
  v6 = 0;
  v24 = result;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  for (i = (v7 + 63) >> 6; v9; result = )
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(a1 + 56) + ((v11 << 11) | (32 * v12));
    v14 = *v13;
    v15 = *(v13 + 8);
    v16 = *(v13 + 17);
    v17 = *(v13 + 18);
    v18 = *(v13 + 24);
    v19 = v1 & 0xFF000000 | *(v13 + 16);
    if (v16)
    {
      v20 = 256;
    }

    else
    {
      v20 = 0;
    }

    v21 = v19 | v20;
    if (v17)
    {
      v22 = 0x10000;
    }

    else
    {
      v22 = 0;
    }

    v1 = v21 | v22;

    sub_2554EDB58(v23, v14, v15, v1, v18);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v24;
    }

    v9 = *(a1 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2554EDA18@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_2554F22E8();
    sub_2554F112C();
    sub_2554F13E8(&qword_27F7B7E40, sub_2554F112C, MEMORY[0x277D85378]);
    sub_2554F22B8();
    result = v10;
    v3 = v11;
    v5 = v12;
    v4 = v13;
    v6 = v14;
  }

  else
  {
    v4 = 0;
    v7 = -1;
    v8 = -1 << *(result + 32);
    v3 = result + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v7 = ~(-1 << v9);
    }

    v6 = v7 & *(result + 56);
  }

  *a2 = result;
  a2[1] = v3;
  a2[2] = v5;
  a2[3] = v4;
  a2[4] = v6;
  a2[5] = 0;
  return result;
}

unint64_t sub_2554EDB04()
{
  result = qword_2814510A8;
  if (!qword_2814510A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814510A8);
  }

  return result;
}

uint64_t sub_2554EDB58(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5;
  v41 = a4 & 0x10000;
  v42 = a4 & 0x100;
  v11 = *v6;
  sub_2554F23F8();
  v44 = a2;
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  v43 = a4;
  sub_2554F2418();
  v40 = a5;
  MEMORY[0x259C35B60](a5);
  v12 = sub_2554F2428();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  v15 = v12 & ~v14;
  v38 = v6;
  v37 = a4 & 1;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v36 = v11;
    v17 = *(v11 + 48);
    v18 = v44;
    while (1)
    {
      v20 = v17 + 32 * v15;
      v21 = *(v20 + 16);
      v22 = *(v20 + 17);
      v23 = *(v20 + 24);
      v24 = (v41 != 0) ^ *(v20 + 18);
      if (*v20 == v18 && *(v20 + 8) == a3)
      {
        if ((v21 ^ v43 | (v42 != 0) ^ v22 | v24))
        {
          goto LABEL_5;
        }
      }

      else
      {
        v19 = sub_2554F2388();
        v18 = v44;
        if ((v21 ^ v43) & 1 | ((v19 & 1) == 0) | (((v42 != 0) ^ v22) | v24) & 1)
        {
          goto LABEL_5;
        }
      }

      if (v23 == v40)
      {

        v29 = *(v36 + 48) + 32 * v15;
        v31 = *v29;
        v30 = *(v29 + 8);
        v32 = *(v29 + 16);
        v33 = *(v29 + 17);
        v34 = *(v29 + 18);
        v35 = *(v29 + 24);
        *a1 = v31;
        *(a1 + 8) = v30;
        *(a1 + 16) = v32;
        *(a1 + 17) = v33;
        *(a1 + 18) = v34;
        *(a1 + 24) = v35;

        return 0;
      }

LABEL_5:
      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_14;
      }
    }
  }

  v18 = v44;
LABEL_14:
  v26 = v18;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *v38;

  sub_2554EDE00(v26, a3, v43 & 0x10101, v40, v15, isUniquelyReferenced_nonNull_native);
  *v38 = v45;
  *a1 = v26;
  *(a1 + 8) = a3;
  *(a1 + 16) = v37;
  *(a1 + 17) = BYTE1(v42);
  *(a1 + 18) = BYTE2(v41);
  *(a1 + 24) = v40;
  return 1;
}

uint64_t sub_2554EDE00(uint64_t result, uint64_t a2, int a3, uint64_t a4, unint64_t a5, char a6)
{
  v8 = a2;
  v9 = result;
  v10 = a3 & 0x100;
  v11 = a3 & 0x10000;
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  v32 = (a3 & 0x10000u) >> 16;
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    v35 = a3;
    v34 = result;
    if (a6)
    {
      sub_2554F06D4(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_2554F099C();
LABEL_20:
        LOBYTE(a3) = v35;
        v8 = a2;
        v9 = v34;
        goto LABEL_21;
      }

      sub_2554F0B18(v12 + 1);
    }

    v14 = *v6;
    sub_2554F23F8();
    sub_2554F2248();
    sub_2554F2418();
    sub_2554F2418();
    sub_2554F2418();
    MEMORY[0x259C35B60](a4);
    result = sub_2554F2428();
    v15 = v14 + 56;
    v16 = -1 << *(v14 + 32);
    a5 = result & ~v16;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v17 = ~v16;
      v18 = *(v14 + 48);
      a3 = v35;
      v8 = a2;
      v9 = v34;
      v33 = v11;
      while (1)
      {
        v19 = v18 + 32 * a5;
        result = *v19;
        v20 = *(v19 + 16);
        v21 = *(v19 + 17);
        v22 = *(v19 + 24);
        v23 = (v11 != 0) ^ *(v19 + 18);
        if (*v19 == v9 && *(v19 + 8) == v8)
        {
          if (((v20 ^ a3 | (v10 != 0) ^ v21 | v23) & 1) == 0)
          {
LABEL_10:
            if (v22 == a4)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v25 = v17;
          result = sub_2554F2388();
          v17 = v25;
          v9 = v34;
          v8 = a2;
          a3 = v35;
          v11 = v33;
          if (!((v20 ^ v35) & 1 | ((result & 1) == 0) | (((v10 != 0) ^ v21) | v23) & 1))
          {
            goto LABEL_10;
          }
        }

        a5 = (a5 + 1) & v17;
        if (((*(v15 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_21;
        }
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  v26 = *v31;
  *(*v31 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v27 = *(v26 + 48) + 32 * a5;
  *v27 = v9;
  *(v27 + 8) = v8;
  *(v27 + 16) = a3 & 1;
  *(v27 + 17) = BYTE1(v10);
  *(v27 + 18) = v32;
  *(v27 + 24) = a4;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
LABEL_24:
    result = sub_2554F2398();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t IRMBBundle.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_2554EE0D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_2554EE118(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_2554EE180()
{
  v0 = sub_2554F2208();
  __swift_allocate_value_buffer(v0, qword_27F7B7EA0);
  __swift_project_value_buffer(v0, qword_27F7B7EA0);
  return sub_2554F21F8();
}

uint64_t static IRMBManager.query(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2554EE2AC;

  return static IRMBManager.query(_:priorBundle:)(a1, a2, a3, 0);
}

uint64_t sub_2554EE2AC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t static IRMBManager.query(_:priorBundle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x2822009F8](sub_2554EE3C4, 0, 0);
}

uint64_t sub_2554EE3C4()
{
  v1 = sub_2554EC1C8();
  if (!v1)
  {
    v1 = sub_2554F0FE4(MEMORY[0x277D84F90]);
  }

  v2 = v1;
  if (*(v1 + 16) && (v3 = sub_2554ED2C8(*(v0 + 56), *(v0 + 64)), (v4 & 1) != 0))
  {
    v5 = *(v2 + 56) + 32 * v3;
    v7 = *v5;
    v6 = *(v5 + 8);
    v8 = *(v5 + 16);
    v9 = *(v5 + 17);
    v10 = *(v5 + 18);
    v11 = *(v5 + 24);
    v12 = 256;
    if (!v9)
    {
      v12 = 0;
    }

    v13 = v12 | v8;
    v14 = 0x10000;
    if (!v10)
    {
      v14 = 0;
    }

    v15 = v13 | v14;
  }

  else
  {
    v7 = 0;
    v6 = 0;
    v15 = 0;
    v11 = 0;
  }

  *(v0 + 80) = v6;
  v17 = *(v0 + 56);
  v16 = *(v0 + 64);

  v18 = sub_2554F1EA0(v17, v16);
  v20 = v19;
  *(v0 + 16) = v7;
  *(v0 + 88) = v19;
  *(v0 + 24) = v6;
  *(v0 + 32) = v15;
  *(v0 + 40) = v11;
  v21 = swift_task_alloc();
  *(v0 + 96) = v21;
  *v21 = v0;
  v21[1] = sub_2554EE53C;
  v22 = *(v0 + 64);
  v23 = *(v0 + 72);
  v24 = *(v0 + 48);
  v25 = *(v0 + 56);

  return sub_2554EE734(v24, v25, v22, v23, (v0 + 16), v18, v20);
}

uint64_t sub_2554EE53C()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_2554EE6D0;
  }

  else
  {
    v2 = sub_2554EE66C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2554EE66C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2554EE6D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2554EE734(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 80) = a6;
  *(v7 + 88) = a7;
  *(v7 + 64) = a3;
  *(v7 + 72) = a4;
  *(v7 + 48) = a1;
  *(v7 + 56) = a2;
  v8 = a5[1];
  *(v7 + 96) = *a5;
  *(v7 + 112) = v8;
  return MEMORY[0x2822009F8](sub_2554EE764, 0, 0);
}

uint64_t sub_2554EE764()
{
  v86 = v0;
  v1 = *(v0 + 72);
  if (v1)
  {
    v2 = [*(v0 + 72) identifier];
    if (!v2)
    {
LABEL_8:
      v11 = *(v0 + 64);
      v12 = *(v0 + 72);
      v13 = *(v0 + 56);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_2554F2338();
      MEMORY[0x259C359B0](0xD000000000000027, 0x80000002554F2D20);
      MEMORY[0x259C359B0](v13, v11);
      MEMORY[0x259C359B0](0xD00000000000002BLL, 0x80000002554F2DA0);
      *(v0 + 16) = v12;
      v14 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E58, &qword_2554F2990);
      v15 = sub_2554F2238();
      MEMORY[0x259C359B0](v15);

LABEL_37:
      v54 = v81;
      v55 = v82;
      if (qword_27F7B7E10 != -1)
      {
        swift_once();
      }

      v56 = sub_2554F2208();
      __swift_project_value_buffer(v56, qword_27F7B7EA0);

      v57 = sub_2554F21E8();
      v58 = sub_2554F22C8();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v81 = v60;
        *v59 = 136315138;
        *(v59 + 4) = sub_2554EFF90(v54, v55, &v81);
        _os_log_impl(&dword_2554EB000, v57, v58, "%s", v59, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v60);
        MEMORY[0x259C35E60](v60, -1, -1);
        MEMORY[0x259C35E60](v59, -1, -1);
      }

      sub_2554F1468();
      swift_allocError();
      *v61 = v54;
      v61[1] = v55;
      swift_willThrow();
      v62 = *(v0 + 8);
      goto LABEL_54;
    }

    v4 = *(v0 + 56);
    v3 = *(v0 + 64);
    v5 = v2;
    v6 = sub_2554F2228();
    v8 = v7;

    if (v6 == v4 && v8 == v3)
    {
    }

    else
    {
      v10 = sub_2554F2388();

      if ((v10 & 1) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  v16 = *(v0 + 104);
  if (v16)
  {
    v17 = *(v0 + 96) == *(v0 + 56) && v16 == *(v0 + 64);
    if (!v17 && (sub_2554F2388() & 1) == 0)
    {
      v52 = *(v0 + 56);
      v51 = *(v0 + 64);
      v81 = 0;
      v82 = 0xE000000000000000;
      v70 = *(v0 + 112);
      v71 = *(v0 + 96);
      sub_2554F2338();
      MEMORY[0x259C359B0](0xD000000000000027, 0x80000002554F2D20);
      MEMORY[0x259C359B0](v52, v51);
      MEMORY[0x259C359B0](0xD00000000000002ELL, 0x80000002554F2D50);
      *(v0 + 16) = v71;
      *(v0 + 32) = v70;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E48, &qword_2554F2988);
      v53 = sub_2554F2238();
      MEMORY[0x259C359B0](v53);

      MEMORY[0x259C359B0](0xD00000000000001BLL, 0x80000002554F2D80);
      goto LABEL_37;
    }
  }

  if (v1)
  {
    v18 = *(v0 + 72);
    v19 = [v18 identifier];
    if (v19)
    {
      v20 = *(v0 + 88);
      v21 = v19;
      v1 = sub_2554F2228();
      v23 = v22;

      v24 = [v18 bundleType];
      if (v20)
      {
        v25 = *(v0 + 80);
        if (v25 == 0x6D726F46676E6F4CLL && *(v0 + 88) == 0xED00006F69647541 || (sub_2554F2388() & 1) != 0)
        {
          v24 = 1;
        }

        else if (v25 == 0x6D726F46676E6F4CLL && *(v0 + 88) == 0xED00006F65646956)
        {
          v24 = 2;
        }

        else if (sub_2554F2388())
        {
          v24 = 2;
        }
      }

      v26 = 1;
      v27 = 257;
      v28 = *(v0 + 88);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_29;
    }

    v1 = 0;
  }

  v23 = 0;
  v26 = 0;
  v27 = 0;
  v24 = 0;
  v28 = *(v0 + 88);
  if (!v16)
  {
LABEL_24:
    if (v28)
    {
      v29 = sub_2554F2010(*(v0 + 80), v28);
      v31 = *(v0 + 56);
      v30 = *(v0 + 64);
      v32 = *(v0 + 48);
      if (v23)
      {

        *v32 = v31;
        *(v32 + 8) = v30;
        *(v32 + 16) = v27;
        *(v32 + 18) = v26;
      }

      else
      {
        *v32 = v31;
        *(v32 + 8) = v30;
        *(v32 + 16) = 257;
        *(v32 + 18) = 1;
      }

      *(v32 + 24) = v29;
      goto LABEL_52;
    }

    if (v23)
    {
      v66 = *(v0 + 48);
      *v66 = v1;
      *(v66 + 8) = v23;
      *(v66 + 16) = v27;
      *(v66 + 18) = v26;
      *(v66 + 24) = v24;
      goto LABEL_53;
    }

    v68 = *(v0 + 64);
    v69 = *(v0 + 48);
    *v69 = *(v0 + 56);
    *(v69 + 8) = v68;
    *(v69 + 16) = 0;
    *(v69 + 18) = 0;
    *(v69 + 24) = 0;
LABEL_52:

    goto LABEL_53;
  }

LABEL_29:
  if (v28)
  {
    v33 = sub_2554F2010(*(v0 + 80), v28);
    if (!v23)
    {
      v63 = *(v0 + 112);
      v64 = *(v0 + 64);
      v65 = *(v0 + 48);
      *v65 = *(v0 + 56);
      *(v65 + 8) = v64;
      *(v65 + 16) = v63 & 1;
      *(v65 + 17) = BYTE1(v63) & 1;
      *(v65 + 18) = BYTE2(v63) & 1;
      *(v65 + 24) = v33;
      goto LABEL_52;
    }

    v34 = *(v0 + 120);
    v35 = *(v0 + 112);
    v36 = *(v0 + 96);
    v37 = *(v0 + 104);
    v76 = v1;
    v77 = v23;
    v78 = v27;
    v79 = v26;
    v80 = v24;
    v81 = v36;
    v82 = v37;
    v83 = v35 & 0x101;
    v84 = BYTE2(v35) & 1;
    v85 = v34;
    sub_2554F156C(&v76, &v81, &v72);

    result = v73;
    if (v73)
    {
      v40 = *(v0 + 56);
      v39 = *(v0 + 64);
      v41 = *(v0 + 48);
      v42 = v74;

      *v41 = v40;
      *(v41 + 8) = v39;
      *(v41 + 16) = v42 & 1;
      *(v41 + 17) = BYTE1(v42) & 1;
      *(v41 + 18) = BYTE2(v42) & 1;
      *(v41 + 24) = v33;
      goto LABEL_52;
    }

    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  v44 = *(v0 + 112);
  v43 = *(v0 + 120);
  v46 = *(v0 + 96);
  v45 = *(v0 + 104);
  if (!v23)
  {
    v67 = *(v0 + 48);
    *v67 = v46;
    *(v67 + 8) = v45;
    *(v67 + 16) = v44 & 1;
    *(v67 + 17) = BYTE1(v44) & 1;
    *(v67 + 18) = BYTE2(v44) & 1;
    *(v67 + 24) = v43;
    goto LABEL_52;
  }

  v76 = v1;
  v77 = v23;
  v78 = v27;
  v79 = v26;
  v80 = v24;
  v81 = v46;
  v82 = v45;
  v83 = v44 & 0x101;
  v84 = BYTE2(v44) & 1;
  v85 = v43;
  sub_2554F156C(&v76, &v81, &v72);

  v47 = v73;
  if (!v73)
  {
    goto LABEL_61;
  }

  v48 = *(v0 + 48);
  v49 = v75;
  v50 = v74;
  *v48 = v72;
  *(v48 + 8) = v47;
  *(v48 + 16) = v50 & 1;
  *(v48 + 17) = BYTE1(v50) & 1;
  *(v48 + 18) = BYTE2(v50) & 1;
  *(v48 + 24) = v49;
LABEL_53:
  v62 = *(v0 + 8);
LABEL_54:

  return v62();
}

uint64_t sub_2554EEEE8()
{

  return MEMORY[0x2822009F8](sub_2554EEFE4, 0, 0);
}

uint64_t sub_2554EEFE4()
{
  v43 = *(v0 + 248);
  v1 = *(v0 + 216);
  while (1)
  {
    v2 = [v1 identifier];
    v3 = *(v0 + 216);
    if (v2)
    {
      v18 = v2;
      v19 = sub_2554F2228();
      v21 = v20;

      *(v0 + 264) = v19;
      *(v0 + 272) = v21;
      v22 = v3;
      v23 = sub_2554EC1C8();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = MEMORY[0x277D84F98];
      }

      if (v24[2] && (v25 = sub_2554ED2C8(v19, v21), (v26 & 1) != 0))
      {
        v27 = v24[7] + 32 * v25;
        v28 = *(v27 + 8);
        v44 = *v27;
        v29 = *(v27 + 16);
        v30 = *(v27 + 17);
        v31 = *(v27 + 18);
        v32 = *(v27 + 24);
        v33 = 256;
        if (!v30)
        {
          v33 = 0;
        }

        v34 = v33 | v29;
        v35 = 0x10000;
        if (!v31)
        {
          v35 = 0;
        }

        v36 = v34 | v35;
      }

      else
      {
        v44 = 0;
        v28 = 0;
        v36 = 0;
        v32 = 0;
      }

      *(v0 + 280) = v28;
      v37 = *(v0 + 216);

      v38 = sub_2554F1EA0(v19, v21);
      v40 = v39;
      *(v0 + 96) = v44;
      *(v0 + 288) = v39;
      *(v0 + 104) = v28;
      *(v0 + 112) = v36;
      *(v0 + 120) = v32;
      v41 = swift_task_alloc();
      *(v0 + 296) = v41;
      *v41 = v0;
      v41[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v19, v21, v37, (v0 + 96), v38, v40);
    }

    v4 = *(v0 + 232);
    v5 = *(v0 + 240);
    v6 = *(v0 + 224);
    v7 = *(v0 + 192);
    if (v7 < 0)
    {
      v12 = sub_2554F22F8();
      if (!v12)
      {
        break;
      }

      *(v0 + 176) = v12;
      sub_2554F112C();
      swift_dynamicCast();
      v1 = *(v0 + 168);
      v10 = v6;
      v11 = v4;
    }

    else
    {
      v8 = *(v0 + 224);
      v9 = *(v0 + 232);
      v10 = v8;
      if (!v4)
      {
        while (1)
        {
          v10 = v8 + 1;
          if (__OFADD__(v8, 1))
          {
            break;
          }

          if (v10 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_20;
          }

          v9 = *(*(v0 + 200) + 8 * v10);
          ++v8;
          if (v9)
          {
            goto LABEL_8;
          }
        }

        __break(1u);
LABEL_41:
        __break(1u);
        return MEMORY[0x282200490]();
      }

LABEL_8:
      v11 = (v9 - 1) & v9;
      v1 = *(*(v7 + 48) + ((v10 << 9) | (8 * __clz(__rbit64(v9)))));
    }

    *(v0 + 224) = v10;
    *(v0 + 232) = v11;
    *(v0 + 216) = v1;
    if (!v1)
    {
      break;
    }

    *(v0 + 240) = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_41;
    }

    if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v5) <= 0xA3D70A3D70A3D70)
    {
      v13 = v1;
      sub_2554F2288();
      *(v0 + 248) = v43;
      if (v43)
      {
        sub_2554EDA10(*(v0 + 192));

        v14 = *(v0 + 8);

        return v14();
      }

      v42 = swift_task_alloc();
      *(v0 + 256) = v42;
      *v42 = v0;
      v42[1] = sub_2554EEEE8;

      return MEMORY[0x282200490]();
    }
  }

  v7 = *(v0 + 192);
LABEL_20:
  sub_2554EDA10(v7);
  v16 = sub_2554ED8A8(*(v0 + 160));
  v17 = *(v0 + 8);

  return v17(v16);
}

uint64_t sub_2554EF428()
{
  *(*v1 + 304) = v0;

  if (v0)
  {

    v2 = sub_2554EFA34;
  }

  else
  {
    v2 = sub_2554EF558;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2554EF558()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 264);
  v3 = *(v0 + 216);
  v4 = *(v0 + 315);

  if (*(v0 + 81))
  {
    v5 = 256;
  }

  else
  {
    v5 = 0;
  }

  v6 = *(v0 + 80) | (v4 << 24) | v5;
  if (*(v0 + 82))
  {
    v7 = 0x10000;
  }

  else
  {
    v7 = 0;
  }

  v8 = v6 | v7;
  sub_2554F0538(*(v0 + 64), *(v0 + 72), v6 | v7, *(v0 + 88), v2, v1, v0 + 128);

  v51 = *(v0 + 304);
  v10 = *(v0 + 232);
  v9 = *(v0 + 240);
  v11 = *(v0 + 224);
  *(v0 + 312) = v8;
  v12 = *(v0 + 192);
  if (v12 < 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v13 = v11;
  v14 = v10;
  v15 = v11;
  if (!v10)
  {
    while (1)
    {
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v15 >= ((*(v0 + 208) + 64) >> 6))
      {
LABEL_23:
        sub_2554EDA10(v12);
        v21 = sub_2554ED8A8(*(v0 + 160));
        v22 = *(v0 + 8);

        return v22(v21);
      }

      v14 = *(*(v0 + 200) + 8 * v15);
      ++v13;
      if (v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_48:
    __break(1u);
    return MEMORY[0x282200490]();
  }

LABEL_12:
  v16 = (v14 - 1) & v14;
  v17 = *(*(v12 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
  while (1)
  {
    *(v0 + 224) = v15;
    *(v0 + 232) = v16;
    *(v0 + 216) = v17;
    if (!v17)
    {
LABEL_22:
      v12 = *(v0 + 192);
      goto LABEL_23;
    }

    *(v0 + 240) = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      goto LABEL_48;
    }

    if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v9) <= 0xA3D70A3D70A3D70)
    {
      break;
    }

    v19 = [v17 identifier];
    v20 = *(v0 + 216);
    if (v19)
    {
      v26 = v19;
      v27 = sub_2554F2228();
      v29 = v28;

      *(v0 + 264) = v27;
      *(v0 + 272) = v29;
      v30 = v20;
      v31 = sub_2554EC1C8();
      if (v31)
      {
        v32 = v31;
      }

      else
      {
        v32 = MEMORY[0x277D84F98];
      }

      if (v32[2] && (v33 = sub_2554ED2C8(v27, v29), (v34 & 1) != 0))
      {
        v35 = v32[7] + 32 * v33;
        v36 = *(v35 + 8);
        v52 = *v35;
        v37 = *(v35 + 16);
        v38 = *(v35 + 17);
        v39 = *(v35 + 18);
        v50 = *(v35 + 24);
        v40 = 256;
        if (!v38)
        {
          v40 = 0;
        }

        v41 = v40 | v37;
        v42 = 0x10000;
        if (!v39)
        {
          v42 = 0;
        }

        v43 = v41 | v42;
      }

      else
      {
        v50 = 0;
        v52 = 0;
        v36 = 0;
        v43 = 0;
      }

      *(v0 + 280) = v36;
      v44 = *(v0 + 216);

      v45 = sub_2554F1EA0(v27, v29);
      v47 = v46;
      *(v0 + 96) = v52;
      *(v0 + 288) = v46;
      *(v0 + 104) = v36;
      *(v0 + 112) = v43;
      *(v0 + 120) = v50;
      v48 = swift_task_alloc();
      *(v0 + 296) = v48;
      *v48 = v0;
      v48[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v27, v29, v44, (v0 + 96), v45, v47);
    }

    v10 = *(v0 + 232);
    v9 = *(v0 + 240);
    v11 = *(v0 + 224);
    v12 = *(v0 + 192);
    if ((v12 & 0x8000000000000000) == 0)
    {
      goto LABEL_8;
    }

LABEL_13:
    v18 = sub_2554F22F8();
    if (!v18)
    {
      goto LABEL_22;
    }

    *(v0 + 176) = v18;
    sub_2554F112C();
    swift_dynamicCast();
    v17 = *(v0 + 168);
    v15 = v11;
    v16 = v10;
  }

  v24 = v17;
  sub_2554F2288();
  *(v0 + 248) = v51;
  if (!v51)
  {
    v49 = swift_task_alloc();
    *(v0 + 256) = v49;
    *v49 = v0;
    v49[1] = sub_2554EEEE8;

    return MEMORY[0x282200490]();
  }

  sub_2554EDA10(*(v0 + 192));

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_2554EFA34()
{
  v1 = *(v0 + 304);
  v2 = *(v0 + 216);

  MEMORY[0x259C35DA0](v1);
  while (1)
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 240);
    v5 = *(v0 + 224);
    v6 = *(v0 + 192);
    if (v6 < 0)
    {
      v12 = sub_2554F22F8();
      if (!v12)
      {
        break;
      }

      *(v0 + 176) = v12;
      sub_2554F112C();
      swift_dynamicCast();
      v11 = *(v0 + 168);
      v9 = v5;
      v10 = v3;
    }

    else
    {
      v7 = *(v0 + 224);
      v8 = *(v0 + 232);
      v9 = v7;
      if (!v3)
      {
        while (1)
        {
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v9 >= ((*(v0 + 208) + 64) >> 6))
          {
            goto LABEL_17;
          }

          v8 = *(*(v0 + 200) + 8 * v9);
          ++v7;
          if (v8)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
LABEL_39:
        __break(1u);
        return MEMORY[0x282200490]();
      }

LABEL_7:
      v10 = (v8 - 1) & v8;
      v11 = *(*(v6 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v8)))));
    }

    *(v0 + 224) = v9;
    *(v0 + 232) = v10;
    *(v0 + 216) = v11;
    if (!v11)
    {
      break;
    }

    *(v0 + 240) = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      goto LABEL_39;
    }

    if ((0x51EB851EB851EB8 - 0x70A3D70A3D70A3D7 * v4) <= 0xA3D70A3D70A3D70)
    {
      sub_2554F2288();
      *(v0 + 248) = 0;
      v43 = swift_task_alloc();
      *(v0 + 256) = v43;
      *v43 = v0;
      v43[1] = sub_2554EEEE8;

      return MEMORY[0x282200490]();
    }

    v13 = [v11 identifier];
    v14 = *(v0 + 216);
    if (v13)
    {
      v18 = v13;
      v19 = sub_2554F2228();
      v21 = v20;

      *(v0 + 264) = v19;
      *(v0 + 272) = v21;
      v22 = v14;
      v23 = sub_2554EC1C8();
      if (v23)
      {
        v24 = v23;
      }

      else
      {
        v24 = MEMORY[0x277D84F98];
      }

      if (v24[2] && (v25 = sub_2554ED2C8(v19, v21), (v26 & 1) != 0))
      {
        v27 = v24[7] + 32 * v25;
        v29 = *v27;
        v28 = *(v27 + 8);
        v30 = *(v27 + 16);
        v31 = *(v27 + 17);
        v32 = *(v27 + 18);
        v33 = *(v27 + 24);
        v34 = 256;
        if (!v31)
        {
          v34 = 0;
        }

        v35 = v34 | v30;
        v36 = 0x10000;
        if (!v32)
        {
          v36 = 0;
        }

        v37 = v35 | v36;
      }

      else
      {
        v29 = 0;
        v28 = 0;
        v37 = 0;
        v33 = 0;
      }

      *(v0 + 280) = v28;
      v38 = *(v0 + 216);

      v39 = sub_2554F1EA0(v19, v21);
      v41 = v40;
      *(v0 + 288) = v40;
      *(v0 + 96) = v29;
      *(v0 + 104) = v28;
      *(v0 + 112) = v37;
      *(v0 + 120) = v33;
      v42 = swift_task_alloc();
      *(v0 + 296) = v42;
      *v42 = v0;
      v42[1] = sub_2554EF428;

      return sub_2554EE734(v0 + 64, v19, v21, v38, (v0 + 96), v39, v41);
    }
  }

  v6 = *(v0 + 192);
LABEL_17:
  sub_2554EDA10(v6);
  v15 = sub_2554ED8A8(*(v0 + 160));
  v16 = *(v0 + 8);

  return v16(v15);
}

void *sub_2554EFE94@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_2554EFEB0()
{
  v1 = *v0;
  sub_2554F23F8();
  MEMORY[0x259C35B60](v1);
  return sub_2554F2428();
}

uint64_t sub_2554EFF24(uint64_t a1)
{
  v2 = *v1;
  sub_2554F23F8();
  MEMORY[0x259C35B60](v2);
  return sub_2554F2428();
}

unint64_t sub_2554EFF90(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2554F005C(v11, 0, 0, 1, a1, a2);
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
    sub_2554ED340(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_2554F005C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2554F0168(a5, a6);
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
    result = sub_2554F2348();
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

void *sub_2554F0168(uint64_t a1, unint64_t a2)
{
  v3 = sub_2554F01B4(a1, a2);
  sub_2554F02E4(&unk_286769738);
  return v3;
}

void *sub_2554F01B4(uint64_t a1, unint64_t a2)
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

  v6 = sub_2554F03D0(v5, 0);
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

  result = sub_2554F2348();
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
        v10 = sub_2554F2268();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2554F03D0(v10, 0);
        result = sub_2554F2328();
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

uint64_t sub_2554F02E4(uint64_t result)
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

  result = sub_2554F0444(result, v11, 1, v3);
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

void *sub_2554F03D0(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E60, &qword_2554F2998);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_2554F0444(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E60, &qword_2554F2998);
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

uint64_t sub_2554F0538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *v7;
  v18 = sub_2554ED2C8(a5, a6);
  v19 = v16[2];
  v20 = (v17 & 1) == 0;
  result = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = v17;
  if (v16[3] >= result)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_6;
    }

LABEL_11:
    result = sub_2554F0E48();
    goto LABEL_6;
  }

  sub_2554ED564(result, isUniquelyReferenced_nonNull_native);
  result = sub_2554ED2C8(a5, a6);
  if ((v8 & 1) != (v22 & 1))
  {
    result = sub_2554F23A8();
    __break(1u);
    return result;
  }

  v18 = result;
LABEL_6:
  if (v8)
  {
    v23 = v16[7] + 32 * v18;
    v24 = *(v23 + 8);
    v25 = *(v23 + 16);
    v26 = *(v23 + 17);
    v27 = *(v23 + 18);
    v28 = *(v23 + 24);
    *a7 = *v23;
    *(a7 + 8) = v24;
    *(a7 + 16) = v25;
    *(a7 + 17) = v26;
    *(a7 + 18) = v27;
    *v23 = a1;
    *(v23 + 8) = a2;
    *(v23 + 16) = a3 & 1;
    *(v23 + 17) = BYTE1(a3) & 1;
    *(v23 + 18) = BYTE2(a3) & 1;
    *(v23 + 24) = a4;
  }

  else
  {
    sub_2554F0DE0(v18, a5, a6, a1, a2, a3 & 0x10101, a4, v16);
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;

    v28 = 0;
  }

  *(a7 + 24) = v28;
  *v9 = v16;
  return result;
}

uint64_t sub_2554F06D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E38, &qword_2554F2980);
  v4 = sub_2554F2318();
  v5 = v4;
  if (*(v3 + 16))
  {
    v33 = v1;
    v6 = 0;
    v34 = (v3 + 56);
    v35 = v3;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v36 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v14 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      v23 = *(v18 + 18);
      v24 = *(v18 + 24);
      sub_2554F23F8();
      sub_2554F2248();
      sub_2554F2418();
      sub_2554F2418();
      sub_2554F2418();
      MEMORY[0x259C35B60](v24);
      result = sub_2554F2428();
      v25 = -1 << *(v5 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v11 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v11 + 8 * v27);
          if (v31 != -1)
          {
            v12 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v26) & ~*(v11 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 32 * v12;
      *v13 = v19;
      *(v13 + 8) = v20;
      *(v13 + 16) = v21;
      *(v13 + 17) = v22;
      *(v13 + 18) = v23;
      *(v13 + 24) = v24;
      ++*(v5 + 16);
      v3 = v35;
      v9 = v36;
    }

    v15 = v6;
    result = v34;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v10)
      {
        break;
      }

      v17 = v34[v6];
      ++v15;
      if (v17)
      {
        v14 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v32 = 1 << *(v3 + 32);
    if (v32 >= 64)
    {
      bzero(v34, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v34 = -1 << v32;
    }

    v2 = v33;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

void *sub_2554F099C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E38, &qword_2554F2980);
  v2 = *v0;
  v3 = sub_2554F2308();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        v21 = *(v18 + 16);
        v22 = *(v18 + 17);
        v23 = *(v18 + 18);
        v24 = *(v18 + 24);
        v25 = *(v4 + 48) + v17;
        *v25 = v20;
        *(v25 + 8) = v19;
        *(v25 + 16) = v21;
        *(v25 + 17) = v22;
        *(v25 + 18) = v23;
        *(v25 + 24) = v24;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_2554F0B18(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E38, &qword_2554F2980);
  result = sub_2554F2318();
  v5 = result;
  if (*(v3 + 16))
  {
    v33 = v1;
    v34 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    v35 = result;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v36 = (v10 - 1) & v10;
LABEL_15:
      v18 = *(v3 + 48) + 32 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 17);
      v23 = *(v18 + 18);
      v24 = *(v18 + 24);
      sub_2554F23F8();

      sub_2554F2248();
      sub_2554F2418();
      sub_2554F2418();
      sub_2554F2418();
      MEMORY[0x259C35B60](v24);
      result = sub_2554F2428();
      v5 = v35;
      v25 = -1 << *(v35 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v12 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v12 + 8 * v27);
          if (v31 != -1)
          {
            v13 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v26) & ~*(v12 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v35 + 48) + 32 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      *(v14 + 17) = v22;
      *(v14 + 18) = v23;
      *(v14 + 24) = v24;
      ++*(v35 + 16);
      v3 = v34;
      v10 = v36;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {
        v32 = v5;

        v2 = v33;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
    v32 = result;

LABEL_26:
    *v2 = v32;
  }

  return result;
}

unint64_t sub_2554F0DE0(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, void *a8)
{
  a8[(result >> 6) + 8] |= 1 << result;
  v8 = (a8[6] + 16 * result);
  *v8 = a2;
  v8[1] = a3;
  v9 = a8[7] + 32 * result;
  *v9 = a4;
  *(v9 + 8) = a5;
  *(v9 + 16) = a6 & 1;
  *(v9 + 17) = BYTE1(a6) & 1;
  *(v9 + 18) = BYTE2(a6) & 1;
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

void *sub_2554F0E48()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E30, &qword_2554F2978);
  v2 = *v0;
  v3 = sub_2554F2358();
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
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = *(v22 + 16);
        v26 = *(v22 + 17);
        v27 = *(v22 + 18);
        v28 = *(v22 + 24);
        v29 = (*(v4 + 48) + v18);
        *v29 = v21;
        v29[1] = v20;
        v30 = *(v4 + 56) + v17;
        *v30 = v23;
        *(v30 + 8) = v24;
        *(v30 + 16) = v25;
        *(v30 + 17) = v26;
        *(v30 + 18) = v27;
        *(v30 + 24) = v28;
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

unint64_t sub_2554F0FE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E30, &qword_2554F2978);
    v3 = sub_2554F2378();

    v4 = (a1 + 72);
    while (1)
    {
      v20 = v1;
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *(v4 - 8);
      v10 = *(v4 - 7);
      v11 = *(v4 - 6);
      v12 = *v4;

      result = sub_2554ED2C8(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = v3[7] + 32 * result;
      *v16 = v8;
      *(v16 + 8) = v7;
      *(v16 + 16) = v9;
      *(v16 + 17) = v10;
      *(v16 + 18) = v11;
      *(v16 + 24) = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v4 += 6;
      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_2554F112C()
{
  result = qword_27F7B7E18;
  if (!qword_27F7B7E18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F7B7E18);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IRMBManager(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for IRMBManager(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2554F1274(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_2554F12BC(uint64_t result, int a2, int a3)
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

void type metadata accessor for IRMediaBundleType()
{
  if (!qword_27F7B7E20)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27F7B7E20);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2554F13E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_2554F1468()
{
  result = qword_27F7B7E50;
  if (!qword_27F7B7E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F7B7E50);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

double sub_2554F156C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = *(a1 + 16);
  v7 = *(a1 + 17);
  v8 = *(a1 + 18);
  v9 = a1[3];
  v10 = *(a2 + 16);
  v11 = *(a2 + 17);
  v12 = *(a2 + 18);
  if (*a1 == *a2 || (sub_2554F2388() & 1) != 0)
  {
    v13 = 256;
    if ((v7 & v11) == 0)
    {
      v13 = 0;
    }

    v14 = 0x10000;
    if ((v8 & v12) == 0)
    {
      v14 = 0;
    }

    *a3 = v5;
    a3[1] = v4;
    a3[2] = v13 | v14 | v6 & v10;
    a3[3] = v9;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 1) = 0u;
  }

  return result;
}

uint64_t IRMBBundle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  sub_2554F2418();
  return MEMORY[0x259C35B60](v2);
}

uint64_t IRMBBundle.hashValue.getter()
{
  v1 = *(v0 + 24);
  sub_2554F23F8();
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  sub_2554F2418();
  MEMORY[0x259C35B60](v1);
  return sub_2554F2428();
}

uint64_t sub_2554F1774(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_2554F23F8();
  sub_2554F2248();
  sub_2554F2418();
  sub_2554F2418();
  sub_2554F2418();
  MEMORY[0x259C35B60](v2);
  return sub_2554F2428();
}

BOOL _s30IntelligentRoutingMediaBundles10IRMBBundleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = a1[3];
  v5 = *(a2 + 16);
  v6 = *(a2 + 17);
  v7 = *(a2 + 24);
  v8 = *(a1 + 18) ^ *(a2 + 18);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (((v2 ^ v5 | v3 ^ v6 | v8) & 1) == 0)
    {
      return v4 == v7;
    }
  }

  else if (!((v2 ^ v5) & 1 | ((sub_2554F2388() & 1) == 0) | ((v3 ^ v6) | v8) & 1))
  {
    return v4 == v7;
  }

  return 0;
}

unint64_t sub_2554F18DC()
{
  result = qword_2814510A0;
  if (!qword_2814510A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814510A0);
  }

  return result;
}

void sub_2554F1930()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);

  v1 = sub_2554F2218();

  v2 = [v0 initWithSuiteName_];

  qword_2814511C0 = v2;
}

uint64_t sub_2554F19B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E78, &qword_2554F2A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2554F1A1C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_2554F1B94(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2554ED340(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2554F1B94((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id sub_2554F1B30()
{
  if (qword_281451098 != -1)
  {
    swift_once();
  }

  v1 = qword_2814511C0;
  qword_2814511C8 = qword_2814511C0;

  return v1;
}

char *sub_2554F1B94(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_2554F1BB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_2554F1BB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E88, &qword_2554F2A90);
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

uint64_t sub_2554F1CC0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_2554F1D6C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2554F2388() & 1;
  }
}

id sub_2554F1DC4(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_2554F2218();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_2554F2188();

    swift_willThrow();
  }

  return v6;
}

id sub_2554F1EA0(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_2554F1DC4(a1, a2, 0);
  if (result)
  {
    v5 = result;
    v6 = [result infoDictionary];
    v7 = sub_2554F2218();
    sub_2554F20D4();
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      sub_2554F22D8();
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      sub_2554F2120(v12);
      return 0;
    }
  }

  return result;
}

uint64_t sub_2554F2010(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a1 == 0x6D726F46676E6F4CLL && a2 == 0xED00006F69647541 || (sub_2554F2388() & 1) != 0)
  {
    return 1;
  }

  if (a1 == 0x6D726F46676E6F4CLL && a2 == 0xED00006F65646956 || (sub_2554F2388() & 1) != 0)
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_2554F20D4()
{
  result = qword_281451090;
  if (!qword_281451090)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281451090);
  }

  return result;
}

uint64_t sub_2554F2120(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7B7E98, &qword_2554F2AA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}