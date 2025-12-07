_BYTE *sub_1DCEF51A0(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);
  if (!__swift_getEnumTagSinglePayload(a2, 1, v7))
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 5)
    {
      v25 = sub_1DD0DB04C();
      (*(*(v25 - 8) + 32))(a1, a2, v25);
      v19 = type metadata accessor for Input(0);
      v26 = v19[5];
      v27 = &a1[v26];
      v28 = &a2[v26];
      v29 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v30 = sub_1DD0DC76C();
          (*(*(v30 - 8) + 32))(v27, v28, v30);
          goto LABEL_71;
        case 1u:
          v48 = sub_1DD0DC76C();
          (*(*(v48 - 8) + 32))(v27, v28, v48);
          v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v27[*(v49 + 48)] = *&v28[*(v49 + 48)];
          goto LABEL_71;
        case 4u:
          v60 = sub_1DD0DB1EC();
          (*(*(v60 - 8) + 32))(v27, v28, v60);
          goto LABEL_71;
        case 6u:
          v66 = sub_1DD0DB4BC();
          (*(*(v66 - 8) + 32))(v27, v28, v66);
          v145 = type metadata accessor for USOParse(0);
          v67 = v145[5];
          v68 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v67], 1, v68))
          {
            v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v67], &v28[v67], *(*(v69 - 8) + 64));
          }

          else
          {
            (*(*(v68 - 8) + 32))(&v27[v67], &v28[v67], v68);
            __swift_storeEnumTagSinglePayload(&v27[v67], 0, 1, v68);
          }

          *&v27[v145[6]] = *&v28[v145[6]];
          v95 = v145[7];
          v96 = &v27[v95];
          v97 = &v28[v95];
          v96[4] = v97[4];
          *v96 = *v97;
          goto LABEL_71;
        case 7u:
          v70 = sub_1DD0DB4BC();
          (*(*(v70 - 8) + 32))(v27, v28, v70);
          v146 = type metadata accessor for USOParse(0);
          v71 = v146[5];
          v72 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v28[v71], 1, v72))
          {
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v27[v71], &v28[v71], *(*(v73 - 8) + 64));
          }

          else
          {
            (*(*(v72 - 8) + 32))(&v27[v71], &v28[v71], v72);
            __swift_storeEnumTagSinglePayload(&v27[v71], 0, 1, v72);
          }

          *&v27[v146[6]] = *&v28[v146[6]];
          v98 = v146[7];
          v99 = &v27[v98];
          v100 = &v28[v98];
          v99[4] = v100[4];
          *v99 = *v100;
          v101 = type metadata accessor for LinkParse(0);
          *&v27[v101[5]] = *&v28[v101[5]];
          *&v27[v101[6]] = *&v28[v101[6]];
          *&v27[v101[7]] = *&v28[v101[7]];
          goto LABEL_71;
        case 8u:
          v36 = sub_1DD0DD12C();
          (*(*(v36 - 8) + 32))(v27, v28, v36);
          v37 = type metadata accessor for NLRouterParse(0);
          *&v27[*(v37 + 20)] = *&v28[*(v37 + 20)];
          v38 = *(v37 + 24);
          v141 = v37;
          __dsta = &v27[v38];
          v39 = &v28[v38];
          v138 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v39, 1, v138))
          {
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dsta, v39, *(*(v40 - 8) + 64));
          }

          else
          {
            v84 = sub_1DD0DB4BC();
            (*(*(v84 - 8) + 32))(__dsta, v39, v84);
            v135 = v138[5];
            v132 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v39[v135], 1, v132))
            {
              v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dsta[v135], &v39[v135], *(*(v85 - 8) + 64));
            }

            else
            {
              (*(*(v132 - 8) + 32))(&__dsta[v135], &v39[v135]);
              __swift_storeEnumTagSinglePayload(&__dsta[v135], 0, 1, v132);
            }

            *&__dsta[v138[6]] = *&v39[v138[6]];
            v120 = v138[7];
            v121 = &__dsta[v120];
            v122 = &v39[v120];
            v121[4] = v122[4];
            *v121 = *v122;
            __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v138);
          }

          *&v27[*(v141 + 28)] = *&v28[*(v141 + 28)];
          goto LABEL_71;
        case 9u:
          v54 = sub_1DD0DD08C();
          (*(*(v54 - 8) + 32))(v27, v28, v54);
LABEL_71:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v27, v28, *(*(v29 - 8) + 64));
          break;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        if (EnumCaseMultiPayload)
        {
          memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_79:
          __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
          return a1;
        }

        v11 = sub_1DD0DB04C();
        (*(*(v11 - 8) + 32))(a1, a2, v11);
        v12 = type metadata accessor for Input(0);
        v13 = v12[5];
        v14 = &a1[v13];
        v15 = &a2[v13];
        v16 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v17 = sub_1DD0DC76C();
            (*(*(v17 - 8) + 32))(v14, v15, v17);
            goto LABEL_76;
          case 1u:
            v50 = sub_1DD0DC76C();
            (*(*(v50 - 8) + 32))(v14, v15, v50);
            v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v14[*(v51 + 48)] = *&v15[*(v51 + 48)];
            goto LABEL_76;
          case 4u:
            v65 = sub_1DD0DB1EC();
            (*(*(v65 - 8) + 32))(v14, v15, v65);
            goto LABEL_76;
          case 6u:
            v74 = sub_1DD0DB4BC();
            (*(*(v74 - 8) + 32))(v14, v15, v74);
            v147 = type metadata accessor for USOParse(0);
            v75 = v147[5];
            v76 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v75], 1, v76))
            {
              v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v75], &v15[v75], *(*(v77 - 8) + 64));
            }

            else
            {
              (*(*(v76 - 8) + 32))(&v14[v75], &v15[v75], v76);
              __swift_storeEnumTagSinglePayload(&v14[v75], 0, 1, v76);
            }

            *&v14[v147[6]] = *&v15[v147[6]];
            v102 = v147[7];
            v103 = &v14[v102];
            v104 = &v15[v102];
            v103[4] = v104[4];
            *v103 = *v104;
            goto LABEL_76;
          case 7u:
            v78 = sub_1DD0DB4BC();
            (*(*(v78 - 8) + 32))(v14, v15, v78);
            v148 = type metadata accessor for USOParse(0);
            v79 = v148[5];
            v80 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v15[v79], 1, v80))
            {
              v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v14[v79], &v15[v79], *(*(v81 - 8) + 64));
            }

            else
            {
              (*(*(v80 - 8) + 32))(&v14[v79], &v15[v79], v80);
              __swift_storeEnumTagSinglePayload(&v14[v79], 0, 1, v80);
            }

            *&v14[v148[6]] = *&v15[v148[6]];
            v105 = v148[7];
            v106 = &v14[v105];
            v107 = &v15[v105];
            v106[4] = v107[4];
            *v106 = *v107;
            v108 = type metadata accessor for LinkParse(0);
            *&v14[v108[5]] = *&v15[v108[5]];
            *&v14[v108[6]] = *&v15[v108[6]];
            *&v14[v108[7]] = *&v15[v108[7]];
            goto LABEL_76;
          case 8u:
            v43 = sub_1DD0DD12C();
            (*(*(v43 - 8) + 32))(v14, v15, v43);
            v44 = type metadata accessor for NLRouterParse(0);
            *&v14[*(v44 + 20)] = *&v15[*(v44 + 20)];
            v45 = *(v44 + 24);
            v142 = v44;
            __dstb = &v14[v45];
            v46 = &v15[v45];
            v139 = type metadata accessor for USOParse(0);
            if (__swift_getEnumTagSinglePayload(v46, 1, v139))
            {
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dstb, v46, *(*(v47 - 8) + 64));
            }

            else
            {
              v86 = sub_1DD0DB4BC();
              (*(*(v86 - 8) + 32))(__dstb, v46, v86);
              v136 = v139[5];
              v133 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v46[v136], 1, v133))
              {
                v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dstb[v136], &v46[v136], *(*(v87 - 8) + 64));
              }

              else
              {
                (*(*(v133 - 8) + 32))(&__dstb[v136], &v46[v136]);
                __swift_storeEnumTagSinglePayload(&__dstb[v136], 0, 1, v133);
              }

              *&__dstb[v139[6]] = *&v46[v139[6]];
              v123 = v139[7];
              v124 = &__dstb[v123];
              v125 = &v46[v123];
              v124[4] = v125[4];
              *v124 = *v125;
              __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v139);
            }

            *&v14[*(v142 + 28)] = *&v15[*(v142 + 28)];
            goto LABEL_76;
          case 9u:
            v59 = sub_1DD0DD08C();
            (*(*(v59 - 8) + 32))(v14, v15, v59);
LABEL_76:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v14, v15, *(*(v16 - 8) + 64));
            break;
        }

        *&a1[v12[6]] = *&a2[v12[6]];
        v126 = v12[7];
        v127 = &a1[v126];
        v128 = &a2[v126];
        v129 = *(v128 + 1);
        *v127 = *v128;
        *(v127 + 1) = v129;
        *(v127 + 4) = *(v128 + 4);
        a1[v12[8]] = a2[v12[8]];
        swift_getAssociatedTypeWitness();
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_78:
        swift_storeEnumTagMultiPayload();
        goto LABEL_79;
      }

      v18 = sub_1DD0DB04C();
      (*(*(v18 - 8) + 32))(a1, a2, v18);
      v19 = type metadata accessor for Input(0);
      v20 = v19[5];
      v21 = &a1[v20];
      v22 = &a2[v20];
      v23 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v24 = sub_1DD0DC76C();
          (*(*(v24 - 8) + 32))(v21, v22, v24);
          goto LABEL_66;
        case 1u:
          v41 = sub_1DD0DC76C();
          (*(*(v41 - 8) + 32))(v21, v22, v41);
          v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v21[*(v42 + 48)] = *&v22[*(v42 + 48)];
          goto LABEL_66;
        case 4u:
          v53 = sub_1DD0DB1EC();
          (*(*(v53 - 8) + 32))(v21, v22, v53);
          goto LABEL_66;
        case 6u:
          v55 = sub_1DD0DB4BC();
          (*(*(v55 - 8) + 32))(v21, v22, v55);
          v143 = type metadata accessor for USOParse(0);
          v56 = v143[5];
          v57 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v22[v56], 1, v57))
          {
            v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v21[v56], &v22[v56], *(*(v58 - 8) + 64));
          }

          else
          {
            (*(*(v57 - 8) + 32))(&v21[v56], &v22[v56], v57);
            __swift_storeEnumTagSinglePayload(&v21[v56], 0, 1, v57);
          }

          *&v21[v143[6]] = *&v22[v143[6]];
          v88 = v143[7];
          v89 = &v21[v88];
          v90 = &v22[v88];
          v89[4] = v90[4];
          *v89 = *v90;
          goto LABEL_66;
        case 7u:
          v61 = sub_1DD0DB4BC();
          (*(*(v61 - 8) + 32))(v21, v22, v61);
          v144 = type metadata accessor for USOParse(0);
          v62 = v144[5];
          v63 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v22[v62], 1, v63))
          {
            v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v21[v62], &v22[v62], *(*(v64 - 8) + 64));
          }

          else
          {
            (*(*(v63 - 8) + 32))(&v21[v62], &v22[v62], v63);
            __swift_storeEnumTagSinglePayload(&v21[v62], 0, 1, v63);
          }

          *&v21[v144[6]] = *&v22[v144[6]];
          v91 = v144[7];
          v92 = &v21[v91];
          v93 = &v22[v91];
          v92[4] = v93[4];
          *v92 = *v93;
          v94 = type metadata accessor for LinkParse(0);
          *&v21[v94[5]] = *&v22[v94[5]];
          *&v21[v94[6]] = *&v22[v94[6]];
          *&v21[v94[7]] = *&v22[v94[7]];
          goto LABEL_66;
        case 8u:
          v31 = sub_1DD0DD12C();
          (*(*(v31 - 8) + 32))(v21, v22, v31);
          v32 = type metadata accessor for NLRouterParse(0);
          *&v21[*(v32 + 20)] = *&v22[*(v32 + 20)];
          v33 = *(v32 + 24);
          v140 = v32;
          __dst = &v21[v33];
          v34 = &v22[v33];
          v137 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v34, 1, v137))
          {
            v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dst, v34, *(*(v35 - 8) + 64));
          }

          else
          {
            v82 = sub_1DD0DB4BC();
            (*(*(v82 - 8) + 32))(__dst, v34, v82);
            v134 = v137[5];
            v131 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v34[v134], 1, v131))
            {
              v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dst[v134], &v34[v134], *(*(v83 - 8) + 64));
            }

            else
            {
              (*(*(v131 - 8) + 32))(&__dst[v134], &v34[v134]);
              __swift_storeEnumTagSinglePayload(&__dst[v134], 0, 1, v131);
            }

            *&__dst[v137[6]] = *&v34[v137[6]];
            v109 = v137[7];
            v110 = &__dst[v109];
            v111 = &v34[v109];
            v110[4] = v111[4];
            *v110 = *v111;
            __swift_storeEnumTagSinglePayload(__dst, 0, 1, v137);
          }

          *&v21[*(v140 + 28)] = *&v22[*(v140 + 28)];
          goto LABEL_66;
        case 9u:
          v52 = sub_1DD0DD08C();
          (*(*(v52 - 8) + 32))(v21, v22, v52);
LABEL_66:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v21, v22, *(*(v23 - 8) + 64));
          break;
      }
    }

    *&a1[v19[6]] = *&a2[v19[6]];
    v112 = v19[7];
    v113 = &a1[v112];
    v114 = &a2[v112];
    v115 = *(v114 + 1);
    *v113 = *v114;
    *(v113 + 1) = v115;
    *(v113 + 4) = *(v114 + 4);
    a1[v19[8]] = a2[v19[8]];
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v117, v118);
    sub_1DD0DE97C();
    v119 = swift_getTupleTypeMetadata2();
    *&a1[*(v119 + 48)] = *&a2[*(v119 + 48)];
    goto LABEL_78;
  }

  v8 = *(*(a3 - 8) + 64);

  return memcpy(a1, a2, v8);
}

_BYTE *sub_1DCEF687C(_BYTE *a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, 1, v7);
  v9 = __swift_getEnumTagSinglePayload(a2, 1, v7);
  if (EnumTagSinglePayload)
  {
    if (!v9)
    {
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 5)
      {
        v36 = sub_1DD0DB04C();
        (*(*(v36 - 8) + 32))(a1, a2, v36);
        v30 = type metadata accessor for Input(0);
        v37 = v30[5];
        v38 = &a1[v37];
        v39 = &a2[v37];
        v40 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v41 = sub_1DD0DC76C();
            (*(*(v41 - 8) + 32))(v38, v39, v41);
            goto LABEL_120;
          case 1u:
            v72 = sub_1DD0DC76C();
            (*(*(v72 - 8) + 32))(v38, v39, v72);
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v38[*(v73 + 48)] = *&v39[*(v73 + 48)];
            goto LABEL_120;
          case 4u:
            v84 = sub_1DD0DB1EC();
            (*(*(v84 - 8) + 32))(v38, v39, v84);
            goto LABEL_120;
          case 6u:
            v90 = sub_1DD0DB4BC();
            (*(*(v90 - 8) + 32))(v38, v39, v90);
            v278 = type metadata accessor for USOParse(0);
            v91 = v278[5];
            v92 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v39[v91], 1, v92))
            {
              v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v38[v91], &v39[v91], *(*(v93 - 8) + 64));
            }

            else
            {
              (*(*(v92 - 8) + 32))(&v38[v91], &v39[v91], v92);
              __swift_storeEnumTagSinglePayload(&v38[v91], 0, 1, v92);
            }

            *&v38[v278[6]] = *&v39[v278[6]];
            v158 = v278[7];
            v159 = &v38[v158];
            v160 = &v39[v158];
            v159[4] = v160[4];
            *v159 = *v160;
            goto LABEL_120;
          case 7u:
            v94 = sub_1DD0DB4BC();
            (*(*(v94 - 8) + 32))(v38, v39, v94);
            v279 = type metadata accessor for USOParse(0);
            v95 = v279[5];
            v96 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v39[v95], 1, v96))
            {
              v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v38[v95], &v39[v95], *(*(v97 - 8) + 64));
            }

            else
            {
              (*(*(v96 - 8) + 32))(&v38[v95], &v39[v95], v96);
              __swift_storeEnumTagSinglePayload(&v38[v95], 0, 1, v96);
            }

            *&v38[v279[6]] = *&v39[v279[6]];
            v165 = v279[7];
            v166 = &v38[v165];
            v167 = &v39[v165];
            v166[4] = v167[4];
            *v166 = *v167;
            v168 = type metadata accessor for LinkParse(0);
            *&v38[v168[5]] = *&v39[v168[5]];
            *&v38[v168[6]] = *&v39[v168[6]];
            *&v38[v168[7]] = *&v39[v168[7]];
            goto LABEL_120;
          case 8u:
            v60 = sub_1DD0DD12C();
            (*(*(v60 - 8) + 32))(v38, v39, v60);
            v61 = type metadata accessor for NLRouterParse(0);
            *&v38[*(v61 + 20)] = *&v39[*(v61 + 20)];
            v62 = *(v61 + 24);
            v274 = v61;
            __dsta = &v38[v62];
            v63 = &v39[v62];
            v268 = type metadata accessor for USOParse(0);
            if (__swift_getEnumTagSinglePayload(v63, 1, v268))
            {
              v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dsta, v63, *(*(v64 - 8) + 64));
            }

            else
            {
              v118 = sub_1DD0DB4BC();
              (*(*(v118 - 8) + 32))(__dsta, v63, v118);
              v262 = v268[5];
              v256 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v63[v262], 1, v256))
              {
                v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dsta[v262], &v63[v262], *(*(v119 - 8) + 64));
              }

              else
              {
                (*(*(v256 - 8) + 32))(&__dsta[v262], &v63[v262]);
                __swift_storeEnumTagSinglePayload(&__dsta[v262], 0, 1, v256);
              }

              *&__dsta[v268[6]] = *&v63[v268[6]];
              v199 = v268[7];
              v200 = &__dsta[v199];
              v201 = &v63[v199];
              v200[4] = v201[4];
              *v200 = *v201;
              __swift_storeEnumTagSinglePayload(__dsta, 0, 1, v268);
            }

            *&v38[*(v274 + 28)] = *&v39[*(v274 + 28)];
            goto LABEL_120;
          case 9u:
            v78 = sub_1DD0DD08C();
            (*(*(v78 - 8) + 32))(v38, v39, v78);
LABEL_120:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v38, v39, *(*(v40 - 8) + 64));
            break;
        }
      }

      else
      {
        if (EnumCaseMultiPayload != 4)
        {
          if (EnumCaseMultiPayload)
          {
            memcpy(a1, a2, *(*(v7 - 8) + 64));
LABEL_130:
            __swift_storeEnumTagSinglePayload(a1, 0, 1, v7);
            return a1;
          }

          v11 = sub_1DD0DB04C();
          (*(*(v11 - 8) + 32))(a1, a2, v11);
          v12 = type metadata accessor for Input(0);
          v13 = v12[5];
          v14 = &a1[v13];
          v15 = &a2[v13];
          v16 = type metadata accessor for Parse(0);
          switch(swift_getEnumCaseMultiPayload())
          {
            case 0u:
              v17 = sub_1DD0DC76C();
              (*(*(v17 - 8) + 32))(v14, v15, v17);
              goto LABEL_127;
            case 1u:
              v74 = sub_1DD0DC76C();
              (*(*(v74 - 8) + 32))(v14, v15, v74);
              v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
              *&v14[*(v75 + 48)] = *&v15[*(v75 + 48)];
              goto LABEL_127;
            case 4u:
              v89 = sub_1DD0DB1EC();
              (*(*(v89 - 8) + 32))(v14, v15, v89);
              goto LABEL_127;
            case 6u:
              v98 = sub_1DD0DB4BC();
              (*(*(v98 - 8) + 32))(v14, v15, v98);
              v280 = type metadata accessor for USOParse(0);
              v99 = v280[5];
              v100 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v15[v99], 1, v100))
              {
                v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v14[v99], &v15[v99], *(*(v101 - 8) + 64));
              }

              else
              {
                (*(*(v100 - 8) + 32))(&v14[v99], &v15[v99], v100);
                __swift_storeEnumTagSinglePayload(&v14[v99], 0, 1, v100);
              }

              *&v14[v280[6]] = *&v15[v280[6]];
              v173 = v280[7];
              v174 = &v14[v173];
              v175 = &v15[v173];
              v174[4] = v175[4];
              *v174 = *v175;
              goto LABEL_127;
            case 7u:
              v102 = sub_1DD0DB4BC();
              (*(*(v102 - 8) + 32))(v14, v15, v102);
              v281 = type metadata accessor for USOParse(0);
              v103 = v281[5];
              v104 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v15[v103], 1, v104))
              {
                v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v14[v103], &v15[v103], *(*(v105 - 8) + 64));
              }

              else
              {
                (*(*(v104 - 8) + 32))(&v14[v103], &v15[v103], v104);
                __swift_storeEnumTagSinglePayload(&v14[v103], 0, 1, v104);
              }

              *&v14[v281[6]] = *&v15[v281[6]];
              v180 = v281[7];
              v181 = &v14[v180];
              v182 = &v15[v180];
              v181[4] = v182[4];
              *v181 = *v182;
              v183 = type metadata accessor for LinkParse(0);
              *&v14[v183[5]] = *&v15[v183[5]];
              *&v14[v183[6]] = *&v15[v183[6]];
              *&v14[v183[7]] = *&v15[v183[7]];
              goto LABEL_127;
            case 8u:
              v67 = sub_1DD0DD12C();
              (*(*(v67 - 8) + 32))(v14, v15, v67);
              v68 = type metadata accessor for NLRouterParse(0);
              *&v14[*(v68 + 20)] = *&v15[*(v68 + 20)];
              v69 = *(v68 + 24);
              v275 = v68;
              __dstb = &v14[v69];
              v70 = &v15[v69];
              v269 = type metadata accessor for USOParse(0);
              if (__swift_getEnumTagSinglePayload(v70, 1, v269))
              {
                v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
                memcpy(__dstb, v70, *(*(v71 - 8) + 64));
              }

              else
              {
                v127 = sub_1DD0DB4BC();
                (*(*(v127 - 8) + 32))(__dstb, v70, v127);
                v263 = v269[5];
                v257 = sub_1DD0DB3EC();
                if (__swift_getEnumTagSinglePayload(&v70[v263], 1, v257))
                {
                  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                  memcpy(&__dstb[v263], &v70[v263], *(*(v128 - 8) + 64));
                }

                else
                {
                  (*(*(v257 - 8) + 32))(&__dstb[v263], &v70[v263]);
                  __swift_storeEnumTagSinglePayload(&__dstb[v263], 0, 1, v257);
                }

                *&__dstb[v269[6]] = *&v70[v269[6]];
                v204 = v269[7];
                v205 = &__dstb[v204];
                v206 = &v70[v204];
                v205[4] = v206[4];
                *v205 = *v206;
                __swift_storeEnumTagSinglePayload(__dstb, 0, 1, v269);
              }

              *&v14[*(v275 + 28)] = *&v15[*(v275 + 28)];
              goto LABEL_127;
            case 9u:
              v83 = sub_1DD0DD08C();
              (*(*(v83 - 8) + 32))(v14, v15, v83);
LABEL_127:
              swift_storeEnumTagMultiPayload();
              break;
            default:
              memcpy(v14, v15, *(*(v16 - 8) + 64));
              break;
          }

          *&a1[v12[6]] = *&a2[v12[6]];
          v207 = v12[7];
          v208 = &a1[v207];
          v209 = &a2[v207];
          v210 = *(v209 + 1);
          *v208 = *v209;
          *(v208 + 1) = v210;
          *(v208 + 4) = *(v209 + 4);
          a1[v12[8]] = a2[v12[8]];
          swift_getAssociatedTypeWitness();
          TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
          *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
LABEL_129:
          swift_storeEnumTagMultiPayload();
          goto LABEL_130;
        }

        v29 = sub_1DD0DB04C();
        (*(*(v29 - 8) + 32))(a1, a2, v29);
        v30 = type metadata accessor for Input(0);
        v31 = v30[5];
        v32 = &a1[v31];
        v33 = &a2[v31];
        v34 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v35 = sub_1DD0DC76C();
            (*(*(v35 - 8) + 32))(v32, v33, v35);
            goto LABEL_113;
          case 1u:
            v65 = sub_1DD0DC76C();
            (*(*(v65 - 8) + 32))(v32, v33, v65);
            v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v32[*(v66 + 48)] = *&v33[*(v66 + 48)];
            goto LABEL_113;
          case 4u:
            v77 = sub_1DD0DB1EC();
            (*(*(v77 - 8) + 32))(v32, v33, v77);
            goto LABEL_113;
          case 6u:
            v79 = sub_1DD0DB4BC();
            (*(*(v79 - 8) + 32))(v32, v33, v79);
            v276 = type metadata accessor for USOParse(0);
            v80 = v276[5];
            v81 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v33[v80], 1, v81))
            {
              v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v32[v80], &v33[v80], *(*(v82 - 8) + 64));
            }

            else
            {
              (*(*(v81 - 8) + 32))(&v32[v80], &v33[v80], v81);
              __swift_storeEnumTagSinglePayload(&v32[v80], 0, 1, v81);
            }

            *&v32[v276[6]] = *&v33[v276[6]];
            v140 = v276[7];
            v141 = &v32[v140];
            v142 = &v33[v140];
            v141[4] = v142[4];
            *v141 = *v142;
            goto LABEL_113;
          case 7u:
            v85 = sub_1DD0DB4BC();
            (*(*(v85 - 8) + 32))(v32, v33, v85);
            v277 = type metadata accessor for USOParse(0);
            v86 = v277[5];
            v87 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v33[v86], 1, v87))
            {
              v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v32[v86], &v33[v86], *(*(v88 - 8) + 64));
            }

            else
            {
              (*(*(v87 - 8) + 32))(&v32[v86], &v33[v86], v87);
              __swift_storeEnumTagSinglePayload(&v32[v86], 0, 1, v87);
            }

            *&v32[v277[6]] = *&v33[v277[6]];
            v149 = v277[7];
            v150 = &v32[v149];
            v151 = &v33[v149];
            v150[4] = v151[4];
            *v150 = *v151;
            v152 = type metadata accessor for LinkParse(0);
            *&v32[v152[5]] = *&v33[v152[5]];
            *&v32[v152[6]] = *&v33[v152[6]];
            *&v32[v152[7]] = *&v33[v152[7]];
            goto LABEL_113;
          case 8u:
            v55 = sub_1DD0DD12C();
            (*(*(v55 - 8) + 32))(v32, v33, v55);
            v56 = type metadata accessor for NLRouterParse(0);
            *&v32[*(v56 + 20)] = *&v33[*(v56 + 20)];
            v57 = *(v56 + 24);
            v273 = v56;
            __dst = &v32[v57];
            v58 = &v33[v57];
            v267 = type metadata accessor for USOParse(0);
            if (__swift_getEnumTagSinglePayload(v58, 1, v267))
            {
              v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dst, v58, *(*(v59 - 8) + 64));
            }

            else
            {
              v111 = sub_1DD0DB4BC();
              (*(*(v111 - 8) + 32))(__dst, v58, v111);
              v261 = v267[5];
              v255 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v58[v261], 1, v255))
              {
                v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dst[v261], &v58[v261], *(*(v112 - 8) + 64));
              }

              else
              {
                (*(*(v255 - 8) + 32))(&__dst[v261], &v58[v261]);
                __swift_storeEnumTagSinglePayload(&__dst[v261], 0, 1, v255);
              }

              *&__dst[v267[6]] = *&v58[v267[6]];
              v186 = v267[7];
              v187 = &__dst[v186];
              v188 = &v58[v186];
              v187[4] = v188[4];
              *v187 = *v188;
              __swift_storeEnumTagSinglePayload(__dst, 0, 1, v267);
            }

            *&v32[*(v273 + 28)] = *&v33[*(v273 + 28)];
            goto LABEL_113;
          case 9u:
            v76 = sub_1DD0DD08C();
            (*(*(v76 - 8) + 32))(v32, v33, v76);
