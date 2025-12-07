uint64_t sub_2169A7470(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB68, &qword_21705F1C0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB70, &qword_217031000);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB78, &qword_217031008);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for AlbumTrackLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80, &unk_217031010);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AlbumTrackLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AlbumTrackLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEB70, &qword_217031000);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEB78, &qword_217031008);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C54();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB80, &unk_217031010);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for AlbumTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AlbumTrackLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for AlbumTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AlbumTrackLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEB68, &qword_21705F1C0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for AlbumTrackLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169A7F94(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB88, &qword_217031020);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB90, &qword_217031028);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB98, &qword_217031030);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for AppsWithAccessComponentModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0, &qword_217031038);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AppsWithAccessComponentModel);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for AppsWithAccessComponentModel);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEB90, &qword_217031028);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEB98, &qword_217031030);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C3C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA0, &qword_217031038);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for AppsWithAccessComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AppsWithAccessComponentModel);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for AppsWithAccessComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for AppsWithAccessComponentModel);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEB88, &qword_217031020);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for AppsWithAccessComponentModel);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169A8AB8(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBA8, &qword_217031040);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBB0, &qword_217031048);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBB8, &unk_217031050);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for BubbleLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0, &unk_21705F1D0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for BubbleLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for BubbleLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEBB0, &qword_217031048);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEBB8, &unk_217031050);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C24();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC0, &unk_21705F1D0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for BubbleLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for BubbleLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for BubbleLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for BubbleLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEBA8, &qword_217031040);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for BubbleLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169A95DC(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBC8, &qword_217031060);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBD0, &qword_217031068);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBD8, &qword_217031070);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for FlowcaseLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0, &qword_217031078);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for FlowcaseLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for FlowcaseLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEBD0, &qword_217031068);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEBD8, &qword_217031070);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15C0C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE0, &qword_217031078);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for FlowcaseLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for FlowcaseLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for FlowcaseLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for FlowcaseLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEBC8, &qword_217031060);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for FlowcaseLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

char *sub_2169AA100(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBE8, &qword_217031080);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBF0, &qword_217031088);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEBF8, &unk_217031090);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = type metadata accessor for HorizontalLockup(0);
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00, &unk_21705F1E0);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for HorizontalLockup);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for HorizontalLockup);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABEBF0, &qword_217031088);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABEBF8, &unk_217031090);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BF4();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC00, &unk_21705F1E0);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, type metadata accessor for HorizontalLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for HorizontalLockup);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, type metadata accessor for HorizontalLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for HorizontalLockup);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CABEBE8, &qword_217031080);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, type metadata accessor for HorizontalLockup);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169AAC24(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC08, &qword_2170310A0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC10, &qword_2170310A8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC18, &qword_2170310B0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for HorizontalPosterLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20, &unk_2170310B8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for HorizontalPosterLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for HorizontalPosterLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC10, &qword_2170310A8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC18, &qword_2170310B0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BDC();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC20, &unk_2170310B8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for HorizontalPosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for HorizontalPosterLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for HorizontalPosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for HorizontalPosterLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEC08, &qword_2170310A0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for HorizontalPosterLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169AB748(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB7A30, &qword_217017F30);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC28, &qword_2170310C8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC30, &qword_2170310D0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for LinkComponentModel(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38, &qword_2170310D8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for LinkComponentModel);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for LinkComponentModel);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC28, &qword_2170310C8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC30, &qword_2170310D0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BC4();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC38, &qword_2170310D8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for LinkComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for LinkComponentModel);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for LinkComponentModel);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for LinkComponentModel);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CAB7A30, &qword_217017F30);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for LinkComponentModel);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169AC26C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC40, &qword_2170310E0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC48, &qword_2170310E8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC50, &qword_2170310F0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for PlaylistTrackLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC58, &qword_2170310F8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PlaylistTrackLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PlaylistTrackLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC48, &qword_2170310E8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC50, &qword_2170310F0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15BAC();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC58, &qword_2170310F8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for PlaylistTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PlaylistTrackLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for PlaylistTrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PlaylistTrackLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEC40, &qword_2170310E0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for PlaylistTrackLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169ACD90(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC60, &qword_217031100);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC68, &qword_217031108);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC70, &unk_217031110);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for PosterLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC78, &unk_21705F1F0);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PosterLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for PosterLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEC68, &qword_217031108);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEC70, &unk_217031110);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B94();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC78, &unk_21705F1F0);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for PosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PosterLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for PosterLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for PosterLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEC60, &qword_217031100);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for PosterLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

char *sub_2169AD8B4(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC80, &qword_217031120);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC88, &qword_217031128);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC90, &qword_217031130);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = type metadata accessor for RecentSearchLockup(0);
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC98, &qword_217031138);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for RecentSearchLockup);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for RecentSearchLockup);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABEC88, &qword_217031128);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABEC90, &qword_217031130);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B7C();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEC98, &qword_217031138);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, type metadata accessor for RecentSearchLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for RecentSearchLockup);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, type metadata accessor for RecentSearchLockup);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for RecentSearchLockup);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CABEC80, &qword_217031120);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, type metadata accessor for RecentSearchLockup);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169AE3D8(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9B38, &qword_217031140);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECA0, &qword_217031148);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECA8, &unk_217031150);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SearchLandingBrickLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB0, &unk_21705F200);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SearchLandingBrickLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SearchLandingBrickLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABECA0, &qword_217031148);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABECA8, &unk_217031150);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B64();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB0, &unk_21705F200);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SearchLandingBrickLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SearchLandingBrickLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SearchLandingBrickLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SearchLandingBrickLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CAB9B38, &qword_217031140);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SearchLandingBrickLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

char *sub_2169AEEFC(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECB8, &qword_217031160);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECC0, &qword_217031168);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECC8, &qword_217031170);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = _s6LockupVMa(0);
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD0, &qword_217031178);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, _s6LockupVMa);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, _s6LockupVMa);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABECC0, &qword_217031168);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABECC8, &qword_217031170);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B4C();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD0, &qword_217031178);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, _s6LockupVMa);
        sub_216788110(v91);
        sub_2169BBB3C(v85, _s6LockupVMa);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, _s6LockupVMa);
        sub_216788110(v91);
        sub_2169BBB3C(v85, _s6LockupVMa);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CABECB8, &qword_217031160);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, _s6LockupVMa);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169AFA20(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECD8, &qword_217031180);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECE0, &qword_217031188);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECE8, &qword_217031190);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SocialCardLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF0, &qword_217031198);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialCardLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialCardLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABECE0, &qword_217031188);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABECE8, &qword_217031190);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B34();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF0, &qword_217031198);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialCardLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialCardLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialCardLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialCardLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABECD8, &qword_217031180);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialCardLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B0544(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABECF8, &qword_2170311A0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED00, &qword_2170311A8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED08, &qword_2170311B0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  FriendsPageLockup = type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
  v12 = *(FriendsPageLockup - 8);
  MEMORY[0x28223BE20](FriendsPageLockup);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = FriendsPageLockup;
  v79 = v12;
  if (v23)
  {
    v24 = *(FriendsPageLockup + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED10, &qword_2170311B8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED00, &qword_2170311A8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED08, &qword_2170311B0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B1C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED10, &qword_2170311B8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABECF8, &qword_2170311A0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialOnboardingFindFriendsPageLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B1068(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED18, &qword_2170311C0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED20, &qword_2170311C8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED28, &unk_2170311D0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SocialOnboardingSharedPlaylistLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 24);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED30, &unk_21705F210);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED20, &qword_2170311C8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED28, &unk_2170311D0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 24), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15B04();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED30, &unk_21705F210);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED18, &qword_2170311C0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialOnboardingSharedPlaylistLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B1B8C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED38, &qword_2170311E0);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED40, &qword_2170311E8);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED48, &qword_2170311F0);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SocialProfileHorizontalLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED50, &qword_2170311F8);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialProfileHorizontalLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SocialProfileHorizontalLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED40, &qword_2170311E8);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED48, &qword_2170311F0);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15AEC();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED50, &qword_2170311F8);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SocialProfileHorizontalLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialProfileHorizontalLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SocialProfileHorizontalLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SocialProfileHorizontalLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED38, &qword_2170311E0);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SocialProfileHorizontalLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B26B0(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED58, &qword_217031200);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED60, &qword_217031208);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED68, &qword_217031210);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for SquareLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 68);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED70, &unk_21705F220);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SquareLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for SquareLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED60, &qword_217031208);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABED68, &qword_217031210);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 68), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15AD4();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED70, &unk_21705F220);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for SquareLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SquareLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for SquareLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for SquareLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED58, &qword_217031200);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for SquareLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

