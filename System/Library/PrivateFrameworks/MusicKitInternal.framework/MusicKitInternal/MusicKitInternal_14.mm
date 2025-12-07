uint64_t sub_1D4FB1140(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5613838();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB328, &unk_1D561E030);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBE8, &unk_1D561F2D0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7ECE40, MEMORY[0x1E6976BE8], MEMORY[0x1E6976BC0]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4F99CF4(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBBF0, &unk_1D5623470);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB1CC0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v105 = a3;
  v95 = a1;
  v94 = sub_1D560D838();
  v8 = *(v94 - 8);
  v9 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v87 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v87 - v11;
  v91 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v87 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v116 = (&v87 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v122 = &v87 - v14;
  v110 = type metadata accessor for GenericMusicItem(0);
  v90 = *(v110 - 8);
  v15 = MEMORY[0x1EEE9AC00](v110);
  v106 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v117 = &v87 - v17;
  v109 = sub_1D560CD48();
  v18 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D5614408();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v107 = &v87 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v87 - v24;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA58, &unk_1D5634110);
  v26 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v87 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA60, &qword_1D561F1E0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v121 = &v87 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v29);
  v112 = &v87 - v32;
  if (a2)
  {
    v114 = v25;
    v33 = v18;
    v34 = a2 + 64;
    v35 = 1 << *(a2 + 32);
    v36 = -1;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    v37 = v36 & *(a2 + 64);
    v88 = (v35 + 63) >> 6;
    v96 = v26 + 16;
    v97 = v26;
    v118 = (v26 + 32);
    v103 = (v33 + 16);
    v102 = (v21 + 16);
    v89 = (v8 + 8);
    v100 = (v21 + 8);

    v39 = 0;
    v115 = v20;
    v101 = a2 + 64;
    v104 = a5;
    v113 = a4;
    v111 = a2;
    while (1)
    {
      v40 = v121;
      if (!v37)
      {
        break;
      }

      v41 = v39;
LABEL_11:
      v42 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
      v43 = v42 | (v41 << 6);
      v44 = (*(v38 + 48) + 16 * v43);
      v46 = *v44;
      v45 = v44[1];
      v47 = v97;
      v49 = v119;
      v48 = v120;
      (*(v97 + 16))(v119, *(v38 + 56) + *(v97 + 72) * v43, v120);
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      v51 = *(v50 + 48);
      v52 = v121;
      *v121 = v46;
      *(v52 + 1) = v45;
      v53 = v52;
      (*(v47 + 32))(&v52[v51], v49, v48);
      __swift_storeEnumTagSinglePayload(v53, 0, 1, v50);

      a4 = v113;
LABEL_12:
      v54 = v112;
      sub_1D4FB8058();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
      if (__swift_getEnumTagSinglePayload(v54, 1, v55) == 1)
      {
      }

      (*v118)(v119, v54 + *(v55 + 48), v120);
      (*v103)(v108, a4, v109);
      sub_1D4FB8108(&qword_1EC7ECE38, MEMORY[0x1E6977180], MEMORY[0x1E6977160]);

      v56 = a4;
      v57 = v114;
      v58 = v122;
      v59 = v115;
      sub_1D5612698();
      v60 = v107;
      (*v102)(v107, v57, v59);
      sub_1D4F98AD4(v60, v58);
      if (__swift_getEnumTagSinglePayload(v58, 1, v110) == 1)
      {
        (*v100)(v57, v59);
        sub_1D4E50004(v122, &qword_1EC7EA608, &qword_1D561C510);
        a4 = v56;
        v38 = v111;
        v34 = v101;
      }

      else
      {
        sub_1D4FB81A8();
        v61 = v92;
        sub_1D560EC98();
        v99 = sub_1D560D708();
        v98 = v62;
        v63 = *v89;
        v64 = v61;
        v65 = v94;
        (*v89)(v64, v94);
        v66 = v116;
        v67 = v93;
        sub_1D560EC98();
        v68 = v91;
        sub_1D560D828();
        v63(v67, v65);
        v69 = *(v68 + 24);
        v70 = sub_1D5610088();
        (*(*(v70 - 8) + 16))(v66 + v69, v95, v70);
        __swift_storeEnumTagSinglePayload(v66 + v69, 0, 1, v70);
        v71 = v98;
        *v66 = v99;
        v66[1] = v71;
        sub_1D4FB80B0();
        v72 = v105;
        swift_isUniquelyReferenced_nonNull_native();
        v123 = *v72;
        v73 = v123;
        v74 = sub_1D4F0DDB4(v66);
        if (__OFADD__(*(v73 + 16), (v75 & 1) == 0))
        {
          goto LABEL_29;
        }

        v76 = v74;
        v77 = v75;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        if (sub_1D5615D78())
        {
          v78 = sub_1D4F0DDB4(v116);
          v80 = v111;
          v81 = v115;
          v34 = v101;
          if ((v77 & 1) != (v79 & 1))
          {
            goto LABEL_31;
          }

          v76 = v78;
          a4 = v113;
        }

        else
        {
          v80 = v111;
          a4 = v113;
          v81 = v115;
          v34 = v101;
        }

        v82 = v123;
        if (v77)
        {
          sub_1D4F159C4(v106, *(v123 + 56) + *(v90 + 72) * v76);
        }

        else
        {
          *(v123 + 8 * (v76 >> 6) + 64) |= 1 << v76;
          sub_1D4FB80B0();
          sub_1D4FB81A8();
          v83 = *(v82 + 16);
          v84 = __OFADD__(v83, 1);
          v85 = v83 + 1;
          if (v84)
          {
            goto LABEL_30;
          }

          *(v82 + 16) = v85;
        }

        sub_1D4E58460(v116, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v117, type metadata accessor for GenericMusicItem);
        (*v100)(v114, v81);
        *v105 = v82;
        v38 = v80;
      }
    }

    while (1)
    {
      v41 = v39 + 1;
      if (__OFADD__(v39, 1))
      {
        break;
      }

      if (v41 >= v88)
      {
        v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA68, &qword_1D561F1E8);
        __swift_storeEnumTagSinglePayload(v40, 1, 1, v86);
        v37 = 0;
        goto LABEL_12;
      }

      v37 = *(v34 + 8 * v41);
      ++v39;
      if (v37)
      {
        v39 = v41;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    result = sub_1D5616238();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB2840(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v103 = a5;
  v98 = a4;
  v90 = a3;
  v89 = a1;
  v88 = sub_1D560D838();
  v6 = *(v88 - 8);
  v7 = MEMORY[0x1EEE9AC00](v88);
  v87 = &v79 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v86 = &v79 - v9;
  v85 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v85);
  v84 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v109 = &v79 - v12;
  v102 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v102);
  v83 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v82 = &v79 - v15;
  v101 = sub_1D560CD48();
  v16 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v100 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TVEpisode(0);
  v18 = MEMORY[0x1EEE9AC00](v81);
  v99 = &v79 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = (&v79 - v20);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA80, &qword_1D561F1F0);
  v22 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v107 = &v79 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA88, &qword_1D561F1F8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v79 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v79 - v29;
  v93 = a2;
  if (a2)
  {
    v31 = 1 << *(v93 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v93 + 64);
    v79 = (v31 + 63) >> 6;
    v91 = v22 + 16;
    v92 = v22;
    v106 = (v22 + 32);
    v96 = (v16 + 16);
    v34 = v93 + 64;
    v80 = (v6 + 8);

    v35 = 0;
    v110 = v21;
    v104 = v30;
    v105 = v27;
    v97 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v92;
      v40 = (*(v93 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v107;
      v44 = v108;
      (*(v92 + 16))(v107, *(v93 + 56) + *(v92 + 72) * v38, v108);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      v46 = *(v45 + 48);
      v47 = v105;
      *v105 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v110;
      v30 = v104;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v107;
      (*v106)(v107, &v30[*(v49 + 48)], v108);
      v51 = v100;
      (*v96)(v100, v98, v101);
      v52 = v103;

      sub_1D50821CC(v50, v51, v52, v21);
      v53 = v99;
      sub_1D4FB80B0();
      v54 = v109;
      sub_1D4F9788C(v53, v109);
      if (__swift_getEnumTagSinglePayload(v54, 1, v102) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for TVEpisode);
        result = sub_1D4E50004(v109, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v55 = v82;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD54508, type metadata accessor for TVEpisode, &protocol conformance descriptor for TVEpisode);
        v56 = v86;
        sub_1D560EC98();
        v57 = sub_1D560D708();
        v94 = v58;
        v95 = v57;
        v59 = *v80;
        v60 = v56;
        v61 = v88;
        (*v80)(v60, v88);
        v62 = v87;
        sub_1D560EC98();
        v63 = v85;
        v64 = v84;
        sub_1D560D828();
        v65 = v62;
        v27 = v105;
        v59(v65, v61);
        v30 = v104;
        v66 = *(v63 + 24);
        v67 = sub_1D5610088();
        (*(*(v67 - 8) + 16))(v64 + v66, v89, v67);
        __swift_storeEnumTagSinglePayload(v64 + v66, 0, 1, v67);
        v68 = v94;
        *v64 = v95;
        v64[1] = v68;
        v69 = v83;
        sub_1D4FB80B0();
        v70 = v90;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v111 = *v70;
        v72 = v69;
        v21 = v110;
        sub_1D4F13640(v72, v64, isUniquelyReferenced_nonNull_native, v73, v74, v75, v76, v77, v79, v80, v81, v82);
        sub_1D4E58460(v64, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v55, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for TVEpisode);
        *v70 = v111;
      }

      v34 = v97;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v79)
      {
        v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBA90, &unk_1D561F200);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v78);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB3174(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v103 = a4;
  v95 = a3;
  v94 = a1;
  v93 = sub_1D560D838();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - v9;
  v90 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v84 - v12;
  v107 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v15;
  v106 = sub_1D560CD48();
  v16 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for TVSeason(0);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v104 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAA8, &unk_1D56223D0);
  v22 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB0, &qword_1D561F210);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v84 - v29;
  v98 = a2;
  if (a2)
  {
    v31 = 1 << *(v98 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v98 + 64);
    v84 = (v31 + 63) >> 6;
    v96 = v22 + 16;
    v97 = v22;
    v111 = (v22 + 32);
    v101 = (v16 + 16);
    v34 = v98 + 64;
    v85 = (v6 + 8);

    v35 = 0;
    v115 = v21;
    v109 = v30;
    v110 = v27;
    v102 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v97;
      v40 = (*(v98 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v112;
      v44 = v113;
      (*(v97 + 16))(v112, *(v98 + 56) + *(v97 + 72) * v38, v113);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      v46 = *(v45 + 48);
      v47 = v110;
      *v110 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v115;
      v30 = v109;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v112;
      (*v111)(v112, &v30[*(v49 + 48)], v113);
      v51 = v105;
      (*v101)(v105, v103, v106);
      v52 = v108;

      sub_1D507C534(v50, v51, v52, v53, v54, v55, v56, v57, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      v58 = v104;
      sub_1D4FB80B0();
      v59 = v114;
      sub_1D4F96658(v58, v114);
      if (__swift_getEnumTagSinglePayload(v59, 1, v107) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for TVSeason);
        result = sub_1D4E50004(v114, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v60 = v87;
        sub_1D4FB81A8();
        sub_1D4FB8108(&unk_1EDD546A0, type metadata accessor for TVSeason, &protocol conformance descriptor for TVSeason);
        v61 = v91;
        sub_1D560EC98();
        v62 = sub_1D560D708();
        v99 = v63;
        v100 = v62;
        v64 = *v85;
        v65 = v61;
        v66 = v93;
        (*v85)(v65, v93);
        v67 = v92;
        sub_1D560EC98();
        v68 = v90;
        v69 = v89;
        sub_1D560D828();
        v70 = v67;
        v27 = v110;
        v64(v70, v66);
        v30 = v109;
        v71 = *(v68 + 24);
        v72 = sub_1D5610088();
        (*(*(v72 - 8) + 16))(v69 + v71, v94, v72);
        __swift_storeEnumTagSinglePayload(v69 + v71, 0, 1, v72);
        v73 = v99;
        *v69 = v100;
        v69[1] = v73;
        v74 = v88;
        sub_1D4FB80B0();
        v75 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *v75;
        v77 = v74;
        v21 = v115;
        sub_1D4F13640(v77, v69, isUniquelyReferenced_nonNull_native, v78, v79, v80, v81, v82, v84, v85, v86, v87);
        sub_1D4E58460(v69, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v60, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for TVSeason);
        *v75 = v116;
      }

      v34 = v102;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAB8, &qword_1D561F218);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v83);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB3AA8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v100 = a5;
  v95 = a4;
  v87 = a3;
  v86 = a1;
  v85 = sub_1D560D838();
  v6 = *(v85 - 8);
  v7 = MEMORY[0x1EEE9AC00](v85);
  v84 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v76 - v9;
  v82 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v82);
  v81 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v106 = &v76 - v12;
  v99 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v99);
  v80 = &v76 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v79 = &v76 - v15;
  v98 = sub_1D560CD48();
  v16 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v76 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVShow(0);
  v18 = MEMORY[0x1EEE9AC00](v78);
  v96 = &v76 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - v20;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD0, &qword_1D561F220);
  v22 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v104 = &v76 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAD8, &qword_1D561F228);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v76 - v29;
  v90 = a2;
  if (a2)
  {
    v31 = 1 << *(v90 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v90 + 64);
    v76 = (v31 + 63) >> 6;
    v88 = v22 + 16;
    v89 = v22;
    v103 = (v22 + 32);
    v93 = (v16 + 16);
    v34 = v90 + 64;
    v77 = (v6 + 8);

    v35 = 0;
    v107 = v21;
    v101 = v30;
    v102 = v27;
    v94 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v89;
      v40 = (*(v90 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v104;
      v44 = v105;
      (*(v89 + 16))(v104, *(v90 + 56) + *(v89 + 72) * v38, v105);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      v46 = *(v45 + 48);
      v47 = v102;
      *v102 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v107;
      v30 = v101;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      (*v103)(v104, &v30[*(v49 + 48)], v105);
      (*v93)(v97, v95, v98);

      sub_1D507F9A0();
      v50 = v96;
      sub_1D4FB80B0();
      v51 = v106;
      sub_1D4F95440(v50, v106);
      if (__swift_getEnumTagSinglePayload(v51, 1, v99) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for TVShow);
        result = sub_1D4E50004(v106, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v52 = v79;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EC7EA688, type metadata accessor for TVShow, &protocol conformance descriptor for TVShow);
        v53 = v83;
        sub_1D560EC98();
        v54 = sub_1D560D708();
        v91 = v55;
        v92 = v54;
        v56 = *v77;
        v57 = v53;
        v58 = v85;
        (*v77)(v57, v85);
        v59 = v84;
        sub_1D560EC98();
        v60 = v82;
        v61 = v81;
        sub_1D560D828();
        v62 = v59;
        v27 = v102;
        v56(v62, v58);
        v30 = v101;
        v63 = *(v60 + 24);
        v64 = sub_1D5610088();
        (*(*(v64 - 8) + 16))(v61 + v63, v86, v64);
        __swift_storeEnumTagSinglePayload(v61 + v63, 0, 1, v64);
        v65 = v91;
        *v61 = v92;
        v61[1] = v65;
        v66 = v80;
        sub_1D4FB80B0();
        v67 = v87;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *v67;
        v69 = v66;
        v21 = v107;
        sub_1D4F13640(v69, v61, isUniquelyReferenced_nonNull_native, v70, v71, v72, v73, v74, v76, v77, v78, v79);
        sub_1D4E58460(v61, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v52, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for TVShow);
        *v67 = v108;
      }

      v34 = v94;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v76)
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAE0, &unk_1D561F230);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v75);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB43DC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v103 = a4;
  v95 = a3;
  v94 = a1;
  v93 = sub_1D560D838();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - v9;
  v90 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v84 - v12;
  v107 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v15;
  v106 = sub_1D560CD48();
  v16 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UploadedAudio(0);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v104 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBAF8, &qword_1D563B230);
  v22 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB00, &qword_1D561F240);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v84 - v29;
  v98 = a2;
  if (a2)
  {
    v31 = 1 << *(v98 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v98 + 64);
    v84 = (v31 + 63) >> 6;
    v96 = v22 + 16;
    v97 = v22;
    v111 = (v22 + 32);
    v101 = (v16 + 16);
    v34 = v98 + 64;
    v85 = (v6 + 8);

    v35 = 0;
    v115 = v21;
    v109 = v30;
    v110 = v27;
    v102 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v97;
      v40 = (*(v98 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v112;
      v44 = v113;
      (*(v97 + 16))(v112, *(v98 + 56) + *(v97 + 72) * v38, v113);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      v46 = *(v45 + 48);
      v47 = v110;
      *v110 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v115;
      v30 = v109;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v112;
      (*v111)(v112, &v30[*(v49 + 48)], v113);
      v51 = v105;
      (*v101)(v105, v103, v106);
      v52 = v108;

      sub_1D509D394(v50, v51, v52, v53, v54, v55, v56, v57, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      v58 = v104;
      sub_1D4FB80B0();
      v59 = v114;
      sub_1D4F94228(v58, v114);
      if (__swift_getEnumTagSinglePayload(v59, 1, v107) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for UploadedAudio);
        result = sub_1D4E50004(v114, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v60 = v87;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57500, type metadata accessor for UploadedAudio, &protocol conformance descriptor for UploadedAudio);
        v61 = v91;
        sub_1D560EC98();
        v62 = sub_1D560D708();
        v99 = v63;
        v100 = v62;
        v64 = *v85;
        v65 = v61;
        v66 = v93;
        (*v85)(v65, v93);
        v67 = v92;
        sub_1D560EC98();
        v68 = v90;
        v69 = v89;
        sub_1D560D828();
        v70 = v67;
        v27 = v110;
        v64(v70, v66);
        v30 = v109;
        v71 = *(v68 + 24);
        v72 = sub_1D5610088();
        (*(*(v72 - 8) + 16))(v69 + v71, v94, v72);
        __swift_storeEnumTagSinglePayload(v69 + v71, 0, 1, v72);
        v73 = v99;
        *v69 = v100;
        v69[1] = v73;
        v74 = v88;
        sub_1D4FB80B0();
        v75 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *v75;
        v77 = v74;
        v21 = v115;
        sub_1D4F13640(v77, v69, isUniquelyReferenced_nonNull_native, v78, v79, v80, v81, v82, v84, v85, v86, v87);
        sub_1D4E58460(v69, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v60, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for UploadedAudio);
        *v75 = v116;
      }

      v34 = v102;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB08, &qword_1D561F248);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v83);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB4D10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v108 = a5;
  v103 = a4;
  v95 = a3;
  v94 = a1;
  v93 = sub_1D560D838();
  v6 = *(v93 - 8);
  v7 = MEMORY[0x1EEE9AC00](v93);
  v92 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v84 - v9;
  v90 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  MEMORY[0x1EEE9AC00](v90);
  v89 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA608, &qword_1D561C510);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v114 = &v84 - v12;
  v107 = type metadata accessor for GenericMusicItem(0);
  v13 = MEMORY[0x1EEE9AC00](v107);
  v88 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v87 = &v84 - v15;
  v106 = sub_1D560CD48();
  v16 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v84 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for UploadedVideo(0);
  v18 = MEMORY[0x1EEE9AC00](v86);
  v104 = &v84 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v84 - v20;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB20, &unk_1D561F250);
  v22 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v84 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB28, &unk_1D5623440);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v84 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v25);
  v30 = &v84 - v29;
  v98 = a2;
  if (a2)
  {
    v31 = 1 << *(v98 + 32);
    v32 = -1;
    if (v31 < 64)
    {
      v32 = ~(-1 << v31);
    }

    v33 = v32 & *(v98 + 64);
    v84 = (v31 + 63) >> 6;
    v96 = v22 + 16;
    v97 = v22;
    v111 = (v22 + 32);
    v101 = (v16 + 16);
    v34 = v98 + 64;
    v85 = (v6 + 8);

    v35 = 0;
    v115 = v21;
    v109 = v30;
    v110 = v27;
    v102 = v34;
    while (v33)
    {
      v36 = v35;
LABEL_11:
      v37 = __clz(__rbit64(v33));
      v33 &= v33 - 1;
      v38 = v37 | (v36 << 6);
      v39 = v97;
      v40 = (*(v98 + 48) + 16 * v38);
      v42 = *v40;
      v41 = v40[1];
      v43 = v112;
      v44 = v113;
      (*(v97 + 16))(v112, *(v98 + 56) + *(v97 + 72) * v38, v113);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      v46 = *(v45 + 48);
      v47 = v110;
      *v110 = v42;
      *(v47 + 1) = v41;
      v48 = v43;
      v27 = v47;
      (*(v39 + 32))(&v47[v46], v48, v44);
      __swift_storeEnumTagSinglePayload(v27, 0, 1, v45);

      v21 = v115;
      v30 = v109;
LABEL_12:
      sub_1D4FB8058();
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
      if (__swift_getEnumTagSinglePayload(v30, 1, v49) == 1)
      {
      }

      v50 = v112;
      (*v111)(v112, &v30[*(v49 + 48)], v113);
      v51 = v105;
      (*v101)(v105, v103, v106);
      v52 = v108;

      sub_1D508E98C(v50, v51, v52, v53, v54, v55, v56, v57, v84, v85, v86, v87, v88, v89, v90, v91, v92, v93, v94, v95);
      v58 = v104;
      sub_1D4FB80B0();
      v59 = v114;
      sub_1D4F93010(v58, v114);
      if (__swift_getEnumTagSinglePayload(v59, 1, v107) == 1)
      {
        sub_1D4E58460(v21, type metadata accessor for UploadedVideo);
        result = sub_1D4E50004(v114, &qword_1EC7EA608, &qword_1D561C510);
      }

      else
      {
        v60 = v87;
        sub_1D4FB81A8();
        sub_1D4FB8108(&qword_1EDD57488, type metadata accessor for UploadedVideo, &protocol conformance descriptor for UploadedVideo);
        v61 = v91;
        sub_1D560EC98();
        v62 = sub_1D560D708();
        v99 = v63;
        v100 = v62;
        v64 = *v85;
        v65 = v61;
        v66 = v93;
        (*v85)(v65, v93);
        v67 = v92;
        sub_1D560EC98();
        v68 = v90;
        v69 = v89;
        sub_1D560D828();
        v70 = v67;
        v27 = v110;
        v64(v70, v66);
        v30 = v109;
        v71 = *(v68 + 24);
        v72 = sub_1D5610088();
        (*(*(v72 - 8) + 16))(v69 + v71, v94, v72);
        __swift_storeEnumTagSinglePayload(v69 + v71, 0, 1, v72);
        v73 = v99;
        *v69 = v100;
        v69[1] = v73;
        v74 = v88;
        sub_1D4FB80B0();
        v75 = v95;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v116 = *v75;
        v77 = v74;
        v21 = v115;
        sub_1D4F13640(v77, v69, isUniquelyReferenced_nonNull_native, v78, v79, v80, v81, v82, v84, v85, v86, v87);
        sub_1D4E58460(v69, type metadata accessor for LooselyComparableTypedIdentifier);
        sub_1D4E58460(v60, type metadata accessor for GenericMusicItem);
        result = sub_1D4E58460(v21, type metadata accessor for UploadedVideo);
        *v75 = v116;
      }

      v34 = v102;
    }

    while (1)
    {
      v36 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v36 >= v84)
      {
        v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EBB30, &unk_1D561F260);
        __swift_storeEnumTagSinglePayload(v27, 1, 1, v83);
        v33 = 0;
        goto LABEL_12;
      }

      v33 = *(v34 + 8 * v36);
      ++v35;
      if (v33)
      {
        v35 = v36;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D4FB5644(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE20, &qword_1D5623368);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA820, &unk_1D5623370);
  v5 = *(v73 - 8);
  v6 = MEMORY[0x1EEE9AC00](v73);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
  v9 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v57 - v13;
  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v66 = MEMORY[0x1E69E7CC8];
  v76 = MEMORY[0x1E69E7CC8];
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v61 = v5;
  v63 = (v5 + 32);
  v74 = a1;

  v21 = 0;
  v67 = v19;
  v68 = a1 + 64;
  v71 = v4;
  while (1)
  {
    v22 = v21;
    if (!v18)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v21 = v22;
LABEL_10:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v21 << 6);
      v25 = *(v74 + 56);
      v26 = (*(v74 + 48) + 16 * v24);
      v27 = *v26;
      v75 = v26[1];
      v28 = v75;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
      v30 = *(v29 - 8);
      v31 = v69;
      (*(v30 + 16))(&v69[*(v72 + 48)], v25 + *(v30 + 72) * v24, v29);
      *v31 = v27;
      v31[1] = v28;
      v32 = v70;
      sub_1D4FB8058();
      swift_getKeyPath();

      v33 = v71;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v33, 1, v73) != 1)
      {
        break;
      }

      sub_1D4E50004(v32, &qword_1EC7EB948, &qword_1D561F128);
      result = sub_1D4E50004(v33, &qword_1EC7ECE20, &qword_1D5623368);
      v22 = v21;
      v19 = v67;
      v15 = v68;
      if (!v18)
      {
LABEL_7:
        while (1)
        {
          v21 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v21 >= v19)
          {

            return v66;
          }

          v18 = *(v15 + 8 * v21);
          ++v22;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v75 = v30;
    v60 = v29;
    v34 = *v63;
    v35 = v62;
    v36 = v73;
    (*v63)(v62, v33, v73);
    sub_1D4FB8058();
    v59 = v34;
    v34(v64, v35, v36);
    v37 = v66;
    v38 = v66[2];
    if (v66[3] <= v38)
    {
      sub_1D52C6E44(v38 + 1, 1);
      v37 = v76;
    }

    v40 = *v65;
    v39 = *(v65 + 1);
    v41 = v37;
    sub_1D56162D8();
    v58 = v39;
    sub_1D5614E28();
    result = sub_1D5616328();
    v42 = v41 + 8;
    v66 = v41;
    v43 = -1 << *(v41 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    v46 = v60;
    if (((-1 << v44) & ~v41[(v44 >> 6) + 8]) == 0)
    {
      break;
    }

    v47 = __clz(__rbit64((-1 << v44) & ~v41[(v44 >> 6) + 8])) | v44 & 0x7FFFFFFFFFFFFFC0;
    v48 = v75;
LABEL_24:
    v53 = *(v72 + 48);
    *(v42 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v54 = v66;
    v55 = (v66[6] + 16 * v47);
    v56 = v58;
    *v55 = v40;
    v55[1] = v56;
    v59((v54[7] + *(v61 + 72) * v47), v64, v73);
    ++v54[2];
    result = (*(v48 + 8))(&v65[v53], v46);
    v19 = v67;
    v15 = v68;
  }

  v49 = 0;
  v50 = (63 - v43) >> 6;
  v48 = v75;
  while (++v45 != v50 || (v49 & 1) == 0)
  {
    v51 = v45 == v50;
    if (v45 == v50)
    {
      v45 = 0;
    }

    v49 |= v51;
    v52 = v42[v45];
    if (v52 != -1)
    {
      v47 = __clz(__rbit64(~v52)) + (v45 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D4FB5C60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE28, &qword_1D56233B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA830, &qword_1D56233C0);
  v5 = *(v73 - 8);
  v6 = MEMORY[0x1EEE9AC00](v73);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
  v9 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v57 - v13;
  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v66 = MEMORY[0x1E69E7CC8];
  v76 = MEMORY[0x1E69E7CC8];
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v61 = v5;
  v63 = (v5 + 32);
  v74 = a1;

  v21 = 0;
  v67 = v19;
  v68 = a1 + 64;
  v71 = v4;
  while (1)
  {
    v22 = v21;
    if (!v18)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v21 = v22;
LABEL_10:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v21 << 6);
      v25 = *(v74 + 56);
      v26 = (*(v74 + 48) + 16 * v24);
      v27 = *v26;
      v75 = v26[1];
      v28 = v75;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
      v30 = *(v29 - 8);
      v31 = v69;
      (*(v30 + 16))(&v69[*(v72 + 48)], v25 + *(v30 + 72) * v24, v29);
      *v31 = v27;
      v31[1] = v28;
      v32 = v70;
      sub_1D4FB8058();
      swift_getKeyPath();

      v33 = v71;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v33, 1, v73) != 1)
      {
        break;
      }

      sub_1D4E50004(v32, &qword_1EC7EB948, &qword_1D561F128);
      result = sub_1D4E50004(v33, &qword_1EC7ECE28, &qword_1D56233B8);
      v22 = v21;
      v19 = v67;
      v15 = v68;
      if (!v18)
      {
LABEL_7:
        while (1)
        {
          v21 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v21 >= v19)
          {

            return v66;
          }

          v18 = *(v15 + 8 * v21);
          ++v22;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v75 = v30;
    v60 = v29;
    v34 = *v63;
    v35 = v62;
    v36 = v73;
    (*v63)(v62, v33, v73);
    sub_1D4FB8058();
    v59 = v34;
    v34(v64, v35, v36);
    v37 = v66;
    v38 = v66[2];
    if (v66[3] <= v38)
    {
      sub_1D52C6E20(v38 + 1, 1);
      v37 = v76;
    }

    v40 = *v65;
    v39 = *(v65 + 1);
    v41 = v37;
    sub_1D56162D8();
    v58 = v39;
    sub_1D5614E28();
    result = sub_1D5616328();
    v42 = v41 + 8;
    v66 = v41;
    v43 = -1 << *(v41 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    v46 = v60;
    if (((-1 << v44) & ~v41[(v44 >> 6) + 8]) == 0)
    {
      break;
    }

    v47 = __clz(__rbit64((-1 << v44) & ~v41[(v44 >> 6) + 8])) | v44 & 0x7FFFFFFFFFFFFFC0;
    v48 = v75;
LABEL_24:
    v53 = *(v72 + 48);
    *(v42 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v54 = v66;
    v55 = (v66[6] + 16 * v47);
    v56 = v58;
    *v55 = v40;
    v55[1] = v56;
    v59((v54[7] + *(v61 + 72) * v47), v64, v73);
    ++v54[2];
    result = (*(v48 + 8))(&v65[v53], v46);
    v19 = v67;
    v15 = v68;
  }

  v49 = 0;
  v50 = (63 - v43) >> 6;
  v48 = v75;
  while (++v45 != v50 || (v49 & 1) == 0)
  {
    v51 = v45 == v50;
    if (v45 == v50)
    {
      v45 = 0;
    }

    v49 |= v51;
    v52 = v42[v45];
    if (v52 != -1)
    {
      v47 = __clz(__rbit64(~v52)) + (v45 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D4FB627C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE30, &qword_1D56233F8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v57 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA828, &qword_1D5623400);
  v5 = *(v73 - 8);
  v6 = MEMORY[0x1EEE9AC00](v73);
  v64 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v57 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB948, &qword_1D561F128);
  v9 = MEMORY[0x1EEE9AC00](v72);
  v65 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v70 = &v57 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v69 = &v57 - v13;
  v15 = a1 + 64;
  v14 = *(a1 + 64);
  v66 = MEMORY[0x1E69E7CC8];
  v76 = MEMORY[0x1E69E7CC8];
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v61 = v5;
  v63 = (v5 + 32);
  v74 = a1;

  v21 = 0;
  v67 = v19;
  v68 = a1 + 64;
  v71 = v4;
  while (1)
  {
    v22 = v21;
    if (!v18)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v21 = v22;
LABEL_10:
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v24 = v23 | (v21 << 6);
      v25 = *(v74 + 56);
      v26 = (*(v74 + 48) + 16 * v24);
      v27 = *v26;
      v75 = v26[1];
      v28 = v75;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
      v30 = *(v29 - 8);
      v31 = v69;
      (*(v30 + 16))(&v69[*(v72 + 48)], v25 + *(v30 + 72) * v24, v29);
      *v31 = v27;
      v31[1] = v28;
      v32 = v70;
      sub_1D4FB8058();
      swift_getKeyPath();

      v33 = v71;
      swift_getAtKeyPath();

      if (__swift_getEnumTagSinglePayload(v33, 1, v73) != 1)
      {
        break;
      }

      sub_1D4E50004(v32, &qword_1EC7EB948, &qword_1D561F128);
      result = sub_1D4E50004(v33, &qword_1EC7ECE30, &qword_1D56233F8);
      v22 = v21;
      v19 = v67;
      v15 = v68;
      if (!v18)
      {
LABEL_7:
        while (1)
        {
          v21 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            break;
          }

          if (v21 >= v19)
          {

            return v66;
          }

          v18 = *(v15 + 8 * v21);
          ++v22;
          if (v18)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_27;
      }
    }

    v75 = v30;
    v60 = v29;
    v34 = *v63;
    v35 = v62;
    v36 = v73;
    (*v63)(v62, v33, v73);
    sub_1D4FB8058();
    v59 = v34;
    v34(v64, v35, v36);
    v37 = v66;
    v38 = v66[2];
    if (v66[3] <= v38)
    {
      sub_1D52C6DFC(v38 + 1, 1);
      v37 = v76;
    }

    v40 = *v65;
    v39 = *(v65 + 1);
    v41 = v37;
    sub_1D56162D8();
    v58 = v39;
    sub_1D5614E28();
    result = sub_1D5616328();
    v42 = v41 + 8;
    v66 = v41;
    v43 = -1 << *(v41 + 32);
    v44 = result & ~v43;
    v45 = v44 >> 6;
    v46 = v60;
    if (((-1 << v44) & ~v41[(v44 >> 6) + 8]) == 0)
    {
      break;
    }

    v47 = __clz(__rbit64((-1 << v44) & ~v41[(v44 >> 6) + 8])) | v44 & 0x7FFFFFFFFFFFFFC0;
    v48 = v75;
LABEL_24:
    v53 = *(v72 + 48);
    *(v42 + ((v47 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v47;
    v54 = v66;
    v55 = (v66[6] + 16 * v47);
    v56 = v58;
    *v55 = v40;
    v55[1] = v56;
    v59((v54[7] + *(v61 + 72) * v47), v64, v73);
    ++v54[2];
    result = (*(v48 + 8))(&v65[v53], v46);
    v19 = v67;
    v15 = v68;
  }

  v49 = 0;
  v50 = (63 - v43) >> 6;
  v48 = v75;
  while (++v45 != v50 || (v49 & 1) == 0)
  {
    v51 = v45 == v50;
    if (v45 == v50)
    {
      v45 = 0;
    }

    v49 |= v51;
    v52 = v42[v45];
    if (v52 != -1)
    {
      v47 = __clz(__rbit64(~v52)) + (v45 << 6);
      goto LABEL_24;
    }
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D4FB6898@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t sub_1D4FB6938@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB210, &unk_1D561DF60) + 48);
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70) + 48);

  return sub_1D4FB68D4(a2, v5, a1, a1 + v4);
}

uint64_t sub_1D4FB69B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a4;
  result = sub_1D4FB6AF4(a1, a2, a3, isUniquelyReferenced_nonNull_native, &v10);
  *a4 = v10;
  return result;
}

unint64_t sub_1D4FB6A28()
{
  result = qword_1EDD54F28;
  if (!qword_1EDD54F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD54F28);
  }

  return result;
}

uint64_t sub_1D4FB6A7C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D4FB6AF4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v10 = type metadata accessor for GenericMusicItem(0);
  v46 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v36 = type metadata accessor for LooselyComparableTypedIdentifier(0);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE70, &unk_1D563ADF0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v35 - v19;
  sub_1D4FB6898(a1, a2, a3, v44);
  v40 = v44[0];
  v41 = v44[1];
  v42 = v44[2];
  v43 = v45;
  v38 = a1;

  v37 = a3;

  while (1)
  {
    sub_1D4EFE934();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB220, &qword_1D561DF70);
    if (__swift_getEnumTagSinglePayload(v20, 1, v21) == 1)
    {
      sub_1D4E6456C(v40);
    }

    sub_1D4FB81A8();
    sub_1D4FB81A8();
    v22 = *a5;
    v24 = sub_1D4F0DDB4(v17);
    v25 = *(v22 + 16);
    v26 = (v23 & 1) == 0;
    if (__OFADD__(v25, v26))
    {
      break;
    }

    v27 = v23;
    if (*(v22 + 24) >= v25 + v26)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB4C0, &qword_1D561E280);
        sub_1D5615D88();
      }
    }

    else
    {
      sub_1D52C7190();
      v28 = sub_1D4F0DDB4(v17);
      if ((v27 & 1) != (v29 & 1))
      {
        goto LABEL_16;
      }

      v24 = v28;
    }

    v30 = *a5;
    if (v27)
    {
      sub_1D4FB80B0();
      sub_1D4E58460(v15, type metadata accessor for GenericMusicItem);
      sub_1D4E58460(v17, type metadata accessor for LooselyComparableTypedIdentifier);
      sub_1D4F159C4(v13, *(v30 + 56) + *(v46 + 72) * v24);
      a4 = 1;
    }

    else
    {
      *(v30 + 8 * (v24 >> 6) + 64) |= 1 << v24;
      sub_1D4FB81A8();
      sub_1D4FB81A8();
      v31 = *(v30 + 16);
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_15;
      }

      *(v30 + 16) = v33;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  result = sub_1D5616238();
  __break(1u);
  return result;
}

