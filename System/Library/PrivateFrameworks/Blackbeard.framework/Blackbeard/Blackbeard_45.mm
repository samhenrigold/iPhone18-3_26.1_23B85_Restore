void *sub_1E63E57E8(uint64_t a1, uint64_t a2)
{
  v94 = a1;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  MEMORY[0x1EEE9AC00](v75);
  v76 = (&v74 - v3);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v85 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v5 = &v74 - v4;
  v6 = type metadata accessor for ItemContext(0);
  v98 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v74 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = (&v74 - v11);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v74 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v74 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072830, &qword_1E65EBE28);
  v86 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v74 - v19;
  swift_getKeyPath();
  sub_1E65E4EC8();

  result = v99;
  if (v100)
  {
    return sub_1E5FED3F8(v99, v100);
  }

  v91 = v20;
  v79 = v18;
  v78 = v17;
  v89 = v15;
  v90 = v12;
  v77 = v9;
  v22 = v99[2];
  v23 = MEMORY[0x1E69E7CC0];
  v74 = a2;
  v87 = v6;
  v84 = v22;
  if (!v22)
  {
    v29 = v94;
    v49 = v98;
    v47 = v90;
LABEL_28:
    result = sub_1E5FED3F8(result, 0);
    v97 = v23[2];
    if (!v97)
    {
      v96 = MEMORY[0x1E69E7CC0];
LABEL_52:

      v72 = sub_1E600A878(v96);

      v73 = v76;
      *v76 = v72;
      swift_storeEnumTagMultiPayload();
      sub_1E65E4EE8();
      return sub_1E5DFE50C(v73, &qword_1ED072828, &qword_1E65EBE20);
    }

    v53 = 0;
    v54 = v29 + 56;
    v96 = MEMORY[0x1E69E7CC0];
    v93 = v23;
    while (1)
    {
      if (v53 >= v23[2])
      {
        __break(1u);
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }

      v55 = v23;
      v56 = (*(v49 + 80) + 32) & ~*(v49 + 80);
      v57 = *(v49 + 72);
      v58 = v89;
      sub_1E5E1DC3C(v55 + v56 + v57 * v53, v89, type metadata accessor for ItemContext);
      sub_1E5E1DC3C(v58, v47, type metadata accessor for ItemContext);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v60 = *v47;
        v59 = v47[1];
        if (*(v29 + 16))
        {
          sub_1E65E6D28();
          sub_1E65E5D78();
          v61 = sub_1E65E6D78();
          v62 = -1 << *(v29 + 32);
          v63 = v61 & ~v62;
          if ((*(v54 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63))
          {
            v64 = ~v62;
            while (1)
            {
              v65 = (*(v94 + 48) + 16 * v63);
              v66 = *v65 == v60 && v59 == v65[1];
              if (v66 || (sub_1E65E6C18() & 1) != 0)
              {
                break;
              }

              v63 = (v63 + 1) & v64;
              if (((*(v54 + ((v63 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v63) & 1) == 0)
              {
                goto LABEL_43;
              }
            }

            sub_1E5E483B8(v60, v59);
            sub_1E5E1E938(v89, v77, type metadata accessor for ItemContext);
            v67 = v96;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v101 = v67;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1E601BFA8(0, *(v67 + 16) + 1, 1);
              v67 = v101;
            }

            v29 = v94;
            v47 = v90;
            v70 = *(v67 + 16);
            v69 = *(v67 + 24);
            v71 = v67;
            if (v70 >= v69 >> 1)
            {
              sub_1E601BFA8((v69 > 1), v70 + 1, 1);
              v29 = v94;
              v71 = v101;
            }

            *(v71 + 16) = v70 + 1;
            v96 = v71;
            result = sub_1E5E1E938(v77, v71 + v56 + v70 * v57, type metadata accessor for ItemContext);
            v49 = v98;
            goto LABEL_31;
          }

LABEL_43:
          sub_1E63E9E88(v89, type metadata accessor for ItemContext);
          result = sub_1E5E483B8(v60, v59);
          v29 = v94;
        }

        else
        {
          sub_1E63E9E88(v89, type metadata accessor for ItemContext);
          result = sub_1E5E483B8(v60, v59);
        }

        v49 = v98;
        v47 = v90;
      }

      else
      {
        sub_1E63E9E88(v58, type metadata accessor for ItemContext);
        result = sub_1E63E9E88(v47, type metadata accessor for ItemContext);
      }

LABEL_31:
      ++v53;
      v23 = v93;
      if (v53 == v97)
      {
        goto LABEL_52;
      }
    }
  }

  v24 = 0;
  v25 = v86;
  v83 = v99 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
  v82 = v86 + 16;
  v26 = v85;
  v95 = (v85 + 8);
  v96 = v85 + 16;
  v81 = (v86 + 8);
  v27 = v97;
  v28 = v79;
  v80 = v99;
  while (1)
  {
    if (v24 >= result[2])
    {
      goto LABEL_54;
    }

    v31 = *(v25 + 72);
    v92 = v24;
    v32 = v91;
    (*(v25 + 16))(v91, &v83[v31 * v24], v28);
    v33 = sub_1E65E0518();
    swift_getKeyPath();
    v34 = *(v33 + 16);
    if (v34)
    {
      v93 = v23;
      v99 = MEMORY[0x1E69E7CC0];
      sub_1E601BFA8(0, v34, 0);
      v35 = v99;
      v36 = *(v26 + 80);
      v88 = v33;
      v37 = v33 + ((v36 + 32) & ~v36);
      v38 = v26;
      v39 = *(v26 + 72);
      v40 = *(v38 + 16);
      v41 = v78;
      do
      {
        v40(v5, v37, v27);
        swift_getAtKeyPath();
        (*v95)(v5, v27);
        v99 = v35;
        v43 = *(v35 + 16);
        v42 = *(v35 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1E601BFA8((v42 > 1), v43 + 1, 1);
          v35 = v99;
        }

        *(v35 + 16) = v43 + 1;
        sub_1E5E1E938(v41, v35 + ((*(v98 + 80) + 32) & ~*(v98 + 80)) + *(v98 + 72) * v43, type metadata accessor for ItemContext);
        v37 += v39;
        --v34;
        v27 = v97;
      }

      while (v34);
      v28 = v79;
      (*v81)(v91, v79);

      v23 = v93;
    }

    else
    {

      result = (*v81)(v32, v28);
      v35 = MEMORY[0x1E69E7CC0];
    }

    v44 = *(v35 + 16);
    v45 = v23[2];
    v46 = v45 + v44;
    v47 = v90;
    if (__OFADD__(v45, v44))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (!result || v46 > v23[3] >> 1)
    {
      if (v45 <= v46)
      {
        v48 = v45 + v44;
      }

      else
      {
        v48 = v45;
      }

      result = sub_1E64F6184(result, v48, 1, v23);
      v23 = result;
    }

    v27 = v97;
    v49 = v98;
    if (*(v35 + 16))
    {
      if ((v23[3] >> 1) - v23[2] < v44)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v29 = v94;
      v25 = v86;
      result = v80;
      v30 = v92;
      if (v44)
      {
        v50 = v23[2];
        v51 = __OFADD__(v50, v44);
        v52 = v50 + v44;
        if (v51)
        {
          goto LABEL_58;
        }

        v23[2] = v52;
      }
    }

    else
    {

      v29 = v94;
      v25 = v86;
      result = v80;
      v30 = v92;
      if (v44)
      {
        goto LABEL_56;
      }
    }

    v24 = v30 + 1;
    v26 = v85;
    if (v24 == v84)
    {
      goto LABEL_28;
    }
  }

LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_1E63E61E0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  v60 = a8;
  v62 = a6;
  v49[1] = a5;
  v57 = a2;
  v65 = a20;
  v66 = a21;
  v58 = a19;
  v59 = a4;
  v51 = a17;
  v49[2] = a18;
  v53 = a14;
  v54 = a12;
  v55 = a10;
  v22 = sub_1E65E0B48();
  v56 = *(v22 - 8);
  v52 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v50 = v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079038, &qword_1E66009F8);
  v68 = *(v24 - 8);
  v69 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v67 = v49 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0769C0, &qword_1E65F75B0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v28 = v49 - v27;
  v29 = sub_1E65E0D78();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v30 = sub_1E65E0CE8();
  v31 = *(v30 - 8);
  v63 = v30;
  v64 = v31;
  MEMORY[0x1EEE9AC00](v30);
  v49[0] = v49 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = *a1;
  v33 = sub_1E65E0EE8();
  (*(*(v33 - 8) + 56))(v28, 1, 1, v33);

  sub_1E65E0D68();
  v34 = v49[0];
  sub_1E65E0CD8();
  v35 = MEMORY[0x1E699DD40];
  v36 = v58;
  v37 = v50;
  sub_1E5E1DC3C(v58, v50, MEMORY[0x1E699DD40]);
  v38 = (*(v56 + 80) + 16) & ~*(v56 + 80);
  v39 = (v38 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E699DD40];
  sub_1E5E1E938(v37, v40 + v38, MEMORY[0x1E699DD40]);
  v42 = (v40 + v39);
  v43 = v66;
  *v42 = v65;
  v42[1] = v43;
  sub_1E5E1DC3C(v36, v37, v35);
  v44 = swift_allocObject();
  sub_1E5E1E938(v37, v44 + v38, v41);
  type metadata accessor for AppFeature(0);
  sub_1E63E9D64(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E63E9D64(&qword_1ED079040, MEMORY[0x1E699DE70], MEMORY[0x1E699DE68]);

  v45 = v67;
  v46 = v63;
  sub_1E65E4DE8();
  sub_1E65E4CC8();
  v47 = sub_1E65E4F08();
  (*(v68 + 8))(v45, v69);
  (*(v64 + 8))(v34, v46);
  return v47;
}

uint64_t sub_1E63E6790(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[4] = swift_task_alloc();
  sub_1E65E6058();
  v1[5] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E635EFB8, v3, v2);
}

uint64_t sub_1E63E6864@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X8>)
{
  v44 = a5;
  v45 = a3;
  v46 = a4;
  v47 = a2;
  v43 = a6;
  v7 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = sub_1E65D7848();
  v39 = *(v15 - 8);
  v40 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E0D48();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v38 - v22;
  v24 = sub_1E65E0C98();
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for AppState(0);
  v38 = v26;
  sub_1E621CCE0();
  v28 = *(a1 + *(v27 + 132) + 8);
  if (*(v28 + 16) && (v29 = sub_1E6416E08(v47), (v30 & 1) != 0))
  {
    (*(v18 + 16))(v21, *(v28 + 56) + *(v18 + 72) * v29, v17);
    (*(v18 + 32))(v23, v21, v17);
  }

  else
  {
    (*(v18 + 104))(v23, *MEMORY[0x1E699DE98], v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v14);
  sub_1E5DFE50C(v11, &qword_1ED071F78, &unk_1E65EA3F0);
  v32 = v39;
  v31 = v40;
  v33 = *(v39 + 48);
  if (v33(v14, 1, v40) == 1)
  {
    sub_1E65D77C8();
    v34 = v33(v14, 1, v31) == 1;
    v35 = v47;
    if (!v34)
    {
      v36 = v47;
      sub_1E5DFE50C(v14, &qword_1ED071F80, &unk_1E65F4310);
      v35 = v36;
    }
  }

  else
  {
    (*(v32 + 32))(v41, v14, v31);
    v35 = v47;
  }

  sub_1E5E1DC3C(v35, v42, MEMORY[0x1E699DD40]);

  return sub_1E65E0C38();
}

uint64_t sub_1E63E6CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079048, &qword_1E6600A10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5E1DC3C(a3, v9, MEMORY[0x1E699DD40]);
  sub_1E65E0C28();
  v10 = sub_1E65E0D48();
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  type metadata accessor for AppState(0);
  return sub_1E6408CA0(v6, v9);
}

