unint64_t sub_197403C30(void *a1, uint64_t a2)
{
  sub_197522A5C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x19A8E1190](1);
      sub_197452CB8(v6);
    }

    else
    {
      MEMORY[0x19A8E1190](2);
      sub_19750A470();
      sub_19752180C();

      sub_19750A588();
      sub_19752180C();
    }
  }

  else
  {
    MEMORY[0x19A8E1190](0);
    sub_197521F4C();
  }

  v4 = sub_197522A9C();

  return sub_1973FE8DC(a1, a2, v4);
}

_OWORD *sub_197403D34(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v21 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
  v22 = sub_1973FF3D4();
  v23 = sub_1973FF428();
  *&v19 = a4;
  *(&v19 + 1) = a5;
  v20 = a6;
  a7[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a7[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1974028A0(&v19, (a7[7] + 48 * a1));
  v16 = a7[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v18;
  }

  return result;
}

void sub_197403E00(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v82 = a1;
  v71 = a6;
  Descriptor = type metadata accessor for FetchDescriptor(0, a4, a5, a4);
  v12 = *(Descriptor - 8);
  MEMORY[0x1EEE9AC00](Descriptor, v13);
  v15 = v64 - v14;
  v17 = *(type metadata accessor for DataStoreFetchRequest(0, a4, a5, v16) + 36);
  sub_1974076EC(a2 + v17, a3, a4, a5);
  if (!v6)
  {
    v76 = a3;
    v77 = v17;
    v65 = v12;
    v66 = Descriptor;
    v67 = a2;
    v68 = v15;
    v69 = a4;
    v70 = a5;
    v19 = v82;
    v20 = *(v82 + 24);
    v21 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFC8, &qword_19752C730);
    swift_initStackObject();
    v22 = v21;

    v23 = sub_197406C94(v21, v20);

    v24 = *(v19 + 16);
    sub_1973F3D34(0, &qword_1ED7C9360, 0x1E695D620);
    v25 = v24;
    v26 = sub_197521E8C();
    v27 = v26;
    v64[0] = v22;
    if (v26 >> 62)
    {
      v28 = sub_1975220EC();
    }

    else
    {
      v28 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v29 = v77;
    v74 = v25;
    v64[1] = 0;
    if (v28)
    {
      if (v28 < 1)
      {
        __break(1u);
        return;
      }

      v30 = 0;
      v82 = v27 & 0xC000000000000001;
      v75 = MEMORY[0x1E69E7CC0];
      v72 = v28;
      v73 = v27;
      do
      {
        if (v82)
        {
          v31 = MEMORY[0x19A8E0960](v30, v27);
        }

        else
        {
          v31 = *(v27 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = MEMORY[0x19A8E1370](v31);
        if (([v32 isDeleted] & 1) == 0)
        {
          sub_197402910(v32, v25, v23, &v79);
          v34 = v79;
          v35 = v80;
          v36 = v81;
          if ([v32 isDeleted])
          {

            sub_1974028C8(v35, v36);
          }

          else
          {
            swift_beginAccess();
            sub_1974028EC(v35, v36);

            sub_1974028EC(v35, v36);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v78 = v23[2];
            v23[2] = 0x8000000000000000;
            sub_197400CA8(v34, v35, v36, v35, v36, isUniquelyReferenced_nonNull_native);
            sub_1974028C8(v35, v36);
            v23[2] = v78;
            swift_endAccess();
            swift_beginAccess();
            v38 = sub_197400BC8(v35, v36);
            swift_endAccess();

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_197400C8C(0, *(v75 + 2) + 1, 1, v75);
            }

            v40 = *(v75 + 2);
            v39 = *(v75 + 3);
            if (v40 >= v39 >> 1)
            {
              v75 = sub_197400C8C((v39 > 1), v40 + 1, 1, v75);
            }

            v41 = v75;
            *(v75 + 2) = v40 + 1;
            v42 = &v41[24 * v40];
            *(v42 + 4) = v34;
            *(v42 + 5) = v35;
            v42[48] = v36;
          }

          v29 = v77;
          v27 = v73;
          v25 = v74;
          v28 = v72;
        }

        ++v30;
        objc_autoreleasePoolPop(v33);
      }

      while (v28 != v30);
    }

    else
    {
      v75 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    for (i = v23[3]; *(i + 16); i = v23[3])
    {
      v44 = 0;
      v45 = (i + 64);
      v46 = 1 << *(i + 32);
      v47 = (v46 + 63) >> 6;
      while (1)
      {
        v49 = *v45++;
        v48 = v49;
        if (v49)
        {
          break;
        }

        v44 -= 64;
        if (!--v47)
        {
          goto LABEL_31;
        }
      }

      v46 = __clz(__rbit64(v48)) - v44;
LABEL_31:
      v50 = sub_197425424(&v79, v46, *(i + 36));
      v81 = v50;
      v51 = v79;
      v52 = v80;
      v53 = swift_endAccess();
      if (!v50)
      {
        goto LABEL_36;
      }

      v54 = MEMORY[0x19A8E1370](v53);
      if (([v50 isDeleted] & 1) == 0)
      {
        sub_197402910(v50, v25, v23, &v79);
        v56 = v79;
        v55 = v80;
        v57 = v81;
        if ([v50 isDeleted])
        {
        }

        else
        {
          swift_beginAccess();
          sub_1974028EC(v55, v57);

          sub_1974028EC(v55, v57);
          v58 = swift_isUniquelyReferenced_nonNull_native();
          v78 = v23[2];
          v23[2] = 0x8000000000000000;
          sub_197400CA8(v56, v55, v57, v55, v57, v58);
          sub_1974028C8(v55, v57);
          v23[2] = v78;
          swift_endAccess();
          swift_beginAccess();
          v59 = sub_197400BC8(v55, v57);
          swift_endAccess();
        }

        sub_1974028C8(v55, v57);
        v29 = v77;
        v25 = v74;
      }

      objc_autoreleasePoolPop(v54);
      sub_197425500(v51, v52, v50);
      swift_beginAccess();
    }

    swift_endAccess();
LABEL_36:

    v60 = v68;
    (*(v65 + 16))(v68, v67 + v29, v66);
    swift_beginAccess();
    v61 = v23[2];
    v62 = v75;

    v63 = sub_197406AAC();
    DataStoreFetchResult.init(descriptor:fetchedSnapshots:relatedSnapshots:)(v60, v62, v61, v69, &type metadata for DefaultSnapshot, v70, v63, v71);
  }
}

_OWORD *sub_197404514(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  v33 = &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture;
  v34 = sub_1973FF3D4();
  v35 = sub_1973FF428();
  *&v31 = a1;
  *(&v31 + 1) = a2;
  v32 = a3;
  v14 = *a7;
  v16 = sub_1973F4028(a4, a5);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_14;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 >= v19 && (a6 & 1) != 0)
  {
LABEL_7:
    v22 = *a7;
    if (v20)
    {
LABEL_8:
      v23 = (v22[7] + 48 * v16);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v23);
      return sub_1974028A0(&v31, v23);
    }

    goto LABEL_11;
  }

  if (v21 >= v19 && (a6 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v19, a6 & 1);
  v25 = sub_1973F4028(a4, a5);
  if ((v20 & 1) != (v26 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v16 = v25;
  v22 = *a7;
  if (v20)
  {
    goto LABEL_8;
  }

LABEL_11:
  v27 = __swift_mutable_project_boxed_opaque_existential_2(&v31, &type metadata for DefaultStore.DefaultStoreSnapshotValueFuture);
  MEMORY[0x1EEE9AC00](v27, v27);
  v29 = &v31 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v30 + 16))(v29);
  sub_197403D34(v16, a4, a5, *v29, *(v29 + 1), v29[16], v22);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v31);
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_197404790(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1974047F8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_197404860(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1974048EC(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = a8;
  v41 = a1;
  v42 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v43 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v45 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v30 - v14;
  MEMORY[0x1EEE9AC00](v13, v16);
  v39 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_getAssociatedTypeWitness();
  v33 = *(v18 - 8);
  v34 = v18;
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = &v30 - v20;
  v22 = sub_197521CAC();
  if (!v22)
  {
    return sub_197521A1C();
  }

  v44 = v22;
  v48 = sub_19752230C();
  v35 = sub_19752231C();
  sub_1975222BC();
  result = sub_197521C9C();
  if ((v44 & 0x8000000000000000) == 0)
  {
    v30 = v10;
    v31 = a5;
    v24 = 0;
    v36 = (v45 + 16);
    v37 = (v45 + 8);
    v38 = v8;
    while (!__OFADD__(v24, 1))
    {
      v45 = v24 + 1;
      v25 = sub_197521D2C();
      v26 = v15;
      v27 = v15;
      v28 = AssociatedTypeWitness;
      (*v36)(v26);
      v25(v47, 0);
      v29 = v46;
      v41(v27, v43);
      if (v29)
      {
        (*v37)(v27, v28);
        (*(v33 + 8))(v21, v34);

        return (*(v30 + 32))(v32, v43, v31);
      }

      v46 = 0;
      (*v37)(v27, v28);
      sub_1975222FC();
      result = sub_197521CBC();
      ++v24;
      v15 = v27;
      if (v45 == v44)
      {
        (*(v33 + 8))(v21, v34);
        return v48;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_197404D0C(uint64_t a1)
{
  sub_19752135C();
  v2 = MEMORY[0x1E69695A8];
  sub_197404DE0(&qword_1ED7C9B68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1975216AC();
  return sub_197404ED4(a1, v3, MEMORY[0x1E69695A8], &qword_1ED7C9B28, v2, MEMORY[0x1E69695C8]);
}

uint64_t sub_197404DE0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197404E28(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197404E70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingState(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_197404ED4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v25 = a5;
  v26 = a6;
  v24 = a4;
  v22[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = v22 - v11;
  v23 = v6;
  v13 = -1 << *(v6 + 32);
  v14 = a2 & ~v13;
  v22[0] = v6 + 64;
  if ((*(v6 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    do
    {
      v16(v12, *(v23 + 48) + v19 * v14, v8);
      sub_197404DE0(v24, v25, v26);
      v20 = sub_19752173C();
      (*(v17 - 8))(v12, v8);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v22[0] + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  return v14;
}

uint64_t sub_1974050A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_197405108()
{
  result = qword_1ED7C93F8;
  if (!qword_1ED7C93F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C93F8);
  }

  return result;
}

void sub_19740515C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, void *a9, uint64_t a10)
{
  v167 = a6;
  v172 = a3;
  v173 = a5;
  v186 = a7;
  v160 = sub_19752139C();
  v155 = sub_197521F5C();
  v148 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v14);
  v141 = v133 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v146 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v17);
  v165 = v133 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133[0] = v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v175 = v133 - v21;
  v174 = a10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v182 = a7;
  v183 = AssociatedTypeWitness;
  v184 = a9;
  v185 = AssociatedConformanceWitness;
  Result = type metadata accessor for DataStoreFetchResult(0, &v182);
  v143 = *(Result - 8);
  v24 = MEMORY[0x1EEE9AC00](Result, v23);
  v154 = v133 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24, v26);
  v169 = v133 - v27;
  v28 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v28 - 8, v29);
  v153 = v133 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest(0, a7, a9, v31);
  v166 = *(Request - 8);
  v33 = MEMORY[0x1EEE9AC00](Request, v32);
  v161 = v133 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33, v35);
  v137 = v133 - v36;
  v37 = sub_197520C4C();
  v145 = sub_197521F5C();
  v144 = *(v145 - 8);
  v39 = MEMORY[0x1EEE9AC00](v145, v38);
  v164 = (v133 - v40);
  v142 = v37;
  v41 = *(v37 - 8);
  v43 = MEMORY[0x1EEE9AC00](v39, v42);
  v149 = v133 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v45);
  v157 = (v133 - v46);
  v170 = a9;
  v171 = a7;
  Descriptor = type metadata accessor for FetchDescriptor(0, a7, a9, v47);
  v49 = *(Descriptor - 1);
  v51 = MEMORY[0x1EEE9AC00](Descriptor, v50);
  v152 = v133 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = MEMORY[0x1EEE9AC00](v51, v53);
  v136 = v133 - v55;
  MEMORY[0x1EEE9AC00](v54, v56);
  v58 = v133 - v57;
  v182 = a2;
  v183 = v172;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  v172 = a8;
  swift_dynamicCast();
  v159 = v176;
  v181 = 0;
  LODWORD(a8) = *(a4 + Descriptor[15]);
  v59 = v49[2];
  v168 = a4;
  v151 = v49 + 2;
  v150 = v59;
  (v59)(v58, a4, Descriptor);
  v60 = 0;
  v162 = Descriptor;
  v156 = v58;
  if (a8 != 1)
  {
    goto LABEL_6;
  }

  if (*(v58 + Descriptor[12]) != 1)
  {
    v60 = 1;
    goto LABEL_6;
  }

  v61 = v49;
  v62 = *(v58 + Descriptor[9]);
  v182 = v62;
  v63 = v142;
  sub_197521AAC();
  swift_getWitnessTable();
  if (sub_197521D0C())
  {
LABEL_4:
    v60 = 1;
    Descriptor = v162;
    v58 = v156;
    v49 = v61;
    goto LABEL_6;
  }

  if (sub_197521A5C() != 1)
  {
    if (qword_1EAF2AD00 == -1)
    {
      goto LABEL_37;
    }

    goto LABEL_57;
  }

  v182 = v62;
  v106 = v164;
  sub_197521CFC();
  v107 = v41;
  if ((*(v41 + 48))(v106, 1, v63) == 1)
  {
    (*(v144 + 8))(v106, v145);
    goto LABEL_4;
  }

  v120 = *(v41 + 32);
  v121 = v157;
  v122 = v120(v157, v106, v63);
  MEMORY[0x1EEE9AC00](v122, v123);
  v129 = v171;
  v130 = v172;
  v131 = v170;
  v132 = v174;
  swift_getKeyPath();
  v83 = v142;
  sub_1974C1D0C();
  v124 = v149;
  sub_197520C5C();
  swift_getWitnessTable();
  v125 = sub_19752173C();
  v78 = *(v107 + 8);
  (v78)(v124, v83);
  Descriptor = v162;
  v58 = v156;
  if (v125)
  {
    (v78)(v121, v83);
    v60 = 1;
    v49 = v61;
  }

  else
  {
    if (qword_1EAF2AD00 != -1)
    {
      swift_once();
    }

    v126 = sub_19752157C();
    __swift_project_value_buffer(v126, qword_1EAF33E50);
    v93 = sub_19752155C();
    v127 = sub_197521DDC();
    if (os_log_type_enabled(v93, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_1973F2000, v93, v127, "returnModelsAsFutures only works with a sort of \\.persistentModelID", v128, 2u);
      MEMORY[0x19A8E1B50](v128, -1, -1);

      (v78)(v157, v83);
    }

    else
    {
LABEL_54:

      (v78)(v157, v83);
    }

    v60 = 0;
    Descriptor = v162;
    v49 = v61;
  }

  while (1)
  {
LABEL_6:
    v149 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    LODWORD(v144) = 0;
    v145 = v174 + 80;
    v157 = (v166 + 1);
    v135 = (v143 + 4);
    v64 = v146;
    v166 = (v146 + 16);
    v164 = (v146 + 32);
    v61 = (v146 + 8);
    v134 = v143 + 1;
    v133[1] = v174 + 96;
    v143 = v49 + 1;
    v139 = (v148 + 16);
    v138 = v160 - 8;
    v140 = (v148 + 8);
    v65 = v161;
    v148 = v146 + 8;
    if ((v60 & 1) == 0)
    {
      goto LABEL_14;
    }

    v66 = v136;
    v67 = v58;
    v68 = v150;
    (v150)(v136, v67, Descriptor);
    v66[Descriptor[12]] = 0;
    v69 = v153;
    sub_197404E70(&v149[v173], v153);
    v70 = v152;
    (v68)(v152, v66, Descriptor);
    v71 = v137;
    v72 = v69;
    v73 = v70;
    v75 = v170;
    v74 = v171;
    sub_197407438(v72, v73, v171, v170, v137);
    v76 = v163;
    v77 = (*(v174 + 96))(v71, v74, v75, v172);
    v78 = Descriptor;
    v79 = v76;
    if (v76)
    {
      break;
    }

    v113 = v77;
    v61 = *(v77 + 16);
    if (!v61)
    {
      AssociatedTypeWitness = v137;
LABEL_52:

      swift_unknownObjectRelease();
      (*v157)(AssociatedTypeWitness, Request);
      (*v143)(v136, v162);
LABEL_31:
      (*v143)(v156, v162);
      return;
    }

    v114 = 0;
    v115 = (v77 + 40);
    AssociatedTypeWitness = v137;
    while (v114 < *(v113 + 16))
    {
      v116 = *(v115 - 1);
      v117 = *v115;
      v118 = sub_1974028EC(v116, *v115);
      v119 = MEMORY[0x19A8E1370](v118);
      v131 = v174;
      sub_1974B9E14(v173, v116, v117, v168, v167 + 16, v171, v172, v170);
      v114 = (v114 + 1);
      objc_autoreleasePoolPop(v119);
      sub_1974028C8(v116, v117);
      v115 += 16;
      if (v61 == v114)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_57:
    swift_once();
LABEL_37:
    v108 = sub_19752157C();
    __swift_project_value_buffer(v108, qword_1EAF33E50);
    v109 = sub_19752155C();
    v110 = sub_197521DDC();
    v111 = os_log_type_enabled(v109, v110);
    v58 = v156;
    v49 = v61;
    if (v111)
    {
      v112 = swift_slowAlloc();
      *v112 = 0;
      _os_log_impl(&dword_1973F2000, v109, v110, "returnModelsAsFutures does not currently support sorting of modeled properties", v112, 2u);
      MEMORY[0x19A8E1B50](v112, -1, -1);
    }

    v60 = 0;
    Descriptor = v162;
  }

  (*v157)(v71, Request);
  (*v143)(v66, v78);
  while (1)
  {
    v80 = v160;
    v81 = v155;
    v180 = v79;
    v82 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    if (!swift_dynamicCast())
    {
LABEL_32:
      swift_unknownObjectRelease();

      (*v143)(v156, v162);
      return;
    }

    v163 = 0;
    if (v179 == 2)
    {
      v78 = v162[9];
      v90 = v156;
      if (sub_197521A5C() < 1)
      {
        v176 = 0;
        v177 = 0xE000000000000000;
        sub_1975221EC();
        MEMORY[0x19A8DFF80](0xD00000000000007ALL, 0x8000000197527680);
        sub_1975227FC();
        MEMORY[0x19A8DFF80](10, 0xE100000000000000);
        v178 = v159;
        sub_1975227FC();
        LODWORD(v132) = 0;
        goto LABEL_61;
      }

      v91 = sub_197521A1C();

      *(v90 + v78) = v91;

      v58 = v90;
      LODWORD(v144) = 1;
      Descriptor = v162;
      v65 = v161;
      v61 = v148;
    }

    else
    {
      if (v179 != 1)
      {
        goto LABEL_32;
      }

      v83 = v141;
      v58 = v156;
      (*v139)(v141, v156, v81);
      v64 = v81;
      v84 = *(v80 - 8);
      if ((*(v84 + 48))(v83, 1, v80) == 1)
      {
        goto LABEL_59;
      }

      v85 = *v140;
      (*v140)(v83, v64);
      v181 = 1;
      v85(v58, v64);
      (*(v84 + 56))(v58, 1, 1, v80);

      v64 = v146;
      Descriptor = v162;
      v65 = v161;
      v61 = v148;
    }

LABEL_14:
    v86 = v153;
    sub_197404E70(&v149[v173], v153);
    v83 = v152;
    (v150)(v152, v58, Descriptor);
    v87 = v86;
    v78 = v170;
    v88 = v171;
    sub_197407438(v87, v83, v171, v170, v65);
    v89 = v163;
    (*(v174 + 80))(v65, v88, v78, v172);
    v79 = v89;
    if (!v89)
    {
      break;
    }

    (*v157)(v65, Request);
  }

  v78 = v169;
  v92 = Result;
  (*v135)(v169, v154, Result);
  v163 = swift_allocObject();
  *(v163 + 16) = MEMORY[0x1E69E7CC0];
  v93 = *(v78 + *(v92 + 52));

  if (!sub_197521A5C())
  {
LABEL_28:

    if (v144)
    {
      MEMORY[0x1EEE9AC00](v98, v99);
      v100 = v172;
      v133[-6] = v171;
      v133[-5] = v100;
      v129 = v170;
      v130 = v174;
      v131 = v168;
      swift_beginAccess();
      sub_197521AAC();
      swift_getWitnessTable();
      swift_getWitnessTable();
      sub_19752171C();
      v98 = swift_endAccess();
    }

    v175 = v133;
    v101 = Result;
    v102 = v169;
    v176 = *(v169 + *(Result + 56));
    MEMORY[0x1EEE9AC00](v98, v99);
    v103 = v172;
    v133[-8] = v171;
    v133[-7] = v103;
    v104 = v173;
    v105 = v174;
    v133[-6] = v170;
    v133[-5] = v105;
    v129 = v104;
    v130 = v163;
    v131 = v168;
    v132 = v102;
    sub_197405108();
    sub_19752166C();

    swift_getWitnessTable();
    sub_19752195C();

    swift_unknownObjectRelease();
    (*v157)(v161, Request);

    (*v134)(v102, v101);
    goto LABEL_31;
  }

  v94 = 0;
  while (1)
  {
    v58 = sub_197521A3C();
    sub_1975219EC();
    if (v58)
    {
      (*(v64 + 16))(v175, v93 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v94, AssociatedTypeWitness);
      v78 = v94 + 1;
      if (__OFADD__(v94, 1))
      {
        goto LABEL_53;
      }

      goto LABEL_22;
    }

    v97 = sub_19752222C();
    if (v133[0] != 8)
    {
      break;
    }

    v176 = v97;
    v58 = v97;
    (*v166)(v175, &v176, AssociatedTypeWitness);
    swift_unknownObjectRelease();
    v78 = v94 + 1;
    if (__OFADD__(v94, 1))
    {
LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

LABEL_22:
    v83 = v165;
    v95 = (*v164)(v165, v175, AssociatedTypeWitness);
    v96 = MEMORY[0x19A8E1370](v95);
    sub_1974BA1A4(v173, v83, v168, v169, &v181, v167 + 16, v171, v172, v170, v174, &v176);
    v79 = 0;
    objc_autoreleasePoolPop(v96);
    (*v61)(v83, AssociatedTypeWitness);
    ++v94;
    if (v78 == sub_197521A5C())
    {
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_59:
  (*v140)(v83, v64);
  v176 = 0;
  v177 = 0xE000000000000000;
  sub_1975221EC();
  MEMORY[0x19A8DFF80](0xD00000000000007FLL, 0x8000000197527130);
  sub_1975227FC();
  MEMORY[0x19A8DFF80](10, 0xE100000000000000);
  v178 = v159;
  sub_1975227FC();
  LODWORD(v132) = 0;
LABEL_61:
  sub_1975223EC();
  __break(1u);
  objc_autoreleasePoolPop(v78);
  __break(1u);
  swift_endAccess();

  __break(1u);
}

void *sub_1974068A0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = PersistentModel.persistentModelID.getter(*(a1 + a2 - 32), *(a1 + a2 - 16), &v6);
  v5 = v7;
  *a3 = v6;
  *(a3 + 8) = v5;
  return result;
}

__n128 sub_197406900(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

void DefaultStore.fetch<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7[2] = a2;
  v7[3] = a3;
  v7[4] = a1;
  v8[0] = a2;
  v8[1] = &type metadata for DefaultSnapshot;
  v8[2] = a3;
  v8[3] = sub_197406AAC();
  Result = type metadata accessor for DataStoreFetchResult(0, v8);
  sub_197406BD8(a1, sub_197406C74, v7, Result, a4);
}

uint64_t sub_1974069EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FetchDescriptor(0, *(a4 + 16), *(a4 + 32), a4);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 52)) = (a2 - 1);
  }

  return result;
}

unint64_t sub_197406AAC()
{
  result = qword_1ED7C9400;
  if (!qword_1ED7C9400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9400);
  }

  return result;
}

uint64_t sub_197406B14(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_19752139C();
  result = sub_197521F5C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    return (*(v9 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 36)) = (a2 - 1);
  return result;
}

void sub_197406BD8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x19A8E1370]();
  sub_197464510(a1, v5, a2, a3, a4, &v12, a5);
  objc_autoreleasePoolPop(v11);
}

void *sub_197406C94(void *a1, uint64_t a2)
{
  v3 = v2;
  v4 = MEMORY[0x1E69E7CC8];
  v2[2] = MEMORY[0x1E69E7CC8];
  v2[3] = v4;
  v2[5] = a2;
  v30 = MEMORY[0x1E69E7CD0];
  if (!a1)
  {

LABEL_12:
    v24 = MEMORY[0x1E69E7CD0];
    goto LABEL_13;
  }

  v6 = [a1 relationshipKeyPathsForPrefetching];
  if (!v6)
  {

    goto LABEL_12;
  }

  v7 = v6;
  v8 = sub_1975219CC();

  v11 = *(v8 + 16);
  if (!v11)
  {

    goto LABEL_12;
  }

  v27 = a1;
  v28 = v3;
  v26[5] = v8;
  v12 = (v8 + 40);
  do
  {
    v13 = *(v12 - 1);
    v14 = *v12;
    v29[0] = 46;
    v29[1] = 0xE100000000000000;
    MEMORY[0x1EEE9AC00](v9, v10);
    v26[2] = v29;

    v16 = sub_197412C34(0x7FFFFFFFFFFFFFFFLL, 1, sub_197412FF4, v26, v13, v14, v15);
    if (v16[2])
    {
      v17 = v16[4];
      v18 = v16[5];
      v19 = v16[6];
      v20 = v16[7];

      v21 = MEMORY[0x19A8DFF20](v17, v18, v19, v20);
      v23 = v22;

      sub_197414EA0(v29, v21, v23);
    }

    v12 += 2;
    --v11;
  }

  while (v11);

  v24 = v30;
  v3 = v28;
LABEL_13:
  v3[4] = v24;
  return v3;
}

uint64_t sub_197406E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_197407130();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1975215CC();
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  v13 = v3;
  v14 = v8;
  sub_1974072C4(sub_197407CF0, v12, a2, a3);
  if (v4)
  {
  }

  else if ((*(a1 + *(type metadata accessor for FetchDescriptor(0, a2, a3, v9) + 48)) & 1) != 0 && *(v3 + 48) == 1)
  {
    swift_beginAccess();
    sub_1974BBF60(a1, *(v8 + 16), a2, a3);
    v3 = v10;
  }

  else
  {
    swift_beginAccess();
    v3 = *(v8 + 16);
  }

  return v3;
}

uint64_t sub_19740702C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  v11 = *((*(a3 + 48))(ObjectType, a3) + 72);

  v12 = sub_1973F7AAC(a6);
  if (*(v11 + 16))
  {
    sub_1973F4028(v12, v13);
    v15 = v14;

    if (v15)
    {
      return a4(a2, a3);
    }
  }

  else
  {
  }

  return result;
}

void sub_197407130()
{
  if (*(v0 + 62) == 1 && !_SD_is_mainqueue_context())
  {
    if (qword_1EAF2ACC0 != -1)
    {
      swift_once();
    }

    v1 = sub_19752157C();
    __swift_project_value_buffer(v1, qword_1EAF33DE8);

    v2 = sub_19752155C();
    v3 = sub_197521DDC();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v9 = v5;
      *v4 = 136315138;
      type metadata accessor for ModelContext(0);

      v6 = sub_1975217CC();
      v8 = sub_197462310(v6, v7, &v9);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_1973F2000, v2, v3, "%s: Unbinding from the main queue. This context was instantiated on the main queue but is being used off it. ModelContexts are not Sendable, consider using a ModelActor.", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v5);
      MEMORY[0x19A8E1B50](v5, -1, -1);
      MEMORY[0x19A8E1B50](v4, -1, -1);
    }

    sub_1974B033C();
  }
}