uint64_t sub_1D4FB6F44(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_53_7(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25, v26);
  sub_1D5616328();
  OUTLINED_FUNCTION_15_0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v15 = 0;
  v16 = 0;
  if (v11)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_55_9();
      sub_1D56162D8();

      sub_1D5614E28();

      v15 ^= sub_1D5616328();
    }
  }

  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v13)
    {

      return MEMORY[0x1DA6EC0D0](0);
    }

    ++v16;
    if (*(v8 + 56 + 8 * v17))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4FB7060()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  v41 = _s13PersistedDateVMa(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v4);
  v35 = v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB470, &qword_1D561F3D0);
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  v40 = v34 - v8;
  v39 = _s10DescriptorVMa(0);
  OUTLINED_FUNCTION_4();
  v38 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_59_0();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v37 = v34 - v15;
  v34[1] = v3;
  memcpy(v44, v3, sizeof(v44));
  v36 = sub_1D5616328();
  v16 = v1 + 56;
  OUTLINED_FUNCTION_15_0();
  v19 = v18 & v17;
  v21 = (v20 + 63) >> 6;
  v42 = v1;

  v22 = 0;
  v23 = 0;
  if (!v19)
  {
    goto LABEL_3;
  }

  do
  {
    v43 = v22;
LABEL_7:
    OUTLINED_FUNCTION_8_29();
    sub_1D4FB80B0();
    OUTLINED_FUNCTION_31_15();
    OUTLINED_FUNCTION_159();
    sub_1D4FB81A8();
    sub_1D56162D8();
    sub_1D5614E28();
    v25 = v39;
    sub_1D560C328();
    OUTLINED_FUNCTION_30_10();
    sub_1D4FB8108(&qword_1EDD5CF60, v26, MEMORY[0x1E6969540]);
    sub_1D5614CB8();
    sub_1D56162F8();
    MEMORY[0x1DA6EC0D0](*(v13 + *(v25 + 28)));
    MEMORY[0x1DA6EC0D0](*(v13 + *(v25 + 32)));
    sub_1D5614CB8();
    v27 = v40;
    sub_1D4FB8150();
    OUTLINED_FUNCTION_57(v27, 1, v41);
    if (v28)
    {
      sub_1D56162F8();
    }

    else
    {
      OUTLINED_FUNCTION_14_18();
      v29 = v35;
      sub_1D4FB81A8();
      sub_1D56162F8();
      sub_1D5614CB8();
      OUTLINED_FUNCTION_4_22();
      sub_1D4E58460(v29, v30);
    }

    v31 = v43;
    v19 &= v19 - 1;
    v32 = sub_1D5616328();
    OUTLINED_FUNCTION_10_26();
    sub_1D4E58460(v13, v33);
    v22 = v32 ^ v31;
  }

  while (v19);
LABEL_3:
  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      MEMORY[0x1DA6EC0D0](v22);
      OUTLINED_FUNCTION_46();
      return;
    }

    v19 = *(v16 + 8 * v24);
    ++v23;
    if (v19)
    {
      v43 = v22;
      v23 = v24;
      goto LABEL_7;
    }
  }

  __break(1u);
}

uint64_t sub_1D4FB742C(const void *a1, uint64_t a2)
{
  v4 = sub_1D5610088();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA358, &unk_1D561DF50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v28 - v8;
  v34 = type metadata accessor for MusicItemTypedIdentifier(0);
  v33 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[1] = a1;
  memcpy(__dst, a1, sizeof(__dst));
  v32 = sub_1D5616328();
  v12 = a2 + 56;
  v13 = 1 << *(a2 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a2 + 56);
  v16 = (v13 + 63) >> 6;
  v30 = (v5 + 32);
  v29 = (v5 + 8);
  v36 = a2;

  v18 = 0;
  v19 = 0;
  for (i = v4; v15; v18 = v27 ^ v26)
  {
    v37 = v18;
LABEL_9:
    sub_1D4FB80B0();
    sub_1D56162D8();
    sub_1D5614E28();
    v21 = *(v11 + 2);
    MEMORY[0x1DA6EC0D0](*(v21 + 16));
    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = v21 + 40;
      do
      {

        sub_1D5614E28();

        v23 += 16;
        --v22;
      }

      while (v22);
    }

    sub_1D560D9A8();
    sub_1D4FB8108(&qword_1EDD53C28, MEMORY[0x1E6974F80], MEMORY[0x1E6974F88]);
    sub_1D5614CB8();
    sub_1D4FB8150();
    v24 = i;
    if (__swift_getEnumTagSinglePayload(v9, 1, i) == 1)
    {
      sub_1D56162F8();
    }

    else
    {
      v25 = v31;
      (*v30)(v31, v9, v24);
      sub_1D56162F8();
      sub_1D4FB8108(&qword_1EDD53358, MEMORY[0x1E6975BC8], MEMORY[0x1E6975BD8]);
      sub_1D5614CB8();
      (*v29)(v25, v24);
    }

    v26 = v37;
    v15 &= v15 - 1;
    v27 = sub_1D5616328();
    result = sub_1D4E58460(v11, type metadata accessor for MusicItemTypedIdentifier);
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v16)
    {

      return MEMORY[0x1DA6EC0D0](v18);
    }

    v15 = *(v12 + 8 * v20);
    ++v19;
    if (v15)
    {
      v37 = v18;
      v19 = v20;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4FB78D4(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  OUTLINED_FUNCTION_53_7(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21, v22, v23, v24, v25, v26, v27, v28);
  sub_1D5616328();
  v9 = 0;
  v10 = 0;
  OUTLINED_FUNCTION_15_0();
  v13 = v12 & v11;
  v15 = (v14 + 63) >> 6;
  if ((v12 & v11) != 0)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v16 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      MEMORY[0x1DA6EC0D0](v9);
      return;
    }

    v13 = *(v8 + 56 + 8 * v16);
    ++v10;
    if (v13)
    {
      v10 = v16;
      do
      {
LABEL_7:
        OUTLINED_FUNCTION_42_13();
        v19 = *(v18 + v17);
        sub_1D56162D8();
        MEMORY[0x1DA6EC0D0](v19);
        v9 ^= sub_1D5616328();
      }

      while (v13);
      continue;
    }
  }

  __break(1u);
}

void sub_1D4FB79BC()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v3 = v2;
  type metadata accessor for MusicSuggestedSongsEntry(0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  memcpy(v20, v3, sizeof(v20));
  sub_1D5616328();
  OUTLINED_FUNCTION_15_0();
  v11 = v10 & v9;
  v13 = (v12 + 63) >> 6;

  v14 = 0;
  v15 = 0;
  if (v11)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v13)
    {

      MEMORY[0x1DA6EC0D0](v14);
      OUTLINED_FUNCTION_46();
      return;
    }

    v11 = *(v1 + 56 + 8 * v16);
    ++v15;
    if (v11)
    {
      v15 = v16;
      do
      {
LABEL_7:
        v11 &= v11 - 1;
        OUTLINED_FUNCTION_13_26();
        sub_1D4FB80B0();
        OUTLINED_FUNCTION_27_12();
        sub_1D4FB81A8();
        sub_1D56162D8();
        sub_1D5613838();
        OUTLINED_FUNCTION_26_15();
        sub_1D4FB8108(&qword_1EC7EB458, v17, MEMORY[0x1E6976BF8]);
        sub_1D5614CB8();
        sub_1D5614E28();
        v18 = sub_1D5616328();
        OUTLINED_FUNCTION_11_26();
        sub_1D4E58460(v7, v19);
        v14 ^= v18;
      }

      while (v11);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_1D4FB7BDC(void *__src, uint64_t a2)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1D5616328();
  OUTLINED_FUNCTION_15_0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    while (1)
    {
LABEL_5:
      OUTLINED_FUNCTION_42_13();
      sub_1D56162D8();
      sub_1D5614E28();

      v9 ^= sub_1D5616328();
    }
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1DA6EC0D0](0);
    }

    ++v10;
    if (*(a2 + 56 + 8 * v11))
    {
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

void sub_1D4FB7D90(uint64_t a1)
{
  sub_1D4FB7E44(319);
  if (v1 <= 0x3F)
  {
    sub_1D4FB7EA8(319);
    if (v2 <= 0x3F)
    {
      sub_1D4FB7F54(319);
      if (v3 <= 0x3F)
      {
        sub_1D560CD48();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D4FB7E44(uint64_t a1)
{
  if (!qword_1EDD52898)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ECDF8, ":/\b");
    v1 = sub_1D56158D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD52898);
    }
  }
}

void sub_1D4FB7EA8(uint64_t a1)
{
  if (!qword_1EDD529D0)
  {
    type metadata accessor for LooselyComparableTypedIdentifier(255);
    type metadata accessor for GenericMusicItem(255);
    sub_1D4FB8108(qword_1EDD54BB8, type metadata accessor for LooselyComparableTypedIdentifier, &unk_1D56579DC);
    v1 = sub_1D5614C78();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD529D0);
    }
  }
}