uint64_t sub_1E63E6E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v129 = a4;
  v159 = a3;
  v140 = a5;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v152 = v120 - v7;
  v162 = sub_1E65D76F8();
  v150 = *(v162 - 8);
  v132 = *(v150 + 64);
  v8 = MEMORY[0x1EEE9AC00](v162);
  v161 = v120 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v160 = v120 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v151 = v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v163 = v120 - v14;
  v15 = type metadata accessor for AppComposer(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v15 - 8);
  v144 = v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v133 = v120 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v156 = (v120 - v22);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v147 = v120 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = v120 - v25;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v139 = *(v138 - 8);
  v27 = MEMORY[0x1EEE9AC00](v138);
  v134 = v120 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v135 = v120 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v136 = v120 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v137 = v120 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v36 = v120 - v35;
  v37 = sub_1E65E60A8();
  (*(*(v37 - 8) + 56))(v36, 1, 1, v37);
  sub_1E65E6058();
  v149 = a1;

  v38 = sub_1E65E6048();
  v39 = swift_allocObject();
  v40 = MEMORY[0x1E69E85E0];
  v39[2] = v38;
  v39[3] = v40;
  v39[4] = a1;
  sub_1E64B80F8(0, 0, v36, &unk_1E6600AE8, v39);

  v143 = a2;
  v127 = v26;
  v154 = type metadata accessor for AppComposer;
  sub_1E5E1DC3C(a2, v26, type metadata accessor for AppComposer);
  v41 = *(v16 + 80);
  v145 = ((v41 + 16) & ~v41) + v17;
  v146 = (v41 + 16) & ~v41;
  v142 = v41 | 7;
  v153 = swift_allocObject();
  v141 = type metadata accessor for AppComposer;
  sub_1E5E1E938(v26, v153 + ((v41 + 16) & ~v41), type metadata accessor for AppComposer);
  sub_1E65E5148();
  v42 = sub_1E65E5138();
  v43 = v147;
  sub_1E5E1DC3C(a2, v147, type metadata accessor for AppComposer);
  v44 = ((v41 + 32) & ~v41) + v17;
  v126 = (v41 + 32) & ~v41;
  v128 = v44;
  v45 = swift_allocObject();
  v158 = v45;
  v148 = &unk_1E6600AF8;
  v46 = v153;
  *(v45 + 16) = &unk_1E6600AF8;
  *(v45 + 24) = v46;
  v47 = v141;
  sub_1E5E1E938(v43, v45 + ((v41 + 32) & ~v41), v141);
  *(v45 + v44) = 0;
  v48 = v45 + (v44 & 0xFFFFFFFFFFFFFFF8);
  v125 = sub_1E6172524;
  *(v48 + 8) = sub_1E6172524;
  *(v48 + 16) = 0;
  v49 = (v45 + (((v44 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8));
  v50 = MEMORY[0x1E69AB380];
  *v49 = v42;
  v49[1] = v50;
  v51 = v143;
  v52 = v156;
  v53 = v154;
  sub_1E5E1DC3C(v143, v156, v154);
  v54 = (v41 + 48) & ~v41;
  v55 = v54 + v17;
  v56 = swift_allocObject();
  v157 = v56;
  v56[2] = v148;
  v56[3] = v46;
  v56[4] = v42;
  v155 = v42;
  v56[5] = MEMORY[0x1E69AB380];
  sub_1E5E1E938(v52, v56 + v54, v47);
  *(v56 + v55) = 0;
  v57 = v56 + (v55 & 0xFFFFFFFFFFFFFFF8);
  v58 = v125;
  *(v57 + 1) = v125;
  *(v57 + 2) = 0;
  v59 = v51;
  v60 = v133;
  sub_1E5E1DC3C(v51, v133, v53);
  v61 = swift_allocObject();
  v62 = v148;
  v63 = v153;
  v61[2] = v148;
  v61[3] = v63;
  v61[4] = v42;
  v61[5] = MEMORY[0x1E69AB380];
  v64 = v61 + v54;
  v65 = v61;
  v156 = v61;
  v66 = v60;
  v67 = v141;
  sub_1E5E1E938(v66, v64, v141);
  v68 = v65 + ((v55 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v68 = v58;
  *(v68 + 1) = 0;
  v68[16] = 0;
  v69 = v144;
  sub_1E5E1DC3C(v51, v144, v53);
  v70 = swift_allocObject();
  v128 = v70;
  *(v70 + 16) = v62;
  *(v70 + 24) = v63;
  sub_1E5E1E938(v69, v70 + v126, v67);
  v71 = v127;
  sub_1E5E1DC3C(v51, v127, v53);
  sub_1E5DF650C(v159, &v165);
  v122 = *v129;
  v123 = *(v129 + 24);
  v124 = *(v129 + 40);
  v125 = *(v129 + 56);
  v126 = *(v129 + 72);
  v72 = v129;
  v73 = (v145 + 7) & 0xFFFFFFFFFFFFFFF8;
  v148 = v73;
  v144 = (v73 + 47) & 0xFFFFFFFFFFFFFFF8;
  v74 = swift_allocObject();
  v133 = v74;
  v75 = v146;
  sub_1E5E1E938(v71, v74 + v146, v67);
  sub_1E5DF599C(&v165, v74 + v73);
  v76 = (v74 + ((v73 + 47) & 0xFFFFFFFFFFFFFFF8));
  v77 = v72[3];
  v76[2] = v72[2];
  v76[3] = v77;
  v76[4] = v72[4];
  v78 = v72[1];
  *v76 = *v72;
  v76[1] = v78;
  v79 = sub_1E65E3E08();
  (*(*(v79 - 8) + 56))(v163, 1, 1, v79);
  swift_retain_n();
  swift_retain_n();
  swift_unknownObjectRetain();

  v80 = v160;
  sub_1E65D76E8();
  (*(v130 + 104))(v152, *MEMORY[0x1E699D720], v131);
  v81 = v147;
  v82 = v154;
  sub_1E5E1DC3C(v59, v147, v154);
  v153 = swift_allocObject();
  sub_1E5E1E938(v81, v153 + v75, v67);
  sub_1E5E1DC3C(v59, v81, v82);
  v131 = swift_allocObject();
  v83 = v75;
  v84 = v131 + v75;
  v85 = v67;
  sub_1E5E1E938(v81, v84, v67);
  sub_1E5E1DC3C(v59, v81, v82);
  v130 = swift_allocObject();
  v86 = v83;
  sub_1E5E1E938(v81, v130 + v83, v67);
  sub_1E5E1DC3C(v59, v81, v82);
  sub_1E5DF650C(v159, &v164);
  v87 = v150;
  v88 = *(v150 + 16);
  v127 = (v150 + 16);
  v129 = v88;
  v89 = v161;
  v88(v161, v80, v162);
  v90 = v144;
  v91 = (v144 + 87) & 0xFFFFFFFFFFFFFFF8;
  v126 = v91 + 8;
  v121 = v91;
  v92 = (v91 + 8 + *(v87 + 80)) & ~*(v87 + 80);
  v93 = swift_allocObject();
  sub_1E5E1E938(v81, v93 + v86, v67);
  sub_1E5DF599C(&v164, v148 + v93);
  v94 = (v93 + v90);
  *v94 = v155;
  v125 = &unk_1E65EB918;
  v94[1] = MEMORY[0x1E69AB380];
  v94[2] = &unk_1E65EB918;
  v124 = &unk_1E65FA770;
  v94[3] = v158;
  v94[4] = &unk_1E65FA770;
  v123 = &unk_1E65EB920;
  v94[5] = v157;
  v94[6] = &unk_1E65EB920;
  v122 = &unk_1E65FA780;
  v94[7] = v156;
  v94[8] = &unk_1E65FA780;
  v95 = v128;
  v94[9] = v128;
  v96 = v93;
  v132 = v93;
  v97 = v149;
  *(v96 + v91) = v149;
  v98 = v96 + v92;
  v99 = v162;
  (*(v87 + 32))(v98, v89, v162);
  v100 = v143;
  v101 = v154;
  sub_1E5E1DC3C(v143, v81, v154);
  sub_1E5DF650C(v159, &v164);
  v102 = swift_allocObject();
  v103 = v146;
  sub_1E5E1E938(v81, v102 + v146, v85);
  sub_1E5DF599C(&v164, v148 + v102);
  v104 = (v102 + v144);
  v159 = v102;
  *v104 = v155;
  v105 = v125;
  v104[1] = MEMORY[0x1E69AB380];
  v104[2] = v105;
  v106 = v124;
  v104[3] = v158;
  v104[4] = v106;
  v107 = v123;
  v104[5] = v157;
  v104[6] = v107;
  v108 = v122;
  v104[7] = v156;
  v104[8] = v108;
  v104[9] = v95;
  *(v102 + v121) = v97;
  sub_1E5E1DC3C(v100, v81, v101);
  v154 = swift_allocObject();
  sub_1E5E1E938(v81, v154 + v103, v85);
  sub_1E5DFD1CC(v163, v151, &qword_1ED074410, &qword_1E65F0B78);
  (v129)(v161, v160, v99);
  v148 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();

  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v157 = type metadata accessor for ArtworkDescriptor(0);
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v146 = type metadata accessor for ContextMenu(0);
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v143 = type metadata accessor for ItemContext(0);
  v142 = type metadata accessor for ItemMetrics(0);
  v141 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v128 = type metadata accessor for SectionMetrics(0);
  v127 = type metadata accessor for ViewDescriptor(0);
  v126 = sub_1E63E9D64(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v125 = sub_1E60731B0();
  v124 = sub_1E63E9D64(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v123 = sub_1E5FEB2FC();
  v122 = sub_1E60C08DC();
  v121 = sub_1E60C15C0();
  v120[1] = sub_1E63E9D64(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v109 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v110 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v111 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  *&v164 = v110;
  *(&v164 + 1) = v111;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v164 = v109;
  *(&v164 + 1) = OpaqueTypeConformance2;
  v120[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E63E9D64(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E63E9D64(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E63E9D64(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E63E9D64(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E63E9D64(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v113 = v134;
  sub_1E65DC198();
  (*(v150 + 8))(v160, v162);
  sub_1E5DFE50C(v163, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v114 = v135;
  v115 = v138;
  sub_1E5FEE4C8();
  v116 = *(v139 + 8);
  v116(v113, v115);
  v117 = v136;
  sub_1E5FEE4C8();
  v116(v114, v115);
  v118 = v137;
  sub_1E5FEE4C8();
  v116(v117, v115);
  sub_1E5FEE4C8();
  return (v116)(v118, v115);
}

uint64_t sub_1E63E83F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v4[4] = swift_task_alloc();
  sub_1E65E6058();
  v4[5] = sub_1E65E6048();
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FE5C58, v6, v5);
}

uint64_t sub_1E63E84CC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2[4] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v2[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63E8610, 0, 0);
}

uint64_t sub_1E63E8610()
{
  v1 = v0[6];
  v2 = v0[7];
  v4 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  v7 = *MEMORY[0x1E69CBD88];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v2, v7, v8);
  (*(v9 + 56))(v2, 0, 1, v8);
  v10 = (v6 + *(type metadata accessor for AppComposer(0) + 36));
  v11 = *v10;
  v12 = v10[1];
  v13 = sub_1E65D74E8();
  (*(*(v13 - 8) + 56))(v1, 1, 1, v13);
  v14 = sub_1E65D9908();
  (*(*(v14 - 8) + 56))(v3, 1, 1, v14);
  v15 = sub_1E65D9F88();
  (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
  sub_1E5FA9D34(v11, v12);
  sub_1E65D7A28();
  v16 = sub_1E65D7A38();
  (*(*(v16 - 8) + 56))(v5, 0, 1, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1E63E888C(char *a1, uint64_t a2, char *a3, __int128 *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v15 - v9;
  sub_1E61E66C8(a1, a3, a4, v15 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v12 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v15[0] = v11;
  v15[1] = v12;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  MEMORY[0x1E69482C0](v10, v7, OpaqueTypeConformance2);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E63E8A30(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E0C78() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65E0C48() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E63829A8(a1, v11, v12, v1 + v6, v1 + v9, v1 + v10);
}

uint64_t sub_1E63E8C50()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63DFE70(v0 + 16);
}

uint64_t sub_1E63E8CE4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63DFFB8(a1, a2, v2 + v7);
}

uint64_t sub_1E63E8E74(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63E06EC(a1, v1 + v5);
}

uint64_t sub_1E63E8FC4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63E0A88(a1, a2, v2 + v7);
}

uint64_t sub_1E63E90C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, uint64_t))
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v3 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8);

  return a3(a1, a2, v3 + v7, v8);
}

uint64_t sub_1E63E9188(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(sub_1E65E0B48() - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E63E19F8(a1, v1 + v5, v1 + v8);
}

uint64_t sub_1E63E92BC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E63E2DDC(a1, v1 + v5);
}

uint64_t sub_1E63E939C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v15 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v2 = (*(v1 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3 = (v2 + 23) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(sub_1E65E0B48() - 8);
  v12 = (*(v11 + 80) + v10 + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E63E61E0((v0 + v15), *(v0 + v2), *(v0 + v2 + 8), *(v0 + v3), *(v0 + v3 + 8), *(v0 + v4), *(v0 + v4 + 8), *(v0 + v5), *(v0 + v5 + 8), *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + v8), *(v0 + v8 + 8), *(v0 + v9), *(v0 + v10), *(v0 + v10 + 8), v0 + v12, *(v0 + v13), *(v0 + v13 + 8));
}

uint64_t sub_1E63E9560@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65E0B48() - 8);
  v7 = (*(v6 + 64) + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);

  return sub_1E63E6E3C(v8, v1 + v4, v1 + v7, v1 + ((v7 + 47) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E63E9670(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFA78C;

  return sub_1E63E83F8(a1, v4, v5, v6);
}

uint64_t sub_1E63E9724(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63E84CC(a1, v1 + v5);
}

uint64_t sub_1E63E9800(char *a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E63E888C(a1, v1 + v4, (v1 + v5), (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E63E98B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E63E6790(v0);
}

uint64_t objectdestroy_36Tm_0()
{
  v1 = *(sub_1E65E0B48() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = sub_1E65E0FD8();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1E63E9AB8@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v7 = *(sub_1E65E0B48() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1E63E6864(a1, v3 + v8, *v9, v9[1], a2, a3);
}

uint64_t objectdestroy_10Tm()
{
  v1 = *(sub_1E65E0B48() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 6 && EnumCaseMultiPayload != 7)
    {
      goto LABEL_11;
    }

LABEL_10:

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload > 1 || !EnumCaseMultiPayload)
  {
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v4 = sub_1E65E0FD8();
    (*(*(v4 - 8) + 8))(v0 + v2, v4);
  }

LABEL_11:

  return swift_deallocObject();
}

uint64_t sub_1E63E9D64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63E9DAC(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63E1420(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E63E9E88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1E63E9F24(uint64_t a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (sub_1E65E5D88() != 6)
  {
    goto LABEL_25;
  }

  v4 = sub_1E65E5DA8();
  v5 = sub_1E65E5DA8();
  v9 = sub_1E65E5E68();
  if (v5 >> 14 < v4 >> 14)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v10 = v6;
  v11 = v7;
  v12 = v8;
  v13 = sub_1E65E5E68();
  v34 = v16;
  v35 = v13;
  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v5 >> 14 > 4 * v17)
  {
    goto LABEL_22;
  }

  v18 = v14;
  v19 = v15;
  v20 = sub_1E65E5E68();
  v32 = v22;
  v33 = v21;
  v24 = v23;

  if (!((v9 ^ v10) >> 14))
  {
LABEL_23:

LABEL_24:

LABEL_25:

    return 0;
  }

  v25 = sub_1E63EABD4(v9, v10, v11, v12, 16);
  if ((v25 & 0x10000000000) != 0)
  {
    v25 = sub_1E63EA1D8(v9, v10, v11, v12, 16);
  }

  v26 = v25;

  if ((v26 & 0x100000000) != 0 || !((v35 ^ v18) >> 14))
  {
    goto LABEL_24;
  }

  v27 = sub_1E63EABD4(v35, v18, v34, v19, 16);
  if ((v27 & 0x10000000000) != 0)
  {
    v27 = sub_1E63EA1D8(v35, v18, v34, v19, 16);
  }

  v28 = v27;

  if ((v28 & 0x100000000) != 0 || !((v20 ^ v33) >> 14))
  {
    goto LABEL_25;
  }

  v29 = sub_1E63EABD4(v20, v33, v32, v24, 16);
  if ((v29 & 0x10000000000) != 0)
  {
    v29 = sub_1E63EA1D8(v20, v33, v32, v24, 16);
  }

  v30 = v29;

  if ((v30 & 0x100000000) == 0)
  {
    return [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithRed:v26 / 255.0 green:v28 / 255.0 blue:v30 / 255.0 alpha:1.0];
  }

  return 0;
}

unsigned __int8 *sub_1E63EA1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v72 = a1;
  v73 = a2;
  v74 = a3;
  v75 = a4;
  sub_1E63EAC9C();

  result = sub_1E65E5E58();
  v8 = result;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_1E63EA760(result, v7);
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
      result = sub_1E65E6908();
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

uint64_t sub_1E63EA760(uint64_t a1, unint64_t a2)
{
  v2 = sub_1E65E5E68();
  v6 = sub_1E63EA7E0(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_1E63EA7E0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_1E65E6678();
    if (!v9 || (v10 = v9, v11 = sub_1E5DF7D84(v9, 0), v12 = sub_1E63EA938(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_1E65E5D68();

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
      return sub_1E65E5D68();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_1E65E6908();
LABEL_4:

  return sub_1E65E5D68();
}

unint64_t sub_1E63EA938(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_1E63EAB58(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_1E65E5E08();
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
          result = sub_1E65E6908();
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

    result = sub_1E63EAB58(v12, a6, a7);
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

    result = sub_1E65E5DD8();
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

unint64_t sub_1E63EAB58(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_1E65E5E18();
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
    v5 = MEMORY[0x1E694D7F0](15, a1 >> 16);
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

uint64_t sub_1E63EABD4(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v13 = 0;
    return v13 | (((a4 >> 60) & 1) << 40);
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
    v11 = sub_1E65E6908();
  }

  result = sub_1E63EACF0(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = BYTE4(result) & 1;
    v13 = result | ((BYTE4(result) & 1) << 32);
    return v13 | (((a4 >> 60) & 1) << 40);
  }

  return result;
}

unint64_t sub_1E63EAC9C()
{
  result = qword_1ED079080;
  if (!qword_1ED079080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079080);
  }

  return result;
}

uint64_t sub_1E63EACF0(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
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
    result = sub_1E63EAB58(a2, a4, a5);
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
  result = sub_1E65E5DF8();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_1E63EAB58(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_1E63EAB58(a3, a4, a5);
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

  result = sub_1E65E5DF8();
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

uint64_t sub_1E63EB15C@<X0>(uint64_t a1@<X8>)
{
  v58 = a1;
  v74 = sub_1E65D8998();
  v70 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v64 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072FF8, &qword_1E65ECE50);
  v3 = *(v2 - 8);
  v65 = v2;
  v66 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v48 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v48 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v71 = &v48 - v9;
  v72 = sub_1E65DAC98();
  v57 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v11 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075930, &qword_1E65F2258);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55 = &v48 - v14;
  v56 = sub_1E65DA0B8();
  v15 = *(v56 - 8);
  v16 = MEMORY[0x1EEE9AC00](v56);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = sub_1E65D9D58();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1E65D8BB8();
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E628E768(v73, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = v56;
    (*(v15 + 32))(v18, v27, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948);
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v57 + 8))(v11, v72);
    v75 = sub_1E65DA0A8();
    v76 = v29;
    sub_1E65DC488();
    sub_1E63EBB48(&qword_1EE2D6B60, MEMORY[0x1E699DC60], MEMORY[0x1E699DC80]);
    sub_1E65E1748();
    (*(v15 + 8))(v18, v28);
  }

  else
  {
    v67 = v11;
    v53 = v15;
    v51 = v22;
    (*(v22 + 32))(v24, v27, v21);
    sub_1E65D9D38();
    v50 = v24;
    v30 = sub_1E65D9D48();
    v31 = *(v30 + 16);
    v32 = v20;
    v52 = v21;
    if (v31)
    {
      v49 = v20;
      v75 = MEMORY[0x1E69E7CC0];
      sub_1E601BE64(0, v31, 0);
      v73 = v75;
      v63 = *(v70 + 16);
      v33 = (*(v70 + 80) + 32) & ~*(v70 + 80);
      v48 = v30;
      v34 = v30 + v33;
      v35 = *(v70 + 72);
      v61 = (v57 + 8);
      v62 = v35;
      v70 += 16;
      v36 = v67;
      v59 = v66 + 32;
      v60 = (v70 - 8);
      v37 = v54;
      v38 = v64;
      do
      {
        v63(v38, v34, v74);
        sub_1E65D8978();
        sub_1E65DAC38();
        sub_1E65DC2D8();
        sub_1E65DAC78();
        sub_1E65D74C8();

        v39 = v7;
        sub_1E65DB248();
        (*v61)(v36, v72);
        sub_1E65D8988();
        v40 = sub_1E65D8968();
        sub_1E611CCC0(v40);

        sub_1E63EBB48(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
        sub_1E65DC328();
        (*v60)(v38, v74);
        v75 = v73;
        v42 = *(v73 + 16);
        v41 = *(v73 + 24);
        v43 = v73;
        if (v42 >= v41 >> 1)
        {
          sub_1E601BE64((v41 > 1), v42 + 1, 1);
          v37 = v54;
          v43 = v75;
        }

        v73 = v43;
        *(v43 + 16) = v42 + 1;
        (*(v66 + 32))(v43 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v42, v37, v65);
        v34 += v62;
        --v31;
        v7 = v39;
        v36 = v67;
      }

      while (v31);

      v44 = v57;
      v45 = v72;
      v32 = v49;
    }

    else
    {

      v73 = MEMORY[0x1E69E7CC0];
      v44 = v57;
      v45 = v72;
    }

    v46 = v67;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    (*(v44 + 8))(v46, v45);
    sub_1E65DA0A8();
    sub_1E63EBB48(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    sub_1E65DC438();
    sub_1E65DC3F8();
    (*(v53 + 8))(v32, v56);
    (*(v51 + 8))(v50, v52);
  }

  type metadata accessor for ArtworkContent(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E63EBB48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for BuildPlanButtonStyle(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65282 < 0xFF0000)
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
    if (v4)
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65282;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65282;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

_WORD *storeEnumTagSinglePayload for BuildPlanButtonStyle(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65282 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1E63EBD00@<X0>(unint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v133 = a1;
  v132 = a3;
  LODWORD(v123) = a2;
  LODWORD(v122) = HIBYTE(a2);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079088, &qword_1E6600CD0);
  MEMORY[0x1EEE9AC00](v112);
  v4 = &v99 - v3;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079090, &qword_1E6600CD8);
  v106 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v99 - v5;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079098, &qword_1E6600CE0);
  MEMORY[0x1EEE9AC00](v111);
  v102 = &v99 - v6;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790A0, &qword_1E6600CE8);
  MEMORY[0x1EEE9AC00](v129);
  v113 = &v99 - v7;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790A8, &qword_1E6600CF0);
  MEMORY[0x1EEE9AC00](v130);
  v131 = &v99 - v8;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790B0, &qword_1E6600CF8);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v99 - v9;
  v127 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790B8, &qword_1E6600D00);
  MEMORY[0x1EEE9AC00](v127);
  v128 = &v99 - v10;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790C0, &qword_1E6600D08);
  MEMORY[0x1EEE9AC00](v120);
  v107 = &v99 - v11;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790C8, &qword_1E6600D10);
  v110 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v109 = &v99 - v12;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790D0, &qword_1E6600D18);
  MEMORY[0x1EEE9AC00](v116);
  v119 = &v99 - v13;
  v14 = sub_1E65E43E8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790D8, &qword_1E6600D20);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v18 = &v99 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790E0, &qword_1E6600D28);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v99 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790E8, &qword_1E6600D30);
  MEMORY[0x1EEE9AC00](v105);
  v23 = &v99 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790F0, &qword_1E6600D38);
  MEMORY[0x1EEE9AC00](v115);
  v25 = &v99 - v24;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0790F8, &qword_1E6600D40);
  v108 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v114 = &v99 - v26;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079100, &qword_1E6600D48);
  MEMORY[0x1EEE9AC00](v124);
  v118 = &v99 - v27;
  if (v122 < 2)
  {
    v29 = *(v15 + 16);
    v28 = v15 + 16;
    v29(&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v133, v14);
    v30 = (*(v28 + 64) + 16) & ~*(v28 + 64);
    v31 = (v28 + 16);
    if (v123 > 1)
    {
      v57 = swift_allocObject();
      v58 = (*v31)(v57 + v30, &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      MEMORY[0x1EEE9AC00](v58);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791C8, &qword_1E6600E18);
      sub_1E63EEEA8(&qword_1ED0791D0, &qword_1ED0791C8, &qword_1E6600E18, sub_1E63EEF2C);
      v59 = v107;
      sub_1E65E4AA8();
      v60 = v120;
      v61 = v59 + *(v120 + 36);
      sub_1E65E4B38();
      v62 = sub_1E65E4438();
      *(v61 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AA8, &qword_1E6600E10) + 36)) = v62;
      sub_1E65E4B58();
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079180, &qword_1E6600DF8);
      v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079188, &qword_1E6600E00);
      v123 = sub_1E63EEB34();
      v133 = sub_1E63EEC18();
      v113 = sub_1E63EECD0();
      v63 = MEMORY[0x1E6981CD8];
      v64 = v109;
      sub_1E65E4928();
      sub_1E5DFE50C(v59, &qword_1ED0790C0, &qword_1E6600D08);
      v65 = v110;
      v66 = v121;
      (*(v110 + 16))(v119, v64, v121);
      swift_storeEnumTagMultiPayload();
      v67 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079148, &qword_1E6600DD8);
      v68 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079150, &qword_1E6600DE0);
      v69 = sub_1E63EE79C();
      v70 = sub_1E63EE9C4();
      v71 = sub_1E63EEA7C();
      *&v142 = v115;
      *(&v142 + 1) = v63;
      *&v143 = v67;
      *(&v143 + 1) = v68;
      *&v144 = v69;
      v72 = MEMORY[0x1E6981CD0];
      *(&v144 + 1) = MEMORY[0x1E6981CD0];
      *&v145 = v70;
      *(&v145 + 1) = v71;
      swift_getOpaqueTypeConformance2();
      *&v142 = v60;
      *(&v142 + 1) = v63;
      *&v143 = v114;
      *(&v143 + 1) = v122;
      *&v144 = v123;
      *(&v144 + 1) = v72;
      *&v145 = v133;
      *(&v145 + 1) = v113;
      swift_getOpaqueTypeConformance2();
      v56 = v118;
      sub_1E65E4138();
      (*(v65 + 8))(v64, v66);
    }

    else
    {
      v32 = swift_allocObject();
      v33 = (*v31)(v32 + v30, &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
      MEMORY[0x1EEE9AC00](v33);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791F8, &qword_1E6600E38);
      sub_1E63EF114();
      sub_1E65E4AA8();
      sub_1E65E4BA8();
      sub_1E65E3E38();
      (*(v103 + 32))(v21, v18, v104);
      v34 = &v21[*(v19 + 36)];
      v35 = v147;
      *(v34 + 4) = v146;
      *(v34 + 5) = v35;
      *(v34 + 6) = v148;
      v36 = v143;
      *v34 = v142;
      *(v34 + 1) = v36;
      v37 = v145;
      *(v34 + 2) = v144;
      *(v34 + 3) = v37;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v38 = sub_1E65E4968();
      v39 = sub_1E65E4438();
      sub_1E5FAB460(v21, v23, &qword_1ED0790E0, &qword_1E6600D28);
      v40 = &v23[*(v105 + 36)];
      *v40 = v38;
      v40[8] = v39;
      v41 = sub_1E65E4988();
      sub_1E5FAB460(v23, v25, &qword_1ED0790E8, &qword_1E6600D30);
      v42 = v115;
      *&v25[*(v115 + 36)] = v41;
      sub_1E65E4B58();
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079148, &qword_1E6600DD8);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079150, &qword_1E6600DE0);
      v45 = sub_1E63EE79C();
      v46 = sub_1E63EE9C4();
      v98 = sub_1E63EEA7C();
      v47 = v114;
      sub_1E65E4928();
      sub_1E5DFE50C(v25, &qword_1ED0790F0, &qword_1E6600D38);
      v48 = v108;
      v49 = v47;
      v50 = v117;
      (*(v108 + 16))(v119, v49, v117);
      swift_storeEnumTagMultiPayload();
      v134 = v42;
      v135 = MEMORY[0x1E6981CD8];
      v136 = v43;
      v137 = v44;
      v138 = v45;
      v139 = MEMORY[0x1E6981CD0];
      v140 = v46;
      v141 = v98;
      swift_getOpaqueTypeConformance2();
      v51 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079180, &qword_1E6600DF8);
      v52 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079188, &qword_1E6600E00);
      v53 = sub_1E63EEB34();
      v54 = sub_1E63EEC18();
      v55 = sub_1E63EECD0();
      v134 = v120;
      v135 = MEMORY[0x1E6981CD8];
      v136 = v51;
      v137 = v52;
      v138 = v53;
      v139 = MEMORY[0x1E6981CD0];
      v140 = v54;
      v141 = v55;
      swift_getOpaqueTypeConformance2();
      v56 = v118;
      sub_1E65E4138();
      (*(v48 + 8))(v114, v50);
    }

    v73 = &qword_1ED079100;
    v74 = &qword_1E6600D48;
    sub_1E5DFD1CC(v56, v126, &qword_1ED079100, &qword_1E6600D48);
    swift_storeEnumTagMultiPayload();
    sub_1E63EE5DC();
    sub_1E63EED88();
    v75 = v128;
    sub_1E65E4138();
    sub_1E5DFD1CC(v75, v131, &qword_1ED0790B8, &qword_1E6600D00);
    swift_storeEnumTagMultiPayload();
    sub_1E63EEE0C();
    sub_1E65E4138();
    sub_1E5DFE50C(v75, &qword_1ED0790B8, &qword_1E6600D00);
    v76 = v56;
    return sub_1E5DFE50C(v76, v73, v74);
  }

  v77 = v4;
  v78 = v106;
  v79 = v123;
  v121 = v77;
  if (v122 == 3)
  {
    v81 = *(v15 + 16);
    v80 = v15 + 16;
    v81(&v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v133, v14);
    v82 = (*(v80 + 64) + 16) & ~*(v80 + 64);
    v83 = swift_allocObject();
    v84 = (*(v80 + 16))(v83 + v82, &v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
    MEMORY[0x1EEE9AC00](v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50);
    sub_1E63EEEA8(&qword_1ED073A48, &qword_1ED073A50, &qword_1E6600D50, sub_1E60007B0);
    v85 = v100;
    sub_1E65E4AA8();
    sub_1E65E4B58();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079108, &qword_1E6600D58);
    sub_1E5FED46C(&qword_1EE2D4BA0, &qword_1ED079090, &qword_1E6600CD8, MEMORY[0x1E697D680]);
    sub_1E63EE220();
    v86 = v102;
    v87 = v101;
    sub_1E65E4938();
    (*(v78 + 8))(v85, v87);
    v88 = sub_1E65E41D8();
    *(v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079118, &qword_1E6600D68) + 36)) = v88;
    if (v79 > 1)
    {
      sub_1E65E49A8();
      v89 = sub_1E65E49B8();
    }

    else
    {
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
      v89 = sub_1E65E4968();
    }

    KeyPath = swift_getKeyPath();
    v91 = (v86 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079120, &qword_1E6600DA0) + 36));
    *v91 = KeyPath;
    v91[1] = v89;
    sub_1E65E4988();
    v92 = sub_1E65E49B8();

    v93 = swift_getKeyPath();
    v94 = (v86 + *(v111 + 36));
    *v94 = v93;
    v94[1] = v92;
    sub_1E5DFD1CC(v86, v121, &qword_1ED079098, &qword_1E6600CE0);
    swift_storeEnumTagMultiPayload();
    sub_1E63EE304();
    v95 = v113;
    sub_1E65E4138();
    sub_1E5DFE50C(v86, &qword_1ED079098, &qword_1E6600CE0);
    v73 = &qword_1ED0790A0;
    v74 = &qword_1E6600CE8;
    sub_1E5DFD1CC(v95, v126, &qword_1ED0790A0, &qword_1E6600CE8);
    swift_storeEnumTagMultiPayload();
    sub_1E63EE5DC();
    sub_1E63EED88();
    v96 = v128;
    sub_1E65E4138();
    sub_1E5DFD1CC(v96, v131, &qword_1ED0790B8, &qword_1E6600D00);
    swift_storeEnumTagMultiPayload();
    sub_1E63EEE0C();
    sub_1E65E4138();
    sub_1E5DFE50C(v96, &qword_1ED0790B8, &qword_1E6600D00);
    v76 = v95;
    return sub_1E5DFE50C(v76, v73, v74);
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