LABEL_113:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v32, v33, *(*(v34 - 8) + 64));
            break;
        }
      }

      *&a1[v30[6]] = *&a2[v30[6]];
      v189 = v30[7];
      v190 = &a1[v189];
      v191 = &a2[v189];
      v192 = *(v191 + 1);
      *v190 = *v191;
      *(v190 + 1) = v192;
      *(v190 + 4) = *(v191 + 4);
      a1[v30[8]] = a2[v30[8]];
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      type metadata accessor for RCHFlowSharedData(255, AssociatedTypeWitness, v194, v195);
      sub_1DD0DE97C();
      v196 = swift_getTupleTypeMetadata2();
      *&a1[*(v196 + 48)] = *&a2[*(v196 + 48)];
      goto LABEL_129;
    }

    goto LABEL_10;
  }

  if (!v9)
  {
    if (a1 == a2)
    {
      return a1;
    }

    v20 = *(v7 - 8);
    (*(v20 + 8))(a1, v7);
    v21 = swift_getEnumCaseMultiPayload();
    if (v21 == 5)
    {
      v49 = sub_1DD0DB04C();
      (*(*(v49 - 8) + 32))(a1, a2, v49);
      v43 = type metadata accessor for Input(0);
      v50 = v43[5];
      v51 = &a1[v50];
      v52 = &a2[v50];
      v53 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v54 = sub_1DD0DC76C();
          (*(*(v54 - 8) + 32))(v51, v52, v54);
          goto LABEL_151;
        case 1u:
          v129 = sub_1DD0DC76C();
          (*(*(v129 - 8) + 32))(v51, v52, v129);
          v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v51[*(v130 + 48)] = *&v52[*(v130 + 48)];
          goto LABEL_151;
        case 4u:
          v144 = sub_1DD0DB1EC();
          (*(*(v144 - 8) + 32))(v51, v52, v144);
          goto LABEL_151;
        case 6u:
          v154 = sub_1DD0DB4BC();
          (*(*(v154 - 8) + 32))(v51, v52, v154);
          v287 = type metadata accessor for USOParse(0);
          v155 = v287[5];
          v156 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v52[v155], 1, v156))
          {
            v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v51[v155], &v52[v155], *(*(v157 - 8) + 64));
          }

          else
          {
            (*(*(v156 - 8) + 32))(&v51[v155], &v52[v155], v156);
            __swift_storeEnumTagSinglePayload(&v51[v155], 0, 1, v156);
          }

          *&v51[v287[6]] = *&v52[v287[6]];
          v219 = v287[7];
          v220 = &v51[v219];
          v221 = &v52[v219];
          v220[4] = v221[4];
          *v220 = *v221;
          goto LABEL_151;
        case 7u:
          v161 = sub_1DD0DB4BC();
          (*(*(v161 - 8) + 32))(v51, v52, v161);
          v288 = type metadata accessor for USOParse(0);
          v162 = v288[5];
          v163 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v52[v162], 1, v163))
          {
            v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v51[v162], &v52[v162], *(*(v164 - 8) + 64));
          }

          else
          {
            (*(*(v163 - 8) + 32))(&v51[v162], &v52[v162], v163);
            __swift_storeEnumTagSinglePayload(&v51[v162], 0, 1, v163);
          }

          *&v51[v288[6]] = *&v52[v288[6]];
          v222 = v288[7];
          v223 = &v51[v222];
          v224 = &v52[v222];
          v223[4] = v224[4];
          *v223 = *v224;
          v225 = type metadata accessor for LinkParse(0);
          *&v51[v225[5]] = *&v52[v225[5]];
          *&v51[v225[6]] = *&v52[v225[6]];
          *&v51[v225[7]] = *&v52[v225[7]];
          goto LABEL_151;
        case 8u:
          v113 = sub_1DD0DD12C();
          (*(*(v113 - 8) + 32))(v51, v52, v113);
          v114 = type metadata accessor for NLRouterParse(0);
          *&v51[*(v114 + 20)] = *&v52[*(v114 + 20)];
          v115 = *(v114 + 24);
          v283 = v114;
          __dstd = &v51[v115];
          v116 = &v52[v115];
          v271 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v116, 1, v271))
          {
            v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstd, v116, *(*(v117 - 8) + 64));
          }

          else
          {
            v197 = sub_1DD0DB4BC();
            (*(*(v197 - 8) + 32))(__dstd, v116, v197);
            v265 = v271[5];
            v259 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v116[v265], 1, v259))
            {
              v198 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstd[v265], &v116[v265], *(*(v198 - 8) + 64));
            }

            else
            {
              (*(*(v259 - 8) + 32))(&__dstd[v265], &v116[v265]);
              __swift_storeEnumTagSinglePayload(&__dstd[v265], 0, 1, v259);
            }

            *&__dstd[v271[6]] = *&v116[v271[6]];
            v244 = v271[7];
            v245 = &__dstd[v244];
            v246 = &v116[v244];
            v245[4] = v246[4];
            *v245 = *v246;
            __swift_storeEnumTagSinglePayload(__dstd, 0, 1, v271);
          }

          *&v51[*(v283 + 28)] = *&v52[*(v283 + 28)];
          goto LABEL_151;
        case 9u:
          v135 = sub_1DD0DD08C();
          (*(*(v135 - 8) + 32))(v51, v52, v135);
LABEL_151:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v51, v52, *(*(v53 - 8) + 64));
          break;
      }
    }

    else
    {
      if (v21 != 4)
      {
        if (v21)
        {
          v18 = *(v20 + 64);
          goto LABEL_11;
        }

        v22 = sub_1DD0DB04C();
        (*(*(v22 - 8) + 32))(a1, a2, v22);
        v23 = type metadata accessor for Input(0);
        v24 = v23[5];
        v25 = &a1[v24];
        v26 = &a2[v24];
        v27 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v28 = sub_1DD0DC76C();
            (*(*(v28 - 8) + 32))(v25, v26, v28);
            goto LABEL_156;
          case 1u:
            v131 = sub_1DD0DC76C();
            (*(*(v131 - 8) + 32))(v25, v26, v131);
            v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *&v25[*(v132 + 48)] = *&v26[*(v132 + 48)];
            goto LABEL_156;
          case 4u:
            v153 = sub_1DD0DB1EC();
            (*(*(v153 - 8) + 32))(v25, v26, v153);
            goto LABEL_156;
          case 6u:
            v169 = sub_1DD0DB4BC();
            (*(*(v169 - 8) + 32))(v25, v26, v169);
            v289 = type metadata accessor for USOParse(0);
            v170 = v289[5];
            v171 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v170], 1, v171))
            {
              v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v170], &v26[v170], *(*(v172 - 8) + 64));
            }

            else
            {
              (*(*(v171 - 8) + 32))(&v25[v170], &v26[v170], v171);
              __swift_storeEnumTagSinglePayload(&v25[v170], 0, 1, v171);
            }

            *&v25[v289[6]] = *&v26[v289[6]];
            v226 = v289[7];
            v227 = &v25[v226];
            v228 = &v26[v226];
            v227[4] = v228[4];
            *v227 = *v228;
            goto LABEL_156;
          case 7u:
            v176 = sub_1DD0DB4BC();
            (*(*(v176 - 8) + 32))(v25, v26, v176);
            v290 = type metadata accessor for USOParse(0);
            v177 = v290[5];
            v178 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v26[v177], 1, v178))
            {
              v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v25[v177], &v26[v177], *(*(v179 - 8) + 64));
            }

            else
            {
              (*(*(v178 - 8) + 32))(&v25[v177], &v26[v177], v178);
              __swift_storeEnumTagSinglePayload(&v25[v177], 0, 1, v178);
            }

            *&v25[v290[6]] = *&v26[v290[6]];
            v229 = v290[7];
            v230 = &v25[v229];
            v231 = &v26[v229];
            v230[4] = v231[4];
            *v230 = *v231;
            v232 = type metadata accessor for LinkParse(0);
            *&v25[v232[5]] = *&v26[v232[5]];
            *&v25[v232[6]] = *&v26[v232[6]];
            *&v25[v232[7]] = *&v26[v232[7]];
            goto LABEL_156;
          case 8u:
            v122 = sub_1DD0DD12C();
            (*(*(v122 - 8) + 32))(v25, v26, v122);
            v123 = type metadata accessor for NLRouterParse(0);
            *&v25[*(v123 + 20)] = *&v26[*(v123 + 20)];
            v124 = *(v123 + 24);
            v284 = v123;
            __dste = &v25[v124];
            v125 = &v26[v124];
            v272 = type metadata accessor for USOParse(0);
            if (__swift_getEnumTagSinglePayload(v125, 1, v272))
            {
              v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(__dste, v125, *(*(v126 - 8) + 64));
            }

            else
            {
              v202 = sub_1DD0DB4BC();
              (*(*(v202 - 8) + 32))(__dste, v125, v202);
              v266 = v272[5];
              v260 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v125[v266], 1, v260))
              {
                v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&__dste[v266], &v125[v266], *(*(v203 - 8) + 64));
              }

              else
              {
                (*(*(v260 - 8) + 32))(&__dste[v266], &v125[v266]);
                __swift_storeEnumTagSinglePayload(&__dste[v266], 0, 1, v260);
              }

              *&__dste[v272[6]] = *&v125[v272[6]];
              v247 = v272[7];
              v248 = &__dste[v247];
              v249 = &v125[v247];
              v248[4] = v249[4];
              *v248 = *v249;
              __swift_storeEnumTagSinglePayload(__dste, 0, 1, v272);
            }

            *&v25[*(v284 + 28)] = *&v26[*(v284 + 28)];
            goto LABEL_156;
          case 9u:
            v143 = sub_1DD0DD08C();
            (*(*(v143 - 8) + 32))(v25, v26, v143);
LABEL_156:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(v25, v26, *(*(v27 - 8) + 64));
            break;
        }

        *&a1[v23[6]] = *&a2[v23[6]];
        v250 = v23[7];
        v251 = &a1[v250];
        v252 = &a2[v250];
        v253 = *(v252 + 1);
        *v251 = *v252;
        *(v251 + 1) = v253;
        *(v251 + 4) = *(v252 + 4);
        a1[v23[8]] = a2[v23[8]];
        swift_getAssociatedTypeWitness();
        v254 = swift_getTupleTypeMetadata2();
        *&a1[*(v254 + 48)] = *&a2[*(v254 + 48)];
LABEL_158:
        swift_storeEnumTagMultiPayload();
        return a1;
      }

      v42 = sub_1DD0DB04C();
      (*(*(v42 - 8) + 32))(a1, a2, v42);
      v43 = type metadata accessor for Input(0);
      v44 = v43[5];
      v45 = &a1[v44];
      v46 = &a2[v44];
      v47 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v48 = sub_1DD0DC76C();
          (*(*(v48 - 8) + 32))(v45, v46, v48);
          goto LABEL_146;
        case 1u:
          v120 = sub_1DD0DC76C();
          (*(*(v120 - 8) + 32))(v45, v46, v120);
          v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&v45[*(v121 + 48)] = *&v46[*(v121 + 48)];
          goto LABEL_146;
        case 4u:
          v134 = sub_1DD0DB1EC();
          (*(*(v134 - 8) + 32))(v45, v46, v134);
          goto LABEL_146;
        case 6u:
          v136 = sub_1DD0DB4BC();
          (*(*(v136 - 8) + 32))(v45, v46, v136);
          v285 = type metadata accessor for USOParse(0);
          v137 = v285[5];
          v138 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v46[v137], 1, v138))
          {
            v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v45[v137], &v46[v137], *(*(v139 - 8) + 64));
          }

          else
          {
            (*(*(v138 - 8) + 32))(&v45[v137], &v46[v137], v138);
            __swift_storeEnumTagSinglePayload(&v45[v137], 0, 1, v138);
          }

          *&v45[v285[6]] = *&v46[v285[6]];
          v212 = v285[7];
          v213 = &v45[v212];
          v214 = &v46[v212];
          v213[4] = v214[4];
          *v213 = *v214;
          goto LABEL_146;
        case 7u:
          v145 = sub_1DD0DB4BC();
          (*(*(v145 - 8) + 32))(v45, v46, v145);
          v286 = type metadata accessor for USOParse(0);
          v146 = v286[5];
          v147 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v46[v146], 1, v147))
          {
            v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v45[v146], &v46[v146], *(*(v148 - 8) + 64));
          }

          else
          {
            (*(*(v147 - 8) + 32))(&v45[v146], &v46[v146], v147);
            __swift_storeEnumTagSinglePayload(&v45[v146], 0, 1, v147);
          }

          *&v45[v286[6]] = *&v46[v286[6]];
          v215 = v286[7];
          v216 = &v45[v215];
          v217 = &v46[v215];
          v216[4] = v217[4];
          *v216 = *v217;
          v218 = type metadata accessor for LinkParse(0);
          *&v45[v218[5]] = *&v46[v218[5]];
          *&v45[v218[6]] = *&v46[v218[6]];
          *&v45[v218[7]] = *&v46[v218[7]];
          goto LABEL_146;
        case 8u:
          v106 = sub_1DD0DD12C();
          (*(*(v106 - 8) + 32))(v45, v46, v106);
          v107 = type metadata accessor for NLRouterParse(0);
          *&v45[*(v107 + 20)] = *&v46[*(v107 + 20)];
          v108 = *(v107 + 24);
          v282 = v107;
          __dstc = &v45[v108];
          v109 = &v46[v108];
          v270 = type metadata accessor for USOParse(0);
          if (__swift_getEnumTagSinglePayload(v109, 1, v270))
          {
            v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(__dstc, v109, *(*(v110 - 8) + 64));
          }

          else
          {
            v184 = sub_1DD0DB4BC();
            (*(*(v184 - 8) + 32))(__dstc, v109, v184);
            v264 = v270[5];
            v258 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v109[v264], 1, v258))
            {
              v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&__dstc[v264], &v109[v264], *(*(v185 - 8) + 64));
            }

            else
            {
              (*(*(v258 - 8) + 32))(&__dstc[v264], &v109[v264]);
              __swift_storeEnumTagSinglePayload(&__dstc[v264], 0, 1, v258);
            }

            *&__dstc[v270[6]] = *&v109[v270[6]];
            v233 = v270[7];
            v234 = &__dstc[v233];
            v235 = &v109[v233];
            v234[4] = v235[4];
            *v234 = *v235;
            __swift_storeEnumTagSinglePayload(__dstc, 0, 1, v270);
          }

          *&v45[*(v282 + 28)] = *&v46[*(v282 + 28)];
          goto LABEL_146;
        case 9u:
          v133 = sub_1DD0DD08C();
          (*(*(v133 - 8) + 32))(v45, v46, v133);
LABEL_146:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(v45, v46, *(*(v47 - 8) + 64));
          break;
      }
    }

    *&a1[v43[6]] = *&a2[v43[6]];
    v236 = v43[7];
    v237 = &a1[v236];
    v238 = &a2[v236];
    v239 = *(v238 + 1);
    *v237 = *v238;
    *(v237 + 1) = v239;
    *(v237 + 4) = *(v238 + 4);
    a1[v43[8]] = a2[v43[8]];
    v240 = swift_getAssociatedTypeWitness();
    type metadata accessor for RCHFlowSharedData(255, v240, v241, v242);
    sub_1DD0DE97C();
    v243 = swift_getTupleTypeMetadata2();
    *&a1[*(v243 + 48)] = *&a2[*(v243 + 48)];
    goto LABEL_158;
  }

  (*(*(v7 - 8) + 8))(a1, v7);
LABEL_10:
  v18 = *(*(a3 - 8) + 64);
LABEL_11:

  return memcpy(a1, a2, v18);
}

uint64_t sub_1DCEF9610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RCHFlowAsync.State(0, *(a2 + 16), *(a2 + 24), a4);

  return __swift_getEnumTagSinglePayload(a1, 1, v5);
}

uint64_t sub_1DCEF965C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for RCHFlowAsync.State(0, *(a3 + 16), *(a3 + 24), a4);

  return __swift_storeEnumTagSinglePayload(a1, a2, 1, v6);
}

uint64_t OUTLINED_FUNCTION_113_4(uint64_t a1, uint64_t a2)
{
  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  *(v2 + 120) = 769;
  return v2 + 104;
}

uint64_t OUTLINED_FUNCTION_133_1(uint64_t a1, uint64_t a2)
{

  return swift_getAssociatedTypeWitness();
}

void RCHFlowDelegate.makeRCHFlow(initialIntent:app:parameterMetadata:producers:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
  }

  v6 = qword_1EDE57DF8;
  v8 = type metadata accessor for RefreshableSiriKitEventSending();
  v9 = &off_1F5873940;
  v7 = v6;
  sub_1DD0DCF8C();
}

void sub_1DCEF9964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, const void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_50();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v35 = v34;
  memcpy(__dst, a22, sizeof(__dst));
  sub_1DCEFAA44(v46, v33, v31, v29, v27, __dst, a23, a24);
  v37 = type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter(255, a23, a24, v36);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v38 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow(v38, v37, v39, v40);
  sub_1DCB17CA0(v35, __dst);
  sub_1DCB17CA0(v31, v44);
  sub_1DCB17CA0(v29, v43);
  sub_1DCB17CA0(v27, v42);
  sub_1DCB17CA0(v46, v41);
  swift_unknownObjectRetain();

  v41[0] = sub_1DCEDF000(v25, v41, a21);

  sub_1DD0DCF8C();
}

void RCHFlowDelegate.makeRCHFlow(producers:)()
{
  if (qword_1EDE4F6A8 != -1)
  {
    OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
  }

  v0 = qword_1EDE57DF8;
  v2 = type metadata accessor for RefreshableSiriKitEventSending();
  v3 = &off_1F5873940;
  v1 = v0;
  sub_1DD0DCF8C();
}

void sub_1DCEF9D10(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, __src, sizeof(__dst));
  sub_1DCEFAA44(v27, a2, a3, a4, a5, __dst, a7, a8);
  v16 = type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter(255, a7, a8, v15);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v17 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow(v17, v16, v18, v19);
  sub_1DCB17CA0(a1, __dst);
  sub_1DCB17CA0(a3, v25);
  sub_1DCB17CA0(a4, v24);
  sub_1DCB17CA0(a5, v23);
  sub_1DCB17CA0(v27, v22);
  v20 = sub_1DCD799A4();
  v21 = swift_unknownObjectRetain();
  v22[0] = sub_1DCEDF000(v21, v22, v20);
  sub_1DCEE3E08();
}

void sub_1DCEFA050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, const void *a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_50();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  memcpy(__dst, a21, sizeof(__dst));
  sub_1DCEFAA44(v45, v30, v28, v26, v24, __dst, a22, a23);
  v34 = type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter(255, a22, a23, v33);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v35 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow(v35, v34, v36, v37);
  sub_1DCB17CA0(v32, __dst);
  sub_1DCB17CA0(v28, v43);
  sub_1DCB17CA0(v26, v42);
  sub_1DCB17CA0(v24, v41);
  sub_1DCB17CA0(v45, v40);
  v38 = sub_1DCD799A4();
  v39 = swift_unknownObjectRetain();
  v40[0] = sub_1DCEDF000(v39, v40, v38);
  sub_1DD0DCF8C();
}

void sub_1DCEFA388(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50();
  v53 = v23;
  v54 = v25;
  v55 = v24;
  v56 = v26;
  v57 = v27;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v34 = type metadata accessor for Parse(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  OUTLINED_FUNCTION_16();
  v38 = v37 - v36;
  v39 = type metadata accessor for Input(0);
  v40 = (v39 - 8);
  MEMORY[0x1EEE9AC00](v39, v41);
  OUTLINED_FUNCTION_16();
  v44 = v43 - v42;
  memcpy(v62, v54, sizeof(v62));
  sub_1DCEFAA44(v63, v55, v33, v31, v29, v62, a21, a22);
  v46 = type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter(255, a21, a22, v45);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v47 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow(v47, v46, v48, v49);
  sub_1DCB17CA0(v53, v62);
  sub_1DCB17CA0(v33, &v61);
  sub_1DCB17CA0(v31, &v60);
  sub_1DCB17CA0(v29, &v59);
  sub_1DCB17CA0(v63, v58);
  v50 = *(v56 + *(type metadata accessor for SiriKitFlowFrameInput(0) + 24));
  swift_unknownObjectRetain();

  v58[0] = sub_1DCEDF000(v22, v58, v50);
  sub_1DCB29E58(v56, v38);
  v51 = v44 + v40[9];
  *(v51 + 32) = 0;
  *v51 = 0u;
  *(v51 + 16) = 0u;
  sub_1DCB29E58(v38, v44 + v40[7]);
  *(v44 + v40[8]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB29EBC(v38);
  *(v44 + v40[10]) = 0;
  v52 = v57;
  sub_1DCEE4CA4();
}

void sub_1DCEFA794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_50();
  v61 = v22;
  v62 = v23;
  v58 = v25;
  v59 = v24;
  v65 = v26;
  v66 = v27;
  v29 = v28;
  v31 = v30;
  v32 = v24;
  v63 = v33;
  v34 = type metadata accessor for Input(0);
  v35 = (v34 - 8);
  MEMORY[0x1EEE9AC00](v34, v36);
  OUTLINED_FUNCTION_16();
  v39 = v38 - v37;
  v40 = type metadata accessor for Parse(0);
  v42 = MEMORY[0x1EEE9AC00](v40 - 8, v41);
  v64 = &v57 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42, v44);
  v46 = &v57 - v45;
  v60 = &v57 - v45;
  memcpy(v71, v58, sizeof(v71));
  v65 = sub_1DCEFAA44(v72, v65, v32, v31, v29, v71, a21, a22);
  swift_getAssociatedTypeWitness();
  sub_1DCE2C528(v62, v66, v46);
  v48 = type metadata accessor for RCHDelegateToRCHFlowStrategyAdapter(255, a21, a22, v47);
  OUTLINED_FUNCTION_0_101();
  swift_getWitnessTable();
  v49 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for RCHFlow(v49, v48, v50, v51);
  sub_1DCB17CA0(v63, v71);
  sub_1DCB17CA0(v59, &v70);
  sub_1DCB17CA0(v31, &v69);
  sub_1DCB17CA0(v29, &v68);
  sub_1DCB17CA0(v72, v67);
  v52 = sub_1DCD799A4();
  v53 = swift_unknownObjectRetain();
  v67[0] = sub_1DCEDF000(v53, v67, v52);
  v54 = v64;
  sub_1DCB29E58(v60, v64);
  v55 = v39 + v35[9];
  *(v55 + 32) = 0;
  *v55 = 0u;
  *(v55 + 16) = 0u;
  sub_1DCB29E58(v54, v39 + v35[7]);
  *(v39 + v35[8]) = MEMORY[0x1E69E7CC0];
  sub_1DD0DB03C();
  sub_1DCB29EBC(v54);
  *(v39 + v35[10]) = 0;
  v56 = v66;
  sub_1DCEE4CA4();
}

uint64_t sub_1DCEFAA44(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *__src, uint64_t a7, uint64_t a8)
{
  memcpy(__dst, __src, sizeof(__dst));
  v15 = a4[3];
  v16 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v15);
  v17 = (*(v16 + 96))(v15, v16);
  type metadata accessor for ViewFactory();
  v18 = swift_allocObject();
  *(v18 + 16) = v17 & 1;
  memcpy(v37, __src, 0xB0uLL);
  if (sub_1DCB05840(v37) == 1)
  {
    v19 = sub_1DCB10E5C(0, &qword_1EDE460C0, 0x1E696E880);
    v20 = sub_1DCB10E5C(0, &qword_1EDE461E0, 0x1E696E8A0);
    sub_1DCB83BC0(v30, a2, a3, a4, a5, v19, v20, a7, a8);
  }

  memcpy(v35, __dst, sizeof(v35));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = swift_getAssociatedTypeWitness();
  type metadata accessor for RCHChildFlowFactory(0, AssociatedTypeWitness, v22, v23);
  v24 = RCHChildFlowFactory.__allocating_init(producers:)();
  sub_1DCB17CA0(a2, v32);
  sub_1DCB17CA0(a4, v34);
  sub_1DCB17CA0(a3, v33);
  v25 = type metadata accessor for RCHCommonResponseGenerator();
  swift_allocObject();
  v26 = sub_1DCB84380(v18, v32, v34, v33);
  a1[3] = v25;
  a1[4] = &off_1F586CC30;
  *a1 = v26;
  type metadata accessor for RCHChildFlowProducers(255, AssociatedTypeWitness, v22, v27);
  v28 = sub_1DD0DE97C();
  (*(*(v28 - 8) + 16))(v32, __dst, v28);
  return v24;
}

uint64_t sub_1DCEFACBC()
{
  type metadata accessor for INIntentSlotValueType(0);
  sub_1DCD94D7C();

  return sub_1DD0DDE9C();
}

void sub_1DCEFAD10()
{
  if (qword_1EDE4A110 != -1)
  {
    swift_once();
  }

  sub_1DCB4BA5C();
}