void sub_1D4FB7F54(uint64_t a1)
{
  if (!qword_1EDD52720)
  {
    type metadata accessor for MusicItemTypedIdentifier(255);
    sub_1D4FB8108(qword_1EDD5B9F8, type metadata accessor for MusicItemTypedIdentifier, &protocol conformance descriptor for MusicItemTypedIdentifier);
    v1 = sub_1D56155D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD52720);
    }
  }
}

uint64_t sub_1D4FB7FE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE10, &qword_1D5634400);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FB8058()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D4FB80B0()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

uint64_t sub_1D4FB8108(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4FB8150()
{
  OUTLINED_FUNCTION_69_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_14();
  v3 = OUTLINED_FUNCTION_71();
  v4(v3);
  return v0;
}

uint64_t sub_1D4FB81A8()
{
  OUTLINED_FUNCTION_69_0();
  v1(0);
  OUTLINED_FUNCTION_14();
  v2 = OUTLINED_FUNCTION_71();
  v3(v2);
  return v0;
}

void OUTLINED_FUNCTION_37_13()
{
  *(v4 - 320) = v0;
  *(v4 - 312) = v1;
  *(v4 - 280) = v3;
  *(v4 - 256) = v2;
}

uint64_t OUTLINED_FUNCTION_62_11()
{
}

void *OUTLINED_FUNCTION_65_10(void *a1)
{

  return memcpy(a1, (v1 + 208), 0xC0uLL);
}

uint64_t sub_1D4FB8344(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB83E4(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB848C()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB8568(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB85D8(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8678(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB86E0(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB87D0(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8854(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8908(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8A50(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 6:
      OUTLINED_FUNCTION_8_30();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB8B68()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB8C38(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 2:
    case 3:
    case 4:
      OUTLINED_FUNCTION_8_30();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB8D68(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8DE8(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_2_21();
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB8E88()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB8F60(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB8FE0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9064(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB90D0(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB91B8(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9210(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9298(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9320(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 4:
      OUTLINED_FUNCTION_8_30();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB9408(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB94CC()
{
  OUTLINED_FUNCTION_10_27();
  sub_1D5614E28();
}

uint64_t sub_1D4FB95B4(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9640(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB96D0(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB974C(uint64_t a1, char a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB97E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  OUTLINED_FUNCTION_4_23(v3, v4);
}

uint64_t sub_1D4FB9850(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = a3(a2);
  OUTLINED_FUNCTION_4_23(v3, v4);
}

uint64_t sub_1D4FB9894(uint64_t a1, unsigned __int8 a2)
{
  sub_1D5614E28();
}

uint64_t sub_1D4FB9918(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 3:
    case 4:
      OUTLINED_FUNCTION_2_21();
      break;
    case 6:
      OUTLINED_FUNCTION_9_27();
      break;
    default:
      break;
  }

  sub_1D5614E28();
}

uint64_t sub_1D4FB9AB8(uint64_t a1, char a2)
{
  switch(a2)
  {
    case 1:
      break;
    case 2:
      OUTLINED_FUNCTION_2_21();
      break;
    case 3:
      OUTLINED_FUNCTION_9_27();
      break;
    default:
      OUTLINED_FUNCTION_8_30();
      break;
  }

  sub_1D5614E28();
}

uint64_t static MusicSiriRepresentation.ParsedIdentifiers.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v25 = *a1;
  v26 = v4;
  v27 = v5;
  v28 = v6;
  v29 = v7;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v20 = *a2;
  v21 = v8;
  v22 = v9;
  v23 = v10;
  v24 = v11;
  sub_1D4EF2170(v25, v4, v5, v6, v7);
  sub_1D4EF2170(v20, v8, v9, v10, v11);
  v12 = static MusicSiriRepresentation.ParsedIdentifier.== infix(_:_:)(&v25, &v20);
  sub_1D4EF21B4(v20, v21, v22, v23, v24);
  sub_1D4EF21B4(v25, v26, v27, v28, v29);
  if ((v12 & 1) == 0)
  {
    return 0;
  }

  v13 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  if ((sub_1D560D6E8() & 1) == 0)
  {
    return 0;
  }

  v14 = *(v13 + 24);
  v15 = *(a1 + v14);
  v16 = *(a1 + v14 + 8);
  v17 = (a2 + v14);
  if (v15 == *v17 && v16 == v17[1])
  {
    return 1;
  }

  return sub_1D5616168();
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.init(mainID:musicIdentifierSet:originalID:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *(a1 + 32);
  v10 = *(a1 + 16);
  *a5 = *a1;
  *(a5 + 16) = v10;
  *(a5 + 32) = v9;
  v11 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  v12 = *(v11 + 20);
  v13 = sub_1D560D838();
  result = (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  v15 = (a5 + *(v11 + 24));
  *v15 = a3;
  v15[1] = a4;
  return result;
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.mainID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return sub_1D4EF2170(v2, v3, v4, v5, v6);
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.musicIdentifierSet.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0) + 20);
  v4 = sub_1D560D838();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.originalID.getter()
{
  v1 = *(v0 + *(type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0) + 24));

  return v1;
}

uint64_t type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(uint64_t a1)
{
  result = qword_1EDD5BB20;
  if (!qword_1EDD5BB20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  if (v1[4])
  {
    MEMORY[0x1DA6EC0D0](1);
    MEMORY[0x1DA6EC100](v2);
    sub_1D5614E28();
    v3 = MusicSiriRepresentation.Kind.rawValue.getter();
    OUTLINED_FUNCTION_4_23(v3, v4);
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614E28();
    sub_1D5614E28();
  }

  type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  sub_1D560D838();
  OUTLINED_FUNCTION_1_37();
  sub_1D4FBA86C(v5, v6, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();

  return sub_1D5614E28();
}

uint64_t MusicSiriRepresentation.ParsedIdentifiers.hashValue.getter()
{
  sub_1D56162D8();
  v1 = *v0;
  if (v0[4])
  {
    MEMORY[0x1DA6EC0D0](1);
    MEMORY[0x1DA6EC100](v1);
    sub_1D5614E28();
    MusicSiriRepresentation.Kind.rawValue.getter();
    sub_1D5614E28();
  }

  else
  {
    MEMORY[0x1DA6EC0D0](0);
    sub_1D5614E28();
    sub_1D5614E28();
  }

  type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
  sub_1D560D838();
  OUTLINED_FUNCTION_1_37();
  sub_1D4FBA86C(v2, v3, MEMORY[0x1E6974F68]);
  sub_1D5614CB8();
  sub_1D5614E28();
  return sub_1D5616328();
}

uint64_t sub_1D4FBA128(uint64_t a1)
{
  sub_1D56162D8();
  MusicSiriRepresentation.ParsedIdentifiers.hash(into:)(v2);
  return sub_1D5616328();
}

unint64_t MusicSiriRepresentation.ParsedIdentifiers.description.getter()
{
  MEMORY[0x1DA6EAC70](0x203A44496E69616DLL, 0xE800000000000000);
  sub_1D5615D48();
  MEMORY[0x1DA6EAC70](0, 0xE000000000000000);

  MEMORY[0x1DA6EAC70](41, 0xE100000000000000);
  return 0xD00000000000002ALL;
}

uint64_t static MusicSiriRepresentation.parse(_:includeExtendedIdentifierSet:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  HIDWORD(v49) = a3;
  v47 = a4;
  v6 = sub_1D560C448();
  MEMORY[0x1EEE9AC00](v6 - 8);
  OUTLINED_FUNCTION_5();
  v50 = v8 - v7;
  v9 = sub_1D560C468();
  OUTLINED_FUNCTION_4();
  v51 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  sub_1D560D838();
  OUTLINED_FUNCTION_4();
  v45 = v16;
  v46 = v15;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v48 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v45 - v20;
  v22 = sub_1D560BC78();
  OUTLINED_FUNCTION_4();
  v24 = v23;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_5();
  v28 = v27 - v26;
  sub_1D560BC48();
  if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
  {
    sub_1D4FBA684(v21);
    sub_1D560C438();
    sub_1D4FBA6EC(MEMORY[0x1E69E7CC0]);
    sub_1D4FBA86C(&qword_1EC7ECE80, MEMORY[0x1E6969C20], MEMORY[0x1E6969C18]);
    sub_1D560BE88();
    sub_1D560C458();
    (*(v51 + 8))(v14, v9);
    return swift_willThrow();
  }

  else
  {
    (*(v24 + 32))(v28, v21, v22);
    if ((v49 & 0x100000000) != 0)
    {
      v30 = v57;
      sub_1D55C4D4C();
      if (v30)
      {
        return (*(v24 + 8))(v28, v22);
      }

      else
      {
        v39 = v52;
        v38 = v53;
        LODWORD(v57) = v56;
        v40 = v48;
        sub_1D55C5FA8(v28, v31, v32, v33, v34, v35, v36, v37, v45, v46, SWORD2(v46), SBYTE6(v46), HIBYTE(v46), v47, v48, v49, v54, v55, v52, v53, v54, v55, v56);
        (*(v24 + 8))(v28, v22);
        v41 = type metadata accessor for MusicSiriRepresentation.ParsedIdentifiers(0);
        v42 = v47;
        (*(v45 + 32))(v47 + *(v41 + 20), v40, v46);
        *v42 = v39;
        *(v42 + 8) = v38;
        v43 = v51;
        *(v42 + 16) = v50;
        *(v42 + 24) = v43;
        *(v42 + 32) = v57;
        v44 = (v42 + *(v41 + 24));
        *v44 = a1;
        v44[1] = a2;
      }
    }

    else
    {
      result = sub_1D5615E08();
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1D4FBA684(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE78, &qword_1D5623540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D4FBA6EC(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE90, "6-\b");
  v2 = sub_1D5615E88();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_1D4FBA9D8(v6, &v15);
    v7 = v15;
    v8 = v16;
    result = sub_1D4FBA960(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_1D4E519A8(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D4FBA86C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4FBA8DC(uint64_t a1)
{
  result = sub_1D560D838();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D4FBA960(uint64_t a1, uint64_t a2)
{
  sub_1D56162D8();
  sub_1D5614E28();
  v4 = sub_1D5616328();

  return sub_1D4E4F548(a1, a2, v4);
}

uint64_t sub_1D4FBA9D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECE98, ":-\b");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest(uint64_t a1)
{
  result = qword_1EDD59500;
  if (!qword_1EDD59500)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D4FBAACC(uint64_t a1)
{
  sub_1D5614898();
  if (v1 <= 0x3F)
  {
    sub_1D4FBAB50(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D4FBAB50(uint64_t a1)
{
  if (!qword_1EDD527E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC7ED3F0, "r,\b");
    v1 = sub_1D56152D8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD527E8);
    }
  }
}

uint64_t sub_1D4FBABB4()
{
  v1[62] = v0;
  v2 = sub_1D560E728();
  OUTLINED_FUNCTION_22(v2);
  v1[63] = OUTLINED_FUNCTION_127();
  v3 = sub_1D560D9A8();
  OUTLINED_FUNCTION_22(v3);
  v1[64] = OUTLINED_FUNCTION_127();
  v4 = sub_1D560F148();
  v1[65] = v4;
  OUTLINED_FUNCTION_69(v4);
  v1[66] = v5;
  v1[67] = swift_task_alloc();
  v1[68] = swift_task_alloc();
  v6 = type metadata accessor for MusicCatalogTracklistIdentifiersRequest(0);
  v1[69] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[70] = OUTLINED_FUNCTION_127();
  v7 = sub_1D5613D28();
  v1[71] = v7;
  OUTLINED_FUNCTION_69(v7);
  v1[72] = v8;
  v1[73] = OUTLINED_FUNCTION_127();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA4E8, &unk_1D561C470);
  v1[74] = v9;
  OUTLINED_FUNCTION_69(v9);
  v1[75] = v10;
  v1[76] = OUTLINED_FUNCTION_127();
  v11 = type metadata accessor for Playlist.Entry.InternalItem(0);
  v1[77] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[78] = OUTLINED_FUNCTION_127();
  v12 = sub_1D560D838();
  v1[79] = v12;
  OUTLINED_FUNCTION_69(v12);
  v1[80] = v13;
  v1[81] = swift_task_alloc();
  v1[82] = swift_task_alloc();
  v1[83] = swift_task_alloc();
  v1[84] = swift_task_alloc();
  v1[85] = swift_task_alloc();
  v14 = sub_1D5614828();
  v1[86] = v14;
  OUTLINED_FUNCTION_69(v14);
  v1[87] = v15;
  v1[88] = OUTLINED_FUNCTION_127();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA0, &qword_1D5666390);
  v1[89] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[90] = OUTLINED_FUNCTION_127();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC450, &unk_1D5621060);
  OUTLINED_FUNCTION_22(v17);
  v1[91] = OUTLINED_FUNCTION_127();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F6A30, &qword_1D561C4C0);
  v1[92] = v18;
  OUTLINED_FUNCTION_69(v18);
  v1[93] = v19;
  v1[94] = swift_task_alloc();
  v1[95] = swift_task_alloc();
  v20 = sub_1D560DE08();
  v1[96] = v20;
  OUTLINED_FUNCTION_69(v20);
  v1[97] = v21;
  v1[98] = OUTLINED_FUNCTION_127();
  v22 = sub_1D5614898();
  v1[99] = v22;
  OUTLINED_FUNCTION_69(v22);
  v1[100] = v23;
  v1[101] = OUTLINED_FUNCTION_127();
  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v24, v25, v26);
}

uint64_t sub_1D4FBAFD0()
{
  v1 = v0[98];
  v2 = v0[97];
  v3 = v0[96];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA1B0, &qword_1D561C800);
  v4 = swift_allocObject();
  v0[102] = v4;
  *(v4 + 16) = xmmword_1D561EAC0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEA8, &qword_1D563A170);
  *(v4 + 32) = sub_1D560D208();
  (*(v2 + 104))(v1, *MEMORY[0x1E69750B0], v3);
  v5 = swift_task_alloc();
  v0[103] = v5;
  v6 = sub_1D4FBC9E0(qword_1EDD52A80, MEMORY[0x1E69773E0], MEMORY[0x1E6977400]);
  *v5 = v0;
  v5[1] = sub_1D4FBB154;
  v7 = v0[101];
  v8 = v0[99];
  v9 = v0[98];
  v10 = MEMORY[0x1E69773A0];
  v11 = MEMORY[0x1E6977378];

  return MEMORY[0x1EEDCF240](v7, v4, v9, v8, v10, v11, v6);
}

uint64_t sub_1D4FBB154()
{
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v5 = v4[98];
  v6 = v4[97];
  v7 = v4[96];
  v8 = *v1;
  OUTLINED_FUNCTION_8();
  *v9 = v8;
  *(v10 + 832) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1D4FBB2DC(uint64_t a1)
{
  v61 = v1 + 52;
  v2 = v1[92];
  v3 = v1[91];
  sub_1D5614858();
  if (__swift_getEnumTagSinglePayload(v3, 1, v2) == 1)
  {
    v4 = v1[92];
    v5 = v1[91];
    sub_1D560D9F8();
    if (__swift_getEnumTagSinglePayload(v5, 1, v4) != 1)
    {
      sub_1D4E765C8(v1[91], &qword_1EC7EC450, &unk_1D5621060);
    }
  }

  else
  {
    (*(v1[93] + 32))(v1[95], v1[91], v1[92]);
  }

  v60 = v1 + 47;
  v6 = v1[90];
  v7 = v1[89];
  v8 = v1[87];
  (*(v1[93] + 16))(v1[94], v1[95], v1[92]);
  v62 = v1;
  sub_1D4E62A60(&qword_1EDD53B90, &unk_1EC7F6A30, &qword_1D561C4C0, MEMORY[0x1E6975008]);
  sub_1D5614F98();
  v9 = *(v7 + 36);
  OUTLINED_FUNCTION_14_1();
  v10 = v6;
  v11 = v62;
  sub_1D4E62A60(v12, &unk_1EC7F6A30, &qword_1D561C4C0, v13);
  v14 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    sub_1D5615648();
    if (*(v10 + v9) == v11[60])
    {
      break;
    }

    v15 = v11[88];
    v16 = v11[86];
    v63 = v14;
    v17 = v11[78];
    v18 = sub_1D5615688();
    (*(v8 + 16))(v15);
    v18(v61, 0);
    sub_1D5615658();
    Playlist.Entry.internalItem.getter();
    sub_1D4FBC9E0(&qword_1EDD52B40, type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
    sub_1D560EC98();
    v19 = v17;
    v14 = v63;
    sub_1D4FBCEB4(v19, type metadata accessor for Playlist.Entry.InternalItem);
    (*(v8 + 8))(v15, v16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F00554();
      v14 = v24;
    }

    v20 = *(v14 + 16);
    v11 = v62;
    if (v20 >= *(v14 + 24) >> 1)
    {
      sub_1D4F00554();
      v14 = v25;
    }

    *(v14 + 16) = v20 + 1;
    OUTLINED_FUNCTION_6_29();
    (*(v23 + 32))(v21 + v22 * v20);
  }

  v26 = v11[62];
  sub_1D4E765C8(v11[90], &qword_1EC7ECEA0, &qword_1D5666390);
  sub_1D52B5A20();
  v28 = v27;
  v11[105] = v27;
  v29 = *(v26 + *(type metadata accessor for MusicLibraryPlaylistDuplicateItemsRequest(0) + 20));
  sub_1D4ECCD9C(v29, (v11 + 7));
  if (!v11[10])
  {
    v37 = &unk_1EC7ECEB0;
    v38 = &unk_1D56236F0;
    v39 = (v11 + 7);
    goto LABEL_20;
  }

  sub_1D4E48324((v11 + 7), (v11 + 2));
  sub_1D4E628D4((v11 + 2), (v11 + 42));
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECEB8, &qword_1D56236F8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(v11 + 2);
    v60[4] = 0;
    *v60 = 0u;
    *(v60 + 1) = 0u;
    v37 = &unk_1EC7ECEC0;
    v38 = &unk_1D5623700;
    v39 = v60;
LABEL_20:
    sub_1D4E765C8(v39, v37, v38);
    v40 = *(v29 + 16);
    v41 = MEMORY[0x1E69E7CC0];
    if (v40)
    {
      v64 = v28;
      v65 = MEMORY[0x1E69E7CC0];
      sub_1D4F03EEC(0, v40, 0);
      v41 = v65;
      v42 = v29 + 32;
      do
      {
        sub_1D4E628D4(v42, (v11 + 12));
        sub_1D4E628D4((v11 + 12), (v11 + 22));
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7ED3F0, "r,\b");
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC518, &unk_1D5623450);
        if (swift_dynamicCast())
        {
          sub_1D4E48324((v11 + 27), (v11 + 17));
          __swift_project_boxed_opaque_existential_1(v62 + 17, v11[20]);
          OUTLINED_FUNCTION_201();
          v11 = v62;
          sub_1D560D078();
          __swift_project_boxed_opaque_existential_1(v11 + 32, v11[35]);
          sub_1D560EC98();
          __swift_destroy_boxed_opaque_existential_1(v62 + 32);
          __swift_destroy_boxed_opaque_existential_1(v62 + 17);
        }

        else
        {
          v11[31] = 0;
          *(v11 + 29) = 0u;
          *(v11 + 27) = 0u;
          sub_1D4E765C8((v11 + 27), &qword_1EC7EC520, &unk_1D5621050);
          __swift_project_boxed_opaque_existential_1(v11 + 12, v11[15]);
          OUTLINED_FUNCTION_14_19();
        }

        __swift_destroy_boxed_opaque_existential_1(v11 + 12);
        v44 = *(v65 + 16);
        v43 = *(v65 + 24);
        if (v44 >= v43 >> 1)
        {
          sub_1D4F03EEC(v43 > 1, v44 + 1, 1);
        }

        *(v65 + 16) = v44 + 1;
        OUTLINED_FUNCTION_6_29();
        (*(v47 + 32))(v45 + v46 * v44);
        v42 += 40;
        --v40;
      }

      while (v40);
      v28 = v64;
    }

    v48 = v11[95];
    v49 = v11[93];
    v50 = v11[92];
    sub_1D4FBCA64(v41, v28);

    (*(v49 + 8))(v48, v50);
    v51 = OUTLINED_FUNCTION_201();
    v52(v51);
    OUTLINED_FUNCTION_1_38();
    OUTLINED_FUNCTION_10_28(v53);

    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_97();

    __asm { BRAA            X4, X16 }
  }

  v30 = v11[84];
  v31 = v11[80];
  v32 = v11[79];
  sub_1D4E48324(v60, (v11 + 37));
  __swift_project_boxed_opaque_existential_1(v11 + 37, v11[40]);
  OUTLINED_FUNCTION_14_19();
  v33 = sub_1D560D668();
  (*(v31 + 8))(v30, v32);
  if (v33)
  {
    __swift_project_boxed_opaque_existential_1(v11 + 37, v11[40]);
    v34 = swift_task_alloc();
    v11[106] = v34;
    *v34 = v11;
    v34[1] = sub_1D4FBBC6C;
    OUTLINED_FUNCTION_97();

    __asm { BRAA            X3, X16 }
  }

  v56 = v11[70];
  sub_1D4E628D4((v11 + 37), v56);
  _s16MusicKitInternal0A18UserProfileRequestVACycfC_0();
  *(v56 + 40) = 1;
  v57 = swift_task_alloc();
  v11[108] = v57;
  *v57 = v11;
  v57[1] = sub_1D4FBC110;
  OUTLINED_FUNCTION_97();

  return sub_1D545FBE0();
}

uint64_t sub_1D4FBBC6C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_8();
  *v5 = v4;
  *(v2 + 856) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1D4FBBD7C()
{
  swift_getKeyPath();
  OUTLINED_FUNCTION_14_1();
  v5 = sub_1D4E62A60(v1, v2, v3, v4);
  v6 = sub_1D5615618();
  if (!v6)
  {

    v8 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v7 = v6;
  v33 = MEMORY[0x1E69E7CC0];
  sub_1D4F03EEC(0, v6 & ~(v6 >> 63), 0);
  v8 = v33;
  result = sub_1D5615608();
  if ((v7 & 0x8000000000000000) == 0)
  {
    v10 = v0[72];
    v32 = (v10 + 16);
    v11 = (v10 + 8);
    do
    {
      v12 = v5;
      v13 = v0[73];
      v14 = v0[71];
      v15 = sub_1D5615688();
      (*v32)(v13);
      v15(v0 + 56, 0);
      swift_getAtKeyPath();
      (*v11)(v13, v14);
      v17 = *(v33 + 16);
      v16 = *(v33 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1D4F03EEC(v16 > 1, v17 + 1, 1);
      }

      *(v33 + 16) = v17 + 1;
      OUTLINED_FUNCTION_17_20();
      v20(v33 + v18 + *(v19 + 40) * v17);
      sub_1D5615658();
      --v7;
      v5 = v12;
    }

    while (v7);

LABEL_9:
    v21 = v0[76];
    v22 = v0[75];
    v23 = v0[74];
    sub_1D4FBCA64(v8, v0[105]);

    (*(v22 + 8))(v21, v23);
    v24 = v0[101];
    v25 = v0[100];
    v26 = v0[99];
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
    v27 = OUTLINED_FUNCTION_201();
    v28(v27);
    (*(v25 + 8))(v24, v26);
    __swift_destroy_boxed_opaque_existential_1(v0 + 37);
    OUTLINED_FUNCTION_1_38();
    OUTLINED_FUNCTION_10_28(v29);

    OUTLINED_FUNCTION_12_28();
    OUTLINED_FUNCTION_97();

    __asm { BRAA            X4, X16 }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D4FBC110()
{
  v2 = *v1;
  OUTLINED_FUNCTION_8();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 872) = v4;
  *(v2 + 880) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_57_1();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1D4FBC228()
{
  v1 = v0[109];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[66];
    v40 = MEMORY[0x1E69E7CC0];
    sub_1D4F03EEC(0, v2, 0);
    v4 = v40;
    v5 = *(v3 + 16);
    v3 += 16;
    v6 = v1 + ((*(v3 + 64) + 32) & ~*(v3 + 64));
    v34 = *(v3 + 56);
    v35 = v5;
    v33 = *MEMORY[0x1E6975060];
    v32 = (v3 - 8);
    do
    {
      v38 = v2;
      v7 = v0[68];
      v8 = v0[67];
      v9 = v0[65];
      v35(v7, v6, v9);
      v35(v8, v7, v9);
      sub_1D560D928();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7F0170, &unk_1D5634640);
      v10 = sub_1D560DB08();
      v11 = *(v10 - 8);
      v12 = v0;
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1D561C050;
      (*(v11 + 104))(v14 + v13, v33, v10);
      sub_1D560E718();
      sub_1D560D798();
      (*v32)(v7, v9);
      v16 = *(v40 + 16);
      v15 = *(v40 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D4F03EEC(v15 > 1, v16 + 1, 1);
      }

      *(v40 + 16) = v16 + 1;
      OUTLINED_FUNCTION_17_20();
      v19(v40 + v17 + *(v18 + 40) * v16);
      v6 += v34;
      v2 = v38 - 1;
      v0 = v12;
    }

    while (v38 != 1);
  }

  else
  {

    v4 = MEMORY[0x1E69E7CC0];
  }

  v20 = v0[70];
  v21 = sub_1D4FBCA64(v4, v0[105]);
  v37 = v22;
  v39 = v21;
  v36 = v23;

  OUTLINED_FUNCTION_4_24();
  sub_1D4FBCEB4(v20, v24);
  v25 = v0[101];
  v26 = v0[100];
  v27 = v0[99];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v28 = OUTLINED_FUNCTION_201();
  v29(v28);
  (*(v26 + 8))(v25, v27);
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  OUTLINED_FUNCTION_1_38();

  v30 = v0[1];

  return v30(v39, v37, v36);
}

uint64_t sub_1D4FBC658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_20_7();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4FBC754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_7_28();
  __swift_destroy_boxed_opaque_existential_1((v25 + 16));
  (*(v28 + 8))(v24, v26);
  (*(v27 + 8))(v23, v22);
  __swift_destroy_boxed_opaque_existential_1((v25 + 296));
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_20_7();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4FBC894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_19_18();
  OUTLINED_FUNCTION_7_28();
  OUTLINED_FUNCTION_4_24();
  sub_1D4FBCEB4(v29, v30);
  __swift_destroy_boxed_opaque_existential_1((v25 + 16));
  (*(v28 + 8))(v24, v26);
  (*(v27 + 8))(v23, v22);
  __swift_destroy_boxed_opaque_existential_1((v25 + 296));
  OUTLINED_FUNCTION_0_36();

  OUTLINED_FUNCTION_9_28();
  OUTLINED_FUNCTION_20_7();

  return v32(v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20, a21, a22);
}

uint64_t sub_1D4FBC9E0(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4FBCA64(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D560D838();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v51 = &v41 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v47 = *(a1 + 16);
  v41 = a1;
  if (v47)
  {
    v14 = 0;
    v15 = a2 + 56;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v56 = v17;
    v45 = (*(v16 + 64) + 32) & ~*(v16 + 64);
    v46 = a1 + v45;
    v18 = *(v16 + 56);
    v52 = (v16 - 8);
    v44 = (v16 + 16);
    v43 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
    v54 = v4;
    v55 = v16;
    v53 = v18;
    do
    {
      v49 = v14 + 1;
      v56(v13, v46 + v18 * v14, v4);
      v19 = 1 << *(a2 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(a2 + 56);
      v22 = (v19 + 63) >> 6;
      v23 = a2;

      v25 = 0;
      while (v21)
      {
        v26 = v25;
LABEL_13:
        v27 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
        v28 = v54;
        v29 = v51;
        v56(v51, *(v23 + 48) + (v27 | (v26 << 6)) * v53, v54);
        v30 = sub_1D560D528();
        v31 = *v52;
        result = (*v52)(v29, v28);
        if (v30)
        {
          a2 = v23;

          v4 = v54;
          v56(v42, v13, v54);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D4F00554();
            v43 = v39;
          }

          v32 = *(v43 + 16);
          v33 = v32 + 1;
          if (v32 >= *(v43 + 24) >> 1)
          {
            sub_1D4F00554();
            v43 = v40;
          }

          v31(v13, v4);
          v34 = v42;
          v35 = v43;
          goto LABEL_24;
        }
      }

      while (1)
      {
        v26 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
          return result;
        }

        if (v26 >= v22)
        {
          break;
        }

        v21 = *(v15 + 8 * v26);
        ++v25;
        if (v21)
        {
          v25 = v26;
          goto LABEL_13;
        }
      }

      a2 = v23;

      v4 = v54;
      v56(v48, v13, v54);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F00554();
        v50 = v37;
      }

      v32 = *(v50 + 16);
      v33 = v32 + 1;
      if (v32 >= *(v50 + 24) >> 1)
      {
        sub_1D4F00554();
        v50 = v38;
      }

      (*v52)(v13, v4);
      v35 = v50;
      v34 = v48;
LABEL_24:
      *(v35 + 16) = v33;
      v36 = v35 + v45 + v32 * v53;
      v18 = v53;
      (*v44)(v36, v34, v4);
      v14 = v49;
    }

    while (v49 != v47);
  }

  else
  {
    v43 = MEMORY[0x1E69E7CC0];
    v50 = MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1D4FBCEB4(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_4_0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t MusicSummary.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D560D838();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5610CD8();
  v8 = sub_1D560D708();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for MusicSummary(0);
  sub_1D5610D28();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t type metadata accessor for MusicSummary(uint64_t a1)
{
  result = qword_1EC7ECF10;
  if (!qword_1EC7ECF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t MusicSummary.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MusicSummary.propertyProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MusicSummary(0) + 20);
  v4 = sub_1D5611AB8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MusicSummary.year.getter()
{
  if (qword_1EC7E8A60 != -1)
  {
    OUTLINED_FUNCTION_9_29(&qword_1EC7E8A60);
  }

  OUTLINED_FUNCTION_4_25();
  sub_1D4FBE4DC(v1, v0, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v2, v0, v3);
  sub_1D560EC28();
  return v5;
}

uint64_t MusicSummary.playlistID.getter()
{
  if (qword_1EC7E8A68 != -1)
  {
    OUTLINED_FUNCTION_8_31(&qword_1EC7E8A68);
  }

  OUTLINED_FUNCTION_4_25();
  sub_1D4FBE4DC(v1, v0, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v2, v0, v3);
  sub_1D560EC28();
  return v5;
}

uint64_t static MusicSummary.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for MusicSummary(0);

  return sub_1D5611A78();
}

uint64_t MusicSummary.hash(into:)(uint64_t a1)
{
  sub_1D5614E28();
  type metadata accessor for MusicSummary(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_39();
  sub_1D4FBE4DC(v1, v2, MEMORY[0x1E6976328]);
  return sub_1D5614CB8();
}

uint64_t MusicSummary.hashValue.getter()
{
  sub_1D56162D8();
  sub_1D5614E28();
  type metadata accessor for MusicSummary(0);
  sub_1D5611AB8();
  OUTLINED_FUNCTION_1_39();
  sub_1D4FBE4DC(v0, v1, MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FBD458(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D5614E28();
  sub_1D5611AB8();
  sub_1D4FBE4DC(&qword_1EC7ECF08, MEMORY[0x1E6976320], MEMORY[0x1E6976328]);
  sub_1D5614CB8();
  return sub_1D5616328();
}

uint64_t sub_1D4FBD4FC@<X0>(uint64_t *a1@<X8>)
{
  result = MusicSummary.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t MusicSummary.subscript.getter(uint64_t a1)
{
  return sub_1D4FBD564();
}

{
  return sub_1D4FBD564();
}

uint64_t sub_1D4FBD564()
{
  OUTLINED_FUNCTION_3_26();
  sub_1D4FBE4DC(v1, v0, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_6_30(&qword_1EC7EC000);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v2, v0, v3);
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t MusicSummary.subscript.getter(void *a1)
{
  sub_1D560DAB8();
  OUTLINED_FUNCTION_3_26();
  sub_1D4FBE4DC(v2, v1, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_6_30(&qword_1EC7EC000);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v3, v1, v4);
  swift_getWitnessTable();
  OUTLINED_FUNCTION_10_3();
  return sub_1D560EC78();
}

uint64_t sub_1D4FBD754(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  v11 = sub_1D4FBE4DC(&qword_1EC7ECF20, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  *v9 = v4;
  v9[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF250](a1, a2, a3, v10, a4, v11);
}

uint64_t sub_1D4FBD888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  v13 = sub_1D4FBE4DC(&qword_1EC7ECF20, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  *v11 = v5;
  v11[1] = sub_1D4ECF4E0;

  return MEMORY[0x1EEDCF248](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D4FBD9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  v12 = sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  v13 = sub_1D4FBE4DC(&qword_1EC7ECF20, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  *v11 = v5;
  v11[1] = sub_1D4ECF3E8;

  return MEMORY[0x1EEDCF240](a1, a2, a3, a4, v12, a5, v13);
}

uint64_t sub_1D4FBDB10()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF28, &qword_1D56371F0);
  swift_getKeyPath();
  v0 = sub_1D560D188();

  qword_1EC87BE88 = v0;
  return result;
}

uint64_t sub_1D4FBDB84()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF28, &qword_1D56371F0);
  swift_getKeyPath();
  sub_1D4F89C9C();
  v0 = sub_1D560D188();

  qword_1EC87BE90 = v0;
  return result;
}

uint64_t MusicSummary.init(from:)(void *a1)
{
  type metadata accessor for MusicSummary(0);
  sub_1D4E628D4(a1, v7);
  OUTLINED_FUNCTION_5_23();
  sub_1D4FBE4DC(v3, v4, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_2_22();
  sub_1D4FBE4DC(v5, v1, &protocol conformance descriptor for CloudMusicSummary);
  OUTLINED_FUNCTION_7_29(&qword_1EC7EC040);
  sub_1D5612678();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t MusicSummary.encode(to:)(uint64_t a1)
{
  type metadata accessor for MusicSummary(0);
  OUTLINED_FUNCTION_5_23();
  sub_1D4FBE4DC(v2, v3, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_2_22();
  sub_1D4FBE4DC(v4, v1, &protocol conformance descriptor for CloudMusicSummary);
  OUTLINED_FUNCTION_7_29(&qword_1EC7EC040);
  return sub_1D5612688();
}

unint64_t MusicSummary.description.getter()
{
  sub_1D5615B68();

  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](10530, 0xE200000000000000);
  return 0xD000000000000012;
}

uint64_t MusicSummary.debugDescription.getter()
{
  strcpy(v8, "MusicSummary(");
  HIWORD(v8[1]) = -4864;
  v0 = sub_1D560EEC8();
  MEMORY[0x1DA6EAC70](v0);

  MEMORY[0x1DA6EAC70](34, 0xE100000000000000);
  MEMORY[0x1DA6EAC70](0x22203A646920200ALL, 0xE800000000000000);

  if (qword_1EC7E8A60 != -1)
  {
    OUTLINED_FUNCTION_9_29(&qword_1EC7E8A60);
  }

  sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  OUTLINED_FUNCTION_0_37();
  sub_1D4FBE4DC(v1, type metadata accessor for MusicSummary, v2);
  sub_1D560EC28();
  v3 = sub_1D56160F8();
  MEMORY[0x1DA6EAC70](v3);

  MEMORY[0x1DA6EAC70](0x7261657920200A2CLL, 0xEA0000000000203ALL);

  if (qword_1EC7E8A68 != -1)
  {
    OUTLINED_FUNCTION_8_31(&qword_1EC7E8A68);
  }

  sub_1D560EC28();
  sub_1D5615B68();

  v4 = sub_1D560EEC8();
  v6 = v5;

  MEMORY[0x1DA6EAC70](v4, v6);

  MEMORY[0x1DA6EAC70](0xD000000000000010, 0x80000001D5680950);

  MEMORY[0x1DA6EAC70](10506, 0xE200000000000000);
  return v8[0];
}

uint64_t sub_1D4FBE12C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC848, &unk_1D56239E0);
  v0 = sub_1D560D9E8();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D561C050;
  result = (*(v1 + 104))(v3 + v2, *MEMORY[0x1E6974FD0], v0);
  qword_1EC7ECEC8 = v3;
  return result;
}

uint64_t static MusicSummary.preferredIdentifierKinds.getter()
{
  if (qword_1EC7E8A70 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D4FBE278()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ECED0);
  __swift_project_value_buffer(v0, qword_1EC7ECED0);
  type metadata accessor for MusicSummary(0);
  sub_1D4FBE4DC(&qword_1EC7EC000, type metadata accessor for MusicSummary, &protocol conformance descriptor for MusicSummary);
  return sub_1D560D988();
}

uint64_t sub_1D4FBE338()
{
  v0 = sub_1D560D9A8();
  __swift_allocate_value_buffer(v0, qword_1EC7ECEE8);
  v1 = __swift_project_value_buffer(v0, qword_1EC7ECEE8);
  if (qword_1EC7E8A78 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EC7ECED0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1D4FBE4DC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D4FBE524(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_1D4F15A70(), (v3 & 1) != 0))
  {
    sub_1D4E5194C(*(a1 + 56) + 32 * v2, v7);

    if (swift_dynamicCast())
    {
      v4 = [objc_opt_self() typeForRawValue_];
      if ((v4 - 1) <= 0x13)
      {
        return byte_1D5623A3C[(v4 - 1)];
      }
    }
  }

  else
  {
  }

  return 15;
}

uint64_t sub_1D4FBE5E4(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D4FBE678;

  return MusicLibraryPlaylistDuplicateChecking.duplicateCount(for:)(v4, a2);
}

uint64_t sub_1D4FBE678(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t MusicLibraryPlaylistDuplicateChecking.duplicateCount(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1D4FBE798, 0, 0);
}

uint64_t sub_1D4FBE798()
{
  sub_1D5615B68();
  sub_1D5616138();
  MEMORY[0x1DA6EAC70](0xD000000000000035, 0x80000001D56809B0);
  return sub_1D5615E08();
}

uint64_t dispatch thunk of MusicLibraryPlaylistDuplicateChecking.duplicateCount(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D4FBE984;

  return v9(a1, a2, a3);
}

uint64_t sub_1D4FBE984(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static Playlist.extendedStorage<A, B>(cloudMusicItem:configuration:sharedRelatedItemStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v223 = a6;
  v224 = a3;
  v225 = a5;
  v222 = a2;
  v227 = a1;
  v229 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v220 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v226 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v216 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECC80, &unk_1D5622EA0);
  OUTLINED_FUNCTION_22(v17);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13_3();
  v221 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v214 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v231 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v212 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v209 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  OUTLINED_FUNCTION_22(v32);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13_3();
  v211 = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_13_3();
  v230 = v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7D8, &unk_1D561E8B0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  OUTLINED_FUNCTION_13_3();
  v217 = v40;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  v42 = OUTLINED_FUNCTION_22(v41);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_13();
  v215 = v43;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_135();
  v213 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v209 - v47;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF50, &qword_1D5623AE8);
  OUTLINED_FUNCTION_22(v49);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v209 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v53);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_13_3();
  v56 = OUTLINED_FUNCTION_29_15(v55);
  v219 = _s15InternalStorageVMa_0(v56);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_16(v58);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF60, &qword_1D5623AF8);
  OUTLINED_FUNCTION_22(v59);
  OUTLINED_FUNCTION_11();
  v61 = MEMORY[0x1EEE9AC00](v60);
  v63 = &v209 - v62;
  v64 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_5();
  v67 = v66 - v65;
  v68 = sub_1D5610588();
  OUTLINED_FUNCTION_4();
  v70 = v69;
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_5();
  v74 = v73 - v72;
  (*(v64 + 16))(v67, v227, a4);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v63, 0, 1, v68);
    v75 = *(v70 + 32);
    v210 = v68;
    v75(v74, v63, v68);
    sub_1D5610468();
    v76 = sub_1D5610458();
    OUTLINED_FUNCTION_1(v48);
    v209 = v70;
    v227 = v74;
    if (v86)
    {
      sub_1D4E50004(v48, &qword_1EC7ECF48, &qword_1D5623AE0);
      v77 = v221;
      v78 = v214;
    }

    else
    {
      sub_1D56103D8();
      OUTLINED_FUNCTION_15_1();
      (*(v82 + 8))(v48, v76);
      v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
      v84 = OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_57(v84, v85, v83);
      v78 = v214;
      if (v86)
      {
        sub_1D4E50004(v52, &qword_1EC7ECF50, &qword_1D5623AE8);
      }

      else
      {
        sub_1D560CD98();
        v87 = v217;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v88, v89, v90, v91);
        type metadata accessor for Playlist.Collaboration(0);
        sub_1D4FC1644(&qword_1EC7ECF78, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
        OUTLINED_FUNCTION_18_24();
        sub_1D4FC1644(v92, type metadata accessor for Playlist.Collaboration, v93);
        OUTLINED_FUNCTION_20_26();
        OUTLINED_FUNCTION_14_20();
        sub_1D5612368();
        sub_1D4E50004(v87, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_24_0();
        (*(v94 + 8))(v52, v83);
      }

      v77 = v221;
    }

    v95 = v211;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v96, v97, v98, v99);
    sub_1D5610518();
    v100 = sub_1D5610138();
    OUTLINED_FUNCTION_57(v31, 1, v100);
    if (v86)
    {
      v101 = &qword_1EC7ECF40;
      v102 = &unk_1D5623AC0;
      v103 = v31;
    }

    else
    {
      sub_1D5610108();
      OUTLINED_FUNCTION_24_0();
      (*(v104 + 8))(v31, v100);
      v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
      OUTLINED_FUNCTION_57(v95, 1, v105);
      if (!v106)
      {
        sub_1D560CD98();
        v107 = v95;
        v108 = v217;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v109, v110, v111, v112);
        type metadata accessor for Playlist.Collaborator(0);
        sub_1D4FC1644(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
        OUTLINED_FUNCTION_19_19();
        sub_1D4FC1644(v113, type metadata accessor for Playlist.Collaborator, v114);
        OUTLINED_FUNCTION_20_26();
        OUTLINED_FUNCTION_14_20();
        sub_1D5612368();
        sub_1D4E50004(v108, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_24_0();
        (*(v115 + 8))(v107, v105);
        goto LABEL_17;
      }

      v101 = &qword_1EC7EC8C8;
      v102 = &qword_1D5621E70;
      v103 = v95;
    }

    sub_1D4E50004(v103, v101, v102);
LABEL_17:
    v116 = v212;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v117, v118, v119, v120);
    sub_1D5610518();
    OUTLINED_FUNCTION_57(v116, 1, v100);
    if (v86)
    {
      v121 = &qword_1EC7ECF40;
      v122 = &unk_1D5623AC0;
      v123 = v116;
    }

    else
    {
      sub_1D56100E8();
      OUTLINED_FUNCTION_24_0();
      (*(v124 + 8))(v116, v100);
      v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
      OUTLINED_FUNCTION_57(v78, 1, v125);
      if (!v126)
      {
        sub_1D560CD98();
        v127 = v217;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v128, v129, v130, v131);
        type metadata accessor for SocialProfile(0);
        sub_1D4FC1644(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
        OUTLINED_FUNCTION_10_1();
        sub_1D4FC1644(v132, type metadata accessor for SocialProfile, v133);
        OUTLINED_FUNCTION_20_26();
        OUTLINED_FUNCTION_14_20();
        sub_1D5612368();
        sub_1D4E50004(v127, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_24_0();
        (*(v134 + 8))(v78, v125);
        goto LABEL_24;
      }

      v121 = &qword_1EC7EA7E0;
      v122 = &unk_1D5623AB0;
      v123 = v78;
    }

    sub_1D4E50004(v123, v121, v122);
LABEL_24:
    v135 = v220;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v136, v137, v138, v139);
    v140 = v213;
    sub_1D5610468();
    OUTLINED_FUNCTION_1(v140);
    v141 = v216;
    if (v86)
    {
      v142 = &qword_1EC7ECF48;
      v143 = &qword_1D5623AE0;
      v144 = v140;
    }

    else
    {
      sub_1D5610428();
      OUTLINED_FUNCTION_15_1();
      (*(v145 + 8))(v140, v76);
      v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
      v147 = OUTLINED_FUNCTION_95_0();
      OUTLINED_FUNCTION_57(v147, v148, v146);
      if (!v149)
      {
        sub_1D4ED3850(v222, v224, v225, v223, v150, v151, v152, v153, v215, v216, v217, v218, v219, v220, v221, v222, v223, v224, v225, v226);
        OUTLINED_FUNCTION_24_0();
        (*(v154 + 8))(v141, v146);
        goto LABEL_31;
      }

      v142 = &qword_1EC7EA798;
      v143 = &unk_1D5622EF0;
      v144 = v141;
    }

    sub_1D4E50004(v144, v142, v143);
LABEL_31:
    v155 = type metadata accessor for CuratorRelationshipProvider(0);
    OUTLINED_FUNCTION_25_26();
    __swift_storeEnumTagSinglePayload(v156, v157, v158, v155);
    v159 = v215;
    sub_1D5610468();
    OUTLINED_FUNCTION_1(v159);
    if (v86)
    {
      v160 = v77;
      v161 = &qword_1EC7ECF48;
      v162 = &qword_1D5623AE0;
      v163 = v159;
    }

    else
    {
      sub_1D56103E8();
      OUTLINED_FUNCTION_15_1();
      (*(v164 + 8))(v159, v76);
      v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v135, 1, v165);
      v160 = v77;
      if (EnumTagSinglePayload != 1)
      {
        sub_1D560CD98();
        v168 = v217;
        OUTLINED_FUNCTION_33();
        __swift_storeEnumTagSinglePayload(v169, v170, v171, v172);
        type metadata accessor for Playlist.Folder(0);
        sub_1D4FC1644(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
        OUTLINED_FUNCTION_17_21();
        sub_1D4FC1644(v173, type metadata accessor for Playlist.Folder, v174);
        OUTLINED_FUNCTION_20_26();
        sub_1D5612368();
        sub_1D4E50004(v168, &qword_1EC7EA7D8, &unk_1D561E8B0);
        OUTLINED_FUNCTION_15_1();
        (*(v175 + 8))(v135, v165);
        v167 = 0;
        goto LABEL_38;
      }

      v161 = &qword_1EC7ECF30;
      v162 = &unk_1D5623AA0;
      v163 = v135;
    }

    sub_1D4E50004(v163, v161, v162);
    v167 = 1;
LABEL_38:
    v176 = OUTLINED_FUNCTION_71();
    v178 = __swift_instantiateConcreteTypeFromMangledNameV2(v176, v177);
    v179 = v226;
    __swift_storeEnumTagSinglePayload(v226, v167, 1, v178);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
    v180 = v218;
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v181, v182, v183, v184);
    v185 = v219;
    v186 = v219[5];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v187, v188, v189, v190);
    v191 = v185[6];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v192, v193, v194, v195);
    v196 = v185[7];
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v197, v198, v199, v155);
    v200 = v185[8];
    v201 = OUTLINED_FUNCTION_71();
    __swift_instantiateConcreteTypeFromMangledNameV2(v201, v202);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v203, v204, v205, v206);
    sub_1D4E68940(v228, v180, &qword_1EC7ECF58, &qword_1D5623AF0);
    sub_1D4E68940(v230, v180 + v186, &qword_1EC7EC8D0, &unk_1D5623AD0);
    sub_1D4E68940(v231, v180 + v191, &qword_1EC7EA778, &qword_1D5622E60);
    sub_1D4E68940(v160, v180 + v196, &qword_1EC7ECC80, &unk_1D5622EA0);
    sub_1D4E68940(v179, v180 + v200, &qword_1EC7ECF38, &qword_1D562E650);
    sub_1D4FC1644(&qword_1EDD5F208, _s15InternalStorageVMa_0, &unk_1D56696C0);
    sub_1D56130F8();
    (*(v209 + 8))(v227, v210);
    sub_1D4FBFABC(v180);
    goto LABEL_39;
  }

  OUTLINED_FUNCTION_33();
  __swift_storeEnumTagSinglePayload(v79, v80, v81, v68);
  sub_1D4E50004(v63, &qword_1EC7ECF60, &qword_1D5623AF8);
LABEL_39:
  v207 = sub_1D56131D8();
  return OUTLINED_FUNCTION_23_21(v207);
}

uint64_t sub_1D4FBFABC(uint64_t a1)
{
  v2 = _s15InternalStorageVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Playlist.extendedRelationships<A, B>(_:configuration:cloudType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v204 = a6;
  v202 = a2;
  v186 = a1;
  v193 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF80, &qword_1D5623B28);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCC0, &unk_1D5623B30);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v185 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_11_3(v18);
  v203 = a4;
  v183 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_11_3(v21 - v20);
  v22 = sub_1D5610458();
  OUTLINED_FUNCTION_4();
  v194 = v23;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_16(v25);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF38, &qword_1D562E650);
  OUTLINED_FUNCTION_22(v29);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_11_3(v31);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF30, &unk_1D5623AA0);
  v33 = OUTLINED_FUNCTION_22(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_13();
  v197 = v34;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_2();
  v195 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA788, &unk_1D56223A0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v180 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA798, &unk_1D5622EF0);
  v181 = *(v41 - 8);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v180 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_135();
  v200 = v45;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  v201 = v47;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_29_15(v49);
  sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v198 = v51;
  v199 = v50;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_5();
  v54 = v53 - v52;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF58, &qword_1D5623AF0);
  OUTLINED_FUNCTION_22(v55);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v180 - v57;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF50, &qword_1D5623AE8);
  v60 = OUTLINED_FUNCTION_22(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_13();
  v196 = v61;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_13_2();
  v206 = v63;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v67 = v66;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v68);
  v70 = &v180 - v69;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF48, &qword_1D5623AE0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_13();
  v189 = v72;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_135();
  v182 = v74;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v75);
  v77 = &v180 - v76;
  (*(v67 + 16))(v70, v186, v65);
  OUTLINED_FUNCTION_57(v70, 1, AssociatedTypeWitness);
  v191 = AssociatedTypeWitness;
  if (v78)
  {
    (*(v67 + 8))(v70, v65);
    v79 = 1;
  }

  else
  {
    v79 = swift_dynamicCast() ^ 1;
  }

  __swift_storeEnumTagSinglePayload(v77, v79, 1, v22);
  sub_1D505BC94();
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B0, &unk_1D5623B00);
  OUTLINED_FUNCTION_57(v58, 1, v80);
  v192 = v44;
  if (v78)
  {
    sub_1D4E50004(v58, &qword_1EC7ECF58, &qword_1D5623AF0);
  }

  else
  {
    type metadata accessor for Playlist.Collaboration(0);
    sub_1D4FC1644(&qword_1EC7ECF78, type metadata accessor for Playlist.Collaboration, &protocol conformance descriptor for Playlist.Collaboration);
    OUTLINED_FUNCTION_18_24();
    sub_1D4FC1644(v81, type metadata accessor for Playlist.Collaboration, v82);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v83);
    sub_1D560DA98();
    v84 = OUTLINED_FUNCTION_27_13();
    v85(v84);
    OUTLINED_FUNCTION_24_0();
    (*(v86 + 8))(v58, v80);
  }

  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
  OUTLINED_FUNCTION_23_21(v87);
  sub_1D505BDF0();
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA378, &qword_1D561D140);
  OUTLINED_FUNCTION_1(v40);
  v89 = v205;
  if (v78)
  {
    sub_1D4E50004(v40, &qword_1EC7EA788, &unk_1D56223A0);
  }

  else
  {
    sub_1D5613C48();
    sub_1D4FC1644(&qword_1EC7EA7C8, MEMORY[0x1E6976DC8], MEMORY[0x1E6976DB0]);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v90);
    OUTLINED_FUNCTION_28_19();
    sub_1D560DA88();
    v91 = OUTLINED_FUNCTION_27_13();
    v92(v91);
    OUTLINED_FUNCTION_15_1();
    (*(v93 + 8))(v40, v88);
  }

  v94 = v187;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  OUTLINED_FUNCTION_23_21(v95);
  sub_1D505BF4C();
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7F19C0, &unk_1D561C4D0);
  OUTLINED_FUNCTION_1(v94);
  v97 = v195;
  v180 = v22;
  if (v78)
  {
    sub_1D4E50004(v94, &qword_1EC7ECF38, &qword_1D562E650);
    v104 = 1;
  }

  else
  {
    type metadata accessor for Playlist.Folder(0);
    sub_1D4FC1644(&qword_1EC7ECF70, type metadata accessor for Playlist.Folder, &protocol conformance descriptor for Playlist.Folder);
    OUTLINED_FUNCTION_17_21();
    sub_1D4FC1644(v98, type metadata accessor for Playlist.Folder, v99);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v100);
    OUTLINED_FUNCTION_28_19();
    sub_1D560DA98();
    v101 = OUTLINED_FUNCTION_27_13();
    v102(v101);
    OUTLINED_FUNCTION_15_1();
    (*(v103 + 8))(v94, v96);
    v104 = 0;
  }

  v105 = v201;
  v106 = v97;
  v107 = v188;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10);
  __swift_storeEnumTagSinglePayload(v106, v104, 1, v108);
  sub_1D505C0A8();
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_1(v107);
  if (v78)
  {
    sub_1D4E50004(v107, &qword_1EC7EA778, &qword_1D5622E60);
    v114 = 1;
  }

  else
  {
    type metadata accessor for SocialProfile(0);
    sub_1D4FC1644(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4FC1644(v110, type metadata accessor for SocialProfile, v111);
    OUTLINED_FUNCTION_31_16();
    sub_1D4F1ABE8(v112);
    OUTLINED_FUNCTION_28_19();
    v89 = v205;
    sub_1D560DA88();
    (*(v198 + 8))(v54, v199);
    OUTLINED_FUNCTION_15_1();
    (*(v113 + 8))(v107, v109);
    v114 = 0;
  }

  v115 = v194;
  v116 = v192;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
  __swift_storeEnumTagSinglePayload(v105, v114, 1, v117);
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC898, &qword_1D5623B20);
  OUTLINED_FUNCTION_57(v206, 1, v118);
  v119 = v106;
  if (v78 && (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110), OUTLINED_FUNCTION_1(v89), v78) && (v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF68, &unk_1D5623B10), OUTLINED_FUNCTION_57(v106, 1, v120), v78) && (OUTLINED_FUNCTION_1(v105), v78))
  {
    sub_1D4E50004(v206, &qword_1EC7ECF50, &qword_1D5623AE8);
    v121 = v191;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A8, &unk_1D5623B40);
    v122 = *(v181 + 72);
    v123 = (*(v181 + 80) + 32) & ~*(v181 + 80);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1D5620080;
    v125 = v124 + v123;
    v126 = OUTLINED_FUNCTION_95_0();
    v127 = v180;
    if (__swift_getEnumTagSinglePayload(v126, v128, v180))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7A0, &unk_1D5631110);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v129, v130, v131, v132);
    }

    else
    {
      v133 = OUTLINED_FUNCTION_1_40();
      v134(v133);
      sub_1D5610428();
      v135 = OUTLINED_FUNCTION_10_29();
      v136(v135);
    }

    sub_1D4F39AB0(v205, v125 + v122, &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D4F39AB0(v201, v125 + 2 * v122, &qword_1EC7EA798, &unk_1D5622EF0);
    v207 = v124;
    (*(v183 + 16))(v184, v202, v203);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA768, &qword_1D5623380);
    v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7B0, &qword_1D5623B50);
    sub_1D4ED37A4();
    sub_1D5612408();
    v138 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v138, v139, v127))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v140, v141, v142, v143);
    }

    else
    {
      v144 = OUTLINED_FUNCTION_1_40();
      v145(v144);
      sub_1D5610418();
      v146 = OUTLINED_FUNCTION_10_29();
      v147(v146);
    }

    sub_1D4F39AB0(v206, v196, &qword_1EC7ECF50, &qword_1D5623AE8);
    sub_1D4F39AB0(v200, v116, &qword_1EC7EA798, &unk_1D5622EF0);
    v148 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v148, v149, v127))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECCB8, &unk_1D5622ED0);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v150, v151, v152, v153);
    }

    else
    {
      v154 = OUTLINED_FUNCTION_1_40();
      v155(v154);
      sub_1D5610438();
      v156 = OUTLINED_FUNCTION_10_29();
      v157(v156);
    }

    v158 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v158, v159, v127))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD10, &unk_1D5622F10);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
    }

    else
    {
      v164 = OUTLINED_FUNCTION_1_40();
      v165(v164);
      sub_1D5610448();
      v166 = OUTLINED_FUNCTION_10_29();
      v167(v166);
    }

    sub_1D4F39AB0(v119, v197, &qword_1EC7ECF30, &unk_1D5623AA0);
    v168 = OUTLINED_FUNCTION_95_0();
    if (__swift_getEnumTagSinglePayload(v168, v169, v127))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF88, &qword_1D5623B58);
      OUTLINED_FUNCTION_33();
      __swift_storeEnumTagSinglePayload(v170, v171, v172, v173);
    }

    else
    {
      v174 = OUTLINED_FUNCTION_1_40();
      v175(v174);
      sub_1D56103F8();
      (*(v115 + 8))(v137, v127);
    }

    v121 = v191;
    v176 = v182;
    sub_1D5610408();
    sub_1D4E50004(v200, &qword_1EC7EA798, &unk_1D5622EF0);
    sub_1D4E50004(v206, &qword_1EC7ECF50, &qword_1D5623AE8);
    __swift_storeEnumTagSinglePayload(v176, 0, 1, v127);
    sub_1D4E68940(v176, v77, &qword_1EC7ECF48, &qword_1D5623AE0);
    v105 = v201;
  }

  sub_1D4F39AB0(v77, v189, &qword_1EC7ECF48, &qword_1D5623AE0);
  v177 = v193;
  v178 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v177, v178 ^ 1u, 1, v121);
  sub_1D4E50004(v105, &qword_1EC7EA798, &unk_1D5622EF0);
  sub_1D4E50004(v119, &qword_1EC7ECF30, &unk_1D5623AA0);
  sub_1D4E50004(v205, &qword_1EC7EA798, &unk_1D5622EF0);
  return sub_1D4E50004(v77, &qword_1EC7ECF48, &qword_1D5623AE0);
}