char *sub_2169B31D4(uint64_t a1, uint64_t a2)
{
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB9868, &qword_21701E2F0);
  MEMORY[0x28223BE20](v3 - 8);
  v78 = &v76 - v4;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED78, &qword_217031218);
  MEMORY[0x28223BE20](v80);
  v81 = (&v76 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED80, &unk_217031220);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v76 - v9);
  v77 = type metadata accessor for TextListComponentModel(0);
  v11 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v82 = &v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v85 = &v76 - v14;
  MEMORY[0x28223BE20](v15);
  isUniquelyReferenced_nonNull_native = &v76 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v76 - v19;
  v21 = sub_21700E384();
  v22 = *(a2 + 16);
  v79 = v11;
  if (v22)
  {
    v23 = a2 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v24 = *(v11 + 72);
    v83 = v20;
    do
    {
      v25 = v10;
      sub_2169BBAE8();
      sub_216788294(v20, v91);
      v26 = isUniquelyReferenced_nonNull_native;
      sub_2169BBAE8();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v86 = v21;
      v27 = sub_216E68120(v91);
      if (__OFADD__(*(v21 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_56;
      }

      v29 = v27;
      v30 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED88, &unk_21705F230);
      if (sub_21700F554())
      {
        v31 = sub_216E68120(v91);
        if ((v30 & 1) != (v32 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v29 = v31;
      }

      v21 = v86;
      if (v30)
      {
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BB740();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for TextListComponentModel);
      }

      else
      {
        *(v86 + 8 * (v29 >> 6) + 64) |= 1 << v29;
        sub_216788294(v91, *(v21 + 48) + 40 * v29);
        isUniquelyReferenced_nonNull_native = v26;
        sub_2169BBB94();
        sub_216788110(v91);
        v20 = v83;
        sub_2169BBB3C(v83, type metadata accessor for TextListComponentModel);
        v33 = *(v21 + 16);
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_59;
        }

        *(v21 + 16) = v35;
      }

      v23 += v24;
      --v22;
    }

    while (v22);
  }

  v20 = v76;
  v36 = *(v76 + 16);
  sub_21700DF14();
  v37 = 0;
  isUniquelyReferenced_nonNull_native = v20;
  v38 = v80;
  v25 = v84;
  while (1)
  {
    if (v37 == v36)
    {
      v39 = 1;
      v37 = v36;
    }

    else
    {
      if (v37 >= v36)
      {
        goto LABEL_57;
      }

      if (__OFADD__(v37, 1))
      {
        goto LABEL_58;
      }

      v40 = v81;
      *v81 = v37;
      sub_2169BBAE8();
      v41 = v40;
      v25 = v84;
      sub_2167C5834(v41, v84, &qword_27CABED78, &qword_217031218);
      v39 = 0;
      ++v37;
    }

    __swift_storeEnumTagSinglePayload(v25, v39, 1, v38);
    sub_2167C5834(v25, v10, &qword_27CABED80, &unk_217031220);
    if (__swift_getEnumTagSinglePayload(v10, 1, v38) == 1)
    {
      break;
    }

    v25 = *v10;
    v42 = v85;
    sub_2169BBB94();
    sub_216788294(v42, v91);
    if (*(v21 + 16) && (sub_216E68120(v91), (v43 & 1) != 0))
    {
      sub_2169BBAE8();
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v25 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15ABC();
        isUniquelyReferenced_nonNull_native = v52;
        if ((v25 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v25 >= *(isUniquelyReferenced_nonNull_native + 2))
      {
        goto LABEL_60;
      }

      v44 = v82;
      sub_2169BB6EC();
      v45 = sub_216E68120(v91);
      if (v46)
      {
        v47 = v45;
        swift_isUniquelyReferenced_nonNull_native();
        *&v86 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED88, &unk_21705F230);
        v20 = v76;
        sub_21700F554();
        v21 = v86;
        sub_216788110(*(v86 + 48) + 40 * v47);
        v48 = v78;
        sub_2169BBB94();
        v49 = v44;
        v50 = v77;
        sub_21700F574();
        sub_2169BBB3C(v49, type metadata accessor for TextListComponentModel);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for TextListComponentModel);
        v51 = 0;
        v25 = v84;
      }

      else
      {
        sub_2169BBB3C(v44, type metadata accessor for TextListComponentModel);
        sub_216788110(v91);
        sub_2169BBB3C(v85, type metadata accessor for TextListComponentModel);
        v51 = 1;
        v48 = v78;
        v25 = v84;
        v50 = v77;
      }

      __swift_storeEnumTagSinglePayload(v48, v51, 1, v50);
      sub_216697664(v48, &qword_27CAB9868, &qword_21701E2F0);
      v38 = v80;
    }

    else
    {
      sub_216788110(v91);
      sub_2169BBB3C(v85, type metadata accessor for TextListComponentModel);
      v25 = v84;
    }
  }

  if (*(v21 + 16))
  {
    v53 = 1 << *(v21 + 32);
    v54 = -1;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    v55 = v54 & *(v21 + 64);
    v56 = (v53 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v20 = 0;
    v57 = MEMORY[0x277D84F90];
    v25 = MEMORY[0x277D837D0];
    if (v55)
    {
      goto LABEL_39;
    }

    while (1)
    {
      v58 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v58 >= v56)
      {
        v20 = isUniquelyReferenced_nonNull_native;

        *&v91[0] = v57;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        isUniquelyReferenced_nonNull_native = sub_21700E454();
        v25 = v68;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_61;
        }

        goto LABEL_49;
      }

      v55 = *(v21 + 64 + 8 * v58);
      ++v20;
      if (v55)
      {
        v20 = v58;
        do
        {
LABEL_39:
          v59 = isUniquelyReferenced_nonNull_native;
          v60 = __clz(__rbit64(v55));
          v55 &= v55 - 1;
          sub_216788294(*(v21 + 48) + 40 * (v60 | (v20 << 6)), v91);
          v86 = v91[0];
          v87 = v91[1];
          v88 = v92;
          if (swift_dynamicCast())
          {
            v61 = v90;
            if (v90)
            {
              v85 = v89;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_21693776C();
                v57 = v65;
              }

              v62 = *(v57 + 16);
              v63 = v62 + 1;
              if (v62 >= *(v57 + 24) >> 1)
              {
                v84 = v62 + 1;
                v66 = v62;
                sub_21693776C();
                v63 = v84;
                v62 = v66;
                v57 = v67;
              }

              *(v57 + 16) = v63;
              v64 = v57 + 16 * v62;
              *(v64 + 32) = v85;
              *(v64 + 40) = v61;
            }
          }

          isUniquelyReferenced_nonNull_native = v59;
        }

        while (v55);
      }
    }

LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    swift_once();
LABEL_49:
    v69 = sub_217007CA4();
    __swift_project_value_buffer(v69, qword_27CABEB28);
    sub_21700DF14();
    v70 = sub_217007C84();
    v71 = sub_21700ED84();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      *&v91[0] = v73;
      *v72 = 136446210;
      v74 = sub_2166A85FC(isUniquelyReferenced_nonNull_native, v25, v91);

      *(v72 + 4) = v74;
      _os_log_impl(&dword_216679000, v70, v71, "Unable to update items with IDs %{public}s, items not present in section.", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v73);
      MEMORY[0x21CEA1440](v73, -1, -1);
      MEMORY[0x21CEA1440](v72, -1, -1);
    }

    else
    {
    }

    return v20;
  }

  else
  {
  }

  return isUniquelyReferenced_nonNull_native;
}

uint64_t sub_2169B3CF8(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED90, &qword_217031230);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABED98, &qword_217031238);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA0, &qword_217031240);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for TopSearchLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA8, &qword_217031248);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TopSearchLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TopSearchLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABED98, &qword_217031238);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEDA0, &qword_217031240);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15AA4();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDA8, &qword_217031248);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for TopSearchLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TopSearchLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for TopSearchLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TopSearchLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABED90, &qword_217031230);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for TopSearchLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B481C(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB0, &qword_217031250);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDB8, &qword_217031258);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC0, &qword_217031260);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for TrackLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8, &qword_217031268);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TrackLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for TrackLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEDB8, &qword_217031258);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEDC0, &qword_217031260);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15A8C();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDC8, &qword_217031268);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for TrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TrackLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for TrackLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for TrackLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEDB0, &qword_217031250);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for TrackLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