void sub_1DCEFADA0(uint64_t *a1@<X8>)
{
  if (qword_1EDE46628 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDE46630;
  sub_1DCB4E718(v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v3);
  a1[3] = type metadata accessor for RefreshableDeviceState();
  a1[4] = &protocol witness table for RefreshableDeviceState;
  *a1 = v2;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEFAE74()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t ConfirmIntentRejectedBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_1DD0DF1DC();
  MEMORY[0x1E12A7840](v1);
  return sub_1DD0DF20C();
}

uint64_t SiriKitIntentHandler.intentName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t SiriKitIntentHandler.init<A>(app:intentHandler:intent:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v58 = a1;
  v59 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  OUTLINED_FUNCTION_4_97();
  v11 = MEMORY[0x1EEE9AC00](v9, v10);
  v13 = &v55 - v12;
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v55 - v19;
  v21 = a3;
  v22 = [v21 _intentInstanceDescription];
  v23 = [v22 name];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1DD0DDFBC();
    v27 = v26;
  }

  else
  {
    v27 = 0xE700000000000000;
    v25 = 0x4E574F4E4B4E55;
  }

  v28 = [v21 _type];

  if (v28 == 2)
  {

    result = sub_1DCEFCEFC();
  }

  else
  {
    v56 = v17;
    v57 = v4;
    v30 = [v22 responseName];
    if (v30)
    {
      v31 = v30;
      sub_1DD0DDFBC();
    }

    v32 = sub_1DD0DDF8C();

    v33 = INIntentSchemaGetIntentResponseDescriptionWithName();

    if (!v33)
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v35 = sub_1DD0DD8FC();
      v36 = __swift_project_value_buffer(v35, qword_1EDE57E00);
      v37 = *(v35 - 8);
      (*(v37 + 16))(v20, v36, v35);
      __swift_storeEnumTagSinglePayload(v20, 0, 1, v35);
      v38 = v56;
      sub_1DCBCF6C8(v20, v56);
      if (__swift_getEnumTagSinglePayload(v38, 1, v35) == 1)
      {
        sub_1DCB0E9D8(v56, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v43 = sub_1DD0DD8EC();
        v44 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v43, v44))
        {
          v45 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v45 = 136315650;
          v46 = sub_1DD0DEC3C();
          v48 = sub_1DCB10E9C(v46, v47, &v60);

          *(v45 + 4) = v48;
          *(v45 + 12) = 2048;
          *(v45 + 14) = 106;
          *(v45 + 22) = 2080;
          *(v45 + 24) = sub_1DCB10E9C(0xD000000000000021, 0x80000001DD121C00, &v60);
          _os_log_impl(&dword_1DCAFC000, v43, v44, "FatalError at %s:%lu - %s", v45, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v37 + 8))(v56, v35);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000021, 0x80000001DD121C00);
    }

    if (![v33 facadeClass])
    {
      if (qword_1EDE4F900 != -1)
      {
        OUTLINED_FUNCTION_1_2();
        swift_once();
      }

      v39 = sub_1DD0DD8FC();
      v40 = __swift_project_value_buffer(v39, qword_1EDE57E00);
      v41 = *(v39 - 8);
      (*(v41 + 16))(v13, v40, v39);
      __swift_storeEnumTagSinglePayload(v13, 0, 1, v39);
      v42 = v57;
      sub_1DCBCF6C8(v13, v57);
      if (__swift_getEnumTagSinglePayload(v42, 1, v39) == 1)
      {
        sub_1DCB0E9D8(v57, &unk_1ECCA7470, &qword_1DD0E16E0);
      }

      else
      {
        v49 = sub_1DD0DD8EC();
        v50 = sub_1DD0DE6EC();
        if (os_log_type_enabled(v49, v50))
        {
          v51 = swift_slowAlloc();
          v60 = swift_slowAlloc();
          *v51 = 136315650;
          v52 = sub_1DD0DEC3C();
          v54 = sub_1DCB10E9C(v52, v53, &v60);

          *(v51 + 4) = v54;
          *(v51 + 12) = 2048;
          *(v51 + 14) = 109;
          *(v51 + 22) = 2080;
          *(v51 + 24) = sub_1DCB10E9C(0xD000000000000040, 0x80000001DD121C90, &v60);
          _os_log_impl(&dword_1DCAFC000, v49, v50, "FatalError at %s:%lu - %s", v51, 0x20u);
          swift_arrayDestroy();
          OUTLINED_FUNCTION_80();
          OUTLINED_FUNCTION_80();
        }

        (*(v41 + 8))(v57, v39);
      }

      static SiriKitLifecycle._logCrashToEventBus(_:)(0xD000000000000040, 0x80000001DD121C90);
    }

    result = swift_getObjCClassMetadata();
  }

  v34 = v59;
  *a4 = v58;
  a4[1] = v25;
  a4[2] = v27;
  a4[3] = v34;
  a4[4] = v22;
  a4[5] = result;
  return result;
}

uint64_t SiriKitIntentHandler.debugDescription.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0xD000000000000021, 0x80000001DD121CE0);
  MEMORY[0x1E12A6780](v1, v2);
  MEMORY[0x1E12A6780](0xD000000000000010, 0x80000001DD121D10);
  swift_getObjectType();
  v3 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v3);

  MEMORY[0x1E12A6780](0x203A444970706120, 0xE800000000000000);
  v4 = sub_1DD0DD1BC();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 4999502;
    v6 = 0xE300000000000000;
  }

  MEMORY[0x1E12A6780](v4, v6);

  MEMORY[0x1E12A6780](41, 0xE100000000000000);
  return 0;
}

void RCHFlowDelegate.makeLaunchAppCommandViewBehavior(app:intent:intentResolutionResult:intentResponse:executionStep:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, void (*a6)(void **), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = *a5;
  if (qword_1EDE4F908 != -1)
  {
    swift_once();
  }

  v15 = qword_1EDE57E18;
  v16 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("Synchronous makeLaunchAppCommandViewBehavior() is deprecated, please adopt async counterpart in your flow delegate", 114, 2, &dword_1DCAFC000, v15, v16, MEMORY[0x1E69E7CC0]);
  LOBYTE(v19) = v14;
  (*(a9 + 208))(&v21, a1, a2, a3, a4, &v19, a8, a9);
  v19 = v21;
  v20 = v22;
  a6(&v19);
  v17 = v19;

  sub_1DCCD86E4(v17);
}

double RCHFlowDelegate.extractParameterValue(intent:parameterName:)@<D0>(void *a1@<X0>, _OWORD *a4@<X8>, uint64_t x1_0@<X1>, unint64_t x2_0@<X2>)
{
  swift_getAssociatedTypeWitness();

  return sub_1DCD938C8(a1, a4, x1_0, x2_0);
}

uint64_t RCHFlowDelegate.applyParameterValue(value:intent:parameterName:applicationStrategy:_:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(void *, void), uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1DCB0DF6C(a1, v17);
  swift_getAssociatedTypeWitness();
  sub_1DCD93B8C(a2, a3, a4, v17, a5, a6 & 1);
  sub_1DCB0E9D8(v17, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  return a7(a2, 0);
}

uint64_t RCHFlowDelegate.resetParameterValue(intent:parameterName:multicardinalIndex:_:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t (*a5)(void *, void), uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_getAssociatedTypeWitness();
  sub_1DCD94B88(a1, a2, a3, a4);
  return a5(a1, 0);
}

Swift::Bool __swiftcall RCHFlowDelegate.shouldExecuteOnCompanionDevice()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v2 = MEMORY[0x1EEE9AC00](v0 - 8, v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v18 - v6;
  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v8 = sub_1DD0DD8FC();
  v9 = __swift_project_value_buffer(v8, qword_1EDE57E00);
  v10 = *(v8 - 8);
  (*(v10 + 16))(v7, v9, v8);
  __swift_storeEnumTagSinglePayload(v7, 0, 1, v8);
  sub_1DCBCF6C8(v7, v4);
  if (__swift_getEnumTagSinglePayload(v4, 1, v8) == 1)
  {
    sub_1DCB0E9D8(v4, &unk_1ECCA7470, &qword_1DD0E16E0);
  }

  else
  {
    v11 = sub_1DD0DD8EC();
    v12 = sub_1DD0DE6EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v13 = 136315650;
      v14 = sub_1DD0DEC3C();
      v16 = sub_1DCB10E9C(v14, v15, &v19);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2048;
      *(v13 + 14) = 420;
      *(v13 + 22) = 2080;
      *(v13 + 24) = sub_1DCB10E9C(0xD00000000000004ALL, 0x80000001DD121DB0, &v19);
      _os_log_impl(&dword_1DCAFC000, v11, v12, "FatalError at %s:%lu - %s", v13, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_80();
      OUTLINED_FUNCTION_80();
    }

    (*(v10 + 8))(v4, v8);
  }

  static SiriKitLifecycle._logCrashToEventBus(_:)(0xD00000000000004ALL, 0x80000001DD121DB0);
}

void sub_1DCEFBF00()
{
  v1 = *v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA4820, &unk_1DD0ECCB0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v8 - v4;
  type metadata accessor for DucTemplatingService(0, *(v1 + 80), *(v1 + 88), v6);
  v7 = type metadata accessor for DucTemplatingLocalContext(0);
  __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
  sub_1DCEFACBC();
  sub_1DCEFAD10();
}

uint64_t sub_1DCEFC04C(int a1, int a2, uint64_t a3, uint64_t a4, id a5, void (*a6)(void))
{
  v7 = [a5 disambiguationItems];
  v8 = sub_1DD0DE2EC();

  v9 = sub_1DCC345FC(v8);
  v10 = v9;
  v11 = *(v8 + 16);
  if (v11)
  {
    v19 = v9;
    v20 = a6;
    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1DD0DED0C();
    v13 = 0;
    v14 = v8 + 32;
    while (v13 < *(v8 + 16))
    {
      ++v13;
      sub_1DCB0DF6C(v14, v21);
      sub_1DD0DEDBC();
      type metadata accessor for SiriKitDisambiguationItemComponent.Builder();
      swift_initStackObject();
      sub_1DCF9DFA8(0, 0xE000000000000000);
      v15 = sub_1DCF9E130();

      swift_initStackObject();
      sub_1DCF9DFA8(0xD000000000000035, 0x80000001DD121E20);
      v16 = sub_1DCF9E130();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2600, &qword_1DD0E1660);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_1DD0E97E0;
      *(v17 + 32) = v15;
      *(v17 + 40) = v16;
      type metadata accessor for SiriKitDisambiguationItem();
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)(v17, 0, 0xE000000000000000, 0);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      sub_1DD0DECDC();
      sub_1DD0DED1C();
      sub_1DD0DED2C();
      result = sub_1DD0DECEC();
      v14 += 32;
      if (v11 == v13)
      {

        v18 = v22;
        a6 = v20;
        v10 = v19;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
LABEL_7:
    type metadata accessor for SiriKitDisambiguationList();
    swift_allocObject();
    SiriKitDisambiguationList.init(rawItems:disambiguationItems:shouldReadItemsInVox:requestUnlockForEmptyOrDuplicateItems:)(v10, v18, 1, 0);
    a6();
  }

  return result;
}

void sub_1DCEFC398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, void (*a6)(void **))
{
  LOBYTE(v9) = *a5;
  (*(*v6 + 216))(&v11, a1, a2, a3, a4, &v9);
  v9 = v11;
  v10 = v12;
  a6(&v9);
  v8 = v9;

  sub_1DCCD86E4(v8);
}

uint64_t sub_1DCEFC43C(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB29E58(a1, v7);
  v8 = 0;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
      v11 = *(v3 + 80);
      v12 = *(*&v7[*(v10 + 48)] + 16);
      v8 = sub_1DCB3BACC(v11, v11);

      sub_1DD0DC76C();
      OUTLINED_FUNCTION_2();
      (*(v13 + 8))(v7);
      break;
    case 0xAu:
      return v8;
    default:
      sub_1DCB29EBC(v7);
      v8 = 0;
      break;
  }

  return v8;
}

uint64_t sub_1DCEFC5C4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t (*a7)(void *, void))
{
  sub_1DCB0DF6C(a1, v14);
  sub_1DCD93B8C(a2, a3, a4, v14, a5, a6 & 1);
  sub_1DCB0E9D8(v14, &dword_1ECCA3CE0, &unk_1DD0E4F80);
  return a7(a2, 0);
}

uint64_t sub_1DCEFC6E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5, v6);
  OUTLINED_FUNCTION_4_97();
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v16 - v9;
  sub_1DCB29E58(a1, &v16 - v9);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1DCB29EBC(v10);
    sub_1DCB29E58(a1, v2);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      objc_opt_self();
      if (swift_dynamicCastObjCClass())
      {
        result = swift_unknownObjectRelease();
        v13 = 2;
        goto LABEL_8;
      }

      objc_opt_self();
      v15 = swift_dynamicCastObjCClass();
      result = swift_unknownObjectRelease();
      if (v15)
      {
        v13 = 3;
        goto LABEL_8;
      }
    }

    else
    {
      result = sub_1DCB29EBC(v2);
    }

    v13 = 0;
    goto LABEL_8;
  }

  v11 = *&v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
  sub_1DD0DC76C();
  OUTLINED_FUNCTION_2();
  (*(v12 + 8))(v10);
  v13 = *(v11 + 24);

LABEL_8:
  *a2 = v13;
  return result;
}

uint64_t sub_1DCEFC884@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DCB29E58(a1, v7);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v8 = *&v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60) + 48)];
    sub_1DD0DC76C();
    OUTLINED_FUNCTION_2();
    (*(v9 + 8))(v7);
    v10 = *(v8 + 24);
  }

  else
  {
    result = sub_1DCB29EBC(v7);
    v10 = 0;
  }

  *a2 = v10;
  return result;
}

double sub_1DCEFC9B0@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1DCEFCAD4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 160))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCEFCB1C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 168))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCEFCB88@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 184))();
  *a1 = result;
  return result;
}

uint64_t sub_1DCEFCBF4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 200))();
  *a1 = result;
  return result;
}

unint64_t sub_1DCEFCEFC()
{
  result = qword_1EDE461E0;
  if (!qword_1EDE461E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE461E0);
  }

  return result;
}

unint64_t sub_1DCEFCF44()
{
  result = qword_1ECCA9870;
  if (!qword_1ECCA9870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9870);
  }

  return result;
}

unint64_t sub_1DCEFCF9C()
{
  result = qword_1ECCA9878;
  if (!qword_1ECCA9878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9878);
  }

  return result;
}

unint64_t sub_1DCEFCFF4()
{
  result = qword_1ECCA9880;
  if (!qword_1ECCA9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9880);
  }

  return result;
}

unint64_t sub_1DCEFD04C()
{
  result = qword_1ECCA9888;
  if (!qword_1ECCA9888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9888);
  }

  return result;
}

void destroy for LaunchAppBehavior(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

uint64_t sub_1DCEFD134(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 < 0xFFFFFFFFuLL)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
  }

  else
  {
    *a1 = v3;
    *(a1 + 8) = *(a2 + 8);
    v4 = v3;
  }

  return a1;
}

uint64_t assignWithCopy for LaunchAppBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *a2;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    if (v5 >= 0xFFFFFFFF)
    {
      *a1 = v5;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 9) = *(a2 + 9);
      v7 = v5;
      return a1;
    }

LABEL_7:
    v8 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *a1 = v8;
    return a1;
  }

  if (v5 < 0xFFFFFFFF)
  {

    goto LABEL_7;
  }

  *a1 = v5;
  v6 = v5;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t assignWithTake for LaunchAppBehavior(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (*a1 < 0xFFFFFFFFuLL)
  {
    goto LABEL_5;
  }

  if (*a2 < 0xFFFFFFFFuLL)
  {

LABEL_5:
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    return a1;
  }

  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);
  *(a1 + 9) = *(a2 + 9);
  return a1;
}