uint64_t Playlist.extendedAssociations<A, B>(_:configuration:cloudType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X4>, uint64_t a6@<X6>, uint64_t a7@<X8>)
{
  v104 = a4;
  v105 = a6;
  v103 = a2;
  v109 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECD18, &qword_1D5631040);
  OUTLINED_FUNCTION_22(v8);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13_3();
  v96 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5A8, &unk_1D5622F00);
  OUTLINED_FUNCTION_22(v11);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v95 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA778, &qword_1D5622E60);
  OUTLINED_FUNCTION_22(v14);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13_3();
  v101 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA7E0, &unk_1D5623AB0);
  v18 = OUTLINED_FUNCTION_22(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_13();
  v94 = v19;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_29_15(v21);
  sub_1D5613578();
  OUTLINED_FUNCTION_4();
  v98 = v23;
  v99 = v22;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_26_16(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8D0, &unk_1D5623AD0);
  OUTLINED_FUNCTION_22(v25);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v26);
  v28 = v91 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8C8, &qword_1D5621E70);
  v30 = OUTLINED_FUNCTION_22(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_13();
  v93 = v31;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_2();
  v102 = v33;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_1D56158D8();
  OUTLINED_FUNCTION_4();
  v37 = v36;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v91 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF40, &unk_1D5623AC0);
  OUTLINED_FUNCTION_22(v41);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v42);
  v44 = v91 - v43;
  v45 = sub_1D5610138();
  OUTLINED_FUNCTION_4();
  v107 = v46;
  MEMORY[0x1EEE9AC00](v47);
  OUTLINED_FUNCTION_13();
  v100 = v48;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_135();
  v92 = v50;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_13_2();
  v108 = v52;
  v53 = *(v37 + 16);
  v53(v40, a1, v35);
  OUTLINED_FUNCTION_57(v40, 1, AssociatedTypeWitness);
  if (v58)
  {
    (*(v37 + 8))(v40, v35);
    OUTLINED_FUNCTION_33();
    __swift_storeEnumTagSinglePayload(v54, v55, v56, v45);
LABEL_6:
    sub_1D4E50004(v44, &qword_1EC7ECF40, &unk_1D5623AC0);
    return (v53)(v109, a1, v35);
  }

  v57 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v44, v57 ^ 1u, 1, v45);
  OUTLINED_FUNCTION_1(v44);
  if (v58)
  {
    goto LABEL_6;
  }

  v91[0] = *(v107 + 32);
  v91[1] = v107 + 32;
  (v91[0])(v108, v44, v45);
  Playlist.collaborators.getter();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8E0, &qword_1D563D3C0);
  v61 = OUTLINED_FUNCTION_95_0();
  OUTLINED_FUNCTION_57(v61, v62, v60);
  if (v63)
  {
    sub_1D4E50004(v28, &qword_1EC7EC8D0, &unk_1D5623AD0);
    v69 = v106;
    v67 = v102;
  }

  else
  {
    type metadata accessor for Playlist.Collaborator(0);
    sub_1D4FC1644(&qword_1EC7EC8F8, type metadata accessor for Playlist.Collaborator, &protocol conformance descriptor for Playlist.Collaborator);
    OUTLINED_FUNCTION_19_19();
    sub_1D4FC1644(v64, type metadata accessor for Playlist.Collaborator, v65);
    v66 = v97;
    sub_1D4F1ABE8(v97);
    v67 = v102;
    sub_1D560DA98();
    (*(v98 + 8))(v66, v99);
    OUTLINED_FUNCTION_24_0();
    (*(v68 + 8))(v28, v60);
    v69 = v106;
  }

  v70 = v101;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
  OUTLINED_FUNCTION_25_26();
  __swift_storeEnumTagSinglePayload(v71, v72, v73, v74);
  sub_1D505C360();
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA5B8, &qword_1D561C4E0);
  OUTLINED_FUNCTION_57(v70, 1, v75);
  if (v58)
  {
    sub_1D4E50004(v70, &qword_1EC7EA778, &qword_1D5622E60);
  }

  else
  {
    type metadata accessor for SocialProfile(0);
    sub_1D4FC1644(&qword_1EDD57510, type metadata accessor for SocialProfile, &protocol conformance descriptor for SocialProfile);
    OUTLINED_FUNCTION_10_1();
    sub_1D4FC1644(v76, type metadata accessor for SocialProfile, v77);
    v78 = v97;
    sub_1D4F1ABE8(v97);
    sub_1D560DA98();
    (*(v98 + 8))(v78, v99);
    OUTLINED_FUNCTION_24_0();
    (*(v79 + 8))(v70, v75);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0);
  OUTLINED_FUNCTION_25_26();
  __swift_storeEnumTagSinglePayload(v80, v81, v82, v83);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC8F0, &unk_1D5621E80);
  OUTLINED_FUNCTION_57(v67, 1, v84);
  if (v58 && (v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA800, &unk_1D5622EC0), OUTLINED_FUNCTION_57(v69, 1, v85), v58))
  {
    sub_1D4E50004(v67, &qword_1EC7EC8C8, &qword_1D5621E70);
    (v91[0])(v100, v108, v45);
  }

  else
  {
    sub_1D4F39AB0(v67, v93, &qword_1EC7EC8C8, &qword_1D5621E70);
    sub_1D4F39AB0(v69, v94, &qword_1EC7EA7E0, &unk_1D5623AB0);
    v86 = v108;
    sub_1D5610128();
    sub_1D5610118();
    v87 = v92;
    sub_1D56100F8();
    (*(v107 + 8))(v86, v45);
    sub_1D4E50004(v67, &qword_1EC7EC8C8, &qword_1D5621E70);
    v88 = v91[0];
    (v91[0])(v86, v87, v45);
    v88(v100, v86, v45);
  }

  v89 = v109;
  v90 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v89, v90 ^ 1u, 1, AssociatedTypeWitness);
  return sub_1D4E50004(v69, &qword_1EC7EA7E0, &unk_1D5623AB0);
}