uint64_t sub_2169B5340(uint64_t a1, uint64_t a2)
{
  v83 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD0, &qword_217031270);
  MEMORY[0x28223BE20](v3 - 8);
  v76 = &v75 - v4;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDD8, &qword_217031278);
  MEMORY[0x28223BE20](v81);
  v82 = (&v75 - v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE0, &unk_217031280);
  MEMORY[0x28223BE20](v6 - 8);
  v80 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v75 - v9);
  v11 = type metadata accessor for VerticalVideoLockup(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v77 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v78 = &v75 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v75 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v75 - v20;
  v22 = sub_21700E384();
  v23 = *(a2 + 16);
  v86 = v11;
  v79 = v12;
  if (v23)
  {
    v24 = *(v11 + 20);
    v84 = v21;
    v85 = v24;
    v25 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v26 = *(v12 + 72);
    do
    {
      sub_2169BBAE8();
      sub_216788294(&v21[v85], v92);
      v21 = v18;
      sub_2169BBAE8();
      swift_isUniquelyReferenced_nonNull_native();
      *&v87 = v22;
      v27 = sub_216E68120(v92);
      if (__OFADD__(*(v22 + 16), (v28 & 1) == 0))
      {
        __break(1u);
        goto LABEL_54;
      }

      v12 = v27;
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE8, &unk_21705F240);
      if (sub_21700F554())
      {
        v30 = sub_216E68120(v92);
        if ((v29 & 1) != (v31 & 1))
        {
          result = sub_21700F824();
          __break(1u);
          return result;
        }

        v12 = v30;
      }

      v22 = v87;
      if (v29)
      {
        v18 = v21;
        sub_2169BB740();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for VerticalVideoLockup);
      }

      else
      {
        *(v87 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        sub_216788294(v92, *(v22 + 48) + 40 * v12);
        v18 = v21;
        sub_2169BBB94();
        sub_216788110(v92);
        v21 = v84;
        sub_2169BBB3C(v84, type metadata accessor for VerticalVideoLockup);
        v32 = *(v22 + 16);
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_57;
        }

        *(v22 + 16) = v34;
      }

      v25 += v26;
      --v23;
    }

    while (v23);
  }

  v21 = *(v83 + 16);
  v35 = 0;
  v85 = sub_21700DF14();
  v36 = v80;
  v12 = v81;
  v37 = v78;
  while (1)
  {
    if (v35 == v21)
    {
      v38 = 1;
      v35 = v21;
    }

    else
    {
      if (v35 >= v21)
      {
        goto LABEL_55;
      }

      if (__OFADD__(v35, 1))
      {
        goto LABEL_56;
      }

      v39 = v82;
      *v82 = v35;
      sub_2169BBAE8();
      sub_2167C5834(v39, v36, &qword_27CABEDD8, &qword_217031278);
      v38 = 0;
      ++v35;
    }

    __swift_storeEnumTagSinglePayload(v36, v38, 1, v12);
    sub_2167C5834(v36, v10, &qword_27CABEDE0, &unk_217031280);
    if (__swift_getEnumTagSinglePayload(v10, 1, v12) == 1)
    {
      break;
    }

    v40 = *v10;
    sub_2169BBB94();
    sub_216788294(v37 + *(v86 + 20), v92);
    if (*(v22 + 16) && (sub_216E68120(v92), (v41 & 1) != 0))
    {
      v42 = v77;
      sub_2169BBAE8();
      v43 = v85;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_216E15A74();
        v43 = v50;
        if ((v40 & 0x8000000000000000) != 0)
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      if (v40 >= *(v43 + 16))
      {
        goto LABEL_58;
      }

      v85 = v43;
      sub_2169BB6EC();
      v44 = sub_216E68120(v92);
      if (v45)
      {
        v46 = v44;
        swift_isUniquelyReferenced_nonNull_native();
        *&v87 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDE8, &unk_21705F240);
        sub_21700F554();
        v22 = v87;
        sub_216788110(*(v87 + 48) + 40 * v46);
        v47 = v76;
        sub_2169BBB94();
        v48 = v86;
        sub_21700F574();
        sub_2169BBB3C(v42, type metadata accessor for VerticalVideoLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for VerticalVideoLockup);
        v49 = 0;
        v36 = v80;
        v12 = v81;
      }

      else
      {
        sub_2169BBB3C(v42, type metadata accessor for VerticalVideoLockup);
        sub_216788110(v92);
        v37 = v78;
        sub_2169BBB3C(v78, type metadata accessor for VerticalVideoLockup);
        v49 = 1;
        v47 = v76;
        v36 = v80;
        v12 = v81;
        v48 = v86;
      }

      __swift_storeEnumTagSinglePayload(v47, v49, 1, v48);
      sub_216697664(v47, &qword_27CABEDD0, &qword_217031270);
    }

    else
    {
      sub_216788110(v92);
      sub_2169BBB3C(v37, type metadata accessor for VerticalVideoLockup);
    }
  }

  if (*(v22 + 16))
  {
    v51 = 1 << *(v22 + 32);
    v52 = -1;
    if (v51 < 64)
    {
      v52 = ~(-1 << v51);
    }

    v53 = v52 & *(v22 + 64);
    v54 = (v51 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v55 = 0;
    v56 = MEMORY[0x277D84F90];
    v12 = MEMORY[0x277D837D0];
    while (v53)
    {
LABEL_40:
      v58 = __clz(__rbit64(v53));
      v53 &= v53 - 1;
      sub_216788294(*(v22 + 48) + 40 * (v58 | (v55 << 6)), v92);
      v87 = v92[0];
      v88 = v92[1];
      v89 = v93;
      if (swift_dynamicCast())
      {
        v21 = v91;
        if (v91)
        {
          v86 = v90;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_21693776C();
            v56 = v62;
          }

          v59 = *(v56 + 16);
          v60 = v59 + 1;
          if (v59 >= *(v56 + 24) >> 1)
          {
            v84 = (v59 + 1);
            v63 = v59;
            sub_21693776C();
            v60 = v84;
            v59 = v63;
            v56 = v64;
          }

          *(v56 + 16) = v60;
          v61 = v56 + 16 * v59;
          *(v61 + 32) = v86;
          *(v61 + 40) = v21;
        }
      }
    }

    while (1)
    {
      v57 = v55 + 1;
      if (__OFADD__(v55, 1))
      {
        break;
      }

      if (v57 >= v54)
      {

        *&v92[0] = v56;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CAB74F8, &unk_217017160);
        sub_216856418();
        v21 = sub_21700E454();
        v12 = v65;

        if (qword_27CAB5B70 != -1)
        {
          goto LABEL_59;
        }

        goto LABEL_48;
      }

      v53 = *(v22 + 64 + 8 * v57);
      ++v55;
      if (v53)
      {
        v55 = v57;
        goto LABEL_40;
      }
    }

LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    swift_once();
LABEL_48:
    v66 = sub_217007CA4();
    __swift_project_value_buffer(v66, qword_27CABEB28);
    sub_21700DF14();
    v67 = sub_217007C84();
    v68 = sub_21700ED84();

    v69 = os_log_type_enabled(v67, v68);
    v70 = v85;
    if (v69)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      *&v92[0] = v72;
      *v71 = 136446210;
      v73 = sub_2166A85FC(v21, v12, v92);

      *(v71 + 4) = v73;
      _os_log_impl(&dword_216679000, v67, v68, "Unable to update items with IDs %{public}s, items not present in section.", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v72);
      MEMORY[0x21CEA1440](v72, -1, -1);
      MEMORY[0x21CEA1440](v71, -1, -1);
    }

    else
    {
    }

    return v70;
  }

  else
  {

    return v85;
  }
}

void sub_2169B5E64()
{
  OUTLINED_FUNCTION_22_3();
  v50 = v4;
  v51 = v3;
  v48 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_1_0();
  v47 = v6;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_39_0();
  v8 = type metadata accessor for SocialProfileFollowRequestsPageComponentModel(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v46 = v10;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v14 = type metadata accessor for ListSection(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v16);
  v18 = &v46 - v17;
  v19 = type metadata accessor for SectionContent(0);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_106_1();
  OUTLINED_FUNCTION_2_68();
  sub_2169BBAE8();
  v49 = v19;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 22)
  {
    OUTLINED_FUNCTION_25_24();
    OUTLINED_FUNCTION_39();
    sub_2169BBB94();
    v37 = *&v18[*(v14 + 32)];
    sub_21700DF14();
    v38 = sub_2169B63B0(v51, v37, sub_2169BBA4C, sub_2169B9D2C);
    if (v0)
    {
      v26 = type metadata accessor for ListSection;
      v27 = v18;
      goto LABEL_18;
    }

    v44 = v38;

    OUTLINED_FUNCTION_25_24();
    sub_2169BBB94();
    v45 = *(v14 + 32);

    *(v1 + v45) = v44;
    sub_2169BBAE8();
    swift_storeEnumTagMultiPayload();
    v40 = type metadata accessor for ListSection;
LABEL_23:
    v36 = v40;
    v35 = v1;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload == 49)
  {
    OUTLINED_FUNCTION_27_23();
    sub_2169BBB94();
    v24 = v48;
    v25 = *(v2 + *(v48 + 24));
    sub_21700DF14();
    sub_2169B63B0(v51, v25, sub_2169BBBE8, sub_2169B9570);
    if (v0)
    {
      v26 = type metadata accessor for SocialProfileHorizontalLockupSection;
      v27 = v2;
LABEL_18:
      sub_2169BBB3C(v27, v26);
      goto LABEL_19;
    }

    OUTLINED_FUNCTION_76_8();
    OUTLINED_FUNCTION_27_23();
    v1 = v47;
    sub_2169BBB94();
    v39 = *(v24 + 24);

    *(v1 + v39) = v14;
    OUTLINED_FUNCTION_59_10();
    sub_2169BBAE8();
    swift_storeEnumTagMultiPayload();
    v40 = type metadata accessor for SocialProfileHorizontalLockupSection;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload != 33)
  {
    if (EnumCaseMultiPayload != 45)
    {
      if (EnumCaseMultiPayload == 29)
      {
        v23 = OUTLINED_FUNCTION_94_8(EnumCaseMultiPayload, v22, sub_2169BBA18, sub_2169B9FC0);

        if (!v0)
        {
          *v50 = v23;
LABEL_14:
          swift_storeEnumTagMultiPayload();
          goto LABEL_25;
        }

        goto LABEL_25;
      }

      v33 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v33);
      OUTLINED_FUNCTION_88_6(v34, 131);
      v35 = OUTLINED_FUNCTION_50_13();
LABEL_24:
      sub_2169BBB3C(v35, v36);
      goto LABEL_25;
    }

    OUTLINED_FUNCTION_26_25();
    OUTLINED_FUNCTION_91();
    sub_2169BBB94();
    v28 = sub_21700DF14();
    v30 = OUTLINED_FUNCTION_94_8(v28, v29, sub_2169BBAB4, sub_2169B9804);
    if (!v0)
    {
      v41 = v30;

      OUTLINED_FUNCTION_26_25();
      v42 = v46;
      sub_2169BBB94();
      v43 = *(v8 + 24);

      *(v42 + v43) = v41;
      OUTLINED_FUNCTION_63_7();
      sub_2169BBAE8();
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_61_9();
      v35 = v42;
      goto LABEL_24;
    }

    OUTLINED_FUNCTION_61_9();
    sub_2169BBB3C(v13, v31);
LABEL_19:

    goto LABEL_25;
  }

  v32 = OUTLINED_FUNCTION_94_8(EnumCaseMultiPayload, v22, sub_2169BBA80, sub_2169B9A98);

  if (!v0)
  {
    *v50 = v32;
    goto LABEL_14;
  }

