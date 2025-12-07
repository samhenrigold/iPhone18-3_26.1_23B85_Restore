unint64_t sub_1D8C36A64()
{
  result = qword_1ECAAB108;
  if (!qword_1ECAAB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB108);
  }

  return result;
}

uint64_t sub_1D8C36AB8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB110, &qword_1D8C86188);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8C36B20(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_1D8C84734();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1D8C36C58(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1D8C36C58(v4, v5);
  }

  return sub_1D8C84734();
}

uint64_t sub_1D8C36C58(uint64_t a1, uint64_t a2)
{
  result = sub_1D8C84684();
  if (!result || (result = sub_1D8C846A4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_1D8C84694();
      return sub_1D8C84734();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8C36CEC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = a2 - a1;
  }

  else
  {
    v3 = 0;
  }

  sub_1D8C2FD04(v3);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB090, "l:");
  v7 = sub_1D8C36DA4();
  v5[0] = a1;
  v5[1] = v3;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_1D8C84734();
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

unint64_t sub_1D8C36DA4()
{
  result = qword_1ECAAB098;
  if (!qword_1ECAAB098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAAB090, "l:");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB098);
  }

  return result;
}

uint64_t sub_1D8C36E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a2;
  v54 = a1;
  v52 = sub_1D8C84AA4();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52, v7);
  v9 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D8C84B24();
  v46 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v4;
  v14 = *(v4 + 2);
  v48 = *(v4 + 1);
  v47 = v14;
  v53 = *(v4 + 3);
  v49 = v4[32];
  v50 = *(v4 + 9);
  v15 = v4[40];
  v16 = *(v4 + 6);
  v17 = *(v4 + 7);
  ObjectType = swift_getObjectType();
  v19 = a3;
  v20 = v74;
  v21 = (*(a4 + 24))(0xD000000000000024, 0x80000001D8C8BB10, ObjectType, a4);
  if (v20)
  {
    return v19;
  }

  v23 = v21;
  v24 = v22;
  v43 = v13;
  v44 = v10;
  v25 = v51;
  v26 = v52;
  v74 = 0;
  v27 = MEMORY[0x1DA725490](16, MEMORY[0x1E69E6158], &type metadata for SchematizedDataComposer.Container, MEMORY[0x1E69E6168]);
  *(&v60 + 1) = v24;
  v61 = v27;
  *&v60 = v23;
  v28 = v55;

  result = SchematizedDataComposer.subscript.setter(v54, v28, 1701667182, 0xE400000000000000);
  if (v53 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v53 <= 0x7FFFFFFF)
  {
    v70 = v53;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v30 = v61;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v56 = v30;
    sub_1D8C7590C(&v70, 0x7265626D756ELL, 0xE600000000000000, isUniquelyReferenced_nonNull_native);
    v32 = v56;
    v61 = v56;
    if (v17 >> 60 == 15)
    {
      sub_1D8C75164(0x736E6F6974706FLL, 0xE700000000000000, &v56);
      sub_1D8C31D74(v56, *(&v56 + 1), v57, v58, v59);
    }

    else
    {
      *&v66 = v16;
      *(&v66 + 1) = v17;
      v67 = 0;
      v68 = 0;
      v69 = 2304;
      sub_1D8C2C5E4(v16, v17);
      v33 = swift_isUniquelyReferenced_nonNull_native();
      *&v56 = v32;
      sub_1D8C7590C(&v66, 0x736E6F6974706FLL, 0xE700000000000000, v33);
      v61 = v56;
    }

    LOBYTE(v56) = v45;
    v34 = v43;
    sub_1D8C338F8(&v56, v43);
    v35 = sub_1D8C84B14();
    (*(v46 + 8))(v34, v44);
    SchematizedDataComposer.subscript.setter(v35, 0, 1701869940, 0xE400000000000000);
    v36 = v47;

    SchematizedDataComposer.subscript.setter(v48, v36, 0x6D616E5F65707974, 0xE900000000000065);
    v37 = MEMORY[0x1E69AAA48];
    if (!v49)
    {
      v37 = MEMORY[0x1E69AAA40];
    }

    (*(v25 + 104))(v9, *v37, v26);
    v38 = sub_1D8C84A94();
    (*(v25 + 8))(v9, v26);
    SchematizedDataComposer.subscript.setter(v38, 0, 0x6C6562616CLL, 0xE500000000000000);
    if (v15)
    {
      sub_1D8C75164(0x6E695F666F656E6FLL, 0xEB00000000786564, &v56);
      sub_1D8C31D74(v56, *(&v56 + 1), v57, v58, v59);
      v39 = v61;
    }

    else
    {
      v62 = v50;
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v40 = v61;
      v41 = swift_isUniquelyReferenced_nonNull_native();
      *&v56 = v40;
      sub_1D8C7590C(&v62, 0x6E695F666F656E6FLL, 0xEB00000000786564, v41);
      v39 = v56;
    }

    v56 = v60;
    v57 = v39;
    swift_unknownObjectRetain();

    v19 = SchematizedDataComposer.compose()();

    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    return v19;
  }

  __break(1u);
  return result;
}

void *sub_1D8C3741C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, char **a5)
{
  v97[6] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v97, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v13 = v97[0];
  v12 = v97[1];
  v14 = sub_1D8C29E98(a3);
  if (v14 == 2 && v12 >> 62 != 1 && (v12 >> 62 != 2 || __PAIR128__((v13 >= 0xD) + v12 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) >= 2))
  {
    v18 = *a4;
    if (*a4)
    {
      v19 = a4[1] - v18;
      v20 = a4[3];
      if (v20 >= v19)
      {
        goto LABEL_69;
      }
    }

    else
    {
      v20 = a4[3];
      if ((v20 & 0x8000000000000000) == 0)
      {
        goto LABEL_69;
      }

      v19 = 0;
    }

    v21 = *(v18 + v20);
    v22 = v20 + 1;
    if (v21 < 0)
    {
      if (v22 >= v19)
      {
        goto LABEL_69;
      }

      v21 &= 0x7Fu;
      v56 = (v18 + v22);
      v22 = v20 + 2;
      v57 = 7;
      while (1)
      {
        v58 = *v56++;
        v21 |= (v58 & 0x7F) << v57;
        if ((v58 & 0x80) == 0)
        {
          break;
        }

        if (v22 < v19)
        {
          ++v22;
          v59 = v57 > 0x38;
          v57 += 7;
          if (!v59)
          {
            continue;
          }
        }

        goto LABEL_69;
      }
    }

    a4[3] = v22;
    if ((v21 & 0x80000000) == 0)
    {
      v23 = v21 & 0x7FFFFFFF;
      v24 = __OFADD__(v22, v23);
      v25 = v22 + v23;
      if (v24)
      {
        __break(1u);
      }

      if (v22 >= v25)
      {
LABEL_67:
        if (v22 == v25)
        {
          return sub_1D8C2BBF0(v13, v12);
        }

        goto LABEL_69;
      }

      v79 = v25;
      v87 = v13;
      while (1)
      {
        *&v93 = v13;
        *(&v93 + 1) = v12;
        sub_1D8C6DE1C(&v93, v97);
        sub_1D8C29EAC(v97, &v93);
        v26 = v96;
        if (v96 <= 4u)
        {
          break;
        }

        if (v96 <= 7u)
        {
          if (v96 != 5)
          {
            if (v96 == 6)
            {
              v82 = 0;
              v84 = 0;
              v27 = 0;
              v28 = 0;
              v29 = v93;
            }

            else
            {
              v29 = v93;
              v27 = *(&v94 + 1);
              v82 = v94;
              v84 = *(&v93 + 1);
              v28 = v95;
            }

            goto LABEL_45;
          }

LABEL_33:
          v82 = 0;
          v84 = 0;
          v27 = 0;
          v28 = 0;
          v29 = v93;
          goto LABEL_45;
        }

        if (v96 == 8)
        {
          sub_1D8C2AA1C(&v93, &v90);
          v34 = v91;
          v35 = v92;
          __swift_project_boxed_opaque_existential_1(&v90, v91);
          v32 = (*(v35 + 24))(v34, v35);
        }

        else
        {
          if (v96 != 9)
          {
            v91 = MEMORY[0x1E69E6290];
            v92 = MEMORY[0x1E6969DF8];
            v78 = v93;
            v90 = v94;
            v36 = __swift_project_boxed_opaque_existential_1(&v90, MEMORY[0x1E69E6290]);
            v37 = *v36;
            if (*v36 && (v38 = v36[1], v39 = v38 - v37, v38 != v37))
            {
              if (v39 <= 14)
              {
                memset(__dst, 0, sizeof(__dst));
                v89 = v38 - v37;
                memcpy(__dst, v37, v38 - v37);
                v41 = v77 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v89 << 16)) << 32);
                v40 = *__dst;
                swift_unknownObjectRetain();
                v77 = v41;
              }

              else
              {
                sub_1D8C846C4();
                swift_allocObject();
                swift_unknownObjectRetain();
                v48 = sub_1D8C84674();
                v49 = v48;
                if (v39 >= 0x7FFFFFFF)
                {
                  sub_1D8C84714();
                  v50 = swift_allocObject();
                  *(v50 + 16) = 0;
                  *(v50 + 24) = v39;
                  v41 = v49 | 0x8000000000000000;
                  v40 = v50;
                }

                else
                {
                  v41 = v48 | 0x4000000000000000;
                  v40 = v39 << 32;
                }
              }
            }

            else
            {
              swift_unknownObjectRetain();
              v40 = 0;
              v41 = 0xC000000000000000;
            }

            __swift_destroy_boxed_opaque_existential_1(&v90);
            swift_unknownObjectRelease();
            type metadata accessor for SchematizedData();
            v29 = swift_allocObject();
            v82 = 0;
            v84 = 0;
            v27 = 0;
            v28 = 0;
            *(v29 + 16) = v78;
            *(v29 + 32) = v40;
            *(v29 + 40) = v41;
            goto LABEL_45;
          }

          sub_1D8C2AA1C(&v93, &v90);
          v30 = v91;
          v31 = v92;
          __swift_project_boxed_opaque_existential_1(&v90, v91);
          v32 = (*(v31 + 16))(v30, v31);
        }

        v29 = v32;
        v84 = v33;
        __swift_destroy_boxed_opaque_existential_1(&v90);
        v82 = 0;
        v27 = 0;
        v28 = 0;
LABEL_45:
        v42 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v42;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v42 = sub_1D8C4ABAC(0, *(v42 + 2) + 1, 1, v42);
          *a5 = v42;
        }

        v45 = *(v42 + 2);
        v44 = *(v42 + 3);
        v46 = v45 + 1;
        if (v45 >= v44 >> 1)
        {
          v51 = sub_1D8C4ABAC((v44 > 1), v45 + 1, 1, v42);
          v46 = v45 + 1;
          v42 = v51;
          *a5 = v51;
        }

        *(v42 + 2) = v46;
        v47 = &v42[40 * v45];
        *(v47 + 4) = v29;
        *(v47 + 5) = v84;
        *(v47 + 6) = v82;
        *(v47 + 7) = v27;
        v47[64] = v28;
        v47[65] = v26;
        sub_1D8C2AB08(v97);
        v22 = a4[3];
        v25 = v79;
        v13 = v87;
        if (v22 >= v79)
        {
          goto LABEL_67;
        }
      }

      if (v96 <= 1u || v96 != 2 && v96 != 3)
      {
        v82 = 0;
        v84 = 0;
        v27 = 0;
        v28 = 0;
        v29 = v93;
        goto LABEL_45;
      }

      goto LABEL_33;
    }

LABEL_69:
    sub_1D8C36A64();
    swift_allocError();
    *v60 = xmmword_1D8C86190;
    *(v60 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v13, v12);
  }

  *&v93 = v13;
  *(&v93 + 1) = v12;
  sub_1D8C29F08(&v93, v14, v97);
  v86 = v13;
  sub_1D8C29EAC(v97, &v93);
  v15 = v96;
  if (v96 <= 4u)
  {
    if (v96 <= 1u || v96 != 2 && v96 != 3)
    {
      v83 = 0;
      v85 = 0;
      v81 = 0;
      v16 = 0;
      v17 = v93;
      goto LABEL_77;
    }

    goto LABEL_17;
  }

  if (v96 <= 7u)
  {
    if (v96 != 5)
    {
      if (v96 == 6)
      {
        v83 = 0;
        v85 = 0;
        v81 = 0;
        v16 = 0;
        v17 = v93;
      }

      else
      {
        v17 = v93;
        v83 = v94;
        v85 = *(&v93 + 1);
        v81 = *(&v94 + 1);
        v16 = v95;
      }

      goto LABEL_77;
    }

LABEL_17:
    v83 = 0;
    v85 = 0;
    v81 = 0;
    v16 = 0;
    v17 = v93;
    goto LABEL_77;
  }

  if (v96 == 8)
  {
    sub_1D8C2AA1C(&v93, &v90);
    v61 = v91;
    v62 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, v91);
    v54 = (*(v62 + 24))(v61, v62);
    goto LABEL_71;
  }

  if (v96 == 9)
  {
    sub_1D8C2AA1C(&v93, &v90);
    v52 = v91;
    v53 = v92;
    __swift_project_boxed_opaque_existential_1(&v90, v91);
    v54 = (*(v53 + 16))(v52, v53);
LABEL_71:
    v17 = v54;
    v85 = v55;
    __swift_destroy_boxed_opaque_existential_1(&v90);
    v81 = 0;
    v83 = 0;
    v16 = 0;
    goto LABEL_77;
  }

  v91 = MEMORY[0x1E69E6290];
  v92 = MEMORY[0x1E6969DF8];
  v80 = v93;
  v90 = v94;
  v63 = __swift_project_boxed_opaque_existential_1(&v90, MEMORY[0x1E69E6290]);
  v64 = *v63;
  if (*v63 && (v65 = v63[1], v66 = &v65[-v64], v65 != v64))
  {
    if (v66 <= 14)
    {
      v67 = sub_1D8C45074(*v63, v65);
      v68 = v75 & 0xFFFFFFFFFFFFFFLL;
      swift_unknownObjectRetain();
    }

    else
    {
      swift_unknownObjectRetain();
      if (v66 >= 0x7FFFFFFF)
      {
        v67 = sub_1D8C45134(v64, v65);
        v68 = v76 | 0x8000000000000000;
      }

      else
      {
        v67 = sub_1D8C2B5D0(v64, v65);
        v68 = v74 | 0x4000000000000000;
      }
    }
  }

  else
  {
    swift_unknownObjectRetain();
    v67 = 0;
    v68 = 0xC000000000000000;
  }

  __swift_destroy_boxed_opaque_existential_1(&v90);
  swift_unknownObjectRelease();
  type metadata accessor for SchematizedData();
  v17 = swift_allocObject();
  v83 = 0;
  v85 = 0;
  v81 = 0;
  v16 = 0;
  *(v17 + 16) = v80;
  *(v17 + 32) = v67;
  *(v17 + 40) = v68;
LABEL_77:
  v69 = *a5;
  v70 = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v69;
  if ((v70 & 1) == 0)
  {
    v69 = sub_1D8C4ABAC(0, *(v69 + 2) + 1, 1, v69);
    *a5 = v69;
  }

  v72 = *(v69 + 2);
  v71 = *(v69 + 3);
  if (v72 >= v71 >> 1)
  {
    v69 = sub_1D8C4ABAC((v71 > 1), v72 + 1, 1, v69);
    *a5 = v69;
  }

  *(v69 + 2) = v72 + 1;
  v73 = &v69[40 * v72];
  *(v73 + 4) = v17;
  *(v73 + 5) = v85;
  *(v73 + 6) = v83;
  *(v73 + 7) = v81;
  v73[64] = v16;
  v73[65] = v15;
  sub_1D8C2AB08(v97);
  return sub_1D8C2BBF0(v86, v12);
}

void *sub_1D8C37CE8(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, void (*a5)(__int128 *))
{
  v84[6] = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v84, ObjectType, a2);
  if (!v5)
  {
    v13 = v84[0];
    v12 = v84[1];
    v14 = sub_1D8C29E98(a3);
    if (v14 != 2 || v12 >> 62 == 1 || v12 >> 62 == 2 && __PAIR128__((v13 >= 0xD) + v12 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) < 2)
    {
      *&v79 = v13;
      *(&v79 + 1) = v12;
      sub_1D8C29F08(&v79, v14, v84);
      sub_1D8C29EAC(v84, &v79);
      v15 = v83;
      if (v83 <= 4u)
      {
        if (v83 > 1u && (v83 == 2 || v83 == 3))
        {
          v16 = 0;
          v17 = 0;
          v19 = 0uLL;
          v18 = v79;
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = v79;
          v19 = 0uLL;
        }

        goto LABEL_78;
      }

      if (v83 <= 7u)
      {
        if (v83 == 5)
        {
          v16 = 0;
          v17 = 0;
          v19 = 0uLL;
          v18 = v79;
        }

        else if (v83 == 6)
        {
          v16 = 0;
          v17 = 0;
          v18 = v79;
          v19 = 0uLL;
        }

        else
        {
          v16 = *(&v79 + 1);
          v18 = v79;
          v19 = v80;
          v17 = v81;
        }

        goto LABEL_78;
      }

      if (v83 == 8)
      {
        sub_1D8C2AA1C(&v79, &v76);
        v57 = v77;
        v58 = v78;
        __swift_project_boxed_opaque_existential_1(&v76, v77);
        v50 = (*(v58 + 24))(v57, v58);
      }

      else
      {
        if (v83 != 9)
        {
          v77 = MEMORY[0x1E69E6290];
          v78 = MEMORY[0x1E6969DF8];
          v73 = v79;
          v76 = v80;
          v59 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E69E6290]);
          v60 = *v59;
          if (*v59 && (v61 = v59[1], v62 = &v61[-v60], v61 != v60))
          {
            if (v62 <= 14)
            {
              v71 = sub_1D8C45074(*v59, v61);
              v63 = v65 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v62 >= 0x7FFFFFFF)
              {
                v71 = sub_1D8C45134(v60, v61);
                v63 = v66 | 0x8000000000000000;
              }

              else
              {
                v71 = sub_1D8C2B5D0(v60, v61);
                v63 = v64 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v71 = 0;
            v63 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v76);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v18 = swift_allocObject();
          v16 = 0;
          v17 = 0;
          *(v18 + 16) = v73;
          *(v18 + 32) = v71;
          *(v18 + 40) = v63;
          goto LABEL_77;
        }

        sub_1D8C2AA1C(&v79, &v76);
        v48 = v77;
        v49 = v78;
        __swift_project_boxed_opaque_existential_1(&v76, v77);
        v50 = (*(v49 + 16))(v48, v49);
      }

      v18 = v50;
      v16 = v51;
      __swift_destroy_boxed_opaque_existential_1(&v76);
      v17 = 0;
LABEL_77:
      v19 = 0uLL;
LABEL_78:
      *&v79 = v18;
      *(&v79 + 1) = v16;
      v80 = v19;
      v81 = v17;
      v82 = v15;
      a5(&v79);
      sub_1D8C31D98(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82);
      sub_1D8C2AB08(v84);
      return sub_1D8C2BBF0(v13, v12);
    }

    v20 = *a4;
    if (*a4)
    {
      v21 = a4[1] - v20;
      v22 = a4[3];
      if (v22 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v22 = a4[3];
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v21 = 0;
    }

    v23 = *(v20 + v22);
    v24 = v22 + 1;
    if (v23 < 0)
    {
      if (v24 >= v21)
      {
        goto LABEL_68;
      }

      v23 &= 0x7Fu;
      v52 = (v20 + v24);
      v24 = v22 + 2;
      v53 = 7;
      while (1)
      {
        v54 = *v52++;
        v23 |= (v54 & 0x7F) << v53;
        if ((v54 & 0x80) == 0)
        {
          break;
        }

        if (v24 < v21)
        {
          ++v24;
          v55 = v53 > 0x38;
          v53 += 7;
          if (!v55)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    a4[3] = v24;
    if ((v23 & 0x80000000) == 0)
    {
      v25 = v23 & 0x7FFFFFFF;
      v26 = __OFADD__(v24, v25);
      v27 = v24 + v25;
      if (v26)
      {
        __break(1u);
      }

      if (v24 >= v27)
      {
LABEL_66:
        if (v24 == v27)
        {
          return sub_1D8C2BBF0(v13, v12);
        }

        goto LABEL_68;
      }

      v72 = v27;
      while (1)
      {
        *&v79 = v13;
        *(&v79 + 1) = v12;
        sub_1D8C6DE1C(&v79, v84);
        sub_1D8C29EAC(v84, &v79);
        v28 = v83;
        if (v83 <= 4u)
        {
          if (v83 > 1u && (v83 == 2 || v83 == 3))
          {
            v29 = 0;
            v30 = 0;
            v32 = 0uLL;
            v31 = v79;
          }

          else
          {
            v29 = 0;
            v30 = 0;
            v31 = v79;
            v32 = 0uLL;
          }

          goto LABEL_48;
        }

        if (v83 <= 7u)
        {
          if (v83 == 5)
          {
            v29 = 0;
            v30 = 0;
            v32 = 0uLL;
            v31 = v79;
          }

          else if (v83 == 6)
          {
            v29 = 0;
            v30 = 0;
            v31 = v79;
            v32 = 0uLL;
          }

          else
          {
            v29 = *(&v79 + 1);
            v31 = v79;
            v32 = v80;
            v30 = v81;
          }

          goto LABEL_48;
        }

        if (v83 == 8)
        {
          sub_1D8C2AA1C(&v79, &v76);
          v38 = v77;
          v37 = v78;
          __swift_project_boxed_opaque_existential_1(&v76, v77);
          v35 = (*(v37 + 24))(v38, v37);
        }

        else
        {
          if (v83 != 9)
          {
            v77 = MEMORY[0x1E69E6290];
            v78 = MEMORY[0x1E6969DF8];
            v70 = v79;
            v76 = v80;
            v39 = __swift_project_boxed_opaque_existential_1(&v76, MEMORY[0x1E69E6290]);
            v40 = *v39;
            if (!*v39 || (v41 = v39[1], v42 = v41 - v40, v41 == v40))
            {
              swift_unknownObjectRetain();
              v69 = 0;
              v43 = 0xC000000000000000;
              goto LABEL_45;
            }

            if (v42 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v75 = v41 - v40;
              memcpy(__dst, v40, v42);
              v69 = *__dst;
              v46 = v67 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v75 << 16)) << 32);
              swift_unknownObjectRetain();
              v67 = v46;
              v68 = v46;
            }

            else
            {
              sub_1D8C846C4();
              swift_allocObject();
              swift_unknownObjectRetain();
              v44 = sub_1D8C84674();
              v45 = v44;
              if (v42 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v47 = swift_allocObject();
                *(v47 + 16) = 0;
                *(v47 + 24) = v42;
                v69 = v47;
                v43 = v45 | 0x8000000000000000;
              }

              else
              {
                v69 = v42 << 32;
                v43 = v44 | 0x4000000000000000;
              }

LABEL_45:
              v68 = v43;
            }

            __swift_destroy_boxed_opaque_existential_1(&v76);
            swift_unknownObjectRelease();
            type metadata accessor for SchematizedData();
            v31 = swift_allocObject();
            v29 = 0;
            v30 = 0;
            *(v31 + 16) = v70;
            *(v31 + 32) = v69;
            *(v31 + 40) = v68;
            goto LABEL_47;
          }

          sub_1D8C2AA1C(&v79, &v76);
          v34 = v77;
          v33 = v78;
          __swift_project_boxed_opaque_existential_1(&v76, v77);
          v35 = (*(v33 + 16))(v34, v33);
        }

        v31 = v35;
        v29 = v36;
        __swift_destroy_boxed_opaque_existential_1(&v76);
        v30 = 0;
LABEL_47:
        v32 = 0uLL;
LABEL_48:
        *&v79 = v31;
        *(&v79 + 1) = v29;
        v80 = v32;
        v81 = v30;
        v82 = v28;
        a5(&v79);
        sub_1D8C31D98(v79, *(&v79 + 1), v80, *(&v80 + 1), v81, v82);
        sub_1D8C2AB08(v84);
        v24 = a4[3];
        v27 = v72;
        if (v24 >= v72)
        {
          goto LABEL_66;
        }
      }
    }

LABEL_68:
    sub_1D8C36A64();
    swift_allocError();
    *v56 = xmmword_1D8C86190;
    *(v56 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v13, v12);
  }

  return result;
}