uint64_t getEnumTagSinglePayload for LaunchAppBehavior(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 10))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LaunchAppBehavior(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1DCEFD360(uint64_t result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

_BYTE *sub_1DCEFD398(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ConfirmIntentRejectedBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

void destroy for SiriKitIntentHandler(uint64_t a1)
{

  v2 = *(a1 + 32);
}

void initializeWithCopy for SiriKitIntentHandler(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v2;
  v3 = *(a2 + 24);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = v3;
  *(a1 + 32) = *(a2 + 32);
  sub_1DD0DCF8C();
}

uint64_t assignWithTake for SiriKitIntentHandler(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 8) = *(a2 + 8);

  v4 = *(a1 + 24);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 32) = *(a2 + 32);
  return a1;
}

void RCHFlowFactory.makeAppResolvingRCHFlow()(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  OUTLINED_FUNCTION_0_1();
  v6 = v5;
  v9 = MEMORY[0x1EEE9AC00](v7, v8);
  v11 = v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for RCHFlowAsync(0, v4, *(v9 + 24), v12);
  (*(v6 + 16))(v11, v2, v4);
  sub_1DCB17CA0(v2 + *(a1 + 40), v14);
  type metadata accessor for EnvironmentSummoner();
  swift_initStaticObject();
  sub_1DCB837D4();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEFE110(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void sub_1DCEFE1C4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8);
  v6 = *(v5 + 64);
  if ((*(v5 + 80) & 0x1000F8) == 0 && ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16 <= 0x18)
  {
    (*(v5 + 16))(a1, a2);
    v8 = ((a2 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    v9 = ((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v9 = *v8;
    v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
    v11 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
    *(v10 + 24) = *(v11 + 24);
    *(v10 + 32) = *(v11 + 32);
    sub_1DD0DCF8C();
  }

  *a1 = *a2;
  sub_1DD0DCF8C();
}

void sub_1DCEFE34C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  *(v9 + 24) = *(v10 + 24);
  *(v9 + 32) = *(v10 + 32);
  sub_1DD0DCF8C();
}

void sub_1DCEFE44C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  *((*(v5 + 40) + 7 + a1) & 0xFFFFFFFFFFFFFFF8) = *((*(v5 + 40) + 7 + a2) & 0xFFFFFFFFFFFFFFF8);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCEFE514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = v6 + a1;
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  v7 &= 0xFFFFFFFFFFFFFFF8;
  *v7 = *v8;
  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = *v10;
  v11 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v12;
  *(v9 + 16) = v11;
  *((v9 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 47) & 0xFFFFFFFFFFFFFFF8);
  return a1;
}

uint64_t sub_1DCEFE5C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;

  v9 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  v11 = *v10;
  v12 = *(v10 + 16);
  *(v9 + 32) = *(v10 + 32);
  *v9 = v11;
  *(v9 + 16) = v12;
  *((v9 + 47) & 0xFFFFFFFFFFFFFFF8) = *((v10 + 47) & 0xFFFFFFFFFFFFFFF8);

  return a1;
}

uint64_t sub_1DCEFE684(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return __swift_getEnumTagSinglePayload(result, v5, v4);
    }
  }

  else
  {
    v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
    v9 = a2 - v7;
    v10 = v8 & 0xFFFFFFF8;
    if ((v8 & 0xFFFFFFF8) != 0)
    {
      v11 = 2;
    }

    else
    {
      v11 = v9 + 1;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1DCEFE7D0(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v8 >= a3)
  {
    v14 = 0;
  }

  else
  {
    v11 = a3 - v8;
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_32;
        }

        break;
      case 3:
LABEL_43:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_31;
      default:
LABEL_31:
        if (a2)
        {
LABEL_32:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((((((v9 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 47) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_43;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1DCEFE9B4()
{
  v0 = sub_1DD0DDDBC();
  OUTLINED_FUNCTION_9();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v7 = v6 - v5;
  sub_1DCB10E5C(0, &qword_1EDE461B0, 0x1E69E9610);
  (*(v2 + 104))(v7, *MEMORY[0x1E69E7F88], v0);
  v8 = sub_1DD0DE7AC();
  v9 = OUTLINED_FUNCTION_86();
  v10(v9);
  return v8;
}

void sub_1DCEFEAA8()
{
  OUTLINED_FUNCTION_50();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = type metadata accessor for Parse(0);
  v9 = OUTLINED_FUNCTION_99(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v9, v14);
  v15 = type metadata accessor for WithDispatchSemaphoreTimeout(0);
  v16 = OUTLINED_FUNCTION_20_0(v15);
  MEMORY[0x1EEE9AC00](v16, v17);
  OUTLINED_FUNCTION_16();
  v20 = (v19 - v18);
  sub_1DD0DEEAC();
  if ((v34[0] & 1) == 0)
  {
    *v20 = 10;
    v25 = *MEMORY[0x1E69E7F48];
    sub_1DD0DDD8C();
    OUTLINED_FUNCTION_2();
    (*(v26 + 104))(v20, v25);
    OUTLINED_FUNCTION_12_57();
    sub_1DCF05E90(v5, &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)]);
    v27 = (*(v11 + 80) + 40) & ~*(v11 + 80);
    v28 = swift_allocObject();
    v30 = *(v1 + 80);
    v29 = *(v1 + 88);
    v28[2] = v30;
    v28[3] = v29;
    v28[4] = v7;
    sub_1DCF0A1DC(&v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)], v28 + v27);
    *(v28 + ((v13 + v27 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
    OUTLINED_FUNCTION_95_7();
    swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_76_1();
    v31 = sub_1DD0DE97C();
    swift_unknownObjectRetain();
    v32 = v3;
    v33 = sub_1DCEFE9B4();
    sub_1DD0D91A0(v33, sub_1DCF0A234, v28, v31);
  }

  if (qword_1EDE4F900 != -1)
  {
    OUTLINED_FUNCTION_1_2();
    swift_once();
  }

  v21 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v21, qword_1EDE57E00);
  v22 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6EC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_1DCAFC000, v22, v23, "Calling RCHFlowDelegate.makeIntentFromParse from deprecated RCHFlowFrame. Note the time out guard previously surrounding this call was removed due to risk of deadlock (see rdar://79777131). Please migrate off of RCHFlowFrame.", v24, 2u);
    OUTLINED_FUNCTION_80();
  }

  (*(*(v1 + 88) + 240))(v5, v3, *(v1 + 80));
  OUTLINED_FUNCTION_49();
}

void *RCHFlowFrameResult.intentResponse.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *RCHFlowFrameResult.childIntent.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t RCHFlowFrameResult.init(intent:intentResponse:resolvedApp:childIntent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t sub_1DCEFF010@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for RCHFlowFrame.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCEFF0BC(uint64_t a1)
{
  OUTLINED_FUNCTION_59();
  v4 = *(v3 + 152);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for RCHFlowFrame.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t RCHFlowFrame.__allocating_init(delegate:appResolutionState:parameterMetadata:intent:)()
{
  v2 = OUTLINED_FUNCTION_52_26();
  v3 = OUTLINED_FUNCTION_90_0();
  RCHFlowFrame.init(delegate:appResolutionState:parameterMetadata:intent:)(v3, v4, v1, v0);
  return v2;
}

uint64_t *RCHFlowFrame.init(delegate:appResolutionState:parameterMetadata:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v9 = *v4;
  OUTLINED_FUNCTION_68_18();
  v4[2] = v10;
  v4[3] = v11;
  bzero(v4 + 5, 0xC8uLL);
  v4[4] = a1;
  if (!a4)
  {
    swift_unknownObjectRetain();
    sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
    swift_unknownObjectRelease();

LABEL_10:
    OUTLINED_FUNCTION_66();
    OUTLINED_FUNCTION_80_12(v20, *(v9 + 80), *(v9 + 88), v21);
    goto LABEL_11;
  }

  if (!a3)
  {
    swift_unknownObjectRetain();
    sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
    swift_unknownObjectRelease();

    goto LABEL_10;
  }

  sub_1DCB099BC(a2, &v23, &qword_1ECCA4988, &qword_1DD100F00);
  if (!v24)
  {
    swift_unknownObjectRetain();
    sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
    swift_unknownObjectRelease();

    sub_1DCB16DB0(&v23, &qword_1ECCA4988, &qword_1DD100F00);
    goto LABEL_10;
  }

  sub_1DCAFF9E8(&v23, v25);
  v12 = qword_1EDE4F908;
  swift_unknownObjectRetain();
  v13 = a4;
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v14 = qword_1EDE57E18;
  v15 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("RCHFlowFrame initialized with input. Transitioning to receivedInitialInput state", 80, 2, &dword_1DCAFC000, v14, v15, MEMORY[0x1E69E7CC0]);
  swift_unknownObjectRelease();

  sub_1DCB16DB0(a2, &qword_1ECCA4988, &qword_1DD100F00);
  OUTLINED_FUNCTION_66();
  v17 = v4 + *(v16 + 152);
  *v17 = v13;
  v17[8] = 0;
  *(v17 + 2) = a3;
  v18 = sub_1DCAFF9E8(v25, (v17 + 24));
  OUTLINED_FUNCTION_80_12(v18, *(v9 + 80), *(v9 + 88), v19);
LABEL_11:
  swift_storeEnumTagMultiPayload();
  return v4;
}

void RCHFlowFrame.init(delegate:initialInput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_50();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  OUTLINED_FUNCTION_66();
  v29 = v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9890, &qword_1DD100F08);
  OUTLINED_FUNCTION_20_0(v30);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &a9 - v33;
  v35 = type metadata accessor for SiriKitFlowFrameInput(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v36, v37);
  OUTLINED_FUNCTION_16();
  v40 = v39 - v38;
  OUTLINED_FUNCTION_68_18();
  v23[2] = v41;
  v23[3] = v42;
  bzero(v23 + 5, 0xC8uLL);
  v23[4] = v27;
  sub_1DCB099BC(v25, v34, &qword_1ECCA9890, &qword_1DD100F08);
  if (__swift_getEnumTagSinglePayload(v34, 1, v35) == 1)
  {
    v43 = OUTLINED_FUNCTION_131();
    sub_1DCB16DB0(v43, v44, &qword_1DD100F08);
    v45 = OUTLINED_FUNCTION_44_23();
    v47 = sub_1DCB16DB0(v45, v46, &qword_1DD100F08);
LABEL_8:
    OUTLINED_FUNCTION_80_12(v47, *(v29 + 80), *(v29 + 88), v48);
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_14_54();
  v49 = OUTLINED_FUNCTION_44_23();
  sub_1DCF0A1DC(v49, v50);
  swift_unknownObjectRetain();
  sub_1DCEFEAA8();
  if (!v51)
  {
    swift_unknownObjectRelease();
    sub_1DCB16DB0(v25, &qword_1ECCA9890, &qword_1DD100F08);
    OUTLINED_FUNCTION_13_62();
    v47 = sub_1DCF0A2E8(v40, v61);
    goto LABEL_8;
  }

  v52 = v51;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v53 = qword_1EDE57E18;
  v54 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("RCHFlowFrame initialized with input. Transitioning to receivedInitialDirectInput state", 86, 2, &dword_1DCAFC000, v53, v54, MEMORY[0x1E69E7CC0]);
  swift_unknownObjectRelease();
  sub_1DCB16DB0(v25, &qword_1ECCA9890, &qword_1DD100F08);
  v55 = v23 + *(*v23 + 152);
  v58 = v29 + 80;
  v56 = *(v29 + 80);
  v57 = *(v58 + 8);
  OUTLINED_FUNCTION_95_7();
  swift_getAssociatedTypeWitness();
  v59 = *(swift_getTupleTypeMetadata2() + 48);
  OUTLINED_FUNCTION_14_54();
  sub_1DCF0A1DC(v40, v55);
  *(v55 + v59) = v52;
  type metadata accessor for RCHFlowFrame.State(0, v56, v57, v60);
LABEL_9:
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_49();
}

uint64_t RCHFlowFrame.__allocating_init(delegate:initialIntent:parameterMetadata:resolvedApp:)()
{
  v2 = OUTLINED_FUNCTION_52_26();
  v3 = OUTLINED_FUNCTION_90_0();
  RCHFlowFrame.init(delegate:initialIntent:parameterMetadata:resolvedApp:)(v3, v4, v1, v0);
  return v2;
}

uint64_t *RCHFlowFrame.init(delegate:initialIntent:parameterMetadata:resolvedApp:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  OUTLINED_FUNCTION_68_18();
  v4[2] = v10;
  v4[3] = v11;
  bzero(v4 + 5, 0xC8uLL);
  v4[4] = a1;
  v12 = qword_1EDE4F908;
  swift_unknownObjectRetain();
  if (v12 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v13 = qword_1EDE57E18;
  v14 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("RCHFlowFrame initialized with input and resolved app. Transitioning to appResolutionComplete", 92, 2, &dword_1DCAFC000, v13, v14, MEMORY[0x1E69E7CC0]);
  swift_unknownObjectRelease();
  OUTLINED_FUNCTION_66();
  v16 = v4 + *(v15 + 152);
  *v16 = a2;
  v16[8] = 0;
  *(v16 + 2) = a3;
  *(v16 + 3) = a4;
  OUTLINED_FUNCTION_80_12(v17, *(v9 + 80), *(v9 + 88), v18);
  swift_storeEnumTagMultiPayload();
  return v4;
}

void sub_1DCEFF8CC()
{
  OUTLINED_FUNCTION_50();
  v76 = v2;
  v77 = v1;
  OUTLINED_FUNCTION_104();
  v73 = v4;
  v74 = v3;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v5, v6);
  v78 = v71 - v7;
  v8 = OUTLINED_FUNCTION_12();
  type metadata accessor for Parse(v8);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_16();
  v13 = (v12 - v11);
  OUTLINED_FUNCTION_104();
  v15 = *(v14 + 80);
  OUTLINED_FUNCTION_104();
  v18 = type metadata accessor for RCHFlowFrame.State(0, v15, *(v16 + 88), v17);
  OUTLINED_FUNCTION_9();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21, v22);
  OUTLINED_FUNCTION_10_2();
  v25 = v23 - v24;
  v28 = MEMORY[0x1EEE9AC00](v26, v27);
  v72 = v71 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  OUTLINED_FUNCTION_65_14();
  sub_1DCEFF010(v0);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v31 = *v0;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v32 = qword_1EDE57E18;
    v33 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("RCHFlowFrame onInput called but while waiting for resolve/confirm to complete. Attempting to parse input.", 105, 2, &dword_1DCAFC000, v32, v33, MEMORY[0x1E69E7CC0]);
    v34 = v31;
    v35 = v74;
    sub_1DCEFEAA8();
    v37 = v36;

    if (v37)
    {
      v38 = sub_1DD0DE6DC();
      sub_1DD0DD7EC("RCHFlowFrame delegate was able to understand the input. Will replan with new intent.", 84, 2, &dword_1DCAFC000, v32, v38, MEMORY[0x1E69E7CC0]);
      OUTLINED_FUNCTION_12_57();
      sub_1DCF05E90(v35, v13);
      OUTLINED_FUNCTION_105();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v71[1] = v32;
      v73 = v37;
      if (EnumCaseMultiPayload == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        sub_1DD0DC76C();
        OUTLINED_FUNCTION_13_1();
        (*(v40 + 8))(v13);
      }

      else
      {
        OUTLINED_FUNCTION_10_65();
        sub_1DCF0A2E8(v13, v61);
        v62 = v34;
        sub_1DCD91F74();
      }

      v63 = type metadata accessor for SiriKitFlowFrameInput(0);
      sub_1DCB17D04(v35 + *(v63 + 28), v79);
      __swift_project_boxed_opaque_existential_1(v79, v79[3]);
      sub_1DD0DCF8C();
    }

    v55 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("RCHFlowFrame onInput received new input while waiting for resolve/confirm to complete but delegate was not able to make an intent from the provided parse. Declining to handle input.", 181, 2, &dword_1DCAFC000, v32, v55, MEMORY[0x1E69E7CC0]);
    v56 = *MEMORY[0x1E699F738];
    sub_1DD0DB34C();
    OUTLINED_FUNCTION_2();
    v57 = OUTLINED_FUNCTION_90_11();
    v58(v57, v56);
    OUTLINED_FUNCTION_59_20();
    v59 = OUTLINED_FUNCTION_106_5();
    v60(v59);

    goto LABEL_22;
  }

  v13 = *(v20 + 8);
  (v13)(v0, v18);
  sub_1DCEFF010(v25);
  v41 = swift_getEnumCaseMultiPayload();
  (v13)(v25, v18);
  if (v41 != 10)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v53 = qword_1EDE57E18;
    v54 = sub_1DD0DE6DC();
    sub_1DD0DD7EC("RCHFlowFrame onInput called but not in started state. Declining to handle input.", 80, 2, &dword_1DCAFC000, v53, v54, MEMORY[0x1E69E7CC0]);
    goto LABEL_21;
  }

  sub_1DCEFEAA8();
  if (!v42)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v64 = qword_1EDE57E18;
    v65 = sub_1DD0DE6EC();
    sub_1DD0DD7EC("RCHFlowFrame onInput called in started state but delegate was not able to make an intent from the provided parse. Declining to handle input.", 140, 2, &dword_1DCAFC000, v64, v65, MEMORY[0x1E69E7CC0]);
LABEL_21:
    v66 = *MEMORY[0x1E699F738];
    sub_1DD0DB34C();
    OUTLINED_FUNCTION_2();
    v67 = OUTLINED_FUNCTION_90_11();
    v68(v67, v66);
    OUTLINED_FUNCTION_59_20();
    v69 = OUTLINED_FUNCTION_106_5();
    v70(v69);
    goto LABEL_22;
  }

  v43 = v42;
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v44 = qword_1EDE57E18;
  v45 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("RCHFlowFrame received input. Transitioning to receivedInitialDirectInput state", 78, 2, &dword_1DCAFC000, v44, v45, MEMORY[0x1E69E7CC0]);
  type metadata accessor for SiriKitFlowFrameInput(255);
  OUTLINED_FUNCTION_94_7();
  swift_getAssociatedTypeWitness();
  v46 = *(swift_getTupleTypeMetadata2() + 48);
  v13 = v72;
  sub_1DCF05E90(v74, v72);
  *&v13[v46] = v43;
  swift_storeEnumTagMultiPayload();
  v47 = v43;
  sub_1DCEFF0BC(v13);
  v48 = *MEMORY[0x1E699F740];
  sub_1DD0DB34C();
  OUTLINED_FUNCTION_2();
  v49 = OUTLINED_FUNCTION_90_11();
  v50(v49, v48);
  OUTLINED_FUNCTION_59_20();
  v51 = OUTLINED_FUNCTION_106_5();
  v52(v51);

LABEL_22:
  sub_1DCB16DB0(v13, &unk_1ECCA9BE0, &qword_1DD0E9590);
  OUTLINED_FUNCTION_49();
}

void sub_1DCF0014C()
{
  OUTLINED_FUNCTION_50();
  v250 = v1;
  v251 = v2;
  v245 = type metadata accessor for SiriKitFlowFrameInput(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3, v4);
  OUTLINED_FUNCTION_16();
  v243 = (v6 - v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCAAB70, &qword_1DD0E17E0);
  OUTLINED_FUNCTION_20_0(v7);
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v8, v9);
  v242 = (&v234 - v10);
  v11 = OUTLINED_FUNCTION_12();
  v12 = type metadata accessor for Parse(v11);
  v13 = OUTLINED_FUNCTION_20_0(v12);
  MEMORY[0x1EEE9AC00](v13, v14);
  OUTLINED_FUNCTION_16();
  v239 = v16 - v15;
  v17 = OUTLINED_FUNCTION_12();
  v238 = type metadata accessor for Input(v17);
  OUTLINED_FUNCTION_9();
  v240 = v18;
  v20 = *(v19 + 64);
  v23 = MEMORY[0x1EEE9AC00](v21, v22);
  v237 = &v234 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v23, v24);
  v241 = (&v234 - v26);
  MEMORY[0x1EEE9AC00](v25, v27);
  v29 = &v234 - v28;
  type metadata accessor for SiriKitEventPayload(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v30, v31);
  OUTLINED_FUNCTION_16();
  v34 = (v33 - v32);
  v248 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_10();
  MEMORY[0x1EEE9AC00](v35, v36);
  v249 = &v234 - v37;
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  v39 = *(v38 + 88);
  v244 = v40;
  v41 = v39;
  v43 = type metadata accessor for RCHFlowFrame.State(0, v40, v39, v42);
  OUTLINED_FUNCTION_9();
  v45 = v44;
  MEMORY[0x1EEE9AC00](v46, v47);
  OUTLINED_FUNCTION_10_2();
  v246 = (v48 - v49);
  MEMORY[0x1EEE9AC00](v50, v51);
  v53 = &v234 - v52;
  v252 = v0;
  sub_1DCEFF010(&v234 - v52);
  v247 = v43;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v108 = *&v53[*(swift_getTupleTypeMetadata2() + 48)];
      OUTLINED_FUNCTION_14_54();
      v109 = v53;
      v110 = v243;
      sub_1DCF0A1DC(v109, v243);
      v234 = v108;
      v111 = sub_1DCF041B8(v108);
      v235 = AssociatedTypeWitness;
      if (v111)
      {
        v113 = v252;
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_22_36();
        v115 = sub_1DD0DD7EC(v114);
        OUTLINED_FUNCTION_115_7(v115, v116, &qword_1ECCA35F8, &qword_1DD0E97A0);
        v236 = v41;
        if (v260)
        {
          OUTLINED_FUNCTION_85_10();
          v168 = v266;
          __swift_project_boxed_opaque_existential_1(v264, v265);
          type metadata accessor for SiriKitEvent(0);
          v34[1] = 0;
          v34[2] = 0;
          v169 = v234;
          *v34 = v234;
          swift_storeEnumTagMultiPayload();
          v249 = v169;
          SiriKitEvent.__allocating_init(_:builder:)(v34, 0);
          (*(v168 + 8))();

          sub_1DCB099BC((v113 + 5), &v259, &qword_1ECCA1BF0, &qword_1DD100F20);
          if (v260)
          {
            OUTLINED_FUNCTION_117_5();
            v170 = v235;
            sub_1DCB099BC((v113 + 15), &v259, &qword_1ECCA8AB0, &qword_1DD0E23E0);
            if (v260)
            {
              OUTLINED_FUNCTION_116_7();
              sub_1DCB099BC((v113 + 25), v256, &qword_1ECCA98A0, &qword_1DD100F28);
              if (v257)
              {
                OUTLINED_FUNCTION_120_2();
                v210 = v236;
                v211 = v244;
                v212 = swift_getAssociatedTypeWitness();
                v213 = OUTLINED_FUNCTION_76_16();
                v248 = v212;
                sub_1DCB83BC0(v213, v214, v215, v216, v217, v170, v212, v211, v210);
              }

              sub_1DCB82888();
            }

            if (qword_1EDE46628 != -1)
            {
              OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
            }

            sub_1DCB4E718(v258);
            OUTLINED_FUNCTION_23_27();
            v200 = type metadata accessor for RefreshableDeviceState();
            OUTLINED_FUNCTION_20_28(v200, &protocol witness table for RefreshableDeviceState);
            sub_1DD0DCF8C();
          }

          if (qword_1EDE4A110 != -1)
          {
            OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
          }

          sub_1DCB4BA5C();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v167 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_40_25(v167, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        v229 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_40_25(v229, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_83_10(v111, v112, &qword_1ECCA8AB0, &qword_1DD0E23E0);
      if (v260)
      {
        sub_1DCAFF9E8(&v259, v255);
        sub_1DCB099BC((v45 + 20), &v259, qword_1ECCA98A8, &unk_1DD100F40);
        if (v260)
        {
          OUTLINED_FUNCTION_85_10();
        }

        else
        {
          sub_1DCF05A20(v258);
          sub_1DCB17D04(v255, v264);
          type metadata accessor for ResolveConfirmHandleExecutor();
          swift_allocObject();
          OUTLINED_FUNCTION_69_5();
          v242 = &v234;
          OUTLINED_FUNCTION_0_1();
          MEMORY[0x1EEE9AC00](v186, v187);
          OUTLINED_FUNCTION_16();
          v189 = OUTLINED_FUNCTION_73_11(v188);
          v190(v189);
          __swift_mutable_project_boxed_opaque_existential_1(v264, v265);
          OUTLINED_FUNCTION_0_1();
          MEMORY[0x1EEE9AC00](v191, v192);
          OUTLINED_FUNCTION_16();
          v194 = OUTLINED_FUNCTION_33_23(v193);
          v195(v194);
          v45 = v252;
          v110 = v243;
          sub_1DCF4BC1C();
          __swift_destroy_boxed_opaque_existential_1Tm(v264);
          __swift_destroy_boxed_opaque_existential_1Tm(v258);
          OUTLINED_FUNCTION_12();
          v196 = type metadata accessor for ResolveConfirmHandleService();
          OUTLINED_FUNCTION_40_25(v196, &off_1F5871428);
          if (v260)
          {
            sub_1DCB16DB0(&v259, qword_1ECCA98A8, &unk_1DD100F40);
          }
        }

        v197 = sub_1DCF0594C(v263);
        OUTLINED_FUNCTION_115_7(v197, v198, &qword_1ECCA35F8, &qword_1DD0E97A0);
        if (v260)
        {
          OUTLINED_FUNCTION_116_7();
          sub_1DCB099BC((v45 + 25), v256, &qword_1ECCA98A0, &qword_1DD100F28);
          if (v257)
          {
            OUTLINED_FUNCTION_120_2();
            sub_1DCB82380(&v259);
            v220 = OUTLINED_FUNCTION_53_17();
            memcpy(v220, v221, 0xB0uLL);
            v233 = v244;
            v222 = OUTLINED_FUNCTION_81_7();
            sub_1DCEFA388(v222, v223, v224, v225, v226, v110, v234, v258, v233, v41, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
          }

          sub_1DCB82888();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v202 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_20_28(v202, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        v231 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_20_28(v231, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
      }

      sub_1DCB4E718(v258);
      OUTLINED_FUNCTION_23_27();
      v172 = type metadata accessor for RefreshableDeviceState();
      OUTLINED_FUNCTION_50_17(v172, &protocol witness table for RefreshableDeviceState);
    case 2u:
    case 4u:
    case 7u:
      v54 = v45[1];
      v54(v53, v247);
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      v245 = qword_1EDE57E18;
      sub_1DD0DE6EC();
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
      v56 = OUTLINED_FUNCTION_32_6(v55);
      *(v56 + 16) = xmmword_1DD0E07C0;
      *&v259 = 0;
      *(&v259 + 1) = 0xE000000000000000;
      v57 = v246;
      sub_1DCEFF010(v246);
      OUTLINED_FUNCTION_30_13();
      sub_1DD0DF07C();
      v58 = OUTLINED_FUNCTION_30_13();
      (v54)(v58);
      v59 = v259;
      *(v56 + 56) = MEMORY[0x1E69E6158];
      *(v56 + 64) = sub_1DCB34060();
      *(v56 + 32) = v59;
      sub_1DD0DD7EC("RCHFlowFrame in an unexpected state (%s). Transitioning to error.", v234);

      *&v259 = 0;
      *(&v259 + 1) = 0xE000000000000000;
      sub_1DD0DEC1C();
      OUTLINED_FUNCTION_57_0();
      MEMORY[0x1E12A6780](0xD000000000000023);
      sub_1DCEFF010(v57);
      OUTLINED_FUNCTION_30_13();
      sub_1DD0DF07C();
      v60 = OUTLINED_FUNCTION_30_13();
      (v54)(v60);
      v61 = *(&v259 + 1);
      v62 = type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_42_25(v62);
      v63 = OUTLINED_FUNCTION_24_30();
      v65 = CommandFailure.init(errorCode:reason:)(v63, v64, v61);
      sub_1DCC7AE30();
      v66 = OUTLINED_FUNCTION_19_40();
      *v67 = v65;
      *v57 = v66;
      OUTLINED_FUNCTION_30_13();
      swift_storeEnumTagMultiPayload();
      sub_1DD0DCF8C();
    case 3u:
      v84 = *v53;
      v86 = *(v53 + 2);
      v85 = *(v53 + 3);
      v87 = sub_1DCF041B8(v84);
      if (v87)
      {
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC(v89);
        v90 = v246;
        *v246 = v84;
        v90[1] = v85;
        swift_storeEnumTagMultiPayload();
        v91 = v84;
        sub_1DD0DCF8C();
      }

      v243 = v86;
      OUTLINED_FUNCTION_83_10(v87, v88, &qword_1ECCA8AB0, &qword_1DD0E23E0);
      if (v260)
      {
        sub_1DCAFF9E8(&v259, v255);
        v117 = v41;
        v133 = *(v86 + 4);
        sub_1DCB099BC((v86 + 160), &v259, qword_1ECCA98A8, &unk_1DD100F40);
        if (v260)
        {
          OUTLINED_FUNCTION_85_10();
        }

        else
        {
          sub_1DCF05A20(v258);
          sub_1DCB17D04(v255, v264);
          type metadata accessor for ResolveConfirmHandleExecutor();
          v134 = swift_allocObject();
          v242 = v133;
          v239 = v134;
          v240 = v258[4];
          __swift_mutable_project_boxed_opaque_existential_1(v258, v258[3]);
          v241 = &v234;
          OUTLINED_FUNCTION_0_1();
          MEMORY[0x1EEE9AC00](v135, v136);
          OUTLINED_FUNCTION_16();
          v138 = OUTLINED_FUNCTION_33_23(v137);
          v139(v138);
          __swift_mutable_project_boxed_opaque_existential_1(v264, v265);
          OUTLINED_FUNCTION_0_1();
          MEMORY[0x1EEE9AC00](v140, v141);
          OUTLINED_FUNCTION_16();
          (*(v144 + 16))(v143 - v142);
          sub_1DCF4BC1C();
          __swift_destroy_boxed_opaque_existential_1Tm(v264);
          v86 = v252;
          __swift_destroy_boxed_opaque_existential_1Tm(v258);
          OUTLINED_FUNCTION_12();
          v145 = type metadata accessor for ResolveConfirmHandleService();
          OUTLINED_FUNCTION_40_25(v145, &off_1F5871428);
          if (v260)
          {
            sub_1DCB16DB0(&v259, qword_1ECCA98A8, &unk_1DD100F40);
          }
        }

        v146 = sub_1DCF0594C(v263);
        OUTLINED_FUNCTION_115_7(v146, v147, &qword_1ECCA35F8, &qword_1DD0E97A0);
        if (v260)
        {
          OUTLINED_FUNCTION_116_7();
          sub_1DCB099BC((v86 + 200), v256, &qword_1ECCA98A0, &qword_1DD100F28);
          if (v257)
          {
            OUTLINED_FUNCTION_120_2();
            sub_1DCB82380(&v259);
            v149 = OUTLINED_FUNCTION_53_17();
            memcpy(v149, v150, 0xB0uLL);
            v232 = v244;
            v151 = OUTLINED_FUNCTION_81_7();
            sub_1DCEF9964(v151, v152, v153, v154, v155, v85, 1, v84, v243, v258, v232, v117, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
          }

          sub_1DCB82888();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v148 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_20_28(v148, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        v227 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_20_28(v227, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
      }

      sub_1DCB4E718(v258);
      OUTLINED_FUNCTION_23_27();
      v132 = type metadata accessor for RefreshableDeviceState();
      OUTLINED_FUNCTION_50_17(v132, &protocol witness table for RefreshableDeviceState);
    case 5u:
      v92 = *v53;
      v93 = *(v53 + 1);
      v94 = *(v53 + 7);
      sub_1DCAFF9E8(v53 + 1, &v259);
      if (v94)
      {
        sub_1DD0DCF8C();
      }

      v118 = v250;
      v119 = v249;
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC(v120);
      v121 = v246;
      *v246 = v92;
      *(v121 + 8) = 0;
      v121[2] = v93;
      sub_1DCB17D04(&v259, (v121 + 3));
      swift_storeEnumTagMultiPayload();
      v122 = v92;
      v123 = OUTLINED_FUNCTION_104_6();
      sub_1DCEFF0BC(v123);
      sub_1DD0DB2FC();
      swift_storeEnumTagMultiPayload();
      v118(v119);

      sub_1DCB16DB0(v119, &qword_1ECCA9BF0, &qword_1DD0EA250);
      __swift_destroy_boxed_opaque_existential_1Tm(&v259);
      goto LABEL_122;
    case 6u:
      v74 = *v53;
      v75 = v53[8];
      v76 = *(v53 + 2);
      v77 = *(v53 + 3);
      v78 = *(v53 + 4);
      switch(v75)
      {
        case 1:
        case 3:
          if (qword_1EDE4F908 != -1)
          {
            OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
          }

          v79 = qword_1EDE57E18;
          v80 = sub_1DD0DE6DC();
          sub_1DD0DD7EC("RCHFlowFrame received a confirmation state indicating to stop processing (reject or cancelled)", 94, 2, &dword_1DCAFC000, v79, v80, MEMORY[0x1E69E7CC0]);
          v81 = v246;
          *v246 = v74;
          *(v81 + 8) = v75;
          v81[2] = v76;
          v81[3] = v77;
          v81[4] = v78;
          swift_storeEnumTagMultiPayload();
          v82 = v78;
          v83 = v74;
          sub_1DD0DCF8C();
        case 2:
          v245 = *(v53 + 4);
          if (qword_1EDE4F908 != -1)
          {
            OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
          }

          sub_1DD0DE6DC();
          OUTLINED_FUNCTION_22_36();
          sub_1DD0DD7EC(v128);
          v129 = v246;
          *v246 = v74;
          *(v129 + 8) = 2;
          v129[2] = v76;
          v129[3] = v77;
          swift_storeEnumTagMultiPayload();
          v130 = v77;
          v131 = v74;
          sub_1DD0DCF8C();
        default:
          if (qword_1EDE4F908 != -1)
          {
            OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
          }

          sub_1DD0DE6EC();
          OUTLINED_FUNCTION_22_36();
          sub_1DD0DD7EC(v124);
          v125 = type metadata accessor for CommandFailure();
          OUTLINED_FUNCTION_42_25(v125);
          CommandFailure.init(errorCode:reason:)(-1, 0xD000000000000053, 0x80000001DD1224A0);
          sub_1DCC7AE30();
          v126 = OUTLINED_FUNCTION_19_40();
          OUTLINED_FUNCTION_88_12(v126, v127);
          sub_1DD0DCF8C();
      }

    case 8u:
      (v45[1])(v53, v247);
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC(v100);
      v101 = v249;
      sub_1DD0DB32C();
      OUTLINED_FUNCTION_87_9(v101);
      v250(v101);
      v99 = v101;
      goto LABEL_21;
    case 9u:
      v68 = *v53;
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC(v69);
      v70 = v249;
      *v249 = v68;
      swift_storeEnumTagMultiPayload();
      v71 = v68;
      v72 = OUTLINED_FUNCTION_71_13();
      v73(v72);

      v99 = v70;
LABEL_21:
      sub_1DCB16DB0(v99, &qword_1ECCA9BF0, &qword_1DD0EA250);
LABEL_122:
      OUTLINED_FUNCTION_49();
      return;
    case 0xAu:
      if (qword_1EDE4F908 != -1)
      {
        OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
      }

      sub_1DD0DE6EC();
      OUTLINED_FUNCTION_22_36();
      sub_1DD0DD7EC(v95);
      v96 = type metadata accessor for CommandFailure();
      OUTLINED_FUNCTION_42_25(v96);
      CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000003ELL, 0x80000001DD122640);
      sub_1DCC7AE30();
      v97 = OUTLINED_FUNCTION_19_40();
      OUTLINED_FUNCTION_88_12(v97, v98);
      sub_1DD0DCF8C();
    default:
      v102 = *v53;

      sub_1DCAFF9E8((v53 + 24), v255);
      v103 = sub_1DCF041B8(v102);
      if (v103)
      {
        v105 = v252;
        if (qword_1EDE4F908 != -1)
        {
          OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC(v106);
        sub_1DCB099BC((v105 + 10), &v259, &qword_1ECCA35F8, &qword_1DD0E97A0);
        v236 = v41;
        if (v260)
        {
          OUTLINED_FUNCTION_85_10();
          v157 = v266;
          __swift_project_boxed_opaque_existential_1(v264, v265);
          type metadata accessor for SiriKitEvent(0);
          v34[1] = 0;
          v34[2] = 0;
          *v34 = v102;
          swift_storeEnumTagMultiPayload();
          v158 = v102;
          SiriKitEvent.__allocating_init(_:builder:)(v34, 0);
          (*(v157 + 8))();

          v159 = v236;
          v160 = swift_getAssociatedTypeWitness();
          v161 = v239;
          v249 = v158;
          sub_1DCE2C528(v255, v158, v239);
          v162 = v238;
          v163 = &v29[*(v238 + 28)];
          *(v163 + 4) = 0;
          *v163 = 0u;
          *(v163 + 1) = 0u;
          OUTLINED_FUNCTION_12_57();
          sub_1DCF05E90(v161, &v29[v164]);
          *&v29[*(v162 + 24)] = MEMORY[0x1E69E7CC0];
          sub_1DD0DB03C();
          OUTLINED_FUNCTION_10_65();
          sub_1DCF0A2E8(v161, v165);
          v29[*(v162 + 32)] = 0;
          v166 = v252;
          sub_1DCB099BC((v252 + 5), &v259, &qword_1ECCA1BF0, &qword_1DD100F20);
          if (v260)
          {
            OUTLINED_FUNCTION_117_5();
            sub_1DCB099BC((v166 + 15), &v259, &qword_1ECCA8AB0, &qword_1DD0E23E0);
            if (v260)
            {
              OUTLINED_FUNCTION_116_7();
              sub_1DCB099BC((v166 + 25), v256, &qword_1ECCA98A0, &qword_1DD100F28);
              if (v257)
              {
                OUTLINED_FUNCTION_120_2();
                v203 = v244;
                v204 = swift_getAssociatedTypeWitness();
                v205 = OUTLINED_FUNCTION_76_16();
                v248 = v204;
                sub_1DCB83BC0(v205, v206, v207, v208, v209, v160, v204, v203, v159);
              }

              sub_1DCB82888();
            }

            if (qword_1EDE46628 != -1)
            {
              OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
            }

            sub_1DCB4E718(v258);
            OUTLINED_FUNCTION_23_27();
            v199 = type metadata accessor for RefreshableDeviceState();
            OUTLINED_FUNCTION_20_28(v199, &protocol witness table for RefreshableDeviceState);
            sub_1DD0DCF8C();
          }

          if (qword_1EDE4A110 != -1)
          {
            OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
          }

          sub_1DCB4BA5C();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v156 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_40_25(v156, &off_1F5873940);
          sub_1DD0DCF8C();
        }

        OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        v228 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_40_25(v228, &off_1F5873940);
        sub_1DD0DCF8C();
      }

      OUTLINED_FUNCTION_83_10(v103, v104, &qword_1ECCA8AB0, &qword_1DD0E23E0);
      v243 = v102;
      if (v260)
      {
        OUTLINED_FUNCTION_85_10();
        sub_1DCB099BC((v45 + 20), &v259, qword_1ECCA98A8, &unk_1DD100F40);
        if (v260)
        {
          OUTLINED_FUNCTION_117_5();
        }

        else
        {
          sub_1DCF05A20(v258);
          sub_1DCB17D04(v264, v263);
          type metadata accessor for ResolveConfirmHandleExecutor();
          swift_allocObject();
          OUTLINED_FUNCTION_69_5();
          v242 = &v234;
          OUTLINED_FUNCTION_0_1();
          MEMORY[0x1EEE9AC00](v173, v174);
          OUTLINED_FUNCTION_16();
          v176 = OUTLINED_FUNCTION_73_11(v175);
          v177(v176);
          __swift_mutable_project_boxed_opaque_existential_1(v263, v263[3]);
          OUTLINED_FUNCTION_0_1();
          MEMORY[0x1EEE9AC00](v178, v179);
          OUTLINED_FUNCTION_16();
          v181 = OUTLINED_FUNCTION_33_23(v180);
          v182(v181);
          v45 = v252;
          sub_1DCF4BC1C();
          __swift_destroy_boxed_opaque_existential_1Tm(v263);
          __swift_destroy_boxed_opaque_existential_1Tm(v258);
          OUTLINED_FUNCTION_12();
          v183 = type metadata accessor for ResolveConfirmHandleService();
          OUTLINED_FUNCTION_36_33(v183, &off_1F5871428);
          if (v260)
          {
            sub_1DCB16DB0(&v259, qword_1ECCA98A8, &unk_1DD100F40);
          }
        }

        v184 = sub_1DCF0594C(v262);
        OUTLINED_FUNCTION_115_7(v184, v185, &qword_1ECCA35F8, &qword_1DD0E97A0);
        if (v260)
        {
          sub_1DCAFF9E8(&v259, v261);
          sub_1DCB099BC((v45 + 25), &v253, &qword_1ECCA98A0, &qword_1DD100F28);
          if (v254)
          {
            sub_1DCAFF9E8(&v253, v256);
            sub_1DCB82380(&v259);
            v218 = OUTLINED_FUNCTION_53_17();
            memcpy(v218, v219, 0xB0uLL);
            sub_1DCEFA794(v263, v262, v261, v264, v256, v243, v255, v258, v244, v41, v234, v235, v236, v237, v238, v239, v240, v241, v242, v243, v244, v245);
          }

          sub_1DCB82888();
        }

        if (qword_1EDE4F6A8 == -1)
        {
          v201 = type metadata accessor for RefreshableSiriKitEventSending();
          OUTLINED_FUNCTION_113_5(v201, &off_1F5873940);
        }

        OUTLINED_FUNCTION_0(&qword_1EDE4F6A8);
        v230 = type metadata accessor for RefreshableSiriKitEventSending();
        OUTLINED_FUNCTION_113_5(v230, &off_1F5873940);
      }

      if (qword_1EDE46628 != -1)
      {
        OUTLINED_FUNCTION_58_0(&qword_1EDE46628);
      }

      sub_1DCB4E718(v258);
      OUTLINED_FUNCTION_23_27();
      v171 = type metadata accessor for RefreshableDeviceState();
      OUTLINED_FUNCTION_40_25(v171, &protocol witness table for RefreshableDeviceState);
      sub_1DD0DCF8C();
  }
}

uint64_t sub_1DCF03070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v14;
  v8[3] = a7;
  v8[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = sub_1DCF0316C;

  return sub_1DCEB7328(a5, a6, 0);
}

uint64_t sub_1DCF0316C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF03254()
{
  OUTLINED_FUNCTION_57_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9A30, qword_1DD101158);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF03414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[4] = a8;
  v8[5] = v14;
  v8[3] = a7;
  v8[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = sub_1DCF03510;

  return sub_1DCEB7328(a5, a6, 0);
}

uint64_t sub_1DCF03510()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 72) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF035F8()
{
  OUTLINED_FUNCTION_57_16();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9A30, qword_1DD101158);
  swift_allocObject();
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF03880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v8[12] = v11;
  v8[13] = v12;
  v8[10] = a7;
  v8[11] = a8;
  v8[8] = a5;
  v8[9] = a6;
  v8[7] = a4;
  v8[14] = *a7;
  v8[15] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9BF0, &qword_1DD0EA250);
  v8[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DCF0395C, 0, 0);
}

void sub_1DCF0395C()
{
  v1 = v0[14];
  v2 = v0[9];
  v0[17] = *(v1 + 80);
  v0[18] = *(v1 + 88);
  v3 = OUTLINED_FUNCTION_86();
  IntentResolutionRecord.init(app:intent:intentResponse:)(v3, v4, v2, v5);
  v0[19] = v6;
  v0[20] = v7;
  v0[21] = v8;
  v0[2] = v6;
  v0[3] = v7;
  v0[4] = v8;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF03A5C()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();
  OUTLINED_FUNCTION_15_1();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = v3;

  v4 = OUTLINED_FUNCTION_15_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

void sub_1DCF03B44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4[18];
  v6 = v4[17];
  v4[5] = v4[23];
  v7 = type metadata accessor for HandleIntentFlowResult(255, v6, v5, a4);
  type metadata accessor for AnyValueFlow(0, v7, v8, v9);
  swift_getWitnessTable();
  sub_1DCD1AC74();
  v4[6] = v10;
  sub_1DCF03D1C();
}

void sub_1DCF03D9C()
{
  OUTLINED_FUNCTION_50();
  v2 = v1;
  v4 = type metadata accessor for RCHFlowFrame.State(0, *(*v0 + 80), *(*v0 + 88), v3);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = (&v47 - v15);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = (&v47 - v18);
  sub_1DCEFF010(&v47 - v18);
  OUTLINED_FUNCTION_44_23();
  if (swift_getEnumCaseMultiPayload() == 9)
  {
    v20 = *v19;
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    sub_1DD0DE6EC();
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v22 = OUTLINED_FUNCTION_32_6(v21);
    OUTLINED_FUNCTION_61_20(v22, xmmword_1DD0E07C0);
    swift_getErrorValue();
    v23 = sub_1DD0DF18C();
    v25 = v24;
    v22[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v22[4].n128_u64[0] = sub_1DCB34060();
    v22[2].n128_u64[0] = v23;
    v22[2].n128_u64[1] = v25;
    sub_1DD0DD7EC("RCHFlowFrame exiting with an error: %s", v47);

    *v2 = v20;
LABEL_12:
    *(v2 + 8) = 0;
    *(v2 + 16) = 0;
    *(v2 + 24) = 0;
    *(v2 + 32) = 1;
    goto LABEL_13;
  }

  v26 = *(v6 + 8);
  v27 = OUTLINED_FUNCTION_44_23();
  v26(v27);
  sub_1DCEFF010(v16);
  if (swift_getEnumCaseMultiPayload() != 8)
  {
    (v26)(v16, v4);
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    v48 = qword_1EDE57E18;
    v33 = sub_1DD0DE6EC();
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v35 = OUTLINED_FUNCTION_32_6(v34);
    OUTLINED_FUNCTION_35_29(v35, xmmword_1DD0E07C0);
    sub_1DCEFF010(v11);
    OUTLINED_FUNCTION_90_0();
    sub_1DD0DF07C();
    v36 = OUTLINED_FUNCTION_90_0();
    v26(v36);
    v37 = v49;
    v38 = v50;
    v35[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v35[4].n128_u64[0] = sub_1DCB34060();
    v35[2].n128_u64[0] = v37;
    v35[2].n128_u64[1] = v38;
    sub_1DD0DD7EC("RCHFlowFrame exit called but we are not in error or complete state. We should not be in this state: %@", 102, 2, &dword_1DCAFC000, v48, v33, v35);

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD00000000000001FLL);
    sub_1DCEFF010(v11);
    OUTLINED_FUNCTION_90_0();
    sub_1DD0DF07C();
    v39 = OUTLINED_FUNCTION_90_0();
    v26(v39);
    v40 = v50;
    v41 = type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17(v41);
    v42 = OUTLINED_FUNCTION_24_30();
    v44 = CommandFailure.init(errorCode:reason:)(v42, v43, v40);
    sub_1DCC7AE30();
    v45 = swift_allocError();
    *v46 = v44;
    *v2 = v45;
    goto LABEL_12;
  }

  v28 = *v16;
  v29 = v16[2];
  v30 = v16[3];
  v31 = v16[4];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_22_36();
  sub_1DD0DD7EC(v32);
  *v2 = v28;
  *(v2 + 8) = v30;
  *(v2 + 16) = v29;
  *(v2 + 24) = v31;
  *(v2 + 32) = 0;
LABEL_13:
  OUTLINED_FUNCTION_49();
}

BOOL sub_1DCF041B8(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }
  }

  else if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_22_36();
  sub_1DD0DD7EC(v2);
  return v1 != 0;
}

void sub_1DCF04298()
{
  OUTLINED_FUNCTION_50();
  v3 = v0;
  v5 = v4;
  v6 = *(*v3 + 88);
  v74 = *(*v3 + 80);
  v8 = type metadata accessor for RCHFlowFrame.State(0, v74, v6, v7);
  OUTLINED_FUNCTION_9();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  v15 = MEMORY[0x1EEE9AC00](v13, v14);
  v17 = v73 - v16;
  MEMORY[0x1EEE9AC00](v15, v18);
  OUTLINED_FUNCTION_65_14();
  v19 = *v5;
  v75 = v5[1];
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  v20 = qword_1EDE57E18;
  v21 = sub_1DD0DE6DC();
  sub_1DD0DD7EC("RCHFlowFrame received a result from AppResolution", 49, 2, &dword_1DCAFC000, v20, v21, MEMORY[0x1E69E7CC0]);
  sub_1DCEFF010(v1);
  v22 = v8;
  if (swift_getEnumCaseMultiPayload())
  {
    v23 = *(v10 + 8);
    v23(v1, v8);
    LODWORD(v75) = sub_1DD0DE6EC();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v25 = OUTLINED_FUNCTION_32_6(v24);
    OUTLINED_FUNCTION_35_29(v25, xmmword_1DD0E07C0);
    sub_1DCEFF010(v17);
    OUTLINED_FUNCTION_105();
    sub_1DD0DF07C();
    v26 = OUTLINED_FUNCTION_105();
    (v23)(v26);
    v27 = v76;
    v28 = v77;
    v25[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v25[4].n128_u64[0] = sub_1DCB34060();
    v25[2].n128_u64[0] = v27;
    v25[2].n128_u64[1] = v28;
    sub_1DD0DD7EC("RCHFlowFrame onAppResolution called but we should not be in this state: %@", 74, 2, &dword_1DCAFC000, v20, v75, v25);

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD00000000000001FLL);
    sub_1DCEFF010(v2);
    sub_1DD0DF07C();
    v23(v2, v8);
    v29 = v77;
    v30 = type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17(v30);
    v31 = OUTLINED_FUNCTION_24_30();
    v33 = CommandFailure.init(errorCode:reason:)(v31, v32, v29);
    v34 = sub_1DCC7AE30();
    v35 = OUTLINED_FUNCTION_79_0(v34);
    *v36 = v33;
    *v17 = v35;
    OUTLINED_FUNCTION_105();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_119_2();
  }

  else
  {
    v37 = *v1;
    v38 = *(v1 + 8);
    v39 = *(v1 + 16);
    __swift_destroy_boxed_opaque_existential_1Tm((v1 + 24));
    v40 = v19;
    switch(v19 >> 62)
    {
      case 1uLL:
        v73[0] = v37;
        v73[1] = v22;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v56 = OUTLINED_FUNCTION_32_6(v55);
        *(v56 + 16) = xmmword_1DD0E07C0;
        v57 = sub_1DD0DD1CC();
        v59 = v58;
        *(v56 + 56) = MEMORY[0x1E69E6158];
        *(v56 + 64) = sub_1DCB34060();
        *(v56 + 32) = v57;
        *(v56 + 40) = v59;
        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v60 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        sub_1DD0DD7EC("RCHFlowFrame app resolution successfully resolved app %s", v73[0]);

        swift_getAssociatedTypeWitness();
        v61 = v75;
        v62 = swift_dynamicCastUnknownClass();
        if (v62)
        {
          *v17 = v62;
          v17[8] = v38;
          *(v17 + 2) = v39;
          *(v17 + 3) = v19 & 0x3FFFFFFFFFFFFFFFLL;
          swift_storeEnumTagMultiPayload();
          v63 = v61;
          sub_1DD0DCF8C();
        }

        v67 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC(v68);

        v69 = type metadata accessor for CommandFailure();
        OUTLINED_FUNCTION_42_25(v69);
        v70 = CommandFailure.init(errorCode:reason:)(-1, 0xD00000000000002FLL, 0x80000001DD122D50);
        sub_1DCC7AE30();
        v71 = swift_allocError();
        *v72 = v70;
        *v17 = v71;
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_119_2();

        break;
      case 2uLL:

        if (v75)
        {
          sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
          v49 = sub_1DD0DE93C();
          sub_1DD0DE70C();
          OUTLINED_FUNCTION_22_36();
          sub_1DD0DD7EC(v50);

          sub_1DD0DD1FC();
          v51 = v37;
          OUTLINED_FUNCTION_43_1();
          v52 = sub_1DD0DD1AC();
          *v17 = v51;
          v17[8] = 0;
          goto LABEL_11;
        }

        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v64 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC(v65);

        *v17 = v19 & 0x3FFFFFFFFFFFFFFFLL;
        OUTLINED_FUNCTION_86();
        swift_storeEnumTagMultiPayload();
        v66 = (v19 & 0x3FFFFFFFFFFFFFFFLL);
        OUTLINED_FUNCTION_119_2();

        break;
      case 3uLL:

        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v53 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC(v54);

        sub_1DD0DD1FC();
        v51 = v37;
        OUTLINED_FUNCTION_43_1();
        v52 = sub_1DD0DD1AC();
        *v17 = v51;
        v17[8] = 1;
LABEL_11:
        *(v17 + 3) = 0;
        *(v17 + 4) = 0;
        *(v17 + 2) = v52;
        OUTLINED_FUNCTION_86();
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_119_2();

        break;
      default:
        v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
        v42 = OUTLINED_FUNCTION_32_6(v41);
        *(v42 + 16) = xmmword_1DD0E07C0;
        v43 = sub_1DD0DD1CC();
        v45 = v44;
        *(v42 + 56) = MEMORY[0x1E69E6158];
        *(v42 + 64) = sub_1DCB34060();
        *(v42 + 32) = v43;
        *(v42 + 40) = v45;
        sub_1DCB10E5C(0, &qword_1EDE4F8F0, 0x1E69E9BF8);
        v46 = sub_1DD0DE93C();
        sub_1DD0DE70C();
        OUTLINED_FUNCTION_22_36();
        sub_1DD0DD7EC(v47);

        *v17 = v37;
        v17[8] = v38;
        *(v17 + 2) = v39;
        *(v17 + 3) = v40;
        swift_storeEnumTagMultiPayload();
        v48 = v37;
        sub_1DCBF4C98(v40, v75);
        sub_1DCEFF0BC(v17);

        break;
    }
  }

  OUTLINED_FUNCTION_49();
}

void sub_1DCF04A48()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_74_16();
  type metadata accessor for RCHFlowFrame.State(0, *(v4 + 80), *(v5 + 88), v6);
  OUTLINED_FUNCTION_9();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9, v10);
  OUTLINED_FUNCTION_10_2();
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_39_26();
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v59 - v15;
  v17 = *v1;
  v18 = *(v1 + 24);
  v59 = *(v1 + 16);
  v60 = v17;
  v19 = *(v1 + 32);
  v20 = *(v1 + 40);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC(v21);
  if (v20)
  {
    sub_1DD0DE6EC();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v23 = OUTLINED_FUNCTION_32_6(v22);
    OUTLINED_FUNCTION_61_20(v23, xmmword_1DD0E07C0);
    v24 = v60;
    swift_getErrorValue();
    v25 = sub_1DD0DF18C();
    v27 = v26;
    v23[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1DCB34060();
    v23[2].n128_u64[0] = v25;
    v23[2].n128_u64[1] = v27;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC(v28);

    *v16 = v24;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    v29 = v24;
  }

  else
  {
    sub_1DCEFF010(v3);
    OUTLINED_FUNCTION_63_0();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v30 = *(v3 + 8);

      if ((v18 & 0x100) == 0)
      {
        if (v19)
        {
          v31 = v19;
          sub_1DD0DE6DC();
          OUTLINED_FUNCTION_6_1();
          sub_1DD0DD7EC(v32);
          v33 = v59;
          *v16 = v60;
          v16[8] = v18;
          *(v16 + 2) = v30;
          *(v16 + 3) = v33;
          *(v16 + 4) = v19;
          OUTLINED_FUNCTION_131();
          swift_storeEnumTagMultiPayload();
          v34 = v33;
          sub_1DD0DCF8C();
        }

        sub_1DD0DE6DC();
        OUTLINED_FUNCTION_6_1();
        sub_1DD0DD7EC(v55);
        switch(v18)
        {
          case 1:
          case 2:
          case 3:
            v56 = sub_1DD0DF0AC();

            if (v56)
            {
              goto LABEL_15;
            }

            goto LABEL_16;
          default:

LABEL_15:
            sub_1DD0DE6DC();
            OUTLINED_FUNCTION_6_1();
            sub_1DD0DD7EC(v57);
LABEL_16:
            OUTLINED_FUNCTION_96_9();
            *(v16 + 4) = 0;
            OUTLINED_FUNCTION_131();
            swift_storeEnumTagMultiPayload();
            v58 = v8;
            sub_1DD0DCF8C();
        }
      }

      sub_1DD0DE6DC();
      OUTLINED_FUNCTION_6_1();
      sub_1DD0DD7EC(v52);
      OUTLINED_FUNCTION_96_9();
      *(v16 + 4) = v19;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      v53 = v19;
      v54 = v0;
      sub_1DD0DCF8C();
    }

    v35 = v8[1];
    v36 = OUTLINED_FUNCTION_63_0();
    v35(v36);
    LODWORD(v60) = sub_1DD0DE6EC();
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v38 = OUTLINED_FUNCTION_32_6(v37);
    OUTLINED_FUNCTION_35_29(v38, xmmword_1DD0E07C0);
    sub_1DCEFF010(v16);
    OUTLINED_FUNCTION_131();
    sub_1DD0DF07C();
    v39 = OUTLINED_FUNCTION_131();
    v35(v39);
    v40 = v61;
    v41 = v62;
    v38[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v38[4].n128_u64[0] = sub_1DCB34060();
    v38[2].n128_u64[0] = v40;
    v38[2].n128_u64[1] = v41;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC(v42);

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000028);
    sub_1DCEFF010(v2);
    OUTLINED_FUNCTION_44_23();
    sub_1DD0DF07C();
    v43 = OUTLINED_FUNCTION_44_23();
    v35(v43);
    v44 = v62;
    v45 = type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17(v45);
    v46 = OUTLINED_FUNCTION_24_30();
    v48 = CommandFailure.init(errorCode:reason:)(v46, v47, v44);
    v49 = sub_1DCC7AE30();
    v50 = OUTLINED_FUNCTION_79_0(v49);
    *v51 = v48;
    *v16 = v50;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_89_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCF04FBC()
{
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_74_16();
  type metadata accessor for RCHFlowFrame.State(0, *(v2 + 80), *(v3 + 88), v4);
  OUTLINED_FUNCTION_9();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7, v8);
  OUTLINED_FUNCTION_10_2();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12, v13);
  OUTLINED_FUNCTION_39_26();
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = v50 - v16;
  v18 = *v0;
  v19 = *(v0 + 8);
  v20 = *(v0 + 16);
  if (qword_1EDE4F908 != -1)
  {
    OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
  }

  sub_1DD0DE6DC();
  OUTLINED_FUNCTION_6_1();
  sub_1DD0DD7EC(v21);
  if (v20)
  {
    sub_1DD0DE6EC();
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v23 = OUTLINED_FUNCTION_32_6(v22);
    OUTLINED_FUNCTION_61_20(v23, xmmword_1DD0E07C0);
    swift_getErrorValue();
    v24 = sub_1DD0DF18C();
    v26 = v25;
    v23[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v23[4].n128_u64[0] = sub_1DCB34060();
    v23[2].n128_u64[0] = v24;
    v23[2].n128_u64[1] = v26;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC(v27);

    *v17 = v18;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
    v28 = v18;
  }

  else
  {
    sub_1DCEFF010(v1);
    OUTLINED_FUNCTION_63_0();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      v29 = *(v1 + 8);
      v30 = *(v1 + 16);
      v31 = *(v1 + 24);

      *v17 = v18;
      v17[8] = v29;
      *(v17 + 2) = v30;
      *(v17 + 3) = v19;
      *(v17 + 4) = 0;
      OUTLINED_FUNCTION_131();
      swift_storeEnumTagMultiPayload();
      v32 = v18;
      sub_1DD0DCF8C();
    }

    v33 = *(v6 + 8);
    v34 = OUTLINED_FUNCTION_63_0();
    v33(v34);
    v50[3] = sub_1DD0DE6EC();
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA25F0, &unk_1DD0E3370);
    v36 = OUTLINED_FUNCTION_32_6(v35);
    OUTLINED_FUNCTION_35_29(v36, xmmword_1DD0E07C0);
    sub_1DCEFF010(v17);
    OUTLINED_FUNCTION_131();
    sub_1DD0DF07C();
    v37 = OUTLINED_FUNCTION_131();
    v33(v37);
    v38 = v51;
    v39 = v52;
    v36[3].n128_u64[1] = MEMORY[0x1E69E6158];
    v36[4].n128_u64[0] = sub_1DCB34060();
    v36[2].n128_u64[0] = v38;
    v36[2].n128_u64[1] = v39;
    OUTLINED_FUNCTION_6_1();
    sub_1DD0DD7EC(v40);

    OUTLINED_FUNCTION_34_33();
    sub_1DD0DEC1C();
    OUTLINED_FUNCTION_109_5();
    OUTLINED_FUNCTION_57_0();
    MEMORY[0x1E12A6780](0xD000000000000028);
    sub_1DCEFF010(v11);
    OUTLINED_FUNCTION_90_0();
    sub_1DD0DF07C();
    v41 = OUTLINED_FUNCTION_90_0();
    v33(v41);
    v42 = v52;
    v43 = type metadata accessor for CommandFailure();
    OUTLINED_FUNCTION_64_17(v43);
    v44 = OUTLINED_FUNCTION_24_30();
    v46 = CommandFailure.init(errorCode:reason:)(v44, v45, v42);
    v47 = sub_1DCC7AE30();
    v48 = OUTLINED_FUNCTION_79_0(v47);
    *v49 = v46;
    *v17 = v48;
    OUTLINED_FUNCTION_131();
    swift_storeEnumTagMultiPayload();
  }

  OUTLINED_FUNCTION_89_7();
  OUTLINED_FUNCTION_49();
}

void sub_1DCF05370()
{
  OUTLINED_FUNCTION_50();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCA7470, &qword_1DD0E16E0);
  v6 = OUTLINED_FUNCTION_20_0(v5);
  MEMORY[0x1EEE9AC00](v6, v7);
  OUTLINED_FUNCTION_10_2();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11, v12);
  OUTLINED_FUNCTION_65_14();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_6();
  v16 = type metadata accessor for RCHFlowFrame.State(0, v14, *(v13 + 88), v15);
  OUTLINED_FUNCTION_9();
  v52 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  OUTLINED_FUNCTION_10_2();
  v53 = (v20 - v21);
  MEMORY[0x1EEE9AC00](v22, v23);
  OUTLINED_FUNCTION_19_6();
  MEMORY[0x1EEE9AC00](v24, v25);
  OUTLINED_FUNCTION_39_26();
  MEMORY[0x1EEE9AC00](v26, v27);
  v29 = &v52 - v28;
  v31 = *v4;
  v30 = v4[1];
  v32 = v4[2];
  sub_1DCEFF010(&v52 - v28);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v41 = v0;
    v42 = v10;
    (*(v52 + 8))(v29, v16);
    if (qword_1EDE4F900 != -1)
    {
      OUTLINED_FUNCTION_1_2();
      swift_once();
    }

    v43 = sub_1DD0DD8FC();
    v44 = __swift_project_value_buffer(v43, qword_1EDE57E00);
    v45 = *(v43 - 8);
    (*(v45 + 16))(v41, v44, v43);
    __swift_storeEnumTagSinglePayload(v41, 0, 1, v43);
    sub_1DCB099BC(v41, v42, &unk_1ECCA7470, &qword_1DD0E16E0);
    if (__swift_getEnumTagSinglePayload(v42, 1, v43) == 1)
    {
      sub_1DCB16DB0(v42, &unk_1ECCA7470, &qword_1DD0E16E0);
    }

    else
    {
      v46 = sub_1DD0DD8EC();
      v47 = sub_1DD0DE6EC();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v48 = 136315650;
        v49 = sub_1DD0DEC3C();
        v51 = sub_1DCB10E9C(v49, v50, &v54);

        *(v48 + 4) = v51;
        *(v48 + 12) = 2048;
        *(v48 + 14) = 570;
        *(v48 + 22) = 2080;
        *(v48 + 24) = sub_1DCB10E9C(0x7463657078656E55, 0xEF65746174536465, &v54);
        _os_log_impl(&dword_1DCAFC000, v46, v47, "FatalError at %s:%lu - %s", v48, 0x20u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_80();
        OUTLINED_FUNCTION_80();
      }

      (*(v45 + 8))(v42, v43);
    }

    static SiriKitLifecycle._logCrashToEventBus(_:)(0x7463657078656E55, 0xEF65746174536465);
  }

  v33 = *v29;
  v34 = *(v29 + 1);
  if (!(v31 >> 62))
  {
    *v2 = v30;
    *(v2 + 8) = 0;
    *(v2 + 16) = v31;
    *(v2 + 24) = v32;
    *(v2 + 32) = 0;
    OUTLINED_FUNCTION_63_0();
    swift_storeEnumTagMultiPayload();
    v37 = v30;
    sub_1DD0DCF8C();
  }

  if (v31 >> 62 != 1)
  {
    if (v34)
    {
      v38 = v34;
    }

    else
    {
      sub_1DD0DD1FC();
      OUTLINED_FUNCTION_26_6();
      v38 = sub_1DD0DD1AC();
    }

    *v1 = v33;
    *(v1 + 8) = 1;
    *(v1 + 24) = 0;
    *(v1 + 32) = 0;
    *(v1 + 16) = v38;
    OUTLINED_FUNCTION_44_23();
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  if (v30)
  {
    if (qword_1EDE4F908 != -1)
    {
      OUTLINED_FUNCTION_1_5(&qword_1EDE4F908);
    }

    sub_1DD0DE6DC();
    OUTLINED_FUNCTION_22_36();
    sub_1DD0DD7EC(v35);
    if (v34)
    {
      v36 = v34;
    }

    else
    {
      sub_1DD0DD1FC();
      OUTLINED_FUNCTION_26_6();
      v36 = sub_1DD0DD1AC();
    }

    v40 = v53;
    *v53 = v33;
    *(v40 + 8) = 0;
    v40[3] = 0;
    v40[4] = 0;
    v40[2] = v36;
    swift_storeEnumTagMultiPayload();
    sub_1DD0DCF8C();
  }

  *v2 = v31 & 0x3FFFFFFFFFFFFFFFLL;
  OUTLINED_FUNCTION_63_0();
  swift_storeEnumTagMultiPayload();
  v39 = (v31 & 0x3FFFFFFFFFFFFFFFLL);
  sub_1DCEFF0BC(v2);

  OUTLINED_FUNCTION_49();
}

uint64_t sub_1DCF0594C@<X0>(uint64_t *a1@<X8>)
{
  sub_1DCB099BC(v1 + 40, &v4, &qword_1ECCA1BF0, &qword_1DD100F20);
  if (!v5)
  {
    if (qword_1EDE4A110 != -1)
    {
      OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
    }

    sub_1DCB4BA5C();
  }

  return sub_1DCAFF9E8(&v4, a1);
}

uint64_t sub_1DCF05A20@<X0>(uint64_t *a1@<X8>)
{
  sub_1DCB099BC(v1 + 40, &v6, &qword_1ECCA1BF0, &qword_1DD100F20);
  if (!v7)
  {
    sub_1DCB16DB0(&v6, &qword_1ECCA1BF0, &qword_1DD100F20);
    if (qword_1EDE4A110 != -1)
    {
      OUTLINED_FUNCTION_20_1(&qword_1EDE4A110);
    }

    sub_1DCB4BA5C();
  }

  sub_1DCAFF9E8(&v6, v8);
  sub_1DCB17D04(v8, &v6);
  v3 = type metadata accessor for AceServiceInvokerAsyncAdapter();
  v4 = OUTLINED_FUNCTION_55(v3);
  sub_1DCAFF9E8(&v6, v4 + 16);
  a1[3] = v1;
  a1[4] = &off_1F5852030;
  *a1 = v4;
  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

uint64_t RCHFlowFrame.deinit()
{

  swift_unknownObjectRelease();
  sub_1DCB16DB0(v0 + 40, &qword_1ECCA1BF0, &qword_1DD100F20);
  sub_1DCB16DB0(v0 + 80, &qword_1ECCA35F8, &qword_1DD0E97A0);
  sub_1DCB16DB0(v0 + 120, &qword_1ECCA8AB0, &qword_1DD0E23E0);
  sub_1DCB16DB0(v0 + 160, qword_1ECCA98A8, &unk_1DD100F40);
  sub_1DCB16DB0(v0 + 200, &qword_1ECCA98A0, &qword_1DD100F28);
  OUTLINED_FUNCTION_66();
  v2 = *(v1 + 152);
  OUTLINED_FUNCTION_104();
  type metadata accessor for RCHFlowFrame.State(0, v4, *(v3 + 88), v5);
  OUTLINED_FUNCTION_13_1();
  (*(v6 + 8))(v0 + v2);
  return v0;
}

uint64_t RCHFlowFrame.__deallocating_deinit()
{
  RCHFlowFrame.deinit();

  return swift_deallocClassInstance();
}

void sub_1DCF05CE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF05DB8()
{
  OUTLINED_FUNCTION_44_7();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1DCF0A34C;
  OUTLINED_FUNCTION_38_3();

  return sub_1DCF03880(v2, v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1DCF05E90(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCF05EE8()
{
  OUTLINED_FUNCTION_44_7();
  v1 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_99(v1);
  OUTLINED_FUNCTION_25_25();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_30_33(v2);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCF03414(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF05FD4()
{
  OUTLINED_FUNCTION_42();
  OUTLINED_FUNCTION_32_1();

  OUTLINED_FUNCTION_29();

  return v0();
}

uint64_t objectdestroy_3Tm_1()
{
  v2 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_98();
  v4 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v6 = *(v5 + 64);
  swift_unknownObjectRelease();

  sub_1DD0DB04C();
  OUTLINED_FUNCTION_13_1();
  (*(v7 + 8))(v0 + v4);
  v8 = (v0 + v4 + *(v2 + 20));
  type metadata accessor for Parse(0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      sub_1DD0DC76C();
      goto LABEL_5;
    case 1u:
      sub_1DD0DC76C();
      OUTLINED_FUNCTION_13_1();
      (*(v17 + 8))(v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

      break;
    case 2u:

      goto LABEL_17;
    case 3u:
      swift_unknownObjectRelease();
      break;
    case 4u:
      sub_1DD0DB1EC();
      goto LABEL_5;
    case 5u:
      v18 = *v8;
      goto LABEL_23;
    case 6u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v19 + 8))(v8);
      v20 = type metadata accessor for USOParse(0);
      v21 = *(v20 + 20);
      v22 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v22))
      {
        OUTLINED_FUNCTION_112();
        (*(v23 + 8))(v8 + v21, v1);
      }

      v16 = *(v20 + 24);
      goto LABEL_16;
    case 7u:
      sub_1DD0DB4BC();
      OUTLINED_FUNCTION_13_1();
      (*(v10 + 8))(v8);
      v11 = type metadata accessor for USOParse(0);
      v12 = *(v11 + 20);
      v13 = sub_1DD0DB3EC();
      if (!OUTLINED_FUNCTION_12_25(v13))
      {
        OUTLINED_FUNCTION_112();
        (*(v14 + 8))(v8 + v12, v1);
      }

      OUTLINED_FUNCTION_9_23(*(v11 + 24));

      v15 = type metadata accessor for LinkParse(0);
      OUTLINED_FUNCTION_9_23(v15[5]);

      OUTLINED_FUNCTION_9_23(v15[6]);

      v16 = v15[7];
LABEL_16:
      OUTLINED_FUNCTION_9_23(v16);
LABEL_17:

      break;
    case 8u:
      sub_1DD0DD12C();
      OUTLINED_FUNCTION_13_1();
      (*(v24 + 8))(v8);
      v25 = type metadata accessor for NLRouterParse(0);
      OUTLINED_FUNCTION_9_23(v25[5]);

      v26 = v8 + v25[6];
      v27 = type metadata accessor for USOParse(0);
      if (!__swift_getEnumTagSinglePayload(v26, 1, v27))
      {
        sub_1DD0DB4BC();
        OUTLINED_FUNCTION_13_1();
        (*(v28 + 8))(v26);
        v29 = *(v27 + 20);
        v30 = sub_1DD0DB3EC();
        v36 = v29;
        v31 = v26 + v29;
        v32 = v30;
        if (!__swift_getEnumTagSinglePayload(v31, 1, v30))
        {
          OUTLINED_FUNCTION_112();
          (*(v33 + 8))(v26 + v36, v32);
        }
      }

      v18 = *(v8 + v25[7]);
LABEL_23:

      break;
    case 9u:
      sub_1DD0DD08C();
LABEL_5:
      OUTLINED_FUNCTION_13_1();
      (*(v9 + 8))(v8);
      break;
    default:
      break;
  }

  v34 = (v0 + v4 + *(v2 + 28));
  if (v34[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
  }

  return swift_deallocObject();
}

uint64_t sub_1DCF06558()
{
  OUTLINED_FUNCTION_44_7();
  v1 = type metadata accessor for Input(0);
  OUTLINED_FUNCTION_99(v1);
  OUTLINED_FUNCTION_25_25();
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_30_33(v2);
  OUTLINED_FUNCTION_38_3();

  return sub_1DCF03070(v3, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1DCF06644(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

void sub_1DCF06680(uint64_t a1)
{

  v2 = *(a1 + 24);
}

void sub_1DCF066CC(void *a1, uint64_t a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v3;
  v4 = *(a2 + 24);
  a1[2] = *(a2 + 16);
  a1[3] = v4;
  v5 = v2;
  v6 = v3;
  sub_1DD0DCF8C();
}

void sub_1DCF0671C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *a1;
  *a1 = *a2;
  v6 = v4;

  v7 = *(a1 + 8);
  v8 = *(a2 + 8);
  *(a1 + 8) = v8;
  v9 = v8;

  *(a1 + 16) = *(a2 + 16);
  sub_1DD0DCF8C();
}

uint64_t sub_1DCF067A0(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  *a1 = *a2;

  v5 = *(a1 + 24);
  *(a1 + 16) = a2[1];

  return a1;
}

uint64_t sub_1DCF06810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for RCHFlowFrame.State(319, *(a1 + 80), *(a1 + 88), a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DCF069E8(uint64_t a1)
{
  v3[4] = "@";
  result = type metadata accessor for SiriKitFlowFrameInput(319);
  if (v2 <= 0x3F)
  {
    swift_getTupleTypeLayout2();
    v3[5] = v3;
    v3[6] = &unk_1DD1010A8;
    v3[7] = &unk_1DD101110;
    v3[8] = &unk_1DD1010A8;
    v3[9] = "@";
    v3[10] = &unk_1DD101128;
    v3[11] = &unk_1DD101110;
    v3[12] = &unk_1DD101128;
    v3[13] = &unk_1DD1010C0;
    swift_initEnumMetadataMultiPayload();
    return 0;
  }

  return result;
}

char *sub_1DCF06AC4(char *a1, char **a2, uint64_t a3)
{
  if ((*(*(a3 - 8) + 80) & 0x20000) != 0)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v5 = *(a3 - 8);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *a2;
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      *(a1 + 2) = a2[2];
      v7 = *(a2 + 3);
      *(a1 + 3) = v7;
      v8 = v7;
      v9 = **(v7 - 8);
      v10 = v6;

      v9(a1 + 24, a2 + 3, v8);
      goto LABEL_42;
    case 1u:
      v27 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v28 = sub_1DD0DC76C();
          (*(*(v28 - 8) + 16))(a1, a2, v28);
          goto LABEL_40;
        case 1u:
          v51 = sub_1DD0DC76C();
          (*(*(v51 - 8) + 16))(a1, a2, v51);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *&a1[*(v52 + 48)] = *(a2 + *(v52 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v45 = a2[1];
          *a1 = *a2;
          *(a1 + 1) = v45;
          *(a1 + 2) = a2[2];

          goto LABEL_40;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_40;
        case 4u:
          v43 = sub_1DD0DB1EC();
          (*(*(v43 - 8) + 16))(a1, a2, v43);
          goto LABEL_40;
        case 5u:
          v53 = *a2;
          *a1 = *a2;
          v54 = v53;
          goto LABEL_40;
        case 6u:
          v55 = sub_1DD0DB4BC();
          (*(*(v55 - 8) + 16))(a1, a2, v55);
          v56 = type metadata accessor for USOParse(0);
          v57 = v56[5];
          v58 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v57, 1, v58))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v57], a2 + v57, *(*(v59 - 8) + 64));
          }

          else
          {
            (*(*(v58 - 8) + 16))(&a1[v57], a2 + v57, v58);
            __swift_storeEnumTagSinglePayload(&a1[v57], 0, 1, v58);
          }

          v91 = v56[6];
          v92 = &a1[v91];
          v93 = (a2 + v91);
          v94 = v93[1];
          *v92 = *v93;
          *(v92 + 1) = v94;
          v95 = v56[7];
          v96 = &a1[v95];
          v97 = a2 + v95;
          v96[4] = v97[4];
          *v96 = *v97;

          goto LABEL_40;
        case 7u:
          v46 = sub_1DD0DB4BC();
          (*(*(v46 - 8) + 16))(a1, a2, v46);
          v47 = type metadata accessor for USOParse(0);
          v48 = v47[5];
          v49 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v48, 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&a1[v48], a2 + v48, *(*(v50 - 8) + 64));
          }

          else
          {
            (*(*(v49 - 8) + 16))(&a1[v48], a2 + v48, v49);
            __swift_storeEnumTagSinglePayload(&a1[v48], 0, 1, v49);
          }

          v71 = v47[6];
          v72 = &a1[v71];
          v73 = (a2 + v71);
          v74 = v73[1];
          *v72 = *v73;
          *(v72 + 1) = v74;
          v75 = v47[7];
          v76 = &a1[v75];
          v77 = a2 + v75;
          v76[4] = v77[4];
          *v76 = *v77;
          v78 = type metadata accessor for LinkParse(0);
          v79 = v78[5];
          v80 = &a1[v79];
          v81 = (a2 + v79);
          v82 = v81[1];
          *v80 = *v81;
          *(v80 + 1) = v82;
          v83 = v78[6];
          v84 = &a1[v83];
          v85 = (a2 + v83);
          v86 = v85[1];
          *v84 = *v85;
          *(v84 + 1) = v86;
          v87 = v78[7];
          v88 = &a1[v87];
          v89 = (a2 + v87);
          v90 = v89[1];
          *v88 = *v89;
          *(v88 + 1) = v90;

          goto LABEL_40;
        case 8u:
          v60 = sub_1DD0DD12C();
          (*(*(v60 - 8) + 16))(a1, a2, v60);
          v61 = type metadata accessor for NLRouterParse(0);
          v62 = v61[5];
          v63 = &a1[v62];
          v64 = (a2 + v62);
          v65 = v64[1];
          *v63 = *v64;
          *(v63 + 1) = v65;
          v66 = v61[6];
          v67 = &a1[v66];
          v68 = a2 + v66;
          v69 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v68, 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v67, v68, *(*(v70 - 8) + 64));
          }

          else
          {
            v98 = sub_1DD0DB4BC();
            (*(*(v98 - 8) + 16))(v67, v68, v98);
            v99 = v69[5];
            v100 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v68[v99], 1, v100))
            {
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v67[v99], &v68[v99], *(*(v101 - 8) + 64));
            }

            else
            {
              (*(*(v100 - 8) + 16))(&v67[v99], &v68[v99], v100);
              __swift_storeEnumTagSinglePayload(&v67[v99], 0, 1, v100);
            }

            v102 = v69[6];
            v103 = &v67[v102];
            v104 = &v68[v102];
            v105 = *(v104 + 1);
            *v103 = *v104;
            *(v103 + 1) = v105;
            v106 = v69[7];
            v107 = &v67[v106];
            v108 = &v68[v106];
            v107[4] = v108[4];
            *v107 = *v108;

            __swift_storeEnumTagSinglePayload(v67, 0, 1, v69);
          }

          v109 = v61[7];
          v110 = *(a2 + v109);
          *&a1[v109] = v110;
          v111 = v110;
          goto LABEL_40;
        case 9u:
          v44 = sub_1DD0DD08C();
          (*(*(v44 - 8) + 16))(a1, a2, v44);
LABEL_40:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v27 - 8) + 64));
          break;
      }

      v112 = type metadata accessor for SiriKitFlowFrameInput(0);
      a1[v112[5]] = *(a2 + v112[5]);
      *&a1[v112[6]] = *(a2 + v112[6]);
      v113 = v112[7];
      v114 = &a1[v113];
      v115 = a2 + v113;
      v116 = *(a2 + v113 + 24);
      *&a1[v113 + 24] = v116;
      v117 = v116;
      v118 = **(v116 - 8);

      v118(v114, v115, v117);
      swift_getAssociatedTypeWitness();
      v119 = *(swift_getTupleTypeMetadata2() + 48);
      v120 = *(a2 + v119);
      *&a1[v119] = v120;
      v121 = v120;
      goto LABEL_42;
    case 2u:
      v16 = *a2;
      v17 = a2[1];
      *a1 = v16;
      *(a1 + 1) = v17;
      v18 = v16;
      sub_1DD0DCF8C();
    case 3u:
      v19 = *a2;
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      v21 = a2[2];
      v20 = a2[3];
      *(a1 + 2) = v21;
      *(a1 + 3) = v20;
      v22 = v19;

      sub_1DD0DCF8C();
    case 4u:
      v11 = *a2;
      v12 = a2[1];
      *a1 = v11;
      *(a1 + 1) = v12;
      v13 = v11;
      sub_1DD0DCF8C();
    case 5u:
      v29 = *a2;
      v30 = a2[1];
      *a1 = *a2;
      *(a1 + 1) = v30;
      v31 = *(a2 + 5);
      *(a1 + 40) = v31;
      v32 = v31;
      v33 = **(v31 - 8);
      v34 = v29;

      v33(a1 + 16, a2 + 2, v32);
      *(a1 + 7) = a2[7];
      sub_1DD0DCF8C();
    case 6u:
      v35 = *a2;
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      v36 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v36;
      *(a1 + 4) = a2[4];
      v37 = v35;
      sub_1DD0DCF8C();
    case 7u:
      v23 = *a2;
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      v25 = a2[2];
      v24 = a2[3];
      *(a1 + 2) = v25;
      *(a1 + 3) = v24;
      v26 = v23;
      sub_1DD0DCF8C();
    case 8u:
      v40 = *a2;
      *a1 = *a2;
      a1[8] = *(a2 + 8);
      v41 = a2[3];
      *(a1 + 2) = a2[2];
      *(a1 + 3) = v41;
      *(a1 + 4) = a2[4];
      v42 = v40;
      sub_1DD0DCF8C();
    case 9u:
      v14 = *a2;
      v15 = v14;
      *a1 = v14;