__n128 sub_1E63ED460@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v6 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v8 = &v5[*(v3 + 44)];
  *v8 = KeyPath;
  v8[1] = v6;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E63EF310(v5, a1);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

__n128 sub_1E63ED5C0@<Q0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v13 - v4;
  sub_1E65E43C8();
  sub_1E65E44A8();
  v6 = sub_1E65E44B8();

  KeyPath = swift_getKeyPath();
  v8 = &v5[*(v3 + 44)];
  *v8 = KeyPath;
  v8[1] = v6;
  sub_1E65E4BA8();
  sub_1E65E3E38();
  sub_1E63EF310(v5, a1);
  v9 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073A50, &qword_1E6600D50) + 36);
  v10 = v13[5];
  *(v9 + 64) = v13[4];
  *(v9 + 80) = v10;
  *(v9 + 96) = v13[6];
  v11 = v13[1];
  *v9 = v13[0];
  *(v9 + 16) = v11;
  result = v13[3];
  *(v9 + 32) = v13[2];
  *(v9 + 48) = result;
  return result;
}

uint64_t sub_1E63ED718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079108, &qword_1E6600D58) + 36));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073778, &qword_1E6600D60);
  sub_1E65E3E48();
  *v4 = swift_getKeyPath();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079090, &qword_1E6600CD8);
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, a1, v5);
}

uint64_t sub_1E63ED7E4@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v23 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791E8, &unk_1E6600E28);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v23 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791E0, &qword_1E6600E20);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - v9;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v11 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v13 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0) + 36)];
  *v13 = KeyPath;
  v13[1] = v11;
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  *&v7[*(v5 + 36)] = sub_1E65E4968();
  v14 = *MEMORY[0x1E697E728];
  v15 = sub_1E65E3DD8();
  (*(*(v15 - 8) + 104))(v4, v14, v15);
  sub_1E63EF2C8(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    sub_1E63EF054();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v4, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v7, &qword_1ED0791E8, &unk_1E6600E28);
    v17 = sub_1E65E4488();
    v18 = &v10[*(v8 + 36)];
    *v18 = v17;
    *(v18 + 8) = 0u;
    *(v18 + 24) = 0u;
    v18[40] = 1;
    sub_1E65E4BA8();
    sub_1E65E3E38();
    sub_1E5FAB460(v10, a1, &qword_1ED0791E0, &qword_1E6600E20);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791C8, &qword_1E6600E18);
    v19 = (a1 + *(result + 36));
    v20 = v23[5];
    v19[4] = v23[4];
    v19[5] = v20;
    v19[6] = v23[6];
    v21 = v23[1];
    *v19 = v23[0];
    v19[1] = v21;
    v22 = v23[3];
    v19[2] = v23[2];
    v19[3] = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63EDBF0@<X0>(uint64_t a1@<X8>)
{
  v27 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v26 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079208, &qword_1E6600E48);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v26 - v9;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079200, &qword_1E6600E40);
  MEMORY[0x1EEE9AC00](v28);
  v12 = v26 - v11;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v13 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v26[1] = v4;
  v15 = &v6[*(v4 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  v16 = *MEMORY[0x1E697E728];
  v17 = sub_1E65E3DD8();
  (*(*(v17 - 8) + 104))(v3, v16, v17);
  sub_1E63EF2C8(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    sub_1E60007B0();
    v19 = v27;
    v26[0] = v7;
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v3, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v6, &qword_1ED072A70, &unk_1E65EC3F0);
    sub_1E65E4BA8();
    sub_1E65E3E38();
    (*(v8 + 32))(v12, v10, v26[0]);
    v20 = &v12[*(v28 + 36)];
    v21 = v34;
    *(v20 + 4) = v33;
    *(v20 + 5) = v21;
    *(v20 + 6) = v35;
    v22 = v30;
    *v20 = v29;
    *(v20 + 1) = v22;
    v23 = v32;
    *(v20 + 2) = v31;
    *(v20 + 3) = v23;
    v24 = sub_1E65E4488();
    sub_1E5FAB460(v12, v19, &qword_1ED079200, &qword_1E6600E40);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0791F8, &qword_1E6600E38);
    v25 = v19 + *(result + 36);
    *v25 = v24;
    *(v25 + 8) = 0u;
    *(v25 + 24) = 0u;
    *(v25 + 40) = 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63EE038@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36);
  v11 = *MEMORY[0x1E697F468];
  v12 = sub_1E65E3FA8();
  (*(*(v12 - 8) + 104))(v10, v11, v12);
  *(v10 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073AB8, &qword_1E65EDEF0) + 36)) = 256;
  return sub_1E5DFD1CC(a1, a6, a4, a5);
}

uint64_t sub_1E63EE128@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = (a6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) + 36));
  v11 = *(sub_1E65E3E18() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1E65E3FA8();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #12.0 }

  *v10 = _Q0;
  *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074478, &qword_1E6600DF0) + 36)] = 256;
  return sub_1E5DFD1CC(a1, a6, a4, a5);
}

unint64_t sub_1E63EE220()
{
  result = qword_1ED079110;
  if (!qword_1ED079110)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079108, &qword_1E6600D58);
    sub_1E5FED46C(&qword_1EE2D4BA0, &qword_1ED079090, &qword_1E6600CD8, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&unk_1EE2D4BF0, &qword_1ED073778, &qword_1E6600D60, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079110);
  }

  return result;
}

unint64_t sub_1E63EE304()
{
  result = qword_1ED079128;
  if (!qword_1ED079128)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079098, &qword_1E6600CE0);
    sub_1E63EE3BC();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079128);
  }

  return result;
}

unint64_t sub_1E63EE3BC()
{
  result = qword_1ED079130;
  if (!qword_1ED079130)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079120, &qword_1E6600DA0);
    sub_1E63EE474();
    sub_1E5FED46C(&qword_1EE2D4BE0, &qword_1ED0738C8, &qword_1E65EDF20, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079130);
  }

  return result;
}

unint64_t sub_1E63EE474()
{
  result = qword_1ED079138;
  if (!qword_1ED079138)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079118, &qword_1E6600D68);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079090, &qword_1E6600CD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079108, &qword_1E6600D58);
    sub_1E5FED46C(&qword_1EE2D4BA0, &qword_1ED079090, &qword_1E6600CD8, MEMORY[0x1E697D680]);
    sub_1E63EE220();
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C20, &qword_1ED073B00, &qword_1E65EDF18, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079138);
  }

  return result;
}

unint64_t sub_1E63EE5DC()
{
  result = qword_1ED079140;
  if (!qword_1ED079140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079100, &qword_1E6600D48);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790F0, &qword_1E6600D38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079148, &qword_1E6600DD8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079150, &qword_1E6600DE0);
    sub_1E63EE79C();
    sub_1E63EE9C4();
    sub_1E63EEA7C();
    swift_getOpaqueTypeConformance2();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790C0, &qword_1E6600D08);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079180, &qword_1E6600DF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079188, &qword_1E6600E00);
    sub_1E63EEB34();
    sub_1E63EEC18();
    sub_1E63EECD0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079140);
  }

  return result;
}

unint64_t sub_1E63EE79C()
{
  result = qword_1ED079158;
  if (!qword_1ED079158)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790F0, &qword_1E6600D38);
    sub_1E63EE854();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079158);
  }

  return result;
}

unint64_t sub_1E63EE854()
{
  result = qword_1ED079160;
  if (!qword_1ED079160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790E8, &qword_1E6600D30);
    sub_1E63EE90C();
    sub_1E5FED46C(&qword_1EE2D4C30, &qword_1ED079168, &qword_1E6600DE8, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079160);
  }

  return result;
}

unint64_t sub_1E63EE90C()
{
  result = qword_1EE2D4E58;
  if (!qword_1EE2D4E58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790E0, &qword_1E6600D28);
    sub_1E5FED46C(&qword_1EE2D4B98, &qword_1ED0790D8, &qword_1E6600D20, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E58);
  }

  return result;
}

unint64_t sub_1E63EE9C4()
{
  result = qword_1ED079170;
  if (!qword_1ED079170)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079148, &qword_1E6600DD8);
    sub_1E63EE79C();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079170);
  }

  return result;
}

unint64_t sub_1E63EEA7C()
{
  result = qword_1ED079178;
  if (!qword_1ED079178)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079150, &qword_1E6600DE0);
    sub_1E63EE79C();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079178);
  }

  return result;
}

unint64_t sub_1E63EEB34()
{
  result = qword_1ED079190;
  if (!qword_1ED079190)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790C0, &qword_1E6600D08);
    sub_1E5FED46C(&qword_1ED079198, &qword_1ED0791A0, &qword_1E6600E08, MEMORY[0x1E697D680]);
    sub_1E5FED46C(&qword_1EE2D4C28, &qword_1ED073AA8, &qword_1E6600E10, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079190);
  }

  return result;
}

unint64_t sub_1E63EEC18()
{
  result = qword_1ED0791A8;
  if (!qword_1ED0791A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079180, &qword_1E6600DF8);
    sub_1E63EEB34();
    sub_1E5FED46C(&qword_1EE2D4EF8, &qword_1ED073AB8, &qword_1E65EDEF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791A8);
  }

  return result;
}

unint64_t sub_1E63EECD0()
{
  result = qword_1ED0791B0;
  if (!qword_1ED0791B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079188, &qword_1E6600E00);
    sub_1E63EEB34();
    sub_1E5FED46C(&qword_1EE2D4F00, &qword_1ED074478, &qword_1E6600DF0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791B0);
  }

  return result;
}

unint64_t sub_1E63EED88()
{
  result = qword_1ED0791B8;
  if (!qword_1ED0791B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790A0, &qword_1E6600CE8);
    sub_1E63EE304();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791B8);
  }

  return result;
}

unint64_t sub_1E63EEE0C()
{
  result = qword_1ED0791C0;
  if (!qword_1ED0791C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0790B8, &qword_1E6600D00);
    sub_1E63EE5DC();
    sub_1E63EED88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791C0);
  }

  return result;
}

uint64_t sub_1E63EEEA8(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E63EEF2C()
{
  result = qword_1ED0791D8;
  if (!qword_1ED0791D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791E0, &qword_1E6600E20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791E8, &unk_1E6600E28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E63EF054();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791D8);
  }

  return result;
}

unint64_t sub_1E63EF054()
{
  result = qword_1ED0791F0;
  if (!qword_1ED0791F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791E8, &unk_1E6600E28);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0791F0);
  }

  return result;
}

unint64_t sub_1E63EF114()
{
  result = qword_1EE2D4E28;
  if (!qword_1EE2D4E28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0791F8, &qword_1E6600E38);
    sub_1E63EF1A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4E28);
  }

  return result;
}

unint64_t sub_1E63EF1A0()
{
  result = qword_1EE2D4EA8;
  if (!qword_1EE2D4EA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079200, &qword_1E6600E40);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A70, &unk_1E65EC3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4EA8);
  }

  return result;
}

uint64_t sub_1E63EF2C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63EF310(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E63EF380()
{
  result = qword_1ED079210;
  if (!qword_1ED079210)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079218, &qword_1E6600EB0);
    sub_1E63EEE0C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079210);
  }

  return result;
}

uint64_t URLContext.hash(into:)(uint64_t a1)
{
  v2 = sub_1E65D74E8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1E65E5B48();
  v9 = type metadata accessor for URLContext(0);
  sub_1E5F9AF1C(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1E65E6D48();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1E65E6D48();
    sub_1E65E5B48();
    (*(v3 + 8))(v5, v2);
  }

  if (!*(v1 + *(v9 + 24) + 8))
  {
    return sub_1E65E6D48();
  }

  sub_1E65E6D48();
  return sub_1E65E5D78();
}

uint64_t AppLaunchScope.hash(into:)(uint64_t a1)
{
  v2 = sub_1E65D74E8();
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = type metadata accessor for URLContext(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = type metadata accessor for AppLaunchScope(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63F13DC(v1, v18, type metadata accessor for AppLaunchScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return MEMORY[0x1E694E740](0);
    }

    sub_1E63F148C(v18, v13, type metadata accessor for URLContext);
    MEMORY[0x1E694E740](2);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E65E5B48();
    sub_1E5F9AF1C(&v13[*(v10 + 20)], v7);
    v20 = v27;
    if ((*(v27 + 48))(v7, 1, v2) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      v23 = v26;
      (*(v20 + 32))(v26, v7, v2);
      sub_1E65E6D48();
      sub_1E65E5B48();
      (*(v20 + 8))(v23, v2);
    }

    if (*&v13[*(v10 + 24) + 8])
    {
      sub_1E65E6D48();
      sub_1E65E5D78();
    }

    else
    {
      sub_1E65E6D48();
    }

    v25 = v13;
  }

  else
  {
    sub_1E63F148C(v18, v15, type metadata accessor for URLContext);
    MEMORY[0x1E694E740](1);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E65E5B48();
    sub_1E5F9AF1C(&v15[*(v10 + 20)], v9);
    v21 = v27;
    if ((*(v27 + 48))(v9, 1, v2) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      v24 = v26;
      (*(v21 + 32))(v26, v9, v2);
      sub_1E65E6D48();
      sub_1E65E5B48();
      (*(v21 + 8))(v24, v2);
    }

    if (*&v15[*(v10 + 24) + 8])
    {
      sub_1E65E6D48();
      sub_1E65E5D78();
    }

    else
    {
      sub_1E65E6D48();
    }

    v25 = v15;
  }

  return sub_1E63F14F4(v25, type metadata accessor for URLContext);
}

uint64_t RouteSource.hash(into:)(uint64_t a1)
{
  v45 = a1;
  v2 = sub_1E65D8D48();
  v40 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D74E8();
  v43 = *(v5 - 8);
  v44 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v40 - v11;
  v42 = type metadata accessor for URLContext(0);
  v13 = MEMORY[0x1EEE9AC00](v42);
  v15 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = type metadata accessor for AppLaunchScope(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v40 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E63F13DC(v1, v23, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v29 = 0;
      }

      else
      {
        v29 = 6;
      }
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v29 = 7;
    }

    else if (EnumCaseMultiPayload == 8)
    {
      v29 = 8;
    }

    else
    {
      v29 = 9;
    }

    return MEMORY[0x1E694E740](v29);
  }

  else if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1E63F148C(v23, v17, type metadata accessor for URLContext);
      MEMORY[0x1E694E740](2);
      sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v35 = v44;
      sub_1E65E5B48();
      v36 = v42;
      sub_1E5F9AF1C(&v17[*(v42 + 20)], v12);
      v37 = v43;
      if ((*(v43 + 48))(v12, 1, v35) == 1)
      {
        sub_1E65E6D48();
      }

      else
      {
        v39 = v41;
        (*(v37 + 32))(v41, v12, v35);
        sub_1E65E6D48();
        sub_1E65E5B48();
        (*(v37 + 8))(v39, v35);
      }

      if (*&v17[*(v36 + 24) + 8])
      {
        sub_1E65E6D48();
        sub_1E65E5D78();
      }

      else
      {
        sub_1E65E6D48();
      }

      return sub_1E63F14F4(v17, type metadata accessor for URLContext);
    }

    else
    {
      sub_1E63F148C(v23, v20, type metadata accessor for AppLaunchScope);
      v30 = v45;
      MEMORY[0x1E694E740](1);
      AppLaunchScope.hash(into:)(v30);
      return sub_1E63F14F4(v20, type metadata accessor for AppLaunchScope);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1E63F148C(v23, v15, type metadata accessor for URLContext);
    MEMORY[0x1E694E740](3);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    v31 = v44;
    sub_1E65E5B48();
    v32 = v42;
    sub_1E5F9AF1C(&v15[*(v42 + 20)], v10);
    v33 = v43;
    if ((*(v43 + 48))(v10, 1, v31) == 1)
    {
      sub_1E65E6D48();
    }

    else
    {
      v38 = v41;
      (*(v33 + 32))(v41, v10, v31);
      sub_1E65E6D48();
      sub_1E65E5B48();
      (*(v33 + 8))(v38, v31);
    }

    if (*&v15[*(v32 + 24) + 8])
    {
      sub_1E65E6D48();
      sub_1E65E5D78();
    }

    else
    {
      sub_1E65E6D48();
    }

    return sub_1E63F14F4(v15, type metadata accessor for URLContext);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v26 = v43;
    v25 = v44;
    v27 = v41;
    (*(v43 + 32))(v41, v23, v44);
    MEMORY[0x1E694E740](4);
    sub_1E63F1444(&qword_1ED073F58, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1E65E5B48();
    return (*(v26 + 8))(v27, v25);
  }

  else
  {
    v34 = v40;
    (*(v40 + 32))(v4, v23, v2);
    MEMORY[0x1E694E740](5);
    sub_1E63F1444(&qword_1ED079220, MEMORY[0x1E69CBB20], MEMORY[0x1E69CBB28]);
    sub_1E65E5B48();
    return (*(v34 + 8))(v4, v2);
  }
}