uint64_t sub_1974072C4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  if (*(v4 + 16))
  {
    v8 = *(v4 + 16);
  }

  else
  {
    result = swift_weakLoadStrong();
    if (!result)
    {
      goto LABEL_13;
    }

    v8 = result;
  }

  swift_beginAccess();
  v10 = *(v8 + 48);

  v11 = *(v10 + 16);
  if (!v11)
  {
  }

  v12 = 0;
  v13 = v10 + 32;
  while (v12 < *(v10 + 16))
  {
    sub_1974047F8(v13, v15, &qword_1EAF2AF38, &qword_19752C6A8);
    sub_19740702C(v15, v16, v17, a1, a2, a3);
    if (v5)
    {

      return sub_1974050A8(v15, &qword_1EAF2AF38, &qword_19752C6A8);
    }

    ++v12;
    result = sub_1974050A8(v15, &qword_1EAF2AF38, &qword_19752C6A8);
    v13 += 56;
    if (v11 == v12)
    {
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t sub_197407438@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1974074E0(a1, a5);
  v10 = *(type metadata accessor for DataStoreFetchRequest(0, a3, a4, v9) + 36);
  Descriptor = type metadata accessor for FetchDescriptor(0, a3, a4, v11);
  v13 = *(*(Descriptor - 8) + 32);

  return v13(a5 + v10, a2, Descriptor);
}

uint64_t sub_1974074E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EditingState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FetchDescriptor.init(predicate:sortBy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_19752139C();
  (*(*(v10 - 8) + 56))(a5, 1, 1, v10);
  Descriptor = type metadata accessor for FetchDescriptor(0, a3, a4, v11);
  v13 = a5 + Descriptor[10];
  v14 = a5 + Descriptor[11];
  *(a5 + Descriptor[16]) = 0;
  v15 = sub_197521F5C();
  v16 = *(v15 - 8);
  (*(v16 + 24))(a5, a1, v15);
  *(a5 + Descriptor[9]) = a2;
  *v13 = 0;
  *(v13 + 8) = 1;
  *v14 = 0;
  *(v14 + 8) = 0;
  *(a5 + Descriptor[12]) = 1;
  sub_19752228C();
  *(a5 + Descriptor[13]) = sub_197521A1C();
  v17 = sub_197521A1C();
  result = (*(v16 + 8))(a1, v15);
  *(a5 + Descriptor[14]) = v17;
  *(a5 + Descriptor[15]) = 0;
  return result;
}

void sub_1974076EC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = MEMORY[0x19A8E1370]();
  sub_1974DD97C(a1, a2, a3, a4, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

unint64_t sub_197407784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF90, &qword_19752C700);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B320, &qword_19752D4C8);
    v8 = sub_19752245C();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1974047F8(v10, v6, &qword_1EAF2AF90, &qword_19752C700);
      result = sub_1974079DC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_197520DAC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + (v14 << 6));
      v18 = *v9;
      v19 = *(v9 + 1);
      v20 = *(v9 + 3);
      v17[2] = *(v9 + 2);
      v17[3] = v20;
      *v17 = v18;
      v17[1] = v19;
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19740797C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_1974079DC(uint64_t a1)
{
  sub_197520DAC();
  v2 = MEMORY[0x1E6968B10];
  sub_197404DE0(qword_1ED7C9228, MEMORY[0x1E6968B10], MEMORY[0x1E6968B18]);
  v3 = sub_1975216AC();
  return sub_197404ED4(a1, v3, MEMORY[0x1E6968B10], &qword_1ED7C9220, v2, MEMORY[0x1E6968B20]);
}

void sub_197407AB0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = MEMORY[0x19A8E1370]();
  sub_1974DF2EC(v4, a1, a2, a3, &v9, &v10);
  objc_autoreleasePoolPop(v8);
}

void sub_197407B4C(uint64_t *a1, void *a2, uint64_t a3, void (*a4)(void), void (*a5)(uint64_t), uint64_t a6)
{
  v13 = MEMORY[0x19A8E1370]();
  sub_1974E5F50(v6, a1, a2[2], a2[3], a2[4], &v15, &v14, a3, a4, a5, a6);
  objc_autoreleasePoolPop(v13);
}

void sub_197407C0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_197407AB0(a1, a2, a3);
  if (!v3 && (v5 & 1) == 0)
  {
    v6 = v4;
    v7 = sub_1975229AC();
    v8 = [objc_opt_self() expressionForConstantValue_];
    swift_unknownObjectRelease();
    [objc_allocWithZone(MEMORY[0x1E696AB18]) initWithLeftExpression:v6 rightExpression:v8 modifier:0 type:4 options:0];
  }
}

uint64_t get_enum_tag_for_layout_string_9SwiftData19KeyPathParserResultVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void sub_197407CF0(void *a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v9 = v2[6];
  ObjectType = swift_getObjectType();
  sub_19740515C(ObjectType, a1, a2, v7, v8, v9, v5, ObjectType, v6, a2);
}

void sub_197407D70(uint64_t *a1, uint64_t a2)
{
  v4 = MEMORY[0x19A8E1370]();
  sub_1974E11C0(a1, *(a2 + 16), &v6, &v5);
  objc_autoreleasePoolPop(v4);
}

void sub_197407E40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v11 = MEMORY[0x19A8E1370]();
  sub_1974E1428(v5, a1, a2, a3, a4[2], a4[3], a4[4], &v12, a5);
  objc_autoreleasePoolPop(v11);
}