LABEL_42:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v38 = *(v5 + 64);

      result = memcpy(a1, a2, v38);
      break;
  }

  return result;
}

void sub_1DCF075E4(uint64_t a1, uint64_t a2)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 24));
      return;
    case 1u:
      type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v4 = sub_1DD0DC76C();
          goto LABEL_20;
        case 1u:
          v8 = sub_1DD0DC76C();
          (*(*(v8 - 8) + 8))(a1, v8);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);

          break;
        case 2u:

          goto LABEL_30;
        case 3u:
          swift_unknownObjectRelease();
          break;
        case 4u:
          v4 = sub_1DD0DB1EC();
          goto LABEL_20;
        case 5u:
          v9 = *a1;
          goto LABEL_36;
        case 6u:
          v10 = sub_1DD0DB4BC();
          (*(*(v10 - 8) + 8))(a1, v10);
          v11 = *(type metadata accessor for USOParse(0) + 20);
          v12 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v11, 1, v12))
          {
            (*(*(v12 - 8) + 8))(a1 + v11, v12);
          }

          goto LABEL_30;
        case 7u:
          v5 = sub_1DD0DB4BC();
          (*(*(v5 - 8) + 8))(a1, v5);
          v6 = *(type metadata accessor for USOParse(0) + 20);
          v7 = sub_1DD0DB3EC();
          if (!__swift_getEnumTagSinglePayload(a1 + v6, 1, v7))
          {
            (*(*(v7 - 8) + 8))(a1 + v6, v7);
          }

          type metadata accessor for LinkParse(0);