uint64_t sub_1E63F0424(uint64_t (*a1)(void *))
{
  sub_1E65E6D28();
  a1(v3);
  return sub_1E65E6D78();
}

uint64_t sub_1E63F0484(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1E65E6D28();
  a3(v5);
  return sub_1E65E6D78();
}

uint64_t sub_1E63F04E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1E65E6D28();
  a4(v6);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard14AppLaunchScopeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URLContext(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = type metadata accessor for AppLaunchScope(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA0, &qword_1E65EA420);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v25 - v18;
  v20 = *(v17 + 56);
  sub_1E63F13DC(a1, &v25 - v18, type metadata accessor for AppLaunchScope);
  sub_1E63F13DC(a2, &v19[v20], type metadata accessor for AppLaunchScope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1E63F13DC(v19, v15, type metadata accessor for AppLaunchScope);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1E63F148C(&v19[v20], v9, type metadata accessor for URLContext);
      v22 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v15, v9);
      sub_1E63F14F4(v9, type metadata accessor for URLContext);
      v23 = v15;
      goto LABEL_12;
    }

    v13 = v15;
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1E63F13DC(v19, v13, type metadata accessor for AppLaunchScope);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1E63F148C(&v19[v20], v7, type metadata accessor for URLContext);
      v22 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v13, v7);
      sub_1E63F14F4(v7, type metadata accessor for URLContext);
      v23 = v13;
LABEL_12:
      sub_1E63F14F4(v23, type metadata accessor for URLContext);
      sub_1E63F14F4(v19, type metadata accessor for AppLaunchScope);
      return v22 & 1;
    }

LABEL_7:
    sub_1E63F14F4(v13, type metadata accessor for URLContext);
LABEL_10:
    sub_1E5DFE50C(v19, &qword_1ED071FA0, &qword_1E65EA420);
    v22 = 0;
    return v22 & 1;
  }

  if (swift_getEnumCaseMultiPayload() != 2)
  {
    goto LABEL_10;
  }

  sub_1E63F14F4(v19, type metadata accessor for AppLaunchScope);
  v22 = 1;
  return v22 & 1;
}

uint64_t _s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v58 = a1;
  v59 = a2;
  v2 = sub_1E65D8D48();
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v53 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65D74E8();
  v54 = *(v4 - 8);
  v55 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for URLContext(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v50 - v9;
  v10 = type metadata accessor for AppLaunchScope(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for RouteSource(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v50 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v50 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v50 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v50 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071FA8, &qword_1E65EA428);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v50 - v30;
  v32 = *(v29 + 56);
  sub_1E63F13DC(v58, &v50 - v30, type metadata accessor for RouteSource);
  sub_1E63F13DC(v59, &v31[v32], type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        sub_1E63F13DC(v31, v25, type metadata accessor for RouteSource);
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v47 = v50;
          sub_1E63F148C(&v31[v32], v50, type metadata accessor for URLContext);
          v37 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v25, v47);
          sub_1E63F14F4(v47, type metadata accessor for URLContext);
          v42 = v25;
          goto LABEL_28;
        }

        v39 = type metadata accessor for URLContext;
        v40 = v25;
      }

      else
      {
        sub_1E63F13DC(v31, v27, type metadata accessor for RouteSource);
        if (!swift_getEnumCaseMultiPayload())
        {
          sub_1E63F148C(&v31[v32], v12, type metadata accessor for AppLaunchScope);
          v37 = _s10Blackbeard14AppLaunchScopeO2eeoiySbAC_ACtFZ_0(v27, v12);
          sub_1E63F14F4(v12, type metadata accessor for AppLaunchScope);
          v42 = v27;
          v48 = type metadata accessor for AppLaunchScope;
          goto LABEL_38;
        }

        v39 = type metadata accessor for AppLaunchScope;
        v40 = v27;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        if (EnumCaseMultiPayload == 3)
        {
          sub_1E63F13DC(v31, v19, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 3)
          {
            v35 = v54;
            v34 = v55;
            v36 = v52;
            (*(v54 + 32))(v52, &v31[v32], v55);
            v37 = sub_1E65D7468();
            v38 = *(v35 + 8);
            v38(v36, v34);
            v38(v19, v34);
LABEL_39:
            sub_1E63F14F4(v31, type metadata accessor for RouteSource);
            return v37 & 1;
          }

          (*(v54 + 8))(v19, v55);
        }

        else
        {
          sub_1E63F13DC(v31, v16, type metadata accessor for RouteSource);
          if (swift_getEnumCaseMultiPayload() == 4)
          {
            v44 = v56;
            v43 = v57;
            v45 = v53;
            (*(v56 + 32))(v53, &v31[v32], v57);
            v37 = MEMORY[0x1E6940730](v16, v45);
            v46 = *(v44 + 8);
            v46(v45, v43);
            v46(v16, v43);
            goto LABEL_39;
          }

          (*(v56 + 8))(v16, v57);
        }

        goto LABEL_36;
      }

      sub_1E63F13DC(v31, v22, type metadata accessor for RouteSource);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v41 = v51;
        sub_1E63F148C(&v31[v32], v51, type metadata accessor for URLContext);
        v37 = _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(v22, v41);
        sub_1E63F14F4(v41, type metadata accessor for URLContext);
        v42 = v22;
LABEL_28:
        v48 = type metadata accessor for URLContext;
LABEL_38:
        sub_1E63F14F4(v42, v48);
        goto LABEL_39;
      }

      v39 = type metadata accessor for URLContext;
      v40 = v22;
    }

    sub_1E63F14F4(v40, v39);
LABEL_36:
    sub_1E5DFE50C(v31, &qword_1ED071FA8, &qword_1E65EA428);
    v37 = 0;
    return v37 & 1;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    if (EnumCaseMultiPayload == 5)
    {
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_36;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 6)
    {
      goto LABEL_36;
    }
  }

  else if (EnumCaseMultiPayload == 7)
  {
    if (swift_getEnumCaseMultiPayload() != 7)
    {
      goto LABEL_36;
    }
  }

  else if (EnumCaseMultiPayload == 8)
  {
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      goto LABEL_36;
    }
  }

  else if (swift_getEnumCaseMultiPayload() != 9)
  {
    goto LABEL_36;
  }

  sub_1E63F14F4(v31, type metadata accessor for RouteSource);
  v37 = 1;
  return v37 & 1;
}

uint64_t _s10Blackbeard10URLContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65D74E8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F98, &qword_1E65EA418);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if ((sub_1E65D7468() & 1) == 0)
  {
    return 0;
  }

  v26 = type metadata accessor for URLContext(0);
  v14 = *(v26 + 20);
  v15 = *(v11 + 48);
  sub_1E5F9AF1C(a1 + v14, v13);
  sub_1E5F9AF1C(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1E5F9AF1C(v13, v10);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1E63F1444(&qword_1ED071FB8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v18 = sub_1E65E5B98();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1E5DFE50C(v13, &qword_1ED072340, &qword_1E65EA410);
      if ((v18 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_11;
    }

    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1E5DFE50C(v13, &qword_1ED071F98, &qword_1E65EA418);
    return 0;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1E5DFE50C(v13, &qword_1ED072340, &qword_1E65EA410);
LABEL_11:
  v20 = *(v26 + 24);
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = v23[1];
  if (v22)
  {
    if (v24 && (*v21 == *v23 && v22 == v24 || (sub_1E65E6C18() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v24)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1E63F13DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63F1444(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63F148C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63F14F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t static ToastService.simulator()@<X0>(void *a2@<X8>)
{
  type metadata accessor for SimulatorToastService();
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v3 + 112) = sub_1E65E17A8();
  *a2 = &unk_1E6601060;
  a2[1] = v3;
  a2[2] = &unk_1E6601070;
  a2[3] = v3;
  a2[4] = &unk_1E6601080;
  a2[5] = v3;
  return swift_retain_n();
}

uint64_t sub_1E63F1728(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E600544C(a1, v1);
}

uint64_t sub_1E63F17C0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E5E26DAC(a1, v1);
}

uint64_t sub_1E63F185C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5F87068();
}

uint64_t sub_1E63F18F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[9] = swift_task_alloc();
  v6[10] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v6[15] = sub_1E65E52B8();
  v6[16] = swift_task_alloc();
  v6[17] = type metadata accessor for RouteDestination(0);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v8 = sub_1E65E59F8();
  v6[20] = v8;
  v6[21] = *(v8 - 8);
  v6[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F1AD0, 0, 0);
}

id sub_1E63F1AD0()
{
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v3 = *(v0 + 160);
  (*(v2 + 16))(v1, *(v0 + 48), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E69CD990])
  {
    v5 = *(v0 + 152);
    v6 = *(v0 + 136);
    v7 = *(v0 + 56);
    v8 = *(v0 + 64);
    v10 = v7[11];
    v9 = v7[12];
    __swift_project_boxed_opaque_existential_1(v7 + 8, v10);
    sub_1E63FFABC(v8, v5, MEMORY[0x1E69CD768]);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v5 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 16);
    v11 = *(v0 + 24);
    *(v0 + 32) = *(v0 + 16);
    *(v0 + 40) = v11;
    sub_1E600F5B0((v0 + 26));
    v12 = swift_task_alloc();
    *(v0 + 184) = v12;
    *v12 = v0;
    v12[1] = sub_1E63F20D0;
    v13 = *(v0 + 152);

    return RoutingContext.presentDestination(_:style:priority:)(v13, (v0 + 32), (v0 + 26), v10, v9);
  }

  if (v4 == *MEMORY[0x1E69CD998])
  {
    sub_1E63FFABC(*(v0 + 64), *(v0 + 128), MEMORY[0x1E69CD768]);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 8)
    {
      v28 = *(v0 + 88);
      v29 = *(v0 + 96);
      v30 = *(v0 + 72);
      sub_1E65D74C8();
      if ((*(v29 + 48))(v30, 1, v28) == 1)
      {
        v19 = *(v0 + 72);
        goto LABEL_17;
      }

      (*(*(v0 + 96) + 32))(*(v0 + 104), *(v0 + 72), *(v0 + 88));
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v31 = result;
        v32 = *(v0 + 104);
        goto LABEL_23;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 2)
      {
        sub_1E63FFCF4(*(v0 + 128), MEMORY[0x1E69CD768]);
        goto LABEL_24;
      }

      v16 = *(v0 + 88);
      v17 = *(v0 + 96);
      v18 = *(v0 + 80);
      sub_1E65D74C8();
      if ((*(v17 + 48))(v18, 1, v16) == 1)
      {
        v19 = *(v0 + 80);
LABEL_17:
        sub_1E5DFE50C(v19, &qword_1ED072340, &qword_1E65EA410);
        goto LABEL_24;
      }

      (*(*(v0 + 96) + 32))(*(v0 + 112), *(v0 + 80), *(v0 + 88));
      result = [objc_opt_self() defaultWorkspace];
      if (result)
      {
        v31 = result;
        v32 = *(v0 + 112);
LABEL_23:
        v33 = *(v0 + 88);
        v34 = *(v0 + 96);
        v35 = sub_1E65D7448();
        sub_1E6215168(MEMORY[0x1E69E7CC0]);
        v36 = sub_1E65E5AF8();

        [v31 openSensitiveURL:v35 withOptions:v36];

        (*(v34 + 8))(v32, v33);
        goto LABEL_24;
      }

      __break(1u);
    }

    __break(1u);
    return result;
  }

  if (v4 != *MEMORY[0x1E69CD988])
  {
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 160));
LABEL_24:

    v37 = *(v0 + 8);

    return v37();
  }

  v21 = *(v0 + 136);
  v20 = *(v0 + 144);
  v22 = *(v0 + 56);
  v23 = *(v0 + 64);
  v25 = v22[11];
  v24 = v22[12];
  __swift_project_boxed_opaque_existential_1(v22 + 8, v25);
  sub_1E63FFABC(v23, v20, MEMORY[0x1E69CD768]);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v20 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 25));
  v26 = swift_task_alloc();
  *(v0 + 200) = v26;
  *v26 = v0;
  v26[1] = sub_1E63F22F0;
  v27 = *(v0 + 144);

  return RoutingContext.appendDestination(_:priority:)(v27, (v0 + 25), v25, v24);
}

uint64_t sub_1E63F20D0()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(v2 + 192) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));
  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F2434;
  }

  else
  {
    v4 = sub_1E63F222C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F222C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F22F0()
{
  v2 = *(*v1 + 144);
  *(*v1 + 208) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F24F8;
  }

  else
  {
    v3 = sub_1E63FFE60;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F2434()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F24F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F25BC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = sub_1E65D8258();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  v13 = sub_1E65D80C8();
  if (v15)
  {
    v16 = v13;
    sub_1E65E5688();
    if (swift_dynamicCastClass())
    {
      sub_1E5DFD1CC(v4 + 24, v29, &unk_1ED074320, &unk_1E65EA730);
    }

    else
    {
      sub_1E5DF650C(v4 + 64, v29);
    }

    v18 = sub_1E65E60A8();
    (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
    sub_1E6137A50(v4, v27);
    sub_1E5DFD1CC(v29, v25, &unk_1ED074320, &unk_1E65EA730);
    (*(v8 + 16))(v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
    v19 = (*(v8 + 80) + 184) & ~*(v8 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = v27[5];
    *(v20 + 96) = v27[4];
    *(v20 + 112) = v21;
    *(v20 + 128) = v28;
    v22 = v27[1];
    *(v20 + 32) = v27[0];
    *(v20 + 48) = v22;
    v23 = v27[3];
    *(v20 + 64) = v27[2];
    *(v20 + 80) = v23;
    *(v20 + 136) = v16;
    *(v20 + 176) = v26;
    v24 = v25[1];
    *(v20 + 144) = v25[0];
    *(v20 + 160) = v24;
    (*(v8 + 32))(v20 + v19, v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
    *(v20 + v19 + v9) = a3;
    sub_1E6059EAC(0, 0, v12, &unk_1E66012D8, v20);

    return sub_1E5DFE50C(v29, &unk_1ED074320, &unk_1E65EA730);
  }

  else
  {

    return sub_1E5F87058(v13, v14, 0);
  }
}

uint64_t sub_1E63F28B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 362) = a8;
  *(v8 + 384) = a6;
  *(v8 + 392) = a7;
  *(v8 + 361) = a5;
  *(v8 + 376) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E0, &qword_1E66012E0);
  *(v8 + 400) = swift_task_alloc();
  v9 = sub_1E65E5608();
  *(v8 + 408) = v9;
  *(v8 + 416) = *(v9 - 8);
  *(v8 + 424) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  *(v8 + 432) = swift_task_alloc();
  v10 = sub_1E65D74E8();
  *(v8 + 440) = v10;
  *(v8 + 448) = *(v10 - 8);
  *(v8 + 456) = swift_task_alloc();
  *(v8 + 464) = swift_task_alloc();
  *(v8 + 472) = type metadata accessor for RouteSource(0);
  *(v8 + 480) = swift_task_alloc();
  *(v8 + 488) = type metadata accessor for RouteDestination(0);
  *(v8 + 496) = swift_task_alloc();
  *(v8 + 504) = swift_task_alloc();
  *(v8 + 512) = swift_task_alloc();
  *(v8 + 520) = swift_task_alloc();
  *(v8 + 528) = swift_task_alloc();
  *(v8 + 536) = swift_task_alloc();
  *(v8 + 544) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F2B04, 0, 0);
}

uint64_t sub_1E63F2B04()
{
  v1 = sub_1E65DAE38();
  if (v1 != sub_1E65DAE38())
  {
    sub_1E5DFD1CC(*(v0 + 376) + 24, v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    v2 = *(v0 + 40);
    if (v2)
    {
      v3 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
      v4 = swift_task_alloc();
      *(v0 + 552) = v4;
      *v4 = v0;
      v4[1] = sub_1E63F3A6C;

      return RoutingContext.dismiss()(v2, v3);
    }

    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  }

  v6 = *(v0 + 361);
  if (v6 <= 3)
  {
    if (*(v0 + 361) > 1u)
    {
      if (v6 == 2)
      {
        v7 = v0 + 256;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 256, &unk_1ED074320, &unk_1E65EA730);
        v8 = *(v0 + 280);
        if (v8)
        {
          v26 = *(v0 + 536);
          v27 = *(v0 + 480);
          v28 = *(v0 + 488);
          v12 = *(v0 + 288);
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          v29 = sub_1E65D8078();
          v31 = v30;
          swift_storeEnumTagMultiPayload();
          *v26 = v29;
          v26[1] = v31;
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v27, v26 + *(v28 + 20), type metadata accessor for RouteSource);
          *(v26 + *(v28 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 350));
          v32 = swift_task_alloc();
          *(v0 + 584) = v32;
          *v32 = v0;
          v32[1] = sub_1E63F4C5C;
          v17 = *(v0 + 536);
          v18 = (v0 + 350);
          goto LABEL_30;
        }
      }

      else
      {
        v7 = v0 + 216;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 216, &unk_1ED074320, &unk_1E65EA730);
        v8 = *(v0 + 240);
        if (v8)
        {
          v47 = *(v0 + 528);
          v48 = *(v0 + 480);
          v49 = *(v0 + 488);
          v12 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v50 = sub_1E65D8078();
          v52 = v51;
          swift_storeEnumTagMultiPayload();
          *v47 = v50;
          v47[1] = v52;
          type metadata accessor for PlaylistType(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v48, v47 + *(v49 + 20), type metadata accessor for RouteSource);
          *(v47 + *(v49 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 349));
          v53 = swift_task_alloc();
          *(v0 + 600) = v53;
          *v53 = v0;
          v53[1] = sub_1E63F4EC0;
          v17 = *(v0 + 528);
          v18 = (v0 + 349);
          goto LABEL_30;
        }
      }

      goto LABEL_38;
    }

    if (*(v0 + 361))
    {
      v7 = v0 + 296;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 296, &unk_1ED074320, &unk_1E65EA730);
      v8 = *(v0 + 320);
      if (v8)
      {
        v19 = *(v0 + 544);
        v20 = *(v0 + 480);
        v21 = *(v0 + 488);
        v12 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        v22 = sub_1E65D8078();
        v24 = v23;
        swift_storeEnumTagMultiPayload();
        *v19 = v22;
        v19[1] = v24;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v20, v19 + *(v21 + 20), type metadata accessor for RouteSource);
        *(v19 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 351));
        v25 = swift_task_alloc();
        *(v0 + 568) = v25;
        *v25 = v0;
        v25[1] = sub_1E63F49F8;
        v17 = *(v0 + 544);
        v18 = (v0 + 351);
        goto LABEL_30;
      }

      goto LABEL_38;
    }

    goto LABEL_23;
  }

  if (*(v0 + 361) <= 5u)
  {
    if (v6 == 4)
    {
      v7 = v0 + 176;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 176, &unk_1ED074320, &unk_1E65EA730);
      v8 = *(v0 + 200);
      if (v8)
      {
        v33 = *(v0 + 520);
        v34 = *(v0 + 480);
        v35 = *(v0 + 488);
        v12 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        v36 = sub_1E65D8078();
        v38 = v37;
        swift_storeEnumTagMultiPayload();
        *v33 = v36;
        v33[1] = v38;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v34, v33 + *(v35 + 20), type metadata accessor for RouteSource);
        *(v33 + *(v35 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 348));
        v39 = swift_task_alloc();
        *(v0 + 616) = v39;
        *v39 = v0;
        v39[1] = sub_1E63F5124;
        v17 = *(v0 + 520);
        v18 = (v0 + 348);
        goto LABEL_30;
      }

      goto LABEL_38;
    }

