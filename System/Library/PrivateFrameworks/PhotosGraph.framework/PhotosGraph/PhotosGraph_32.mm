void sub_22F3669F4(unint64_t a1, char *a2, char *a3, char *a4, __n128 a5)
{
  v71 = sub_22F740400();
  v9 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v68 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v67 = &v59 - v12;
  MEMORY[0x28223BE20](v13);
  v70 = &v59 - v14;
  MEMORY[0x28223BE20](v15);
  v69 = &v59 - v16;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    return;
  }

  if (&a2[-a1] == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_70;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v20 = &a2[-a1] / v18;
  v74 = a1;
  v73 = a4;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (a4 < a2 || &a2[v22] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = &a4[v22];
    if (v22 < 1)
    {
      v44 = &a4[v22];
    }

    else
    {
      v63 = a4;
      v64 = (v9 + 16);
      v62 = (v9 + 8);
      v42 = -v18;
      v43 = &a4[v22];
      v44 = v41;
      v65 = v42;
      while (2)
      {
        while (1)
        {
          v60 = v44;
          v45 = &a2[v42];
          v69 = &a2[v42];
          v66 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v74 = a2;
              v72 = v60;
              goto LABEL_68;
            }

            v47 = a3;
            v61 = v44;
            v48 = *v64;
            v70 = (v43 + v42);
            v49 = v71;
            (v48)(v67);
            (v48)(v68, v45, v49);
            v50 = sub_22F7403E0();
            v52 = v51;
            if (v50 == sub_22F7403E0() && v52 == v53)
            {
              v54 = 0;
            }

            else
            {
              v54 = sub_22F742040();
            }

            v42 = v65;
            a3 = v65 + v47;
            v55 = *v62;
            v56 = v71;
            (*v62)(v68, v71);
            v55(v67, v56);
            if (v54)
            {
              break;
            }

            v57 = v70;
            v44 = v70;
            if (v47 < v43 || a3 >= v43)
            {
              swift_arrayInitWithTakeFrontToBack();
              v45 = v69;
            }

            else
            {
              v45 = v69;
              if (v47 != v43)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v43 = v44;
            v46 = v57 > v63;
            a2 = v66;
            if (!v46)
            {
              goto LABEL_66;
            }
          }

          if (v47 < v66 || a3 >= v66)
          {
            break;
          }

          a2 = v69;
          v58 = v63;
          v44 = v61;
          if (v47 != v66)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v43 <= v58)
          {
            goto LABEL_66;
          }
        }

        a2 = v69;
        swift_arrayInitWithTakeFrontToBack();
        v44 = v61;
        if (v43 > v63)
        {
          continue;
        }

        break;
      }
    }

LABEL_66:
    v74 = a2;
    v72 = v44;
  }

  else
  {
    v21 = v20 * v18;
    if (a4 < a1 || a1 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v68 = &a4[v21];
    v72 = &a4[v21];
    if (v21 >= 1 && a2 < a3)
    {
      v24 = *(v9 + 16);
      v66 = v18;
      v67 = (v9 + 16);
      v64 = (v9 + 8);
      v65 = v24;
      do
      {
        v25 = a3;
        v26 = a2;
        v27 = a2;
        v28 = v71;
        v29 = v65;
        v65(v69, v27, v71);
        v29(v70, a4, v28);
        v30 = sub_22F7403E0();
        v32 = v31;
        if (v30 == sub_22F7403E0() && v32 == v33)
        {

          v34 = *v64;
          v35 = v71;
          (*v64)(v70, v71);
          v34(v69, v35);
        }

        else
        {
          v36 = sub_22F742040();

          v37 = *v64;
          v38 = v71;
          (*v64)(v70, v71);
          v37(v69, v38);
          if (v36)
          {
            a2 = &v66[v26];
            a3 = v25;
            if (a1 < v26 || a1 >= a2)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (a1 != v26)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v40 = v66;
            goto LABEL_37;
          }
        }

        v39 = a4;
        v40 = v66;
        a4 = &v66[a4];
        a2 = v26;
        a3 = v25;
        if (a1 < v39 || a1 >= a4)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != v39)
        {
          swift_arrayInitWithTakeBackToFront();
          v73 = a4;
          goto LABEL_37;
        }

        v73 = a4;
LABEL_37:
        a1 += v40;
        v74 = a1;
      }

      while (a4 < v68 && a2 < a3);
    }
  }

LABEL_68:
  sub_22F3B6698(&v74, &v73, &v72);
}

uint64_t _s11PhotosGraph32ExtendedTokenCollectionGeneratorC23generateCityAndAreaInfo3for36representativeAssetUUIDsByMomentUUIDSDySo19KGElementIdentifierVAC0hK0VG_SDyAhC0jK0VGtAA04NodeE15BinaryAdjacencyVySo07PGGraphquE0CSo0x7AddressuE0CG_SDySSSaySSGGtF_0(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v3 = *a1;
  v2 = *(a1 + 8);
  if (qword_2810A9B10 != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4E10;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("ExtendedTokenGenerator: generateCityAndAreaInfo", 47, 2u, v5, 0, v4, v64);
  v6 = [objc_opt_self() useAOIsInExtendedTokens];
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v7 = sub_22F740B90();
  __swift_project_value_buffer(v7, qword_2810B4D00);
  v8 = sub_22F740B70();
  v9 = sub_22F7415F0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_22F0FC000, v8, v9, "User default to use AOI token generation is %{BOOL}d.", v10, 8u);
    MEMORY[0x2319033A0](v10, -1, -1);
  }

  v57 = v6;

  v11 = objc_allocWithZone(PGGraphAddressNodeCollection);
  v59 = v3;
  v12 = [v3 targets];
  v53 = v2;
  v13 = [v11 initWithGraph:v2 elementIdentifiers:v12];

  v60 = v13;
  v14 = [v13 cityNodes];
  v15 = [objc_opt_self() addressOfCity];
  v16 = [objc_msgSend(v14 graph)];
  swift_unknownObjectRelease();
  v17 = [v16 concreteGraph];

  if (v17)
  {
    v18 = [v14 elementIdentifiers];
    v19 = [v17 adjacencyWithSources:v18 relation:v15];

    swift_unknownObjectRetain();
    v55 = [v19 transposed];
    v56 = v17;
    swift_unknownObjectRelease();

    v20 = [v60 areaNodes];
    v21 = [objc_opt_self() addressOfArea];
    v22 = [objc_msgSend(v20 &selRef:sel_graphReference generateDebugInformationForAssetCollection:? graph:? progressReporter:? error:?)];
    swift_unknownObjectRelease();
    v23 = [v22 concreteGraph];

    if (v23)
    {
      v24 = [v20 elementIdentifiers];
      v25 = [v23 adjacencyWithSources:v24 relation:v21];

      swift_unknownObjectRetain();
      v26 = [v25 transposed];
      v51 = v26;
      swift_unknownObjectRelease();

      v27 = objc_allocWithZone(PGGraphMomentNodeCollection);
      v28 = v59;
      v29 = [v59 sources];
      v30 = v53;
      v31 = [v27 initWithGraph:v53 elementIdentifiers:v29];

      v54 = v31;
      v32 = [v31 momentUUIDByMomentNodeAsCollection];
      sub_22F120634(0, &qword_2810A8FC8, off_27887B108);
      sub_22F368F8C();
      v33 = sub_22F740CA0();
      v52 = v33;

      v34 = [v31 numberOfAssetsByMomentUUID];
      sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
      v35 = sub_22F740CA0();

      v36 = sub_22F2F2AFC(v35);

      v50 = &v50;
      v62 = MEMORY[0x277D84F98];
      v63 = MEMORY[0x277D84F98];
      MEMORY[0x28223BE20](v37);
      v45[2] = v33;
      v45[3] = v58;
      v38 = v55;
      v45[4] = v36;
      v45[5] = v55;
      v45[6] = v56;
      v45[7] = &v63;
      v46 = v57;
      v47 = v26;
      v48 = v23;
      v49 = &v62;
      v39 = swift_allocObject();
      v39[2] = sub_22F368FF4;
      v39[3] = v45;
      v39[4] = v28;
      v39[5] = v30;
      v40 = swift_allocObject();
      *(v40 + 16) = sub_22F36903C;
      *(v40 + 24) = v39;
      aBlock[4] = sub_22F15A3B8;
      aBlock[5] = v40;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22F107F34;
      aBlock[3] = &block_descriptor_29;
      v41 = _Block_copy(aBlock);
      v42 = v28;
      swift_unknownObjectRetain();

      [v42 enumerateTargetsBySourceWith_];
      _Block_release(v41);
      LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      swift_unknownObjectRelease();

      if ((v41 & 1) == 0)
      {
        v43 = v63;
        sub_22F1B2BBC(0);

        return v43;
      }

      __break(1u);
    }
  }

  LODWORD(v49) = 0;
  v48 = 40;
  result = sub_22F741D40();
  __break(1u);
  return result;
}

void *_s11PhotosGraph32ExtendedTokenCollectionGeneratorC016generateLocationC6Tokens3forSay0A12Intelligence0hcD0VGSayAF05QueryD0VG_tF_0(void *a1)
{
  if (qword_2810A9418 != -1)
  {
    goto LABEL_29;
  }

  while (1)
  {
    v2 = sub_22F740B90();
    __swift_project_value_buffer(v2, qword_2810B4D00);
    v3 = sub_22F740B70();
    v4 = sub_22F7415C0();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_22F0FC000, v3, v4, "generateLocationExtendedTokens for query tokens has started.", v5, 2u);
      MEMORY[0x2319033A0](v5, -1, -1);
    }

    v6 = a1[2];
    if (!v6)
    {
      break;
    }

    v7 = *(sub_22F73FDA0() - 8);
    v8 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    a1 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_22F36282C(v8, &v24);
      v10 = v24;
      v11 = *(v24 + 16);
      v12 = a1[2];
      v13 = v12 + v11;
      if (__OFADD__(v12, v11))
      {
        break;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v13 <= a1[3] >> 1)
      {
        if (*(v10 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v12 <= v13)
        {
          v15 = v12 + v11;
        }

        else
        {
          v15 = v12;
        }

        a1 = sub_22F13E8E8(isUniquelyReferenced_nonNull_native, v15, 1, a1);
        if (*(v10 + 16))
        {
LABEL_17:
          v16 = (a1[3] >> 1) - a1[2];
          sub_22F740400();
          if (v16 < v11)
          {
            goto LABEL_27;
          }

          swift_arrayInitWithCopy();

          if (v11)
          {
            v17 = a1[2];
            v18 = __OFADD__(v17, v11);
            v19 = v17 + v11;
            if (v18)
            {
              goto LABEL_28;
            }

            a1[2] = v19;
          }

          goto LABEL_7;
        }
      }

      if (v11)
      {
        goto LABEL_26;
      }

LABEL_7:
      v8 += v9;
      if (!--v6)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    swift_once();
  }

  a1 = MEMORY[0x277D84F90];
LABEL_22:
  v20 = sub_22F740B70();
  v21 = sub_22F7415C0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_22F0FC000, v20, v21, "generateLocationExtendedTokens for query tokens complete.", v22, 2u);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  return a1;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s11PhotosGraph32ExtendedTokenCollectionGeneratorC016filterCityInfoByH14NodeIdentifier3forSDySo09KGElementL0VAC0hI0VGAJ_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v3 = sub_22F10B3D0(*(a1 + 16), 0);
    v4 = sub_22F11AF58(&v61, (v3 + 4), v1, a1);
    v5 = v61;

    sub_22F0FF590(v5);
    if (v4 == v1)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v61 = v3;
  sub_22F3618E8(&v61);
  v6 = v61;
  v50 = v61[2];
  if (v50)
  {
    v7 = 0;
    v8 = MEMORY[0x277D84F98];
    v49 = v61 + 4;
    v48 = v61;
    while (v7 < *(v6 + 16))
    {
      v10 = &v49[4 * v7];
      v52 = v10[1];
      v11 = v10[3];
      v51 = v10[2];
      v55 = *v10;
      v56 = v7 + 1;
      v12 = v8 + 64;
      v13 = 1 << *(v8 + 32);
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v15 = v14 & *(v8 + 64);
      v16 = (v13 + 63) >> 6;
      v60 = v11 + 56;
      swift_bridgeObjectRetain_n();

      v17 = 0;
      v57 = v8;
      v59 = v11;
      v53 = v16;
      v54 = v8 + 64;
LABEL_14:
      while (v15)
      {
LABEL_19:
        v19 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
        v20 = *(*(v8 + 56) + 24 * (v19 | (v17 << 6)) + 16);
        if (*(v20 + 16) >= *(v11 + 16))
        {
          v21 = 1 << *(v11 + 32);
          if (v21 < 64)
          {
            v22 = ~(-1 << v21);
          }

          else
          {
            v22 = -1;
          }

          v23 = v22 & *(v11 + 56);
          v24 = (v21 + 63) >> 6;
          v25 = v20 + 56;

          v8 = 0;
          v58 = v24;
          while (v23)
          {
            if (!*(v20 + 16))
            {
LABEL_40:

              v8 = v57;
LABEL_42:
              v16 = v53;
              v12 = v54;
              goto LABEL_14;
            }

LABEL_27:
            v26 = (*(v11 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v23)))));
            v27 = *v26;
            v28 = v26[1];
            sub_22F742170();

            sub_22F740D60();
            v29 = sub_22F7421D0();
            v30 = -1 << *(v20 + 32);
            v31 = v29 & ~v30;
            if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
LABEL_41:

              v11 = v59;

              v8 = v57;
              goto LABEL_42;
            }

            v23 &= v23 - 1;
            v32 = ~v30;
            while (1)
            {
              v33 = (*(v20 + 48) + 16 * v31);
              v34 = *v33 == v27 && v33[1] == v28;
              if (v34 || (sub_22F742040() & 1) != 0)
              {
                break;
              }

              v31 = (v31 + 1) & v32;
              if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v24 = v58;
            v11 = v59;
          }

          while (1)
          {
            v35 = v8 + 1;
            if (__OFADD__(v8, 1))
            {
              break;
            }

            if (v35 >= v24)
            {

              swift_bridgeObjectRelease_n();

              if (qword_2810A9418 != -1)
              {
                swift_once();
              }

              v36 = sub_22F740B90();
              __swift_project_value_buffer(v36, qword_2810B4D00);
              v37 = sub_22F740B70();
              v38 = sub_22F7415D0();
              v8 = v57;
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                v40 = swift_slowAlloc();
                v61 = v40;
                *v39 = 136315394;
                v41 = sub_22F741750();
                v43 = sub_22F145F20(v41, v42, &v61);

                *(v39 + 4) = v43;
                *(v39 + 12) = 2080;
                v44 = sub_22F741750();
                v46 = sub_22F145F20(v44, v45, &v61);

                *(v39 + 14) = v46;
                _os_log_impl(&dword_22F0FC000, v37, v38, "Found subset, skipping cityID %s in favor of %s for sorting.", v39, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x2319033A0](v40, -1, -1);
                MEMORY[0x2319033A0](v39, -1, -1);
              }

              v6 = v48;
              v7 = v56;
              goto LABEL_8;
            }

            v23 = *(v60 + 8 * v35);
            ++v8;
            if (v23)
            {
              v8 = v35;
              if (*(v20 + 16))
              {
                goto LABEL_27;
              }

              goto LABEL_40;
            }
          }

LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      while (1)
      {
        v18 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
          goto LABEL_52;
        }

        if (v18 >= v16)
        {
          break;
        }

        v15 = *(v12 + 8 * v18);
        ++v17;
        if (v15)
        {
          v17 = v18;
          goto LABEL_19;
        }
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v61 = v8;
      sub_22F1309B4(v52, v51, v11, v55, isUniquelyReferenced_nonNull_native);
      v8 = v61;
      v6 = v48;
      v7 = v56;
LABEL_8:
      if (v7 == v50)
      {

        return v8;
      }
    }

LABEL_53:
    __break(1u);

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22F368124(uint64_t a1)
{
  result = sub_22F36814C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F36814C()
{
  result = qword_27DAB3CA8;
  if (!qword_27DAB3CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3CA8);
  }

  return result;
}

unint64_t sub_22F3681A0(uint64_t a1)
{
  result = sub_22F3681C8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22F3681C8()
{
  result = qword_27DAB3CB0;
  if (!qword_27DAB3CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3CB0);
  }

  return result;
}

uint64_t sub_22F368258(uint64_t a1, int a2)
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

uint64_t sub_22F3682A0(uint64_t result, int a2, int a3)
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

char *sub_22F368370(void *a1, void **a2)
{
  v4 = *a2;
  v3 = a2[1];
  v6 = a2[2];
  v5 = a2[3];
  v7 = a2[4];
  v8 = a2[5];
  v9 = &selRef_coworkerScore;
  v10 = [a1 elementIdentifiers];
  v11 = &selRef_setUseIconicScore_;
  v12 = [v7 targetsForSources_];

  v13 = [objc_allocWithZone(PGGraphLocationCountryNodeCollection) initWithGraph:v8 elementIdentifiers:v12];
  v14 = [v13 names];

  v15 = sub_22F741180();
  if (v15[2])
  {
    v62 = v4;
    v64 = v3;
    v16 = v15[4];
    v17 = v15[5];

    v18 = [a1 names];
    v19 = sub_22F741180();

    v65 = v17;
    v66 = v16;
    if (v19[2])
    {
      v20 = v6;
      v21 = v19[4];
      v22 = v19[5];

      v23 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
      v25 = *(v23 + 2);
      v24 = *(v23 + 3);
      if (v25 >= v24 >> 1)
      {
        v23 = sub_22F13E1A8((v24 > 1), v25 + 1, 1, v23);
      }

      *(v23 + 2) = v25 + 1;
      v26 = &v23[16 * v25];
      *(v26 + 4) = v21;
      *(v26 + 5) = v22;
      v6 = v20;
      v9 = &selRef_coworkerScore;
      v11 = &selRef_setUseIconicScore_;
    }

    else
    {

      v23 = MEMORY[0x277D84F90];
    }

    v34 = v9;
    v35 = [a1 v9[378]];
    v36 = v11;
    v37 = [v63 v11[446]];

    v38 = [objc_allocWithZone(PGGraphLocationCountyNodeCollection) initWithGraph:v64 elementIdentifiers:v37];
    v39 = [v38 names];

    v40 = sub_22F741180();
    if (v40[2])
    {
      v42 = v40[4];
      v41 = v40[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v44 = *(v23 + 2);
      v43 = *(v23 + 3);
      if (v44 >= v43 >> 1)
      {
        v23 = sub_22F13E1A8((v43 > 1), v44 + 1, 1, v23);
      }

      *(v23 + 2) = v44 + 1;
      v45 = &v23[16 * v44];
      *(v45 + 4) = v42;
      *(v45 + 5) = v41;
    }

    else
    {
    }

    v46 = [a1 v34 + 2444];
    v47 = [v6 v36 + 3590];

    v48 = [objc_allocWithZone(PGGraphLocationStateNodeCollection) initWithGraph:v5 elementIdentifiers:v47];
    v49 = [v48 names];

    v50 = sub_22F741180();
    if (v50[2])
    {
      v52 = v50[4];
      v51 = v50[5];

      v54 = v65;
      v53 = v66;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
      }

      v56 = *(v23 + 2);
      v55 = *(v23 + 3);
      if (v56 >= v55 >> 1)
      {
        v23 = sub_22F13E1A8((v55 > 1), v56 + 1, 1, v23);
      }

      *(v23 + 2) = v56 + 1;
      v57 = &v23[16 * v56];
      *(v57 + 4) = v52;
      *(v57 + 5) = v51;
    }

    else
    {

      v54 = v65;
      v53 = v66;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_22F13E1A8(0, *(v23 + 2) + 1, 1, v23);
    }

    v59 = *(v23 + 2);
    v58 = *(v23 + 3);
    if (v59 >= v58 >> 1)
    {
      v23 = sub_22F13E1A8((v58 > 1), v59 + 1, 1, v23);
    }

    *(v23 + 2) = v59 + 1;
    v60 = &v23[16 * v59];
    *(v60 + 4) = v53;
    *(v60 + 5) = v54;
  }

  else
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v27 = sub_22F740B90();
    __swift_project_value_buffer(v27, qword_2810B4D00);
    v28 = a1;
    v29 = sub_22F740B70();
    v30 = sub_22F7415E0();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      *(v31 + 4) = v28;
      *v32 = v28;
      v33 = v28;
      _os_log_impl(&dword_22F0FC000, v29, v30, "City node %@ doesn't have country node associated with it!", v31, 0xCu);
      sub_22F2A87F0(v32);
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    return 0;
  }

  return v23;
}

unint64_t sub_22F36892C()
{
  result = qword_2810A9088;
  if (!qword_2810A9088)
  {
    type metadata accessor for KGElementIdentifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9088);
  }

  return result;
}

char *sub_22F3689D4(void *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = [a1 elementIdentifiers];
  v10 = [v7 targetsForSources_];

  v11 = [objc_allocWithZone(PGGraphLocationCountryNodeCollection) initWithGraph:v8 elementIdentifiers:v10];
  v12 = [v11 names];

  v13 = sub_22F741180();
  if (v13[2])
  {
    v55 = v6;
    v56 = v13[4];
    v57 = v13[5];

    v14 = [a1 names];
    v15 = sub_22F741420();

    v16 = sub_22F15ABD4(v15);
    v18 = v17;

    if (v18)
    {
      v19 = sub_22F13E1A8(0, 1, 1, MEMORY[0x277D84F90]);
      v21 = *(v19 + 2);
      v20 = *(v19 + 3);
      if (v21 >= v20 >> 1)
      {
        v19 = sub_22F13E1A8((v20 > 1), v21 + 1, 1, v19);
      }

      *(v19 + 2) = v21 + 1;
      v22 = &v19[16 * v21];
      *(v22 + 4) = v16;
      *(v22 + 5) = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    v30 = [a1 elementIdentifiers];
    v31 = [v4 targetsForSources_];

    v32 = [objc_allocWithZone(PGGraphLocationCountyNodeCollection) initWithGraph:v3 elementIdentifiers:v31];
    v33 = [v32 names];

    v34 = sub_22F741180();
    v35 = v5;
    if (v34[2])
    {
      v37 = v34[4];
      v36 = v34[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22F13E1A8(0, *(v19 + 2) + 1, 1, v19);
      }

      v39 = *(v19 + 2);
      v38 = *(v19 + 3);
      if (v39 >= v38 >> 1)
      {
        v19 = sub_22F13E1A8((v38 > 1), v39 + 1, 1, v19);
      }

      *(v19 + 2) = v39 + 1;
      v40 = &v19[16 * v39];
      *(v40 + 4) = v37;
      *(v40 + 5) = v36;
    }

    else
    {
    }

    v41 = [a1 elementIdentifiers];
    v42 = [v55 targetsForSources_];

    v43 = [objc_allocWithZone(PGGraphLocationStateNodeCollection) initWithGraph:v35 elementIdentifiers:v42];
    v44 = [v43 names];

    v45 = sub_22F741180();
    if (v45[2])
    {
      v47 = v45[4];
      v46 = v45[5];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_22F13E1A8(0, *(v19 + 2) + 1, 1, v19);
      }

      v49 = *(v19 + 2);
      v48 = *(v19 + 3);
      if (v49 >= v48 >> 1)
      {
        v19 = sub_22F13E1A8((v48 > 1), v49 + 1, 1, v19);
      }

      *(v19 + 2) = v49 + 1;
      v50 = &v19[16 * v49];
      *(v50 + 4) = v47;
      *(v50 + 5) = v46;
    }

    else
    {
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_22F13E1A8(0, *(v19 + 2) + 1, 1, v19);
    }

    v52 = *(v19 + 2);
    v51 = *(v19 + 3);
    if (v52 >= v51 >> 1)
    {
      v19 = sub_22F13E1A8((v51 > 1), v52 + 1, 1, v19);
    }

    *(v19 + 2) = v52 + 1;
    v53 = &v19[16 * v52];
    *(v53 + 4) = v56;
    *(v53 + 5) = v57;
  }

  else
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v23 = sub_22F740B90();
    __swift_project_value_buffer(v23, qword_2810B4D00);
    v24 = a1;
    v25 = sub_22F740B70();
    v26 = sub_22F7415E0();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      *(v27 + 4) = v24;
      *v28 = v24;
      v29 = v24;
      _os_log_impl(&dword_22F0FC000, v25, v26, "Area node %@ doesn't have country node associated with it!", v27, 0xCu);
      sub_22F2A87F0(v28);
      MEMORY[0x2319033A0](v28, -1, -1);
      MEMORY[0x2319033A0](v27, -1, -1);
    }

    return 0;
  }

  return v19;
}

unint64_t sub_22F368F8C()
{
  result = qword_2810A8FC0;
  if (!qword_2810A8FC0)
  {
    sub_22F120634(255, &qword_2810A8FC8, off_27887B108);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A8FC0);
  }

  return result;
}

id PHAssetCollection.identifier.getter()
{
  result = [v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_22F740E20();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_22F369120@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*v2 *a1];
  if (v4)
  {
    v5 = v4;
    sub_22F73F640();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_22F73F690();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

id sub_22F3691C0()
{
  v1 = [*v0 approximateLocation];

  return v1;
}

id sub_22F3691F8()
{
  result = [*v0 uuid];
  if (result)
  {
    v2 = result;
    v3 = sub_22F740E20();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id PhotosChallengeEvaluationContext.__allocating_init(graph:photoLibrary:sceneTaxonomy:serviceManager:publicEventManager:loggingConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = objc_allocWithZone(v6);
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_graph] = a1;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_photoLibrary] = a2;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_sceneTaxonomy] = a3;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_serviceManager] = a4;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_publicEventManager] = a5;
  *&v13[OBJC_IVAR___PGPhotosChallengeEvaluationContext_loggingConnection] = a6;
  v15.receiver = v13;
  v15.super_class = v6;
  return objc_msgSendSuper2(&v15, sel_init);
}

id PhotosChallengeEvaluationContext.init(graph:photoLibrary:sceneTaxonomy:serviceManager:publicEventManager:loggingConnection:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  ObjectType = swift_getObjectType();
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_graph] = a1;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_photoLibrary] = a2;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_sceneTaxonomy] = a3;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_serviceManager] = a4;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_publicEventManager] = a5;
  *&v6[OBJC_IVAR___PGPhotosChallengeEvaluationContext_loggingConnection] = a6;
  v15.receiver = v6;
  v15.super_class = ObjectType;
  return objc_msgSendSuper2(&v15, sel_init);
}

id PhotosChallengeEvaluationContext.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PhotosChallengeEvaluationContext.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id RelatedPersonEntityDescriptor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id RelatedPersonEntityDescriptor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void static CuratedSongLibrary.projectionMatrixURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_22F36B1A8(a1, a2, a3, v16 - v13);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v15 = *(v9 + 8);
    v15(v11, v8);
    v15(v14, v8);
  }
}

void static CuratedSongLibrary.projectionSpecificationsURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_22F36B1A8(a1, a2, a3, v16 - v13);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v15 = *(v9 + 8);
    v15(v11, v8);
    v15(v14, v8);
  }
}

void static CuratedSongLibrary.maestroSongsURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_22F36B1A8(a1, a2, a3, v16 - v13);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v15 = *(v9 + 8);
    v15(v11, v8);
    v15(v14, v8);
  }
}

void static CuratedSongLibrary.maestroSongsInfoURL(forStorefrontIdentifier:progressReporter:)(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v8 = sub_22F73F470();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v16 - v13;
  sub_22F36B1A8(a1, a2, a3, v16 - v13);
  if (!v4)
  {
    sub_22F73F410();
    sub_22F73F420();
    v15 = *(v9 + 8);
    v15(v11, v8);
    v15(v14, v8);
  }
}