LABEL_30:

          break;
        case 8u:
          v13 = sub_1DD0DD12C();
          (*(*(v13 - 8) + 8))(a1, v13);
          v14 = type metadata accessor for NLRouterParse(0);

          v15 = a1 + *(v14 + 24);
          v16 = type metadata accessor for USOParse(0);
          if (!__swift_getEnumTagSinglePayload(v15, 1, v16))
          {
            v17 = sub_1DD0DB4BC();
            (*(*(v17 - 8) + 8))(v15, v17);
            v18 = *(v16 + 20);
            v19 = sub_1DD0DB3EC();
            if (!__swift_getEnumTagSinglePayload(v15 + v18, 1, v19))
            {
              (*(*(v19 - 8) + 8))(v15 + v18, v19);
            }
          }

          v9 = *(a1 + *(v14 + 28));
LABEL_36:

          break;
        case 9u:
          v4 = sub_1DD0DD08C();
LABEL_20:
          (*(*(v4 - 8) + 8))(a1, v4);
          break;
        default:
          break;
      }

      v20 = type metadata accessor for SiriKitFlowFrameInput(0);

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + *(v20 + 28)));
      swift_getAssociatedTypeWitness();
      v3 = *(a1 + *(swift_getTupleTypeMetadata2() + 48));
      goto LABEL_38;
    case 2u:
    case 4u:

      goto LABEL_14;
    case 3u:

      goto LABEL_14;
    case 5u:

      __swift_destroy_boxed_opaque_existential_1Tm((a1 + 16));
LABEL_14:

      return;
    case 6u:
    case 8u:

      v3 = *(a1 + 32);
      goto LABEL_38;
    case 7u:

      v3 = *(a1 + 24);
LABEL_38:

      goto LABEL_7;
    case 9u:
      v3 = *a1;

LABEL_7:

      break;
    default:
      return;
  }
}

void *sub_1DCF07BA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  switch(swift_getEnumCaseMultiPayload())
  {
    case 0u:
      v6 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      *(a1 + 16) = *(a2 + 16);
      v7 = *(a2 + 48);
      *(a1 + 48) = v7;
      v8 = v7;
      v9 = **(v7 - 8);
      v10 = v6;

      v9(a1 + 24, a2 + 24, v8);
      goto LABEL_40;
    case 1u:
      v27 = type metadata accessor for Parse(0);
      switch(swift_getEnumCaseMultiPayload())
      {
        case 0u:
          v28 = sub_1DD0DC76C();
          (*(*(v28 - 8) + 16))(a1, a2, v28);
          goto LABEL_38;
        case 1u:
          v51 = sub_1DD0DC76C();
          (*(*(v51 - 8) + 16))(a1, a2, v51);
          v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
          *(a1 + *(v52 + 48)) = *(a2 + *(v52 + 48));
          sub_1DD0DCF8C();
        case 2u:
          v45 = *(a2 + 8);
          *a1 = *a2;
          *(a1 + 8) = v45;
          *(a1 + 16) = *(a2 + 16);

          goto LABEL_38;
        case 3u:
          *a1 = *a2;
          swift_unknownObjectRetain();
          goto LABEL_38;
        case 4u:
          v43 = sub_1DD0DB1EC();
          (*(*(v43 - 8) + 16))(a1, a2, v43);
          goto LABEL_38;
        case 5u:
          v53 = *a2;
          *a1 = *a2;
          v54 = v53;
          goto LABEL_38;
        case 6u:
          v55 = sub_1DD0DB4BC();
          (*(*(v55 - 8) + 16))(a1, a2, v55);
          v56 = type metadata accessor for USOParse(0);
          v57 = v56[5];
          v58 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v57, 1, v58))
          {
            v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy((a1 + v57), (a2 + v57), *(*(v59 - 8) + 64));
          }

          else
          {
            (*(*(v58 - 8) + 16))(a1 + v57, a2 + v57, v58);
            __swift_storeEnumTagSinglePayload(a1 + v57, 0, 1, v58);
          }

          v91 = v56[6];
          v92 = (a1 + v91);
          v93 = (a2 + v91);
          v94 = v93[1];
          *v92 = *v93;
          v92[1] = v94;
          v95 = v56[7];
          v96 = a1 + v95;
          v97 = a2 + v95;
          *(v96 + 4) = *(v97 + 4);
          *v96 = *v97;

          goto LABEL_38;
        case 7u:
          v46 = sub_1DD0DB4BC();
          (*(*(v46 - 8) + 16))(a1, a2, v46);
          v47 = type metadata accessor for USOParse(0);
          v48 = v47[5];
          v49 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(a2 + v48, 1, v49))
          {
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy((a1 + v48), (a2 + v48), *(*(v50 - 8) + 64));
          }

          else
          {
            (*(*(v49 - 8) + 16))(a1 + v48, a2 + v48, v49);
            __swift_storeEnumTagSinglePayload(a1 + v48, 0, 1, v49);
          }

          v71 = v47[6];
          v72 = (a1 + v71);
          v73 = (a2 + v71);
          v74 = v73[1];
          *v72 = *v73;
          v72[1] = v74;
          v75 = v47[7];
          v76 = a1 + v75;
          v77 = a2 + v75;
          *(v76 + 4) = *(v77 + 4);
          *v76 = *v77;
          v78 = type metadata accessor for LinkParse(0);
          v79 = v78[5];
          v80 = (a1 + v79);
          v81 = (a2 + v79);
          v82 = v81[1];
          *v80 = *v81;
          v80[1] = v82;
          v83 = v78[6];
          v84 = (a1 + v83);
          v85 = (a2 + v83);
          v86 = v85[1];
          *v84 = *v85;
          v84[1] = v86;
          v87 = v78[7];
          v88 = (a1 + v87);
          v89 = (a2 + v87);
          v90 = v89[1];
          *v88 = *v89;
          v88[1] = v90;

          goto LABEL_38;
        case 8u:
          v60 = sub_1DD0DD12C();
          (*(*(v60 - 8) + 16))(a1, a2, v60);
          v61 = type metadata accessor for NLRouterParse(0);
          v62 = v61[5];
          v63 = (a1 + v62);
          v64 = (a2 + v62);
          v65 = v64[1];
          *v63 = *v64;
          v63[1] = v65;
          v66 = v61[6];
          v67 = (a1 + v66);
          v68 = (a2 + v66);
          v69 = type metadata accessor for USOParse(0);

          if (__swift_getEnumTagSinglePayload(v68, 1, v69))
          {
            v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
            memcpy(v67, v68, *(*(v70 - 8) + 64));
          }

          else
          {
            v98 = sub_1DD0DB4BC();
            (*(*(v98 - 8) + 16))(v67, v68, v98);
            v99 = v69[5];
            v100 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(&v68[v99], 1, v100))
            {
              v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(&v67[v99], &v68[v99], *(*(v101 - 8) + 64));
            }

            else
            {
              (*(*(v100 - 8) + 16))(&v67[v99], &v68[v99], v100);
              __swift_storeEnumTagSinglePayload(&v67[v99], 0, 1, v100);
            }

            v102 = v69[6];
            v103 = &v67[v102];
            v104 = &v68[v102];
            v105 = *(v104 + 1);
            *v103 = *v104;
            *(v103 + 1) = v105;
            v106 = v69[7];
            v107 = &v67[v106];
            v108 = &v68[v106];
            v107[4] = v108[4];
            *v107 = *v108;

            __swift_storeEnumTagSinglePayload(v67, 0, 1, v69);
          }

          v109 = v61[7];
          v110 = *(a2 + v109);
          *(a1 + v109) = v110;
          v111 = v110;
          goto LABEL_38;
        case 9u:
          v44 = sub_1DD0DD08C();
          (*(*(v44 - 8) + 16))(a1, a2, v44);
LABEL_38:
          swift_storeEnumTagMultiPayload();
          break;
        default:
          memcpy(a1, a2, *(*(v27 - 8) + 64));
          break;
      }

      v112 = type metadata accessor for SiriKitFlowFrameInput(0);
      *(a1 + v112[5]) = *(a2 + v112[5]);
      *(a1 + v112[6]) = *(a2 + v112[6]);
      v113 = v112[7];
      v114 = a1 + v113;
      v115 = a2 + v113;
      v116 = *(a2 + v113 + 24);
      *(a1 + v113 + 24) = v116;
      v117 = v116;
      v118 = **(v116 - 8);

      v118(v114, v115, v117);
      swift_getAssociatedTypeWitness();
      v119 = *(swift_getTupleTypeMetadata2() + 48);
      v120 = *(a2 + v119);
      *(a1 + v119) = v120;
      v121 = v120;
      goto LABEL_40;
    case 2u:
      v16 = *a2;
      v17 = *(a2 + 8);
      *a1 = v16;
      *(a1 + 8) = v17;
      v18 = v16;
      sub_1DD0DCF8C();
    case 3u:
      v19 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v21 = *(a2 + 16);
      v20 = *(a2 + 24);
      *(a1 + 16) = v21;
      *(a1 + 24) = v20;
      v22 = v19;

      sub_1DD0DCF8C();
    case 4u:
      v11 = *a2;
      v12 = *(a2 + 8);
      *a1 = v11;
      *(a1 + 8) = v12;
      v13 = v11;
      sub_1DD0DCF8C();
    case 5u:
      v29 = *a2;
      v30 = *(a2 + 8);
      *a1 = *a2;
      *(a1 + 8) = v30;
      v31 = *(a2 + 40);
      *(a1 + 40) = v31;
      v32 = v31;
      v33 = **(v31 - 8);
      v34 = v29;

      v33(a1 + 16, a2 + 16, v32);
      *(a1 + 56) = *(a2 + 56);
      sub_1DD0DCF8C();
    case 6u:
      v35 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v36 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v36;
      *(a1 + 32) = *(a2 + 32);
      v37 = v35;
      sub_1DD0DCF8C();
    case 7u:
      v23 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v25 = *(a2 + 16);
      v24 = *(a2 + 24);
      *(a1 + 16) = v25;
      *(a1 + 24) = v24;
      v26 = v23;
      sub_1DD0DCF8C();
    case 8u:
      v40 = *a2;
      *a1 = *a2;
      *(a1 + 8) = *(a2 + 8);
      v41 = *(a2 + 24);
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 24) = v41;
      *(a1 + 32) = *(a2 + 32);
      v42 = v40;
      sub_1DD0DCF8C();
    case 9u:
      v14 = *a2;
      v15 = v14;
      *a1 = v14;
LABEL_40:
      swift_storeEnumTagMultiPayload();
      result = a1;
      break;
    default:
      v38 = *(*(a3 - 8) + 64);

      result = memcpy(a1, a2, v38);
      break;
  }

  return result;
}