void sub_197407EE0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_197407AB0(a1, a2, a3);
  v6 = v5;
  if (!v3 && (v4 & 1) != 0)
  {
    sub_1974DEF98();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_0Tm(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_197408030(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

unint64_t sub_1974080DC(uint64_t a1, uint64_t a2)
{
  result = sub_197408100(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

unint64_t sub_197408100(uint64_t a1, uint64_t a2)
{
  v3 = sub_197520DAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_19752118C();
  v9 = *(a1 + 8);
  if (*(v9 + 16))
  {
    result = sub_1974079DC(v7);
    if (v10)
    {
      sub_197408378(*(v9 + 56) + (result << 6), v12);
      (*(v4 + 8))(v7, v3);
      v11 = v12[0];
      sub_197407F9C(v12);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_197408234@<X0>(uint64_t a1@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_197520DAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v12[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  result = sub_19752118C();
  if (*(a1 + 16))
  {
    result = sub_1974079DC(v9);
    if (v11)
    {
      sub_197408378(*(a1 + 56) + (result << 6), v12);
      (*(v6 + 8))(v9, v5);
      sub_197408478(&v12[8], a3, &qword_1EAF2BBD8, &qword_1975319B0);
      return sub_197407F9C(v12);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1974083D4@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t type metadata accessor for DefaultHistoryTransaction(uint64_t a1)
{
  result = qword_1ED7C9210;
  if (!qword_1ED7C9210)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_197408478(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1974084E0(uint64_t a1, char *a2, char *a3)
{
  v7 = MEMORY[0x19A8E1370]();
  sub_1974DD830(a1, a2, a3, &v8);
  objc_autoreleasePoolPop(v7);
  if (v3)
  {
    __break(1u);
  }
}

uint64_t sub_197408568(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_UNKNOWN **sub_1974085B0(void *a1, int a2)
{
  v3 = v2;
  LODWORD(v258) = a2;
  v259 = a1;
  v273 = *MEMORY[0x1E69E9840];
  v264 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF40, &unk_19752C6B0);
  MEMORY[0x1EEE9AC00](v264, v4);
  v263 = &v233 - v5;
  v256 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v7 = MEMORY[0x1EEE9AC00](v256, v6);
  v251 = &v233 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v253 = &v233 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v252 = &v233 - v14;
  MEMORY[0x1EEE9AC00](v13, v15);
  v255 = (&v233 - v16);
  v244 = sub_197521DFC();
  v243 = *(v244 - 1);
  MEMORY[0x1EEE9AC00](v244, v17);
  v242 = &v233 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v268 = sub_1975212CC();
  v266 = *(v268 - 8);
  v20 = MEMORY[0x1EEE9AC00](v268, v19);
  v248 = &v233 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v20, v22);
  v246 = &v233 - v24;
  v26 = MEMORY[0x1EEE9AC00](v23, v25);
  v254 = &v233 - v27;
  MEMORY[0x1EEE9AC00](v26, v28);
  v265 = &v233 - v29;
  v30 = type metadata accessor for ModelConfiguration(0);
  MEMORY[0x1EEE9AC00](v30, v31);
  v33 = &v233 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_19752157C();
  v35 = *(v34 - 1);
  MEMORY[0x1EEE9AC00](v34, v36);
  v38 = &v233 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED7C9848 != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v39 = __swift_project_value_buffer(v34, qword_1ED7CE648);
    v249 = v35;
    v40 = *(v35 + 16);
    v260 = v38;
    v40(v38, v39, v34);
    v241 = OBJC_IVAR____TtC9SwiftData12DefaultStore_container;
    v41 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
    v42 = v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration;
    v43 = objc_allocWithZone(MEMORY[0x1E695D6C8]);
    v261 = v41;
    v44 = sub_19752124C();
    v45 = [v43 initWithURL_];

    v46 = v45;
    v47 = sub_19752178C();
    [v46 setConfiguration_];

    v267 = v30;
    if (*(v42 + *(v30 + 7) + 8))
    {
      v48 = objc_allocWithZone(MEMORY[0x1E695D680]);
      v49 = sub_19752178C();
      v50 = [v48 initWithContainerIdentifier_];

      [v46 setCloudKitContainerOptions_];
    }

    v51 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan);
    if (v51)
    {
      break;
    }

    v57 = v259;
LABEL_8:
    v58 = [v57 entities];
    v236 = sub_1973F3D34(0, &qword_1ED7C9BA0, 0x1E695D5B8);
    v59 = sub_1975219CC();

    if (!(v59 >> 62))
    {
      v247 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_10;
    }

    while (1)
    {
      v247 = sub_1975220EC();
LABEL_10:
      v239 = v34;
      v262 = v3;
      v240 = v42;
      v257 = v46;
      if (!v247)
      {
        goto LABEL_32;
      }

      v60 = 0;
      v237 = OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight;
      v61 = v59 & 0xC000000000000001;
      v234 = v59 & 0xFFFFFFFFFFFFFF8;
      v233 = v59 + 32;
      v62 = &off_1E74AD000;
      v34 = &off_1E74AD000;
      v238 = v59;
      v235 = v59 & 0xC000000000000001;
LABEL_12:
      if (v61)
      {
        v63 = MEMORY[0x19A8E0960](v60, v59);
      }

      else
      {
        if (v60 >= *(v234 + 16))
        {
          __break(1u);
          goto LABEL_144;
        }

        v63 = *(v233 + 8 * v60);
      }

      v59 = v63;
      if (!__OFADD__(v60++, 1))
      {
        break;
      }

      __break(1u);
    }

    v65 = [v63 v62[379]];
    sub_1973F3D34(0, &qword_1ED7C9B98, 0x1E695D6D8);
    v35 = sub_1975219CC();

    v245 = v59;
    v30 = (v35 & 0xFFFFFFFFFFFFFF8);
    if (v35 >> 62)
    {
      v66 = sub_1975220EC();
    }

    else
    {
      v66 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v38 = 0;
    v33 = v35 & 0xC000000000000001;
    while (1)
    {
      if (v66 == v38)
      {

        v3 = v262;
        v57 = v259;
        v42 = v240;
        v46 = v257;
        v59 = v238;
        if (*(v262 + v237))
        {
          goto LABEL_32;
        }

        v61 = v235;
        v62 = &off_1E74AD000;
        if (v60 == v247)
        {
          goto LABEL_32;
        }

        goto LABEL_12;
      }

      if (v33)
      {
        v67 = MEMORY[0x19A8E0960](v38, v35);
      }

      else
      {
        if (v38 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_135;
        }

        v67 = *(v35 + 8 * v38 + 32);
      }

      v68 = v67;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      v3 = [v67 isIndexedBySpotlight];

      ++v38;
      if (v3)
      {

        v3 = v262;
        *(v262 + v237) = 1;
        v57 = v259;
        v42 = v240;
        v46 = v257;
LABEL_32:

        v34 = v261;
        v69 = [v261 persistentStoreCoordinator];
        v270 = 0;
        v70 = [v69 _removeAllPersistentStores_];

        v71 = v270;
        if (!v70)
        {
          goto LABEL_149;
        }

        v72 = v268;
        if (*(v3 + 41) == 1)
        {
          sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
          v73 = v71;
          v74 = sub_197521F1C();
          [v46 setOption:v74 forKey:*MEMORY[0x1E695D458]];
        }

        else
        {
          v81 = v270;
        }

        sub_1973F3D34(0, &qword_1ED7C9B88, 0x1E696AD98);
        v82 = sub_197521F1C();
        [v46 setOption:v82 forKey:*MEMORY[0x1E695D3C0]];

        v71 = sub_197521F1C();
        [v46 setOption:v71 forKey:*MEMORY[0x1E695D430]];

        if (*(v42 + *(v267 + 13)) == 1)
        {
          v71 = sub_197521F1C();
          [v46 setOption:v71 forKey:*MEMORY[0x1E695D498]];
        }

        v83 = v262;
        if (*(v42 + *(v267 + 14)) != 1)
        {
          v42 = v266;
          goto LABEL_60;
        }

        v84 = [v46 URL];
        v42 = v266;
        if (!v84)
        {
          goto LABEL_148;
        }

        v85 = v84;
        v86 = v254;
        sub_19752127C();

        v87 = v265;
        (*(v42 + 32))(v265, v86, v72);
        v88 = objc_opt_self();
        v89 = [v88 defaultManager];
        sub_19752128C();
        v90 = sub_19752178C();

        LOBYTE(v86) = [v89 fileExistsAtPath_];

        if (v86)
        {
          (*(v42 + 8))(v87, v72);
        }

        else
        {
          LOWORD(v270) = 256;
          v271 = 0;
          v272 = 0;
          v91 = v246;
          sub_1974A18AC(v246, 0, &v270);

          v92 = *(v262 + 24);
          v270 = *(v262 + 16);
          v271 = v92;

          MEMORY[0x19A8DFF80](0x65726F74732ELL, 0xE600000000000000);
          sub_19752125C();

          sub_197413CBC(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          if (sub_19752173C())
          {
            v93 = *(v42 + 8);
            v93(v91, v72);
            v93(v87, v72);
          }

          else
          {
            v109 = [v88 defaultManager];
            sub_19752128C();
            v110 = v91;
            v111 = sub_19752178C();

            v112 = [v109 fileExistsAtPath_];

            if (v112)
            {
              v113 = [v88 defaultManager];
              v114 = v248;
              sub_19752126C();
              sub_19752128C();
              v115 = v72;
              v116 = *(v42 + 8);
              v116(v114, v115);
              v117 = sub_19752178C();

              v118 = [v113 fileExistsAtPath_];

              v267 = v116;
              v254 = (v42 + 8);
              if ((v118 & 1) == 0)
              {
                v119 = [v88 defaultManager];
                sub_19752126C();
                sub_19752128C();
                v116(v114, v268);
                v120 = sub_19752178C();

                v270 = 0;
                v121 = [v119 createDirectoryAtPath:v120 withIntermediateDirectories:1 attributes:0 error:&v270];

                if (v121)
                {
                  v122 = v270;
                }

                else
                {
                  v213 = v270;
                  v214 = sub_1975211DC();

                  swift_willThrow();
                  v250 = 0;
                }
              }

              v34 = v261;
              v83 = v262;
              v46 = v257;
              v215 = v246;
              v216 = v244;
              v217 = v243;
              v218 = v242;
              v219 = [*(v262 + v241) persistentStoreCoordinator];
              sub_197521DEC();
              v220 = v250;
              sub_197521ECC();
              if (v220)
              {

                (*(v217 + 8))(v218, v216);
                v250 = 0;
              }

              else
              {
                v250 = 0;
                (*(v217 + 8))(v218, v216);
              }

              v221 = sub_19752155C();
              v222 = sub_197521DCC();
              v223 = os_log_type_enabled(v221, v222);
              v224 = v267;
              if (v223)
              {
                v225 = swift_slowAlloc();
                *v225 = 0;
                _os_log_impl(&dword_1973F2000, v221, v222, "Moved default store into new location", v225, 2u);
                v226 = v225;
                v83 = v262;
                MEMORY[0x19A8E1B50](v226, -1, -1);
              }

              v227 = v268;
              v224(v215, v268);
              v224(v265, v227);
              v42 = v266;
              v57 = v259;
LABEL_60:
              v124 = *(v83 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription);
              *(v83 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription) = v46;
              v125 = v46;

              v126 = [v34 persistentStoreDescriptions];
              sub_1973F3D34(0, &qword_1ED7C9B90, 0x1E695D6C8);
              v3 = sub_1975219CC();

              v270 = v3;
              MEMORY[0x19A8E00D0]();
              if (*((v270 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v270 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                v3 = *((v270 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_1975219FC();
              }

              sub_197521A4C();
              v127 = sub_1975219BC();

              [v34 setPersistentStoreDescriptions_];

              v128 = sub_19752155C();
              v129 = sub_197521DCC();

              v130 = os_log_type_enabled(v128, v129);
              v265 = v125;
              if (v130)
              {
                v131 = v57;
                v3 = swift_slowAlloc();
                v132 = swift_slowAlloc();
                v270 = v132;
                *v3 = 136315138;
                v133 = [v125 URL];
                if (v133)
                {
                  v134 = v133;
                  sub_19752127C();
                }

                (*(v42 + 56))();
                v135 = sub_1975217CC();
                v137 = sub_197462310(v135, v136, &v270);

                *(v3 + 4) = v137;
                v42 = v266;
                _os_log_impl(&dword_1973F2000, v128, v129, "Store URL - %s", v3, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v132);
                MEMORY[0x19A8E1B50](v132, -1, -1);
                MEMORY[0x19A8E1B50](v3, -1, -1);

                v57 = v131;
              }

              else
              {
              }

              if (v258)
              {
                goto LABEL_102;
              }

              v270 = 0;
              v138 = [v34 load_];
              v139 = v270;
              if (v138)
              {
                v140 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
                v141 = *(v262 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager);
                if (v141 && (type metadata accessor for DefaultMigrationManager(0), (v142 = swift_dynamicCastClass()) != 0))
                {
                  v143 = *(v142 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager);
                  *(v142 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager) = 0;
                  v144 = v139;

                  v145 = v262;
                  v141 = *(v262 + v140);
                }

                else
                {
                  v149 = v139;
                  v145 = v262;
                }

                *(v145 + v140) = 0;

                if (*(v145 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) == 1)
                {
                  v150 = v265;
                  v151 = [v34 persistentStoreCoordinator];
                  v152 = [objc_allocWithZone(type metadata accessor for SwiftDataSpotlightDelegate()) initForStoreWithDescription:v150 coordinator:v151];

                  [v152 startSpotlightIndexing];
                }

                v153 = [v34 persistentStoreCoordinator];
                v154 = [v153 persistentStores];

                sub_1973F3D34(0, &qword_1ED7C9BA8, 0x1E695D6B8);
                v3 = sub_1975219CC();

                if (!(v3 >> 62))
                {
                  v155 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_79:
                  v147 = v253;
                  v156 = v252;
                  if (v155)
                  {
                    if (v155 >= 1)
                    {
                      v157 = 0;
                      v245 = OBJC_IVAR____TtC9SwiftData12DefaultStore_store;
                      v256 = v3 & 0xC000000000000001;
                      v158 = (v42 + 56);
                      v159 = (v42 + 48);
                      v244 = (v42 + 32);
                      v247 = (v42 + 8);
                      v160 = &off_1E74AD000;
                      v161 = v265;
                      v258 = v3;
                      v257 = v155;
                      v255 = v158;
                      v254 = v159;
                      while (1)
                      {
                        if (v256)
                        {
                          v166 = MEMORY[0x19A8E0960](v157, v3);
                        }

                        else
                        {
                          v166 = *(v3 + 8 * v157 + 32);
                        }

                        v167 = v160[326];
                        v267 = v166;
                        v168 = [v166 v167];
                        if (v168)
                        {
                          v169 = v168;
                          sub_19752127C();

                          v170 = 0;
                        }

                        else
                        {
                          v170 = 1;
                        }

                        v171 = *v158;
                        v172 = 1;
                        (*v158)(v156, v170, 1, v268);
                        v173 = [v161 v160[326]];
                        v266 = v157;
                        if (v173)
                        {
                          v174 = v173;
                          sub_19752127C();

                          v172 = 0;
                        }

                        v175 = v268;
                        v171(v147, v172, 1, v268);
                        v176 = v263;
                        v177 = *(v264 + 48);
                        sub_1973FE0E4(v156, v263, &qword_1EAF2AE78, &qword_19752C290);
                        sub_1973FE0E4(v147, v176 + v177, &qword_1EAF2AE78, &qword_19752C290);
                        v178 = *v254;
                        if ((*v254)(v176, 1, v175) == 1)
                        {
                          sub_19740C044(v147, &qword_1EAF2AE78, &qword_19752C290);
                          sub_19740C044(v156, &qword_1EAF2AE78, &qword_19752C290);
                          v179 = v178(v176 + v177, 1, v175);
                          v3 = v258;
                          v161 = v265;
                          v180 = v266;
                          if (v179 != 1)
                          {
                            goto LABEL_97;
                          }

                          sub_19740C044(v176, &qword_1EAF2AE78, &qword_19752C290);
                          v162 = v262;
                          v163 = v257;
                          v158 = v255;
                        }

                        else
                        {
                          v181 = v251;
                          sub_1973FE0E4(v176, v251, &qword_1EAF2AE78, &qword_19752C290);
                          if (v178(v176 + v177, 1, v175) == 1)
                          {
                            v147 = v253;
                            sub_19740C044(v253, &qword_1EAF2AE78, &qword_19752C290);
                            v182 = v252;
                            sub_19740C044(v252, &qword_1EAF2AE78, &qword_19752C290);
                            v183 = v181;
                            v156 = v182;
                            (*v247)(v183, v175);
                            v161 = v265;
                            v180 = v266;
                            v3 = v258;
LABEL_97:
                            sub_19740C044(v176, &qword_1EAF2AF40, &unk_19752C6B0);
                            v163 = v257;
                            v158 = v255;
LABEL_98:
                            v164 = v267;
                            goto LABEL_83;
                          }

                          v184 = v248;
                          (*v244)(v248, v176 + v177, v175);
                          sub_197413CBC(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
                          LODWORD(v246) = sub_19752173C();
                          v185 = *v247;
                          (*v247)(v184, v175);
                          v147 = v253;
                          sub_19740C044(v253, &qword_1EAF2AE78, &qword_19752C290);
                          v186 = v252;
                          sub_19740C044(v252, &qword_1EAF2AE78, &qword_19752C290);
                          v187 = v181;
                          v156 = v186;
                          v185(v187, v175);
                          sub_19740C044(v176, &qword_1EAF2AE78, &qword_19752C290);
                          v162 = v262;
                          v161 = v265;
                          v180 = v266;
                          v3 = v258;
                          v163 = v257;
                          v158 = v255;
                          if ((v246 & 1) == 0)
                          {
                            goto LABEL_98;
                          }
                        }

                        v164 = *&v245[v162];
                        *&v245[v162] = v267;
LABEL_83:
                        v157 = v180 + 1;

                        v165 = v163 == v157;
                        v160 = &off_1E74AD000;
                        if (v165)
                        {
                          goto LABEL_101;
                        }
                      }
                    }

                    __break(1u);
LABEL_146:
                    swift_once();
LABEL_125:
                    v200 = &byte_1EAF2B7A0;
LABEL_126:
                    v208 = *v200;
                    v210 = *(v200 + 1);
                    v209 = *(v200 + 2);
                    sub_19744BE3C();
                    swift_allocError();
                    *v211 = v208;
                    *(v211 + 8) = v210;
                    *(v211 + 16) = v209;
                    swift_willThrow();

                    v212 = v261;

                    (v34[1])(v260, v42);
                    return v212;
                  }

LABEL_101:

                  v57 = v259;
LABEL_102:
                  v188 = [v57 entities];
                  v33 = sub_1975219CC();

                  if (v33 >> 62)
                  {
                    v38 = sub_1975220EC();
                    if (v38)
                    {
LABEL_104:
                      v35 = 0;
                      v34 = (v33 & 0xFFFFFFFFFFFFFF8);
                      v30 = &off_1E74AD000;
                      while (1)
                      {
                        if ((v33 & 0xC000000000000001) != 0)
                        {
                          v189 = MEMORY[0x19A8E0960](v35, v33);
                        }

                        else
                        {
                          if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                          {
                            goto LABEL_137;
                          }

                          v189 = *(v33 + 8 * v35 + 32);
                        }

                        v3 = v189;
                        v190 = v35 + 1;
                        if (__OFADD__(v35, 1))
                        {
                          goto LABEL_136;
                        }

                        v191 = [v189 name];
                        if (!v191)
                        {
                          break;
                        }

                        v192 = v191;

                        ++v35;
                        if (v190 == v38)
                        {
                          goto LABEL_112;
                        }
                      }

                      v270 = 0;
                      v271 = 0xE000000000000000;
                      sub_1975221EC();
                      MEMORY[0x19A8DFF80](0xD000000000000045, 0x80000001975242A0);
                      sub_197413CBC(&qword_1EAF2ACC8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
                      v228 = sub_1975227DC();
                      MEMORY[0x19A8DFF80](v228);

                      MEMORY[0x19A8DFF80](2618, 0xE200000000000000);
                      v71 = [v3 description];
                      v229 = sub_1975217BC();
                      v231 = v230;

                      MEMORY[0x19A8DFF80](v229, v231);

                      while (1)
                      {
LABEL_148:
                        sub_1975223EC();
                        __break(1u);
LABEL_149:
                        v232 = v71;
                        v71 = sub_1975211DC();

                        swift_willThrow();
                        swift_unexpectedError();
                        __break(1u);
                      }
                    }
                  }

                  else
                  {
                    v38 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    if (v38)
                    {
                      goto LABEL_104;
                    }
                  }

LABEL_112:

                  (*(v249 + 8))(v260, v239);
                  return v261;
                }

LABEL_144:
                v155 = sub_1975220EC();
                goto LABEL_79;
              }

              v146 = v270;
              v147 = sub_1975211DC();

              swift_willThrow();
              v269 = v147;
              v148 = v147;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
              if (swift_dynamicCast())
              {

                swift_willThrow();

                (*(v249 + 8))(v260, v239);
                return v34;
              }

              swift_getErrorValue();
              v194 = sub_1975229EC();
              v196 = v195;
              v197 = sub_1975217BC();
              v42 = v239;
              v34 = v249;
              if (v194 == v197 && v196 == v198)
              {
              }

              else
              {
                v199 = sub_19752282C();

                if ((v199 & 1) == 0)
                {
                  goto LABEL_122;
                }
              }

              swift_getErrorValue();
              if (sub_1975229DC() == 134506)
              {
                if (qword_1EAF2AD78 != -1)
                {
                  swift_once();
                }

                v200 = &byte_1EAF2B7E8;
                goto LABEL_126;
              }

LABEL_122:
              v201 = v147;
              v202 = sub_19752155C();
              v203 = sub_197521DDC();

              if (os_log_type_enabled(v202, v203))
              {
                v204 = swift_slowAlloc();
                v205 = swift_slowAlloc();
                *v204 = 138412290;
                v206 = v147;
                v207 = _swift_stdlib_bridgeErrorToNSError();
                *(v204 + 4) = v207;
                *v205 = v207;
                _os_log_impl(&dword_1973F2000, v202, v203, "Unresolved error loading container %@", v204, 0xCu);
                sub_19740C044(v205, &qword_1EAF2AF48, &unk_19752FBB0);
                MEMORY[0x19A8E1B50](v205, -1, -1);
                MEMORY[0x19A8E1B50](v204, -1, -1);
              }

              if (qword_1EAF2AD60 == -1)
              {
                goto LABEL_125;
              }

              goto LABEL_146;
            }

            v123 = *(v42 + 8);
            v123(v110, v72);
            v123(v265, v72);
          }
        }

        v34 = v261;
        v83 = v262;
        v57 = v259;
        v46 = v257;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    swift_once();
  }

  v52 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan + 8);
  sub_19740B324(v42, v33, type metadata accessor for ModelConfiguration);
  v53 = objc_allocWithZone(type metadata accessor for DefaultMigrationManager(0));

  v55 = v250;
  v56 = sub_19746D78C(v54, v51, v52, v33);
  if (v55)
  {
    (*(v249 + 8))(v260, v34);

    v34 = v261;
    return v34;
  }

  v75 = *&v56[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError];
  v57 = v259;
  if (!v75)
  {
    v250 = 0;
    v94 = *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager);
    *(v3 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager) = v56;
    v95 = v56;

    [v46 setOption:v95 forKey:*MEMORY[0x1E695D440]];
    goto LABEL_8;
  }

  v76 = v56;
  v269 = *&v56[OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_caughtError];
  v77 = v75;
  v78 = v75;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
  if (swift_dynamicCast())
  {

    swift_willThrow();

    v79 = v261;
    v80 = v34;
    v34 = v79;
    (*(v249 + 8))(v260, v80);
  }

  else
  {
    v96 = v75;
    v97 = sub_19752155C();
    v98 = sub_197521DDC();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      *v99 = 138412290;
      v101 = v75;
      v102 = _swift_stdlib_bridgeErrorToNSError();
      *(v99 + 4) = v102;
      *v100 = v102;
      _os_log_impl(&dword_1973F2000, v97, v98, "Unresolved error loading container %@", v99, 0xCu);
      sub_19740C044(v100, &qword_1EAF2AF48, &unk_19752FBB0);
      MEMORY[0x19A8E1B50](v100, -1, -1);
      MEMORY[0x19A8E1B50](v99, -1, -1);
    }

    if (qword_1EAF2AD60 != -1)
    {
      swift_once();
    }

    v103 = byte_1EAF2B7A0;
    v105 = qword_1EAF2B7A8;
    v104 = unk_1EAF2B7B0;
    sub_19744BE3C();
    swift_allocError();
    *v106 = v103;
    *(v106 + 8) = v105;
    *(v106 + 16) = v104;
    swift_willThrow();

    v107 = v261;

    v108 = v34;
    v34 = v107;
    (*(v249 + 8))(v260, v108);
  }

  return v34;
}

int *sub_19740A694(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = v45 - v9;
  *(v4 + 40) = 0;
  v11 = OBJC_IVAR____TtC9SwiftData12DefaultStore_requestedStoreURL;
  v12 = sub_1975212CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 56);
  v48 = v11;
  v46 = v14;
  v14((v5 + v11), 1, 1, v12);
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store) = 0;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_errorOnLoad) = 0;
  v47 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager) = 0;
  v15 = (v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationPlan);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore__managedObjectContextFactory);
  v17 = type metadata accessor for DefaultStore.DefaultManagedObjectContextFactory();
  v18 = swift_allocObject();
  v16[3] = v17;
  v16[4] = &off_1F0BA5A68;
  *v16 = v18;
  v19 = OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v5 + v19) = v20;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier) = MEMORY[0x1E69E7CC8];
  result = type metadata accessor for ModelConfiguration(0);
  v22 = (a1 + result[5]);
  v23 = v22[1];
  *(v5 + 16) = *v22;
  *(v5 + 24) = v23;
  v24 = *(a1 + result[10]);
  if (!v24)
  {
    goto LABEL_18;
  }

  *(v5 + 32) = v24;
  *(v5 + 40) = *(a1 + result[12]);
  *(v5 + 41) = (*(a1 + result[11]) & 1) == 0;
  v25 = *(v13 + 16);
  v45[0] = a1;
  v25(v10, a1, v12);
  v46(v10, 0, 1, v12);
  v26 = v48;
  swift_beginAccess();

  sub_197420984(v10, v5 + v26, &qword_1EAF2AE78, &qword_19752C290);
  swift_endAccess();
  v27 = v50;
  *v15 = v49;
  v15[1] = v27;
  v28 = *(v5 + v47);
  *(v5 + v47) = 0;

  v29 = v51;
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) = v51;
  v30 = *(v5 + 32);
  v31 = v29;

  result = [v31 persistentStoreCoordinator];
  v32 = result;
  v33 = *(v30 + 64);
  if (v33 >> 62)
  {
    result = sub_1975220EC();
    v34 = result;
    if (result)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_4:
      if (v34 >= 1)
      {
        for (i = 0; i != v34; ++i)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            MEMORY[0x19A8E0960](i, v33);
          }

          else
          {
          }

          sub_19750E574();
        }

        goto LABEL_11;
      }

      __break(1u);
LABEL_18:
      __break(1u);
      return result;
    }
  }

LABEL_11:

  v36 = v45[0];
  v37 = sub_19740B324(v45[0], v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_configuration, type metadata accessor for ModelConfiguration);
  v38 = MEMORY[0x19A8E1370](v37);
  v39 = [*(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) managedObjectModel];
  v40 = *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model);
  *(v5 + OBJC_IVAR____TtC9SwiftData12DefaultStore_model) = v39;
  v41 = v39;

  v42 = v45[1];
  v43 = sub_1974085B0(v41, 0);
  if (v42)
  {

    objc_autoreleasePoolPop(v38);
    sub_19740AB48(v36, type metadata accessor for ModelConfiguration);
  }

  else
  {
    v44 = v43;

    objc_autoreleasePoolPop(v38);
    sub_19740C0A4();
    sub_19740AB48(v36, type metadata accessor for ModelConfiguration);
  }

  return v5;
}

uint64_t sub_19740AB48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

int *sub_19740ABA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v5 = type metadata accessor for ModelConfiguration(0);
  v6 = *(v5 - 8);
  v8 = MEMORY[0x1EEE9AC00](v5, v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + *(v8 + 60)))
  {
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AFF8, &unk_19752D470);
  v11 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_19752C280;
  sub_19740B324(a1, v12 + v11, type metadata accessor for ModelConfiguration);

  v14 = sub_19741A1AC(v13, v12);
  swift_setDeallocating();
  sub_19740AB48(v12 + v11, type metadata accessor for ModelConfiguration);
  swift_deallocClassInstance();
  if (!v14)
  {
    __break(1u);
LABEL_8:
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000031, 0x8000000197524750);
    MEMORY[0x19A8DFF80](0x6E6F436C65646F4DLL, 0xEE0072656E696174);
    result = sub_1975223EC();
    __break(1u);
    return result;
  }

  if (*(a1 + *(v5 + 28) + 8))
  {
    v15 = 0x1E695D668;
  }

  else
  {
    v15 = 0x1E695D688;
  }

  v16 = objc_allocWithZone(*v15);
  v17 = sub_19752178C();
  v18 = [v16 initWithName:v17 managedObjectModel:v14];

  sub_1973F3D34(0, &qword_1ED7C9B90, 0x1E695D6C8);
  v19 = v18;
  v20 = sub_1975219BC();
  [v19 setPersistentStoreDescriptions_];

  sub_19740B324(a1, v10, type metadata accessor for ModelConfiguration);
  type metadata accessor for DefaultStore(0);
  swift_allocObject();
  v21 = sub_19740A694(v10, a2, v24, v19);

  sub_19740AB48(a1, type metadata accessor for ModelConfiguration);
  return v21;
}

int *sub_19740AF04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a4;
  v42 = a6;
  v43 = a3;
  v41 = a2;
  v46 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  v9 = MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v11 = &v40 - v10;
  v12 = *(a5 - 8);
  v14 = MEMORY[0x1EEE9AC00](v9, v13);
  v40 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v40 - v17;
  v19 = type metadata accessor for ModelConfiguration(0);
  v20 = *(v19 - 8);
  v22 = MEMORY[0x1EEE9AC00](v19, v21);
  v24 = &v40 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v40 - v26;
  v28 = *(v12 + 16);
  v28(v18, v46, a5);
  v29 = swift_dynamicCast();
  v30 = *(v20 + 56);
  if (v29)
  {
    v30(v11, 0, 1, v19);
    sub_19740B38C(v11, v27);
    v31 = *(v19 + 60);
    v32 = v41;

    *&v27[v31] = v32;
    sub_19741598C(v27, v24);
    v33 = v45;
    v34 = sub_19740ABA8(v24, v43, v44);
    if (v33)
    {
      return sub_19740B2C8(v27);
    }

    else
    {
      v39 = v34;
      sub_197413D04(&qword_1ED7C9B80, type metadata accessor for DefaultStore, &protocol conformance descriptor for DefaultStore);
      sub_19740B2C8(v27);
      return v39;
    }
  }

  else
  {
    v30(v11, 1, 1, v19);
    sub_1974454C0(v11, &qword_1EAF2AF30, &qword_19752C6A0);
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v37 = v40;
    v28(v40, v46, a5);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return (*(AssociatedConformanceWitness + 64))(v37, v43, v44, AssociatedTypeWitness, AssociatedConformanceWitness);
  }
}

uint64_t sub_19740B2C8(uint64_t a1)
{
  v2 = type metadata accessor for ModelConfiguration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_19740B324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_19740B38C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelConfiguration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ModelContext.__allocating_init(_:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_19740B6EC(a1);

  return v2;
}

uint64_t DefaultStore.initializeState(for:)(uint64_t a1)
{
  v3 = sub_19752135C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v5);
  v7 = &v20[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v7, a1, v3);
  v8 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container);
  v9 = objc_allocWithZone(MEMORY[0x1E695D628]);
  v10 = v8;
  v11 = [v9 initWithConcurrencyType_];
  v12 = [v10 persistentStoreCoordinator];
  [v11 setPersistentStoreCoordinator_];

  v13 = [objc_opt_self() mergeByPropertyObjectTrumpMergePolicy];
  [v11 setMergePolicy_];

  [v11 set:1 isSwiftBound:?];
  type metadata accessor for DefaultStore.EditingContext();
  v14 = swift_allocObject();
  *(v14 + 16) = v11;
  type metadata accessor for DefaultStore.FutureCache();
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E7CC8];
  v15[2] = MEMORY[0x1E69E7CC8];
  v15[3] = v16;
  v15[4] = v16;
  v15[5] = v16;
  v15[6] = v16;
  v15[7] = v16;
  *(v14 + 24) = v15;
  v17 = *(v1 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
  v24 = v1;
  v25 = v7;
  v26 = v14;
  v21 = sub_19740D8F8;
  v22 = &v23;
  v18 = v11;

  os_unfair_lock_lock(v17 + 4);
  sub_19740D8D0();
  os_unfair_lock_unlock(v17 + 4);

  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_19740B6EC(uint64_t a1)
{
  v3 = type metadata accessor for EditingState(0);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3, v5);
  v47 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF30, &qword_19752C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v45 = &v39 - v9;
  v46 = type metadata accessor for ModelConfiguration(0);
  v10 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v11);
  v43 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 0;
  swift_weakInit();
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1;
  *(v1 + 57) = 0;
  v13 = MEMORY[0x1E69E7CD0];
  *(v1 + 64) = 0;
  *(v1 + 72) = v13;
  *(v1 + 80) = v13;
  *(v1 + 88) = v13;
  *(v1 + 96) = v13;
  *(v1 + 104) = v13;
  *(v1 + 112) = v13;
  *(v1 + 120) = v13;
  *(v1 + 128) = v13;
  *(v1 + 136) = v13;
  v14 = MEMORY[0x1E69E7CC8];
  *(v1 + 144) = 0;
  *(v1 + 152) = v14;
  *(v1 + 160) = v14;
  *(v1 + 168) = v14;
  *(v1 + 176) = 0;
  *(v1 + 180) = 0;
  v15 = v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  *(v1 + 184) = 0;
  sub_19752134C();
  v16 = (v15 + *(v4 + 28));
  *v16 = 0;
  v16[1] = 0;
  *(v15 + *(v4 + 32)) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_AUTOSAVE_MAX_TIME) = 0x4022000000000000;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_contextChanged) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext__allowTemporaryLookup) = 0;
  v40 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled) = 0;
  *(v1 + OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration) = v14;
  _SD_Initialize_framework();
  *(v1 + 16) = a1;

  swift_beginAccess();
  v17 = *(a1 + 48);
  v18 = *(v17 + 16);
  if (v18)
  {
    v41 = *(a1 + 48);
    v42 = v1;
    *(v1 + 62) = 0;
    v19 = v17 + 32;

    swift_beginAccess();
    v48 = 0;
    v44 = (v10 + 56);
    do
    {
      sub_1974047F8(v19, v50, &qword_1EAF2AF38, &qword_19752C6A8);
      v23 = v50[6];
      ObjectType = swift_getObjectType();
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v26);
      (*(v23 + 56))(ObjectType, v23);
      v27 = v45;
      v28 = v46;
      v29 = swift_dynamicCast();
      v30 = *v44;
      if (v29)
      {
        v30(v27, 0, 1, v28);
        v20 = v43;
        sub_19740B38C(v27, v43);
        v21 = *(v20 + *(v28 + 52));
        sub_19740BE74(v20, type metadata accessor for ModelConfiguration);
        v48 |= v21;
      }

      else
      {
        v30(v27, 1, 1, v28);
        sub_1974050A8(v27, &qword_1EAF2AF30, &qword_19752C6A0);
      }

      v22 = v47;
      sub_197404E70(v15, v47);
      (*(v23 + 112))(v22, ObjectType, v23);
      swift_unknownObjectRelease();
      sub_19740BE74(v22, type metadata accessor for EditingState);
      sub_197414BEC(v50);
      v19 += 56;
      --v18;
    }

    while (v18);

    if (qword_1ED7C9B60 != -1)
    {
      swift_once();
    }

    v31 = qword_1ED7CE668;
    v32 = unk_1ED7CE670;
    v33 = v42;
    if ((qword_1ED7CE668 != 0x65666E6969726973 || unk_1ED7CE670 != 0xEE006465636E6572) && (sub_19752282C() & 1) == 0 && (v31 != 0xD000000000000014 || 0x8000000197527D00 != v32) && (sub_19752282C() & 1) == 0 && _SD_is_mainqueue_context() | v48 & 1 && (*(v33 + 62) & 1) == 0)
    {
      v34 = v40;
      swift_beginAccess();
      *(v33 + v34) = 1;
      sub_19740E114();
      if ([objc_opt_self() isMainThread])
      {
        if (_CFRunLoopCurrentIsMain())
        {
          v35 = [objc_opt_self() mainRunLoop];
          v36 = swift_allocObject();
          swift_weakInit();

          v37 = sub_19745F87C(0xA0uLL, sub_1974C1DB4, v36);

          *(v33 + 32) = v37;
        }
      }

      sub_19740E114();
      *(v33 + 62) = 1;
    }

    return v33;
  }

  else
  {
    v50[0] = 0;
    v50[1] = 0xE000000000000000;
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000029, 0x8000000197527CD0);
    v49 = a1;
    type metadata accessor for ModelContainer();
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19740BE14()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_19740BE74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t DefaultStore.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9SwiftData12DefaultStore_store);
  if (v1 && (v2 = [v1 identifier]) != 0)
  {
    v3 = v2;
    v4 = sub_1975217BC();

    return v4;
  }

  else
  {
    sub_1975221EC();
    MEMORY[0x19A8DFF80](0xD000000000000052, 0x80000001975239B0);
    sub_19752235C();
    result = sub_1975223EC();
    __break(1u);
  }

  return result;
}