void *sub_1D8C3853C(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, char **a5)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v35, ObjectType, a2);
  if (!v5)
  {
    v13 = v35[0];
    v12 = v35[1];
    result = sub_1D8C29E98(a3);
    if (result != 2 || v12 >> 62 == 1 || v12 >> 62 == 2 && __PAIR128__((v13 >= 0xD) + v12 + 0x7FFFFFFFFFFFFFFFLL, v13 - 13) < 2)
    {
      *&v33 = v13;
      *(&v33 + 1) = v12;
      sub_1D8C29F08(&v33, result, v35);
      sub_1D8C57F10(v35, a5);
      sub_1D8C2AB08(v35);
      return sub_1D8C2BBF0(v13, v12);
    }

    v14 = *a4;
    if (*a4)
    {
      v15 = a4[1] - v14;
      v16 = a4[3];
      if (v16 >= v15)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = a4[3];
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_31;
      }

      v15 = 0;
    }

    v17 = *(v14 + v16);
    v18 = v16 + 1;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    if (v18 < v15)
    {
      v17 &= 0x7Fu;
      v28 = (v14 + v18);
      v18 = v16 + 2;
      v29 = 7;
      while (1)
      {
        v30 = *v28++;
        v17 |= (v30 & 0x7F) << v29;
        if ((v30 & 0x80) == 0)
        {
          break;
        }

        if (v18 < v15)
        {
          ++v18;
          v31 = v29 > 0x38;
          v29 += 7;
          if (!v31)
          {
            continue;
          }
        }

        goto LABEL_31;
      }

LABEL_14:
      a4[3] = v18;
      if ((v17 & 0x80000000) == 0)
      {
        v19 = v17 & 0x7FFFFFFF;
        v20 = v18 + v19;
        if (__OFADD__(v18, v19))
        {
          __break(1u);
          return result;
        }

        for (; v18 < v20; v18 = a4[3])
        {
          *&v33 = v13;
          *(&v33 + 1) = v12;
          sub_1D8C6DE1C(&v33, v35);
          sub_1D8C29EAC(v35, &v33);
          v21 = *a5;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a5 = v21;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v21 = sub_1D8C4ACC8(0, *(v21 + 2) + 1, 1, v21);
            *a5 = v21;
          }

          v24 = *(v21 + 2);
          v23 = *(v21 + 3);
          if (v24 >= v23 >> 1)
          {
            v21 = sub_1D8C4ACC8((v23 > 1), v24 + 1, 1, v21);
            *a5 = v21;
          }

          *(v21 + 2) = v24 + 1;
          v25 = &v21[48 * v24];
          v26 = v33;
          v27 = v34[0];
          *(v25 + 57) = *(v34 + 9);
          *(v25 + 2) = v26;
          *(v25 + 3) = v27;
          sub_1D8C2AB08(v35);
        }

        if (v18 == v20)
        {
          return sub_1D8C2BBF0(v13, v12);
        }
      }
    }

LABEL_31:
    sub_1D8C36A64();
    swift_allocError();
    *v32 = xmmword_1D8C86190;
    *(v32 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v13, v12);
  }

  return result;
}

void *sub_1D8C38838(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v30, ObjectType, a2);
  if (!v6)
  {
    v15 = v30[0];
    v14 = v30[1];
    result = sub_1D8C29E98(a3);
    if (result != 2 || v14 >> 62 == 1 || v14 >> 62 == 2 && __PAIR128__((v15 >= 0xD) + v14 + 0x7FFFFFFFFFFFFFFFLL, v15 - 13) < 2)
    {
      v28 = v15;
      v29 = v14;
      sub_1D8C29F08(&v28, result, v30);
      sub_1D8C67FE0(v30, a5, a6);
      sub_1D8C2AB08(v30);
      return sub_1D8C2BBF0(v15, v14);
    }

    v16 = *a4;
    if (*a4)
    {
      v17 = a4[1] - v16;
      v18 = a4[3];
      if (v18 >= v17)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v18 = a4[3];
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v17 = 0;
    }

    v19 = *(v16 + v18);
    v20 = v18 + 1;
    if ((v19 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    if (v20 < v17)
    {
      v19 &= 0x7Fu;
      v23 = (v16 + v20);
      v20 = v18 + 2;
      v24 = 7;
      while (1)
      {
        v25 = *v23++;
        v19 |= (v25 & 0x7F) << v24;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        if (v20 < v17)
        {
          ++v20;
          v26 = v24 > 0x38;
          v24 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_14:
      a4[3] = v20;
      if ((v19 & 0x80000000) == 0)
      {
        v21 = v19 & 0x7FFFFFFF;
        v22 = v20 + v21;
        if (__OFADD__(v20, v21))
        {
          __break(1u);
          return result;
        }

        for (; v20 < v22; v20 = a4[3])
        {
          v28 = v15;
          v29 = v14;
          sub_1D8C6DE1C(&v28, v30);
          sub_1D8C67FE0(v30, a5, a6);
          sub_1D8C2AB08(v30);
        }

        if (v20 == v22)
        {
          return sub_1D8C2BBF0(v15, v14);
        }
      }
    }

LABEL_26:
    sub_1D8C36A64();
    swift_allocError();
    *v27 = xmmword_1D8C86190;
    *(v27 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v15, v14);
  }

  return result;
}

void *sub_1D8C38AB4(uint64_t a1, uint64_t a2, char a3, void (*a4)(void *))
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v27, ObjectType, a2);
  if (!v5)
  {
    v12 = v27[0];
    v11 = v27[1];
    result = sub_1D8C29E98(a3);
    if (result != 2 || v11 >> 62 == 1 || v11 >> 62 == 2 && __PAIR128__((v12 >= 0xD) + v11 + 0x7FFFFFFFFFFFFFFFLL, v12 - 13) < 2)
    {
      v25 = v12;
      v26 = v11;
      sub_1D8C29F08(&v25, result, v27);
      a4(v27);
      sub_1D8C2AB08(v27);
      return sub_1D8C2BBF0(v12, v11);
    }

    v13 = *v4;
    if (*v4)
    {
      v14 = v4[1] - v13;
      v15 = v4[3];
      if (v15 >= v14)
      {
        goto LABEL_26;
      }
    }

    else
    {
      v15 = v4[3];
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_26;
      }

      v14 = 0;
    }

    v16 = *(v13 + v15);
    v17 = v15 + 1;
    if ((v16 & 0x8000000000000000) == 0)
    {
      goto LABEL_14;
    }

    if (v17 < v14)
    {
      v16 &= 0x7Fu;
      v20 = (v13 + v17);
      v17 = v15 + 2;
      v21 = 7;
      while (1)
      {
        v22 = *v20++;
        v16 |= (v22 & 0x7F) << v21;
        if ((v22 & 0x80) == 0)
        {
          break;
        }

        if (v17 < v14)
        {
          ++v17;
          v23 = v21 > 0x38;
          v21 += 7;
          if (!v23)
          {
            continue;
          }
        }

        goto LABEL_26;
      }

LABEL_14:
      v4[3] = v17;
      if ((v16 & 0x80000000) == 0)
      {
        v18 = v16 & 0x7FFFFFFF;
        v19 = v17 + v18;
        if (__OFADD__(v17, v18))
        {
          __break(1u);
          return result;
        }

        for (; v17 < v19; v17 = v4[3])
        {
          v25 = v12;
          v26 = v11;
          sub_1D8C6DE1C(&v25, v27);
          a4(v27);
          sub_1D8C2AB08(v27);
        }

        if (v17 == v19)
        {
          return sub_1D8C2BBF0(v12, v11);
        }
      }
    }

LABEL_26:
    sub_1D8C36A64();
    swift_allocError();
    *v24 = xmmword_1D8C86190;
    *(v24 + 16) = 2;
    swift_willThrow();
    return sub_1D8C2BBF0(v12, v11);
  }

  return result;
}

void *sub_1D8C38D30(uint64_t a1, char *a2, unint64_t a3, char **a4)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 7))(v76, ObjectType, a2);
  if (v4)
  {
    return result;
  }

  v12 = v76[0];
  v11 = v76[1];
  v77 = (*(a2 + 6))(ObjectType, a2);
  v68 = v11;
  if ((*(a2 + 2))(ObjectType, a2))
  {
    v13 = *(a3 + 24);
    v14 = v12;
    v15 = v77;
    if (v13 >= *(a3 + 16))
    {
      return sub_1D8C2BBF0(v12, v68);
    }

    v16 = *a3;
    v67 = *a3 + 1;
    v17 = *(a3 + 8) - *a3;
    v18 = a4;
    a4 = *(a3 + 16);
    while (1)
    {
      if (v16)
      {
        v19 = v17;
        if (v13 >= v17)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_68;
        }

        v19 = 0;
      }

      v20 = *(v16 + v13);
      v21 = v13 + 1;
      if ((v20 & 0x8000000000000000) != 0)
      {
        if (v21 >= v19)
        {
          goto LABEL_68;
        }

        v20 &= 0x7Fu;
        v22 = (v67 + v13);
        v21 = v13 + 2;
        v23 = 7;
        while (1)
        {
          v24 = *v22++;
          v20 |= (v24 & 0x7F) << v23;
          if ((v24 & 0x80) == 0)
          {
            break;
          }

          if (v21 < v19)
          {
            ++v21;
            v25 = v23 > 0x38;
            v23 += 7;
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_68;
        }

        *(a3 + 24) = v21;
        if (v20 > 0xFFFFFFFE)
        {
LABEL_68:
          sub_1D8C36A64();
          swift_allocError();
          *v40 = xmmword_1D8C86190;
          *(v40 + 16) = 2;
          swift_willThrow();
          v43 = v14;
          v44 = v68;
          return sub_1D8C2BBF0(v43, v44);
        }
      }

      else
      {
        *(a3 + 24) = v21;
      }

      v26 = v20 & 7;
      if (v20 < 8 || v26 >= 6)
      {
        goto LABEL_68;
      }

      result = (v20 >> 3);
      if (v20 >> 3 == v15)
      {
        sub_1D8C3741C(a1, a2, v20, a3, v18);
      }

      else
      {
        if ((v20 & 7) <= 2)
        {
          if ((v20 & 7) != 0)
          {
            if (v26 == 1)
            {
              v28 = v21 + 8;
              if (__OFADD__(v21, 8))
              {
                __break(1u);
LABEL_105:
                __break(1u);
                goto LABEL_106;
              }
            }

            else
            {
              if (v16)
              {
                v30 = v17;
                if (v21 >= v17)
                {
                  goto LABEL_68;
                }
              }

              else
              {
                if ((v21 & 0x8000000000000000) == 0)
                {
                  goto LABEL_68;
                }

                v30 = 0;
              }

              v34 = *(v16 + v21);
              v35 = v21 + 1;
              if (v34 < 0)
              {
                if (v35 >= v30)
                {
                  goto LABEL_68;
                }

                v34 &= 0x7Fu;
                v37 = (v67 + v21);
                v35 = v21 + 2;
                v38 = 7;
                while (1)
                {
                  v39 = *v37++;
                  v34 |= (v39 & 0x7F) << v38;
                  if ((v39 & 0x80) == 0)
                  {
                    break;
                  }

                  if (v35 < v30)
                  {
                    ++v35;
                    v25 = v38 > 0x38;
                    v38 += 7;
                    if (!v25)
                    {
                      continue;
                    }
                  }

                  goto LABEL_68;
                }
              }

              *(a3 + 24) = v35;
              if ((v34 & 0x80000000) != 0)
              {
                goto LABEL_68;
              }

              v36 = __OFADD__(v35, v34 & 0x7FFFFFFF);
              v28 = v35 + (v34 & 0x7FFFFFFF);
              if (v36)
              {
                __break(1u);
                return result;
              }
            }
          }

          else
          {
            if (v16)
            {
              v29 = v17;
              if (v21 >= v17)
              {
                goto LABEL_68;
              }
            }

            else
            {
              if ((v21 & 0x8000000000000000) == 0)
              {
                goto LABEL_68;
              }

              v29 = 0;
            }

            v28 = v21 + 1;
            if (*(v16 + v21) < 0)
            {
              if (v28 >= v29)
              {
                goto LABEL_68;
              }

              v31 = (v67 + v21);
              v28 = v21 + 2;
              v32 = 7;
              while (1)
              {
                v33 = *v31++;
                if ((v33 & 0x80000000) == 0)
                {
                  break;
                }

                if (v28 < v29)
                {
                  ++v28;
                  v25 = v32 > 0x38;
                  v32 += 7;
                  if (!v25)
                  {
                    continue;
                  }
                }

                goto LABEL_68;
              }
            }
          }

          goto LABEL_59;
        }

        if (v26 != 3)
        {
          if (v26 == 4)
          {
            goto LABEL_68;
          }

          v28 = v21 + 4;
          if (__OFADD__(v21, 4))
          {
            goto LABEL_105;
          }

LABEL_59:
          *(a3 + 24) = v28;
          goto LABEL_60;
        }

        sub_1D8C45570(result);
        v15 = v77;
      }

LABEL_60:
      v13 = *(a3 + 24);
      if (v13 >= a4)
      {
        v43 = v14;
        v44 = v68;
        return sub_1D8C2BBF0(v43, v44);
      }
    }
  }

  v41 = sub_1D8C29BDC(v77);
  v14 = v12;
  if ((v41 & 0x100000000) != 0)
  {
    v43 = v12;
    v44 = v68;
    return sub_1D8C2BBF0(v43, v44);
  }

  *&v72 = v12;
  *(&v72 + 1) = v68;
  v42 = sub_1D8C29E98(v41);
  sub_1D8C29F08(&v72, v42, v76);
  sub_1D8C29EAC(v76, &v72);
  LOBYTE(v18) = v75;
  if (v75 <= 4u)
  {
    if (v75 <= 1u || v75 != 2 && v75 != 3)
    {
      v77 = 0;
      v66 = 0;
      v67 = 0;
      LOBYTE(v17) = 0;
      a3 = v72;
      goto LABEL_96;
    }

    goto LABEL_84;
  }

  if (v75 <= 7u)
  {
    if (v75 != 5)
    {
      if (v75 == 6)
      {
        v77 = 0;
        v66 = 0;
        v67 = 0;
        LOBYTE(v17) = 0;
        a3 = v72;
      }

      else
      {
        v77 = *(&v72 + 1);
        a3 = v72;
        v66 = *(&v73 + 1);
        v67 = v73;
        LOBYTE(v17) = v74;
      }

      goto LABEL_96;
    }

LABEL_84:
    v77 = 0;
    v66 = 0;
    v67 = 0;
    LOBYTE(v17) = 0;
    a3 = v72;
    goto LABEL_96;
  }

  if (v75 == 8)
  {
    sub_1D8C2AA1C(&v72, &v69);
    v49 = v70;
    v50 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v47 = (*(v50 + 24))(v49, v50);
  }

  else
  {
    if (v75 != 9)
    {
      v70 = MEMORY[0x1E69E6290];
      v71 = MEMORY[0x1E6969DF8];
      v65 = v72;
      v69 = v73;
      v51 = __swift_project_boxed_opaque_existential_1(&v69, MEMORY[0x1E69E6290]);
      v52 = *v51;
      if (*v51 && (v53 = v51[1], v54 = &v53[-v52], v53 != v52))
      {
        if (v54 <= 14)
        {
          v55 = sub_1D8C45074(*v51, v53);
          v56 = v63 & 0xFFFFFFFFFFFFFFLL;
          swift_unknownObjectRetain();
        }

        else
        {
          swift_unknownObjectRetain();
          if (v54 >= 0x7FFFFFFF)
          {
            v55 = sub_1D8C45134(v52, v53);
            v56 = v64 | 0x8000000000000000;
          }

          else
          {
            v55 = sub_1D8C2B5D0(v52, v53);
            v56 = v62 | 0x4000000000000000;
          }
        }
      }

      else
      {
        swift_unknownObjectRetain();
        v55 = 0;
        v56 = 0xC000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(&v69);
      swift_unknownObjectRelease();
      type metadata accessor for SchematizedData();
      a3 = swift_allocObject();
      v77 = 0;
      v66 = 0;
      v67 = 0;
      LOBYTE(v17) = 0;
      *(a3 + 16) = v65;
      *(a3 + 32) = v55;
      *(a3 + 40) = v56;
      goto LABEL_96;
    }

    sub_1D8C2AA1C(&v72, &v69);
    v45 = v70;
    v46 = v71;
    __swift_project_boxed_opaque_existential_1(&v69, v70);
    v47 = (*(v46 + 16))(v45, v46);
  }

  a3 = v47;
  v77 = v48;
  __swift_destroy_boxed_opaque_existential_1(&v69);
  v66 = 0;
  v67 = 0;
  LOBYTE(v17) = 0;
LABEL_96:
  a2 = *a4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a4 = a2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_106:
    a2 = sub_1D8C4ABAC(0, *(a2 + 2) + 1, 1, a2);
    *a4 = a2;
  }

  v59 = *(a2 + 2);
  v58 = *(a2 + 3);
  if (v59 >= v58 >> 1)
  {
    a2 = sub_1D8C4ABAC((v58 > 1), v59 + 1, 1, a2);
    *a4 = a2;
  }

  *(a2 + 2) = v59 + 1;
  v60 = &a2[40 * v59];
  v61 = v77;
  *(v60 + 4) = a3;
  *(v60 + 5) = v61;
  *(v60 + 6) = v67;
  *(v60 + 7) = v66;
  v60[64] = v17;
  v60[65] = v18;
  sub_1D8C2AB08(v76);
  return sub_1D8C2BBF0(v14, v68);
}

void *sub_1D8C39444(uint64_t a1, uint64_t a2, uint64_t *a3, void (*a4)(__int128 *), uint64_t a5)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v82, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v84 = a5;
  v14 = v82;
  v13 = v83;
  v71 = v83;
  v72 = (*(a2 + 48))(ObjectType, a2);
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v44 = sub_1D8C29BDC(v72);
    v45 = v71;
    if ((v44 & 0x100000000) != 0)
    {
      goto LABEL_98;
    }

    *&v77 = v14;
    *(&v77 + 1) = v71;
    v46 = sub_1D8C29E98(v44);
    sub_1D8C29F08(&v77, v46, &v82);
    sub_1D8C29EAC(&v82, &v77);
    v47 = v81;
    if (v81 <= 4u)
    {
      if (v81 <= 1u)
      {
        v48 = 0;
        v49 = 0;
        v50 = v77;
        v51 = 0uLL;
      }

      else if (v81 == 2)
      {
        v48 = 0;
        v49 = 0;
        v51 = 0uLL;
        v50 = v77;
      }

      else
      {
        v48 = 0;
        v49 = 0;
        if (v81 == 3)
        {
          v51 = 0uLL;
          v50 = v77;
        }

        else
        {
          v50 = v77;
          v51 = 0uLL;
        }
      }
    }

    else if (v81 > 7u)
    {
      if (v81 == 8)
      {
        sub_1D8C2AA1C(&v77, &v74);
        v58 = v75;
        v59 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, v75);
        v56 = (*(v59 + 24))(v58, v59);
      }

      else
      {
        if (v81 != 9)
        {
          v75 = MEMORY[0x1E69E6290];
          v76 = MEMORY[0x1E6969DF8];
          v73 = v77;
          v74 = v78;
          v60 = __swift_project_boxed_opaque_existential_1(&v74, MEMORY[0x1E69E6290]);
          v61 = *v60;
          if (*v60 && (v62 = v60[1], v63 = &v62[-v61], v62 != v61))
          {
            if (v63 <= 14)
            {
              v64 = sub_1D8C45074(*v60, v62);
              v65 = v67 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v63 >= 0x7FFFFFFF)
              {
                v64 = sub_1D8C45134(v61, v62);
                v65 = v68 | 0x8000000000000000;
              }

              else
              {
                v64 = sub_1D8C2B5D0(v61, v62);
                v65 = v66 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v64 = 0;
            v65 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v74);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v50 = swift_allocObject();
          v48 = 0;
          v49 = 0;
          *(v50 + 16) = v73;
          *(v50 + 32) = v64;
          *(v50 + 40) = v65;
          v51 = 0uLL;
          v45 = v71;
          goto LABEL_97;
        }

        sub_1D8C2AA1C(&v77, &v74);
        v54 = v75;
        v55 = v76;
        __swift_project_boxed_opaque_existential_1(&v74, v75);
        v56 = (*(v55 + 16))(v54, v55);
      }

      v50 = v56;
      v48 = v57;
      __swift_destroy_boxed_opaque_existential_1(&v74);
      v49 = 0;
      v51 = 0uLL;
    }

    else if (v81 == 5)
    {
      v48 = 0;
      v49 = 0;
      v51 = 0uLL;
      v50 = v77;
    }

    else if (v81 == 6)
    {
      v48 = 0;
      v49 = 0;
      v50 = v77;
      v51 = 0uLL;
    }

    else
    {
      v48 = *(&v77 + 1);
      v50 = v77;
      v51 = v78;
      v49 = v79;
    }

LABEL_97:
    *&v77 = v50;
    *(&v77 + 1) = v48;
    v78 = v51;
    v79 = v49;
    v80 = v47;
    a4(&v77);
    sub_1D8C31D98(v77, *(&v77 + 1), v78, *(&v78 + 1), v79, v80);
    sub_1D8C2AB08(&v82);