uint64_t sub_1D4FC1644(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_23_21(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v2, v1, 1, a1);
}

uint64_t Station._AirTime.convertToStationAirTime()()
{
  sub_1D56143D8();
  type metadata accessor for Station.AirTime(0);
  return sub_1D56143C8();
}

uint64_t sub_1D4FC1770(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 40))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D4FC17C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1D4FC1834(uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = *(a2 + 8);
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    v6 = *a1 == *a2 && v4 == v5;
    if (!v6 && (sub_1D5616168() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = *(a2 + 24);
  if (!v7)
  {
    if (!v8)
    {
      goto LABEL_19;
    }

    return 0;
  }

  if (!v8)
  {
    return 0;
  }

  v9 = a1[2] == *(a2 + 16) && v7 == v8;
  if (!v9 && (sub_1D5616168() & 1) == 0)
  {
    return 0;
  }

LABEL_19:
  if (*(a1 + 32) == 2)
  {
    if (*(a2 + 32) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v11 ^ v12) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 33) == 2)
  {
    if (*(a2 + 33) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v13 ^ v14) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 34) == 2)
  {
    if (*(a2 + 34) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v15 ^ v16) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 35) == 2)
  {
    if (*(a2 + 35) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v17 ^ v18) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 36) == 2)
  {
    if (*(a2 + 36) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v19 ^ v20) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 37) == 2)
  {
    if (*(a2 + 37) != 2)
    {
      return 0;
    }
  }

  else
  {
    result = OUTLINED_FUNCTION_39();
    if (v6 || ((v21 ^ v22) & 1) != 0)
    {
      return result;
    }
  }

  if (*(a1 + 38) == 2)
  {
    if (*(a2 + 38) != 2)
    {
      return 0;
    }

LABEL_54:
    v25 = *(a1 + 39);
    v26 = *(a2 + 39);
    if (v25 == 2)
    {
      if (v26 != 2)
      {
        return 0;
      }
    }

    else if (v26 == 2 || ((v26 ^ v25) & 1) != 0)
    {
      return 0;
    }

    return 1;
  }

  result = OUTLINED_FUNCTION_39();
  if (!v6 && ((v23 ^ v24) & 1) == 0)
  {
    goto LABEL_54;
  }

  return result;
}

uint64_t sub_1D4FC1A34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 6775156 && a2 == 0xE300000000000000;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000013 && 0x80000001D567EFA0 == a2;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000013 && 0x80000001D567EFC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x79626C6F44736168 && a2 == 0xE800000000000000;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x79626C6F44736168 && a2 == 0xED0000736F6D7441;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x79626C6F44736168 && a2 == 0xEA00000000003137;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x484453736168 && a2 == 0xE600000000000000;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6572657453736168 && a2 == 0xE90000000000006FLL;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else if (a1 == 0x6974627553736168 && a2 == 0xEC00000073656C74)
                  {

                    return 9;
                  }

                  else
                  {
                    v15 = sub_1D5616168();

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

unint64_t sub_1D4FC1D58(char a1)
{
  result = 1701667182;
  switch(a1)
  {
    case 1:
      result = 6775156;
      break;
    case 2:
      result = 0xD000000000000013;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x79626C6F44736168;
      break;
    case 7:
      result = 0x484453736168;
      break;
    case 8:
      result = 0x6572657453736168;
      break;
    case 9:
      result = 0x6974627553736168;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FC1E54(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF98, &unk_1D5623CC8);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FC2754();
  sub_1D56163D8();
  v26[2] = 0;
  sub_1D5616028();
  if (!v2)
  {
    v26[1] = 1;
    sub_1D5616028();
    v11 = v3[32];
    v26[0] = 2;
    OUTLINED_FUNCTION_2_23(v11, v26);
    v12 = v3[33];
    v25 = 3;
    OUTLINED_FUNCTION_2_23(v12, &v25);
    v13 = v3[34];
    v24 = 4;
    OUTLINED_FUNCTION_2_23(v13, &v24);
    v14 = v3[35];
    v23 = 5;
    OUTLINED_FUNCTION_2_23(v14, &v23);
    v15 = v3[36];
    v22 = 6;
    OUTLINED_FUNCTION_2_23(v15, &v22);
    v16 = v3[37];
    v21 = 7;
    OUTLINED_FUNCTION_2_23(v16, &v21);
    v17 = v3[38];
    HIBYTE(v20) = 8;
    OUTLINED_FUNCTION_2_23(v17, &v20 + 7);
    v18 = v3[39];
    BYTE6(v20) = 9;
    OUTLINED_FUNCTION_2_23(v18, &v20 + 6);
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1D4FC208C(uint64_t a1)
{
  if (*(v1 + 8))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v1 + 24))
  {
    sub_1D56162F8();
    sub_1D5614E28();
  }

  else
  {
    sub_1D56162F8();
  }

  if (*(v1 + 32) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 33) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 34) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 35) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 36) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 37) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 38) != 2)
  {
    sub_1D56162F8();
  }

  sub_1D56162F8();
  if (*(v1 + 39) != 2)
  {
    sub_1D56162F8();
  }

  return sub_1D56162F8();
}