LABEL_25:
  OUTLINED_FUNCTION_21_4();
}

uint64_t sub_2169B63B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *, uint64_t, __n128))
{
  v11[2] = a1;
  sub_21700DF14();
  v7 = (a4)(a3, v11, a2);
  if (*(v7 + 16) == *(a2 + 16))
  {

    v8 = sub_2169BB698();
    OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v8);
    OUTLINED_FUNCTION_88_6(v9, 132);
  }

  return v7;
}

void sub_2169B6454(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v24;
  a20 = v25;
  v178 = v21;
  v179 = v26;
  v181 = v20;
  v182 = v27;
  v28 = type metadata accessor for SocialProfileHorizontalLockupSection(0);
  v29 = OUTLINED_FUNCTION_1_77(v28, &a14);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_47_1();
  v33 = OUTLINED_FUNCTION_8_0(v32);
  v34 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v33);
  v35 = OUTLINED_FUNCTION_1_77(v34, &a17);
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_47_1();
  v38 = OUTLINED_FUNCTION_8_0(v37);
  v39 = type metadata accessor for ContentDescriptor(v38);
  v40 = OUTLINED_FUNCTION_36(v39);
  MEMORY[0x28223BE20](v40);
  OUTLINED_FUNCTION_6_0();
  v177 = v41;
  v42 = OUTLINED_FUNCTION_4_1();
  v180 = type metadata accessor for SectionContent(v42);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_1_0();
  v176 = v44;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_6_4();
  v175 = v46;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v47);
  OUTLINED_FUNCTION_6_4();
  v173 = v48;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_6_4();
  v172 = v50;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v51);
  OUTLINED_FUNCTION_6_4();
  v171 = v52;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v53);
  OUTLINED_FUNCTION_6_4();
  v174 = v54;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v55);
  OUTLINED_FUNCTION_6_4();
  v170 = v56;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v57);
  OUTLINED_FUNCTION_6_4();
  v169 = v58;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v59);
  OUTLINED_FUNCTION_6_4();
  v168 = v60;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v61);
  OUTLINED_FUNCTION_6_4();
  v166 = v62;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_6_4();
  v165 = v64;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v65);
  OUTLINED_FUNCTION_6_4();
  v164 = v66;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v67);
  OUTLINED_FUNCTION_6_4();
  v163 = v68;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v69);
  OUTLINED_FUNCTION_6_4();
  v167 = v70;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v71);
  OUTLINED_FUNCTION_6_4();
  v162 = v72;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v73);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_100_3();
  MEMORY[0x28223BE20](v76);
  v78 = v159 - v77;
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v81);
  OUTLINED_FUNCTION_39_0();
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEB58, &unk_217030FF0);
  OUTLINED_FUNCTION_36(v82);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v83);
  v85 = v159 - v84;
  v87 = (v159 + *(v86 + 56) - v84);
  sub_2169BBAE8();
  sub_2169BBAE8();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640) + 48);
      if (OUTLINED_FUNCTION_74_10() != 1)
      {
        goto LABEL_85;
      }

      OUTLINED_FUNCTION_49_16();
      sub_2169BBB94();
      v89 = OUTLINED_FUNCTION_89_10();
      sub_216BDD7B8(v89);
      OUTLINED_FUNCTION_87_9();
      goto LABEL_84;
    case 3u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 3)
      {
        goto LABEL_98;
      }

      v118 = OUTLINED_FUNCTION_20_26();
      sub_216BDD78C(v118);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 4u:
      if (OUTLINED_FUNCTION_74_10() != 4)
      {
        goto LABEL_99;
      }

      v111 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v111);
      v92 = 4;
      goto LABEL_102;
    case 6u:
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 57)
      {
        v157 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup;
        v158 = v22;
        goto LABEL_106;
      }

      v182 = v85;
      v125 = *v87;
      v126 = v159[2];
      sub_2169BBB94();
      v127 = v161;
      v128 = MEMORY[0x277D84F90];
      if (*(v126 + v161[8]))
      {
        v128 = *(v126 + v161[8]);
      }

      v183 = v128;
      sub_21700DF14();
      sub_216BDD760(v125);
      v129 = v160;
      sub_216683A80(v126, v160, &qword_27CAB6D58, &unk_217014E30);
      v130 = OUTLINED_FUNCTION_105_6(v127[5]);
      sub_216788294(v130, v131);
      v132 = OUTLINED_FUNCTION_105_6(v127[6]);
      sub_216683A80(v132, v133, v134, v135);
      v136 = OUTLINED_FUNCTION_105_6(v127[7]);
      OUTLINED_FUNCTION_109_5(v136, v137);
      v138 = OUTLINED_FUNCTION_105_6(v127[9]);
      OUTLINED_FUNCTION_109_5(v138, v139);
      OUTLINED_FUNCTION_16_31();
      sub_2169BBB3C(v126, v140);
      *(v129 + v127[8]) = v183;
      sub_2169BBB94();
      goto LABEL_96;
    case 7u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 7)
      {
        goto LABEL_98;
      }

      v141 = OUTLINED_FUNCTION_20_26();
      sub_216BDD734(v141);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 8u:
      if (OUTLINED_FUNCTION_74_10() != 8)
      {
        goto LABEL_99;
      }

      v114 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v114);
      v92 = 9;
      goto LABEL_102;
    case 9u:
      if (OUTLINED_FUNCTION_74_10() != 9)
      {
        goto LABEL_99;
      }

      v119 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v119);
      v92 = 10;
      goto LABEL_102;
    case 0xAu:
      if (OUTLINED_FUNCTION_74_10() != 10)
      {
        goto LABEL_99;
      }

      v120 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v120);
      v92 = 11;
      goto LABEL_102;
    case 0xBu:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 11)
      {
        goto LABEL_98;
      }

      v144 = OUTLINED_FUNCTION_20_26();
      sub_216BDD708(v144);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0xDu:
      if (OUTLINED_FUNCTION_74_10() != 13)
      {
        goto LABEL_99;
      }

      v143 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v143);
      v92 = 14;
      goto LABEL_102;
    case 0xEu:
      if (OUTLINED_FUNCTION_74_10() != 14)
      {
        goto LABEL_99;
      }

      v104 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v104);
      v92 = 15;
      goto LABEL_102;
    case 0xFu:
      v182 = v85;
      OUTLINED_FUNCTION_8();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() != 15)
      {
        goto LABEL_98;
      }

      v115 = OUTLINED_FUNCTION_20_26();
      sub_216BDD6DC(v115);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x10u:
      OUTLINED_FUNCTION_46_17();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 16)
      {
        goto LABEL_98;
      }

      v109 = OUTLINED_FUNCTION_20_26();
      sub_216BDD6B0(v109);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x11u:
      if (OUTLINED_FUNCTION_74_10() != 17)
      {
        goto LABEL_99;
      }

      v101 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v101);
      v92 = 18;
      goto LABEL_102;
    case 0x13u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 19)
      {
        goto LABEL_98;
      }

      v122 = OUTLINED_FUNCTION_20_26();
      sub_216BDD684(v122);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x18u:
      if (OUTLINED_FUNCTION_74_10() != 24)
      {
        goto LABEL_99;
      }

      v123 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v123);
      v92 = 22;
      goto LABEL_102;
    case 0x1Au:
      OUTLINED_FUNCTION_46_17();
      v23 = v167;
      sub_2169BBAE8();
      v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0) + 48);
      if (OUTLINED_FUNCTION_74_10() == 26)
      {
        OUTLINED_FUNCTION_49_16();
        sub_2169BBB94();
        v147 = OUTLINED_FUNCTION_89_10();
        sub_216BDD658(v147);
        OUTLINED_FUNCTION_87_9();
LABEL_84:
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_5_54();
        sub_2169BBB3C(&v78[v88], v148);
        goto LABEL_97;
      }