uint64_t sub_19740C044(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_19740C0A4()
{
  v2 = v0;
  v107[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1975212CC();
  v105 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v90 = v87 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF40, &unk_19752C6B0);
  MEMORY[0x1EEE9AC00](v100, v6);
  v8 = v87 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE78, &qword_19752C290);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v13 = v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v101 = v87 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15, v17);
  v102 = v87 - v19;
  MEMORY[0x1EEE9AC00](v18, v20);
  v93 = v87 - v21;
  v22 = OBJC_IVAR____TtC9SwiftData12DefaultStore_container;
  v103 = v2;
  v23 = [*(v2 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
  v24 = [v23 persistentStores];

  sub_1973F3D34(0, &qword_1ED7C9BA8, 0x1E695D6B8);
  v25 = sub_1975219CC();

  if (v25 >> 62)
  {
    v26 = sub_1975220EC();
  }

  else
  {
    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v26)
  {
    return;
  }

  v92 = v13;
  v27 = v103;
  v28 = *(v103 + v22);
  v107[0] = 0;
  v29 = [v28 load_];
  v30 = v107[0];
  if (!v29)
  {
    v38 = v107[0];
    v39 = sub_1975211DC();

    swift_willThrow();
    v107[0] = v39;
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AE98, &unk_19752E9E0);
    sub_1973F3D34(0, &qword_1EAF2AEA0, 0x1E696ABC0);
    if (!swift_dynamicCast())
    {
LABEL_18:

      return;
    }

    v41 = v106;
    v42 = [v106 domain];
    v43 = sub_1975217BC();
    v45 = v44;

    if (v43 == sub_1975217BC() && v45 == v46)
    {
    }

    else
    {
      v48 = sub_19752282C();

      if ((v48 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    if ([v41 code] == 134506)
    {
      if (qword_1EAF2AD78 == -1)
      {
LABEL_16:
        v49 = byte_1EAF2B7E8;
        v51 = qword_1EAF2B7F0;
        v50 = unk_1EAF2B7F8;
        sub_19744BE3C();
        swift_allocError();
        *v52 = v49;
        *(v52 + 8) = v51;
        *(v52 + 16) = v50;
        swift_willThrow();

        goto LABEL_18;
      }

LABEL_54:
      swift_once();
      goto LABEL_16;
    }

LABEL_17:
    swift_willThrow();
    goto LABEL_18;
  }

  v87[1] = v1;
  v31 = OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager;
  v32 = *(v27 + OBJC_IVAR____TtC9SwiftData12DefaultStore_migrationManager);
  if (v32)
  {
    type metadata accessor for DefaultMigrationManager(0);
    v33 = swift_dynamicCastClass();
    v34 = v101;
    if (v33)
    {
      v35 = *(v33 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager);
      *(v33 + OBJC_IVAR____TtC9SwiftData23DefaultMigrationManager_migrationManager) = 0;
      v36 = v30;

      v37 = v103;
      v32 = *(v103 + v31);
    }

    else
    {
      v53 = v30;
      v37 = v103;
    }
  }

  else
  {
    v47 = v107[0];
    v37 = v103;
    v34 = v101;
  }

  *(v37 + v31) = 0;

  v41 = &unk_1ED7CE000;
  if (*(v37 + OBJC_IVAR____TtC9SwiftData12DefaultStore_hasSpotlight) == 1)
  {
    v54 = *(v37 + OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription);
    if (v54)
    {
      v55 = *(v37 + v22);
      v56 = v54;
      v57 = [v55 persistentStoreCoordinator];
      v58 = [objc_allocWithZone(type metadata accessor for SwiftDataSpotlightDelegate()) initForStoreWithDescription:v56 coordinator:v57];

      [v58 startSpotlightIndexing];
      v41 = &unk_1ED7CE000;
      v37 = v103;
    }
  }

  v59 = [*(v37 + v22) persistentStoreCoordinator];
  v60 = [v59 persistentStores];

  v61 = sub_1975219CC();
  if (v61 >> 62)
  {
    v62 = sub_1975220EC();
    v63 = v93;
    if (v62)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v62 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v63 = v93;
    if (v62)
    {
LABEL_25:
      if (v62 >= 1)
      {
        v64 = 0;
        v96 = v61 & 0xC000000000000001;
        v97 = OBJC_IVAR____TtC9SwiftData12DefaultStore_storeDescription;
        v94 = (v105 + 48);
        v95 = (v105 + 56);
        v88 = (v105 + 32);
        v89 = OBJC_IVAR____TtC9SwiftData12DefaultStore_store;
        v91 = (v105 + 8);
        v98 = v62;
        v99 = v61;
        while (1)
        {
          v105 = v64;
          v66 = v96 ? MEMORY[0x19A8E0960](v64, v61) : *(v61 + 8 * v64 + 32);
          v104 = v66;
          v67 = [v66 URL];
          v68 = v95;
          if (v67)
          {
            v69 = v67;
            sub_19752127C();

            v70 = 0;
          }

          else
          {
            v70 = 1;
          }

          v71 = *v68;
          (*v68)(v63, v70, 1, v3);
          v72 = *(v103 + v97);
          if (v72)
          {
            v73 = [v72 URL];
            if (v73)
            {
              v74 = v73;
              sub_19752127C();

              v75 = 0;
            }

            else
            {
              v75 = 1;
            }

            v71(v34, v75, 1, v3);
            v77 = v102;
            sub_19746F6B4(v34, v102);
          }

          else
          {
            v76 = v102;
            v71(v102, 1, 1, v3);
            v77 = v76;
          }

          v78 = *(v100 + 48);
          sub_1973FE0E4(v63, v8, &qword_1EAF2AE78, &qword_19752C290);
          sub_1973FE0E4(v77, &v8[v78], &qword_1EAF2AE78, &qword_19752C290);
          v79 = v63;
          v80 = v77;
          v81 = *v94;
          if ((*v94)(v8, 1, v3) == 1)
          {
            break;
          }

          v83 = v92;
          sub_1973FE0E4(v8, v92, &qword_1EAF2AE78, &qword_19752C290);
          if (v81(&v8[v78], 1, v3) == 1)
          {
            sub_19740C044(v102, &qword_1EAF2AE78, &qword_19752C290);
            v63 = v93;
            sub_19740C044(v93, &qword_1EAF2AE78, &qword_19752C290);
            (*v91)(v83, v3);
            v34 = v101;
            v61 = v99;
LABEL_28:
            sub_19740C044(v8, &qword_1EAF2AF40, &unk_19752C6B0);
            goto LABEL_29;
          }

          v84 = v90;
          (*v88)(v90, &v8[v78], v3);
          sub_197413CBC(&qword_1ED7C9DC0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
          v85 = sub_19752173C();
          v86 = *v91;
          (*v91)(v84, v3);
          sub_19740C044(v102, &qword_1EAF2AE78, &qword_19752C290);
          v63 = v93;
          sub_19740C044(v93, &qword_1EAF2AE78, &qword_19752C290);
          v86(v83, v3);
          sub_19740C044(v8, &qword_1EAF2AE78, &qword_19752C290);
          v34 = v101;
          v61 = v99;
          if (v85)
          {
            goto LABEL_48;
          }

LABEL_29:
          v65 = v104;
LABEL_30:
          v64 = v105 + 1;

          if (v98 == v64)
          {
            goto LABEL_51;
          }
        }

        sub_19740C044(v80, &qword_1EAF2AE78, &qword_19752C290);
        sub_19740C044(v79, &qword_1EAF2AE78, &qword_19752C290);
        v82 = v81(&v8[v78], 1, v3);
        v63 = v79;
        v34 = v101;
        v61 = v99;
        if (v82 == 1)
        {
          sub_19740C044(v8, &qword_1EAF2AE78, &qword_19752C290);
LABEL_48:
          v65 = *(v103 + v89);
          *(v103 + v89) = v104;
          goto LABEL_30;
        }

        goto LABEL_28;
      }

      __break(1u);
      goto LABEL_54;
    }
  }

LABEL_51:
}

uint64_t sub_19740CAD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3F8, &qword_19752D5B8);
  v33 = v4;
  result = sub_19752243C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        swift_unknownObjectRetain();
      }

      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

void *sub_19740CD8C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v17 = _swift_stdlib_malloc_size_4(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

uint64_t sub_19740CEC0()
{
  v1 = v0;
  if (qword_1ED7C9CD8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED7CE678;
  *&v24[0] = 0;
  v3 = *(qword_1ED7CE678 + 16);
  os_unfair_lock_lock(v3 + 4);
  sub_19740D350(v2, v24, v1);
  os_unfair_lock_unlock(v3 + 4);

  swift_beginAccess();
  v20 = v1;
  v4 = *(v1 + 48);
  v5 = *(v4 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v26 = MEMORY[0x1E69E7CC0];

    sub_19740D630(0, v5, 0);
    v6 = v26;
    v7 = v4 + 32;
    do
    {
      sub_197404790(v7, v24, &qword_1EAF2AF38, &qword_19752C6A8);
      *&v23[16] = v25;
      v22[1] = v24[1];
      *v23 = v24[2];
      v21 = *&v23[8];
      v22[0] = v24[0];
      sub_197414BEC(v22);
      v26 = v6;
      v9 = *(v6 + 16);
      v8 = *(v6 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_19740D630((v8 > 1), v9 + 1, 1);
        v6 = v26;
      }

      *(v6 + 16) = v9 + 1;
      *(v6 + 16 * v9 + 32) = v21;
      v7 += 56;
      --v5;
    }

    while (v5);
  }

  v10 = *(v6 + 16);
  if (v10)
  {
    v11 = v6 + 32;
    type metadata accessor for DefaultStore(0);
    v12 = *MEMORY[0x1E695D420];
    for (i = v10 - 1; ; --i)
    {
      v14 = swift_dynamicCastClass();
      if (v14)
      {
        v15 = v14;
        v16 = objc_opt_self();
        swift_unknownObjectRetain_n();
        v17 = [v16 defaultCenter];
        v18 = [*(v15 + OBJC_IVAR____TtC9SwiftData12DefaultStore_container) persistentStoreCoordinator];
        [v17 addObserver:v20 selector:sel__observeRemoteNotifications_ name:v12 object:v18];
        swift_unknownObjectRelease_n();
      }

      if (!i)
      {
        break;
      }

      v11 += 16;
    }
  }
}

void *sub_19740D174(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B400, &qword_19752D5C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF38, &qword_19752C6A8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_19740D2C4()
{
  type metadata accessor for _ModelContainersRegistry();
  v0 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B000, &qword_19752C760);
  result = swift_allocObject();
  *(result + 16) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = result;
  *(v0 + 24) = v2;
  qword_1ED7CE678 = v0;
  return result;
}

uint64_t sub_19740D350(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  v6 = *(a1 + 24);
  v9 = *(v6 + 16);
  v7 = v6 + 16;
  v8 = v9;
  if (!v9 || (sub_19740C00C(v7 + 16 * v8, v16), Strong = swift_weakLoadStrong(), sub_19740FE8C(v16), !Strong) || (*a2 = Strong, result = , Strong != a3))
  {
    swift_weakInit();
    swift_weakAssign();
    v19 = *(a3 + 72);
    sub_19740C00C(v18, v17);
    swift_beginAccess();
    v12 = *(a1 + 24);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 24) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_19740D4C8(0, v12[2] + 1, 1, v12);
      *(a1 + 24) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = sub_19740D4C8((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    sub_19740D5F8(v17, &v12[2 * v15 + 4]);
    *(a1 + 24) = v12;
    swift_endAccess();
    return sub_19740FE8C(v18);
  }

  return result;
}

void *sub_19740D4C8(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3E8, &qword_19752D5A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v10 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_19740D630(void *a1, int64_t a2, char a3)
{
  result = sub_19740CD8C(a1, a2, a3, *v3, &qword_1EAF2B3D0, &unk_19752D590, &qword_1EAF2B3D8, &unk_19752FBA0);
  *v3 = result;
  return result;
}

uint64_t _s9SwiftData18ModelConfigurationV2id10Foundation3URLVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1975212CC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_19740D6E0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_19752135C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_197404D0C(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_19747A4FC();
      goto LABEL_7;
    }

    sub_19740DB88(v18, a3 & 1);
    v23 = sub_197404D0C(a2);
    if ((v19 & 1) == (v24 & 1))
    {
      v15 = v23;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_19740DAD0(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v21[7] + 8 * v15) = a1;
}

uint64_t sub_19740D918(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = OBJC_IVAR____TtC9SwiftData12DefaultStore__contextsByEditorIdentifier;
  swift_beginAccess();
  if (*(*(a1 + v6) + 16) && (sub_197404D0C(a2), (v7 & 1) != 0))
  {
    swift_endAccess();
    sub_1975221EC();

    sub_19752135C();
    sub_197413CBC(&qword_1EAF2AF28, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1975227DC();
    MEMORY[0x19A8DFF80](v10);

    result = sub_1975223EC();
    __break(1u);
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(a1 + v6);
    *(a1 + v6) = 0x8000000000000000;
    sub_19740D6E0(a3, a2, isUniquelyReferenced_nonNull_native);
    *(a1 + v6) = v11;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_19740DAD0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_19752135C();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_19740DB88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_19752135C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EAF2B458, &unk_19752FD40);
  v40 = v4;
  result = sub_19752243C();
  v12 = result;
  if (*(v10 + 16))
  {
    v44 = v9;
    v36 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v10;
    v39 = v6;
    v41 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v43 = *(v39 + 72);
      v26 = v25 + v43 * v24;
      if (v40)
      {
        (*v41)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      else
      {
        (*v37)(v44, v26, v5);
        v42 = *(*(v10 + 56) + 8 * v24);
      }

      sub_197413D04(&qword_1ED7C9B68, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1975216AC();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v41)(*(v12 + 48) + v43 * v20, v44, v5);
      *(*(v12 + 56) + 8 * v20) = v42;
      ++*(v12 + 16);
      v10 = v38;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v10 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

const char *sub_19740DF64()
{
  result = getprogname();
  if (result)
  {
    result = sub_19752186C();
    qword_1ED7CE668 = result;
    unk_1ED7CE670 = v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL _SD_is_mainqueue_context()
{
  v1 = 1;
  if (!pthread_main_np())
  {
    return dispatch_get_specific("com.apple.CoreData.NSManagedObjectContext.mainQueue") != 0;
  }

  return v1;
}

void sub_19740DFF8(char a1)
{
  v3 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_19740E114();
}

uint64_t sub_19740E078(uint64_t a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
  swift_beginAccess();
  v6 = (v5 + *(type metadata accessor for EditingState(0) + 20));
  *v6 = a1;
  v6[1] = a2;
}

void sub_19740E114()
{
  v1 = OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveEnabled;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    if (*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers))
    {
      return;
    }

    v34 = OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers;
    v2 = sub_197508ED8();
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = objc_opt_self();
      v5 = (v2 + 32);
      do
      {
        v6 = *v5++;
        v7 = v6;
        v8 = [v4 defaultCenter];
        [v8 addObserver:v0 selector:sel_autosave name:v7 object:0];

        --v3;
      }

      while (v3);
    }

    v9 = sub_197509068();
    v10 = *(v9 + 16);
    if (v10)
    {
      v11 = objc_opt_self();
      v12 = (v9 + 32);
      do
      {
        v13 = *v12++;
        v14 = v13;
        v15 = [v11 defaultCenter];
        [v15 addObserver:v0 selector:sel_autosave name:v14 object:0];

        --v10;
      }

      while (v10);
    }

    v16 = 1;
  }

  else
  {
    if (!*(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers))
    {
      return;
    }

    v34 = OBJC_IVAR____TtC9SwiftData12ModelContext_hasAutosaveObservers;
    v17 = sub_197508ED8();
    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = objc_opt_self();
      v20 = (v17 + 32);
      do
      {
        v21 = *v20++;
        v22 = v21;
        v23 = [v19 defaultCenter];
        [v23 removeObserver:v0 name:v22 object:0];

        --v18;
      }

      while (v18);
    }

    v24 = sub_197509068();
    v25 = *(v24 + 16);
    if (v25)
    {
      v26 = objc_opt_self();
      v27 = (v24 + 32);
      do
      {
        v28 = *v27++;
        v29 = v28;
        v30 = [v26 defaultCenter];
        [v30 removeObserver:v0 name:v29 object:0];

        --v25;
      }

      while (v25);
    }

    v31 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
    v32 = *(v0 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer);
    if (v32)
    {
      [v32 invalidate];
      v33 = *(v0 + v31);
      *(v0 + v31) = 0;
    }

    v16 = 0;
  }

  *(v0 + v34) = v16;
}

void sub_19740E3D0(char a1)
{
  v2 = v1;
  v4 = sub_19752135C();
  v5 = *(v4 - 8);
  v54 = v4;
  v55 = v5;
  MEMORY[0x1EEE9AC00](v4, v6);
  v61 = v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v60 = v53 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
  v62 = xmmword_19752F3C0;
  while (1)
  {
    swift_beginAccess();
    v12 = *(v1 + v11);
    if (*(v12 + 16))
    {
      v13 = 0;
      v14 = (v12 + 64);
      v15 = 1 << *(v12 + 32);
      v16 = (v15 + 63) >> 6;
      while (1)
      {
        v18 = *v14++;
        v17 = v18;
        if (v18)
        {
          break;
        }

        v13 -= 64;
        if (!--v16)
        {
          goto LABEL_10;
        }
      }

      v15 = __clz(__rbit64(v17)) - v13;
LABEL_10:
      sub_197439224(&v63, &v65, v15, *(v12 + 36));
    }

    else
    {
      v63 = 0;
      v64 = 0;
      v65 = 0;
      v66 = v62;
      LOBYTE(v67) = 0;
    }

    swift_endAccess();
    if (!v65 && v66 == 1)
    {
      break;
    }

    v68 = v63;
    v69 = v64;
    sub_197433E8C(&v65, v70);
    sub_1974028C8(v68, v69);
    sub_197433E8C(v70, v71);
    if (swift_unknownObjectWeakLoadStrong())
    {
      v20 = v72;
      ObjectType = swift_getObjectType();
      sub_197439B10(ObjectType, v20);
      swift_unknownObjectRelease();
    }

    sub_19743A0E0(v71);
  }

  sub_1974050A8(&v63, &qword_1EAF2B848, &qword_19752F3E0);
  v22 = MEMORY[0x1E69E7CC8];
  *(v1 + v11) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v23 = MEMORY[0x1E69E7CD0];
  v2[9] = MEMORY[0x1E69E7CD0];

  swift_beginAccess();
  v2[11] = v23;

  swift_beginAccess();
  v2[13] = v23;

  swift_beginAccess();
  v2[10] = v23;

  swift_beginAccess();
  v2[14] = v23;

  swift_beginAccess();
  v2[12] = v23;

  v2[15] = v23;

  v2[16] = v23;

  v2[17] = v23;

  v25 = sub_19740EDC4(&v68);
  if (*v24)
  {
    v26 = v24;

    *v26 = v22;
  }

  (v25)(&v68, 0);
  v2[19] = v22;

  swift_beginAccess();
  v2[20] = v22;

  swift_beginAccess();
  v2[21] = v22;

  sub_19740EB4C();
  if (a1)
  {
    v27 = v2[2];
    if (v27)
    {
      swift_beginAccess();
      v28 = *(v27 + 48);
      v29 = *(v28 + 16);
      v30 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
      v59 = v28;

      v57 = v30;
      swift_beginAccess();
      v31 = v54;
      v58 = v29;
      if (v29)
      {
        v32 = 0;
        v33 = v59 + 32;
        v34 = v55;
        v53[1] = &v65;
        ++v55;
        v56 = (v34 + 2);
        while (v32 < *(v59 + 16))
        {
          sub_1974047F8(v33, &v68, &qword_1EAF2AF38, &qword_19752C6A8);
          v35 = v70[3];
          type metadata accessor for DefaultStore(0);
          v36 = swift_dynamicCastClass();
          if (v36)
          {
            v37 = v36;
            v38 = v60;
            sub_197404E70(v2 + v57, v60);
            v39 = v61;
            (*v56)(v61, v38, v31);
            v40 = v35;
            v41 = *(v37 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
            v43 = MEMORY[0x1EEE9AC00](v40, v42);
            v53[-2] = v37;
            v53[-1] = v39;
            v45 = MEMORY[0x1EEE9AC00](v43, v44);
            v53[-2] = sub_19740ED5C;
            v53[-1] = v46;
            *&v62 = v45;
            swift_unknownObjectRetain();

            os_unfair_lock_lock(v41 + 4);
            sub_19740508C(&v63);
            os_unfair_lock_unlock(v41 + 4);
            v47 = v63;

            if (v47)
            {

              sub_19744A4E8();

              v48 = v47[2];
              v49 = swift_allocObject();
              *(v49 + 16) = sub_1974C1DA4;
              *(v49 + 24) = v47;
              *(&v66 + 1) = sub_1974C1DAC;
              v67 = v49;
              v63 = MEMORY[0x1E69E9820];
              v64 = 1107296256;
              v65 = sub_197472418;
              *&v66 = &block_descriptor_351;
              v50 = _Block_copy(&v63);
              v51 = v48;

              [v51 performBlockAndWait_];

              v31 = v54;
              _Block_release(v50);
              isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

              if (isEscapingClosureAtFileLocation)
              {
                __break(1u);
                goto LABEL_30;
              }
            }

            (*v55)(v61, v31);
            swift_unknownObjectRelease();
            sub_19740BE74(v60, type metadata accessor for EditingState);
          }

          ++v32;
          sub_1974050A8(&v68, &qword_1EAF2AF38, &qword_19752C6A8);
          v33 += 56;
          if (v58 == v32)
          {
            goto LABEL_30;
          }
        }

        __break(1u);
      }

      else
      {
LABEL_30:
      }
    }
  }
}

void sub_19740EB4C()
{
  sub_19740EC10();
  sub_19740EE18();
  sub_19740EF64();
  sub_19740F0B0();
  sub_19740F1FC();
  sub_19740F348();
  v1 = MEMORY[0x1E69E7CD0];
  *(v0 + 128) = MEMORY[0x1E69E7CD0];

  *(v0 + 120) = v1;

  swift_beginAccess();
  v2 = *(v0 + 40);
  if (v2)
  {
    v3 = v2;
    if ([v3 isUndoRegistrationEnabled])
    {
      [v3 removeAllActions];
    }
  }

  v4 = *(v0 + 176);
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    *(v0 + 176) = v6;
    *(v0 + 180) = 0;
    *(v0 + 50) = 0;
    *(v0 + 48) = 0;
  }
}

uint64_t sub_19740EC10()
{
  swift_beginAccess();
  v1 = *(v0 + 96);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = swift_unknownObjectRelease())
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_197432360(0, ObjectType, v10);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 96) = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740EE18()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = swift_unknownObjectRelease())
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_197442A5C(0, ObjectType, v10);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 88) = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740EF64()
{
  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = swift_unknownObjectRelease())
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1974556E8(0, ObjectType, v10);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 80) = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740F0B0()
{
  swift_beginAccess();
  v1 = *(v0 + 72);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = swift_unknownObjectRelease())
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_197458088(0, ObjectType, v10);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 72) = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740F1FC()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = swift_unknownObjectRelease())
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1974A7FC4(0, ObjectType, v10);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 112) = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_19740F348()
{
  swift_beginAccess();
  v1 = *(v0 + 104);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 56);
  v5 = (v2 + 63) >> 6;
  result = swift_bridgeObjectRetain_n();
  for (i = 0; v4; result = swift_unknownObjectRelease())
  {
    v8 = i;
LABEL_9:
    v9 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v10 = *(*(v1 + 48) + ((v8 << 10) | (16 * v9)) + 8);
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1974A7F6C(0, ObjectType, v10);
  }

  while (1)
  {
    v8 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      *(v0 + 104) = MEMORY[0x1E69E7CD0];
    }

    v4 = *(v1 + 56 + 8 * v8);
    ++i;
    if (v4)
    {
      i = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void *sub_19740F494@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v5);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t sub_19740F508(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 8);
      v9 = *i;
      sub_1974028EC(v7, *(i - 8));

      result = sub_197403C30(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v5[6] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_19740F620(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = type metadata accessor for EditingState(0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for DataStoreFetchRequest(0, a2, a3, v10);
  v44 = *(Request - 8);
  v45 = Request;
  MEMORY[0x1EEE9AC00](Request, v12);
  v43 = &v41 - v13;
  v47 = a3;
  Descriptor = type metadata accessor for FetchDescriptor(0, a2, a3, v14);
  v16 = *(Descriptor - 8);
  v18 = MEMORY[0x1EEE9AC00](Descriptor, v17);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = &v41 - v22;
  sub_197407130();
  v24 = swift_allocObject();
  v46 = v24;
  *(v24 + 16) = 0;
  v41 = (v24 + 16);
  v49 = v16;
  v25 = *(v16 + 16);
  v25(v23, a1, Descriptor);
  sub_197520C4C();
  v26 = sub_197521A1C();
  v27 = *(Descriptor + 36);

  *&v23[v27] = v26;
  if (v23[*(Descriptor + 48)] == 1 && *(v3 + 48) == 1)
  {
    v29 = v48;
    v30 = sub_1974BB758(v23, a2, v47, v28);
    if (!v29)
    {
      v26 = *(v30 + 16);
    }
  }

  else
  {
    v31 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    swift_beginAccess();
    v32 = v3 + v31;
    v33 = v42;
    sub_197404E70(v32, v42);
    v25(v20, v23, Descriptor);
    v34 = v43;
    v35 = v33;
    v26 = v47;
    v36 = sub_197407438(v35, v20, a2, v47, v43);
    MEMORY[0x1EEE9AC00](v36, v37);
    *(&v41 - 4) = a2;
    *(&v41 - 3) = v26;
    *(&v41 - 2) = v46;
    *(&v41 - 1) = v34;
    v38 = v48;
    sub_1974072C4(sub_19740FA50, (&v41 - 6), a2, v26);
    (*(v44 + 8))(v34, v45);
    if (!v38)
    {
      v39 = v41;
      swift_beginAccess();
      v26 = *v39;
    }
  }

  (*(v49 + 8))(v23, Descriptor);

  return v26;
}

uint64_t sub_19740FA50(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  v7 = v2[5];
  ObjectType = swift_getObjectType();
  return sub_19740FACC(ObjectType, a1, a2, v8, v7, v5, ObjectType, v6, a2);
}

uint64_t sub_19740FACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B3D8, &unk_19752FBA0);
  swift_dynamicCast();
  v15 = (*(a9 + 88))(a5, a6, a8, a7, a9);
  result = swift_unknownObjectRelease();
  if (!v9)
  {
    result = swift_beginAccess();
    v17 = *(a4 + 16);
    v18 = __OFADD__(v17, v15);
    v19 = v17 + v15;
    if (v18)
    {
      __break(1u);
    }

    else
    {
      *(a4 + 16) = v19;
    }
  }

  return result;
}

uint64_t sub_19740FBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, void *))
{
  v12[2] = a2;
  v12[3] = a3;
  v12[4] = a1;
  v9 = MEMORY[0x19A8E1370]();
  v10 = a5(a1, v5, a4, v12);
  objc_autoreleasePoolPop(v9);
  return v10;
}