LABEL_23:
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003DLL, 0x80000001E6616E80);
    v40 = sub_1E65D94E8();
    MEMORY[0x1E694D7C0](v40);

    return sub_1E65E69D8();
  }

  if (v6 != 6)
  {
    if (v6 == 7)
    {
      v7 = v0 + 96;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 96, &unk_1ED074320, &unk_1E65EA730);
      v8 = *(v0 + 120);
      if (v8)
      {
        v9 = *(v0 + 504);
        v10 = *(v0 + 480);
        v11 = *(v0 + 488);
        v12 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v13 = sub_1E65D8078();
        v15 = v14;
        swift_storeEnumTagMultiPayload();
        *v9 = v13;
        v9[1] = v15;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v10, v9 + *(v11 + 20), type metadata accessor for RouteSource);
        *(v9 + *(v11 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 346));
        v16 = swift_task_alloc();
        *(v0 + 648) = v16;
        *v16 = v0;
        v16[1] = sub_1E63F5644;
        v17 = *(v0 + 504);
        v18 = (v0 + 346);
LABEL_30:

        return RoutingContext.appendDestination(_:priority:)(v17, v18, v8, v12);
      }
    }

    else
    {
      v7 = v0 + 56;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
      v8 = *(v0 + 80);
      if (v8)
      {
        v55 = *(v0 + 488);
        v54 = *(v0 + 496);
        v56 = *(v0 + 480);
        v12 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        v57 = sub_1E65D8078();
        v59 = v58;
        swift_storeEnumTagMultiPayload();
        *v54 = v57;
        v54[1] = v59;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v56, v54 + *(v55 + 20), type metadata accessor for RouteSource);
        *(v54 + *(v55 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 345));
        v60 = swift_task_alloc();
        *(v0 + 664) = v60;
        *v60 = v0;
        v60[1] = sub_1E63F58A8;
        v17 = *(v0 + 496);
        v18 = (v0 + 345);
        goto LABEL_30;
      }
    }

    goto LABEL_38;
  }

  v41 = *(v0 + 440);
  v42 = *(v0 + 448);
  v43 = *(v0 + 432);
  sub_1E65D8098();
  if ((*(v42 + 48))(v43, 1, v41) == 1)
  {
    sub_1E5DFE50C(*(v0 + 432), &qword_1ED072340, &qword_1E65EA410);
    v44 = sub_1E65E5208();
    sub_1E63FFA10(&qword_1ED079240, MEMORY[0x1E69CD6D8], MEMORY[0x1E69CD6E0]);
    swift_allocError();
    (*(*(v44 - 8) + 104))(v45, *MEMORY[0x1E69CD6D0], v44);
    swift_willThrow();

    v46 = *(v0 + 8);
LABEL_39:

    return v46();
  }

  v7 = v0 + 136;
  v61 = *(v0 + 456);
  v62 = *(v0 + 464);
  v64 = *(v0 + 440);
  v63 = *(v0 + 448);
  v85 = *(v0 + 384);
  (*(v63 + 32))(v62, *(v0 + 432), v64);
  sub_1E65D8078();
  (*(v63 + 16))(v61, v62, v64);
  sub_1E65D8118();
  sub_1E65D81F8();
  sub_1E65D8138();
  sub_1E65D80F8();
  sub_1E65E55F8();
  sub_1E5DFD1CC(v85, v0 + 136, &unk_1ED074320, &unk_1E65EA730);
  v65 = *(v0 + 160);
  if (!v65)
  {
    v80 = *(v0 + 464);
    v81 = *(v0 + 440);
    v82 = *(v0 + 448);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v82 + 8))(v80, v81);
LABEL_38:
    sub_1E5DFE50C(v7, &unk_1ED074320, &unk_1E65EA730);

    v46 = *(v0 + 8);
    goto LABEL_39;
  }

  v66 = *(v0 + 512);
  v67 = *(v0 + 488);
  v69 = *(v0 + 416);
  v68 = *(v0 + 424);
  v70 = *(v0 + 408);
  v84 = *(v0 + 362);
  v71 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v65);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v73 = (v66 + *(v72 + 64));
  v83 = *(v72 + 80);
  (*(v69 + 16))(v66, v68, v70);
  v74 = *MEMORY[0x1E69CD908];
  v75 = sub_1E65E57D8();
  (*(*(v75 - 8) + 104))(v66, v74, v75);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  sub_1E65E5528();
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  *(v0 + 368) = v76;
  sub_1E63FFA10(&qword_1ED078A30, MEMORY[0x1E69CD868], MEMORY[0x1E69CD880]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  *v73 = 0;
  v73[1] = 0;
  *(v66 + v83) = v84;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v66 + *(v67 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 336);
  v77 = *(v0 + 344);
  *(v0 + 352) = *(v0 + 336);
  *(v0 + 360) = v77;
  sub_1E600F5B0((v0 + 347));
  v78 = swift_task_alloc();
  *(v0 + 632) = v78;
  *v78 = v0;
  v78[1] = sub_1E63F5388;
  v79 = *(v0 + 512);

  return RoutingContext.presentDestination(_:style:priority:)(v79, (v0 + 352), (v0 + 347), v65, v71);
}

uint64_t sub_1E63F3A6C()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1E63F5B0C;
  }

  else
  {
    v2 = sub_1E63F3B80;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63F3B80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v1 = *(v0 + 361);
  if (v1 <= 3)
  {
    if (*(v0 + 361) > 1u)
    {
      if (v1 == 2)
      {
        v2 = v0 + 256;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 256, &unk_1ED074320, &unk_1E65EA730);
        v3 = *(v0 + 280);
        if (v3)
        {
          v21 = *(v0 + 536);
          v22 = *(v0 + 480);
          v23 = *(v0 + 488);
          v7 = *(v0 + 288);
          __swift_project_boxed_opaque_existential_1((v0 + 256), *(v0 + 280));
          v24 = sub_1E65D8078();
          v26 = v25;
          swift_storeEnumTagMultiPayload();
          *v21 = v24;
          v21[1] = v26;
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v22, v21 + *(v23 + 20), type metadata accessor for RouteSource);
          *(v21 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 350));
          v27 = swift_task_alloc();
          *(v0 + 584) = v27;
          *v27 = v0;
          v27[1] = sub_1E63F4C5C;
          v12 = *(v0 + 536);
          v13 = (v0 + 350);
          goto LABEL_24;
        }
      }

      else
      {
        v2 = v0 + 216;
        sub_1E5DFD1CC(*(v0 + 384), v0 + 216, &unk_1ED074320, &unk_1E65EA730);
        v3 = *(v0 + 240);
        if (v3)
        {
          v43 = *(v0 + 528);
          v44 = *(v0 + 480);
          v45 = *(v0 + 488);
          v7 = *(v0 + 248);
          __swift_project_boxed_opaque_existential_1((v0 + 216), *(v0 + 240));
          v46 = sub_1E65D8078();
          v48 = v47;
          swift_storeEnumTagMultiPayload();
          *v43 = v46;
          v43[1] = v48;
          type metadata accessor for PlaylistType(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          sub_1E63FFB24(v44, v43 + *(v45 + 20), type metadata accessor for RouteSource);
          *(v43 + *(v45 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v0 + 349));
          v49 = swift_task_alloc();
          *(v0 + 600) = v49;
          *v49 = v0;
          v49[1] = sub_1E63F4EC0;
          v12 = *(v0 + 528);
          v13 = (v0 + 349);
          goto LABEL_24;
        }
      }

      goto LABEL_32;
    }

    if (*(v0 + 361))
    {
      v2 = v0 + 296;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 296, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 320);
      if (v3)
      {
        v14 = *(v0 + 544);
        v15 = *(v0 + 480);
        v16 = *(v0 + 488);
        v7 = *(v0 + 328);
        __swift_project_boxed_opaque_existential_1((v0 + 296), *(v0 + 320));
        v17 = sub_1E65D8078();
        v19 = v18;
        swift_storeEnumTagMultiPayload();
        *v14 = v17;
        v14[1] = v19;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v15, v14 + *(v16 + 20), type metadata accessor for RouteSource);
        *(v14 + *(v16 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 351));
        v20 = swift_task_alloc();
        *(v0 + 568) = v20;
        *v20 = v0;
        v20[1] = sub_1E63F49F8;
        v12 = *(v0 + 544);
        v13 = (v0 + 351);
        goto LABEL_24;
      }

      goto LABEL_32;
    }

    goto LABEL_17;
  }

  if (*(v0 + 361) <= 5u)
  {
    if (v1 == 4)
    {
      v2 = v0 + 176;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 176, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 200);
      if (v3)
      {
        v28 = *(v0 + 520);
        v29 = *(v0 + 480);
        v30 = *(v0 + 488);
        v7 = *(v0 + 208);
        __swift_project_boxed_opaque_existential_1((v0 + 176), *(v0 + 200));
        v31 = sub_1E65D8078();
        v33 = v32;
        swift_storeEnumTagMultiPayload();
        *v28 = v31;
        v28[1] = v33;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v29, v28 + *(v30 + 20), type metadata accessor for RouteSource);
        *(v28 + *(v30 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 348));
        v34 = swift_task_alloc();
        *(v0 + 616) = v34;
        *v34 = v0;
        v34[1] = sub_1E63F5124;
        v12 = *(v0 + 520);
        v13 = (v0 + 348);
        goto LABEL_24;
      }

      goto LABEL_32;
    }

LABEL_17:
    sub_1E65E68A8();
    MEMORY[0x1E694D7C0](0xD00000000000003DLL, 0x80000001E6616E80);
    v35 = sub_1E65D94E8();
    MEMORY[0x1E694D7C0](v35);

    return sub_1E65E69D8();
  }

  if (v1 != 6)
  {
    if (v1 == 7)
    {
      v2 = v0 + 96;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 96, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 120);
      if (v3)
      {
        v4 = *(v0 + 504);
        v5 = *(v0 + 480);
        v6 = *(v0 + 488);
        v7 = *(v0 + 128);
        __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
        v8 = sub_1E65D8078();
        v10 = v9;
        swift_storeEnumTagMultiPayload();
        *v4 = v8;
        v4[1] = v10;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v5, v4 + *(v6 + 20), type metadata accessor for RouteSource);
        *(v4 + *(v6 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 346));
        v11 = swift_task_alloc();
        *(v0 + 648) = v11;
        *v11 = v0;
        v11[1] = sub_1E63F5644;
        v12 = *(v0 + 504);
        v13 = (v0 + 346);
LABEL_24:

        return RoutingContext.appendDestination(_:priority:)(v12, v13, v3, v7);
      }
    }

    else
    {
      v2 = v0 + 56;
      sub_1E5DFD1CC(*(v0 + 384), v0 + 56, &unk_1ED074320, &unk_1E65EA730);
      v3 = *(v0 + 80);
      if (v3)
      {
        v51 = *(v0 + 488);
        v50 = *(v0 + 496);
        v52 = *(v0 + 480);
        v7 = *(v0 + 88);
        __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
        v53 = sub_1E65D8078();
        v55 = v54;
        swift_storeEnumTagMultiPayload();
        *v50 = v53;
        v50[1] = v55;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E63FFB24(v52, v50 + *(v51 + 20), type metadata accessor for RouteSource);
        *(v50 + *(v51 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v0 + 345));
        v56 = swift_task_alloc();
        *(v0 + 664) = v56;
        *v56 = v0;
        v56[1] = sub_1E63F58A8;
        v12 = *(v0 + 496);
        v13 = (v0 + 345);
        goto LABEL_24;
      }
    }

    goto LABEL_32;
  }

  v37 = *(v0 + 440);
  v38 = *(v0 + 448);
  v39 = *(v0 + 432);
  sub_1E65D8098();
  if ((*(v38 + 48))(v39, 1, v37) == 1)
  {
    sub_1E5DFE50C(*(v0 + 432), &qword_1ED072340, &qword_1E65EA410);
    v40 = sub_1E65E5208();
    sub_1E63FFA10(&qword_1ED079240, MEMORY[0x1E69CD6D8], MEMORY[0x1E69CD6E0]);
    swift_allocError();
    (*(*(v40 - 8) + 104))(v41, *MEMORY[0x1E69CD6D0], v40);
    swift_willThrow();

    v42 = *(v0 + 8);
LABEL_33:

    return v42();
  }

  v2 = v0 + 136;
  v57 = *(v0 + 456);
  v58 = *(v0 + 464);
  v60 = *(v0 + 440);
  v59 = *(v0 + 448);
  v81 = *(v0 + 384);
  (*(v59 + 32))(v58, *(v0 + 432), v60);
  sub_1E65D8078();
  (*(v59 + 16))(v57, v58, v60);
  sub_1E65D8118();
  sub_1E65D81F8();
  sub_1E65D8138();
  sub_1E65D80F8();
  sub_1E65E55F8();
  sub_1E5DFD1CC(v81, v0 + 136, &unk_1ED074320, &unk_1E65EA730);
  v61 = *(v0 + 160);
  if (!v61)
  {
    v76 = *(v0 + 464);
    v77 = *(v0 + 440);
    v78 = *(v0 + 448);
    (*(*(v0 + 416) + 8))(*(v0 + 424), *(v0 + 408));
    (*(v78 + 8))(v76, v77);
LABEL_32:
    sub_1E5DFE50C(v2, &unk_1ED074320, &unk_1E65EA730);

    v42 = *(v0 + 8);
    goto LABEL_33;
  }

  v62 = *(v0 + 512);
  v63 = *(v0 + 488);
  v65 = *(v0 + 416);
  v64 = *(v0 + 424);
  v66 = *(v0 + 408);
  v80 = *(v0 + 362);
  v67 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v61);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0778F0, &unk_1E65EA7F0);
  v69 = (v62 + *(v68 + 64));
  v79 = *(v68 + 80);
  (*(v65 + 16))(v62, v64, v66);
  v70 = *MEMORY[0x1E69CD908];
  v71 = sub_1E65E57D8();
  (*(*(v71 - 8) + 104))(v62, v70, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079248, &qword_1E66012E8);
  sub_1E65E5528();
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_1E65EA670;
  sub_1E65E5518();
  *(v0 + 368) = v72;
  sub_1E63FFA10(&qword_1ED078A30, MEMORY[0x1E69CD868], MEMORY[0x1E69CD880]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079250, &qword_1E66012F0);
  sub_1E63FFA58();
  sub_1E65E6738();
  *v69 = 0;
  v69[1] = 0;
  *(v62 + v79) = v80;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v62 + *(v63 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 336);
  v73 = *(v0 + 344);
  *(v0 + 352) = *(v0 + 336);
  *(v0 + 360) = v73;
  sub_1E600F5B0((v0 + 347));
  v74 = swift_task_alloc();
  *(v0 + 632) = v74;
  *v74 = v0;
  v74[1] = sub_1E63F5388;
  v75 = *(v0 + 512);

  return RoutingContext.presentDestination(_:style:priority:)(v75, (v0 + 352), (v0 + 347), v61, v67);
}

uint64_t sub_1E63F49F8()
{
  v2 = *v1;
  *(*v1 + 576) = v0;

  sub_1E63FFCF4(*(v2 + 544), type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F5C28;
  }

  else
  {
    v3 = sub_1E63F4B44;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F4B44()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F4C5C()
{
  v2 = *v1;
  *(*v1 + 592) = v0;

  sub_1E63FFCF4(*(v2 + 536), type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F5D44;
  }

  else
  {
    v3 = sub_1E63F4DA8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F4DA8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F4EC0()
{
  v2 = *v1;
  *(*v1 + 608) = v0;

  sub_1E63FFCF4(*(v2 + 528), type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F5E60;
  }

  else
  {
    v3 = sub_1E63F500C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F500C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5124()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  sub_1E63FFCF4(*(v2 + 520), type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F5F7C;
  }

  else
  {
    v3 = sub_1E63F5270;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F5270()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5388()
{
  v2 = *v1;
  *(*v1 + 640) = v0;

  if (v0)
  {
    v3 = *(v2 + 512);
    sub_1E5F94E00(*(v2 + 352), *(v2 + 360));
    sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
    v4 = sub_1E63F6098;
  }

  else
  {
    v5 = *(v2 + 512);
    sub_1E5F94E00(*(v2 + 352), *(v2 + 360));
    sub_1E63FFCF4(v5, type metadata accessor for RouteDestination);
    v4 = sub_1E63F54F4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F54F4()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63F5644()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  sub_1E63FFCF4(*(v2 + 504), type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F61EC;
  }

  else
  {
    v3 = sub_1E63F5790;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F5790()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F58A8()
{
  v2 = *v1;
  *(*v1 + 672) = v0;

  sub_1E63FFCF4(*(v2 + 496), type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F6308;
  }

  else
  {
    v3 = sub_1E63F59F4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F59F4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5B0C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5C28()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 296));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5D44()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 256));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5E60()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 216));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F5F7C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 176));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F6098()
{
  v1 = v0[58];
  v2 = v0[55];
  v3 = v0[56];
  (*(v0[52] + 8))(v0[53], v0[51]);
  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E63F61EC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F6308()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F6424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = type metadata accessor for RouteDestination(0);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F64BC, 0, 0);
}

uint64_t sub_1E63F64BC()
{
  v2 = *(v0 + 80);
  v1 = *(v0 + 88);
  v3 = *(v0 + 64);
  v4 = *(v0 + 72);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v8 = v5[11];
  v7 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v8);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720E0, &unk_1E65EA2A0) + 48);
  *v1 = v6;
  *(v1 + 1) = v3;
  v10 = sub_1E65D74E8();
  (*(*(v10 - 8) + 16))(&v1[v9], v4, v10);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *&v1[*(v2 + 24)] = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v11 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v11;
  sub_1E600F5B0((v0 + 25));

  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = sub_1E63F6684;
  v13 = *(v0 + 88);

  return RoutingContext.presentDestination(_:style:priority:)(v13, (v0 + 32), (v0 + 25), v8, v7);
}

uint64_t sub_1E63F6684()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *v1;
  *(v2 + 104) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));
  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F6814, 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5();
  }
}

uint64_t sub_1E63F6814()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F6878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v7[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v7[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v7[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v7[13] = swift_task_alloc();
  v7[14] = type metadata accessor for RouteDestination(0);
  v7[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F69F0, 0, 0);
}

uint64_t sub_1E63F69F0()
{
  v1 = *(v0 + 120);
  v26 = *(v0 + 104);
  v27 = *(v0 + 96);
  v29 = *(v0 + 88);
  v30 = *(v0 + 80);
  v31 = *(v0 + 112);
  v2 = *(v0 + 64);
  v3 = *(v0 + 56);
  v24 = *(v0 + 48);
  v32 = v24[11];
  v33 = v24[12];
  __swift_project_boxed_opaque_existential_1(v24 + 8, v32);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720F0, &unk_1E65EA2B0);
  v5 = (v1 + v4[16]);
  v23 = v4[20];
  v6 = (v1 + v4[24]);
  v7 = (v1 + v4[28]);
  v25 = v4[32];
  v28 = v4[36];
  *(v0 + 16) = v3;
  *(v0 + 24) = v2;

  sub_1E65E6848();
  sub_1E65D8448();
  v8 = sub_1E65DB3E8();
  *v5 = 0;
  v5[1] = 0;
  (*(*(v8 - 8) + 56))(v1 + v23, 1, 1, v8);
  *v6 = v3;
  v6[1] = v2;

  *v7 = sub_1E65D8468();
  v7[1] = v9;
  v10 = *MEMORY[0x1E69CD548];
  v11 = sub_1E65DB5D8();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v1 + v25, v10, v11);
  (*(v12 + 56))(v1 + v25, 0, 1, v11);
  v13 = *MEMORY[0x1E69CBDC0];
  v14 = sub_1E65D8F38();
  v15 = *(v14 - 8);
  (*(v15 + 104))(v26, v13, v14);
  (*(v15 + 56))(v26, 0, 1, v14);
  sub_1E5FA9D34(*v24, v24[1]);
  sub_1E65D8448();
  v16 = sub_1E65D74E8();
  (*(*(v16 - 8) + 56))(v27, 0, 1, v16);
  v17 = sub_1E65D9908();
  (*(*(v17 - 8) + 56))(v29, 1, 1, v17);
  v18 = sub_1E65D9F88();
  (*(*(v18 - 8) + 56))(v30, 1, 1, v18);
  sub_1E65D7A28();
  v19 = sub_1E65D7A38();
  (*(*(v19 - 8) + 56))(v1 + v28, 0, 1, v19);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v31 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 2;
  *(v0 + 40) = -64;
  sub_1E600F5B0((v0 + 41));
  v20 = swift_task_alloc();
  *(v0 + 128) = v20;
  *v20 = v0;
  v20[1] = sub_1E63F6EB4;
  v21 = *(v0 + 120);

  return RoutingContext.presentDestination(_:style:priority:)(v21, (v0 + 32), (v0 + 41), v32, v33);
}

uint64_t sub_1E63F6EB4()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 136) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F7058, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F7058()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F70EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for RouteSource(0);
  v5[5] = swift_task_alloc();
  v5[6] = type metadata accessor for RouteDestination(0);
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F71B0, 0, 0);
}

uint64_t sub_1E63F71B0()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 16);
  v5 = v4[11];
  v6 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v5);
  v7 = sub_1E65DACE8();
  v9 = v8;
  swift_storeEnumTagMultiPayload();
  *v1 = v7;
  v1[1] = v9;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 80));
  v10 = swift_task_alloc();
  *(v0 + 64) = v10;
  *v10 = v0;
  v10[1] = sub_1E63F7314;
  v11 = *(v0 + 56);

  return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 80), v5, v6);
}