LABEL_85:
      sub_2169BBB3C(v23 + v88, type metadata accessor for ContentDescriptor);
LABEL_98:

      v85 = v182;
      goto LABEL_99;
    case 0x1Bu:
      if (OUTLINED_FUNCTION_74_10() != 27)
      {
        goto LABEL_99;
      }

      v145 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v145);
      v92 = 25;
      goto LABEL_102;
    case 0x1Cu:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 28)
      {
        goto LABEL_98;
      }

      v99 = OUTLINED_FUNCTION_20_26();
      sub_216BDD62C(v99);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x1Eu:
      OUTLINED_FUNCTION_46_17();
      OUTLINED_FUNCTION_97_6();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 30)
      {
        goto LABEL_98;
      }

      v110 = OUTLINED_FUNCTION_20_26();
      sub_216BDD600(v110);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x1Fu:
      if (OUTLINED_FUNCTION_74_10() != 31)
      {
        goto LABEL_99;
      }

      v150 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v150);
      v92 = 61;
      goto LABEL_102;
    case 0x20u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 32)
      {
        goto LABEL_98;
      }

      v100 = OUTLINED_FUNCTION_20_26();
      sub_216BDD5D4(v100);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x21u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 33)
      {
        goto LABEL_98;
      }

      v108 = OUTLINED_FUNCTION_20_26();
      sub_216BDD5A8(v108);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x22u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 34)
      {
        goto LABEL_98;
      }

      v103 = OUTLINED_FUNCTION_20_26();
      sub_216BDD57C(v103);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x23u:
      if (OUTLINED_FUNCTION_74_10() != 35)
      {
        goto LABEL_99;
      }

      v116 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v116);
      v92 = 33;
      goto LABEL_102;
    case 0x24u:
      if (OUTLINED_FUNCTION_74_10() != 36)
      {
        goto LABEL_99;
      }

      v102 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v102);
      v92 = 34;
      goto LABEL_102;
    case 0x25u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 37)
      {
        goto LABEL_98;
      }

      v152 = OUTLINED_FUNCTION_20_26();
      sub_216BDD550(v152);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x26u:
      if (OUTLINED_FUNCTION_74_10() != 38)
      {
        goto LABEL_99;
      }

      v151 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v151);
      v92 = 42;
      goto LABEL_102;
    case 0x27u:
      if (OUTLINED_FUNCTION_74_10() != 39)
      {
        goto LABEL_99;
      }

      v106 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v106);
      v92 = 43;
      goto LABEL_102;
    case 0x28u:
      if (OUTLINED_FUNCTION_74_10() != 40)
      {
        goto LABEL_99;
      }

      v112 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v112);
      v92 = 44;
      goto LABEL_102;
    case 0x29u:
      if (OUTLINED_FUNCTION_74_10() != 41)
      {
        goto LABEL_99;
      }

      v124 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v124);
      v92 = 45;
      goto LABEL_102;
    case 0x2Au:
      if (OUTLINED_FUNCTION_74_10() != 42)
      {
        goto LABEL_99;
      }

      v113 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v113);
      v92 = 46;
      goto LABEL_102;
    case 0x2Bu:
      if (OUTLINED_FUNCTION_74_10() != 43)
      {
        goto LABEL_99;
      }

      v156 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v156);
      v92 = 47;
      goto LABEL_102;
    case 0x2Cu:
      if (OUTLINED_FUNCTION_74_10() != 44)
      {
        goto LABEL_99;
      }

      v105 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v105);
      v92 = 38;
      goto LABEL_102;
    case 0x2Du:
      if (OUTLINED_FUNCTION_74_10() != 45)
      {
        goto LABEL_99;
      }

      v146 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v146);
      v92 = 41;
      goto LABEL_102;
    case 0x30u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 48)
      {
        goto LABEL_98;
      }

      v153 = OUTLINED_FUNCTION_20_26();
      sub_216BDD474(v153);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x31u:
      v95 = v174;
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_74_10() == 49)
      {
        v182 = v85;
        v96 = v159[0];
        sub_2169BBB94();
        OUTLINED_FUNCTION_107();
        sub_2169BBB94();
        OUTLINED_FUNCTION_59_10();
        OUTLINED_FUNCTION_78_9();
        v97 = sub_21700DF14();
        sub_216BDD474(v97);
        sub_2169BBB3C(v87, type metadata accessor for SocialProfileHorizontalLockupSection);
        sub_2169BBB3C(v96, type metadata accessor for SocialProfileHorizontalLockupSection);
        sub_2169BBB94();
LABEL_96:
        swift_storeEnumTagMultiPayload();
LABEL_97:
        sub_2169BBB3C(v182, type metadata accessor for SectionContent);
      }

      else
      {
        v157 = type metadata accessor for SocialProfileHorizontalLockupSection;
        v158 = v95;
LABEL_106:
        sub_2169BBB3C(v158, v157);
LABEL_99:
        v154 = sub_2169BB698();
        OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v154);
        OUTLINED_FUNCTION_88_6(v155, 128);
        sub_216697664(v85, &qword_27CABEB58, &unk_217030FF0);
      }

LABEL_103:
      OUTLINED_FUNCTION_21_4();
      return;
    case 0x32u:
      if (OUTLINED_FUNCTION_74_10() != 50)
      {
        goto LABEL_99;
      }

      v142 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v142);
      v92 = 49;
      goto LABEL_102;
    case 0x34u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 52)
      {
        goto LABEL_98;
      }

      v94 = OUTLINED_FUNCTION_20_26();
      sub_216BDD524(v94);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x35u:
      if (OUTLINED_FUNCTION_74_10() != 53)
      {
        goto LABEL_99;
      }

      v93 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v93);
      v92 = 53;
      goto LABEL_102;
    case 0x37u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 55)
      {
        goto LABEL_98;
      }

      v107 = OUTLINED_FUNCTION_20_26();
      sub_216BDD4F8(v107);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x38u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 56)
      {
        goto LABEL_98;
      }

      v117 = OUTLINED_FUNCTION_20_26();
      sub_216BDD4CC(v117);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x39u:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 57)
      {
        goto LABEL_98;
      }

      v149 = OUTLINED_FUNCTION_20_26();
      sub_216BDD760(v149);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    case 0x3Au:
      if (OUTLINED_FUNCTION_74_10() != 58)
      {
        goto LABEL_99;
      }

      v90 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v90);
      v92 = 57;
      goto LABEL_102;
    case 0x3Bu:
      if (OUTLINED_FUNCTION_74_10() != 59)
      {
        goto LABEL_99;
      }

      v98 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v98);
      v92 = 58;
LABEL_102:
      OUTLINED_FUNCTION_88_6(v91, v92);
      sub_2169BBB3C(v87, type metadata accessor for SectionContent);
      sub_2169BBB3C(v85, type metadata accessor for SectionContent);
      goto LABEL_103;
    case 0x3Du:
      OUTLINED_FUNCTION_46_17();
      sub_2169BBAE8();
      if (OUTLINED_FUNCTION_45_18() != 61)
      {
        goto LABEL_98;
      }

      v121 = OUTLINED_FUNCTION_20_26();
      sub_216BDD4A0(v121);
      OUTLINED_FUNCTION_9_43();
      goto LABEL_96;
    default:
      goto LABEL_99;
  }
}