void sub_19740FC98(uint64_t *a1, void *a2, uint64_t (*a3)(void, void *), void (*a4)(void), void (*a5)(uint64_t), SEL *a6)
{
  v13 = MEMORY[0x19A8E1370]();
  sub_1974E5C40(v6, a1, a2[2], a2[3], a2[4], a2[5], &v15, a3, &v14, a4, a5, a6);
  objc_autoreleasePoolPop(v13);
}

uint64_t sub_19740FE2C()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
LABEL_5:

    return v1;
  }

  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = result;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_19740FEBC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  if ((*(a1 + 8) & 0xF000000000000007) != 0)
  {
    v2 = *a1 & 0x7FFFFFFF;
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_19740FF68()
{
  v4 = v1;
  v5 = type metadata accessor for EditingState(0);
  v7 = MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v189 = &v186 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v186 - v10;
  sub_197407130();
  v12 = objc_opt_self();
  v13 = [v12 defaultCenter];
  if (qword_1ED7C8178 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    [v13 postNotificationName:qword_1ED7C8180 object:v0 userInfo:0];

    sub_19743FB78(1);
    if (v4 || *(v0 + 48) != 1)
    {
      return;
    }

    if (v0[2])
    {
      v13 = v0[2];
    }

    else
    {
      Strong = swift_weakLoadStrong();
      if (!Strong)
      {
        __break(1u);
LABEL_179:
        LODWORD(v185) = 0;
        v184 = 2451;
        goto LABEL_180;
      }

      v13 = Strong;
    }

    v186 = v12;
    v211 = v0;
    swift_beginAccess();
    v0 = *(v13 + 48);

    v4 = v0[2];
    v15 = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v12 = 0;
      v2 = (v0 + 9);
      while (v12 < v0[2])
      {
        v196 = *v2;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v15 = sub_19744304C(0, v15[2] + 1, 1, v15);
        }

        ObjectType = v15[2];
        v16 = v15[3];
        v13 = ObjectType + 1;
        if (ObjectType >= v16 >> 1)
        {
          v15 = sub_19744304C((v16 > 1), ObjectType + 1, 1, v15);
        }

        ++v12;
        v15[2] = v13;
        *&v15[2 * ObjectType + 4] = v196;
        swift_unknownObjectRetain();
        v2 += 56;
        if (v4 == v12)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_170;
    }

LABEL_16:
    v17 = v15;

    v18 = OBJC_IVAR____TtC9SwiftData12ModelContext_editingState;
    v19 = v211;
    swift_beginAccess();
    v187 = v18;
    sub_197404E70(v19 + v18, v11);
    type metadata accessor for DataStoreSaveChangesRequestBuilder(0);
    v20 = swift_allocObject();

    v190 = v17;
    *&v196 = v20;
    sub_1974433F8(v11, v17);
    swift_beginAccess();
    v21 = v19[9];
    swift_beginAccess();

    v0 = sub_19743E380(v22, v21);
    v13 = sub_19743AD6C(v0);
    v194 = 0;

    v23 = *(v13 + 16);
    if (v23)
    {
      v4 = 0;
      v12 = v13 + 40;
      *&v195 = v13;
      do
      {
        if (v4 >= *(v13 + 16))
        {
          goto LABEL_171;
        }

        v11 = *(v12 - 8);
        v2 = *v12;
        ObjectType = swift_getObjectType();
        swift_unknownObjectRetain();
        if (sub_1973FE6F0(ObjectType, v2))
        {
          v29 = PersistentModel.modelContext.getter(ObjectType, v2);
          if (!v29)
          {
            goto LABEL_179;
          }

          v0 = v29;

          if (v0 != v211)
          {
            goto LABEL_179;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          v24 = sub_1973FE074(ObjectType, v2);
          swift_beginAccess();
          v25 = *(v24 + 88);

          if ((v25 & 0xC000000000000001) != 0)
          {
            v26 = sub_1975220EC();
          }

          else
          {
            v26 = *(v25 + 16);
          }

          if (v26)
          {

            if (qword_1EAF2ACC0 != -1)
            {
              swift_once();
            }

            v166 = sub_19752157C();
            __swift_project_value_buffer(v166, qword_1EAF33DE8);
            swift_unknownObjectRetain();
            v154 = sub_19752155C();
            v167 = sub_197521DDC();
            swift_unknownObjectRelease();
            if (os_log_type_enabled(v154, v167))
            {
              v168 = swift_slowAlloc();
              *&v195 = swift_slowAlloc();
              v197[0] = v195;
              *v168 = 136315394;
              PersistentModel.persistentModelID.getter(ObjectType, v2, &v203);
              v198 = v203;
              LOBYTE(v199) = BYTE8(v203);
              v169 = sub_1975217CC();
              v171 = sub_197462310(v169, v170, v197);

              *(v168 + 4) = v171;
              *(v168 + 12) = 2080;
              sub_1973FE074(ObjectType, v2);
              swift_beginAccess();

              sub_19752202C();
              v172 = sub_197521BDC();
              v174 = v173;

              v175 = sub_197462310(v172, v174, v197);

              *(v168 + 14) = v175;
              _os_log_impl(&dword_1973F2000, v154, v167, "This model %s has invalid keypaths: %s", v168, 0x16u);
              v176 = v195;
              swift_arrayDestroy();
              MEMORY[0x19A8E1B50](v176, -1, -1);
              v165 = v168;
LABEL_163:
              MEMORY[0x19A8E1B50](v165, -1, -1);
            }

LABEL_164:

            if (qword_1EAF2AD68 == -1)
            {
LABEL_165:
              v177 = byte_1EAF2B7B8;
              v179 = qword_1EAF2B7C0;
              v178 = unk_1EAF2B7C8;
              sub_19744BE3C();
              swift_allocError();
              *v180 = v177;
              *(v180 + 8) = v179;
              *(v180 + 16) = v178;
              swift_willThrow();

              swift_unknownObjectRelease();
              return;
            }

LABEL_177:
            swift_once();
            goto LABEL_165;
          }

          sub_197443690(ObjectType, v2, &v203);
          v0 = *(&v204 + 1);
          v27 = v205;
          v28 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
          sub_19743BEDC(v28, v196, v0, v27, sub_197458C34);
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0Tm(&v203);
          v13 = v195;
        }

        v4 = (v4 + 1);
        v12 += 16;
      }

      while (v23 != v4);
    }

    v30 = v211;
    swift_beginAccess();
    v31 = v30[11];
    swift_beginAccess();

    v0 = sub_19743E380(v32, v31);
    v33 = v194;
    ObjectType = sub_19743AD6C(v0);
    v194 = v33;

    *&v195 = *(ObjectType + 16);
    if (!v195)
    {
      break;
    }

    v12 = 0;
    v4 = (ObjectType + 40);
    while (v12 < *(ObjectType + 16))
    {
      v11 = *(v4 - 1);
      v34 = *v4;
      v2 = swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1973FE6F0(v2, v34))
      {
        sub_1974258A4(v2, v34);
      }

      v35 = sub_1973FE074(v2, v34);
      swift_beginAccess();
      v36 = *(v35 + 88);

      if ((v36 & 0xC000000000000001) != 0)
      {
        v37 = sub_1975220EC();
      }

      else
      {
        v37 = *(v36 + 16);
      }

      if (v37)
      {

        if (qword_1EAF2ACC0 != -1)
        {
          swift_once();
        }

        v153 = sub_19752157C();
        __swift_project_value_buffer(v153, qword_1EAF33DE8);
        swift_unknownObjectRetain();
        v154 = sub_19752155C();
        v155 = sub_197521DDC();
        swift_unknownObjectRelease();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *&v195 = swift_slowAlloc();
          v197[0] = v195;
          *v156 = 136315394;
          PersistentModel.persistentModelID.getter(v2, v34, &v203);
          v198 = v203;
          LOBYTE(v199) = BYTE8(v203);
          v157 = sub_1975217CC();
          v159 = sub_197462310(v157, v158, v197);

          *(v156 + 4) = v159;
          *(v156 + 12) = 2080;
          sub_1973FE074(v2, v34);
          swift_beginAccess();

          sub_19752202C();
          v160 = sub_197521BDC();
          v162 = v161;

          v163 = sub_197462310(v160, v162, v197);

          *(v156 + 14) = v163;
          _os_log_impl(&dword_1973F2000, v154, v155, "This model %s has invalid keypaths: %s", v156, 0x16u);
          v164 = v195;
          swift_arrayDestroy();
          MEMORY[0x19A8E1B50](v164, -1, -1);
          v165 = v156;
          goto LABEL_163;
        }

        goto LABEL_164;
      }

      ++v12;
      sub_197443690(v2, v34, &v203);
      v0 = *(&v204 + 1);
      v13 = v205;
      v38 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
      sub_19743BEDC(v38, v196, v0, v13, sub_1974426B8);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v203);
      v4 += 2;
      if (v195 == v12)
      {
        goto LABEL_39;
      }
    }

LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
  }

LABEL_39:

  v39 = v211;
  swift_beginAccess();
  v40 = v39[13];
  swift_beginAccess();

  v42 = sub_19743E380(v41, v40);
  v43 = v194;
  v44 = sub_19743AD6C(v42);
  v194 = v43;

  v45 = *(v44 + 16);
  if (v45)
  {
    v46 = (v44 + 40);
    do
    {
      v50 = *v46;
      v51 = swift_getObjectType();
      swift_unknownObjectRetain();
      if (sub_1973FE6F0(v51, v50))
      {
        sub_1974258A4(v51, v50);
      }

      sub_197443690(v51, v50, &v203);
      v47 = *(&v204 + 1);
      v48 = v205;
      v49 = __swift_project_boxed_opaque_existential_1(&v203, *(&v204 + 1));
      sub_19743BEDC(v49, v196, v47, v48, sub_1974BF118);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_0Tm(&v203);
      v46 += 2;
      --v45;
    }

    while (v45);
  }

  v209 = MEMORY[0x1E69E7CC8];
  v210[0] = MEMORY[0x1E69E7CC8];
  v52 = v190;
  v53 = *(v190 + 16);
  if (!v53)
  {
LABEL_49:
    v62 = OBJC_IVAR____TtC9SwiftData12ModelContext_timer;
    v63 = v211;
    v64 = *(v211 + OBJC_IVAR____TtC9SwiftData12ModelContext_timer);
    if (v64)
    {
      *(v211 + OBJC_IVAR____TtC9SwiftData12ModelContext_autosaveDelay) = 0;
      [v64 invalidate];
      v65 = *(v63 + v62);
      *(v63 + v62) = 0;
    }

    v67 = v63;
    sub_1974B6340(v66, 1);

    v68 = MEMORY[0x1E69E7CD0];
    v67[9] = MEMORY[0x1E69E7CD0];

    v67[11] = v68;

    v67[13] = v68;

    v67[10] = v68;

    v67[12] = v68;

    v67[14] = v68;

    *(v67 + 48) = 0;
    v207 = MEMORY[0x1E69E7CC0];
    v208 = MEMORY[0x1E69E7CC0];
    v206 = MEMORY[0x1E69E7CC0];
    swift_beginAccess();
    v4 = (v210[0] + 64);
    v69 = 1 << *(v210[0] + 32);
    v70 = -1;
    if (v69 < 64)
    {
      v70 = ~(-1 << v69);
    }

    v12 = v70 & *(v210[0] + 64);
    *&v192 = v210[0];

    swift_beginAccess();
    v71 = 0;
    v13 = &qword_1EAF2AF20;
    v11 = (v69 + 63) >> 6;
    v0 = &unk_19752F320;
    v191 = v4;
    *&v188 = v11;
    if (!v12)
    {
LABEL_55:
      while (1)
      {
        v72 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        if (v72 >= v11)
        {
          goto LABEL_63;
        }

        v12 = v4[v72];
        ++v71;
        if (v12)
        {
          goto LABEL_58;
        }
      }

LABEL_172:
      __break(1u);
      goto LABEL_173;
    }

    while (1)
    {
      v72 = v71;
LABEL_58:
      v73 = __clz(__rbit64(v12)) | (v72 << 6);
      v74 = (*(v192 + 48) + 16 * v73);
      v2 = *v74;
      ObjectType = v74[1];
      sub_1974047F8(*(v192 + 56) + 32 * v73, &v203, v13, &unk_19752F320);
      v193 = v204;
      v195 = v203;

      if (!ObjectType)
      {
        break;
      }

      v203 = v195;
      v204 = v193;
      v75 = *(v196 + 16);
      if (!*(v75 + 16))
      {
        goto LABEL_182;
      }

      v76 = v13;

      v77 = sub_1973F4028(v2, ObjectType);
      if ((v78 & 1) == 0)
      {
        while (1)
        {

LABEL_182:
          v198 = 0;
          v199 = 0xE000000000000000;
          sub_1975221EC();
          v197[0] = v198;
          v197[1] = v199;
          MEMORY[0x19A8DFF80](0x6F662065726F7453, 0xEA00000000002072);
          MEMORY[0x19A8DFF80](v2, ObjectType);
          MEMORY[0x19A8DFF80](0xD000000000000042, 0x8000000197526550);
          sub_1974047F8(&v203, &v198, &qword_1EAF2AF20, &unk_19752F320);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
          v181 = sub_1975217CC();
          MEMORY[0x19A8DFF80](v181);

          LODWORD(v185) = 0;
          v184 = 2518;
LABEL_180:
          sub_1975223EC();
          __break(1u);
        }
      }

      v12 &= v12 - 1;
      v79 = (*(v75 + 56) + 16 * v77);
      v80 = *v79;
      v81 = v79[1];
      swift_unknownObjectRetain();

      v82 = swift_getObjectType();
      *(&v182 + 1) = &v208;
      *&v182 = v211;
      sub_1974450A0(v82, &v209, v2, ObjectType, &v203, v80, v81, v196, v182, &v207, &v206, v82, v81);

      swift_unknownObjectRelease();
      v13 = v76;
      v0 = &unk_19752F320;
      sub_1974050A8(&v203, v76, &unk_19752F320);
      v71 = v72;
      v4 = v191;
      v11 = v188;
      if (!v12)
      {
        goto LABEL_55;
      }
    }

LABEL_63:

    ObjectType = OBJC_IVAR____TtC9SwiftData12ModelContext__objectRegistration;
    v0 = v211;
    swift_beginAccess();
    v83 = *(v0 + ObjectType);
    v85 = *(v83 + 64);
    v4 = (v83 + 64);
    v84 = v85;
    v86 = 1 << *(*(v0 + ObjectType) + 32);
    v87 = -1;
    if (v86 < 64)
    {
      v87 = ~(-1 << v86);
    }

    v11 = v87 & v84;
    v12 = (v86 + 63) >> 6;
    *&v192 = *(v0 + ObjectType);

    v88 = 0;
    *&v195 = MEMORY[0x1E69E7CC0];
    v188 = xmmword_19752F3C0;
    v191 = ObjectType;
    *&v193 = v4;
    if (v11)
    {
      while (1)
      {
        v93 = v88;
LABEL_77:
        v96 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v97 = v96 | (v93 << 6);
        v98 = *(v192 + 48) + 16 * v97;
        v0 = *v98;
        v13 = *(v98 + 8);
        sub_19742FE50(*(v192 + 56) + 32 * v97, v197);
        v198 = v0;
        LOBYTE(v199) = v13;
        sub_197433E8C(v197, &v200);
        sub_1974028EC(v0, v13);
LABEL_78:
        sub_197446C28(&v198, &v203);
        if (v204 == __PAIR128__(1, 0))
        {
          break;
        }

        v99 = v203;
        v2 = BYTE8(v203);
        sub_197433E8C(&v204, &v198);
        v100 = swift_unknownObjectWeakLoadStrong();
        if (v100)
        {
          v0 = v100;
          v13 = v199;
          v89 = swift_getObjectType();
          v90 = sub_197432B8C(v89, v13);
          sub_197433EE8(v90 & 0xFFFFFFC7, v89, v13);
          v91 = sub_197432B8C(v89, v13);
          v92 = v89;
          ObjectType = v191;
          sub_197433EE8(v91 & 0xFFFFFFF8, v92, v13);
          sub_1974028C8(v99, v2);
          swift_unknownObjectRelease();
          sub_19743A0E0(&v198);
          v4 = v193;
          if (!v11)
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v101 = v195;
          }

          else
          {
            v101 = sub_197445BA8(0, *(v195 + 16) + 1, 1, v195);
          }

          v13 = *(v101 + 2);
          v102 = *(v101 + 3);
          v0 = (v13 + 1);
          if (v13 >= v102 >> 1)
          {
            *&v195 = sub_197445BA8((v102 > 1), v13 + 1, 1, v101);
          }

          else
          {
            *&v195 = v101;
          }

          sub_19743A0E0(&v198);
          v103 = v195;
          *(v195 + 16) = v0;
          v104 = v103 + 16 * v13;
          *(v104 + 32) = v99;
          *(v104 + 40) = v2;
          v4 = v193;
          if (!v11)
          {
            goto LABEL_69;
          }
        }
      }

      v105 = v195;
      *&v193 = *(v195 + 16);
      if (!v193)
      {
LABEL_152:

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B850, &qword_19752F3E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_19752D100;
        *(inited + 32) = 0x6465747265736E69;
        *(inited + 40) = 0xE800000000000000;
        swift_beginAccess();
        *(inited + 48) = v208;
        *(inited + 56) = 0x64657461647075;
        *(inited + 64) = 0xE700000000000000;
        swift_beginAccess();
        *(inited + 72) = v207;
        *(inited + 80) = 0x646574656C6564;
        *(inited + 88) = 0xE700000000000000;
        swift_beginAccess();
        *(inited + 96) = v206;
        v147 = sub_197411FE8(inited, &qword_1EAF2B3E0, &qword_19752D5A0);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B858, &qword_19752F3F0);
        swift_arrayDestroy();
        sub_197446C98(v147);
        v149 = v148;

        v150 = [v186 defaultCenter];
        if (qword_1ED7C7CD0 != -1)
        {
          swift_once();
        }

        v151 = qword_1ED7C7CD8;
        sub_197445CC4(v149);

        v152 = sub_1975215EC();

        [v150 postNotificationName:v151 object:v211 userInfo:v152];

        goto LABEL_167;
      }

      v12 = 0;
      v4 = (v195 + 40);
      v192 = xmmword_19752EA60;
      while (2)
      {
        if (v12 >= *(v105 + 16))
        {
          goto LABEL_174;
        }

        v106 = *(v4 - 1);
        v11 = *v4;
        v2 = v211;
        swift_beginAccess();
        v0 = *(v2 + ObjectType);
        sub_1974028EC(v106, v11);
        v107 = sub_197403C30(v106, v11);
        if (v108)
        {
          v13 = v107;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v0 = *(v2 + ObjectType);
          v197[0] = v0;
          *(v2 + ObjectType) = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_19747B580();
            v0 = v197[0];
          }

          sub_1974028C8(*(v0[6] + 16 * v13), *(v0[6] + 16 * v13 + 8));
          sub_197433E8C(v0[7] + 32 * v13, &v203);
          sub_197439D60(v13, v0);
          *(v2 + ObjectType) = v0;
        }

        else
        {
          v203 = v192;
          *&v204 = 0;
          BYTE8(v204) = 0;
        }

        sub_1974050A8(&v203, &qword_1EAF2B640, &unk_19752F160);
        swift_endAccess();
        if (!v11)
        {
          v110 = [v106 storeIdentifier];
          v13 = sub_1975217BC();
          v2 = v111;

          goto LABEL_105;
        }

        if (v11 == 1)
        {
          v2 = v106[3];
          if (v2)
          {
            v13 = v106[2];

LABEL_105:
            v0 = *(v196 + 16);
            if (v0[2])
            {

              v13 = sub_1973F4028(v13, v2);
              v113 = v112;

              if (v113)
              {
                v2 = *(v0[7] + 16 * v13);
                swift_unknownObjectRetain();

                swift_getObjectType();
                if (swift_conformsToProtocol2())
                {
                  v114 = v2 == 0;
                }

                else
                {
                  v114 = 1;
                }

                if (v114)
                {
                  swift_unknownObjectRelease();
                  sub_1974028C8(v106, v11);
                  ObjectType = v191;
                }

                else
                {
                  v117 = sub_197404E70(v211 + v187, v189);
                  v13 = *(v2 + OBJC_IVAR____TtC9SwiftData12DefaultStore__editingContextLock);
                  v119 = MEMORY[0x1EEE9AC00](v117, v118);
                  *&v188 = v2;
                  MEMORY[0x1EEE9AC00](v119, v120);
                  v0 = &v183;
                  v184 = sub_19745A068;
                  v185 = v121;

                  os_unfair_lock_lock((v13 + 16));
                  v122 = v194;
                  sub_197431F70(&v203);
                  v194 = v122;
                  if (v122)
                  {
                    os_unfair_lock_unlock((v13 + 16));
                    __break(1u);
                    return;
                  }

                  os_unfair_lock_unlock((v13 + 16));
                  v2 = v203;

                  if (v2)
                  {
                    swift_beginAccess();
                    sub_1974028EC(v106, v11);
                    v123 = sub_197403C30(v106, v11);
                    ObjectType = v191;
                    if (v124)
                    {
                      v13 = v123;
                      v125 = swift_isUniquelyReferenced_nonNull_native();
                      v126 = *(v2 + 16);
                      v198 = v126;
                      *(v2 + 16) = 0x8000000000000000;
                      if ((v125 & 1) == 0)
                      {
                        sub_19747AF58();
                        v126 = v198;
                      }

                      sub_1974028C8(*(*(v126 + 48) + 16 * v13), *(*(v126 + 48) + 16 * v13 + 8));

                      sub_1974A1878();
                      sub_1974028C8(v106, v11);
                      *(v2 + 16) = v126;
                    }

                    else
                    {
                      sub_1974028C8(v106, v11);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    sub_1974028EC(v106, v11);
                    v127 = sub_197403C30(v106, v11);
                    if (v128)
                    {
                      v13 = v127;
                      v129 = swift_isUniquelyReferenced_nonNull_native();
                      v130 = *(v2 + 24);
                      v198 = v130;
                      *(v2 + 24) = 0x8000000000000000;
                      if ((v129 & 1) == 0)
                      {
                        sub_19747AF6C();
                        v130 = v198;
                      }

                      sub_1974028C8(*(*(v130 + 48) + 16 * v13), *(*(v130 + 48) + 16 * v13 + 8));

                      sub_1974A187C();
                      sub_1974028C8(v106, v11);
                      *(v2 + 24) = v130;
                    }

                    else
                    {
                      sub_1974028C8(v106, v11);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    sub_1974028EC(v106, v11);
                    v131 = sub_197403C30(v106, v11);
                    if (v132)
                    {
                      v13 = v131;
                      v133 = swift_isUniquelyReferenced_nonNull_native();
                      v134 = *(v2 + 32);
                      v198 = v134;
                      if ((v133 & 1) == 0)
                      {
                        sub_19747AF58();
                        v134 = v198;
                      }

                      sub_1974028C8(*(*(v134 + 48) + 16 * v13), *(*(v134 + 48) + 16 * v13 + 8));

                      sub_1974A1878();
                      sub_1974028C8(v106, v11);
                      *(v2 + 32) = v134;
                    }

                    else
                    {
                      sub_1974028C8(v106, v11);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    sub_1974028EC(v106, v11);
                    v135 = sub_197403C30(v106, v11);
                    if (v136)
                    {
                      v13 = v135;
                      v137 = swift_isUniquelyReferenced_nonNull_native();
                      v138 = *(v2 + 40);
                      v198 = v138;
                      if ((v137 & 1) == 0)
                      {
                        sub_19747AF94();
                        v138 = v198;
                      }

                      sub_1974028C8(*(*(v138 + 48) + 16 * v13), *(*(v138 + 48) + 16 * v13 + 8));

                      sub_1974A1884();
                      sub_1974028C8(v106, v11);
                      *(v2 + 40) = v138;
                    }

                    else
                    {
                      sub_1974028C8(v106, v11);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    sub_1974028EC(v106, v11);
                    v139 = sub_197403C30(v106, v11);
                    if (v140)
                    {
                      v13 = v139;
                      v141 = swift_isUniquelyReferenced_nonNull_native();
                      v142 = *(v2 + 48);
                      v198 = v142;
                      if ((v141 & 1) == 0)
                      {
                        sub_19747AF80();
                        v142 = v198;
                      }

                      sub_1974028C8(*(*(v142 + 48) + 16 * v13), *(*(v142 + 48) + 16 * v13 + 8));

                      sub_1974A1880();
                      sub_1974028C8(v106, v11);
                      *(v2 + 48) = v142;
                    }

                    else
                    {
                      sub_1974028C8(v106, v11);
                    }

                    swift_endAccess();
                    swift_beginAccess();
                    v0 = *(v2 + 56);
                    v143 = sub_197403C30(v106, v11);
                    if (v144)
                    {
                      v13 = v143;
                      v145 = swift_isUniquelyReferenced_nonNull_native();
                      v0 = *(v2 + 56);
                      v198 = v0;
                      if ((v145 & 1) == 0)
                      {
                        sub_19747AF58();
                        v0 = v198;
                      }

                      sub_1974028C8(*(v0[6] + 16 * v13), *(v0[6] + 16 * v13 + 8));

                      sub_1974A1878();
                      sub_1974028C8(v106, v11);
                      *(v2 + 56) = v0;
                    }

                    else
                    {
                      sub_1974028C8(v106, v11);
                    }

                    swift_endAccess();
                  }

                  else
                  {
                    sub_1974028C8(v106, v11);
                    ObjectType = v191;
                  }

                  swift_unknownObjectRelease();
                  sub_19740BE74(v189, type metadata accessor for EditingState);
                }
              }

              else
              {
                sub_1974028C8(v106, v11);

                ObjectType = v191;
              }
            }

            else
            {
              sub_1974028C8(v106, v11);
            }

LABEL_93:
            ++v12;
            v4 += 2;
            v105 = v195;
            if (v193 == v12)
            {
              goto LABEL_152;
            }

            continue;
          }

          v115 = v106;
          v116 = 1;
        }

        else
        {
          v115 = v106;
          v116 = 2;
        }

        break;
      }

      sub_1974028C8(v115, v116);
      goto LABEL_93;
    }

LABEL_69:
    if (v12 <= v88 + 1)
    {
      v94 = v88 + 1;
    }

    else
    {
      v94 = v12;
    }

    v95 = v94 - 1;
    while (1)
    {
      v93 = v88 + 1;
      if (__OFADD__(v88, 1))
      {
        break;
      }

      if (v93 >= v12)
      {
        v11 = 0;
        v198 = 0;
        v199 = 0;
        v200 = 0;
        v201 = v188;
        v88 = v95;
        v202 = 0;
        goto LABEL_78;
      }

      v11 = v4[v93];
      ++v88;
      if (v11)
      {
        v88 = v93;
        goto LABEL_77;
      }
    }

    __break(1u);
LABEL_170:
    __break(1u);
LABEL_171:
    __break(1u);
    goto LABEL_172;
  }

  v54 = 0;
  v55 = (v190 + 40);
  while (1)
  {
    if (v54 >= *(v52 + 16))
    {
      __break(1u);
      goto LABEL_177;
    }

    v56 = *(v55 - 1);
    v57 = *v55;
    v58 = swift_getObjectType();
    swift_unknownObjectRetain();
    v59 = v58;
    v60 = v58;
    v61 = v194;
    sub_19743A360(v59, v56, v57, v196, &v209, v210, v60, v57);
    v194 = v61;
    if (v61)
    {
      break;
    }

    swift_unknownObjectRelease();
    ++v54;
    v55 += 2;
    v52 = v190;
    if (v53 == v54)
    {
      goto LABEL_49;
    }
  }

  swift_unknownObjectRelease();

LABEL_167:
}