void *sub_1DCF08688(void *a1, void *a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = *(a3 - 8);
    (*(v5 + 8))(a1, a3);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v6 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        v7 = a2[6];
        a1[6] = v7;
        a1[7] = a2[7];
        v8 = **(v7 - 8);
        v9 = v6;

        v8(a1 + 3, a2 + 3, v7);
        goto LABEL_41;
      case 1u:
        v20 = type metadata accessor for Parse(0);
        switch(swift_getEnumCaseMultiPayload())
        {
          case 0u:
            v21 = sub_1DD0DC76C();
            (*(*(v21 - 8) + 16))(a1, a2, v21);
            goto LABEL_39;
          case 1u:
            v39 = sub_1DD0DC76C();
            (*(*(v39 - 8) + 16))(a1, a2, v39);
            v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
            *(a1 + *(v40 + 48)) = *(a2 + *(v40 + 48));
            sub_1DD0DCF8C();
          case 2u:
            *a1 = *a2;
            a1[1] = a2[1];
            a1[2] = a2[2];

            goto LABEL_39;
          case 3u:
            *a1 = *a2;
            swift_unknownObjectRetain();
            goto LABEL_39;
          case 4u:
            v32 = sub_1DD0DB1EC();
            (*(*(v32 - 8) + 16))(a1, a2, v32);
            goto LABEL_39;
          case 5u:
            v41 = *a2;
            *a1 = *a2;
            v42 = v41;
            goto LABEL_39;
          case 6u:
            v43 = sub_1DD0DB4BC();
            (*(*(v43 - 8) + 16))(a1, a2, v43);
            v44 = type metadata accessor for USOParse(0);
            v45 = v44[5];
            v46 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(a2 + v45, 1, v46))
            {
              v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(a1 + v45, a2 + v45, *(*(v47 - 8) + 64));
            }

            else
            {
              (*(*(v46 - 8) + 16))(a1 + v45, a2 + v45, v46);
              __swift_storeEnumTagSinglePayload(a1 + v45, 0, 1, v46);
            }

            v75 = v44[6];
            v76 = (a1 + v75);
            v77 = (a2 + v75);
            *v76 = *v77;
            v76[1] = v77[1];
            v78 = v44[7];
            v79 = a1 + v78;
            v80 = a2 + v78;
            v81 = *v80;
            v79[4] = v80[4];
            *v79 = v81;

            goto LABEL_39;
          case 7u:
            v34 = sub_1DD0DB4BC();
            (*(*(v34 - 8) + 16))(a1, a2, v34);
            v35 = type metadata accessor for USOParse(0);
            v36 = v35[5];
            v37 = sub_1DD0DB3EC();
            if (__swift_getEnumTagSinglePayload(a2 + v36, 1, v37))
            {
              v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
              memcpy(a1 + v36, a2 + v36, *(*(v38 - 8) + 64));
            }

            else
            {
              (*(*(v37 - 8) + 16))(a1 + v36, a2 + v36, v37);
              __swift_storeEnumTagSinglePayload(a1 + v36, 0, 1, v37);
            }

            v58 = v35[6];
            v59 = (a1 + v58);
            v60 = (a2 + v58);
            *v59 = *v60;
            v59[1] = v60[1];
            v61 = v35[7];
            v62 = a1 + v61;
            v63 = a2 + v61;
            v64 = *v63;
            v62[4] = v63[4];
            *v62 = v64;
            v65 = type metadata accessor for LinkParse(0);
            v66 = v65[5];
            v67 = (a1 + v66);
            v68 = (a2 + v66);
            *v67 = *v68;
            v67[1] = v68[1];
            v69 = v65[6];
            v70 = (a1 + v69);
            v71 = (a2 + v69);
            *v70 = *v71;
            v70[1] = v71[1];
            v72 = v65[7];
            v73 = (a1 + v72);
            v74 = (a2 + v72);
            *v73 = *v74;
            v73[1] = v74[1];

            goto LABEL_39;
          case 8u:
            v48 = sub_1DD0DD12C();
            (*(*(v48 - 8) + 16))(a1, a2, v48);
            v49 = type metadata accessor for NLRouterParse(0);
            v50 = v49[5];
            v51 = (a1 + v50);
            v52 = (a2 + v50);
            *v51 = *v52;
            v51[1] = v52[1];
            v53 = v49[6];
            v54 = a1 + v53;
            v55 = a2 + v53;
            v56 = type metadata accessor for USOParse(0);

            if (__swift_getEnumTagSinglePayload(v55, 1, v56))
            {
              v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
              memcpy(v54, v55, *(*(v57 - 8) + 64));
            }

            else
            {
              v82 = sub_1DD0DB4BC();
              (*(*(v82 - 8) + 16))(v54, v55, v82);
              v83 = v56[5];
              v84 = sub_1DD0DB3EC();
              if (__swift_getEnumTagSinglePayload(&v55[v83], 1, v84))
              {
                v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
                memcpy(&v54[v83], &v55[v83], *(*(v85 - 8) + 64));
              }

              else
              {
                (*(*(v84 - 8) + 16))(&v54[v83], &v55[v83], v84);
                __swift_storeEnumTagSinglePayload(&v54[v83], 0, 1, v84);
              }

              v86 = v56[6];
              v87 = &v54[v86];
              v88 = &v55[v86];
              *v87 = *v88;
              *(v87 + 1) = *(v88 + 1);
              v89 = v56[7];
              v90 = &v54[v89];
              v91 = &v55[v89];
              v92 = *v91;
              v90[4] = v91[4];
              *v90 = v92;

              __swift_storeEnumTagSinglePayload(v54, 0, 1, v56);
            }

            v93 = v49[7];
            v94 = *(a2 + v93);
            *(a1 + v93) = v94;
            v95 = v94;
            goto LABEL_39;
          case 9u:
            v33 = sub_1DD0DD08C();
            (*(*(v33 - 8) + 16))(a1, a2, v33);
LABEL_39:
            swift_storeEnumTagMultiPayload();
            break;
          default:
            memcpy(a1, a2, *(*(v20 - 8) + 64));
            break;
        }

        v96 = type metadata accessor for SiriKitFlowFrameInput(0);
        *(a1 + v96[5]) = *(a2 + v96[5]);
        *(a1 + v96[6]) = *(a2 + v96[6]);
        v97 = v96[7];
        v98 = a1 + v97;
        v99 = a2 + v97;
        v100 = *(a2 + v97 + 24);
        *(v98 + 3) = v100;
        *(v98 + 4) = *(a2 + v97 + 32);
        v101 = **(v100 - 8);

        v101(v98, v99, v100);
        swift_getAssociatedTypeWitness();
        v102 = *(swift_getTupleTypeMetadata2() + 48);
        v103 = *(a2 + v102);
        *(a1 + v102) = v103;
        v104 = v103;
        goto LABEL_41;
      case 2u:
        v14 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v15 = v14;
        sub_1DD0DCF8C();
      case 3u:
        v16 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        v17 = v16;

        sub_1DD0DCF8C();
      case 4u:
        v10 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v11 = v10;
        sub_1DD0DCF8C();
      case 5u:
        v22 = *a2;
        *a1 = *a2;
        a1[1] = a2[1];
        v23 = a2[5];
        a1[5] = v23;
        a1[6] = a2[6];
        v24 = **(v23 - 8);
        v25 = v22;

        v24(a1 + 2, a2 + 2, v23);
        a1[7] = a2[7];
        sub_1DD0DCF8C();
      case 6u:
        v26 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v27 = v26;
        sub_1DD0DCF8C();
      case 7u:
        v18 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        v19 = v18;
        sub_1DD0DCF8C();
      case 8u:
        v30 = *a2;
        *a1 = *a2;
        *(a1 + 8) = *(a2 + 8);
        a1[2] = a2[2];
        a1[3] = a2[3];
        a1[4] = a2[4];
        v31 = v30;
        sub_1DD0DCF8C();
      case 9u:
        v12 = *a2;
        v13 = v12;
        *a1 = v12;
LABEL_41:
        swift_storeEnumTagMultiPayload();
        return a1;
      default:
        v28 = *(v5 + 64);

        return memcpy(a1, a2, v28);
    }
  }

  return a1;
}

char *sub_1DCF09240(char *a1, char *a2, uint64_t a3)
{
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        goto LABEL_26;
      case 1u:
        v17 = sub_1DD0DC76C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v18 + 48)] = *&a2[*(v18 + 48)];
        goto LABEL_26;
      case 4u:
        v20 = sub_1DD0DB1EC();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        goto LABEL_26;
      case 6u:
        v21 = sub_1DD0DB4BC();
        (*(*(v21 - 8) + 32))(a1, a2, v21);
        v22 = type metadata accessor for USOParse(0);
        v23 = v22[5];
        v24 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v23], 1, v24))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v23], &a2[v23], *(*(v25 - 8) + 64));
        }

        else
        {
          (*(*(v24 - 8) + 32))(&a1[v23], &a2[v23], v24);
          __swift_storeEnumTagSinglePayload(&a1[v23], 0, 1, v24);
        }

        *&a1[v22[6]] = *&a2[v22[6]];
        v35 = v22[7];
        v36 = &a1[v35];
        v37 = &a2[v35];
        v36[4] = v37[4];
        *v36 = *v37;
        goto LABEL_26;
      case 7u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(a1, a2, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v28], &a2[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          __swift_storeEnumTagSinglePayload(&a1[v28], 0, 1, v29);
        }

        *&a1[v27[6]] = *&a2[v27[6]];
        v38 = v27[7];
        v39 = &a1[v38];
        v40 = &a2[v38];
        v39[4] = v40[4];
        *v39 = *v40;
        v41 = type metadata accessor for LinkParse(0);
        *&a1[v41[5]] = *&a2[v41[5]];
        *&a1[v41[6]] = *&a2[v41[6]];
        *&a1[v41[7]] = *&a2[v41[7]];
        goto LABEL_26;
      case 8u:
        v10 = sub_1DD0DD12C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for NLRouterParse(0);
        *&a1[v11[5]] = *&a2[v11[5]];
        v12 = v11[6];
        v13 = &a1[v12];
        v14 = &a2[v12];
        v15 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v14, 1, v15))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v13, v14, *(*(v16 - 8) + 64));
        }

        else
        {
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 32))(v13, v14, v31);
          v32 = v15[5];
          v33 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v33))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v32], &v14[v32], *(*(v34 - 8) + 64));
          }

          else
          {
            (*(*(v33 - 8) + 32))(&v13[v32], &v14[v32], v33);
            __swift_storeEnumTagSinglePayload(&v13[v32], 0, 1, v33);
          }

          *&v13[v15[6]] = *&v14[v15[6]];
          v42 = v15[7];
          v43 = &v13[v42];
          v44 = &v14[v42];
          v43[4] = v44[4];
          *v43 = *v44;
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
        }

        *&a1[v11[7]] = *&a2[v11[7]];
        goto LABEL_26;
      case 9u:
        v19 = sub_1DD0DD08C();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
LABEL_26:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }

    v45 = type metadata accessor for SiriKitFlowFrameInput(0);
    a1[v45[5]] = a2[v45[5]];
    *&a1[v45[6]] = *&a2[v45[6]];
    v46 = v45[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  else
  {
    v8 = *(*(a3 - 8) + 64);

    return memcpy(a1, a2, v8);
  }
}

char *sub_1DCF09998(char *a1, char *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  v5 = *(a3 - 8);
  (*(v5 + 8))(a1, a3);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = type metadata accessor for Parse(0);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 0u:
        v7 = sub_1DD0DC76C();
        (*(*(v7 - 8) + 32))(a1, a2, v7);
        goto LABEL_27;
      case 1u:
        v17 = sub_1DD0DC76C();
        (*(*(v17 - 8) + 32))(a1, a2, v17);
        v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7C60, &qword_1DD0E9C60);
        *&a1[*(v18 + 48)] = *&a2[*(v18 + 48)];
        goto LABEL_27;
      case 4u:
        v20 = sub_1DD0DB1EC();
        (*(*(v20 - 8) + 32))(a1, a2, v20);
        goto LABEL_27;
      case 6u:
        v21 = sub_1DD0DB4BC();
        (*(*(v21 - 8) + 32))(a1, a2, v21);
        v22 = type metadata accessor for USOParse(0);
        v23 = v22[5];
        v24 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v23], 1, v24))
        {
          v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v23], &a2[v23], *(*(v25 - 8) + 64));
        }

        else
        {
          (*(*(v24 - 8) + 32))(&a1[v23], &a2[v23], v24);
          __swift_storeEnumTagSinglePayload(&a1[v23], 0, 1, v24);
        }

        *&a1[v22[6]] = *&a2[v22[6]];
        v35 = v22[7];
        v36 = &a1[v35];
        v37 = &a2[v35];
        v36[4] = v37[4];
        *v36 = *v37;
        goto LABEL_27;
      case 7u:
        v26 = sub_1DD0DB4BC();
        (*(*(v26 - 8) + 32))(a1, a2, v26);
        v27 = type metadata accessor for USOParse(0);
        v28 = v27[5];
        v29 = sub_1DD0DB3EC();
        if (__swift_getEnumTagSinglePayload(&a2[v28], 1, v29))
        {
          v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
          memcpy(&a1[v28], &a2[v28], *(*(v30 - 8) + 64));
        }

        else
        {
          (*(*(v29 - 8) + 32))(&a1[v28], &a2[v28], v29);
          __swift_storeEnumTagSinglePayload(&a1[v28], 0, 1, v29);
        }

        *&a1[v27[6]] = *&a2[v27[6]];
        v38 = v27[7];
        v39 = &a1[v38];
        v40 = &a2[v38];
        v39[4] = v40[4];
        *v39 = *v40;
        v41 = type metadata accessor for LinkParse(0);
        *&a1[v41[5]] = *&a2[v41[5]];
        *&a1[v41[6]] = *&a2[v41[6]];
        *&a1[v41[7]] = *&a2[v41[7]];
        goto LABEL_27;
      case 8u:
        v10 = sub_1DD0DD12C();
        (*(*(v10 - 8) + 32))(a1, a2, v10);
        v11 = type metadata accessor for NLRouterParse(0);
        *&a1[v11[5]] = *&a2[v11[5]];
        v12 = v11[6];
        v13 = &a1[v12];
        v14 = &a2[v12];
        v15 = type metadata accessor for USOParse(0);
        if (__swift_getEnumTagSinglePayload(v14, 1, v15))
        {
          v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA7E60, &unk_1DD0E8E20);
          memcpy(v13, v14, *(*(v16 - 8) + 64));
        }

        else
        {
          v31 = sub_1DD0DB4BC();
          (*(*(v31 - 8) + 32))(v13, v14, v31);
          v32 = v15[5];
          v33 = sub_1DD0DB3EC();
          if (__swift_getEnumTagSinglePayload(&v14[v32], 1, v33))
          {
            v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA2560, &unk_1DD0E5820);
            memcpy(&v13[v32], &v14[v32], *(*(v34 - 8) + 64));
          }

          else
          {
            (*(*(v33 - 8) + 32))(&v13[v32], &v14[v32], v33);
            __swift_storeEnumTagSinglePayload(&v13[v32], 0, 1, v33);
          }

          *&v13[v15[6]] = *&v14[v15[6]];
          v42 = v15[7];
          v43 = &v13[v42];
          v44 = &v14[v42];
          v43[4] = v44[4];
          *v43 = *v44;
          __swift_storeEnumTagSinglePayload(v13, 0, 1, v15);
        }

        *&a1[v11[7]] = *&a2[v11[7]];
        goto LABEL_27;
      case 9u:
        v19 = sub_1DD0DD08C();
        (*(*(v19 - 8) + 32))(a1, a2, v19);
LABEL_27:
        swift_storeEnumTagMultiPayload();
        break;
      default:
        memcpy(a1, a2, *(*(v6 - 8) + 64));
        break;
    }

    v45 = type metadata accessor for SiriKitFlowFrameInput(0);
    a1[v45[5]] = a2[v45[5]];
    *&a1[v45[6]] = *&a2[v45[6]];
    v46 = v45[7];
    v47 = &a1[v46];
    v48 = &a2[v46];
    v49 = *(v48 + 1);
    *v47 = *v48;
    *(v47 + 1) = v49;
    *(v47 + 4) = *(v48 + 4);
    swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    *&a1[*(TupleTypeMetadata2 + 48)] = *&a2[*(TupleTypeMetadata2 + 48)];
    swift_storeEnumTagMultiPayload();
    return a1;
  }

  v8 = *(v5 + 64);

  return memcpy(a1, a2, v8);
}

unint64_t sub_1DCF0A144()
{
  result = qword_1ECCA9A38[0];
  if (!qword_1ECCA9A38[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA9A30, qword_1DD101158);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECCA9A38);
  }

  return result;
}

uint64_t sub_1DCF0A1DC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_26_6();
  v4(v3);
  OUTLINED_FUNCTION_2();
  v5 = OUTLINED_FUNCTION_33_1();
  v6(v5);
  return a2;
}

uint64_t sub_1DCF0A234@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = type metadata accessor for Parse(0);
  OUTLINED_FUNCTION_99(v5);
  v8 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  result = (*(v4 + 240))(v1 + v8, *(v1 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), v3, v4);
  *a1 = result;
  return result;
}

uint64_t sub_1DCF0A2E8(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_13_1();
  (*(v3 + 8))(a1);
  return a1;
}

void sub_1DCF0A33C(id a1)
{
  if (a1 != 1)
  {
  }
}

uint64_t OUTLINED_FUNCTION_89_7()
{

  return sub_1DCEFF0BC(v0);
}

void OUTLINED_FUNCTION_109_5()
{
  v1 = *(v0 - 88);
  *(v0 - 96) = *(v0 - 96);
  *(v0 - 88) = v1;
}

void OUTLINED_FUNCTION_113_5(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2[121] = a2;
  v2[120] = a1;
  v2[117] = v3;

  sub_1DD0DCF8C();
}

uint64_t OUTLINED_FUNCTION_117_5()
{

  return sub_1DCAFF9E8((v0 + 760), v0 + 1016);
}

uint64_t OUTLINED_FUNCTION_120_2()
{

  return sub_1DCAFF9E8((v0 + 544), v0 + 936);
}

_BYTE *storeEnumTagSinglePayload for RCHFlowFrameConstants(_BYTE *result, int a2, int a3)
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

uint64_t ReactiveFlow.id.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_66();
  v4 = *(v3 + 104);
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v1 + v4, v5);
}

uint64_t sub_1DCF0A8F8@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_23_2();
  v4 = *(v3 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for ReactiveFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  return (*(v8 + 16))(a1, v1 + v4);
}

uint64_t sub_1DCF0A9A0(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  v4 = *(v3 + 136);
  swift_beginAccess();
  OUTLINED_FUNCTION_59();
  OUTLINED_FUNCTION_59();
  type metadata accessor for ReactiveFlow.State(0, v6, *(v5 + 88), v7);
  OUTLINED_FUNCTION_2();
  (*(v8 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t ReactiveFlow.__allocating_init(plan:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ReactiveFlow.init(plan:)(a1);
  return v2;
}

uint64_t ReactiveFlow.init(plan:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23_2();
  sub_1DD0DB03C();
  OUTLINED_FUNCTION_66();
  *(v1 + *(v4 + 112)) = 0;
  OUTLINED_FUNCTION_66();
  *(v1 + *(v5 + 128)) = 0;
  OUTLINED_FUNCTION_66();
  (*(*(*(v2 + 80) - 8) + 32))(v1 + *(v6 + 96), a1, *(v2 + 80));
  OUTLINED_FUNCTION_66();
  v7 = OUTLINED_FUNCTION_7_7();
  type metadata accessor for ReactiveFlow.State(v7, v8, v9, v10);
  swift_storeEnumTagMultiPayload();
  return v1;
}

void sub_1DCF0AB90()
{
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v0, v1);
  sub_1DCF0A868();
}

void sub_1DCF0AE68()
{
  OUTLINED_FUNCTION_13();
  v2 = *(v1 + 88);
  v4 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_1();
  v28[2] = v6;
  MEMORY[0x1EEE9AC00](v7, v8);
  v28[3] = v28 - v9;
  type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v10, v11);
  OUTLINED_FUNCTION_0_1();
  v28[6] = v13;
  v28[7] = v12;
  v15 = MEMORY[0x1EEE9AC00](v12, v14);
  v28[4] = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v17);
  v28[5] = v28 - v18;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DF22C();
  OUTLINED_FUNCTION_0_1();
  v28[11] = v20;
  v28[12] = v19;
  MEMORY[0x1EEE9AC00](v19, v21);
  v28[8] = v28 - v22;
  v28[9] = v4;
  v28[10] = v2;
  type metadata accessor for ReactiveFlow.State(0, v4, v2, v23);
  OUTLINED_FUNCTION_2();
  v26 = MEMORY[0x1EEE9AC00](v24, v25);
  MEMORY[0x1EEE9AC00](v26, v27);
  sub_1DCF0AB90();
}

uint64_t sub_1DCF0B610()
{
  if (qword_1ECCA13A8 != -1)
  {
    OUTLINED_FUNCTION_5_89(&qword_1ECCA13A8);
  }

  v1 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v1, qword_1ECCD2748);
  v2 = sub_1DD0DD8EC();
  v3 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DCAFC000, v2, v3, "Starting subscription now...", v4, 2u);
    OUTLINED_FUNCTION_80();
  }

  sub_1DCF0B718();
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1DCF0B718()
{
  OUTLINED_FUNCTION_13();
  (*(*(v2 + 88) + 48))(v0 + *(v2 + 96), *(v1 + 80), *(v2 + 88));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, AssociatedTypeWitness, v4, v5);
  swift_retain_n();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  sub_1DD0DDC4C();

  return sub_1DCF0A8D4();
}

uint64_t sub_1DCF0B894(void **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ReactiveFlow.State(0, *(*a2 + 80), *(*a2 + 88), a4);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (&v24 - v7);
  v9 = *a1;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v10 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v10, qword_1ECCD2748);
  v11 = v9;
  v12 = sub_1DD0DD8EC();
  v13 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v9;
    v27 = v25;
    *v14 = 136315138;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9B48, &qword_1DD1014E0);
    v16 = sub_1DD0DE02C();
    HIDWORD(v24) = v13;
    v18 = sub_1DCB10E9C(v16, v17, &v27);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1DCAFC000, v12, BYTE4(v24), "Subscription received completion signal %s", v14, 0xCu);
    v19 = v25;
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x1E12A8390](v19, -1, -1);
    MEMORY[0x1E12A8390](v14, -1, -1);
  }

  if (v9)
  {
    *v8 = v9;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v20 = v9;
  }

  else
  {
    sub_1DCF0E35C();
    v21 = swift_allocError();
    *v22 = 1;
    *v8 = v21;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    sub_1DD0DF22C();
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
  }

  return sub_1DCF0A9A0(v8);
}

uint64_t sub_1DCF0BBF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v39 = type metadata accessor for ReactiveFlow.State(0, *(*a2 + 80), *(*a2 + 88), a4);
  MEMORY[0x1EEE9AC00](v39, v6);
  v38 = v36 - v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for _FlowPlanEvent(0, AssociatedTypeWitness, v9, v10);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = v36 - v18;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v20 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v20, qword_1ECCD2748);
  v21 = *(v12 + 16);
  v21(v19, a1, v11);
  v22 = sub_1DD0DD8EC();
  v23 = sub_1DD0DE6DC();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v36[0] = a1;
    v25 = v24;
    v26 = swift_slowAlloc();
    v37 = v21;
    v27 = v26;
    v40 = v26;
    *v25 = 136315138;
    v37(v16, v19, v11);
    v28 = sub_1DD0DE02C();
    v36[1] = a2;
    v30 = v29;
    (*(v12 + 8))(v19, v11);
    v31 = sub_1DCB10E9C(v28, v30, &v40);

    *(v25 + 4) = v31;
    _os_log_impl(&dword_1DCAFC000, v22, v23, "Subscription received event %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    v32 = v27;
    v21 = v37;
    MEMORY[0x1E12A8390](v32, -1, -1);
    v33 = v25;
    a1 = v36[0];
    MEMORY[0x1E12A8390](v33, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v19, v11);
  }

  v34 = v38;
  v21(v38, a1, v11);
  swift_storeEnumTagMultiPayload();
  return sub_1DCF0A9A0(v34);
}

uint64_t ReactiveFlow.deinit()
{
  OUTLINED_FUNCTION_23_2();
  v3 = *(v1 + 80);
  (*(*(v3 - 8) + 8))(v0 + *(v2 + 96), v3);
  OUTLINED_FUNCTION_66();
  v5 = *(v4 + 104);
  sub_1DD0DB04C();
  OUTLINED_FUNCTION_2();
  (*(v6 + 8))(v0 + v5);
  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();

  OUTLINED_FUNCTION_66();
  v8 = *(v7 + 136);
  type metadata accessor for ReactiveFlow.State(0, v3, *(v1 + 88), v9);
  OUTLINED_FUNCTION_2();
  (*(v10 + 8))(v0 + v8);
  return v0;
}

uint64_t ReactiveFlow.__deallocating_deinit()
{
  ReactiveFlow.deinit();

  return swift_deallocClassInstance();
}

void ReactiveFlow<>.handle(event:)(uint64_t a1)
{
  OUTLINED_FUNCTION_13();
  (*(v1 + 56))(v3, *(v2 + 80));
  OUTLINED_FUNCTION_15_56();
  OUTLINED_FUNCTION_15_56();
  OUTLINED_FUNCTION_131();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_131();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_131();
  swift_getAssociatedConformanceWitness();
  sub_1DD0DCF8C();
}

uint64_t ReactiveFlow.description.getter()
{
  sub_1DD0DEC1C();
  MEMORY[0x1E12A6780](0x6576697463616552, 0xED00003C776F6C46);
  sub_1DD0DF08C();
  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  return 0;
}

unint64_t sub_1DCF0C454()
{
  result = qword_1EDE4D668;
  if (!qword_1EDE4D668)
  {
    sub_1DD0DB04C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE4D668);
  }

  return result;
}

uint64_t sub_1DCF0C4F4(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DCF0C530(uint64_t a1)
{
  v2 = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = sub_1DD0DB04C();
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      v2 = type metadata accessor for ReactiveFlow.State(319, v2, *(a1 + 88), v5);
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return v2;
}

uint64_t sub_1DCF0C6DC(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = type metadata accessor for _FlowPlanEvent(319, AssociatedTypeWitness, v2, v3);
  if (v5 <= 0x3F)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
    result = sub_1DD0DF22C();
    if (v6 <= 0x3F)
    {
      swift_initEnumMetadataMultiPayload();
      return 0;
    }
  }

  return result;
}