uint64_t sub_1E63F7314()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F749C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F749C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F750C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E63F752C, 0, 0);
}

uint64_t sub_1E63F752C()
{
  v1 = *(v0 + 16);
  v3 = v1[11];
  v2 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
  sub_1E600F5B0((v0 + 48));
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *v4 = v0;
  v4[1] = sub_1E63F7604;
  v5 = *(v0 + 24);

  return RoutingContext.appendDestination(_:priority:)(v5, (v0 + 48), v3, v2);
}

uint64_t sub_1E63F7604()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F7738, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E63F7750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E63F7774, 0, 0);
}

uint64_t sub_1E63F7774()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = v2[11];
  v5 = v2[12];
  __swift_project_boxed_opaque_existential_1(v2 + 8, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v6 = *(type metadata accessor for RouteDestination(0) - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v0 + 80) = v8;
  *(v8 + 16) = xmmword_1E65EA670;
  v9 = sub_1E63FFABC(v3, v8 + v7, type metadata accessor for RouteDestination);
  v1(v9);
  v10 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v10;
  *(v0 + 25) = 0;
  v13 = (*(v5 + 80) + **(v5 + 80));
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1E63F79A4;

  return v13(v8, v0 + 32, 1, v0 + 25, v4, v5);
}

uint64_t sub_1E63F79A4()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  sub_1E5F94E00(*(v2 + 32), *(v2 + 40));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F7B10, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E63F7B28(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = *(v1 + 16);
  if (v6 < 2)
  {
    sub_1E65E5AB8();
    v7 = swift_dynamicCastClass() != 0;
    v8 = [a1 presentingViewController];
    v9 = sub_1E65E60A8();
    (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
    sub_1E6137A50(v1, &v22);
    v10 = swift_allocObject();
    v11 = v24;
    *(v10 + 88) = v25;
    v12 = v27;
    *(v10 + 104) = v26;
    *(v10 + 120) = v12;
    v13 = v23;
    *(v10 + 40) = v22;
    *(v10 + 56) = v13;
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    *(v10 + 32) = v7;
    v14 = v28;
    *(v10 + 72) = v11;
    *(v10 + 136) = v14;
    *(v10 + 144) = v8;
    v15 = &unk_1E6601268;
LABEL_5:
    sub_1E6059EAC(0, 0, v5, v15, v10);
  }

  if (v6 == 3)
  {
    v16 = sub_1E65E60A8();
    (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    sub_1E6137A50(v1, &v22);
    v10 = swift_allocObject();
    *(v10 + 16) = 0;
    *(v10 + 24) = 0;
    v17 = v27;
    *(v10 + 96) = v26;
    *(v10 + 112) = v17;
    *(v10 + 128) = v28;
    v18 = v23;
    *(v10 + 32) = v22;
    *(v10 + 48) = v18;
    v19 = v25;
    *(v10 + 64) = v24;
    *(v10 + 80) = v19;
    v15 = &unk_1E6601258;
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63F7DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = type metadata accessor for RouteSource(0);
  v4[4] = swift_task_alloc();
  v4[5] = type metadata accessor for RouteDestination(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F7E7C, 0, 0);
}

uint64_t sub_1E63F7E7C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v6 = v4[11];
  v5 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v6);
  swift_storeEnumTagMultiPayload();
  *v1 = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1E63F7FCC;
  v8 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v8, (v0 + 72), v6, v5);
}

uint64_t sub_1E63F7FCC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F8154(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 171) = a4;
  *(v6 + 72) = type metadata accessor for RouteDestination(0);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F8204, 0, 0);
}

uint64_t sub_1E63F8204()
{
  if (*(v0 + 171) == 1)
  {
    if (*(v0 + 64) && (objc_opt_self(), swift_dynamicCastObjCClass()))
    {
      v1 = *(v0 + 56);
      v3 = v1[11];
      v2 = v1[12];
      __swift_project_boxed_opaque_existential_1(v1 + 8, v3);
      v4 = swift_task_alloc();
      *(v0 + 104) = v4;
      *v4 = v0;
      v4[1] = sub_1E63F8508;

      return RoutingContext.dismiss()(v3, v2);
    }

    else
    {
      v13 = *(v0 + 56);
      v14 = v13[11];
      v15 = v13[12];
      __swift_project_boxed_opaque_existential_1(v13 + 8, v14);
      v17 = (*(v15 + 64) + **(v15 + 64));
      v16 = swift_task_alloc();
      *(v0 + 128) = v16;
      *v16 = v0;
      v16[1] = sub_1E63F8920;

      return v17(0, v14, v15);
    }
  }

  else
  {
    v7 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v10 = v8[11];
    v9 = v8[12];
    __swift_project_boxed_opaque_existential_1(v8 + 8, v10);
    *v6 = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 168));
    v11 = swift_task_alloc();
    *(v0 + 152) = v11;
    *v11 = v0;
    v11[1] = sub_1E63F8E00;
    v12 = *(v0 + 80);

    return RoutingContext.appendDestination(_:priority:)(v12, (v0 + 168), v10, v9);
  }
}

uint64_t sub_1E63F8508()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F8660, 0, 0);
  }
}

uint64_t sub_1E63F8660()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v5 = v3[11];
  v4 = v3[12];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v5);
  *v1 = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 170));
  v6 = swift_task_alloc();
  *(v0 + 112) = v6;
  *v6 = v0;
  v6[1] = sub_1E63F8790;
  v7 = *(v0 + 96);

  return RoutingContext.appendDestination(_:priority:)(v7, (v0 + 170), v5, v4);
}

uint64_t sub_1E63F8790()
{
  v2 = *(*v1 + 96);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F9098, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F8920()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F8A78, 0, 0);
  }
}

uint64_t sub_1E63F8A78()
{
  sub_1E5DFD1CC(*(v0 + 56) + 24, v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 88);
    v3 = *(v0 + 72);
    v4 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *v2 = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v2 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E600F5B0((v0 + 169));
    v5 = swift_task_alloc();
    *(v0 + 136) = v5;
    *v5 = v0;
    v5[1] = sub_1E63F8C3C;
    v6 = *(v0 + 88);

    return RoutingContext.appendDestination(_:priority:)(v6, (v0 + 169), v1, v4);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E63F8C3C()
{
  v2 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {
    v3 = sub_1E63F9010;
  }

  else
  {
    v3 = sub_1E63F8D80;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E63F8D80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F8E00()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 160) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F8F90, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F8F90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F9010()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F9098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F9118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = type metadata accessor for RouteResource(0);
  v5[14] = swift_task_alloc();
  v5[15] = type metadata accessor for RouteDestination(0);
  v5[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F91DC, 0, 0);
}

uint64_t sub_1E63F91DC()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  sub_1E5DF650C(*(v0 + 88) + 64, v0 + 16);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v7 = sub_1E65D9048();
  (*(*(v7 - 8) + 16))(v3, v4, v7);
  v8 = sub_1E65DAE38();
  v9 = v8 != sub_1E65DAE38();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077830, &qword_1E65F0F68);
  *(v3 + *(v10 + 48)) = v9;
  v11 = sub_1E65DAE38();
  *(v3 + *(v10 + 64)) = v11 != sub_1E65DAE38();
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v3, v1, type metadata accessor for RouteResource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 56);
  v12 = *(v0 + 64);
  *(v0 + 72) = *(v0 + 56);
  *(v0 + 80) = v12;
  sub_1E600F5B0((v0 + 65));
  v13 = swift_task_alloc();
  *(v0 + 136) = v13;
  *v13 = v0;
  v13[1] = sub_1E63F9404;
  v14 = *(v0 + 128);

  return RoutingContext.presentDestination(_:style:priority:)(v14, (v0 + 72), (v0 + 65), v6, v5);
}

uint64_t sub_1E63F9404()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  *(v2 + 144) = v0;

  sub_1E5F94E00(*(v2 + 72), *(v2 + 80));
  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63F95DC;
  }

  else
  {
    v4 = sub_1E63F9560;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63F9560()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F95DC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F9658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for RouteDestination(0);
  v6[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F96F0, 0, 0);
}

uint64_t sub_1E63F96F0()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v4 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5 = *(v0 + 16);
  v7 = v5[11];
  v6 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v7);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077850, &unk_1E65EA810) + 48);
  v9 = sub_1E65DA308();
  (*(*(v9 - 8) + 16))(v1, v4, v9);
  *(v1 + v8) = v3;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));

  v10 = swift_task_alloc();
  *(v0 + 56) = v10;
  *v10 = v0;
  v10[1] = sub_1E63F9888;
  v11 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v11, (v0 + 72), v7, v6);
}

uint64_t sub_1E63F9888()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63F9A00, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63F9A00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63F9A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17[-v7];
  v9 = sub_1E65D9F38();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1E5DFD1CC(a1, v8, &qword_1ED079238, &qword_1E6601220);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1E5DFE50C(v8, &qword_1ED079238, &qword_1E6601220);
    v13 = sub_1E65D9D28();
    return (*(*(v13 - 8) + 56))(a3, 1, 1, v13);
  }

  else
  {
    v15 = (*(v10 + 32))(v12, v8, v9);
    MEMORY[0x1EEE9AC00](v15);
    *&v17[-16] = v12;

    v16 = sub_1E63B8A88(sub_1E63FEF98, &v17[-32], a2);
    sub_1E6059E54(v16, a3);

    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t sub_1E63F9CBC(uint64_t a1)
{
  v1 = sub_1E65D9CD8();
  v3 = v2;
  if (v1 == sub_1E65D9F18() && v3 == v4)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1E65E6C18();
  }

  return v5 & 1;
}

uint64_t sub_1E63F9D58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v13;
  *(v8 + 80) = v14;
  *(v8 + 27) = v12;
  *(v8 + 56) = a8;
  *(v8 + 64) = v11;
  *(v8 + 40) = a5;
  *(v8 + 48) = a7;
  *(v8 + 26) = a6;
  *(v8 + 32) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  *(v8 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076B98, &qword_1E65F78F8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = type metadata accessor for RouteResource(0);
  *(v8 + 112) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63F9E80, 0, 0);
}

uint64_t sub_1E63F9E80()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v14 = *(v0 + 48);
  v15 = *(v0 + 64);
  v16 = *(v0 + 80);
  v4 = *(v0 + 32);
  v20 = v4[11];
  v18 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v5 = (type metadata accessor for RouteDestination(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v19 = swift_allocObject();
  *(v0 + 120) = v19;
  *(v19 + 16) = xmmword_1E65EA670;
  v7 = v19 + v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072120, &qword_1E65EA2E0);
  v9 = *(v8 + 48);
  v10 = *(v8 + 64);
  v14();
  sub_1E5DFD1CC(v15, v2, &qword_1ED079238, &qword_1E6601220);
  sub_1E65E58C8();
  *(v1 + v9) = v3;
  *(v1 + v10) = v16;
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFB24(v1, v7, type metadata accessor for RouteResource);
  *(v7 + v5[8]) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  v11 = *(v18 + 80);

  v17 = (v11 + *v11);
  v12 = swift_task_alloc();
  *(v0 + 128) = v12;
  *v12 = v0;
  v12[1] = sub_1E63FA190;

  return v17(v19, v0 + 16, 1, v0 + 25, v20, v18);
}

uint64_t sub_1E63FA190()
{
  v2 = *v1;
  *(v2 + 136) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FA30C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E63FA30C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FA384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1E63FA3A8, 0, 0);
}

uint64_t sub_1E63FA3A8()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = v3[12];
  v18 = v3[11];
  __swift_project_boxed_opaque_existential_1(v3 + 8, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v6 = (type metadata accessor for RouteDestination(0) - 8);
  v7 = (*(*v6 + 80) + 32) & ~*(*v6 + 80);
  v8 = swift_allocObject();
  *(v0 + 64) = v8;
  *(v8 + 16) = xmmword_1E65EA670;
  v9 = v8 + v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072110, &unk_1E65EA2D0);
  v11 = *(v10 + 48);
  v12 = *(v10 + 64);
  v13 = sub_1E65E56B8();
  (*(*(v13 - 8) + 16))(v9, v4, v13);
  *(v9 + v11) = v2;
  *(v9 + v12) = v1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v9 + v6[8]) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  v14 = *(v5 + 80);

  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v0 + 72) = v15;
  *v15 = v0;
  v15[1] = sub_1E63FA660;

  return v17(v8, v0 + 16, 1, v0 + 25, v18, v5);
}

uint64_t sub_1E63FA660()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FA7B0, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E63FA7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a4;
  v4[5] = type metadata accessor for RouteSource(0);
  v4[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v4[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FA904, 0, 0);
}