void static CuratedSongLibrary.downloadLocalizedAsset(forStorefrontIdentifier:progressReporter:completionHandler:)(uint64_t a1, unint64_t a2, void *a3, void (*a4)(uint64_t *), uint64_t a5)
{
  v6 = v5;
  v54 = a3;
  v55 = a4;
  v56 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  MEMORY[0x28223BE20](v9);
  v11 = (v53 - v10);
  if (qword_2810A9428 != -1)
  {
    swift_once();
  }

  v12 = sub_22F740B90();
  v13 = __swift_project_value_buffer(v12, qword_2810B4D18);

  v53[1] = v13;
  v14 = sub_22F740B70();
  v15 = sub_22F7415C0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_22F145F20(v56, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v14, v15, "[MemoriesMusic] (CuratedSongLibrary) Starting downloadLocalizedAsset for storefrontIdentifierKey: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2319033A0](v17, -1, -1);
    MEMORY[0x2319033A0](v16, -1, -1);
  }

  v18 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v19 = sub_22F740DF0();
  v20 = [v18 initWithType_];

  if (!v20)
  {
    sub_22F36C390();
    v46 = swift_allocError();
    *v47 = 0xD000000000000034;
    *(v47 + 8) = 0x800000022F79C340;
    *(v47 + 16) = 0;
    *v11 = v46;
    swift_storeEnumTagMultiPayload();
    v55(v11);
LABEL_23:
    sub_22F120ADC(v11, &qword_27DAB2EF0, &unk_22F788820);
    return;
  }

  [v20 setDoNotBlockBeforeFirstUnlock_];
  v21 = sub_22F740DF0();
  v22 = sub_22F740DF0();
  [v20 addKeyValuePair:v21 with:v22];

  v23 = sub_22F740DF0();
  v24 = sub_22F740DF0();
  [v20 addKeyValuePair:v23 with:v24];

  [v20 returnTypes_];
  [v20 queryMetaDataSync];
  v25 = [v20 results];
  if (!v25)
  {
    sub_22F36C390();
    v48 = swift_allocError();
    *v49 = 0xD000000000000034;
    *(v49 + 8) = 0x800000022F79C340;
    *(v49 + 16) = 1;
    *v11 = v48;
    swift_storeEnumTagMultiPayload();
    v50 = v11;
LABEL_22:
    v55(v50);

    goto LABEL_23;
  }

  v26 = v25;
  sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
  sub_22F741180();

  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v27 = qword_2810A9170;

  aBlock = sub_22F36C4EC(v28, sub_22F120B48, sub_22F3CD0A8);
  sub_22F36D914(&aBlock, v6, v27);

  v29 = aBlock;
  if ((aBlock & 0x8000000000000000) == 0 && (aBlock & 0x4000000000000000) == 0)
  {
    if (*(aBlock + 16))
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  if (!sub_22F741A00())
  {
LABEL_21:

    sub_22F36C390();
    v51 = swift_allocError();
    *v52 = 0xD000000000000034;
    *(v52 + 8) = 0x800000022F79C340;
    *(v52 + 16) = 1;
    *v11 = v51;
    swift_storeEnumTagMultiPayload();
    v50 = v11;
    goto LABEL_22;
  }

LABEL_12:
  if ((v29 & 0xC000000000000001) != 0)
  {
    v30 = MEMORY[0x2319016F0](0, v29);
  }

  else
  {
    if (!*(v29 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v30 = *(v29 + 32);
  }

  v31 = v30;

  v32 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v32 setAllowsCellularAccess_];
  [v32 setRequiresPowerPluggedIn_];
  [v32 setAllowsExpensiveAccess_];
  [v32 setDiscretionary_];
  v33 = swift_allocObject();
  v34 = v54;
  *(v33 + 16) = v54;
  *(v33 + 24) = v31;
  v61 = sub_22F36D9B4;
  v62 = v33;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_22F36BBD4;
  v60 = &block_descriptor_41;
  v35 = _Block_copy(&aBlock);
  v36 = v34;
  v37 = v31;

  [v37 attachProgressCallBack_];
  _Block_release(v35);

  v38 = sub_22F740B70();
  v39 = sub_22F7415C0();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    aBlock = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_22F145F20(v56, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] (CuratedSongLibrary) Starting MobileAsset download of storefrontIdentifierKey: %s ", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2319033A0](v41, -1, -1);
    MEMORY[0x2319033A0](v40, -1, -1);
  }

  v42 = swift_allocObject();
  v42[2] = v55;
  v42[3] = a5;
  v42[4] = v37;
  v61 = sub_22F36D9D4;
  v62 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v58 = 1107296256;
  v59 = sub_22F36B130;
  v60 = &block_descriptor_6_0;
  v43 = _Block_copy(&aBlock);
  v44 = v37;
  v45 = v32;

  [v44 startDownload:v45 completionWithError:v43];

  _Block_release(v43);
}

uint64_t static CuratedSongLibrary.downloadAssetCatalog(progressReporter:completionHandler:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_22F740BC0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F740C00();
  v11 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810AB208 != -1)
  {
    swift_once();
  }

  v18[1] = qword_2810AB210;
  v14 = swift_allocObject();
  v14[2] = a2;
  v14[3] = a3;
  v14[4] = v3;
  v14[5] = a1;
  aBlock[4] = sub_22F36D9E0;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F327D80;
  aBlock[3] = &block_descriptor_12_3;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  sub_22F740BE0();
  v20 = MEMORY[0x277D84F90];
  sub_22F36DA50(&qword_2810A93D8, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D00, &qword_22F78AB80);
  sub_22F36DA98(&qword_2810A92F8, &qword_27DAB3D00, &qword_22F78AB80);
  sub_22F741970();
  MEMORY[0x231901200](0, v13, v10, v15);
  _Block_release(v15);
  (*(v8 + 8))(v10, v7);
  (*(v11 + 8))(v13, v19);
}

uint64_t sub_22F36A8C0()
{
  v0 = sub_22F740BB0();
  __swift_allocate_value_buffer(v0, qword_2810AB1E8);
  *__swift_project_value_buffer(v0, qword_2810AB1E8) = 15;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_22F36A950()
{
  v7 = sub_22F741640();
  v0 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_22F741630();
  MEMORY[0x28223BE20](v3);
  v4 = sub_22F740C00();
  MEMORY[0x28223BE20](v4 - 8);
  v6[1] = sub_22F120634(0, &qword_2810A90E8, 0x277D85C78);
  sub_22F740BE0();
  v8 = MEMORY[0x277D84F90];
  sub_22F36DA50(&unk_2810A90F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F36DA98(&qword_2810A92A8, &qword_27DAB29A8, &unk_22F77BFD0);
  sub_22F741970();
  (*(v0 + 104))(v2, *MEMORY[0x277D85260], v7);
  result = sub_22F741660();
  qword_2810AB210 = result;
  return result;
}

void sub_22F36ABB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a4;
  v32 = a2;
  v5 = sub_22F740C30();
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v27 - v9;
  v11 = dispatch_group_create();
  dispatch_group_enter(v11);
  v12 = swift_allocObject();
  v33 = v12;
  *(v12 + 16) = 0;
  v27[1] = v12 + 16;
  v13 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v14 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v14 setAllowsCellularAccess_];
  v15 = 1;
  [v14 setRequiresPowerPluggedIn_];
  [v14 setAllowsExpensiveAccess_];
  [v14 setDiscretionary_];
  v31 = objc_opt_self();
  v28 = sub_22F740DF0();
  v16 = swift_allocObject();
  v16[2] = v13;
  v16[3] = v12;
  v27[0] = a1;
  v17 = v32;
  v16[4] = a1;
  v16[5] = v17;
  v18 = v11;
  v16[6] = v11;
  aBlock[4] = sub_22F36DA40;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F36B130;
  aBlock[3] = &block_descriptor_23_4;
  v19 = _Block_copy(aBlock);
  v20 = v14;
  v29 = v13;

  v21 = v18;

  v22 = v28;
  [v31 startCatalogDownload:v28 options:v20 completionWithError:v19];
  _Block_release(v19);

  v31 = v20;
  v23 = (v30 + 8);
  do
  {
    sub_22F740C10();
    if (qword_2810AB1E0 != -1)
    {
      swift_once();
    }

    v24 = sub_22F740BB0();
    __swift_project_value_buffer(v24, qword_2810AB1E8);
    sub_22F740C20();
    v25 = *v23;
    (*v23)(v7, v5);
    v26 = sub_22F741610();
    v25(v10, v5);
    if ((v26 & 1) == 0)
    {
      break;
    }

    sub_22F741690();
    ++v15;
  }

  while (v15 != 8);
  sub_22F7416A0();
}

void sub_22F36B014(uint64_t a1, void *a2, id a3, uint64_t a4, void (*a5)(void *, uint64_t), uint64_t a6, NSObject *a7)
{
  [a3 lock];
  swift_beginAccess();
  if ((*(a4 + 16) & 1) == 0)
  {
    if (a1)
    {
      sub_22F36C390();
      v13 = swift_allocError();
      *v14 = a2;
      *(v14 + 8) = 0;
      *(v14 + 16) = 2;
      v15 = a2;
      a5(v13, 1);
    }

    else
    {
      a5(0, 0);
    }
  }

  swift_beginAccess();
  *(a4 + 16) = 1;
  [a3 unlock];
  dispatch_group_leave(a7);
}

void sub_22F36B130(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

void sub_22F36B1A8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a4;
  v48 = a2;
  v49 = a3;
  v47 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v4);
  v46 = &v40 - v5;
  v50 = sub_22F740BB0();
  v6 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_22F740C30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  v16 = swift_allocBox();
  v18 = v17;
  v19 = sub_22F73F470();
  v20 = *(v19 - 8);
  v43 = v18;
  v44 = v20;
  v21 = *(v20 + 56);
  v45 = v19;
  v21(v18, 1, 1);
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  v41 = (v22 + 16);
  v23 = dispatch_group_create();
  dispatch_group_enter(v23);

  v24 = v23;
  sub_22F36DAEC(v47, v48, v49, v51, v16, v22, v24);
  v51 = v16;

  sub_22F740C10();
  v25 = qos_class_self();
  v26 = 270;
  if (((v25 - 25) & 0xFFFFFFF7) == 0)
  {
    v26 = 5;
  }

  *v8 = v26;
  v27 = v50;
  (*(v6 + 104))(v8, *MEMORY[0x277D85188], v50);
  MEMORY[0x2319007F0](v12, v8);
  (*(v6 + 8))(v8, v27);
  v28 = *(v10 + 8);
  v28(v12, v9);
  v29 = sub_22F741610();
  v28(v15, v9);
  if (v29)
  {
    sub_22F36C390();
    swift_allocError();
    *v30 = 0;
    *(v30 + 8) = 0;
    *(v30 + 16) = 5;
LABEL_7:
    swift_willThrow();

    return;
  }

  v31 = v43;
  swift_beginAccess();
  v32 = v31;
  v33 = v46;
  sub_22F13BA9C(v32, v46, &qword_27DAB29A0, &unk_22F77BFC0);
  v35 = v44;
  v34 = v45;
  if ((*(v44 + 48))(v33, 1, v45) == 1)
  {
    sub_22F120ADC(v33, &qword_27DAB29A0, &unk_22F77BFC0);
    v36 = v41;
    swift_beginAccess();
    v37 = *v36;
    sub_22F36C390();
    swift_allocError();
    *v38 = v37;
    *(v38 + 8) = 0;
    *(v38 + 16) = 3;
    v39 = v37;
    goto LABEL_7;
  }

  (*(v35 + 32))(v42, v33, v34);
}

void sub_22F36B650(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  MEMORY[0x28223BE20](v10);
  v12 = (&v18 - v11);
  v13 = swift_projectBox();
  sub_22F13BA9C(a1, v12, &qword_27DAB2EF0, &unk_22F788820);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = *v12;
    sub_22F36C390();
    v15 = swift_allocError();
    *v16 = v14;
    *(v16 + 8) = 0;
    *(v16 + 16) = 3;
    swift_beginAccess();
    v17 = *(a3 + 16);
    *(a3 + 16) = v15;
  }

  else
  {
    sub_22F1207AC(v12, v9, &qword_27DAB29A0, &unk_22F77BFC0);
    swift_beginAccess();
    sub_22F36ECD4(v9, v13);
  }

  dispatch_group_leave(a4);
}

uint64_t sub_22F36B818(void *a1)
{
  v2 = sub_22F741300();
  MEMORY[0x28223BE20](v2);
  if (a1)
  {
    v3 = a1;
    if ([v3 totalExpected] >= 1)
    {
      [v3 totalWritten];
      [v3 totalExpected];
    }
  }

  return sub_22F741690();
}

uint64_t sub_22F36BB80(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_22F36BBD4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_22F36BC40(uint64_t a1, void *a2, void (*a3)(uint64_t *), uint64_t a4, void *a5)
{
  v52 = a4;
  v53 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  MEMORY[0x28223BE20](v14);
  v16 = (&v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = (&v52 - v18);
  MEMORY[0x28223BE20](v20);
  v22 = (&v52 - v21);
  if (a1)
  {
    if (a1 == 48)
    {
      if (qword_2810A9428 != -1)
      {
        swift_once();
      }

      v30 = sub_22F740B90();
      __swift_project_value_buffer(v30, qword_2810B4D18);
      v31 = sub_22F740B70();
      v32 = sub_22F7415E0();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        *v33 = 0;
        _os_log_impl(&dword_22F0FC000, v31, v32, "[MemoriesMusic] (CuratedSongLibrary) downloadCancelled", v33, 2u);
        MEMORY[0x2319033A0](v33, -1, -1);
      }

      sub_22F36C390();
      v34 = swift_allocError();
      *v35 = a2;
      *(v35 + 8) = 0;
      v36 = 4;
    }

    else
    {
      if (a1 == 10)
      {
        if (qword_2810A9428 != -1)
        {
          swift_once();
        }

        v23 = sub_22F740B90();
        __swift_project_value_buffer(v23, qword_2810B4D18);
        v24 = sub_22F740B70();
        v25 = sub_22F7415D0();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          *v26 = 0;
          _os_log_impl(&dword_22F0FC000, v24, v25, "[MemoriesMusic] (CuratedSongLibrary) downloadAssetAlreadyInstalled", v26, 2u);
          MEMORY[0x2319033A0](v26, -1, -1);
        }

        v27 = [a5 getLocalUrl];
        if (v27)
        {
          v28 = v27;
          sub_22F73F430();

          v29 = sub_22F73F470();
          (*(*(v29 - 8) + 56))(v13, 0, 1, v29);
        }

        else
        {
          v50 = sub_22F73F470();
          (*(*(v50 - 8) + 56))(v13, 1, 1, v50);
        }

        sub_22F1207AC(v13, v22, &qword_27DAB29A0, &unk_22F77BFC0);
        swift_storeEnumTagMultiPayload();
        goto LABEL_31;
      }

      if (qword_2810A9428 != -1)
      {
        swift_once();
      }

      v44 = sub_22F740B90();
      __swift_project_value_buffer(v44, qword_2810B4D18);
      v45 = sub_22F740B70();
      v46 = sub_22F7415E0();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134217984;
        *(v47 + 4) = a1;
        _os_log_impl(&dword_22F0FC000, v45, v46, "[MemoriesMusic] (CuratedSongLibrary) unknown downloadResult: %ld", v47, 0xCu);
        MEMORY[0x2319033A0](v47, -1, -1);
      }

      sub_22F36C390();
      v34 = swift_allocError();
      *v35 = a2;
      *(v35 + 8) = 0;
      v36 = 3;
    }

    *(v35 + 16) = v36;
    *v16 = v34;
    swift_storeEnumTagMultiPayload();
    v48 = a2;
    v22 = v16;
    goto LABEL_31;
  }

  if (qword_2810A9428 != -1)
  {
    swift_once();
  }

  v37 = sub_22F740B90();
  __swift_project_value_buffer(v37, qword_2810B4D18);
  v38 = sub_22F740B70();
  v39 = sub_22F7415C0();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] (CuratedSongLibrary) downloadSuccessful", v40, 2u);
    MEMORY[0x2319033A0](v40, -1, -1);
  }

  v41 = [a5 getLocalUrl];
  if (v41)
  {
    v42 = v41;
    sub_22F73F430();

    v43 = sub_22F73F470();
    (*(*(v43 - 8) + 56))(v10, 0, 1, v43);
  }

  else
  {
    v49 = sub_22F73F470();
    (*(*(v49 - 8) + 56))(v10, 1, 1, v49);
  }

  sub_22F1207AC(v10, v19, &qword_27DAB29A0, &unk_22F77BFC0);
  swift_storeEnumTagMultiPayload();
  v22 = v19;
LABEL_31:
  v53(v22);
  return sub_22F120ADC(v22, &qword_27DAB2EF0, &unk_22F788820);
}

id CuratedSongLibrary.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CuratedSongLibrary.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id CuratedSongLibrary.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F36C390()
{
  result = qword_2810AB1D0;
  if (!qword_2810AB1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AB1D0);
  }

  return result;
}

unint64_t sub_22F36C4EC(unint64_t a1, uint64_t (*a2)(uint64_t, void), void (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v7 = sub_22F741A00();
  if (!v7)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3(v9 + 32, v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_22F36C590(void **a1, void **a2, void *a3)
{
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v43 = v41 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = v41 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = v41 - v13;
  v15 = *a1;
  v16 = *a2;
  v17 = sub_22F740DF0();
  v18 = [v15 assetProperty_];

  if (v18)
  {
    sub_22F741920();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 1;
  }

  v41[2] = v45;
  v19 = sub_22F740DF0();
  v20 = [v16 assetProperty_];

  if (v20)
  {
    sub_22F741920();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  v48 = v46;
  v49 = v47;
  if (!*(&v47 + 1))
  {

LABEL_14:
    sub_22F120ADC(&v48, &qword_27DAB0C28, &qword_22F778980);
    return 1;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    return 1;
  }

  v41[1] = v45;
  v21 = sub_22F740DF0();

  v22 = [v44 dateFromString_];

  if (v22)
  {
    sub_22F73F640();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v25 = sub_22F73F690();
  v26 = *(v25 - 8);
  v27 = *(v26 + 56);
  v27(v11, v23, 1, v25);
  sub_22F1207AC(v11, v14, &qword_27DAB0920, &qword_22F770B20);
  v28 = *(v26 + 48);
  if (v28(v14, 1, v25) == 1)
  {
    sub_22F120ADC(v14, &qword_27DAB0920, &qword_22F770B20);
    v29 = 1.0;
    goto LABEL_23;
  }

  sub_22F73F620();
  v29 = v30;
  v31 = v30;
  result = (*(v26 + 8))(v14, v25);
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v29 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_33;
  }

  if (v29 >= 9.22337204e18)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

LABEL_23:
  v32 = sub_22F740DF0();

  v33 = [v44 dateFromString_];

  if (v33)
  {
    v34 = v42;
    sub_22F73F640();

    v35 = 0;
  }

  else
  {
    v35 = 1;
    v34 = v42;
  }

  v27(v34, v35, 1, v25);
  v36 = v34;
  v37 = v43;
  sub_22F1207AC(v36, v43, &qword_27DAB0920, &qword_22F770B20);
  if (v28(v37, 1, v25) == 1)
  {
    sub_22F120ADC(v37, &qword_27DAB0920, &qword_22F770B20);
    v38 = 0.0;
    return v38 < v29;
  }

  sub_22F73F620();
  v38 = v39;
  v40 = v39;
  result = (*(v26 + 8))(v37, v25);
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v38 > -9.22337204e18)
    {
      if (v38 < 9.22337204e18)
      {
        return v38 < v29;
      }

      goto LABEL_35;
    }

LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  __break(1u);
  return result;
}

uint64_t sub_22F36CB10(void **__src, void **a2, void **a3, unint64_t __dst, void *a5)
{
  v6 = a3;
  v7 = a2;
  v8 = __src;
  v9 = a2 - __src;
  v10 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v10 = a2 - __src;
  }

  v11 = v10 >> 3;
  v12 = a3 - a2;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v11 >= v13 >> 3)
  {
    if (__dst != a2 || &a2[v14] <= __dst)
    {
      v28 = __dst;
      memmove(__dst, a2, 8 * v14);
      __dst = v28;
    }

    v52 = __dst;
    v16 = (__dst + 8 * v14);
    if (v12 < 8 || v7 <= v8)
    {
      v15 = __dst;
      goto LABEL_53;
    }

    v29 = -__dst;
    v49 = -__dst;
    v50 = v8;
    while (1)
    {
      v51 = v7;
      v30 = v7 - 1;
      v31 = v16 + v29;
      --v6;
      v32 = v16;
      while (1)
      {
        v33 = *--v32;
        v55 = v33;
        v34 = v30;
        v54 = *v30;
        v35 = v54;
        v36 = v33;
        v37 = v35;
        v38 = sub_22F36C590(&v55, &v54, a5);
        if (v5)
        {

          if (v31 >= 0)
          {
            v46 = v31;
          }

          else
          {
            v46 = v31 + 7;
          }

          v44 = v51;
          v45 = v52;
          if (v51 >= v52 && v51 < v52 + (v46 & 0xFFFFFFFFFFFFFFF8) && v51 == v52)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v46 >> 3);
          goto LABEL_59;
        }

        v39 = v38;

        v40 = v6 + 1;
        if (v39)
        {
          break;
        }

        if (v40 != v16)
        {
          *v6 = *v32;
        }

        v31 -= 8;
        --v6;
        v16 = v32;
        v30 = v34;
        if (v32 <= v52)
        {
          v16 = v32;
          v7 = v51;
          v15 = v52;
LABEL_53:
          v47 = v16 - v15 + 7;
          if (v16 - v15 >= 0)
          {
            v47 = v16 - v15;
          }

          if (v7 >= v15 && v7 < (v15 + (v47 & 0xFFFFFFFFFFFFFFF8)) && v7 == v15)
          {
            goto LABEL_60;
          }

          v43 = 8 * (v47 >> 3);
          v44 = v7;
          v45 = v15;
LABEL_59:
          memmove(v44, v45, v43);
          goto LABEL_60;
        }
      }

      if (v40 != v51)
      {
        *v6 = *v34;
      }

      v15 = v52;
      if (v16 > v52)
      {
        v7 = v34;
        v29 = v49;
        if (v34 > v50)
        {
          continue;
        }
      }

      v7 = v34;
      goto LABEL_53;
    }
  }

  v15 = __dst;
  if (__dst != __src || &__src[v11] <= __dst)
  {
    memmove(__dst, __src, 8 * v11);
  }

  v16 = &v15[v11];
  if (v9 < 8 || v7 >= v6)
  {
    v7 = v8;
    goto LABEL_53;
  }

  while (1)
  {
    v17 = v8;
    v18 = v16;
    v19 = v7;
    v55 = *v7;
    v20 = v15;
    v54 = *v15;
    v21 = v54;
    v22 = v55;
    v23 = v21;
    v24 = sub_22F36C590(&v55, &v54, a5);
    if (v5)
    {
      break;
    }

    v25 = v24;

    if ((v25 & 1) == 0)
    {
      v26 = v20;
      v15 = v20 + 1;
      v27 = v17;
      v7 = v19;
      if (v17 == v20)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v27 = *v26;
      goto LABEL_17;
    }

    v26 = v19;
    v7 = v19 + 1;
    v27 = v17;
    v15 = v20;
    if (v17 != v19)
    {
      goto LABEL_16;
    }

LABEL_17:
    v8 = v27 + 1;
    v16 = v18;
    if (v15 >= v18 || v7 >= v6)
    {
      v7 = v8;
      goto LABEL_53;
    }
  }

  v41 = v18 - v20 + 7;
  if ((v18 - v20) >= 0)
  {
    v41 = v18 - v20;
  }

  v42 = v41 >> 3;
  if (v8 < v20 || v8 >= (v20 + (v41 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v8, v20, 8 * v42);
  }

  else if (v8 != v20)
  {
    v43 = 8 * v42;
    v44 = v8;
    v45 = v20;
    goto LABEL_59;
  }

LABEL_60:

  return 1;
}

void sub_22F36CED0(void **a1, unint64_t a2, uint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = *a1;
  v20 = a4;
  v21 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_13:
    v21 = sub_22F3F5F98(v21);
  }

  v17 = v5;
  *v5 = v21;
  v7 = v21 + 16;
  v8 = *(v21 + 2);
  if (v8 < 2)
  {
LABEL_9:

    *v17 = v21;
  }

  else
  {
    while (1)
    {
      v9 = *a3;
      if (!*a3)
      {
        break;
      }

      v10 = &v21[16 * v8];
      v11 = *v10;
      v12 = v7;
      v13 = &v7[16 * v8];
      v14 = *(v13 + 1);
      v5 = (v9 + 8 * v14);
      sub_22F36CB10((v9 + 8 * *v10), (v9 + 8 * *v13), v5, a2, v20);
      if (v4)
      {
        goto LABEL_9;
      }

      if (v14 < v11)
      {
        __break(1u);
LABEL_11:
        __break(1u);
LABEL_12:
        __break(1u);
        goto LABEL_13;
      }

      v15 = *v12;
      if (v8 - 2 >= *v12)
      {
        goto LABEL_11;
      }

      *v10 = v11;
      *(v10 + 1) = v14;
      v16 = v15 - v8;
      if (v15 < v8)
      {
        goto LABEL_12;
      }

      v7 = v12;
      v8 = v15 - 1;
      memmove(v13, v13 + 16, 16 * v16);
      *v12 = v8;
      if (v8 <= 1)
      {
        goto LABEL_9;
      }
    }

    *v17 = v21;
    __break(1u);
  }
}