uint64_t sub_1D4FC2238()
{
  sub_1D56162D8();
  sub_1D4FC208C(v1);
  return sub_1D5616328();
}

uint64_t sub_1D4FC2278@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECF90, &qword_1D5623CC0);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D4FC2754();
  sub_1D5616398();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v26[0]) = 0;
  v6 = sub_1D5615F38();
  v8 = v7;
  OUTLINED_FUNCTION_0_38(1);
  *&v22 = sub_1D5615F38();
  *(&v22 + 1) = v9;
  OUTLINED_FUNCTION_0_38(2);
  v36 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(3);
  v21 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(4);
  v20 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(5);
  v19 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(6);
  v18 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(7);
  v17 = sub_1D5615F48();
  OUTLINED_FUNCTION_0_38(8);
  v16 = sub_1D5615F48();
  v37 = 9;
  v10 = sub_1D5615F48();
  v11 = OUTLINED_FUNCTION_1_6();
  v12(v11);
  *&v23 = v6;
  *(&v23 + 1) = v8;
  v24 = v22;
  v13 = v36;
  LOBYTE(v25) = v36;
  BYTE1(v25) = v21;
  BYTE2(v25) = v20;
  BYTE3(v25) = v19;
  BYTE4(v25) = v18;
  BYTE5(v25) = v17;
  BYTE6(v25) = v16;
  HIBYTE(v25) = v10;
  sub_1D4FC27A8(&v23, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v26[0] = v6;
  v26[1] = v8;
  v27 = v22;
  v28 = v13;
  v29 = v21;
  v30 = v20;
  v31 = v19;
  v32 = v18;
  v33 = v17;
  v34 = v16;
  v35 = v10;
  result = sub_1D4FC27E0(v26);
  v15 = v24;
  *a2 = v23;
  *(a2 + 16) = v15;
  *(a2 + 32) = v25;
  return result;
}

uint64_t sub_1D4FC25E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FC1A34(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FC260C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4FC1D50();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FC2634(uint64_t a1)
{
  v2 = sub_1D4FC2754();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC2670(uint64_t a1)
{
  v2 = sub_1D4FC2754();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1D4FC26AC@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D4FC2278(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

uint64_t sub_1D4FC2718(uint64_t a1)
{
  sub_1D56162D8();
  sub_1D4FC208C(v2);
  return sub_1D5616328();
}

unint64_t sub_1D4FC2754()
{
  result = qword_1EDD56BD0[0];
  if (!qword_1EDD56BD0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDD56BD0);
  }

  return result;
}

uint64_t sub_1D4FC2810@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EAC18, &qword_1D561DA50);
  sub_1D5610708();
  v67[0] = v64;
  v67[1] = v65;
  v68 = v66;

  sub_1D4FC27E0(v67);
  if (*(&v64 + 1))
  {
    v2 = v64;
  }

  else
  {
    v2 = 0;
  }

  if (*(&v64 + 1))
  {
    v3 = *(&v64 + 1);
  }

  else
  {
    v3 = 0xE000000000000000;
  }

  v17 = v3;
  v18 = v2;
  sub_1D5610708();
  v62[0] = v59;
  v62[1] = v60;
  v63 = v61;

  sub_1D4FC27E0(v62);
  if (*(&v60 + 1))
  {
    v4 = v60;
  }

  else
  {
    v4 = 0;
  }

  if (*(&v60 + 1))
  {
    v5 = *(&v60 + 1);
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  v15 = v5;
  v16 = v4;
  sub_1D5610708();
  v57[0] = v54;
  v57[1] = v55;
  v58 = v56;
  sub_1D4FC27E0(v57);
  v14 = v58;
  sub_1D5610708();
  v52[0] = v49;
  v52[1] = v50;
  v53 = v51;
  sub_1D4FC27E0(v52);
  v6 = BYTE1(v53);
  sub_1D5610708();
  v47[0] = v44;
  v47[1] = v45;
  v48 = v46;
  sub_1D4FC27E0(v47);
  v7 = BYTE2(v48);
  sub_1D5610708();
  v42[0] = v39;
  v42[1] = v40;
  v43 = v41;
  sub_1D4FC27E0(v42);
  v8 = BYTE3(v43);
  sub_1D5610708();
  v37[0] = v34;
  v37[1] = v35;
  v38 = v36;
  sub_1D4FC27E0(v37);
  v9 = BYTE4(v38);
  sub_1D5610708();
  v32[0] = v29;
  v32[1] = v30;
  v33 = v31;
  sub_1D4FC27E0(v32);
  v10 = BYTE5(v33);
  sub_1D5610708();
  v27[0] = v24;
  v27[1] = v25;
  v28 = v26;
  sub_1D4FC27E0(v27);
  v11 = BYTE6(v28);
  sub_1D5610708();
  v22[0] = v19;
  v22[1] = v20;
  v23 = v21;
  sub_1D4FC27E0(v22);
  v12 = HIBYTE(v23);
  result = sub_1D5610718();
  *a1 = v18;
  *(a1 + 8) = v17;
  *(a1 + 16) = v16;
  *(a1 + 24) = v15;
  *(a1 + 32) = v14 & 1;
  *(a1 + 33) = v6 & 1;
  *(a1 + 34) = v7 & 1;
  *(a1 + 35) = v8 & 1;
  *(a1 + 36) = v9 & 1;
  *(a1 + 37) = v10 & 1;
  *(a1 + 38) = v11 & 1;
  *(a1 + 39) = v12 & 1;
  *(a1 + 40) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for CloudVideoLocale.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for CloudVideoLocale.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1D4FC2C5C()
{
  result = qword_1EC7ECFA0;
  if (!qword_1EC7ECFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ECFA0);
  }

  return result;
}

unint64_t sub_1D4FC2CB4()
{
  result = qword_1EDD56BC0;
  if (!qword_1EDD56BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BC0);
  }

  return result;
}

unint64_t sub_1D4FC2D0C()
{
  result = qword_1EDD56BC8;
  if (!qword_1EDD56BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD56BC8);
  }

  return result;
}

void sub_1D4FC2D60(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v6 = (result + 48);
  v7 = *(result + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    v8 = v6 + 3;
    v9 = *v6;
    v10 = *(v6 - 8);
    v11 = *(v6 - 2);
    v12 = v10;
    v13 = v9;
    sub_1D4FC5590(&v11, a2, a3);
    v6 = v8;
  }

  while (!v3);
}

void FlexAnalysis.init<A>(_:configuration:sharedRelatedItemStore:)()
{
  OUTLINED_FUNCTION_47();
  v127 = v0;
  v128 = v1;
  v125 = v3;
  v126 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFA8, &qword_1D5623DF8);
  OUTLINED_FUNCTION_22(v6);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v8);
  sub_1D5611038();
  OUTLINED_FUNCTION_4();
  v131 = v10;
  v132 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_48(v17);
  v134 = sub_1D5611128();
  OUTLINED_FUNCTION_4();
  v136 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_2();
  v137 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFB0, &qword_1D5623E00);
  v27 = OUTLINED_FUNCTION_22(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v122 = v28;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_135();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v116 - v31;
  sub_1D5611188();
  OUTLINED_FUNCTION_4();
  v123 = v34;
  v124 = v33;
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5();
  v135 = v36 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5C0, &unk_1D56223C0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  v40 = v116 - v39;
  v41 = type metadata accessor for FlexAnalysisPropertyProvider(0);
  OUTLINED_FUNCTION_24_0();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_5();
  v45 = v44 - v43;
  if (qword_1EC7E8AF8 != -1)
  {
    swift_once();
  }

  v46 = sub_1D560D9A8();
  __swift_project_value_buffer(v46, qword_1EC7ED608);
  v47 = sub_1D56109F8();
  OUTLINED_FUNCTION_146_0(v40, v48, v49, v47);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFB8, &qword_1D5623E08);
  sub_1D56105B8();
  sub_1D4E7661C(v40, &qword_1EC7EB5C0, &unk_1D56223C0);
  v130 = v41;
  sub_1D5610658();
  v117 = sub_1D5610618();
  v52 = v51;
  v53 = sub_1D56105C8();
  v54 = sub_1D56105F8();
  v55 = sub_1D56105E8();
  v129 = v50;
  v133 = v5;
  v56 = sub_1D56105A8();
  *(v45 + 8) = 0;
  *(v45 + 16) = 0;
  *v45 = 0;
  *(v45 + 48) = 0u;
  *(v45 + 64) = 0u;
  *(v45 + 80) = 0u;
  if (qword_1EC7E9320 != -1)
  {
    swift_once();
  }

  v57 = qword_1EC87C4B0;
  if (qword_1EC87C4B0 >> 62)
  {
    sub_1D560CDE8();

    v115 = sub_1D5615E18();

    v57 = v115;
  }

  else
  {

    sub_1D56161D8();
    sub_1D560CDE8();
  }

  *(v45 + 96) = v57;
  v58 = v130;
  v59 = (v45 + *(v130 + 52));
  *v59 = v117;
  v59[1] = v52;
  *(v45 + v58[14]) = v53;
  *(v45 + v58[15]) = v54;
  *(v45 + v58[16]) = v55;
  *(v45 + v58[17]) = v56;
  v60 = v135;
  sub_1D5610648();
  v61 = v137;
  sub_1D5611138();
  sub_1D5611108();
  v62 = v136 + 8;
  v137 = *(v136 + 8);
  (v137)(v61, v134);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_43_0(v32);
  v136 = v62;
  if (v64)
  {
    sub_1D4E7661C(v32, &qword_1EC7ECFB0, &qword_1D5623E00);
    v65 = 0;
    v66 = 0;
    v67 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_27_14();
    v68 = COERCE_DOUBLE(sub_1D5611018());
    v70 = v69;
    v71 = v132;
    v72 = *(v131 + 8);
    v72(v56, v132);
    if ((v70 & 1) != 0 || v68 != -1.0)
    {
      OUTLINED_FUNCTION_27_14();
      v65 = sub_1D5611018();
      v75 = v74;
      v72(v56, v71);
      v73 = v71;
      v66 = v75 & 1;
    }

    else
    {
      v65 = 0;
      v73 = v71;
      v66 = 1;
    }

    OUTLINED_FUNCTION_15_23();
    v76 = sub_1D5610708();
    v77 = MEMORY[0x1DA6E6E10](v76);
    v72(v53, v73);
    OUTLINED_FUNCTION_24_0();
    (*(v78 + 8))(v32, v63);
    if (v77)
    {
      v67 = v77;
    }

    else
    {
      v67 = MEMORY[0x1E69E7CC0];
    }

    v60 = v135;
    v62 = v136;
  }

  v79 = v120;

  *v45 = v65;
  *(v45 + 8) = v66;
  *(v45 + 16) = v67;
  v80 = v118;
  sub_1D5611138();
  v81 = sub_1D56110C8();
  v82 = v80;
  v83 = v134;
  (v137)(v82, v134);
  if (v81)
  {
    v84 = sub_1D4FC3A98(v81);
  }

  else
  {
    v84 = 0;
  }

  v85 = v121;
  *(v45 + 24) = v84;
  OUTLINED_FUNCTION_19_20();
  sub_1D56110D8();
  v86 = OUTLINED_FUNCTION_128();
  v137(v86);
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC8, &qword_1D5623E18);
  if (__swift_getEnumTagSinglePayload(v79, 1, v87) == 1)
  {
    sub_1D4E7661C(v79, &qword_1EC7ECFA8, &qword_1D5623DF8);
    v88 = 0;
  }

  else
  {
    v88 = sub_1D4FC3C04();
    OUTLINED_FUNCTION_24_0();
    (*(v89 + 8))(v79, v87);
  }

  *(v45 + 32) = v88;
  v90 = v119;
  v91 = sub_1D5611138();
  v92 = COERCE_DOUBLE(MEMORY[0x1DA6E6EA0](v91));
  (v137)(v90, v83);
  if (v92 == 0.0)
  {
    v93 = 0;
  }

  else
  {
    v93 = sub_1D4FC3A98(*&v92);
  }

  v94 = v131;
  *(v45 + 40) = v93;
  OUTLINED_FUNCTION_19_20();
  sub_1D5611118();
  v95 = OUTLINED_FUNCTION_128();
  v137(v95);
  OUTLINED_FUNCTION_43_0(v85);
  if (v64)
  {
    sub_1D4E7661C(v85, &qword_1EC7ECFB0, &qword_1D5623E00);
    v92 = 0.0;
    v96 = 0;
    v97 = 0;
    v98 = v132;
  }

  else
  {
    OUTLINED_FUNCTION_30_11();
    sub_1D5611018();
    OUTLINED_FUNCTION_24_4();
    v99 = *(v94 + 8);
    v99(v62, v132);
    if ((v62 & 1) != 0 || v92 != -1.0)
    {
      OUTLINED_FUNCTION_30_11();
      sub_1D5611018();
      OUTLINED_FUNCTION_24_4();
      v53 = v132;
      v99(v62, v132);
      v96 = v62 & 1;
      v100 = v85;
    }

    else
    {
      v92 = 0.0;
      v96 = 1;
      v100 = v85;
      v53 = v132;
    }

    v101 = v116[4];
    v102 = sub_1D5610708();
    v97 = MEMORY[0x1DA6E6E10](v102);
    v99(v101, v53);
    OUTLINED_FUNCTION_24_0();
    (*(v103 + 8))(v100, v63);
    if (!v97)
    {
      v97 = MEMORY[0x1E69E7CC0];
    }

    v60 = v135;
    v94 = v131;
    v98 = v53;
  }

  *(v45 + 48) = v92;
  *(v45 + 56) = v96;
  *(v45 + 64) = v97;
  OUTLINED_FUNCTION_19_20();
  v104 = v122;
  sub_1D56110E8();
  v105 = OUTLINED_FUNCTION_128();
  v137(v105);
  OUTLINED_FUNCTION_43_0(v104);
  if (v64)
  {
    sub_1D4E7661C(v104, &qword_1EC7ECFB0, &qword_1D5623E00);
    v92 = 0.0;
    v106 = 0;
    v107 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_15_23();
    sub_1D5610708();
    sub_1D5611018();
    OUTLINED_FUNCTION_24_4();
    v108 = *(v94 + 8);
    v108(v53, v98);
    if ((v53 & 1) != 0 || v92 != -1.0)
    {
      OUTLINED_FUNCTION_15_23();
      sub_1D5610708();
      sub_1D5611018();
      OUTLINED_FUNCTION_24_4();
      v108(v53, v98);
      v106 = v53 & 1;
    }

    else
    {
      v92 = 0.0;
      v106 = 1;
    }

    v109 = v116[6];
    v110 = sub_1D5610708();
    v107 = MEMORY[0x1DA6E6E10](v110);
    v108(v109, v98);
    OUTLINED_FUNCTION_24_0();
    (*(v111 + 8))(v104, v63);
    if (!v107)
    {
      v107 = MEMORY[0x1E69E7CC0];
    }

    v60 = v135;
  }

  *(v45 + 72) = v92;
  *(v45 + 80) = v106;
  *(v45 + 88) = v107;
  v138[3] = v130;
  v138[4] = sub_1D4FC5CEC(&qword_1EC7ECFD0, type metadata accessor for FlexAnalysisPropertyProvider, &unk_1D56487C0);
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v138);
  sub_1D4FC5BE4(v45, boxed_opaque_existential_0);
  FlexAnalysis.init(propertyProvider:)(v138, v125);

  OUTLINED_FUNCTION_24_0();
  (*(v113 + 8))();
  OUTLINED_FUNCTION_24_0();
  (*(v114 + 8))(v133);
  (*(v123 + 8))(v60, v124);
  sub_1D4FC5C48(v45);
  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FC3A98(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1D4F03E8C(0, v1, 0);
    v2 = v19;
    v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1D8, &qword_1D561DF20) - 8);
    v5 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v15 = *(v4 + 72);
    do
    {
      sub_1D4FC4E18(v5, v16);
      v6 = v16[0];
      v7 = v16[1];
      v8 = v16[2];
      v9 = v17;
      v10 = v18;
      v19 = v2;
      v12 = *(v2 + 16);
      v11 = *(v2 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D4F03E8C((v11 > 1), v12 + 1, 1);
        v2 = v19;
      }

      *(v2 + 16) = v12 + 1;
      v13 = v2 + 40 * v12;
      *(v13 + 32) = v6;
      *(v13 + 40) = v7;
      *(v13 + 48) = v8;
      *(v13 + 56) = v9;
      *(v13 + 64) = v10;
      v5 += v15;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D4FC3C04()
{
  v1 = sub_1D56110A8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_59_0();
  v7 = v5 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v29 - v9;
  v29[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC8, &qword_1D5623E18);
  v31 = v0;
  sub_1D5610708();
  v11 = sub_1D5611088();
  v12 = *(v3 + 8);
  v29[3] = v3 + 8;
  v30 = v1;
  v13 = v1;
  v14 = v11;
  v12(v10, v13);
  v15 = *(v14 + 16);
  v29[1] = v14;
  if (v15)
  {
    v16 = 0;
    v17 = v14 + 32;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v19 = *(v17 + 8 * v16);
      v20 = sub_1D5610708();
      v21 = MEMORY[0x1DA6E6E80](v20);
      result = (v12)(v7, v30);
      if (v16 >= *(v21 + 16))
      {
        __break(1u);
        return result;
      }

      v23 = *(v21 + 8 * v16 + 32);

      if ((v23 - 300) > 0xFFFFFFFFFFFFFF9BLL)
      {
        break;
      }

      if ((v23 - 500) > 0xFFFFFFFFFFFFFF9BLL)
      {
        v24 = 1;
        goto LABEL_12;
      }

      if ((v23 - 700) > 0xFFFFFFFFFFFFFF9BLL)
      {
        v24 = 2;
        goto LABEL_12;
      }

      if ((v23 - 900) >= 0xFFFFFFFFFFFFFF9CLL)
      {
        v24 = 3;
LABEL_12:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D4F0065C();
          v18 = v27;
        }

        v25 = *(v18 + 16);
        if (v25 >= *(v18 + 24) >> 1)
        {
          sub_1D4F0065C();
          v18 = v28;
        }

        *(v18 + 16) = v25 + 1;
        v26 = v18 + 24 * v25;
        *(v26 + 32) = v19;
        *(v26 + 40) = v24;
        *(v26 + 48) = (v23 % 100) / 100.0;
      }

      if (v15 == ++v16)
      {
        goto LABEL_20;
      }
    }

    v24 = 0;
    goto LABEL_12;
  }

  v18 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v18;
}

void FlexAnalysis.convertToCloudResource<A>(configuration:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v112 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5E8, &unk_1D5623F60);
  OUTLINED_FUNCTION_22(v3);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_13_3();
  v111 = v5;
  v6 = sub_1D5610088();
  v7 = OUTLINED_FUNCTION_22(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v122 = v9 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB2E0, &unk_1D56223E0);
  OUTLINED_FUNCTION_22(v10);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13_3();
  v107 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7EEC20, &unk_1D5623F70);
  OUTLINED_FUNCTION_22(v13);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v15);
  sub_1D5612B78();
  OUTLINED_FUNCTION_4();
  v109 = v17;
  v110 = v16;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v108 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFD8, &qword_1D5623E20);
  OUTLINED_FUNCTION_22(v20);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_13_3();
  v104 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFE0, &qword_1D5623E28);
  OUTLINED_FUNCTION_22(v23);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_13_3();
  v103 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFE8, &qword_1D5623E30);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13_3();
  OUTLINED_FUNCTION_48(v28);
  sub_1D5611188();
  OUTLINED_FUNCTION_4();
  v105 = v30;
  v106 = v29;
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13();
  v120 = v31;
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_13_2();
  v121 = v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFA8, &qword_1D5623DF8);
  OUTLINED_FUNCTION_22(v34);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_13_3();
  v116 = v36;
  v37 = sub_1D5611038();
  OUTLINED_FUNCTION_4();
  v39 = v38;
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_59_0();
  MEMORY[0x1EEE9AC00](v41);
  v43 = v102 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFB0, &qword_1D5623E00);
  v45 = OUTLINED_FUNCTION_22(v44);
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_135();
  v115 = v47;
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_13_2();
  v114 = v49;
  sub_1D5611128();
  OUTLINED_FUNCTION_4();
  v118 = v51;
  v119 = v50;
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_2_2();
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_13_2();
  v117 = v53;
  if (qword_1EC7E8AB8 != -1)
  {
    swift_once();
  }

  v54 = qword_1EC87BF00;
  sub_1D4FC5CEC(&qword_1EC7ECFF0, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
  sub_1D4FC5CEC(&qword_1EC7ECFF8, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);
  OUTLINED_FUNCTION_9_30(v54, &type metadata for FlexAnalysis.SampledValues);
  v113 = v1;
  if (v124)
  {
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_11_27();
    v55 = OUTLINED_FUNCTION_5_24();
    v56(v55);
    sub_1D5614A88();
    v57 = sub_1D5614BD8();
    OUTLINED_FUNCTION_20_27(v57, v57);

    v58 = OUTLINED_FUNCTION_26_17();
    v59(v58);
  }

  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_14_21(v60);
  if (qword_1EC7E8AC0 != -1)
  {
    swift_once();
  }

  v61 = qword_1EC87BF08;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED000, &unk_1D56257F0);
  OUTLINED_FUNCTION_9_30(v61, v62);
  OUTLINED_FUNCTION_29_16();
  v102[1] = v63;

  if (qword_1EC7E8AD0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_30(qword_1EC87BF18, v62);
  OUTLINED_FUNCTION_29_16();
  v102[0] = v64;

  if (qword_1EC7E8AD8 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_30(qword_1EC87BF20, &type metadata for FlexAnalysis.SampledValues);
  if (v124)
  {
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_11_27();
    v65 = OUTLINED_FUNCTION_5_24();
    v66(v65);
    sub_1D5614A88();
    v67 = sub_1D5614BD8();
    OUTLINED_FUNCTION_20_27(v67, v67);

    v68 = OUTLINED_FUNCTION_26_17();
    v69(v68);
  }

  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_14_21(v70);
  if (qword_1EC7E8AC8 != -1)
  {
    swift_once();
  }

  v71 = qword_1EC87BF10;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED008, &qword_1D5623E38);
  OUTLINED_FUNCTION_9_30(v71, v72);
  if (v123)
  {
    v73 = v123;
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  sub_1D4FC4C18(v73);

  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC8, &qword_1D5623E18);
  OUTLINED_FUNCTION_28_20(v74);
  if (qword_1EC7E8AE0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_9_30(qword_1EC87BF28, &type metadata for FlexAnalysis.SampledValues);
  if (v124)
  {
    OUTLINED_FUNCTION_18_25();
    OUTLINED_FUNCTION_11_27();
    v75 = OUTLINED_FUNCTION_5_24();
    v76(v75);
    sub_1D5614A88();
    v77 = sub_1D5614BD8();
    OUTLINED_FUNCTION_20_27(v77, v77);

    (*(v39 + 8))(v43, v37);
  }

  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ECFC0, &qword_1D5623E10);
  OUTLINED_FUNCTION_14_21(v78);
  v79 = v117;
  sub_1D56110F8();
  (*(v118 + 16))(v102[3], v79, v119);
  v80 = sub_1D5611158();
  OUTLINED_FUNCTION_146_0(v102[4], v81, v82, v80);
  v83 = sub_1D5611148();
  OUTLINED_FUNCTION_146_0(v103, v84, v85, v83);
  v86 = sub_1D5611178();
  OUTLINED_FUNCTION_146_0(v104, v87, v88, v86);

  v89 = v121;
  OUTLINED_FUNCTION_63_1();
  sub_1D5611168();
  type metadata accessor for FlexAnalysis(0);
  sub_1D5611A28();
  v90 = sub_1D560D838();
  OUTLINED_FUNCTION_28_20(v90);
  v91 = sub_1D5611C98();
  OUTLINED_FUNCTION_146_0(v107, v92, v93, v91);
  v94 = v108;
  OUTLINED_FUNCTION_63_1();
  sub_1D5612B38();
  v96 = v105;
  v95 = v106;
  (*(v105 + 16))(v120, v89, v106);
  sub_1D5611A98();
  v97 = sub_1D5611A88();
  v115 = v98;
  v116 = v97;
  v99 = v109;
  v100 = v110;
  v101 = v111;
  (*(v109 + 16))(v111, v94, v110);
  __swift_storeEnumTagSinglePayload(v101, 0, 1, v100);
  v114 = sub_1D5611A38();
  v113 = sub_1D5611A68();
  sub_1D5611A58();
  sub_1D5611A18();
  sub_1D4FC5CEC(&qword_1EC7ED010, MEMORY[0x1E69760E0], MEMORY[0x1E69760D8]);
  sub_1D5610628();
  (*(v99 + 8))(v94, v100);
  (*(v96 + 8))(v121, v95);
  (*(v118 + 8))(v117, v119);
  OUTLINED_FUNCTION_46();
}