uint64_t sub_197411C40(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197411C7C(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_197411CB8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_197425554(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_197411CD8(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_197411D1C(uint64_t a1, char *a2)
{
  v5 = MEMORY[0x19A8E1370]();
  sub_1974DE89C(v2, *(a1 + 16), a2, &v6, &v7);
  objc_autoreleasePoolPop(v5);
}

uint64_t sub_197411DA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_197411DF0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_197411E30()
{

  return v0;
}

unint64_t sub_197411E68()
{
  result = qword_1ED7C80F0[0];
  if (!qword_1ED7C80F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C80F0);
  }

  return result;
}

unint64_t sub_197411EBC()
{
  result = qword_1ED7C93F0;
  if (!qword_1ED7C93F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C93F0);
  }

  return result;
}

uint64_t sub_197411F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Descriptor = type metadata accessor for FetchDescriptor(0, *(a3 + 16), *(a3 + 32), a4);
  v8 = *(Descriptor - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, Descriptor);
  }

  else
  {
    v11 = *(a1 + *(a3 + 52));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

unint64_t sub_197411FE8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_19752245C();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1973F4028(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1974120E4(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = a7[6] + 16 * result;
  *v7 = a2;
  *(v7 + 8) = a3;
  v8 = a7[7] + 24 * result;
  *v8 = a4;
  *(v8 + 8) = a5;
  *(v8 + 16) = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_19741213C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F4028(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19747B128(&qword_1EAF2B2E0, &qword_19752D488);
      v11 = v19;
      goto LABEL_8;
    }

    sub_1974786EC(v16, a4 & 1, &qword_1EAF2B2E0, &qword_19752D488);
    v11 = sub_1973F4028(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      sub_1975229CC();
      __break(1u);
      return MEMORY[0x1EEE66BB8]();
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x1EEE66BB8]();
  }

  sub_1974249D8(v11, a2, a3, a1, v21);
}

unint64_t sub_1974122A4()
{
  result = qword_1ED7C77E8;
  if (!qword_1ED7C77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77E8);
  }

  return result;
}

unint64_t sub_1974122F8()
{
  result = qword_1ED7C77F0;
  if (!qword_1ED7C77F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C77F0);
  }

  return result;
}