void sub_22F36D04C(void **a1, uint64_t a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v6 = v5;
  v8 = a3[1];
  v116 = MEMORY[0x277D84F90];
  v113 = a5;
  if (v8 >= 1)
  {
    v9 = 0;
    v111 = MEMORY[0x277D84F90];
    v102 = a4;
    while (1)
    {
      v10 = v9;
      v11 = v9 + 1;
      if (v9 + 1 < v8)
      {
        v12 = *a3;
        v13 = *(*a3 + 8 * v11);
        v114 = *(*a3 + 8 * v9);
        v14 = v114;
        v115 = v13;
        v15 = v13;
        v16 = v14;
        v17 = sub_22F36C590(&v115, &v114, v113);
        if (v6)
        {

          goto LABEL_95;
        }

        v18 = v17;

        v19 = v10;
        v20 = v10 + 2;
        __dst = v19;
        v21 = 8 * v19;
        v22 = (v12 + 8 * v19 + 16);
        while (v8 != v20)
        {
          v23 = *v22;
          v114 = *(v22 - 1);
          v24 = v114;
          v115 = v23;
          v25 = v23;
          v26 = v24;
          v27 = sub_22F36C590(&v115, &v114, v113);

          v28 = v18 ^ v27;
          ++v20;
          ++v22;
          v6 = 0;
          if (v28)
          {
            v8 = (v20 - 1);
            break;
          }
        }

        v10 = __dst;
        if (v18)
        {
          if (v8 < __dst)
          {
            goto LABEL_117;
          }

          if (__dst < v8)
          {
            v29 = 8 * v8 - 8;
            v30 = v8;
            v31 = __dst;
            do
            {
              if (v31 != --v30)
              {
                v32 = *a3;
                if (!*a3)
                {
                  goto LABEL_120;
                }

                v33 = *(v32 + v21);
                *(v32 + v21) = *(v32 + v29);
                *(v32 + v29) = v33;
              }

              ++v31;
              v29 -= 8;
              v21 += 8;
            }

            while (v31 < v30);
          }
        }

        v11 = v8;
        a4 = v102;
      }

      v34 = v111;
      v35 = a3[1];
      if (v11 >= v35)
      {
        goto LABEL_28;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_114;
      }

      if (v11 - v10 >= a4)
      {
LABEL_28:
        if (v11 < v10)
        {
          goto LABEL_113;
        }

        goto LABEL_29;
      }

      v36 = &v10[a4];
      if (__OFADD__(v10, a4))
      {
        goto LABEL_115;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
        break;
      }

      if (v11 == v36)
      {
        goto LABEL_28;
      }

      v86 = v6;
      v87 = *a3;
      v88 = *a3 + 8 * v11 - 8;
      __dstb = v10;
      v89 = &v10[-v11];
      v101 = v36;
      do
      {
        v90 = *(v87 + 8 * v11);
        v105 = v89;
        v107 = v88;
        while (1)
        {
          v91 = v11;
          v114 = *v88;
          v92 = v114;
          v115 = v90;
          v93 = v90;
          v94 = v92;
          v95 = sub_22F36C590(&v115, &v114, v113);
          if (v86)
          {

            goto LABEL_95;
          }

          v96 = v95;

          if ((v96 & 1) == 0)
          {
            break;
          }

          if (!v87)
          {
            goto LABEL_119;
          }

          v11 = v91;
          v97 = *v88;
          v90 = *(v88 + 8);
          *v88 = v90;
          *(v88 + 8) = v97;
          v88 -= 8;
          if (__CFADD__(v89++, 1))
          {
            goto LABEL_87;
          }
        }

        v11 = v91;
LABEL_87:
        ++v11;
        v88 = v107 + 8;
        v89 = v105 - 1;
      }

      while (v11 != v101);
      v11 = v101;
      v6 = 0;
      v10 = __dstb;
      v34 = v111;
      if (v101 < __dstb)
      {
        goto LABEL_113;
      }

LABEL_29:
      v104 = v11;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v34 = sub_22F13D970(0, *(v34 + 2) + 1, 1, v34);
      }

      v38 = *(v34 + 2);
      v37 = *(v34 + 3);
      v39 = v38 + 1;
      if (v38 >= v37 >> 1)
      {
        v34 = sub_22F13D970((v37 > 1), v38 + 1, 1, v34);
      }

      *(v34 + 2) = v39;
      v40 = v34 + 32;
      v41 = &v34[16 * v38 + 32];
      *v41 = v10;
      *(v41 + 1) = v11;
      v116 = v34;
      __dsta = *a1;
      if (!*a1)
      {
        goto LABEL_121;
      }

      v111 = v34;
      if (v38)
      {
        v106 = v34 + 32;
        while (1)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            break;
          }

          if (v39 == 3)
          {
            v43 = *(v34 + 4);
            v44 = *(v34 + 5);
            v53 = __OFSUB__(v44, v43);
            v45 = v44 - v43;
            v46 = v53;
LABEL_49:
            if (v46)
            {
              goto LABEL_104;
            }

            v59 = &v34[16 * v39];
            v61 = *v59;
            v60 = *(v59 + 1);
            v62 = __OFSUB__(v60, v61);
            v63 = v60 - v61;
            v64 = v62;
            if (v62)
            {
              goto LABEL_107;
            }

            v65 = &v40[16 * v42];
            v67 = *v65;
            v66 = *(v65 + 1);
            v53 = __OFSUB__(v66, v67);
            v68 = v66 - v67;
            if (v53)
            {
              goto LABEL_110;
            }

            if (__OFADD__(v63, v68))
            {
              goto LABEL_111;
            }

            if (v63 + v68 >= v45)
            {
              if (v45 < v68)
              {
                v42 = v39 - 2;
              }

              goto LABEL_70;
            }

            goto LABEL_63;
          }

          v69 = &v34[16 * v39];
          v71 = *v69;
          v70 = *(v69 + 1);
          v53 = __OFSUB__(v70, v71);
          v63 = v70 - v71;
          v64 = v53;
LABEL_63:
          if (v64)
          {
            goto LABEL_106;
          }

          v72 = &v40[16 * v42];
          v74 = *v72;
          v73 = *(v72 + 1);
          v53 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v53)
          {
            goto LABEL_109;
          }

          if (v75 < v63)
          {
            goto LABEL_3;
          }

LABEL_70:
          if (v42 - 1 >= v39)
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
            goto LABEL_116;
          }

          if (!*a3)
          {
            goto LABEL_118;
          }

          v80 = &v40[16 * v42 - 16];
          v81 = *v80;
          v82 = v42;
          v83 = &v40[16 * v42];
          v84 = *(v83 + 1);
          sub_22F36CB10((*a3 + 8 * *v80), (*a3 + 8 * *v83), (*a3 + 8 * v84), __dsta, v113);
          if (v6)
          {
            goto LABEL_95;
          }

          v34 = v111;
          if (v84 < v81)
          {
            goto LABEL_99;
          }

          v85 = *(v111 + 2);
          if (v82 > v85)
          {
            goto LABEL_100;
          }

          *v80 = v81;
          *(v80 + 1) = v84;
          if (v82 >= v85)
          {
            goto LABEL_101;
          }

          v39 = v85 - 1;
          memmove(v83, v83 + 16, 16 * (v85 - 1 - v82));
          *(v111 + 2) = v85 - 1;
          v40 = v106;
          if (v85 <= 2)
          {
LABEL_3:
            v116 = v34;
            goto LABEL_4;
          }
        }

        v47 = &v40[16 * v39];
        v48 = *(v47 - 8);
        v49 = *(v47 - 7);
        v53 = __OFSUB__(v49, v48);
        v50 = v49 - v48;
        if (v53)
        {
          goto LABEL_102;
        }

        v52 = *(v47 - 6);
        v51 = *(v47 - 5);
        v53 = __OFSUB__(v51, v52);
        v45 = v51 - v52;
        v46 = v53;
        if (v53)
        {
          goto LABEL_103;
        }

        v54 = &v34[16 * v39];
        v56 = *v54;
        v55 = *(v54 + 1);
        v53 = __OFSUB__(v55, v56);
        v57 = v55 - v56;
        if (v53)
        {
          goto LABEL_105;
        }

        v53 = __OFADD__(v45, v57);
        v58 = v45 + v57;
        if (v53)
        {
          goto LABEL_108;
        }

        if (v58 >= v50)
        {
          v76 = &v40[16 * v42];
          v78 = *v76;
          v77 = *(v76 + 1);
          v53 = __OFSUB__(v77, v78);
          v79 = v77 - v78;
          if (v53)
          {
            goto LABEL_112;
          }

          if (v45 < v79)
          {
            v42 = v39 - 2;
          }

          goto LABEL_70;
        }

        goto LABEL_49;
      }

LABEL_4:
      v8 = a3[1];
      v9 = v104;
      a4 = v102;
      if (v104 >= v8)
      {
        goto LABEL_90;
      }
    }

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
    goto LABEL_122;
  }

LABEL_90:
  v99 = *a1;
  if (!*a1)
  {
LABEL_122:

    __break(1u);
    return;
  }

  v100 = v113;
  sub_22F36CED0(&v116, v99, a3, v100);
  if (v6)
  {

LABEL_95:
  }

  else
  {
  }
}

void sub_22F36D6C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  if (a3 != a2)
  {
    v7 = a3;
    v8 = *a4;
    v9 = *a4 + 8 * a3 - 8;
    v10 = a1 - a3;
LABEL_4:
    v11 = *(v8 + 8 * v7);
    v19 = v10;
    v20 = v9;
    while (1)
    {
      v22 = v11;
      v21 = *v9;
      v12 = v21;
      v13 = v11;
      v14 = v12;
      v15 = sub_22F36C590(&v22, &v21, a5);

      if (v5)
      {
        break;
      }

      if (v15)
      {
        if (!v8)
        {
          __break(1u);
          return;
        }

        v16 = *v9;
        v11 = *(v9 + 8);
        *v9 = v11;
        *(v9 + 8) = v16;
        v9 -= 8;
        if (!__CFADD__(v10++, 1))
        {
          continue;
        }
      }

      ++v7;
      v9 = v20 + 8;
      v10 = v19 - 1;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return;
    }
  }
}

void sub_22F36D7C0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2;
  v5 = sub_22F742000();
  if (v5 < v3)
  {
    if (v3 >= -1)
    {
      v6 = v5;
      v7 = v3 / 2;
      if (v3 <= 1)
      {
        v8 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
        v8 = sub_22F741200();
        *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = v7;
      }

      v10[0] = ((v8 & 0xFFFFFFFFFFFFFF8) + 32);
      v10[1] = v7;
      v9 = v4;
      sub_22F36D04C(v10, v11, a1, v6, v9);

      *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v3 < 0)
  {
    goto LABEL_12;
  }

  if (v3)
  {
    v4 = v4;
    sub_22F36D6C8(0, v3, 1, a1, v4);
  }
}

void sub_22F36D914(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = *a1;
  v5 = a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = sub_22F3F6724(v4);
    *a1 = v4;
  }

  v7 = *(v4 + 16);
  v9[0] = v4 + 32;
  v9[1] = v7;
  v8 = v5;
  sub_22F36D7C0(v9, v8);

  sub_22F741BB0();
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph18CuratedSongLibraryC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_22F36DA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F36DA98(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_22F36DAEC(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v58 = a3;
  v59 = a4;
  v64 = a1;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  MEMORY[0x28223BE20](v63);
  v12 = (&v58 - v11);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;
  v14 = qword_2810A9428;
  v61 = a5;

  v62 = a7;
  if (v14 != -1)
  {
    swift_once();
  }

  v15 = sub_22F740B90();
  __swift_project_value_buffer(v15, qword_2810B4D18);

  v16 = sub_22F740B70();
  v17 = sub_22F7415C0();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    *(v18 + 4) = sub_22F145F20(v64, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v16, v17, "[MemoriesMusic] (CuratedSongLibrary) Starting downloadLocalizedAsset for storefrontIdentifierKey: %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v19);
    MEMORY[0x2319033A0](v19, -1, -1);
    MEMORY[0x2319033A0](v18, -1, -1);
  }

  v20 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v21 = sub_22F740DF0();
  v22 = [v20 initWithType_];

  if (!v22)
  {
    sub_22F36C390();
    v51 = swift_allocError();
    *v52 = 0xD000000000000034;
    *(v52 + 8) = 0x800000022F79C340;
    *(v52 + 16) = 0;
    *v12 = v51;
    swift_storeEnumTagMultiPayload();
    sub_22F36B650(v12, v61, a6, v62);
    sub_22F120ADC(v12, &qword_27DAB2EF0, &unk_22F788820);
LABEL_22:

    return;
  }

  v60 = v13;
  [v22 setDoNotBlockBeforeFirstUnlock_];
  v23 = sub_22F740DF0();
  v24 = sub_22F740DF0();
  [v22 addKeyValuePair:v23 with:v24];

  v25 = sub_22F740DF0();
  v26 = sub_22F740DF0();
  [v22 addKeyValuePair:v25 with:v26];

  [v22 returnTypes_];
  [v22 queryMetaDataSync];
  v27 = [v22 results];
  if (!v27)
  {
    sub_22F36C390();
    v53 = swift_allocError();
    *v54 = 0xD000000000000034;
    *(v54 + 8) = 0x800000022F79C340;
    *(v54 + 16) = 1;
    *v12 = v53;
    swift_storeEnumTagMultiPayload();
    sub_22F36B650(v12, v61, a6, v62);

    sub_22F120ADC(v12, &qword_27DAB2EF0, &unk_22F788820);
    goto LABEL_22;
  }

  v28 = v27;
  sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
  sub_22F741180();

  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v29 = qword_2810A9170;

  aBlock = sub_22F36C4EC(v30, sub_22F120B48, sub_22F3CD0A8);
  sub_22F36D914(&aBlock, v59, v29);

  v31 = aBlock;
  if ((aBlock & 0x8000000000000000) != 0 || (aBlock & 0x4000000000000000) != 0)
  {
    v57 = aBlock;
    v32 = sub_22F741A00();
    v31 = v57;
  }

  else
  {
    v32 = *(aBlock + 16);
  }

  v33 = v60;
  if (!v32)
  {

    sub_22F36C390();
    v55 = swift_allocError();
    *v56 = 0xD000000000000034;
    *(v56 + 8) = 0x800000022F79C340;
    *(v56 + 16) = 1;
    *v12 = v55;
    swift_storeEnumTagMultiPayload();
    sub_22F36B650(v12, v61, a6, v62);

    sub_22F120ADC(v12, &qword_27DAB2EF0, &unk_22F788820);
    goto LABEL_22;
  }

  if ((v31 & 0xC000000000000001) != 0)
  {
    v34 = MEMORY[0x2319016F0](0, v31);
  }

  else
  {
    if (!*(v31 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v34 = *(v31 + 32);
  }

  v35 = v34;

  v36 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v36 setAllowsCellularAccess_];
  [v36 setRequiresPowerPluggedIn_];
  [v36 setAllowsExpensiveAccess_];
  [v36 setDiscretionary_];
  v37 = swift_allocObject();
  v38 = v58;
  *(v37 + 16) = v58;
  *(v37 + 24) = v35;
  v69 = sub_22F36ED88;
  v70 = v37;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_22F36BBD4;
  v68 = &block_descriptor_56_0;
  v39 = _Block_copy(&aBlock);
  v40 = v38;
  v41 = v35;

  [v41 attachProgressCallBack_];
  _Block_release(v39);

  v42 = sub_22F740B70();
  v43 = sub_22F7415C0();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    aBlock = v45;
    *v44 = 136315138;
    *(v44 + 4) = sub_22F145F20(v64, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v42, v43, "[MemoriesMusic] (CuratedSongLibrary) Starting MobileAsset download of storefrontIdentifierKey: %s ", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v45);
    MEMORY[0x2319033A0](v45, -1, -1);
    MEMORY[0x2319033A0](v44, -1, -1);
  }

  v46 = swift_allocObject();
  v47 = v60;
  v46[2] = sub_22F36EC88;
  v46[3] = v47;
  v46[4] = v41;
  v69 = sub_22F36ED64;
  v70 = v46;
  aBlock = MEMORY[0x277D85DD0];
  v66 = 1107296256;
  v67 = sub_22F36B130;
  v68 = &block_descriptor_63_0;
  v48 = _Block_copy(&aBlock);
  v49 = v41;
  v50 = v36;

  [v49 startDownload:v50 completionWithError:v48];

  _Block_release(v48);
}

void sub_22F36E3E4(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(uint64_t, void *), uint64_t a7, void *a8)
{
  v58 = a3;
  v59 = a4;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2EF0, &unk_22F788820);
  MEMORY[0x28223BE20](v62);
  v15 = (&v57 - v14);
  v16 = swift_allocObject();
  v16[2] = a5;
  v16[3] = a6;
  v63 = a6;
  v16[4] = a7;
  v16[5] = a8;
  v17 = qword_2810A9428;
  v61 = a5;

  v60 = a8;
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = sub_22F740B90();
  __swift_project_value_buffer(v18, qword_2810B4D18);

  v19 = sub_22F740B70();
  v20 = sub_22F7415C0();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    aBlock = v22;
    *v21 = 136315138;
    *(v21 + 4) = sub_22F145F20(a1, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v19, v20, "[MemoriesMusic] (CuratedSongLibrary) Starting downloadLocalizedAsset for storefrontIdentifierKey: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    MEMORY[0x2319033A0](v22, -1, -1);
    MEMORY[0x2319033A0](v21, -1, -1);
  }

  v23 = objc_allocWithZone(MEMORY[0x277D289D8]);
  v24 = sub_22F740DF0();
  v25 = [v23 initWithType_];

  if (!v25)
  {
    sub_22F36C390();
    v52 = swift_allocError();
    *v53 = 0xD000000000000034;
    *(v53 + 8) = 0x800000022F79C340;
    *(v53 + 16) = 0;
    *v15 = v52;
    swift_storeEnumTagMultiPayload();
    sub_22F28A8D8(v15, v61, v63, a7, v60);
LABEL_23:
    sub_22F120ADC(v15, &qword_27DAB2EF0, &unk_22F788820);

    return;
  }

  [v25 setDoNotBlockBeforeFirstUnlock_];
  v26 = sub_22F740DF0();
  v57 = a1;
  v27 = sub_22F740DF0();
  [v25 addKeyValuePair:v26 with:v27];

  v28 = sub_22F740DF0();
  v29 = sub_22F740DF0();
  [v25 addKeyValuePair:v28 with:v29];

  [v25 returnTypes_];
  [v25 queryMetaDataSync];
  v30 = [v25 results];
  if (!v30)
  {
    sub_22F36C390();
    v54 = swift_allocError();
    *v55 = 0xD000000000000034;
LABEL_22:
    *(v55 + 8) = 0x800000022F79C340;
    *(v55 + 16) = 1;
    *v15 = v54;
    swift_storeEnumTagMultiPayload();
    sub_22F28A8D8(v15, v61, v63, a7, v60);

    goto LABEL_23;
  }

  v31 = v30;
  sub_22F120634(0, &qword_2810A8EF0, 0x277D289C0);
  sub_22F741180();

  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v32 = qword_2810A9170;

  aBlock = sub_22F36C4EC(v33, sub_22F120B48, sub_22F3CD0A8);
  sub_22F36D914(&aBlock, v59, v32);

  v34 = aBlock;
  if ((aBlock & 0x8000000000000000) != 0 || (aBlock & 0x4000000000000000) != 0)
  {
    v56 = aBlock;
    v35 = sub_22F741A00();
    v34 = v56;
  }

  else
  {
    v35 = *(aBlock + 16);
  }

  if (!v35)
  {

    sub_22F36C390();
    v54 = swift_allocError();
    *v55 = 0xD000000000000034;
    goto LABEL_22;
  }

  if ((v34 & 0xC000000000000001) != 0)
  {
    v36 = MEMORY[0x2319016F0](0, v34);
  }

  else
  {
    if (!*(v34 + 16))
    {
      __break(1u);

      __break(1u);
      return;
    }

    v36 = *(v34 + 32);
  }

  v37 = v36;

  v38 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v38 setAllowsCellularAccess_];
  [v38 setRequiresPowerPluggedIn_];
  [v38 setAllowsExpensiveAccess_];
  [v38 setDiscretionary_];
  v39 = swift_allocObject();
  v40 = v58;
  *(v39 + 16) = v58;
  *(v39 + 24) = v37;
  v68 = sub_22F36ED88;
  v69 = v39;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_22F36BBD4;
  v67 = &block_descriptor_36_0;
  v41 = _Block_copy(&aBlock);
  v42 = v40;
  v43 = v37;

  [v43 attachProgressCallBack_];
  _Block_release(v41);

  v44 = sub_22F740B70();
  v45 = sub_22F7415C0();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    aBlock = v47;
    *v46 = 136315138;
    *(v46 + 4) = sub_22F145F20(v57, a2, &aBlock);
    _os_log_impl(&dword_22F0FC000, v44, v45, "[MemoriesMusic] (CuratedSongLibrary) Starting MobileAsset download of storefrontIdentifierKey: %s ", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x2319033A0](v47, -1, -1);
    MEMORY[0x2319033A0](v46, -1, -1);
  }

  v48 = swift_allocObject();
  v48[2] = sub_22F36EC7C;
  v48[3] = v16;
  v48[4] = v43;
  v68 = sub_22F36ED64;
  v69 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v65 = 1107296256;
  v66 = sub_22F36B130;
  v67 = &block_descriptor_43;
  v49 = _Block_copy(&aBlock);
  v50 = v43;
  v51 = v38;

  [v50 startDownload:v51 completionWithError:v49];

  _Block_release(v49);
}

uint64_t objectdestroy_2Tm_0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_22F36ECD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB29A0, &unk_22F77BFC0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_22F36EFC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(id, id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, Class *a8, Class *a9)
{
  v14 = objc_allocWithZone(*a8);
  v15 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v16 = [v14 initWithGraph:a7 elementIdentifiers:v15];

  v17 = [objc_allocWithZone(*a9) initWithGraph:a7 elementIdentifiers:a2];
  a4(v16, v17, a3);
}

void sub_22F36F0BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F660C(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22F371954(v4);
  *a1 = v2;
}

PhotosGraph::PeopleIndex::CreationOptions __swiftcall PeopleIndex.CreationOptions.init(personUUIDs:featureVectorLength:positivesOversamplingFactor:negativesOversamplingFactor:)(Swift::OpaquePointer personUUIDs, Swift::Int featureVectorLength, Swift::Int positivesOversamplingFactor, Swift::Int negativesOversamplingFactor)
{
  v4->_rawValue = personUUIDs._rawValue;
  v4[1]._rawValue = featureVectorLength;
  v4[2]._rawValue = positivesOversamplingFactor;
  v4[3]._rawValue = negativesOversamplingFactor;
  result.negativesOversamplingFactor = negativesOversamplingFactor;
  result.positivesOversamplingFactor = positivesOversamplingFactor;
  result.featureVectorLength = featureVectorLength;
  result.personUUIDs = personUUIDs;
  return result;
}

void *static PeopleIndex.create(using:with:)(uint64_t a1, uint64_t *a2)
{
  v3 = v2;
  v81 = a1;
  v5 = sub_22F73FE50();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - v10;
  v13 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v82 = a2[3];
  v15 = *(v13 + 16);
  if (!v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3EE0, &unk_22F7889B0);
    v34 = swift_allocObject();
    sub_22F740830();
    v35 = v82;
    if (v14 >= 1 && v82 >= 1)
    {
      v36 = MEMORY[0x277D84F90];
      *(v34 + 16) = MEMORY[0x277D84F90];
      *(v34 + 24) = 1;
      *(v34 + 32) = v14;
      *(v34 + 40) = v35;
      type metadata accessor for PeopleIndex(0);
      v20 = swift_allocObject();
      v20[2] = v12;
      v20[3] = v36;
      v20[4] = MEMORY[0x277D84F98];
      v20[5] = v34;
      sub_22F73FE00();
      (*(v6 + 32))(v20 + OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding, v11, v5);
      return v20;
    }

    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v79 = v14;
  if (qword_27DAAFDA8 != -1)
  {
LABEL_35:
    swift_once();
  }

  v16 = qword_27DAD0E90;
  *&v17 = CACurrentMediaTime();
  sub_22F1B560C("CreatePeopleIndex", 17, 2u, v17, 0, v16, v92);
  v78 = v6;
  v77 = v8;
  if (v12 >= v15)
  {
    goto LABEL_8;
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_37;
  }

  v18 = *(v13 + 16);
  if (v18 < v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v18 != v12)
  {
    sub_22F10AB90(v13, v13 + 32, 0, (2 * v12) | 1);
    v13 = v19;
    goto LABEL_9;
  }

LABEL_8:

LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2718, &unk_22F7889A0);
  v20 = swift_allocObject();
  v6 = *(v13 + 16);

  v15 = sub_22F1515F8(v21);

  v22 = v15[2];

  v76 = v6;
  if (v6 != v22)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2720, &qword_22F77AA20);
    sub_22F372478();
    swift_allocError();
    swift_willThrow();
    swift_deallocPartialClassInstance();
    sub_22F1B2BBC(1);

    return v20;
  }

  v74 = v12;
  v72 = v5;
  v73 = v3;
  v20[2] = v13;
  v8 = *(v13 + 16);

  v75 = v20;
  if (v8)
  {
    v23 = 0;
    v24 = v13 + 40;
    v70 = v8 - 1;
    v80 = MEMORY[0x277D84F90];
    v71 = v13 + 40;
    do
    {
      v5 = (v24 + 16 * v23);
      v12 = v23;
      while (1)
      {
        if (v12 >= *(v13 + 16))
        {
          __break(1u);
          goto LABEL_35;
        }

        v6 = v13;
        v23 = v12 + 1;
        v3 = *v5;
        sub_22F191888();
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v25);

        v15 = sub_22F740DF0();
        v27 = [ObjCClassFromMetadata localIdentifierWithUUID_];

        if (v27)
        {
          break;
        }

        v5 += 2;
        ++v12;
        v13 = v6;
        if (v8 == v23)
        {
          goto LABEL_28;
        }
      }

      v15 = sub_22F740E20();
      v29 = v28;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_22F13E1A8(0, *(v80 + 2) + 1, 1, v80);
      }

      v13 = v6;
      v31 = *(v80 + 2);
      v30 = *(v80 + 3);
      v3 = v31 + 1;
      if (v31 >= v30 >> 1)
      {
        v80 = sub_22F13E1A8((v30 > 1), v31 + 1, 1, v80);
      }

      v32 = v80;
      *(v80 + 2) = v3;
      v33 = &v32[16 * v31];
      *(v33 + 4) = v15;
      *(v33 + 5) = v29;
      v24 = v71;
    }

    while (v70 != v12);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

LABEL_28:
  sub_22F1515F8(v80);

  v37 = objc_opt_self();
  v38 = sub_22F741410();

  v39 = [v37 personNodesForLocalIdentifiers:v38 inGraph:v81];

  v40 = MEMORY[0x277D84F98];
  v91 = MEMORY[0x277D84F98];
  v41 = swift_allocObject();
  *(v41 + 16) = &v91;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_22F3724DC;
  *(v42 + 24) = v41;
  v89 = sub_22F15A678;
  v90 = v42;
  aBlock = MEMORY[0x277D85DD0];
  v86 = 1107296256;
  v87 = sub_22F2136B4;
  v88 = &block_descriptor_42;
  v43 = _Block_copy(&aBlock);

  [v39 enumerateUUIDsUsingBlock_];
  _Block_release(v43);
  LOBYTE(v43) = swift_isEscapingClosureAtFileLocation();

  if (v43)
  {
    goto LABEL_39;
  }

  v80 = v41;
  v81 = v13;
  v44 = objc_opt_self();
  v45 = v39;
  v46 = [v44 momentOfPerson];
  v47 = [objc_msgSend(v45 graph)];
  swift_unknownObjectRelease();
  v48 = [v47 concreteGraph];

  if (v48)
  {
    v49 = [v45 elementIdentifiers];
    v50 = [v48 adjacencyWithSources:v49 relation:v46];

    swift_unknownObjectRetain();
    v51 = [v50 transposed];
    swift_unknownObjectRelease();

    v83 = v40;
    v84 = v40;
    v52 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v53 = [v51 sources];
    v54 = [v52 initWithGraph:v48 elementIdentifiers:v53];

    v55 = swift_allocObject();
    v55[2] = v51;
    v55[3] = v48;
    v55[4] = &v91;
    v55[5] = v75;
    v55[6] = &v84;
    v55[7] = &v83;
    v56 = swift_allocObject();
    *(v56 + 16) = sub_22F372510;
    *(v56 + 24) = v55;
    v89 = sub_22F2F45D8;
    v90 = v56;
    aBlock = MEMORY[0x277D85DD0];
    v86 = 1107296256;
    v87 = sub_22F2136B4;
    v88 = &block_descriptor_13_4;
    v57 = _Block_copy(&aBlock);
    v58 = v51;
    swift_unknownObjectRetain();

    [v54 enumerateUUIDsUsingBlock_];

    _Block_release(v57);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {

      sub_22F214A98(v60);
      v62 = v61;

      v63 = sub_22F215680(v62, 1, v79, v82);
      v64 = v83;
      type metadata accessor for PeopleIndex(0);
      v65 = swift_allocObject();
      v66 = v81;
      v67 = v74;
      v65[2] = v74;
      v65[3] = v66;
      v65[4] = v64;
      v65[5] = v63;
      if (!__OFSUB__(v67, v76))
      {
        v20 = v65;

        v68 = v77;
        sub_22F73FE00();

        swift_unknownObjectRelease();

        (*(v78 + 32))(v20 + OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding, v68, v72);

        sub_22F1B2BBC(0);

        return v20;
      }

      goto LABEL_41;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

void sub_22F36FC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, void *a7, uint64_t a8, void *a9)
{
  v54 = a8;
  v55 = a7;
  v52 = a2;
  v53 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B20, &unk_22F788B60);
  MEMORY[0x28223BE20](v12 - 8);
  v51 = &v49 - v13;
  v14 = sub_22F73FE50();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v50 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  v20 = objc_allocWithZone(PGGraphMomentNodeCollection);
  v21 = [objc_allocWithZone(MEMORY[0x277D22BB0]) initWithElementIdentifier_];
  v22 = [v20 initWithGraph:a6 elementIdentifiers:v21];

  v23 = [v22 elementIdentifiers];
  v24 = [a5 targetsForSources_];

  v25 = [objc_allocWithZone(PGGraphPersonNodeCollection) initWithGraph:a6 elementIdentifiers:v24];
  v57 = MEMORY[0x277D84F90];
  v26 = [v25 elementIdentifiers];
  v27 = swift_allocObject();
  v27[2] = v55;
  v27[3] = &v57;
  v28 = swift_allocObject();
  *(v28 + 16) = sub_22F372944;
  *(v28 + 24) = v27;
  aBlock[4] = sub_22F21F0D4;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3618B8;
  aBlock[3] = &block_descriptor_60_0;
  v29 = _Block_copy(aBlock);

  [v26 enumerateIdentifiersWithBlock_];

  _Block_release(v29);
  LOBYTE(v29) = swift_isEscapingClosureAtFileLocation();

  if (v29)
  {
    __break(1u);
    goto LABEL_15;
  }

  a6 = a9;

  sub_22F26AF34(v30);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock[0] = *a9;
  v32 = aBlock[0];
  *a9 = 0x8000000000000000;
  v28 = sub_22F123714(v19);
  v34 = *(v32 + 16);
  v35 = (v33 & 1) == 0;
  v36 = v34 + v35;
  if (__OFADD__(v34, v35))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    v26 = sub_22F13E1A8(0, *(v26 + 2) + 1, 1, v26);
    a6[v28] = v26;
    goto LABEL_11;
  }

  v37 = v33;
  if (*(v32 + 24) >= v36)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_22F1389BC();
      v32 = aBlock[0];
    }
  }

  else
  {
    sub_22F12D6DC(v36, isUniquelyReferenced_nonNull_native);
    v32 = aBlock[0];
    v38 = sub_22F123714(v19);
    if ((v37 & 1) != (v39 & 1))
    {
      sub_22F7420C0();
      __break(1u);
      return;
    }

    v28 = v38;
  }

  *a9 = v32;

  v40 = *a9;
  if ((v37 & 1) == 0)
  {
    v41 = v50;
    (*(v15 + 16))(v50, v19, v14);
    sub_22F14D4F0(v28, v41, MEMORY[0x277D84F90], v40);
  }

  v55 = v27;
  a6 = v40[7];
  v26 = a6[v28];
  v42 = swift_isUniquelyReferenced_nonNull_native();
  a6[v28] = v26;
  v27 = v25;
  if ((v42 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_11:
  v44 = *(v26 + 2);
  v43 = *(v26 + 3);
  if (v44 >= v43 >> 1)
  {
    v26 = sub_22F13E1A8((v43 > 1), v44 + 1, 1, v26);
    a6[v28] = v26;
  }

  *(v26 + 2) = v44 + 1;
  v45 = &v26[16 * v44];
  v47 = v52;
  v46 = v53;
  *(v45 + 4) = v52;
  *(v45 + 5) = v46;
  v48 = v51;
  (*(v15 + 16))(v51, v19, v14);
  (*(v15 + 56))(v48, 0, 1, v14);
  swift_bridgeObjectRetain_n();
  sub_22F121B14(v48, v47, v46);

  (*(v15 + 8))(v19, v14);
}

uint64_t sub_22F3701C8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = *a3;
  if (*(*a3 + 16))
  {
    result = sub_22F122B68(result);
    if (v6)
    {
      v7 = (*(v4 + 56) + 16 * result);
      v9 = *v7;
      v8 = v7[1];
      v10 = *a4;

      result = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v10;
      if ((result & 1) == 0)
      {
        result = sub_22F13E1A8(0, *(v10 + 16) + 1, 1, v10);
        v10 = result;
        *a4 = result;
      }

      v12 = *(v10 + 16);
      v11 = *(v10 + 24);
      if (v12 >= v11 >> 1)
      {
        result = sub_22F13E1A8((v11 > 1), v12 + 1, 1, v10);
        v10 = result;
        *a4 = result;
      }

      *(v10 + 16) = v12 + 1;
      v13 = v10 + 16 * v12;
      *(v13 + 32) = v9;
      *(v13 + 40) = v8;
    }
  }

  return result;
}

