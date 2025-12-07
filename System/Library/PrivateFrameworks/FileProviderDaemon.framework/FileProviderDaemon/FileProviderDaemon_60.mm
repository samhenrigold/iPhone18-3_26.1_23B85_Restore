unint64_t ResidencyReason.description.getter()
{
  v1 = *v0;
  v2 = 0x73746E65636572;
  v3 = 0x4C64657461657263;
  if (v1 != 4)
  {
    v3 = 0x7571655272657375;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1CF67D0BC()
{
  sub_1CF9E81D8();
  sub_1CF9E81F8();
  return sub_1CF9E8228();
}

uint64_t sub_1CF67D134(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF9E81F8();
  return sub_1CF9E8228();
}

unint64_t sub_1CF67D194()
{
  result = qword_1EC4C21C0;
  if (!qword_1EC4C21C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21C0);
  }

  return result;
}

unint64_t sub_1CF67D1E8()
{
  v1 = *v0;
  v2 = 0x73746E65636572;
  v3 = 0x4C64657461657263;
  if (v1 != 4)
  {
    v3 = 0x7571655272657375;
  }

  if (v1 == 3)
  {
    v3 = 0xD000000000000011;
  }

  if (v1 == 1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD000000000000029;
  }

  if (*v0)
  {
    v2 = v4;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1CF67D370()
{
  result = qword_1EC4C21C8;
  if (!qword_1EC4C21C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C21D0, &qword_1CFA10050);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C21C8);
  }

  return result;
}

unint64_t sub_1CF67D404()
{
  result = qword_1EC4C21D8[0];
  if (!qword_1EC4C21D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC4C21D8);
  }

  return result;
}

uint64_t sub_1CF67D510@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF67D63C@<X0>(uint64_t a1@<X8>)
{
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ReconciliationID(0, v4);
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_1CF67D8BC@<X0>(uint64_t a1@<X8>)
{
  v4[0] = swift_getAssociatedTypeWitness();
  v4[1] = swift_getAssociatedTypeWitness();
  v4[2] = swift_getAssociatedConformanceWitness();
  v4[3] = swift_getAssociatedConformanceWitness();
  v2 = type metadata accessor for ThrottlingKey(0, v4);
  return (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
}

uint64_t sub_1CF67DA84()
{
  sub_1CF04ADA4();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF67DAB8(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF67DB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_allocObject();
  v8 = sub_1CF052464(a1, a2, a3, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
  return v8;
}

uint64_t sub_1CF67DC24()
{
  v1 = *(*v0 + 576);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 8);

  return v3(v0 + v1, AssociatedTypeWitness);
}

uint64_t sub_1CF67DCD4()
{
  sub_1CF059B48();

  return swift_deallocClassInstance();
}

uint64_t sub_1CF67DD2C()
{
  v1 = *(v0 + 112);
  if (v1 == 2)
  {
    sub_1CF50F224("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/job/Job.swift", 97, v1, 162);
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 104);
  *(v0 + 96) = 0;
  *(v0 + 104) = 0;
  *(v0 + 112) = 4;
  sub_1CF03D7A8(v2, v3, v1);
  return v0;
}

Swift::Bool __swiftcall NSFileProviderContentPolicy.policyRequiersEvictabilityReevaluation(isDir:)(Swift::Bool isDir)
{
  v2 = 1;
  if (v1 > 999)
  {
    if ((v1 - 1000) < 2)
    {
      return isDir;
    }

    if (v1 != 1002)
    {
      return v1 == 1003 && isDir;
    }

    return v2;
  }

  if (v1 == 3)
  {
    return v2;
  }

  v2 = isDir;
  if (v1 == 500)
  {
    return v2;
  }

  if (v1 == 501)
  {
    return (fpfs_supports_indexAllRemoteItems() ^ 1) & 1;
  }

  return v1 == 1003 && isDir;
}

Swift::Bool __swiftcall NSFileProviderContentPolicy.policyIsMustDownloadOne(isDir:speculativeFulfilled:)(Swift::Bool isDir, Swift::Bool speculativeFulfilled)
{
  v3 = 1;
  if (v2 > 999)
  {
    if ((v2 - 1000) < 2)
    {
      return isDir;
    }

    if (v2 != 1002)
    {
      return v2 == 1003 && isDir;
    }

    return v3;
  }

  if (v2 == 3)
  {
    return v3;
  }

  v3 = isDir;
  if (v2 == 500)
  {
    return v3;
  }

  if (v2 != 501)
  {
    return v2 == 1003 && isDir;
  }

  v6 = fpfs_supports_indexAllRemoteItems();
  v7 = !speculativeFulfilled && !isDir;
  if (v6)
  {
    return 0;
  }

  return v7;
}

uint64_t sub_1CF67DF08(unsigned __int8 a1, uint64_t a2)
{
  if (a2 != 3 && a2 != 1002 && a2 != 500 || (a1 | 2) == 3)
  {
    return a2;
  }

  if (qword_1EDEAB628 != -1)
  {
    v5 = a1;
    v4 = a2;
    swift_once();
    a1 = v5;
    a2 = v4;
  }

  v3 = 1;
  if (a1 != 2)
  {
    v3 = 2;
  }

  if ((dword_1EDEBBA40 - 1) <= 1)
  {
    return v3;
  }

  return a2;
}

uint64_t sub_1CF67DFC4(unsigned __int8 a1)
{
  v1 = a1;
  if (qword_1EDEAB628 != -1)
  {
    swift_once();
  }

  v2 = 1;
  if ((v1 - 1) >= 3)
  {
    v2 = 2;
  }

  v3 = 1;
  if ((v1 & 0xFE) != 2)
  {
    v3 = 2;
  }

  if (dword_1EDEBBA40 == 3 || dword_1EDEBBA40 == 9)
  {
    v5 = 1;
  }

  else
  {
    v5 = v3;
  }

  if ((dword_1EDEBBA40 - 1) >= 2)
  {
    return v5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF67E058(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return a2;
  }

  if (a1 != 500)
  {
    if (a1 != 501)
    {
      return a1;
    }

    return a2;
  }

  if (a2 > 2)
  {
    if (a2 == 3)
    {
      return 1002;
    }

    if (a2 == 502)
    {
      return 1003;
    }
  }

  else
  {
    if (a2 == 1)
    {
      return 1000;
    }

    if (a2 == 2)
    {
      return 1001;
    }
  }

  if (a2 == 1003)
  {
    return 1003;
  }

  else
  {
    return 500;
  }
}

uint64_t sub_1CF67E0DC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = a2[1];
  (*(*(a4 - 8) + 32))(a6, a1, a4);
  v13 = type metadata accessor for ItemState(0, a4, a5, v12);
  v14 = (a6 + *(v13 + 36));
  *v14 = v10;
  v14[1] = v11;
  v15 = a6 + *(v13 + 40);

  return sub_1CEFE4874(a3, v15);
}

uint64_t sub_1CF67E18C(uint64_t a1)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](3829820, 0xE300000000000000);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v1 = sub_1CF9E6888();
  v2 = [v1 fp_obfuscatedFilename];

  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  MEMORY[0x1D3868CC0](v3, v5);
  v5, v6, v7, v8, v9, v10, v11, v12;
  MEMORY[0x1D3868CC0](8226, 0xE200000000000000);
  v13 = sub_1CF0720C8();
  v15 = v14;
  MEMORY[0x1D3868CC0](v13);
  v15, v16, v17, v18, v19, v20, v21, v22;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0;
}

void sub_1CF67E2C0(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a2 + 8);
  v8 = *(a3 + 40);
  v9 = v4 + v8;
  v10 = a1 + v8;
  v231 = *a2;
  v232 = v7;
  sub_1CF6781CC((a1 + v8), &v231, &v233);
  if ((sub_1CF9E6868() & 1) == 0)
  {
    v233 |= 2uLL;
  }

  v11 = *(a3 + 36);
  v12 = (v4 + v11);
  v14 = *(v4 + v11);
  v13 = *(v4 + v11 + 8);
  v15 = (a1 + v11);
  v17 = *(a1 + v11);
  v16 = *(a1 + v11 + 8);
  v18 = sub_1CEFE7394(v14, v13);
  if (!v19)
  {
    goto LABEL_9;
  }

  if (v18 == 12565487 && v19 == 0xA300000000000000)
  {
    v19, v19, v20, v21, v22, v23, v24, v25;
  }

  else
  {
    v27 = v19;
    v28 = sub_1CF9E8048();
    v27, v29, v30, v31, v32, v33, v34, v35;
    if ((v28 & 1) == 0)
    {
LABEL_9:

      goto LABEL_12;
    }
  }

  v36 = sub_1CF9E69E8();
  v37 = sub_1CF025150(v36, v14, v13);
  v39 = v38;
  v14 = MEMORY[0x1D3868C10](v37);
  v13 = v40;
  v39, v40, v41, v42, v43, v44, v45, v46;
LABEL_12:
  v47 = sub_1CEFE7394(v17, v16);
  if (!v48)
  {
LABEL_18:

    goto LABEL_21;
  }

  if (v47 == 12565487 && v48 == 0xA300000000000000)
  {
    v48, v48, v49, v50, v51, v52, v53, v54;
  }

  else
  {
    v56 = v48;
    v57 = sub_1CF9E8048();
    v56, v58, v59, v60, v61, v62, v63, v64;
    if ((v57 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v72 = sub_1CF9E69E8();
  v73 = sub_1CF025150(v72, v17, v16);
  v75 = v74;
  v17 = MEMORY[0x1D3868C10](v73);
  v16 = v76;
  v75, v76, v77, v78, v79, v80, v81, v82;
LABEL_21:
  if (v14 == v17 && v13 == v16)
  {
    v16, v65, v66, v67, v68, v69, v70, v71;
    v13, v99, v100, v101, v102, v103, v104, v105;
  }

  else
  {
    v84 = sub_1CF9E8048();
    v16, v85, v86, v87, v88, v89, v90, v91;
    v13, v92, v93, v94, v95, v96, v97, v98;
    if ((v84 & 1) == 0)
    {
      v233 |= 1uLL;
    }
  }

  v106 = *(type metadata accessor for ItemMetadata(0) + 56);
  v107 = *(v9 + v106 + 8);
  if (v107)
  {
    v108 = *(v9 + v106);
    v109 = v107;
  }

  else
  {
    v108 = *v12;
    v109 = v12[1];
  }

  v110 = *(v10 + v106 + 8);
  if (v110)
  {
    v111 = *(v10 + v106);
    v112 = v110;
  }

  else
  {
    v111 = *v15;
    v112 = v15[1];
  }

  v113 = sub_1CEFE7394(v108, v109);
  if (v114)
  {
    if (v113 == 12565487 && v114 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v115, v116, v117, v118, v119, v120;
LABEL_39:
      v130 = sub_1CF9E69E8();
      v131 = sub_1CF025150(v130, v108, v109);
      v133 = v132;
      v108 = MEMORY[0x1D3868C10](v131);
      v135 = v134;
      v133, v134, v136, v137, v138, v139, v140, v141;
      goto LABEL_41;
    }

    v121 = v114;
    v122 = sub_1CF9E8048();
    v121, v123, v124, v125, v126, v127, v128, v129;
    if (v122)
    {
      goto LABEL_39;
    }
  }

  v135 = v109;
LABEL_41:
  v142 = sub_1CEFE7394(v111, v112);
  if (v143)
  {
    if (v142 == 12565487 && v143 == 0xA300000000000000)
    {
      0xA300000000000000, 0xA300000000000000, v144, v145, v146, v147, v148, v149;
      goto LABEL_46;
    }

    v150 = v143;
    v151 = sub_1CF9E8048();
    v150, v152, v153, v154, v155, v156, v157, v158;
    if (v151)
    {
LABEL_46:
      v159 = sub_1CF9E69E8();
      v160 = sub_1CF025150(v159, v111, v112);
      v162 = v161;
      v163 = MEMORY[0x1D3868C10](v160);
      v165 = v164;
      v162, v164, v166, v167, v168, v169, v170, v171;
      if (v108 != v163)
      {
        goto LABEL_51;
      }

      goto LABEL_49;
    }
  }

  v165 = v112;
  if (v108 != v111)
  {
LABEL_51:
    v201 = sub_1CF9E8048();
    v165, v202, v203, v204, v205, v206, v207, v208;
    v135, v209, v210, v211, v212, v213, v214, v215;
    v109, v216, v217, v218, v219, v220, v221, v222;
    v112, v223, v224, v225, v226, v227, v228, v229;
    v200 = v233 | ((v201 & 1) == 0);
    goto LABEL_52;
  }

LABEL_49:
  if (v135 != v165)
  {
    goto LABEL_51;
  }

  v165, v172, v173, v174, v175, v176, v177, v178;
  v135, v179, v180, v181, v182, v183, v184, v185;
  v109, v186, v187, v188, v189, v190, v191, v192;
  v112, v193, v194, v195, v196, v197, v198, v199;
  v200 = v233;
LABEL_52:
  *a4 = v200;
}

void sub_1CF67E758(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *a1;
  (*(*(a3 - 8) + 16))(a4, v5);
  if ((v9 & 2) != 0)
  {
    (*(*(*(a3 + 16) - 8) + 24))(a4, a2);
  }

  if (v9)
  {
    v10 = *(a3 + 36);
    v12 = *(a2 + v10);
    v11 = *(a2 + v10 + 8);
    v13 = (a4 + v10);
    v14 = *(a4 + v10 + 8);

    v14, v15, v16, v17, v18, v19, v20, v21;
    *v13 = v12;
    v13[1] = v11;
  }

  v22 = v9;
  sub_1CF677700(&v22, a2 + *(a3 + 40));
}

uint64_t static ItemStateVersion.zero(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a2 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 48))(v12, v11, v8);
  v19[4] = 0;
  v19[5] = 0xE000000000000000;
  v19[2] = 58;
  v19[3] = 0xE100000000000000;
  v19[0] = 47;
  v19[1] = 0xE100000000000000;
  sub_1CEFE4E68();
  v13 = sub_1CF9E7668();
  v15 = v14;
  (*(v7 + 32))(a4, v10, a2);
  result = type metadata accessor for ItemStateVersion(0, a2, a3, v16);
  v18 = (a4 + *(result + 36));
  *v18 = v13;
  v18[1] = v15;
  return result;
}

BOOL ItemStateVersion.isZero.getter(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*(v9 + 24) + 48))(v4, *(v9 + 24), v6);
  v10 = sub_1CF9E6868();
  (*(v5 + 8))(v8, v4);
  if ((v10 & 1) == 0)
  {
    return 0;
  }

  v11 = (v2 + *(a1 + 36));
  v13 = *v11;
  v12 = v11[1];
  v14 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v15 = v14;
  }

  return v15 == 0;
}

uint64_t ItemStateVersion.description.getter(uint64_t a1)
{
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](47, 0xE100000000000000);
  v1 = sub_1CF9E6888();
  v2 = [v1 fp_obfuscatedFilename];

  v3 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v5 = v4;

  MEMORY[0x1D3868CC0](v3, v5);
  v5, v6, v7, v8, v9, v10, v11, v12;
  return 0;
}

uint64_t static ItemStateVersion.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1CF9E6868() & 1) == 0)
  {
    v33 = 0;
    return v33 & 1;
  }

  v9 = *(type metadata accessor for ItemStateVersion(0, a3, a4, v8) + 36);
  v11 = *(a1 + v9);
  v10 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v14 = *v12;
  v13 = v12[1];
  v15 = sub_1CEFE7394(v11, v10);
  if (!v16)
  {
    goto LABEL_8;
  }

  if (v15 == 12565487 && v16 == 0xA300000000000000)
  {
    v16, v16, v17, v18, v19, v20, v21, v22;
  }

  else
  {
    v24 = v16;
    v25 = sub_1CF9E8048();
    v24, v26, v27, v28, v29, v30, v31, v32;
    if ((v25 & 1) == 0)
    {
LABEL_8:

      goto LABEL_12;
    }
  }

  v34 = sub_1CF9E69E8();
  v35 = sub_1CF025150(v34, v11, v10);
  v37 = v36;
  v11 = MEMORY[0x1D3868C10](v35);
  v10 = v38;
  v37, v38, v39, v40, v41, v42, v43, v44;