LABEL_98:
    v52 = v14;
    v53 = v45;
    return sub_1D8C2BBF0(v52, v53);
  }

  v15 = a3[3];
  v16 = v72;
  if (v15 >= a3[2])
  {
LABEL_70:
    v52 = v14;
    v53 = v13;
    return sub_1D8C2BBF0(v52, v53);
  }

  v17 = *a3;
  v18 = a3[1] - *a3;
  v69 = a4;
  v70 = *a3 + 1;
  v19 = a3[2];
  while (1)
  {
    if (v17)
    {
      v20 = v18;
      if (v15 >= v18)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v15 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v20 = 0;
    }

    v21 = *(v17 + v15);
    v22 = v15 + 1;
    if ((v21 & 0x8000000000000000) != 0)
    {
      if (v22 >= v20)
      {
        goto LABEL_68;
      }

      v21 &= 0x7Fu;
      v23 = (v70 + v15);
      v22 = v15 + 2;
      v24 = 7;
      while (1)
      {
        v25 = *v23++;
        v21 |= (v25 & 0x7F) << v24;
        if ((v25 & 0x80) == 0)
        {
          break;
        }

        if (v22 < v20)
        {
          ++v22;
          v26 = v24 > 0x38;
          v24 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      a3[3] = v22;
      if (v21 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v43 = xmmword_1D8C86190;
        *(v43 + 16) = 2;
        swift_willThrow();
        goto LABEL_70;
      }
    }

    else
    {
      a3[3] = v22;
    }

    v27 = v21 & 7;
    if (v21 < 8 || v27 >= 6)
    {
      goto LABEL_68;
    }

    result = (v21 >> 3);
    if (v21 >> 3 == v16)
    {
      v29 = v18;
      sub_1D8C37CE8(a1, a2, v21, a3, v69);
      v18 = v29;
      goto LABEL_60;
    }

    if ((v21 & 7) <= 2)
    {
      break;
    }

    if (v27 != 3)
    {
      if (v27 == 4)
      {
        goto LABEL_68;
      }

      v30 = v22 + 4;
      if (__OFADD__(v22, 4))
      {
        goto LABEL_104;
      }

      goto LABEL_59;
    }

    v33 = v18;
    sub_1D8C45570(result);
    v16 = v72;
    v18 = v33;
LABEL_60:
    v15 = a3[3];
    if (v15 >= v19)
    {
      v52 = v14;
      v53 = v13;
      return sub_1D8C2BBF0(v52, v53);
    }
  }

  if ((v21 & 7) == 0)
  {
    if (v17)
    {
      v31 = v18;
      if (v22 >= v18)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v31 = 0;
    }

    v30 = v22 + 1;
    if (*(v17 + v22) < 0)
    {
      if (v30 >= v31)
      {
        goto LABEL_68;
      }

      v34 = (v70 + v22);
      v30 = v22 + 2;
      v35 = 7;
      while (1)
      {
        v36 = *v34++;
        if ((v36 & 0x80000000) == 0)
        {
          break;
        }

        if (v30 < v31)
        {
          ++v30;
          v26 = v35 > 0x38;
          v35 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v27 != 1)
  {
    if (v17)
    {
      v32 = v18;
      if (v22 >= v18)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v22 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v32 = 0;
    }

    v37 = *(v17 + v22);
    v38 = v22 + 1;
    if (v37 < 0)
    {
      if (v38 >= v32)
      {
        goto LABEL_68;
      }

      v37 &= 0x7Fu;
      v40 = (v70 + v22);
      v38 = v22 + 2;
      v41 = 7;
      while (1)
      {
        v42 = *v40++;
        v37 |= (v42 & 0x7F) << v41;
        if ((v42 & 0x80) == 0)
        {
          break;
        }

        if (v38 < v32)
        {
          ++v38;
          v26 = v41 > 0x38;
          v41 += 7;
          if (!v26)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    a3[3] = v38;
    if ((v37 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v39 = __OFADD__(v38, v37 & 0x7FFFFFFF);
    v30 = v38 + (v37 & 0x7FFFFFFF);
    if (v39)
    {
      goto LABEL_105;
    }

    goto LABEL_59;
  }

  v30 = v22 + 8;
  if (!__OFADD__(v22, 8))
  {
LABEL_59:
    a3[3] = v30;
    goto LABEL_60;
  }

  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  return result;
}

void *sub_1D8C39B3C(uint64_t a1, uint64_t a2, uint64_t *a3, char **a4)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(v48, ObjectType, a2);
  if (v4)
  {
    return result;
  }

  v12 = v48[0];
  v11 = v48[1];
  v49 = (*(a2 + 48))(ObjectType, a2);
  v45 = v12;
  v46 = v11;
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v41 = sub_1D8C29BDC(v49);
    if ((v41 & 0x100000000) == 0)
    {
      v47[0] = v12;
      v47[1] = v11;
      v42 = sub_1D8C29E98(v41);
      sub_1D8C29F08(v47, v42, v48);
      sub_1D8C57F10(v48, a4);
      sub_1D8C2AB08(v48);
    }

    v43 = v12;
    v44 = v11;
    return sub_1D8C2BBF0(v43, v44);
  }

  v14 = a3[2];
  v13 = a3[3];
  v15 = v49;
  if (v13 >= v14)
  {
    return sub_1D8C2BBF0(v12, v46);
  }

  v16 = *a3;
  v17 = a3[1] - *a3;
  v18 = *a3 + 1;
  while (1)
  {
    if (v16)
    {
      v19 = v17;
      if (v13 >= v17)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v19 = 0;
    }

    v20 = *(v16 + v13);
    v21 = v13 + 1;
    if ((v20 & 0x8000000000000000) != 0)
    {
      if (v21 >= v19)
      {
        goto LABEL_68;
      }

      v20 &= 0x7Fu;
      v22 = (v18 + v13);
      v21 = v13 + 2;
      v23 = 7;
      while (1)
      {
        v24 = *v22++;
        v20 |= (v24 & 0x7F) << v23;
        if ((v24 & 0x80) == 0)
        {
          break;
        }

        if (v21 < v19)
        {
          ++v21;
          v25 = v23 > 0x38;
          v23 += 7;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      a3[3] = v21;
      if (v20 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v40 = xmmword_1D8C86190;
        *(v40 + 16) = 2;
        swift_willThrow();
        v43 = v45;
        v44 = v46;
        return sub_1D8C2BBF0(v43, v44);
      }
    }

    else
    {
      a3[3] = v21;
    }

    v26 = v20 & 7;
    if (v20 < 8 || v26 >= 6)
    {
      goto LABEL_68;
    }

    result = (v20 >> 3);
    if (v20 >> 3 == v15)
    {
      sub_1D8C3853C(a1, a2, v20, a3, a4);
      goto LABEL_60;
    }

    if ((v20 & 7) <= 2)
    {
      break;
    }

    if (v26 != 3)
    {
      if (v26 == 4)
      {
        goto LABEL_68;
      }

      v28 = v21 + 4;
      if (__OFADD__(v21, 4))
      {
        goto LABEL_76;
      }

      goto LABEL_59;
    }

    sub_1D8C45570(result);
    v15 = v49;
LABEL_60:
    v13 = a3[3];
    if (v13 >= v14)
    {
      v43 = v45;
      v44 = v46;
      return sub_1D8C2BBF0(v43, v44);
    }
  }

  if ((v20 & 7) == 0)
  {
    if (v16)
    {
      v29 = v17;
      if (v21 >= v17)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v29 = 0;
    }

    v28 = v21 + 1;
    if (*(v16 + v21) < 0)
    {
      if (v28 >= v29)
      {
        goto LABEL_68;
      }

      v31 = (v18 + v21);
      v28 = v21 + 2;
      v32 = 7;
      while (1)
      {
        v33 = *v31++;
        if ((v33 & 0x80000000) == 0)
        {
          break;
        }

        if (v28 < v29)
        {
          ++v28;
          v25 = v32 > 0x38;
          v32 += 7;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v26 != 1)
  {
    if (v16)
    {
      v30 = v17;
      if (v21 >= v17)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v21 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v30 = 0;
    }

    v34 = *(v16 + v21);
    v35 = v21 + 1;
    if (v34 < 0)
    {
      if (v35 >= v30)
      {
        goto LABEL_68;
      }

      v34 &= 0x7Fu;
      v37 = (v18 + v21);
      v35 = v21 + 2;
      v38 = 7;
      while (1)
      {
        v39 = *v37++;
        v34 |= (v39 & 0x7F) << v38;
        if ((v39 & 0x80) == 0)
        {
          break;
        }

        if (v35 < v30)
        {
          ++v35;
          v25 = v38 > 0x38;
          v38 += 7;
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    a3[3] = v35;
    if ((v34 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v36 = __OFADD__(v35, v34 & 0x7FFFFFFF);
    v28 = v35 + (v34 & 0x7FFFFFFF);
    if (v36)
    {
      goto LABEL_77;
    }

    goto LABEL_59;
  }

  v28 = v21 + 8;
  if (!__OFADD__(v21, 8))
  {
LABEL_59:
    a3[3] = v28;
    goto LABEL_60;
  }

  __break(1u);
LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
  return result;
}

void *sub_1D8C39F48(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void *a5)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v54, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v56 = a4;
  v13 = a5;
  v14 = v54;
  v15 = v55;
  v51 = v55;
  v52 = (*(a2 + 48))(ObjectType, a2);
  v50 = v14;
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v46 = sub_1D8C29BDC(v52);
    v49 = v15;
    if ((v46 & 0x100000000) != 0)
    {
      v48 = v14;
    }

    else
    {
      v53[0] = v14;
      v53[1] = v15;
      v47 = sub_1D8C29E98(v46);
      sub_1D8C29F08(v53, v47, &v54);
      sub_1D8C67FE0(&v54, v56, v13);
      sub_1D8C2AB08(&v54);
      v48 = v14;
      v49 = v15;
    }

    return sub_1D8C2BBF0(v48, v49);
  }

  v16 = a3;
  v17 = a3[2];
  v18 = v16[3];
  if (v18 >= v17)
  {
LABEL_69:
    v48 = v50;
    v49 = v51;
    return sub_1D8C2BBF0(v48, v49);
  }

  v19 = v13;
  v20 = *v16;
  v21 = v16[1] - *v16;
  v22 = *v16 + 1;
  v23 = v56;
  while (1)
  {
    if (v20)
    {
      v24 = v21;
      if (v18 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v24 = 0;
    }

    v25 = *(v20 + v18);
    v26 = v18 + 1;
    if ((v25 & 0x8000000000000000) != 0)
    {
      if (v26 >= v24)
      {
        goto LABEL_68;
      }

      v25 &= 0x7Fu;
      v27 = (v22 + v18);
      v26 = v18 + 2;
      v28 = 7;
      while (1)
      {
        v29 = *v27++;
        v25 |= (v29 & 0x7F) << v28;
        if ((v29 & 0x80) == 0)
        {
          break;
        }

        if (v26 < v24)
        {
          ++v26;
          v30 = v28 > 0x38;
          v28 += 7;
          if (!v30)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      v16[3] = v26;
      if (v25 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v45 = xmmword_1D8C86190;
        *(v45 + 16) = 2;
        swift_willThrow();
        goto LABEL_69;
      }
    }

    else
    {
      v16[3] = v26;
    }

    v31 = v25 & 7;
    if (v25 < 8 || v31 >= 6)
    {
      goto LABEL_68;
    }

    result = (v25 >> 3);
    if (v25 >> 3 == v52)
    {
      sub_1D8C38838(a1, a2, v25, v16, v23, v19);
      goto LABEL_60;
    }

    if ((v25 & 7) <= 2)
    {
      break;
    }

    if (v31 != 3)
    {
      if (v31 == 4)
      {
        goto LABEL_68;
      }

      v33 = v26 + 4;
      if (__OFADD__(v26, 4))
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

    sub_1D8C45570(result);
LABEL_60:
    v18 = v16[3];
    if (v18 >= v17)
    {
      v48 = v50;
      v49 = v51;
      return sub_1D8C2BBF0(v48, v49);
    }
  }

  if ((v25 & 7) == 0)
  {
    if (v20)
    {
      v34 = v21;
      if (v26 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v34 = 0;
    }

    v33 = v26 + 1;
    if (*(v20 + v26) < 0)
    {
      if (v33 >= v34)
      {
        goto LABEL_68;
      }

      v36 = (v22 + v26);
      v33 = v26 + 2;
      v37 = 7;
      while (1)
      {
        v38 = *v36++;
        if ((v38 & 0x80000000) == 0)
        {
          break;
        }

        if (v33 < v34)
        {
          ++v33;
          v30 = v37 > 0x38;
          v37 += 7;
          if (!v30)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v31 != 1)
  {
    if (v20)
    {
      v35 = v21;
      if (v26 >= v21)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v35 = 0;
    }

    v39 = *(v20 + v26);
    v40 = v26 + 1;
    if (v39 < 0)
    {
      if (v40 >= v35)
      {
        goto LABEL_68;
      }

      v39 &= 0x7Fu;
      v42 = (v22 + v26);
      v40 = v26 + 2;
      v43 = 7;
      while (1)
      {
        v44 = *v42++;
        v39 |= (v44 & 0x7F) << v43;
        if ((v44 & 0x80) == 0)
        {
          break;
        }

        if (v40 < v35)
        {
          ++v40;
          v30 = v43 > 0x38;
          v43 += 7;
          if (!v30)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    v16[3] = v40;
    if ((v39 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v41 = __OFADD__(v40, v39 & 0x7FFFFFFF);
    v33 = v40 + (v39 & 0x7FFFFFFF);
    if (v41)
    {
      goto LABEL_76;
    }

    goto LABEL_59;
  }

  v33 = v26 + 8;
  if (!__OFADD__(v26, 8))
  {
LABEL_59:
    v16[3] = v33;
    goto LABEL_60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void *sub_1D8C3A368(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *), uint64_t a4)
{
  ObjectType = swift_getObjectType();
  result = (*(a2 + 56))(&v51, ObjectType, a2);
  if (v5)
  {
    return result;
  }

  v53 = a4;
  v12 = a3;
  v13 = v51;
  v14 = v52;
  v48 = v52;
  v49 = (*(a2 + 48))(ObjectType, a2);
  v47 = v13;
  if (((*(a2 + 16))(ObjectType, a2) & 1) == 0)
  {
    v43 = sub_1D8C29BDC(v49);
    v46 = v14;
    if ((v43 & 0x100000000) != 0)
    {
      v45 = v13;
    }

    else
    {
      v50[0] = v13;
      v50[1] = v14;
      v44 = sub_1D8C29E98(v43);
      sub_1D8C29F08(v50, v44, &v51);
      v12(&v51);
      sub_1D8C2AB08(&v51);
      v45 = v13;
      v46 = v14;
    }

    return sub_1D8C2BBF0(v45, v46);
  }

  v15 = v4[2];
  v16 = v4[3];
  if (v16 >= v15)
  {
LABEL_69:
    v45 = v47;
    v46 = v48;
    return sub_1D8C2BBF0(v45, v46);
  }

  v17 = v12;
  v18 = *v4;
  v19 = v4[1] - *v4;
  v20 = *v4 + 1;
  while (1)
  {
    if (v18)
    {
      v21 = v19;
      if (v16 >= v19)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v16 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v21 = 0;
    }

    v22 = *(v18 + v16);
    v23 = v16 + 1;
    if ((v22 & 0x8000000000000000) != 0)
    {
      if (v23 >= v21)
      {
        goto LABEL_68;
      }

      v22 &= 0x7Fu;
      v24 = (v20 + v16);
      v23 = v16 + 2;
      v25 = 7;
      while (1)
      {
        v26 = *v24++;
        v22 |= (v26 & 0x7F) << v25;
        if ((v26 & 0x80) == 0)
        {
          break;
        }

        if (v23 < v21)
        {
          ++v23;
          v27 = v25 > 0x38;
          v25 += 7;
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_68;
      }

      v4[3] = v23;
      if (v22 > 0xFFFFFFFE)
      {
LABEL_68:
        sub_1D8C36A64();
        swift_allocError();
        *v42 = xmmword_1D8C86190;
        *(v42 + 16) = 2;
        swift_willThrow();
        goto LABEL_69;
      }
    }

    else
    {
      v4[3] = v23;
    }

    v28 = v22 & 7;
    if (v22 < 8 || v28 >= 6)
    {
      goto LABEL_68;
    }

    result = (v22 >> 3);
    if (v22 >> 3 == v49)
    {
      sub_1D8C38AB4(a1, a2, v22, v17);
      goto LABEL_60;
    }

    if ((v22 & 7) <= 2)
    {
      break;
    }

    if (v28 != 3)
    {
      if (v28 == 4)
      {
        goto LABEL_68;
      }

      v30 = v23 + 4;
      if (__OFADD__(v23, 4))
      {
        goto LABEL_75;
      }

      goto LABEL_59;
    }

    sub_1D8C45570(result);
LABEL_60:
    v16 = v4[3];
    if (v16 >= v15)
    {
      v45 = v47;
      v46 = v48;
      return sub_1D8C2BBF0(v45, v46);
    }
  }

  if ((v22 & 7) == 0)
  {
    if (v18)
    {
      v31 = v19;
      if (v23 >= v19)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v31 = 0;
    }

    v30 = v23 + 1;
    if (*(v18 + v23) < 0)
    {
      if (v30 >= v31)
      {
        goto LABEL_68;
      }

      v33 = (v20 + v23);
      v30 = v23 + 2;
      v34 = 7;
      while (1)
      {
        v35 = *v33++;
        if ((v35 & 0x80000000) == 0)
        {
          break;
        }

        if (v30 < v31)
        {
          ++v30;
          v27 = v34 > 0x38;
          v34 += 7;
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    goto LABEL_59;
  }

  if (v28 != 1)
  {
    if (v18)
    {
      v32 = v19;
      if (v23 >= v19)
      {
        goto LABEL_68;
      }
    }

    else
    {
      if ((v23 & 0x8000000000000000) == 0)
      {
        goto LABEL_68;
      }

      v32 = 0;
    }

    v36 = *(v18 + v23);
    v37 = v23 + 1;
    if (v36 < 0)
    {
      if (v37 >= v32)
      {
        goto LABEL_68;
      }

      v36 &= 0x7Fu;
      v39 = (v20 + v23);
      v37 = v23 + 2;
      v40 = 7;
      while (1)
      {
        v41 = *v39++;
        v36 |= (v41 & 0x7F) << v40;
        if ((v41 & 0x80) == 0)
        {
          break;
        }

        if (v37 < v32)
        {
          ++v37;
          v27 = v40 > 0x38;
          v40 += 7;
          if (!v27)
          {
            continue;
          }
        }

        goto LABEL_68;
      }
    }

    v4[3] = v37;
    if ((v36 & 0x80000000) != 0)
    {
      goto LABEL_68;
    }

    v38 = __OFADD__(v37, v36 & 0x7FFFFFFF);
    v30 = v37 + (v36 & 0x7FFFFFFF);
    if (v38)
    {
      goto LABEL_76;
    }

    goto LABEL_59;
  }

  v30 = v23 + 8;
  if (!__OFADD__(v23, 8))
  {
LABEL_59:
    v4[3] = v30;
    goto LABEL_60;
  }

  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return result;
}

void sub_1D8C3A784(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 1;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 5);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

unint64_t sub_1D8C3A85C(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

void *sub_1D8C3A87C(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v6 = a2[3];
  v46 = a2[2];
  if (v6 < v46)
  {
    v10 = result;
    v11 = *a2;
    v41 = a2[1] - *a2;
    v42 = *a2;
    v39 = *a2 + 1;
    while (1)
    {
      if (v11)
      {
        v12 = v41;
        if (v6 >= v41)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v6 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v12 = 0;
      }

      v13 = *(v11 + v6);
      v14 = v6 + 1;
      if ((v13 & 0x8000000000000000) != 0)
      {
        if (v14 >= v12)
        {
          goto LABEL_54;
        }

        v13 &= 0x7Fu;
        v15 = (v39 + v6);
        v14 = v6 + 2;
        v16 = 7;
        while (1)
        {
          v17 = *v15++;
          v13 |= (v17 & 0x7F) << v16;
          if ((v17 & 0x80) == 0)
          {
            break;
          }

          if (v14 < v12)
          {
            ++v14;
            v18 = v16 > 0x38;
            v16 += 7;
            if (!v18)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        a2[3] = v14;
        if (v13 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v34 = xmmword_1D8C86190;
          *(v34 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v14;
      }

      v19 = v13 & 7;
      if (v13 < 8 || v19 >= 6)
      {
        goto LABEL_54;
      }

      if (!v10[2])
      {
        break;
      }

      v21 = sub_1D8C46878(v13 >> 3);
      if ((v22 & 1) == 0)
      {
        break;
      }

      v37 = a4;
      v36 = v10;
      v40 = *(v10[7] + 16 * v21);
      ObjectType = swift_getObjectType();
      v24 = *(*(&v40 + 1) + 56);
      swift_unknownObjectRetain();
      result = v24(&v43, ObjectType, *(&v40 + 1));
      if (v5)
      {
        return swift_unknownObjectRelease();
      }

      v25 = v43;
      if (v19 != 2 || *(&v43 + 1) >> 62 == 1 || *(&v43 + 1) >> 62 == 2 && __PAIR128__((v43 >= 0xD) + *(&v43 + 1) + 0x7FFFFFFFFFFFFFFFLL, v43 - 13) < 2)
      {
        sub_1D8C29F08(&v43, v19, v45);
        a4 = v37;
        sub_1D8C29EAC(v45, v44);
        v43 = v40;
        swift_unknownObjectRetain();
        sub_1D8C68A2C(&v43, a3, v37, a5);
        sub_1D8C2BBF0(v25, *(&v25 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v43);
        result = sub_1D8C2AB08(v45);
        v10 = v36;
LABEL_28:
        v11 = v42;
        goto LABEL_29;
      }

      a4 = v37;
      v11 = v42;
      if (v42)
      {
        v26 = v41;
        if (v14 >= v41)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if ((v14 & 0x8000000000000000) == 0)
        {
          goto LABEL_57;
        }

        v26 = 0;
      }

      v27 = *(v42 + v14);
      v28 = v14 + 1;
      if (v27 < 0)
      {
        if (v28 >= v26)
        {
          goto LABEL_57;
        }

        v27 &= 0x7Fu;
        v31 = (v39 + v14);
        v28 = v14 + 2;
        v32 = 7;
        while (1)
        {
          v33 = *v31++;
          v27 |= (v33 & 0x7F) << v32;
          if ((v33 & 0x80) == 0)
          {
            break;
          }

          if (v28 < v26)
          {
            ++v28;
            v18 = v32 > 0x38;
            v32 += 7;
            if (!v18)
            {
              continue;
            }
          }

          goto LABEL_57;
        }
      }

      a2[3] = v28;
      if ((v27 & 0x80000000) != 0)
      {
        goto LABEL_57;
      }

      v29 = v27 & 0x7FFFFFFF;
      v30 = v28 + v29;
      if (__OFADD__(v28, v29))
      {
        __break(1u);
        return result;
      }

      if (v28 < v30)
      {
        do
        {
          v43 = v25;
          sub_1D8C6DE1C(&v43, v45);
          sub_1D8C29EAC(v45, v44);
          v43 = v40;
          swift_unknownObjectRetain();
          sub_1D8C68A2C(&v43, a3, v37, a5);
          sub_1D8C3D128(&v43);
          sub_1D8C2AB08(v45);
          v28 = a2[3];
        }

        while (v28 < v30);
        v11 = v42;
      }

      if (v28 != v30)
      {
LABEL_57:
        sub_1D8C36A64();
        swift_allocError();
        *v35 = xmmword_1D8C86190;
        *(v35 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v25, *(&v25 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v25, *(&v25 + 1));
      v10 = v36;
LABEL_29:
      v6 = a2[3];
      if (v6 >= v46)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v13);
    if (v5)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

void *sub_1D8C3AD78(void *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, void *a5, void **a6)
{
  v7 = a2[3];
  v45 = a2[2];
  if (v7 < v45)
  {
    v12 = result;
    v13 = *a2;
    v43 = a2[1] - *a2;
    v41 = *a2 + 1;
    v49 = result;
    v44 = v13;
    do
    {
      if (v13)
      {
        v14 = v43;
        if (v7 >= v43)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if ((v7 & 0x8000000000000000) == 0)
        {
          goto LABEL_52;
        }

        v14 = 0;
      }

      v15 = *(v13 + v7);
      v16 = v7 + 1;
      if ((v15 & 0x8000000000000000) != 0)
      {
        if (v16 >= v14)
        {
          goto LABEL_52;
        }

        v15 &= 0x7Fu;
        v17 = (v41 + v7);
        v16 = v7 + 2;
        v18 = 7;
        while (1)
        {
          v19 = *v17++;
          v15 |= (v19 & 0x7F) << v18;
          if ((v19 & 0x80) == 0)
          {
            break;
          }

          if (v16 < v14)
          {
            ++v16;
            v20 = v18 > 0x38;
            v18 += 7;
            if (!v20)
            {
              continue;
            }
          }

          goto LABEL_52;
        }

        a2[3] = v16;
        if (v15 > 0xFFFFFFFE)
        {
LABEL_52:
          sub_1D8C36A64();
          swift_allocError();
          *v38 = xmmword_1D8C86190;
          *(v38 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v16;
      }

      v21 = v15 & 7;
      if (v15 < 8 || v21 >= 6)
      {
        goto LABEL_52;
      }

      if (v12[2] && (v23 = sub_1D8C46878(v15 >> 3), (v24 & 1) != 0))
      {
        v39 = a5;
        v42 = *(v49[7] + 16 * v23);
        ObjectType = swift_getObjectType();
        v26 = *(*(&v42 + 1) + 56);
        swift_unknownObjectRetain();
        result = v26(&v46, ObjectType, *(&v42 + 1));
        if (v6)
        {
          return swift_unknownObjectRelease();
        }

        v27 = v46;
        if (v21 != 2 || *(&v46 + 1) >> 62 == 1 || *(&v46 + 1) >> 62 == 2 && __PAIR128__((v46 >= 0xD) + *(&v46 + 1) + 0x7FFFFFFFFFFFFFFFLL, v46 - 13) < 2)
        {
          v28 = v46;
          sub_1D8C29F08(&v46, v21, v48);
          a5 = v39;
          sub_1D8C29EAC(v48, v47);
          v46 = v42;
          swift_unknownObjectRetain();
          sub_1D8C68444(&v46, a3, a4, v39, a6);
          sub_1D8C2BBF0(v28, *(&v27 + 1));
          swift_unknownObjectRelease();
          sub_1D8C3D128(&v46);
          result = sub_1D8C2AB08(v48);
        }

        else
        {
          a5 = v39;
          if (v44)
          {
            v29 = v43;
            if (v16 >= v43)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if ((v16 & 0x8000000000000000) == 0)
            {
              goto LABEL_51;
            }

            v29 = 0;
          }

          v30 = *(v44 + v16);
          v31 = v16 + 1;
          if (v30 < 0)
          {
            if (v31 >= v29)
            {
              goto LABEL_51;
            }

            v30 &= 0x7Fu;
            v34 = (v41 + v16);
            v31 = v16 + 2;
            v35 = 7;
            while (1)
            {
              v36 = *v34++;
              v30 |= (v36 & 0x7F) << v35;
              if ((v36 & 0x80) == 0)
              {
                break;
              }

              if (v31 < v29)
              {
                ++v31;
                v20 = v35 > 0x38;
                v35 += 7;
                if (!v20)
                {
                  continue;
                }
              }

              goto LABEL_51;
            }
          }

          a2[3] = v31;
          if ((v30 & 0x80000000) != 0)
          {
            goto LABEL_51;
          }

          v32 = v30 & 0x7FFFFFFF;
          v33 = v31 + v32;
          if (__OFADD__(v31, v32))
          {
            __break(1u);
            return result;
          }

          for (; v31 < v33; v31 = a2[3])
          {
            v46 = v27;
            sub_1D8C6DE1C(&v46, v48);
            sub_1D8C29EAC(v48, v47);
            v46 = v42;
            swift_unknownObjectRetain();
            sub_1D8C68444(&v46, a3, a4, v39, a6);
            sub_1D8C3D128(&v46);
            sub_1D8C2AB08(v48);
          }

          if (v31 != v33)
          {
LABEL_51:
            sub_1D8C36A64();
            swift_allocError();
            *v37 = xmmword_1D8C86190;
            *(v37 + 16) = 2;
            swift_willThrow();
            swift_unknownObjectRelease();
            return sub_1D8C2BBF0(v27, *(&v27 + 1));
          }

          swift_unknownObjectRelease();
          result = sub_1D8C2BBF0(v27, *(&v27 + 1));
        }
      }

      else
      {
        result = sub_1D8C452D0(v15);
        if (v6)
        {
          return result;
        }
      }

      v7 = a2[3];
      v13 = v44;
      v12 = v49;
    }

    while (v7 < v45);
  }

  return result;
}

void *sub_1D8C3B258(void *result, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, char *a6, uint64_t *a7, BOOL *a8, _DWORD *a9)
{
  v10 = a2[3];
  v54 = a2[2];
  if (v10 < v54)
  {
    v14 = result;
    v15 = *a2;
    v49 = a2[1] - *a2;
    v47 = *a2 + 1;
    v50 = *a2;
    while (1)
    {
      if (v15)
      {
        v16 = v49;
        if (v10 >= v49)
        {
          goto LABEL_54;
        }
      }

      else
      {
        if ((v10 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v16 = 0;
      }

      v17 = *(v15 + v10);
      v18 = v10 + 1;
      if ((v17 & 0x8000000000000000) != 0)
      {
        if (v18 >= v16)
        {
          goto LABEL_54;
        }

        v17 &= 0x7Fu;
        v19 = (v47 + v10);
        v18 = v10 + 2;
        v20 = 7;
        while (1)
        {
          v21 = *v19++;
          v17 |= (v21 & 0x7F) << v20;
          if ((v21 & 0x80) == 0)
          {
            break;
          }

          if (v18 < v16)
          {
            ++v18;
            v22 = v20 > 0x38;
            v20 += 7;
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_54;
        }

        a2[3] = v18;
        if (v17 > 0xFFFFFFFE)
        {
LABEL_54:
          sub_1D8C36A64();
          swift_allocError();
          *v40 = xmmword_1D8C86190;
          *(v40 + 16) = 2;
          return swift_willThrow();
        }
      }

      else
      {
        a2[3] = v18;
      }

      v23 = v17 & 7;
      if (v17 < 8 || v23 >= 6)
      {
        goto LABEL_54;
      }

      if (!v14[2])
      {
        break;
      }

      v25 = sub_1D8C46878(v17 >> 3);
      if ((v26 & 1) == 0)
      {
        break;
      }

      v42 = a7;
      v41 = v14;
      v48 = *(v14[7] + 16 * v25);
      ObjectType = swift_getObjectType();
      v28 = *(*(&v48 + 1) + 56);
      swift_unknownObjectRetain();
      result = v28(&v51, ObjectType, *(&v48 + 1));
      if (v9)
      {
        return swift_unknownObjectRelease();
      }

      v29 = v51;
      if (v23 != 2 || *(&v51 + 1) >> 62 == 1 || *(&v51 + 1) >> 62 == 2 && __PAIR128__((v51 >= 0xD) + *(&v51 + 1) + 0x7FFFFFFFFFFFFFFFLL, v51 - 13) < 2)
      {
        sub_1D8C29F08(&v51, v23, v53);
        a7 = v42;
        sub_1D8C29EAC(v53, v52);
        v51 = v48;
        swift_unknownObjectRetain();
        sub_1D8C68D70(&v51, a3, a4, a5, a6, v42, a8, a9);
        sub_1D8C2BBF0(v29, *(&v29 + 1));
        swift_unknownObjectRelease();
        sub_1D8C3D128(&v51);
        result = sub_1D8C2AB08(v53);
        v14 = v41;
LABEL_28:
        v15 = v50;
        goto LABEL_29;
      }

      v30 = v51;
      a7 = v42;
      v15 = v50;
      if (v50)
      {
        v31 = v49;
        if (v18 >= v49)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if ((v18 & 0x8000000000000000) == 0)
        {
          goto LABEL_53;
        }

        v31 = 0;
      }

      v32 = *(v50 + v18);
      v33 = v18 + 1;
      if (v32 < 0)
      {
        if (v33 >= v31)
        {
          goto LABEL_53;
        }

        v32 &= 0x7Fu;
        v36 = (v47 + v18);
        v33 = v18 + 2;
        v37 = 7;
        while (1)
        {
          v38 = *v36++;
          v32 |= (v38 & 0x7F) << v37;
          if ((v38 & 0x80) == 0)
          {
            break;
          }

          if (v33 < v31)
          {
            ++v33;
            v22 = v37 > 0x38;
            v37 += 7;
            if (!v22)
            {
              continue;
            }
          }

          goto LABEL_53;
        }
      }

      a2[3] = v33;
      if ((v32 & 0x80000000) != 0)
      {
        goto LABEL_53;
      }

      v34 = v32 & 0x7FFFFFFF;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        __break(1u);
        return result;
      }

      if (v33 < v35)
      {
        do
        {
          *&v51 = v30;
          *(&v51 + 1) = *(&v29 + 1);
          sub_1D8C6DE1C(&v51, v53);
          sub_1D8C29EAC(v53, v52);
          v51 = v48;
          swift_unknownObjectRetain();
          sub_1D8C68D70(&v51, a3, a4, a5, a6, v42, a8, a9);
          sub_1D8C3D128(&v51);
          sub_1D8C2AB08(v53);
          v33 = a2[3];
        }

        while (v33 < v35);
        v15 = v50;
      }

      if (v33 != v35)
      {
LABEL_53:
        sub_1D8C36A64();
        swift_allocError();
        *v39 = xmmword_1D8C86190;
        *(v39 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        return sub_1D8C2BBF0(v30, *(&v29 + 1));
      }

      swift_unknownObjectRelease();
      result = sub_1D8C2BBF0(v30, *(&v29 + 1));
      v14 = v41;
LABEL_29:
      v10 = a2[3];
      if (v10 >= v54)
      {
        return result;
      }
    }

    result = sub_1D8C452D0(v17);
    if (v9)
    {
      return result;
    }

    goto LABEL_28;
  }

  return result;
}

uint64_t sub_1D8C3B74C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void *a7, uint64_t *a8, char **a9)
{
  v10 = v9;
  v141 = *MEMORY[0x1E69E9840];
  v12 = a2[3];
  v129 = a2[2];
  if (v12 >= v129)
  {
  }

  v15 = *a2;
  v127 = a2[1] - *a2;
  v125 = *a2 + 1;
  v128 = *a2;
  while (1)
  {
    if (v15)
    {
      v16 = v127;
      if (v12 >= v127)
      {
        goto LABEL_165;
      }
    }

    else
    {
      if ((v12 & 0x8000000000000000) == 0)
      {
        goto LABEL_165;
      }

      v16 = 0;
    }

    v17 = *(v15 + v12);
    v18 = v12 + 1;
    if ((v17 & 0x8000000000000000) != 0)
    {
      if (v18 >= v16)
      {
        goto LABEL_165;
      }

      v17 &= 0x7Fu;
      v19 = (v125 + v12);
      v18 = v12 + 2;
      v20 = 7;
      while (1)
      {
        v21 = *v19++;
        v17 |= (v21 & 0x7F) << v20;
        if ((v21 & 0x80) == 0)
        {
          break;
        }

        if (v18 < v16)
        {
          ++v18;
          v22 = v20 > 0x38;
          v20 += 7;
          if (!v22)
          {
            continue;
          }
        }

        goto LABEL_165;
      }

      a2[3] = v18;
      if (v17 > 0xFFFFFFFE)
      {
LABEL_165:
        sub_1D8C36A64();
        swift_allocError();
        *v106 = xmmword_1D8C86190;
        *(v106 + 16) = 2;
        swift_willThrow();
      }
    }

    else
    {
      a2[3] = v18;
    }

    v23 = v17 & 7;
    if (v17 < 8 || v23 >= 6)
    {
      goto LABEL_165;
    }

    if (!*(a1 + 16) || (v25 = sub_1D8C46878(v17 >> 3), (v26 & 1) == 0))
    {
      sub_1D8C452D0(v17);
      if (v10)
      {
      }

      v15 = v128;
      goto LABEL_45;
    }

    v119 = a4;
    v120 = a1;
    v126 = *(*(a1 + 56) + 16 * v25);
    ObjectType = swift_getObjectType();
    v28 = *(*(&v126 + 1) + 56);
    swift_unknownObjectRetain();
    v122 = ObjectType;
    v28(&v138, ObjectType, *(&v126 + 1));
    if (v10)
    {

      return swift_unknownObjectRelease();
    }

    v29 = *(&v138 + 1);
    v30 = v138;
    a4 = v119;
    v121 = *(&v138 + 1);
    v123 = v138;
    if (v23 != 2 || *(&v138 + 1) >> 62 == 1 || *(&v138 + 1) >> 62 == 2 && __PAIR128__((v138 >= 0xD) + *(&v138 + 1) + 0x7FFFFFFFFFFFFFFFLL, v138 - 13) < 2)
    {
      sub_1D8C29F08(&v138, v23, v140);
      v15 = v128;
      sub_1D8C29EAC(v140, v139);
      v138 = v126;
      v31 = *(*(&v126 + 1) + 8);
      v32 = *(v31 + 8);
      swift_unknownObjectRetain();
      v33 = v32(v122, v31);
      v35 = v34;
      v36 = v33 == 1701667182 && v34 == 0xE400000000000000;
      if (v36 || (v37 = v33, (sub_1D8C852A4() & 1) != 0))
      {

        sub_1D8C29EAC(v139, &v134);
        if (v137 == 8)
        {
          sub_1D8C2AA1C(&v134, __dst);
          v38 = v132;
          v39 = v133;
          __swift_project_boxed_opaque_existential_1(__dst, v132);
          v40 = *(v39 + 24);
          v41 = v39;
          a1 = v120;
          *a3 = v40(v38, v41);
          a3[1] = v42;

          __swift_destroy_boxed_opaque_existential_1(__dst);
LABEL_42:
          v46 = v123;
          v47 = v121;
LABEL_43:
          sub_1D8C2BBF0(v46, v47);
          swift_unknownObjectRelease();
LABEL_44:
          sub_1D8C3D128(&v138);
          sub_1D8C2AB08(v140);
          goto LABEL_45;
        }

LABEL_168:
        sub_1D8C2AB08(&v134);
        sub_1D8C3D17C();
        swift_allocError();
        v109 = xmmword_1D8C861C0;
LABEL_169:
        *v108 = v109;
        *(v108 + 16) = 0;
        swift_willThrow();
        v111 = v123;
        goto LABEL_171;
      }

      v43 = v37 == 0x7079745F6D756E65 && v35 == 0xE900000000000065;
      if (v43 || (sub_1D8C852A4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D8C861A0;
        v45 = a3[1];
        *(inited + 32) = *a3;
        *(inited + 40) = v45;
        *&v134 = v119;

        sub_1D8C4B134(inited);
        sub_1D8C6A474(v139, v134, a5);
LABEL_41:
        v10 = 0;

        goto LABEL_42;
      }

      v49 = v37 == 0x736E6F6974706FLL && v35 == 0xE700000000000000;
      if (v49 || (sub_1D8C852A4() & 1) != 0)
      {

        sub_1D8C29EAC(v139, &v134);
        if (v137 == 10)
        {
          v50 = v135;
          *(&v135 + 1) = MEMORY[0x1E69E6290];
          v136 = MEMORY[0x1E6969DF8];
          v134 = v50;
          v51 = __swift_project_boxed_opaque_existential_1(&v134, MEMORY[0x1E69E6290]);
          v52 = *v51;
          if (*v51)
          {
            v53 = v51[1];
            v54 = v53 - v52;
            if (v53 == v52)
            {
              swift_unknownObjectRelease();
              v52 = 0;
              v55 = 0xC000000000000000;
              a1 = v120;
            }

            else if (v54 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v131 = v53 - v52;
              memcpy(__dst, v52, v54);
              v52 = *__dst;
              v97 = *&__dst[8] | ((*&__dst[12] | (v131 << 16)) << 32);
              swift_unknownObjectRelease();
              v55 = v113 & 0xF00000000000000 | v97;
              v113 = v55;
              a1 = v120;
            }

            else
            {
              sub_1D8C846C4();
              swift_allocObject();
              v96 = sub_1D8C84674();
              if (v54 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v52 = swift_allocObject();
                *(v52 + 2) = 0;
                *(v52 + 3) = v54;
                swift_unknownObjectRelease();
                v55 = v96 | 0x8000000000000000;
              }

              else
              {
                swift_unknownObjectRelease();
                v52 = (v54 << 32);
                v55 = v96 | 0x4000000000000000;
              }

              a4 = v119;
              a1 = v120;
            }
          }

          else
          {
            swift_unknownObjectRelease();
            v55 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v134);
          v99 = *a6;
          v100 = a6[1];
          *a6 = v52;
          a6[1] = v55;
          sub_1D8C2C670(v99, v100);
          goto LABEL_42;
        }

LABEL_172:
        sub_1D8C2AB08(&v134);
        sub_1D8C3D17C();
        swift_allocError();
        v109 = xmmword_1D8C861B0;
        goto LABEL_169;
      }

      v93 = v37 == 0x745F64657473656ELL && v35 == 0xEB00000000657079;
      if (v93 || (sub_1D8C852A4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        v94 = swift_initStackObject();
        *(v94 + 16) = xmmword_1D8C861A0;
        v95 = a3[1];
        *(v94 + 32) = *a3;
        *(v94 + 40) = v95;
        *&v134 = v119;

        sub_1D8C4B134(v94);
        sub_1D8C6842C(v139, v134, a7, a5);
        goto LABEL_41;
      }

      v98 = v37 == 0x646C656966 && v35 == 0xE500000000000000;
      if (v98 || (sub_1D8C852A4() & 1) != 0)
      {

        sub_1D8C6A890(v139, a8);
        v47 = v121;
        v46 = v123;
        goto LABEL_43;
      }

      v101 = v37 == 0x6F69736E65747865 && v35 == 0xE90000000000006ELL;
      if (v101 || (sub_1D8C852A4() & 1) != 0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
        v102 = swift_initStackObject();
        *(v102 + 16) = xmmword_1D8C861A0;
        v103 = a3[1];
        *(v102 + 32) = *a3;
        *(v102 + 40) = v103;
        *&v134 = v119;

        sub_1D8C4B134(v102);
        sub_1D8C6ABD0(v139, a7);
        goto LABEL_41;
      }

      if (v37 == 0x65645F666F656E6FLL && v35 == 0xEA00000000006C63)
      {
      }

      else
      {
        v105 = sub_1D8C852A4();

        if ((v105 & 1) == 0)
        {
          goto LABEL_164;
        }
      }

      sub_1D8C6B17C(v139, a9);
LABEL_164:
      sub_1D8C2BBF0(v123, v121);
      swift_unknownObjectRelease();
      a4 = v119;
      v15 = v128;
      goto LABEL_44;
    }

    v15 = v128;
    if (v128)
    {
      v48 = v127;
      if (v18 >= v127)
      {
        goto LABEL_170;
      }
    }

    else
    {
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_170;
      }

      v48 = 0;
    }

    v56 = *(v128 + v18);
    v57 = v18 + 1;
    if (v56 < 0)
    {
      if (v57 >= v48)
      {
LABEL_170:
        sub_1D8C36A64();
        swift_allocError();
        *v110 = xmmword_1D8C86190;
        *(v110 + 16) = 2;
        swift_willThrow();
        swift_unknownObjectRelease();
        sub_1D8C2BBF0(v30, v29);
      }

      v56 &= 0x7Fu;
      v90 = (v125 + v18);
      v57 = v18 + 2;
      v91 = 7;
      while (1)
      {
        v92 = *v90++;
        v56 |= (v92 & 0x7F) << v91;
        if ((v92 & 0x80) == 0)
        {
          break;
        }

        if (v57 < v48)
        {
          ++v57;
          v22 = v91 > 0x38;
          v91 += 7;
          if (!v22)
          {
            continue;
          }
        }

        goto LABEL_170;
      }
    }

    a2[3] = v57;
    if ((v56 & 0x80000000) != 0)
    {
      goto LABEL_170;
    }

    v58 = v56 & 0x7FFFFFFF;
    v59 = __OFADD__(v57, v58);
    v60 = v57 + v58;
    if (v59)
    {
      break;
    }

    if (v57 < v60)
    {
      v114 = v60;
      while (1)
      {
        *&v138 = v30;
        *(&v138 + 1) = v29;
        sub_1D8C6DE1C(&v138, v140);
        sub_1D8C29EAC(v140, v139);
        v138 = v126;
        v61 = *(*(&v126 + 1) + 8);
        v62 = *(v61 + 8);
        swift_unknownObjectRetain();
        v63 = v62(v122, v61);
        v65 = v64;
        if (v63 == 1701667182 && v64 == 0xE400000000000000)
        {
          break;
        }

        v67 = v63;
        if (sub_1D8C852A4())
        {
          break;
        }

        v71 = v67 == 0x7079745F6D756E65 && v65 == 0xE900000000000065;
        if (v71 || (sub_1D8C852A4() & 1) != 0)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
          v72 = swift_allocObject();
          *(v72 + 16) = xmmword_1D8C861A0;
          v73 = a3[1];
          *(v72 + 32) = *a3;
          *(v72 + 40) = v73;
          *&v134 = a4;

          sub_1D8C4B134(v72);
          sub_1D8C6A474(v139, v134, a5);
          goto LABEL_82;
        }

        v74 = v67 == 0x736E6F6974706FLL && v65 == 0xE700000000000000;
        if (v74 || (sub_1D8C852A4() & 1) != 0)
        {

          sub_1D8C29EAC(v139, &v134);
          if (v137 != 10)
          {
            goto LABEL_172;
          }

          v75 = v135;
          *(&v135 + 1) = MEMORY[0x1E69E6290];
          v136 = MEMORY[0x1E6969DF8];
          v134 = v75;
          v76 = __swift_project_boxed_opaque_existential_1(&v134, MEMORY[0x1E69E6290]);
          v77 = *v76;
          if (*v76)
          {
            v78 = v76[1];
            v79 = v78 - v77;
            if (v78 == v77)
            {
              swift_unknownObjectRelease();
              v77 = 0;
              v80 = 0xC000000000000000;
            }

            else if (v79 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v131 = v78 - v77;
              memcpy(__dst, v77, v79);
              v77 = *__dst;
              v84 = *&__dst[8] | ((*&__dst[12] | (v131 << 16)) << 32);
              swift_unknownObjectRelease();
              v80 = v112 & 0xF00000000000000 | v84;
              v112 = v80;
            }

            else
            {
              sub_1D8C846C4();
              swift_allocObject();
              v83 = sub_1D8C84674();
              if (v79 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v77 = swift_allocObject();
                *(v77 + 2) = 0;
                *(v77 + 3) = v79;
                swift_unknownObjectRelease();
                v80 = v83 | 0x8000000000000000;
              }

              else
              {
                swift_unknownObjectRelease();
                v77 = (v79 << 32);
                v80 = v83 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRelease();
            v80 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v134);
          v85 = *a6;
          v86 = a6[1];
          *a6 = v77;
          a6[1] = v80;
          sub_1D8C2C670(v85, v86);
          goto LABEL_83;
        }

        if (v67 == 0x745F64657473656ELL && v65 == 0xEB00000000657079 || (sub_1D8C852A4() & 1) != 0)
        {

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
          v81 = swift_initStackObject();
          *(v81 + 16) = xmmword_1D8C861A0;
          v82 = a3[1];
          *(v81 + 32) = *a3;
          *(v81 + 40) = v82;
          *&v134 = a4;

          sub_1D8C4B134(v81);
          sub_1D8C6842C(v139, v134, a7, a5);
LABEL_82:
          v10 = 0;

LABEL_83:
          v29 = v121;
          v30 = v123;
          goto LABEL_84;
        }

        if ((v67 != 0x646C656966 || v65 != 0xE500000000000000) && (sub_1D8C852A4() & 1) == 0)
        {
          if (v67 == 0x6F69736E65747865 && v65 == 0xE90000000000006ELL || (sub_1D8C852A4() & 1) != 0)
          {

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB118, &qword_1D8C86660);
            v87 = swift_initStackObject();
            *(v87 + 16) = xmmword_1D8C861A0;
            v88 = a3[1];
            *(v87 + 32) = *a3;
            *(v87 + 40) = v88;
            a4 = v119;
            *&v134 = v119;

            sub_1D8C4B134(v87);
            sub_1D8C6ABD0(v139, a7);

LABEL_120:
            v30 = v123;
            v29 = v121;
            v15 = v128;
            goto LABEL_84;
          }

          if (v67 == 0x65645F666F656E6FLL && v65 == 0xEA00000000006C63)
          {

            goto LABEL_118;
          }

          v89 = sub_1D8C852A4();

          if (v89)
          {
LABEL_118:
            sub_1D8C6B17C(v139, a9);
          }

          a4 = v119;
          goto LABEL_120;
        }

        sub_1D8C6A890(v139, a8);
        v29 = v121;
        v30 = v123;
LABEL_84:
        sub_1D8C3D128(&v138);
        sub_1D8C2AB08(v140);
        v57 = a2[3];
        v60 = v114;
        if (v57 >= v114)
        {
          goto LABEL_121;
        }
      }

      sub_1D8C29EAC(v139, &v134);
      if (v137 != 8)
      {
        goto LABEL_168;
      }

      sub_1D8C2AA1C(&v134, __dst);
      v68 = v132;
      v69 = v133;
      __swift_project_boxed_opaque_existential_1(__dst, v132);
      *a3 = (*(v69 + 24))(v68, v69);
      a3[1] = v70;

      __swift_destroy_boxed_opaque_existential_1(__dst);
      goto LABEL_83;
    }

LABEL_121:
    if (v57 != v60)
    {
      goto LABEL_170;
    }

    swift_unknownObjectRelease();
    sub_1D8C2BBF0(v30, v29);
LABEL_45:
    v12 = a2[3];
    if (v12 >= v129)
    {
    }
  }

  __break(1u);
  v111 = v30;
LABEL_171:
  sub_1D8C2BBF0(v111, v121);
  swift_unknownObjectRelease();
  sub_1D8C3D128(&v138);
  sub_1D8C2AB08(v140);
}

void *sub_1D8C3C8D8(void *result, void *a2, void *a3, uint64_t *a4, void *a5)
{
  v6 = v5;
  v7 = a2[3];
  v77 = a2[2];
  if (v7 >= v77)
  {
    return result;
  }

  v9 = a2;
  v10 = result;
  v11 = *a2;
  v72 = a2[1] - *a2;
  v73 = *a2;
  v70 = *a2 + 1;
  do
  {
    if (v11)
    {
      v12 = v72;
      if (v7 >= v72)
      {
        goto LABEL_101;
      }
    }

    else
    {
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_101;
      }

      v12 = 0;
    }

    v13 = *(v11 + v7);
    v14 = v7 + 1;
    if ((v13 & 0x8000000000000000) != 0)
    {
      if (v14 >= v12)
      {
        goto LABEL_101;
      }

      v13 &= 0x7Fu;
      v15 = (v70 + v7);
      v14 = v7 + 2;
      v16 = 7;
      while (1)
      {
        v17 = *v15++;
        v13 |= (v17 & 0x7F) << v16;
        if ((v17 & 0x80) == 0)
        {
          break;
        }

        if (v14 < v12)
        {
          ++v14;
          v18 = v16 > 0x38;
          v16 += 7;
          if (!v18)
          {
            continue;
          }
        }

        goto LABEL_101;
      }

      v9[3] = v14;
      if (v13 > 0xFFFFFFFE)
      {
LABEL_101:
        sub_1D8C36A64();
        swift_allocError();
        *v63 = xmmword_1D8C86190;
        *(v63 + 16) = 2;
        return swift_willThrow();
      }
    }

    else
    {
      v9[3] = v14;
    }

    v19 = v13 & 7;
    if (v13 < 8 || v19 >= 6)
    {
      goto LABEL_101;
    }

    if (!v10[2] || (v21 = sub_1D8C46878(v13 >> 3), (v22 & 1) == 0))
    {
      result = sub_1D8C452D0(v13);
      if (!v6)
      {
        goto LABEL_38;
      }

      return result;
    }

    v23 = v9;
    v68 = a3;
    v71 = *(v10[7] + 16 * v21);
    ObjectType = swift_getObjectType();
    v25 = *(*(&v71 + 1) + 56);
    swift_unknownObjectRetain();
    v67 = ObjectType;
    result = v25(&v74, ObjectType, *(&v71 + 1));
    if (v6)
    {
      return swift_unknownObjectRelease();
    }

    v27 = *(&v74 + 1);
    v26 = v74;
    if (v19 != 2 || *(&v74 + 1) >> 62 == 1 || *(&v74 + 1) >> 62 == 2 && __PAIR128__((v74 >= 0xD) + *(&v74 + 1) + 0x7FFFFFFFFFFFFFFFLL, v74 - 13) < 2)
    {
      v28 = v74;
      v9 = v23;
      sub_1D8C29F08(&v74, v19, v76);
      v66 = v27;
      sub_1D8C29EAC(v76, v75);
      v74 = v71;
      v29 = *(*(&v71 + 1) + 8);
      v30 = *(v29 + 8);
      swift_unknownObjectRetain();
      v32 = v30(v67, v29);
      v33 = v31;
      v34 = v32 == 0x7079745F6D756E65 && v31 == 0xE900000000000065;
      if (v34 || (v35 = v68, (sub_1D8C852A4() & 1) != 0))
      {

        v35 = v68;
        v36 = *v68;

        sub_1D8C6A474(v75, v36, a4);
      }

      else
      {
        v39 = v32 == 0x5F6567617373656DLL && v33 == 0xEC00000065707974;
        if (!v39 && (sub_1D8C852A4() & 1) == 0)
        {
          if (v32 == 0x6F69736E65747865 && v33 == 0xE90000000000006ELL)
          {
          }

          else
          {
            v43 = sub_1D8C852A4();

            if ((v43 & 1) == 0)
            {
              v37 = v66;
              goto LABEL_36;
            }
          }

          sub_1D8C6ABD0(v75, a5);
          v38 = v28;
          v37 = v66;
          goto LABEL_37;
        }

        v40 = *v68;

        sub_1D8C6B810(v75, v40, a5, a4);
      }

      v6 = 0;
      v37 = v66;

LABEL_36:
      v38 = v28;
LABEL_37:
      sub_1D8C2BBF0(v38, v37);
      swift_unknownObjectRelease();
      sub_1D8C3D128(&v74);
      result = sub_1D8C2AB08(v76);
      a3 = v35;
      goto LABEL_38;
    }

    v9 = v23;
    if (v73)
    {
      v41 = v72;
      if (v14 >= v72)
      {
        goto LABEL_104;
      }
    }

    else
    {
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_104;
      }

      v41 = 0;
    }

    v44 = *(v73 + v14);
    v45 = v14 + 1;
    if (v44 < 0)
    {
      if (v45 >= v41)
      {
        goto LABEL_104;
      }

      v44 &= 0x7Fu;
      v46 = (v70 + v14);
      v45 = v14 + 2;
      v47 = 7;
      while (1)
      {
        v48 = *v46++;
        v44 |= (v48 & 0x7F) << v47;
        if ((v48 & 0x80) == 0)
        {
          break;
        }

        if (v45 < v41)
        {
          ++v45;
          v18 = v47 > 0x38;
          v47 += 7;
          if (!v18)
          {
            continue;
          }
        }

        goto LABEL_104;
      }

      v23[3] = v45;
    }

    else
    {
      v23[3] = v45;
    }

    if ((v44 & 0x80000000) != 0)
    {
LABEL_104:
      sub_1D8C36A64();
      swift_allocError();
      *v64 = xmmword_1D8C86190;
      *(v64 + 16) = 2;
      swift_willThrow();
      swift_unknownObjectRelease();
      return sub_1D8C2BBF0(v26, v27);
    }

    v49 = v44 & 0x7FFFFFFF;
    v50 = v45 + v49;
    if (__OFADD__(v45, v49))
    {
      __break(1u);
      return result;
    }

    if (v45 >= v50)
    {
      goto LABEL_99;
    }

    do
    {
      v51 = v26;
      *&v74 = v26;
      *(&v74 + 1) = v27;
      sub_1D8C6DE1C(&v74, v76);
      sub_1D8C29EAC(v76, v75);
      v74 = v71;
      v52 = *(*(&v71 + 1) + 8);
      v53 = *(v52 + 8);
      swift_unknownObjectRetain();
      v55 = v53(v67, v52);
      v56 = v54;
      v57 = v55 == 0x7079745F6D756E65 && v54 == 0xE900000000000065;
      if (v57 || (sub_1D8C852A4() & 1) != 0)
      {

        v58 = *v68;

        sub_1D8C6A474(v75, v58, a4);
LABEL_81:
        v6 = 0;

LABEL_82:
        v26 = v51;
        goto LABEL_83;
      }

      v59 = v55 == 0x5F6567617373656DLL && v56 == 0xEC00000065707974;
      if (v59 || (sub_1D8C852A4() & 1) != 0)
      {

        v60 = *v68;

        sub_1D8C6B810(v75, v60, a5, a4);
        goto LABEL_81;
      }

      if (v55 == 0x6F69736E65747865 && v56 == 0xE90000000000006ELL)
      {
      }

      else
      {
        v62 = sub_1D8C852A4();

        if ((v62 & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      sub_1D8C6ABD0(v75, a5);
      v26 = v51;
LABEL_83:
      sub_1D8C3D128(&v74);
      sub_1D8C2AB08(v76);
      v45 = v9[3];
    }

    while (v45 < v50);
    a3 = v68;
LABEL_99:
    if (v45 != v50)
    {
      goto LABEL_104;
    }

    swift_unknownObjectRelease();
    result = sub_1D8C2BBF0(v26, v27);
LABEL_38:
    v7 = v9[3];
    v11 = v73;
  }

  while (v7 < v77);
  return result;
}

unint64_t sub_1D8C3D17C()
{
  result = qword_1ECAAB120;
  if (!qword_1ECAAB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAAB120);
  }

  return result;
}

uint64_t sub_1D8C3D1D0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, void (*a12)(unsigned __int128 *), uint64_t a13)
{
  LODWORD(v228) = a8;
  *&v227 = a7;
  v229 = a4;
  v18 = a10;
  v241 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v20 = a2 + 56;
  v21 = *(a2 + 56);

  v21(v240, ObjectType, a2);
  if (v13)
  {
    v230 = v13;

    goto LABEL_172;
  }

  v225 = a10;
  v226 = a6;
  v224 = v21;
  v22 = v240[0];
  v23 = (*(a2 + 48))(ObjectType, a2);
  v230 = 0;
  v24 = a2;
  v222 = v22;
  v223 = v23;
  v221 = *(&v22 + 1);
  v219 = a13;
  v220 = a12;
  v25 = a11;
  if (((*(v24 + 16))(ObjectType, v24) & 1) == 0)
  {
    LOBYTE(a1) = a3;
    v142 = sub_1D8C29BDC(v223);
    v45 = v229;
    v27 = v221;
    v48 = v222;
    if ((v142 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v222, v221);

      swift_bridgeObjectRelease_n();
      goto LABEL_175;
    }

    v236 = __PAIR128__(v221, v222);
    v143 = sub_1D8C29E98(v142);
    sub_1D8C29F08(&v236, v143, v240);
    if ((v228 & 1) == 0)
    {
      v146 = *v229;
      if (*v229 != v227)
      {
        v59 = __OFADD__(v146, 1);
        v154 = v146 + 1;
        if (!v59)
        {
          LOBYTE(a1) = 1;
          goto LABEL_245;
        }

        __break(1u);
LABEL_258:
        __break(1u);
        goto LABEL_259;
      }
    }

    if ((a9 & 1) == 0)
    {
      sub_1D8C29EAC(v240, &v236);
      v18 = v225;
      if (v239 == 10)
      {
        v227 = v237;
        v228 = v236;
        v154 = *(v225 + 16);
        if (!v154)
        {

          v155 = v225;
LABEL_188:
          v31 = v230;
          v236 = v228;
          v237 = v227;
          v156 = sub_1D8C4449C(&v236, v155, v25, v220, v219);
          if (!v230)
          {
LABEL_215:
            LOBYTE(a1) = v156;
            swift_unknownObjectRelease();

            v45 = v229;
            v154 = *v229 + 1;
            v47 = v226;
            if (__OFADD__(*v229, 1))
            {
              __break(1u);
LABEL_218:
              swift_unknownObjectRelease();

              v168 = *v229 + 1;
              if (__OFADD__(*v229, 1))
              {
                goto LABEL_264;
              }

              goto LABEL_219;
            }

LABEL_245:
            *v45 = v154;
            sub_1D8C2AB08(v240);
            sub_1D8C2BBF0(v48, v27);

            swift_bridgeObjectRelease_n();
            goto LABEL_173;
          }

          swift_unknownObjectRelease();

          v157 = v229;
          v154 = *v229 + 1;
          if (__OFADD__(*v229, 1))
          {
            __break(1u);
LABEL_192:
            v230 = v31;
LABEL_210:

            v167 = v221;
            v166 = v222;
            goto LABEL_211;
          }

          goto LABEL_241;
        }

LABEL_259:
        sub_1D8C3A784(v18, v18 + 32, 1, (2 * v154) | 1);
        v155 = v191;
        goto LABEL_188;
      }

      result = sub_1D8C2AB08(&v236);
      v154 = *v229 + 1;
      if (!__OFADD__(*v229, 1))
      {
        LOBYTE(a1) = 1;
        goto LABEL_245;
      }

      __break(1u);
      goto LABEL_261;
    }

    sub_1D8C29EAC(v240, &v236);
    v147 = v239;
    v18 = v225;
    if (v239 <= 4u)
    {
      v148 = v230;
      v25 = v226;
      if (v239 <= 1u || v239 != 2 && v239 != 3)
      {
        a1 = 0;
        v149 = 0;
        v150 = v236;
        v151 = 0uLL;
        goto LABEL_239;
      }
    }

    else
    {
      v148 = v230;
      v25 = v226;
      if (v239 > 7u)
      {
        if (v239 == 8)
        {
          sub_1D8C2AA1C(&v236, &v233);
          v171 = v234;
          v172 = v235;
          __swift_project_boxed_opaque_existential_1(&v233, v234);
          v150 = (*(v172 + 24))(v171, v172);
          a1 = v173;
          __swift_destroy_boxed_opaque_existential_1(&v233);
          v148 = v230;
          v149 = 0;
          v151 = 0uLL;
        }

        else if (v239 == 9)
        {
          sub_1D8C2AA1C(&v236, &v233);
          v163 = v234;
          v164 = v235;
          __swift_project_boxed_opaque_existential_1(&v233, v234);
          v150 = (*(v164 + 16))(v163, v164);
          a1 = v165;
          __swift_destroy_boxed_opaque_existential_1(&v233);
          v149 = 0;
          v151 = 0uLL;
          v148 = v230;
        }

        else
        {
          v174 = v226;
          v234 = MEMORY[0x1E69E6290];
          v235 = MEMORY[0x1E6969DF8];
          v228 = v236;
          v233 = v237;
          v175 = __swift_project_boxed_opaque_existential_1(&v233, MEMORY[0x1E69E6290]);
          v176 = *v175;
          if (*v175 && (v177 = v175[1], v178 = &v177[-v176], v177 != v176))
          {
            if (v178 <= 14)
            {
              v179 = sub_1D8C45074(*v175, v177);
              v180 = v189 & 0xFFFFFFFFFFFFFFLL;
              swift_unknownObjectRetain();
            }

            else
            {
              swift_unknownObjectRetain();
              if (v178 >= 0x7FFFFFFF)
              {
                v179 = sub_1D8C45134(v176, v177);
                v180 = v190 | 0x8000000000000000;
              }

              else
              {
                v179 = sub_1D8C2B5D0(v176, v177);
                v180 = v185 | 0x4000000000000000;
              }
            }

            v27 = v221;
            v18 = v225;
          }

          else
          {
            swift_unknownObjectRetain();
            v179 = 0;
            v180 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v233);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          v150 = swift_allocObject();
          a1 = 0;
          v149 = 0;
          *(v150 + 16) = v228;
          *(v150 + 32) = v179;
          *(v150 + 40) = v180;
          v151 = 0uLL;
          v148 = v230;
          v25 = v174;
          v48 = v222;
        }

        goto LABEL_239;
      }

      if (v239 != 5)
      {
        if (v239 == 6)
        {
          a1 = 0;
          v149 = 0;
          v150 = v236;
          v151 = 0uLL;
        }

        else
        {
          a1 = *(&v236 + 1);
          v150 = v236;
          v151 = v237;
          v149 = v238;
        }

        goto LABEL_239;
      }
    }

    a1 = 0;
    v149 = 0;
    v151 = 0uLL;
    v150 = v236;
LABEL_239:
    *&v236 = v150;
    *(&v236 + 1) = a1;
    v237 = v151;
    LOBYTE(v238) = v149;
    BYTE1(v238) = v147;
    LOBYTE(a1) = v219;
    v220(&v236);
    v230 = v148;
    if (v148)
    {
      sub_1D8C31D98(v236, *(&v236 + 1), v237, *(&v237 + 1), v238, BYTE1(v238));
      v157 = v229;
      v154 = *v229 + 1;
      if (!__OFADD__(*v229, 1))
      {
LABEL_241:
        *v157 = v154;
        sub_1D8C2AB08(v240);
        sub_1D8C2BBF0(v48, v27);
        goto LABEL_242;
      }

      goto LABEL_258;
    }

    result = sub_1D8C31D98(v236, *(&v236 + 1), v237, *(&v237 + 1), v238, BYTE1(v238));
    v45 = v229;
    v154 = *v229 + 1;
    if (!__OFADD__(*v229, 1))
    {
      LOBYTE(a1) = 1;
      goto LABEL_245;
    }

LABEL_261:
    __break(1u);
LABEL_262:
    __break(1u);
LABEL_263:
    __break(1u);
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  v216 = v24;
  v217 = ObjectType;
  v215 = a9;
  v218 = a1;
  v214 = a11;
  v27 = a3[2];
  v26 = a3[3];
  if (v26 >= v27)
  {
    sub_1D8C2BBF0(v222, v221);
    goto LABEL_169;
  }

  v28 = a3;
  v29 = *a3;
  v30 = a3[1] - *a3;
  v211 = *a3 + 1;
  v212 = v20;
  v31 = v230;
  v209 = v30;
  v210 = v27;
  v208 = v29;
  while (1)
  {
    if (!v29)
    {
      if (v26 < 0)
      {
        v32 = 0;
        goto LABEL_11;
      }

LABEL_184:
      sub_1D8C36A64();
      v152 = swift_allocError();
      *v153 = xmmword_1D8C86190;
      *(v153 + 16) = 2;
      v230 = v152;
      swift_willThrow();
      sub_1D8C2BBF0(v222, v221);
LABEL_242:

      goto LABEL_172;
    }

    v32 = v30;
    if (v26 >= v30)
    {
      goto LABEL_184;
    }

LABEL_11:
    v33 = *(v29 + v26);
    v34 = v26 + 1;
    if ((v33 & 0x8000000000000000) != 0)
    {
      if (v34 >= v32)
      {
        goto LABEL_170;
      }

      v33 &= 0x7Fu;
      v35 = (v211 + v26);
      v34 = v26 + 2;
      v36 = 7;
      while (1)
      {
        v37 = *v35++;
        v33 |= (v37 & 0x7F) << v36;
        if ((v37 & 0x80) == 0)
        {
          break;
        }

        if (v34 < v32)
        {
          ++v34;
          v38 = v36 > 0x38;
          v36 += 7;
          if (!v38)
          {
            continue;
          }
        }

        goto LABEL_170;
      }

      v28[3] = v34;
      if (v33 > 0xFFFFFFFE)
      {
LABEL_170:
        sub_1D8C36A64();
        v144 = swift_allocError();
        *v145 = xmmword_1D8C86190;
        *(v145 + 16) = 2;
        v230 = v144;
        swift_willThrow();
        goto LABEL_171;
      }
    }

    else
    {
      v28[3] = v34;
    }

    v39 = v33 & 7;
    if (v33 < 8 || v39 >= 6)
    {
      goto LABEL_170;
    }

    if (v223 != v33 >> 3)
    {
      v28 = a3;
      LOBYTE(a1) = a3;
      sub_1D8C452D0(v33);
      if (v31)
      {
        v230 = v31;
LABEL_171:
        sub_1D8C2BBF0(v222, v221);

LABEL_172:
        swift_bridgeObjectRelease_n();
        goto LABEL_173;
      }

      goto LABEL_148;
    }

    v213 = &v192;

    LOBYTE(a1) = v218;
    v224(v240, v217, v216);
    if (v31)
    {
      goto LABEL_192;
    }

    v42 = *(&v240[0] + 1);
    v41 = *&v240[0];
    v43 = *(&v240[0] + 1) >> 62;
    v44 = v39 != 2 || v43 == 1;
    if (!v44 && (v43 != 2 || __PAIR128__((*&v240[0] >= 0xDuLL) + *(&v240[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v240[0] - 13) >= 2))
    {
      break;
    }

    v45 = *&v240[0];
    v236 = v240[0];
    v46 = v39;
    v28 = a3;
    LOBYTE(a1) = a3;
    sub_1D8C29F08(&v236, v46, v240);
    v230 = 0;
    v47 = v42;
    v48 = v226;
    if ((v228 & 1) != 0 || (v49 = *v229, *v229 == v227))
    {
      v27 = v210;
      if ((v215 & 1) == 0)
      {
        sub_1D8C29EAC(v240, &v236);
        if (v239 == 10)
        {
          v207 = v236;
          v204 = v237;
          v55 = *(v225 + 16);
          if (v55)
          {
            sub_1D8C3A784(v225, v225 + 32, 1, (2 * v55) | 1);
          }

          else
          {
          }

          v57 = v230;
          v236 = v207;
          v237 = v204;
          v58 = sub_1D8C4449C(&v236, v56, v214, v220, v219);
          v230 = v57;
          if (v57)
          {
            goto LABEL_218;
          }

          LOBYTE(a1) = v58;
          swift_unknownObjectRelease();

          if (__OFADD__(*v229, 1))
          {
            goto LABEL_251;
          }

          ++*v229;
          sub_1D8C2AB08(v240);
          sub_1D8C2BBF0(v45, v47);

          v31 = v230;
          v29 = v208;
          v30 = v209;
          if ((a1 & 1) == 0)
          {
            goto LABEL_230;
          }

          goto LABEL_148;
        }

        sub_1D8C2AB08(&v236);
        v61 = v229;
        v60 = *v229 + 1;
        if (__OFADD__(*v229, 1))
        {
          goto LABEL_250;
        }

        goto LABEL_146;
      }

      sub_1D8C29EAC(v240, &v236);
      v50 = v239;
      if (v239 <= 4u)
      {
        v51 = v230;
        if (v239 <= 1u || v239 != 2 && v239 != 3)
        {
          v52 = 0;
          v53 = 0;
          a1 = v236;
          v54 = 0uLL;
          goto LABEL_144;
        }
      }

      else
      {
        v51 = v230;
        if (v239 > 7u)
        {
          LODWORD(v207) = v239;
          if (v239 == 8)
          {
            sub_1D8C2AA1C(&v236, &v233);
            v127 = v234;
            v128 = v235;
            __swift_project_boxed_opaque_existential_1(&v233, v234);
            a1 = (*(v128 + 24))(v127, v128);
            v130 = v129;
            __swift_destroy_boxed_opaque_existential_1(&v233);
            v52 = v130;
            v50 = v207;
            v51 = v230;
            v53 = 0;
            v54 = 0uLL;
          }

          else
          {
            if (v239 == 9)
            {
              sub_1D8C2AA1C(&v236, &v233);
              v63 = v234;
              v64 = v235;
              __swift_project_boxed_opaque_existential_1(&v233, v234);
              a1 = (*(v64 + 16))(v63, v64);
              v66 = v65;
              __swift_destroy_boxed_opaque_existential_1(&v233);
              v52 = v66;
              v53 = 0;
              v54 = 0uLL;
              v51 = v230;
            }

            else
            {
              v234 = MEMORY[0x1E69E6290];
              v235 = MEMORY[0x1E6969DF8];
              v204 = v236;
              v233 = v237;
              v131 = __swift_project_boxed_opaque_existential_1(&v233, MEMORY[0x1E69E6290]);
              v132 = *v131;
              v205 = v47;
              if (v132 && (v133 = v131[1], v134 = v133 - v132, v133 != v132))
              {
                if (v134 <= 14)
                {
                  memset(__dst, 0, sizeof(__dst));
                  v232 = v133 - v132;
                  memcpy(__dst, v132, v133 - v132);
                  v135 = *__dst;
                  v136 = v194 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v232 << 16)) << 32);
                  swift_unknownObjectRetain();
                  v194 = v136;
                }

                else
                {
                  sub_1D8C846C4();
                  swift_allocObject();
                  swift_unknownObjectRetain();
                  v140 = sub_1D8C84674();
                  v141 = v140;
                  if (v134 >= 0x7FFFFFFF)
                  {
                    sub_1D8C84714();
                    v135 = swift_allocObject();
                    *(v135 + 16) = 0;
                    *(v135 + 24) = v134;
                    v136 = v141 | 0x8000000000000000;
                  }

                  else
                  {
                    v135 = v134 << 32;
                    v136 = v140 | 0x4000000000000000;
                  }
                }
              }

              else
              {
                swift_unknownObjectRetain();
                v135 = 0;
                v136 = 0xC000000000000000;
              }

              __swift_destroy_boxed_opaque_existential_1(&v233);
              swift_unknownObjectRelease();
              type metadata accessor for SchematizedData();
              a1 = swift_allocObject();
              v52 = 0;
              v53 = 0;
              *(a1 + 16) = v204;
              *(a1 + 32) = v135;
              *(a1 + 40) = v136;
              v54 = 0uLL;
              v51 = v230;
              v48 = v226;
              v47 = v205;
            }

            v50 = v207;
          }

          goto LABEL_144;
        }

        if (v239 != 5)
        {
          if (v239 == 6)
          {
            v52 = 0;
            v53 = 0;
            a1 = v236;
            v54 = 0uLL;
          }

          else
          {
            v52 = *(&v236 + 1);
            a1 = v236;
            v54 = v237;
            v53 = v238;
          }

          goto LABEL_144;
        }
      }

      v52 = 0;
      v53 = 0;
      v54 = 0uLL;
      a1 = v236;
LABEL_144:
      *&v236 = a1;
      *(&v236 + 1) = v52;
      v237 = v54;
      LOBYTE(v238) = v53;
      BYTE1(v238) = v50;
      LOBYTE(a1) = v219;
      v220(&v236);
      v230 = v51;
      if (!v51)
      {
        sub_1D8C31D98(v236, *(&v236 + 1), v237, *(&v237 + 1), v238, BYTE1(v238));
        v61 = v229;
        v60 = *v229 + 1;
        if (__OFADD__(*v229, 1))
        {
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
        }

        goto LABEL_146;
      }

      v156 = sub_1D8C31D98(v236, *(&v236 + 1), v237, *(&v237 + 1), v238, BYTE1(v238));
      v168 = *v229 + 1;
      if (!__OFADD__(*v229, 1))
      {
LABEL_219:
        v169 = v221;
        v170 = v222;
        *v229 = v168;
        sub_1D8C2AB08(v240);
        sub_1D8C2BBF0(v45, v47);

        v167 = v169;
        v166 = v170;
        goto LABEL_211;
      }

      __break(1u);
      goto LABEL_215;
    }

    v59 = __OFADD__(v49, 1);
    v60 = v49 + 1;
    v27 = v210;
    if (v59)
    {
      goto LABEL_249;
    }

    v61 = v229;
LABEL_146:
    *v61 = v60;
    sub_1D8C2AB08(v240);
    sub_1D8C2BBF0(v45, v47);

    v29 = v208;
LABEL_147:
    v31 = v230;
    v30 = v209;
LABEL_148:
    v26 = v28[3];
    if (v26 >= v27)
    {
      v230 = v31;
      sub_1D8C2BBF0(v222, v221);
LABEL_169:

LABEL_175:
      LOBYTE(a1) = 1;
      goto LABEL_173;
    }
  }

  v205 = *(&v240[0] + 1);
  if (v29)
  {
    v62 = v30;
    v28 = a3;
    v27 = v210;
    if (v34 >= v30)
    {
      goto LABEL_202;
    }
  }

  else
  {
    v27 = v210;
    if ((v34 & 0x8000000000000000) == 0)
    {
      goto LABEL_202;
    }

    v28 = a3;
    v62 = 0;
  }

  v67 = *(v29 + v34);
  v68 = v34 + 1;
  if (v67 < 0)
  {
    if (v68 < v62)
    {
      v67 &= 0x7Fu;
      v137 = (v211 + v34);
      v68 = v34 + 2;
      v138 = 7;
      while (1)
      {
        v139 = *v137++;
        v67 |= (v139 & 0x7F) << v138;
        if ((v139 & 0x80) == 0)
        {
          goto LABEL_70;
        }

        if (v68 < v62)
        {
          ++v68;
          v38 = v138 > 0x38;
          v138 += 7;
          if (!v38)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_202:
    v158 = v41;
    sub_1D8C36A64();
    v159 = swift_allocError();
    *v160 = xmmword_1D8C86190;
    *(v160 + 16) = 2;
    v230 = v159;
    swift_willThrow();
    v161 = v158;
    v162 = v205;
    goto LABEL_209;
  }

LABEL_70:
  v28[3] = v68;
  if ((v67 & 0x80000000) != 0)
  {
    goto LABEL_202;
  }

  v69 = v67 & 0x7FFFFFFF;
  v59 = __OFADD__(v68, v69);
  v70 = v68 + v69;
  v71 = v205;
  if (v59)
  {
    goto LABEL_256;
  }

  if (v68 >= v70)
  {
    goto LABEL_158;
  }

  v206 = v41;
  *&v207 = v70;
  while (1)
  {
    *&v236 = v41;
    *(&v236 + 1) = v71;
    LOBYTE(a1) = v28;
    sub_1D8C6DE1C(&v236, v240);
    v230 = v31;
    if (v31)
    {
      v161 = v206;
LABEL_208:
      v162 = v71;
LABEL_209:
      sub_1D8C2BBF0(v161, v162);
      goto LABEL_210;
    }

    v72 = v229;
    if ((v228 & 1) == 0)
    {
      v74 = *v229;
      if (*v229 != v227)
      {
        v59 = __OFADD__(v74, 1);
        v73 = v74 + 1;
        if (v59)
        {
          goto LABEL_255;
        }

        goto LABEL_75;
      }
    }

    if (v215)
    {
      sub_1D8C29EAC(v240, &v236);
      v101 = v239;
      if (v239 <= 4u)
      {
        if (v239 <= 1u)
        {
          v102 = v239;
        }

        else
        {
          if (v239 == 2)
          {
            goto LABEL_110;
          }

          v102 = v239;
          if (v239 == 3)
          {
            v103 = 0;
            v104 = 0;
            v105 = 0uLL;
            a1 = v236;
LABEL_114:
            v110 = v230;
            v28 = a3;
            v71 = v205;
            v27 = v210;
            v101 = v102;
            goto LABEL_123;
          }
        }

        v103 = 0;
        v104 = 0;
        a1 = v236;
LABEL_113:
        v105 = 0uLL;
        goto LABEL_114;
      }

      if (v239 <= 7u)
      {
        if (v239 != 5)
        {
          v102 = v239;
          if (v239 != 6)
          {
            v103 = *(&v236 + 1);
            a1 = v236;
            v105 = v237;
            v104 = v238;
            goto LABEL_114;
          }

          v103 = 0;
          v104 = 0;
          a1 = v236;
          goto LABEL_113;
        }

LABEL_110:
        v103 = 0;
        v104 = 0;
        v105 = 0uLL;
        a1 = v236;
        v110 = v230;
        v28 = a3;
        v71 = v205;
        v27 = v210;
LABEL_123:
        *&v236 = a1;
        *(&v236 + 1) = v103;
        v237 = v105;
        LOBYTE(v238) = v104;
        BYTE1(v238) = v101;
        LOBYTE(a1) = v219;
        v220(&v236);
        v230 = v110;
        if (!v110)
        {
          result = sub_1D8C31D98(v236, *(&v236 + 1), v237, *(&v237 + 1), v238, BYTE1(v238));
          if (__OFADD__(*v229, 1))
          {
            goto LABEL_262;
          }

          ++*v229;
          sub_1D8C2AB08(v240);
          v68 = v28[3];
          v41 = v206;
          v70 = v207;
          v31 = v230;
          v29 = v208;
          if (v68 >= v207)
          {
            goto LABEL_158;
          }

          continue;
        }

        result = sub_1D8C31D98(v236, *(&v236 + 1), v237, *(&v237 + 1), v238, BYTE1(v238));
        v182 = *v229 + 1;
        if (!__OFADD__(*v229, 1))
        {
          v183 = v221;
          v184 = v222;
          v181 = v205;
          goto LABEL_228;
        }

LABEL_265:
        __break(1u);
        return result;
      }

      LODWORD(v204) = v239;
      if (v239 == 8)
      {
        sub_1D8C2AA1C(&v236, &v233);
        v111 = v234;
        v112 = v235;
        __swift_project_boxed_opaque_existential_1(&v233, v234);
        v108 = (*(v112 + 24))(v111, v112);
      }

      else
      {
        if (v204 != 9)
        {
          v234 = MEMORY[0x1E69E6290];
          v235 = MEMORY[0x1E6969DF8];
          v203 = v236;
          v233 = v237;
          v113 = __swift_project_boxed_opaque_existential_1(&v233, MEMORY[0x1E69E6290]);
          v114 = *v113;
          if (*v113 && (v115 = v113[1], v116 = v115 - v114, v115 != v114))
          {
            if (v116 <= 14)
            {
              memset(__dst, 0, sizeof(__dst));
              v232 = v115 - v114;
              memcpy(__dst, v114, v115 - v114);
              v117 = *__dst;
              v118 = v193 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v232 << 16)) << 32);
              swift_unknownObjectRetain();
              v193 = v118;
            }

            else
            {
              sub_1D8C846C4();
              swift_allocObject();
              swift_unknownObjectRetain();
              v120 = sub_1D8C84674();
              v121 = v120;
              if (v116 >= 0x7FFFFFFF)
              {
                sub_1D8C84714();
                v117 = swift_allocObject();
                *(v117 + 16) = 0;
                *(v117 + 24) = v116;
                v118 = v121 | 0x8000000000000000;
              }

              else
              {
                v117 = v116 << 32;
                v118 = v120 | 0x4000000000000000;
              }
            }
          }

          else
          {
            swift_unknownObjectRetain();
            v117 = 0;
            v118 = 0xC000000000000000;
          }

          __swift_destroy_boxed_opaque_existential_1(&v233);
          swift_unknownObjectRelease();
          type metadata accessor for SchematizedData();
          a1 = swift_allocObject();
          v103 = 0;
          v104 = 0;
          *(a1 + 16) = v203;
          *(a1 + 32) = v117;
          *(a1 + 40) = v118;
          goto LABEL_122;
        }

        sub_1D8C2AA1C(&v236, &v233);
        v106 = v234;
        v107 = v235;
        __swift_project_boxed_opaque_existential_1(&v233, v234);
        v108 = (*(v107 + 16))(v106, v107);
      }

      a1 = v108;
      v103 = v109;
      __swift_destroy_boxed_opaque_existential_1(&v233);
      v104 = 0;
LABEL_122:
      v105 = 0uLL;
      v110 = v230;
      v28 = a3;
      v71 = v205;
      v27 = v210;
      v101 = v204;
      goto LABEL_123;
    }

    sub_1D8C29EAC(v240, &v236);
    if (v239 == 10)
    {
      break;
    }

    sub_1D8C2AB08(&v236);
    v72 = v229;
    v73 = *v229 + 1;
    if (__OFADD__(*v229, 1))
    {
      goto LABEL_253;
    }

LABEL_75:
    *v72 = v73;
    sub_1D8C2AB08(v240);
LABEL_76:
    v41 = v206;
    v70 = v207;
    v68 = v28[3];
    v31 = v230;
    if (v68 >= v207)
    {
      v29 = v208;
LABEL_158:
      v230 = v31;
      if (v68 == v70)
      {
        sub_1D8C2BBF0(v41, v71);

        goto LABEL_147;
      }

      v186 = v41;
      sub_1D8C36A64();
      v187 = swift_allocError();
      *v188 = xmmword_1D8C86190;
      *(v188 + 16) = 2;
      v230 = v187;
      swift_willThrow();
      v161 = v186;
      goto LABEL_208;
    }
  }

  v75 = *(&v236 + 1);
  v76 = v236;
  v197 = *(&v237 + 1);
  v198 = v237;
  v77 = *(v225 + 16);
  if (v77)
  {
    v122 = v236;
    v123 = v77 - 1;
    if (v77 == 1)
    {
      v78 = MEMORY[0x1E69E7CC0];
      v27 = v210;
      v76 = v236;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
      v124 = swift_allocObject();
      v125 = _swift_stdlib_malloc_size(v124);
      v126 = v125 - 32;
      if (v125 < 32)
      {
        v126 = v125 - 1;
      }

      v124[2] = v123;
      v124[3] = 2 * (v126 >> 5);
      swift_arrayInitWithCopy();
      v27 = v210;
      v76 = v122;
      v78 = v124;
    }
  }

  else
  {
  }

  v196 = *(v78 + 16);
  if (!v196)
  {
    goto LABEL_252;
  }

  *&v204 = &v192;
  v79 = *(v78 + 32);
  v80 = *(v78 + 40);
  v195 = *(v78 + 48);
  v202 = v78;
  v81 = *(v78 + 56);
  v82 = swift_getObjectType();
  v199 = *(v75 + 56);
  v200 = v82;

  v201 = v80;
  *&v203 = v76;
  v83 = v230;
  v84 = v199(v79, v80, v200, v75);
  v230 = v83;
  if (v83)
  {
    swift_unknownObjectRelease();

    v181 = v205;
    goto LABEL_227;
  }

  v86 = v85;
  v200 = v79;
  if (*v214)
  {
    v87 = 1;
    v89 = v197;
    v88 = v198;
    v90 = v84;
    v91 = v81;
  }

  else
  {
    v90 = v84;
    v92 = swift_getObjectType();
    v91 = v81;
    v87 = (*(v86 + 16))(v92, v86) & v81;
    v89 = v197;
    v88 = v198;
  }

  v93 = v196;
  v94 = v214;
  *v214 = v87 & 1;
  v95 = v93 == 1;
  *&v233 = 0;
  v96 = v89 - v88;
  if (!v88)
  {
    v96 = 0;
  }

  *&v236 = v88;
  *(&v236 + 1) = v89;
  v237 = v96;
  v238 = 0;
  v239 = 1;
  v97 = v201;
  swift_bridgeObjectRetain_n();
  v98 = swift_retain_n();
  v99 = v230;
  v100 = sub_1D8C3D1D0(v90, v86, &v236, &v233, v200, v97, v195, v91, v95, v98, v94, v220, v219);
  v230 = v99;
  if (!v99)
  {
    LOBYTE(a1) = v100;

    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    v71 = v205;
    if (__OFADD__(*v229, 1))
    {
      goto LABEL_254;
    }

    ++*v229;
    sub_1D8C2AB08(v240);
    if ((a1 & 1) == 0)
    {
      sub_1D8C2BBF0(v206, v71);

      v31 = v230;
LABEL_230:
      v230 = v31;
      sub_1D8C2BBF0(v222, v221);

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 0;
      goto LABEL_173;
    }

    v28 = a3;
    goto LABEL_76;
  }

  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease();

  v181 = v205;
LABEL_227:
  v182 = *v229 + 1;
  v183 = v221;
  v184 = v222;
  if (__OFADD__(*v229, 1))
  {
    goto LABEL_263;
  }

LABEL_228:
  *v229 = v182;
  sub_1D8C2BBF0(v206, v181);
  sub_1D8C2AB08(v240);

  v167 = v183;
  v166 = v184;
LABEL_211:
  LOBYTE(a1) = v213;
  sub_1D8C2BBF0(v166, v167);

LABEL_173:

  return a1 & 1;
}

uint64_t sub_1D8C3EA00(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, uint64_t a12)
{
  LODWORD(v147) = a8;
  *&v146 = a7;
  v148 = a4;
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 56);

  v18(v154, ObjectType, a2);
  if (v12)
  {
    *&v149 = v12;

LABEL_4:
    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v142 = v18;
  v143 = a2 + 56;
  v144 = a3;
  v145 = a10;
  v19 = v154[0];
  v20 = (*(a2 + 48))(ObjectType, a2);
  *&v149 = 0;
  v22 = v20;
  v141 = v19;
  v135 = a12;
  v136 = a11;
  v23 = *(a2 + 16);
  v138 = ObjectType;
  v139 = a1;
  v137 = a2;
  v24 = v23(ObjectType, a2);
  v25 = a6;
  if ((v24 & 1) == 0)
  {
    LOBYTE(a1) = v144;
    v91 = sub_1D8C29BDC(v22);
    v29 = v145;
    v22 = *(&v141 + 1);
    v30 = v141;
    if ((v91 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v141, *(&v141 + 1));

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    v150 = v141;
    v92 = sub_1D8C29E98(v91);
    sub_1D8C29F08(&v150, v92, v154);
    if ((v147 & 1) != 0 || (v93 = *v148, *v148 == v146))
    {
      if (a9)
      {
        LOBYTE(a1) = v135;
        sub_1D8C2A970(v135);
        sub_1D8C29EAC(v154, v135);
        v94 = v148;
        v52 = *v148 + 1;
        if (__OFADD__(*v148, 1))
        {
          goto LABEL_160;
        }

        LOBYTE(a1) = 0;
      }

      else
      {
        sub_1D8C29EAC(v154, &v150);
        if (v153 == 10)
        {
          v146 = v151;
          v147 = v150;
          v52 = *(v145 + 16);
          if (v52)
          {
            goto LABEL_162;
          }

          v99 = v145;
LABEL_123:
          v100 = v149;
          v150 = v147;
          v151 = v146;
          v101 = sub_1D8C44684(&v150, v99, v136, v135);
          *&v149 = v100;
          if (v100)
          {
            swift_unknownObjectRelease();

            if (!__OFADD__(*v148, 1))
            {
              ++*v148;
              sub_1D8C2AB08(v154);
              sub_1D8C2BBF0(v30, v22);

              goto LABEL_4;
            }

            goto LABEL_165;
          }

          LOBYTE(a1) = v101;
          swift_unknownObjectRelease();

          v94 = v148;
          v52 = *v148 + 1;
          if (__OFADD__(*v148, 1))
          {
            goto LABEL_166;
          }
        }

        else
        {
          result = sub_1D8C2AB08(&v150);
          v94 = v148;
          v52 = *v148 + 1;
          if (__OFADD__(*v148, 1))
          {
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
            return result;
          }

          LOBYTE(a1) = 1;
        }
      }
    }

    else
    {
      v54 = __OFADD__(v93, 1);
      v52 = v93 + 1;
      if (v54)
      {
        goto LABEL_161;
      }

      LOBYTE(a1) = 1;
      v94 = v148;
    }

    *v94 = v52;
    sub_1D8C2AB08(v154);
    sub_1D8C2BBF0(v30, v22);

    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v134 = a9;
  v27 = v144;
  v26 = v145;
  v29 = v144[2];
  v28 = v144[3];
  if (v28 >= v29)
  {
LABEL_119:
    sub_1D8C2BBF0(v141, *(&v141 + 1));

    LOBYTE(a1) = 1;
    return a1 & 1;
  }

  v30 = *v144;
  v31 = v144[1] - *v144;
  v131 = *v144 + 1;
  v32 = v149;
  v140 = v25;
  while (1)
  {
    if (v30)
    {
      v33 = v31;
      if (v28 >= v31)
      {
        goto LABEL_117;
      }
    }

    else
    {
      if ((v28 & 0x8000000000000000) == 0)
      {
        goto LABEL_117;
      }

      v33 = 0;
    }

    v34 = *(v30 + v28);
    v35 = v28 + 1;
    if ((v34 & 0x8000000000000000) != 0)
    {
      if (v35 >= v33)
      {
        goto LABEL_117;
      }

      v34 &= 0x7Fu;
      v36 = (v131 + v28);
      v35 = v28 + 2;
      v37 = 7;
      while (1)
      {
        v38 = *v36++;
        v34 |= (v38 & 0x7F) << v37;
        if ((v38 & 0x80) == 0)
        {
          break;
        }

        if (v35 < v33)
        {
          ++v35;
          v39 = v37 > 0x38;
          v37 += 7;
          if (!v39)
          {
            continue;
          }
        }

        goto LABEL_117;
      }

      v27[3] = v35;
      if (v34 > 0xFFFFFFFE)
      {
LABEL_117:
        sub_1D8C36A64();
        v95 = swift_allocError();
        *v96 = xmmword_1D8C86190;
        *(v96 + 16) = 2;
        *&v149 = v95;
        swift_willThrow();
        sub_1D8C2BBF0(v141, *(&v141 + 1));
LABEL_107:

        goto LABEL_4;
      }
    }

    else
    {
      v27[3] = v35;
    }

    v40 = v22;
    v22 = v26;
    v41 = v34 & 7;
    if (v34 < 8 || v41 >= 6)
    {
      sub_1D8C36A64();
      v97 = swift_allocError();
      *v98 = xmmword_1D8C86190;
      *(v98 + 16) = 2;
      *&v149 = v97;
      swift_willThrow();
LABEL_128:
      sub_1D8C2BBF0(v141, *(&v141 + 1));
      goto LABEL_107;
    }

    if (v40 == v34 >> 3)
    {
      break;
    }

    LOBYTE(a1) = v27;
    sub_1D8C452D0(v34);
    if (v32)
    {
      *&v149 = v32;
      goto LABEL_128;
    }

    v26 = v22;
    v22 = v40;
LABEL_53:
    v28 = v27[3];
    if (v28 >= v29)
    {
      *&v149 = v32;
      goto LABEL_119;
    }
  }

  v132 = &v116;

  LOBYTE(a1) = v139;
  v142(v154, v138, v137);
  if (v32)
  {
    *&v149 = v32;
    goto LABEL_137;
  }

  v44 = *(&v154[0] + 1);
  v43 = *&v154[0];
  v45 = *(&v154[0] + 1) >> 62;
  v46 = v41 != 2 || v45 == 1;
  v133 = *(&v154[0] + 1);
  if (v46 || v45 == 2 && __PAIR128__((*&v154[0] >= 0xDuLL) + *(&v154[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v154[0] - 13) < 2)
  {
    v47 = *&v154[0];
    v150 = v154[0];
    LOBYTE(a1) = v27;
    sub_1D8C29F08(&v150, v41, v154);
    v26 = v22;
    if ((v147 & 1) == 0)
    {
      v48 = *v148;
      if (*v148 != v146)
      {
        v54 = __OFADD__(v48, 1);
        v52 = v48 + 1;
        if (v54)
        {
          goto LABEL_154;
        }

        a1 = 0;
        v22 = v40;
        v53 = v148;
LABEL_51:
        *v53 = v52;
        sub_1D8C2AB08(v154);
        sub_1D8C2BBF0(v47, v133);

LABEL_52:

        v32 = a1;
        goto LABEL_53;
      }
    }

    a1 = 0;
    if ((v134 & 1) == 0)
    {
      v22 = v40;
      sub_1D8C29EAC(v154, &v150);
      if (v153 == 10)
      {
        v130 = v150;
        v149 = v151;
        v49 = *(v26 + 16);
        if (v49)
        {
          sub_1D8C3A784(v26, v26 + 32, 1, (2 * v49) | 1);
          v50 = v90;
        }

        else
        {

          v50 = v26;
        }

        v150 = v130;
        v151 = v149;
        v51 = sub_1D8C44684(&v150, v50, v136, v135);
        *&v149 = v32;
        LOBYTE(a1) = v51;
        swift_unknownObjectRelease();

        v52 = *v148 + 1;
        if (__OFADD__(*v148, 1))
        {
          goto LABEL_153;
        }

        *v148 = v52;
        sub_1D8C2AB08(v154);
        sub_1D8C2BBF0(v47, v133);

        v32 = v149;
        if ((a1 & 1) == 0)
        {
          goto LABEL_135;
        }

        goto LABEL_53;
      }

      sub_1D8C2AB08(&v150);
      v53 = v148;
      v52 = *v148 + 1;
      if (__OFADD__(*v148, 1))
      {
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        sub_1D8C3A784(v29, v29 + 32, 1, (2 * v52) | 1);
        v99 = v115;
        goto LABEL_123;
      }

      goto LABEL_51;
    }

    v102 = v135;
    sub_1D8C2A970(v135);
    result = sub_1D8C29EAC(v154, v102);
    if (!__OFADD__(*v148, 1))
    {
      ++*v148;
      sub_1D8C2AB08(v154);
      sub_1D8C2BBF0(v47, v133);

LABEL_135:
      *&v149 = v32;
      sub_1D8C2BBF0(v141, *(&v141 + 1));

LABEL_147:

      LOBYTE(a1) = 0;
      return a1 & 1;
    }

    goto LABEL_164;
  }

  if (v30)
  {
    v55 = v31;
    v26 = v22;
    if (v35 >= v31)
    {
      goto LABEL_136;
    }
  }

  else
  {
    v26 = v22;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_136;
    }

    v55 = 0;
  }

  v56 = *(v30 + v35);
  v52 = v35 + 1;
  v22 = v40;
  if (v56 < 0)
  {
    if (v52 < v55)
    {
      v56 &= 0x7Fu;
      v87 = (v131 + v35);
      v52 = v35 + 2;
      v88 = 7;
      while (1)
      {
        v89 = *v87++;
        v56 |= (v89 & 0x7F) << v88;
        if ((v89 & 0x80) == 0)
        {
          goto LABEL_63;
        }

        if (v52 < v55)
        {
          ++v52;
          v39 = v88 > 0x38;
          v88 += 7;
          if (!v39)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_136:
    v103 = v44;
    a1 = v43;
    sub_1D8C36A64();
    v104 = swift_allocError();
    *v105 = xmmword_1D8C86190;
    *(v105 + 16) = 2;
    *&v149 = v104;
    swift_willThrow();
    sub_1D8C2BBF0(a1, v103);
LABEL_137:

    goto LABEL_138;
  }

LABEL_63:
  v27[3] = v52;
  if ((v56 & 0x80000000) != 0)
  {
    goto LABEL_136;
  }

  v57 = v56 & 0x7FFFFFFF;
  v54 = __OFADD__(v52, v57);
  v58 = v52 + v57;
  if (v54)
  {
    goto LABEL_159;
  }

  if (v52 >= v58)
  {
LABEL_96:
    if (v52 == v58)
    {
      a1 = v32;
      sub_1D8C2BBF0(v43, v44);

      goto LABEL_52;
    }

    v112 = v44;
    a1 = v43;
    sub_1D8C36A64();
    v113 = swift_allocError();
    *v114 = xmmword_1D8C86190;
    *(v114 + 16) = 2;
    *&v149 = v113;
    swift_willThrow();
    v106 = a1;
    v107 = v112;
LABEL_143:
    sub_1D8C2BBF0(v106, v107);

LABEL_138:

    sub_1D8C2BBF0(v141, *(&v141 + 1));
    goto LABEL_139;
  }

  v129 = v43;
  *&v130 = v58;
  while (1)
  {
    *&v150 = v43;
    *(&v150 + 1) = v44;
    LOBYTE(a1) = v27;
    sub_1D8C6DE1C(&v150, v154);
    *&v149 = v32;
    if (v32)
    {
      v106 = v129;
      v107 = v133;
      goto LABEL_143;
    }

    if ((v147 & 1) == 0)
    {
      v60 = *v148;
      if (*v148 != v146)
      {
        v54 = __OFADD__(v60, 1);
        v52 = v60 + 1;
        if (v54)
        {
          goto LABEL_158;
        }

        v59 = v148;
        goto LABEL_68;
      }
    }

    if (v134)
    {
      v108 = v135;
      sub_1D8C2A970(v135);
      result = sub_1D8C29EAC(v154, v108);
      if (__OFADD__(*v148, 1))
      {
        goto LABEL_167;
      }

      ++*v148;
      sub_1D8C2AB08(v154);
LABEL_146:
      sub_1D8C2BBF0(v129, v133);

      sub_1D8C2BBF0(v141, *(&v141 + 1));

      goto LABEL_147;
    }

    sub_1D8C29EAC(v154, &v150);
    if (v153 != 10)
    {
      sub_1D8C2AB08(&v150);
      v59 = v148;
      v52 = *v148 + 1;
      if (__OFADD__(*v148, 1))
      {
        goto LABEL_156;
      }

LABEL_68:
      *v59 = v52;
      sub_1D8C2AB08(v154);
      goto LABEL_69;
    }

    v61 = v150;
    v121 = *(&v151 + 1);
    v122 = v151;
    v62 = *(v26 + 16);
    if (v62)
    {
      v22 = v150;
      v83 = v29;
      a1 = v62 - 1;
      if (v62 == 1)
      {
        v63 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
        v84 = swift_allocObject();
        v85 = _swift_stdlib_malloc_size(v84);
        v86 = v85 - 32;
        if (v85 < 32)
        {
          v86 = v85 - 1;
        }

        v84[2] = a1;
        v84[3] = 2 * (v86 >> 5);
        swift_arrayInitWithCopy();
        v63 = v84;
      }

      v29 = v83;
    }

    else
    {

      v63 = v26;
    }

    v52 = v63[2];
    v120 = v52;
    if (!v52)
    {
      goto LABEL_155;
    }

    v126 = &v116;
    v64 = v63[4];
    v65 = v63[5];
    v118 = v63[6];
    v124 = v63;
    v127 = *(v63 + 56);
    v128 = swift_getObjectType();
    v123 = *(*(&v61 + 1) + 56);

    v119 = v64;
    v125 = v65;
    v66 = v149;
    v67 = v123(v64, v65, v128, *(&v61 + 1));
    *&v149 = v66;
    if (v66)
    {
      v109 = v129;
      swift_unknownObjectRelease();

      goto LABEL_150;
    }

    v69 = v68;
    v70 = *v136;
    v117 = v61;
    v128 = v67;
    if (v70)
    {
      v71 = 1;
    }

    else
    {
      v72 = swift_getObjectType();
      v73 = (*(v69 + 16))(v72, v69);
      v71 = v73 & v127;
    }

    v75 = v121;
    v74 = v122;
    v76 = v120;
    v77 = v136;
    *v136 = v71 & 1;
    v78 = v76 == 1;
    v155 = 0;
    v79 = v75 - v74;
    if (!v74)
    {
      v79 = 0;
    }

    *&v150 = v74;
    *(&v150 + 1) = v75;
    v151 = v79;
    v152 = 0;
    v153 = 1;
    v22 = v125;
    swift_bridgeObjectRetain_n();
    v80 = swift_retain_n();
    v81 = v149;
    v82 = sub_1D8C3EA00(v128, v69, &v150, &v155, v119, v22, v118, v127, v78, v80, v77, v135);
    *&v149 = v81;
    if (v81)
    {
      break;
    }

    LOBYTE(a1) = v82;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

    v52 = *v148 + 1;
    v27 = v144;
    v26 = v145;
    if (__OFADD__(*v148, 1))
    {
      goto LABEL_157;
    }

    *v148 = v52;
    sub_1D8C2AB08(v154);
    if ((a1 & 1) == 0)
    {
      goto LABEL_146;
    }

    v22 = v40;
LABEL_69:
    v44 = v133;
    v43 = v129;
    v58 = v130;
    v52 = v27[3];
    v32 = v149;
    if (v52 >= v130)
    {
      goto LABEL_96;
    }
  }

  v109 = v129;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();

LABEL_150:
  v110 = *(&v141 + 1);
  a1 = v141;
  v111 = v133;
  if (__OFADD__(*v148, 1))
  {
    goto LABEL_168;
  }

  ++*v148;
  sub_1D8C2BBF0(v109, v111);
  sub_1D8C2AB08(v154);

  sub_1D8C2BBF0(a1, v110);
LABEL_139:

  return a1 & 1;
}

void sub_1D8C3F908(uint64_t a1, uint64_t a2, int *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, int *a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  LODWORD(v164) = a8;
  v163 = a7;
  v165 = a4;
  v166 = a3;
  ObjectType = swift_getObjectType();
  v19 = *(a2 + 56);
  v167 = a13;
  swift_bridgeObjectRetain_n();

  (v19)(v174, ObjectType, a2);
  if (v14)
  {

LABEL_4:
    swift_bridgeObjectRelease_n();
    goto LABEL_5;
  }

  v159 = v19;
  v160 = (a2 + 56);
  v20 = v166;
  v162 = a10;
  v161 = a6;
  v21 = v174[0];
  v22 = a2;
  v158 = (*(a2 + 48))(ObjectType, a2);
  v157 = v21;
  v156 = a14;
  v23 = (*(v22 + 16))(ObjectType, v22);
  if ((v23 & 1) == 0)
  {
    v100 = sub_1D8C29BDC(v158);
    ObjectType = a9;
    v38 = a11;
    v155 = a12;
    v101 = *(&v157 + 1);
    v102 = v157;
    if ((v100 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v157, *(&v157 + 1));

      swift_bridgeObjectRelease_n();
      goto LABEL_5;
    }

    v169 = v157;
    v103 = sub_1D8C29E98(v100);
    sub_1D8C29F08(&v169, v103, v174);
    if ((v164 & 1) != 0 || (v105 = *v165, *v165 == v163))
    {
      if (a9)
      {

        sub_1D8C58544(v174, v155, v167, v156);
        if (__OFADD__(*v165, 1))
        {
          goto LABEL_167;
        }
      }

      else
      {
        sub_1D8C29EAC(v174, &v169);
        if (v173 == 10)
        {
          v22 = *(&v169 + 1);
          ObjectType = v169;
          v159 = v171;
          v160 = v170;
          v37 = v162;
          v43 = *(v162 + 16);
          if (!v43)
          {

LABEL_128:
            v107 = v106;
            v158 = *(v106 + 16);
            if (v158)
            {
              v166 = &v131;
              v108 = *(v106 + 32);
              v109 = *(v106 + 40);
              v153 = *(v106 + 48);
              v152 = *(v106 + 56);
              v110 = swift_getObjectType();
              v163 = *(v22 + 56);
              v164 = v107;
              swift_bridgeObjectRetain_n();

              v154 = v108;
              v111 = (v163)(v108, v109, v110, v22);
              v163 = v117;
              v118 = v164;
              v119 = v111;
              v151 = ObjectType;
              v120 = v109;
              v121 = 1;
              v101 = *(&v157 + 1);
              v122 = v152;
              if ((*v38 & 1) == 0)
              {
                v123 = swift_getObjectType();
                v121 = (*(v163 + 16))(v123) & v122;
              }

              *v38 = v121 & 1;
              v124 = v158 == 1;
              v175 = 0;
              v125 = (v159 - v160);
              if (!v160)
              {
                v125 = 0;
              }

              *&v169 = v160;
              *(&v169 + 1) = v159;
              v171 = 0;
              v172 = 0;
              v170 = v125;
              v173 = 1;
              v126 = v118;
              swift_retain_n();
              v127 = v167;

              sub_1D8C3F908(v119, v163, &v169, &v175, v154, v120, v153, v122, v124, v126, v38, v155, v127, v156);

              swift_unknownObjectRelease();
              swift_bridgeObjectRelease_n();
              swift_unknownObjectRelease();

              if (__OFADD__(*v165, 1))
              {
                goto LABEL_169;
              }

              ++*v165;
              swift_bridgeObjectRelease_n();
              v102 = v157;
LABEL_138:
              sub_1D8C2AB08(v174);
              sub_1D8C2BBF0(v102, v101);

              swift_bridgeObjectRelease_n();
              goto LABEL_5;
            }

            __break(1u);
            goto LABEL_166;
          }

LABEL_164:
          sub_1D8C3A784(v37, v37 + 32, 1, (2 * v43) | 1);
          goto LABEL_128;
        }

        sub_1D8C2AB08(&v169);
        if (__OFADD__(*v165, 1))
        {
LABEL_166:
          __break(1u);
          __break(1u);
LABEL_167:
          __break(1u);
          __break(1u);
          __break(1u);
LABEL_168:
          __break(1u);
          __break(1u);
LABEL_169:
          __break(1u);
          return;
        }
      }

      ++*v165;

      goto LABEL_138;
    }

    v53 = __OFADD__(v105, 1);
    v43 = v105 + 1;
    if (!v53)
    {
      *v165 = v43;
      goto LABEL_138;
    }

LABEL_163:
    __break(1u);
    __break(1u);
    goto LABEL_164;
  }

  v152 = a9;
  v153 = a1;
  v154 = a2;
  v150 = a11;
  v155 = a12;
  v25 = *(v166 + 2);
  v24 = *(v166 + 3);
  v26 = v165;
  if (v24 >= v25)
  {
LABEL_116:
    sub_1D8C2BBF0(v157, *(&v157 + 1));

    goto LABEL_5;
  }

  v27 = v166;
  v28 = *v166;
  v151 = *(v166 + 1) - *v166;
  v146 = ObjectType;
  v147 = v28 + 1;
  v148 = v28;
  while (1)
  {
    if (v28)
    {
      v29 = v151;
      if (v24 >= v151)
      {
        goto LABEL_119;
      }
    }

    else
    {
      if ((v24 & 0x8000000000000000) == 0)
      {
        goto LABEL_119;
      }

      v29 = 0;
    }

    v30 = *(v28 + v24);
    v31 = v24 + 1;
    if ((v30 & 0x8000000000000000) != 0)
    {
      if (v31 >= v29)
      {
        goto LABEL_119;
      }

      v30 &= 0x7Fu;
      v32 = (v147 + v24);
      v31 = v24 + 2;
      v33 = 7;
      while (1)
      {
        v34 = *v32++;
        v30 |= (v34 & 0x7F) << v33;
        if ((v34 & 0x80) == 0)
        {
          break;
        }

        if (v31 < v29)
        {
          ++v31;
          v35 = v33 > 0x38;
          v33 += 7;
          if (!v35)
          {
            continue;
          }
        }

        goto LABEL_119;
      }

      *(v27 + 3) = v31;
      if (v30 > 0xFFFFFFFE)
      {
LABEL_119:
        sub_1D8C36A64();
        swift_allocError();
        *v104 = xmmword_1D8C86190;
        *(v104 + 16) = 2;
        swift_willThrow();
        sub_1D8C2BBF0(v157, *(&v157 + 1));

        goto LABEL_4;
      }
    }

    else
    {
      *(v27 + 3) = v31;
    }

    v22 = v30 & 7;
    if (v30 < 8 || v22 >= 6)
    {
      goto LABEL_119;
    }

    if (v158 == v30 >> 3)
    {
      break;
    }

    v27 = v20;
    sub_1D8C452D0(v30);
LABEL_63:
    v24 = *(v27 + 3);
    if (v24 >= v25)
    {
      goto LABEL_116;
    }
  }

  v149 = &v131;
  swift_bridgeObjectRetain_n();

  (v159)(v174, ObjectType, v154);
  v38 = *(&v174[0] + 1);
  v37 = *&v174[0];
  v39 = *(&v174[0] + 1) >> 62;
  v40 = v22 != 2 || v39 == 1;
  if (v40 || v39 == 2 && __PAIR128__((*&v174[0] >= 0xDuLL) + *(&v174[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v174[0] - 13) < 2)
  {
    ObjectType = *&v174[0];
    v169 = v174[0];
    v27 = v20;
    sub_1D8C29F08(&v169, v22, v174);
    v41 = v167;
    if ((v164 & 1) != 0 || (v42 = *v26, *v26 == v163))
    {
      if (v152)
      {
        swift_bridgeObjectRetain_n();
        v37 = sub_1D8C58544(v174, v155, v41, v156);
        v43 = *v26 + 1;
        if (!__OFADD__(*v26, 1))
        {
          LOBYTE(v22) = v37;
LABEL_62:
          *v26 = v43;
          swift_bridgeObjectRelease_n();
          sub_1D8C2AB08(v174);
          sub_1D8C2BBF0(ObjectType, v38);
          swift_bridgeObjectRelease_n();

          ObjectType = v146;
          v28 = v148;
          if ((v22 & 1) == 0)
          {
LABEL_145:
            sub_1D8C2BBF0(v157, *(&v157 + 1));

            swift_bridgeObjectRelease_n();
            goto LABEL_5;
          }

          goto LABEL_63;
        }

        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      sub_1D8C29EAC(v174, &v169);
      if (v173 == 10)
      {
        v22 = *(&v169 + 1);
        v44 = v169;
        v135 = v171;
        v136 = v170;
        v45 = *(v162 + 16);
        if (v45)
        {
          sub_1D8C3A784(v162, v162 + 32, 1, (2 * v45) | 1);
        }

        else
        {
        }

        v143 = v38;
        v43 = *(v37 + 16);
        v134 = v43;
        if (!v43)
        {
          goto LABEL_155;
        }

        v140 = v37;
        v141 = &v131;
        v46 = *(v37 + 32);
        v47 = *(v37 + 40);
        v132 = *(v37 + 48);
        LODWORD(v144) = *(v37 + 56);
        v145 = swift_getObjectType();
        v138 = *(v22 + 56);
        swift_bridgeObjectRetain_n();

        v133 = v46;
        v139 = v47;
        v137 = v44;
        v48 = v138(v46, v47, v145, v22);
        v50 = v49;
        v51 = *v150;
        v145 = v48;
        v138 = v49;
        if (v51)
        {
          v52 = 1;
        }

        else
        {
          v55 = swift_getObjectType();
          v56 = (*(v50 + 2))(v55, v50);
          v52 = v56 & v144;
        }

        v27 = v20;
        v58 = v135;
        v57 = v136;
        v59 = v134;
        v60 = v150;
        *v150 = v52 & 1;
        LODWORD(v136) = v59 == 1;
        v175 = 0;
        v61 = (v58 - v57);
        if (!v57)
        {
          v61 = 0;
        }

        *&v169 = v57;
        *(&v169 + 1) = v58;
        v170 = v61;
        v171 = 0;
        v172 = 0;
        v173 = 1;
        v62 = v139;
        swift_bridgeObjectRetain_n();
        v38 = v140;
        swift_retain_n();
        v63 = v167;

        sub_1D8C3F908(v145, v138, &v169, &v175, v133, v62, v132, v144, v136, v38, v60, v155, v63, v156);
        v22 = v64;

        swift_unknownObjectRelease();
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        swift_unknownObjectRelease();

        v26 = v165;
        v43 = *v165 + 1;
        if (__OFADD__(*v165, 1))
        {
          goto LABEL_156;
        }

        v38 = v143;
        goto LABEL_62;
      }

      v37 = sub_1D8C2AB08(&v169);
      v43 = *v26 + 1;
      if (__OFADD__(*v26, 1))
      {
        goto LABEL_154;
      }

      *v26 = v43;
    }

    else
    {
      v53 = __OFADD__(v42, 1);
      v43 = v42 + 1;
      if (v53)
      {
        goto LABEL_153;
      }

      *v26 = v43;
    }

    sub_1D8C2AB08(v174);
    sub_1D8C2BBF0(ObjectType, v38);
    swift_bridgeObjectRelease_n();

LABEL_51:

    ObjectType = v146;
    v28 = v148;
    goto LABEL_63;
  }

  if (v148)
  {
    v54 = v151;
    v27 = v20;
    if (v31 >= v151)
    {
      goto LABEL_134;
    }
  }

  else
  {
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_134;
    }

    v27 = v20;
    v54 = 0;
  }

  v65 = *(v148 + v31);
  v43 = v31 + 1;
  if (v65 < 0)
  {
    if (v43 >= v54)
    {
LABEL_134:
      v112 = v37;
      sub_1D8C36A64();
      swift_allocError();
      *v113 = xmmword_1D8C86190;
      *(v113 + 16) = 2;
      swift_willThrow();
      v114 = v112;
      goto LABEL_135;
    }

    v65 &= 0x7Fu;
    v97 = (v147 + v31);
    v43 = v31 + 2;
    v98 = 7;
    while (1)
    {
      v99 = *v97++;
      v65 |= (v99 & 0x7F) << v98;
      if ((v99 & 0x80) == 0)
      {
        break;
      }

      if (v43 < v54)
      {
        ++v43;
        v35 = v98 > 0x38;
        v98 += 7;
        if (!v35)
        {
          continue;
        }
      }

      goto LABEL_134;
    }
  }

  *(v27 + 3) = v43;
  if ((v65 & 0x80000000) != 0)
  {
    goto LABEL_134;
  }

  v66 = v65 & 0x7FFFFFFF;
  v145 = v43 + v66;
  if (__OFADD__(v43, v66))
  {
    goto LABEL_159;
  }

  if (v43 >= v145)
  {
LABEL_105:
    if (v43 == v145)
    {
      sub_1D8C2BBF0(v37, v38);
      swift_bridgeObjectRelease_n();

      goto LABEL_51;
    }

    v129 = v37;
    sub_1D8C36A64();
    swift_allocError();
    *v130 = xmmword_1D8C86190;
    *(v130 + 16) = 2;
    swift_willThrow();
    v114 = v129;
LABEL_135:
    sub_1D8C2BBF0(v114, v38);
    swift_bridgeObjectRelease_n();

    v116 = *(&v157 + 1);
    v115 = v157;
    goto LABEL_150;
  }

  v142 = v37;
  while (1)
  {
    *&v169 = v37;
    *(&v169 + 1) = v38;
    v37 = sub_1D8C6DE1C(&v169, v174);
    if ((v164 & 1) == 0)
    {
      v67 = *v26;
      if (*v26 != v163)
      {
        v53 = __OFADD__(v67, 1);
        v43 = v67 + 1;
        if (v53)
        {
          goto LABEL_158;
        }

        *v26 = v43;
LABEL_74:
        sub_1D8C2AB08(v174);
        goto LABEL_75;
      }
    }

    if (v152)
    {
      break;
    }

    sub_1D8C29EAC(v174, &v169);
    if (v173 != 10)
    {

      v37 = sub_1D8C2AB08(&v169);
      v43 = *v26 + 1;
      if (__OFADD__(*v26, 1))
      {
        goto LABEL_160;
      }

      *v26 = v43;

      goto LABEL_74;
    }

    v22 = *(&v169 + 1);
    v134 = v171;
    v135 = v170;
    v75 = *(v162 + 16);
    v141 = v169;
    if (v75)
    {
      *&v144 = *(&v169 + 1);
      v93 = v75 - 1;
      if (v75 == 1)
      {
        v37 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
        v94 = swift_allocObject();
        v95 = _swift_stdlib_malloc_size(v94);
        v96 = v95 - 32;
        if (v95 < 32)
        {
          v96 = v95 - 1;
        }

        v94[2] = v93;
        v94[3] = 2 * (v96 >> 5);
        swift_arrayInitWithCopy();
        v37 = v94;
      }

      v22 = v144;
    }

    else
    {
    }

    v43 = *(v37 + 16);
    v133 = v43;
    if (!v43)
    {
      goto LABEL_161;
    }

    v139 = v37;
    v140 = &v131;
    v76 = *(v37 + 40);
    *&v144 = *(v37 + 32);
    v132 = *(v37 + 48);
    LODWORD(v143) = *(v37 + 56);
    v77 = swift_getObjectType();
    v136 = *(v22 + 56);
    v137 = v77;
    swift_bridgeObjectRetain_n();

    v138 = v76;
    v78 = (v136)(v144, v76, v137, v22);
    v80 = v79;
    v81 = *v150;
    v137 = v79;
    if (v81)
    {
      v82 = 1;
    }

    else
    {
      v83 = swift_getObjectType();
      v84 = (*(v80 + 16))(v83, v80);
      v82 = v84 & v143;
    }

    v86 = v134;
    v85 = v135;
    v87 = v133;
    v88 = v150;
    *v150 = v82 & 1;
    LODWORD(v136) = v87 == 1;
    v175 = 0;
    v89 = (v86 - v85);
    if (!v85)
    {
      v89 = 0;
    }

    *&v169 = v85;
    *(&v169 + 1) = v86;
    v170 = v89;
    v171 = 0;
    v172 = 0;
    v173 = 1;
    v90 = v138;
    swift_bridgeObjectRetain_n();
    ObjectType = v139;
    swift_retain_n();
    v91 = v167;

    sub_1D8C3F908(v78, v137, &v169, &v175, v144, v90, v132, v143, v136, ObjectType, v88, v155, v91, v156);
    v22 = v92;

    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    swift_unknownObjectRelease();

    v26 = v165;
    v43 = *v165 + 1;
    if (__OFADD__(*v165, 1))
    {
      goto LABEL_162;
    }

    *v165 = v43;
    swift_bridgeObjectRelease_n();
    sub_1D8C2AB08(v174);
    if ((v22 & 1) == 0)
    {
LABEL_144:
      sub_1D8C2BBF0(v142, v38);
      swift_bridgeObjectRelease_n();

      goto LABEL_145;
    }

LABEL_75:
    v27 = v20;
    v43 = *(v20 + 3);
    v37 = v142;
    if (v43 >= v145)
    {
      goto LABEL_105;
    }
  }

  sub_1D8C29EAC(v174, &v169);
  if (v173 == 10)
  {
    v68 = v170;
    v69 = v171;
    v70 = type metadata accessor for QueryableMessage();
    v144 = v169;
    v71 = objc_allocWithZone(v70);
    v72 = &v71[OBJC_IVAR____TtC17PoirotSchematizer16QueryableMessage_data];
    *v72 = v144;
    *(v72 + 2) = v68;
    *(v72 + 3) = v69;
    v168.receiver = v71;
    v168.super_class = v70;
    swift_bridgeObjectRetain_n();
    swift_unknownObjectRetain();
    v22 = objc_msgSendSuper2(&v168, sel_init);
    sub_1D8C437A8();
    v73 = sub_1D8C84FF4();
    ObjectType = [v73 evaluateWithObject_];
    swift_unknownObjectRelease();

    if (ObjectType)
    {
      v74 = v156;
      sub_1D8C2A970(v156);
      v37 = sub_1D8C29EAC(v174, v74);
    }

    v43 = *v26 + 1;
    if (__OFADD__(*v26, 1))
    {
      goto LABEL_157;
    }

    *v26 = v43;
    swift_bridgeObjectRelease_n();
    sub_1D8C2AB08(v174);
    if (ObjectType)
    {
      goto LABEL_144;
    }

    goto LABEL_75;
  }

  v143 = v38;

  sub_1D8C2AB08(&v169);
  sub_1D8C2F8AC();
  swift_allocError();
  *v128 = 0xD00000000000002ELL;
  *(v128 + 8) = 0x80000001D8C8BB40;
  *(v128 + 16) = 7;
  swift_willThrow();
  if (__OFADD__(*v26, 1))
  {
    goto LABEL_168;
  }

  ++*v26;
  v116 = *(&v157 + 1);
  v115 = v157;

  sub_1D8C2BBF0(v142, v143);
  sub_1D8C2AB08(v174);
  swift_bridgeObjectRelease_n();

LABEL_150:

  sub_1D8C2BBF0(v115, v116);

LABEL_5:
  swift_bridgeObjectRelease_n();
}

uint64_t sub_1D8C40E84(char *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, unint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, char **a12)
{
  LODWORD(v153) = a8;
  *&v152 = a7;
  v154 = a4;
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 56);

  v18(v157, ObjectType, a2);
  if (v12)
  {

LABEL_4:
    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v148 = v18;
  v149 = a2 + 56;
  v150 = a3;
  v151 = a10;
  v19 = v157[0];
  v20 = 0;
  v22 = a1;
  v147 = (*(a2 + 48))(ObjectType, a2);
  v146 = v19;
  v142 = a12;
  v141 = a11;
  v144 = a9;
  v23 = *(a2 + 16);
  v143 = ObjectType;
  v24 = v23(ObjectType, a2);
  v25 = a6;
  if ((v24 & 1) == 0)
  {
    v105 = sub_1D8C29BDC(v147);
    v28 = v151;
    v106 = v154;
    v22 = *(&v146 + 1);
    v27 = v146;
    if ((v105 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v146, *(&v146 + 1));

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    v155 = v146;
    v107 = sub_1D8C29E98(v105);
    LOBYTE(a1) = v150;
    sub_1D8C29F08(&v155, v107, v157);
    if ((v153 & 1) != 0 || (v108 = *v154, *v154 == v152))
    {
      if (v144)
      {
        result = sub_1D8C57FE0(v157, v142);
        v53 = *v154 + 1;
        if (!__OFADD__(*v154, 1))
        {
          LOBYTE(a1) = result;
          goto LABEL_146;
        }

        goto LABEL_167;
      }

      sub_1D8C29EAC(v157, &v155);
      if (v156[24] == 10)
      {
        v152 = *v156;
        v153 = v155;
        v53 = *(v151 + 16);
        if (v53)
        {
          goto LABEL_165;
        }

        v111 = v151;
LABEL_131:
        v155 = v153;
        *v156 = v152;
        v112 = sub_1D8C4485C(&v155, v111, v141, v142);
        if (!v20)
        {
          LOBYTE(a1) = v112;
          swift_unknownObjectRelease();

          v106 = v154;
          v53 = *v154 + 1;
          if (!__OFADD__(*v154, 1))
          {
            goto LABEL_146;
          }

LABEL_169:
          __break(1u);
          goto LABEL_170;
        }

        swift_unknownObjectRelease();

        if (!__OFADD__(*v154, 1))
        {
          ++*v154;
          sub_1D8C2AB08(v157);
          sub_1D8C2BBF0(v27, v22);
          goto LABEL_116;
        }

LABEL_168:
        __break(1u);
        goto LABEL_169;
      }

      result = sub_1D8C2AB08(&v155);
      v53 = *v154 + 1;
      if (__OFADD__(*v154, 1))
      {
        __break(1u);
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }
    }

    else
    {
      v57 = __OFADD__(v108, 1);
      v53 = v108 + 1;
      if (v57)
      {
        goto LABEL_164;
      }
    }

    LOBYTE(a1) = 1;
LABEL_146:
    *v106 = v53;
    sub_1D8C2AB08(v157);
    sub_1D8C2BBF0(v27, v22);

    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  a1 = v150;
  v26 = v150[3];
  v140 = v150[2];
  v27 = v151;
  if (v26 >= v140)
  {
LABEL_127:
    sub_1D8C2BBF0(v146, *(&v146 + 1));

    LOBYTE(a1) = 1;
    return a1 & 1;
  }

  v28 = *v150;
  v138 = v150[1] - *v150;
  v139 = v28;
  v135 = v28 + 1;
  v20 = v149;
  v145 = v25;
  while (1)
  {
    if (v28)
    {
      v29 = v138;
      if (v26 >= v138)
      {
        goto LABEL_125;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_125;
      }

      v29 = 0;
    }

    v30 = *(v28 + v26);
    v31 = v26 + 1;
    if ((v30 & 0x8000000000000000) == 0)
    {
      *(a1 + 3) = v31;
      goto LABEL_24;
    }

    if (v31 >= v29)
    {
      goto LABEL_125;
    }

    v30 &= 0x7Fu;
    v32 = (v135 + v26);
    v31 = v26 + 2;
    v33 = 7;
    while (1)
    {
      v34 = *v32++;
      v30 |= (v34 & 0x7F) << v33;
      if ((v34 & 0x80) == 0)
      {
        break;
      }

      if (v31 < v29)
      {
        ++v31;
        v35 = v33 > 0x38;
        v33 += 7;
        if (!v35)
        {
          continue;
        }
      }

      goto LABEL_125;
    }

    *(a1 + 3) = v31;
    if (v30 > 0xFFFFFFFE)
    {
LABEL_125:
      sub_1D8C36A64();
      swift_allocError();
      *v109 = xmmword_1D8C86190;
      *(v109 + 16) = 2;
      swift_willThrow();
      sub_1D8C2BBF0(v146, *(&v146 + 1));
LABEL_116:

      goto LABEL_4;
    }

LABEL_24:
    v28 = v27;
    v36 = v30 & 7;
    if (v30 < 8 || v36 >= 6)
    {
      sub_1D8C36A64();
      swift_allocError();
      *v110 = xmmword_1D8C86190;
      *(v110 + 16) = 2;
      swift_willThrow();
LABEL_134:
      sub_1D8C2BBF0(v146, *(&v146 + 1));
      goto LABEL_116;
    }

    if (v147 != v30 >> 3)
    {
      sub_1D8C452D0(v30);
      if (v12)
      {
        goto LABEL_134;
      }

      a1 = v150;
      v27 = v28;
      v28 = v139;
      goto LABEL_58;
    }

    v137 = &v122;

    v148(v157, v143, a2);
    if (v12)
    {
      goto LABEL_141;
    }

    v38 = *(&v157[0] + 1);
    v39 = *&v157[0];
    v40 = *(&v157[0] + 1) >> 62;
    v41 = v36 != 2 || v40 == 1;
    if (!v41 && (v40 != 2 || __PAIR128__((*&v157[0] >= 0xDuLL) + *(&v157[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v157[0] - 13) >= 2))
    {
      break;
    }

    v42 = *&v157[0];
    v155 = v157[0];
    v43 = *(&v157[0] + 1);
    LOBYTE(a1) = v150;
    sub_1D8C29F08(&v155, v36, v157);
    v27 = v28;
    v136 = 0;
    if ((v153 & 1) == 0)
    {
      v44 = *v154;
      if (*v154 != v152)
      {
        v57 = __OFADD__(v44, 1);
        v53 = v44 + 1;
        if (v57)
        {
          goto LABEL_155;
        }

        v28 = v139;
        v47 = v154;
        goto LABEL_56;
      }
    }

    if ((v144 & 1) == 0)
    {
      sub_1D8C29EAC(v157, &v155);
      v28 = v139;
      if (v156[24] != 10)
      {
        sub_1D8C2AB08(&v155);
        v47 = v154;
        v53 = *v154 + 1;
        if (__OFADD__(*v154, 1))
        {
          goto LABEL_156;
        }

        goto LABEL_56;
      }

      v134 = v155;
      v132 = *v156;
      v54 = *(v27 + 16);
      if (v54)
      {
        sub_1D8C3A784(v27, v27 + 32, 1, (2 * v54) | 1);
        v55 = v104;
      }

      else
      {

        v55 = v27;
      }

      v12 = v136;
      v155 = v134;
      *v156 = v132;
      v27 = v55;
      v56 = sub_1D8C4485C(&v155, v55, v141, v142);
      v20 = v12;
      if (!v12)
      {
        LOBYTE(a1) = v56;
        swift_unknownObjectRelease();

        v53 = *v154 + 1;
        if (__OFADD__(*v154, 1))
        {
          goto LABEL_157;
        }

        *v154 = v53;
        sub_1D8C2AB08(v157);
        sub_1D8C2BBF0(v42, v43);
        v27 = v151;

        if ((a1 & 1) == 0)
        {
          sub_1D8C2BBF0(v146, *(&v146 + 1));

LABEL_152:

          LOBYTE(a1) = 0;
          return a1 & 1;
        }

        a1 = v150;
        v20 = v149;
        goto LABEL_58;
      }

      swift_unknownObjectRelease();

      if (!__OFADD__(*v154, 1))
      {
        ++*v154;
        sub_1D8C2AB08(v157);
        sub_1D8C2BBF0(v42, v43);
        goto LABEL_141;
      }

LABEL_170:
      __break(1u);
      goto LABEL_171;
    }

    sub_1D8C29EAC(v157, &v155);
    v45 = v142;
    a1 = *v142;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v45 = a1;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      a1 = sub_1D8C4ACC8(0, *(a1 + 2) + 1, 1, a1);
      *v142 = a1;
    }

    v47 = v154;
    v49 = *(a1 + 2);
    v48 = *(a1 + 3);
    v27 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v103 = sub_1D8C4ACC8((v48 > 1), v49 + 1, 1, a1);
      v47 = v154;
      a1 = v103;
      *v142 = v103;
    }

    *(a1 + 2) = v27;
    v50 = &a1[48 * v49];
    v51 = v155;
    v52 = *v156;
    *(v50 + 57) = *&v156[9];
    *(v50 + 2) = v51;
    *(v50 + 3) = v52;
    v53 = *v47 + 1;
    if (__OFADD__(*v47, 1))
    {
      __break(1u);
LABEL_155:
      __break(1u);
LABEL_156:
      __break(1u);
LABEL_157:
      __break(1u);
LABEL_158:
      __break(1u);
LABEL_159:
      __break(1u);
LABEL_160:
      __break(1u);
LABEL_161:
      __break(1u);
LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      sub_1D8C3A784(v28, v28 + 32, 1, (2 * v53) | 1);
      v111 = v121;
      goto LABEL_131;
    }

    v27 = v28;
    v28 = v139;
LABEL_56:
    *v47 = v53;
    sub_1D8C2AB08(v157);
    v58 = v42;
    v38 = v43;
LABEL_57:
    sub_1D8C2BBF0(v58, v38);

    v12 = v136;
    a1 = v150;
LABEL_58:
    v26 = *(a1 + 3);
    if (v26 >= v140)
    {
      goto LABEL_127;
    }
  }

  if (v139)
  {
    v59 = v138;
    a1 = v150;
    v27 = v28;
    if (v31 >= v138)
    {
      goto LABEL_140;
    }
  }

  else
  {
    a1 = v150;
    v27 = v28;
    if ((v31 & 0x8000000000000000) == 0)
    {
      goto LABEL_140;
    }

    v59 = 0;
  }

  v28 = v139;
  v60 = *(v139 + v31);
  v53 = v31 + 1;
  if (v60 < 0)
  {
    if (v53 < v59)
    {
      v60 &= 0x7Fu;
      v100 = (v135 + v31);
      v53 = v31 + 2;
      v101 = 7;
      while (1)
      {
        v102 = *v100++;
        v60 |= (v102 & 0x7F) << v101;
        if ((v102 & 0x80) == 0)
        {
          goto LABEL_68;
        }

        if (v53 < v59)
        {
          ++v53;
          v35 = v101 > 0x38;
          v101 += 7;
          if (!v35)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_140:
    v113 = v38;
    sub_1D8C36A64();
    swift_allocError();
    *v114 = xmmword_1D8C86190;
    *(v114 + 16) = 2;
    swift_willThrow();
    sub_1D8C2BBF0(v39, v113);
LABEL_141:

    v116 = *(&v146 + 1);
    v115 = v146;
    goto LABEL_142;
  }

LABEL_68:
  *(a1 + 3) = v53;
  if ((v60 & 0x80000000) != 0)
  {
    goto LABEL_140;
  }

  v61 = v60 & 0x7FFFFFFF;
  v62 = v53 + v61;
  if (__OFADD__(v53, v61))
  {
    goto LABEL_163;
  }

  if (v53 >= v62)
  {
LABEL_105:
    v136 = v12;
    if (v53 == v62)
    {
      v58 = v39;
      goto LABEL_57;
    }

    v119 = v38;
    sub_1D8C36A64();
    swift_allocError();
    *v120 = xmmword_1D8C86190;
    *(v120 + 16) = 2;
    swift_willThrow();
    sub_1D8C2BBF0(v39, v119);
    goto LABEL_141;
  }

  v123 = v53 + v61;
  v133 = v38;
  while (1)
  {
    *&v155 = v39;
    *(&v155 + 1) = v38;
    sub_1D8C6DE1C(&v155, v157);
    if ((v153 & 1) == 0)
    {
      v64 = *v154;
      if (*v154 != v152)
      {
        v57 = __OFADD__(v64, 1);
        v53 = v64 + 1;
        if (v57)
        {
          goto LABEL_159;
        }

        v20 = 0;
        v63 = v154;
        goto LABEL_73;
      }
    }

    v20 = 0;
    if (v144)
    {
      sub_1D8C29EAC(v157, &v155);
      v65 = v142;
      a1 = *v142;
      v66 = swift_isUniquelyReferenced_nonNull_native();
      *v65 = a1;
      if ((v66 & 1) == 0)
      {
        a1 = sub_1D8C4ACC8(0, *(a1 + 2) + 1, 1, a1);
        *v142 = a1;
      }

      v63 = v154;
      v68 = *(a1 + 2);
      v67 = *(a1 + 3);
      v69 = v68 + 1;
      if (v68 >= v67 >> 1)
      {
        v136 = v68 + 1;
        v94 = sub_1D8C4ACC8((v67 > 1), v68 + 1, 1, a1);
        v69 = v136;
        v63 = v154;
        a1 = v94;
        *v142 = v94;
      }

      *(a1 + 2) = v69;
      v70 = &a1[48 * v68];
      v71 = v155;
      v72 = *v156;
      *(v70 + 57) = *&v156[9];
      *(v70 + 2) = v71;
      *(v70 + 3) = v72;
      v53 = *v63 + 1;
      if (__OFADD__(*v63, 1))
      {
        goto LABEL_158;
      }

      goto LABEL_73;
    }

    sub_1D8C29EAC(v157, &v155);
    if (v156[24] != 10)
    {
      sub_1D8C2AB08(&v155);
      v63 = v154;
      v53 = *v154 + 1;
      if (__OFADD__(*v154, 1))
      {
        goto LABEL_161;
      }

LABEL_73:
      *v63 = v53;
      sub_1D8C2AB08(v157);
      goto LABEL_74;
    }

    v73 = *(&v155 + 1);
    a1 = v155;
    v127 = *&v156[8];
    v128 = *v156;
    v74 = *(v27 + 16);
    if (v74)
    {
      v28 = v155;
      v95 = v39;
      v96 = v74 - 1;
      if (v74 == 1)
      {
        v53 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
        v97 = swift_allocObject();
        v98 = _swift_stdlib_malloc_size(v97);
        v99 = v98 - 32;
        if (v98 < 32)
        {
          v99 = v98 - 1;
        }

        v97[2] = v96;
        v97[3] = 2 * (v99 >> 5);
        v27 = v151;
        swift_arrayInitWithCopy();
        v53 = v97;
      }

      v39 = v95;
      a1 = v28;
    }

    else
    {

      v53 = v27;
    }

    v126 = *(v53 + 16);
    if (!v126)
    {
      goto LABEL_160;
    }

    v130 = v53;
    v131 = &v122;
    v75 = *(v53 + 32);
    v76 = *(v53 + 40);
    v124 = *(v53 + 48);
    LODWORD(v134) = *(v53 + 56);
    v136 = swift_getObjectType();
    v129 = *(v73 + 56);

    v125 = v75;
    v77 = v75;
    v78 = v76;
    *&v132 = a1;
    v79 = v129(v77, v76, v136, v73);
    v81 = v80;
    v136 = 0;
    if (*v141)
    {
      v82 = 1;
    }

    else
    {
      v83 = swift_getObjectType();
      v84 = (*(v81 + 16))(v83, v81);
      v82 = v84 & v134;
    }

    v86 = v127;
    v85 = v128;
    v87 = v126;
    v88 = v141;
    *v141 = v82 & 1;
    v89 = v87 == 1;
    v158 = 0;
    v90 = v86 - v85;
    if (!v85)
    {
      v90 = 0;
    }

    *&v155 = v85;
    *(&v155 + 1) = v86;
    *v156 = v90;
    *&v156[16] = 0;
    v156[24] = 1;
    swift_bridgeObjectRetain_n();
    v91 = v130;
    swift_retain_n();
    v92 = v136;
    v93 = sub_1D8C40E84(v79, v81, &v155, &v158, v125, v78, v124, v134, v89, v91, v88, v142);
    v28 = v79;
    v20 = v92;
    if (v92)
    {
      break;
    }

    LOBYTE(a1) = v93;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

    v53 = *v154 + 1;
    v27 = v151;
    if (__OFADD__(*v154, 1))
    {
      goto LABEL_162;
    }

    *v154 = v53;
    sub_1D8C2AB08(v157);
    v28 = v139;
    v62 = v123;
    if ((a1 & 1) == 0)
    {
      sub_1D8C2BBF0(v39, v133);

      sub_1D8C2BBF0(v146, *(&v146 + 1));

      goto LABEL_152;
    }

LABEL_74:
    LOBYTE(a1) = v150;
    v38 = v133;
    v53 = v150[3];
    v12 = v20;
    v20 = v149;
    if (v53 >= v62)
    {
      goto LABEL_105;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();

  v117 = v146;
  v118 = v133;
  if (__OFADD__(*v154, 1))
  {
LABEL_171:
    __break(1u);
    return result;
  }

  ++*v154;
  sub_1D8C2BBF0(v39, v118);
  sub_1D8C2AB08(v157);

  v116 = *(&v117 + 1);
  v115 = v117;
LABEL_142:
  sub_1D8C2BBF0(v115, v116);

  LOBYTE(a1) = v137;

  return a1 & 1;
}

uint64_t sub_1D8C41E94(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, unsigned __int8 a9, uint64_t a10, _BYTE *a11, char **a12)
{
  LODWORD(v142) = a8;
  *&v141 = a7;
  v143 = a4;
  ObjectType = swift_getObjectType();
  v18 = *(a2 + 56);

  v18(v149, ObjectType, a2);
  if (v12)
  {
    *&v144 = v12;

LABEL_4:
    swift_bridgeObjectRelease_n();
    return a1 & 1;
  }

  v137 = v18;
  v138 = a2 + 56;
  v139 = a3;
  v140 = a10;
  v19 = v149[0];
  v20 = (*(a2 + 48))(ObjectType, a2);
  *&v144 = 0;
  v22 = v20;
  v136 = v19;
  v132 = a12;
  v131 = a11;
  v23 = *(a2 + 16);
  v133 = ObjectType;
  v134 = a1;
  v24 = a6;
  if ((v23() & 1) == 0)
  {
    v91 = sub_1D8C29BDC(v22);
    v29 = v140;
    v22 = *(&v136 + 1);
    v25 = v136;
    if ((v91 & 0x100000000) != 0)
    {
      sub_1D8C2BBF0(v136, *(&v136 + 1));

      swift_bridgeObjectRelease_n();
      LOBYTE(a1) = 1;
      return a1 & 1;
    }

    v145 = v136;
    v92 = sub_1D8C29E98(v91);
    LOBYTE(a1) = v139;
    sub_1D8C29F08(&v145, v92, v149);
    if ((v142 & 1) != 0 || (v93 = *v143, *v143 == v141))
    {
      if (a9)
      {
        result = sub_1D8C581B8(v149, v132);
        *&v144 = 0;
        v99 = v143;
        v48 = *v143 + 1;
        if (!__OFADD__(*v143, 1))
        {
          LOBYTE(a1) = result;
          goto LABEL_143;
        }
      }

      else
      {
        *&v144 = 0;
        sub_1D8C29EAC(v149, &v145);
        if (v148 == 10)
        {
          v141 = v146;
          v142 = v145;
          v48 = *(v140 + 16);
          if (!v48)
          {

            v96 = v140;
LABEL_125:
            v97 = v144;
            v145 = v142;
            v146 = v141;
            v98 = sub_1D8C4488C(&v145, v96, v131, v132);
            *&v144 = v97;
            if (v97)
            {
              swift_unknownObjectRelease();

              if (!__OFADD__(*v143, 1))
              {
                ++*v143;
                sub_1D8C2AB08(v149);
                sub_1D8C2BBF0(v25, v22);
                goto LABEL_111;
              }

              goto LABEL_163;
            }

            LOBYTE(a1) = v98;
            swift_unknownObjectRelease();

            v99 = v143;
            v48 = *v143 + 1;
            if (__OFADD__(*v143, 1))
            {
LABEL_164:
              __break(1u);
              __break(1u);
              __break(1u);
              goto LABEL_165;
            }

LABEL_143:
            *v99 = v48;
            sub_1D8C2AB08(v149);
            sub_1D8C2BBF0(v25, v22);

            swift_bridgeObjectRelease_n();
            return a1 & 1;
          }

LABEL_160:
          sub_1D8C3A784(v29, v29 + 32, 1, (2 * v48) | 1);
          v96 = v110;
          goto LABEL_125;
        }

        result = sub_1D8C2AB08(&v145);
        v99 = v143;
        v48 = *v143 + 1;
        if (!__OFADD__(*v143, 1))
        {
          LOBYTE(a1) = 1;
          goto LABEL_143;
        }

        __break(1u);
      }

      __break(1u);
LABEL_163:
      __break(1u);
      goto LABEL_164;
    }

    *&v144 = 0;
    v53 = __OFADD__(v93, 1);
    v48 = v93 + 1;
    if (!v53)
    {
      LOBYTE(a1) = 1;
      v99 = v143;
      goto LABEL_143;
    }

LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  v25 = v139;
  a1 = v140;
  v26 = v139[3];
  v130 = v139[2];
  if (v26 >= v130)
  {
LABEL_121:
    sub_1D8C2BBF0(v136, *(&v136 + 1));

    LOBYTE(a1) = 1;
    return a1 & 1;
  }

  v126 = a9;
  v27 = *v139;
  v28 = v139[1] - *v139;
  v29 = *v139 + 1;
  v30 = v144;
  v135 = v24;
  v129 = v22;
  while (1)
  {
    if (v27)
    {
      v31 = v28;
      if (v26 >= v28)
      {
        goto LABEL_120;
      }
    }

    else
    {
      if ((v26 & 0x8000000000000000) == 0)
      {
        goto LABEL_120;
      }

      v31 = 0;
    }

    v32 = *(v27 + v26);
    v33 = v26 + 1;
    if ((v32 & 0x8000000000000000) != 0)
    {
      if (v33 >= v31)
      {
        goto LABEL_120;
      }

      v32 &= 0x7Fu;
      v34 = (v29 + v26);
      v33 = v26 + 2;
      v35 = 7;
      while (1)
      {
        v36 = *v34++;
        v32 |= (v36 & 0x7F) << v35;
        if ((v36 & 0x80) == 0)
        {
          break;
        }

        if (v33 < v31)
        {
          ++v33;
          v37 = v35 > 0x38;
          v35 += 7;
          if (!v37)
          {
            continue;
          }
        }

        goto LABEL_120;
      }

      *(v25 + 24) = v33;
      if (v32 > 0xFFFFFFFE)
      {
LABEL_120:
        sub_1D8C36A64();
        v94 = swift_allocError();
        *v95 = xmmword_1D8C86190;
        *(v95 + 16) = 2;
        *&v144 = v94;
        swift_willThrow();
        sub_1D8C2BBF0(v136, *(&v136 + 1));
LABEL_111:

        goto LABEL_4;
      }
    }

    else
    {
      *(v25 + 24) = v33;
    }

    v38 = v32 & 7;
    if (v32 < 8 || v38 >= 6)
    {
      goto LABEL_120;
    }

    if (v22 == v32 >> 3)
    {
      break;
    }

    v49 = a1;
    LOBYTE(a1) = v25;
    sub_1D8C452D0(v32);
    if (v30)
    {
      *&v144 = v30;
      sub_1D8C2BBF0(v136, *(&v136 + 1));
      goto LABEL_111;
    }

    a1 = v49;
LABEL_48:
    v22 = v129;
LABEL_54:
    v26 = *(v25 + 24);
    if (v26 >= v130)
    {
      *&v144 = v30;
      goto LABEL_121;
    }
  }

  v127 = &v111;

  v137(v149, v133, a2);
  if (v30)
  {
    *&v144 = v30;
    LOBYTE(a1) = v140;
    goto LABEL_135;
  }

  v41 = *(&v149[0] + 1);
  v40 = *&v149[0];
  v42 = *(&v149[0] + 1) >> 62;
  v43 = v38 != 2 || v42 == 1;
  v128 = *(&v149[0] + 1);
  if (v43 || v42 == 2 && __PAIR128__((*&v149[0] >= 0xDuLL) + *(&v149[0] + 1) + 0x7FFFFFFFFFFFFFFFLL, *&v149[0] - 13) < 2)
  {
    v44 = *&v149[0];
    v145 = v149[0];
    sub_1D8C29F08(&v145, v38, v149);
    a1 = v140;
    if ((v142 & 1) != 0 || (v45 = *v143, *v143 == v141))
    {
      if (v126)
      {
        v46 = sub_1D8C581B8(v149, v132);
        *&v144 = 0;
        v47 = v143;
        v48 = *v143 + 1;
        if (!__OFADD__(*v143, 1))
        {
          LOBYTE(a1) = v46;
LABEL_46:
          *v47 = v48;
          sub_1D8C2AB08(v149);
          sub_1D8C2BBF0(v44, v128);

          if ((a1 & 1) == 0)
          {
            sub_1D8C2BBF0(v136, *(&v136 + 1));

LABEL_144:

            LOBYTE(a1) = 0;
            return a1 & 1;
          }

          v30 = v144;
          a1 = v140;
          goto LABEL_48;
        }

        __break(1u);
LABEL_150:
        __break(1u);
LABEL_151:
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
        goto LABEL_159;
      }

      v50 = 0;
      sub_1D8C29EAC(v149, &v145);
      if (v148 == 10)
      {
        v125 = v145;
        v144 = v146;
        v51 = *(a1 + 16);
        if (v51)
        {
          sub_1D8C3A784(a1, a1 + 32, 1, (2 * v51) | 1);
          a1 = v90;
        }

        else
        {
        }

        v145 = v125;
        v146 = v144;
        v22 = a1;
        v52 = sub_1D8C4488C(&v145, a1, v131, v132);
        *&v144 = v30;
        LOBYTE(a1) = v52;
        swift_unknownObjectRelease();

        v47 = v143;
        v48 = *v143 + 1;
        if (__OFADD__(*v143, 1))
        {
          goto LABEL_152;
        }

        goto LABEL_46;
      }

      sub_1D8C2AB08(&v145);
      v54 = v143;
      v48 = *v143 + 1;
      if (__OFADD__(*v143, 1))
      {
        goto LABEL_151;
      }
    }

    else
    {
      v53 = __OFADD__(v45, 1);
      v48 = v45 + 1;
      if (v53)
      {
        goto LABEL_150;
      }

      v50 = 0;
      v54 = v143;
    }

    v22 = v129;
    *v54 = v48;
    sub_1D8C2AB08(v149);
    v40 = v44;
    v41 = v128;
LABEL_53:
    sub_1D8C2BBF0(v40, v41);

    v30 = v50;
    goto LABEL_54;
  }

  if (v27)
  {
    v55 = v28;
    a1 = v140;
    if (v33 >= v28)
    {
      goto LABEL_134;
    }
  }

  else
  {
    a1 = v140;
    if ((v33 & 0x8000000000000000) == 0)
    {
      goto LABEL_134;
    }

    v55 = 0;
  }

  v56 = *(v27 + v33);
  v48 = v33 + 1;
  if (v56 < 0)
  {
    if (v48 >= v55)
    {
      goto LABEL_134;
    }

    v56 &= 0x7Fu;
    v87 = (v29 + v33);
    v48 = v33 + 2;
    v88 = 7;
    while (1)
    {
      v89 = *v87++;
      v56 |= (v89 & 0x7F) << v88;
      if ((v89 & 0x80) == 0)
      {
        break;
      }

      if (v48 < v55)
      {
        ++v48;
        v37 = v88 > 0x38;
        v88 += 7;
        if (!v37)
        {
          continue;
        }
      }

      goto LABEL_134;
    }
  }

  *(v25 + 24) = v48;
  if ((v56 & 0x80000000) != 0)
  {
    goto LABEL_134;
  }

  v57 = v56 & 0x7FFFFFFF;
  v58 = v48 + v57;
  if (__OFADD__(v48, v57))
  {
    goto LABEL_155;
  }

  if (v48 >= v58)
  {
LABEL_107:
    v22 = v129;
    if (v48 == v58)
    {
      v50 = v30;
      goto LABEL_53;
    }

LABEL_134:
    v100 = v41;
    v101 = v40;
    sub_1D8C36A64();
    v102 = swift_allocError();
    *v103 = xmmword_1D8C86190;
    *(v103 + 16) = 2;
    *&v144 = v102;
    swift_willThrow();
    sub_1D8C2BBF0(v101, v100);
LABEL_135:

LABEL_136:

    v105 = *(&v136 + 1);
    v104 = v136;
LABEL_137:
    sub_1D8C2BBF0(v104, v105);

    return a1 & 1;
  }

  v112 = v48 + v57;
  v124 = v40;
  while (1)
  {
    *&v145 = v40;
    *(&v145 + 1) = v41;
    LOBYTE(a1) = v25;
    sub_1D8C6DE1C(&v145, v149);
    if (v30)
    {
      *&v144 = v30;
      sub_1D8C2BBF0(v124, v128);
      LOBYTE(a1) = v140;

      goto LABEL_136;
    }

    if ((v142 & 1) == 0)
    {
      v60 = *v143;
      if (*v143 != v141)
      {
        *&v144 = 0;
        v53 = __OFADD__(v60, 1);
        v48 = v60 + 1;
        if (v53)
        {
          goto LABEL_154;
        }

        v59 = v143;
        goto LABEL_69;
      }
    }

    if (v126)
    {
      v61 = sub_1D8C581B8(v149, v132);
      *&v144 = 0;
      v62 = v143;
      v48 = *v143 + 1;
      if (__OFADD__(*v143, 1))
      {
        goto LABEL_153;
      }

      LOBYTE(a1) = v61;
      goto LABEL_91;
    }

    *&v144 = 0;
    sub_1D8C29EAC(v149, &v145);
    a1 = v140;
    if (v148 == 10)
    {
      break;
    }

    sub_1D8C2AB08(&v145);
    v59 = v143;
    v48 = *v143 + 1;
    if (__OFADD__(*v143, 1))
    {
      goto LABEL_156;
    }

LABEL_69:
    *v59 = v48;
    sub_1D8C2AB08(v149);
LABEL_70:
    v41 = v128;
    v40 = v124;
    v48 = *(v25 + 24);
    v30 = v144;
    if (v48 >= v58)
    {
      a1 = v140;
      goto LABEL_107;
    }
  }

  v63 = v145;
  v116 = *(&v146 + 1);
  v117 = v146;
  v64 = *(v140 + 16);
  if (v64)
  {
    v22 = v145;
    a1 = v64 - 1;
    if (v64 == 1)
    {
      v65 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAAB128, &qword_1D8C86720);
      v65 = swift_allocObject();
      v85 = _swift_stdlib_malloc_size(v65);
      v86 = v85 - 32;
      if (v85 < 32)
      {
        v86 = v85 - 1;
      }

      *(v65 + 16) = a1;
      *(v65 + 24) = 2 * (v86 >> 5);
      swift_arrayInitWithCopy();
    }

    v25 = v139;
  }

  else
  {

    v65 = a1;
  }

  v48 = *(v65 + 16);
  v115 = v48;
  if (!v48)
  {
    goto LABEL_157;
  }

  v119 = &v111;
  v67 = *(v65 + 32);
  v66 = *(v65 + 40);
  v113 = *(v65 + 48);
  v121 = v65;
  v122 = *(v65 + 56);
  *&v125 = v63;
  v123 = swift_getObjectType();
  v118 = *(*(&v63 + 1) + 56);

  v114 = v67;
  v120 = v66;
  v68 = v144;
  v69 = v118(v67, v66, v123, *(&v63 + 1));
  *&v144 = v68;
  if (v68)
  {
    v106 = v124;
    swift_unknownObjectRelease();

    goto LABEL_147;
  }

  v71 = v70;
  v72 = *v131;
  v123 = v69;
  v118 = v70;
  if (v72)
  {
    v73 = 1;
  }

  else
  {
    v74 = swift_getObjectType();
    v75 = (*(v71 + 2))(v74, v71);
    v73 = v75 & v122;
  }

  v77 = v116;
  v76 = v117;
  v78 = v115;
  v79 = v131;
  *v131 = v73 & 1;
  v22 = v78 == 1;
  v150 = 0;
  v80 = v77 - v76;
  if (!v76)
  {
    v80 = 0;
  }

  *&v145 = v76;
  *(&v145 + 1) = v77;
  v146 = v80;
  v147 = 0;
  v148 = 1;
  v81 = v120;
  swift_bridgeObjectRetain_n();
  v82 = v121;
  swift_retain_n();
  v83 = v144;
  v84 = sub_1D8C41E94(v123, v118, &v145, &v150, v114, v81, v113, v122, v22, v82, v79, v132);
  *&v144 = v83;
  if (!v83)
  {
    LOBYTE(a1) = v84;
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_bridgeObjectRelease_n();

    v62 = v143;
    v48 = *v143 + 1;
    v58 = v112;
    if (__OFADD__(*v143, 1))
    {
      goto LABEL_158;
    }

LABEL_91:
    *v62 = v48;
    sub_1D8C2AB08(v149);
    if ((a1 & 1) == 0)
    {
      sub_1D8C2BBF0(v124, v128);

      sub_1D8C2BBF0(v136, *(&v136 + 1));

      goto LABEL_144;
    }

    goto LABEL_70;
  }

  v106 = v124;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_bridgeObjectRelease_n();

LABEL_147:
  v107 = v136;
  v108 = v128;
  if (!__OFADD__(*v143, 1))
  {
    ++*v143;
    sub_1D8C2BBF0(v106, v108);
    sub_1D8C2AB08(v149);
    v109 = v140;

    v105 = *(&v107 + 1);
    v104 = v107;
    LOBYTE(a1) = v109;
    goto LABEL_137;
  }

LABEL_165:
  __break(1u);
  return result;
}