uint64_t sub_1E63FA904()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  v21 = v3;
  v22 = v2;
  v23 = *(v0 + 48);
  v4 = *(v0 + 32);
  v25 = v4[11];
  v26 = v4[12];
  __swift_project_boxed_opaque_existential_1(v4 + 8, v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v5 = (type metadata accessor for RouteDestination(0) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v24 = swift_allocObject();
  *(v0 + 80) = v24;
  *(v24 + 16) = xmmword_1E65EA670;
  v7 = v24 + v6;
  v8 = sub_1E65D76F8();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = sub_1E65E2CF8();
  (*(*(v9 - 8) + 56))(v2, 1, 1, v9);
  v10 = sub_1E65E1FC8();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v20 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  swift_storeEnumTagMultiPayload();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v12 = (v7 + v11[12]);
  v13 = v11[16];
  v14 = v11[20];
  v15 = v11[24];
  v16 = v11[28];
  v17 = v7 + v11[32];
  sub_1E5DFD1CC(v1, v7, &unk_1ED077760, &unk_1E66011D0);
  *v12 = 0;
  v12[1] = 0;
  sub_1E5DFD1CC(v22, v7 + v13, &qword_1ED072B60, &unk_1E65FA490);
  *(v7 + v14) = v20;
  sub_1E5DFD1CC(v21, v7 + v15, &unk_1ED077750, &unk_1E66011C0);
  *(v7 + v16) = 0;
  *v17 = 0;
  *(v17 + 8) = 1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFABC(v23, v7 + v5[7], type metadata accessor for RouteSource);
  *(v7 + v5[8]) = MEMORY[0x1E69E7CD0];
  sub_1E63FFCF4(v23, type metadata accessor for RouteSource);
  sub_1E5DFE50C(v21, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v22, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v1, &unk_1ED077760, &unk_1E66011D0);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  sub_1E600F5B0((v0 + 25));
  v18 = swift_task_alloc();
  *(v0 + 88) = v18;
  *v18 = v0;
  v18[1] = sub_1E63FACF0;

  return RoutingContext.presentDestinations(_:style:priority:)(v24, (v0 + 16), (v0 + 25), v25, v26);
}

uint64_t sub_1E63FACF0()
{
  v2 = *v1;
  *(v2 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FAE74, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E63FAE74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FAEFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[6] = type metadata accessor for RouteSource(0);
  v5[7] = swift_task_alloc();
  v6 = sub_1E65D76F8();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = type metadata accessor for RouteDestination(0);
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FB054, 0, 0);
}

uint64_t sub_1E63FB054()
{
  v1 = *(v0 + 32);
  if (*(v1 + 16) > 1u)
  {
    if (*(v1 + 16) == 2)
    {
      return sub_1E65E69D8();
    }

    v24 = *(v0 + 104);
    v26 = *(v0 + 80);
    v25 = *(v0 + 88);
    v28 = *(v0 + 64);
    v27 = *(v0 + 72);
    v29 = *(v0 + 56);
    v8 = *(v1 + 88);
    v34 = *(v1 + 96);
    __swift_project_boxed_opaque_existential_1((v1 + 64), v8);
    sub_1E65DA418();
    swift_storeEnumTagMultiPayload();
    (*(v27 + 16))(v24, v26, v28);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E63FFB24(v29, v24 + *(v25 + 20), type metadata accessor for RouteSource);
    (*(v27 + 8))(v26, v28);
    *(v24 + *(v25 + 24)) = MEMORY[0x1E69E7CD0];
    v9 = v34;
    sub_1E600F5B0((v0 + 25));
    v30 = swift_task_alloc();
    *(v0 + 160) = v30;
    *v30 = v0;
    v30[1] = sub_1E63FB8A4;
    v11 = *(v0 + 104);
    v12 = (v0 + 25);
    goto LABEL_10;
  }

  if (!*(v1 + 16))
  {
    v2 = *(v0 + 112);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    v7 = *(v0 + 56);
    v8 = *(v1 + 88);
    v32 = *(v1 + 96);
    __swift_project_boxed_opaque_existential_1((v1 + 64), v8);
    sub_1E65DA418();
    swift_storeEnumTagMultiPayload();
    (*(v5 + 16))(v2, v4, v6);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E63FFB24(v7, v2 + *(v3 + 20), type metadata accessor for RouteSource);
    (*(v5 + 8))(v4, v6);
    *(v2 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    v9 = v32;
    sub_1E600F5B0((v0 + 27));
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_1E63FB580;
    v11 = *(v0 + 112);
    v12 = (v0 + 27);
LABEL_10:

    return RoutingContext.appendDestination(_:priority:)(v11, v12, v8, v9);
  }

  v14 = *(v0 + 88);
  v15 = *(v0 + 96);
  v16 = *(v0 + 72);
  v17 = *(v0 + 80);
  v19 = *(v0 + 56);
  v18 = *(v0 + 64);
  v31 = *(v1 + 88);
  v33 = *(v1 + 96);
  __swift_project_boxed_opaque_existential_1((v1 + 64), v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
  v20 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v0 + 136) = v21;
  *(v21 + 16) = xmmword_1E65EA670;
  v22 = v21 + v20;
  sub_1E65DA418();
  swift_storeEnumTagMultiPayload();
  (*(v16 + 16))(v22, v17, v18);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E63FFABC(v19, v22 + *(v14 + 20), type metadata accessor for RouteSource);
  *(v22 + *(v14 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E63FFCF4(v19, type metadata accessor for RouteSource);
  (*(v16 + 8))(v17, v18);
  *(v0 + 16) = 1;
  *(v0 + 24) = 0;
  sub_1E600F5B0((v0 + 26));
  v23 = swift_task_alloc();
  *(v0 + 144) = v23;
  *v23 = v0;
  v23[1] = sub_1E63FB71C;

  return RoutingContext.presentDestinations(_:style:priority:)(v21, (v0 + 16), (v0 + 26), v31, v33);
}

uint64_t sub_1E63FB580()
{
  v2 = *(*v1 + 112);
  v3 = *v1;
  *(v3 + 128) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FBA40, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63FB71C()
{
  v2 = *v1;
  *(v2 + 152) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FBACC, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E63FB8A4()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 168) = v0;

  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FBB58, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63FBA40()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FBACC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FBB58()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FBBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 26) = a6;
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  v7 = sub_1E65DA3D8();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  v8 = sub_1E65D8668();
  *(v6 + 88) = v8;
  *(v6 + 96) = *(v8 - 8);
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = type metadata accessor for RouteDestination(0);
  *(v6 + 120) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FBD34, 0, 0);
}

uint64_t sub_1E63FBD34()
{
  v1 = *(v0 + 120);
  v3 = *(v0 + 96);
  v2 = *(v0 + 104);
  v5 = *(v0 + 80);
  v4 = *(v0 + 88);
  v6 = *(v0 + 72);
  v20 = *(v0 + 64);
  v21 = *(v0 + 26);
  v7 = *(v0 + 48);
  v22 = *(v0 + 112);
  v23 = v7[11];
  v24 = v7[12];
  __swift_project_boxed_opaque_existential_1(v7 + 8, v23);
  sub_1E65E5738();
  v8 = sub_1E65D8528();
  v19 = v9;
  (*(v3 + 8))(v2, v4);
  sub_1E65E5778();
  v10 = sub_1E65DA3B8();
  (*(v6 + 8))(v5, v20);
  sub_1E65E5788();
  v12 = v11;
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = v8;
  *(v1 + 24) = v19;
  *(v1 + 32) = v10;
  *(v1 + 40) = v21;
  *(v1 + 48) = v12;
  v14 = sub_1E65D96F8();
  (*(*(v14 - 8) + 56))(v1 + v13, 1, 1, v14);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v1 + *(v22 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v15 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v15;
  sub_1E600F5B0((v0 + 25));
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v16[1] = sub_1E63FBFA8;
  v17 = *(v0 + 120);

  return RoutingContext.presentDestination(_:style:priority:)(v17, (v0 + 32), (v0 + 25), v23, v24);
}

uint64_t sub_1E63FBFA8()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  *(v3 + 136) = v0;

  sub_1E5F94E00(*(v3 + 32), *(v3 + 40));
  sub_1E63FFCF4(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63FC14C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63FC14C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FC1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  v6[24] = type metadata accessor for RouteDestination(0);
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63FC260, 0, 0);
}

uint64_t sub_1E63FC260()
{
  sub_1E65E5688();
  v1 = swift_dynamicCastClass();
  v2 = *(v0 + 176);
  if (v1)
  {
    sub_1E5DFD1CC(v2 + 24, v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  }

  else
  {
    sub_1E5DF650C(v2 + 64, v0 + 16);
  }

  v3 = sub_1E65DAE38();
  if (v3 != sub_1E65DAE38())
  {
    sub_1E5DFD1CC(v0 + 16, v0 + 56, &unk_1ED074320, &unk_1E65EA730);
    v4 = *(v0 + 80);
    if (v4)
    {
      v5 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
      v6 = swift_task_alloc();
      *(v0 + 208) = v6;
      *v6 = v0;
      v6[1] = sub_1E63FC5A4;

      return RoutingContext.dismiss()(v4, v5);
    }

    sub_1E5DFE50C(v0 + 56, &unk_1ED074320, &unk_1E65EA730);
  }

  sub_1E5DFD1CC(v0 + 16, v0 + 96, &unk_1ED074320, &unk_1E65EA730);
  v8 = *(v0 + 120);
  if (v8)
  {
    v10 = *(v0 + 192);
    v9 = *(v0 + 200);
    v11 = *(v0 + 184);
    v12 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *v9 = v11;
    *(v9 + 8) = 0;
    *(v9 + 16) = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v9 + *(v10 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 136);
    v13 = *(v0 + 144);
    *(v0 + 152) = *(v0 + 136);
    *(v0 + 160) = v13;
    sub_1E600F5B0((v0 + 145));

    v14 = swift_task_alloc();
    *(v0 + 224) = v14;
    *v14 = v0;
    v14[1] = sub_1E63FC8C8;
    v15 = *(v0 + 200);

    return RoutingContext.presentDestination(_:style:priority:)(v15, (v0 + 152), (v0 + 145), v8, v12);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    sub_1E5DFE50C(v0 + 96, &unk_1ED074320, &unk_1E65EA730);

    v16 = *(v0 + 8);

    return v16();
  }
}

uint64_t sub_1E63FC5A4()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E63FCAA8;
  }

  else
  {
    v2 = sub_1E63FC6B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63FC6B8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_1E5DFD1CC(v0 + 16, v0 + 96, &unk_1ED074320, &unk_1E65EA730);
  v1 = *(v0 + 120);
  if (v1)
  {
    v3 = *(v0 + 192);
    v2 = *(v0 + 200);
    v4 = *(v0 + 184);
    v5 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    *v2 = v4;
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v2 + *(v3 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E611D1C0(v0 + 136);
    v6 = *(v0 + 144);
    *(v0 + 152) = *(v0 + 136);
    *(v0 + 160) = v6;
    sub_1E600F5B0((v0 + 145));

    v7 = swift_task_alloc();
    *(v0 + 224) = v7;
    *v7 = v0;
    v7[1] = sub_1E63FC8C8;
    v8 = *(v0 + 200);

    return RoutingContext.presentDestination(_:style:priority:)(v8, (v0 + 152), (v0 + 145), v1, v5);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
    sub_1E5DFE50C(v0 + 96, &unk_1ED074320, &unk_1E65EA730);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1E63FC8C8()
{
  v2 = *v1;
  v3 = *(*v1 + 200);
  *(v2 + 232) = v0;

  sub_1E5F94E00(*(v2 + 152), *(v2 + 160));
  sub_1E63FFCF4(v3, type metadata accessor for RouteDestination);
  if (v0)
  {
    v4 = sub_1E63FCB2C;
  }

  else
  {
    v4 = sub_1E63FCA24;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E63FCA24()
{
  sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FCAA8()
{
  sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FCB2C()
{
  sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63FCBB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v26 = a2;
  v6 = sub_1E65E52B8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E59F8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - v14;
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v11 + 16))(&v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  sub_1E6137A50(v4, v27);
  sub_1E63FFABC(v26, v9, MEMORY[0x1E69CD768]);
  v17 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = (*(v7 + 80) + v18 + 104) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  (*(v11 + 32))(v20 + v17, &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v21 = v20 + v18;
  v22 = v27[5];
  *(v21 + 64) = v27[4];
  *(v21 + 80) = v22;
  *(v21 + 96) = v28;
  v23 = v27[1];
  *v21 = v27[0];
  *(v21 + 16) = v23;
  v24 = v27[3];
  *(v21 + 32) = v27[2];
  *(v21 + 48) = v24;
  sub_1E63FFB24(v9, v20 + v19, MEMORY[0x1E69CD768]);
  sub_1E6059EAC(0, 0, v15, &unk_1E6601300, v20);
}

uint64_t sub_1E63FCF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(void), uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v29 = a9;
  v14 = (a7)(0, a2, a3, a4, a5, a6);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v29 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - v19;
  v21 = sub_1E65E60A8();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  sub_1E6137A50(v10, v30);
  (*(v15 + 16))(v17, a2, v14);
  v22 = (*(v15 + 80) + 152) & ~*(v15 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = 0;
  *(v23 + 24) = 0;
  v24 = v30[5];
  *(v23 + 96) = v30[4];
  *(v23 + 112) = v24;
  v25 = v31;
  v26 = v30[1];
  *(v23 + 32) = v30[0];
  *(v23 + 48) = v26;
  v27 = v30[3];
  *(v23 + 64) = v30[2];
  *(v23 + 80) = v27;
  *(v23 + 128) = v25;
  *(v23 + 136) = a3;
  *(v23 + 144) = a4;
  (*(v15 + 32))(v23 + v22, v17, v14);

  sub_1E6059EAC(0, 0, v20, v29, v23);
}

uint64_t sub_1E63FD1A0()
{
  if (*(v0 + 16) == 2)
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E63FD27C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = sub_1E65E56B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  v16 = sub_1E65E60A8();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  sub_1E6137A50(v5, v25);
  (*(v10 + 16))(v12, a2, v9);
  v17 = (*(v10 + 80) + 136) & ~*(v10 + 80);
  v18 = (v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  v20 = v25[5];
  *(v19 + 96) = v25[4];
  *(v19 + 112) = v20;
  *(v19 + 128) = v26;
  v21 = v25[1];
  *(v19 + 32) = v25[0];
  *(v19 + 48) = v21;
  v22 = v25[3];
  *(v19 + 64) = v25[2];
  *(v19 + 80) = v22;
  (*(v10 + 32))(v19 + v17, v12, v9);
  *(v19 + v18) = a3;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a4;

  sub_1E6059EAC(0, 0, v15, &unk_1E6601210, v19);
}

uint64_t sub_1E63FD4D0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1E65E60A8();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_1E6137A50(v3, v18);
  v10 = swift_allocObject();
  v11 = v18[2];
  *(v10 + 88) = v18[3];
  v12 = v18[5];
  *(v10 + 104) = v18[4];
  *(v10 + 120) = v12;
  v13 = v18[1];
  *(v10 + 40) = v18[0];
  *(v10 + 56) = v13;
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = a1;
  v14 = v19;
  *(v10 + 72) = v11;
  *(v10 + 136) = v14;
  *(v10 + 144) = a2;
  v15 = a1;

  sub_1E6059EAC(0, 0, v8, &unk_1E66011E8, v10);
}

uint64_t sub_1E63FD630()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v11 - v3;
  v5 = *(v0 + 16);
  if (v5 >= 2)
  {
    if (v5 != 3)
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v6 = sub_1E65E60A8();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    sub_1E6137A50(v0, v12);
    v7 = swift_allocObject();
    *(v7 + 16) = 0;
    *(v7 + 24) = 0;
    v8 = v12[5];
    *(v7 + 96) = v12[4];
    *(v7 + 112) = v8;
    *(v7 + 128) = v13;
    v9 = v12[1];
    *(v7 + 32) = v12[0];
    *(v7 + 48) = v9;
    v10 = v12[3];
    *(v7 + 64) = v12[2];
    *(v7 + 80) = v10;
    sub_1E6059EAC(0, 0, v4, &unk_1E66011B8, v7);
  }

  return result;
}

uint64_t sub_1E63FD7FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v11 = (a5)(0, a2, a3, a4);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v25 - v16;
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E6137A50(v9, v26);
  (*(v12 + 16))(v14, a2, v11);
  v19 = (*(v12 + 80) + 136) & ~*(v12 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  v21 = v26[5];
  *(v20 + 96) = v26[4];
  *(v20 + 112) = v21;
  *(v20 + 128) = v27;
  v22 = v26[1];
  *(v20 + 32) = v26[0];
  *(v20 + 48) = v22;
  v23 = v26[3];
  *(v20 + 64) = v26[2];
  *(v20 + 80) = v23;
  (*(v12 + 32))(v20 + v19, v14, v11);
  sub_1E6059EAC(0, 0, v17, a7, v20);
}

uint64_t sub_1E63FDA0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1E65DA308();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E6137A50(v4, v21);
  (*(v8 + 16))(&v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  v14 = (*(v8 + 80) + 136) & ~*(v8 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  v16 = v21[5];
  *(v15 + 96) = v21[4];
  *(v15 + 112) = v16;
  *(v15 + 128) = v22;
  v17 = v21[1];
  *(v15 + 32) = v21[0];
  *(v15 + 48) = v17;
  v18 = v21[3];
  *(v15 + 64) = v21[2];
  *(v15 + 80) = v18;
  (*(v8 + 32))(v15 + v14, &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  *(v15 + ((v9 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;

  sub_1E6059EAC(0, 0, v12, &unk_1E6601188, v15);
}

uint64_t sub_1E63FDC38(uint64_t a1)
{
  v4 = *(sub_1E65DA308() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63F9658(a1, v6, v7, v1 + 32, v1 + v5, v8);
}

uint64_t sub_1E63FDD5C(uint64_t a1)
{
  v4 = *(sub_1E65DA488() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63FAEFC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E63FDE50(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E63FA7C8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E63FDF00(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[18];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63FC1C8(a1, v4, v5, v6, (v1 + 5), v7);
}

uint64_t sub_1E63FDFC8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v40 - v9;
  v11 = type metadata accessor for RouteDestination(0);
  v12 = v11 - 8;
  v40 = *(v11 - 8);
  v13 = *(v40 + 64);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077860, &unk_1E65EA800) + 48);
  v19 = sub_1E65E55E8();
  (*(*(v19 - 8) + 16))(v17, a1, v19);
  v20 = sub_1E65D7EB8();
  (*(*(v20 - 8) + 16))(&v17[v18], a2, v20);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *&v17[*(v12 + 32)] = MEMORY[0x1E69E7CD0];
  v21 = *(v4 + 16);
  if (v21 < 2)
  {
    v22 = swift_allocObject();
    *(v22 + 16) = a3;
    v23 = sub_1E65E60A8();
    (*(*(v23 - 8) + 56))(v10, 1, 1, v23);
    sub_1E6137A50(v4, &v41);
    sub_1E63FFABC(v17, v15, type metadata accessor for RouteDestination);
    v24 = (*(v40 + 80) + 136) & ~*(v40 + 80);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    v26 = v46;
    *(v25 + 96) = v45;
    *(v25 + 112) = v26;
    *(v25 + 128) = v47;
    v27 = v42;
    *(v25 + 32) = v41;
    *(v25 + 48) = v27;
    v28 = v44;
    *(v25 + 64) = v43;
    *(v25 + 80) = v28;
    sub_1E63FFB24(v15, v25 + v24, type metadata accessor for RouteDestination);
    v29 = (v25 + ((v13 + v24 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v29 = sub_1E63FF378;
    v29[1] = v22;
    v30 = a3;

    sub_1E6059EAC(0, 0, v10, &unk_1E6601298, v25);

LABEL_5:

    return sub_1E63FFCF4(v17, type metadata accessor for RouteDestination);
  }

  v31 = v10;
  v32 = v40;
  if (v21 == 3)
  {
    v33 = sub_1E65E60A8();
    (*(*(v33 - 8) + 56))(v31, 1, 1, v33);
    sub_1E6137A50(v4, &v41);
    sub_1E63FFABC(v17, v15, type metadata accessor for RouteDestination);
    v34 = (*(v32 + 80) + 136) & ~*(v32 + 80);
    v35 = swift_allocObject();
    *(v35 + 16) = 0;
    *(v35 + 24) = 0;
    v36 = v46;
    *(v35 + 96) = v45;
    *(v35 + 112) = v36;
    *(v35 + 128) = v47;
    v37 = v42;
    *(v35 + 32) = v41;
    *(v35 + 48) = v37;
    v38 = v44;
    *(v35 + 64) = v43;
    *(v35 + 80) = v38;
    sub_1E63FFB24(v15, v35 + v34, type metadata accessor for RouteDestination);
    sub_1E6059EAC(0, 0, v31, &unk_1E6601288, v35);
    goto LABEL_5;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E63FE4D4(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6)
{
  v30 = a2;
  v33 = a6;
  v31 = a3;
  v32 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v15 = v29 - v14;
  sub_1E5DFD1CC(a1, v29 - v14, &qword_1ED079238, &qword_1E6601220);
  v16 = *(v12 + 80);
  v17 = (v16 + 16) & ~v16;
  v18 = swift_allocObject();
  sub_1E63FED04(v15, v18 + v17);
  *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a5;
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v10, 1, 1, v19);
  sub_1E6137A50(v29[1], v34);
  sub_1E5DFD1CC(a1, v15, &qword_1ED079238, &qword_1E6601220);
  v20 = (v16 + 168) & ~v16;
  v21 = v20 + v13;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  v23 = v34[5];
  *(v22 + 96) = v34[4];
  *(v22 + 112) = v23;
  v24 = v35;
  v25 = v34[1];
  *(v22 + 32) = v34[0];
  *(v22 + 48) = v25;
  v26 = v34[3];
  *(v22 + 64) = v34[2];
  *(v22 + 80) = v26;
  v27 = v30;
  *(v22 + 128) = v24;
  *(v22 + 136) = v27;
  *(v22 + 144) = v31 & 1;
  *(v22 + 152) = sub_1E63FED74;
  *(v22 + 160) = v18;
  sub_1E63FED04(v15, v22 + v20);
  *(v22 + v21) = v32;
  *(v22 + (v21 & 0xFFFFFFFFFFFFFFF8) + 8) = a5;
  *(v22 + (((v21 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)) = v33;
  swift_bridgeObjectRetain_n();

  sub_1E6059EAC(0, 0, v10, &unk_1E6601230, v22);
}

uint64_t sub_1E63FE79C(uint64_t a1)
{
  v26 = sub_1E65E5798();
  v2 = *(v26 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v26);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = sub_1E65D8668();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  sub_1E65E5738();
  v11 = sub_1E65D8658();
  v13 = v12;
  LOBYTE(a1) = v14;
  (*(v8 + 8))(v10, v7);
  *&v27 = v11;
  *(&v27 + 1) = v13;
  LOBYTE(v28) = a1 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0758E0, &qword_1E65F1FE8);
  sub_1E65D7FB8();
  result = sub_1E5F87058(v11, v13, a1 & 1);
  v16 = v34;
  if (v34 != 4)
  {
    v17 = sub_1E65E60A8();
    (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
    sub_1E6137A50(v24[1], &v27);
    v18 = v26;
    (*(v2 + 16))(v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v25, v26);
    v19 = (*(v2 + 80) + 136) & ~*(v2 + 80);
    v20 = swift_allocObject();
    *(v20 + 16) = 0;
    *(v20 + 24) = 0;
    v21 = v32;
    *(v20 + 96) = v31;
    *(v20 + 112) = v21;
    *(v20 + 128) = v33;
    v22 = v28;
    *(v20 + 32) = v27;
    *(v20 + 48) = v22;
    v23 = v30;
    *(v20 + 64) = v29;
    *(v20 + 80) = v23;
    (*(v2 + 32))(v20 + v19, v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), v18);
    *(v20 + v19 + v3) = v16;
    sub_1E6059EAC(0, 0, v6, &unk_1E66011F8, v20);
  }

  return result;
}

uint64_t sub_1E63FEAA8(uint64_t a1)
{
  v4 = *(sub_1E65E5798() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 136) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63FBBE4(a1, v5, v6, v1 + 32, v7, v8);
}

uint64_t sub_1E63FEBC4(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E56B8() - 8);
  v6 = (*(v5 + 80) + 136) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63FA384(a1, v8, v9, v1 + 32, v1 + v6, v10, v11);
}

uint64_t sub_1E63FED04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E63FED74@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E63F9A64(v1 + v4, v5, a1);
}

uint64_t sub_1E63FEE1C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079238, &qword_1E6601220);
  v9 = *(v1 + 24);
  v10 = *(v1 + 16);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  v6 = *(v1 + 160);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63F9D58(a1, v10, v9, v1 + 32, v3, v4, v5, v6);
}

uint64_t sub_1E63FEFB8(uint64_t a1)
{
  v4 = *(sub_1E65D9048() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F9118(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t objectdestroy_13Tm_1()
{
  swift_unknownObjectRelease();
  if (v0[5] >= 0xCuLL)
  {
  }

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  return swift_deallocObject();
}

uint64_t sub_1E63FF10C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E63F7DB8(a1, v4, v5, v1 + 32);
}

uint64_t sub_1E63FF1BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 144);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F8154(a1, v4, v5, v6, v1 + 40, v7);
}

uint64_t sub_1E63FF284(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F750C(a1, v6, v7, v1 + 32, v1 + v5);
}

id sub_1E63FF378@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = 0x3FE3D70A3D70A3D7;
  if (v2)
  {
    v3 = *(v1 + 16);
    v4 = 0x80;
  }

  else
  {
    v4 = 64;
  }

  *a1 = v3;
  *(a1 + 8) = v4;
  return v2;
}

uint64_t sub_1E63FF3AC(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E63F7750(a1, v6, v7, v1 + 32, v1 + v5, v9, v10);
}

uint64_t sub_1E63FF4E0(uint64_t a1)
{
  v4 = *(sub_1E65DAD48() - 8);
  v5 = (*(v4 + 80) + 136) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E63F70EC(a1, v6, v7, v1 + 32, v1 + v5);
}

uint64_t sub_1E63FF5D4(uint64_t a1)
{
  v4 = *(sub_1E65D8478() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[17];
  v9 = v1[18];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E63F6878(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t objectdestroy_90Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  swift_unknownObjectRelease();
  if (v1[5] >= 0xCuLL)
  {
  }

  if (v1[10])
  {
    __swift_destroy_boxed_opaque_existential_1(v1 + 7);
  }

  __swift_destroy_boxed_opaque_existential_1(v1 + 12);

  (*(v3 + 8))(v1 + ((v4 + 152) & ~v4), v2);

  return swift_deallocObject();
}

uint64_t sub_1E63FF7D8(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 152) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[17];
  v9 = v1[18];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E63F6424(a1, v6, v7, (v1 + 4), v8, v9, v1 + v5);
}

uint64_t sub_1E63FF8E0(uint64_t a1)
{
  v4 = *(sub_1E65D8258() - 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v4 + 80) + 184) & ~*(v4 + 80));
  v8 = *(v7 + *(v4 + 64));
  v9 = *(v1 + 136);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E63F28B8(a1, v5, v6, v1 + 32, v9, v1 + 144, v7, v8);
}

uint64_t sub_1E63FFA10(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E63FFA58()
{
  result = qword_1ED079258;
  if (!qword_1ED079258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED079250, &qword_1E66012F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079258);
  }

  return result;
}

uint64_t sub_1E63FFABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63FFB24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E63FFB8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E59F8() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_1E65E52B8() - 8);
  v9 = (v7 + *(v8 + 80) + 104) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E63F18F4(a1, v10, v11, v1 + v6, v1 + v7, v1 + v9);
}

uint64_t sub_1E63FFCF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_11SeymourCore17MetricPageContextO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t get_enum_tag_for_layout_string_10Blackbeard14RoutingContext_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E63FFDB0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E63FFDF8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E63FFE64@<X0>(uint64_t *a1@<X8>)
{
  v58 = a1;
  v2 = type metadata accessor for RemoteBrowsingService();
  Description = v2[-1].Description;
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = v3;
  v55 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccountService();
  v51 = v4[-1].Description;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v50 = v5;
  v48 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v43 - v7;
  v8 = type metadata accessor for MarketingService();
  v9 = v8[-1].Description;
  v10 = v9[8];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v12 = sub_1E65E3B68();
  __swift_project_value_buffer(v12, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v13 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v14 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment + 8);
  v15 = type metadata accessor for AppEnvironment(0);
  v47 = v15[6];
  v16 = v15[19];
  v49 = v15[25];
  swift_getKeyPath();
  v17 = v9[2];
  v45 = v13;
  v17(&v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v16, v8);
  v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v19 = v18 + v10;
  v20 = swift_allocObject();
  (v9[4])(v20 + v18, v11, v8);
  *(v20 + v19) = v14;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  swift_allocObject();

  v22 = sub_1E65E4E68();
  v46 = v22;
  v23 = v58;
  v58[3] = v21;
  v23[4] = &off_1F5FAA810;
  *v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1E65EB9E0;
  v25 = sub_1E65E60A8();
  v44 = *(*(v25 - 8) + 56);
  v26 = v53;
  v44(v53, 1, 1, v25);
  v27 = v51;
  v28 = v48;
  v29 = v13 + v47;
  v30 = v52;
  v51[2](v48, v29, v52);
  v31 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v32 = (v50 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
  v33 = swift_allocObject();
  *(v33 + 16) = 0;
  *(v33 + 24) = 0;
  (v27)[4]((v33 + v31), v28, v30);
  v34 = v46;
  *(v33 + v32) = v46;
  v35 = v34;
  swift_retain_n();
  *(v24 + 32) = sub_1E6059EAC(0, 0, v26, &unk_1E66013E0, v33);
  v44(v26, 1, 1, v25);
  v37 = v55;
  v36 = Description;
  v38 = v57;
  Description[2](v55, v45 + v49, v57);
  v39 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v40 = (v54 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = 0;
  *(v41 + 24) = 0;
  (v36)[4]((v41 + v39), v37, v38);
  *(v41 + v40) = v35;
  result = sub_1E6059EAC(0, 0, v26, &unk_1E66013F0, v41);
  *(v24 + 40) = result;
  v58[5] = v24;
  return result;
}

uint64_t sub_1E640042C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 224) = a4;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 24) = a1;
  v5 = sub_1E65E1458();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_1E65E1518();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = swift_task_alloc();
  *(v4 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075868, &qword_1E65F1E60);
  *(v4 + 120) = swift_task_alloc();
  v7 = sub_1E65E13D8();
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  v8 = sub_1E65E1248();
  *(v4 + 152) = v8;
  *(v4 + 160) = *(v8 - 8);
  *(v4 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6400664, 0, 0);
}

uint64_t sub_1E6400664()
{
  v1 = MarketingService.fetchMarketingItem.getter();
  v0[22] = v2;
  sub_1E65E1508();
  v3 = sub_1E65E1268();
  v5 = v4;
  v0[23] = v4;
  v6 = sub_1E65E14E8();
  v8 = v7;
  v0[24] = v7;
  v11 = (v1 + *v1);
  v9 = swift_task_alloc();
  v0[25] = v9;
  *v9 = v0;
  v9[1] = sub_1E64007AC;

  return v11(v3, v5, v6, v8);
}

uint64_t sub_1E64007AC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 208) = a1;
  *(v3 + 216) = v1;

  if (v1)
  {
    v4 = sub_1E64011B0;
  }

  else
  {

    v4 = sub_1E64008E4;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E64008E4(uint64_t a1)
{
  v100 = v1;
  if (((1 << sub_1E65E1508()) & 0x1FEB) != 0)
  {
    v2 = *(v1 + 160);
    **(v1 + 168) = *(v1 + 224);
    (*(v2 + 104))();
  }

  else
  {
    sub_1E65E1238();
  }

  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v6 = *(v1 + 120);
  v5 = *(v1 + 128);
  v7 = *(v1 + 56);
  v95 = *(v1 + 48);
  (*(v3 + 104))(v4, *MEMORY[0x1E699E7F8], v5);
  sub_1E65E13C8();
  (*(v3 + 8))(v4, v5);
  swift_getObjectType();
  sub_1E65E1348();
  if ((*(v7 + 48))(v6, 1, v95) == 1)
  {
    v8 = *(v1 + 208);
    v9 = *(v1 + 160);
    v96 = *(v1 + 168);
    v10 = *(v1 + 152);
    v11 = *(v1 + 80);
    v12 = *(v1 + 88);
    v13 = *(v1 + 32);
    sub_1E5DFE50C(*(v1 + 120), &qword_1ED075868, &qword_1E65F1E60);
    v14 = sub_1E65E13E8();
    sub_1E64027D0();
    v15 = swift_allocError();
    v17 = v16;
    v18 = v16;
    v19 = v13;
    v20 = v15;
    (*(v12 + 16))(v18, v19, v11);
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x1E699E800], v14);
    swift_willThrow();

    swift_unknownObjectRelease();
    (*(v9 + 8))(v96, v10);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v22 = *(v1 + 88);
    v21 = *(v1 + 96);
    v23 = *(v1 + 80);
    v24 = *(v1 + 32);
    v25 = sub_1E65E3B68();
    __swift_project_value_buffer(v25, qword_1EE2EA2A0);
    v26 = *(v22 + 16);
    v26(v21, v24, v23);
    v27 = v20;
    v28 = sub_1E65E3B48();
    v29 = sub_1E65E6328();

    v30 = v20;
    if (os_log_type_enabled(v28, v29))
    {
      v32 = *(v1 + 96);
      v31 = *(v1 + 104);
      v97 = v29;
      v33 = v30;
      v35 = *(v1 + 80);
      v34 = *(v1 + 88);
      v36 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v99[0] = v94;
      *v36 = 141558530;
      *(v36 + 4) = 1752392040;
      *(v36 + 12) = 2080;
      v26(v31, v32, v35);
      v37 = sub_1E65E5CE8();
      v39 = v38;
      (*(v34 + 8))(v32, v35);
      v40 = sub_1E5DFD4B0(v37, v39, v99);

      *(v36 + 14) = v40;
      *(v36 + 22) = 2082;
      *(v1 + 16) = v33;
      v41 = v33;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
      v42 = sub_1E65E5CE8();
      v44 = sub_1E5DFD4B0(v42, v43, v99);

      *(v36 + 24) = v44;
      _os_log_impl(&dword_1E5DE9000, v28, v97, "Failed to resolve marketing offer for %{mask.hash}s: %{public}s ", v36, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v94, -1, -1);
      MEMORY[0x1E694F1C0](v36, -1, -1);
    }

    else
    {
      v75 = *(v1 + 88);
      v74 = *(v1 + 96);
      v76 = *(v1 + 80);

      (*(v75 + 8))(v74, v76);
    }

    swift_willThrow();

    v77 = *(v1 + 8);
  }

  else
  {
    (*(*(v1 + 56) + 32))(*(v1 + 24), *(v1 + 120), *(v1 + 48));
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v45 = *(v1 + 112);
    v46 = *(v1 + 80);
    v47 = *(v1 + 88);
    v48 = *(v1 + 72);
    v50 = *(v1 + 48);
    v49 = *(v1 + 56);
    v52 = *(v1 + 24);
    v51 = *(v1 + 32);
    v53 = sub_1E65E3B68();
    __swift_project_value_buffer(v53, qword_1EE2EA2A0);
    v91 = *(v47 + 16);
    v91(v45, v51, v46);
    v92 = *(v49 + 16);
    v92(v48, v52, v50);
    v54 = sub_1E65E3B48();
    v55 = sub_1E65E6338();
    log = v54;
    v56 = os_log_type_enabled(v54, v55);
    v57 = *(v1 + 160);
    v58 = *(v1 + 168);
    v98 = *(v1 + 152);
    v59 = *(v1 + 112);
    if (v56)
    {
      v87 = v55;
      v60 = *(v1 + 104);
      v90 = *(v1 + 168);
      v62 = *(v1 + 80);
      v61 = *(v1 + 88);
      v84 = *(v1 + 64);
      v85 = *(v1 + 72);
      v63 = *(v1 + 48);
      v64 = *(v1 + 56);
      v88 = *(v1 + 208);
      v89 = *(v1 + 160);
      v65 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v99[0] = v86;
      *v65 = 141558786;
      *(v65 + 4) = 1752392040;
      *(v65 + 12) = 2080;
      v91(v60, v59, v62);
      v66 = sub_1E65E5CE8();
      v68 = v67;
      (*(v61 + 8))(v59, v62);
      v69 = sub_1E5DFD4B0(v66, v68, v99);

      *(v65 + 14) = v69;
      *(v65 + 22) = 2160;
      *(v65 + 24) = 1752392040;
      *(v65 + 32) = 2080;
      v92(v84, v85, v63);
      v70 = sub_1E65E5CE8();
      v72 = v71;
      (*(v64 + 8))(v85, v63);
      v73 = sub_1E5DFD4B0(v70, v72, v99);

      *(v65 + 34) = v73;
      _os_log_impl(&dword_1E5DE9000, log, v87, "Resolved marketing offer %{mask.hash}s to %{mask.hash}s", v65, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v86, -1, -1);
      MEMORY[0x1E694F1C0](v65, -1, -1);

      swift_unknownObjectRelease();
      (*(v89 + 8))(v90, v98);
    }

    else
    {
      v79 = *(v1 + 80);
      v78 = *(v1 + 88);
      v80 = *(v1 + 72);
      v82 = *(v1 + 48);
      v81 = *(v1 + 56);

      swift_unknownObjectRelease();
      (*(v81 + 8))(v80, v82);
      (*(v78 + 8))(v59, v79);
      (*(v57 + 8))(v58, v98);
    }

    v77 = *(v1 + 8);
  }

  return v77();
}

uint64_t sub_1E64011B0()
{
  v34 = v0;

  v1 = v0[27];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[10];
  v5 = v0[4];
  v6 = sub_1E65E3B68();
  __swift_project_value_buffer(v6, qword_1EE2EA2A0);
  v7 = *(v2 + 16);
  v7(v3, v5, v4);
  v8 = v1;
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6328();

  v11 = v1;
  if (os_log_type_enabled(v9, v10))
  {
    v13 = v0[12];
    v12 = v0[13];
    v32 = v10;
    v14 = v11;
    v16 = v0[10];
    v15 = v0[11];
    v17 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v33[0] = v31;
    *v17 = 141558530;
    *(v17 + 4) = 1752392040;
    *(v17 + 12) = 2080;
    v7(v12, v13, v16);
    v18 = sub_1E65E5CE8();
    v20 = v19;
    (*(v15 + 8))(v13, v16);
    v21 = sub_1E5DFD4B0(v18, v20, v33);

    *(v17 + 14) = v21;
    *(v17 + 22) = 2082;
    v0[2] = v14;
    v22 = v14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v23 = sub_1E65E5CE8();
    v25 = sub_1E5DFD4B0(v23, v24, v33);

    *(v17 + 24) = v25;
    _os_log_impl(&dword_1E5DE9000, v9, v32, "Failed to resolve marketing offer for %{mask.hash}s: %{public}s ", v17, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v31, -1, -1);
    MEMORY[0x1E694F1C0](v17, -1, -1);
  }

  else
  {
    v26 = v0[11];
    v27 = v0[12];
    v28 = v0[10];

    (*(v26 + 8))(v27, v28);
  }

  swift_willThrow();

  v29 = v0[1];

  return v29();
}

uint64_t sub_1E64014F4(uint64_t a1, uint64_t a2)
{
  Description = type metadata accessor for MarketingService()[-1].Description;
  v7 = v2 + ((*(Description + 80) + 16) & ~*(Description + 80));
  v8 = *(v7 + Description[8]);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1E5DFA78C;

  return sub_1E640042C(a1, a2, v7, v8);
}

uint64_t sub_1E6401600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073468, &qword_1E65ED258);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6401734, 0, 0);
}

uint64_t sub_1E6401734()
{
  v1 = AccountService.makeAccountChangedStream.getter();
  v0[10] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E6401830;
  v4 = v0[6];

  return v6(v4);
}

uint64_t sub_1E6401830()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6401948, 0, 0);
}

uint64_t sub_1E6401948()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_1E6401A24;
  v5 = v0[7];

  return MEMORY[0x1EEE6D9C8](v0 + 14, 0, 0, v5);
}

uint64_t sub_1E6401A24()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6401B20, 0, 0);
}