uint64_t sub_22F370328(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, void, uint64_t, uint64_t))
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = v5;
  swift_retain_n();
  v11 = a5(a1, 0, a4, v10);

  return v11;
}

float sub_22F3703C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22F73FE50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v19 - v13;
  sub_22F37051C(a1, a2, &v19 - v13);
  sub_22F37051C(a3, a4, v11);
  sub_22F740000();
  v16 = v15;
  v17 = *(v9 + 8);
  v17(v11, v8);
  v17(v14, v8);
  return v16;
}

uint64_t sub_22F37051C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_22F73FE50();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 32);
  if (*(v11 + 16) && (v12 = sub_22F1229E8(a1, a2), (v13 & 1) != 0))
  {
    (*(v8 + 16))(v10, *(v11 + 56) + *(v8 + 72) * v12, v7);
    (*(v8 + 32))(a3, v10, v7);
    return sub_22F73FE10();
  }

  else
  {

    return sub_22F73FE00();
  }
}

float sub_22F370684(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float (*a5)(char *, char *))
{
  v20 = a5;
  v9 = sub_22F73FE50();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v19 - v14;
  sub_22F37051C(a1, a2, &v19 - v14);
  sub_22F37051C(a3, a4, v12);
  v16 = v20(v15, v12);
  v17 = *(v10 + 8);
  v17(v12, v9);
  v17(v15, v9);
  return v16;
}

void sub_22F3707EC()
{
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  MEMORY[0x28223BE20](v22);
  v2 = &v22 - v1;
  v26 = 0;
  v27 = 0xE000000000000000;
  sub_22F741B00();

  v26 = 0xD000000000000020;
  v27 = 0x800000022F79C450;
  v3 = MEMORY[0x231900D40](*(v0 + 24), MEMORY[0x277D837D0]);
  MEMORY[0x231900B10](v3);

  MEMORY[0x231900B10](2570, 0xE200000000000000);
  v4 = *(v0 + 32);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v0 + 32) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v23 = *(v0 + 32);

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = *(v23 + 56);
    v17 = (*(v23 + 48) + 16 * v15);
    v19 = *v17;
    v18 = v17[1];
    v20 = sub_22F73FE50();
    (*(*(v20 - 8) + 16))(&v2[*(v22 + 48)], v16 + *(*(v20 - 8) + 72) * v15, v20);
    *v2 = v19;
    *(v2 + 1) = v18;
    v24 = v19;
    v25 = v18;
    swift_bridgeObjectRetain_n();
    MEMORY[0x231900B10](8250, 0xE200000000000000);
    sub_22F3725A8();
    v21 = sub_22F742010();
    MEMORY[0x231900B10](v21);

    MEMORY[0x231900B10](10, 0xE100000000000000);
    MEMORY[0x231900B10](v24, v25);

    sub_22F372600(v2);
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      return;
    }

    v10 = *(v6 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t PeopleIndex.deinit()
{

  v1 = OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding;
  v2 = sub_22F73FE50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t PeopleIndex.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC11PhotosGraph11PeopleIndex_featureVectorZerosPadding;
  v2 = sub_22F73FE50();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t static PeopleIndexUtilities.sortedPersonUUIDs(in:)(uint64_t a1)
{
  if (qword_27DAAFDA8 != -1)
  {
    swift_once();
  }

  v3 = qword_27DAD0E90;
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("SortedPeople", 12, 2u, v4, 0, v3, v55);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3478, &unk_22F783BA0);
  v6 = [swift_getObjCClassFromMetadata(v5) nodesInGraph_];
  v7 = MEMORY[0x277D84F98];
  v54 = MEMORY[0x277D84F98];
  v8 = swift_allocObject();
  *(v8 + 16) = &v54;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F372970;
  *(v9 + 24) = v8;
  v52 = sub_22F2F45D8;
  v53 = v9;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_22F2136B4;
  v51 = &block_descriptor_30_2;
  v10 = _Block_copy(&aBlock);

  [v6 enumerateUUIDsUsingBlock_];
  _Block_release(v10);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
    goto LABEL_20;
  }

  v43 = v1;
  v11 = objc_opt_self();
  v12 = v6;
  v13 = [v11 momentOfPerson];
  v6 = [objc_msgSend(v12 graph)];
  swift_unknownObjectRelease();
  v14 = [v6 concreteGraph];

  if (!v14)
  {
LABEL_21:
    LODWORD(v41) = 0;
    v40 = 40;
    sub_22F741D40();
    __break(1u);
    goto LABEL_22;
  }

  v15 = [v12 elementIdentifiers];
  v16 = [v14 adjacencyWithSources:v15 relation:v13];

  v46 = v12;
  v47 = v7;
  MEMORY[0x28223BE20](v17);
  v40 = &v54;
  v41 = &v47;
  v18 = swift_allocObject();
  v18[2] = sub_22F372668;
  v18[3] = &v39;
  v18[4] = v16;
  v18[5] = v14;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_22F372670;
  *(v19 + 24) = v18;
  v52 = sub_22F15A3B8;
  v53 = v19;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_22F107F34;
  v51 = &block_descriptor_39_1;
  v20 = _Block_copy(&aBlock);
  v6 = v53;
  v21 = v16;
  v45 = v14;
  swift_unknownObjectRetain();

  v44 = v21;
  [v21 enumerateTargetsBySourceWith_];
  _Block_release(v20);
  LOBYTE(v20) = swift_isEscapingClosureAtFileLocation();

  if (v20)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v42 = v8;
  v22 = v47;
  v23 = *(v47 + 16);
  v24 = MEMORY[0x277D84F90];
  if (v23)
  {
    v25 = sub_22F10B5E8(*(v47 + 16), 0);
    v26 = sub_22F11C970(&aBlock, v25 + 4, v23, v22);
    v27 = aBlock;

    sub_22F1534EC(v27);
    if (v26 == v23)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  v25 = v24;
LABEL_10:
  aBlock = v25;
  v28 = v43;
  sub_22F36F0BC(&aBlock);
  v6 = v28;
  if (v28)
  {
LABEL_22:

    __break(1u);
    return result;
  }

  v29 = aBlock;
  v30 = aBlock[2];
  if (v30)
  {
    v43 = 0;
    aBlock = v24;
    sub_22F146454(0, v30, 0);
    v31 = aBlock;
    v32 = (v29 + 40);
    do
    {
      v34 = *(v32 - 1);
      v33 = *v32;
      aBlock = v31;
      v36 = *(v31 + 16);
      v35 = *(v31 + 24);

      if (v36 >= v35 >> 1)
      {
        sub_22F146454((v35 > 1), v36 + 1, 1);
        v31 = aBlock;
      }

      *(v31 + 16) = v36 + 1;
      v37 = v31 + 16 * v36;
      *(v37 + 32) = v34;
      *(v37 + 40) = v33;
      v32 += 3;
      --v30;
    }

    while (v30);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();

    v31 = MEMORY[0x277D84F90];
  }

  sub_22F1B2BBC(0);

  return v31;
}

double sub_22F371230(void *a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v8 = [a1 elementIdentifiers];
  v9 = [v8 firstElement];

  v11 = *a4;
  if (*(v11 + 16))
  {
    v12 = sub_22F122B68(v9);
    if (v13)
    {
      v14 = (*(v11 + 56) + 16 * v12);
      v15 = *v14;
      v16 = v14[1];

      v17 = [a2 count];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = *a5;
      *a5 = 0x8000000000000000;
      sub_22F131078(v17, v15, v16, isUniquelyReferenced_nonNull_native);

      *a5 = v19;
    }
  }

  return result;
}

uint64_t sub_22F371324(void *a1)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  *&v4 = MEMORY[0x28223BE20](v2).n128_u64[0];
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13[0] = 0;
  v7 = [a1 urlForApplicationDataFolderIdentifier:1 error:{v13, v4}];
  v8 = v13[0];
  if (v7)
  {
    v9 = v7;
    sub_22F73F430();
    v10 = v8;

    sub_22F73F410();
    return (*(v3 + 8))(v6, v2);
  }

  else
  {
    v12 = v13[0];
    sub_22F73F370();

    return swift_willThrow();
  }
}

uint64_t static PeopleIndexUtilities.persist(personUUIDs:for:)(uint64_t a1, void *a2)
{
  v5 = sub_22F73F470();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22F371324(a2);
  if (!v2)
  {
    sub_22F73F350();
    swift_allocObject();
    sub_22F73F340();
    sub_22F73F320();
    v13[1] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    v10 = sub_22F73F330();
    v12 = v11;
    sub_22F73F520();
    (*(v6 + 8))(v8, v5);
    sub_22F133BF0(v10, v12);
  }

  return result;
}

uint64_t static PeopleIndexUtilities.loadPersonUUIDs(for:)(void *a1)
{
  v3 = sub_22F73F470();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_22F371324(a1);
  if (!v1)
  {
    v8 = [objc_opt_self() defaultManager];
    sub_22F73F450();
    v9 = sub_22F740DF0();

    v10 = [v8 fileExistsAtPath_];

    if (v10)
    {
      sub_22F73F310();
      swift_allocObject();
      sub_22F73F300();
      v12 = sub_22F73F480();
      v14 = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
      sub_22F73F2F0();
      (*(v4 + 8))(v6, v3);
      sub_22F133BF0(v12, v14);

      return v15[1];
    }

    else
    {
      sub_22F3726AC();
      swift_allocError();
      *v11 = 1;
      swift_willThrow();
      return (*(v4 + 8))(v6, v3);
    }
  }

  return result;
}

void sub_22F371954(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10B8, &qword_22F7714F8);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F371B4C(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F371A5C(0, v2, 1, a1);
  }
}