char *sub_1DCF0C7E8(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v9 + 1 <= (v8 + 1))
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = v10 + 1;
  if ((*(v6 + 80) & 0x1000F8) != 0 || v11 > 0x18)
  {
    *a1 = *a2;
    sub_1DD0DCF8C();
  }

  v13 = a2[v10];
  v14 = v13 - 2;
  if (v13 >= 2)
  {
    if (v10 <= 3)
    {
      v15 = v10;
    }

    else
    {
      v15 = 4;
    }

    switch(v15)
    {
      case 1:
        v16 = *a2;
        goto LABEL_25;
      case 2:
        v16 = *a2;
        goto LABEL_25;
      case 3:
        v16 = *a2 | (a2[2] << 16);
        goto LABEL_25;
      case 4:
        v16 = *a2;
LABEL_25:
        v17 = (v16 | (v14 << (8 * v10))) + 2;
        v13 = v16 + 2;
        if (v10 < 4)
        {
          v13 = v17;
        }

        break;
      default:
        break;
    }
  }

  if (v13 == 1)
  {
    v22 = a2[v9];
    v23 = v22 - 2;
    if (v22 >= 2)
    {
      if (v9 <= 3)
      {
        v24 = v9;
      }

      else
      {
        v24 = 4;
      }

      switch(v24)
      {
        case 1:
          v25 = *a2;
          goto LABEL_57;
        case 2:
          v25 = *a2;
          goto LABEL_57;
        case 3:
          v25 = *a2 | (a2[2] << 16);
          goto LABEL_57;
        case 4:
          v25 = *a2;
LABEL_57:
          if (v9 < 4)
          {
            v22 = (v25 | (v23 << (8 * v9))) + 2;
          }

          else
          {
            v22 = v25 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v22 == 1)
    {
      v29 = *a2;
      v30 = v29;
      *a1 = v29;
      v31 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v31 = 0;
    }

    a1[v9] = v31;
    a1[v10] = 1;
    return a1;
  }

  if (!v13)
  {
    v18 = a2[v8];
    v19 = v18 - 2;
    if (v18 >= 2)
    {
      if (v8 <= 3)
      {
        v20 = v8;
      }

      else
      {
        v20 = 4;
      }

      switch(v20)
      {
        case 1:
          v21 = *a2;
          goto LABEL_49;
        case 2:
          v21 = *a2;
          goto LABEL_49;
        case 3:
          v21 = *a2 | (a2[2] << 16);
          goto LABEL_49;
        case 4:
          v21 = *a2;
LABEL_49:
          if (v8 < 4)
          {
            v18 = (v21 | (v19 << (8 * v8))) + 2;
          }

          else
          {
            v18 = v21 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v18 == 1)
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v27 = 1;
    }

    else
    {
      v28 = *(a2 + 24);
      *(a1 + 24) = v28;
      (**(v28 - 8))(a1, a2);
      v27 = 0;
    }

    a1[v8] = v27;
    a1[v10] = 0;
    return a1;
  }

  return memcpy(a1, a2, v11);
}

void sub_1DCF0CB58(unsigned __int8 *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = *(*(AssociatedTypeWitness - 8) + 64);
  v5 = 40;
  if (v4 > 0x28)
  {
    v5 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v4 <= 8)
  {
    v4 = 8;
  }

  if (v4 + 1 <= v5 + 1)
  {
    v6 = v5 + 1;
  }

  else
  {
    v6 = v4 + 1;
  }

  v7 = a1[v6];
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    if (v6 <= 3)
    {
      v9 = v6;
    }

    else
    {
      v9 = 4;
    }

    switch(v9)
    {
      case 1:
        v10 = *a1;
        goto LABEL_17;
      case 2:
        v10 = *a1;
        goto LABEL_17;
      case 3:
        v10 = *a1 | (a1[2] << 16);
        goto LABEL_17;
      case 4:
        v10 = *a1;
LABEL_17:
        v11 = (v10 | (v8 << (8 * v6))) + 2;
        v7 = v10 + 2;
        if (v6 < 4)
        {
          v7 = v11;
        }

        break;
      default:
        break;
    }
  }

  if (v7 != 1)
  {
    if (v7)
    {
      return;
    }

    v12 = a1[v5];
    v13 = v12 - 2;
    if (v12 >= 2)
    {
      if (v5 <= 3)
      {
        v14 = v5;
      }

      else
      {
        v14 = 4;
      }

      switch(v14)
      {
        case 1:
          v15 = *a1;
          goto LABEL_38;
        case 2:
          v15 = *a1;
          goto LABEL_38;
        case 3:
          v15 = *a1 | (a1[2] << 16);
          goto LABEL_38;
        case 4:
          v15 = *a1;
LABEL_38:
          v20 = (v15 | (v13 << (8 * v5))) + 2;
          v12 = v15 + 2;
          if (v5 < 4)
          {
            v12 = v20;
          }

          break;
        default:
          break;
      }
    }

    if (v12 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      return;
    }

    goto LABEL_50;
  }

  v16 = a1[v4];
  v17 = v16 - 2;
  if (v16 >= 2)
  {
    if (v4 <= 3)
    {
      v18 = v4;
    }

    else
    {
      v18 = 4;
    }

    switch(v18)
    {
      case 1:
        v19 = *a1;
        goto LABEL_44;
      case 2:
        v19 = *a1;
        goto LABEL_44;
      case 3:
        v19 = *a1 | (a1[2] << 16);
        goto LABEL_44;
      case 4:
        v19 = *a1;
LABEL_44:
        v21 = (v19 | (v17 << (8 * v4))) + 2;
        v16 = v19 + 2;
        if (v4 < 4)
        {
          v16 = v21;
        }

        break;
      default:
        break;
    }
  }

  if (v16 != 1)
  {
LABEL_50:
    v23 = *(*(AssociatedTypeWitness - 8) + 8);

    v23(a1, AssociatedTypeWitness);
    return;
  }

  v22 = *a1;
}

char *sub_1DCF0CDE0(char *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v9 + 1 <= (v8 + 1))
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a2[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *a2;
        goto LABEL_19;
      case 2:
        v14 = *a2;
        goto LABEL_19;
      case 3:
        v14 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v14 = *a2;
LABEL_19:
        v15 = (v14 | (v12 << (8 * v10))) + 2;
        v11 = v14 + 2;
        if (v10 < 4)
        {
          v11 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v11 == 1)
  {
    v20 = a2[v9];
    v21 = v20 - 2;
    if (v20 >= 2)
    {
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      switch(v22)
      {
        case 1:
          v23 = *a2;
          goto LABEL_50;
        case 2:
          v23 = *a2;
          goto LABEL_50;
        case 3:
          v23 = *a2 | (a2[2] << 16);
          goto LABEL_50;
        case 4:
          v23 = *a2;
LABEL_50:
          v28 = (v23 | (v21 << (8 * v9))) + 2;
          v20 = v23 + 2;
          if (v9 < 4)
          {
            v20 = v28;
          }

          break;
        default:
          break;
      }
    }

    if (v20 == 1)
    {
      v29 = *a2;
      v30 = v29;
      *a1 = v29;
      v31 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v31 = 0;
    }

    a1[v9] = v31;
    a1[v10] = 1;
    return a1;
  }

  if (!v11)
  {
    v16 = a2[v8];
    v17 = v16 - 2;
    if (v16 >= 2)
    {
      if (v8 <= 3)
      {
        v18 = v8;
      }

      else
      {
        v18 = 4;
      }

      switch(v18)
      {
        case 1:
          v19 = *a2;
          goto LABEL_43;
        case 2:
          v19 = *a2;
          goto LABEL_43;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          goto LABEL_43;
        case 4:
          v19 = *a2;
LABEL_43:
          v25 = (v19 | (v17 << (8 * v8))) + 2;
          v16 = v19 + 2;
          if (v8 < 4)
          {
            v16 = v25;
          }

          break;
        default:
          break;
      }
    }

    if (v16 == 1)
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v26 = 1;
    }

    else
    {
      v27 = *(a2 + 24);
      *(a1 + 24) = v27;
      (**(v27 - 8))(a1, a2);
      v26 = 0;
    }

    a1[v8] = v26;
    a1[v10] = 0;
    return a1;
  }

  return memcpy(a1, a2, v10 + 1);
}

unsigned __int8 *sub_1DCF0D104(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v9 + 1 <= (v8 + 1))
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a1[v10];
  v12 = 8 * v10;
  v13 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *a1;
        goto LABEL_20;
      case 2:
        v15 = *a1;
        goto LABEL_20;
      case 3:
        v15 = *a1 | (a1[2] << 16);
        goto LABEL_20;
      case 4:
        v15 = *a1;
LABEL_20:
        v16 = (v15 | (v13 << v12)) + 2;
        v11 = v15 + 2;
        if (v10 < 4)
        {
          v11 = v16;
        }

        break;
      default:
        break;
    }
  }

  if (v11 == 1)
  {
    v21 = a1[v9];
    v22 = v21 - 2;
    if (v21 >= 2)
    {
      if (v9 <= 3)
      {
        v23 = v9;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 1:
          v24 = *a1;
          goto LABEL_47;
        case 2:
          v24 = *a1;
          goto LABEL_47;
        case 3:
          v24 = *a1 | (a1[2] << 16);
          goto LABEL_47;
        case 4:
          v24 = *a1;
LABEL_47:
          if (v9 < 4)
          {
            v21 = (v24 | (v22 << (8 * v9))) + 2;
          }

          else
          {
            v21 = v24 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v21 == 1)
    {

      goto LABEL_53;
    }
  }

  else
  {
    if (v11)
    {
      goto LABEL_53;
    }

    v17 = a1[v8];
    v18 = v17 - 2;
    if (v17 >= 2)
    {
      if (v8 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 1:
          v20 = *a1;
          goto LABEL_41;
        case 2:
          v20 = *a1;
          goto LABEL_41;
        case 3:
          v20 = *a1 | (a1[2] << 16);
          goto LABEL_41;
        case 4:
          v20 = *a1;
LABEL_41:
          if (v8 < 4)
          {
            v17 = (v20 | (v18 << (8 * v8))) + 2;
          }

          else
          {
            v17 = v20 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v17 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_53;
    }
  }

  (*(v6 + 8))(a1, AssociatedTypeWitness);
LABEL_53:
  v25 = a2[v10];
  v26 = v25 - 2;
  if (v25 >= 2)
  {
    if (v10 <= 3)
    {
      v27 = v10;
    }

    else
    {
      v27 = 4;
    }

    switch(v27)
    {
      case 1:
        v28 = *a2;
        goto LABEL_62;
      case 2:
        v28 = *a2;
        goto LABEL_62;
      case 3:
        v28 = *a2 | (a2[2] << 16);
        goto LABEL_62;
      case 4:
        v28 = *a2;
LABEL_62:
        v29 = (v28 | (v26 << v12)) + 2;
        v25 = v28 + 2;
        if (v10 < 4)
        {
          v25 = v29;
        }

        break;
      default:
        break;
    }
  }

  if (v25 == 1)
  {
    v34 = a2[v9];
    v35 = v34 - 2;
    if (v34 >= 2)
    {
      if (v9 <= 3)
      {
        v36 = v9;
      }

      else
      {
        v36 = 4;
      }

      switch(v36)
      {
        case 1:
          v37 = *a2;
          goto LABEL_94;
        case 2:
          v37 = *a2;
          goto LABEL_94;
        case 3:
          v37 = *a2 | (a2[2] << 16);
          goto LABEL_94;
        case 4:
          v37 = *a2;
LABEL_94:
          if (v9 < 4)
          {
            v34 = (v37 | (v35 << (8 * v9))) + 2;
          }

          else
          {
            v34 = v37 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v34 == 1)
    {
      v41 = *a2;
      v42 = v41;
      *a1 = v41;
      v43 = 1;
    }

    else
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v43 = 0;
    }

    a1[v9] = v43;
    a1[v10] = 1;
    return a1;
  }

  if (!v25)
  {
    v30 = a2[v8];
    v31 = v30 - 2;
    if (v30 >= 2)
    {
      if (v8 <= 3)
      {
        v32 = v8;
      }

      else
      {
        v32 = 4;
      }

      switch(v32)
      {
        case 1:
          v33 = *a2;
          goto LABEL_86;
        case 2:
          v33 = *a2;
          goto LABEL_86;
        case 3:
          v33 = *a2 | (a2[2] << 16);
          goto LABEL_86;
        case 4:
          v33 = *a2;
LABEL_86:
          if (v8 < 4)
          {
            v30 = (v33 | (v31 << (8 * v8))) + 2;
          }

          else
          {
            v30 = v33 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v30 == 1)
    {
      (*(v6 + 16))(a1, a2, AssociatedTypeWitness);
      v39 = 1;
    }

    else
    {
      v40 = *(a2 + 3);
      *(a1 + 3) = v40;
      *(a1 + 4) = *(a2 + 4);
      (**(v40 - 8))(a1, a2);
      v39 = 0;
    }

    a1[v8] = v39;
    a1[v10] = 0;
    return a1;
  }

  return memcpy(a1, a2, v10 + 1);
}

_BYTE *sub_1DCF0D60C(_BYTE *a1, unsigned __int8 *a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v9 + 1 <= (v8 + 1))
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a2[v10];
  v12 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v13 = v10;
    }

    else
    {
      v13 = 4;
    }

    switch(v13)
    {
      case 1:
        v14 = *a2;
        goto LABEL_19;
      case 2:
        v14 = *a2;
        goto LABEL_19;
      case 3:
        v14 = *a2 | (a2[2] << 16);
        goto LABEL_19;
      case 4:
        v14 = *a2;
LABEL_19:
        v15 = (v14 | (v12 << (8 * v10))) + 2;
        v11 = v14 + 2;
        if (v10 < 4)
        {
          v11 = v15;
        }

        break;
      default:
        break;
    }
  }

  if (v11 == 1)
  {
    v20 = a2[v9];
    v21 = v20 - 2;
    if (v20 >= 2)
    {
      if (v9 <= 3)
      {
        v22 = v9;
      }

      else
      {
        v22 = 4;
      }

      switch(v22)
      {
        case 1:
          v23 = *a2;
          goto LABEL_50;
        case 2:
          v23 = *a2;
          goto LABEL_50;
        case 3:
          v23 = *a2 | (a2[2] << 16);
          goto LABEL_50;
        case 4:
          v23 = *a2;
LABEL_50:
          v28 = (v23 | (v21 << (8 * v9))) + 2;
          v20 = v23 + 2;
          if (v9 < 4)
          {
            v20 = v28;
          }

          break;
        default:
          break;
      }
    }

    if (v20 == 1)
    {
      *a1 = *a2;
      v29 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v29 = 0;
    }

    a1[v9] = v29;
    a1[v10] = 1;
    return a1;
  }

  if (!v11)
  {
    v16 = a2[v8];
    v17 = v16 - 2;
    if (v16 >= 2)
    {
      if (v8 <= 3)
      {
        v18 = v8;
      }

      else
      {
        v18 = 4;
      }

      switch(v18)
      {
        case 1:
          v19 = *a2;
          goto LABEL_43;
        case 2:
          v19 = *a2;
          goto LABEL_43;
        case 3:
          v19 = *a2 | (a2[2] << 16);
          goto LABEL_43;
        case 4:
          v19 = *a2;
LABEL_43:
          v25 = (v19 | (v17 << (8 * v8))) + 2;
          v16 = v19 + 2;
          if (v8 < 4)
          {
            v16 = v25;
          }

          break;
        default:
          break;
      }
    }

    if (v16 == 1)
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v26 = 1;
    }

    else
    {
      v26 = 0;
      v27 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v27;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v8] = v26;
    a1[v10] = 0;
    return a1;
  }

  return memcpy(a1, a2, v10 + 1);
}

unsigned __int8 *sub_1DCF0D8FC(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a1 == a2)
  {
    return a1;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  if (v7 <= 0x28)
  {
    v8 = 40;
  }

  else
  {
    v8 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v7 <= 8)
  {
    v9 = 8;
  }

  else
  {
    v9 = *(*(AssociatedTypeWitness - 8) + 64);
  }

  if (v9 + 1 <= (v8 + 1))
  {
    v10 = v8 + 1;
  }

  else
  {
    v10 = v9 + 1;
  }

  v11 = a1[v10];
  v12 = 8 * v10;
  v13 = v11 - 2;
  if (v11 >= 2)
  {
    if (v10 <= 3)
    {
      v14 = v10;
    }

    else
    {
      v14 = 4;
    }

    switch(v14)
    {
      case 1:
        v15 = *a1;
        goto LABEL_20;
      case 2:
        v15 = *a1;
        goto LABEL_20;
      case 3:
        v15 = *a1 | (a1[2] << 16);
        goto LABEL_20;
      case 4:
        v15 = *a1;
LABEL_20:
        v16 = (v15 | (v13 << v12)) + 2;
        v11 = v15 + 2;
        if (v10 < 4)
        {
          v11 = v16;
        }

        break;
      default:
        break;
    }
  }

  if (v11 == 1)
  {
    v21 = a1[v9];
    v22 = v21 - 2;
    if (v21 >= 2)
    {
      if (v9 <= 3)
      {
        v23 = v9;
      }

      else
      {
        v23 = 4;
      }

      switch(v23)
      {
        case 1:
          v24 = *a1;
          goto LABEL_47;
        case 2:
          v24 = *a1;
          goto LABEL_47;
        case 3:
          v24 = *a1 | (a1[2] << 16);
          goto LABEL_47;
        case 4:
          v24 = *a1;
LABEL_47:
          if (v9 < 4)
          {
            v21 = (v24 | (v22 << (8 * v9))) + 2;
          }

          else
          {
            v21 = v24 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v21 == 1)
    {

      goto LABEL_53;
    }
  }

  else
  {
    if (v11)
    {
      goto LABEL_53;
    }

    v17 = a1[v8];
    v18 = v17 - 2;
    if (v17 >= 2)
    {
      if (v8 <= 3)
      {
        v19 = v8;
      }

      else
      {
        v19 = 4;
      }

      switch(v19)
      {
        case 1:
          v20 = *a1;
          goto LABEL_41;
        case 2:
          v20 = *a1;
          goto LABEL_41;
        case 3:
          v20 = *a1 | (a1[2] << 16);
          goto LABEL_41;
        case 4:
          v20 = *a1;
LABEL_41:
          if (v8 < 4)
          {
            v17 = (v20 | (v18 << (8 * v8))) + 2;
          }

          else
          {
            v17 = v20 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v17 != 1)
    {
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      goto LABEL_53;
    }
  }

  (*(v6 + 8))(a1, AssociatedTypeWitness);
LABEL_53:
  v25 = a2[v10];
  v26 = v25 - 2;
  if (v25 >= 2)
  {
    if (v10 <= 3)
    {
      v27 = v10;
    }

    else
    {
      v27 = 4;
    }

    switch(v27)
    {
      case 1:
        v28 = *a2;
        goto LABEL_62;
      case 2:
        v28 = *a2;
        goto LABEL_62;
      case 3:
        v28 = *a2 | (a2[2] << 16);
        goto LABEL_62;
      case 4:
        v28 = *a2;
LABEL_62:
        v29 = (v28 | (v26 << v12)) + 2;
        v25 = v28 + 2;
        if (v10 < 4)
        {
          v25 = v29;
        }

        break;
      default:
        break;
    }
  }

  if (v25 == 1)
  {
    v34 = a2[v9];
    v35 = v34 - 2;
    if (v34 >= 2)
    {
      if (v9 <= 3)
      {
        v36 = v9;
      }

      else
      {
        v36 = 4;
      }

      switch(v36)
      {
        case 1:
          v37 = *a2;
          goto LABEL_94;
        case 2:
          v37 = *a2;
          goto LABEL_94;
        case 3:
          v37 = *a2 | (a2[2] << 16);
          goto LABEL_94;
        case 4:
          v37 = *a2;
LABEL_94:
          if (v9 < 4)
          {
            v34 = (v37 | (v35 << (8 * v9))) + 2;
          }

          else
          {
            v34 = v37 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v34 == 1)
    {
      *a1 = *a2;
      v41 = 1;
    }

    else
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v41 = 0;
    }

    a1[v9] = v41;
    a1[v10] = 1;
    return a1;
  }

  if (!v25)
  {
    v30 = a2[v8];
    v31 = v30 - 2;
    if (v30 >= 2)
    {
      if (v8 <= 3)
      {
        v32 = v8;
      }

      else
      {
        v32 = 4;
      }

      switch(v32)
      {
        case 1:
          v33 = *a2;
          goto LABEL_86;
        case 2:
          v33 = *a2;
          goto LABEL_86;
        case 3:
          v33 = *a2 | (a2[2] << 16);
          goto LABEL_86;
        case 4:
          v33 = *a2;
LABEL_86:
          if (v8 < 4)
          {
            v30 = (v33 | (v31 << (8 * v8))) + 2;
          }

          else
          {
            v30 = v33 + 2;
          }

          break;
        default:
          break;
      }
    }

    if (v30 == 1)
    {
      (*(v6 + 32))(a1, a2, AssociatedTypeWitness);
      v39 = 1;
    }

    else
    {
      v39 = 0;
      v40 = *(a2 + 1);
      *a1 = *a2;
      *(a1 + 1) = v40;
      *(a1 + 4) = *(a2 + 4);
    }

    a1[v8] = v39;
    a1[v10] = 0;
    return a1;
  }

  return memcpy(a1, a2, v10 + 1);
}

uint64_t sub_1DCF0DDCC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 40;
  if (v5 > 0x28)
  {
    v6 = v5;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v7 = v5 + 1;
  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 253) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_27;
      }

      goto LABEL_19;
    }

    if (v13 < 2)
    {
LABEL_27:
      v15 = *(a1 + v8);
      if (v15 >= 3)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_27;
  }

LABEL_19:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v14) + 254;
}

void sub_1DCF0DF44(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = 40;
  if (v7 > 0x28)
  {
    v8 = v7;
  }

  if (v7 <= 8)
  {
    v7 = 8;
  }

  v9 = v7 + 1;
  if (v9 <= v8 + 1)
  {
    v9 = v8 + 1;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((a3 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (a2 > 0xFD)
  {
    v13 = a2 - 254;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v9 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v9 + 1);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        break;
      case 2:
        *&a1[v10] = v14;
        break;
      case 3:
LABEL_41:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = v14;
        break;
      default:
        return;
    }
  }

  else
  {
    switch(v12)
    {
      case 1:
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      case 2:
        *&a1[v10] = 0;
        goto LABEL_29;
      case 3:
        goto LABEL_41;
      case 4:
        *&a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_30;
      default:
LABEL_29:
        if (a2)
        {
LABEL_30:
          a1[v9] = -a2;
        }

        break;
    }
  }
}

uint64_t sub_1DCF0E144(unsigned __int8 *a1, uint64_t a2)
{
  v3 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v4 = 40;
  if (v3 > 0x28)
  {
    v4 = v3;
  }

  if (v3 <= 8)
  {
    v3 = 8;
  }

  v5 = v3 + 1;
  if (v5 <= v4 + 1)
  {
    v5 = v4 + 1;
  }

  result = a1[v5];
  if (result >= 2)
  {
    if (v5 <= 3)
    {
      v7 = v5;
    }

    else
    {
      v7 = 4;
    }

    switch(v7)
    {
      case 1:
        v8 = *a1;
        goto LABEL_16;
      case 2:
        v8 = *a1;
        goto LABEL_16;
      case 3:
        v8 = *a1 | (a1[2] << 16);
        goto LABEL_16;
      case 4:
        v8 = *a1;
LABEL_16:
        v9 = (v8 | ((result - 2) << (8 * v5))) + 2;
        v10 = v8 + 2;
        if (v5 >= 4)
        {
          result = v10;
        }

        else
        {
          result = v9;
        }

        break;
      default:
        return result;
    }
  }

  return result;
}

void sub_1DCF0E238(_BYTE *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = 40;
  if (v5 > 0x28)
  {
    v6 = v5;
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v7 = v5 + 1;
  if (v7 <= v6 + 1)
  {
    v8 = v6 + 1;
  }

  else
  {
    v8 = v7;
  }

  if (a2 > 1)
  {
    v9 = a2 - 2;
    if (v8 < 4)
    {
      a1[v8] = (v9 >> (8 * v8)) + 2;
      if (v8)
      {
        v10 = v9 & ~(-1 << (8 * v8));
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v10;
          a1[2] = BYTE2(v10);
        }

        else if (v8 == 2)
        {
          *a1 = v10;
        }

        else
        {
          *a1 = v9;
        }
      }
    }

    else
    {
      a1[v8] = 2;
      bzero(a1, v8);
      *a1 = v9;
    }
  }

  else
  {
    a1[v8] = a2;
  }
}

unint64_t sub_1DCF0E35C()
{
  result = qword_1ECCA9B40;
  if (!qword_1ECCA9B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B40);
  }

  return result;
}

uint64_t sub_1DCF0E3B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9B58, &qword_1DD1014F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DCF0E418(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1DCB193FC;

  return sub_1DCF0B5F0(a1, a2, v2);
}

unint64_t sub_1DCF0E4C4()
{
  result = qword_1ECCA9B68;
  if (!qword_1ECCA9B68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA9B60, &qword_1DD101508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B68);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for ReactiveFlowError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DCF0E608()
{
  result = qword_1ECCA9B70;
  if (!qword_1ECCA9B70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCA9B70);
  }

  return result;
}

uint64_t sub_1DCF0E65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = swift_allocObject();
  v9[2] = a3;
  v9[3] = a4;
  v9[4] = a1;
  v9[5] = a2;
  v10 = swift_allocObject();
  v10[2] = a3;
  v10[3] = a4;
  v10[4] = a1;
  v10[5] = a2;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  swift_bridgeObjectRetain_n();
  sub_1DD0DDC1C();
}

unint64_t ReactiveFlowPlan.description.getter(uint64_t a1, uint64_t a2)
{
  sub_1DD0DEC1C();

  swift_getAssociatedTypeWitness();
  v2 = sub_1DD0DF2AC();
  MEMORY[0x1E12A6780](v2);

  MEMORY[0x1E12A6780](62, 0xE100000000000000);
  return 0xD000000000000011;
}

uint64_t static ReactiveFlowPlan._buildEventPublisher(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v7);
  v9 = v17 - v8;
  (*(a3 + 40))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 48))(v9, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  v17[1] = v11;
  v12 = swift_getAssociatedTypeWitness();
  type metadata accessor for _FlowPlanEvent(255, v12, v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECCA33E0, &unk_1DD0E1650);
  sub_1DD0DDAEC();
  swift_getWitnessTable();
  v15 = sub_1DD0DDBFC();

  return v15;
}

void sub_1DCF0EAB0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v6 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v6, qword_1ECCD2748);
  sub_1DCB17CA0(a1, v17);

  v7 = sub_1DD0DD8EC();
  v8 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1DCB10E9C(a2, a3, &v16);
    *(v9 + 12) = 2080;
    sub_1DCB17CA0(v17, v15);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCA9B78, &qword_1DD101600);
    v11 = sub_1DD0DE02C();
    v13 = v12;
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v14 = sub_1DCB10E9C(v11, v13, &v16);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1DCAFC000, v7, v8, "[%s] receiveSubscription: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v10, -1, -1);
    MEMORY[0x1E12A8390](v9, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v17);
  }
}

void sub_1DCF0EC94(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v26 - v14;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1ECCD2748);
  v17 = *(v8 + 16);
  v17(v15, a1, AssociatedTypeWitness);

  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v20 = 136315394;
    *(v20 + 4) = sub_1DCB10E9C(v28, a3, &v29);
    *(v20 + 12) = 2080;
    v17(v12, v15, AssociatedTypeWitness);
    v21 = sub_1DD0DE02C();
    v23 = v22;
    (*(v8 + 8))(v15, AssociatedTypeWitness);
    v24 = sub_1DCB10E9C(v21, v23, &v29);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "[%s] receiveOutput: %s", v20, 0x16u);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v25, -1, -1);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v15, AssociatedTypeWitness);
  }
}

void sub_1DCF0EF78(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v28 = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = sub_1DD0DDADC();
  v8 = *(v7 - 8);
  v10 = MEMORY[0x1EEE9AC00](v7, v9);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v26 - v14;
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v16, qword_1ECCD2748);
  v17 = *(v8 + 16);
  v17(v15, a1, v7);

  v18 = sub_1DD0DD8EC();
  v19 = sub_1DD0DE6DC();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = v27;
    *v20 = 136315394;
    *(v20 + 4) = sub_1DCB10E9C(v28, a3, &v29);
    *(v20 + 12) = 2080;
    v17(v12, v15, v7);
    v21 = sub_1DD0DE02C();
    v23 = v22;
    (*(v8 + 8))(v15, v7);
    v24 = sub_1DCB10E9C(v21, v23, &v29);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1DCAFC000, v18, v19, "[%s] receiveCompletion: %s", v20, 0x16u);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x1E12A8390](v25, -1, -1);
    MEMORY[0x1E12A8390](v20, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v15, v7);
  }
}

void sub_1DCF0F290(uint64_t a1, unint64_t a2)
{
  if (qword_1ECCA13A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1DD0DD8FC();
  __swift_project_value_buffer(v4, qword_1ECCD2748);

  oslog = sub_1DD0DD8EC();
  v5 = sub_1DD0DE6DC();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_1DCB10E9C(a1, a2, &v9);
    _os_log_impl(&dword_1DCAFC000, oslog, v5, "[%s] receiveCancel", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E12A8390](v7, -1, -1);
    MEMORY[0x1E12A8390](v6, -1, -1);
  }
}

void sub_1DCF0F3F0()
{
  type metadata accessor for AnyFlow();
  swift_allocObject();
  sub_1DD0DCF8C();
}

void *sub_1DCF0F50C()
{
  result = 0;
  if ((*(v0 + 47) & 0x20) != 0)
  {
    v2 = *(v0 + 32);
    if (v2)
    {
      v3 = v2;
      return v2;
    }
  }

  return result;
}