void sub_2169B75E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22_3();
  a19 = v24;
  a20 = v25;
  v252 = v26;
  v253 = v21;
  v255 = v20;
  v250 = v27;
  v251 = v28;
  v256 = v29;
  v249 = v30;
  v31 = type metadata accessor for SearchResultsListSection(0);
  v32 = OUTLINED_FUNCTION_36(v31);
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_47_1();
  v35 = OUTLINED_FUNCTION_8_0(v34);
  v36 = type metadata accessor for ArtistLatestReleaseAndTopSongsLockup(v35);
  v37 = OUTLINED_FUNCTION_1_77(v36, &a16);
  MEMORY[0x28223BE20](v37);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_47_1();
  v40 = OUTLINED_FUNCTION_8_0(v39);
  v41 = type metadata accessor for ContentDescriptor(v40);
  v42 = OUTLINED_FUNCTION_36(v41);
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v43);
  OUTLINED_FUNCTION_47_1();
  v45 = OUTLINED_FUNCTION_8_0(v44);
  v254 = type metadata accessor for SectionContent(v45);
  OUTLINED_FUNCTION_34();
  MEMORY[0x28223BE20](v46);
  OUTLINED_FUNCTION_1_0();
  v248 = v47;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v48);
  OUTLINED_FUNCTION_6_4();
  v247 = v49;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v50);
  OUTLINED_FUNCTION_6_4();
  v246 = v51;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v52);
  OUTLINED_FUNCTION_6_4();
  v245 = v53;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_6_4();
  v244 = v55;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_6_4();
  v243 = v57;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v58);
  OUTLINED_FUNCTION_6_4();
  v242 = v59;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_6_4();
  v241 = v61;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_6_4();
  v240 = v63;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_6_4();
  v239 = v65;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v66);
  OUTLINED_FUNCTION_6_4();
  v237[10] = v67;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v68);
  OUTLINED_FUNCTION_6_4();
  v237[9] = v69;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_6_4();
  v237[8] = v71;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v72);
  OUTLINED_FUNCTION_6_4();
  v238 = v73;
  OUTLINED_FUNCTION_3_1();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v75);
  OUTLINED_FUNCTION_99_1();
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x28223BE20](v77);
  OUTLINED_FUNCTION_15_30();
  MEMORY[0x28223BE20](v78);
  OUTLINED_FUNCTION_102_7();
  MEMORY[0x28223BE20](v79);
  OUTLINED_FUNCTION_69_1();
  MEMORY[0x28223BE20](v80);
  OUTLINED_FUNCTION_103_3();
  MEMORY[0x28223BE20](v81);
  v83 = v237 - v82;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABEDF0, &unk_217031298);
  OUTLINED_FUNCTION_36(v84);
  OUTLINED_FUNCTION_29();
  MEMORY[0x28223BE20](v85);
  OUTLINED_FUNCTION_106_1();
  v87 = *(v86 + 56);
  OUTLINED_FUNCTION_2_68();
  sub_2169BBAE8();
  *(v23 + v87) = v256;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7D8, &unk_21703F640);
      if (v256 != 1)
      {
        OUTLINED_FUNCTION_5_54();
        v215 = &v83[v214];
        goto LABEL_122;
      }

      OUTLINED_FUNCTION_14_33();
      OUTLINED_FUNCTION_107();
      sub_2169BBB94();
      type metadata accessor for AlbumTrackLockup(0);
      OUTLINED_FUNCTION_65_7();
      v90 = sub_2169BB7B4(v88, v89, &unk_217043794);
      OUTLINED_FUNCTION_95_8(v90);
      if (v21)
      {
        goto LABEL_96;
      }

      goto LABEL_4;
    case 3u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v153 != 3)
      {
        goto LABEL_123;
      }

      type metadata accessor for AppsWithAccessComponentModel(0);
      v154 = sub_2169BB7B4(&qword_280E32798, type metadata accessor for AppsWithAccessComponentModel, &unk_2170612A8);
      OUTLINED_FUNCTION_17_35(v154);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 4u:
      OUTLINED_FUNCTION_36_18();
      if (v135 != 4)
      {
        goto LABEL_124;
      }

      v136 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v136);
      v96 = 68;
      goto LABEL_116;
    case 6u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v172 != 56)
      {
        OUTLINED_FUNCTION_16_31();
        v217 = v20;
        goto LABEL_120;
      }

      OUTLINED_FUNCTION_63_7();
      v173 = v237[4];
      sub_2169BBB94();
      v174 = v237[5];
      type metadata accessor for TrackLockup(0);
      OUTLINED_FUNCTION_24_24();
      sub_2169BB7B4(v175, v176, &unk_21705C688);
      sub_21700DF14();
      v177 = v253;
      sub_2169B8B1C();
      if (v177)
      {
        OUTLINED_FUNCTION_16_31();
        sub_2169BBB3C(v173, v179);
        goto LABEL_109;
      }

      v222 = v178;

      v223 = v237[0];
      sub_216683A80(v173, v237[0], &qword_27CAB6D58, &unk_217014E30);
      v224 = OUTLINED_FUNCTION_98_8(v174[5]);
      sub_216788294(v224, v225);
      v226 = OUTLINED_FUNCTION_98_8(v174[6]);
      sub_216683A80(v226, v227, v228, v229);
      v230 = OUTLINED_FUNCTION_98_8(v174[7]);
      OUTLINED_FUNCTION_109_5(v230, v231);
      v232 = OUTLINED_FUNCTION_98_8(v174[9]);
      OUTLINED_FUNCTION_109_5(v232, v233);
      OUTLINED_FUNCTION_16_31();
      sub_2169BBB3C(v173, v234);
      *(v223 + v174[8]) = v222;
      sub_2169BBB94();
      OUTLINED_FUNCTION_90_7();
      goto LABEL_130;
    case 7u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v180 != 8)
      {
        goto LABEL_123;
      }

      type metadata accessor for BubbleLockup(0);
      OUTLINED_FUNCTION_56_12();
      v183 = sub_2169BB7B4(v181, v182, "-P\x1Bk");
      OUTLINED_FUNCTION_17_35(v183);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 8u:
      OUTLINED_FUNCTION_36_18();
      if (v141 != 9)
      {
        goto LABEL_124;
      }

      v142 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v142);
      v96 = 73;
      goto LABEL_116;
    case 9u:
      OUTLINED_FUNCTION_36_18();
      if (v155 != 10)
      {
        goto LABEL_124;
      }

      v156 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v156);
      v96 = 74;
      goto LABEL_116;
    case 0xAu:
      OUTLINED_FUNCTION_36_18();
      if (v157 != 11)
      {
        goto LABEL_124;
      }

      v158 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v158);
      v96 = 75;
      goto LABEL_116;
    case 0xBu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v188 != 12)
      {
        goto LABEL_123;
      }

      type metadata accessor for FlowcaseLockup(0);
      v189 = sub_2169BB7B4(qword_280E43620, type metadata accessor for FlowcaseLockup, &unk_21702F2F8);
      OUTLINED_FUNCTION_17_35(v189);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0xDu:
      OUTLINED_FUNCTION_36_18();
      if (v186 != 14)
      {
        goto LABEL_124;
      }

      v187 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v187);
      v96 = 78;
      goto LABEL_116;
    case 0xEu:
      OUTLINED_FUNCTION_36_18();
      if (v119 != 15)
      {
        goto LABEL_124;
      }

      v120 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v120);
      v96 = 79;
      goto LABEL_116;
    case 0xFu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v143 != 16)
      {
        goto LABEL_123;
      }

      type metadata accessor for HorizontalLockup(0);
      OUTLINED_FUNCTION_60_9();
      v146 = sub_2169BB7B4(v144, v145, &unk_217015138);
      OUTLINED_FUNCTION_17_35(v146);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x10u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v129 != 17)
      {
        goto LABEL_123;
      }

      type metadata accessor for HorizontalPosterLockup(0);
      v130 = sub_2169BB7B4(qword_280E39370, type metadata accessor for HorizontalPosterLockup, &unk_217062870);
      OUTLINED_FUNCTION_17_35(v130);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x11u:
      OUTLINED_FUNCTION_36_18();
      if (v111 != 18)
      {
        goto LABEL_124;
      }

      v112 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v112);
      v96 = 82;
      goto LABEL_116;
    case 0x13u:
      OUTLINED_FUNCTION_0_103();
      OUTLINED_FUNCTION_48_14();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v161 != 20)
      {
        goto LABEL_123;
      }

      type metadata accessor for LinkComponentModel(0);
      v162 = sub_2169BB7B4(&qword_280E3EC50, type metadata accessor for LinkComponentModel, &unk_21702DCA8);
      OUTLINED_FUNCTION_17_35(v162);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x15u:
      OUTLINED_FUNCTION_0_103();
      v163 = v248;
      sub_2169BBAE8();
      OUTLINED_FUNCTION_36_18();
      if (v164 == 55)
      {
        OUTLINED_FUNCTION_51_7();
        v165 = v237[3];
        sub_2169BBB94();
        OUTLINED_FUNCTION_57_12();
        OUTLINED_FUNCTION_107();
        sub_2169BBAE8();
        type metadata accessor for TopSearchLockup(0);
        OUTLINED_FUNCTION_58_12();
        sub_2169BB7B4(v166, v167, &unk_21703FEF0);
        sub_21700DF14();
        v168 = v253;
        sub_2169B8B1C();
        if (v168)
        {
          sub_2169BBB3C(v165, type metadata accessor for SearchResultsListSection);
        }

        else
        {
          v221 = v169;
          sub_2169BBB3C(v165, type metadata accessor for SearchResultsListSection);

          *(v22 + 32) = v221;
          OUTLINED_FUNCTION_57_12();
          sub_2169BBAE8();
          OUTLINED_FUNCTION_90_7();
          swift_storeEnumTagMultiPayload();
        }

        sub_2169BBB3C(v22, type metadata accessor for SearchResultsListSection);
        goto LABEL_131;
      }

      v216 = type metadata accessor for SearchResultsListSection;
      v217 = v163;