uint64_t sub_22F371A5C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 24 * v4);
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    v13 = v8;
    v14 = v7;
    while (1)
    {
      if (v14[2] >= v12)
      {
        result = *v14;
        v15 = *v14 == v10 && v14[1] == v11;
        if (v15 || (result = sub_22F742040(), (result & 1) == 0))
        {
LABEL_4:
          ++v4;
          v7 += 24;
          --v8;
          if (v4 == a2)
          {
            return result;
          }

          goto LABEL_5;
        }
      }

      if (!v6)
      {
        break;
      }

      v11 = v14[4];
      v12 = v14[5];
      v16 = v14[2];
      v10 = v14[3];
      *(v14 + 3) = *v14;
      v14[5] = v16;
      *v14 = v10;
      v14[1] = v11;
      v14[2] = v12;
      v14 -= 3;
      if (__CFADD__(v13++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F371B4C(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_110:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_148;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_142;
    }

    goto LABEL_112;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = (*v5 + 24 * v7);
      v12 = (*v5 + 24 * v9);
      if (v12[2] >= v11[2])
      {
        if (*v12 == *v11 && v12[1] == v11[1])
        {
          v13 = 0;
        }

        else
        {
          v13 = sub_22F742040();
        }
      }

      else
      {
        v13 = 1;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v15 = (v10 + 24 * v9 + 32);
        do
        {
          if (v15[1] < v15[4])
          {
            if ((v13 & 1) == 0)
            {
              goto LABEL_36;
            }
          }

          else if (*(v15 - 1) == v15[2] && *v15 == v15[3])
          {
            if (v13)
            {
              goto LABEL_28;
            }
          }

          else if ((v13 ^ sub_22F742040()))
          {
            goto LABEL_27;
          }

          ++v7;
          v15 += 3;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_27:
      if (v13)
      {
LABEL_28:
        if (v7 < v9)
        {
          goto LABEL_141;
        }

        if (v9 < v7)
        {
          v17 = 24 * v7 - 8;
          v18 = 24 * v9;
          v19 = v7;
          v20 = v9;
          do
          {
            if (v20 != --v19)
            {
              v26 = *v5;
              if (!*v5)
              {
                goto LABEL_145;
              }

              v21 = v26 + v18;
              v22 = (v26 + v17);
              v23 = *v21;
              v24 = *(v21 + 16);
              v25 = *v22;
              *v21 = *(v22 - 1);
              *(v21 + 16) = v25;
              *(v22 - 1) = v23;
              *v22 = v24;
            }

            ++v20;
            v17 -= 24;
            v18 += 24;
          }

          while (v20 < v19);
        }
      }
    }

LABEL_36:
    v27 = v5[1];
    if (v7 < v27)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_138;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_139;
        }

        if (v9 + a4 >= v27)
        {
          v28 = v5[1];
        }

        else
        {
          v28 = v9 + a4;
        }

        if (v28 < v9)
        {
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          v8 = sub_22F3F5F98(v8);
LABEL_112:
          v88 = v8 + 16;
          v89 = *(v8 + 2);
          if (v89 >= 2)
          {
            do
            {
              v90 = *v5;
              if (!*v5)
              {
                goto LABEL_146;
              }

              v91 = &v8[16 * v89];
              v5 = *v91;
              v92 = &v88[2 * v89];
              v93 = v92[1];
              sub_22F372184((v90 + 24 * *v91), (v90 + 24 * *v92), v90 + 24 * v93, a1);
              if (v4)
              {
                break;
              }

              if (v93 < v5)
              {
                goto LABEL_134;
              }

              if (v89 - 2 >= *v88)
              {
                goto LABEL_135;
              }

              *v91 = v5;
              *(v91 + 1) = v93;
              v94 = *v88 - v89;
              if (*v88 < v89)
              {
                goto LABEL_136;
              }

              v89 = *v88 - 1;
              memmove(v92, v92 + 2, 16 * v94);
              *v88 = v89;
              v5 = a3;
            }

            while (v89 > 1);
          }

LABEL_119:

          return;
        }

        if (v7 != v28)
        {
          break;
        }
      }
    }

LABEL_59:
    if (v7 < v9)
    {
      goto LABEL_137;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
    }

    v42 = *(v8 + 2);
    v41 = *(v8 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v8 = sub_22F13D970((v41 > 1), v42 + 1, 1, v8);
    }

    *(v8 + 2) = v43;
    v44 = &v8[16 * v42];
    *(v44 + 4) = v9;
    *(v44 + 5) = v7;
    v45 = *a1;
    if (!*a1)
    {
      goto LABEL_147;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v8 + 4);
          v48 = *(v8 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_79:
          if (v50)
          {
            goto LABEL_125;
          }

          v63 = &v8[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_128;
          }

          v69 = &v8[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_132;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_100;
          }

          goto LABEL_93;
        }

        v73 = &v8[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_93:
        if (v68)
        {
          goto LABEL_127;
        }

        v76 = &v8[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_130;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_100:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v5)
        {
          goto LABEL_144;
        }

        v85 = *&v8[16 * v84 + 32];
        v86 = *&v8[16 * v46 + 40];
        sub_22F372184((*v5 + 24 * v85), (*v5 + 24 * *&v8[16 * v46 + 32]), *v5 + 24 * v86, v45);
        if (v4)
        {
          goto LABEL_119;
        }

        if (v86 < v85)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v84 >= *(v8 + 2))
        {
          goto LABEL_122;
        }

        v87 = &v8[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        sub_22F3F5F0C(v46);
        v43 = *(v8 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v8[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_123;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_124;
      }

      v58 = &v8[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_126;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_129;
      }

      if (v62 >= v54)
      {
        v80 = &v8[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_133;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_100;
      }

      goto LABEL_79;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_110;
    }
  }

  v29 = *v5;
  v30 = *v5 + 24 * v7 - 24;
  v95 = v9;
  v31 = v9 - v7;
LABEL_47:
  v32 = (v29 + 24 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v32[2];
  v36 = v31;
  v37 = v30;
  while (1)
  {
    if (v37[2] >= v35)
    {
      v38 = *v37 == v33 && v37[1] == v34;
      if (v38 || (sub_22F742040() & 1) == 0)
      {
LABEL_46:
        ++v7;
        v30 += 24;
        --v31;
        if (v7 != v28)
        {
          goto LABEL_47;
        }

        v7 = v28;
        v5 = a3;
        v9 = v95;
        goto LABEL_59;
      }
    }

    if (!v29)
    {
      break;
    }

    v34 = v37[4];
    v35 = v37[5];
    v39 = v37[2];
    v33 = v37[3];
    *(v37 + 3) = *v37;
    v37[5] = v39;
    *v37 = v33;
    v37[1] = v34;
    v37[2] = v35;
    v37 -= 3;
    if (__CFADD__(v36++, 1))
    {
      goto LABEL_46;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
}

uint64_t sub_22F372184(char *__src, char *__dst, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __dst - __src;
  v8 = (__dst - __src) / 24;
  v9 = a3 - __dst;
  v10 = (a3 - __dst) / 24;
  if (v8 >= v10)
  {
    if (a4 != __dst || &__dst[24 * v10] <= a4)
    {
      memmove(a4, __dst, 24 * v10);
      v5 = a3;
    }

    v13 = &v4[24 * v10];
    if (v9 < 24 || v6 <= __src)
    {
      v30 = v6;
    }

    else
    {
LABEL_26:
      v20 = 0;
      v21 = v13;
      v34 = v6 - 24;
      do
      {
        v13 = &v21[v20];
        v22 = (v5 + v20);
        v23 = v5 + v20 - 24;
        if (*(v6 - 1) < *&v21[v20 - 8] || (*(v6 - 3) == *(v13 - 3) ? (v24 = *(v6 - 2) == *(v13 - 2)) : (v24 = 0), !v24 && (v25 = v5, v26 = v4, v27 = v21, v28 = sub_22F742040(), v21 = v27, v4 = v26, v5 = v25, (v28 & 1) != 0)))
        {
          v30 = v6 - 24;
          if (v22 != v6)
          {
            v31 = *v34;
            *(v23 + 16) = *(v6 - 1);
            *v23 = v31;
          }

          if (v13 <= v4 || (v5 = v23, v6 -= 24, v34 <= __src))
          {
            v13 = &v21[v20];
            goto LABEL_44;
          }

          goto LABEL_26;
        }

        if (v22 != v13)
        {
          v29 = *(v13 - 24);
          *(v23 + 16) = *(v13 - 1);
          *v23 = v29;
        }

        v20 -= 24;
        v13 = &v21[v20];
      }

      while (&v21[v20] > v4);
      v30 = v6;
    }
  }

  else
  {
    v11 = __src;
    if (a4 != __src || &__src[24 * v8] <= a4)
    {
      memmove(a4, __src, 24 * v8);
      v5 = a3;
    }

    v13 = &v4[24 * v8];
    if (v7 >= 24 && v6 < v5)
    {
      while (*(v4 + 2) >= *(v6 + 2))
      {
        v16 = *v4 == *v6 && *(v4 + 1) == *(v6 + 1);
        if (!v16)
        {
          v17 = v5;
          v18 = sub_22F742040();
          v5 = v17;
          if (v18)
          {
            break;
          }
        }

        v14 = v4;
        v16 = v11 == v4;
        v4 += 24;
        if (!v16)
        {
          goto LABEL_9;
        }

LABEL_10:
        v11 += 24;
        if (v4 >= v13 || v6 >= v5)
        {
          goto LABEL_41;
        }
      }

      v14 = v6;
      v16 = v11 == v6;
      v6 += 24;
      if (v16)
      {
        goto LABEL_10;
      }

LABEL_9:
      v15 = *v14;
      *(v11 + 2) = *(v14 + 2);
      *v11 = v15;
      goto LABEL_10;
    }

LABEL_41:
    v30 = v11;
  }

LABEL_44:
  v32 = (v13 - v4) / 24;
  if (v30 != v4 || v30 >= &v4[24 * v32])
  {
    memmove(v30, v4, 24 * v32);
  }

  return 1;
}

unint64_t sub_22F372478()
{
  result = qword_27DAB2728;
  if (!qword_27DAB2728)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB2720, &qword_22F77AA20);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2728);
  }

  return result;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for PeopleIndex(uint64_t a1)
{
  result = qword_27DAB3D20;
  if (!qword_27DAB3D20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_22F3725A8()
{
  result = qword_27DAB3D10;
  if (!qword_27DAB3D10)
  {
    sub_22F73FE50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D10);
  }

  return result;
}

uint64_t sub_22F372600(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1060, &unk_22F771490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F3726AC()
{
  result = qword_27DAB3D18;
  if (!qword_27DAB3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D18);
  }

  return result;
}

uint64_t sub_22F372708(uint64_t a1)
{
  result = sub_22F73FE50();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_22F3728F0()
{
  result = qword_27DAB3D30;
  if (!qword_27DAB3D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D30);
  }

  return result;
}

uint64_t MusicForTimeFrontfillCacher.MusicForTimeError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t sub_22F372A48()
{
  v0 = sub_22F73F9B0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_2810AA158);
  v5 = __swift_project_value_buffer(v0, qword_2810AA158);
  v6 = [objc_opt_self() currentCalendar];
  sub_22F73F900();

  return (*(v1 + 32))(v5, v3, v0);
}

uint64_t static MusicForTimeFrontfillCacher.cacheMusic(forMomentsInPhotoLibrary:forceCaching:progressReporter:completionHandler:)(void *a1, int a2, void *a3, NSObject *a4, uint64_t a5)
{
  v194 = a5;
  v195 = a4;
  LODWORD(v192) = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v171 = &v154 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v175 = &v154 - v10;
  v177 = type metadata accessor for CacherStatus(0);
  v176 = *(v177 - 8);
  MEMORY[0x28223BE20](v177);
  v173 = (&v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v182 = &v154 - v13;
  v172 = sub_22F73EEC0();
  v170 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v169 = &v154 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = v14;
  MEMORY[0x28223BE20](v15);
  v174 = &v154 - v16;
  v181 = sub_22F740AD0();
  v183 = *(v181 - 8);
  MEMORY[0x28223BE20](v181);
  v180 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22F740C00();
  MEMORY[0x28223BE20](v18 - 8);
  v186 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_22F73F690();
  v187 = *(v188 - 8);
  v20 = v187[8];
  MEMORY[0x28223BE20](v188);
  v185 = &v154 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v184 = &v154 - v22;
  MEMORY[0x28223BE20](v23);
  v190 = &v154 - v24;
  MEMORY[0x28223BE20](v25);
  v191 = &v154 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v178 = *(v27 - 8);
  v28 = *(v178 + 64);
  MEMORY[0x28223BE20](v27 - 8);
  MEMORY[0x28223BE20](v29);
  v31 = &v154 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &v154 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v154 - v36;
  MEMORY[0x28223BE20](v38);
  v193 = &v154 - v39;
  v189 = a3;
  v40 = sub_22F7416D0();
  v42 = v41;
  v44 = v43;
  v45 = sub_22F1A26E0(a1);
  v161 = v28;
  v163 = v37;
  v162 = v20;
  v166 = v44;
  v160 = v31;
  v159 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v165 = v40;
  v167 = v42;
  v164 = v34;
  v46 = v45;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v47 = v46;
  v48 = sub_22F1ED5B0(v46);

  v49 = v193;
  MusicCache.readCacherStatus(category:)(0xD000000000000015, 0x800000022F78E8A0, v193);
  v50 = v165;
  v51 = sub_22F375984(v49, v48, v165);
  v52 = v166;
  if (((v51 | v192) & 1) == 0)
  {
    sub_22F7416A0();
    (v195)(1, 0);

    v56 = v49;
    return sub_22F120ADC(v56, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v192 = 0x800000022F78E8A0;
  v53 = v191;
  v54 = v190;
  static MusicForTimeFrontfillCacher.queryDateRange(with:)(v191, v190, v47);
  v55 = v186;
  sub_22F740BD0();
  v158 = sub_22F22FB24(v55, 0);
  v157 = v48;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000015, v192, &v204);
  v57 = v163;
  sub_22F13BA9C(v49, v163, &qword_27DAB1DA0, &unk_22F7771B0);
  v58 = v187;
  v59 = v187 + 2;
  v60 = v187[2];
  v61 = v188;
  v60(v184, v53, v188);
  v156 = v59;
  v155 = v60;
  v60(v185, v54, v61);
  sub_22F13BA9C(v57, v164, &qword_27DAB1DA0, &unk_22F7771B0);
  v62 = (*(v178 + 80) + 24) & ~*(v178 + 80);
  v63 = (v161 + v62 + 7) & 0xFFFFFFFFFFFFFFF8;
  v64 = *(v58 + 80);
  v65 = (v64 + v63 + 8) & ~v64;
  v66 = (v162 + v64 + v65) & ~v64;
  v186 = ((v162 + v66 + 7) & 0xFFFFFFFFFFFFFFF8);
  v162 = (v186 + 15) & 0xFFFFFFFFFFFFFFF8;
  v67 = v189;
  v68 = (v162 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v179;
  sub_22F1207AC(v163, v69 + v62, &qword_27DAB1DA0, &unk_22F7771B0);
  *(v69 + v63) = v47;
  v70 = v58[4];
  v71 = v69 + v65;
  v72 = v188;
  v70(v71, v184, v188);
  v70(v69 + v66, v185, v72);
  v73 = v166;
  *&v186[v69] = v166;
  *(v69 + v162) = v67;
  v178 = v69;
  v74 = (v69 + v68);
  v75 = v194;
  *v74 = v195;
  v74[1] = v75;
  v76 = v47;
  v77 = v191;
  v186 = v76;
  v78 = v73;

  v79 = v67;
  v80 = v190;
  v189 = v79;
  v81 = sub_22F73F660();
  v185 = v78;
  if (v81 != -1)
  {
    type metadata accessor for MusicKitClientError(0);
    sub_22F3797F8(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v184 = swift_allocError();
    v83 = v82;
    v84 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v85 = v155;
    v155(v83, v77, v72);
    v85(v83 + v84, v80, v72);
    swift_storeEnumTagMultiPayload();
    v86 = v160;
    sub_22F13BA9C(v164, v160, &qword_27DAB1DA0, &unk_22F7771B0);
    v87 = v177;
    v88 = v72;
    if ((*(v176 + 48))(v86, 1, v177) == 1)
    {
      sub_22F120ADC(v86, &qword_27DAB1DA0, &unk_22F7771B0);
      v89 = v175;
      (v58[7])(v175, 1, 1, v88);
    }

    else
    {
      v89 = v175;
      sub_22F13BA9C(v86 + *(v87 + 20), v175, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v86, type metadata accessor for CacherStatus);
    }

    v102 = v88;
    v103 = v182;
    v104 = *(v87 + 24);
    sub_22F73F680();
    (v58[7])(&v103[v104], 0, 1, v102);
    *v103 = 0xD000000000000015;
    v105 = v192;
    *(v103 + 1) = v192;
    sub_22F1207AC(v89, &v103[*(v87 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v106 = v180;
    sub_22F740AC0();
    sub_22F740A90();
    v107 = *(v183 + 8);
    v108 = v181;
    v109 = v107(v106, v181);
    MEMORY[0x28223BE20](v109);
    *(&v154 - 4) = 0xD000000000000015;
    *(&v154 - 3) = v105;
    *(&v154 - 2) = v110;
    *(&v154 - 1) = v103;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v107(v106, v108);
    sub_22F7416A0();
    v146 = v184;
    (v195)(0, v184);

    sub_22F1D210C(&v204);

    sub_22F379840(v182, type metadata accessor for CacherStatus);
    v147 = v193;
    v148 = v187;
    v150 = v190;
LABEL_20:
    sub_22F120ADC(v164, &qword_27DAB1DA0, &unk_22F7771B0);
    v151 = v148[1];
    v152 = v150;
    v153 = v188;
    v151(v152, v188);
    v151(v191, v153);
    v56 = v147;
    return sub_22F120ADC(v56, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  sub_22F741740();
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v90 = qword_2810A8E38;
  v91 = v180;
  sub_22F740AC0();
  v184 = v90;
  sub_22F740A90();
  v92 = *(v183 + 8);
  v93 = v181;
  v92(v91, v181);
  v94 = v158;
  v96 = *(v158 + 3);
  v95 = *(v158 + 4);
  v196[0] = v204;
  v97 = *(v158 + 5);
  v98 = *(v158 + 6);
  v99 = *(v158 + 7);
  v100 = *(v158 + 8);
  aBlock = v96;
  v199 = v95;
  v200 = v97;
  v201 = v98;
  v202 = v99;
  v203 = v100;
  v196[1] = v205;
  v196[2] = v206;
  v197 = v207;

  v101 = v174;
  sub_22F3E29C0(v80, v196, v174);
  v111 = v101;

  v112 = swift_allocObject();
  v194 = v112;
  *(v112 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v112 + 24) = 36;
  *(v112 + 32) = 2;
  *(v112 + 40) = sub_22F375E7C;
  *(v112 + 48) = v178;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v92(v91, v93);
  v195 = *(v94 + 9);
  v113 = v170;
  v114 = v169;
  v115 = v172;
  (*(v170 + 16))(v169, v111, v172);
  v116 = (*(v113 + 80) + 16) & ~*(v113 + 80);
  v117 = (v168 + v116 + 7) & 0xFFFFFFFFFFFFFFF8;
  v118 = (v117 + 63) & 0xFFFFFFFFFFFFFFF8;
  v192 = (v118 + 15) & 0xFFFFFFFFFFFFFFF8;
  v119 = (v118 + 39) & 0xFFFFFFFFFFFFFFF8;
  v120 = swift_allocObject();
  (*(v113 + 32))(v120 + v116, v114, v115);
  v121 = v120 + v117;
  v122 = v205;
  v123 = v206;
  *v121 = v204;
  *(v121 + 16) = v122;
  *(v121 + 32) = v123;
  *(v121 + 48) = v207;
  *(v120 + v118) = v94;
  v124 = v120 + v192;
  *v124 = "MusicKitClient HTTP Request";
  *(v124 + 8) = 27;
  *(v124 + 16) = 2;
  v125 = v167;
  *(v120 + v119) = v167;
  v126 = (v120 + ((v119 + 15) & 0xFFFFFFFFFFFFFFF8));
  v127 = v194;
  *v126 = sub_22F2915B8;
  v126[1] = v127;
  v128 = swift_allocObject();
  v128[2] = sub_22F233FAC;
  v128[3] = v120;
  v202 = sub_22F2915BC;
  v203 = v128;
  aBlock = MEMORY[0x277D85DD0];
  v199 = 1107296256;
  v200 = sub_22F2280B0;
  v201 = &block_descriptor_43;
  v129 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v204, v196);

  v130 = v125;

  dispatch_sync(v195, v129);

  _Block_release(v129);

  sub_22F1D210C(&v204);

  (*(v113 + 8))(v174, v172);
  sub_22F120ADC(v164, &qword_27DAB1DA0, &unk_22F7771B0);
  v131 = v187[1];
  v132 = v188;
  v131(v190, v188);
  v131(v191, v132);
  sub_22F120ADC(v193, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    v135 = v171;
    sub_22F13BA9C(isEscapingClosureAtFileLocation + 14, v171, &qword_27DAB0920, &qword_22F770B20);
    v136 = v128;
    sub_22F379840(isEscapingClosureAtFileLocation, type metadata accessor for CacherStatus);
    v137 = v188;
    v138 = v187;
    v147 = v193;
    v139 = v173;
    sub_22F73F680();
    (v138[7])(v139, 0, 1, v137);
    *v139 = 0xD000000000000015;
    v140 = v192;
    v139[1] = v192;
    sub_22F1207AC(v135, v139 + 14, &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v141 = v132;
    v142 = v132;
    v143 = v184;
    v144 = (v184)(v118, v141);
    MEMORY[0x28223BE20](v144);
    *(&v154 - 4) = 0xD000000000000015;
    *(&v154 - 3) = v140;
    *(&v154 - 2) = v145;
    *(&v154 - 1) = v139;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v143(v118, v142);
    sub_22F7416A0();
    v149 = v182;
    (v195)(0, v182);

    sub_22F1D210C(&v204);

    sub_22F379840(v173, type metadata accessor for CacherStatus);
    v150 = v190;
    v148 = v187;
    goto LABEL_20;
  }

  return result;
}

uint64_t static MusicForTimeFrontfillCacher.queryDateRange(with:)(char *a1, uint64_t a2, uint64_t (*a3)(uint64_t, char *, uint64_t))
{
  v40 = a3;
  v35 = a2;
  v37 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v3 - 8);
  v36 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v38 = &v34 - v6;
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v34 - v18;
  if (qword_2810AA150 != -1)
  {
    swift_once();
  }

  v20 = sub_22F73F9B0();
  __swift_project_value_buffer(v20, qword_2810AA158);
  sub_22F73F680();
  sub_22F73F5A0();
  v39 = v8;
  v21 = *(v8 + 8);
  v21(v13, v7);
  sub_22F73F800();
  v21(v16, v7);
  sub_22F73F680();
  sub_22F73F5A0();
  v21(v13, v7);
  sub_22F73F800();
  v21(v16, v7);
  v41 = 0;
  v42 = 0;
  v43 = 1;
  v22 = v44;
  v23 = sub_22F3762E8(v40, v19, v10);
  if (v22)
  {

    v24 = v10;
LABEL_10:
    v21(v24, v7);
    return (v21)(v19, v7);
  }

  v25 = v23;

  v44 = v10;
  started = _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(v19, v10);
  v27 = sub_22F152CE4(started);

  v28 = sub_22F1EB59C(v25, v27);

  v29 = v38;
  sub_22F17368C(v28, v38);
  v30 = *(v39 + 48);
  if (v30(v29, 1, v7) == 1)
  {

LABEL_9:
    sub_22F120ADC(v29, &qword_27DAB0920, &qword_22F770B20);
    sub_22F3768BC();
    swift_allocError();
    *v32 = 4;
    swift_willThrow();
    v24 = v44;
    goto LABEL_10;
  }

  v31 = *(v39 + 32);
  v39 += 32;
  v40 = v31;
  v31(v37, v29, v7);
  v29 = v36;
  sub_22F172438(v28, v36);

  if (v30(v29, 1, v7) == 1)
  {
    v21(v37, v7);
    goto LABEL_9;
  }

  v21(v44, v7);
  v21(v19, v7);
  return v40(v35, v29, v7);
}

uint64_t sub_22F374BB0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, char *a7, uint64_t a8, uint64_t a9, void (*a10)(void, uint64_t), uint64_t a11)
{
  v73 = a7;
  v74 = a8;
  v72 = a6;
  v85 = a5;
  v79 = a4;
  v78 = a2;
  v75 = a1;
  v82 = a11;
  v83 = a10;
  v76 = a9;
  v11 = type metadata accessor for Song(0);
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22F740AD0();
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v80 = &v70 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v21 - 8);
  v23 = &v70 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v26 = &v70 - v25;
  MEMORY[0x28223BE20](v27);
  v29 = &v70 - v28;
  v30 = type metadata accessor for CacherStatus(0);
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v77 = (&v70 - v35);
  if (v78)
  {
    sub_22F13BA9C(v79, v17, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v31 + 48))(v17, 1, v30) == 1)
    {
      sub_22F120ADC(v17, &qword_27DAB1DA0, &unk_22F7771B0);
      v36 = sub_22F73F690();
      (*(*(v36 - 8) + 56))(v23, 1, 1, v36);
    }

    else
    {
      sub_22F13BA9C(&v17[*(v30 + 20)], v23, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v17, type metadata accessor for CacherStatus);
    }

    v41 = v85;
    v42 = v80;
    v43 = *(v30 + 24);
    sub_22F73F680();
    v44 = sub_22F73F690();
    (*(*(v44 - 8) + 56))(&v33[v43], 0, 1, v44);
    *v33 = 0xD000000000000015;
    *(v33 + 1) = 0x800000022F78E8A0;
    sub_22F1207AC(v23, &v33[*(v30 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v45 = v84;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v46 = *(v81 + 8);
    v47 = v46(v42, v45);
    MEMORY[0x28223BE20](v47);
    *(&v70 - 4) = 0xD000000000000015;
    *(&v70 - 3) = 0x800000022F78E8A0;
    *(&v70 - 2) = v41;
    *(&v70 - 1) = v33;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v46(v42, v84);
    sub_22F7416A0();
    v83(0, v75);
    return sub_22F379840(v33, type metadata accessor for CacherStatus);
  }

  else
  {
    sub_22F73F680();
    v37 = sub_22F73F690();
    v38 = *(*(v37 - 8) + 56);
    v38(v29, 0, 1, v37);
    sub_22F13BA9C(v79, v20, &qword_27DAB1DA0, &unk_22F7771B0);
    if ((*(v31 + 48))(v20, 1, v30) == 1)
    {
      sub_22F120ADC(v20, &qword_27DAB1DA0, &unk_22F7771B0);
      v39 = v38;
      v40 = v26;
      v39(v26, 1, 1, v37);
    }

    else
    {
      v40 = v26;
      sub_22F13BA9C(&v20[*(v30 + 24)], v26, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v20, type metadata accessor for CacherStatus);
    }

    v49 = v80;
    v48 = v81;
    v50 = v77;
    *v77 = 0xD000000000000015;
    *(v50 + 8) = 0x800000022F78E8A0;
    v81 = 0x800000022F78E8A0;
    sub_22F1207AC(v29, v50 + *(v30 + 20), &qword_27DAB0920, &qword_22F770B20);
    sub_22F1207AC(v40, v50 + *(v30 + 24), &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    sub_22F740AC0();
    sub_22F740A90();
    v51 = *(v48 + 8);
    v52 = v84;
    v80 = v51;
    v53 = (v51)(v49, v84);
    MEMORY[0x28223BE20](v53);
    *(&v70 - 4) = 0xD000000000000015;
    *(&v70 - 3) = v81;
    *(&v70 - 2) = v54;
    *(&v70 - 1) = v50;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    (v80)(v49, v52);
    v55 = v75;
    v56 = *(v75 + 16);
    v57 = MEMORY[0x277D84F90];
    if (v56)
    {
      v89 = MEMORY[0x277D84F90];
      sub_22F146514(0, v56, 0);
      v57 = v89;
      v58 = (v55 + 32);
      v59 = v71;
      do
      {
        memcpy(v88, v58, sizeof(v88));
        memcpy(v87, v58, sizeof(v87));
        sub_22F18C4EC(v88, &v86);
        Song.init(_:)(v87);
        v89 = v57;
        v61 = *(v57 + 16);
        v60 = *(v57 + 24);
        if (v61 >= v60 >> 1)
        {
          sub_22F146514((v60 > 1), v61 + 1, 1);
          v57 = v89;
        }

        *(v57 + 16) = v61 + 1;
        sub_22F294B10(v13, v57 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v61, type metadata accessor for Song);
        v58 += 296;
        --v56;
      }

      while (v56);
      v50 = v77;
    }

    v62 = _s11PhotosGraph27MusicForTimeFrontfillCacherC6filterySayAA4SongVGAGFZ_0(v57);
    sub_22F3789F4(v62, v72, v73, v85, v74);

    if (qword_2810A9478 != -1)
    {
      swift_once();
    }

    v64 = sub_22F740B90();
    __swift_project_value_buffer(v64, qword_2810B4DC0);

    v65 = sub_22F740B70();
    v66 = sub_22F7415C0();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v88[0] = v68;
      *v67 = 134218242;
      v69 = *(v57 + 16);

      *(v67 + 4) = v69;

      *(v67 + 12) = 2080;
      *(v67 + 14) = sub_22F145F20(0x726F46636973754DLL, 0xEC000000656D6954, v88);
      _os_log_impl(&dword_22F0FC000, v65, v66, "Saving %ld of type %s", v67, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x2319033A0](v68, -1, -1);
      MEMORY[0x2319033A0](v67, -1, -1);
    }

    else
    {

      swift_bridgeObjectRelease_n();
    }

    sub_22F7416A0();
    sub_22F379840(v50, type metadata accessor for CacherStatus);
    return (v83)(1, 0);
  }
}

id MusicForTimeFrontfillCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForTimeFrontfillCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForTimeFrontfillCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F375984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a3;
  v39 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v37 - v5;
  v7 = sub_22F73F690();
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x28223BE20](v7);
  v37 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v40 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v13, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27DAB1DA0;
    v19 = &unk_22F7771B0;
    v20 = v13;
LABEL_5:
    sub_22F120ADC(v20, v18, v19);
    LOBYTE(v23) = 1;
    return v23 & 1;
  }

  sub_22F294B10(v13, v17, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v17[*(v14 + 20)], v6, &qword_27DAB0920, &qword_22F770B20);
  v22 = v41;
  v21 = v42;
  if ((*(v41 + 48))(v6, 1, v42) == 1)
  {
    sub_22F379840(v17, type metadata accessor for CacherStatus);
    v18 = &qword_27DAB0920;
    v19 = &qword_22F770B20;
    v20 = v6;
    goto LABEL_5;
  }

  v25 = v40;
  (*(v22 + 32))(v40, v6, v21);
  sub_22F1E3F74(v46);
  memcpy(v47, v46, 0x121uLL);
  if (sub_22F1EDAB8(v47) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v44, v46, sizeof(v44));
    GEOLocationCoordinate2DMake();
    v23 = *v26;
    v45 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v25, v21);
    sub_22F379840(v17, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v46, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v44, v46, sizeof(v44));
    GEOLocationCoordinate2DMake();
    v28 = *(v27 + 144);
    v29 = *(v27 + 216);
    v30 = *(v27 + 248);
    v23 = v37;
    sub_22F73F680();
    sub_22F73F590();
    v32 = v31;
    v33 = v25;
    v34 = *(v22 + 8);
    v34(v23, v21);
    LOBYTE(v23) = v38;
    v35 = v43;
    sub_22F7416A0();
    if (v35)
    {
      v34(v33, v21);
      sub_22F379840(v17, type metadata accessor for CacherStatus);
    }

    else
    {
      if (v30)
      {
        v36 = v28;
      }

      else
      {
        v36 = v29;
      }

      LOBYTE(v23) = v36 < v32;
      v34(v33, v21);
      sub_22F379840(v17, type metadata accessor for CacherStatus);
    }
  }

  return v23 & 1;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

char *_s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v35 = sub_22F73F990();
  v4 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = sub_22F73F690();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v37 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v26 - v15;
  v33 = *(v11 + 16);
  v34 = v11 + 16;
  v33(&v26 - v15, a1, v10, v14);
  v31 = sub_22F3797F8(&qword_2810AC708, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v32 = a2;
  if (sub_22F740DB0())
  {
    v17 = MEMORY[0x277D84F90];
    (*(v11 + 8))(v16, v10);
    return v17;
  }

  else
  {
    v36 = v11 + 32;
    v30 = *MEMORY[0x277CC9968];
    v28 = (v4 + 8);
    v29 = (v4 + 104);
    v27 = (v11 + 48);
    v17 = MEMORY[0x277D84F90];
    v18 = (v11 + 8);
    while (1)
    {
      (v33)(v37, v16, v10);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_22F13E15C(0, *(v17 + 2) + 1, 1, v17);
      }

      v20 = *(v17 + 2);
      v19 = *(v17 + 3);
      if (v20 >= v19 >> 1)
      {
        v17 = sub_22F13E15C((v19 > 1), v20 + 1, 1, v17);
      }

      *(v17 + 2) = v20 + 1;
      v21 = *(v11 + 32);
      v21(&v17[((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v20], v37, v10);
      if (qword_2810AA150 != -1)
      {
        swift_once();
      }

      v22 = sub_22F73F9B0();
      __swift_project_value_buffer(v22, qword_2810AA158);
      v23 = v35;
      (*v29)(v6, v30, v35);
      sub_22F73F940();
      (*v28)(v6, v23);
      result = (*v27)(v9, 1, v10);
      if (result == 1)
      {
        break;
      }

      v25 = *v18;
      (*v18)(v16, v10);
      v21(v16, v9, v10);
      if (sub_22F740DB0())
      {
        v25(v16, v10);
        return v17;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_22F3762E8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v47 = &v43 - v9;
  v55 = sub_22F73F690();
  v10 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v52 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SongSource(0);
  v13 = *(v12 - 8);
  v44 = v12;
  v45 = v13;
  MEMORY[0x28223BE20](v12);
  v51 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DC0, &qword_22F7711C0);
  v15 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v17 = &v43 - v16;
  started = _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a2, a3);
  v19 = *(started + 2);
  v48 = v10;
  if (v19)
  {
    v49 = a1;
    v50 = v3;
    v53 = *(v10 + 16);
    v20 = *(v10 + 80);
    v46 = started;
    v21 = &started[(v20 + 32) & ~v20];
    v22 = *(v10 + 72);
    v23 = MEMORY[0x277D84F90];
    do
    {
      v24 = *(v54 + 48);
      strcpy(v17, "MusicForTime");
      v17[13] = 0;
      *(v17 + 7) = -5120;
      v53(&v17[v24], v21, v55);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_22F13F8D8(0, v23[2] + 1, 1, v23);
      }

      v26 = v23[2];
      v25 = v23[3];
      if (v26 >= v25 >> 1)
      {
        v23 = sub_22F13F8D8((v25 > 1), v26 + 1, 1, v23);
      }

      v23[2] = v26 + 1;
      sub_22F1207AC(v17, v23 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v26, &qword_27DAB1DC0, &qword_22F7711C0);
      v21 += v22;
      --v19;
    }

    while (v19);

    v10 = v48;
    a1 = v49;
    v4 = v50;
  }

  else
  {

    v23 = MEMORY[0x277D84F90];
  }

  v27 = objc_opt_self();

  v28 = [v27 ignoreProgress];
  v29 = MusicCache.readSongSources(identifiersAndDates:progressReporter:)(v23, v28);
  if (v4)
  {

    swift_bridgeObjectRelease_n();
  }

  else
  {
    v30 = v29;

    v31 = *(v30 + 16);
    if (v31)
    {
      v46 = 0;
      v32 = *(v44 + 28);
      v33 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      v44 = v30;
      v34 = v30 + v33;
      v53 = *(v45 + 72);
      v54 = v32;
      v49 = (v10 + 48);
      v50 = (v10 + 32);
      a1 = MEMORY[0x277D84F90];
      v35 = v47;
      v36 = v55;
      do
      {
        v37 = v51;
        sub_22F1A39E0(v34, v51, type metadata accessor for SongSource);
        sub_22F13BA9C(v37 + v54, v35, &qword_27DAB0920, &qword_22F770B20);
        sub_22F379840(v37, type metadata accessor for SongSource);
        if ((*v49)(v35, 1, v36) == 1)
        {
          sub_22F120ADC(v35, &qword_27DAB0920, &qword_22F770B20);
        }

        else
        {
          v38 = *v50;
          (*v50)(v52, v35, v36);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a1 = sub_22F13E15C(0, a1[2] + 1, 1, a1);
          }

          v40 = a1[2];
          v39 = a1[3];
          if (v40 >= v39 >> 1)
          {
            a1 = sub_22F13E15C((v39 > 1), v40 + 1, 1, a1);
          }

          a1[2] = v40 + 1;
          v41 = a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v40;
          v36 = v55;
          v38(v41, v52, v55);
          v35 = v47;
        }

        v34 += v53;
        --v31;
      }

      while (v31);
    }

    else
    {

      return MEMORY[0x277D84F90];
    }
  }

  return a1;
}

unint64_t sub_22F3768BC()
{
  result = qword_27DAB3D38;
  if (!qword_27DAB3D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D38);
  }

  return result;
}

uint64_t sub_22F376910(void *a1, int a2, void *a3, uint64_t a4, NSObject *a5)
{
  v176 = a4;
  LODWORD(v187) = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v166 = v150 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v171 = v150 - v11;
  v174 = type metadata accessor for CacherStatus(0);
  v173 = *(v174 - 8);
  MEMORY[0x28223BE20](v174);
  v169 = v150 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v178 = v150 - v14;
  v168 = sub_22F73EEC0();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v164 = v150 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v163 = v15;
  MEMORY[0x28223BE20](v16);
  v172 = v150 - v17;
  v180 = sub_22F740AD0();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v177 = v150 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22F740C00();
  MEMORY[0x28223BE20](v19 - 8);
  v183 = v150 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_22F73F690();
  v184 = *(v189 - 8);
  v21 = *(v184 + 64);
  MEMORY[0x28223BE20](v189);
  v182 = v150 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v181 = v150 - v23;
  MEMORY[0x28223BE20](v24);
  v186 = v150 - v25;
  MEMORY[0x28223BE20](v26);
  v185 = v150 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v175 = *(v28 - 8);
  v29 = *(v175 + 64);
  MEMORY[0x28223BE20](v28 - 8);
  v165 = v150 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v170 = v150 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = v150 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = v150 - v36;
  MEMORY[0x28223BE20](v38);
  v188 = v150 - v39;
  v40 = swift_allocObject();
  *(v40 + 16) = a5;
  v190 = a5;
  _Block_copy(a5);
  v41 = a3;
  v42 = sub_22F7416D0();
  v44 = v43;
  v46 = v45;
  v47 = sub_22F1A26E0(a1);
  v155 = v37;
  v156 = v21;
  v159 = v46;
  v158 = v41;
  v161 = v42;
  v162 = v44;
  v157 = v34;
  v48 = v189;
  v160 = v40;
  v49 = v47;
  objc_allocWithZone(type metadata accessor for MusicBag());
  v50 = v49;
  v51 = sub_22F1ED5B0(v49);

  v52 = v188;
  MusicCache.readCacherStatus(category:)(0xD000000000000015, 0x800000022F78E8A0, v188);
  v53 = v161;
  v54 = sub_22F375984(v52, v51, v161);
  v154 = v50;
  if (((v54 | v187) & 1) == 0)
  {
    sub_22F7416A0();
    v57 = v159;
    (v190[2].isa)(v190, 1, 0);

    v59 = v52;
LABEL_20:
    sub_22F120ADC(v59, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  v55 = v185;
  v56 = v186;
  static MusicForTimeFrontfillCacher.queryDateRange(with:)(v185, v186, v154);
  v58 = v183;
  sub_22F740BD0();
  v183 = sub_22F22FB24(v58, 0);
  v153 = v51;
  v151 = 0x800000022F78E8A0;
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000015, 0x800000022F78E8A0, &v199);
  v60 = v155;
  sub_22F13BA9C(v52, v155, &qword_27DAB1DA0, &unk_22F7771B0);
  v61 = v184;
  v62 = v184 + 16;
  v63 = *(v184 + 16);
  v63(v181, v55, v48);
  v150[1] = v62;
  v150[0] = v63;
  v63(v182, v56, v48);
  sub_22F13BA9C(v60, v157, &qword_27DAB1DA0, &unk_22F7771B0);
  v64 = (*(v175 + 80) + 24) & ~*(v175 + 80);
  v65 = (v29 + v64 + 7) & 0xFFFFFFFFFFFFFFF8;
  v66 = *(v61 + 80);
  v67 = (v66 + v65 + 8) & ~v66;
  v68 = (v156 + v66 + v67) & ~v66;
  v187 = ((v156 + v68 + 7) & 0xFFFFFFFFFFFFFFF8);
  v156 = (v187 + 15) & 0xFFFFFFFFFFFFFFF8;
  v152 = (v156 + 15) & 0xFFFFFFFFFFFFFFF8;
  v69 = swift_allocObject();
  *(v69 + 16) = v176;
  sub_22F1207AC(v60, v69 + v64, &qword_27DAB1DA0, &unk_22F7771B0);
  v70 = v154;
  *(v69 + v65) = v154;
  v71 = v158;
  v72 = *(v61 + 32);
  v73 = v55;
  v74 = v189;
  v72(v69 + v67, v181, v189);
  v75 = v160;
  v72(v69 + v68, v182, v74);
  v76 = v159;
  *(v187 + v69) = v159;
  *(v69 + v156) = v71;
  v175 = v69;
  v77 = (v69 + v152);
  *v77 = sub_22F1E088C;
  v77[1] = v75;
  v187 = v70;
  v182 = v76;

  v78 = v71;
  v79 = v186;
  v181 = v78;
  if (sub_22F73F660() != -1)
  {
    type metadata accessor for MusicKitClientError(0);
    sub_22F3797F8(&qword_27DAB2948, type metadata accessor for MusicKitClientError, &protocol conformance descriptor for MusicKitClientError);
    v176 = swift_allocError();
    v81 = v80;
    v82 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2950, &unk_22F781A20) + 48);
    v83 = v73;
    v84 = v150[0];
    (v150[0])(v81, v83, v74);
    v84(v81 + v82, v79, v74);
    swift_storeEnumTagMultiPayload();
    v85 = v170;
    sub_22F13BA9C(v157, v170, &qword_27DAB1DA0, &unk_22F7771B0);
    v86 = v174;
    if ((*(v173 + 48))(v85, 1, v174) == 1)
    {
      sub_22F120ADC(v85, &qword_27DAB1DA0, &unk_22F7771B0);
      v87 = v184;
      v88 = v171;
      (*(v184 + 56))(v171, 1, 1, v74);
      v89 = v74;
      v90 = v178;
      v91 = v151;
    }

    else
    {
      v88 = v171;
      sub_22F13BA9C(v85 + *(v86 + 20), v171, &qword_27DAB0920, &qword_22F770B20);
      sub_22F379840(v85, type metadata accessor for CacherStatus);
      v89 = v74;
      v90 = v178;
      v91 = v151;
      v87 = v184;
    }

    v102 = *(v86 + 24);
    sub_22F73F680();
    (*(v87 + 56))(&v90[v102], 0, 1, v89);
    *v90 = 0xD000000000000015;
    *(v90 + 1) = v91;
    sub_22F1207AC(v88, &v90[*(v86 + 20)], &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    v103 = v91;
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v104 = v177;
    sub_22F740AC0();
    sub_22F740A90();
    v105 = *(v179 + 8);
    v106 = v180;
    v107 = v105(v104, v180);
    MEMORY[0x28223BE20](v107);
    v150[-4] = 0xD000000000000015;
    v150[-3] = v103;
    v150[-2] = v108;
    v150[-1] = v90;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v105(v104, v106);
    sub_22F7416A0();
    v116 = v189;
    v109 = v184;
    v144 = v176;
    v145 = sub_22F73F360();
    (v190[2].isa)(v190, 0, v145);

    sub_22F1D210C(&v199);

    v146 = &v201;
LABEL_21:
    sub_22F379840(*(v146 - 32), type metadata accessor for CacherStatus);
    sub_22F120ADC(v157, &qword_27DAB1DA0, &unk_22F7771B0);
    v147 = *(v109 + 8);
    v147(v186, v116);
    v147(v185, v116);
    v59 = v188;
    goto LABEL_20;
  }

  sub_22F741740();
  v92 = v180;
  if (qword_2810A8E30 != -1)
  {
    swift_once();
  }

  v93 = v177;
  sub_22F740AC0();
  sub_22F740A90();
  v94 = *(v179 + 8);
  v94(v93, v92);
  v95 = v183;
  v97 = *(v183 + 3);
  v96 = *(v183 + 4);
  v191[0] = v199;
  v98 = *(v183 + 5);
  v99 = *(v183 + 6);
  v100 = *(v183 + 7);
  v101 = *(v183 + 8);
  aBlock = v97;
  v194 = v96;
  v195 = v98;
  v196 = v99;
  v197 = v100;
  v198 = v101;
  v191[1] = v200;
  v191[2] = v201;
  v192 = v202;

  sub_22F3E29C0(v186, v191, v172);

  v110 = swift_allocObject();
  v181 = v110;
  *(v110 + 16) = "MusicKitClient Fetch Tesseract Songs";
  *(v110 + 24) = 36;
  *(v110 + 32) = 2;
  *(v110 + 40) = sub_22F3798A8;
  *(v110 + 48) = v175;

  sub_22F741740();
  sub_22F740AC0();
  sub_22F740A90();
  v94(v93, v180);
  v190 = *(v95 + 9);
  v111 = v167;
  v112 = v164;
  v113 = v168;
  (*(v167 + 16))(v164, v172, v168);
  v114 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v115 = (v163 + v114 + 7) & 0xFFFFFFFFFFFFFFF8;
  v116 = (v115 + 63) & 0xFFFFFFFFFFFFFFF8;
  v180 = (v116 + 15) & 0xFFFFFFFFFFFFFFF8;
  v117 = (v116 + 39) & 0xFFFFFFFFFFFFFFF8;
  v118 = swift_allocObject();
  (*(v111 + 32))(v118 + v114, v112, v113);
  v119 = v118 + v115;
  v120 = v200;
  v121 = v201;
  *v119 = v199;
  *(v119 + 16) = v120;
  *(v119 + 32) = v121;
  *(v119 + 48) = v202;
  *(v118 + v116) = v95;
  v122 = v118 + v180;
  *v122 = "MusicKitClient HTTP Request";
  *(v122 + 8) = 27;
  *(v122 + 16) = 2;
  v123 = v162;
  *(v118 + v117) = v162;
  v124 = (v118 + ((v117 + 15) & 0xFFFFFFFFFFFFFFF8));
  v125 = v118;
  v126 = v181;
  *v124 = sub_22F294B7C;
  v124[1] = v126;
  v127 = swift_allocObject();
  v127[2] = sub_22F294B80;
  v127[3] = v125;
  v197 = sub_22F294B84;
  v198 = v127;
  aBlock = MEMORY[0x277D85DD0];
  v194 = 1107296256;
  v195 = sub_22F2280B0;
  v196 = &block_descriptor_39_2;
  v128 = _Block_copy(&aBlock);
  sub_22F1D20B0(&v199, v191);

  v129 = v123;

  dispatch_sync(v190, v128);

  _Block_release(v128);

  sub_22F1D210C(&v199);

  (*(v167 + 8))(v172, v168);
  sub_22F120ADC(v157, &qword_27DAB1DA0, &unk_22F7771B0);
  v130 = *(v184 + 8);
  v131 = v189;
  v130(v186, v189);
  v130(v185, v131);
  sub_22F120ADC(v188, &qword_27DAB1DA0, &unk_22F7771B0);

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    v134 = v166;
    sub_22F13BA9C(v125 + 14, v166, &qword_27DAB0920, &qword_22F770B20);
    v135 = v127;
    sub_22F379840(v125, type metadata accessor for CacherStatus);
    v136 = v184;
    v137 = v169;
    v176 = v127;
    sub_22F73F680();
    (*(v136 + 56))(v137, 0, 1, v116);
    *v137 = 0xD000000000000015;
    v138 = v151;
    v137[1] = v151;
    sub_22F1207AC(v134, v137 + 14, &qword_27DAB0920, &qword_22F770B20);
    sub_22F741740();
    if (qword_2810A8E80 != -1)
    {
      swift_once();
    }

    v139 = v177;
    sub_22F740AC0();
    sub_22F740A90();
    v140 = v180;
    v141 = v178;
    v142 = (v178)(v139, v180);
    MEMORY[0x28223BE20](v142);
    v150[-4] = 0xD000000000000015;
    v150[-3] = v138;
    v150[-2] = v143;
    v150[-1] = v137;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();
    v141(v139, v140);
    sub_22F7416A0();
    v109 = v184;
    v148 = v176;
    v149 = sub_22F73F360();
    (v190[2].isa)(v190, 0, v149);

    sub_22F1D210C(&v199);

    v146 = &v195;
    goto LABEL_21;
  }

  return result;
}

uint64_t _s11PhotosGraph27MusicForTimeFrontfillCacherC6filterySayAA4SongVGAGFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - v7;
  v41 = *(a1 + 16);
  if (!v41)
  {
    return MEMORY[0x277D84F90];
  }

  v9 = 0;
  v35 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v40 = a1 + v35;
  v10 = *(v6 + 72);
  v11 = MEMORY[0x277D84F90];
  v34 = v2;
  v33 = v4;
  v36 = v10;
  v37 = &v33 - v7;
  do
  {
    result = sub_22F1A39E0(v40 + v10 * v9, v8, type metadata accessor for Song);
    v13 = *&v8[*(v2 + 68)];
    if (v13)
    {
      v42 = v11;
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = 0;
        v16 = v13 + 32;
        v17 = v14 - 1;
        v18 = MEMORY[0x277D84F90];
        do
        {
          v19 = (v16 + 80 * v15);
          v20 = v15;
          while (1)
          {
            if (v20 >= *(v13 + 16))
            {
              __break(1u);
              return result;
            }

            v21 = v19[1];
            v22 = v19[2];
            v23 = v19[3];
            *&v47[9] = *(v19 + 57);
            v24 = *v19;
            v46 = v22;
            *v47 = v23;
            v44 = v24;
            v45 = v21;
            v15 = v20 + 1;
            if ((v47[24] & 1) == 0)
            {
              break;
            }

            v19 += 5;
            ++v20;
            if (v14 == v15)
            {
              goto LABEL_20;
            }
          }

          v38 = v17;
          v39 = v16;
          sub_22F13A7E4(&v44, v43);
          result = swift_isUniquelyReferenced_nonNull_native();
          v48 = v18;
          if ((result & 1) == 0)
          {
            result = sub_22F146494(0, *(v18 + 16) + 1, 1);
            v10 = v36;
            v18 = v48;
          }

          v17 = v38;
          v26 = *(v18 + 16);
          v25 = *(v18 + 24);
          v16 = v39;
          if (v26 >= v25 >> 1)
          {
            result = sub_22F146494((v25 > 1), v26 + 1, 1);
            v17 = v38;
            v16 = v39;
            v10 = v36;
            v18 = v48;
          }

          *(v18 + 16) = v26 + 1;
          v27 = (v18 + 80 * v26);
          v27[2] = v44;
          v28 = v45;
          v29 = v46;
          v30 = *v47;
          *(v27 + 89) = *&v47[9];
          v27[4] = v29;
          v27[5] = v30;
          v27[3] = v28;
          v2 = v34;
          v4 = v33;
        }

        while (v17 != v20);
      }

      else
      {
        v18 = MEMORY[0x277D84F90];
      }

LABEL_20:
      if (*(v18 + 16))
      {
        v8 = v37;
        sub_22F2907FC(v18, v4);

        v11 = v42;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_22F13E558(0, v11[2] + 1, 1, v11);
        }

        v32 = v11[2];
        v31 = v11[3];
        if (v32 >= v31 >> 1)
        {
          v11 = sub_22F13E558((v31 > 1), v32 + 1, 1, v11);
        }

        sub_22F379840(v8, type metadata accessor for Song);
        v11[2] = v32 + 1;
        v10 = v36;
        sub_22F294B10(v4, v11 + v35 + v32 * v36, type metadata accessor for Song);
      }

      else
      {
        v8 = v37;
        sub_22F379840(v37, type metadata accessor for Song);

        v11 = v42;
      }
    }

    else
    {
      sub_22F379840(v8, type metadata accessor for Song);
    }

    ++v9;
  }

  while (v9 != v41);
  return v11;
}