uint64_t sub_197412354(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for FetchDescriptor(319, a1[2], a1[4], a4);
  if (v5 <= 0x3F)
  {
    result = sub_197521AAC();
    if (v6 <= 0x3F)
    {
      sub_197405108();
      result = sub_19752166C();
      if (v7 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_19741241C(uint64_t a1)
{
  result = type metadata accessor for EditingState(319);
  if (v4 <= 0x3F)
  {
    result = type metadata accessor for FetchDescriptor(319, *(a1 + 16), *(a1 + 24), v3);
    if (v5 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1974124AC(uint64_t a1)
{
  sub_19752139C();
  sub_197521F5C();
  if (v1 <= 0x3F)
  {
    sub_197520C4C();
    sub_197521AAC();
    if (v2 <= 0x3F)
    {
      sub_1974125B8();
      if (v3 <= 0x3F)
      {
        sub_19752228C();
        sub_197521AAC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1974125B8()
{
  if (!qword_1ED7C9368[0])
  {
    v0 = sub_197521F5C();
    if (!v1)
    {
      atomic_store(v0, qword_1ED7C9368);
    }
  }
}

uint64_t sub_197412608(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_197412644()
{
  result = qword_1ED7C80E8;
  if (!qword_1ED7C80E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C80E8);
  }

  return result;
}

uint64_t sub_197412698(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197412710(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_197412788(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EAF2AEE0, &qword_19752E9C0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_OWORD *sub_197412800(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  v29 = v10;
  v30 = sub_197412788(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
  v31 = sub_197412788(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
  *&v28 = a1;
  v11 = *a5;
  v13 = sub_1973F4028(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 48 * v13);
      __swift_destroy_boxed_opaque_existential_1Tm_2(v20);
      return sub_1974028A0(&v28, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    sub_19747A934();
    goto LABEL_7;
  }

  sub_1973FF110(v16, a4 & 1);
  v22 = sub_1973F4028(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = sub_1975229CC();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_2(&v28, v10);
  MEMORY[0x1EEE9AC00](v24, v24);
  v26 = (&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  sub_197412A6C(v13, a2, a3, *v26, v19);

  return __swift_destroy_boxed_opaque_existential_1Tm_2(&v28);
}

_OWORD *sub_197412A6C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AEE0, &qword_19752E9C0);
  v17 = sub_197412788(&qword_1ED7C77C0, sub_197412644, MEMORY[0x1E69E6330]);
  v18 = sub_197412788(&qword_1ED7C77C8, sub_197411E68, MEMORY[0x1E69E6300]);
  *&v15 = a4;
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = (a5[6] + 16 * a1);
  *v10 = a2;
  v10[1] = a3;
  result = sub_1974028A0(&v15, (a5[7] + 48 * a1));
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

unint64_t sub_197412C34@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1975218DC();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_19741304C(0, 1, 1, MEMORY[0x1E69E7CC0]);
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
    v14 = sub_19741304C((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
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
        v19 = sub_1975218BC();
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

        v14 = sub_19752182C();
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
        v18 = sub_19752182C();
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
          v7 = sub_1975218DC();
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

        v14 = sub_19741304C(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1975218DC();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_19741304C(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_19741304C((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_19752182C();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_197412FF4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_19752282C() & 1;
  }
}

char *sub_19741304C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B450, &unk_19752D610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size_0(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void sub_197413174(uint64_t a1)
{
  sub_19752132C();
  if (v1 <= 0x3F)
  {
    sub_197413274(319, qword_1ED7C8638, &type metadata for HistoryChange, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_197413274(319, &qword_1ED7CA7A8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_197413274(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_197413330(uint64_t a1)
{
  *(a1 + 8) = sub_197413360();
  result = sub_1974133B4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_197413360()
{
  result = qword_1ED7C9408;
  if (!qword_1ED7C9408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7C9408);
  }

  return result;
}

unint64_t sub_1974133B4()
{
  result = qword_1ED7C9410[0];
  if (!qword_1ED7C9410[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED7C9410);
  }

  return result;
}

uint64_t sub_197413438(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1973F7950(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_19741E5C8(&qword_1EAF2B1B0, &qword_19752D340);
      v11 = v19;
      goto LABEL_8;
    }

    sub_19741359C(v16, a4 & 1, &qword_1EAF2B1B0, &qword_19752D340);
    v11 = sub_1973F7950(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_1975229CC();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(*(v21 + 56) + 8 * v11) = a1;
  }

  else
  {

    return sub_197413824(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_19741359C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  result = sub_19752243C();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v21 = v18 | (v10 << 6);
      v31 = *(*(v7 + 48) + 16 * v21);
      v22 = *(*(v7 + 56) + 8 * v21);
      if ((v6 & 1) == 0)
      {
      }

      sub_197522A5C();
      MEMORY[0x19A8E1190](v31);
      result = sub_197522A9C();
      v23 = -1 << *(v9 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v9 + 48) + 16 * v17) = v31;
      *(*(v9 + 56) + 8 * v17) = v22;
      ++*(v9 + 16);
    }

    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v20 = v11[v10];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v6 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v30 = 1 << *(v7 + 32);
    v5 = v4;
    if (v30 >= 64)
    {
      bzero((v7 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v30;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

unint64_t sub_19741382C(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

uint64_t sub_197413874()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_1974138C4(uint64_t a1)
{
  if (swift_conformsToProtocol2() && a1)
  {
    do
    {
      a1 = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      if (swift_conformsToProtocol2())
      {
        v2 = a1 == 0;
      }

      else
      {
        v2 = 1;
      }
    }

    while (!v2);
  }

  if (swift_conformsToProtocol2() && a1)
  {
    do
    {
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      swift_beginAccess();
      if (swift_conformsToProtocol2())
      {
        v4 = AssociatedTypeWitness == 0;
      }

      else
      {
        v4 = 1;
      }
    }

    while (!v4);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B588, &unk_19752E9B0);
  v5 = sub_1975214EC();
  v6 = sub_1975214EC();
  if (v5)
  {
    if (!v6 || v5 != v6)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  result = sub_1975214DC();
  if (v8 < 1)
  {
    __break(1u);
    return result;
  }

  v9 = *result;
  return (swift_conformsToProtocol2() && v9);
}

uint64_t sub_197413A80()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_197413B20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2AF20, &unk_19752F320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_197413B90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_197413BF4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_197413C58(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_197413CBC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_197413D04(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

void _SD_Initialize_framework()
{
  if (_SD_Initialize_framework__SwiftDataFrameworkOnceToken[0] != -1)
  {
    dispatch_once(_SD_Initialize_framework__SwiftDataFrameworkOnceToken, &__block_literal_global);
  }
}

uint64_t ModelContainer.init(for:migrationPlan:configurations:)(char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  v9 = type metadata accessor for ModelConfiguration(0);
  v137 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = (&v129 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11, v14);
  v16 = &v129 - v15;
  v141 = v4;
  *(v4 + 40) = MEMORY[0x1E69E7CD0];
  v17 = (v4 + 40);
  v17[1] = MEMORY[0x1E69E7CC0];
  v133 = v17 + 1;
  v17[2] = MEMORY[0x1E69E7CC8];
  v138 = v17 + 2;
  v17[3] = 0;
  _SD_Initialize_framework();
  *(v17 - 3) = a1;
  *(v17 - 2) = a2;
  v134 = a2;
  v135 = a3;
  v140 = v17;
  *(v17 - 1) = a3;
  v18 = a4[2];

  v142 = a1;
  v136 = v9;
  if (v18)
  {
    v139 = a4;
    v19 = a1;
    v20 = MEMORY[0x1E69E7CD0];
  }

  else
  {
    ModelConfiguration.init(isStoredInMemoryOnly:)(0, v16);
    v21 = *(v9 + 40);

    *&v16[v21] = a1;
    sub_19741598C(v16, v13);
    v22 = a4;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v23 = a4;
    }

    else
    {
LABEL_95:
      v23 = sub_1974773F8(0, *(v22 + 16) + 1, 1, v22, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
    }

    v24 = v141;
    v20 = MEMORY[0x1E69E7CD0];
    v26 = v23[2];
    v25 = v23[3];
    if (v26 >= v25 >> 1)
    {
      v23 = sub_1974773F8((v25 > 1), v26 + 1, 1, v23, &qword_1EAF2AFF8, &unk_19752D470, type metadata accessor for ModelConfiguration);
    }

    v23[2] = v26 + 1;
    v27 = (*(v137 + 80) + 32) & ~*(v137 + 80);
    v139 = v23;
    sub_19740B38C(v13, v23 + v27 + *(v137 + 72) * v26);
    sub_19740B2C8(v16);
    v19 = *(v24 + 16);
  }

  v157 = v20;
  v28 = *(v19 + 8);
  if (v28 >> 62)
  {
    goto LABEL_93;
  }

  v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_10:

  if (v29)
  {
    v30 = 0;
    v144 = v28 & 0xFFFFFFFFFFFFFF8;
    v145 = v28 & 0xC000000000000001;
    v31 = MEMORY[0x1E69E7CC8];
    v143 = v28;
    while (1)
    {
      if (v145)
      {
        v28 = MEMORY[0x19A8E0960](v30, v28);
        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v39 = v157;
          goto LABEL_22;
        }
      }

      else
      {
        if (v30 >= *(v144 + 16))
        {
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
          v29 = sub_1975220EC();
          goto LABEL_10;
        }

        v28 = *(v28 + 8 * v30 + 32);

        v32 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_19;
        }
      }

      swift_beginAccess();
      v33 = *(v28 + 16);
      v34 = *(v28 + 24);

      sub_197414EA0(&v150, v33, v34);

      v35 = v29;
      v37 = *(v28 + 16);
      v36 = *(v28 + 24);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v150 = v31;
      sub_1973F883C(v28, v37, v36, isUniquelyReferenced_nonNull_native, &qword_1EAF2B380, &qword_19752D538, sub_1973FB840);

      v29 = v35;

      v31 = v150;
      ++v30;
      v28 = v143;
      if (v32 == v35)
      {
        goto LABEL_20;
      }
    }
  }

  v31 = MEMORY[0x1E69E7CC8];
  v39 = MEMORY[0x1E69E7CD0];
LABEL_22:

  v40 = v141;
  *(v141 + 72) = v39;
  *(v40 + 80) = v31;
  v41 = v139;
  v42 = *(v139 + 16);
  v131 = v39;
  v132 = v31;
  v130 = v42;
  if (!v42)
  {

LABEL_52:
    v72 = sub_19741A1AC(v142, v41);

    v73 = v140;
    swift_beginAccess();
    v28 = *v73 + 56;
    v74 = 1 << *(*v73 + 32);
    v75 = -1;
    if (v74 < 64)
    {
      v75 = ~(-1 << v74);
    }

    v76 = v75 & *(*v73 + 56);
    v77 = (v74 + 63) >> 6;
    v143 = *v73;

    v78 = 0;
    v139 = v77;
    v137 = v28;
    while (v76)
    {
LABEL_62:
      sub_197414BA4(*(v143 + 48) + 40 * (__clz(__rbit64(v76)) | (v78 << 6)), &v154);
      v148[0] = v154;
      v148[1] = v155;
      v82 = v156;
      v149 = v156;
      v83 = *(&v155 + 1);
      v84 = __swift_project_boxed_opaque_existential_1(v148, *(&v155 + 1));
      v85 = *(v40 + 16);

      v86 = v84;
      v87 = v146;
      v88 = sub_19740AF04(v86, v85, v134, v135, v83, v82);
      v146 = v87;
      if (v87)
      {

        sub_197414BEC(v148);

        return v40;
      }

      v90 = v88;
      v91 = v89;

      sub_197414BA4(v148, &v150);
      *(&v152 + 1) = v90;
      v153 = v91;
      v28 = v133;
      swift_beginAccess();
      v92 = *v28;
      swift_unknownObjectRetain();
      v93 = swift_isUniquelyReferenced_nonNull_native();
      *v28 = v92;
      v145 = v91;
      if ((v93 & 1) == 0)
      {
        v92 = sub_19740D174(0, v92[2] + 1, 1, v92);
        *v28 = v92;
      }

      v95 = v92[2];
      v94 = v92[3];
      if (v95 >= v94 >> 1)
      {
        v92 = sub_19740D174((v94 > 1), v95 + 1, 1, v92);
      }

      v92[2] = v95 + 1;
      v96 = &v92[7 * v95];
      v97 = v150;
      v98 = v151;
      v99 = v152;
      v96[10] = v153;
      *(v96 + 3) = v98;
      *(v96 + 4) = v99;
      *(v96 + 2) = v97;
      *v28 = v92;
      swift_endAccess();
      ObjectType = swift_getObjectType();
      v101 = (*(v145 + 40))(ObjectType);
      v16 = v102;
      v103 = v138;
      swift_beginAccess();
      v144 = v90;
      swift_unknownObjectRetain();
      v104 = swift_isUniquelyReferenced_nonNull_native();
      v147 = *v103;
      v105 = v147;
      *v103 = 0x8000000000000000;
      v22 = sub_1973F4028(v101, v16);
      v107 = v105[2];
      v108 = (v106 & 1) == 0;
      v109 = v107 + v108;
      if (__OFADD__(v107, v108))
      {
        goto LABEL_92;
      }

      v110 = v106;
      v111 = v105[3];
      v140 = v101;
      if (v111 >= v109)
      {
        if ((v104 & 1) == 0)
        {
          sub_19747B284();
        }
      }

      else
      {
        sub_19740CAD4(v109, v104);
        v112 = sub_1973F4028(v101, v16);
        if ((v110 & 1) != (v113 & 1))
        {
          result = sub_1975229CC();
          __break(1u);
          return result;
        }

        v22 = v112;
      }

      v77 = v139;
      v13 = v147;
      if (v110)
      {
        v79 = (v147[7] + 16 * v22);
        v80 = v145;
        *v79 = v144;
        v79[1] = v80;

        swift_unknownObjectRelease();
      }

      else
      {
        v147[(v22 >> 6) + 8] |= 1 << v22;
        v114 = (v13[6] + 16 * v22);
        *v114 = v140;
        v114[1] = v16;
        v115 = (v13[7] + 16 * v22);
        v116 = v145;
        *v115 = v144;
        v115[1] = v116;
        v117 = v13[2];
        v118 = __OFADD__(v117, 1);
        v119 = v117 + 1;
        if (v118)
        {
          __break(1u);
          goto LABEL_95;
        }

        v13[2] = v119;
      }

      v76 &= v76 - 1;
      *v138 = v13;
      swift_endAccess();
      swift_unknownObjectRelease();
      sub_197414BEC(v148);
      v40 = v141;
      v28 = v137;
    }

    while (1)
    {
      v81 = v78 + 1;
      if (__OFADD__(v78, 1))
      {
        goto LABEL_88;
      }

      if (v81 >= v77)
      {

        sub_19740CEC0();

        return v40;
      }

      v76 = *(v28 + 8 * v81);
      ++v78;
      if (v76)
      {
        v78 = v81;
        goto LABEL_62;
      }
    }
  }

  v143 = v139 + ((*(v137 + 80) + 32) & ~*(v137 + 80));

  swift_beginAccess();
  v41 = v139;
  v43 = 0;
  while (1)
  {
    if (v43 >= *(v41 + 16))
    {
      goto LABEL_91;
    }

    v44 = v143 + *(v137 + 72) * v43;
    *(&v155 + 1) = v136;
    v156 = sub_197413D04(&qword_1ED7C9B58, type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v154);
    sub_19741598C(v44, boxed_opaque_existential_1);
    v46 = *v140;
    v47 = *(*v140 + 16);
    v144 = v43;
    if (v47)
    {
      break;
    }

LABEL_31:
    v54 = *(&v155 + 1);
    v55 = v156;
    __swift_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
    v145 = (*(v55 + 40))(v54, v55);
    if (v145)
    {
      v56 = *(v145 + 64);
      if (v56 >> 62)
      {
        v57 = sub_1975220EC();
      }

      else
      {
        v57 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v57)
      {
        v58 = 0;
        v28 = v56 & 0xFFFFFFFFFFFFFF8;
        while (1)
        {
          if ((v56 & 0xC000000000000001) != 0)
          {
            v60 = MEMORY[0x19A8E0960](v58, v56);
            v59 = v60;
            v62 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_89;
            }
          }

          else
          {
            if (v58 >= *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_90;
            }

            v59 = *(v56 + 8 * v58 + 32);

            v62 = v58 + 1;
            if (__OFADD__(v58, 1))
            {
              goto LABEL_89;
            }
          }

          *&v150 = v59;
          MEMORY[0x1EEE9AC00](v60, v61);
          *(&v129 - 2) = &v150;
          v63 = v146;
          v65 = sub_1974159FC(sub_197415B38, (&v129 - 4), v64);
          v146 = v63;
          if ((v65 & 1) == 0)
          {
            break;
          }

          ++v58;
          if (v62 == v57)
          {
            goto LABEL_45;
          }
        }

        if (qword_1EAF2AD58 != -1)
        {
          swift_once();
        }

        v124 = byte_1EAF2B788;
        v126 = qword_1EAF2B790;
        v125 = unk_1EAF2B798;
        sub_19744BE3C();
        swift_allocError();
        *v127 = v124;
        *(v127 + 8) = v126;
        *(v127 + 16) = v125;
        swift_willThrow();

        v40 = v141;

        goto LABEL_83;
      }

LABEL_45:

      v40 = v141;
    }

    else
    {
      v66 = *(&v155 + 1);
      v67 = v156;
      __swift_mutable_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
      v28 = *(v67 + 48);

      (v28)(v68, v66, v67);
    }

    v69 = *(&v155 + 1);
    v70 = v156;
    __swift_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));
    v71 = v146;
    (*(v70 + 64))(v69, v70);
    if (v71)
    {

LABEL_83:

      sub_197414BEC(&v154);

      return v40;
    }

    v146 = 0;
    v43 = v144 + 1;
    sub_197414BA4(&v154, v148);
    swift_beginAccess();
    sub_197419B14(&v150, v148);
    swift_endAccess();
    sub_197414BEC(&v150);
    sub_197414BEC(&v154);
    v41 = v139;
    if (v43 == v130)
    {
      goto LABEL_52;
    }
  }

  sub_197522A5C();
  __swift_project_boxed_opaque_existential_1(&v154, *(&v155 + 1));

  sub_1975216BC();
  v48 = sub_197522A9C();
  v28 = v46 + 56;
  v49 = -1 << *(v46 + 32);
  v50 = v48 & ~v49;
  if (((*(v46 + 56 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
  {
LABEL_30:

    goto LABEL_31;
  }

  v51 = ~v49;
  while (1)
  {
    sub_197414BA4(*(v46 + 48) + 40 * v50, &v150);
    v52 = *(&v151 + 1);
    v53 = v152;
    __swift_project_boxed_opaque_existential_1(&v150, *(&v151 + 1));
    LOBYTE(v52) = sub_19749BC0C(&v154, v52, v53);
    sub_197414BEC(&v150);
    if (v52)
    {
      break;
    }

    v50 = (v50 + 1) & v51;
    if (((*(v28 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
      goto LABEL_30;
    }
  }

  if (qword_1EAF2AD40 != -1)
  {
    swift_once();
  }

  v120 = byte_1EAF2B740;
  v122 = qword_1EAF2B748;
  v121 = unk_1EAF2B750;
  sub_19744BE3C();
  swift_allocError();
  *v123 = v120;
  *(v123 + 8) = v122;
  *(v123 + 16) = v121;
  swift_willThrow();

  sub_197414BEC(&v154);

  return v40;
}

uint64_t sub_197414C40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B410, &unk_19752D5D0);
  result = sub_1975221AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
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
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_197522A5C();
      sub_19752180C();
      result = sub_197522A9C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_197414EA0(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_197522A5C();
  sub_19752180C();
  v8 = sub_197522A9C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_19752282C() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_197414FF0(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

void sub_197414FF0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_197414C40(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_19747F6BC();
      goto LABEL_16;
    }

    sub_197415170(v8 + 1);
  }

  v10 = *v4;
  sub_197522A5C();
  sub_19752180C();
  v11 = sub_197522A9C();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_19752282C() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_1975229BC();
  __break(1u);
}

uint64_t sub_197415170(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EAF2B410, &unk_19752D5D0);
  result = sub_1975221AC();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_197522A5C();

      sub_19752180C();
      result = sub_197522A9C();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

unint64_t sub_1974153BC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1975220EC();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1974D4C04();
  sub_1974F7B2C(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void static ModelConfiguration.GroupContainer.none.getter(uint64_t a1@<X8>)
{
  *a1 = 256;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
}

uint64_t ModelConfiguration.init(_:schema:url:allowsSave:cloudKitDatabase:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, unsigned __int8 *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a6;
  v36 = a6[1];
  v14 = *(a6 + 1);
  v13 = *(a6 + 2);
  v15 = type metadata accessor for ModelConfiguration(0);
  v16 = v15;
  *(a7 + v15[15]) = 0;
  v17 = 0x746C7561666564;
  if (a2)
  {
    v17 = a1;
  }

  v18 = 0xE700000000000000;
  if (a2)
  {
    v18 = a2;
  }

  v19 = v15[10];
  v20 = (a7 + v15[5]);
  *v20 = v17;
  v20[1] = v18;
  *(a7 + v19) = a3;
  v21 = sub_1975212CC();
  v22 = *(v21 - 8);
  (*(v22 + 16))(a7, a4, v21);
  *(a7 + v16[14]) = 0;
  sub_19752128C();
  v23 = sub_19752188C();

  *(a7 + v16[12]) = v23 & 1;
  *(a7 + v16[11]) = a5;
  v24 = (a7 + v16[6]);
  *v24 = 0;
  v24[1] = 0;
  v25 = a7 + v16[8];
  *v25 = 256;
  *(v25 + 8) = 0;
  *(v25 + 16) = 0;
  *(a7 + v16[13]) = 0;
  v26 = a7 + v16[9];
  *v26 = v12;
  *(v26 + 1) = v36;
  *(v26 + 8) = v14;
  *(v26 + 16) = v13;
  if (v12 == 1)
  {
    v27 = [objc_opt_self() processInfo];
    sub_1974A953C(0xD000000000000020, 0x80000001975237E0);
    v29 = v28;

    if (v29)
    {
      v30 = 0;
      v13 = 0;
    }

    else
    {
      v30 = sub_1974A98BC();
      v13 = v34;
    }

    result = (*(v22 + 8))(a4, v21);
    v33 = (a7 + v16[7]);
    *v33 = v30;
    goto LABEL_12;
  }

  v31 = *(v22 + 8);

  result = v31(a4, v21);
  v33 = (a7 + v16[7]);
  if (v13)
  {
    *v33 = v14;
LABEL_12:
    v33[1] = v13;
    return result;
  }

  *v33 = 0;
  v33[1] = 0;
  return result;
}

uint64_t ModelContainer.__allocating_init(for:migrationPlan:configurations:)(char *a1, unint64_t a2, unint64_t a3, void *a4)
{
  type metadata accessor for ModelContainer();
  v8 = swift_allocObject();
  ModelContainer.init(for:migrationPlan:configurations:)(a1, a2, a3, a4);
  return v8;
}

{
  v8 = swift_allocObject();
  ModelContainer.init(for:migrationPlan:configurations:)(a1, a2, a3, a4);
  return v8;
}

uint64_t sub_197415840(uint64_t a1)
{
  result = sub_197415898(&qword_1ED7C9B70, type metadata accessor for ModelConfiguration, &protocol conformance descriptor for ModelConfiguration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_197415898(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_19741598C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1974159FC(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x19A8E0960](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);

      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_1975220EC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t _s9SwiftData6SchemaC6EntityC2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  swift_beginAccess();
  v4 = a1[2];
  v5 = a1[3];
  swift_beginAccess();
  v6 = v4 == a2[2] && v5 == a2[3];
  if (!v6 && (sub_19752282C() & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v7 = a1[5];
  v8 = a1[6];
  swift_beginAccess();
  v9 = a2[6];
  if (v8)
  {
    if (!v9 || (v7 != a2[5] || v8 != v9) && (sub_19752282C() & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else if (v9)
  {
LABEL_16:
    v18 = 0;
    return v18 & 1;
  }

  swift_beginAccess();
  v10 = a1[10];
  swift_beginAccess();
  v11 = a2[10];

  v12 = sub_197415D98(v10, v11);

  if ((v12 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v13 = a1[11];
  swift_beginAccess();
  v14 = a2[11];

  v15 = sub_19741616C(v13, v14);

  if ((v15 & 1) == 0)
  {
    goto LABEL_16;
  }

  swift_beginAccess();
  v16 = a1[4];
  swift_beginAccess();
  v17 = a2[4];

  v18 = sub_197416704(v16, v17);

  return v18 & 1;
}

uint64_t sub_197415D98(uint64_t a1, uint64_t a2)
{
  v2 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (v2)
    {
      v3 = a2 & 0xFFFFFFFFFFFFFF8;
      if (a2 < 0)
      {
        v3 = a2;
      }

      a2 = a1;
      goto LABEL_15;
    }

    if (a1 == a2)
    {
LABEL_62:
      v4 = 1;
      return v4 & 1;
    }

    if (*(a1 + 16) == *(a2 + 16))
    {
      v6 = 0;
      v7 = a1 + 56;
      v8 = 1 << *(a1 + 32);
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      else
      {
        v9 = -1;
      }

      v10 = v9 & *(a1 + 56);
      v11 = (v8 + 63) >> 6;
      v12 = a2 + 56;
      if (!v10)
      {
LABEL_24:
        v15 = v6;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v6 >= v11)
          {
            goto LABEL_62;
          }

          v16 = *(v7 + 8 * v6);
          ++v15;
          if (v16)
          {
            v13 = __clz(__rbit64(v16));
            v14 = (v16 - 1) & v16;
            goto LABEL_29;
          }
        }

LABEL_66:
        __break(1u);
        return MEMORY[0x1EEE6A200](a1, a2);
      }

      while (2)
      {
        v13 = __clz(__rbit64(v10));
        v14 = (v10 - 1) & v10;
LABEL_29:
        v37 = a1;
        v38 = a2;
        v17 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
        sub_197522A5C();
        swift_beginAccess();

        sub_19752180C();

        v18 = sub_197522A9C();
        v19 = -1 << *(v38 + 32);
        v20 = v18 & ~v19;
        if ((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
        {
          v34 = v14;
          v35 = v11;
          v36 = v7;
          v21 = ~v19;
          v22 = *(v38 + 48);
          swift_beginAccess();
          swift_beginAccess();
          while (1)
          {
            v23 = *(v22 + 8 * v20);
            swift_beginAccess();
            v24 = v23[2] == v17[2] && v23[3] == v17[3];
            if (v24 || (sub_19752282C() & 1) != 0)
            {
              a1 = swift_beginAccess();
              v25 = v23[6];
              v26 = v17[6];
              v27 = *(v25 + 16);
              if (v27 == *(v26 + 16))
              {
                if (v27)
                {
                  v28 = v25 == v26;
                }

                else
                {
                  v28 = 1;
                }

                if (!v28)
                {
                  v29 = (v26 + 68);
                  v30 = (v25 + 68);
                  while (v27)
                  {
                    if (*(v30 - 4) != *(v29 - 4))
                    {
                      goto LABEL_32;
                    }

                    if ((*(v30 - 2) ^ *(v29 - 2)))
                    {
                      goto LABEL_32;
                    }

                    if ((*v30 ^ *v29))
                    {
                      goto LABEL_32;
                    }

                    if ((*(v30 - 3) ^ *(v29 - 3)))
                    {
                      goto LABEL_32;
                    }

                    if ((*(v30 - 1) ^ *(v29 - 1)))
                    {
                      goto LABEL_32;
                    }

                    v31 = *(v30 - 36);
                    v32 = *(v29 - 36);
                    if ((v31 ^ v32))
                    {
                      goto LABEL_32;
                    }

                    if ((v31 & v32) == 1)
                    {
                      a2 = *(v30 - 12);
                      v33 = *(v29 - 12);
                      if (a2)
                      {
                        if (!v33)
                        {
                          goto LABEL_32;
                        }

                        a1 = *(v30 - 20);
                        if (a1 != *(v29 - 20) || a2 != v33)
                        {
                          a1 = sub_19752282C();
                          if ((a1 & 1) == 0)
                          {
                            goto LABEL_32;
                          }
                        }
                      }

                      else if (v33)
                      {
                        goto LABEL_32;
                      }
                    }

                    v30 += 40;
                    v29 += 40;
                    if (!--v27)
                    {
                      goto LABEL_31;
                    }
                  }

                  __break(1u);
                  goto LABEL_66;
                }

LABEL_31:
                swift_beginAccess();
                if (v23[7] == v17[7])
                {
                  break;
                }
              }
            }

LABEL_32:
            v20 = (v20 + 1) & v21;
            if (((*(v12 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
            {
              goto LABEL_63;
            }
          }

          a1 = v37;
          a2 = v38;
          v11 = v35;
          v7 = v36;
          v10 = v34;
          if (v34)
          {
            continue;
          }

          goto LABEL_24;
        }

        break;
      }

LABEL_63:
    }

    v4 = 0;
    return v4 & 1;
  }

  v3 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v3 = a1;
  }

  if (!v2)
  {
LABEL_15:
    v4 = sub_1974F6334(v3, a2);
    return v4 & 1;
  }

  if (a2 < 0)
  {
    a1 = a2;
  }

  else
  {
    a1 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  a2 = v3;

  return MEMORY[0x1EEE6A200](a1, a2);
}

uint64_t sub_19741616C(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](a1, a2);
    }

    v5 = sub_1974F6334(a2, v2);
    return v5 & 1;
  }

  if (v3)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = sub_1974F6334(v4, a1);
    return v5 & 1;
  }

  if (a1 == a2)
  {
LABEL_92:
    v5 = 1;
    return v5 & 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_94:
    v5 = 0;
    return v5 & 1;
  }

  v6 = 0;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  if (!v10)
  {
    goto LABEL_24;
  }

  while (2)
  {
    v44 = v11;
    v45 = v7;
    v13 = __clz(__rbit64(v10));
    v43 = (v10 - 1) & v10;
LABEL_29:
    v46 = a1;
    v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    v17 = sub_197522A9C();
    v18 = -1 << *(v2 + 32);
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    v19 = v17 & ~v18;
    if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_93:

      goto LABEL_94;
    }

    v20 = ~v18;
    while (1)
    {
      v21 = *(*(v2 + 48) + 8 * v19);
      swift_beginAccess();
      v22 = *(v21 + 16) == *(v16 + 16) && *(v21 + 24) == *(v16 + 24);
      if (!v22 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_33;
      }

      a1 = swift_beginAccess();
      v23 = *(v21 + 56);
      v24 = *(v16 + 56);
      v25 = *(v23 + 16);
      if (v25 != *(v24 + 16))
      {
        goto LABEL_33;
      }

      if (v25)
      {
        v26 = v23 == v24;
      }

      else
      {
        v26 = 1;
      }

      if (!v26)
      {
        v27 = (v23 + 32);
        v28 = (v24 + 32);
        while (v25)
        {
          if (*v27 != *v28)
          {
            goto LABEL_33;
          }

          ++v27;
          ++v28;
          if (!--v25)
          {
            goto LABEL_48;
          }
        }

        __break(1u);
        goto LABEL_97;
      }

LABEL_48:
      swift_beginAccess();
      if (*(v21 + 64) != *(v16 + 64))
      {
        goto LABEL_33;
      }

      swift_beginAccess();
      if ((*(v21 + 72) != *(v16 + 72) || *(v21 + 80) != *(v16 + 80)) && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_33;
      }

      swift_beginAccess();
      v29 = *(v21 + 88);
      if (v29 > 1)
      {
        v34 = 0x65646163736163;
        if (v29 == 2)
        {
          v31 = 0x65646163736163;
        }

        else
        {
          v31 = 2037278052;
        }

        if (v29 == 2)
        {
          v33 = 0xE700000000000000;
        }

        else
        {
          v33 = 0xE400000000000000;
        }

        v30 = 0x7966696C6C756ELL;
        v32 = 0xE800000000000000;
      }

      else
      {
        v30 = 0x7966696C6C756ELL;
        if (*(v21 + 88))
        {
          v31 = 0x7966696C6C756ELL;
        }

        else
        {
          v31 = 0x6E6F697463416F6ELL;
        }

        v32 = 0xE800000000000000;
        if (*(v21 + 88))
        {
          v33 = 0xE700000000000000;
        }

        else
        {
          v33 = 0xE800000000000000;
        }

        v34 = 0x65646163736163;
      }

      if (*(v16 + 88) == 2)
      {
        v35 = 0xE700000000000000;
      }

      else
      {
        v34 = 2037278052;
        v35 = 0xE400000000000000;
      }

      if (*(v16 + 88))
      {
        v32 = 0xE700000000000000;
      }

      else
      {
        v30 = 0x6E6F697463416F6ELL;
      }

      if (*(v16 + 88) <= 1u)
      {
        v36 = v30;
      }

      else
      {
        v36 = v34;
      }

      if (*(v16 + 88) <= 1u)
      {
        v37 = v32;
      }

      else
      {
        v37 = v35;
      }

      if (v31 == v36 && v33 == v37)
      {
      }

      else
      {
        v38 = sub_19752282C();

        if ((v38 & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      swift_beginAccess();
      v39 = *(v21 + 104);
      v40 = *(v16 + 104);
      if (!v39)
      {
        if (!v40)
        {
          break;
        }

LABEL_32:

        goto LABEL_33;
      }

      if (!v40)
      {
        goto LABEL_32;
      }

      if (*(v21 + 96) == *(v16 + 96) && v39 == v40)
      {
        break;
      }

      v41 = sub_19752282C();

      if (v41)
      {
        goto LABEL_90;
      }

LABEL_33:
      v19 = (v19 + 1) & v20;
      if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_93;
      }
    }

LABEL_90:

    v7 = v45;
    a1 = v46;
    v10 = v43;
    v11 = v44;
    if (v43)
    {
      continue;
    }

    break;
  }

LABEL_24:
  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_92;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v44 = v11;
      v45 = v7;
      v13 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
      goto LABEL_29;
    }
  }

LABEL_97:
  __break(1u);
  return MEMORY[0x1EEE6A200](a1, a2);
}

uint64_t sub_197416704(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      a2 = a1;
    }

    else
    {
      a2 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (v2 < 0)
      {
        a1 = v2;
      }

      else
      {
        a1 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      return MEMORY[0x1EEE6A200](a1, a2);
    }

    v5 = sub_1974F6334(a2, v2);
    return v5 & 1;
  }

  if (v3)
  {
    v4 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v4 = a2;
    }

    v5 = sub_1974F6334(v4, a1);
    return v5 & 1;
  }

  if (a1 == a2)
  {
LABEL_52:
    v5 = 1;
    return v5 & 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
LABEL_54:
    v5 = 0;
    return v5 & 1;
  }

  v6 = 0;
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = a2 + 56;
  if (!v10)
  {
    goto LABEL_24;
  }

  do
  {
    v13 = __clz(__rbit64(v10));
    v38 = (v10 - 1) & v10;
LABEL_29:
    v39 = a1;
    v16 = *(*(a1 + 48) + 8 * (v13 | (v6 << 6)));
    sub_197522A5C();
    swift_beginAccess();

    sub_19752180C();

    v17 = sub_197522A9C();
    v18 = -1 << *(v2 + 32);
    v19 = v17 & ~v18;
    if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
    {
LABEL_53:

      goto LABEL_54;
    }

    v36 = v11;
    v37 = v7;
    v20 = ~v18;
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    swift_beginAccess();
    while (1)
    {
      v21 = *(*(v2 + 48) + 8 * v19);
      swift_beginAccess();
      v22 = v21[2] == v16[2] && v21[3] == v16[3];
      if (!v22 && (sub_19752282C() & 1) == 0)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      v23 = v21[6];
      v24 = v16[6];
      if (v23)
      {
        if (!v24)
        {
          goto LABEL_32;
        }

        v25 = v21[5] == v16[5] && v23 == v24;
        if (!v25 && (sub_19752282C() & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else if (v24)
      {
        goto LABEL_32;
      }

      swift_beginAccess();
      v26 = v21[10];
      v27 = v16[10];

      v28 = sub_197415D98(v26, v27);

      if (v28)
      {
        swift_beginAccess();
        v29 = v21[11];
        v30 = v16[11];

        v31 = sub_19741616C(v29, v30);

        if (v31)
        {
          break;
        }
      }

LABEL_32:
      v19 = (v19 + 1) & v20;
      if (((*(v12 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        goto LABEL_53;
      }
    }

    swift_beginAccess();
    v32 = v21[4];
    v33 = v16[4];

    v34 = sub_197416704(v32, v33);

    if ((v34 & 1) == 0)
    {
      goto LABEL_32;
    }

    v10 = v38;
    a1 = v39;
    v11 = v36;
    v7 = v37;
  }

  while (v38);
LABEL_24:
  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_52;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v38 = (v15 - 1) & v15;
      goto LABEL_29;
    }
  }

  __break(1u);
  return MEMORY[0x1EEE6A200](a1, a2);
}