LABEL_120:
      sub_2169BBB3C(v217, v216);
      goto LABEL_124;
    case 0x18u:
      OUTLINED_FUNCTION_36_18();
      if (v197 != 22)
      {
        goto LABEL_124;
      }

      v198 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v198);
      v96 = 86;
      goto LABEL_116;
    case 0x1Au:
      OUTLINED_FUNCTION_0_103();
      v190 = v238;
      sub_2169BBAE8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABB7C0, &unk_217030FE0);
      if (v256 == 24)
      {
        OUTLINED_FUNCTION_14_33();
        OUTLINED_FUNCTION_107();
        sub_2169BBB94();
        type metadata accessor for PlaylistTrackLockup(0);
        OUTLINED_FUNCTION_55_13();
        v193 = sub_2169BB7B4(v191, v192, &unk_2170490C4);
        OUTLINED_FUNCTION_95_8(v193);
        if (v21)
        {
LABEL_96:
          OUTLINED_FUNCTION_5_54();
          sub_2169BBB3C(v22, v194);
LABEL_109:
        }

        else
        {
LABEL_4:
          v92 = v91;

          *v249 = v92;
          OUTLINED_FUNCTION_14_33();
          sub_2169BBB94();
          OUTLINED_FUNCTION_90_7();
LABEL_130:
          swift_storeEnumTagMultiPayload();
        }

LABEL_131:
        v235 = OUTLINED_FUNCTION_50_13();
        sub_2169BBB3C(v235, v236);
      }

      else
      {
        OUTLINED_FUNCTION_5_54();
        v215 = v190 + v218;
LABEL_122:
        sub_2169BBB3C(v215, v213);
LABEL_123:

LABEL_124:
        v219 = sub_2169BB698();
        OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v219);
        OUTLINED_FUNCTION_88_6(v220, 129);
        sub_216697664(v23, &qword_27CABEDF0, &unk_217031298);
      }

      OUTLINED_FUNCTION_21_4();
      return;
    case 0x1Bu:
      OUTLINED_FUNCTION_36_18();
      if (v107 != 25)
      {
        goto LABEL_124;
      }

      v108 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v108);
      v96 = 89;
      goto LABEL_116;
    case 0x1Cu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v131 != 26)
      {
        goto LABEL_123;
      }

      type metadata accessor for PosterLockup(0);
      OUTLINED_FUNCTION_62_7();
      v134 = sub_2169BB7B4(v132, v133, &unk_217028088);
      OUTLINED_FUNCTION_17_35(v134);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x1Eu:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v203 != 28)
      {
        goto LABEL_123;
      }

      type metadata accessor for SearchLandingBrickLockup(0);
      v204 = sub_2169BB7B4(qword_280E363D0, type metadata accessor for SearchLandingBrickLockup, &unk_21701D410);
      OUTLINED_FUNCTION_17_35(v204);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x1Fu:
      OUTLINED_FUNCTION_36_18();
      if (v109 != 61)
      {
        goto LABEL_124;
      }

      v110 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v110);
      v96 = 125;
      goto LABEL_116;
    case 0x20u:
      OUTLINED_FUNCTION_0_103();
      OUTLINED_FUNCTION_97_6();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v127 != 30)
      {
        goto LABEL_123;
      }

      _s6LockupVMa(0);
      v128 = sub_2169BB7B4(&qword_280E439E8, _s6LockupVMa, &unk_21701C598);
      OUTLINED_FUNCTION_17_35(v128);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x21u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v115 != 31)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialCardLockup(0);
      OUTLINED_FUNCTION_63_8();
      v118 = sub_2169BB7B4(v116, v117, &unk_217027CE8);
      OUTLINED_FUNCTION_17_35(v118);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x22u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v147 != 32)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialOnboardingFindFriendsPageLockup(0);
      v148 = sub_2169BB7B4(qword_280E2DC28, type metadata accessor for SocialOnboardingFindFriendsPageLockup, &unk_2170412C0);
      OUTLINED_FUNCTION_17_35(v148);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x23u:
      OUTLINED_FUNCTION_36_18();
      if (v113 != 33)
      {
        goto LABEL_124;
      }

      v114 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v114);
      v96 = 97;
      goto LABEL_116;
    case 0x24u:
      OUTLINED_FUNCTION_36_18();
      if (v207 != 34)
      {
        goto LABEL_124;
      }

      v208 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v208);
      v96 = 98;
      goto LABEL_116;
    case 0x25u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v205 != 35)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialOnboardingSharedPlaylistLockup(0);
      v206 = sub_2169BB7B4(&qword_280E2DFF0, type metadata accessor for SocialOnboardingSharedPlaylistLockup, &unk_217047FE0);
      OUTLINED_FUNCTION_17_35(v206);
      if (v21)
      {
        goto LABEL_109;
      }

      goto LABEL_129;
    case 0x26u:
      OUTLINED_FUNCTION_36_18();
      if (v123 != 42)
      {
        goto LABEL_124;
      }

      v124 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v124);
      v96 = 106;
      goto LABEL_116;
    case 0x27u:
      OUTLINED_FUNCTION_36_18();
      if (v137 != 43)
      {
        goto LABEL_124;
      }

      v138 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v138);
      v96 = 107;
      goto LABEL_116;
    case 0x28u:
      OUTLINED_FUNCTION_36_18();
      if (v170 != 44)
      {
        goto LABEL_124;
      }

      v171 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v171);
      v96 = 108;
      goto LABEL_116;
    case 0x29u:
      OUTLINED_FUNCTION_36_18();
      if (v139 != 45)
      {
        goto LABEL_124;
      }

      v140 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v140);
      v96 = 109;
      goto LABEL_116;
    case 0x2Au:
      OUTLINED_FUNCTION_36_18();
      if (v211 != 46)
      {
        goto LABEL_124;
      }

      v212 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v212);
      v96 = 110;
      goto LABEL_116;
    case 0x2Bu:
      OUTLINED_FUNCTION_36_18();
      if (v121 != 47)
      {
        goto LABEL_124;
      }

      v122 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v122);
      v96 = 111;
      goto LABEL_116;
    case 0x2Cu:
      OUTLINED_FUNCTION_36_18();
      if (v195 != 38)
      {
        goto LABEL_124;
      }

      v196 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v196);
      v96 = 102;
      goto LABEL_116;
    case 0x2Du:
      OUTLINED_FUNCTION_36_18();
      if (v209 != 41)
      {
        goto LABEL_124;
      }

      v210 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v210);
      v96 = 105;
      goto LABEL_116;
    case 0x30u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v103 != 39)
      {
        goto LABEL_123;
      }

      type metadata accessor for SocialProfileHorizontalLockup(0);
      v104 = sub_2169BB7B4(&qword_280E310E0, type metadata accessor for SocialProfileHorizontalLockup, &unk_217034930);
      OUTLINED_FUNCTION_17_35(v104);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x32u:
      OUTLINED_FUNCTION_36_18();
      if (v184 != 49)
      {
        goto LABEL_124;
      }

      v185 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v185);
      v96 = 113;
      goto LABEL_116;
    case 0x34u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v99 != 51)
      {
        goto LABEL_123;
      }

      type metadata accessor for SquareLockup(0);
      OUTLINED_FUNCTION_64_11();
      v102 = sub_2169BB7B4(v100, v101, &unk_21704EAD0);
      OUTLINED_FUNCTION_17_35(v102);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x35u:
      OUTLINED_FUNCTION_36_18();
      if (v97 != 53)
      {
        goto LABEL_124;
      }

      v98 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v98);
      v96 = 117;
      goto LABEL_116;
    case 0x37u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v125 != 54)
      {
        goto LABEL_123;
      }

      type metadata accessor for TextListComponentModel(0);
      v126 = sub_2169BB7B4(&qword_280E38AD0, type metadata accessor for TextListComponentModel, &unk_21701BF50);
      OUTLINED_FUNCTION_17_35(v126);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x38u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v149 != 55)
      {
        goto LABEL_123;
      }

      type metadata accessor for TopSearchLockup(0);
      OUTLINED_FUNCTION_58_12();
      v152 = sub_2169BB7B4(v150, v151, &unk_21703FEF0);
      OUTLINED_FUNCTION_17_35(v152);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x39u:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v199 != 56)
      {
        goto LABEL_123;
      }

      type metadata accessor for TrackLockup(0);
      OUTLINED_FUNCTION_24_24();
      v202 = sub_2169BB7B4(v200, v201, &unk_21705C688);
      OUTLINED_FUNCTION_17_35(v202);
      if (!v21)
      {
        goto LABEL_129;
      }

      goto LABEL_109;
    case 0x3Au:
      OUTLINED_FUNCTION_36_18();
      if (v93 != 57)
      {
        goto LABEL_124;
      }

      v94 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v94);
      v96 = 121;
      goto LABEL_116;
    case 0x3Bu:
      OUTLINED_FUNCTION_36_18();
      if (v105 != 58)
      {
        goto LABEL_124;
      }

      v106 = sub_2169BB698();
      OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v106);
      v96 = 122;