void sub_22F3789F4(uint64_t a1, void *a2, char *started, uint64_t a4, uint64_t a5)
{
  v83 = a5;
  v80 = a4;
  v94 = a1;
  v85 = sub_22F740AD0();
  v88 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Song(0);
  v92 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = (&v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v11);
  v13 = &v77 - v12;
  MEMORY[0x28223BE20](v14);
  v106 = &v77 - v15;
  MEMORY[0x28223BE20](v16);
  v18 = &v77 - v17;
  v19 = sub_22F73F690();
  v97 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v98 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v105 = &v77 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v77 - v24;
  MEMORY[0x28223BE20](v26);
  v109 = &v77 - v27;
  if (qword_2810A9168 != -1)
  {
    goto LABEL_46;
  }

  while (1)
  {
    v107 = qword_2810A9170;
    started = _s11PhotosGraph27MusicForTimeFrontfillCacherC5dates12forStartDate03endK0Say10Foundation0K0VGAI_AItFZ_0(a2, started);
    v28 = sub_22F14FAE0(MEMORY[0x277D84F90]);
    v86 = *(started + 2);
    if (!v86)
    {
      break;
    }

    v29 = 0;
    v100 = *(v94 + 16);
    v30 = &started[(*(v97 + 80) + 32) & ~*(v97 + 80)];
    v96 = v97 + 16;
    v104 = (v97 + 32);
    v108 = (v97 + 8);
    a2 = MEMORY[0x277D84F90];
    v95 = v8;
    v78 = v10;
    v77 = v13;
    v102 = v18;
    v89 = started;
    v79 = v30;
    while (1)
    {
      if (v29 >= *(started + 2))
      {
        goto LABEL_45;
      }

      v93 = v28;
      v31 = *(v97 + 72);
      v87 = v29;
      v81 = v31;
      v90 = *(v97 + 16);
      v90(v109, &v30[v31 * v29], v19);
      if (v100)
      {
        break;
      }

LABEL_23:
      v90(v98, v109, v19);
      v38 = a2[2];
      v39 = sub_22F3797F8(&qword_2810A99B0, type metadata accessor for Song, &protocol conformance descriptor for Song);
      v110 = MEMORY[0x231901000](v38, v8, v39);
      v40 = a2[2];
      if (v40)
      {
        v41 = a2 + ((*(v92 + 80) + 32) & ~*(v92 + 80));
        v42 = *(v92 + 72);
        v28 = v78;
        v13 = v77;
        do
        {
          sub_22F1A39E0(v41, v28, type metadata accessor for Song);
          sub_22F10C40C(v13, v28);
          sub_22F379840(v13, type metadata accessor for Song);
          v41 += v42;
          --v40;
        }

        while (v40);

        v18 = v102;
      }

      else
      {
      }

      v43 = v93;
      v44 = v110;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v110 = v43;
      v46 = sub_22F1230FC(v98);
      v48 = *(v43 + 16);
      v49 = (v47 & 1) == 0;
      v50 = __OFADD__(v48, v49);
      v51 = v48 + v49;
      if (v50)
      {
        __break(1u);
        goto LABEL_48;
      }

      v52 = v47;
      if (*(v43 + 24) < v51)
      {
        sub_22F129770(v51, isUniquelyReferenced_nonNull_native);
        v46 = sub_22F1230FC(v98);
        if ((v52 & 1) != (v53 & 1))
        {
          goto LABEL_50;
        }

LABEL_33:
        v28 = v110;
        if (v52)
        {
          goto LABEL_34;
        }

        goto LABEL_36;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v54 = v46;
      sub_22F13685C();
      v46 = v54;
      v28 = v110;
      if (v52)
      {
LABEL_34:
        *(v28[7] + 8 * v46) = v44;

        goto LABEL_38;
      }

LABEL_36:
      v28[(v46 >> 6) + 8] |= 1 << v46;
      v55 = v46;
      v90((v28[6] + v46 * v81), v98, v19);
      *(v28[7] + 8 * v55) = v44;
      v56 = v28[2];
      v50 = __OFADD__(v56, 1);
      v57 = v56 + 1;
      if (v50)
      {
        __break(1u);
LABEL_50:
        sub_22F7420C0();
        __break(1u);
        return;
      }

      v28[2] = v57;
LABEL_38:
      v8 = v95;
      started = v89;
      v13 = v87 + 1;
      v10 = *v108;
      (*v108)(v98, v19);
      v10(v109, v19);
      v29 = v13;
      v30 = v79;
      a2 = MEMORY[0x277D84F90];
      if (v13 == v86)
      {
        goto LABEL_39;
      }
    }

    v10 = 0;
    v101 = (*(v92 + 80) + 32) & ~*(v92 + 80);
    v13 = (v94 + v101);
    v103 = *(v92 + 72);
    v91 = (v94 + v101);
    while (1)
    {
      sub_22F1A39E0(&v13[v103 * v10], v18, type metadata accessor for Song);
      started = *&v18[*(v8 + 68)];
      if (!started)
      {
        sub_22F379840(v18, type metadata accessor for Song);
        goto LABEL_8;
      }

      v99 = v10;
      v13 = *(started + 2);

      if (v13)
      {
        break;
      }

LABEL_7:
      v18 = v102;
      sub_22F379840(v102, type metadata accessor for Song);

      v8 = v95;
      v10 = v99;
      v13 = v91;
LABEL_8:
      v10 = (v10 + 1);
      if (v10 == v100)
      {
        goto LABEL_23;
      }
    }

    v8 = 0;
    v18 = started + 40;
    while (v8 < *(started + 2))
    {
      v28 = v19;

      v32 = sub_22F740DF0();

      v10 = [v107 dateFromString_];

      if (!v10)
      {

        sub_22F3768BC();
        swift_allocError();
        *v62 = 2;
        swift_willThrow();
        sub_22F379840(v102, type metadata accessor for Song);
        (*v108)(v109, v28);
        return;
      }

      v33 = v105;
      sub_22F73F640();

      v34 = v33;
      v19 = v28;
      (*v104)(v25, v34, v28);
      if (sub_22F73F630())
      {
        sub_22F1A39E0(v102, v106, type metadata accessor for Song);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a2 = sub_22F13E558(0, a2[2] + 1, 1, a2);
        }

        v36 = a2[2];
        v35 = a2[3];
        v10 = (v36 + 1);
        if (v36 >= v35 >> 1)
        {
          a2 = sub_22F13E558((v35 > 1), v36 + 1, 1, a2);
        }

        (*v108)(v25, v28);
        a2[2] = v10;
        v37 = a2 + v101 + v36 * v103;
        v19 = v28;
        sub_22F294B10(v106, v37, type metadata accessor for Song);
      }

      else
      {
        (*v108)(v25, v28);
      }

      ++v8;
      v18 += 80;
      if (v13 == v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    swift_once();
  }

LABEL_39:

  sub_22F741740();
  v13 = v85;
  v44 = v88;
  v18 = v84;
  if (qword_2810A8E80 != -1)
  {
LABEL_48:
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v60 = *(v44 + 8);
  v58 = v44 + 8;
  v59 = v60;
  v60(v18, v13);
  v61 = v82;
  sub_22F741690();
  if (v61)
  {
  }

  else
  {
    v88 = v58;
    v63 = sub_22F7416E0();
    v65 = v64;
    v67 = v66;
    v69 = v68;
    v109 = &v77;
    MEMORY[0x28223BE20](v63);
    *(&v77 - 14) = v28;
    strcpy(&v77 - 104, "MusicForTime");
    *(&v77 - 91) = 0;
    *(&v77 - 45) = -5120;
    *(&v77 - 11) = v70;
    *(&v77 - 10) = 0;
    *(&v77 - 9) = 0;
    *(&v77 - 8) = 0xD000000000000015;
    *(&v77 - 7) = 0x800000022F78E8A0;
    v72 = v71;
    *(&v77 - 6) = v71;
    *(&v77 - 10) = 16843008;
    *(&v77 - 4) = v65;
    *(&v77 - 3) = v73;
    *(&v77 - 2) = v74;
    sub_22F7417A0();

    sub_22F741730();
    v75 = v72;
    v76 = v84;
    sub_22F740AC0();
    sub_22F740A90();

    v59(v76, v85);
  }
}

unint64_t sub_22F379610()
{
  result = qword_27DAB3D40;
  if (!qword_27DAB3D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3D40);
  }

  return result;
}

uint64_t sub_22F379698(uint64_t a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_22F73F690() - 8);
  v9 = *(v8 + 80);
  v10 = (v7 + v9 + 8) & ~v9;
  v11 = *(v8 + 64);
  v12 = (v11 + v9 + v10) & ~v9;
  v13 = (v11 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22F374BB0(a1, a2 & 1, *(v2 + 16), v2 + v6, *(v2 + v7), (v2 + v10), (v2 + v12), *(v2 + v13), *(v2 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_22F3797F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22F379840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_22F3798AC(uint64_t a1, uint64_t (*a2)(void, void), uint64_t (*a3)(uint64_t *, uint64_t, uint64_t, uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = a2(*(a1 + 16), 0);
  v7 = a3(&v9, v6 + 32, v4, a1);
  sub_22F0FF590(v9);
  if (v7 != v4)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v6;
}

uint64_t sub_22F37994C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_22F20B494(a3, v25 - v10);
  v12 = sub_22F741320();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_22F120ADC(v11, &qword_27DAB07C0, &qword_22F77A4F0);
  }

  else
  {
    sub_22F741310();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_22F7412D0();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_22F740EC0() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_22F120ADC(a3, &qword_27DAB07C0, &qword_22F77A4F0);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_22F120ADC(a3, &qword_27DAB07C0, &qword_22F77A4F0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t GraphFullRebuilder.__allocating_init(with:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t GraphFullRebuilder.rebuildGraph()()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = swift_task_alloc();
  v1[4] = v2;
  *v2 = v1;
  v2[1] = sub_22F379D28;

  return GraphFullRebuilder.photoStreamTokenData()();
}

uint64_t sub_22F379D28(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[5] = a1;
  v4[6] = a2;

  if (v2)
  {
    v5 = v4[1];

    return v5();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_22F379E5C, 0, 0);
  }
}

uint64_t sub_22F379E5C()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = *(v2 + 16);
  v0[7] = v3;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;

  return MEMORY[0x2822009F8](sub_22F379EE0, v3, 0);
}

uint64_t sub_22F379EE0()
{
  v1 = v0[8];
  v2 = swift_task_alloc();
  v0[9] = v2;
  *(v2 + 16) = sub_22F380904;
  *(v2 + 24) = v1;
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_22F379FD4;
  v4 = MEMORY[0x277D839B0];

  return MEMORY[0x282181588](v0 + 14, &unk_22F788CA8, v2, v4);
}

uint64_t sub_22F379FD4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_22F37A1E8;
  }

  else
  {

    *(v2 + 113) = *(v2 + 112);

    v4 = sub_22F37A108;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F37A108()
{
  if (*(v0 + 113) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 96) = v1;
    *v1 = v0;
    v1[1] = sub_22F37A2BC;
    v3 = *(v0 + 40);
    v2 = *(v0 + 48);

    return GraphFullRebuilder.savePhotoKitStreamToken(with:)(v3, v2);
  }

  else
  {
    sub_22F1746FC(*(v0 + 40), *(v0 + 48));
    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_22F37A1E8()
{

  return MEMORY[0x2822009F8](sub_22F37A258, 0, 0);
}

uint64_t sub_22F37A258()
{
  sub_22F1746FC(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22F37A2BC()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_22F37A434;
  }

  else
  {
    v2 = sub_22F37A3D0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F37A3D0()
{
  sub_22F1746FC(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22F37A434()
{
  sub_22F1746FC(v0[5], v0[6]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_22F37A4C4()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_22F37A4E8, v1, 0);
}

uint64_t sub_22F37A4E8()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22F37A5AC;
  v2 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181588](v1, &unk_22F7821C8, 0, v2);
}

uint64_t sub_22F37A5AC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_22F37A6C0;
  }

  else
  {
    v2 = sub_22F20A4A4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22F37A6F8()
{
  v1 = *(*(*(v0 + 32) + 16) + 112);
  v2 = [v1 currentToken];
  if (v2)
  {
    v3 = v2;
    sub_22F73F350();
    swift_allocObject();
    sub_22F73F340();
    *(v0 + 16) = v3;
    *(v0 + 24) = 0;
    sub_22F288AD0();
    v4 = sub_22F73F330();
    v6 = v5;

    v7 = v4;
    v8 = v6;
  }

  else
  {

    v7 = 0;
    v8 = 0xF000000000000000;
  }

  v9 = *(v0 + 8);

  return v9(v7, v8);
}

void sub_22F37A858(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v669 = a1;
  v664 = a3;
  v638 = a4;
  v694 = *MEMORY[0x277D85DE8];
  v5 = sub_22F73F6D0();
  v640 = *(v5 - 8);
  v641 = v5;
  MEMORY[0x28223BE20](v5);
  v639 = &v620 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F740AD0();
  v8 = *(v7 - 8);
  v655 = v7;
  v656 = v8;
  MEMORY[0x28223BE20](v7);
  v10 = &v620 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F73F7D0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v620 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22F73F9B0();
  v654 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v620 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = &selRef_floatVector;
  v671 = [objc_allocWithZone(MEMORY[0x277D22BB8]) init];
  (*(v12 + 104))(v14, *MEMORY[0x277CC9830], v11);
  v667 = v17;
  sub_22F73F7E0();
  (*(v12 + 8))(v14, v11);
  v666 = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  v644 = sub_22F120634(0, &qword_2810A8D00, 0x277D86200);
  v19 = sub_22F741850();
  v657 = v10;
  sub_22F740AA0();
  v646 = *(a2 + 16);
  v20 = v646[14];
  v21 = [v20 librarySpecificFetchOptions];
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22F7707D0;
  *(v22 + 32) = sub_22F740E20();
  *(v22 + 40) = v23;
  *(v22 + 48) = sub_22F740E20();
  *(v22 + 56) = v24;
  *(v22 + 64) = sub_22F740E20();
  *(v22 + 72) = v25;
  v26 = sub_22F741160();

  [v21 setFetchPropertySets_];

  [v21 setIncludeHiddenAssets_];
  [v21 setIncludeTrashedAssets_];
  v648 = objc_opt_self();
  v659 = v21;
  v27 = [v648 fetchAssetsWithOptions_];
  v28 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  v29 = MEMORY[0x277D84F98];
  v687 = MEMORY[0x277D84F98];
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  v665 = (v30 + 16);
  v658 = v30;
  *(v30 + 24) = v29;
  v673 = v27;
  v31 = [v27 count];
  if ((v31 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_229;
  }

  v652 = v28;
  v653 = v19;
  v650 = v20;
  v651 = v15;
  v32 = MEMORY[0x277D84F98];
  if (v31)
  {
    v33 = 0;
    *&v672 = v31;
    do
    {
      v36 = [v673 objectAtIndexedSubscript_];
      v37 = [v36 localIdentifier];
      v38 = sub_22F740E20();
      v15 = v39;

      v40 = v36;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v32;
      v43 = sub_22F1229E8(v38, v15);
      v44 = v32;
      v45 = *(v32 + 2);
      v46 = (v42 & 1) == 0;
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_149:

LABEL_103:
        (*(v656 + 8))(v657, v655);
        goto LABEL_104;
      }

      v48 = v42;
      if (*(v44 + 3) >= v47)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if (v42)
          {
            goto LABEL_4;
          }
        }

        else
        {
          sub_22F138C74();
          if (v48)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
        sub_22F12DACC(v47, isUniquelyReferenced_nonNull_native);
        v49 = sub_22F1229E8(v38, v15);
        if ((v48 & 1) != (v50 & 1))
        {
          goto LABEL_318;
        }

        v43 = v49;
        if (v48)
        {
LABEL_4:

          v32 = aBlock;
          v34 = *(aBlock + 56);
          v35 = *(v34 + 8 * v43);
          *(v34 + 8 * v43) = v40;

          goto LABEL_5;
        }
      }

      v32 = aBlock;
      *(aBlock + 8 * (v43 >> 6) + 64) |= 1 << v43;
      v51 = (*(v32 + 6) + 16 * v43);
      *v51 = v38;
      v51[1] = v15;
      *(*(v32 + 7) + 8 * v43) = v40;

      v53 = *(v32 + 2);
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        __break(1u);
        goto LABEL_187;
      }

      *(v32 + 2) = v55;
LABEL_5:
      ++v33;
      v687 = v32;
    }

    while (v672 != v33);
  }

  swift_bridgeObjectRetain_n();
  v56 = sub_22F3798AC(v32, sub_22F10B348, sub_22F120B3C);
  v686 = MEMORY[0x277D84FA0];
  [v659 copy];
  sub_22F741920();
  swift_unknownObjectRelease();
  sub_22F120634(0, &unk_27DAB3D60, 0x277CD9880);
  v57 = MEMORY[0x277D84F70];
  v58 = swift_dynamicCast();
  v668 = v32;
  v649 = v56;
  if (v58)
  {
    v59 = v685;
    v60 = swift_allocObject();
    v672 = xmmword_22F771340;
    *(v60 + 16) = xmmword_22F771340;
    *(v60 + 32) = sub_22F740E20();
    *(v60 + 40) = v61;
    v62 = sub_22F741160();

    [v59 setFetchPropertySets_];

    v63 = [v646[14] librarySpecificFetchOptions];
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
    v64 = swift_allocObject();
    *(v64 + 16) = v672;
    v65 = MEMORY[0x277D84CB8];
    *(v64 + 56) = MEMORY[0x277D84C58];
    *(v64 + 64) = v65;
    *(v64 + 32) = 3;
    v66 = sub_22F741560();
    [v63 setPredicate_];

    sub_22F120634(0, &unk_2810A90C0, 0x277CD97B8);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v67);
    sub_22F161EB4(v56);
    v69 = sub_22F741160();

    v70 = [ObjCClassFromMetadata fetchMomentsForAssetsWithLocalIdentifiers:v69 options:v63];

    if (v70)
    {
      v71 = [v648 fetchAssetsInAssetCollections:v70 options:v59];
      if (v71)
      {
        v72 = v71;
        *&v672 = v63;
        v73 = [v71 count];
        if ((v73 & 0x8000000000000000) != 0)
        {
          goto LABEL_261;
        }

        v74 = v73;
        if (v73)
        {
          v662 = v70;
          v663 = v59;
          v75 = 0;
          do
          {
            v76 = v75 + 1;
            v77 = [v72 objectAtIndexedSubscript_];
            v78 = [v77 localIdentifier];
            v79 = sub_22F740E20();
            v57 = v80;

            sub_22F10BBDC(&aBlock, v79, v57);

            v75 = v76;
          }

          while (v74 != v76);
        }

        else
        {
        }
      }

      else
      {
      }
    }

    else
    {
    }

    v32 = v668;
  }

  v81 = 0;
  v685 = MEMORY[0x277D84F98];
  v684 = 0;
  v10 = v32 + 64;
  v82 = 1 << v32[32];
  v83 = -1;
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  v84 = v83 & *(v32 + 8);
  v85 = (v82 + 63) >> 6;
  if (v84)
  {
    while (1)
    {
      v15 = v81;
LABEL_37:
      v86 = __clz(__rbit64(v84)) | (v15 << 6);
      v87 = *(v668 + 6) + 16 * v86;
      v88 = *v87;
      v57 = *(v87 + 8);
      v89 = *(*(v668 + 7) + 8 * v86);

      v90 = v89;
      v91 = objc_autoreleasePoolPush();
      v92 = v670;
      sub_22F380920(v88, v57, v90, v665, v671, v667, v666, &v686, &v685, &v684, v669, v673, v664, &aBlock);
      v670 = v92;
      if (v92)
      {

        objc_autoreleasePoolPop(v91);

        (*(v656 + 8))(v657, v655);
        (*(v654 + 8))(v667, v651);

        goto LABEL_105;
      }

      v84 &= v84 - 1;

      objc_autoreleasePoolPop(v91);

      v81 = v15;
      if (!v84)
      {
        goto LABEL_34;
      }
    }
  }

  while (1)
  {
LABEL_34:
    v15 = v81 + 1;
    if (__OFADD__(v81, 1))
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v15 >= v85)
    {
      break;
    }

    v84 = *&v10[8 * v15];
    ++v81;
    if (v84)
    {
      goto LABEL_37;
    }
  }

  aBlock = 0;
  v93 = v669;
  v15 = v671;
  if (([v669 performChangesAndWait:v671 error:&aBlock]& 1) == 0)
  {
    v105 = aBlock;

    sub_22F73F370();

    swift_willThrow();
    v106 = v650;
    goto LABEL_100;
  }

  v94 = aBlock;
  v95 = sub_22F7415F0();
  v96 = v93;
  v97 = sub_22F741840();
  v98 = os_log_type_enabled(v97, v95);
  v636 = v96;
  if (v98)
  {
    v99 = swift_slowAlloc();
    *v99 = 134218240;
    v100 = [objc_opt_self() any];
    v101 = [v96 nodeIdentifiersMatchingFilter:v100];

    v102 = [v101 count];
    *(v99 + 4) = v102;

    *(v99 + 12) = 2048;
    v103 = [objc_opt_self() any];
    v10 = [v96 edgeIdentifiersMatchingFilter:v103];

    v104 = [v10 count];
    *(v99 + 14) = v104;

    _os_log_impl(&dword_22F0FC000, v97, v95, "Ingested all assets, graph has %ld nodes and %ld edges", v99, 0x16u);
    MEMORY[0x2319033A0](v99, -1, -1);
  }

  else
  {

    v97 = v96;
  }

  v63 = v670;

  v107 = objc_allocWithZone(MEMORY[0x277D3AC30]);
  v692 = sub_22F384664;
  v693 = 0;
  aBlock = MEMORY[0x277D85DD0];
  v689 = 1107296256;
  v690 = sub_22F386B70;
  v691 = &block_descriptor_44;
  v108 = _Block_copy(&aBlock);
  v109 = [v107 initWithDistanceBlock_];
  _Block_release(v108);

  v635 = v109;
  if (!v109)
  {
LABEL_96:
    aBlock = 0;
    v170 = v636;
    if ([v636 performChangesAndWait:v15 error:&aBlock])
    {
      v670 = v63;
      v171 = aBlock;
      v172 = sub_22F7415F0();
      v173 = v170;
      v174 = sub_22F741840();
      v175 = os_log_type_enabled(v174, v172);
      p_isa = &v173->isa;
      if (v175)
      {
        v176 = swift_slowAlloc();
        *v176 = 134218240;
        v177 = [objc_opt_self() any];
        v178 = [v173 nodeIdentifiersMatchingFilter:v177];

        v63 = &selRef_assetIsSafeForWidgetDisplay_;
        v179 = [v178 count];

        *(v176 + 4) = v179;
        *(v176 + 12) = 2048;
        v180 = [objc_opt_self() any];
        v181 = [v173 edgeIdentifiersMatchingFilter:v180];

        v182 = [v181 count];
        *(v176 + 14) = v182;

        _os_log_impl(&dword_22F0FC000, v174, v172, "Clustered, graph has %ld nodes and %ld edges", v176, 0x16u);
        MEMORY[0x2319033A0](v176, -1, -1);
      }

      else
      {

        v174 = v173;
        v63 = &selRef_assetIsSafeForWidgetDisplay_;
      }

      v186 = v646;
      v57 = [v646[14] librarySpecificFetchOptions];
      v187 = [v186[14] librarySpecificFetchOptions];
      v188 = sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
      v628 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
      v189 = swift_allocObject();
      v634 = xmmword_22F771340;
      *(v189 + 16) = xmmword_22F771340;
      *(v189 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(v189 + 64) = sub_22F25F050();
      *(v189 + 32) = v649;
      v629 = v188;
      v190 = sub_22F741560();
      v649 = v187;
      [v187 setPredicate_];

      v70 = objc_opt_self();
      v191 = v57;
      v630 = v70;
      v632 = v191;
      v10 = [v70 fetchAssetCollectionsWithType:1 subtype:2 options:?];
      v192 = [v10 count];
      if ((v192 & 0x8000000000000000) != 0)
      {
        goto LABEL_263;
      }

      v193 = v192;
      v642 = v10;
      if (v192)
      {
        v57 = 0;
        v636 = "_TtC11PhotosGraph12GraphBuilder";
        v637 = v192;
        v194 = &selRef_setUseIconicScore_;
        do
        {
          v195 = [v10 objectAtIndexedSubscript_];
          v196 = [v195 v194[484]];
          if (!v196)
          {
            sub_22F740E20();
            v196 = sub_22F740DF0();
            v193 = v637;
          }

          v197 = *(v658 + 16);
          v198 = *(v658 + 24);

          v660 = objc_autoreleasePoolPush();
          v199 = [v648 fetchAssetsInAssetCollection:v195 options:v649];
          if ([v199 count]< 1)
          {

            v10 = v642;
            v15 = v671;
          }

          else
          {
            v645 = v198;
            v669 = v199;
            v662 = v197;
            v643 = v57;
            v63 = v670;
            v200 = [v195 localIdentifier];
            if (!v200)
            {
              sub_22F740E20();
              v200 = sub_22F740DF0();
            }

            v201 = sub_22F740E20();
            v203 = v202;
            v204 = MEMORY[0x277D84F98];
            v205 = swift_isUniquelyReferenced_nonNull_native();
            v683 = v204;
            sub_22F386DBC(v200, 0xD000000000000010, v636 | 0x8000000000000000, v205, &v683);
            aBlock = v683;
            sub_22F121CEC(v196, 1701667182, 0xE400000000000000);
            sub_22F2B5478(&unk_2843DE308, v201, v203, aBlock);
            v207 = v206;
            if (v63)
            {
              v232 = v671;

              v230 = v632;

              v231 = v656;
              v233 = v642;
              goto LABEL_132;
            }

            [v671 insertNode_];
            v70 = v669;
            v208 = [v669 count];
            v57 = v643;
            v209 = v662;
            if ((v208 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_261:
              __break(1u);
LABEL_262:
              __break(1u);
LABEL_263:
              __break(1u);
LABEL_264:

              v70 = v57;
              goto LABEL_265;
            }

            v210 = v208;
            v670 = 0;
            if (v208)
            {
              v661 = v207;
              i = v195;
              v211 = 0;
              v212 = v70;
              v663 = v210;
              do
              {
                *&v672 = [v212 objectAtIndexedSubscript_];
                v217 = [v672 localIdentifier];
                v218 = sub_22F740E20();
                v220 = v219;

                v221 = sub_22F1530EC();
                aBlock = MEMORY[0x231901000](1, &type metadata for Node.Label, v221);
                sub_22F10DF08(&v683, byte_2843DE350);
                v222 = sub_22F2D67A0(aBlock, v218, v220, v209);

                if (v222)
                {
                  v223 = v661;
                  v224 = v222;
                  v225 = sub_22F1515F8(&unk_2843DE358);
                  sub_22F1DF3B0(&unk_2843DE378);
                  v226 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                  v227 = sub_22F740C80();
                  v228 = [v226 kgPropertiesWithMAProperties_];

                  if (!v228)
                  {

                    v230 = v632;

                    sub_22F2B5954();
                    swift_allocError();
                    swift_willThrow();

                    v231 = v656;
                    v232 = v671;
                    v233 = v642;
                    v195 = i;
LABEL_132:
                    objc_autoreleasePoolPop(v660);

                    goto LABEL_133;
                  }

                  sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                  v213 = sub_22F740CA0();

                  v214 = type metadata accessor for Edge();
                  v215 = objc_allocWithZone(v214);
                  *&v215[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                  *&v215[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v225;
                  *&v215[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v213;
                  *&v215[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v224;
                  *&v215[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v223;
                  v675.receiver = v215;
                  v675.super_class = v214;
                  v216 = [&v675 init];
                  [v671 insertEdge_];

                  v209 = v662;
                }

                ++v211;

                v212 = v669;
              }

              while (v663 != v211);
              v229 = v669;

              v15 = v671;
              v10 = v642;
              v57 = v643;
              v195 = i;
            }

            else
            {

              v15 = v671;
              v10 = v642;
            }

            v193 = v637;
            v194 = &selRef_setUseIconicScore_;
          }

          ++v57;
          objc_autoreleasePoolPop(v660);
        }

        while (v57 != v193);
      }

      aBlock = 0;
      v234 = p_isa;
      v235 = [p_isa performChangesAndWait:v15 error:&aBlock];
      v236 = aBlock;
      if ((v235 & 1) == 0)
      {
LABEL_157:
        v277 = v236;
        v278 = v632;

        sub_22F73F370();
        swift_willThrow();

        goto LABEL_158;
      }

      v237 = aBlock;
      v238 = sub_22F7415F0();
      v57 = v234;
      v239 = sub_22F741840();
      if (os_log_type_enabled(v239, v238))
      {
        v240 = swift_slowAlloc();
        *v240 = 134218240;
        v241 = [objc_opt_self() any];
        v242 = [v57 nodeIdentifiersMatchingFilter_];
        LODWORD(v672) = v238;
        v243 = v242;

        v244 = [v243 count];
        *(v240 + 4) = v244;

        *(v240 + 12) = 2048;
        v245 = objc_opt_self();
        v15 = v671;
        v246 = [v245 any];
        v247 = [v57 edgeIdentifiersMatchingFilter_];

        v248 = [v247 count];
        *(v240 + 14) = v248;
        v10 = v642;

        _os_log_impl(&dword_22F0FC000, v239, v672, "Regularly albumed, graph has %ld nodes and %ld edges", v240, 0x16u);
        MEMORY[0x2319033A0](v240, -1, -1);
      }

      else
      {

        v239 = v57;
      }

      v249 = [v630 fetchAssetCollectionsWithType:2 subtype:203 options:v632];
      v250 = [v249 firstObject];

      if (v250)
      {
        v660 = v57;
        v251 = *(v658 + 16);
        v252 = *(v658 + 24);

        v253 = objc_autoreleasePoolPush();
        v254 = [v648 fetchAssetsInAssetCollection:v250 options:v649];
        v255 = [v254 count];
        v38 = v670;
        if (v255 < 1)
        {
        }

        else
        {
          v645 = v252;
          v669 = v254;
          *&v672 = v251;
          v637 = v253;
          v643 = v250;
          v256 = [v250 localIdentifier];
          if (!v256)
          {
            sub_22F740E20();
            v256 = sub_22F740DF0();
          }

          v257 = sub_22F740E20();
          v259 = v258;
          v683 = MEMORY[0x277D84F98];
          sub_22F121CEC(v256, 0xD000000000000010, 0x800000022F792110);
          aBlock = v683;
          v260 = sub_22F740DF0();
          sub_22F121CEC(v260, 1701667182, 0xE400000000000000);
          v261 = v670;
          sub_22F2B5478(&unk_2843DE388, v257, v259, aBlock);
          v38 = v261;
          if (v261)
          {

            v262 = v632;

            v231 = v656;
LABEL_145:
            v263 = v642;
            objc_autoreleasePoolPop(v637);

            goto LABEL_182;
          }

LABEL_187:
          v333 = v52;
          [v15 insertNode_];
          v334 = v669;
          v335 = [v669 count];
          v10 = v642;
          if ((v335 & 0x8000000000000000) != 0)
          {
            goto LABEL_291;
          }

          v336 = v335;
          if (v335)
          {
            v661 = v333;
            v670 = v38;
            v337 = 0;
            v158 = v334;
            v662 = v336;
            while (1)
            {
              v342 = [v158 objectAtIndexedSubscript_];
              v343 = [v342 localIdentifier];
              v344 = sub_22F740E20();
              v346 = v345;

              v347 = sub_22F1530EC();
              aBlock = MEMORY[0x231901000](1, &type metadata for Node.Label, v347);
              sub_22F10DF08(&v683, byte_2843DE3D0);
              v348 = sub_22F2D67A0(aBlock, v344, v346, v672);

              if (v348)
              {
                v663 = v342;
                v349 = v661;
                v350 = v348;
                v351 = sub_22F1515F8(&unk_2843DE3D8);
                sub_22F1DF3B0(&unk_2843DE3F8);
                v352 = objc_opt_self();
                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                v353 = sub_22F740C80();
                v354 = [v352 kgPropertiesWithMAProperties_];

                if (!v354)
                {

                  v355 = v632;

                  sub_22F2B5954();
                  swift_allocError();
                  swift_willThrow();

                  v262 = v355;
                  v231 = v656;
                  v15 = v671;
                  goto LABEL_145;
                }

                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                v338 = sub_22F740CA0();

                v339 = type metadata accessor for Edge();
                v340 = objc_allocWithZone(v339);
                *&v340[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                *&v340[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v351;
                *&v340[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v338;
                *&v340[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v350;
                *&v340[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v349;
                v676.receiver = v340;
                v676.super_class = v339;
                v341 = [&v676 init];
                v15 = v671;
                [v671 insertEdge_];

                v342 = v663;
              }

              ++v337;

              v158 = v669;
              if (v662 == v337)
              {
                goto LABEL_199;
              }
            }
          }

          v250 = v643;
          v253 = v637;
        }

        v57 = v660;
        goto LABEL_153;
      }

LABEL_147:
      v38 = v670;
      goto LABEL_154;
    }

    v183 = aBlock;

    sub_22F73F370();

    swift_willThrow();
    v106 = v635;
LABEL_100:

LABEL_101:
LABEL_102:

    goto LABEL_103;
  }

  [v109 setMaximumDistance:150.0];
  [v109 setMinimumNumberOfObjects:1];
  v110 = v109;

  sub_22F3798AC(v111, sub_22F120B48, sub_22F11CBCC);
  v643 = sub_22F120634(0, &qword_27DAB0960, 0x277CE41F8);
  v112 = sub_22F741160();

  v113 = [v110 performWithDataset:v112 progressBlock:0];
  v627 = v110;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3D70, &qword_22F779C98);
  v114 = sub_22F741180();

  if (v114 >> 62)
  {
    goto LABEL_257;
  }

  v115 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v115)
  {
LABEL_95:

    goto LABEL_96;
  }

LABEL_48:
  v116 = 0;
  v630 = "_TtC11PhotosGraph12GraphBuilder";
  v117 = v114 & 0xC000000000000001;
  v622 = (v114 + 32);
  v623 = v114 & 0xFFFFFFFFFFFFFF8;
  v632 = v114;
  v624 = (v114 & 0xC000000000000001);
  v625 = v115;
  while (1)
  {
    if (v117)
    {
      v118 = v116;
      v119 = MEMORY[0x2319016F0](v116, v114);
    }

    else
    {
      if (v116 >= *(v623 + 16))
      {
        __break(1u);
        goto LABEL_275;
      }

      v118 = v116;
      v119 = *&v622[8 * v116];
    }

    v645 = v119;
    v54 = __OFADD__(v118, 1);
    v113 = v118 + 1;
    if (v54)
    {
      __break(1u);
LABEL_257:
      v115 = sub_22F741A00();
      if (!v115)
      {
        goto LABEL_95;
      }

      goto LABEL_48;
    }

    v626 = v113;
    v120 = [v645 objects];
    v70 = sub_22F741180();

    if (v70 >> 62)
    {
      v57 = sub_22F741A00();
      v670 = v63;
      if (!v57)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v57 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v670 = v63;
      if (!v57)
      {
        goto LABEL_63;
      }
    }

    if (v57 < 1)
    {
      goto LABEL_262;
    }

    v121 = 0;
    v10 = (v70 & 0xC000000000000001);
    v122 = 0.0;
    v123 = 0.0;
    do
    {
      if (v10)
      {
        v124 = MEMORY[0x2319016F0](v121, v70);
      }

      else
      {
        v124 = *(v70 + 8 * v121 + 32);
      }

      v125 = v124;
      ++v121;
      [(objc_class *)v124 coordinate];
      v123 = v123 + v126;
      [(objc_class *)v125 coordinate];
      v128 = v127;

      v122 = v122 + v128;
    }

    while (v57 != v121);
LABEL_63:

    v129 = [v645 objects];
    v130 = sub_22F741180();

    if (v130 >> 62)
    {
      sub_22F741A00();
    }

    v131 = [v645 objects];
    v132 = sub_22F741180();

    if (v132 >> 62)
    {
      sub_22F741A00();
    }

    v133 = sub_22F741360();
    aBlock = 40;
    v689 = 0xE100000000000000;
    MEMORY[0x231900B10](v133);

    MEMORY[0x231900B10](44, 0xE100000000000000);

    v134 = aBlock;
    v135 = v689;
    v136 = sub_22F741360();
    v138 = v137;
    aBlock = v134;
    v689 = v135;

    MEMORY[0x231900B10](v136, v138);

    MEMORY[0x231900B10](41, 0xE100000000000000);

    v139 = aBlock;
    v140 = v689;
    v141 = sub_22F740DF0();
    v142 = MEMORY[0x277D84F98];
    v143 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v142;
    sub_22F386DBC(v141, 0xD000000000000010, v630 | 0x8000000000000000, v143, &aBlock);
    v144 = v670;
    sub_22F2B5478(&unk_2843DE2B0, v139, v140, aBlock);
    v63 = v144;
    if (v144)
    {
      goto LABEL_149;
    }

    v663 = v145;
    [v15 insertNode_];
    v146 = [v645 objects];
    v147 = sub_22F741180();

    if (!(v147 >> 62))
    {
      v113 = *((v147 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v113)
      {
        break;
      }

      goto LABEL_94;
    }

    v113 = sub_22F741A00();
    if (v113)
    {
      break;
    }

LABEL_94:

    v116 = v626;
    v117 = v624;
    if (v626 == v625)
    {
      goto LABEL_95;
    }
  }

  v642 = 0;
  v148 = v147 & 0xC000000000000001;
  i = (v147 + 32);
  *&v634 = v147 & 0xFFFFFFFFFFFFFF8;
  v670 = 0;
  p_isa = v147;
  v628 = (v147 & 0xC000000000000001);
  v629 = v113;
  while (1)
  {
    if (v148)
    {
      v149 = v642;
      v150 = MEMORY[0x2319016F0](v642, v147);
    }

    else
    {
      v149 = v642;
      if (v642 >= *(v634 + 16))
      {
        goto LABEL_254;
      }

      v150 = i[v642];
    }

    v151 = v150;
    v54 = __OFADD__(v149, 1);
    v152 = (v149 + 1);
    if (v54)
    {
      __break(1u);
LABEL_254:
      __break(1u);
LABEL_255:
      v407 = v655;
      v406 = v656;
      v408 = v642;
      v410 = p_isa;
      v409 = v632;
      v404 = v645;
      v405 = v662;
LABEL_222:

      objc_autoreleasePoolPop(v660);
      (*(v406 + 8))(v657, v407);
      (*(v654 + 8))(v667, v651);

      goto LABEL_106;
    }

    v153 = v685;
    if (!*(v685 + 2) || (v154 = sub_22F12385C(v150), (v155 & 1) == 0))
    {

      sub_22F38A91C();
      swift_allocError();
      swift_willThrow();

      v106 = v645;
      goto LABEL_100;
    }

    v642 = v152;
    v156 = *(*(v153 + 7) + 8 * v154);
    v637 = v151;
    v157 = v156 >> 62 ? sub_22F741A00() : *((v156 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v10 = MEMORY[0x277D837E0];

    if (v157)
    {
      break;
    }

LABEL_71:

    v113 = v629;
    v63 = v670;
    v147 = p_isa;
    v114 = v632;
    v148 = v628;
    if (v642 == v629)
    {
      goto LABEL_94;
    }
  }

  v159 = 0;
  v661 = (v156 & 0xFFFFFFFFFFFFFF8);
  v662 = (v156 & 0xC000000000000001);
  v660 = v156;
  while (v662)
  {
    v158 = MEMORY[0x2319016F0](v159, v156);
    v15 = MEMORY[0x277D837D0];
    v160 = v159 + 1;
    if (__OFADD__(v159, 1))
    {
      goto LABEL_197;
    }

LABEL_85:
    *&v672 = v158;
    v669 = v663;
    v161 = sub_22F1515F8(&unk_2843DE2D8);
    sub_22F1DF3B0(&unk_2843DE2F8);
    v162 = objc_opt_self();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
    v163 = sub_22F740C80();
    v164 = [v162 kgPropertiesWithMAProperties_];

    if (!v164)
    {

      sub_22F2B5954();
      swift_allocError();
      swift_willThrow();

      v184 = v672;
      v185 = v669;

      goto LABEL_102;
    }

    sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
    v165 = sub_22F740CA0();

    v166 = type metadata accessor for Edge();
    v167 = objc_allocWithZone(v166);
    *&v167[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
    *&v167[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v161;
    *&v167[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v165;
    v168 = v672;
    *&v167[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v672;
    *&v167[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
    v674.receiver = v167;
    v674.super_class = v166;
    v169 = [&v674 init];
    v15 = v671;
    [v671 insertEdge_];

    ++v159;
    v156 = v660;
    if (v160 == v157)
    {
      goto LABEL_71;
    }
  }

  v15 = MEMORY[0x277D837D0];
  if (v159 >= v661[2].isa)
  {
    goto LABEL_198;
  }

  v158 = *(v156 + 8 * v159 + 32);
  v160 = v159 + 1;
  if (!__OFADD__(v159, 1))
  {
    goto LABEL_85;
  }

LABEL_197:
  __break(1u);
LABEL_198:
  __break(1u);
LABEL_199:
  v358 = v158;

  v38 = v670;
  v10 = v642;
  v250 = v643;
  v57 = v660;
  v253 = v637;
LABEL_153:
  objc_autoreleasePoolPop(v253);

LABEL_154:
  aBlock = 0;
  v264 = [v57 performChangesAndWait:v15 error:&aBlock];
  v236 = aBlock;
  if (!v264)
  {
    goto LABEL_157;
  }

  v670 = v38;
  v265 = aBlock;
  v266 = sub_22F7415F0();
  v267 = v57;
  v268 = sub_22F741840();
  v269 = os_log_type_enabled(v268, v266);
  v626 = v267;
  if (v269)
  {
    v270 = swift_slowAlloc();
    *v270 = 134218240;
    v271 = [objc_opt_self() any];
    v272 = [v267 nodeIdentifiersMatchingFilter:v271];

    v63 = &selRef_assetIsSafeForWidgetDisplay_;
    v273 = [v272 count];

    *(v270 + 4) = v273;
    *(v270 + 12) = 2048;
    v274 = [objc_opt_self() any];
    v275 = [v267 edgeIdentifiersMatchingFilter:v274];

    v276 = [v275 count];
    v10 = v642;
    *(v270 + 14) = v276;

    _os_log_impl(&dword_22F0FC000, v268, v266, "Favoritedly albumed, graph has %ld nodes and %ld edges", v270, 0x16u);
    MEMORY[0x2319033A0](v270, -1, -1);
  }

  else
  {

    v268 = v267;
    v63 = &selRef_assetIsSafeForWidgetDisplay_;
  }

  v280 = 1000000304;

  v281 = v632;
  [v632 setIncludeDuplicatesAlbums:1];
  v282 = [v630 fetchAssetCollectionsWithType:1 subtype:1000000601 options:v281];

  v283 = [v282 count];
  if ((v283 & 0x8000000000000000) != 0)
  {
    goto LABEL_284;
  }

  v63 = v670;
  if (!v283)
  {
LABEL_183:

    aBlock = 0;
    v319 = v626;
    if ([v626 performChangesAndWait:v15 error:&aBlock])
    {
      v670 = v63;
      v320 = aBlock;
      v321 = sub_22F7415F0();
      v322 = v319;
      v323 = sub_22F741840();
      v324 = os_log_type_enabled(v323, v321);
      v627 = v322;
      if (v324)
      {
        v325 = swift_slowAlloc();
        LODWORD(v672) = v321;
        v326 = v325;
        *v325 = 134218240;
        v327 = [objc_opt_self() any];
        v328 = [v322 nodeIdentifiersMatchingFilter:v327];

        v329 = [v328 count];
        *(v326 + 1) = v329;

        *(v326 + 6) = 2048;
        v330 = [objc_opt_self() any];
        v331 = [v322 edgeIdentifiersMatchingFilter:v330];

        v332 = [v331 count];
        v10 = v642;
        *(v326 + 14) = v332;

        _os_log_impl(&dword_22F0FC000, v323, v672, "Fully albumed, graph has %ld nodes and %ld edges", v326, 0x16u);
        MEMORY[0x2319033A0](v326, -1, -1);
      }

      else
      {

        v323 = v322;
      }

      v359 = [v646[14] librarySpecificFetchOptions];
      v360 = swift_allocObject();
      *(v360 + 16) = xmmword_22F770DF0;
      v361 = MEMORY[0x277D84C58];
      v362 = MEMORY[0x277D84CB8];
      *(v360 + 56) = MEMORY[0x277D84C58];
      *(v360 + 64) = v362;
      *(v360 + 32) = 1;
      *(v360 + 96) = v361;
      *(v360 + 104) = v362;
      *(v360 + 72) = 2;
      v363 = sub_22F741560();
      [v359 setPredicate_];

      p_isa = v359;
      v364 = [v630 fetchAssetCollectionsWithType:6 subtype:1000000304 options:v359];
      v365 = [v364 count];
      if ((v365 & 0x8000000000000000) != 0)
      {
        goto LABEL_292;
      }

      if (v365)
      {
        v366 = 0;
        v636 = "_TtC11PhotosGraph12GraphBuilder";
        v637 = v365;
        v367 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
        i = v364;
        do
        {
          v369 = objc_autoreleasePoolPush();
          v370 = [v364 objectAtIndexedSubscript_];
          v371 = v364;
          v372 = v367;
          v373 = [v648 v367[291]];
          if ([v373 count]< 1)
          {

            v367 = v372;
            v364 = v371;
            v368 = v637;
          }

          else
          {
            v662 = v373;
            objc_opt_self();
            v374 = swift_dynamicCastObjCClass();
            v660 = v369;
            v643 = v366;
            if (v374)
            {
              [v374 type];
            }

            v645 = v370;
            v375 = [v370 localIdentifier];
            if (!v375)
            {
              sub_22F740E20();
              v375 = sub_22F740DF0();
            }

            v376 = sub_22F740E20();
            v378 = v377;
            v683 = MEMORY[0x277D84F98];
            sub_22F121CEC(v375, 0xD000000000000010, v636 | 0x8000000000000000);
            aBlock = v683;
            v379 = sub_22F740DF0();

            sub_22F121CEC(v379, 1701869940, 0xE400000000000000);
            v380 = v670;
            sub_22F2B5478(&unk_2843DE458, v376, v378, aBlock);
            v670 = v380;
            if (v380)
            {
              goto LABEL_255;
            }

            v661 = v381;
            [v15 insertNode_];
            v382 = v662;
            v383 = [v662 count];
            if ((v383 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_291:
              __break(1u);
LABEL_292:
              __break(1u);
            }

            if (v383)
            {
              v384 = 0;
              v663 = v383;
              do
              {
                v385 = [v382 objectAtIndexedSubscript:v384];
                v386 = *(v658 + 16);

                *&v672 = v385;
                v387 = [v385 localIdentifier];
                v388 = sub_22F740E20();
                v390 = v389;

                v391 = sub_22F1530EC();
                v683 = MEMORY[0x231901000](1, &type metadata for Node.Label, v391);
                sub_22F10DF08(&v682, byte_2843DE4A0);
                v392 = sub_22F2D67A0(v683, v388, v390, v386);

                if (v392)
                {
                  v393 = swift_allocObject();
                  *(v393 + 16) = v634;
                  *(v393 + 32) = sub_22F2897A0(1);
                  *(v393 + 40) = v394;
                  v669 = v661;
                  v395 = v392;
                  v396 = sub_22F1515F8(v393);
                  swift_setDeallocating();
                  sub_22F1DF3B0(v393 + 32);
                  swift_deallocClassInstance();
                  v397 = objc_opt_self();
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                  v398 = sub_22F740C80();
                  v399 = [v397 kgPropertiesWithMAProperties_];

                  if (!v399)
                  {

                    sub_22F2B5954();
                    v670 = swift_allocError();
                    swift_willThrow();

                    v404 = v669;
                    v405 = v669;
                    v407 = v655;
                    v406 = v656;
                    v15 = v671;
                    v408 = v642;
                    v410 = p_isa;
                    v409 = v632;
                    goto LABEL_222;
                  }

                  sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                  v400 = sub_22F740CA0();

                  v401 = type metadata accessor for Edge();
                  v402 = objc_allocWithZone(v401);
                  *&v402[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                  *&v402[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v396;
                  *&v402[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v400;
                  *&v402[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v395;
                  *&v402[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
                  v678.receiver = v402;
                  v678.super_class = v401;
                  v403 = [&v678 init];
                  [v671 insertEdge_];

                  v382 = v662;
                }

                ++v384;
              }

              while (v663 != v384);
            }

            v15 = v671;
            v10 = v642;
            v366 = v643;
            v364 = i;
            v368 = v637;
            v369 = v660;
            v367 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
          }

          v366 = (v366 + 1);
          objc_autoreleasePoolPop(v369);
        }

        while (v366 != v368);
      }

      aBlock = 0;
      v411 = v627;
      if ([v627 performChangesAndWait:v15 error:&aBlock])
      {
        v412 = aBlock;
        v413 = sub_22F7415F0();
        v18 = v411;
        v29 = sub_22F741840();
        v414 = os_log_type_enabled(v29, v413);
        v629 = v18;
        if (v414)
        {
          v415 = swift_slowAlloc();
          *v415 = 134218240;
          v416 = [objc_opt_self() any];
          v417 = [v18 nodeIdentifiersMatchingFilter_];

          v418 = [v417 count];
          *(v415 + 4) = v418;

          *(v415 + 12) = 2048;
          v419 = [objc_opt_self() any];
          v420 = [v18 edgeIdentifiersMatchingFilter_];

          v421 = [v420 count];
          v10 = v642;
          *(v415 + 14) = v421;

          _os_log_impl(&dword_22F0FC000, v29, v413, "Tripped, graph has %ld nodes and %ld edges", v415, 0x16u);
          MEMORY[0x2319033A0](v415, -1, -1);
LABEL_230:

          v423 = [v646[14] librarySpecificFetchOptions];
          v424 = swift_allocObject();
          *(v424 + 16) = v634;
          v628 = *MEMORY[0x277CD9C58];
          *(v424 + 32) = sub_22F740E20();
          *(v424 + 40) = v425;
          v426 = sub_22F741160();

          [v423 setFetchPropertySets_];

          [v423 setPersonContext_];
          v427 = objc_opt_self();
          v630 = v423;
          v637 = [v427 fetchPersonsWithOptions:v423];
          v428 = [v637 count];
          if ((v428 & 0x8000000000000000) != 0)
          {
            goto LABEL_303;
          }

          v429 = v428;
          v63 = v670;
          v627 = v427;
          if (v428)
          {
            v430 = 0;
            v636 = "_TtC11PhotosGraph12GraphBuilder";
            i = v428;
            while (1)
            {
              v645 = objc_autoreleasePoolPush();
              v660 = v430;
              v432 = [v637 objectAtIndexedSubscript_];
              v433 = [v432 localIdentifier];
              if (!v433)
              {
                sub_22F740E20();
                v433 = sub_22F740DF0();
              }

              v434 = sub_22F740E20();
              v436 = v435;
              v683 = MEMORY[0x277D84F98];
              sub_22F121CEC(v433, 0xD000000000000010, v636 | 0x8000000000000000);
              aBlock = v683;
              v437 = [v432 name];
              if (v437)
              {
                *&v672 = v436;
                v438 = v434;
                v439 = v63;
                v440 = v429;
                v441 = v432;
                v442 = v437;
                sub_22F740E20();

                v432 = v441;
                v429 = v440;
                v63 = v439;
                v434 = v438;
                v436 = v672;
              }

              v443 = sub_22F740DF0();

              sub_22F121CEC(v443, 1701667182, 0xE400000000000000);
              sub_22F2B5478(&unk_2843DE4A8, v434, v436, aBlock);
              if (v63)
              {
                break;
              }

              v431 = v444;
              [v15 insertNode_];
              v643 = &v432->isa;
              v445 = [v648 fetchAssetsForPerson:v432 options:v659];
              v10 = v642;
              v427 = v660;
              if (v445)
              {
                v662 = v431;
                v670 = 0;
                v446 = v445;
                v447 = [v445 count];
                if ((v447 & 0x8000000000000000) != 0)
                {
                  __break(1u);
LABEL_303:
                  __break(1u);
LABEL_304:

                  v427 = v660;
                  goto LABEL_305;
                }

                if (v447)
                {
                  v448 = 0;
                  v661 = v446;
                  v663 = v447;
                  do
                  {
                    v449 = [v446 objectAtIndexedSubscript:v448];
                    v450 = *(v658 + 16);

                    *&v672 = v449;
                    v451 = [v449 localIdentifier];
                    v452 = sub_22F740E20();
                    v454 = v453;

                    v455 = sub_22F1530EC();
                    v683 = MEMORY[0x231901000](1, &type metadata for Node.Label, v455);
                    sub_22F10DF08(&v682, byte_2843DE4F0);
                    v456 = sub_22F2D67A0(v683, v452, v454, v450);

                    if (v456)
                    {
                      inited = swift_initStackObject();
                      *(inited + 16) = v634;
                      *(inited + 32) = sub_22F2897A0(5);
                      *(inited + 40) = v458;
                      v669 = v662;
                      v459 = v456;
                      v460 = sub_22F1515F8(inited);
                      swift_setDeallocating();
                      sub_22F1DF3B0(inited + 32);
                      v461 = objc_opt_self();
                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                      v462 = sub_22F740C80();
                      v463 = [v461 kgPropertiesWithMAProperties_];

                      if (!v463)
                      {

                        sub_22F2B5954();
                        swift_allocError();
                        swift_willThrow();

                        v432 = v669;
                        goto LABEL_252;
                      }

                      sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                      v464 = sub_22F740CA0();

                      v465 = type metadata accessor for Edge();
                      v466 = objc_allocWithZone(v465);
                      *&v466[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                      *&v466[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v460;
                      *&v466[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v464;
                      *&v466[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v459;
                      *&v466[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
                      v679.receiver = v466;
                      v679.super_class = v465;
                      v467 = [&v679 init];
                      [v671 insertEdge_];

                      v446 = v661;
                    }

                    ++v448;
                  }

                  while (v663 != v448);
                }

                v431 = v446;
                v63 = v670;
                v15 = v671;
                v10 = v642;
                v429 = i;
                v427 = v660;
              }

              v430 = (&v427->isa + 1);

              objc_autoreleasePoolPop(v645);
              if (v430 == v429)
              {
                goto LABEL_248;
              }
            }

LABEL_252:

            objc_autoreleasePoolPop(v645);
            (*(v656 + 8))(v657, v655);
            (*(v654 + 8))(v667, v651);

            return;
          }

LABEL_248:
          aBlock = 0;
          v468 = v629;
          if ([v629 performChangesAndWait:v15 error:&aBlock])
          {
            v469 = aBlock;
            v470 = sub_22F7415F0();
            v57 = v468;
            v70 = sub_22F741840();
            if (!os_log_type_enabled(v70, v470))
            {
              goto LABEL_264;
            }

            v471 = swift_slowAlloc();
            *v471 = 134218240;
            v472 = [objc_opt_self() any];
            v473 = [v57 nodeIdentifiersMatchingFilter_];

            v474 = [v473 count];
            *(v471 + 4) = v474;

            *(v471 + 12) = 2048;
            v475 = [objc_opt_self() any];
            v476 = [v57 edgeIdentifiersMatchingFilter_];

            v477 = [v476 count];
            *(v471 + 14) = v477;

            _os_log_impl(&dword_22F0FC000, v70, v470, "Personed, graph has %ld nodes and %ld edges", v471, 0x16u);
            MEMORY[0x2319033A0](v471, -1, -1);
LABEL_265:

            v15 = [v646[14] librarySpecificFetchOptions];
            v479 = swift_allocObject();
            *(v479 + 16) = v634;
            *(v479 + 32) = sub_22F740E20();
            *(v479 + 40) = v480;
            v481 = sub_22F741160();

            [v15 setFetchPropertySets_];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
            v482 = swift_allocObject();
            v672 = xmmword_22F771350;
            *(v482 + 16) = xmmword_22F771350;
            *(v482 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
            *(v482 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
            v483 = sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
            v484 = sub_22F741160();

            [v15 setIncludedDetectionTypes_];

            [v15 setIncludeTorsoOnlyPerson_];
            v33 = swift_initStackObject();
            *(v33 + 16) = v672;
            *(v33 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            *(v33 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
            sub_22F152E80(v33);
            swift_setDeallocating();
            swift_arrayDestroy();
            v485 = sub_22F11FA28(&qword_2810A8EC8, &qword_2810A8ED0, 0x277CCABB0);
            *&v672 = v483;
            v669 = v485;
            v486 = sub_22F741410();

            [v15 setVerifiedPersonTypes_];

            v114 = [v627 fetchPersonsWithOptions_];
            v487 = [v114 count];
            v10 = v671;
            if ((v487 & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_318:
              sub_22F7420C0();
              __break(1u);
LABEL_319:
              __break(1u);
LABEL_320:
              __break(1u);
              goto LABEL_321;
            }

            v488 = v487;
            if (v487)
            {
              v489 = 0;
              while (1)
              {
                v490 = objc_autoreleasePoolPush();
                sub_22F384748(v114, v489, v10, v659, v665, &aBlock);
                if (v63)
                {
                  break;
                }

                v63 = 0;
                ++v489;
                objc_autoreleasePoolPop(v490);
                if (v488 == v489)
                {
                  goto LABEL_270;
                }
              }

              objc_autoreleasePoolPop(v490);
              goto LABEL_277;
            }

LABEL_270:
            aBlock = 0;
            v491 = [v57 performChangesAndWait:v10 error:&aBlock];
            v113 = aBlock;
            if (v491)
            {
              v661 = v114;
              v662 = v15;
              v492 = aBlock;
              v493 = sub_22F7415F0();
              v494 = v57;
              v495 = sub_22F741840();
              if (os_log_type_enabled(v495, v493))
              {
                v496 = swift_slowAlloc();
                *v496 = 134218240;
                v497 = [objc_opt_self() any];
                v498 = [v494 nodeIdentifiersMatchingFilter:v497];

                v499 = [v498 count];
                *(v496 + 4) = v499;

                *(v496 + 12) = 2048;
                v500 = [objc_opt_self() any];
                v501 = [v494 edgeIdentifiersMatchingFilter:v500];

                v502 = [v501 count];
                *(v496 + 14) = v502;

                _os_log_impl(&dword_22F0FC000, v495, v493, "Pet, graph has %ld nodes and %ld edges", v496, 0x16u);
                MEMORY[0x2319033A0](v496, -1, -1);
              }

              else
              {

                v495 = v494;
              }

              v663 = v686;
              sub_22F387298(v673, v686, v665, v671);
              if (!v63)
              {
                aBlock = 0;
                v504 = [v494 performChangesAndWait:v671 error:&aBlock];
                v505 = aBlock;
                if (v504)
                {
                  v506 = aBlock;
                  v507 = sub_22F7415F0();
                  v280 = v494;
                  v281 = sub_22F741840();
                  if (!os_log_type_enabled(v281, v507))
                  {
                    goto LABEL_285;
                  }

                  v508 = swift_slowAlloc();
                  *v508 = 134218240;
                  v509 = [objc_opt_self() any];
                  v510 = [v280 nodeIdentifiersMatchingFilter_];

                  v511 = [v510 count];
                  *(v508 + 4) = v511;

                  *(v508 + 12) = 2048;
                  v512 = [objc_opt_self() any];
                  v513 = [v280 edgeIdentifiersMatchingFilter_];

                  v514 = [v513 count];
                  *(v508 + 14) = v514;

                  _os_log_impl(&dword_22F0FC000, v281, v507, "Businessed, graph has %ld nodes and %ld edges", v508, 0x16u);
                  MEMORY[0x2319033A0](v508, -1, -1);
LABEL_286:

                  sub_22F741740();
                  sub_22F740A90();
                  sub_22F387298(v673, v663, v665, v671);
                  if (v63)
                  {
                    goto LABEL_298;
                  }

                  aBlock = 0;
                  v515 = [v280 performChangesAndWait:v671 error:&aBlock];
                  v505 = aBlock;
                  if (v515)
                  {
                    v516 = aBlock;
                    v517 = sub_22F7415F0();
                    v518 = v280;
                    v519 = sub_22F741840();
                    if (os_log_type_enabled(v519, v517))
                    {
                      v520 = swift_slowAlloc();
                      *v520 = 134218240;
                      v521 = [objc_opt_self() any];
                      v522 = [v518 nodeIdentifiersMatchingFilter:v521];

                      v523 = [v522 count];
                      *(v520 + 4) = v523;

                      *(v520 + 12) = 2048;
                      v524 = [objc_opt_self() any];
                      v525 = [v518 edgeIdentifiersMatchingFilter:v524];

                      v526 = [v525 count];
                      *(v520 + 14) = v526;

                      _os_log_impl(&dword_22F0FC000, v519, v517, "Businessed, graph has %ld nodes and %ld edges", v520, 0x16u);
                      MEMORY[0x2319033A0](v520, -1, -1);
                    }

                    else
                    {

                      v519 = v518;
                    }

                    sub_22F741730();
                    sub_22F740A90();
                    sub_22F741740();
                    sub_22F740A90();

                    v528 = sub_22F3798AC(v527, sub_22F120B48, sub_22F120B44);
                    sub_22F388F80(v528, v665, v671);
                    v670 = 0;

                    aBlock = 0;
                    v529 = [v518 performChangesAndWait:v671 error:&aBlock];
                    v505 = aBlock;
                    if (v529)
                    {
                      v530 = aBlock;
                      v531 = sub_22F7415F0();
                      v660 = v518;
                      v427 = sub_22F741840();
                      if (!os_log_type_enabled(v427, v531))
                      {
                        goto LABEL_304;
                      }

                      v532 = swift_slowAlloc();
                      *v532 = 134218240;
                      v533 = [objc_opt_self() any];
                      v534 = v660;
                      v535 = [v660 nodeIdentifiersMatchingFilter_];

                      v536 = [v535 count];
                      *(v532 + 4) = v536;

                      *(v532 + 12) = 2048;
                      v537 = [objc_opt_self() any];
                      v538 = [v534 edgeIdentifiersMatchingFilter_];

                      v539 = [v538 count];
                      *(v532 + 14) = v539;

                      _os_log_impl(&dword_22F0FC000, v427, v531, "PublicEvented, graph has %ld nodes and %ld edges", v532, 0x16u);
                      MEMORY[0x2319033A0](v532, -1, -1);
LABEL_305:

                      sub_22F741730();
                      sub_22F740A90();

                      sub_22F3798AC(v543, sub_22F120B48, sub_22F120B44);
                      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
                      v544 = sub_22F741160();

                      v545 = sub_22F396504(&unk_2843DE4F8);
                      [v648 prefetchOnAssets:v544 options:v545 curationContext:v652];

                      v636 = [objc_allocWithZone(MEMORY[0x277D3C7B8]) initForSceneNetOnly_];
                      v546 = [v636 rootNode];
                      v547 = [v546 name];

                      v646 = sub_22F740E20();
                      v648 = v548;

                      v683 = 0;
                      v549 = *(v658 + 16);

                      v550 = sub_22F15280C(&unk_2843DE528);
                      v33 = sub_22F2D657C(v550, v549);

                      if (!(v33 >> 62))
                      {
                        v551 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v551)
                        {
                          goto LABEL_307;
                        }

LABEL_322:

                        aBlock = 0;
                        if ([v660 performChangesAndWait:v671 error:&aBlock])
                        {
                          v558 = aBlock;
                          v559 = sub_22F7415F0();
                          v621 = v660;
                          v560 = sub_22F741840();
                          if (os_log_type_enabled(v560, v559))
                          {
                            v561 = swift_slowAlloc();
                            *v561 = 134218240;
                            v562 = [objc_opt_self() any];
                            v563 = v621;
                            v564 = [v621 nodeIdentifiersMatchingFilter:v562];

                            v565 = [v564 count];
                            *(v561 + 4) = v565;

                            *(v561 + 12) = 2048;
                            v566 = [objc_opt_self() any];
                            v567 = [v563 edgeIdentifiersMatchingFilter:v566];

                            v568 = [v567 count];
                            *(v561 + 14) = v568;

                            _os_log_impl(&dword_22F0FC000, v560, v559, "Scened, graph has %ld nodes and %ld edges", v561, 0x16u);
                            MEMORY[0x2319033A0](v561, -1, -1);
                          }

                          else
                          {

                            v560 = v621;
                          }

                          v624 = [objc_allocWithZone(MEMORY[0x277D3B4C0]) init];
                          swift_beginAccess();
                          v571 = *(v658 + 16);

                          v572 = sub_22F15280C(&unk_2843DE550);
                          v573 = sub_22F2D657C(v572, v571);

                          v625 = v573;
                          if (v573 >> 62)
                          {
                            goto LABEL_367;
                          }

                          for (i = *((v625 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
                          {
                            v648 = 0;
                            v629 = (v625 & 0xC000000000000001);
                            v622 = (v625 + 32);
                            v623 = v625 & 0xFFFFFFFFFFFFFF8;
                            while (1)
                            {
                              if (v629)
                              {
                                v574 = MEMORY[0x2319016F0](v648, v625);
                              }

                              else
                              {
                                if (v648 >= *(v623 + 16))
                                {
                                  goto LABEL_366;
                                }

                                v574 = *&v622[8 * v648];
                              }

                              v644 = v574;
                              v54 = __OFADD__(v648++, 1);
                              if (v54)
                              {
                                goto LABEL_365;
                              }

                              sub_22F2B4BB8();
                              if (sub_22F740F10() == 6)
                              {
                                break;
                              }

LABEL_331:

                              if (v648 == i)
                              {
                                goto LABEL_368;
                              }
                            }

                            v575 = sub_22F740DF0();

                            v576 = [v624 scenesByScoreForPOIHash_];

                            if (!v576)
                            {
                              goto LABEL_331;
                            }

                            v577 = sub_22F740CA0();

                            v660 = v577;
                            if ((v577 & 0xC000000000000001) != 0)
                            {
                              v578 = sub_22F741CA0();
                              v579 = 0;
                              v626 = 0;
                              v646 = 0;
                              v660 = v578 | 0x8000000000000000;
                            }

                            else
                            {
                              v580 = -1 << *(v660 + 32);
                              v579 = (v660 + 64);
                              v581 = *(v660 + 64);
                              v626 = ~v580;
                              v582 = -v580;
                              if (v582 < 64)
                              {
                                v583 = ~(-1 << v582);
                              }

                              else
                              {
                                v583 = -1;
                              }

                              v646 = (v583 & v581);
                            }

                            v645 = 0;
                            v584 = (v626 + 64) >> 6;
                            while (1)
                            {
                              if (v660 < 0)
                              {
                                v590 = sub_22F741D10();
                                if (!v590)
                                {
                                  goto LABEL_362;
                                }

                                v592 = v591;
                                v680 = v590;
                                swift_dynamicCast();
                                v665 = v682;
                                v680 = v592;
                                swift_dynamicCast();
                                v664 = v682;
                                v585 = v645;
                                v643 = v646;
                                goto LABEL_356;
                              }

                              v585 = v645;
                              v586 = v645;
                              v587 = v646;
                              if (!v646)
                              {
                                break;
                              }

LABEL_353:
                              v643 = ((v587 - 1) & v587);
                              v588 = (v585 << 9) | (8 * __clz(__rbit64(v587)));
                              v589 = *(*(v660 + 56) + v588);
                              v665 = *(*(v660 + 48) + v588);
                              v664 = v589;
LABEL_356:
                              if (!v665)
                              {
LABEL_362:
                                sub_22F0FF590(v660);
                                goto LABEL_331;
                              }

                              [v664 doubleValue];
                              if (v593 >= 0.5 && (v594 = *(v658 + 16), , , v595 = [v665 stringValue], v596 = sub_22F740E20(), v598 = v597, v595, v599 = sub_22F1530EC(), v682 = MEMORY[0x231901000](1, &type metadata for Node.Label, v599), sub_22F10DF08(&v680, byte_2843DE598), v600 = sub_22F2D67A0(v682, v596, v598, v594), , , , , v600))
                              {
                                v682 = MEMORY[0x277D84F98];
                                [v664 doubleValue];
                                v601 = sub_22F741350();
                                sub_22F121CEC(v601, 0x65726F6373, 0xE500000000000000);
                                v602 = swift_initStackObject();
                                *(v602 + 16) = v634;
                                *(v602 + 32) = sub_22F2897A0(17);
                                *(v602 + 40) = v603;
                                v627 = v644;
                                v628 = v600;
                                v604 = sub_22F1515F8(v602);
                                swift_setDeallocating();
                                sub_22F1DF3B0(v602 + 32);
                                v605 = objc_opt_self();
                                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
                                v606 = sub_22F740C80();

                                v607 = [v605 kgPropertiesWithMAProperties_];

                                if (!v607)
                                {

                                  sub_22F2B5954();
                                  swift_allocError();
                                  swift_willThrow();

                                  sub_22F0FF590(v660);
                                  v613 = v627;

                                  v614 = v628;
                                  v542 = v664;
                                  goto LABEL_301;
                                }

                                sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
                                v608 = sub_22F740CA0();

                                v609 = type metadata accessor for Edge();
                                v610 = objc_allocWithZone(v609);
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v604;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v608;
                                v611 = v628;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v627;
                                *&v610[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v611;
                                v681.receiver = v610;
                                v681.super_class = v609;
                                v612 = [&v681 init];
                                [v671 insertEdge_];
                              }

                              else
                              {
                              }

                              v645 = v585;
                              v646 = v643;
                            }

                            while (1)
                            {
                              v585 = &v586->isa + 1;
                              if (__OFADD__(v586, 1))
                              {
                                break;
                              }

                              if (v585 >= v584)
                              {
                                v646 = 0;
                                goto LABEL_362;
                              }

                              v587 = *&v579[8 * v585];
                              v586 = (v586 + 1);
                              if (v587)
                              {
                                goto LABEL_353;
                              }
                            }

                            __break(1u);
LABEL_365:
                            __break(1u);
LABEL_366:
                            __break(1u);
LABEL_367:
                            ;
                          }

LABEL_368:

                          v615 = v621;
                          v616 = [v621 graphIdentifier];
                          v617 = v639;
                          sub_22F73F6B0();

                          (*(v640 + 8))(v617, v641);
                          v682 = 0;
                          if (([v615 performChangesAndWait:v671 error:&v682]& 1) != 0)
                          {
                            v618 = v682;

                            (*(v656 + 8))(v657, v655);
                            (*(v654 + 8))(v667, v651);
                            *v638 = 1;

                            goto LABEL_106;
                          }

                          v619 = v682;
                          sub_22F73F370();

                          swift_willThrow();
                          v570 = v624;
                        }

                        else
                        {
                          v569 = aBlock;
                          sub_22F73F370();

                          swift_willThrow();
                          v570 = v649;
                        }

                        v541 = v636;
LABEL_299:

LABEL_300:
                        v542 = v652;
LABEL_301:

                        (*(v656 + 8))(v657, v655);
                        (*(v654 + 8))(v667, v651);

                        goto LABEL_106;
                      }

LABEL_321:
                      v551 = sub_22F741A00();
                      if (v551)
                      {
LABEL_307:
                        v552 = 0;
                        while (1)
                        {
                          if ((v33 & 0xC000000000000001) != 0)
                          {
                            v553 = MEMORY[0x2319016F0](v552, v33);
                          }

                          else
                          {
                            if (v552 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
                            {
                              goto LABEL_319;
                            }

                            v553 = *(v33 + 8 * v552 + 32);
                          }

                          v554 = v553;
                          v555 = v552 + 1;
                          if (__OFADD__(v552, 1))
                          {
                            goto LABEL_320;
                          }

                          v556 = objc_autoreleasePoolPush();
                          v557 = v670;
                          sub_22F384C8C(v554, &v687, v671, v636, v658, v646, v648, &v683, v660, v673, v664, &aBlock);
                          v670 = v557;
                          if (v557)
                          {
                            break;
                          }

                          objc_autoreleasePoolPop(v556);

                          ++v552;
                          if (v555 == v551)
                          {
                            goto LABEL_322;
                          }
                        }

                        objc_autoreleasePoolPop(v556);

                        goto LABEL_300;
                      }

                      goto LABEL_322;
                    }
                  }
                }

                v540 = v505;
                sub_22F73F370();

                swift_willThrow();
              }

LABEL_298:

              v541 = v649;
              goto LABEL_299;
            }

LABEL_275:
            v503 = v113;
            sub_22F73F370();

            swift_willThrow();
LABEL_277:

            goto LABEL_102;
          }

          v478 = aBlock;
          sub_22F73F370();

          swift_willThrow();
          v279 = v637;
          goto LABEL_159;
        }

LABEL_229:

        v29 = v18;
        goto LABEL_230;
      }

      v422 = aBlock;
      sub_22F73F370();

      swift_willThrow();
      v357 = p_isa;
    }

    else
    {
      v356 = aBlock;
      sub_22F73F370();

      swift_willThrow();
      v357 = v632;
    }

LABEL_158:
    v279 = v649;
LABEL_159:

    goto LABEL_101;
  }

  v284 = 0;
  v627 = "_TtC11PhotosGraph12GraphBuilder";
  v285 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
  v637 = v282;
  p_isa = v283;
  while (1)
  {
    v286 = [v282 objectAtIndexedSubscript_];
    v288 = *(v658 + 16);
    v287 = *(v658 + 24);

    v645 = objc_autoreleasePoolPush();
    v289 = [v648 v285[291]];
    if ([v289 count]>= 1)
    {
      break;
    }

    v282 = v637;
LABEL_165:
    v285 = &selRef_enumerateNeighborNodesThroughEdgesWithLabel_domain_usingBlock_;
    v284 = (v284 + 1);
    objc_autoreleasePoolPop(v645);

    if (v284 == p_isa)
    {
      goto LABEL_183;
    }
  }

  v643 = v287;
  v661 = v288;
  v662 = v289;
  i = v284;
  v636 = v286;
  v290 = [v286 localIdentifier];
  if (!v290)
  {
    sub_22F740E20();
    v290 = sub_22F740DF0();
  }

  v291 = sub_22F740E20();
  v293 = v292;
  v683 = MEMORY[0x277D84F98];
  sub_22F121CEC(v290, 0xD000000000000010, v627 | 0x8000000000000000);
  aBlock = v683;
  v294 = sub_22F740DF0();
  sub_22F121CEC(v294, 1701667182, 0xE400000000000000);
  sub_22F2B5478(&unk_2843DE408, v291, v293, aBlock);
  v281 = v643;
  v282 = v637;
  if (!v63)
  {
    v280 = v295;
    [v15 insertNode_];
    v296 = v662;
    v297 = [v662 count];
    if ((v297 & 0x8000000000000000) == 0)
    {
      if (v297)
      {
        v660 = v280;
        v670 = 0;
        v298 = 0;
        v299 = v661;
        v663 = v297;
        do
        {
          v304 = [v296 objectAtIndexedSubscript:v298];
          v305 = [v304 localIdentifier];
          v306 = sub_22F740E20();
          v308 = v307;

          v309 = sub_22F1530EC();
          aBlock = MEMORY[0x231901000](1, &type metadata for Node.Label, v309);
          sub_22F10DF08(&v683, byte_2843DE450);
          v310 = sub_22F2D67A0(aBlock, v306, v308, v299);

          if (v310)
          {
            *&v672 = v304;
            v311 = swift_allocObject();
            *(v311 + 16) = v634;
            *(v311 + 32) = sub_22F2897A0(10);
            *(v311 + 40) = v312;
            v669 = v660;
            v313 = v310;
            v314 = sub_22F1515F8(v311);
            swift_setDeallocating();
            sub_22F1DF3B0(v311 + 32);
            swift_deallocClassInstance();
            v315 = objc_opt_self();
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            v316 = sub_22F740C80();
            v317 = [v315 kgPropertiesWithMAProperties_];

            if (!v317)
            {

              sub_22F2B5954();
              swift_allocError();
              swift_willThrow();

              v318 = v669;
              v231 = v656;
              v15 = v671;
              v10 = v642;
              v282 = v637;
              goto LABEL_181;
            }

            sub_22F120634(0, &qword_27DAB2580, 0x277D22BE8);
            v300 = sub_22F740CA0();

            v301 = type metadata accessor for Edge();
            v302 = objc_allocWithZone(v301);
            *&v302[OBJC_IVAR____TtC11PhotosGraph4Edge_identifier] = 0;
            *&v302[OBJC_IVAR____TtC11PhotosGraph4Edge_labels] = v314;
            *&v302[OBJC_IVAR____TtC11PhotosGraph4Edge_properties] = v300;
            *&v302[OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode] = v313;
            *&v302[OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode] = v669;
            v677.receiver = v302;
            v677.super_class = v301;
            v303 = [&v677 init];
            [v671 insertEdge_];

            v299 = v661;
            v296 = v662;
            v304 = v672;
          }

          ++v298;
        }

        while (v663 != v298);

        v63 = v670;
        v15 = v671;
        v10 = v642;
        v282 = v637;
      }

      else
      {
      }

      v286 = v636;
      v284 = i;
      goto LABEL_165;
    }

    __break(1u);
LABEL_284:
    __break(1u);
LABEL_285:

    v281 = v280;
    goto LABEL_286;
  }

  v231 = v656;
LABEL_181:
  objc_autoreleasePoolPop(v645);

LABEL_182:
LABEL_133:

  (*(v231 + 8))(v657, v655);
LABEL_104:
  (*(v654 + 8))(v667, v651);

LABEL_105:

LABEL_106:
}