void sub_1D4FC4A48()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1D8, &qword_1D561DF20);
  OUTLINED_FUNCTION_4();
  v4 = v3;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - v6;
  v8 = *(v1 + 16);
  if (v8)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D4F03F44(0, v8, 0);
    v9 = v21;
    v10 = (v1 + 64);
    do
    {
      v11 = *(v10 - 3);
      v12 = *(v10 - 2);
      v13 = *(v10 - 8);
      v14 = *v10;
      v18[0] = *(v10 - 4);
      v18[1] = v11;
      v18[2] = v12;
      v19 = v13;
      v20 = v14;

      sub_1D4FC57A0(v18, v7);

      v21 = v9;
      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D4F03F44(v15 > 1, v16 + 1, 1);
        v9 = v21;
      }

      *(v9 + 16) = v16 + 1;
      (*(v4 + 32))(v9 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v16, v7, v2);
      v10 += 5;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FC4C18(uint64_t a1)
{
  v2 = sub_1D56110A8();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  v14 = MEMORY[0x1E69E7CC0];
  v15 = MEMORY[0x1E69E7CC0];
  sub_1D4FC2D60(a1, &v15, &v14);

  sub_1D5611078();
  (*(v4 + 16))(v8, v11, v2);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  (*(v4 + 8))(v11, v2);
}

uint64_t sub_1D4FC4DAC(uint64_t a1)
{
  sub_1D4FC5CEC(&qword_1EC7ED018, type metadata accessor for FlexAnalysis, &protocol conformance descriptor for FlexAnalysis);

  return sub_1D5612668();
}

uint64_t sub_1D4FC4E18@<X0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  v66 = a2;
  v3 = sub_1D5610FF8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v68 = &v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v65 = &v64 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v70 = &v64 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v64 = &v64 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v64 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v64 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB1D8, &qword_1D561DF20);
  v19 = sub_1D5610708();
  v20 = MEMORY[0x1DA6E6DB0](v19);
  v22 = *(v4 + 8);
  v21 = v4 + 8;
  v22(v17, v3);
  v23 = *(v20 + 16);

  v24 = sub_1D5610708();
  v25 = MEMORY[0x1DA6E6DD0](v24);
  v71 = v3;
  v73 = v22;
  v22(v15, v3);
  v26 = *(v25 + 16);

  if (v26 >= v23)
  {
    v27 = v23;
  }

  else
  {
    v27 = v26;
  }

  v69 = v21;
  v28 = MEMORY[0x1E69E7CC0];
  if (v27)
  {
    v29 = 4;
    v30 = a1;
    v67 = v18;
    while (1)
    {
      v31 = v28;
      v32 = v70;
      v33 = v30;
      v34 = sub_1D5610708();
      v35 = MEMORY[0x1DA6E6DB0](v34);
      v36 = v71;
      result = v73(v32, v71);
      if ((v29 - 4) >= *(v35 + 16))
      {
        break;
      }

      v72 = v27;
      v38 = *(v35 + 8 * v29);

      v39 = v68;
      v40 = sub_1D5610708();
      v41 = MEMORY[0x1DA6E6DD0](v40);
      result = v73(v39, v36);
      if ((v29 - 4) >= *(v41 + 16))
      {
        goto LABEL_18;
      }

      v42 = *(v41 + 8 * v29);

      v28 = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1D4F00980(0, *(v31 + 16) + 1, 1, v31);
        v28 = v47;
      }

      v30 = v33;
      v43 = v72;
      v45 = *(v28 + 16);
      v44 = *(v28 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D4F00980(v44 > 1, v45 + 1, 1, v28);
        v28 = v48;
      }

      *(v28 + 16) = v45 + 1;
      v46 = v28 + 16 * v45;
      *(v46 + 32) = v38;
      *(v46 + 40) = v42;
      ++v29;
      v27 = v43 - 1;
      if (!v27)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
LABEL_13:
    v49 = v64;
    sub_1D5610708();
    sub_1D5610FB8();
    v51 = v50;
    v52 = v71;
    v53 = v73;
    v73(v49, v71);

    v54 = v28;
    v55 = v70;
    sub_1D5610708();
    v68 = sub_1D5610F98();
    LODWORD(v72) = v56;
    v53(v55, v52);

    v57 = v65;
    v58 = sub_1D5610708();
    v59 = MEMORY[0x1DA6E6DC0](v58);
    result = (v53)(v57, v52);
    if (!v59 || (sub_1D4FC52B4(), v61 = v60, result = , !v61))
    {
      v61 = MEMORY[0x1E69E7CC0];
    }

    v62 = v66;
    *v66 = v51;
    v63 = v68;
    *(v62 + 1) = v54;
    *(v62 + 2) = v63;
    *(v62 + 24) = v72 & 1;
    *(v62 + 4) = v61;
  }

  return result;
}

void sub_1D4FC52B4()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D5611068();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_59_0();
  v8 = v6 - v7;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v31 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = *(v1 + 16);
  if (v15)
  {
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v18 = (v1 + ((*(v16 + 64) + 32) & ~*(v16 + 64)));
    v31 = *(v16 + 56);
    v32 = v17;
    v19 = (v16 - 8);
    v35 = v16;
    v36 = MEMORY[0x1E69E7CC0];
    v33 = v12;
    v34 = &v31 - v13;
    while (1)
    {
      v20 = v32;
      v32(v14, v18, v2);
      v20(v12, v14, v2);
      sub_1D5611048();
      sub_1D4FC5CEC(&qword_1EC7ED020, MEMORY[0x1E69760C8], MEMORY[0x1E69760D0]);
      OUTLINED_FUNCTION_128();
      v21 = sub_1D5614D18();
      v22 = *v19;
      (*v19)(v8, v2);
      if (v21)
      {
        break;
      }

      sub_1D5611058();
      OUTLINED_FUNCTION_128();
      v24 = sub_1D5614D18();
      v22(v8, v2);
      v25 = OUTLINED_FUNCTION_63_1();
      (v22)(v25);
      v22(v14, v2);
      if (v24)
      {
        goto LABEL_6;
      }

LABEL_11:
      v14 = v34;
      v18 += v31;
      --v15;
      v12 = v33;
      if (!v15)
      {
        goto LABEL_14;
      }
    }

    v23 = OUTLINED_FUNCTION_63_1();
    (v22)(v23);
    v22(v14, v2);
LABEL_6:
    v26 = v36;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D4F008C8(0, *(v26 + 16) + 1, 1, v26);
      v26 = v29;
    }

    v28 = *(v26 + 16);
    v27 = *(v26 + 24);
    if (v28 >= v27 >> 1)
    {
      sub_1D4F008C8(v27 > 1, v28 + 1, 1, v26);
      v26 = v30;
    }

    *(v26 + 16) = v28 + 1;
    v36 = v26;
    *(v26 + v28 + 32) = (v21 ^ 1) & 1;
    goto LABEL_11;
  }

  v36 = MEMORY[0x1E69E7CC0];
LABEL_14:
  OUTLINED_FUNCTION_46();
}

void sub_1D4FC5590(double *result, uint64_t *a2, uint64_t *a3)
{
  v3 = *result;
  v4 = result[2] * 100.0;
  switch(*(result + 8))
  {
    case 1:
      goto LABEL_20;
    case 2:
      goto LABEL_8;
    case 3:
      goto LABEL_14;
    default:
      if (COERCE_UNSIGNED_INT64(fabs(result[2] * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_27;
      }

      if (v4 <= -9.22337204e18)
      {
        goto LABEL_31;
      }

      if (v4 >= 9.22337204e18)
      {
        goto LABEL_35;
      }

      v7 = v4 + 200;
      if (!__OFADD__(v4, 200))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_8:
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_29:
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v7 = v4 + 600;
      if (!__OFADD__(v4, 600))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_14:
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_26;
      }

      if (v4 <= -9.22337204e18)
      {
        goto LABEL_30;
      }

      if (v4 >= 9.22337204e18)
      {
        goto LABEL_34;
      }

      v7 = v4 + 800;
      if (!__OFADD__(v4, 800))
      {
        goto LABEL_24;
      }

      __break(1u);
LABEL_20:
      if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_28;
      }

      if (v4 <= -9.22337204e18)
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      if (v4 >= 9.22337204e18)
      {
LABEL_36:
        __break(1u);
        goto LABEL_37;
      }

      v7 = v4 + 400;
      if (!__OFADD__(v4, 400))
      {
LABEL_24:
        sub_1D4EFF540();
        v8 = *(*a2 + 16);
        sub_1D4EFF788(v8);
        v9 = *a2;
        *(v9 + 16) = v8 + 1;
        *(v9 + 8 * v8 + 32) = v3;
        sub_1D4EFF4EC();
        v10 = *(*a3 + 16);
        sub_1D4EFF744();
        v11 = *a3;
        *(v11 + 16) = v10 + 1;
        *(v11 + 8 * v10 + 32) = v7;
        return;
      }

LABEL_37:
      __break(1u);
      return;
  }
}

uint64_t sub_1D4FC57A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D5610FF8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v34 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v33 = v26 - v9;
  v10 = *(a1 + 8);
  v32 = *(a1 + 16);
  v31 = *(a1 + 24);
  v11 = v10[2];
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v26[1] = *(a1 + 32);
    v27 = v6;
    v28 = a2;
    v29 = v5;
    v30 = v2;
    v35 = MEMORY[0x1E69E7CC0];
    sub_1D4F03EAC(0, v11, 0);
    v13 = v35;
    v14 = v10 + 4;
    v15 = *(v35 + 16);
    v16 = v11;
    do
    {
      v17 = *v14;
      v35 = v13;
      v18 = *(v13 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_1D4F03EAC((v18 > 1), v15 + 1, 1);
        v13 = v35;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 8 * v15 + 32) = v17;
      v14 += 2;
      ++v15;
      --v16;
    }

    while (v16);
    v35 = v12;
    sub_1D4F03EAC(0, v11, 0);
    v19 = v35;
    v20 = *(v35 + 16);
    v21 = v10 + 5;
    do
    {
      v22 = *v21;
      v35 = v19;
      v23 = *(v19 + 24);
      if (v20 >= v23 >> 1)
      {
        sub_1D4F03EAC((v23 > 1), v20 + 1, 1);
        v19 = v35;
      }

      *(v19 + 16) = v20 + 1;
      *(v19 + 8 * v20 + 32) = v22;
      v21 += 2;
      ++v20;
      --v11;
    }

    while (v11);
    v5 = v29;
    v6 = v27;
  }

  sub_1D4FC5A7C();
  v24 = v33;
  sub_1D5610FA8();
  (*(v6 + 16))(v34, v24, v5);
  sub_1D5614A88();
  sub_1D5614BD8();
  sub_1D56106F8();
  return (*(v6 + 8))(v24, v5);
}