LABEL_12:
  v45 = sub_1CEFE7394(v14, v13);
  if (v46)
  {
    if (v45 == 12565487 && v46 == 0xA300000000000000)
    {
      v46, v46, v47, v48, v49, v50, v51, v52;
    }

    else
    {
      v54 = v46;
      v55 = sub_1CF9E8048();
      v54, v56, v57, v58, v59, v60, v61, v62;
      if ((v55 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v70 = sub_1CF9E69E8();
    v71 = sub_1CF025150(v70, v14, v13);
    v73 = v72;
    v14 = MEMORY[0x1D3868C10](v71);
    v13 = v74;
    v73, v74, v75, v76, v77, v78, v79, v80;
    goto LABEL_21;
  }

LABEL_18:

LABEL_21:
  if (v11 == v14 && v10 == v13)
  {
    v33 = 1;
  }

  else
  {
    v33 = sub_1CF9E8048();
  }

  v13, v63, v64, v65, v66, v67, v68, v69;
  v10, v82, v83, v84, v85, v86, v87, v88;
  return v33 & 1;
}

uint64_t sub_1CF67EF18(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x4449746E65726170 && a2 == 0xE800000000000000;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x656D616E656C6966 && a2 == 0xE800000000000000)
  {
    0xE800000000000000, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1CF67EFE4(char a1)
{
  if (a1)
  {
    return 0x656D616E656C6966;
  }

  else
  {
    return 0x4449746E65726170;
  }
}

uint64_t sub_1CF67F024(uint64_t a1)
{
  sub_1CF9E81D8();
  sub_1CF0BA674(v3, *v1);
  return sub_1CF9E8228();
}

uint64_t sub_1CF67F07C@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, _BYTE *a3@<X8>, uint64_t a4@<X2>, void *a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, void *a8@<X7>)
{
  result = sub_1CF67EF18(a1, a2, *(a4 + 16), *(a4 + 24), a5, a6, a7, a8);
  *a3 = result;
  return result;
}

uint64_t sub_1CF67F0AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1CF1B93DC();
  *a1 = result;
  return result;
}

uint64_t sub_1CF67F0D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_1CF67F12C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t ItemStateVersion.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[0] = a2;
  v5 = *(a2 + 24);
  v23 = *(a2 + 16);
  type metadata accessor for ItemStateVersion.CodingKeys(255, v23, v5, a4);
  swift_getWitnessTable();
  v6 = sub_1CF9E7F78();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v22 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v22[1];
  sub_1CF9E82A8();
  LOBYTE(v25) = 0;
  v11 = v24;
  sub_1CF9E7F08();
  if (!v11)
  {
    v12 = (v10 + *(v22[0] + 36));
    v13 = v12[1];
    v25 = *v12;
    v26 = v13;
    v27 = 1;
    sub_1CF1E60E8();

    sub_1CF9E7F08();
    v26, v14, v15, v16, v17, v18, v19, v20;
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t ItemStateVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a4;
  v30 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ItemStateVersion.CodingKeys(255, v8, v9, v10);
  swift_getWitnessTable();
  v33 = sub_1CF9E7E08();
  v29 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v12 = &v27 - v11;
  v31 = a2;
  v14 = type metadata accessor for ItemStateVersion(0, a2, a3, v13);
  v27 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v27 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v34;
  sub_1CF9E8298();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v16;
  v34 = v14;
  v19 = v29;
  v20 = v30;
  LOBYTE(v35) = 0;
  v21 = v31;
  sub_1CF9E7D88();
  (*(v20 + 32))(v18, v32, v21);
  v37 = 1;
  sub_1CF1E613C();
  sub_1CF9E7D88();
  (*(v19 + 8))(v12, v33);
  v22 = v36;
  v23 = v34;
  v24 = &v18[*(v34 + 36)];
  *v24 = v35;
  *(v24 + 1) = v22;
  v25 = v27;
  (*(v27 + 16))(v28, v18, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return (*(v25 + 8))(v18, v23);
}

uint64_t sub_1CF67F71C(void *a1, uint64_t a2)
{
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t sub_1CF67F870(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1CF67F8E8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ItemMetadata(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF67F978(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1CF9E5CF8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v6 + 64);
  v12 = *(v9 + 80);
  if (v10 <= v7)
  {
    v14 = v7;
  }

  else
  {
    v14 = *(v9 + 84);
  }

  if (v14 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  else
  {
    v15 = v14;
  }

  if (v10)
  {
    v16 = 7;
  }

  else
  {
    v16 = 8;
  }

  if (!a2)
  {
    return 0;
  }

  v17 = v12 | 7;
  v18 = v12 + 12;
  if (v15 >= a2)
  {
    goto LABEL_33;
  }

  v13 = *(*(v8 - 8) + 64);
  v19 = ((v12 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~v17) + ((((((((((v16 + v13 + ((v12 + ((((((((v13 + ((v13 + v12 + (v18 & ~v12)) & ~v12) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v12)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16;
  v20 = v19 & 0xFFFFFFF8;
  if ((v19 & 0xFFFFFFF8) != 0)
  {
    v21 = 2;
  }

  else
  {
    v21 = a2 - v15 + 1;
  }

  if (v21 >= 0x10000)
  {
    v22 = 4;
  }

  else
  {
    v22 = 2;
  }

  if (v21 < 0x100)
  {
    v22 = 1;
  }

  if (v21 >= 2)
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v24 = *(a1 + v19);
      if (!v24)
      {
        goto LABEL_33;
      }
    }

LABEL_30:
    v26 = v24 - 1;
    if (v20)
    {
      v26 = 0;
      v27 = *a1;
    }

    else
    {
      v27 = 0;
    }

    return v15 + (v27 | v26) + 1;
  }

  if (v23)
  {
    v24 = *(a1 + v19);
    if (v24)
    {
      goto LABEL_30;
    }
  }

LABEL_33:
  if (v7 == v15)
  {
    v28 = *(v6 + 48);

    return v28(a1, v7, v5);
  }

  else
  {
    v29 = (a1 + v11 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((v14 & 0x80000000) != 0)
    {
      v31 = *(v9 + 48);

      return v31((v18 + ((v29 + v17 + 16) & ~v17)) & ~v12);
    }

    else
    {
      v30 = *(v29 + 8);
      if (v30 >= 0xFFFFFFFF)
      {
        LODWORD(v30) = -1;
      }

      return (v30 + 1);
    }
  }
}

void sub_1CF67FC64(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v34 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1CF9E5CF8() - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 64);
  v13 = *(v10 + 80);
  v14 = *(v10 + 64);
  if (v11 <= 0x7FFFFFFE)
  {
    v15 = 2147483646;
  }

  else
  {
    v15 = *(v10 + 84);
  }

  if (v9 <= v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = v9;
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  v18 = v13 | 7;
  v19 = (v13 + ((((((((v14 + ((v14 + v13 + ((v13 + 12) & ~v13)) & ~v13) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v13;
  if (!v11)
  {
    ++v14;
  }

  v20 = v14 + v19;
  v21 = ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v17 >= a3)
  {
    v24 = 0;
    v25 = a2 - v17;
    if (a2 <= v17)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (((v13 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) == -16)
    {
      v22 = a3 - v17 + 1;
    }

    else
    {
      v22 = 2;
    }

    if (v22 >= 0x10000)
    {
      v23 = 4;
    }

    else
    {
      v23 = 2;
    }

    if (v22 < 0x100)
    {
      v23 = 1;
    }

    if (v22 >= 2)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }

    v25 = a2 - v17;
    if (a2 <= v17)
    {
LABEL_25:
      if (v24 > 1)
      {
        if (v24 != 2)
        {
          *(a1 + v21) = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_41;
        }

        *(a1 + v21) = 0;
      }

      else if (v24)
      {
        *(a1 + v21) = 0;
        if (!a2)
        {
          return;
        }

LABEL_41:
        if (v9 == v17)
        {
          v28 = *(v34 + 56);

          v28(a1, a2, v9, v7);
        }

        else
        {
          v29 = ((a1 + v12 + 7) & 0xFFFFFFFFFFFFFFF8);
          if ((v16 & 0x80000000) != 0)
          {
            v30 = ((v29 + v18 + 16) & ~v18);
            if (v15 >= a2)
            {
              v33 = *(v10 + 56);

              v33((v30 + v13 + 12) & ~v13, a2);
            }

            else
            {
              v31 = (((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8;
              if (v31 != -16)
              {
                v32 = ~v15 + a2;
                bzero(((v29 + v18 + 16) & ~v18), (v31 + 16));
                *v30 = v32;
              }
            }
          }

          else if ((a2 & 0x80000000) != 0)
          {
            *v29 = a2 & 0x7FFFFFFF;
            v29[1] = 0;
          }

          else
          {
            v29[1] = (a2 - 1);
          }
        }

        return;
      }

      if (!a2)
      {
        return;
      }

      goto LABEL_41;
    }
  }

  if (((v13 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) == -16)
  {
    v26 = v25;
  }

  else
  {
    v26 = 1;
  }

  if (((v13 + ((v12 + 7) & 0xFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFF8) + 31) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 19) & 0xFFFFFFF8) + 25) & 0xFFFFFFF8) != -16)
  {
    v27 = ~v17 + a2;
    bzero(a1, ((v13 + ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) + 16) & ~(v13 | 7)) + ((((((((((v20 + 7) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 16);
    *a1 = v27;
  }

  if (v24 > 1)
  {
    if (v24 == 2)
    {
      *(a1 + v21) = v26;
    }

    else
    {
      *(a1 + v21) = v26;
    }
  }

  else if (v24)
  {
    *(a1 + v21) = v26;
  }
}

uint64_t sub_1CF680064()
{
  v1 = v0;
  v2 = *(v0 + 72);
  if (v2 && *(v2 + 16))
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
    v4 = MEMORY[0x1D3868FE0](v2, v3);
    v6 = v5;
    MEMORY[0x1D3868CC0](v4);
    v6, v7, v8, v9, v10, v11, v12, v13;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v14 = 0xE400000000000000;
    v15 = 980510012;
    v16 = *(v1 + 32);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v15 = 0;
    v14 = 0xE000000000000000;
    v16 = *(v1 + 32);
    if (!v16)
    {
      goto LABEL_8;
    }
  }

  if (*(v16 + 16))
  {
    v17 = MEMORY[0x1D3868FE0]();
    v19 = v18;
    MEMORY[0x1D3868CC0](v17);
    v19, v20, v21, v22, v23, v24, v25, v26;
    v27 = 0xE400000000000000;
    v28 = 980510012;
    goto LABEL_9;
  }

LABEL_8:
  v28 = 0;
  v27 = 0xE000000000000000;
LABEL_9:
  if (*(v1 + 88))
  {
    v29 = sub_1CF9E6888();
    v30 = [v29 fp_obfuscatedFilename];

    v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v33 = v32;

    MEMORY[0x1D3868CC0](v31, v33);
    v33, v34, v35, v36, v37, v38, v39, v40;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v41 = 0xE800000000000000;
    v42 = 0x3A65636976656420;
  }

  else
  {
    v42 = 0;
    v41 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A72657673, 0xE500000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEA18, &qword_1CF9FFB00);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v15, v14);
  v14, v43, v44, v45, v46, v47, v48, v49;
  MEMORY[0x1D3868CC0](0x3A7265766320, 0xE600000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v28, v27);
  v27, v50, v51, v52, v53, v54, v55, v56;
  MEMORY[0x1D3868CC0](v42, v41);
  v41, v57, v58, v59, v60, v61, v62, v63;
  return 0;
}

uint64_t sub_1CF680318()
{
  v1 = v0[5];
  if (v1 && *(v1 + 16))
  {
    v2 = MEMORY[0x1D3868FE0]();
    v4 = v3;
    MEMORY[0x1D3868CC0](v2);
    v4, v5, v6, v7, v8, v9, v10, v11;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v12 = 0xE400000000000000;
    v62 = 980510012;
    v13 = v0[2];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v62 = 0;
    v12 = 0xE000000000000000;
    v13 = v0[2];
    if (!v13)
    {
      goto LABEL_8;
    }
  }

  if (*(v13 + 16))
  {
    v14 = MEMORY[0x1D3868FE0]();
    v16 = v15;
    MEMORY[0x1D3868CC0](v14);
    v16, v17, v18, v19, v20, v21, v22, v23;
    v25 = 980510012;
    v24 = 0xE400000000000000;
    goto LABEL_9;
  }

LABEL_8:
  v25 = 0;
  v24 = 0xE000000000000000;
LABEL_9:
  if (v0[7])
  {
    v26 = sub_1CF9E6888();
    v27 = [v26 fp_obfuscatedFilename];

    v28 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v30 = v29;

    MEMORY[0x1D3868CC0](v28, v30);
    v30, v31, v32, v33, v34, v35, v36, v37;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v39 = 0x3A65636976656420;
    v38 = 0xE800000000000000;
  }

  else
  {
    v39 = 0;
    v38 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A72657673, 0xE500000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v62, v12);
  v12, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](0x3A7265766320, 0xE600000000000000);
  sub_1CF9E7B58();
  MEMORY[0x1D3868CC0](v25, v24);
  v24, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](v39, v38);
  v38, v54, v55, v56, v57, v58, v59, v60;
  return 0;
}

void sub_1CF6805A0(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, char *a3@<X8>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  v11 = a1 == 1937335659 && a2 == 0xE400000000000000;
  if (v11 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a4, a5, a6, a7, a8, a9;
    v13 = 0;
  }

  else if (a1 == 0x7365756C6176 && a2 == 0xE600000000000000)
  {
    0xE600000000000000, a2, a4, a5, a6, a7, a8, a9;
    v13 = 1;
  }

  else
  {
    v14 = sub_1CF9E8048();
    a2, v15, v16, v17, v18, v19, v20, v21;
    if (v14)
    {
      v13 = 1;
    }

    else
    {
      v13 = 2;
    }
  }

  *a3 = v13;
}

uint64_t sub_1CF680678(uint64_t a1)
{
  v2 = sub_1CEFE7B7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF6806B4(uint64_t a1)
{
  v2 = sub_1CEFE7B7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF6806F0(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_1CF6BEA0C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_1CF6BEA0C(v2, v3);
}

double sub_1CF6807F0()
{
  *&xmmword_1EC4EBD90 = 1;
  WORD4(xmmword_1EC4EBD90) = 0;
  qword_1EC4EBDA0 = 0;
  unk_1EC4EBDA8 = 0;
  unk_1EC4EBDAF = 0;
  result = 0.0;
  *(&xmmword_1EC4EBDB0 + 8) = 0u;
  unk_1EC4EBDC8 = 0u;
  BYTE8(xmmword_1EC4EBDD0) = 0;
  qword_1EC4EBDE8 = 0;
  *&xmmword_1EC4EBDF0 = 0;
  qword_1EC4EBDE0 = 0;
  WORD4(xmmword_1EC4EBDF0) = 0;
  xmmword_1EC4EBE00 = 0u;
  xmmword_1EC4EBE10 = 0u;
  xmmword_1EC4EBE20 = 0u;
  xmmword_1EC4EBE30 = 0u;
  byte_1EC4EBE40 = 0;
  *(&xmmword_1EC4EBE70 + 8) = 0u;
  unk_1EC4EBE68 = 0u;
  *(&xmmword_1EC4EBE50 + 8) = 0u;
  *&algn_1EC4EBE41[7] = 0u;
  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF680848()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1CF0710C0(result, *v1->tree + 1, 1, v1, v3, v4, v5, v6);
    *v0 = result;
  }

  return result;
}

_TtC18FileProviderDaemon8FSTester *sub_1CF680894(_TtC18FileProviderDaemon8FSTester *result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = *(*v8)->tester;
  if (&result->super.isa + 1 > (v9 >> 1))
  {
    result = sub_1CF0710C0((v9 > 1), &result->super.isa + 1, 1, *v8, a5, a6, a7, a8);
    *v8 = result;
  }

  return result;
}

char *sub_1CF6808D8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F70, &unk_1CFA0E4F0);
  *v3 = result;
  return result;
}

char *sub_1CF680908(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F80, &qword_1CFA0E500);
  *v3 = result;
  return result;
}

char *sub_1CF680938(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F68, &unk_1CFA107A0);
  *v3 = result;
  return result;
}

char *sub_1CF680968(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F60, &unk_1CFA0E4E0);
  *v3 = result;
  return result;
}

char *sub_1CF680998(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681028(a1, a2, a3, *v3, &qword_1EC4C1F78, &unk_1CFA10790);
  *v3 = result;
  return result;
}

uint64_t sub_1CF6809C8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF680A38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy248_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[14];
  *(a1 + 240) = *(a2 + 30);
  *(a1 + 208) = v12;
  *(a1 + 224) = v13;
  *(a1 + 192) = result;
  return result;
}

char *sub_1CF680B0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681124(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680B2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681240(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CF680B4C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE6F0, &qword_1CF9FE588);
  *v3 = result;
  return result;
}

char *sub_1CF680B7C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE878, &unk_1CF9FE808);
  *v3 = result;
  return result;
}

char *sub_1CF680BAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4C2260, &unk_1CFA10770);
  *v3 = result;
  return result;
}

char *sub_1CF680BDC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE780, &qword_1CF9FE640);
  *v3 = result;
  return result;
}

char *sub_1CF680C0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE6F8, &qword_1CF9FE590);
  *v3 = result;
  return result;
}

char *sub_1CF680C3C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE660, &qword_1CFA107E0);
  *v3 = result;
  return result;
}

char *sub_1CF680C6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4BE668, &qword_1CF9FE4B0);
  *v3 = result;
  return result;
}

char *sub_1CF680C9C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681718(a1, a2, a3, *v3, &qword_1EC4BE810, &qword_1CF9FE6D8);
  *v3 = result;
  return result;
}

void *sub_1CF680CCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681FA0(a1, a2, a3, *v3, &unk_1EC4C4F70, &unk_1CF9FE710, &unk_1EC4BED40, &unk_1CFA00720);
  *v3 = result;
  return result;
}

void *sub_1CF680D0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681460(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680D2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681BE8(a1, a2, a3, *v3, &qword_1EC4C1770, &qword_1CFA05A80, type metadata accessor for NSFileProviderItemIdentifier);
  *v3 = result;
  return result;
}

char *sub_1CF680D70(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4C0488, &qword_1CFA10830);
  *v3 = result;
  return result;
}

char *sub_1CF680DA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681374(a1, a2, a3, *v3, &qword_1EC4C2268, &unk_1CFA10780);
  *v3 = result;
  return result;
}

void *sub_1CF680DD0(void *a1, int64_t a2, char a3)
{
  result = sub_1CF000D30(a1, a2, a3, *v3, &qword_1EC4BE640, &qword_1CF9FE478, type metadata accessor for LocalContainer);
  *v3 = result;
  return result;
}

char *sub_1CF680E14(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681718(a1, a2, a3, *v3, &qword_1EC4BE798, &qword_1CF9FE660);
  *v3 = result;
  return result;
}

void *sub_1CF680E44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681814(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680E64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF68195C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680E84(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681AA0(a1, a2, a3, *v3, &qword_1EC4C2290, &qword_1CFA107E8, &qword_1EC4C2298, &qword_1CFA107F0);
  *v3 = result;
  return result;
}

void *sub_1CF680EC4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681AA0(a1, a2, a3, *v3, &qword_1EC4BE6A8, &qword_1CF9FE518, &qword_1EC4BE6B0, &unk_1CF9FE520);
  *v3 = result;
  return result;
}

void *sub_1CF680F04(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681BE8(a1, a2, a3, *v3, &qword_1EC4C2288, &unk_1CFA107D0, type metadata accessor for NSFileProviderItemDecorationIdentifier);
  *v3 = result;
  return result;
}

void *sub_1CF680F48(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681D18(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1CF680F68(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681FA0(a1, a2, a3, *v3, &qword_1EC4BE790, &qword_1CF9FE658, &unk_1EC4BE360, &qword_1CF9FE650);
  *v3 = result;
  return result;
}

void *sub_1CF680FA8(void *a1, int64_t a2, char a3)
{
  result = sub_1CEFFA068(a1, a2, a3, *v3, &qword_1EC4C22A8, &qword_1CFA10808, &qword_1EC4C22B0, &qword_1CFA10810);
  *v3 = result;
  return result;
}

void *sub_1CF680FE8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF681E48(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CF681008(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1CF682188(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1CF681028(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 29;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 2);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[4 * v10])
    {
      memmove(v15, v16, 4 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 4 * v10);
  }

  return v12;
}

char *sub_1CF681124(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE638, &qword_1CF9FE470);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF681240(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE820, &unk_1CF9FE6F0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF250, &unk_1CFA01B50);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF681374(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1CF681460(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22D8, &qword_1CFA10850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22E0, &qword_1CFA10858);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF6815D0(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE7D8, &qword_1CF9FE6A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22C0, &unk_1CFA10820);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF681718(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *sub_1CF681814(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F20, &unk_1CFA18130);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[12 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 96 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE6B8, &unk_1CF9FE530);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF68195C(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22A0, &qword_1CFA107F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[10 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 80 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4D10, &qword_1CFA10800);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF681AA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16[3] = 2 * ((v17 - 32) / 96);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[12 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 96 * v14);
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

void *sub_1CF681BE8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 != a4 || v14 + 4 >= &a4[v12 + 4])
    {
      memmove(v14 + 4, a4 + 4, 8 * v12);
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1CF681D18(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE840, &qword_1CF9FE728);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 < a4 || v10 + 4 >= &a4[v8 + 4])
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

void *sub_1CF681E48(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22C8, &qword_1CFA10838);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
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
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22D0, &unk_1CFA10840);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1CF681FA0(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

char *sub_1CF682188(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C22B8, &qword_1CFA10818);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t sub_1CF6822A0()
{
  result = qword_1EC4C22E8;
  if (!qword_1EC4C22E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C22E8);
  }

  return result;
}

unint64_t sub_1CF6822F8()
{
  result = qword_1EDEAB9B0;
  if (!qword_1EDEAB9B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB9B0);
  }

  return result;
}

unint64_t sub_1CF682350()
{
  result = qword_1EDEAB9B8;
  if (!qword_1EDEAB9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB9B8);
  }

  return result;
}

uint64_t FileItemKind.contentType.getter(uint64_t a1)
{
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      return sub_1CF9E5F18();
    }

    else
    {
      return sub_1CF9E5FC8();
    }
  }

  else if (*v1)
  {
    return sub_1CF9E5F98();
  }

  else
  {
    return sub_1CF9E5F78();
  }
}

uint64_t sub_1CF6823E4(_BYTE *a1)
{
  if (qword_1CFA10B18[*v1] == qword_1CFA10B18[*a1])
  {
    return 1;
  }

  if (*v1 == 3)
  {
    if (!*a1)
    {
      return 1;
    }
  }

  else
  {
    if (*v1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *a1 == 3;
    }

    if (v3)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1CF682438(char a1)
{
  v2 = *v1;
  if (v2 == 1)
  {
    v3 = a1 ^ 1;
  }

  else
  {
    v3 = 1;
  }

  if (v2 == 2)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  return v4 & 1;
}

FileProviderDaemon::FileItemKind_optional __swiftcall FileItemKind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x304020100uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t FileItemKind.description.getter()
{
  v1 = 6516580;
  v2 = 0x6B6E696C6D7973;
  if (*v0 != 2)
  {
    v2 = 0x7361696C61;
  }

  if (*v0)
  {
    v1 = 7498084;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t FileItemKind.typeIdentifier.getter()
{
  v1 = sub_1CF9E5FF8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 1u)
  {
    if (*v0 == 2)
    {
      sub_1CF9E5F18();
    }

    else
    {
      sub_1CF9E5FC8();
    }
  }

  else if (*v0)
  {
    sub_1CF9E5F98();
  }

  else
  {
    sub_1CF9E5F78();
  }

  v5 = sub_1CF9E5EF8();
  (*(v2 + 8))(v4, v1);
  return v5;
}

unint64_t sub_1CF68263C()
{
  result = qword_1EC4C22F0;
  if (!qword_1EC4C22F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C22F0);
  }

  return result;
}

uint64_t sub_1CF682690()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA10B18[v1]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF682718(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](qword_1CFA10B18[v2]);
  return sub_1CF9E8228();
}

uint64_t sub_1CF682784()
{
  v1 = 6516580;
  v2 = 0x6B6E696C6D7973;
  if (*v0 != 2)
  {
    v2 = 0x7361696C61;
  }

  if (*v0)
  {
    v1 = 7498084;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1CF6828C4()
{
  result = qword_1EC4C22F8;
  if (!qword_1EC4C22F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2300, &qword_1CFA10A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C22F8);
  }

  return result;
}

uint64_t sub_1CF682948()
{
  v7 = MEMORY[0x1E69E7CC0];
  sub_1CF680DA0(0, 1, 1);
  v0 = v7;
  v2 = *(v7 + 16);
  v1 = *(v7 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1CF680DA0((v1 > 1), v2 + 1, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v4;
  *(v0 + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    sub_1CF680DA0((v1 > 1), v2 + 2, 1);
    v0 = v7;
    v1 = *(v7 + 24);
    v3 = v1 >> 1;
  }

  *(v0 + 16) = v5;
  *(v0 + v4 + 32) = 1;
  if (v3 < (v2 + 3))
  {
    sub_1CF680DA0((v1 > 1), v2 + 3, 1);
  }

  result = v7;
  *(v7 + 16) = v2 + 3;
  *(v7 + v5 + 32) = 3;
  return result;
}

uint64_t sub_1CF682A60()
{
  v6 = MEMORY[0x1E69E7CC0];
  sub_1CF680DA0(0, 1, 1);
  result = v6;
  v2 = *(v6 + 16);
  v1 = *(v6 + 24);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    sub_1CF680DA0((v1 > 1), v2 + 1, 1);
    result = v6;
    v1 = *(v6 + 24);
    v3 = v1 >> 1;
  }

  *(result + 16) = v4;
  *(result + v2 + 32) = 0;
  v5 = v2 + 2;
  if (v3 < v5)
  {
    sub_1CF680DA0((v1 > 1), v5, 1);
    result = v6;
  }

  *(result + 16) = v5;
  *(result + v4 + 32) = 3;
  return result;
}

unint64_t sub_1CF682B34()
{
  result = qword_1EC4C2308;
  if (!qword_1EC4C2308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2308);
  }

  return result;
}

void sub_1CF682B88(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = a1[4];
  v4 = a1[5];
  v70 = v1;
  v71 = v2;
  v72 = v3;
  v73 = v4;
  v5 = type metadata accessor for FSOrFPJob(319, &v70);
  if (v6 <= 0x3F)
  {
    v69 = v5;
    v74 = v5;
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v8 = swift_getAssociatedTypeWitness();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (v10 <= 0x3F)
    {
      v63 = TupleTypeMetadata2;
      v75 = TupleTypeMetadata2;
      v68 = v1;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v66 = v4;
      v67 = v2;
      v12 = swift_getAssociatedConformanceWitness();
      v64 = AssociatedTypeWitness;
      v65 = AssociatedConformanceWitness;
      v70 = AssociatedTypeWitness;
      v71 = v8;
      v13 = v8;
      v72 = AssociatedConformanceWitness;
      v73 = v12;
      v14 = type metadata accessor for ReconciliationID(319, &v70);
      v15 = v14;
      if (v16 <= 0x3F)
      {
        v76 = v14;
        v77 = v14;
        v17 = swift_getTupleTypeMetadata2();
        if (v18 <= 0x3F)
        {
          v78 = v17;
          v19 = swift_getTupleTypeMetadata2();
          if (v21 <= 0x3F)
          {
            v79 = v19;
            v22 = type metadata accessor for SnapshotItem(255, v68, v3, v20);
            v24 = v23;
            sub_1CF9E75D8();
            TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
            if (v27 <= 0x3F)
            {
              v80 = TupleTypeMetadata3;
              v28 = type metadata accessor for SnapshotItem(255, v67, v66, v26);
              v30 = v29;
              sub_1CF9E75D8();
              v31 = swift_getTupleTypeMetadata3();
              if (v32 <= 0x3F)
              {
                v81 = v31;
                if (v24 <= 0x3F)
                {
                  v82 = v22;
                  if (v30 <= 0x3F)
                  {
                    v83 = v28;
                    v84 = v15;
                    v70 = v15;
                    v33 = sub_1CF9E75D8();
                    v71 = v33;
                    v72 = &type metadata for ContentStatus;
                    v73 = &type metadata for ContentStatus;
                    TupleTypeMetadata = swift_getTupleTypeMetadata();
                    if (v35 <= 0x3F)
                    {
                      v85 = TupleTypeMetadata;
                      MEMORY[0x1EEE9AC00](TupleTypeMetadata);
                      v70 = v15;
                      v71 = v33;
                      v72 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
                      v73 = v72;
                      v36 = swift_getTupleTypeMetadata();
                      if (v37 <= 0x3F)
                      {
                        v86 = v36;
                        v70 = v64;
                        v71 = v13;
                        v72 = v65;
                        v73 = v12;
                        v38 = type metadata accessor for ThrottlingKey(255, &v70);
                        v40 = v39;
                        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4BE340, &unk_1CF9FEF90);
                        v41 = swift_getTupleTypeMetadata2();
                        if (v42 <= 0x3F)
                        {
                          v87 = v41;
                          if (v40 <= 0x3F)
                          {
                            v88 = v38;
                            v43 = swift_getTupleTypeMetadata2();
                            if (v44 <= 0x3F)
                            {
                              v89 = v43;
                              v45 = swift_getTupleTypeMetadata3();
                              if (v46 <= 0x3F)
                              {
                                v90 = v45;
                                v91 = &type metadata for CapturedContent;
                                v92 = v15;
                                v93 = v63;
                                __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C1C20, &unk_1CFA0A250);
                                v47 = swift_getTupleTypeMetadata3();
                                if (v48 <= 0x3F)
                                {
                                  v94 = v47;
                                  v95 = v69;
                                  v96 = v69;
                                  v97 = &type metadata for FileTreeSide;
                                  v98 = &type metadata for FileTreeSide;
                                  v99 = v15;
                                  v100 = v15;
                                  v101 = v15;
                                  v70 = v68;
                                  v71 = v67;
                                  v72 = v3;
                                  v73 = v66;
                                  v49 = type metadata accessor for TestingOperation(319, &v70);
                                  if (v50 <= 0x3F)
                                  {
                                    v102 = v49;
                                    v51 = swift_getTupleTypeMetadata2();
                                    if (v52 <= 0x3F)
                                    {
                                      v103 = v51;
                                      v104 = v15;
                                      v105 = v15;
                                      v53 = swift_getTupleTypeMetadata2();
                                      if (v54 <= 0x3F)
                                      {
                                        v106 = v53;
                                        v107 = v15;
                                        v108 = v15;
                                        v109 = v15;
                                        v110 = v15;
                                        v70 = v68;
                                        v71 = v67;
                                        v72 = v3;
                                        v73 = v66;
                                        v55 = type metadata accessor for ItemReconciliation(319, &v70);
                                        if (v56 <= 0x3F)
                                        {
                                          v111 = v55;
                                          v57 = swift_getTupleTypeMetadata2();
                                          if (v58 <= 0x3F)
                                          {
                                            v112 = v57;
                                            sub_1CF6845E4();
                                            if (v60 <= 0x3F)
                                            {
                                              v113 = v59;
                                              v114 = v15;
                                              v115 = v15;
                                              v116 = v15;
                                              v61 = swift_getTupleTypeMetadata2();
                                              if (v62 <= 0x3F)
                                              {
                                                v117 = v61;
                                                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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
        }
      }
    }
  }
}

uint64_t sub_1CF683184(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 64);
  v77 = a3[3];
  v75 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v75 + 80);
  v80 = (v6 + v7) & ~v7;
  v8 = *(v75 + 64);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = *(v75 + 64);
  }

  v10 = v6;
  v87 = v9;
  v84 = v9 + 1;
  v86 = v9 + 2;
  v11 = *(v5 + 80);
  v85 = (((v11 | v7) + v9 + 1) & ~(v11 | v7)) + v9 + 1;
  v83 = *(v5 + 84);
  v12 = *(swift_getAssociatedTypeWitness() - 8);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = *(sub_1CF9E5CF8() - 8);
  v15 = *(v13 + 80);
  v78 = *(v12 + 80) & 0xF8 | v15 | 7;
  v81 = ((((*(v13 + 64) + ((v15 + ((*(v12 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v15) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v16 = *(v14 + 80);
  v74 = (v16 | 7) + 16;
  v17 = *(v14 + 64);
  v18 = 7;
  if (!*(v14 + 84))
  {
    v18 = 8;
  }

  v72 = ((((((((((v18 + v17 + ((v16 + ((((((((v17 + ((v17 + v16 + ((v16 + 12) & ~v16)) & ~v16) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v16)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 335;
  v19 = (((v72 + ((v74 + ((((v10 + v11) & ~v11) + v10 + v78) & ~v78) + v81) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v73 = v19 + 16;
  v20 = *(v12 + 80) & 0xF8 | v15 | 7 | v11 | v16;
  v82 = ((v19 + ((v19 + 16 + v20) & ~v20) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v76 = *(v75 + 84);
  v21 = *(swift_getAssociatedTypeWitness() - 8);
  v22 = *(swift_getAssociatedTypeWitness() - 8);
  v23 = *(v22 + 80);
  v24 = *(v21 + 80) & 0xF8 | v23 | 7;
  v25 = ((((*(v22 + 64) + ((v23 + ((*(v21 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v26 = (((v72 + ((v74 + ((((v8 + v7) & ~v7) + v8 + v24) & ~v24) + v25) & ~(v16 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v27 = v26 + 16;
  v28 = v24 | v7 | v16;
  v29 = v26 + ((v26 + 16 + v28) & ~v28);
  v30 = v73 + ((v20 + v10) & ~v20);
  if (v76)
  {
    v31 = v8;
  }

  else
  {
    v31 = v8 + 1;
  }

  v32 = v31 + v24 + v80;
  v33 = *(v4 - 8);
  v34 = (v10 + *(v33 + 80)) & ~*(v33 + 80);
  v35 = *(v33 + 84);
  v36 = *(v33 + 64);
  v37 = (v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v35)
  {
    ++v36;
  }

  v38 = v36 + v34;
  v39 = ((v37 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v40 = ((((((v31 + v24 + ((v30 + v7) & ~v7)) & ~v24) + v25 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v41 = ((v37 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v10 > v40)
  {
    v40 = v10;
  }

  if (v39 <= v25 + (v32 & ~v24) + 16)
  {
    v39 = v25 + (v32 & ~v24) + 16;
  }

  if (v41 > v38)
  {
    v38 = v41;
  }

  if (v40 <= v39)
  {
    v42 = v39;
  }

  else
  {
    v42 = v40;
  }

  if (v42 <= v38)
  {
    v43 = v38;
  }

  else
  {
    v43 = v42;
  }

  v44 = v27 + ((v28 + v8) & ~v28);
  if (v83)
  {
    v45 = v10;
  }

  else
  {
    v45 = v10 + 1;
  }

  v46 = v45 + v78 + ((v8 + v11) & ~v11);
  v47 = *(v77 - 8);
  v48 = (v8 + *(v47 + 80)) & ~*(v47 + 80);
  v49 = *(v47 + 64);
  if (!*(v47 + 84))
  {
    ++v49;
  }

  v50 = v49 + v48;
  v51 = (v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = ((((((v45 + v78 + ((v44 + v11) & ~v11)) & ~v78) + v81 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v8 > v52)
  {
    v52 = v8;
  }

  v53 = ((v51 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v53 <= v81 + (v46 & ~v78) + 16)
  {
    v53 = v81 + (v46 & ~v78) + 16;
  }

  v54 = ((v51 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v54 > v50)
  {
    v50 = v54;
  }

  if (v52 <= v53)
  {
    v55 = v53;
  }

  else
  {
    v55 = v52;
  }

  if (v55 > v50)
  {
    v50 = v55;
  }

  v56 = v50 + 1;
  if (v56 <= v43 + 1)
  {
    v56 = v43 + 1;
  }

  v57 = ((((((((((((((v45 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v78 + 9) & ~v78) + v81 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v24 | v7) + 8) & ~(v24 | v7)) + ((((((((((((v31 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v24 + 9) & ~v24) + v25 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v58 = v86;
  if (v84 > v86)
  {
    v58 = v87 + 1;
  }

  if (v58 <= v80 + v8)
  {
    v58 = v80 + v8;
  }

  if (v58 <= v85)
  {
    v58 = v85;
  }

  if (v58 <= v82)
  {
    v58 = v82;
  }

  v59 = ((v29 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v58 > v59)
  {
    v59 = v58;
  }

  if (v59 <= v73)
  {
    v59 = v73;
  }

  if (v59 > v27)
  {
    v27 = v59;
  }

  if (v27 <= v85 + 2)
  {
    v27 = v85 + 2;
  }

  v60 = v87 & 0xFFFFFFFFFFFFFFF8;
  if (v27 <= ((v87 + 9) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v27 = ((v87 + 9) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v27 <= v60 + 16)
  {
    v27 = v60 + 16;
  }

  if (v27 <= v60 + 17)
  {
    v27 = v60 + 17;
  }

  v79 = v11 | v7;
  if (v27 <= ((v87 + ((v79 + 1) & ~v79) + 8) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v27 = ((v87 + ((v79 + 1) & ~v79) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v27 <= v56 + 1)
  {
    v61 = v56 + 1;
  }

  else
  {
    v61 = v27;
  }

  if (v61 <= ((((((((v57 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v61 = ((((((((v57 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v61 <= v60 + 72)
  {
    v61 = v60 + 72;
  }

  v62 = 64;
  if (v61 > 0x40)
  {
    v62 = v61;
  }

  v63 = 211 - (4u >> (8 * v62));
  if (v62 > 3)
  {
    v63 = 211;
  }

  if (!a2)
  {
    return 0;
  }

  if (v63 >= a2)
  {
    goto LABEL_98;
  }

  v64 = v62 + 1;
  v65 = 8 * (v62 + 1);
  if ((v62 + 1) <= 3)
  {
    v68 = ((~(-1 << v65) + a2 - v63) >> v65) + 1;
    if (HIWORD(v68))
    {
      v66 = *(a1 + v64);
      if (!v66)
      {
        goto LABEL_98;
      }

      goto LABEL_87;
    }

    if (v68 > 0xFF)
    {
      v66 = *(a1 + v64);
      if (!*(a1 + v64))
      {
        goto LABEL_98;
      }

      goto LABEL_87;
    }

    if (v68 < 2)
    {
LABEL_98:
      v70 = *(a1 + v62);
      if (v63 <= (v70 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v70);
      }
    }
  }

  v66 = *(a1 + v64);
  if (!*(a1 + v64))
  {
    goto LABEL_98;
  }

LABEL_87:
  v69 = (v66 - 1) << v65;
  if (v64 > 3)
  {
    v69 = 0;
  }

  if (v64)
  {
    if (v64 > 3)
    {
      LODWORD(v64) = 4;
    }

    if (v64 > 2)
    {
      if (v64 == 3)
      {
        LODWORD(v64) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v64) = *a1;
      }
    }

    else if (v64 == 1)
    {
      LODWORD(v64) = *a1;
    }

    else
    {
      LODWORD(v64) = *a1;
    }
  }

  return v63 + (v64 | v69) + 1;
}

void sub_1CF683B74(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v5 = a4[2];
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = *(v6 + 64);
  v79 = a4[3];
  v77 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v77 + 80);
  v82 = (v7 + v8) & ~v8;
  v9 = *(v77 + 64);
  if (v9 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(v77 + 64);
  }

  v11 = v7;
  v89 = v10;
  v86 = v10 + 1;
  v88 = v10 + 2;
  v12 = *(v6 + 80);
  v87 = (((v12 | v8) + v10 + 1) & ~(v12 | v8)) + v10 + 1;
  v85 = *(v6 + 84);
  v13 = *(swift_getAssociatedTypeWitness() - 8);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = *(sub_1CF9E5CF8() - 8);
  v16 = *(v14 + 80);
  v17 = *(v13 + 80) & 0xF8 | v16 | 7;
  v80 = v17;
  v83 = ((((*(v14 + 64) + ((v16 + ((*(v13 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v16) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v18 = *(v15 + 80);
  v76 = (v18 | 7) + 16;
  v19 = *(v15 + 64);
  v20 = 7;
  if (!*(v15 + 84))
  {
    v20 = 8;
  }

  v74 = ((((((((((v20 + v19 + ((v18 + ((((((((v19 + ((v19 + v18 + ((v18 + 12) & ~v18)) & ~v18) + 12) & 0xFFFFFFFFFFFFFFF8) + 27) & 0xFFFFFFFFFFFFFFF8) + 21) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 10) & ~v18)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 19) & 0xFFFFFFFFFFFFFFF8) + 25) & 0xFFFFFFFFFFFFFFF8) + 335;
  v21 = (((v74 + ((v76 + ((((v11 + v12) & ~v12) + v11 + v17) & ~v17) + v83) & ~(v18 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v75 = v21 + 16;
  v22 = v17 | v12 | v18;
  v84 = ((v21 + ((v21 + 16 + v22) & ~v22) + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  v78 = *(v77 + 84);
  v23 = *(swift_getAssociatedTypeWitness() - 8);
  v24 = *(swift_getAssociatedTypeWitness() - 8);
  v25 = *(v24 + 80);
  v26 = *(v23 + 80) & 0xF8 | v25 | 7;
  v27 = ((((*(v24 + 64) + ((v25 + ((*(v23 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v25) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  v28 = (((v74 + ((v76 + ((((v9 + v8) & ~v8) + v9 + v26) & ~v26) + v27) & ~(v18 | 7))) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = v28 + 16;
  v30 = v26 | v8 | v18;
  v31 = v28 + ((v28 + 16 + v30) & ~v30);
  v32 = v75 + ((v22 + v11) & ~v22);
  if (v78)
  {
    v33 = v9;
  }

  else
  {
    v33 = v9 + 1;
  }

  v34 = v33 + v26 + v82;
  v35 = *(v5 - 8);
  v36 = (v11 + *(v35 + 80)) & ~*(v35 + 80);
  v37 = *(v35 + 84);
  v38 = *(v35 + 64);
  v39 = (v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  if (!v37)
  {
    ++v38;
  }

  v40 = v38 + v36;
  v41 = ((v39 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v42 = ((((((v33 + v26 + ((v32 + v8) & ~v8)) & ~v26) + v27 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v43 = ((v39 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v11 > v42)
  {
    v42 = v11;
  }

  if (v41 <= v27 + (v34 & ~v26) + 16)
  {
    v41 = v27 + (v34 & ~v26) + 16;
  }

  if (v43 > v40)
  {
    v40 = v43;
  }

  if (v42 <= v41)
  {
    v44 = v41;
  }

  else
  {
    v44 = v42;
  }

  if (v44 <= v40)
  {
    v45 = v40;
  }

  else
  {
    v45 = v44;
  }

  v46 = v29 + ((v30 + v9) & ~v30);
  if (v85)
  {
    v47 = v11;
  }

  else
  {
    v47 = v11 + 1;
  }

  v48 = v47 + v80 + ((v9 + v12) & ~v12);
  v49 = *(v79 - 8);
  v50 = (v9 + *(v49 + 80)) & ~*(v49 + 80);
  v51 = *(v49 + 64);
  if (!*(v49 + 84))
  {
    ++v51;
  }

  v52 = v51 + v50;
  v53 = (v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = ((((((v47 + v80 + ((v46 + v12) & ~v12)) & ~v80) + v83 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v9 > v54)
  {
    v54 = v9;
  }

  v55 = ((v53 + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v55 <= v83 + (v48 & ~v80) + 16)
  {
    v55 = v83 + (v48 & ~v80) + 16;
  }

  v56 = ((v53 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v56 > v52)
  {
    v52 = v56;
  }

  if (v54 <= v55)
  {
    v57 = v55;
  }

  else
  {
    v57 = v54;
  }

  if (v57 > v52)
  {
    v52 = v57;
  }

  v58 = v52 + 1;
  if (v58 <= v45 + 1)
  {
    v58 = v45 + 1;
  }

  v59 = ((((((((((((((v47 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v80 + 9) & ~v80) + v83 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + (v26 | v8) + 8) & ~(v26 | v8)) + ((((((((((((v33 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v26 + 9) & ~v26) + v27 + 34) & 0xFFFFFFFFFFFFFFF8) + 71) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
  v60 = v88;
  if (v86 > v88)
  {
    v60 = v89 + 1;
  }

  if (v60 <= v82 + v9)
  {
    v60 = v82 + v9;
  }

  if (v60 <= v87)
  {
    v60 = v87;
  }

  if (v60 <= v84)
  {
    v60 = v84;
  }

  v61 = ((v31 + 23) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v60 > v61)
  {
    v61 = v60;
  }

  if (v61 <= v75)
  {
    v61 = v75;
  }

  if (v61 > v29)
  {
    v29 = v61;
  }

  if (v29 <= v87 + 2)
  {
    v29 = v87 + 2;
  }

  v62 = v89 & 0xFFFFFFFFFFFFFFF8;
  if (v29 <= ((v89 + 9) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v29 = ((v89 + 9) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v29 <= v62 + 16)
  {
    v29 = v62 + 16;
  }

  if (v29 <= v62 + 17)
  {
    v29 = v62 + 17;
  }

  v81 = v12 | v8;
  if (v29 <= ((v89 + ((v81 + 1) & ~v81) + 8) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v29 = ((v89 + ((v81 + 1) & ~v81) + 8) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v29 <= v58 + 1)
  {
    v63 = v58 + 1;
  }

  else
  {
    v63 = v29;
  }

  if (v63 <= ((((((((v59 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8)
  {
    v63 = ((((((((v59 + 8) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8;
  }

  if (v63 <= v62 + 72)
  {
    v63 = v62 + 72;
  }

  if (v63 <= 0x40)
  {
    v63 = 64;
  }

  v64 = 211 - (4u >> (8 * v63));
  if (v63 > 3)
  {
    v64 = 211;
  }

  v65 = v63 + 1;
  if (v64 >= a3)
  {
    v68 = 0;
    v66 = a1;
    v67 = a2;
  }

  else
  {
    v66 = a1;
    v67 = a2;
    if (v65 <= 3)
    {
      v71 = ((~(-1 << (8 * v65)) + a3 - v64) >> (8 * v65)) + 1;
      if (HIWORD(v71))
      {
        v68 = 4;
      }

      else
      {
        if (v71 < 0x100)
        {
          v72 = 1;
        }

        else
        {
          v72 = 2;
        }

        if (v71 >= 2)
        {
          v68 = v72;
        }

        else
        {
          v68 = 0;
        }
      }
    }

    else
    {
      v68 = 1;
    }
  }

  if (v64 >= v67)
  {
    if (v68 > 1)
    {
      if (v68 != 2)
      {
        *&v66[v65] = 0;
        if (!v67)
        {
          return;
        }

LABEL_103:
        v66[v63] = -v67;
        return;
      }

      *&v66[v65] = 0;
    }

    else if (v68)
    {
      v66[v65] = 0;
      if (!v67)
      {
        return;
      }

      goto LABEL_103;
    }

    if (!v67)
    {
      return;
    }

    goto LABEL_103;
  }

  v69 = ~v64 + v67;
  if (v65 >= 4)
  {
    bzero(v66, v65);
    *v66 = v69;
    v70 = 1;
    if (v68 > 1)
    {
      goto LABEL_112;
    }

    goto LABEL_109;
  }

  v70 = (v69 >> (8 * v65)) + 1;
  if (v63 == -1)
  {
LABEL_108:
    if (v68 > 1)
    {
      goto LABEL_112;
    }

    goto LABEL_109;
  }

  v73 = v69 & ~(-1 << (8 * v65));
  bzero(v66, v65);
  if (v65 == 3)
  {
    *v66 = v73;
    v66[2] = BYTE2(v73);
    goto LABEL_108;
  }

  if (v65 == 2)
  {
    *v66 = v73;
    if (v68 > 1)
    {
LABEL_112:
      if (v68 == 2)
      {
        *&v66[v65] = v70;
      }

      else
      {
        *&v66[v65] = v70;
      }

      return;
    }
  }

  else
  {
    *v66 = v69;
    if (v68 > 1)
    {
      goto LABEL_112;
    }
  }

LABEL_109:
  if (v68)
  {
    v66[v65] = v70;
  }
}

void sub_1CF6845E4()
{
  if (!qword_1EDEA3788)
  {
    v0 = sub_1CF9E6E58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDEA3788);
    }
  }
}

uint64_t sub_1CF684634@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v3 = a1[4];
  v4 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = a1[5];
  v7 = a1[3];
  v8 = swift_getAssociatedTypeWitness();
  v31 = v4;
  v32 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = v7;
  v30 = v6;
  v10 = swift_getAssociatedConformanceWitness();
  v34 = AssociatedTypeWitness;
  v35 = v8;
  v36 = AssociatedConformanceWitness;
  v37 = v10;
  v11 = type metadata accessor for ReconciliationID(0, &v34);
  v12 = v11[-1].i64[1];
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - v13;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v28, a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload >= 8)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
LABEL_9:
      (*(v12 + 32))(v14, v18, v11);
      sub_1CF050768(v11, v33);
      (*(v12 + 8))(v14, v11);
      goto LABEL_10;
    }
  }

  else if (!EnumCaseMultiPayload)
  {
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
  v21 = &v18[*(swift_getTupleTypeMetadata2() + 48)];
  v22 = *v21;
  v27 = *(v21 + 1);
  v28 = v22;
  (*(v12 + 32))(v14, v18, v11);
  v34 = v8;
  v35 = AssociatedTypeWitness;
  v36 = v10;
  v37 = AssociatedConformanceWitness;
  type metadata accessor for ReconciliationID(255, &v34);
  v23 = (v33 + *(swift_getTupleTypeMetadata2() + 48));
  sub_1CF050768(v11, v33);
  (*(v12 + 8))(v14, v11);
  v24 = v27;
  *v23 = v28;
  v23[1] = v24;
LABEL_10:
  v34 = v29;
  v35 = v31;
  v36 = v30;
  v37 = v32;
  type metadata accessor for PersistenceTrigger.AffectedReconciliation(0, &v34);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF6849F4(void *a1)
{
  swift_getAssociatedTypeWitness();
  result = swift_getTupleTypeMetadata2();
  if (v2 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    result = swift_getTupleTypeMetadata2();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF684AD8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 1) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 1) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_26;
  }

  v10 = v9 + 1;
  v11 = 8 * (v9 + 1);
  if ((v9 + 1) <= 3)
  {
    v14 = ((a2 + ~(-1 << v11) - 253) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_26:
      v16 = *(a1 + v9);
      if (v16 >= 3)
      {
        return (v16 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_26;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    if (v10 > 2)
    {
      if (v10 == 3)
      {
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v10) = *a1;
      }
    }

    else if (v10 == 1)
    {
      LODWORD(v10) = *a1;
    }

    else
    {
      LODWORD(v10) = *a1;
    }
  }

  return (v10 | v15) + 254;
}

void sub_1CF684CE8(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 1) & ~*(v7 + 80)) + *(v7 + 64);
  v9 = *(swift_getAssociatedTypeWitness() - 8);
  v10 = ((*(v9 + 80) + 1) & ~*(v9 + 80)) + *(v9 + 64);
  if (v10 <= v8)
  {
    v10 = v8;
  }

  v11 = v10 + 1;
  if (a3 < 0xFE)
  {
    v12 = 0;
  }

  else if (v11 <= 3)
  {
    v15 = ((a3 + ~(-1 << (8 * v11)) - 253) >> (8 * v11)) + 1;
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
    if (v11 >= 4)
    {
      bzero(a1, v10 + 1);
      *a1 = v13;
      v14 = 1;
      if (v12 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v14 = (v13 >> (8 * v11)) + 1;
    if (v10 != -1)
    {
      v17 = v13 & ~(-1 << (8 * v11));
      bzero(a1, v11);
      if (v11 != 3)
      {
        if (v11 == 2)
        {
          *a1 = v17;
          if (v12 > 1)
          {
LABEL_39:
            if (v12 == 2)
            {
              *&a1[v11] = v14;
            }

            else
            {
              *&a1[v11] = v14;
            }

            return;
          }
        }

        else
        {
          *a1 = v13;
          if (v12 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v12)
        {
          a1[v11] = v14;
        }

        return;
      }

      *a1 = v17;
      a1[2] = BYTE2(v17);
    }

    if (v12 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v12 <= 1)
  {
    if (v12)
    {
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v10] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v12 == 2)
  {
    *&a1[v11] = 0;
    goto LABEL_24;
  }

  *&a1[v11] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_1CF684F78(uint64_t a1)
{
  sub_1CF6845E4();
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    sub_1CF9E75D8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CF685030(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = v5;
  v7 = *(v5 + 84);
  if (v7)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v9 = 0x7FFFFFFF;
  }

  else
  {
    v9 = v8;
  }

  v10 = *(v5 + 80);
  v11 = *(v5 + 64);
  if (!v7)
  {
    ++v11;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v9)
  {
    goto LABEL_31;
  }

  v12 = v11 + ((v10 + 16) & ~v10);
  v13 = 8 * v12;
  if (v12 <= 3)
  {
    v16 = ((a2 - v9 + ~(-1 << v13)) >> v13) + 1;
    if (HIWORD(v16))
    {
      v14 = *(a1 + v12);
      if (!v14)
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v14 = *(a1 + v12);
      if (!*(a1 + v12))
      {
        goto LABEL_31;
      }

      goto LABEL_20;
    }

    if (v16 < 2)
    {
LABEL_31:
      v18 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v8 & 0x80000000) != 0)
      {
        v20 = (*(v6 + 48))((v18 + v10 + 8) & ~v10);
        if (v20 >= 2)
        {
          return v20 - 1;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        v19 = *v18;
        if (v19 >= 0xFFFFFFFF)
        {
          LODWORD(v19) = -1;
        }

        return (v19 + 1);
      }
    }
  }

  v14 = *(a1 + v12);
  if (!*(a1 + v12))
  {
    goto LABEL_31;
  }

LABEL_20:
  v17 = (v14 - 1) << v13;
  if (v12 > 3)
  {
    v17 = 0;
  }

  if (v12)
  {
    if (v12 > 3)
    {
      LODWORD(v12) = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        LODWORD(v12) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v12) = *a1;
      }
    }

    else if (v12 == 1)
    {
      LODWORD(v12) = *a1;
    }

    else
    {
      LODWORD(v12) = *a1;
    }
  }

  return v9 + (v12 | v17) + 1;
}

void sub_1CF685218(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = 0;
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v8 + 84);
  v10 = v9 - 1;
  v11 = *(v8 + 80);
  if (!v9)
  {
    v10 = 0;
  }

  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (v9)
  {
    v13 = *(v8 + 64);
  }

  else
  {
    v13 = *(v8 + 64) + 1;
  }

  v14 = ((v11 + 16) & ~v11) + v13;
  if (a3 <= v12)
  {
    goto LABEL_20;
  }

  if (v14 <= 3)
  {
    v15 = ((a3 - v12 + ~(-1 << (8 * v14))) >> (8 * v14)) + 1;
    if (HIWORD(v15))
    {
      v7 = 4;
      if (v12 >= a2)
      {
        goto LABEL_30;
      }

      goto LABEL_21;
    }

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
      v7 = v16;
    }

    else
    {
      v7 = 0;
    }

LABEL_20:
    if (v12 >= a2)
    {
      goto LABEL_30;
    }

    goto LABEL_21;
  }

  v7 = 1;
  if (v12 >= a2)
  {
LABEL_30:
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        *&a1[v14] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_37;
      }

      *&a1[v14] = 0;
    }

    else if (v7)
    {
      a1[v14] = 0;
      if (!a2)
      {
        return;
      }

LABEL_37:
      v20 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
      if ((v10 & 0x80000000) != 0)
      {
        v22 = ((v20 + v11 + 8) & ~v11);
        if (v10 >= a2)
        {
          v26 = *(v8 + 56);

          v26((v20 + v11 + 8) & ~v11, a2 + 1);
        }

        else
        {
          if (v13 <= 3)
          {
            v23 = ~(-1 << (8 * v13));
          }

          else
          {
            v23 = -1;
          }

          if (v13)
          {
            v24 = v23 & (~v10 + a2);
            if (v13 <= 3)
            {
              v25 = v13;
            }

            else
            {
              v25 = 4;
            }

            bzero(v22, v13);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *v22 = v24;
                v22[2] = BYTE2(v24);
              }

              else
              {
                *v22 = v24;
              }
            }

            else if (v25 == 1)
            {
              *v22 = v24;
            }

            else
            {
              *v22 = v24;
            }
          }
        }
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v21 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v21 = a2 - 1;
        }

        *v20 = v21;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_21:
  v17 = ~v12 + a2;
  if (v14 >= 4)
  {
    bzero(a1, ((v11 + 16) & ~v11) + v13);
    *a1 = v17;
    v18 = 1;
    if (v7 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v18 = (v17 >> (8 * v14)) + 1;
  if (!v14)
  {
LABEL_59:
    if (v7 > 1)
    {
      goto LABEL_63;
    }

    goto LABEL_60;
  }

  v19 = v17 & ~(-1 << (8 * v14));
  bzero(a1, v14);
  if (v14 == 3)
  {
    *a1 = v19;
    a1[2] = BYTE2(v19);
    goto LABEL_59;
  }

  if (v14 == 2)
  {
    *a1 = v19;
    if (v7 > 1)
    {
LABEL_63:
      if (v7 == 2)
      {
        *&a1[v14] = v18;
      }

      else
      {
        *&a1[v14] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v7 > 1)
    {
      goto LABEL_63;
    }
  }

LABEL_60:
  if (v7)
  {
    a1[v14] = v18;
  }
}

uint64_t sub_1CF685534(void *a1)
{
  v5[0] = swift_getAssociatedTypeWitness();
  v5[1] = swift_getAssociatedTypeWitness();
  v5[2] = swift_getAssociatedConformanceWitness();
  v5[3] = swift_getAssociatedConformanceWitness();
  result = type metadata accessor for ReconciliationID(319, v5);
  if (v2 <= 0x3F)
  {
    v5[4] = result;
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE4A8, &unk_1CFA10B90);
    result = swift_getTupleTypeMetadata2();
    if (v4 <= 0x3F)
    {
      v5[5] = result;
      v5[6] = result;
      v5[7] = v3;
      v5[8] = v3;
      v5[9] = v3;
      v5[10] = v3;
      v5[11] = v3;
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF6856A8(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if ((v6 & 0xFFFFFFFFFFFFFFF8) + 24 <= v6 + 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = (v6 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_28;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 247) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v12 < 2)
    {
LABEL_28:
      v14 = *(a1 + v7);
      if (v14 >= 9)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_28;
  }

LABEL_17:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 248;
}

void sub_1CF685854(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  v8 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if ((v8 & 0xFFFFFFFFFFFFFFF8) + 24 <= v8 + 1)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = (v8 & 0xFFFFFFFFFFFFFFF8) + 24;
  }

  v10 = v9 + 1;
  if (a3 < 0xF8)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 247) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
    }

    else
    {
      if (v14 < 0x100)
      {
        v15 = 1;
      }

      else
      {
        v15 = 2;
      }

      if (v14 >= 2)
      {
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xF7)
  {
    v12 = a2 - 248;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_1CF685A80(uint64_t a1)
{
  result = type metadata accessor for SnapshotCounters(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF685B78()
{

  swift_weakDestroy();
  sub_1CF689368(v0 + qword_1EDEBBA48);
  return v0;
}

void sub_1CF685BB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v115 = a3;
  v113 = a1;
  v114 = a2;
  v4 = *v3;
  v5 = *v3;
  v6 = sub_1CF9E5CF8();
  v107 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v106 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 96);
  v9 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v108 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v109 = &v89 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v89 - v16;
  v110 = type metadata accessor for SnapshotItem(255, v9, v8, v18);
  v19 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v19);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v89 - v24;
  if (*(v3 + 32) == 1)
  {
    v26 = *(v5 + 88);
    v27 = *(v5 + 104);
    v118 = v9;
    v119 = v26;
    v120 = v8;
    v121 = v27;
    type metadata accessor for Job(0, &v118);
    sub_1CF9E6DA8();
    return;
  }

  v101 = v23;
  v105 = v22;
  v103 = v21;
  v100 = v6;
  v111 = AssociatedTypeWitness;
  v112 = v11;
  v28 = *(v5 + 88);
  v29 = *(v5 + 104);
  v118 = v9;
  v119 = v28;
  v98 = v28;
  v120 = v8;
  v121 = v29;
  v99 = v29;
  v97 = type metadata accessor for Job(0, &v118);
  v104 = sub_1CF9E65E8();
  v117 = v104;
  v30 = v3[2];
  v31 = (*v30 + 96);
  v96 = *v31;
  v102 = v31;
  v96();
  v32 = *(*v3 + 240);
  v33 = *v3 + 240;
  v34 = v116;
  v32(v17, 1, v113, v114, v115);
  v116 = v34;
  if (v34)
  {
    (*(v112 + 8))(v17, v111);
    v42 = v104;
LABEL_12:
    v42, v35, v36, v37, v38, v39, v40, v41;
    return;
  }

  v94 = v33;
  v95 = v32;
  v104 = v30;
  v93 = v9;
  v92 = v8;
  v43 = *(v112 + 8);
  v112 += 8;
  v43(v17, v111);
  v44 = *(*(v110 - 8) + 48);
  v45 = v44(v25, 1);
  v46 = *(v105 + 8);
  v105 += 8;
  (v46)(v25, v103);
  v47 = v109;
  if (v45 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    swift_allocObject();
    v91 = sub_1CF9E6D68();
    v90 = v48;
    v118 = v93;
    v119 = v98;
    v120 = v92;
    v121 = v99;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &v118);
    v96();
    v49 = v106;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v51 = v50;
    (*(v107 + 8))(v49, v100);
    v52 = v51 * 1000000000.0;
    if (COERCE__INT64(fabs(v51 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v52 > -9.22337204e18)
    {
      if (v52 < 9.22337204e18)
      {
        v53 = sub_1CF656F5C(v47, 0x2000000000000000, v52, 0x10000);
        v43(v47, v111);
        *v90 = v53;
        v54 = sub_1CF045898(v91, v97);
        sub_1CF9E6DD8();
        v54, v55, v56, v57, v58, v59, v60, v61;
        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    __break(1u);
    goto LABEL_21;
  }

LABEL_10:
  v102 = v46;
  v62 = v44;
  v63 = v43;
  v64 = *(*v104 + 104);
  v65 = v108;
  v64();
  v66 = v101;
  v67 = v116;
  v95(v65, 1, v113, v114, v115);
  v116 = v67;
  v68 = v65;
  if (v67)
  {
    v63(v65, v111);
    v42 = v117;
    goto LABEL_12;
  }

  v69 = v63;
  v63(v68, v111);
  v70 = v62(v66, 1, v110);
  (v102)(v66, v103);
  if (v70 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEC20, &qword_1CF9FE480);
    swift_allocObject();
    v71 = sub_1CF9E6D68();
    v73 = v72;
    v118 = v93;
    v119 = v98;
    v120 = v92;
    v121 = v99;
    type metadata accessor for Ingestion.FetchItemMetadata(0, &v118);
    v74 = v109;
    v64();
    v75 = v106;
    sub_1CF9E5CE8();
    sub_1CF9E5C98();
    v77 = v76;
    (*(v107 + 8))(v75, v100);
    v78 = v77 * 1000000000.0;
    if (COERCE__INT64(fabs(v77 * 1000000000.0)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      v79 = v97;
      if (v78 > -9.22337204e18)
      {
        if (v78 < 9.22337204e18)
        {
          v80 = sub_1CF656F5C(v74, 0x2000000000000000, v78, 0x10000);
          v69(v74, v111);
          *v73 = v80;
          v81 = sub_1CF045898(v71, v79);
          sub_1CF9E6DD8();
          v81, v82, v83, v84, v85, v86, v87, v88;
          return;
        }

LABEL_24:
        __break(1u);
        return;
      }

LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }
}

uint64_t sub_1CF686424()
{
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x3A76656E20, 0xE500000000000000);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  sub_1CF9E7948();
  0xE000000000000000, v20, v21, v22, v23, v24, v25, v26;
  v27 = sub_1CF9E7F98();
  v29 = v28;
  MEMORY[0x1D3868CC0](v27);
  v29, v30, v31, v32, v33, v34, v35, v36;
  MEMORY[0x1D3868CC0](0x3A6377736C6420, 0xE700000000000000);
  v37 = sub_1CF9E7F98();
  v39 = v38;
  MEMORY[0x1D3868CC0](v37);
  v39, v40, v41, v42, v43, v44, v45, v46;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);

  MEMORY[0x1D3868CC0](980837664, 0xE400000000000000);
  0xE500000000000000, v47, v48, v49, v50, v51, v52, v53;
  0xE400000000000000, v54, v55, v56, v57, v58, v59, v60;
  return 0x3A736C643CLL;
}

uint64_t sub_1CF6865D8()
{
  sub_1CF9E7948();
  0xE000000000000000, v0, v1, v2, v3, v4, v5, v6;
  v7 = sub_1CF9E7F98();
  v9 = v8;
  MEMORY[0x1D3868CC0](v7);
  v9, v10, v11, v12, v13, v14, v15, v16;
  MEMORY[0x1D3868CC0](0x3A6C6378652120, 0xE700000000000000);
  v17 = sub_1CF9E7F98();
  v19 = v18;
  MEMORY[0x1D3868CC0](v17);
  v19, v20, v21, v22, v23, v24, v25, v26;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  return 0x3A6C6564213CLL;
}

uint64_t sub_1CF6866E8()
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x6F43657461657263, 0xEC0000003D746E75);
  v0 = sub_1CF9E7F98();
  v2 = v1;
  MEMORY[0x1D3868CC0](v0);
  v2, v3, v4, v5, v6, v7, v8, v9;
  MEMORY[0x1D3868CC0](0x4365746164707520, 0xED00003D746E756FLL);
  v10 = sub_1CF9E7F98();
  v12 = v11;
  MEMORY[0x1D3868CC0](v10);
  v12, v13, v14, v15, v16, v17, v18, v19;
  MEMORY[0x1D3868CC0](0x436574656C656420, 0xED00003D746E756FLL);
  v20 = sub_1CF9E7F98();
  v22 = v21;
  MEMORY[0x1D3868CC0](v20);
  v22, v23, v24, v25, v26, v27, v28, v29;
  MEMORY[0x1D3868CC0](0x6144746573657220, 0xEB000000003D6574);
  type metadata accessor for SnapshotCounters(0);
  v30 = sub_1CF9E5C08();
  v32 = v31;
  MEMORY[0x1D3868CC0](v30);
  v32, v33, v34, v35, v36, v37, v38, v39;
  return 0;
}

uint64_t sub_1CF68688C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4F60, &unk_1CFA00830);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1CF9FC330;
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1CF9FA440;
  v3 = MEMORY[0x1E69E6158];
  *(v2 + 32) = 0x6F43657461657263;
  *(v2 + 40) = 0xEB00000000746E75;
  v4 = *v0;
  v5 = MEMORY[0x1E69E76D8];
  *(v2 + 88) = MEMORY[0x1E69E76D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BEE20, &qword_1CFA0CD90);
  *(v1 + 56) = v6;
  *(v1 + 32) = v2;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1CF9FA440;
  *(v7 + 32) = 0x6F43657461647075;
  *(v7 + 40) = 0xEB00000000746E75;
  v8 = *(v0 + 1);
  *(v7 + 88) = v5;
  *(v7 + 56) = v3;
  *(v7 + 64) = v8;
  *(v1 + 88) = v6;
  *(v1 + 64) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1CF9FA440;
  *(v9 + 32) = 0x6F436574656C6564;
  *(v9 + 40) = 0xEB00000000746E75;
  v10 = *(v0 + 2);
  *(v9 + 88) = v5;
  *(v9 + 56) = v3;
  *(v9 + 64) = v10;
  *(v1 + 120) = v6;
  *(v1 + 96) = v9;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1CF9FA440;
  *(v11 + 56) = v3;
  *(v11 + 32) = 0x7461447465736572;
  *(v11 + 40) = 0xE900000000000065;
  v12 = *(type metadata accessor for SnapshotCounters(0) + 28);
  v13 = sub_1CF9E5CF8();
  *(v11 + 88) = v13;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v11 + 64));
  (*(*(v13 - 8) + 16))(boxed_opaque_existential_0, &v0[v12], v13);
  *(v1 + 152) = v6;
  *(v1 + 128) = v11;
  return v1;
}

uint64_t sub_1CF686A98(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2328, &qword_1CFA10E30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF689314();
  sub_1CF9E82A8();
  v8[15] = 0;
  sub_1CF9E7F68();
  if (!v1)
  {
    v8[14] = 1;
    sub_1CF9E7F68();
    v8[13] = 2;
    sub_1CF9E7F68();
    type metadata accessor for SnapshotCounters(0);
    v8[12] = 3;
    sub_1CF9E5CF8();
    sub_1CF1D6D6C(&qword_1EDEAB3D0, MEMORY[0x1E6969538]);
    sub_1CF9E7F08();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1CF686CC0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = sub_1CF9E5CF8();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2318, &qword_1CFA10E28);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = &v18 - v6;
  v8 = type metadata accessor for SnapshotCounters(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0;
  v10[1] = 0;
  v10[2] = 0;
  v12 = *(v11 + 36);
  sub_1CF9E5CC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CF689314();
  v13 = v23;
  sub_1CF9E8298();
  if (!v13)
  {
    v23 = v12;
    v14 = v20;
    v15 = v21;
    v27 = 0;
    *v10 = sub_1CF9E7DE8();
    v26 = 1;
    v10[1] = sub_1CF9E7DE8();
    v25 = 2;
    v10[2] = sub_1CF9E7DE8();
    v24 = 3;
    sub_1CF1D6D6C(&unk_1EDEAB3A0, MEMORY[0x1E6969558]);
    v18 = v5;
    v17 = v22;
    sub_1CF9E7D88();
    (*(v14 + 8))(v7, v17);
    (*(v15 + 40))(v10 + v23, v18, v3);
    sub_1CF6893C4(v10, v19);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1CF689368(v10);
}

uint64_t sub_1CF686FE8()
{
  v1 = 0x6F43657461657263;
  v2 = 0x6F436574656C6564;
  if (*v0 != 2)
  {
    v2 = 0x7461447465736572;
  }

  if (*v0)
  {
    v1 = 0x6F43657461647075;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CF687068@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, _TtC18FileProviderDaemon8FSTester *a3@<X1>, int64_t a4@<X2>, int64_t a5@<X3>, void *a6@<X4>, void *a7@<X5>, uint64_t a8@<X6>, void *a9@<X7>)
{
  result = sub_1CF68ABAC(a2, a3, a4, a5, a6, a7, a8, a9);
  *a1 = result;
  return result;
}

uint64_t sub_1CF687090(uint64_t a1)
{
  v2 = sub_1CF689314();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CF6870CC(uint64_t a1)
{
  v2 = sub_1CF689314();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CF687394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a3;
  v26 = a4;
  v23 = a5;
  v8 = *v5;
  v24 = type metadata accessor for SnapshotItem(255, *(*v5 + 80), *(*v5 + 96), a4);
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v23 - v12;
  v14 = v27;
  result = (*(v8 + 240))(a1, 1, a2, v25, v26, v11);
  if (!v14)
  {
    v16 = v23;
    v17 = *(v24 - 8);
    if ((*(v17 + 48))(v13, 1) == 1)
    {
      (*(v10 + 8))(v13, v9);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      return (*(*(AssociatedTypeWitness - 8) + 56))(v16, 1, 1, AssociatedTypeWitness);
    }

    else
    {
      v19 = v24;
      v20 = *(v24 + 36);
      v21 = swift_getAssociatedTypeWitness();
      v22 = *(v21 - 8);
      (*(v22 + 16))(v16, &v13[v20], v21);
      (*(v17 + 8))(v13, v19);
      return (*(v22 + 56))(v16, 0, 1, v21);
    }
  }

  return result;
}

uint64_t sub_1CF687688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v8 = *v4;
  v9 = type metadata accessor for SnapshotItem(255, *(*v4 + 80), *(*v4 + 96), a4);
  v10 = sub_1CF9E75D8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  v15 = v19;
  (*(v8 + 240))(a1, 1, a2, a3, v18, v12);
  if (!v15)
  {
    LOBYTE(v4) = (*(*(v9 - 8) + 48))(v14, 1, v9) != 1;
    (*(v11 + 8))(v14, v10);
  }

  return v4 & 1;
}

uint64_t sub_1CF6888B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a3;
  v35 = a4;
  v32 = a5;
  v8 = *v5;
  v33 = type metadata accessor for SnapshotItem(255, *(*v5 + 80), *(*v5 + 96), a4);
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  v14 = v40;
  result = (*(v8 + 240))(a1, 1, a2, v34, v35, v11);
  if (!v14)
  {
    v16 = v10;
    v17 = v9;
    v40 = 0;
    v18 = *(v33 - 8);
    if ((*(v18 + 48))(v13, 1) == 1)
    {
      (*(v16 + 8))(v13, v17);
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v20 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v22 = swift_getAssociatedConformanceWitness();
      v36 = AssociatedTypeWitness;
      v37 = v20;
      v38 = AssociatedConformanceWitness;
      v39 = v22;
      v23 = type metadata accessor for FileItemVersion(0, &v36);
      return (*(*(v23 - 8) + 56))(v32, 1, 1, v23);
    }

    else
    {
      v24 = v33;
      v35 = *(v33 + 40);
      v25 = swift_getAssociatedTypeWitness();
      v26 = swift_getAssociatedTypeWitness();
      v27 = swift_getAssociatedConformanceWitness();
      v28 = swift_getAssociatedConformanceWitness();
      v36 = v25;
      v37 = v26;
      v38 = v27;
      v39 = v28;
      v29 = type metadata accessor for FileItemVersion(0, &v36);
      v30 = *(v29 - 8);
      v31 = v32;
      (*(v30 + 16))(v32, &v13[v35], v29);
      (*(v18 + 8))(v13, v24);
      return (*(v30 + 56))(v31, 0, 1, v29);
    }
  }

  return result;
}

uint64_t sub_1CF688CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v28 = a5;
  v29 = a3;
  v8 = *v5;
  v9 = type metadata accessor for SnapshotItem(255, *(*v5 + 80), *(*v5 + 96), a4);
  v10 = sub_1CF9E75D8();
  v27 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = *(v9 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  v18 = v31;
  result = (*(v8 + 240))(a1, 1, a2, v29, v30, v15);
  if (!v18)
  {
    v20 = v27;
    v21 = v28;
    if ((*(v13 + 48))(v12, 1, v9) == 1)
    {
      result = (*(v20 + 8))(v12, v10);
      v22 = 0;
      v23 = 4;
    }

    else
    {
      (*(v13 + 32))(v17, v12, v9);
      v24 = &v17[*(v9 + 48)];
      v22 = *&v24[*(type metadata accessor for ItemMetadata(0) + 104)];
      WitnessTable = swift_getWitnessTable();
      sub_1CF06D940(v9, WitnessTable, &v32);
      result = (*(v13 + 8))(v17, v9);
      v23 = v32;
    }

    *v21 = v22;
    *(v21 + 8) = v23;
  }

  return result;
}

uint64_t sub_1CF689210()
{
  sub_1CF685B78();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SnapshotCounters(uint64_t a1)
{
  result = qword_1EDEAD8F0;
  if (!qword_1EDEAD8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1CF689314()
{
  result = qword_1EC4C2320;
  if (!qword_1EC4C2320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2320);
  }

  return result;
}

uint64_t sub_1CF689368(uint64_t a1)
{
  v2 = type metadata accessor for SnapshotCounters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF6893C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SnapshotCounters(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1CF689428(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v47 = a4;
  v48 = a3;
  v45 = a6;
  v10 = *(*v6 + 96);
  v43 = *(*v6 + 80);
  v44 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v43 - v12;
  v14 = sub_1CF9E5CF8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  v50 = v47;
  v51 = a5;
  v52 = v19;
  v53 = v18;
  v20 = a2;
  v54 = a2;
  v55 = v6;
  v56 = v48;
  sub_1CF9E5CE8();
  v21 = v63;
  sub_1CF51B6BC(v17, sub_1CF68AA5C, v49, v19);
  if (v21)
  {
    (*(v15 + 8))(v17, v14);
  }

  else
  {
    v24 = v23;
    v47 = v20;
    v48 = v13;
    v63 = 0;
    v25 = AssociatedTypeWitness;
    v26 = v22;
    (*(v15 + 8))(v17, v14);
    if (v24)
    {
      v61 = v26;
      v62 = v24;
      v59 = 58;
      v60 = 0xE100000000000000;
      v57 = 47;
      v58 = 0xE100000000000000;
      sub_1CEFE4E68();
      v28 = sub_1CF9E7668();
      v30 = v29;
      v24, v29, v31, v32, v33, v34, v35, v36;
      v37 = v45;
      *v45 = v28;
      v37[1] = v30;
    }

    else
    {
      type metadata accessor for FileTreeError(0, v43, v44, v27);
      swift_getWitnessTable();
      swift_allocError();
      v39 = v38;
      *v38 = v19;
      v38[1] = v18;
      v61 = v47;
      sub_1CF9E6E58();

      swift_getWitnessTable();
      v40 = v48;
      sub_1CF9E7118();
      v41 = *(v25 - 8);
      if ((*(v41 + 48))(v40, 1, v25) == 1)
      {
        __break(1u);
      }

      else
      {
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        (*(v41 + 32))(v39 + *(TupleTypeMetadata2 + 48), v40, v25);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }
    }
  }
}

uint64_t sub_1CF6897FC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, uint64_t a3, _TtC18FileProviderDaemon8FSTester *a4, uint64_t a5, uint64_t *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v67 = a7;
  v68 = a8;
  v66 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v65 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v65);
  v16 = &v56 - v15;
  v69 = *(AssociatedTypeWitness - 8);
  v17 = *(v69 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v56 - v20;
  v76 = a1;
  if (a1 == v22 && a2 == a4)
  {
    return 0;
  }

  v23 = v19;
  if (sub_1CF9E8048())
  {
    return 0;
  }

  else
  {
    v57 = v17;
    v26 = 0;
    v61 = a9;
    v62 = a2;
    v63 = (v69 + 16);
    v64 = v16;
    v58 = (v69 + 56);
    v59 = (v69 + 8);
    v60 = (v23 + 8);
    do
    {
      v27 = sub_1CF9E6DF8();
      v24 = v26 == v27;
      if (v26 == v27)
      {
        break;
      }

      v28 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v28)
      {
        (*(v69 + 16))(v21, a5 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v26, AssociatedTypeWitness);
        v29 = v64;
        if (__OFADD__(v26, 1))
        {
          goto LABEL_16;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        v29 = v64;
        if (v57 != 8)
        {
          __break(1u);
          return result;
        }

        v74 = result;
        (*v63)(v21, &v74, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        if (__OFADD__(v26, 1))
        {
LABEL_16:
          __break(1u);
LABEL_17:
          (*v59)(v21, AssociatedTypeWitness);
          (*v60)(v29, v65);
          v75, v49, v50, v51, v52, v53, v54, v55;
          return v24;
        }
      }

      v30 = a5;
      v74 = v76;
      v75 = v62;
      v72 = 58;
      v73 = 0xE100000000000000;
      v70 = 47;
      v71 = 0xE100000000000000;
      sub_1CEFE4E68();
      v74 = sub_1CF9E7668();
      v75 = v31;
      (*v58)(v29, 1, 1, AssociatedTypeWitness);
      v32 = (*(*v66 + 256))(v21, &v74, v29, v67, v68, v61);
      if (v9)
      {
        goto LABEL_17;
      }

      v33 = v32;
      (*v59)(v21, AssociatedTypeWitness);
      (*v60)(v29, v65);
      v75, v34, v35, v36, v37, v38, v39, v40;
      v74 = v33;
      sub_1CF9E6E58();
      swift_getWitnessTable();
      v41 = sub_1CF9E7128();
      v33, v42, v43, v44, v45, v46, v47, v48;
      ++v26;
      a5 = v30;
    }

    while ((v41 & 1) != 0);
  }

  return v24;
}

void sub_1CF689CB8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v184 = a4;
  v185 = a2;
  v186 = a3;
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  v9 = *v4;
  v10 = *(*v4 + 96);
  v11 = *(v9 + 104);
  v195 = v7;
  v196 = v8;
  v170 = v8;
  v197 = v10;
  v198 = v11;
  v169 = v11;
  v173 = type metadata accessor for PersistenceTrigger(0, &v195);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v171 = &v164 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v191 = AssociatedTypeWitness;
  v192 = v14;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v180 = &v164 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v176 = &v164 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v175 = &v164 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v177 = &v164 - v21;
  v179 = type metadata accessor for SnapshotItem(0, v7, v10, v22);
  v183 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v178 = &v164 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v174 = &v164 - v25;
  v168 = v7;
  v167 = v10;
  v27 = type metadata accessor for SnapshotMutation(0, v7, v10, v26);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v193 = &v164 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v182 = &v164 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v164 - v33;
  v35 = sub_1CF9E6118();
  v189 = *(v35 - 8);
  v190 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v164 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v39 = sub_1CF06EE90(v27);
  v40 = *(v28 + 16);
  v188 = a1;
  v41 = a1;
  v42 = v40;
  v40(v34, v41, v27);

  v187 = v37;
  v43 = sub_1CF9E6108();
  v181 = v39;
  if (os_log_type_enabled(v43, v39))
  {
    v44 = swift_slowAlloc();
    v166 = swift_slowAlloc();
    v195 = v166;
    *v44 = 136446466;
    v164 = v43;
    v45 = v5[32];

    if (v45)
    {
      v46 = 20550;
    }

    else
    {
      v46 = 21318;
    }

    v47 = sub_1CEFD0DF0(v46, 0xE200000000000000, &v195);
    0xE200000000000000, v48, v49, v50, v51, v52, v53, v54;
    *(v44 + 4) = v47;
    *(v44 + 12) = 2082;
    v55 = v182;
    v42(v182, v34, v27);
    v165 = v42;
    v56 = *(v28 + 8);
    v56(v34, v27);
    v57 = sub_1CF06F1D8(v27);
    v59 = v58;
    v56(v55, v27);
    v60 = sub_1CEFD0DF0(v57, v59, &v195);
    v59, v61, v62, v63, v64, v65, v66, v67;
    *(v44 + 14) = v60;
    v68 = v164;
    _os_log_impl(&dword_1CEFC7000, v164, v181, " ✍️  %{public}s snapshot mutation: %{public}s", v44, 0x16u);
    v69 = v166;
    swift_arrayDestroy();
    MEMORY[0x1D386CDC0](v69, -1, -1);
    MEMORY[0x1D386CDC0](v44, -1, -1);

    (*(v189 + 8))(v187, v190);
    v70 = v165;
  }

  else
  {
    (*(v28 + 8))(v34, v27);

    (*(v189 + 8))(v187, v190);
    v70 = v42;
  }

  v71 = v193;
  v70(v193, v188, v27);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v74 = v191;
    v73 = v192;
    if (EnumCaseMultiPayload)
    {
      v75 = v183;
      if (EnumCaseMultiPayload != 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        *&v71[*(TupleTypeMetadata3 + 64) + 8], v137, v138, v139, v140, v141, v142, v143;
        v144 = v177;
        (*(v73 + 32))(v177, v71, v74);
        v145 = &v5[qword_1EDEBBA48];
        swift_beginAccess();
        v146 = *(v145 + 2);
        v92 = __CFADD__(v146, 1);
        v147 = v146 + 1;
        if (!v92)
        {
          *(v145 + 2) = v147;
          v148 = v194;
          (*(*v5 + 520))(v144, v185, v186, v184);
          v194 = v148;
          (*(v73 + 8))(v144, v74);
          return;
        }

        goto LABEL_26;
      }

      MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
      strcpy(&(&v164)[-4], "from to  reason ");
      v76 = v179;
      v195 = v179;
      v196 = v179;
      v197 = &type metadata for Fields;
      v198 = MEMORY[0x1E69E6158];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v78 = TupleTypeMetadata[12];
      v79 = v71;
      v80 = *&v71[TupleTypeMetadata[16]];
      *&v79[TupleTypeMetadata[20] + 8], v81, v82, v83, v84, v85, v86, v87;
      v88 = &v79[v78];
      v89 = v178;
      (*(v75 + 32))(v178, v88, v76);
      v90 = &v5[qword_1EDEBBA48];
      swift_beginAccess();
      v91 = *(v90 + 1);
      v92 = __CFADD__(v91, 1);
      v93 = v91 + 1;
      if (!v92)
      {
        *(v90 + 1) = v93;
        v199 = v80;
        v94 = v194;
        (*(*v5 + 512))(v89, &v199, v185, v186, v184);
        v194 = v94;
        v95 = *(v75 + 8);
        v95(v89, v76);
        v95(v193, v76);
        return;
      }
    }

    else
    {
      v111 = v179;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      *&v71[*(TupleTypeMetadata2 + 48) + 8], v113, v114, v115, v116, v117, v118, v119;
      v120 = v183;
      v121 = v174;
      (*(v183 + 32))(v174, v71, v111);
      v122 = qword_1EDEBBA48;
      swift_beginAccess();
      v123 = *&v5[v122];
      v92 = __CFADD__(v123, 1);
      v124 = v123 + 1;
      if (!v92)
      {
        *&v5[v122] = v124;
        v125 = v194;
        (*(*v5 + 504))(v121, v185, v186, v184);
        v194 = v125;
        (*(v120 + 8))(v121, v111);
        return;
      }

      __break(1u);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v97 = v191;
  v96 = v192;
  if (EnumCaseMultiPayload == 3)
  {
    v126 = swift_getTupleTypeMetadata2();
    *&v71[*(v126 + 48) + 8], v127, v128, v129, v130, v131, v132, v133;
    v134 = v175;
    (*(v96 + 32))(v175, v71, v97);
    v135 = v194;
    (*(*v5 + 528))(v134, v185, v186, v184);
    v194 = v135;
    v109 = *(v96 + 8);
    v110 = v134;
  }

  else if (EnumCaseMultiPayload == 4)
  {
    v98 = swift_getTupleTypeMetadata3();
    v99 = v71[*(v98 + 48)];
    *&v71[*(v98 + 64) + 8], v100, v101, v102, v103, v104, v105, v106;
    v107 = v176;
    (*(v96 + 32))(v176, v71, v97);
    v108 = v194;
    (*(*v5 + 536))(v107, v99, v185, v186, v184);
    v194 = v108;
    v109 = *(v96 + 8);
    v110 = v107;
  }

  else
  {
    v149 = swift_getTupleTypeMetadata2();
    *&v71[*(v149 + 48) + 8], v150, v151, v152, v153, v154, v155, v156;
    (*(v96 + 32))(v180, v71, v97);
    Strong = swift_weakLoadStrong();
    if (!Strong)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v158 = Strong;
    v159 = v171;
    (*(v96 + 16))(v171, v180, v97);
    v160 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v162 = swift_getAssociatedConformanceWitness();
    v195 = v97;
    v196 = v160;
    v197 = AssociatedConformanceWitness;
    v198 = v162;
    type metadata accessor for ReconciliationID(0, &v195);
    swift_storeEnumTagMultiPayload();
    v163 = v173;
    swift_storeEnumTagMultiPayload();
    (*(*v158 + 312))(v159);

    (*(v172 + 8))(v159, v163);
    v109 = *(v96 + 8);
    v110 = v180;
  }

  v109(v110, v97);
}

unint64_t sub_1CF68AAA8()
{
  result = qword_1EC4C2330;
  if (!qword_1EC4C2330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2330);
  }

  return result;
}

unint64_t sub_1CF68AB00()
{
  result = qword_1EC4C2338;
  if (!qword_1EC4C2338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2338);
  }

  return result;
}

unint64_t sub_1CF68AB58()
{
  result = qword_1EC4C2340;
  if (!qword_1EC4C2340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2340);
  }

  return result;
}

uint64_t sub_1CF68ABAC(uint64_t a1, _TtC18FileProviderDaemon8FSTester *a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v10 = a1 == 0x6F43657461657263 && a2 == 0xEB00000000746E75;
  if (v10 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 0;
  }

  else if (a1 == 0x6F43657461647075 && a2 == 0xEB00000000746E75 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 1;
  }

  else if (a1 == 0x6F436574656C6564 && a2 == 0xEB00000000746E75 || (sub_1CF9E8048() & 1) != 0)
  {
    a2, a2, a3, a4, a5, a6, a7, a8;
    return 2;
  }

  else if (a1 == 0x7461447465736572 && a2 == 0xE900000000000065)
  {
    0xE900000000000065, a2, a3, a4, a5, a6, a7, a8;
    return 3;
  }

  else
  {
    v12 = sub_1CF9E8048();
    a2, v13, v14, v15, v16, v17, v18, v19;
    if (v12)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id sub_1CF68AD64()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF042F4C();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68ADAC()
{
  result = swift_weakLoadStrong();
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68ADD0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 264))(result);

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68AE3C()
{
  v1 = *v0;
  result = swift_weakLoadStrong();
  if (result)
  {
    (*(*result + 248))(result);

    v4 = v1[78];
    v5 = v1[79];
    v6 = v1[80];
    v10 = v1[77];
    v3 = v10;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    type metadata accessor for FSOrFPJob(255, &v10);
    v7 = sub_1CF9E78B8();
    WitnessTable = swift_getWitnessTable();
    MEMORY[0x1D3868E50](&v14, v7, WitnessTable);

    MEMORY[0x1EEE9AC00](v9);
    swift_getKeyPath();
    sub_1CF9E7978();
    v10 = v4;
    v11 = v3;
    v12 = v6;
    v13 = v5;
    type metadata accessor for FSOrFPJob(0, &v10);
    swift_getWitnessTable();
    sub_1CF9E7C38();

    sub_1CF9E7AC8();
    swift_getWitnessTable();
    return sub_1CF9E78C8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68B080@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  *a2 = sub_1CF0452C8(*a1);
}

double sub_1CF68B0CC(uint64_t *a1, uint64_t a2)
{

  swift_getAtKeyPath();

  return result;
}

double sub_1CF68B128(uint64_t a1, uint64_t a2, unsigned int a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  if (swift_weakLoadStrong())
  {
    v17 = a8;
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    sub_1CF5A1E10(a1, a2, a3, (a4 & 1) == 0, sub_1CF68C1F4, v18, a7, v17, a9, a10);
  }

  return result;
}

void sub_1CF68B244(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 448))(a1, a2, a3, (a4 & 1) == 0, a5 & 1, a6, a7, a8, a9);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B328(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 464))(a1 & 1, a2, a3, a4, 2, a6, a7, a8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 472))(a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B4D0(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if (swift_weakLoadStrong())
  {
    sub_1CF59896C(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B578(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 432))(a1, a2, a3, a4);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B62C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 440))(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B6D0(uint64_t a1, uint64_t a2)
{
  if (swift_weakLoadStrong())
  {
    v4 = sub_1CF0452C8(a1);

    sub_1CF5A1030(v4, a2);
  }

  else
  {
    __break(1u);
  }
}

void sub_1CF68B784(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_weakLoadStrong())
  {
    sub_1CF5A1A2C(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF68B840(char a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1CF5DA5A8(byte_1CFA1101A[a1]);

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF68B89C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 496))(a1, a2 & 1, a3, a4, a5);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1CF68B980(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *, uint64_t, uint64_t, uint64_t))
{
  v19 = a4;
  v20 = a5;
  v17 = a2;
  v18 = a3;
  v16[1] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedConformanceWitness();
  v21 = AssociatedTypeWitness;
  v22 = v6;
  v23 = AssociatedConformanceWitness;
  v24 = v8;
  v9 = type metadata accessor for ReconciliationID(0, &v21);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - v11;
  result = swift_weakLoadStrong();
  if (result)
  {
    v21 = v6;
    v22 = AssociatedTypeWitness;
    v23 = v8;
    v24 = AssociatedConformanceWitness;
    v14 = type metadata accessor for ReconciliationID(0, &v21);
    sub_1CF050768(v14, v12);
    v15 = v20(v12, v17, v18, v19);

    (*(v10 + 8))(v12, v9);
    return v15;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BBA4(uint64_t a1, uint64_t a2)
{
  v4 = *(*v2 + 616);
  v5 = *(*v2 + 624);
  v6 = *(*v2 + 632);
  v7 = *(*v2 + 640);
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  v8 = type metadata accessor for TestingOperation(0, &v14);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = v5;
    v15 = v4;
    v16 = v7;
    v17 = v6;
    v13 = type metadata accessor for TestingOperation(0, &v14);
    sub_1CF940280(v13, v11);
    sub_1CF5A296C(v11, a2);

    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF68BD2C(uint64_t a1)
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = sub_1CF0452C8(a1);

    v4 = sub_1CF5A1C7C(v3);

    v5 = sub_1CF0452C8(v4);

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BE20()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF5A4F58();

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF68BE94(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = a2(a1);

    return v5 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1CF68BEF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 576))(a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

void *sub_1CF68BFC4()
{
  v0 = sub_1CF92E98C();
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1CF68BFF4()
{
  sub_1CF92E98C();
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *sub_1CF68C064(void *a1)
{
  v3 = *v1;
  swift_weakInit();
  swift_weakAssign();
  v5 = v3[78];
  v6 = v3[79];
  v7 = v3[80];
  v15 = v3[77];
  v4 = v15;
  v16 = v5;
  v17 = v6;
  v18 = v7;
  type metadata accessor for SwappedReconciliationTable(0, &v15);
  v8 = sub_1CF9330A8(a1[2]);
  v15 = v5;
  v16 = v4;
  v17 = v7;
  v18 = v6;
  type metadata accessor for SwappedJobRegistry(0, &v15);
  v9 = sub_1CF950238(a1[3]);
  v11 = a1[4];
  v10 = a1[5];
  v13 = a1[6];
  v12 = a1[7];

  swift_unknownObjectRetain();
  return sub_1CF92E870(v8, v9, v10, v11, v13, v12);
}

uint64_t FileItemID.isRoot.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 48))(v4);
  v8 = sub_1CF9E6868();
  (*(v3 + 8))(v6, a1);
  return v8 & 1;
}

uint64_t FileItemID.isTrash.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 56))(v4);
  v8 = sub_1CF9E6868();
  (*(v3 + 8))(v6, a1);
  return v8 & 1;
}

uint64_t FileItemID.kind.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  result = (*(a2 + 64))();
  if (result)
  {
    v7 = 0;
  }

  else
  {
    result = (*(a2 + 72))(a1, a2);
    if (result)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t FileItemIDKind.hashValue.getter()
{
  v1 = *v0;
  sub_1CF9E81D8();
  MEMORY[0x1D386A470](v1);
  return sub_1CF9E8228();
}

uint64_t FileItemID.parseableString.getter(uint64_t a1, uint64_t a2)
{
  sub_1CF9E56C8();
  swift_allocObject();
  sub_1CF9E56B8();
  sub_1CF9E5698();
  v2 = sub_1CF9E56A8();
  v4 = v3;
  v5 = sub_1CF9E5B58();
  sub_1CEFE4714(v2, v4);

  return v5;
}

uint64_t FileItemID.init(parsing:)@<X0>(uint64_t a1@<X0>, _TtC18FileProviderDaemon8FSTester *a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CF9E5AC8();
  v13 = v12;
  a2, v12, v14, v15, v16, v17, v18, v19;
  if (v13 >> 60 == 15)
  {
    v20 = 1;
  }

  else
  {
    sub_1CF9E5688();
    swift_allocObject();
    sub_1CF9E5678();
    sub_1CF9E5668();

    sub_1CEFE48D8(v11, v13);
    (*(v8 + 32))(a5, v10, a3);
    v20 = 0;
  }

  return (*(v8 + 56))(a5, v20, 1, a3);
}

uint64_t sub_1CF68C7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x6520746F6E6E6163, 0xEE002065646F636ELL);
  sub_1CF9E7FE8();
  return 0;
}

unint64_t sub_1CF68C894()
{
  result = qword_1EC4C2348;
  if (!qword_1EC4C2348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2348);
  }

  return result;
}

uint64_t sub_1CF68C970(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1CF68CA84(uint64_t a1)
{
  if (a1 > 0x3FFFFFF)
  {
    if (a1 <= 0x3FFFFFFFFFLL)
    {
      if (a1 <= 0xFFFFFFFFLL)
      {
        if (a1 > 0x1FFFFFFF)
        {
          v32 = 0x65766F4D6D657469;
          if (a1 != 0x80000000)
          {
            v32 = 0;
          }

          if (a1 == 0x40000000)
          {
            v33 = 0xD00000000000001BLL;
          }

          else
          {
            v33 = v32;
          }

          if (a1 == 0x20000000)
          {
            return 0xD000000000000014;
          }

          else
          {
            return v33;
          }
        }

        else
        {
          switch(a1)
          {
            case 0x4000000:
              return 0x67696E556D657469;
            case 0x8000000:
              return 0x55746E65746E6F63;
            case 0x10000000:
              return 0xD000000000000012;
            default:
              return 0;
          }
        }
      }

      if (a1 <= 0x7FFFFFFFFLL)
      {
        v6 = 0x100000000;
        v7 = 0xD00000000000001BLL;
        v8 = 0xD00000000000001ALL;
        v21 = 0x74616C7563657073;
        if (a1 != 0x400000000)
        {
          v21 = 0;
        }

        if (a1 != 0x200000000)
        {
          v8 = v21;
        }

        goto LABEL_75;
      }

      v23 = 0x800000000;
      v24 = 0xD00000000000001ALL;
      v29 = 0x1000000000;
      v30 = a1 == 0x2000000000;
      v31 = 0x64616F6C70756572;
    }

    else
    {
      if (a1 > 0xFFFFFFFFFFFLL)
      {
        if (a1 > 0x7FFFFFFFFFFFLL)
        {
          if (a1 > 0x1FFFFFFFFFFFFLL)
          {
            v36 = 0x616E65746E69616DLL;
            if (a1 != 0x4000000000000)
            {
              v36 = 0;
            }

            if (a1 == 0x2000000000000)
            {
              return 0x676972546B637066;
            }

            else
            {
              return v36;
            }
          }

          v6 = 0x800000000000;
          v7 = 0xD000000000000010;
          v8 = 0xD000000000000022;
          if (a1 != 0x1000000000000)
          {
            v8 = 0;
          }

LABEL_75:
          if (a1 == v6)
          {
            return v7;
          }

          else
          {
            return v8;
          }
        }

        v23 = 0x100000000000;
        v24 = 0xD000000000000013;
        if (a1 == 0x400000000000)
        {
          v25 = 0xD000000000000012;
        }

        else
        {
          v25 = 0;
        }

        if (a1 == 0x200000000000)
        {
          v26 = 0xD000000000000017;
        }

        else
        {
          v26 = v25;
        }

LABEL_122:
        if (a1 == v23)
        {
          return v24;
        }

        else
        {
          return v26;
        }
      }

      if (a1 <= 0x1FFFFFFFFFFLL)
      {
        if (a1 == 0x4000000000)
        {
          return 0x74616C7563657073;
        }

        v17 = 0x684364656E6E6970;
        if (a1 != 0x10000000000)
        {
          v17 = 0;
        }

        if (a1 == 0x8000000000)
        {
          return 0xD00000000000001ELL;
        }

        else
        {
          return v17;
        }
      }

      v23 = 0x20000000000;
      v24 = 0xD000000000000011;
      v29 = 0x40000000000;
      v30 = a1 == 0x80000000000;
      v31 = 0x446D7269666E6F63;
    }

    if (!v30)
    {
      v31 = 0;
    }

    if (a1 == v29)
    {
      v26 = 0xD000000000000013;
    }

    else
    {
      v26 = v31;
    }

    goto LABEL_122;
  }

  if (a1 <= 4095)
  {
    if (a1 > 63)
    {
      if (a1 <= 511)
      {
        v18 = 0xD000000000000016;
        if (a1 == 256)
        {
          v19 = 0xD000000000000014;
        }

        else
        {
          v19 = 0;
        }

        if (a1 == 128)
        {
          v19 = 0xD000000000000012;
        }

        v20 = a1 == 64;
        goto LABEL_83;
      }

      v34 = 0xD000000000000011;
      if (a1 == 2048)
      {
        v35 = 0xD000000000000011;
      }

      else
      {
        v35 = 0;
      }

      if (a1 != 1024)
      {
        v34 = v35;
      }

      if (a1 == 512)
      {
        return 0x697665526D657469;
      }

      else
      {
        return v34;
      }
    }

    else
    {
      v9 = 0xD000000000000013;
      v10 = 0x6F4E7265646C6F66;
      if (a1 == 32)
      {
        v11 = 0xD000000000000014;
      }

      else
      {
        v11 = 0;
      }

      if (a1 != 16)
      {
        v10 = v11;
      }

      if (a1 != 8)
      {
        v9 = v10;
      }

      v12 = 0x6C6169726574616DLL;
      v13 = 0x6E6F697463697665;
      v14 = 0xD000000000000013;
      if (a1 != 4)
      {
        v14 = 0;
      }

      if (a1 != 2)
      {
        v13 = v14;
      }

      if (a1 != 1)
      {
        v12 = v13;
      }

      if (a1 <= 7)
      {
        return v12;
      }

      else
      {
        return v9;
      }
    }
  }

  else
  {
    if (a1 >= 0x40000)
    {
      if (a1 >= 0x400000)
      {
        v1 = 0x6F6E67496D657469;
        if (a1 != 0x2000000)
        {
          v1 = 0;
        }

        if (a1 == 0x1000000)
        {
          v2 = 0x756F72676B636162;
        }

        else
        {
          v2 = v1;
        }

        v3 = 0x72654D736D657469;
        v4 = 0x7571655272657375;
        if (a1 != 0x800000)
        {
          v4 = 0;
        }

        if (a1 != 0x400000)
        {
          v3 = v4;
        }

        if (a1 <= 0xFFFFFF)
        {
          return v3;
        }

        else
        {
          return v2;
        }
      }

      v18 = 0xD000000000000010;
      v19 = 0xD000000000000015;
      v22 = 0x6165726C4179616DLL;
      if (a1 != 0x200000)
      {
        v22 = 0;
      }

      if (a1 != 0x80000)
      {
        v19 = v22;
      }

      v20 = a1 == 0x40000;
LABEL_83:
      if (v20)
      {
        return v18;
      }

      else
      {
        return v19;
      }
    }

    if (a1 >= 0x8000)
    {
      v27 = 0x6F706D496B736964;
      v28 = 0x6F706D496B736964;
      if (a1 != 0x20000)
      {
        v28 = 0;
      }

      if (a1 != 0x10000)
      {
        v27 = v28;
      }

      if (a1 == 0x8000)
      {
        return 0x65526D6165727473;
      }

      else
      {
        return v27;
      }
    }

    else
    {
      v15 = 0xD00000000000001FLL;
      v16 = 0xD000000000000011;
      if (a1 != 0x4000)
      {
        v16 = 0;
      }

      if (a1 != 0x2000)
      {
        v15 = v16;
      }

      if (a1 == 4096)
      {
        return 0xD000000000000013;
      }

      else
      {
        return v15;
      }
    }
  }
}

unint64_t sub_1CF68D348()
{
  result = qword_1EC4C2350;
  if (!qword_1EC4C2350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2350);
  }

  return result;
}

unint64_t sub_1CF68D3A0()
{
  result = qword_1EC4C2358;
  if (!qword_1EC4C2358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2358);
  }

  return result;
}

unint64_t sub_1CF68D3F8()
{
  result = qword_1EC4C2360;
  if (!qword_1EC4C2360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C2368, &qword_1CFA112B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2360);
  }

  return result;
}

unint64_t sub_1CF68D460()
{
  result = qword_1EC4C2370;
  if (!qword_1EC4C2370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2370);
  }

  return result;
}

unint64_t sub_1CF68D4B8()
{
  result = qword_1EC4C2378;
  if (!qword_1EC4C2378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2378);
  }

  return result;
}

unint64_t sub_1CF68D538()
{
  result = qword_1EC4C2380;
  if (!qword_1EC4C2380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2380);
  }

  return result;
}

unint64_t sub_1CF68D58C()
{
  result = qword_1EC4C2388;
  if (!qword_1EC4C2388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2388);
  }

  return result;
}

uint64_t sub_1CF68D60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF68D648()
{
  result = qword_1EC4C2390;
  if (!qword_1EC4C2390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2390);
  }

  return result;
}

unint64_t sub_1CF68D69C()
{
  result = qword_1EC4C2398;
  if (!qword_1EC4C2398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C2398);
  }

  return result;
}

void sub_1CF68D6F0()
{
  v0 = 0;
  v1 = 0x20u;
  do
  {
    v2 = *(&unk_1F4BEC320 + v1);
    if ((v2 & ~v0) == 0)
    {
      v2 = 0;
    }

    v0 |= v2;
    v1 += 8;
  }

  while (v1 != 240);
  qword_1EDEBB8C0 = v0;
}

unint64_t sub_1CF68D754()
{
  result = qword_1EC4C23A0;
  if (!qword_1EC4C23A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23A0);
  }

  return result;
}

unint64_t sub_1CF68D7AC()
{
  result = qword_1EC4C23A8;
  if (!qword_1EC4C23A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23A8);
  }

  return result;
}

unint64_t sub_1CF68D804()
{
  result = qword_1EC4C23B0;
  if (!qword_1EC4C23B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4C23B8, &qword_1CFA11570);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23B0);
  }

  return result;
}

unint64_t sub_1CF68D86C()
{
  result = qword_1EC4C23C0;
  if (!qword_1EC4C23C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23C0);
  }

  return result;
}

unint64_t sub_1CF68D8C4()
{
  result = qword_1EC4C23C8;
  if (!qword_1EC4C23C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23C8);
  }

  return result;
}

unint64_t sub_1CF68D944()
{
  result = qword_1EC4C23D0;
  if (!qword_1EC4C23D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23D0);
  }

  return result;
}

unint64_t sub_1CF68D998()
{
  result = qword_1EC4C23D8;
  if (!qword_1EC4C23D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23D8);
  }

  return result;
}

uint64_t sub_1CF68DA18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1CF68DA54()
{
  result = qword_1EC4C23E0;
  if (!qword_1EC4C23E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23E0);
  }

  return result;
}

unint64_t sub_1CF68DAA8()
{
  result = qword_1EC4C23E8;
  if (!qword_1EC4C23E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4C23E8);
  }

  return result;
}

uint64_t sub_1CF68DB40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v24 = a3;
  v25 = a4;
  v23 = a5;
  v8 = *v5;
  v9 = *(*v5 + 96);
  v26[0] = *(*v5 + 80);
  v26[1] = v9;
  v10 = type metadata accessor for ItemReconciliation(255, v26);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = sub_1CF9E75D8();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v22 - v15;
  v17 = v27;
  result = (*(v8 + 168))(a1, 1, a2, v24, v25, v14);
  if (!v17)
  {
    v19 = v23;
    if ((*(*(TupleTypeMetadata2 - 8) + 48))(v16, 1, TupleTypeMetadata2) == 1)
    {
      (*(v13 + 8))(v16, v12);
      v20 = *(v10 - 8);
      v21 = 1;
    }

    else
    {
      v20 = *(v10 - 8);
      (*(v20 + 32))(v19, v16, v10);
      v21 = 0;
    }

    return (*(v20 + 56))(v19, v21, 1, v10);
  }

  return result;
}

uint64_t sub_1CF68DDB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v40 = a4;
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v37 = a5;
  v7 = *v5;
  v8 = *(*v5 + 80);
  TupleTypeMetadata2 = *(*v5 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v7 + 104);
  v11 = *(v7 + 88);
  v39 = AssociatedTypeWitness;
  v44 = AssociatedTypeWitness;
  v45 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v47 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID(0, &v44);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - v14;
  v44 = v8;
  v45 = v11;
  AssociatedConformanceWitness = TupleTypeMetadata2;
  v47 = v10;
  v36 = type metadata accessor for ItemReconciliation(255, &v44);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1CF9E75D8();
  v34 = *(v16 - 8);
  v35 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v21 = v40;
  v20 = v41;
  v22 = v42;
  v23 = (*(v40 + 8))(v42, v40, v17) == 2;
  (*(*(v39 - 8) + 16))(v15, v43);
  swift_storeEnumTagMultiPayload();
  v24 = v48;
  (*(*v6 + 168))(v15, v23, v20, v22, v21);
  if (v24)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v27 = v34;
  v26 = v35;
  v29 = v36;
  v28 = v37;
  (*(v13 + 8))(v15, v12);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v19, 1) == 1)
  {
    (*(v27 + 8))(v19, v26);
    v30 = v29;
    v31 = *(v29 - 8);
    v32 = 1;
    v33 = v28;
  }

  else
  {
    v30 = v29;
    v31 = *(v29 - 8);
    v33 = v28;
    (*(v31 + 32))(v28, v19, v29);
    v32 = 0;
  }

  return (*(v31 + 56))(v33, v32, 1, v30);
}

uint64_t sub_1CF68E230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a3;
  v39 = a4;
  v36 = a1;
  v37 = a2;
  v33 = a5;
  v6 = *v5;
  v7 = *(*v5 + 96);
  v8 = *(*v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(v6 + 104);
  v11 = *(v6 + 88);
  v35 = swift_getAssociatedTypeWitness();
  v40 = AssociatedTypeWitness;
  v41 = v35;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for ReconciliationID(0, &v40);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - v14;
  v31 = v11;
  v32 = v8;
  v40 = v8;
  v41 = v11;
  v34 = v7;
  AssociatedConformanceWitness = v7;
  v43 = v10;
  v16 = v10;
  v17 = type metadata accessor for ItemReconciliation(255, &v40);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v19 = sub_1CF9E75D8();
  v30 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  (*(*(v35 - 8) + 16))(v15, v36, v20);
  swift_storeEnumTagMultiPayload();
  v23 = v44;
  (*(*v5 + 168))(v15, 1, v37, v38, v39);
  if (v23)
  {
    return (*(v13 + 8))(v15, v12);
  }

  v25 = v30;
  v39 = 0;
  v44 = v16;
  v26 = v33;
  (*(v13 + 8))(v15, v12);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v22, 1, TupleTypeMetadata2) == 1)
  {
    (*(v25 + 8))(v22, v19);
    v40 = v31;
    v41 = v32;
    AssociatedConformanceWitness = v44;
    v43 = v34;
    v28 = type metadata accessor for ItemReconciliation(0, &v40);
    v29 = 1;
  }

  else
  {
    sub_1CF07EE34(v17, v27, v26);
    (*(*(v17 - 8) + 8))(v22, v17);
    v40 = v31;
    v41 = v32;
    AssociatedConformanceWitness = v44;
    v43 = v34;
    v28 = type metadata accessor for ItemReconciliation(0, &v40);
    v29 = 0;
  }

  return (*(*(v28 - 8) + 56))(v26, v29, 1);
}

uint64_t sub_1CF68E6AC@<X0>(unint64_t a1@<X0>, void (*a2)(uint64_t, char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v556 = a5;
  v555 = a4;
  v554 = a3;
  v574 = a2;
  v575 = a6;
  v580 = a1;
  v7 = *v6;
  v8 = *(*v6 + 96);
  v9 = *(*v6 + 80);
  v582.i64[0] = swift_getAssociatedTypeWitness();
  v582.i64[1] = swift_getAssociatedTypeWitness();
  v583.i64[0] = swift_getAssociatedConformanceWitness();
  v583.i64[1] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FileItemVersion(255, &v582);
  v533 = sub_1CF9E75D8();
  v572 = *(v533 - 8);
  MEMORY[0x1EEE9AC00](v533);
  v510 = &v484 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v493 = &v484 - v13;
  v518 = v10;
  v517 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v512 = &v484 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v494 = &v484 - v17;
  v18 = *(v7 + 88);
  v559 = v6;
  v19 = *(v7 + 104);
  v558 = type metadata accessor for ItemReconciliationHalf(0, v18, v19, v20);
  v553 = *(v558 - 8);
  MEMORY[0x1EEE9AC00](v558);
  v549 = &v484 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v550 = &v484 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v503 = &v484 - v25;
  v27 = type metadata accessor for SnapshotItem(255, v18, v19, v26);
  v507 = sub_1CF9E75D8();
  v505 = *(v507 - 8);
  MEMORY[0x1EEE9AC00](v507);
  v531 = &v484 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v530 = &v484 - v30;
  v521 = v27;
  v520 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v500 = &v484 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v571 = &v484 - v34;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v38 = swift_getAssociatedConformanceWitness();
  v582.i64[0] = AssociatedTypeWitness;
  v582.i64[1] = v36;
  v583.i64[0] = AssociatedConformanceWitness;
  v583.i64[1] = v38;
  v39 = type metadata accessor for FileItemVersion(255, &v582);
  v514 = sub_1CF9E75D8();
  v513 = *(v514 - 8);
  MEMORY[0x1EEE9AC00](v514);
  v509 = &v484 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v491 = &v484 - v42;
  v516 = v39;
  v515 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v511 = &v484 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v492 = &v484 - v46;
  v47 = swift_getAssociatedTypeWitness();
  v563 = sub_1CF9E75D8();
  v561 = *(v563 - 8);
  MEMORY[0x1EEE9AC00](v563);
  v546 = &v484 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v49);
  v547 = &v484 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v569 = &v484 - v52;
  MEMORY[0x1EEE9AC00](v53);
  v570 = &v484 - v54;
  MEMORY[0x1EEE9AC00](v55);
  v545 = &v484 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v548 = &v484 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v497 = &v484 - v60;
  v566 = v47;
  v564 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v527 = &v484 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v528 = &v484 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v538 = &v484 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v535 = &v484 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v537 = &v484 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v529 = &v484 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v498 = &v484 - v74;
  v557 = type metadata accessor for ItemReconciliationHalf(0, v9, v8, v75);
  v552 = *(v557 - 8);
  MEMORY[0x1EEE9AC00](v557);
  v543 = &v484 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v77);
  v544 = &v484 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v502 = &v484 - v80;
  v82 = type metadata accessor for SnapshotItem(255, v9, v8, v81);
  v506 = sub_1CF9E75D8();
  v504 = *(v506 - 8);
  MEMORY[0x1EEE9AC00](v506);
  v526 = &v484 - ((v83 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v84);
  v525 = &v484 - v85;
  v519 = v82;
  v532 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v501 = &v484 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v88);
  v499 = &v484 - v89;
  v90 = swift_getAssociatedTypeWitness();
  v562 = sub_1CF9E75D8();
  v560 = *(v562 - 8);
  MEMORY[0x1EEE9AC00](v562);
  v524 = &v484 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v92);
  v495 = &v484 - v93;
  MEMORY[0x1EEE9AC00](v94);
  v541 = &v484 - v95;
  MEMORY[0x1EEE9AC00](v96);
  v542 = &v484 - v97;
  MEMORY[0x1EEE9AC00](v98);
  v540 = &v484 - v99;
  MEMORY[0x1EEE9AC00](v100);
  v568 = &v484 - v101;
  MEMORY[0x1EEE9AC00](v102);
  v539 = &v484 - v103;
  v567 = v90;
  v565 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v508 = &v484 - ((v105 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v106);
  v496 = &v484 - v107;
  MEMORY[0x1EEE9AC00](v108);
  v522 = &v484 - v109;
  MEMORY[0x1EEE9AC00](v110);
  v523 = &v484 - v111;
  MEMORY[0x1EEE9AC00](v112);
  v551 = &v484 - v113;
  MEMORY[0x1EEE9AC00](v114);
  v534 = &v484 - v115;
  MEMORY[0x1EEE9AC00](v116);
  v536 = &v484 - v117;
  v118 = sub_1CF9E6118();
  v576 = *(v118 - 8);
  v577 = v118;
  MEMORY[0x1EEE9AC00](v118);
  v120 = &v484 - ((v119 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v121);
  v573 = &v484 - v122;
  v123.i64[0] = v9;
  v123.i64[1] = v18;
  v124.i64[0] = v8;
  v124.i64[1] = v19;
  v578 = v124;
  v579 = v123;
  v582 = v123;
  v583 = v124;
  v125 = type metadata accessor for ItemReconciliation(255, &v582);
  v126 = sub_1CF9E75D8();
  v127 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v129 = &v484 - v128;
  v130 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v484 - ((v132 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v134);
  v136 = &v484 - v135;
  v138 = MEMORY[0x1EEE9AC00](v137);
  v140 = &v484 - v139;
  (*(v127 + 16))(v129, v580, v126, v138);
  if ((*(v130 + 48))(v129, 1, v125) != 1)
  {
    (*(v130 + 32))(v140, v129, v125);
    v147 = v581;
    sub_1CF95A080(v574, v125, v582.i64);
    if (v147)
    {
      return (*(v130 + 8))(v140, v125);
    }

    v148 = v582.i64[1];
    v580 = v582.i64[0];
    v581 = 0;
    v149 = v583.i64[0];
    v150 = fpfs_current_or_default_log();
    sub_1CF9E6128();
    v151 = *(v130 + 16);
    v489 = v140;
    v488 = v125;
    v487 = v151;
    v151(v136, v140, v125);
    v152 = v580;
    sub_1CF48048C(v580, v148, v149);
    v153 = sub_1CF9E6108();
    v154 = sub_1CF9E7298();
    v574 = v148;
    v490 = v149;
    sub_1CF480498(v152);
    v485 = v154;
    v155 = os_log_type_enabled(v153, v154);
    v486 = v130;
    if (v155)
    {
      v156 = swift_slowAlloc();
      v484 = swift_slowAlloc();
      v587 = v484;
      *v156 = 136315394;
      v157 = v488;
      v487(v133, v136, v488);
      v158 = *(v130 + 8);
      v158(v136, v157);
      v159 = v153;
      v160 = sub_1CF082CB0(v157);
      v162 = v161;
      v487 = v158;
      v158(v133, v157);
      v163 = sub_1CEFD0DF0(v160, v162, &v587);
      v162, v164, v165, v166, v167, v168, v169, v170;
      *(v156 + 4) = v163;
      *(v156 + 12) = 2080;
      v171 = v580;
      v582.i64[0] = v580;
      v582.i64[1] = v574;
      v583.i64[0] = v490;
      sub_1CF48048C(v580, v574, v490);
      v172 = sub_1CF95E1F0();
      v174 = v173;
      sub_1CF480498(v582.i64[0]);
      v175 = sub_1CEFD0DF0(v172, v174, &v587);
      v174, v176, v177, v178, v179, v180, v181, v182;
      *(v156 + 14) = v175;
      _os_log_impl(&dword_1CEFC7000, v159, v485, "[interactive] testingOperationForEntry, entry=%s, status=%s", v156, 0x16u);
      v183 = v484;
      swift_arrayDestroy();
      MEMORY[0x1D386CDC0](v183, -1, -1);
      v184 = v156;
      v185 = v581;
      MEMORY[0x1D386CDC0](v184, -1, -1);

      v576[1](v573, v577);
      v186 = v571;
      v187 = v572;
      v188 = v171;
    }

    else
    {
      v157 = v488;
      v487 = *(v130 + 8);
      (v487)(v136, v488);

      v576[1](v573, v577);
      v186 = v571;
      v187 = v572;
      v188 = v580;
      v185 = v581;
    }

    v189 = v569;
    v190 = v568;
    v191 = v489;
    v192 = v570;
    if (v188 >> 62 != 1)
    {
      if (!(v188 >> 62))
      {
        if (v188 <= 5u)
        {
          if (v188)
          {
            if (v188 == 1)
            {
              Strong = swift_weakLoadStrong();
              if (Strong)
              {
                v194 = *(Strong + 32);

                v195 = v560;
                v196 = v562;
                (*(v560 + 16))(v190, v191, v562);
                v197 = v565;
                v198 = v567;
                if ((*(v565 + 48))(v190, 1, v567) == 1)
                {

                  sub_1CF480498(v580);
                  (v487)(v191, v488);
                  (*(v195 + 8))(v190, v196);
                  goto LABEL_32;
                }

                v302 = v534;
                v303 = v190;
                v304 = *(v197 + 32);
                v304(v534, v303, v198);
                v305 = v526;
                (*(*v194 + 240))(v302, 1, v554, v555, v556);
                if (v185)
                {

                  sub_1CF480498(v580);
                  (*(v197 + 8))(v302, v198);
                  v295 = v489;
                  v296 = v488;
                  return (v487)(v295, v296);
                }

                v577 = v304;
                v329 = v532;
                v330 = v305;
                v331 = v305;
                v332 = v519;
                if ((*(v532 + 48))(v330, 1, v519) == 1)
                {

                  sub_1CF480498(v580);
                  (*(v565 + 8))(v302, v567);
                  (v487)(v489, v488);
                  (*(v504 + 8))(v331, v506);
                  goto LABEL_32;
                }

                v383 = *(v329 + 32);
                v384 = v501;
                v383(v501, v331, v332);
                v385 = (*(*v194 + 312))(v302, v554, v555, v556);
                v581 = 0;
                v400 = v488;
                v573 = v383;
                v576 = v385;
                v401 = v386;

                sub_1CF480498(v580);
                if (v401)
                {
                  (*(v532 + 8))(v384, v332);
                  (*(v565 + 8))(v534, v567);
                  v395 = v489;
                  v396 = v400;
                  goto LABEL_100;
                }

                v431 = &v489[*(v400 + 52)];
                v432 = v561;
                v433 = v497;
                (*(v561 + 16))(v497, v431, v563);
                v434 = v564;
                v435 = v566;
                if ((*(v564 + 48))(v433, 1, v566) == 1)
                {
                  (*(v532 + 8))(v501, v332);
                  (*(v565 + 8))(v534, v567);
                  (v487)(v489, v400);
                  (*(v432 + 8))(v433, v563);
                }

                else
                {
                  v440 = *(v434 + 32);
                  v580 = v434 + 32;
                  v572 = v440;
                  (v440)(v498, v433, v435);
                  v441 = v513;
                  v442 = &v431[*(v558 + 48)];
                  v443 = v491;
                  v444 = v514;
                  (*(v513 + 16))(v491, v442, v514);
                  v445 = v515;
                  v446 = v516;
                  if ((*(v515 + 48))(v443, 1, v516) != 1)
                  {
                    v565 = *(v445 + 32);
                    v568 = v445 + 32;
                    v451 = (v565)(v492, v443, v446);
                    v571 = &v484;
                    MEMORY[0x1EEE9AC00](v451);
                    strcpy(&v484 - 80, " item destinationItemID baseVersion fields version domainVersion ");
                    v582.i64[0] = v567;
                    v582.i64[1] = v506;
                    v583.i64[0] = v563;
                    v583.i64[1] = v444;
                    v584 = &type metadata for Fields;
                    v585 = MEMORY[0x1E69E6810];
                    v586 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
                    TupleTypeMetadata = swift_getTupleTypeMetadata();
                    v453 = TupleTypeMetadata[12];
                    v454 = TupleTypeMetadata[16];
                    v455 = TupleTypeMetadata[20];
                    v570 = TupleTypeMetadata[24];
                    v569 = TupleTypeMetadata[28];
                    v571 = TupleTypeMetadata[32];
                    v456 = v446;
                    v457 = v575;
                    (v577)(v575, v534, v567);
                    v458 = v519;
                    (v573)(&v457[v453], v501, v519);
                    (*(v532 + 56))(&v457[v453], 0, 1, v458);
                    v459 = v566;
                    (v572)(&v457[v454], v498, v566);
                    (*(v434 + 56))(&v457[v454], 0, 1, v459);
                    (v565)(&v457[v455], v492, v456);
                    (*(v445 + 56))(&v457[v455], 0, 1, v456);
                    *&v457[v570] = v574;
                    *&v457[v569] = v576;
                    v460 = v552;
                    v461 = v502;
                    v462 = v489;
                    v463 = v557;
                    (*(v552 + 16))(v502, v489, v557);
                    (v487)(v462, v488);
                    v464 = *&v461[*(v463 + 72)];
                    v465 = *(v460 + 8);
                    v466 = v464;
                    v465(v461, v463);
                    *&v457[v571] = v464;
                    v582 = v579;
                    v583 = v578;
                    type metadata accessor for DirectionalTestingOperation(0, &v582);
                    swift_storeEnumTagMultiPayload();
                    v582 = v579;
                    v583 = v578;
                    v467 = type metadata accessor for TestingOperation(0, &v582);
                    swift_storeEnumTagMultiPayload();
                    return (*(*(v467 - 8) + 56))(v457, 0, 1, v467);
                  }

                  (*(v434 + 8))(v498, v566);
                  (*(v532 + 8))(v501, v519);
                  (*(v565 + 8))(v534, v567);
                  (v487)(v489, v488);
                  (*(v441 + 8))(v443, v444);
                }

LABEL_32:
                v582 = v579;
                v583 = v578;
                v221 = type metadata accessor for TestingOperation(0, &v582);
                return (*(*(v221 - 8) + 56))(v575, 1, 1, v221);
              }

              __break(1u);
              goto LABEL_114;
            }

            if (v188 != 2)
            {
              goto LABEL_117;
            }

            sub_1CF480498(v188);
            v252 = v560;
            v253 = v540;
            v254 = v562;
            (*(v560 + 16))(v540, v191, v562);
            v255 = v565;
            v256 = v567;
            v257 = (*(v565 + 48))(v253, 1, v567);
            v258 = v548;
            if (v257 == 1)
            {
              (v487)(v191, v157);
              (*(v252 + 8))(v253, v254);
              goto LABEL_32;
            }

            v275 = *(v255 + 32);
            v580 = v255 + 32;
            v577 = v275;
            v275(v551, v253, v256);
            v276 = v191;
            v277 = &v191[*(v157 + 52)];
            v278 = v561;
            v279 = v258;
            v280 = v258;
            v281 = v563;
            (*(v561 + 16))(v279, v277, v563);
            v282 = v564;
            v283 = v566;
            if ((*(v564 + 48))(v280, 1, v566) == 1)
            {
              (*(v255 + 8))(v551, v567);
              (v487)(v276, v157);
              (*(v278 + 8))(v280, v281);
              goto LABEL_32;
            }

            v576 = *(v282 + 32);
            (v576)(v529, v280, v283);
            v312 = v513;
            v313 = &v277[*(v558 + 48)];
            v314 = v509;
            v315 = v514;
            (*(v513 + 16))(v509, v313, v514);
            v316 = v515;
            v317 = v516;
            if ((*(v515 + 48))(v314, 1, v516) == 1)
            {
              (*(v282 + 8))(v529, v566);
              (*(v565 + 8))(v551, v567);
              (v487)(v489, v157);
              (*(v312 + 8))(v314, v315);
              goto LABEL_32;
            }

            v337 = *(v316 + 32);
            v573 = (v316 + 32);
            v574 = v337;
            v338 = (v337)(v511, v314, v317);
            v339 = v282;
            MEMORY[0x1EEE9AC00](v338);
            strcpy(&v484 - 64, " destinationItemID baseVersion recursive domainVersion ");
            v340 = v567;
            v582.i64[0] = v567;
            v582.i64[1] = v563;
            v583.i64[0] = v315;
            v583.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
            v584 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
            v341 = swift_getTupleTypeMetadata();
            v342 = v341[12];
            v343 = v341[16];
            v572 = v341[20];
            v344 = v341[24];
            v345 = v575;
            (v577)(v575, v551, v340);
            v346 = v566;
            (v576)(&v345[v342], v529, v566);
            (*(v339 + 56))(&v345[v342], 0, 1, v346);
            v574(&v345[v343], v511, v317);
            (*(v316 + 56))(&v345[v343], 0, 1, v317);
            *(v572 + v345) = 1;
            v347 = v552;
            v348 = v502;
            v349 = v489;
            v350 = v557;
            (*(v552 + 16))(v502, v489, v557);
            (v487)(v349, v488);
            v351 = *&v348[*(v350 + 72)];
            v352 = *(v347 + 8);
            v353 = v351;
            v352(v348, v350);
            *&v345[v344] = v351;
            v582 = v579;
            v583 = v578;
            type metadata accessor for DirectionalTestingOperation(0, &v582);
          }

          else
          {
            v222 = swift_weakLoadStrong();
            if (!v222)
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            v223 = *(v222 + 32);

            v224 = v560;
            v225 = v539;
            v226 = v562;
            (*(v560 + 16))(v539, v191, v562);
            v227 = v565;
            v228 = v567;
            if ((*(v565 + 48))(v225, 1, v567) == 1)
            {

              sub_1CF480498(v580);
              (v487)(v191, v157);
              (*(v224 + 8))(v225, v226);
              goto LABEL_32;
            }

            v291 = v185;
            v292 = *(v227 + 32);
            v293 = v536;
            (v292)(v536, v225, v228);
            v294 = v525;
            (*(*v223 + 240))(v293, 1, v554, v555, v556);
            if (v291)
            {

              sub_1CF480498(v580);
              (*(v227 + 8))(v293, v567);
              v295 = v489;
              v296 = v157;
              return (v487)(v295, v296);
            }

            v577 = v227 + 32;
            v322 = v532;
            v323 = v519;
            if ((*(v532 + 48))(v294, 1, v519) == 1)
            {

              sub_1CF480498(v580);
              (*(v565 + 8))(v536, v567);
              (v487)(v489, v157);
              (*(v504 + 8))(v294, v506);
              goto LABEL_32;
            }

            v576 = v292;
            v370 = *(v322 + 32);
            v371 = v294;
            v372 = v499;
            v370(v499, v371, v323);
            v373 = (*(*v223 + 312))(v536, v554, v555, v556);
            v581 = 0;
            v573 = v373;
            v393 = v374;

            v394 = sub_1CF480498(v580);
            if (v393)
            {
              (*(v532 + 8))(v372, v323);
              (*(v565 + 8))(v536, v567);
              v395 = v489;
              v396 = v157;
LABEL_100:
              (v487)(v395, v396);
              goto LABEL_32;
            }

            MEMORY[0x1EEE9AC00](v394);
            strcpy(&v484 - 48, " item version domainVersion ");
            v403 = v567;
            v582.i64[0] = v567;
            v582.i64[1] = v506;
            v583.i64[0] = MEMORY[0x1E69E6810];
            v583.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
            v404 = swift_getTupleTypeMetadata();
            v405 = v404[12];
            v406 = v404[16];
            v407 = v404[20];
            v345 = v575;
            (v576)(v575, v536, v403);
            v370(&v345[v405], v372, v323);
            (*(v532 + 56))(&v345[v405], 0, 1, v323);
            *&v345[v406] = v573;
            v408 = v552;
            v409 = v502;
            v410 = v489;
            v411 = v557;
            (*(v552 + 16))(v502, v489, v557);
            (v487)(v410, v488);
            v412 = *&v409[*(v411 + 72)];
            v413 = *(v408 + 8);
            v414 = v412;
            v413(v409, v411);
            *&v345[v407] = v412;
            v582 = v579;
            v583 = v578;
            type metadata accessor for DirectionalTestingOperation(0, &v582);
          }

          swift_storeEnumTagMultiPayload();
          v582 = v579;
          v583 = v578;
          v354 = type metadata accessor for TestingOperation(0, &v582);
LABEL_84:
          swift_storeEnumTagMultiPayload();
          return (*(*(v354 - 8) + 56))(v345, 0, 1, v354);
        }

        if (v188 == 6)
        {
          sub_1CF480498(v188);
          v229 = v552;
          v230 = v543;
          v231 = v557;
          (*(v552 + 16))(v543, v191, v557);
          (v487)(v191, v157);
          v212 = v560;
          v213 = v541;
          v214 = v562;
          (*(v560 + 16))(v541, v230, v562);
          (*(v229 + 8))(v230, v231);
          v232 = v565;
          v233 = v567;
          if ((*(v565 + 48))(v213, 1, v567) != 1)
          {
            v271 = *(v232 + 32);
            v272 = v522;
            v271(v522, v213, v233);
            v219 = v575;
            v271(v575, v272, v233);
            v582 = v579;
            v583 = v578;
            type metadata accessor for DirectionalTestingOperation(0, &v582);
            goto LABEL_59;
          }

          goto LABEL_37;
        }

        if (v188 != 12)
        {
          if (v188 != 23)
          {
            goto LABEL_117;
          }

          sub_1CF480498(v188);
          v209 = v552;
          v210 = v544;
          v211 = v557;
          (*(v552 + 16))(v544, v191, v557);
          (v487)(v191, v157);
          v212 = v560;
          v213 = v542;
          v214 = v562;
          (*(v560 + 16))(v542, v210, v562);
          (*(v209 + 8))(v210, v211);
          v215 = v565;
          v216 = v567;
          if ((*(v565 + 48))(v213, 1, v567) != 1)
          {
            v217 = *(v215 + 32);
            v218 = v523;
            v217(v523, v213, v216);
            v219 = v575;
            v217(v575, v218, v216);
            v582 = v579;
            v583 = v578;
            type metadata accessor for DirectionalTestingOperation(0, &v582);
            goto LABEL_59;
          }

LABEL_37:
          (*(v212 + 8))(v213, v214);
          goto LABEL_32;
        }
      }

LABEL_31:
      sub_1CF480498(v188);
      (v487)(v191, v157);
      goto LABEL_32;
    }

    if (v188 <= 5u)
    {
      if (!v188)
      {
        v234 = swift_weakLoadStrong();
        if (!v234)
        {
LABEL_116:
          __break(1u);
LABEL_117:
          sub_1CF51565C();
        }

        v235 = *(v234 + 40);

        v236 = v561;
        v237 = *(v561 + 16);
        v238 = v489;
        v577 = *(v157 + 52);
        v239 = v157;
        v240 = v545;
        v241 = v563;
        v237(v545, &v489[v577], v563);
        v242 = v564;
        v243 = v566;
        if ((*(v564 + 48))(v240, 1, v566) == 1)
        {

          sub_1CF480498(v580);
          (v487)(v238, v239);
          (*(v236 + 8))(v240, v241);
          goto LABEL_32;
        }

        v297 = v537;
        v298 = v240;
        v299 = *(v242 + 32);
        (v299)(v537, v298, v243);
        v300 = v530;
        v301 = v581;
        (*(*v235 + 240))(v297, 1, v554, v555, v556);
        v581 = v301;
        if (v301)
        {

          sub_1CF480498(v580);
          (*(v242 + 8))(v297, v243);
        }

        else
        {
          v324 = v235;
          v325 = v520;
          v326 = v521;
          v327 = (*(v520 + 48))(v300, 1, v521);
          v328 = v488;
          if (v327 == 1)
          {

            sub_1CF480498(v580);
            (*(v564 + 8))(v537, v566);
            (v487)(v489, v328);
            (*(v505 + 8))(v300, v507);
            goto LABEL_32;
          }

          v576 = v299;
          v375 = v325;
          v378 = *(v325 + 32);
          v376 = (v325 + 32);
          v377 = v378;
          (v378)(v186, v300, v326);
          v379 = v537;
          v380 = v581;
          v381 = (*(*v324 + 312))(v537, v554, v555, v556);
          v581 = v380;
          if (!v380)
          {
            v397 = v375;
            v571 = v376;
            v572 = v377;
            v573 = v381;
            v398 = v382;

            v399 = sub_1CF480498(v580);
            if ((v398 & 1) == 0)
            {
              MEMORY[0x1EEE9AC00](v399);
              strcpy(&v484 - 48, " item version domainVersion ");
              v415 = v397;
              v416 = v566;
              v582.i64[0] = v566;
              v582.i64[1] = v507;
              v583.i64[0] = MEMORY[0x1E69E6810];
              v583.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
              v417 = swift_getTupleTypeMetadata();
              v418 = v417[12];
              v419 = v417[16];
              v420 = v417[20];
              v421 = v575;
              (v576)(v575, v537, v416);
              v422 = v521;
              (v572)(&v421[v418], v186, v521);
              (*(v415 + 56))(&v421[v418], 0, 1, v422);
              *&v421[v419] = v573;
              v423 = v553;
              v424 = v489;
              v425 = v503;
              v426 = v558;
              (*(v553 + 16))(v503, &v489[v577], v558);
              (v487)(v424, v488);
              v427 = *&v425[*(v426 + 72)];
              v428 = *(v423 + 8);
              v429 = v427;
              v428(v425, v426);
              *&v421[v420] = v427;
              v582 = vextq_s8(v579, v579, 8uLL);
              v583 = vextq_s8(v578, v578, 8uLL);
              type metadata accessor for DirectionalTestingOperation(0, &v582);
              swift_storeEnumTagMultiPayload();
              v582 = v579;
              v583 = v578;
              v430 = type metadata accessor for TestingOperation(0, &v582);
              swift_storeEnumTagMultiPayload();
              return (*(*(v430 - 8) + 56))(v421, 0, 1, v430);
            }

            (*(v397 + 8))(v186, v521);
            (*(v564 + 8))(v537, v566);
            goto LABEL_99;
          }

          sub_1CF480498(v580);
          (*(v375 + 8))(v186, v521);
          (*(v564 + 8))(v379, v566);
        }

        v295 = v489;
        v296 = v488;
        return (v487)(v295, v296);
      }

      if (v188 == 1)
      {
        v199 = swift_weakLoadStrong();
        if (!v199)
        {
LABEL_114:
          __break(1u);
          goto LABEL_115;
        }

        v200 = *(v199 + 40);

        v201 = v191;
        v202 = v561;
        v203 = *(v561 + 16);
        v577 = &v191[*(v157 + 52)];
        v204 = v563;
        v203(v192);
        v205 = v564;
        v206 = v192;
        v207 = v192;
        v208 = v566;
        if ((*(v564 + 48))(v206, 1, v566) == 1)
        {

          sub_1CF480498(v580);
          (v487)(v201, v157);
          (*(v202 + 8))(v207, v204);
          goto LABEL_32;
        }

        v306 = v205;
        v309 = *(v205 + 32);
        v307 = (v205 + 32);
        v308 = v309;
        v310 = v535;
        (v309)(v535, v207, v208);
        v311 = v531;
        (*(*v200 + 240))(v310, 1, v554, v555, v556);
        if (v185)
        {

          sub_1CF480498(v580);
          (*(v306 + 8))(v310, v208);
          return (v487)(v489, v488);
        }

        v573 = v307;
        v576 = v308;
        v333 = v520;
        v334 = v521;
        v335 = (*(v520 + 48))(v311, 1, v521);
        v336 = v488;
        if (v335 == 1)
        {

          sub_1CF480498(v580);
          (*(v564 + 8))(v310, v566);
          (v487)(v489, v336);
          (*(v505 + 8))(v311, v507);
          goto LABEL_32;
        }

        v387 = *(v333 + 32);
        v388 = v310;
        v389 = v500;
        v387(v500, v311, v334);
        v390 = v334;
        v391 = (*(*v200 + 312))(v388, v554, v555, v556);
        v581 = 0;
        v402 = v392;
        v571 = v391;

        sub_1CF480498(v580);
        if ((v402 & 1) == 0)
        {
          v436 = v560;
          v437 = v495;
          (*(v560 + 16))(v495, v489, v562);
          v438 = v565;
          v439 = v567;
          if ((*(v565 + 48))(v437, 1, v567) == 1)
          {
            (*(v520 + 8))(v389, v390);
            (*(v564 + 8))(v535, v566);
            (v487)(v489, v488);
            (*(v436 + 8))(v437, v562);
          }

          else
          {
            v580 = *(v438 + 32);
            v570 = v438 + 32;
            (v580)(v496, v437, v439);
            v447 = v572;
            v448 = v493;
            (v572[2])(v493, &v489[*(v557 + 48)], v533);
            v449 = v517;
            v450 = v518;
            if ((*(v517 + 48))(v448, 1, v518) != 1)
            {
              v468 = *(v449 + 32);
              v569 = v449 + 32;
              v572 = v468;
              v469 = (v468)(v494, v448, v450);
              MEMORY[0x1EEE9AC00](v469);
              v470 = v449;
              strcpy(&v484 - 80, " item destinationItemID baseVersion fields version domainVersion ");
              v582.i64[0] = v566;
              v582.i64[1] = v507;
              v583.i64[0] = v562;
              v583.i64[1] = v533;
              v584 = &type metadata for Fields;
              v585 = MEMORY[0x1E69E6810];
              v586 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
              v471 = swift_getTupleTypeMetadata();
              v472 = v471[12];
              v473 = v471[16];
              v562 = v471[20];
              v564 = v471[24];
              v563 = v471[28];
              v568 = v471[32];
              v474 = v575;
              (v576)(v575, v535, v566);
              v387(&v474[v472], v500, v390);
              (*(v520 + 56))(&v474[v472], 0, 1, v390);
              (v580)(&v474[v473], v496, v439);
              (*(v438 + 56))(&v474[v473], 0, 1, v439);
              v475 = v562;
              v476 = v518;
              (v572)(&v474[v562], v494, v518);
              (*(v470 + 56))(&v474[v475], 0, 1, v476);
              *&v474[v564] = v574;
              *&v474[v563] = v571;
              v477 = v553;
              v478 = v503;
              v479 = v558;
              (*(v553 + 16))(v503, v577, v558);
              (v487)(v489, v488);
              v480 = *&v478[*(v479 + 72)];
              v481 = *(v477 + 8);
              v482 = v480;
              v481(v478, v479);
              *&v474[v568] = v480;
              v582 = vextq_s8(v579, v579, 8uLL);
              v583 = vextq_s8(v578, v578, 8uLL);
              type metadata accessor for DirectionalTestingOperation(0, &v582);
              swift_storeEnumTagMultiPayload();
              v582 = v579;
              v583 = v578;
              v483 = type metadata accessor for TestingOperation(0, &v582);
              swift_storeEnumTagMultiPayload();
              return (*(*(v483 - 8) + 56))(v474, 0, 1, v483);
            }

            (*(v438 + 8))(v496, v439);
            (*(v520 + 8))(v500, v390);
            (*(v564 + 8))(v535, v566);
            (v487)(v489, v488);
            (v447[1])(v448, v533);
          }

          goto LABEL_32;
        }

        (*(v333 + 8))(v389, v334);
        (*(v564 + 8))(v535, v566);
LABEL_99:
        v395 = v489;
        v396 = v488;
        goto LABEL_100;
      }

      v259 = v566;
      if (v188 == 2)
      {
        sub_1CF480498(v188);
        v260 = v561;
        v261 = *(v561 + 16);
        v580 = *(v157 + 52);
        v262 = v563;
        v261(v189, &v191[v580], v563);
        v263 = v564;
        if ((*(v564 + 48))(v189, 1, v259) == 1)
        {
          (v487)(v191, v157);
          (*(v260 + 8))(v189, v262);
          goto LABEL_32;
        }

        v284 = v538;
        v576 = *(v263 + 32);
        v577 = v263 + 32;
        (v576)(v538, v189, v259);
        v285 = v560;
        v286 = v524;
        v287 = v562;
        (*(v560 + 16))(v524, v191, v562);
        if ((*(v565 + 48))(v286, 1, v567) == 1)
        {
          (*(v263 + 8))(v284, v259);
          (v487)(v191, v157);
          (*(v285 + 8))(v286, v287);
          goto LABEL_32;
        }

        v318 = v508;
        v574 = *(v565 + 32);
        v574(v508, v286, v567);
        v319 = v510;
        (v187[2])(v510, &v191[*(v557 + 48)], v533);
        v320 = v517;
        v321 = v518;
        if ((*(v517 + 48))(v319, 1, v518) == 1)
        {
          (*(v565 + 8))(v318, v567);
          (*(v564 + 8))(v538, v259);
          (v487)(v191, v157);
          (v187[1])(v319, v533);
          goto LABEL_32;
        }

        v573 = *(v320 + 32);
        v355 = (v573)(v512, v319, v321);
        v572 = &v484;
        MEMORY[0x1EEE9AC00](v355);
        strcpy(&v484 - 64, " destinationItemID baseVersion recursive domainVersion ");
        v356 = v259;
        v582.i64[0] = v259;
        v582.i64[1] = v562;
        v583.i64[0] = v533;
        v583.i64[1] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        v584 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE5D8, &unk_1CF9FEF50);
        v357 = swift_getTupleTypeMetadata();
        v358 = v357[12];
        v359 = v357[16];
        v360 = v357[24];
        v571 = v357[20];
        v572 = v360;
        v345 = v575;
        (v576)(v575, v538, v356);
        v361 = v318;
        v362 = v567;
        v574(&v345[v358], v361, v567);
        (*(v565 + 56))(&v345[v358], 0, 1, v362);
        (v573)(&v345[v359], v512, v321);
        (*(v320 + 56))(&v345[v359], 0, 1, v321);
        v345[v571] = 0;
        v363 = v553;
        v364 = v489;
        v365 = v503;
        v366 = v558;
        (*(v553 + 16))(v503, &v489[v580], v558);
        (v487)(v364, v488);
        v367 = *&v365[*(v366 + 72)];
        v368 = *(v363 + 8);
        v369 = v367;
        v368(v365, v366);
        *(v572 + v345) = v367;
        v582 = vextq_s8(v579, v579, 8uLL);
        v583 = vextq_s8(v578, v578, 8uLL);
        type metadata accessor for DirectionalTestingOperation(0, &v582);
        swift_storeEnumTagMultiPayload();
        v582 = v579;
        v583 = v578;
        v354 = type metadata accessor for TestingOperation(0, &v582);
        goto LABEL_84;
      }

LABEL_118:
      sub_1CF51565C();
    }

    if (v188 == 6)
    {
      sub_1CF480498(v188);
      v244 = v553;
      v245 = v549;
      v246 = v558;
      (*(v553 + 16))(v549, &v191[*(v157 + 52)], v558);
      (v487)(v191, v157);
      v247 = v561;
      v248 = v546;
      v249 = v563;
      (*(v561 + 16))(v546, v245, v563);
      (*(v244 + 8))(v245, v246);
      v250 = v564;
      v251 = v566;
      if ((*(v564 + 48))(v248, 1, v566) == 1)
      {
        (*(v247 + 8))(v248, v249);
        goto LABEL_32;
      }

      v273 = *(v250 + 32);
      v274 = v527;
      v273(v527, v248, v251);
      v219 = v575;
      v273(v575, v274, v251);
      v582 = vextq_s8(v579, v579, 8uLL);
      v583 = vextq_s8(v578, v578, 8uLL);
      type metadata accessor for DirectionalTestingOperation(0, &v582);
    }

    else
    {
      v220 = v566;
      if (v188 == 12)
      {
        goto LABEL_31;
      }

      if (v188 != 23)
      {
        goto LABEL_118;
      }

      sub_1CF480498(v188);
      v264 = v553;
      v265 = v550;
      v266 = v558;
      (*(v553 + 16))(v550, &v191[*(v157 + 52)], v558);
      (v487)(v191, v157);
      v267 = v561;
      v268 = v547;
      v269 = v563;
      (*(v561 + 16))(v547, v265, v563);
      (*(v264 + 8))(v265, v266);
      v270 = v564;
      if ((*(v564 + 48))(v268, 1, v220) == 1)
      {
        (*(v267 + 8))(v268, v269);
        goto LABEL_32;
      }

      v288 = *(v270 + 32);
      v289 = v528;
      v288(v528, v268, v220);
      v219 = v575;
      v288(v575, v289, v220);
      v582 = vextq_s8(v579, v579, 8uLL);
      v583 = vextq_s8(v578, v578, 8uLL);
      type metadata accessor for DirectionalTestingOperation(0, &v582);
    }

LABEL_59:
    swift_storeEnumTagMultiPayload();
    v582 = v579;
    v583 = v578;
    v290 = type metadata accessor for TestingOperation(0, &v582);
    swift_storeEnumTagMultiPayload();
    return (*(*(v290 - 8) + 56))(v219, 0, 1, v290);
  }

  (*(v127 + 8))(v129, v126);
  v141 = fpfs_current_or_default_log();
  sub_1CF9E6128();
  v142 = sub_1CF9E6108();
  v143 = sub_1CF9E7298();
  if (os_log_type_enabled(v142, v143))
  {
    v144 = swift_slowAlloc();
    *v144 = 0;
    _os_log_impl(&dword_1CEFC7000, v142, v143, "[interactive] testingOperationForEntry, missing entry", v144, 2u);
    MEMORY[0x1D386CDC0](v144, -1, -1);
  }

  v576[1](v120, v577);
  v582 = v579;
  v583 = v578;
  v145 = type metadata accessor for TestingOperation(0, &v582);
  return (*(*(v145 - 8) + 56))(v575, 1, 1, v145);
}

uint64_t sub_1CF693178(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t *a7)
{
  v9 = v8;
  v64 = a5;
  v65 = a7;
  v74 = a6;
  v63 = a3;
  v67 = a2;
  v68 = a1;
  v12 = *(*v7 + 88);
  v13 = *(*v7 + 96);
  v14 = *(*v7 + 104);
  v70 = *(*v7 + 80);
  v11 = v70;
  v71 = v12;
  v72 = v13;
  v73 = v14;
  v59 = type metadata accessor for ReconciliationTable.CachedEntry(0, &v70);
  v54 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v50 = &v49 - v15;
  v70 = v11;
  v71 = v12;
  v72 = v13;
  v73 = v14;
  v16 = type metadata accessor for ReconciliationMutation(0, &v70);
  v55 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  v19 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v49 - v20;
  v22 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v56 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v49 - v27;
  v29 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v29);
  v53 = &v49 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v31);
  v57 = v34;
  v58 = v33;
  v35 = *(v34 + 16);
  v69 = &v49 - v36;
  v52 = v34 + 16;
  v51 = v35;
  v35(v32);
  (*(v22 + 16))(v25, v68, a4);
  sub_1CF9E6B68();
  v62 = a4;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v67 = v28;
  v68 = AssociatedTypeWitness;
  v38 = v55;
  v61 = AssociatedConformanceWitness;
  sub_1CF9E7618();
  v60 = *(v38 + 48);
  if (v60(v21, 1, v16) != 1)
  {
    v39 = *(v38 + 32);
    v40 = (v38 + 8);
    while (1)
    {
      v39(v18, v21, v16);
      v41 = objc_autoreleasePoolPush();
      sub_1CF69C15C(v69, v66, v18, v63, v62, v64, v74, v65, &v70);
      if (v9)
      {
        break;
      }

      v9 = 0;
      objc_autoreleasePoolPop(v41);
      (*v40)(v18, v16);
      sub_1CF9E7618();
      if (v60(v21, 1, v16) == 1)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v41);
    (*(v56 + 8))(v67, v68);
    (*v40)(v18, v16);
    v43 = v58;
    return (*(v57 + 8))(v69, v43);
  }

LABEL_5:
  (*(v56 + 8))(v67, v68);
  v42 = v53;
  v43 = v58;
  (v51)(v53, v69, v58);
  v44 = v54;
  v45 = v59;
  if ((*(v54 + 48))(v42, 1, v59) == 1)
  {
    v46 = *(v57 + 8);
    v46(v42, v43);
    return (v46)(v69, v43);
  }

  v48 = v50;
  (*(v44 + 32))(v50, v42, v45);
  sub_1CF695580(v48, v63, v64, v65);
  if (v9)
  {
    (*(v44 + 8))(v48, v45);
    return (*(v57 + 8))(v69, v43);
  }

  (*(v44 + 8))(v48, v45);
  return (*(v57 + 8))(v69, v43);
}

uint64_t sub_1CF693824(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t *a6)
{
  v19 = a5;
  v20 = a6;
  v11 = *(*v6 + 96);
  v21[0] = *(*v6 + 80);
  v21[1] = v11;
  v12 = type metadata accessor for ReconciliationTable.CachedEntry(255, v21);
  v13 = sub_1CF9E75D8();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  (*(*(v12 - 8) + 56))(&v19 - v16, 1, 1, v12, v15);
  sub_1CF693178(a1, v17, a2, a3, a4, v19, v20);
  return (*(v14 + 8))(v17, v13);
}

uint64_t sub_1CF6939AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = a1 + *(type metadata accessor for ItemReconciliationHalf(0, *(v7 + 80), *(v7 + 96), a4) + 64);
  v15 = *v14;
  if (*(v14 + 16))
  {
    v7 = *v14;
    sub_1CF03C530(*v14, *(v14 + 8), *(v14 + 16));
  }

  else
  {
    v16 = v15 & a3;
    v23 = *(v14 + 8);

    if (v16)
    {
      v17 = v15;
      while (1)
      {
        v18 = v16 & -v16;
        v19 = sub_1CF6A5438(v18, a1, a2, a4, a5, a6, a7);
        if (v25)
        {
          break;
        }

        v20 = -1;
        if ((v19 & ((v17 & v18) != 0)) != 0)
        {
          v20 = ~v18;
        }

        v17 &= v20;
        v21 = v16 == v18;
        v16 ^= v18;
        if (v21)
        {
          goto LABEL_12;
        }
      }

      sub_1CF03D7A8(v15, v23, 0);
    }

    else
    {
      v17 = v15;
LABEL_12:
      if (v17)
      {
        return v17;
      }

      else
      {
        return v23;
      }
    }
  }

  return v7;
}