uint64_t sub_1E6401B20()
{
  if (*(v0 + 112) == 1)
  {
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    sub_1E65E6058();
    *(v0 + 104) = sub_1E65E6048();
    v4 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6401C20, v4, v3);
  }
}

uint64_t sub_1E6401C20()
{

  sub_1E65E4E78();
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1E6401A24;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 112, 0, 0, v2);
}

uint64_t sub_1E6401CD8(uint64_t a1)
{
  Description = type metadata accessor for AccountService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6401600(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_1E6401DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6401F64, 0, 0);
}

uint64_t sub_1E6401F64()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E6402060;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E6402060()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6402178, 0, 0);
}

uint64_t sub_1E6402178()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E6402254;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E6402254()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6402350, 0, 0);
}

uint64_t sub_1E6402350()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E64024A0, v6, v5);
  }
}

uint64_t sub_1E64024A0()
{

  sub_1E65E4E78();

  return MEMORY[0x1EEE6DFA0](sub_1E6402510, 0, 0);
}

uint64_t sub_1E6402510()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E6402254;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t objectdestroy_3Tm_12(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);

  return swift_deallocObject();
}

uint64_t sub_1E64026B0(uint64_t a1)
{
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v5 = (*(Description + 80) + 32) & ~*(Description + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((Description[8] + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6401DF8(a1, v6, v7, v1 + v5, v8);
}

unint64_t sub_1E64027D0()
{
  result = qword_1ED079260;
  if (!qword_1ED079260)
  {
    sub_1E65E13E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED079260);
  }

  return result;
}

void *sub_1E6402828(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0793B8, &qword_1E6601520);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_1E65DCA48();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v32 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v30 = &v26 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(sub_1E65D8398() - 8);
  v27 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v31 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v28 = v10;
  v29 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1E5DFE50C(v9, &qword_1ED0793B8, &qword_1E6601520);
    }

    else
    {
      v20 = a1;
      v21 = MEMORY[0x1E699EE60];
      v22 = v30;
      sub_1E5E24EEC(v9, v30, MEMORY[0x1E699EE60]);
      sub_1E5E24EEC(v22, v32, v21);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1E64F6074(0, v19[2] + 1, 1, v19);
      }

      v24 = v19[2];
      v23 = v19[3];
      if (v24 >= v23 >> 1)
      {
        v19 = sub_1E64F6074((v23 > 1), v24 + 1, 1, v19);
      }

      v19[2] = v24 + 1;
      sub_1E5E24EEC(v32, v19 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v24, MEMORY[0x1E699EE60]);
      a1 = v20;
      v10 = v28;
    }

    v18 += v31;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

char *sub_1E6402B44(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079630, &qword_1E6601760);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A0, &qword_1E65EA788);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65DC938() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED079630, &qword_1E6601760);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F60C4(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F60C4((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

void *sub_1E6402E7C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v48 = a2;
  v49 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079390, &qword_1E66014F8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v36 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  v8 = *(v51 - 8);
  v9 = MEMORY[0x1EEE9AC00](v51);
  v43 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - v15;
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v46 = v14 + 16;
  v47 = v14;
  v50 = (v14 + 8);
  v45 = (v8 + 48);
  v40 = v8;
  v41 = (v8 + 32);
  v52 = a3;
  v22 = v13;

  v24 = 0;
  v44 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v47 + 16))(v16, *(v52 + 48) + *(v47 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v49(v16);
    if (v3)
    {
      (*v50)(v16, v22);
      v35 = v44;

      return v35;
    }

    v20 &= v20 - 1;
    (*v50)(v16, v22);
    if ((*v45)(v7, 1, v51) == 1)
    {
      result = sub_1E5DFE50C(v7, &qword_1ED079390, &qword_1E66014F8);
    }

    else
    {
      v39 = v22;
      v26 = *v41;
      (*v41)(v42, v7, v51);
      v26(v43, v42, v51);
      v27 = v26;
      v28 = v44;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1E64F60E8(0, v28[2] + 1, 1, v28);
      }

      v30 = v28[2];
      v29 = v28[3];
      v44 = v28;
      v31 = v30 + 1;
      v22 = v39;
      if (v30 >= v29 >> 1)
      {
        v37 = v30;
        v38 = v30 + 1;
        v34 = sub_1E64F60E8((v29 > 1), v30 + 1, 1, v44);
        v30 = v37;
        v31 = v38;
        v44 = v34;
      }

      v32 = v43;
      v33 = v44;
      v44[2] = v31;
      result = (v27)(v33 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v30, v32, v51);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v44;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

char *sub_1E64032DC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0795E8, &qword_1E6601718);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1E65DC938();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65DA778() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED0795E8, &qword_1E6601718);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F6134(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F6134((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

char *sub_1E6403608(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079498, &qword_1E66015E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D8258() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED079498, &qword_1E66015E0);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F6330(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F6330((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

char *sub_1E6403940(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074FF0, &qword_1E65F1180);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = sub_1E65E1BA8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D7D18() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED074FF0, &qword_1E65F1180);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F6460(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F6460((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}

uint64_t sub_1E6403C6C(void *(*a1)(uint64_t *__return_ptr, char *), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    while (1)
    {
      v8 = *v7++;
      v12 = v8;
      v9 = a1(&v11, &v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x1E694D8F0](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1E65E5F68();
        }

        sub_1E65E5FA8();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *sub_1E6403D6C(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED079490, &qword_1E66015D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v32 = &v26 - v5;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072160, &qword_1E65EA8C8);
  v6 = MEMORY[0x1EEE9AC00](v31);
  v30 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v26 = &v26 - v9;
  v27 = v8;
  v10 = a3 + 56;
  v11 = 1 << *(a3 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a3 + 56);
  v14 = (v11 + 63) >> 6;
  v29 = (v8 + 48);

  v16 = 0;
  v17 = MEMORY[0x1E69E7CC0];
  v28 = a3;
  if (v13)
  {
LABEL_10:
    while (1)
    {
      v19 = (*(a3 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v13)))));
      v20 = v19[1];
      v34[0] = *v19;
      v34[1] = v20;

      v21 = v32;
      v22 = v35;
      v33(v34);
      v35 = v22;
      if (v22)
      {
        break;
      }

      v13 &= v13 - 1;

      if ((*v29)(v21, 1, v31) == 1)
      {
        result = sub_1E5DFE50C(v21, &qword_1ED079490, &qword_1E66015D8);
        if (!v13)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v23 = v26;
        sub_1E5FAB460(v21, v26, &qword_1ED072160, &qword_1E65EA8C8);
        sub_1E5FAB460(v23, v30, &qword_1ED072160, &qword_1E65EA8C8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1E64F6488(0, v17[2] + 1, 1, v17);
        }

        v25 = v17[2];
        v24 = v17[3];
        if (v25 >= v24 >> 1)
        {
          v17 = sub_1E64F6488((v24 > 1), v25 + 1, 1, v17);
        }

        v17[2] = v25 + 1;
        result = sub_1E5FAB460(v30, v17 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v25, &qword_1ED072160, &qword_1E65EA8C8);
        a3 = v28;
        if (!v13)
        {
          goto LABEL_6;
        }
      }
    }

    return v17;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v14)
      {

        return v17;
      }

      v13 = *(v10 + 8 * v18);
      ++v16;
      if (v13)
      {
        v16 = v18;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_1E64040DC(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0794B0, &qword_1E66015F8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v31 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v13;
  v14 = *(a3 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v15 = *(sub_1E65D8258() - 8);
  v25 = v10;
  v29 = (v10 + 32);
  v30 = (v10 + 48);
  v16 = a3 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
  v17 = *(v15 + 72);
  v32 = MEMORY[0x1E69E7CC0];
  v26 = v9;
  v27 = a1;
  v24 = v17;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v30)(v8, 1, v9) == 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED0794B0, &qword_1E66015F8);
    }

    else
    {
      v18 = v28;
      v19 = *v29;
      (*v29)(v28, v8, v9);
      v19(v31, v18, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_1E64F64D0(0, *(v32 + 2) + 1, 1, v32);
      }

      v21 = *(v32 + 2);
      v20 = *(v32 + 3);
      if (v21 >= v20 >> 1)
      {
        v32 = sub_1E64F64D0((v20 > 1), v21 + 1, 1, v32);
      }

      v22 = v32;
      *(v32 + 2) = v21 + 1;
      v9 = v26;
      v19(&v22[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v21], v31, v26);
      a1 = v27;
      v17 = v24;
    }

    v16 += v17;
    if (!--v14)
    {
      return v32;
    }
  }

  return v32;
}