void sub_1D4FC5A7C()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  v2 = sub_1D5611068();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = *(v1 + 16);
  if (v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D4F03F84(0, v9, 0);
    v10 = (v1 + 32);
    do
    {
      if (*v10)
      {
        sub_1D5611058();
      }

      else
      {
        sub_1D5611048();
      }

      v12 = *(v13 + 16);
      v11 = *(v13 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D4F03F84(v11 > 1, v12 + 1, 1);
      }

      *(v13 + 16) = v12 + 1;
      (*(v4 + 32))(v13 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v12, v8, v2);
      ++v10;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_46();
}

uint64_t sub_1D4FC5BE4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FlexAnalysisPropertyProvider(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D4FC5C48(uint64_t a1)
{
  v2 = type metadata accessor for FlexAnalysisPropertyProvider(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D4FC5CEC(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_20_27(uint64_t a1, uint64_t a2)
{

  return sub_1D56106F8();
}

uint64_t OUTLINED_FUNCTION_28_20(uint64_t a1)
{

  return __swift_storeEnumTagSinglePayload(v1, 0, 1, a1);
}

void static CloudTVShow.Attributes.== infix(_:_:)()
{
  OUTLINED_FUNCTION_47();
  v4 = v3;
  v6 = v5;
  v151 = sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v148 = v7;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5_0();
  v147 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v11 = OUTLINED_FUNCTION_22(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_13();
  v143 = v12;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_13_2();
  v149 = v14;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7E9FB0, &qword_1D562C590);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v144 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_13_2();
  v152 = v18;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v155 = v19;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_13_3();
  v153 = v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v23 = OUTLINED_FUNCTION_22(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_13();
  v145 = v24;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_13_2();
  v154 = v26;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC968, &unk_1D5622290);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_13();
  v146 = v28;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_13_2();
  v156 = v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v33 = v32;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_47_5();
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v35);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC330, &qword_1D56222C0);
  OUTLINED_FUNCTION_22(v37);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_16_0();
  v40 = *(v39 + 56);
  v159 = v6;
  sub_1D4F39AB0(v6, v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  sub_1D4F39AB0(v4, v1 + v40, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1, 1, v31);
  if (v41)
  {
    OUTLINED_FUNCTION_57(v1 + v40, 1, v31);
    if (v41)
    {
      sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
      goto LABEL_13;
    }

LABEL_9:
    v42 = &qword_1EC7EC330;
    v43 = &qword_1D56222C0;
    v44 = v1;
LABEL_10:
    sub_1D4E50004(v44, v42, v43);
    goto LABEL_11;
  }

  sub_1D4F39AB0(v1, v2, &qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_57(v1 + v40, 1, v31);
  if (v41)
  {
    (*(v33 + 8))(v2, v31);
    goto LABEL_9;
  }

  (*(v33 + 32))(v0, v1 + v40, v31);
  sub_1D4F39858();
  v45 = sub_1D5614D18();
  v46 = *(v33 + 8);
  v47 = OUTLINED_FUNCTION_71();
  v46(v47);
  (v46)(v2, v31);
  sub_1D4E50004(v1, &qword_1EC7EB5B8, &unk_1D56206A0);
  if ((v45 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_13:
  v48 = type metadata accessor for CloudTVShow.Attributes(0);
  OUTLINED_FUNCTION_73_6();
  if (v31)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2C07C();
    OUTLINED_FUNCTION_70_2();
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_73_6();
  if (v31)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    v49 = OUTLINED_FUNCTION_159();
    sub_1D4F2C5FC(v49, v50);
    OUTLINED_FUNCTION_70_2();
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_73_6();
  if (v31)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F28F1C();
    OUTLINED_FUNCTION_70_2();
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_73_6();
  if (v31)
  {
    if (!v0)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2D3E4();
    OUTLINED_FUNCTION_70_2();
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v0)
  {
    goto LABEL_11;
  }

  v51 = v48[9];
  v52 = *(v157 + 48);
  v53 = &unk_1D56334C0;
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v54, v55, v56, v57);
  sub_1D4F39AB0(v4 + v51, v156 + v52, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v156, 1, v158);
  if (v41)
  {
    v58 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v58, v59, v158);
    if (v41)
    {
      sub_1D4E50004(v156, &qword_1EC7EC960, &unk_1D56334C0);
      goto LABEL_43;
    }

    goto LABEL_41;
  }

  sub_1D4F39AB0(v156, v154, &qword_1EC7EC960, &unk_1D56334C0);
  v60 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v60, v61, v158);
  if (v62)
  {
    (*(v155 + 8))(v154, v158);
LABEL_41:
    v42 = &qword_1EC7EC968;
    v43 = &unk_1D5622290;
    v44 = v156;
    goto LABEL_10;
  }

  (*(v155 + 32))(v153, v156 + v52, v158);
  sub_1D4F7BF60();
  v142 = sub_1D5614D18();
  v53 = v155 + 8;
  v63 = *(v155 + 8);
  v63(v153, v158);
  v63(v154, v158);
  sub_1D4E50004(v156, &qword_1EC7EC960, &unk_1D56334C0);
  if ((v142 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_43:
  OUTLINED_FUNCTION_73_6();
  if (v53)
  {
    if (!v156)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F29174();
    OUTLINED_FUNCTION_70_2();
    if ((v53 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v156)
  {
    goto LABEL_11;
  }

  v64 = v48[11];
  v65 = (v159 + v64);
  v66 = *(v159 + v64 + 8);
  v67 = (v4 + v64);
  v68 = *(v4 + v64 + 8);
  if (v66)
  {
    if (!v68)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (*v65 != *v67)
    {
      LOBYTE(v68) = 1;
    }

    if (v68)
    {
      goto LABEL_11;
    }
  }

  v69 = v48[12];
  v70 = *(v4 + v69);
  if (*(v159 + v69))
  {
    if (!v70)
    {
      goto LABEL_11;
    }

    sub_1D4EF81E0();
    if ((v71 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v70)
  {
    goto LABEL_11;
  }

  v72 = v48[13];
  v73 = *(v159 + v72);
  v74 = *(v4 + v72);
  if (v73 == 2)
  {
    if (v74 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v74 == 2 || ((v74 ^ v73) & 1) != 0)
  {
    goto LABEL_11;
  }

  v75 = v48[14];
  v76 = *(v159 + v75);
  v77 = *(v4 + v75);
  if (v76 == 2)
  {
    if (v77 != 2)
    {
      goto LABEL_11;
    }
  }

  else if (v77 == 2 || ((v77 ^ v76) & 1) != 0)
  {
    goto LABEL_11;
  }

  v78 = *(v150 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v79, v80, v81, v82);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v83, v84, v85, v86);
  OUTLINED_FUNCTION_57(v152, 1, v151);
  if (v41)
  {
    OUTLINED_FUNCTION_57(v152 + v78, 1, v151);
    if (v41)
    {
      sub_1D4E50004(v152, &unk_1EC7E9CA8, &unk_1D561D1D0);
      goto LABEL_79;
    }

    goto LABEL_77;
  }

  sub_1D4F39AB0(v152, v149, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v87 = OUTLINED_FUNCTION_72_1();
  OUTLINED_FUNCTION_57(v87, v88, v151);
  if (v89)
  {
    (*(v148 + 8))(v149, v151);
LABEL_77:
    v42 = &qword_1EC7E9FB0;
    v43 = &qword_1D562C590;
    v44 = v152;
    goto LABEL_10;
  }

  (*(v148 + 32))(v147, v152 + v78, v151);
  OUTLINED_FUNCTION_0_39();
  sub_1D4FC6B3C(v90);
  v91 = sub_1D5614D18();
  v92 = *(v148 + 8);
  v92(v147, v151);
  v92(v149, v151);
  sub_1D4E50004(v152, &unk_1EC7E9CA8, &unk_1D561D1D0);
  if ((v91 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_79:
  v93 = v48[16];
  v94 = *(v159 + v93);
  v95 = *(v4 + v93);
  if (v94)
  {
    if (!v95)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4EF9D5C();
    OUTLINED_FUNCTION_70_2();
    if ((v94 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v95)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_62();
  if (v96)
  {
    if (!v97)
    {
      goto LABEL_11;
    }

    v100 = *v98 == *v99 && v96 == v97;
    if (!v100 && (sub_1D5616168() & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v97)
  {
    goto LABEL_11;
  }

  v101 = v48[18];
  v102 = *(v159 + v101);
  v103 = *(v4 + v101);
  if (v102)
  {
    if (!v103)
    {
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_159();
    sub_1D4F2D3E4();
    OUTLINED_FUNCTION_70_2();
    if ((v102 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  else if (v103)
  {
    goto LABEL_11;
  }

  v104 = *(v157 + 48);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v105, v106, v107, v108);
  OUTLINED_FUNCTION_8_1();
  sub_1D4F39AB0(v109, v110, v111, v112);
  OUTLINED_FUNCTION_57(v146, 1, v158);
  if (!v41)
  {
    sub_1D4F39AB0(v146, v145, &qword_1EC7EC960, &unk_1D56334C0);
    v113 = OUTLINED_FUNCTION_72_1();
    OUTLINED_FUNCTION_57(v113, v114, v158);
    if (!v115)
    {
      (*(v155 + 32))(v153, v146 + v104, v158);
      v116 = sub_1D4F7BF60();
      OUTLINED_FUNCTION_157_0(v116, v117, v118, v116);
      v119 = OUTLINED_FUNCTION_51();
      (unk_1D56334C0)(v119);
      (unk_1D56334C0)(v145, v158);
      sub_1D4E50004(v146, &qword_1EC7EC960, &unk_1D56334C0);
      if ((v146 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_108;
    }

    (*(v155 + 8))(v145, v158);
    goto LABEL_106;
  }

  OUTLINED_FUNCTION_57(v146 + v104, 1, v158);
  if (!v41)
  {
LABEL_106:
    v42 = &qword_1EC7EC968;
    v43 = &unk_1D5622290;
    v44 = v146;
    goto LABEL_10;
  }

  sub_1D4E50004(v146, &qword_1EC7EC960, &unk_1D56334C0);
LABEL_108:
  OUTLINED_FUNCTION_62();
  if (!v120)
  {
    if (v121)
    {
      goto LABEL_11;
    }

    goto LABEL_117;
  }

  if (v121)
  {
    v124 = *v122 == *v123 && v120 == v121;
    if (v124 || (sub_1D5616168() & 1) != 0)
    {
LABEL_117:
      v125 = *(v150 + 48);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v126, v127, v128, v129);
      OUTLINED_FUNCTION_8_1();
      sub_1D4F39AB0(v130, v131, v132, v133);
      OUTLINED_FUNCTION_57(v144, 1, v151);
      if (v41)
      {
        OUTLINED_FUNCTION_57(v144 + v125, 1, v151);
        if (v41)
        {
          sub_1D4E50004(v144, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_11;
        }
      }

      else
      {
        sub_1D4F39AB0(v144, v143, &unk_1EC7E9CA8, &unk_1D561D1D0);
        v134 = OUTLINED_FUNCTION_72_1();
        OUTLINED_FUNCTION_57(v134, v135, v151);
        if (!v136)
        {
          (*(v148 + 32))(v147, v144 + v125, v151);
          OUTLINED_FUNCTION_0_39();
          v138 = sub_1D4FC6B3C(v137);
          OUTLINED_FUNCTION_157_0(v138, v139, v140, v138);
          v141 = OUTLINED_FUNCTION_51();
          (unk_1D561D1D0)(v141);
          (unk_1D561D1D0)(v143, v151);
          sub_1D4E50004(v144, &unk_1EC7E9CA8, &unk_1D561D1D0);
          goto LABEL_11;
        }

        (*(v148 + 8))(v143, v151);
      }

      v42 = &qword_1EC7E9FB0;
      v43 = &qword_1D562C590;
      v44 = v144;
      goto LABEL_10;
    }
  }

LABEL_11:
  OUTLINED_FUNCTION_46();
}

unint64_t sub_1D4FC6B3C(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t sub_1D4FC6B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B726F77747261 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D5616168() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000016 && 0x80000001D5680650 == a2;
    if (v6 || (sub_1D5616168() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746964657263 && a2 == 0xE700000000000000;
      if (v7 || (sub_1D5616168() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000010 && 0x80000001D567FAC0 == a2;
        if (v8 || (sub_1D5616168() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6169726F74696465 && a2 == 0xED0000647261436CLL;
          if (v9 || (sub_1D5616168() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x6169726F74696465 && a2 == 0xEE007365746F4E6CLL;
            if (v10 || (sub_1D5616168() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x6169726F74696465 && a2 == 0xEE006F656469566CLL;
              if (v11 || (sub_1D5616168() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x4365646F73697065 && a2 == 0xEC000000746E756FLL;
                if (v12 || (sub_1D5616168() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0x6D614E65726E6567 && a2 == 0xEA00000000007365;
                  if (v13 || (sub_1D5616168() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6B34736168 && a2 == 0xE500000000000000;
                    if (v14 || (sub_1D5616168() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x4448736168 && a2 == 0xE500000000000000;
                      if (v15 || (sub_1D5616168() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0x76697372656D6D69 && a2 == 0xEC0000006C725565;
                        if (v16 || (sub_1D5616168() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000012 && 0x80000001D56809F0 == a2;
                          if (v17 || (sub_1D5616168() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 1701667182 && a2 == 0xE400000000000000;
                            if (v18 || (sub_1D5616168() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x80000001D5680A10 == a2;
                              if (v19 || (sub_1D5616168() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000013 && 0x80000001D5680670 == a2;
                                if (v20 || (sub_1D5616168() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461;
                                  if (v21 || (sub_1D5616168() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else if (a1 == 7107189 && a2 == 0xE300000000000000)
                                  {

                                    return 17;
                                  }

                                  else
                                  {
                                    v23 = sub_1D5616168();

                                    if (v23)
                                    {
                                      return 17;
                                    }

                                    else
                                    {
                                      return 18;
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
  }
}

unint64_t sub_1D4FC70E8(char a1)
{
  result = 0x6B726F77747261;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000016;
      break;
    case 2:
      result = 0x73746964657263;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
    case 5:
    case 6:
      result = 0x6169726F74696465;
      break;
    case 7:
      result = 0x4365646F73697065;
      break;
    case 8:
      result = 0x6D614E65726E6567;
      break;
    case 9:
      result = 0x6B34736168;
      break;
    case 10:
      result = 0x4448736168;
      break;
    case 11:
      result = 0x76697372656D6D69;
      break;
    case 12:
      result = 0xD000000000000012;
      break;
    case 13:
      result = 1701667182;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 16:
      result = 0x44657361656C6572;
      break;
    case 17:
      result = 7107189;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D4FC72F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D4FC6B80(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D4FC731C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1D4FC70E0();
  *a1 = result;
  return result;
}

uint64_t sub_1D4FC7344(uint64_t a1)
{
  v2 = sub_1D4FC78D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D4FC7380(uint64_t a1)
{
  v2 = sub_1D4FC78D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CloudTVShow.Attributes.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  a19 = v23;
  a20 = v24;
  v25 = v20;
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED038, &unk_1D5623EB0);
  OUTLINED_FUNCTION_4();
  v30 = v29;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_19_0();
  v32 = *(v27 + 24);
  OUTLINED_FUNCTION_62_1();
  v33 = sub_1D4FC78D4();
  OUTLINED_FUNCTION_132(&type metadata for CloudTVShow.Attributes.CodingKeys, v34, v33);
  LOBYTE(a10) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  v35 = sub_1D4F7CD24();
  OUTLINED_FUNCTION_21_0(v25, &a10, v36, v37, v35);
  if (!v21)
  {
    type metadata accessor for CloudTVShow.Attributes(0);
    OUTLINED_FUNCTION_90_5();
    OUTLINED_FUNCTION_42_2(v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v39 = sub_1D4F7CE0C();
    OUTLINED_FUNCTION_20_3(v39);
    OUTLINED_FUNCTION_42_2(v32[6]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v40 = sub_1D4FC7928();
    OUTLINED_FUNCTION_20_3(v40);
    OUTLINED_FUNCTION_42_2(v32[7]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v41 = sub_1D4FC7B20();
    OUTLINED_FUNCTION_20_3(v41);
    OUTLINED_FUNCTION_42_2(v32[8]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FC7BAC();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(a10) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    sub_1D4F7D044();
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v32[10]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v42 = sub_1D4FC7D20();
    OUTLINED_FUNCTION_20_3(v42);
    LOBYTE(a10) = 7;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616058();
    OUTLINED_FUNCTION_42_2(v32[12]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v43 = sub_1D4F88BF4(&unk_1EC7ECA00);
    OUTLINED_FUNCTION_20_3(v43);
    LOBYTE(a10) = 9;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    LOBYTE(a10) = 10;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616038();
    LOBYTE(a10) = 11;
    sub_1D560C0A8();
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v44);
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    OUTLINED_FUNCTION_42_2(v32[16]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
    v45 = sub_1D4FC7DAC(&unk_1EC7ED0A0);
    OUTLINED_FUNCTION_20_3(v45);
    LOBYTE(a10) = 13;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    OUTLINED_FUNCTION_42_2(v32[18]);
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(a10) = 15;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
    LOBYTE(a10) = 16;
    OUTLINED_FUNCTION_29_0();
    sub_1D5616028();
    LOBYTE(a10) = 17;
    OUTLINED_FUNCTION_64();
    OUTLINED_FUNCTION_63_3();
    OUTLINED_FUNCTION_29_0();
    sub_1D5616068();
  }

  (*(v30 + 8))(v22, v28);
  OUTLINED_FUNCTION_26();
}

unint64_t sub_1D4FC78D4()
{
  result = qword_1EC7ED040;
  if (!qword_1EC7ED040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED040);
  }

  return result;
}

unint64_t sub_1D4FC7928()
{
  result = qword_1EC7ED050;
  if (!qword_1EC7ED050)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED048, &unk_1D56285A0);
    sub_1D4FC79B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED050);
  }

  return result;
}

unint64_t sub_1D4FC79B4()
{
  result = qword_1EC7ED058;
  if (!qword_1EC7ED058)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED060, &qword_1D5623EC0);
    sub_1D4FC7A38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED058);
  }

  return result;
}

unint64_t sub_1D4FC7A38()
{
  result = qword_1EC7ED068;
  if (!qword_1EC7ED068)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB160, &qword_1D561DEE0);
    sub_1D4FC6B3C(&unk_1EC7ED070);
    sub_1D4FC6B3C(&unk_1EC7ED078);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED068);
  }

  return result;
}

unint64_t sub_1D4FC7B20()
{
  result = qword_1EC7EC9D8;
  if (!qword_1EC7EC9D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC480, &unk_1D56222E0);
    sub_1D4F7CD24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9D8);
  }

  return result;
}

unint64_t sub_1D4FC7BAC()
{
  result = qword_1EC7ED088;
  if (!qword_1EC7ED088)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED080, &qword_1D5623EC8);
    sub_1D4FC7C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED088);
  }

  return result;
}

unint64_t sub_1D4FC7C38()
{
  result = qword_1EC7ED090;
  if (!qword_1EC7ED090)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EBDE8, &unk_1D5623ED0);
    sub_1D4FC6B3C(&unk_1EDD56910);
    sub_1D4FC6B3C(&unk_1EDD56918);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED090);
  }

  return result;
}

unint64_t sub_1D4FC7D20()
{
  result = qword_1EC7EC9F0;
  if (!qword_1EC7EC9F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EC9E8, &qword_1D562B870);
    sub_1D4F7D1A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7EC9F0);
  }

  return result;
}

unint64_t sub_1D4FC7DAC(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7ED098, &unk_1D5623EE0);
    sub_1D4FC7E30(v4);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FC7E30(uint64_t a1)
{
  result = OUTLINED_FUNCTION_46_0(a1);
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC7EB170, &qword_1D561DEF0);
    sub_1D4FC7E94();
    sub_1D4FC7EE8();
    result = OUTLINED_FUNCTION_91_4();
    atomic_store(result, v1);
  }

  return result;
}

unint64_t sub_1D4FC7E94()
{
  result = qword_1EC7ED0B0;
  if (!qword_1EC7ED0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0B0);
  }

  return result;
}

unint64_t sub_1D4FC7EE8()
{
  result = qword_1EC7ED0B8;
  if (!qword_1EC7ED0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7ED0B8);
  }

  return result;
}

void CloudTVShow.Attributes.hash(into:)()
{
  OUTLINED_FUNCTION_47();
  v1 = v0;
  OUTLINED_FUNCTION_64_1();
  sub_1D560C0A8();
  OUTLINED_FUNCTION_4();
  v68 = v3;
  v69 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5_0();
  v67 = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v6 = OUTLINED_FUNCTION_22(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_13();
  v66 = v7;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_13_2();
  v62 = v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
  OUTLINED_FUNCTION_4();
  v65 = v11;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_13_3();
  v64 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v15 = OUTLINED_FUNCTION_22(v14);
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_13();
  v63 = v16;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v62 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
  OUTLINED_FUNCTION_4();
  v22 = v21;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v62 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v26);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62 - v28;
  sub_1D4F39AB0(v1, &v62 - v28, &qword_1EC7EB5B8, &unk_1D56206A0);
  v30 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v30, v31, v20);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    (*(v22 + 32))(v25, v29, v20);
    OUTLINED_FUNCTION_27();
    sub_1D4F395F4();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v22 + 8))(v25, v20);
  }

  v33 = type metadata accessor for CloudTVShow.Attributes(0);
  v34 = v69;
  if (*(v1 + v33[5]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F35348();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v33[6]))
  {
    OUTLINED_FUNCTION_27();
    v35 = OUTLINED_FUNCTION_141();
    sub_1D4F35BFC(v35, v36);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v33[7]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F327C4();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v33[8]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_141();
    sub_1D4F38244();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v33[9], v19, &qword_1EC7EC960, &unk_1D56334C0);
  OUTLINED_FUNCTION_57(v19, 1, v10);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v38 = v64;
    v37 = v65;
    (*(v65 + 32))(v64, v19, v10);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v37 + 8))(v38, v10);
  }

  if (*(v1 + v33[10]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F325AC();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  v39 = v1 + v33[11];
  if (*(v39 + 8) == 1)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v40 = *v39;
    OUTLINED_FUNCTION_27();
    MEMORY[0x1DA6EC0D0](v40);
  }

  if (*(v1 + v33[12]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F06928();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v33[13]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  if (*(v1 + v33[14]) != 2)
  {
    OUTLINED_FUNCTION_27();
  }

  sub_1D56162F8();
  sub_1D4F39AB0(v1 + v33[15], v62, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v41 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v41, v42, v34);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v44 = v67;
    v43 = v68;
    v45 = OUTLINED_FUNCTION_53_8();
    v46(v45);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v47);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v43 + 8))(v44, v34);
  }

  if (*(v1 + v33[16]))
  {
    OUTLINED_FUNCTION_27();
    v48 = OUTLINED_FUNCTION_24();
    sub_1D4F085A8(v48);
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v33[17] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  if (*(v1 + v33[18]))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_24();
    sub_1D4F38244();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v33[19], v63, &qword_1EC7EC960, &unk_1D56334C0);
  v49 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v49, v50, v10);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v52 = v64;
    v51 = v65;
    v53 = OUTLINED_FUNCTION_53_8();
    v54(v53);
    OUTLINED_FUNCTION_27();
    sub_1D4F88608();
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v51 + 8))(v52, v10);
  }

  if (*(v1 + v33[20] + 8))
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_128();
    sub_1D5614E28();
  }

  else
  {
    OUTLINED_FUNCTION_36();
  }

  sub_1D4F39AB0(v1 + v33[21], v66, &unk_1EC7E9CA8, &unk_1D561D1D0);
  v55 = OUTLINED_FUNCTION_35_1();
  OUTLINED_FUNCTION_57(v55, v56, v34);
  if (v32)
  {
    OUTLINED_FUNCTION_36();
  }

  else
  {
    v58 = v67;
    v57 = v68;
    v59 = OUTLINED_FUNCTION_53_8();
    v60(v59);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v61);
    OUTLINED_FUNCTION_104();
    sub_1D5614CB8();
    (*(v57 + 8))(v58, v34);
  }

  OUTLINED_FUNCTION_46();
}

void CloudTVShow.Attributes.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_25_1();
  v98 = v21;
  v23 = v22;
  v93 = v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7E9CA8, &unk_1D561D1D0);
  v26 = OUTLINED_FUNCTION_22(v25);
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_13();
  v92 = v27;
  OUTLINED_FUNCTION_23();
  MEMORY[0x1EEE9AC00](v28);
  v30 = v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC960, &unk_1D56334C0);
  v32 = OUTLINED_FUNCTION_22(v31);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v37 = v89 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EB5B8, &unk_1D56206A0);
  OUTLINED_FUNCTION_22(v38);
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v39);
  v41 = v89 - v40;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED0C0, &qword_1D5623EF0);
  OUTLINED_FUNCTION_4();
  v43 = v42;
  OUTLINED_FUNCTION_11();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_47_5();
  v97 = type metadata accessor for CloudTVShow.Attributes(0);
  OUTLINED_FUNCTION_14();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_5_0();
  v99 = v46;
  v90 = v23;
  OUTLINED_FUNCTION_62_1();
  sub_1D4FC78D4();
  v94 = v20;
  v47 = v98;
  sub_1D5616398();
  if (v47)
  {
    v98 = v47;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v53 = 0;
    v54 = 0;
    LODWORD(v55) = 0;
    LODWORD(v93) = 0;
    LODWORD(v94) = 0;
    LODWORD(v96) = 0;
  }

  else
  {
    v48 = v37;
    v95 = v30;
    v91 = v35;
    v50 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EA760, &unk_1D56222B0);
    LOBYTE(a10) = 0;
    sub_1D4F886BC();
    v51 = v96;
    sub_1D5615F78();
    v59 = v99;
    sub_1D4F39A1C(v41, v99, &qword_1EC7EB5B8, &unk_1D56206A0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9B8, &unk_1D56222D0);
    v100 = 1;
    sub_1D4F887A4();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    v60 = v97;
    *(v59 + v97[5]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED048, &unk_1D56285A0);
    v100 = 2;
    sub_1D4FCE204();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    *(v59 + v60[6]) = a10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC480, &unk_1D56222E0);
    v100 = 3;
    sub_1D4FCE3FC();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    *(v59 + v60[7]) = a10;
    v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED080, &qword_1D5623EC8);
    v100 = 4;
    v62 = v59;
    v63 = sub_1D4FCE488();
    sub_1D5615F78();
    v89[3] = v61;
    v89[4] = v63;
    *(v62 + v60[8]) = a10;
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC958, &unk_1D5622280);
    LOBYTE(a10) = 5;
    v55 = sub_1D4F88A24();
    sub_1D5615F78();
    v89[2] = v55;
    sub_1D4F39A1C(v48, v62 + v60[9], &qword_1EC7EC960, &unk_1D56334C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EC9E8, &qword_1D562B870);
    v52 = v62;
    v100 = 6;
    sub_1D4FCE5FC();
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    v89[1] = v64;
    *(v62 + v60[10]) = a10;
    OUTLINED_FUNCTION_153_0(7);
    v65 = sub_1D5615F68();
    v66 = v62 + v60[11];
    *v66 = v65;
    *(v66 + 8) = v67 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7EABD8, &unk_1D561D780);
    v100 = 8;
    sub_1D4F88BF4(&qword_1EDD52778);
    OUTLINED_FUNCTION_7_30();
    sub_1D5615F78();
    v98 = 0;
    *(v99 + v60[12]) = a10;
    OUTLINED_FUNCTION_153_0(9);
    v68 = sub_1D5615F48();
    v98 = 0;
    *(v99 + v97[13]) = v68;
    OUTLINED_FUNCTION_153_0(10);
    v54 = v94;
    v69 = sub_1D5615F48();
    v98 = 0;
    *(v99 + v97[14]) = v69;
    v53 = sub_1D560C0A8();
    LOBYTE(a10) = 11;
    OUTLINED_FUNCTION_0_39();
    sub_1D4FC6B3C(v70);
    OUTLINED_FUNCTION_83_4();
    v71 = v98;
    sub_1D5615F78();
    v98 = v71;
    if (v71)
    {
      v72 = OUTLINED_FUNCTION_20_28();
      v73(v72);
      LODWORD(v94) = 0;
      LODWORD(v96) = 0;
      v49 = 1;
      OUTLINED_FUNCTION_4_26();
      LODWORD(v93) = 1;
    }

    else
    {
      sub_1D4F39A1C(v95, v99 + v97[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7ED098, &unk_1D5623EE0);
      v100 = 12;
      sub_1D4FC7DAC(&unk_1EC7ED0E0);
      v54 = v94;
      v74 = v98;
      sub_1D5615F78();
      v98 = v74;
      if (!v74)
      {
        *(v99 + v97[16]) = a10;
        OUTLINED_FUNCTION_153_0(13);
        v77 = sub_1D5615F38();
        v98 = 0;
        v78 = (v99 + v97[17]);
        *v78 = v77;
        v78[1] = v79;
        v100 = 14;
        sub_1D5615F78();
        LODWORD(v95) = 1;
        v98 = 0;
        *(v99 + v97[18]) = a10;
        sub_1D5615F78();
        v98 = 0;
        sub_1D4F39A1C(v91, v99 + v97[19], &qword_1EC7EC960, &unk_1D56334C0);
        OUTLINED_FUNCTION_153_0(16);
        v54 = v94;
        v81 = v98;
        v82 = sub_1D5615F38();
        v98 = v81;
        if (!v81)
        {
          v86 = (v99 + v97[20]);
          *v86 = v82;
          v86[1] = v83;
          OUTLINED_FUNCTION_83_4();
          sub_1D5615F78();
          v98 = 0;
          v87 = OUTLINED_FUNCTION_20_28();
          v88(v87);
          sub_1D4F39A1C(v92, v99 + v97[21], &unk_1EC7E9CA8, &unk_1D561D1D0);
          OUTLINED_FUNCTION_14_22();
          sub_1D4FCF044();
          __swift_destroy_boxed_opaque_existential_1(v90);
          OUTLINED_FUNCTION_13_27();
          sub_1D4FCEDF8();
          goto LABEL_34;
        }

        v84 = OUTLINED_FUNCTION_20_28();
        v85(v84);
        LODWORD(v92) = 0;
        LODWORD(v91) = 1;
        __swift_destroy_boxed_opaque_existential_1(v90);
        OUTLINED_FUNCTION_4_26();
        OUTLINED_FUNCTION_69_7();
        LODWORD(v96) = v80;
        v58 = 1;
        v56 = v97;
        v57 = v99;
LABEL_6:
        sub_1D4E50004(v57, &qword_1EC7EB5B8, &unk_1D56206A0);
        if (v50)
        {
          goto LABEL_7;
        }

        goto LABEL_21;
      }

      v75 = OUTLINED_FUNCTION_20_28();
      v76(v75);
      LODWORD(v96) = 0;
      v49 = 1;
      OUTLINED_FUNCTION_4_26();
      OUTLINED_FUNCTION_69_7();
    }
  }

  v56 = v97;
  v57 = v99;
  __swift_destroy_boxed_opaque_existential_1(v90);
  if (v49)
  {
    v58 = 0;
    LODWORD(v95) = 0;
    LODWORD(v91) = 0;
    LODWORD(v92) = 0;
    goto LABEL_6;
  }

  LODWORD(v92) = 0;
  LODWORD(v91) = 0;
  LODWORD(v95) = 0;
  v58 = 0;
  if (v50)
  {
LABEL_7:

    if ((v51 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_22;
  }

LABEL_21:
  if (!v51)
  {
LABEL_8:
    if (v52)
    {
      goto LABEL_9;
    }

    goto LABEL_23;
  }

LABEL_22:

  if (v52)
  {
LABEL_9:

    if ((v53 & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_24;
  }

LABEL_23:
  if (!v53)
  {
LABEL_10:
    if (v54)
    {
      goto LABEL_11;
    }

    goto LABEL_25;
  }

LABEL_24:

  if (v54)
  {
LABEL_11:
    sub_1D4E50004(v57 + v56[9], &qword_1EC7EC960, &unk_1D56334C0);
    if ((v55 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_26;
  }

LABEL_25:
  if (!v55)
  {
LABEL_12:
    if (v93)
    {
      goto LABEL_13;
    }

    goto LABEL_27;
  }

LABEL_26:

  if (v93)
  {
LABEL_13:

    if ((v94 & 1) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_28;
  }

LABEL_27:
  if (!v94)
  {
LABEL_14:
    if (v96)
    {
      goto LABEL_15;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D4E50004(v57 + v56[15], &unk_1EC7E9CA8, &unk_1D561D1D0);
  if (v96)
  {
LABEL_15:

    if ((v58 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

LABEL_29:
  if (!v58)
  {
LABEL_16:
    if (v95)
    {
      goto LABEL_17;
    }

    goto LABEL_31;
  }

LABEL_30:

  if (v95)
  {
LABEL_17:

    if ((v91 & 1) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_32;
  }

LABEL_31:
  if (!v91)
  {
LABEL_18:
    if (!v92)
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

LABEL_32:
  sub_1D4E50004(v57 + v56[19], &qword_1EC7EC960, &unk_1D56334C0);
  if (v92)
  {
LABEL_33:
  }

LABEL_34:
  OUTLINED_FUNCTION_26();
}