LABEL_116:
      OUTLINED_FUNCTION_88_6(v95, v96);
      goto LABEL_131;
    case 0x3Du:
      OUTLINED_FUNCTION_0_103();
      sub_2169BBAE8();
      OUTLINED_FUNCTION_22_31();
      if (v159 != 60)
      {
        goto LABEL_123;
      }

      type metadata accessor for VerticalVideoLockup(0);
      v160 = sub_2169BB7B4(&qword_280E3CD90, type metadata accessor for VerticalVideoLockup, &unk_2170548D8);
      OUTLINED_FUNCTION_17_35(v160);
      if (v21)
      {
        goto LABEL_109;
      }

LABEL_129:
      OUTLINED_FUNCTION_76_8();
      OUTLINED_FUNCTION_21_29();
      goto LABEL_130;
    default:
      goto LABEL_124;
  }
}

void sub_2169B8B1C()
{
  OUTLINED_FUNCTION_22_3();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v78 = v7;
  v9 = v8;
  v67 = sub_21700F164();
  OUTLINED_FUNCTION_16();
  v75 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v13);
  OUTLINED_FUNCTION_16();
  v71 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_6_4();
  OUTLINED_FUNCTION_22();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_47_1();
  OUTLINED_FUNCTION_70(v18);
  v64 = v0;
  if (v9)
  {
    *&v81[0] = v9;
    sub_21700DF14();
    OUTLINED_FUNCTION_86_9();
    swift_getTupleTypeMetadata2();
    sub_21700E894();
    v76 = v60;
    v80[0] = sub_21700E384();
    MEMORY[0x28223BE20](v80[0]);
    OUTLINED_FUNCTION_6_5();
    sub_21700E984();
    OUTLINED_FUNCTION_86_9();
    sub_21700E3F4();
    swift_getWitnessTable();
    v19 = v64;
    sub_21700E794();
    v64 = v19;

    v20 = v83;
  }

  else
  {
    OUTLINED_FUNCTION_86_9();
    swift_getTupleTypeMetadata2();
    sub_21700E894();
    v20 = sub_21700E384();
  }

  OUTLINED_FUNCTION_6_5();
  sub_21700E894();
  *&v81[0] = v78;
  v22 = type metadata accessor for PageChangeInstruction.Instruction.InsertItemsUpdateDescriptor.Item(255, v4, v2, v21);
  sub_21700E984();
  swift_getWitnessTable();
  sub_21700EC44();
  v25 = v83;
  v24 = v84;
  v26 = v69;
  if (v83 == v84)
  {
LABEL_5:

LABEL_6:
    OUTLINED_FUNCTION_21_4();
    return;
  }

  if (v84 < v83)
  {
    goto LABEL_25;
  }

  v76 = (v22 - 8);
  v73 = v71 + 32;
  v72 = v71 + 16;
  v71 += 8;
  v65 = v75 + 8;
  *&v23 = 136315394;
  v61 = v23;
  v27 = v77;
  v75 = v84;
  v60[1] = v20;
  while (v25 < v24)
  {
    sub_21700E994();
    (*(*(v22 - 8) + 16))(v81, &v83, v22);
    if (v82)
    {
      v28 = v81[0];
      v79 = v81[0];
      sub_21700DF14();
      sub_21700F364();
      sub_21700E404();
      sub_216788110(v80);
      if (__swift_getEnumTagSinglePayload(v27, 1, v6) == 1)
      {
        OUTLINED_FUNCTION_72_10();
        v29(v27, v67);
        if (qword_27CAB5B70 != -1)
        {
          swift_once();
        }

        v30 = sub_217007CA4();
        __swift_project_value_buffer(v30, qword_27CABEB28);
        swift_bridgeObjectRetain_n();
        sub_21700DF14();
        v31 = sub_217007C84();
        v32 = sub_21700ED84();

        v68 = v32;
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v80[0] = v63;
          *v33 = v61;
          v34 = sub_2166A85FC(v28, *(&v28 + 1), v80);

          *(v33 + 4) = v34;
          *(v33 + 12) = 2080;
          v62 = v31;
          sub_21700DF14();

          v35 = sub_21700E394();
          v37 = v36;

          v38 = sub_2166A85FC(v35, v37, v80);
          v26 = v69;

          *(v33 + 14) = v38;
          v39 = v62;
          _os_log_impl(&dword_216679000, v62, v68, "Existing item was not found at id='%s'.  Dropping item.  oldItemIDs=%s", v33, 0x16u);
          v40 = v63;
          swift_arrayDestroy();
          MEMORY[0x21CEA1440](v40, -1, -1);
          MEMORY[0x21CEA1440](v33, -1, -1);

          v41 = OUTLINED_FUNCTION_68_10();
          v42(v41);
        }

        else
        {

          swift_bridgeObjectRelease_n();
          v53 = OUTLINED_FUNCTION_68_10();
          v54(v53);
          v26 = v69;
        }

        goto LABEL_20;
      }

      OUTLINED_FUNCTION_72_10();
      v47 = v66;
      v48(v66, v27, v6);
      OUTLINED_FUNCTION_72_10();
      v49(v74, v47, v6);
      OUTLINED_FUNCTION_6_5();
      sub_21700E984();
      sub_21700E8F4();
      OUTLINED_FUNCTION_72_10();
      v50(v47, v6);
    }

    else
    {
      sub_2166A0F18(v81, v80);
      sub_2167B7D58(v80, &v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CABD128, &qword_217029E30);
      if (!swift_dynamicCast())
      {

        __swift_storeEnumTagSinglePayload(v26, 1, 1, v6);
        OUTLINED_FUNCTION_72_10();
        v55(v26, v67);
        v56 = sub_2169BB698();
        OUTLINED_FUNCTION_12(&type metadata for SectionContent.SectionContentError, v56);
        OUTLINED_FUNCTION_88_6(v57, 129);
        __swift_destroy_boxed_opaque_existential_1Tm(v80);
        v58 = OUTLINED_FUNCTION_68_10();
        v59(v58);
        goto LABEL_6;
      }

      __swift_storeEnumTagSinglePayload(v26, 0, 1, v6);
      OUTLINED_FUNCTION_72_10();
      v43 = v70;
      v44(v70, v26, v6);
      OUTLINED_FUNCTION_72_10();
      v45(v74, v43, v6);
      OUTLINED_FUNCTION_6_5();
      sub_21700E984();
      sub_21700E8F4();
      OUTLINED_FUNCTION_72_10();
      v46(v43, v6);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
    }

    v51 = OUTLINED_FUNCTION_68_10();
    v52(v51);
LABEL_20:
    ++v25;
    v24 = v75;
    v27 = v77;
    if (v75 == v25)
    {
      goto LABEL_5;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_2169B9498()
{
  v0 = sub_217007CA4();
  __swift_allocate_value_buffer(v0, qword_27CABEB28);
  v1 = OUTLINED_FUNCTION_8();
  __swift_project_value_buffer(v1, v2);
  return sub_217007C94();
}

void sub_2169B9570(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for SocialProfileHorizontalLockup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v20(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileHorizontalLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9B18(0, *(v13 + 16) + 1, 1);
        v13 = v22;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = v16 + 1;
        v18[1] = v16;
        sub_216AB9B18(v15 > 1, v16 + 1, 1);
        v17 = v19;
        v13 = v22;
      }

      ++v10;
      *(v13 + 16) = v17;
      v19 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileHorizontalLockup);
      ++v10;
    }
  }

  __break(1u);
}

void sub_2169B9804(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v20 = a1;
  v21 = a2;
  v5 = type metadata accessor for SocialProfileFollowRequestLockup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v18[2] = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v18 - v8;
  v10 = 0;
  v11 = *(a3 + 16);
  v19 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v11 == v10)
    {

      return;
    }

    if (v10 >= *(a3 + 16))
    {
      break;
    }

    sub_2169BBAE8();
    v12 = v20(v9);
    if (v3)
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileFollowRequestLockup);

      return;
    }

    if (v12)
    {
      sub_2169BBB94();
      v13 = v19;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_216AB9B70(0, *(v13 + 16) + 1, 1);
        v13 = v22;
      }

      v16 = *(v13 + 16);
      v15 = *(v13 + 24);
      v17 = v16 + 1;
      if (v16 >= v15 >> 1)
      {
        v19 = v16 + 1;
        v18[1] = v16;
        sub_216AB9B70(v15 > 1, v16 + 1, 1);
        v17 = v19;
        v13 = v22;
      }

      ++v10;
      *(v13 + 16) = v17;
      v19 = v13;
      sub_2169BBB94();
    }

    else
    {
      sub_2169BBB3C(v9, type metadata accessor for SocialProfileFollowRequestLockup);
      ++v10;
    }
  }

  __break(1u);
}