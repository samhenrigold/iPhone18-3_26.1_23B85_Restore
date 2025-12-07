id FeatureExtractorIsInteresting.init(prefetchFor:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = [a1 interestingSubset];
  *&v1[OBJC_IVAR___PGFeatureExtractorIsInteresting_interestingMomentNodes] = v4;
  v5 = [a1 smartInterestingSubset];
  *&v1[OBJC_IVAR___PGFeatureExtractorIsInteresting_smartInterestingMomentNodes] = v5;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

id FeatureExtractorIsInteresting.floatVector(withEntity:)(void *a1)
{
  v2 = [a1 collection];
  v3 = 0.0;
  if ([*(v1 + OBJC_IVAR___PGFeatureExtractorIsInteresting_interestingMomentNodes) containsCollection_])
  {
    v4 = 1.0;
  }

  else
  {
    v4 = 0.0;
  }

  if ([*(v1 + OBJC_IVAR___PGFeatureExtractorIsInteresting_smartInterestingMomentNodes) containsCollection_])
  {
    v3 = 1.0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1390, &qword_22F770E50);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F770DF0;
  *(v5 + 32) = v4;
  *(v5 + 36) = v3;
  v6 = objc_allocWithZone(sub_22F73FBE0());
  v7 = MEMORY[0x2318FF780](v5);
  v8 = [objc_allocWithZone(MEMORY[0x277D22C40]) initWithWrapper_];

  return v8;
}

uint64_t FeatureExtractorIsInteresting.featureNames.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_22F770DF0;
  *(v0 + 32) = sub_22F740E20();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_22F740E20();
  *(v0 + 56) = v2;
  return v0;
}

id FeatureExtractorIsInteresting.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FeatureExtractorIsInteresting.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F1AD9A0(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  sub_22F1ADB1C();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v4);
  v6 = objc_opt_self();
  v7 = [v6 interestingFilter];
  v8 = [ObjCClassFromMetadata nodesMatchingFilter:v7 inGraph:a1];

  *&v1[OBJC_IVAR___PGFeatureExtractorIsInteresting_interestingMomentNodes] = v8;
  v9 = [v6 smartInterestingFilter];
  v10 = [ObjCClassFromMetadata nodesMatchingFilter:v9 inGraph:a1];

  *&v1[OBJC_IVAR___PGFeatureExtractorIsInteresting_smartInterestingMomentNodes] = v10;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

unint64_t sub_22F1ADB1C()
{
  result = qword_2810A8FC8;
  if (!qword_2810A8FC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8FC8);
  }

  return result;
}

void sub_22F1ADB68(unint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1 >> 62)
  {
    v10 = sub_22F741A00();
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_3:
      if (v10 < 1)
      {
        __break(1u);
        goto LABEL_192;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v11 = 0;
        v7 = 0.0;
        v109 = 0.0;
        v112 = 0.0;
        v6 = 0.0;
        v122 = 0.0;
        v123 = 0.0;
        v114 = 0.0;
        v116 = 0.0;
        v118 = 0.0;
        v120 = 0.0;
        v8 = 0.0;
        v12 = 0.0;
        v13 = 0.0;
        v14 = 0.0;
        v15 = 0.0;
        do
        {
          v18 = MEMORY[0x2319016F0](v11, a1);
          v19 = *(v18 + 32);
          if (*(v18 + 43) == 1)
          {
            if (v19 == 5)
            {
              v123 = v123 + 1.0;
              v22 = v109;
              if (*(v18 + 41))
              {
                v22 = v13 + 1.0;
              }

              v109 = v22;
              if (*(v18 + 41))
              {
                v13 = v13 + 1.0;
              }
            }

            else if (v19 == 4)
            {
              v118 = v118 + 1.0;
              v20 = v112;
              if (*(v18 + 41))
              {
                v20 = v15 + 1.0;
              }

              v112 = v20;
              if (*(v18 + 41))
              {
                v15 = v15 + 1.0;
              }
            }
          }

          else if (v19 == 5)
          {
            v122 = v122 + 1.0;
            v16 = v116;
            if (*(v18 + 41))
            {
              v16 = v12 + 1.0;
            }

            v116 = v16;
            if (*(v18 + 41))
            {
              v12 = v12 + 1.0;
            }
          }

          else if (v19 == 4)
          {
            v120 = v120 + 1.0;
            v21 = v114;
            if (*(v18 + 41))
            {
              v21 = v14 + 1.0;
            }

            v114 = v21;
            if (*(v18 + 41))
            {
              v14 = v14 + 1.0;
            }
          }

          ++v11;
          if (!*(v18 + 44))
          {
            v6 = v6 + 1.0;
          }

          v8 = v8 + 1.0;
          v17 = *(v18 + 41);
          swift_unknownObjectRelease();
          if (v17)
          {
            v7 = v7 + 1.0;
          }
        }

        while (v10 != v11);
      }

      else
      {
        v7 = 0.0;
        v23 = a1 + 32;
        v24 = v10;
        v25 = 0.0;
        v110 = 0.0;
        v112 = 0.0;
        v6 = 0.0;
        v122 = 0.0;
        v124 = 0.0;
        v114 = 0.0;
        v116 = 0.0;
        v118 = 0.0;
        v120 = 0.0;
        v8 = 0.0;
        v26 = 0.0;
        v27 = 0.0;
        v28 = 0.0;
        do
        {
          v30 = *v23;
          v31 = *(*v23 + 32);
          if (*(*v23 + 43) == 1)
          {
            if (v31 == 5)
            {
              v124 = v124 + 1.0;
              v29 = v110;
              if (*(v30 + 41))
              {
                v29 = v26 + 1.0;
              }

              v110 = v29;
              if (*(v30 + 41))
              {
                v26 = v26 + 1.0;
              }
            }

            else if (v31 == 4)
            {
              v118 = v118 + 1.0;
              v32 = v112;
              if (*(v30 + 41))
              {
                v32 = v28 + 1.0;
              }

              v112 = v32;
              if (*(v30 + 41))
              {
                v28 = v28 + 1.0;
              }
            }
          }

          else if (v31 == 4)
          {
            v120 = v120 + 1.0;
            v34 = v114;
            if (*(v30 + 41))
            {
              v34 = v27 + 1.0;
            }

            v114 = v34;
            if (*(v30 + 41))
            {
              v27 = v27 + 1.0;
            }
          }

          else if (v31 == 5)
          {
            v122 = v122 + 1.0;
            v33 = v116;
            if (*(v30 + 41))
            {
              v33 = v25 + 1.0;
            }

            v116 = v33;
            if (*(v30 + 41))
            {
              v25 = v25 + 1.0;
            }
          }

          if (!*(v30 + 44))
          {
            v6 = v6 + 1.0;
          }

          v8 = v8 + 1.0;
          if (*(v30 + 41))
          {
            v7 = v7 + 1.0;
          }

          v23 += 8;
          --v24;
        }

        while (v24);
      }

      if (v118 + v120 <= 0.0)
      {
        v35 = 0.0;
      }

      else
      {
        v35 = v118 / (v118 + v120);
      }

      if (v118 + v122 <= 0.0)
      {
        v36 = 0.0;
      }

      else
      {
        v36 = v118 / (v118 + v122);
      }

      v37 = v112 / (v112 + v114);
      if (v112 + v114 <= 0.0)
      {
        v37 = 0.0;
      }

      v105 = v37;
      v106 = v36;
      v108 = v35;
      v38 = v112 / (v112 + v116);
      if (v112 + v116 <= 0.0)
      {
        v38 = 0.0;
      }

      v104 = v38;
      goto LABEL_78;
    }
  }

  v104 = 0.0;
  v105 = 0.0;
  v106 = 0.0;
  v108 = 0.0;
  v7 = 0.0;
  v6 = 0.0;
  v8 = 0.0;
LABEL_78:
  v3 = 0x3A6C6C6163655220;
  v39 = 0x203A505420;
  v2 = 0x203A4E4620;
  v126 = 0;
  v127 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F790B30);
  sub_22F7413B0();
  MEMORY[0x231900B10](2109216, 0xE300000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x3A6C6C6163655220, 0xE900000000000020);
  sub_22F7413B0();
  MEMORY[0x231900B10](2109216, 0xE300000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A505420, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A504620, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A4E5420, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A4E4620, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0xD000000000000058, 0x800000022F790B50);
  sub_22F7413B0();
  MEMORY[0x231900B10](2109216, 0xE300000000000000);
  sub_22F7413B0();
  v5 = 0;
  v4 = 0xE000000000000000;
  if (qword_27DAAFE08 != -1)
  {
    swift_once();
  }

  v121 = byte_27DAD0FC8;
  if (byte_27DAD0FC8 != 1)
  {

    goto LABEL_86;
  }

  v2 = 0x3A6C6C6163655220;
  v3 = 0x203A505420;
  if (qword_27DAAFD40 != -1)
  {
    goto LABEL_193;
  }

  while (1)
  {
    v40 = sub_22F740B90();
    __swift_project_value_buffer(v40, qword_27DAD0E10);

    v41 = sub_22F740B70();
    v42 = sub_22F7415F0();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v126 = v44;
      *v43 = 136315138;
      *(v43 + 4) = sub_22F145F20(v5, v4, &v126);
      _os_log_impl(&dword_22F0FC000, v41, v42, "%s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v44);
      MEMORY[0x2319033A0](v44, -1, -1);
      MEMORY[0x2319033A0](v43, -1, -1);
    }

    v39 = v3;
    v3 = v2;
    v2 = 0x203A4E4620;
LABEL_86:
    v126 = 0;
    v127 = 0xE000000000000000;
    sub_22F741B00();
    MEMORY[0x231900B10](0xD000000000000022, 0x800000022F790BB0);
    v5 = MEMORY[0x277D846A8];
    sub_22F7413B0();
    MEMORY[0x231900B10](2109216, 0xE300000000000000);
    sub_22F7413B0();
    MEMORY[0x231900B10](v3, 0xE900000000000020);
    sub_22F7413B0();
    MEMORY[0x231900B10](2109216, 0xE300000000000000);
    sub_22F7413B0();
    MEMORY[0x231900B10](v39, 0xE500000000000000);
    sub_22F7413B0();
    MEMORY[0x231900B10](0x203A504620, 0xE500000000000000);
    sub_22F7413B0();
    MEMORY[0x231900B10](0x203A4E5420, 0xE500000000000000);
    sub_22F7413B0();
    MEMORY[0x231900B10](0x203A4E4620, 0xE500000000000000);
    sub_22F7413B0();
    v4 = v127;
    if (v121)
    {
      v45 = v3;
      v46 = v39;
      v5 = v126;
      if (qword_27DAAFD40 != -1)
      {
        swift_once();
      }

      v47 = sub_22F740B90();
      __swift_project_value_buffer(v47, qword_27DAD0E10);

      v48 = sub_22F740B70();
      v49 = sub_22F7415F0();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        v51 = swift_slowAlloc();
        v126 = v51;
        *v50 = 136315138;
        *(v50 + 4) = sub_22F145F20(v5, v4, &v126);
        _os_log_impl(&dword_22F0FC000, v48, v49, "%s", v50, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v51);
        MEMORY[0x2319033A0](v51, -1, -1);
        MEMORY[0x2319033A0](v50, -1, -1);
      }

      v39 = v46;
      v3 = v45;
      v2 = 0x203A4E4620;
      if (!v10)
      {
LABEL_131:
        v117 = 0.0;
        v119 = 0.0;
        v125 = 0.0;
        goto LABEL_169;
      }
    }

    else
    {

      if (!v10)
      {
        goto LABEL_131;
      }
    }

    if (v10 >= 1)
    {
      break;
    }

LABEL_192:
    __break(1u);
LABEL_193:
    swift_once();
  }

  v111 = v8;
  v113 = v6;
  v115 = v7;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v52 = 0;
    v125 = 0.0;
    v53 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v57 = 0.0;
    v58 = 0.0;
    v59 = 0.0;
    v60 = 0.0;
    do
    {
      v61 = v55;
      v62 = v53;
      v63 = MEMORY[0x2319016F0](v52, a1);
      v64 = *(v63 + 45);
      if (v64 == 2)
      {
        swift_unknownObjectRelease();
        v53 = v62;
        v55 = v61;
      }

      else
      {
        v65 = *(v63 + 32);
        swift_unknownObjectRelease();
        v66 = v60 + 1.0;
        if (v65 == 4)
        {
          v67 = v60 + 1.0;
        }

        else
        {
          v67 = v61;
        }

        if (v65 != 4)
        {
          v66 = v60;
        }

        v68 = v58 + 1.0;
        if (v65 == 5)
        {
          v69 = v58 + 1.0;
        }

        else
        {
          v69 = v62;
        }

        if (v65 != 5)
        {
          v68 = v58;
        }

        v70 = v59 + 1.0;
        if (v65 == 4)
        {
          v71 = v59 + 1.0;
        }

        else
        {
          v71 = v56;
        }

        if (v65 != 4)
        {
          v70 = v59;
        }

        v72 = v57 + 1.0;
        if (v65 == 5)
        {
          v73 = v57 + 1.0;
        }

        else
        {
          v73 = v54;
        }

        if (v65 != 5)
        {
          v72 = v57;
        }

        if (v64)
        {
          v53 = v69;
        }

        else
        {
          v54 = v73;
          v57 = v72;
          v53 = v62;
        }

        if (v64)
        {
          v58 = v68;
        }

        else
        {
          v56 = v71;
        }

        if (v64)
        {
          v55 = v67;
        }

        else
        {
          v59 = v70;
          v55 = v61;
        }

        if (v64)
        {
          v60 = v66;
        }

        v125 = v125 + 1.0;
      }

      ++v52;
    }

    while (v10 != v52);
  }

  else
  {
    v125 = 0.0;
    v74 = a1 + 32;
    v75 = 0.0;
    v54 = 0.0;
    v55 = 0.0;
    v56 = 0.0;
    v76 = 0.0;
    v77 = 0.0;
    v78 = 0.0;
    v79 = 0.0;
    do
    {
      v80 = *(*v74 + 45);
      if (v80 != 2)
      {
        v81 = *(*v74 + 32);
        v82 = v78 + 1.0;
        if (v81 == 4)
        {
          v83 = v78 + 1.0;
        }

        else
        {
          v83 = v56;
        }

        if (v81 != 4)
        {
          v82 = v78;
        }

        v84 = v76 + 1.0;
        if (v81 == 5)
        {
          v85 = v76 + 1.0;
        }

        else
        {
          v85 = v54;
        }

        if (v81 != 5)
        {
          v84 = v76;
        }

        v86 = v79 + 1.0;
        if (v81 == 4)
        {
          v87 = v79 + 1.0;
        }

        else
        {
          v87 = v55;
        }

        if (v81 != 4)
        {
          v86 = v79;
        }

        v88 = v77 + 1.0;
        if (v81 == 5)
        {
          v89 = v77 + 1.0;
        }

        else
        {
          v89 = v75;
        }

        if (v81 != 5)
        {
          v88 = v77;
        }

        if (v80)
        {
          v75 = v89;
          v77 = v88;
        }

        else
        {
          v54 = v85;
          v76 = v84;
        }

        if (v80)
        {
          v55 = v87;
        }

        else
        {
          v56 = v83;
          v78 = v82;
        }

        if (v80)
        {
          v79 = v86;
        }

        v125 = v125 + 1.0;
      }

      v74 += 8;
      --v10;
    }

    while (v10);
  }

  v90 = v55 / (v55 + v56);
  if (v55 + v56 <= 0.0)
  {
    v90 = 0.0;
  }

  v119 = v90;
  v91 = v55 / (v54 + v55);
  if (v54 + v55 <= 0.0)
  {
    v91 = 0.0;
  }

  v117 = v91;
  v6 = v113;
  v7 = v115;
  v8 = v111;
LABEL_169:
  v126 = 0;
  v127 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000031, 0x800000022F790BE0);
  sub_22F7413B0();
  MEMORY[0x231900B10](2109216, 0xE300000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](v3, 0xE900000000000020);
  sub_22F7413B0();
  MEMORY[0x231900B10](2109216, 0xE300000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](v39, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A504620, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A4E5420, 0xE500000000000000);
  sub_22F7413B0();
  MEMORY[0x231900B10](0x203A4E4620, 0xE500000000000000);
  sub_22F7413B0();
  v92 = v127;
  if (v121)
  {
    v93 = v126;
    if (qword_27DAAFD40 != -1)
    {
      swift_once();
    }

    v94 = sub_22F740B90();
    __swift_project_value_buffer(v94, qword_27DAD0E10);

    v95 = sub_22F740B70();
    v96 = sub_22F7415F0();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v126 = v98;
      *v97 = 136315138;
      *(v97 + 4) = sub_22F145F20(v93, v92, &v126);
      _os_log_impl(&dword_22F0FC000, v95, v96, "%s", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x2319033A0](v98, -1, -1);
      MEMORY[0x2319033A0](v97, -1, -1);
    }

    if (v8 <= 0.0)
    {
      goto LABEL_175;
    }
  }

  else
  {

    if (v8 <= 0.0)
    {
LABEL_175:
      v99 = type metadata accessor for PGSharedLibrarySimulationMetrics();
      v100 = swift_allocObject();
      *(v100 + 16) = 0;
      *(v100 + 24) = 0xE000000000000000;
      *(v100 + 32) = 0u;
      *(v100 + 48) = 0u;
      *(v100 + 64) = 0u;
      *(v100 + 80) = 0u;
      *(v100 + 96) = 0u;
LABEL_190:
      a2[3] = v99;
      a2[4] = &off_2843E88C8;
      *a2 = v100;
      return;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v101 = MEMORY[0x2319016F0](0, a1);
  }

  else
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_196:
      __break(1u);
      goto LABEL_197;
    }

    v101 = *(a1 + 32);
  }

  v103 = *(v101 + 16);
  v102 = *(v101 + 24);

  if (v8 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_196;
  }

  if (v8 >= 9.22337204e18)
  {
LABEL_197:
    __break(1u);
    goto LABEL_198;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_198:
    __break(1u);
    goto LABEL_199;
  }

  if (v7 >= 9.22337204e18)
  {
LABEL_199:
    __break(1u);
LABEL_200:
    __break(1u);
    goto LABEL_201;
  }

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || *&v8 >> 52 > 0x7FEuLL || (*&v125 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_200;
  }

  if (v125 <= -9.22337204e18)
  {
LABEL_201:
    __break(1u);
    goto LABEL_202;
  }

  if (v125 < 9.22337204e18)
  {
    v99 = type metadata accessor for PGSharedLibrarySimulationMetrics();
    v100 = swift_allocObject();
    *(v100 + 16) = v103;
    *(v100 + 24) = v102;
    *(v100 + 32) = v108;
    *(v100 + 40) = v106;
    *(v100 + 48) = v105;
    *(v100 + 56) = v104;
    *(v100 + 64) = v119;
    *(v100 + 72) = v117;
    *(v100 + 80) = 1.0 - v6 / v8;
    *(v100 + 88) = v8;
    *(v100 + 96) = v7;
    *(v100 + 104) = v125;
    goto LABEL_190;
  }

LABEL_202:
  __break(1u);
}

float static FlexRegionalComputer.filteringThreshold.getter()
{
  if (qword_27DAAFCD0 != -1)
  {
    swift_once();
  }

  return *&dword_27DAB2018;
}

void sub_22F1AED3C(void *a1, uint64_t a2, uint64_t a3)
{
  v36 = a3;
  v35 = a2;
  v34 = sub_22F73EFE0();
  v4 = *(v34 - 8);
  *&v5 = MEMORY[0x28223BE20](v34).n128_u64[0];
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 tagIDs];
  v8 = sub_22F741420();

  v9 = 1 << *(v8 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(v8 + 56);
  v12 = (v9 + 63) >> 6;
  v38 = *MEMORY[0x277D0A980];
  v32 = (v4 + 8);

  v13 = 0;
  v37 = MEMORY[0x277D84F90];
  while (1)
  {
    v14 = v13;
    if (!v11)
    {
      break;
    }

LABEL_8:
    v15 = (*(v8 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v11)))));
    v17 = *v15;
    v16 = v15[1];
    v11 &= v11 - 1;
    v43 = *v15;
    v44 = v16;
    v41 = sub_22F740E20();
    v42 = v18;
    sub_22F160DE4();

    v19 = sub_22F741910();

    if (v19)
    {
      v43 = v17;
      v44 = v16;
      v41 = sub_22F740E20();
      v42 = v20;
      v39 = 0;
      v40 = 0xE000000000000000;
      v21 = sub_22F7418E0();
      v23 = v22;

      v43 = v21;
      v44 = v23;
      v24 = v33;
      sub_22F73EFD0();
      v25 = sub_22F7418D0();
      v27 = v26;

      (*v32)(v24, v34);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = sub_22F13E1A8(0, *(v37 + 2) + 1, 1, v37);
      }

      v29 = *(v37 + 2);
      v28 = *(v37 + 3);
      if (v29 >= v28 >> 1)
      {
        v37 = sub_22F13E1A8((v28 > 1), v29 + 1, 1, v37);
      }

      v30 = v37;
      *(v37 + 2) = v29 + 1;
      v31 = &v30[16 * v29];
      *(v31 + 4) = v25;
      *(v31 + 5) = v27;
    }

    else
    {
    }
  }

  while (1)
  {
    v13 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v13 >= v12)
    {

      sub_22F1AF0D0(v37, v35, v36);

      return;
    }

    v11 = *(v8 + 56 + 8 * v13);
    ++v14;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

float sub_22F1AF0D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v102 = sub_22F73EFE0();
  v8 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v101 = &v92 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  *&v110 = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  *&v110 = sub_22F740DA0();
  *(&v110 + 1) = v11;
  MEMORY[0x231900B10](124, 0xE100000000000000);
  sub_22F170D8C();
  v97 = a2;
  v12 = sub_22F740CB0();
  MEMORY[0x231900B10](v12);

  MEMORY[0x231900B10](124, 0xE100000000000000);
  v13 = sub_22F740CB0();
  MEMORY[0x231900B10](v13);

  v14 = v110;
  if (*(v10 + 16) && (v15 = sub_22F1229E8(v110, *(&v110 + 1)), (v16 & 1) != 0))
  {
    v17 = v15;

    return *(*(v10 + 56) + 8 * v17);
  }

  else
  {
    v100 = *(a1 + 16);
    if (v100)
    {
      v93 = a3;
      v95 = v3;
      v94 = *(&v14 + 1);
      v96 = v14;
      v18 = 0;
      v105 = 0;
      v98 = (v8 + 8);
      v99 = a1 + 32;
      v19 = MEMORY[0x277D84F90];
      do
      {
        v20 = v19;
        v104 = v18;
        v21 = *(v99 + 16 * v18 + 8);
        *&v110 = *(v99 + 16 * v18);
        *(&v110 + 1) = v21;

        v22 = v101;
        sub_22F73EFC0();
        sub_22F160DE4();
        v23 = sub_22F7418D0();
        v25 = v24;
        (*v98)(v22, v102);

        *&v110 = 44;
        *(&v110 + 1) = 0xE100000000000000;
        MEMORY[0x28223BE20](v26);
        *(&v92 - 2) = &v110;
        v27 = v105;
        v28 = sub_22F1B0578(0x7FFFFFFFFFFFFFFFLL, 1, sub_22F1B1EA8, (&v92 - 4), v23, v25, &v92);
        v29 = *(v28 + 16);
        v105 = v27;
        v103 = v28;
        if (v29)
        {
          v30 = v28;
          v107 = sub_22F1B1F00();
          v106 = sub_22F1B1F54();
          v31 = (v30 + 56);
          v19 = v20;
          while (1)
          {
            v32 = *(v31 - 1);
            v33 = *v31;
            v110 = *(v31 - 3);
            v111 = v32;
            v112 = v33;
            v108 = 95;
            v109 = 0xE100000000000000;
            v34 = sub_22F740D70();
            v35 = v34[2];
            if (v35)
            {
              if (v35 == 2)
              {
                v36 = v34[4];
                v37 = v34[5];
                v38 = v34[6];
                v39 = v34[7];
                v40 = v34;

                v41 = MEMORY[0x231900A80](v36, v37, v38, v39);
                v43 = v42;

                if (v40[2] < 2uLL)
                {
                  __break(1u);
                  goto LABEL_40;
                }

                v44 = v40[8];
                v45 = v40[9];
                v47 = v40[10];
                v46 = v40[11];

                v48 = MEMORY[0x231900A80](v44, v45, v47, v46);
                v50 = v49;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v19 = sub_22F13EBEC(0, v19[2] + 1, 1, v19);
                }

                v52 = v19[2];
                v51 = v19[3];
                if (v52 >= v51 >> 1)
                {
                  v19 = sub_22F13EBEC((v51 > 1), v52 + 1, 1, v19);
                }

                v19[2] = v52 + 1;
                v53 = &v19[4 * v52];
                v53[4] = v41;
                v53[5] = v43;
                v53[6] = v48;
                v53[7] = v50;
              }

              else
              {
                v54 = v34[4];
                v55 = v34[5];
                v56 = v34[6];
                v57 = v34[7];

                v58 = MEMORY[0x231900A80](v54, v55, v56, v57);
                v60 = v59;

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v19 = sub_22F13EBEC(0, v19[2] + 1, 1, v19);
                }

                v62 = v19[2];
                v61 = v19[3];
                if (v62 >= v61 >> 1)
                {
                  v19 = sub_22F13EBEC((v61 > 1), v62 + 1, 1, v19);
                }

                v19[2] = v62 + 1;
                v63 = &v19[4 * v62];
                v63[4] = 42;
                v63[5] = 0xE100000000000000;
                v63[6] = v58;
                v63[7] = v60;
              }
            }

            else
            {
            }

            v31 += 4;
            if (!--v29)
            {
              goto LABEL_7;
            }
          }
        }

        v19 = v20;
LABEL_7:
        v18 = v104 + 1;
      }

      while (v18 != v100);
      if (v19[2])
      {
        v64 = v19;
        v65 = v95;
        *&v110 = *v95;

        sub_22F1AFDA0(v64, v97, v93);
        v4 = v66;
        v68 = v67;

        v31 = v96;
      }

      else
      {

        v4 = 0.8;
        v68 = 0.8;
        v31 = v96;
        v65 = v95;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = *v65;
      *v65 = 0x8000000000000000;
      v37 = v94;
      sub_22F130AFC(v31, v94, isUniquelyReferenced_nonNull_native, v4, v68);
      v81 = v110;

      *v65 = v81;
      if (qword_2810A9460 != -1)
      {
LABEL_40:
        swift_once();
      }

      v82 = sub_22F740B90();
      __swift_project_value_buffer(v82, qword_2810B4D90);

      v83 = sub_22F740B70();
      v84 = sub_22F7415C0();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        *&v110 = v86;
        *v85 = 136315394;
        v87 = sub_22F145F20(v31, v37, &v110);

        *(v85 + 4) = v87;
        *(v85 + 12) = 2080;
        v88 = sub_22F1DF618();
        v90 = sub_22F145F20(v88, v89, &v110);

        *(v85 + 14) = v90;
        _os_log_impl(&dword_22F0FC000, v83, v84, "[regionScoreCache] song with region info. key: %s value: %s", v85, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v86, -1, -1);
        MEMORY[0x2319033A0](v85, -1, -1);
      }

      else
      {
      }
    }

    else
    {
      v69 = swift_isUniquelyReferenced_nonNull_native();
      *&v110 = *v3;
      *v3 = 0x8000000000000000;
      sub_22F130AFC(v14, *(&v14 + 1), v69, 0.8, 0.8);
      v70 = v110;

      *v3 = v70;
      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v71 = sub_22F740B90();
      __swift_project_value_buffer(v71, qword_2810B4D90);

      v72 = sub_22F740B70();
      v73 = sub_22F7415C0();

      if (os_log_type_enabled(v72, v73))
      {
        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        *&v110 = v75;
        *v74 = 136315394;
        v76 = sub_22F145F20(v14, *(&v14 + 1), &v110);

        *(v74 + 4) = v76;
        *(v74 + 12) = 2080;
        v4 = 0.8;
        v77 = sub_22F1DF618();
        v79 = sub_22F145F20(v77, v78, &v110);

        *(v74 + 14) = v79;
        _os_log_impl(&dword_22F0FC000, v72, v73, "[regionScoreCache] song with no region tags. key: %s value: %s", v74, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x2319033A0](v75, -1, -1);
        MEMORY[0x2319033A0](v74, -1, -1);
      }

      else
      {

        return 0.8;
      }
    }
  }

  return v4;
}

void sub_22F1AFA40(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 >> 62)
  {
    v6 = sub_22F741A00();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v28 = MEMORY[0x277D84F90];
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v7 = sub_22F740B90();
  __swift_project_value_buffer(v7, qword_2810B4D90);
  v8 = sub_22F740B70();
  v9 = sub_22F7415C0();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v6;
    _os_log_impl(&dword_22F0FC000, v8, v9, "[Flex Filter] Originally %ld songs", v10, 0xCu);
    MEMORY[0x2319033A0](v10, -1, -1);
  }

  v12 = sub_22F1B2344(v11, v3, a2, a3, &v28);

  if (v12 >> 62)
  {
    v13 = sub_22F741A00();
    v14 = v6 - v13;
    if (!__OFSUB__(v6, v13))
    {
      goto LABEL_9;
    }

LABEL_19:
    __break(1u);
    return;
  }

  v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v14 = v6 - v13;
  if (__OFSUB__(v6, v13))
  {
    goto LABEL_19;
  }

LABEL_9:
  v15 = sub_22F740B70();
  v16 = sub_22F7415C0();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 134218496;
    *(v17 + 4) = v6;
    *(v17 + 12) = 2048;
    *(v17 + 14) = v13;
    *(v17 + 22) = 2048;
    *(v17 + 24) = v14;
    _os_log_impl(&dword_22F0FC000, v15, v16, "[Flex Filter] Regional filtering complete: %ld songs -> %ld songs (%ld removed)", v17, 0x20u);
    MEMORY[0x2319033A0](v17, -1, -1);
  }

  if (*(v28 + 2))
  {
    v18 = sub_22F740B70();
    v19 = sub_22F7415D0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v27 = v21;
      *v20 = 136315138;

      v23 = MEMORY[0x231900D40](v22, MEMORY[0x277D837D0]);
      v25 = v24;

      v26 = sub_22F145F20(v23, v25, &v27);

      *(v20 + 4) = v26;
      _os_log_impl(&dword_22F0FC000, v18, v19, "Regional filtering removed song IDs: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x2319033A0](v21, -1, -1);
      MEMORY[0x2319033A0](v20, -1, -1);
    }
  }

  else
  {
  }
}

void sub_22F1AFDA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return;
  }

  v3 = 0;
  v4 = 0;
  v5 = a1 + 32;
  v6 = 0.0;
  v7 = 0.0;
  v82 = *(a1 + 16);
  v74 = a1 + 32;
  while (1)
  {
    v9 = (v5 + 32 * v3);
    v10 = v9[3];
    v84 = v9[2];
    v11 = *v9 == 42 && v9[1] == 0xE100000000000000;
    v12 = v11;
    if (v11 || (sub_22F742040() & 1) != 0)
    {

      v13 = 0.9;
      goto LABEL_43;
    }

    v77 = v12;
    v14 = sub_22F740EA0();
    v16 = v15;

    v79 = v10;

    v17 = sub_22F1B2120(a2, v14, v16);
    v80 = v4;

    v18 = v17[2];
    if (v18)
    {
      break;
    }

    v19 = MEMORY[0x277D84F90];
LABEL_34:
    v36 = *(v19 + 16);
    v4 = v80;
    v10 = v79;
    v12 = v77;
    if (v36)
    {
      v13 = *(v19 + 32);
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 36;
        do
        {
          if (v13 < *(v19 + v38))
          {
            v13 = *(v19 + v38);
          }

          v38 += 4;
          --v37;
        }

        while (v37);
      }
    }

    else
    {

      v13 = 0.0;
    }

    v5 = v74;
LABEL_43:
    v39 = v84 == 42 && v10 == 0xE100000000000000;
    v40 = v39;
    v83 = v40;
    if (v39 || (sub_22F742040() & 1) != 0)
    {
      v41 = 0.9;
      v42 = v83;
    }

    else
    {
      v78 = v12;
      v43 = sub_22F740EA0();
      v45 = sub_22F1B2120(a3, v43, v44);
      v81 = v4;

      v46 = v45[2];
      if (v46)
      {
        v76 = v3;
        v88 = MEMORY[0x277D84F90];
        sub_22F1464F4(0, v46, 0);
        v47 = v88;
        v86 = v45 + 8;
        v48 = sub_22F741980();
        v49 = 0;
        while ((v48 & 0x8000000000000000) == 0 && v48 < 1 << *(v45 + 32))
        {
          v51 = v48 >> 6;
          if ((v86[v48 >> 6] & (1 << v48)) == 0)
          {
            goto LABEL_115;
          }

          v52 = *(v45 + 9);
          [*(v45[7] + 8 * v48) floatValue];
          v55 = *(v88 + 16);
          v54 = *(v88 + 24);
          if (v55 >= v54 >> 1)
          {
            v63 = v53;
            sub_22F1464F4((v54 > 1), v55 + 1, 1);
            v53 = v63;
          }

          *(v88 + 16) = v55 + 1;
          *(v88 + 4 * v55 + 32) = v53;
          v50 = 1 << *(v45 + 32);
          if (v48 >= v50)
          {
            goto LABEL_116;
          }

          v56 = v86[v51];
          if ((v56 & (1 << v48)) == 0)
          {
            goto LABEL_117;
          }

          if (v52 != *(v45 + 9))
          {
            goto LABEL_118;
          }

          v57 = v56 & (-2 << (v48 & 0x3F));
          if (v57)
          {
            v50 = __clz(__rbit64(v57)) | v48 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v58 = v51 << 6;
            v59 = v51 + 1;
            v60 = &v45[v51 + 9];
            while (v59 < (v50 + 63) >> 6)
            {
              v62 = *v60++;
              v61 = v62;
              v58 += 64;
              ++v59;
              if (v62)
              {
                sub_22F107D18(v48, v52, 0);
                v50 = __clz(__rbit64(v61)) + v58;
                goto LABEL_55;
              }
            }

            sub_22F107D18(v48, v52, 0);
          }

LABEL_55:
          ++v49;
          v48 = v50;
          if (v49 == v46)
          {

            v3 = v76;
            goto LABEL_72;
          }
        }

        goto LABEL_114;
      }

      v47 = MEMORY[0x277D84F90];
LABEL_72:
      v64 = *(v47 + 16);
      v4 = v81;
      v12 = v78;
      v42 = v83;
      if (v64)
      {
        v41 = *(v47 + 32);
        v65 = v64 - 1;
        if (v65)
        {
          v66 = (v47 + 36);
          do
          {
            v67 = *v66++;
            v68 = v67;
            if (v41 < v67)
            {
              v41 = v68;
            }

            --v65;
          }

          while (v65);
        }
      }

      else
      {
        v41 = 0.0;
      }

      v5 = v74;
    }

    if (v13 > 0.0)
    {
      v69 = 1;
    }

    else
    {
      v69 = v12;
    }

    if (v69 & 1) != 0 || (sub_22F742040())
    {
      v70 = v41 > 0.0 ? 1 : v42;
      if (v70 & 1) != 0 || (sub_22F742040())
      {
        if (v12 & 1) != 0 || (sub_22F742040())
        {
          v13 = 0.9;
        }

        if (v42)
        {
          v41 = 0.9;
          goto LABEL_99;
        }

        if (sub_22F742040())
        {
          v41 = 0.9;
        }

        if (sub_22F742040())
        {
LABEL_99:
          if (v12)
          {

            goto LABEL_102;
          }

          v71 = sub_22F742040();

          if (v71)
          {
LABEL_102:
            v13 = v13 * 0.9;
            v41 = v41 * 0.9;
          }
        }

        else
        {
        }

        v8 = v82;
        if (v7 <= v13)
        {
          v7 = v13;
        }

        if (v6 <= v41)
        {
          v6 = v41;
        }

        goto LABEL_4;
      }
    }

    v8 = v82;
LABEL_4:
    if (++v3 == v8)
    {
      return;
    }
  }

  v75 = v3;
  v87 = MEMORY[0x277D84F90];
  sub_22F1464F4(0, v18, 0);
  v19 = v87;
  v85 = v17 + 8;
  v20 = sub_22F741980();
  v21 = 0;
  while ((v20 & 0x8000000000000000) == 0 && v20 < 1 << *(v17 + 32))
  {
    v23 = v20 >> 6;
    if ((v85[v20 >> 6] & (1 << v20)) == 0)
    {
      goto LABEL_110;
    }

    v24 = *(v17 + 9);
    [*(v17[7] + 8 * v20) floatValue];
    v27 = *(v87 + 16);
    v26 = *(v87 + 24);
    if (v27 >= v26 >> 1)
    {
      v35 = v25;
      sub_22F1464F4((v26 > 1), v27 + 1, 1);
      v25 = v35;
    }

    *(v87 + 16) = v27 + 1;
    *(v87 + 4 * v27 + 32) = v25;
    v22 = 1 << *(v17 + 32);
    if (v20 >= v22)
    {
      goto LABEL_111;
    }

    v28 = v85[v23];
    if ((v28 & (1 << v20)) == 0)
    {
      goto LABEL_112;
    }

    if (v24 != *(v17 + 9))
    {
      goto LABEL_113;
    }

    v29 = v28 & (-2 << (v20 & 0x3F));
    if (v29)
    {
      v22 = __clz(__rbit64(v29)) | v20 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v30 = v23 << 6;
      v31 = v23 + 1;
      v32 = &v17[v23 + 9];
      while (v31 < (v22 + 63) >> 6)
      {
        v34 = *v32++;
        v33 = v34;
        v30 += 64;
        ++v31;
        if (v34)
        {
          sub_22F107D18(v20, v24, 0);
          v22 = __clz(__rbit64(v33)) + v30;
          goto LABEL_17;
        }
      }

      sub_22F107D18(v20, v24, 0);
    }

LABEL_17:
    ++v21;
    v20 = v22;
    if (v21 == v18)
    {

      v3 = v75;
      goto LABEL_34;
    }
  }

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
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
}

unint64_t sub_22F1B0578@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
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

      return MEMORY[0x277D84F90];
    }

    v7 = sub_22F741050();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_22F13EC10(0, 1, 1, MEMORY[0x277D84F90]);
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
    v14 = sub_22F13EC10((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
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
        v19 = sub_22F741020();
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

        v14 = sub_22F740F20();
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
        v18 = sub_22F740F20();
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
          v7 = sub_22F741050();
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

        v14 = sub_22F13EC10(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_22F741050();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_22F13EC10(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_22F13EC10((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_22F740F20();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_22F1B0938(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22F1B1FA8(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_22F1B09DC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0F80, &unk_22F771380);
  result = sub_22F741DF0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_22F742170();

    sub_22F740D60();
    result = sub_22F7421D0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B0C20(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = a1;
  v7 = sub_22F73F690();
  v54 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v50 = &v44 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0AD8, &qword_22F770C60);
  result = sub_22F741DF0();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *v48;
  }

  v15 = 0;
  v46 = result;
  v47 = v54 + 16;
  v16 = v54 + 32;
  v17 = result + 64;
  v18 = v49;
  v45 = a4;
  while (v14)
  {
    v19 = v18;
    v20 = v16;
    v21 = __clz(__rbit64(v14));
    v51 = (v14 - 1) & v14;
LABEL_16:
    v24 = v21 | (v15 << 6);
    v25 = a4[7];
    v26 = (a4[6] + 16 * v24);
    v27 = *v26;
    v28 = v26[1];
    v29 = v54;
    v53 = *(v54 + 72);
    v30 = v50;
    (*(v54 + 16))(v50, v25 + v53 * v24, v19);
    v31 = *(v29 + 32);
    v32 = v30;
    v16 = v20;
    v31(v55, v32, v19);
    v13 = v46;
    sub_22F742170();

    v52 = v27;
    sub_22F740D60();
    result = sub_22F7421D0();
    v33 = -1 << *(v13 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v17 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      v18 = v49;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v17 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v17 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    v18 = v49;
LABEL_26:
    *(v17 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v41 = (*(v13 + 48) + 16 * v36);
    v42 = v53;
    *v41 = v52;
    v41[1] = v28;
    result = (v31)(*(v13 + 56) + v36 * v42, v55, v18);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v45;
    v14 = v51;
    if (!a3)
    {
      return v13;
    }
  }

  v22 = v15;
  while (1)
  {
    v15 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v23 = v48[v15];
    ++v22;
    if (v23)
    {
      v19 = v18;
      v20 = v16;
      v21 = __clz(__rbit64(v23));
      v51 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B0FA0(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = sub_22F7402E0();
  v44 = *(v8 - 8);
  v45 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v41 = v38 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C00, &qword_22F770D70);
  result = sub_22F741DF0();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v38[2] = v44 + 16;
  v39 = result;
  v17 = result + 64;
  v40 = a1;
  v38[0] = a4;
  v38[1] = v44 + 32;
  while (v15)
  {
    v18 = v10;
    v19 = __clz(__rbit64(v15));
    v42 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v25 = v44;
    v24 = v45;
    v43 = *(v44 + 72);
    v26 = v41;
    (*(v44 + 16))(v41, v23 + v43 * v22, v45);
    v27 = *(a4[7] + 8 * v22);
    v28 = *(v25 + 32);
    v10 = v18;
    v28(v18, v26, v24);
    v14 = v39;
    sub_22F1B22EC();
    result = sub_22F740D40();
    v29 = -1 << *(v14 + 32);
    v30 = result & ~v29;
    v31 = v30 >> 6;
    if (((-1 << v30) & ~*(v17 + 8 * (v30 >> 6))) == 0)
    {
      v33 = 0;
      v34 = (63 - v29) >> 6;
      a1 = v40;
      while (++v31 != v34 || (v33 & 1) == 0)
      {
        v35 = v31 == v34;
        if (v31 == v34)
        {
          v31 = 0;
        }

        v33 |= v35;
        v36 = *(v17 + 8 * v31);
        if (v36 != -1)
        {
          v32 = __clz(__rbit64(~v36)) + (v31 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v32 = __clz(__rbit64((-1 << v30) & ~*(v17 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
    a1 = v40;
LABEL_26:
    *(v17 + ((v32 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v32;
    result = (v28)(*(v14 + 48) + v32 * v43, v18, v45);
    *(*(v14 + 56) + 8 * v32) = v27;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v38[0];
    v15 = v42;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = a1[v16];
    ++v20;
    if (v21)
    {
      v18 = v10;
      v19 = __clz(__rbit64(v21));
      v42 = (v21 - 1) & v21;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B12FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC0, &unk_22F770D40);
  result = sub_22F741DF0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_22F742170();

    v33 = v21;
    sub_22F740D60();
    result = sub_22F7421D0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B153C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0938, &qword_22F770B38);
  result = sub_22F741DF0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 4 * v16);
    sub_22F742170();

    sub_22F740D60();
    result = sub_22F7421D0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 4 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B1778(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Song(0);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v37 = &v36 - v12;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0930, &qword_22F770B30);
  result = sub_22F741DF0();
  v14 = result;
  v36 = a4;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *a1;
  }

  v16 = 0;
  v17 = result + 64;
  v18 = v37;
  while (v15)
  {
    v19 = v10;
    v20 = __clz(__rbit64(v15));
    v39 = (v15 - 1) & v15;
LABEL_16:
    v23 = v20 | (v16 << 6);
    v24 = v36;
    v25 = *(v36 + 48);
    v40 = *(v38 + 72);
    sub_22F15CAA0(v25 + v40 * v23, v18);
    v26 = *(*(v24 + 56) + 4 * v23);
    v10 = v19;
    sub_22F15CB04(v18, v19);
    sub_22F742170();
    sub_22F740D60();
    result = sub_22F7421D0();
    v27 = -1 << *(v14 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    if (((-1 << v28) & ~*(v17 + 8 * (v28 >> 6))) == 0)
    {
      v31 = 0;
      v32 = (63 - v27) >> 6;
      while (++v29 != v32 || (v31 & 1) == 0)
      {
        v33 = v29 == v32;
        if (v29 == v32)
        {
          v29 = 0;
        }

        v31 |= v33;
        v34 = *(v17 + 8 * v29);
        if (v34 != -1)
        {
          v30 = __clz(__rbit64(~v34)) + (v29 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v30 = __clz(__rbit64((-1 << v28) & ~*(v17 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v17 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
    result = sub_22F15CB04(v19, *(v14 + 48) + v30 * v40);
    *(*(v14 + 56) + 4 * v30) = v26;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v15 = v39;
    if (!a3)
    {
      return v14;
    }
  }

  v21 = v16;
  while (1)
  {
    v16 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v22 = a1[v16];
    ++v21;
    if (v22)
    {
      v19 = v10;
      v20 = __clz(__rbit64(v22));
      v39 = (v22 - 1) & v22;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B1A80(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0860, &qword_22F770A80);
  result = sub_22F741DF0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 48) + 8 * v16);
    v18 = *(*(v4 + 56) + 8 * v16);
    v19 = v17;

    result = sub_22F741800();
    v20 = -1 << *(v9 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v12 + 8 * (v21 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v12 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    *(*(v9 + 48) + 8 * v23) = v19;
    *(*(v9 + 56) + 8 * v23) = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B1C9C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0A20, &qword_22F7715B0);
  result = sub_22F741DF0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(*(v4 + 56) + 8 * v16);
    v18 = *(*(v4 + 48) + 8 * v16);
    result = sub_22F741800();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v9 + 48) + 8 * v22) = v18;
    *(*(v9 + 56) + 8 * v22) = v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B1EA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_22F742040() & 1;
  }
}

unint64_t sub_22F1B1F00()
{
  result = qword_27DAB2020;
  if (!qword_27DAB2020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2020);
  }

  return result;
}

unint64_t sub_22F1B1F54()
{
  result = qword_27DAB2028;
  if (!qword_27DAB2028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2028);
  }

  return result;
}

void sub_22F1B1FA8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    if (sub_22F740EA0() == a4 && v17 == a5)
    {

LABEL_18:
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_21:
        sub_22F1B12FC(a1, a2, v23, a3);
        return;
      }
    }

    else
    {
      v19 = sub_22F742040();

      if (v19)
      {
        goto LABEL_18;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_21;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_22F1B2120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();

      v13 = sub_22F1B0938(v15, v9, a1, a2, a3);
      MEMORY[0x2319033A0](v15, -1, -1);
      swift_bridgeObjectRelease_n();
      return v13;
    }
  }

  MEMORY[0x28223BE20](v11);
  bzero(v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_22F1B1FA8((v16 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v13 = v12;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v13;
}

unint64_t sub_22F1B22EC()
{
  result = qword_2810A94D8;
  if (!qword_2810A94D8)
  {
    sub_22F7402E0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A94D8);
  }

  return result;
}

uint64_t sub_22F1B2344(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char **a5)
{
  v8 = a1;
  v34 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22F741A00())
  {
    v10 = 0;
    v32 = v8 & 0xFFFFFFFFFFFFFF8;
    v33 = v8 & 0xC000000000000001;
    v28 = a2;
    v29 = a3;
    v31 = i;
    while (v33)
    {
      v11 = MEMORY[0x2319016F0](v10, v8);
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_21;
      }

LABEL_9:
      if (qword_27DAAFCD0 != -1)
      {
        swift_once();
      }

      v13 = *&dword_27DAB2018;
      sub_22F1AED3C(v11, a3, a4);
      if ((v14 * v15) >= v13)
      {
        sub_22F741BA0();
        sub_22F741BE0();
        sub_22F741BF0();
        sub_22F741BB0();
      }

      else
      {
        v16 = a4;
        v17 = [v11 uid];
        v18 = sub_22F740E20();
        v20 = v19;

        v21 = *a5;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *a5 = v21;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v21 = sub_22F13E1A8(0, *(v21 + 2) + 1, 1, v21);
          *a5 = v21;
        }

        v24 = *(v21 + 2);
        v23 = *(v21 + 3);
        if (v24 >= v23 >> 1)
        {
          v21 = sub_22F13E1A8((v23 > 1), v24 + 1, 1, v21);
          *a5 = v21;
        }

        *(v21 + 2) = v24 + 1;
        v25 = &v21[16 * v24];
        *(v25 + 4) = v18;
        *(v25 + 5) = v20;
        swift_unknownObjectRelease();
        a4 = v16;
        a2 = v28;
        a3 = v29;
        v8 = v27;
      }

      ++v10;
      if (v12 == v31)
      {
        return v34;
      }
    }

    if (v10 >= *(v32 + 16))
    {
      goto LABEL_22;
    }

    v11 = *(v8 + 8 * v10 + 32);
    swift_unknownObjectRetain();
    v12 = v10 + 1;
    if (!__OFADD__(v10, 1))
    {
      goto LABEL_9;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    ;
  }

  return MEMORY[0x277D84F90];
}

void MusicCacheEntry<>.init(inContext:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  (*(a3 + 8))(a2, a3);
  v7 = sub_22F740DF0();

  v8 = [v6 entityForName:v7 inManagedObjectContext:a1];

  if (v8)
  {
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata(v9));
    v11 = a1;
    [v10 initWithEntity:v8 insertIntoManagedObjectContext:v11];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }
}

unint64_t sub_22F1B2720()
{
  result = qword_27DAB2030;
  if (!qword_27DAB2030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2030);
  }

  return result;
}

uint64_t sub_22F1B2774(unsigned __int8 a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F1B2864(unsigned __int8 a1)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F1B2970(uint64_t a1, char a2)
{
  sub_22F742170();
  sub_22F7421B0();
  return sub_22F7421D0();
}

uint64_t sub_22F1B29C8(uint64_t a1, unsigned __int8 a2)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F1B2AB4(uint64_t a1, unsigned __int8 a2)
{
  sub_22F742170();
  sub_22F740D60();

  return sub_22F7421D0();
}

uint64_t sub_22F1B2BBC(int a1)
{
  v2 = v1;
  v41 = a1;
  v3 = sub_22F740B90();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_22F740B20();
  v48 = *(v5 - 8);
  v49 = v5;
  MEMORY[0x28223BE20](v5);
  v47 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F740AD0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22F740B10();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(v1 + 40);
  sub_22F1B4E6C(v14);
  v15 = *(v1 + 8);
  v51 = *v1;
  v40 = v15;
  v50 = *(v1 + 16);
  v16 = sub_22F740AF0();
  sub_22F740B30();
  v42 = sub_22F741730();
  result = sub_22F741830();
  if ((result & 1) == 0)
  {
    goto LABEL_13;
  }

  v38 = v8;
  v39 = v7;
  if (v50)
  {
LABEL_5:
    v20 = v48;
    v19 = v49;
    v21 = v47;
    if (v51 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v51 & 0xFFFFF800) == 0xD800)
      {
LABEL_23:
        __break(1u);
        return result;
      }

      if (v51 >> 16 <= 0x10)
      {
        v18 = &v52;
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v18 = v51;
  v20 = v48;
  v19 = v49;
  v21 = v47;
  if (!v51)
  {
    __break(1u);
    goto LABEL_5;
  }

LABEL_9:
  v37 = v18;

  sub_22F740B60();

  if ((*(v20 + 88))(v21, v19) == *MEMORY[0x277D85B00])
  {
    v22 = "[Error] Interval already ended";
  }

  else
  {
    (*(v20 + 8))(v21, v19);
    v22 = "";
  }

  v23 = swift_slowAlloc();
  *v23 = 0;
  v24 = sub_22F740AB0();
  _os_signpost_emit_with_name_impl(&dword_22F0FC000, v16, v42, v24, v37, v22, v23, 2u);
  MEMORY[0x2319033A0](v23, -1, -1);
  v8 = v38;
  v7 = v39;
LABEL_13:

  (*(v8 + 8))(v10, v7);
  result = (*(v12 + 8))(v14, v11);
  if ((*(v2 + 32) & 1) == 0)
  {
    v25 = *(v2 + 24);
    v26 = CACurrentMediaTime();
    v27 = v44;
    sub_22F1B3158(v44);

    v28 = sub_22F740B70();
    v29 = sub_22F7415C0();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v53 = v31;
      *v30 = 136315650;
      v32 = sub_22F741B10();
      v34 = sub_22F145F20(v32, v33, &v53);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2048;
      *(v30 + 14) = (v26 - v25) * 1000.0;
      *(v30 + 22) = 2080;
      if (v41)
      {
        v35 = 0x6572756C696166;
      }

      else
      {
        v35 = 0x73736563637573;
      }

      v36 = sub_22F145F20(v35, 0xE700000000000000, &v53);

      *(v30 + 24) = v36;
      _os_log_impl(&dword_22F0FC000, v28, v29, "[Performance] %s: %f ms (%s)", v30, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v31, -1, -1);
      MEMORY[0x2319033A0](v30, -1, -1);
    }

    return (*(v45 + 8))(v27, v46);
  }

  return result;
}

uint64_t sub_22F1B3158@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB20A0, &qword_22F778320);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___logger;
  swift_beginAccess();
  sub_22F13BA9C(v1 + v9, v8, &qword_27DAB20A0, &qword_22F778320);
  v10 = sub_22F740B90();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22F120ADC(v8, &qword_27DAB20A0, &qword_22F778320);
  sub_22F1B4310(*(v1 + 17));
  sub_22F740B80();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_22F1B5A10(v5, v1 + v9, &qword_27DAB20A0, &qword_22F778320);
  return swift_endAccess();
}

id sub_22F1B3438()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    sub_22F1B59C4();
    sub_22F1B4310(*(v0 + 17));
    v3 = v0;
    v4 = sub_22F741850();
    v5 = *(v0 + 24);
    *(v3 + 24) = v4;
    v2 = v4;

    v1 = 0;
  }

  v6 = v1;
  return v2;
}

id sub_22F1B3EE0(void *a1, void **a2, uint64_t a3)
{
  if (*a1 == -1)
  {
    v4 = *a2;
  }

  else
  {
    swift_once();
    v4 = *a2;
  }

  return v4;
}

uint64_t sub_22F1B3F98(uint64_t a1, uint64_t *a2, void *a3, void *a4, uint64_t a5)
{
  v7 = sub_22F740B90();
  __swift_allocate_value_buffer(v7, a2);
  v8 = __swift_project_value_buffer(v7, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  sub_22F1B3158(v8);
}

uint64_t sub_22F1B4220(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_22F1B3438();

  *a4 = v6;
  return result;
}

unint64_t sub_22F1B4310(char a1)
{
  result = 0x636972656E6567;
  switch(a1)
  {
    case 1:
      result = 0x7478654E7075;
      break;
    case 2:
      result = 0x727543636973756DLL;
      break;
    case 3:
      result = 0x74694B636973756DLL;
      break;
    case 4:
      result = 0x6C436D617A616873;
      break;
    case 5:
      result = 0x636143636973756DLL;
      break;
    case 6:
    case 11:
      result = 0xD000000000000013;
      break;
    case 7:
      result = 0x6973754D78656C66;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
    case 18:
    case 24:
      result = 0xD000000000000014;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 12:
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0x6E61526369706F74;
      break;
    case 16:
    case 17:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    case 20:
    case 21:
    case 32:
      v3 = 5;
      goto LABEL_25;
    case 22:
      v3 = 9;
LABEL_25:
      result = v3 | 0xD000000000000012;
      break;
    case 23:
      result = 0xD000000000000022;
      break;
    case 25:
      result = 0xD000000000000021;
      break;
    case 26:
      result = 0xD00000000000001ELL;
      break;
    case 27:
      result = 0x6470556870617267;
      break;
    case 28:
      result = 0xD000000000000012;
      break;
    case 29:
      result = 0x656C617267;
      break;
    case 30:
      result = 0x72476C6169636F53;
      break;
    case 31:
      result = 0xD000000000000010;
      break;
    case 33:
      result = 0x6C616E6F73726550;
      break;
    case 34:
      result = 0x686372616553;
      break;
    case 35:
      result = 0x7275437465737341;
      break;
    default:
      return result;
  }

  return result;
}

double sub_22F1B46F4(uint64_t a1)
{
  sub_22F740D60();

  return result;
}

unint64_t sub_22F1B47D4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F1B5924(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_22F1B4804(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000023;
  v3 = *v1;
  v4 = "ibrarySimulation";
  v5 = 0xD000000000000031;
  v6 = "ntitiesSimulation";
  v7 = 0xD00000000000001CLL;
  if (v3 == 4)
  {
    v7 = 0xD000000000000023;
  }

  else
  {
    v6 = "Graph.EventLabeling";
  }

  if (v3 != 3)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = "com.apple.PhotosGraph";
  if (v3 != 1)
  {
    v2 = 0xD000000000000030;
    v8 = "Graph.MemoriesMusic";
  }

  if (*v1)
  {
    v9 = v8;
  }

  else
  {
    v2 = 0xD000000000000015;
    v9 = "alysis";
  }

  if (*v1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v2 = v5;
    v10 = v4;
  }

  *a1 = v2;
  a1[1] = v10 | 0x8000000000000000;
}

uint64_t sub_22F1B48B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_22F1B4310(*a1);
  v5 = v4;
  if (v3 == sub_22F1B4310(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_22F742040();
  }

  return v8 & 1;
}

uint64_t sub_22F1B4938()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F1B4310(v1);
  sub_22F740D60();

  return sub_22F7421D0();
}

double sub_22F1B499C(uint64_t a1)
{
  sub_22F1B4310(*v1);
  sub_22F740D60();

  return result;
}

uint64_t sub_22F1B49F0(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  sub_22F1B4310(v2);
  sub_22F740D60();

  return sub_22F7421D0();
}

unint64_t sub_22F1B4A50@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F1B5970(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22F1B4A80@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F1B4310(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_22F1B4D7C(uint64_t a1, char a2, char a3, uint64_t *a4)
{
  type metadata accessor for Log(0);
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  v8 = OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___signposter;
  v9 = sub_22F740B10();
  (*(*(v9 - 8) + 56))(v7 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___logger;
  v11 = sub_22F740B90();
  result = (*(*(v11 - 8) + 56))(v7 + v10, 1, 1, v11);
  *(v7 + 16) = a2;
  *(v7 + 17) = a3;
  *a4 = v7;
  return result;
}

uint64_t sub_22F1B4E6C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2098, &qword_22F778318);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___signposter;
  swift_beginAccess();
  sub_22F13BA9C(v1 + v9, v8, &qword_27DAB2098, &qword_22F778318);
  v10 = sub_22F740B10();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_22F120ADC(v8, &qword_27DAB2098, &qword_22F778318);
  sub_22F1B4310(*(v1 + 17));
  sub_22F740B00();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_22F1B5A10(v5, v1 + v9, &qword_27DAB2098, &qword_22F778318);
  return swift_endAccess();
}

uint64_t Log.deinit()
{
  sub_22F120ADC(v0 + OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___signposter, &qword_27DAB2098, &qword_22F778318);
  sub_22F120ADC(v0 + OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___logger, &qword_27DAB20A0, &qword_22F778320);
  return v0;
}

uint64_t Log.__deallocating_deinit()
{
  sub_22F120ADC(v0 + OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___signposter, &qword_27DAB2098, &qword_22F778318);
  sub_22F120ADC(v0 + OBJC_IVAR____TtC11PhotosGraph3Log____lazy_storage___logger, &qword_27DAB20A0, &qword_22F778320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Log(uint64_t a1)
{
  result = qword_2810A9A98;
  if (!qword_2810A9A98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_22F1B5270(uint64_t a1)
{
  sub_22F1B53A8(319, &unk_2810A9480, MEMORY[0x277D85AF8]);
  if (v1 <= 0x3F)
  {
    sub_22F1B53A8(319, &unk_2810A93E0, MEMORY[0x277D85B28]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_22F1B53A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_22F741860();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for Log.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Log.Category(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
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

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_22F1B5560()
{
  result = qword_27DAB20A8;
  if (!qword_27DAB20A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB20A8);
  }

  return result;
}

unint64_t sub_22F1B55B8()
{
  result = qword_27DAB20B0;
  if (!qword_27DAB20B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB20B0);
  }

  return result;
}

uint64_t sub_22F1B560C@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v35 = a5;
  v33 = a2;
  v34 = a4;
  v36 = a1;
  v37 = a3;
  v9 = sub_22F740AD0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v29 - v14;
  v16 = sub_22F740B10();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F1B4E6C(v19);
  sub_22F740AC0();
  v20 = sub_22F740AF0();
  v32 = sub_22F741740();
  result = sub_22F741830();
  if ((result & 1) == 0)
  {
    goto LABEL_10;
  }

  v30 = v19;
  v31 = a6;
  if ((v37 & 1) == 0)
  {
    v22 = v36;
    if (v36)
    {
      v23 = v20;
LABEL_9:
      v29 = v22;
      v24 = swift_slowAlloc();
      *v24 = 0;
      v25 = sub_22F740AB0();
      v20 = v23;
      _os_signpost_emit_with_name_impl(&dword_22F0FC000, v23, v32, v25, v29, "", v24, 2u);
      MEMORY[0x2319033A0](v24, -1, -1);
      v19 = v30;
      a6 = v31;
LABEL_10:

      (*(v10 + 16))(v12, v15, v9);
      sub_22F740B50();
      swift_allocObject();
      v26 = a6;
      v27 = sub_22F740B40();
      (*(v10 + 8))(v15, v9);
      (*(v17 + 8))(v19, v16);

      v28 = v33;
      *a7 = v36;
      *(a7 + 8) = v28;
      *(a7 + 16) = v37;
      *(a7 + 24) = v34;
      *(a7 + 32) = v35 & 1;
      *(a7 + 40) = v26;
      *(a7 + 48) = v27;
      return result;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (v36 >> 32)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if ((v36 & 0xFFFFF800) != 0xD800)
  {
    if (v36 >> 16 <= 0x10)
    {
      v23 = v20;
      v22 = &v38;
      goto LABEL_9;
    }

    goto LABEL_13;
  }

LABEL_14:
  __break(1u);
  return result;
}

unint64_t sub_22F1B5924(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F741E30();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22F1B5970(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F742080();

  if (v2 >= 0x24)
  {
    return 36;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22F1B59C4()
{
  result = qword_2810A8D00;
  if (!qword_2810A8D00)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8D00);
  }

  return result;
}

uint64_t sub_22F1B5A10(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_22F1B5A88()
{
  v1 = *(v0 + 24);
  sub_22F742170();
  sub_22F740D60();
  sub_22F742190();
  if (v1)
  {
    sub_22F740D60();
  }

  return sub_22F7421D0();
}

uint64_t sub_22F1B5B14(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_22F740D60();
  if (!v2)
  {
    return sub_22F742190();
  }

  sub_22F742190();

  return sub_22F740D60();
}

uint64_t sub_22F1B5B90(uint64_t a1)
{
  v2 = *(v1 + 24);
  sub_22F742170();
  sub_22F740D60();
  sub_22F742190();
  if (v2)
  {
    sub_22F740D60();
  }

  return sub_22F7421D0();
}

uint64_t sub_22F1B5C18(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = sub_22F742040(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v4)
      {
        v9 = v2 == v5 && v3 == v4;
        if (v9 || (sub_22F742040() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

unint64_t sub_22F1B5CBC()
{
  result = qword_27DAB20B8;
  if (!qword_27DAB20B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB20B8);
  }

  return result;
}

id _s11PhotosGraph23FlexSongProviderFactoryC8provider7forNameAA0c5MusicdE8Protocol_pSSSg_tFZ_0(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    v2 = a1;
  }

  else
  {
    v2 = 0x746C7561666564;
  }

  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  if (v2 == 0xD000000000000014 && 0x800000022F790D00 == v3)
  {

LABEL_11:
    v5 = type metadata accessor for MockFlexSongProvider();
    goto LABEL_13;
  }

  v4 = sub_22F742040();

  if (v4)
  {
    goto LABEL_11;
  }

  v5 = type metadata accessor for FlexMusicKitSongProvider();
LABEL_13:
  v6 = objc_allocWithZone(v5);

  return [v6 init];
}

double sub_22F1B5E48(uint64_t a1, unsigned __int8 a2)
{
  sub_22F740D60();

  return result;
}

double sub_22F1B5FF0(uint64_t a1, unsigned __int8 a2)
{
  sub_22F740D60();

  return result;
}

uint64_t MockFlexMusicSong.uid.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong_uid);

  return v1;
}

Swift::String __swiftcall MockFlexMusicSong.artistName()()
{
  v1 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong__artistName);
  v2 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong__artistName + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::String __swiftcall MockFlexMusicSong.songName()()
{
  v1 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong__songName);
  v2 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong__songName + 8);

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

id sub_22F1B62F4(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_22F740DF0();

  return v3;
}

id sub_22F1B6388(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_22F741410();

  return v3;
}

void sub_22F1B6428(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {
LABEL_15:

      return;
    }

    goto LABEL_6;
  }

  v5 = sub_22F10B348(*(a3 + 16), 0);
  v6 = sub_22F11A438(&v18, v5 + 4, v3, a3);
  v7 = v18;

  sub_22F1534EC(v7);
  if (v6 == v3)
  {
    v8 = v5[2];
    if (!v8)
    {
      goto LABEL_15;
    }

LABEL_6:
    v9 = 0;
    v10 = v5 + 5;
    while (v9 < v5[2])
    {
      v12 = *(v10 - 1);
      v11 = *v10;
      v18 = v12;
      v19 = v11;
      sub_22F160DE4();

      if ((sub_22F741910() & 1) != 0 && (v18 = v12, v19 = v11, sub_22F1BA874(), sub_22F1B1F54(), v13 = sub_22F740D70(), , *(v13 + 16) == 2))
      {

        v14 = sub_22F741400();
        if ((v14 & 0x100000000) == 0)
        {
          v15 = v14;

          v16 = objc_allocWithZone(MEMORY[0x277CCABB0]);
          LODWORD(v17) = v15;
          [v16 initWithFloat_];
          return;
        }
      }

      else
      {
      }

      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

void sub_22F1B6658(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    v5 = MEMORY[0x277D84F90];
    v8 = *(MEMORY[0x277D84F90] + 16);
    if (!v8)
    {
LABEL_12:

      return;
    }

    goto LABEL_6;
  }

  v5 = sub_22F10B348(*(a3 + 16), 0);
  v6 = sub_22F11A438(&v14, v5 + 4, v3, a3);
  v7 = v14;

  sub_22F1534EC(v7);
  if (v6 == v3)
  {
    v8 = v5[2];
    if (!v8)
    {
      goto LABEL_12;
    }

LABEL_6:
    v9 = 0;
    v10 = v5 + 5;
    while (v9 < v5[2])
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v14 = v11;
      v15 = v12;
      sub_22F160DE4();

      if (sub_22F741910())
      {
        v14 = v11;
        v15 = v12;
        sub_22F1BA874();
        sub_22F1B1F54();
        v13 = sub_22F740D70();

        if (*(v13 + 16) == 2)
        {

          sub_22F741870();

          return;
        }
      }

      ++v9;
      v10 += 2;
      if (v8 == v9)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

id sub_22F1B68C0(char *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v6 = sub_22F740E20();
  v8 = v7;
  v9 = *&a1[OBJC_IVAR___PGMockFlexMusicSong__tagIDs];
  v10 = a1;
  v11 = a4(v6, v8, v9);

  return v11;
}

uint64_t sub_22F1B6970(void *a1, uint64_t (*a2)(uint64_t))
{
  v3 = sub_22F740E20();
  v4 = a2(v3);

  return v4;
}

void *MockFlexMusicSong.regions()()
{
  v25 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong__tagIDs);
  v2 = *(v1 + 32);
  v3 = v2 & 0x3F;
  v4 = ((1 << v2) + 63) >> 6;
  v5 = 8 * v4;

  if (v3 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v20[1] = v20;
    v21 = v4;
    MEMORY[0x28223BE20](v6);
    v22 = v20 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v22, v5);
    v23 = 0;
    v4 = 0;
    v7 = v1;
    v8 = v1 + 56;
    v9 = 1 << *(v1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v1 + 56);
    v5 = (v9 + 63) >> 6;
    v24 = *MEMORY[0x277D0A980];
    while (v11)
    {
      v12 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v15 = v12 | (v4 << 6);
      sub_22F740E20();

      v1 = sub_22F740FE0();

      if (v1)
      {
        *&v22[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
        if (__OFADD__(v23++, 1))
        {
          __break(1u);
          return sub_22F1B8E24(v22, v21, v23, v7);
        }
      }
    }

    v13 = v4;
    while (1)
    {
      v4 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v4 >= v5)
      {
        return sub_22F1B8E24(v22, v21, v23, v7);
      }

      v14 = *(v8 + 8 * v4);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v11 = (v14 - 1) & v14;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v18 = swift_slowAlloc();
  v19 = sub_22F1B8D94(v18, v4, v1, sub_22F1B6C64);

  MEMORY[0x2319033A0](v18, -1, -1);
  return v19;
}

uint64_t sub_22F1B6C64(uint64_t *a1)
{
  sub_22F740E20();
  v1 = sub_22F740FE0();

  return v1 & 1;
}

id MockFlexMusicSong.init(from:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  if (*(a1 + 16))
  {
    v5 = sub_22F1229E8(6580597, 0xE300000000000000);
    if (v6)
    {
      sub_22F13A100(*(a1 + 56) + 32 * v5, v56);
      if (swift_dynamicCast())
      {
        v7 = v55;
        if (*(a1 + 16))
        {
          v8 = v54;
          v9 = sub_22F1229E8(0x614E747369747261, 0xEA0000000000656DLL);
          if (v10)
          {
            sub_22F13A100(*(a1 + 56) + 32 * v9, v56);
            if (swift_dynamicCast())
            {
              v11 = v55;
              if (*(a1 + 16))
              {
                v12 = v54;
                v13 = sub_22F1229E8(0x656D614E676E6F73, 0xE800000000000000);
                if (v14)
                {
                  sub_22F13A100(*(a1 + 56) + 32 * v13, v56);
                  if (swift_dynamicCast())
                  {
                    v15 = v54;
                    v16 = v55;
                    v17 = &v1[OBJC_IVAR___PGMockFlexMusicSong_uid];
                    *v17 = v54;
                    v17[1] = v7;
                    v18 = &v1[OBJC_IVAR___PGMockFlexMusicSong__artistName];
                    *v18 = v12;
                    v18[1] = v11;
                    v19 = &v1[OBJC_IVAR___PGMockFlexMusicSong__songName];
                    *v19 = v15;
                    v19[1] = v16;
                    v20 = *(a1 + 16);

                    if (v20 && (v21 = sub_22F1229E8(0x64656C6C61636572, 0xE800000000000000), (v22 & 1) != 0) && (sub_22F13A100(*(a1 + 56) + 32 * v21, v56), swift_dynamicCast()))
                    {
                      v23 = v54;
                    }

                    else
                    {
                      v23 = 0;
                    }

                    v2[OBJC_IVAR___PGMockFlexMusicSong_recalled] = v23;
                    if (*(a1 + 16) && (v34 = sub_22F1229E8(0x79616C506E6163, 0xE700000000000000), (v35 & 1) != 0) && (sub_22F13A100(*(a1 + 56) + 32 * v34, v56), swift_dynamicCast()))
                    {
                      v36 = v54;
                    }

                    else
                    {
                      v36 = 1;
                    }

                    v2[OBJC_IVAR___PGMockFlexMusicSong_canPlay] = v36;
                    v37 = *(a1 + 16);
                    if (v37)
                    {
                      v38 = sub_22F1229E8(0x6E6564646968, 0xE600000000000000);
                      if ((v39 & 1) != 0 && (sub_22F13A100(*(a1 + 56) + 32 * v38, v56), swift_dynamicCast()))
                      {
                        LOBYTE(v37) = v54;
                      }

                      else
                      {
                        LOBYTE(v37) = 0;
                      }
                    }

                    v2[OBJC_IVAR___PGMockFlexMusicSong__hidden] = v37;
                    if (*(a1 + 16) && (v40 = sub_22F1229E8(0x7364726F7779656BLL, 0xE800000000000000), (v41 & 1) != 0) && (sub_22F13A100(*(a1 + 56) + 32 * v40, v56), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0), (swift_dynamicCast() & 1) != 0))
                    {
                      v42 = v54;
                    }

                    else
                    {
                      v42 = MEMORY[0x277D84F90];
                    }

                    v43 = sub_22F1515F8(v42);

                    *&v2[OBJC_IVAR___PGMockFlexMusicSong__keywords] = v43;
                    if (*(a1 + 16) && (v44 = sub_22F1229E8(0x734449676174, 0xE600000000000000), (v45 & 1) != 0) && (sub_22F13A100(*(a1 + 56) + 32 * v44, v56), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0), (swift_dynamicCast() & 1) != 0))
                    {
                      v46 = v54;
                    }

                    else
                    {
                      v46 = MEMORY[0x277D84F90];
                    }

                    v47 = sub_22F1515F8(v46);

                    *&v2[OBJC_IVAR___PGMockFlexMusicSong__tagIDs] = v47;
                    if (*(a1 + 16) && (v48 = sub_22F1229E8(0xD000000000000010, 0x800000022F78D720), (v49 & 1) != 0))
                    {
                      sub_22F13A100(*(a1 + 56) + 32 * v48, v56);

                      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
                      if (swift_dynamicCast())
                      {

                        sub_22F1BA184(v54, v8, v7);
                        v51 = v50;

                        swift_bridgeObjectRelease_n();
                        v52 = v51;
LABEL_50:
                        *&v2[OBJC_IVAR___PGMockFlexMusicSong_weightedKeywords] = v52;
                        v53.receiver = v2;
                        v53.super_class = ObjectType;
                        return objc_msgSendSuper2(&v53, sel_init);
                      }
                    }

                    else
                    {
                    }

                    v52 = sub_22F14EF5C(MEMORY[0x277D84F90]);
                    goto LABEL_50;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v24 = sub_22F740B90();
  __swift_project_value_buffer(v24, qword_2810B4D90);

  v25 = sub_22F740B70();
  v26 = sub_22F7415E0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v56[0] = v28;
    *v27 = 136315138;
    v29 = sub_22F740CB0();
    v31 = v30;

    v32 = sub_22F145F20(v29, v31, v56);

    *(v27 + 4) = v32;
    _os_log_impl(&dword_22F0FC000, v25, v26, "Song missing uid, artistName, or songName in jsonDict: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2319033A0](v28, -1, -1);
    MEMORY[0x2319033A0](v27, -1, -1);
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

id sub_22F1B7420@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  sub_22F13A100(a1, v20);
  if (swift_dynamicCast())
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v9) = v18;
    result = [v8 initWithFloat_];
    goto LABEL_18;
  }

  sub_22F13A100(a1, v20);
  if (swift_dynamicCast())
  {
    v11 = *&v18;
LABEL_5:
    result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithDouble_];
    goto LABEL_18;
  }

  sub_22F13A100(a1, v20);
  if (swift_dynamicCast())
  {
    result = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
    goto LABEL_18;
  }

  sub_22F13A100(a1, v20);
  sub_22F170D8C();
  if (swift_dynamicCast())
  {
    result = v18;
    goto LABEL_18;
  }

  sub_22F13A100(a1, v20);
  if (swift_dynamicCast())
  {
    v20[0] = 0;
    v12 = sub_22F222738(v18, v19, v20);

    if (v12)
    {
      v11 = *v20;
      goto LABEL_5;
    }
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v13 = sub_22F740B90();
  __swift_project_value_buffer(v13, qword_2810B4D90);

  v14 = sub_22F740B70();
  v15 = sub_22F7415E0();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_22F145F20(a2, a3, v20);
    _os_log_impl(&dword_22F0FC000, v14, v15, "Unable to resole weightedKeywords for song: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v17);
    MEMORY[0x2319033A0](v17, -1, -1);
    MEMORY[0x2319033A0](v16, -1, -1);
  }

  result = 0;
LABEL_18:
  *a4 = result;
  return result;
}

char *MockFlexMusicSong.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2108, &qword_22F7785F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v40 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1BA440();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
    return v3;
  }

  else
  {
    LOBYTE(v52) = 0;
    v9 = sub_22F741EB0();
    v11 = &v1[OBJC_IVAR___PGMockFlexMusicSong_uid];
    *v11 = v9;
    v11[1] = v12;
    LOBYTE(v52) = 1;
    v1[OBJC_IVAR___PGMockFlexMusicSong_recalled] = sub_22F741EC0() & 1;
    LOBYTE(v52) = 2;
    v1[OBJC_IVAR___PGMockFlexMusicSong_canPlay] = sub_22F741EC0() & 1;
    LOBYTE(v52) = 4;
    v1[OBJC_IVAR___PGMockFlexMusicSong__hidden] = sub_22F741EC0() & 1;
    LOBYTE(v52) = 5;
    v13 = sub_22F741EB0();
    v14 = &v1[OBJC_IVAR___PGMockFlexMusicSong__artistName];
    *v14 = v13;
    v14[1] = v15;
    LOBYTE(v52) = 6;
    v16 = sub_22F741EB0();
    v17 = &v1[OBJC_IVAR___PGMockFlexMusicSong__songName];
    *v17 = v16;
    v17[1] = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v51 = 7;
    v48 = sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22F741F10();
    v47 = sub_22F1515F8(v52);

    *&v1[OBJC_IVAR___PGMockFlexMusicSong__keywords] = v47;
    v51 = 8;
    sub_22F741F10();
    v19 = sub_22F1515F8(v52);

    *&v1[OBJC_IVAR___PGMockFlexMusicSong__tagIDs] = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1098, &qword_22F7714D8);
    v51 = 3;
    sub_22F1BA500(&qword_27DAB2118, MEMORY[0x277D83808], MEMORY[0x277D83A30], MEMORY[0x277D83528]);
    sub_22F741F10();
    v20 = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0BC0, &unk_22F770D40);
    result = sub_22F741DC0();
    v44 = result;
    v45 = v20;
    v21 = 0;
    v22 = *(v20 + 64);
    v42 = v20 + 64;
    v23 = 1 << *(v20 + 32);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v22;
    v41 = (v23 + 63) >> 6;
    v43 = result + 64;
    if (v25)
    {
      while (1)
      {
        v26 = __clz(__rbit64(v25));
        v46 = (v25 - 1) & v25;
LABEL_14:
        v29 = v26 | (v21 << 6);
        v47 = 16 * v29;
        v30 = *(v45 + 56);
        v31 = (*(v45 + 48) + 16 * v29);
        v32 = v31[1];
        v48 = *v31;
        v33 = *(v30 + 8 * v29);
        v34 = objc_allocWithZone(MEMORY[0x277CCABB0]);

        result = [v34 initWithDouble_];
        *&v43[(v29 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v29;
        v35 = v44;
        v36 = (*(v44 + 6) + v47);
        *v36 = v48;
        v36[1] = v32;
        *(*(v35 + 7) + 8 * v29) = result;
        v37 = *(v35 + 2);
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          break;
        }

        *(v35 + 2) = v39;
        v25 = v46;
        if (!v46)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      v27 = v21;
      while (1)
      {
        v21 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          break;
        }

        if (v21 >= v41)
        {

          (*(v6 + 8))(v8, v5);
          *&v3[OBJC_IVAR___PGMockFlexMusicSong_weightedKeywords] = v44;
          v50.receiver = v3;
          v50.super_class = ObjectType;
          v3 = objc_msgSendSuper2(&v50, sel_init);
          __swift_destroy_boxed_opaque_existential_0(a1);
          return v3;
        }

        v28 = *(v42 + 8 * v21);
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v46 = (v28 - 1) & v28;
          goto LABEL_14;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

id MockFlexMusicSong.__allocating_init(from:)(uint64_t a1, uint64_t a2)
{
  v22[4] = *MEMORY[0x277D85DE8];
  v3 = sub_22F740E80();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740E70();
  v7 = sub_22F740E30();
  v9 = v8;

  (*(v4 + 8))(v6, v3);
  if (v9 >> 60 != 15)
  {
    v10 = objc_opt_self();
    v11 = sub_22F73F4F0();
    v22[0] = 0;
    v12 = [v10 JSONObjectWithData:v11 options:0 error:v22];

    if (v12)
    {
      v13 = v22[0];
      sub_22F741920();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      if (swift_dynamicCast())
      {
        v14 = v21[1];
        v15 = objc_allocWithZone(v2);
        v16 = MockFlexMusicSong.init(from:)(v14);
        v17 = v16;
        sub_22F1746FC(v7, v9);
        if (v16)
        {

          return v16;
        }
      }

      else
      {
        sub_22F1746FC(v7, v9);
      }
    }

    else
    {
      v19 = v22[0];
      v20 = sub_22F73F370();

      swift_willThrow();
      sub_22F1746FC(v7, v9);
    }
  }

  return 0;
}

id MockFlexMusicSong.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MockFlexMusicSong.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F1B8250(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 6580597;
    v6 = 0x79616C506E6163;
    if (a1 != 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0x64656C6C61636572;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x656D614E676E6F73;
    v2 = 0x7364726F7779656BLL;
    if (a1 != 7)
    {
      v2 = 0x734449676174;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6E6564646968;
    if (a1 != 4)
    {
      v3 = 0x614E747369747261;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_22F1B8370()
{
  v1 = *v0;
  sub_22F742170();
  sub_22F1B5FF0(v3, v1);
  return sub_22F7421D0();
}

uint64_t sub_22F1B83C0(uint64_t a1)
{
  v2 = *v1;
  sub_22F742170();
  sub_22F1B5FF0(v4, v2);
  return sub_22F7421D0();
}

unint64_t sub_22F1B8404@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_22F1BA700(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_22F1B8434@<X0>(unint64_t *a1@<X8>)
{
  result = sub_22F1B8250(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_22F1B847C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_22F1BA700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_22F1B84A4(uint64_t a1)
{
  v2 = sub_22F1BA440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F1B84E0(uint64_t a1)
{
  v2 = sub_22F1BA440();

  return MEMORY[0x2821FE720](a1, v2);
}

void *MockFlexMusicSong.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2120, &qword_22F7785F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v41 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F1BA440();
  sub_22F742210();
  LOBYTE(v48[0]) = 0;
  sub_22F741F80();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  LOBYTE(v48[0]) = 1;
  sub_22F741F90();
  LOBYTE(v48[0]) = 2;
  sub_22F741F90();
  LOBYTE(v48[0]) = 4;
  sub_22F741F90();
  LOBYTE(v48[0]) = 5;
  sub_22F741F80();
  LOBYTE(v48[0]) = 6;
  sub_22F741F80();
  v47 = 0;
  v9 = *(v3 + OBJC_IVAR___PGMockFlexMusicSong__keywords);
  v10 = *(v9 + 16);
  if (v10)
  {
    v44 = sub_22F10B348(*(v9 + 16), 0);
    v11 = sub_22F11A438(v48, v44 + 4, v10, v9);
    v12 = v48[0];
    v45 = v49;
    v46 = v11;

    result = sub_22F1534EC(v12);
    if (v46 != v10)
    {
      goto LABEL_28;
    }

    v14 = v44;
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v48[0] = v14;
  v50 = 7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  v15 = v47;
  sub_22F741FE0();

  if (v15)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v16 = *(v3 + OBJC_IVAR___PGMockFlexMusicSong__tagIDs);
  v17 = *(v16 + 16);
  if (!v17)
  {
    v18 = MEMORY[0x277D84F90];
    goto LABEL_12;
  }

  v47 = 0;
  v18 = sub_22F10B348(v17, 0);
  v19 = sub_22F11A438(v48, v18 + 4, v17, v16);
  v20 = v48[0];
  v45 = v48[1];
  v46 = v19;
  v43 = v48[3];
  v44 = v48[2];
  v42 = v49;

  result = sub_22F1534EC(v20);
  if (v46 == v17)
  {
    v15 = v47;
LABEL_12:
    v48[0] = v18;
    v50 = 8;
    sub_22F741FE0();

    v47 = v15;
    if (v15)
    {
      return (*(v6 + 8))(v8, v5);
    }

    v21 = *(v3 + OBJC_IVAR___PGMockFlexMusicSong_weightedKeywords);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1280, &unk_22F778600);
    result = sub_22F741DC0();
    v22 = 0;
    v23 = v21 + 64;
    v24 = 1 << *(v21 + 32);
    v25 = -1;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    v26 = v25 & *(v21 + 64);
    v27 = (v24 + 63) >> 6;
    v42 = result + 8;
    v43 = v21;
    v44 = result;
    if (v26)
    {
      do
      {
        v28 = __clz(__rbit64(v26));
        v45 = (v26 - 1) & v26;
LABEL_23:
        v31 = v28 | (v22 << 6);
        v32 = *(v43 + 56);
        v33 = (*(v43 + 48) + 16 * v31);
        v34 = v33[1];
        v46 = *v33;
        v35 = *(v32 + 8 * v31);

        [v35 doubleValue];
        *(v42 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
        result = v44;
        v36 = (v44[6] + 16 * v31);
        *v36 = v46;
        v36[1] = v34;
        *(result[7] + 8 * v31) = v37;
        v38 = result[2];
        v39 = __OFADD__(v38, 1);
        v40 = v38 + 1;
        if (v39)
        {
          goto LABEL_29;
        }

        result[2] = v40;
        v26 = v45;
      }

      while (v45);
    }

    v29 = v22;
    while (1)
    {
      v22 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v22 >= v27)
      {
        v48[0] = result;
        v50 = 3;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1098, &qword_22F7714D8);
        sub_22F1BA500(&qword_27DAB2128, MEMORY[0x277D837D8], MEMORY[0x277D83A08], MEMORY[0x277D83508]);
        sub_22F741FE0();
        (*(v6 + 8))(v8, v5);
      }

      v30 = *(v23 + 8 * v22);
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v45 = (v30 - 1) & v30;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  __break(1u);
  return result;
}

char *sub_22F1B8B34@<X0>(void *a1@<X0>, char **a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MockFlexMusicSong.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MockFlexMusicSong.description.getter()
{
  v5 = *(v0 + OBJC_IVAR___PGMockFlexMusicSong__songName);

  MEMORY[0x231900B10](544825888, 0xE400000000000000);
  MEMORY[0x231900B10](*(v0 + OBJC_IVAR___PGMockFlexMusicSong__artistName), *(v0 + OBJC_IVAR___PGMockFlexMusicSong__artistName + 8));
  MEMORY[0x231900B10](2128928, 0xE300000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1608, &unk_22F772BB0);
  sub_22F173C28();
  sub_22F160DE4();
  v1 = sub_22F7410E0();
  v3 = v2;

  MEMORY[0x231900B10](v1, v3);

  return v5;
}

void *sub_22F1B8D1C(void *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_22F1BA000(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void *sub_22F1B8D94(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F35F548(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_22F1B8E24(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0770, &qword_22F78ABC0);
  result = sub_22F741AD0();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_22F742170();

    sub_22F740D60();
    result = sub_22F7421D0();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B9048(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Song(0);
  v32 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0598, &unk_22F7787F0);
  result = sub_22F741AD0();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_22F1A39E0(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for Song);
    sub_22F742170();
    sub_22F740D60();
    result = sub_22F7421D0();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_22F1BA7A4(v10, *(v11 + 48) + v24 * v20, type metadata accessor for Song);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B9328(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = sub_22F73F690();
  v8 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v48 = type metadata accessor for SongSource(0);
  v44 = *(v48 - 1);
  MEMORY[0x28223BE20](v48);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  v42 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB05C0, &qword_22F770820);
  result = sub_22F741AD0();
  v16 = result;
  v40 = v10;
  if (a2 < 1)
  {
    v18 = 0;
  }

  else
  {
    v18 = *a1;
  }

  v19 = 0;
  v41 = (v8 + 48);
  v38 = (v8 + 8);
  v39 = (v8 + 32);
  v20 = result + 56;
  v43 = a4;
  while (v18)
  {
    v21 = __clz(__rbit64(v18));
    v46 = (v18 - 1) & v18;
LABEL_16:
    v24 = *(a4 + 48);
    v47 = *(v44 + 72);
    sub_22F1A39E0(v24 + v47 * (v21 | (v19 << 6)), v15, type metadata accessor for SongSource);
    sub_22F742170();
    sub_22F740D60();
    if (*&v15[v48[11] + 8])
    {
      sub_22F742190();
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    v25 = v42;
    sub_22F12057C(&v15[v48[7]], v42);
    v26 = v45;
    if ((*v41)(v25, 1, v45) == 1)
    {
      sub_22F742190();
    }

    else
    {
      v27 = v40;
      (*v39)(v40, v25, v26);
      sub_22F742190();
      sub_22F1BA74C();
      sub_22F740D50();
      (*v38)(v27, v26);
    }

    if (*&v15[v48[8] + 8])
    {
      sub_22F742190();
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    if (*&v15[v48[12] + 8])
    {
      sub_22F742190();
      sub_22F740D60();
    }

    else
    {
      sub_22F742190();
    }

    a4 = v43;
    result = sub_22F7421D0();
    v28 = -1 << *(v16 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v20 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v20 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_38;
        }
      }

      goto LABEL_43;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v20 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_38:
    *(v20 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = sub_22F1BA7A4(v15, *(v16 + 48) + v31 * v47, type metadata accessor for SongSource);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_44;
    }

    v18 = v46;
    if (!a3)
    {
LABEL_40:

      return v16;
    }
  }

  v22 = v19;
  while (1)
  {
    v19 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v19 >= a2)
    {
      goto LABEL_40;
    }

    v23 = a1[v19];
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

uint64_t sub_22F1B988C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v6 = a4;
  if (!a3)
  {
    v11 = MEMORY[0x277D84FA0];
LABEL_6:

    return v11;
  }

  v7 = a3;
  if (*(a4 + 16) == a3)
  {
    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_22F741AD0();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_17:
    v18 = *(*(v6 + 48) + 8 * (v15 | (v13 << 6)));
    result = sub_22F741800();
    v19 = -1 << *(v11 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    *(*(v11 + 48) + 8 * v22) = v18;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    if (!v7)
    {
      goto LABEL_6;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_22F1B9A78(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_22F73F690();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0768, &qword_22F7708E8);
  result = sub_22F741AD0();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_22F1BA74C();
    result = sub_22F740D40();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_22F1B9D70(uint64_t a1)
{
  v2 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23 = v4;
    v24 = v1;
    v22[1] = v22;
    MEMORY[0x28223BE20](a1);
    v25 = v22 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v25, v5);
    v26 = 0;
    v4 = 0;
    v6 = v2;
    v8 = *(v2 + 56);
    v2 += 56;
    v7 = v8;
    v9 = 1 << *(v2 - 24);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & v7;
    v12 = (v9 + 63) >> 6;
    v27 = *MEMORY[0x277D0A980];
    while (v11)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_12:
      v16 = v13 | (v4 << 6);
      v1 = sub_22F740E20();

      v17 = sub_22F740FE0();

      if (v17)
      {
        *&v25[(v16 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v16;
        if (__OFADD__(v26++, 1))
        {
          __break(1u);
          return sub_22F1B8E24(v25, v23, v26, v6);
        }
      }
    }

    v14 = v4;
    while (1)
    {
      v4 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v4 >= v12)
      {
        return sub_22F1B8E24(v25, v23, v26, v6);
      }

      v15 = *(v2 + 8 * v4);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v20 = swift_slowAlloc();
  v21 = sub_22F1B8D1C(v20, v4, v2);

  MEMORY[0x2319033A0](v20, -1, -1);
  return v21;
}

void sub_22F1BA000(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = a3 + 56;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 56);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    sub_22F740E20();

    v14 = sub_22F740FE0();

    if (v14)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v18++, 1))
      {
        __break(1u);
LABEL_15:

        sub_22F1B8E24(a1, a2, v18, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_22F1BA184(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v41 = a3;
  v4 = a1;
  v5 = MEMORY[0x277D84F98];
  v40 = MEMORY[0x277D84F98];
  v6 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = 0;

  if (!v9)
  {
    goto LABEL_7;
  }

LABEL_11:
  while (1)
  {
    v13 = __clz(__rbit64(v9)) | (v11 << 6);
    v14 = (*(v4 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_22F13A100(*(v4 + 56) + 32 * v13, v39);
    *&v38 = v16;
    *(&v38 + 1) = v15;
    v35 = v38;
    v36 = v39[0];
    v37 = v39[1];

    sub_22F1B7420(&v36, a2, v41, v32);
    if (v3)
    {
      break;
    }

    v9 &= v9 - 1;
    v17 = v32[0];
    if (v32[0])
    {
      v34[0] = v36;
      v34[1] = v37;
      v33 = v35;
      v18 = *(v5 + 16);
      if (*(v5 + 24) <= v18)
      {
        sub_22F126C90(v18 + 1, 1);
        v5 = v40;
      }

      v19 = v33;
      sub_22F742170();
      sub_22F740D60();
      v20 = sub_22F7421D0();
      v21 = v5 + 64;
      v22 = -1 << *(v5 + 32);
      v23 = v20 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v5 + 64 + 8 * (v23 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v22) >> 6;
        while (++v24 != v27 || (v26 & 1) == 0)
        {
          v28 = v24 == v27;
          if (v24 == v27)
          {
            v24 = 0;
          }

          v26 |= v28;
          v29 = *(v21 + 8 * v24);
          if (v29 != -1)
          {
            v25 = __clz(__rbit64(~v29)) + (v24 << 6);
            goto LABEL_25;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v25 = __clz(__rbit64((-1 << v23) & ~*(v5 + 64 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
      *(v21 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      *(*(v5 + 48) + 16 * v25) = v19;
      *(*(v5 + 56) + 8 * v25) = v17;
      ++*(v5 + 16);
      __swift_destroy_boxed_opaque_existential_0(v34);
      v4 = v30;
      if (!v9)
      {
LABEL_7:
        while (1)
        {
          v12 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            break;
          }

          if (v12 >= v10)
          {
            goto LABEL_28;
          }

          v9 = *(v6 + 8 * v12);
          ++v11;
          if (v9)
          {
            v11 = v12;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {
      sub_22F1BA80C(&v35);
      if (!v9)
      {
        goto LABEL_7;
      }
    }
  }

  sub_22F1BA80C(&v35);

LABEL_28:
}

unint64_t sub_22F1BA440()
{
  result = qword_27DAB2110;
  if (!qword_27DAB2110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2110);
  }

  return result;
}

uint64_t sub_22F1BA494(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB0E90, &qword_22F7714A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22F1BA500(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1098, &qword_22F7714D8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of MockFlexMusicSong.__allocating_init(from:)()
{
  return (*(v0 + 152))();
}

{
  return (*(v0 + 160))();
}

unint64_t sub_22F1BA5FC()
{
  result = qword_27DAB2130;
  if (!qword_27DAB2130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2130);
  }

  return result;
}

unint64_t sub_22F1BA654()
{
  result = qword_27DAB2138;
  if (!qword_27DAB2138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2138);
  }

  return result;
}

unint64_t sub_22F1BA6AC()
{
  result = qword_27DAB2140;
  if (!qword_27DAB2140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2140);
  }

  return result;
}

unint64_t sub_22F1BA700(uint64_t a1, uint64_t a2)
{
  v2 = sub_22F741E30();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_22F1BA74C()
{
  result = qword_2810AC710;
  if (!qword_2810AC710)
  {
    sub_22F73F690();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AC710);
  }

  return result;
}

uint64_t sub_22F1BA7A4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_22F1BA80C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2148, &unk_22F778810);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F1BA874()
{
  result = qword_27DAB2150;
  if (!qword_27DAB2150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2150);
  }

  return result;
}

id MockFlexSongProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t MockFlexSongProviderError.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

Swift::String __swiftcall MockFlexSongProvider.name()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2158, &qword_22F778820);
  v0 = sub_22F740E90();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t MockFlexSongProvider.allFlexSongs()()
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v2 = qword_2810B4DD8;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("MockFetchUsableFlexSongs", 24, 2u, v3, 0, v2, v6);
  v4 = sub_22F1BAF58();
  if (v0)
  {
    sub_22F1B2BBC(0);
  }

  else
  {
    if (v4 >> 62)
    {
      v7 = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
      v1 = sub_22F741D50();
    }

    else
    {
      v1 = v4;

      sub_22F742060();
    }

    sub_22F1B2BBC(0);
  }

  return v1;
}

uint64_t sub_22F1BAD5C(void *a1)
{
  sub_22F740E20();
  sub_22F160DE4();
  v1 = sub_22F741910();

  return v1 & 1;
}

id MockFlexSongProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MockFlexSongProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F1BAF58()
{
  v1 = v0;
  v63[4] = *MEMORY[0x277D85DE8];
  v2 = sub_22F73F470();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() standardUserDefaults];
  v7 = sub_22F740DF0();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    v9 = sub_22F740E20();
    v11 = v10;
  }

  else
  {
    v11 = 0x800000022F790DD0;
    v9 = 0xD00000000000002ELL;
  }

  if (qword_2810A9460 != -1)
  {
LABEL_45:
    swift_once();
  }

  v12 = sub_22F740B90();
  v13 = __swift_project_value_buffer(v12, qword_2810B4D90);

  v14 = sub_22F740B70();
  v15 = sub_22F7415C0();

  v16 = os_log_type_enabled(v14, v15);
  v61 = v13;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v60 = v2;
    v18 = v1;
    v19 = v17;
    v20 = v9;
    v21 = swift_slowAlloc();
    v63[0] = v21;
    *v19 = 136315138;
    *(v19 + 4) = sub_22F145F20(v20, v11, v63);
    _os_log_impl(&dword_22F0FC000, v14, v15, "Reading mock flex songs from %s", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    v22 = v21;
    v9 = v20;
    MEMORY[0x2319033A0](v22, -1, -1);
    v23 = v19;
    v1 = v18;
    v2 = v60;
    MEMORY[0x2319033A0](v23, -1, -1);
  }

  sub_22F73F3D0();

  v24 = sub_22F73F480();
  if (v1)
  {
    (*(v3 + 8))(v5, v2);

    return v2;
  }

  v26 = v9;
  v27 = v24;
  v28 = v25;
  v60 = v26;
  v30 = *(v3 + 8);
  v29 = v3 + 8;
  v30(v5, v2);
  v31 = v28 >> 62;
  if ((v28 >> 62) > 1)
  {
    if (v31 == 2)
    {
      v33 = v27[2];
      v32 = v27[3];
      v34 = __OFSUB__(v32, v33);
      v35 = v32 - v33;
      if (v34)
      {
        __break(1u);
        goto LABEL_47;
      }

      if (v35 >= 1)
      {
        goto LABEL_16;
      }
    }

LABEL_28:

    v43 = sub_22F740B70();
    v44 = sub_22F7415E0();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v2 = v27;
      v46 = swift_slowAlloc();
      v63[0] = v46;
      *v45 = 136315138;
      v47 = sub_22F145F20(v60, v11, v63);

      *(v45 + 4) = v47;
      _os_log_impl(&dword_22F0FC000, v43, v44, "Failed to read mock flex songs from file: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v46);
      v48 = v46;
      v27 = v2;
      MEMORY[0x2319033A0](v48, -1, -1);
      MEMORY[0x2319033A0](v45, -1, -1);
    }

    else
    {
    }

    sub_22F1BBED8();
    swift_allocError();
    *v49 = 1;
    goto LABEL_36;
  }

  if (!v31)
  {
    if (!BYTE6(v28))
    {
      goto LABEL_28;
    }

    goto LABEL_16;
  }

  if (__OFSUB__(HIDWORD(v27), v27))
  {
LABEL_47:
    __break(1u);
LABEL_48:
    v56 = sub_22F741A00();
    goto LABEL_41;
  }

  if (HIDWORD(v27) - v27 < 1)
  {
    goto LABEL_28;
  }

LABEL_16:
  v36 = objc_opt_self();
  v37 = sub_22F73F4F0();
  v63[0] = 0;
  v38 = [v36 JSONObjectWithData:v37 options:0 error:v63];

  if (!v38)
  {
    v50 = v63[0];

    sub_22F73F370();

LABEL_36:
    swift_willThrow();
    sub_22F133BF0(v27, v28);
    return v2;
  }

  v39 = v63[0];
  sub_22F741920();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
  if (!swift_dynamicCast())
  {

    v51 = sub_22F740B70();
    v52 = sub_22F7415E0();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&dword_22F0FC000, v51, v52, "Invalid JSON format in mock flex songs file", v53, 2u);
      MEMORY[0x2319033A0](v53, -1, -1);
    }

    sub_22F1BBED8();
    swift_allocError();
    *v54 = 0;
    goto LABEL_36;
  }

  v59 = v27;
  v3 = 0;
  v5 = v62;
  v2 = MEMORY[0x277D84F90];
  v63[0] = MEMORY[0x277D84F90];
  v9 = *(v62 + 2);
LABEL_19:
  v40 = v3;
  while (v9 != v40)
  {
    if (v40 >= *(v5 + 2))
    {
      __break(1u);
      goto LABEL_45;
    }

    v3 = v40 + 1;
    objc_allocWithZone(type metadata accessor for MockFlexMusicSong());

    v42 = MockFlexMusicSong.init(from:)(v41);
    v40 = v3;
    if (v42)
    {
      MEMORY[0x231900D00]();
      if (*((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v2 = v63[0];
      goto LABEL_19;
    }
  }

  v14 = sub_22F740B70();
  v29 = sub_22F7415C0();

  if (!os_log_type_enabled(v14, v29))
  {

    sub_22F133BF0(v59, v28);

    goto LABEL_43;
  }

  v5 = swift_slowAlloc();
  v27 = swift_slowAlloc();
  v63[0] = v27;
  *v5 = 134218242;
  if (v2 >> 62)
  {
    goto LABEL_48;
  }

  v56 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_41:
  *(v5 + 4) = v56;

  *(v5 + 6) = 2080;
  v57 = sub_22F145F20(v60, v11, v63);

  *(v5 + 14) = v57;
  _os_log_impl(&dword_22F0FC000, v14, v29, "Successfully loaded %ld mock flex songs from %s", v5, 0x16u);
  __swift_destroy_boxed_opaque_existential_0(v27);
  MEMORY[0x2319033A0](v27, -1, -1);
  MEMORY[0x2319033A0](v5, -1, -1);
  sub_22F133BF0(v59, v28);
LABEL_43:

  return v2;
}

uint64_t sub_22F1BB79C()
{
  v1 = v0;
  v61 = *MEMORY[0x277D85DE8];
  if (qword_2810A9AB0 != -1)
  {
LABEL_47:
    swift_once();
  }

  v2 = qword_2810B4DD8;
  *&v3 = CACurrentMediaTime();
  sub_22F1B560C("MockFetchUsableFlexSongs", 24, 2u, v3, 0, v2, v59);
  *&v4 = CACurrentMediaTime();
  sub_22F1B560C("MockFetchUsableFlexSongs", 24, 2u, v4, 0, v2, v60);
  v5 = sub_22F1BAF58();
  if (v1)
  {
    sub_22F1B2BBC(0);

    sub_22F1B2BBC(0);

    return v1;
  }

  v6 = v5;
  if (v5 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v1 = sub_22F741D50();
    swift_bridgeObjectRelease_n();
    v6 = v1;
  }

  else
  {

    sub_22F742060();

    v1 = v6;
  }

  sub_22F1B2BBC(0);

  v58 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    v7 = sub_22F741A00();
    if (v7)
    {
      goto LABEL_8;
    }

LABEL_50:
    v1 = MEMORY[0x277D84F90];
LABEL_51:

    sub_22F1B2BBC(0);

    return v1;
  }

  v7 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_50;
  }

LABEL_8:
  v41 = 0;
  v8 = 0;
  v9 = v1 & 0xC000000000000001;
  v10 = v1 & 0xFFFFFFFFFFFFFF8;
  v42 = v6;
  v11 = v6 + 32;
  v52 = *MEMORY[0x277D0A980];
  v12 = &off_27888E000;
  v46 = v7;
  v45 = v1 & 0xC000000000000001;
  v44 = v1 & 0xFFFFFFFFFFFFFF8;
  v43 = v11;
  while (1)
  {
    while (1)
    {
      if (v9)
      {
        v1 = MEMORY[0x2319016F0](v8, v42);
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v8 >= *(v10 + 16))
        {
          goto LABEL_46;
        }

        v1 = *(v11 + 8 * v8);
        swift_unknownObjectRetain();
        v13 = __OFADD__(v8++, 1);
        if (v13)
        {
          goto LABEL_45;
        }
      }

      if (([v1 v12[326]] & 1) == 0)
      {
        break;
      }

LABEL_14:
      swift_unknownObjectRelease();
      if (v8 == v7)
      {
LABEL_43:
        v1 = v58;
        goto LABEL_51;
      }
    }

    v14 = [v1 hidden];
    v51 = v1;
    if (v14)
    {
      break;
    }

LABEL_9:
    sub_22F741BA0();
    v1 = *(v58 + 16);
    sub_22F741BE0();
    sub_22F741BF0();
    sub_22F741BB0();
    if (v8 == v7)
    {
      goto LABEL_43;
    }
  }

  v15 = [v1 tagIDs];
  v16 = sub_22F741420();

  v18 = *(v16 + 32);
  v48 = ((1 << v18) + 63) >> 6;
  if ((v18 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v47 = &v41;
    MEMORY[0x28223BE20](v17);
    v49 = &v41 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v49, v19);
    v50 = 0;
    v1 = 0;
    v53 = v16;
    v20 = v16 + 56;
    v21 = 1 << *(v16 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v16 + 56);
    v24 = (v21 + 63) >> 6;
    while (v23)
    {
      v25 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      v26 = v25 | (v1 << 6);
      v27 = v53;
LABEL_29:
      v30 = (*(v27 + 48) + 16 * v26);
      v31 = v30[1];
      v56 = *v30;
      v57 = v31;
      v54 = sub_22F740E20();
      v55 = v32;
      sub_22F160DE4();

      v33 = sub_22F741910();

      if (v33)
      {
        *&v49[(v26 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v26;
        v13 = __OFADD__(v50++, 1);
        if (v13)
        {
          __break(1u);
        }
      }
    }

    v28 = v1;
    v27 = v53;
    while (1)
    {
      v1 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v1 >= v24)
      {
        v34 = sub_22F1B8E24(v49, v48, v50, v53);
        v7 = v46;
        v9 = v45;
        v10 = v44;
        v11 = v43;
        v12 = &off_27888E000;
        goto LABEL_34;
      }

      v29 = *(v20 + 8 * v1);
      ++v28;
      if (v29)
      {
        v23 = (v29 - 1) & v29;
        v26 = __clz(__rbit64(v29)) | (v1 << 6);
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v35 = swift_slowAlloc();

  v53 = v35;
  v36 = v35;
  v37 = v41;
  v38 = sub_22F1B8D94(v36, v48, v16, sub_22F1BAD5C);
  v41 = v37;
  if (!v37)
  {
    v39 = v38;
    swift_bridgeObjectRelease_n();
    MEMORY[0x2319033A0](v53, -1, -1);
    v34 = v39;
LABEL_34:
    v1 = *(v34 + 16);

    if (!v1)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  swift_bridgeObjectRelease_n();
  result = MEMORY[0x2319033A0](v53, -1, -1);
  __break(1u);
  return result;
}

unint64_t sub_22F1BBE50()
{
  result = qword_27DAB2160;
  if (!qword_27DAB2160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2160);
  }

  return result;
}

unint64_t sub_22F1BBED8()
{
  result = qword_27DAB2168;
  if (!qword_27DAB2168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2168);
  }

  return result;
}

id FlexMusicKitSongProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

Swift::String __swiftcall FlexMusicKitSongProvider.name()()
{
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2170, &unk_22F778940);
  v0 = sub_22F740E90();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

BOOL sub_22F1BC034(uint64_t a1)
{
  v40[4] = *MEMORY[0x277D85DE8];
  sub_22F1BCD04(a1, v40);
  if (!v40[3])
  {
LABEL_20:
    sub_22F1BCC9C(v40);
LABEL_21:
    if (qword_2810A9460 == -1)
    {
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  sub_22F1BCC38();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_21;
  }

  v1 = v38;
  if ([v38 recalled])
  {
LABEL_24:

    return 0;
  }

  if (([v38 hidden]& 1) != 0)
  {
    v2 = [v38 tagIDs];
    v3 = sub_22F741420();

    v5 = *(v3 + 32);
    v33 = ((1 << v5) + 63) >> 6;
    if ((v5 & 0x3Fu) <= 0xD)
    {
      goto LABEL_6;
    }

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_6:
      v32 = &v32;
      MEMORY[0x28223BE20](v4);
      v34 = &v32 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v34, v6);
      v35 = 0;
      v7 = 0;
      v37 = v3;
      v8 = 1 << *(v3 + 32);
      v9 = -1;
      if (v8 < 64)
      {
        v9 = ~(-1 << v8);
      }

      v10 = v9 & *(v3 + 56);
      v11 = (v8 + 63) >> 6;
      v36 = *MEMORY[0x277D0A980];
      while (v10)
      {
        v12 = __clz(__rbit64(v10));
        v10 &= v10 - 1;
LABEL_16:
        v15 = v12 | (v7 << 6);
        v16 = (*(v37 + 48) + 16 * v15);
        v17 = v16[1];
        v40[0] = *v16;
        v40[1] = v17;
        v38 = sub_22F740E20();
        v39 = v18;
        sub_22F160DE4();

        v19 = sub_22F741910();

        if (v19)
        {
          *&v34[(v15 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v15;
          if (__OFADD__(v35++, 1))
          {
            __break(1u);
            goto LABEL_20;
          }
        }
      }

      v13 = v7;
      while (1)
      {
        v7 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v7 >= v11)
        {
          v29 = sub_22F1B8E24(v34, v33, v35, v37);
          goto LABEL_27;
        }

        v14 = *(v3 + 56 + 8 * v7);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v10 = (v14 - 1) & v14;
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_29:
      swift_once();
LABEL_22:
      v21 = sub_22F740B90();
      __swift_project_value_buffer(v21, qword_2810B4D90);
      v1 = sub_22F740B70();
      v22 = sub_22F7415E0();
      if (os_log_type_enabled(v1, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v40[0] = v24;
        *v23 = 136315138;
        v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C28, &qword_22F778980);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2178, &unk_22F778988);
        v25 = sub_22F740E90();
        v27 = sub_22F145F20(v25, v26, v40);

        *(v23 + 4) = v27;
        _os_log_impl(&dword_22F0FC000, v1, v22, "(FlexMusicCurator) Unsupported evaluatedObject type: %s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v24);
        MEMORY[0x2319033A0](v24, -1, -1);
        MEMORY[0x2319033A0](v23, -1, -1);
      }

      goto LABEL_24;
    }

    v31 = swift_slowAlloc();
    v29 = sub_22F1B8D94(v31, v33, v3, sub_22F1BAD5C);

    MEMORY[0x2319033A0](v31, -1, -1);
LABEL_27:

    v30 = *(v29 + 16);

    return v30 != 0;
  }

  else
  {

    return 1;
  }
}

uint64_t sub_22F1BC4F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (!a2)
  {
    memset(v10, 0, sizeof(v10));
    if (!a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  ObjectType = swift_getObjectType();
  *&v8 = a2;
  sub_22F107D08(&v8, v10);
  if (v3)
  {
LABEL_3:
    v3 = sub_22F740CA0();
  }

LABEL_4:

  swift_unknownObjectRetain();
  v6 = v5(v10, v3);

  sub_22F1BCC9C(v10);
  return v6 & 1;
}

id sub_22F1BC614(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  a4(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
  v4 = sub_22F741160();

  return v4;
}

id FlexMusicKitSongProvider.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlexMusicKitSongProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F1BC788()
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810B4DD8;
  *&v1 = CACurrentMediaTime();
  sub_22F1B560C("FetchUsableFlexSongs", 20, 2u, v1, 0, v0, v13);
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2810A91C8;
  v3 = objc_allocWithZone(MEMORY[0x277D0A990]);
  v4 = v2;
  v5 = [v3 init];
  v12[4] = sub_22F1BC034;
  v12[5] = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_22F1BC4F8;
  v12[3] = &block_descriptor_2;
  v6 = _Block_copy(v12);
  v7 = [objc_opt_self() predicateWithBlock_];
  _Block_release(v6);

  [v5 setPredicate_];

  v8 = [v4 fetchSongsWithOptions_];
  sub_22F1BCC38();
  v9 = sub_22F741180();

  if (v9 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v10 = sub_22F741D50();
  }

  else
  {
    sub_22F742060();

    v10 = v9;
  }

  sub_22F1B2BBC(0);

  return v10;
}

uint64_t sub_22F1BCA28()
{
  if (qword_2810A9AB0 != -1)
  {
    swift_once();
  }

  v0 = qword_2810B4DD8;
  *&v1 = CACurrentMediaTime();
  sub_22F1B560C("FetchAllFlexSongs", 17, 2u, v1, 0, v0, v10);
  if (qword_2810A91C0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = qword_2810A91C8;
  v3 = objc_allocWithZone(MEMORY[0x277D0A990]);
  v4 = v2;
  v5 = [v3 init];
  v6 = [v4 fetchSongsWithOptions_];
  sub_22F1BCC38();
  v7 = sub_22F741180();

  if (v7 >> 62)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1228, &unk_22F771660);
    v8 = sub_22F741D50();
  }

  else
  {
    sub_22F742060();

    v8 = v7;
  }

  sub_22F1B2BBC(0);

  return v8;
}

unint64_t sub_22F1BCC38()
{
  result = qword_2810A8F08;
  if (!qword_2810A8F08)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8F08);
  }

  return result;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F1BCC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C28, &qword_22F778980);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22F1BCD04(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0C28, &qword_22F778980);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CollectionElector.__allocating_init(sources:photoLibrary:presentDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  CollectionElector.init(sources:photoLibrary:presentDate:)(a1, a2, a3);
  return v6;
}

uint64_t CollectionElector.init(sources:photoLibrary:presentDate:)(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v20 - v9;
  v11 = sub_22F73F690();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740B80();
  v15 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2180, &qword_22F778998));
  v16 = a2;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_assetElector) = sub_22F73FEA0();
  sub_22F740310();
  swift_allocObject();
  v17 = v16;
  *(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_suggestionsPersister) = sub_22F740300();
  *(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources) = a1;
  sub_22F13BA9C(a3, v10, &qword_27DAB0920, &qword_22F770B20);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    sub_22F73F650();

    sub_22F120ADC(a3, &qword_27DAB0920, &qword_22F770B20);
    if (v18(v10, 1, v11) != 1)
    {
      sub_22F120ADC(v10, &qword_27DAB0920, &qword_22F770B20);
    }
  }

  else
  {
    sub_22F120ADC(a3, &qword_27DAB0920, &qword_22F770B20);

    (*(v12 + 32))(v14, v10, v11);
  }

  (*(v12 + 32))(v4 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate, v14, v11);
  return v4;
}

uint64_t sub_22F1BD0A0()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2188, &qword_22F7789A0);
  MEMORY[0x28223BE20](v3 - 8);
  v225 = &v222 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2190, &qword_22F7789A8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v222 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v222 - v9;
  v245 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1308, &qword_22F7789B0);
  v252 = *(v245 - 8);
  MEMORY[0x28223BE20](v245 - 8);
  v226 = &v222 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v261 = &v222 - v13;
  MEMORY[0x28223BE20](v14);
  v260 = &v222 - v15;
  v16 = sub_22F740460();
  v224 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v228 = &v222 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for TriggerResult(0);
  v257 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v256 = (&v222 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v20);
  v255 = (&v222 - v21);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2198, &unk_22F7789B8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v222 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v230 = &v222 - v26;
  MEMORY[0x28223BE20](v27);
  v240 = &v222 - v28;
  MEMORY[0x28223BE20](v29);
  v250 = &v222 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = (&v222 - v32);
  v262 = sub_22F740390();
  *&v223 = *(v262 - 8);
  MEMORY[0x28223BE20](v262);
  v234 = &v222 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v231 = &v222 - v36;
  MEMORY[0x28223BE20](v37);
  v238 = &v222 - v38;
  MEMORY[0x28223BE20](v39);
  v241 = (&v222 - v40);
  MEMORY[0x28223BE20](v41);
  v251 = &v222 - v42;
  MEMORY[0x28223BE20](v43);
  v247 = &v222 - v44;
  MEMORY[0x28223BE20](v45);
  v233 = &v222 - v46;
  MEMORY[0x28223BE20](v47);
  v254 = (&v222 - v48);
  v49 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;

  v244 = v49;
  v50 = sub_22F740B70();
  v51 = sub_22F7415F0();
  if (os_log_type_enabled(v50, v51))
  {
    v1 = swift_slowAlloc();
    *v1 = 134217984;
    *(v1 + 4) = *(*(v2 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources) + 16);

    _os_log_impl(&dword_22F0FC000, v50, v51, "Electing collections for %ld sources", v1, 0xCu);
    MEMORY[0x2319033A0](v1, -1, -1);
  }

  else
  {
  }

  v248 = v33;
  v239 = v24;
  v232 = v16;
  v249 = v2;
  v53 = *(v2 + OBJC_IVAR____TtC11PhotosGraph17CollectionElector_sources);
  v54 = *(v53 + 16);
  v263 = v53;
  if (v54)
  {
    v55 = 0;
    v56 = v53 + 32;
    v57 = MEMORY[0x277D84F90];
    while (v55 < *(v53 + 16))
    {
      sub_22F15C30C(v56, &v271);
      v58 = v272;
      v59 = v273;
      __swift_project_boxed_opaque_existential_1(&v271, v272);
      (*(v59 + 32))(&v268, v58, v59);
      v1 = v270;
      __swift_project_boxed_opaque_existential_1(&v268, v269);
      sub_22F740730();
      if (v60)
      {

        __swift_destroy_boxed_opaque_existential_0(&v268);
        sub_22F100260(&v271, &v268);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v266 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_22F14687C(0, *(v57 + 16) + 1, 1);
          v57 = v266;
        }

        v1 = *(v57 + 16);
        v62 = *(v57 + 24);
        if (v1 >= v62 >> 1)
        {
          sub_22F14687C((v62 > 1), v1 + 1, 1);
          v57 = v266;
        }

        *(v57 + 16) = v1 + 1;
        sub_22F100260(&v268, v57 + 40 * v1 + 32);
      }

      else
      {
        __swift_destroy_boxed_opaque_existential_0(&v268);
        __swift_destroy_boxed_opaque_existential_0(&v271);
      }

      ++v55;
      v56 += 40;
      v53 = v263;
      if (v54 == v55)
      {
        goto LABEL_16;
      }
    }

LABEL_99:
    __break(1u);
    goto LABEL_100;
  }

  v57 = MEMORY[0x277D84F90];
LABEL_16:
  v258 = v10;
  v63 = *(v57 + 16);
  v243 = v7;
  v64 = v248;
  if (v63)
  {
    v65 = v57 + 32;
    v259 = (v223 + 16);
    v66 = (v223 + 56);
    v253 = (v223 + 48);
    v242 = (v223 + 32);
    v237 = (v223 + 8);
    v229 = (v224 + 1);
    v264 = MEMORY[0x277D84F98];
    *&v52 = 136315394;
    v227 = v52;
    v67 = v262;
    v246 = (v223 + 56);
    v236 = v57;
    while (1)
    {
      sub_22F15C30C(v65, &v271);
      v68 = v272;
      v69 = v273;
      __swift_project_boxed_opaque_existential_1(&v271, v272);
      v70 = (*(v69 + 16))(v68, v69);
      if (!*(v70 + 16))
      {
        break;
      }

      sub_22F15C30C(v70 + 32, &v266);

      sub_22F100260(&v266, &v268);
      v71 = v269;
      v72 = v270;
      __swift_project_boxed_opaque_existential_1(&v268, v269);
      v73 = (*(v72 + 8))(v71, v72);
      if (!*(v73 + 16))
      {

        __swift_destroy_boxed_opaque_existential_0(&v268);
        goto LABEL_19;
      }

      v74 = v256;
      sub_22F13C46C(v73 + ((*(v257 + 80) + 32) & ~*(v257 + 80)), v256);

      v75 = v255;
      sub_22F13DBFC(v74, v255);
      v76 = *v259;
      (*v259)(v64, v75, v67);
      sub_22F13DBA0(v75);
      (*v66)(v64, 0, 1, v67);
      __swift_destroy_boxed_opaque_existential_0(&v268);
      if ((*v253)(v64, 1, v67) != 1)
      {
        v77 = v254;
        (*v242)(v254, v64, v67);
        v78 = v272;
        v79 = v273;
        __swift_project_boxed_opaque_existential_1(&v271, v272);
        (*(v79 + 32))(&v268, v78, v79);
        __swift_project_boxed_opaque_existential_1(&v268, v269);
        v80 = sub_22F740740();
        v82 = v81;
        v83 = v233;
        v76(v233, v77, v67);
        v84 = v264;
        v85 = swift_isUniquelyReferenced_nonNull_native();
        *&v266 = v84;
        sub_22F130CA4(v83, v80, v82, v85);

        v264 = v266;
        __swift_destroy_boxed_opaque_existential_0(&v268);
        v86 = v247;
        v76(v247, v77, v67);
        v87 = v251;
        v76(v251, v77, v67);
        v88 = sub_22F740B70();
        v89 = sub_22F7415F0();
        if (os_log_type_enabled(v88, v89))
        {
          v90 = swift_slowAlloc();
          v235 = swift_slowAlloc();
          *&v268 = v235;
          *v90 = v227;
          v91 = v86;
          v92 = v228;
          sub_22F740370();
          sub_22F1C33B0(&qword_2810A94B0, MEMORY[0x277D3C478], MEMORY[0x277D3C480]);
          v93 = v232;
          v94 = sub_22F742010();
          v96 = v95;
          (*v229)(v92, v93);
          v97 = *v237;
          (*v237)(v91, v262);
          v98 = sub_22F145F20(v94, v96, &v268);

          *(v90 + 4) = v98;
          *(v90 + 12) = 2080;
          v99 = v251;
          v100 = sub_22F740330();
          v102 = v101;
          v97(v99, v262);
          v103 = sub_22F145F20(v100, v102, &v268);
          v67 = v262;

          *(v90 + 14) = v103;
          _os_log_impl(&dword_22F0FC000, v88, v89, "Elected collection with type: %s, localIdentifier: %s", v90, 0x16u);
          v104 = v235;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v104, -1, -1);
          MEMORY[0x2319033A0](v90, -1, -1);

          v97(v254, v67);
        }

        else
        {

          v105 = *v237;
          (*v237)(v87, v67);
          v105(v86, v67);
          v105(v254, v67);
        }

        v64 = v248;
        v66 = v246;
        goto LABEL_21;
      }

LABEL_20:
      sub_22F120ADC(v64, &qword_27DAB2198, &unk_22F7789B8);
LABEL_21:
      __swift_destroy_boxed_opaque_existential_0(&v271);
      v65 += 40;
      if (!--v63)
      {

        v107 = v243;
        goto LABEL_32;
      }
    }

LABEL_19:
    (*v66)(v64, 1, 1, v67);
    goto LABEL_20;
  }

  v264 = MEMORY[0x277D84F98];
  v107 = v7;
LABEL_32:
  v108 = v263;
  v109 = *(v263 + 16);
  if (!v109)
  {
    v111 = MEMORY[0x277D84F90];
LABEL_44:
    v237 = *(v111 + 16);
    if (!v237)
    {
LABEL_97:

      return v264;
    }

    v118 = 0;
    v1 = 0;
    v236 = v111 + 32;
    v247 = (v223 + 56);
    v254 = (v258 + 4);
    v257 = v252 + 56;
    v256 = (v252 + 48);
    v259 = (v223 + 32);
    v255 = (v223 + 8);
    v248 = (v223 + 48);
    v229 = (v223 + 16);
    *&v227 = v224 + 1;
    v224 += 6;
    v119 = &qword_27DAB1308;
    *&v106 = 136315138;
    v223 = v106;
    *&v106 = 136315394;
    v222 = v106;
    v120 = v245;
    v121 = v250;
    v235 = v111;
    while (1)
    {
      if (v118 >= *(v111 + 16))
      {
        goto LABEL_101;
      }

      v251 = v118;
      sub_22F15C30C(v236 + 40 * v118, &v271);
      v246 = *v247;
      (v246)(v121, 1, 1, v262);
      v122 = sub_22F1BEFCC(&v271);
      v123 = v122;
      v124 = v122[2];
      if (v124)
      {
        v125 = sub_22F10B490(v122[2], 0);
        v126 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040) - 8);
        sub_22F11B0EC(&v268, v125 + ((*(v126 + 80) + 32) & ~*(v126 + 80)), v124, v123);
        v128 = v127;
        v129 = v268;

        sub_22F0FF590(v129);
        if (v128 != v124)
        {
          goto LABEL_102;
        }

        *&v268 = v125;
        sub_22F1C0D50(&v268);
        v107 = v243;
        v120 = v245;

        v130 = sub_22F1611EC(v268);

        v131 = sub_22F161424(v130);

        v119 = &qword_27DAB1308;
      }

      else
      {

        v131 = MEMORY[0x277D84F90];
      }

      v132 = *(v131 + 16);

      if (v132)
      {
        v133 = (*(v252 + 80) + 32) & ~*(v252 + 80);
        v134 = *(v252 + 72);
        v242 = v131;
        v253 = v133;
        v135 = v131 + v133;
        v136 = MEMORY[0x277D84F90];
        v263 = v134;
        do
        {
          v138 = v260;
          v139 = sub_22F13BA9C(v135, v260, v119, &qword_22F7789B0);
          MEMORY[0x28223BE20](v139);
          *(&v222 - 2) = v138;
          v140 = v119;
          v141 = v264;

          sub_22F1C0EB0(sub_22F1C3120, (&v222 - 2), v141);
          v143 = v142;

          if (v143)
          {
            sub_22F120ADC(v138, v140, &qword_22F7789B0);
            v119 = v140;
            v137 = v263;
          }

          else
          {
            sub_22F1207AC(v138, v261, v140, &qword_22F7789B0);
            v144 = swift_isUniquelyReferenced_nonNull_native();
            *&v268 = v136;
            v119 = v140;
            if ((v144 & 1) == 0)
            {
              sub_22F1467FC(0, *(v136 + 16) + 1, 1);
              v136 = v268;
            }

            v146 = *(v136 + 16);
            v145 = *(v136 + 24);
            if (v146 >= v145 >> 1)
            {
              sub_22F1467FC((v145 > 1), v146 + 1, 1);
              v136 = v268;
            }

            *(v136 + 16) = v146 + 1;
            v137 = v263;
            sub_22F1207AC(v261, v253 + v136 + v146 * v263, v140, &qword_22F7789B0);
          }

          v135 += v137;
          --v132;
        }

        while (v132);
        v107 = v243;
        v120 = v245;
        v131 = v242;
      }

      else
      {
        v136 = MEMORY[0x277D84F90];
      }

      v147 = v241;
      if (*(v136 + 16))
      {

        v131 = v136;
      }

      else
      {

        v148 = sub_22F740B70();
        v149 = sub_22F7415F0();
        if (os_log_type_enabled(v148, v149))
        {
          v150 = v107;
          v151 = v131;
          v152 = swift_slowAlloc();
          *v152 = 0;
          _os_log_impl(&dword_22F0FC000, v148, v149, "All collections has been elected. Reuse all collections as fallback", v152, 2u);
          v153 = v152;
          v131 = v151;
          v107 = v150;
          MEMORY[0x2319033A0](v153, -1, -1);
        }
      }

      v154 = 0;
      ++v251;
      v155 = *(v131 + 16);
      v156 = v131;
      if (!v155)
      {
LABEL_72:
        v157 = 1;
        v154 = v155;
        goto LABEL_75;
      }

      while (1)
      {
        if (v154 >= *(v131 + 16))
        {
          __break(1u);
          goto LABEL_99;
        }

        sub_22F13BA9C(v131 + ((*(v252 + 80) + 32) & ~*(v252 + 80)) + *(v252 + 72) * v154, v107, v119, &qword_22F7789B0);
        v157 = 0;
        ++v154;
LABEL_75:
        (*v257)(v107, v157, 1, v120);
        v158 = v107;
        v159 = v107;
        v160 = v258;
        sub_22F1207AC(v159, v258, &qword_27DAB2190, &qword_22F7789A8);
        if ((*v256)(v160, 1, v120) == 1)
        {
          break;
        }

        v161 = *(v254 + *(v120 + 48));
        v162 = *v259;
        v163 = v160;
        v164 = v262;
        (*v259)(v147, v163, v262);
        if (v161 < 0.33333)
        {
          v165 = v250;
          sub_22F120ADC(v250, &qword_27DAB2198, &unk_22F7789B8);
          v162(v165, v147, v164);
          (v246)(v165, 0, 1, v164);
          break;
        }

        (*v255)(v147, v164);
        v131 = v156;
        v107 = v158;
        if (v154 == v155)
        {
          goto LABEL_72;
        }
      }

      v166 = v240;
      sub_22F13BA9C(v250, v240, &qword_27DAB2198, &unk_22F7789B8);
      v167 = *v248;
      if ((*v248)(v166, 1, v262) == 1)
      {
        sub_22F120ADC(v166, &qword_27DAB2198, &unk_22F7789B8);
        if (v155)
        {
          if (!*(v156 + 16))
          {
            goto LABEL_103;
          }

          v168 = v226;
          sub_22F13BA9C(v156 + ((*(v252 + 80) + 32) & ~*(v252 + 80)), v226, v119, &qword_22F7789B0);

          v169 = v250;
          sub_22F120ADC(v250, &qword_27DAB2198, &unk_22F7789B8);
          v170 = v230;
          v171 = v168;
          v172 = v262;
          (*v259)(v230, v171, v262);
          v173 = 0;
        }

        else
        {
          v169 = v250;
          sub_22F120ADC(v250, &qword_27DAB2198, &unk_22F7789B8);

          v173 = 1;
          v170 = v230;
          v172 = v262;
        }

        (v246)(v170, v173, 1, v172);
        sub_22F1207AC(v170, v169, &qword_27DAB2198, &unk_22F7789B8);
      }

      else
      {

        sub_22F120ADC(v166, &qword_27DAB2198, &unk_22F7789B8);
        v169 = v250;
        v172 = v262;
      }

      v174 = v239;
      sub_22F13BA9C(v169, v239, &qword_27DAB2198, &unk_22F7789B8);
      if (v167(v174, 1, v172) == 1)
      {
        sub_22F120ADC(v174, &qword_27DAB2198, &unk_22F7789B8);
        sub_22F15C30C(&v271, &v268);
        v175 = sub_22F740B70();
        v176 = sub_22F7415E0();
        if (os_log_type_enabled(v175, v176))
        {
          LODWORD(v263) = v176;
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          v265 = v178;
          *v177 = v223;
          v179 = v269;
          v180 = v270;
          __swift_project_boxed_opaque_existential_1(&v268, v269);
          (*(v180 + 32))(&v266, v179, v180);
          __swift_project_boxed_opaque_existential_1(&v266, v267);
          v181 = v225;
          sub_22F740750();
          v182 = v181;
          v183 = v181;
          v184 = v232;
          if ((*v224)(v183, 1, v232) == 1)
          {
            __swift_destroy_boxed_opaque_existential_0(&v266);
            sub_22F120ADC(v182, &qword_27DAB2188, &qword_22F7789A0);
            v185 = 0xE400000000000000;
            v186 = 1701736302;
          }

          else
          {
            v186 = MEMORY[0x2318FFFE0]();
            v185 = v219;
            (*v227)(v182, v184);
            __swift_destroy_boxed_opaque_existential_0(&v266);
          }

          v107 = v158;
          __swift_destroy_boxed_opaque_existential_0(&v268);
          v220 = sub_22F145F20(v186, v185, &v265);

          *(v177 + 4) = v220;
          _os_log_impl(&dword_22F0FC000, v175, v263, "Could not find collection for source of category: %s", v177, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v178);
          MEMORY[0x2319033A0](v178, -1, -1);
          MEMORY[0x2319033A0](v177, -1, -1);

          v121 = v250;
          sub_22F120ADC(v250, &qword_27DAB2198, &unk_22F7789B8);
          v120 = v245;
          v111 = v235;
          v119 = &qword_27DAB1308;
          goto LABEL_48;
        }

        v121 = v250;
        sub_22F120ADC(v250, &qword_27DAB2198, &unk_22F7789B8);
        __swift_destroy_boxed_opaque_existential_0(&v268);
      }

      else
      {
        v187 = v238;
        (*v259)(v238, v174, v172);
        v188 = v272;
        v189 = v273;
        __swift_project_boxed_opaque_existential_1(&v271, v272);
        (*(v189 + 32))(&v268, v188, v189);
        __swift_project_boxed_opaque_existential_1(&v268, v269);
        v263 = sub_22F740740();
        v191 = v190;
        v192 = *v229;
        v193 = v233;
        v194 = v262;
        (*v229)(v233, v187, v262);
        v195 = v264;
        v196 = swift_isUniquelyReferenced_nonNull_native();
        *&v266 = v195;
        sub_22F130CA4(v193, v263, v191, v196);

        v264 = v266;
        __swift_destroy_boxed_opaque_existential_0(&v268);
        v197 = v231;
        v192(v231, v187, v194);
        v198 = v234;
        v192(v234, v187, v194);
        v199 = sub_22F740B70();
        v200 = sub_22F7415F0();
        if (os_log_type_enabled(v199, v200))
        {
          v201 = swift_slowAlloc();
          v263 = swift_slowAlloc();
          *&v268 = v263;
          *v201 = v222;
          v202 = v228;
          sub_22F740370();
          sub_22F1C33B0(&qword_2810A94B0, MEMORY[0x277D3C478], MEMORY[0x277D3C480]);
          LODWORD(v253) = v200;
          v203 = v232;
          v204 = sub_22F742010();
          v206 = v205;
          (*v227)(v202, v203);
          v207 = *v255;
          v208 = v262;
          (*v255)(v197, v262);
          v209 = sub_22F145F20(v204, v206, &v268);

          *(v201 + 4) = v209;
          *(v201 + 12) = 2080;
          v210 = v234;
          v211 = sub_22F740330();
          v213 = v212;
          v207(v210, v208);
          v214 = sub_22F145F20(v211, v213, &v268);

          *(v201 + 14) = v214;
          _os_log_impl(&dword_22F0FC000, v199, v253, "Elected collection with type: %s, localIdentifier: %s", v201, 0x16u);
          v215 = v263;
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v215, -1, -1);
          MEMORY[0x2319033A0](v201, -1, -1);

          v207(v238, v208);
          v120 = v245;
        }

        else
        {

          v216 = *v255;
          v217 = v198;
          v218 = v262;
          (*v255)(v217, v262);
          v216(v197, v218);
          v216(v238, v218);
        }

        v121 = v250;
        sub_22F120ADC(v250, &qword_27DAB2198, &unk_22F7789B8);
      }

      v111 = v235;
      v119 = &qword_27DAB1308;
      v107 = v158;
LABEL_48:
      __swift_destroy_boxed_opaque_existential_0(&v271);
      v118 = v251;
      if (v251 == v237)
      {
        goto LABEL_97;
      }
    }
  }

  v110 = 0;
  v1 = v263 + 32;
  v111 = MEMORY[0x277D84F90];
  while (v110 < *(v108 + 16))
  {
    sub_22F15C30C(v1, &v271);
    v112 = v272;
    v113 = v273;
    __swift_project_boxed_opaque_existential_1(&v271, v272);
    (*(v113 + 32))(&v268, v112, v113);
    __swift_project_boxed_opaque_existential_1(&v268, v269);
    sub_22F740730();
    if (v114)
    {

      __swift_destroy_boxed_opaque_existential_0(&v268);
      __swift_destroy_boxed_opaque_existential_0(&v271);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_0(&v268);
      sub_22F100260(&v271, &v268);
      v115 = swift_isUniquelyReferenced_nonNull_native();
      *&v266 = v111;
      if ((v115 & 1) == 0)
      {
        sub_22F14687C(0, *(v111 + 16) + 1, 1);
        v111 = v266;
      }

      v117 = *(v111 + 16);
      v116 = *(v111 + 24);
      if (v117 >= v116 >> 1)
      {
        sub_22F14687C((v116 > 1), v117 + 1, 1);
        v111 = v266;
      }

      *(v111 + 16) = v117 + 1;
      sub_22F100260(&v268, v111 + 40 * v117 + 32);
    }

    ++v110;
    v1 += 40;
    v108 = v263;
    if (v109 == v110)
    {
      goto LABEL_44;
    }
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);

  __break(1u);
  return result;
}

void *sub_22F1BEFCC(void *a1)
{
  v2 = sub_22F740390();
  v113 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v105 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v118 = &v105 - v6;
  v7 = type metadata accessor for TriggerResult(0);
  v8 = *(v7 - 8);
  v131 = v7;
  v132 = v8;
  MEMORY[0x28223BE20](v7);
  v126 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[3];
  v11 = a1[4];
  v112 = a1;
  v12 = __swift_project_boxed_opaque_existential_1(a1, v10);
  v13 = v11[2];
  v125 = v12;
  v129 = v11;
  v130 = v10;
  v127 = v13;
  v128 = v11 + 2;
  v14 = (v13)(v10, v11);
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + 32;
    v17 = MEMORY[0x277D84F90];
    do
    {
      sub_22F15C30C(v16, &v134);
      v18 = v135;
      v19 = v136;
      __swift_project_boxed_opaque_existential_1(&v134, v135);
      v20 = (*(v19 + 32))(v18, v19);
      __swift_destroy_boxed_opaque_existential_0(&v134);
      if (v20)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_22F13ED1C(0, v17[2] + 1, 1, v17);
        }

        v22 = v17[2];
        v21 = v17[3];
        if (v22 >= v21 >> 1)
        {
          v17 = sub_22F13ED1C((v21 > 1), v22 + 1, 1, v17);
        }

        v17[2] = v22 + 1;
        v17[v22 + 4] = v20;
      }

      v16 += 40;
      --v15;
    }

    while (v15);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  v23 = v17[2];
  v117 = v4;
  if (!v23)
  {
    v32 = v2;
    v25 = MEMORY[0x277D84F90];
LABEL_30:
    v123 = v25;

    v36 = (v127)(v130, v129);
    v108 = *(v36 + 16);
    if (!v108)
    {

      v103 = 0;
      v102 = 0;
      v39 = MEMORY[0x277D84F98];
LABEL_69:

      sub_22F107E14(v103, 0);
      sub_22F107E14(v102, 0);
      return v39;
    }

    v120 = 0;
    v119 = 0;
    v38 = 0;
    v129 = 0;
    v116 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;
    v107 = v36 + 32;
    v127 = (v113 + 16);
    v121 = (v113 + 8);
    v39 = MEMORY[0x277D84F98];
    *&v37 = 136315394;
    v111 = v37;
    v40 = v112;
    v41 = v118;
    v106 = v36;
    v122 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate;
    v110 = v32;
    while (1)
    {
      if (v38 >= *(v36 + 16))
      {
        goto LABEL_78;
      }

      v109 = v38;
      sub_22F15C30C(v107 + 40 * v38, &v134);
      v42 = v135;
      v43 = v136;
      __swift_project_boxed_opaque_existential_1(&v134, v135);
      v44 = (*(v43 + 8))(v42, v43);
      v45 = v44;
      v46 = *(v44 + 16);
      if (v46)
      {
        break;
      }

LABEL_32:
      v38 = v109 + 1;

      __swift_destroy_boxed_opaque_existential_0(&v134);
      v36 = v106;
      if (v38 == v108)
      {

        v102 = v119;
        v103 = v120;
        goto LABEL_69;
      }
    }

    v47 = 0;
    v130 = v44 + ((*(v132 + 80) + 32) & ~*(v132 + 80));
    v48 = v126;
    v124 = v46;
    v125 = v44;
    while (1)
    {
      if (v47 >= *(v45 + 16))
      {
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      sub_22F13C46C(v130 + *(v132 + 72) * v47, v48);
      if (sub_22F73F070())
      {
        break;
      }

      sub_22F13DBA0(v48);
LABEL_37:
      if (v46 == ++v47)
      {
        goto LABEL_32;
      }
    }

    v128 = v39;
    v49 = *v127;
    (*v127)(v41, v48, v32);
    v50 = v135;
    v51 = v136;
    __swift_project_boxed_opaque_existential_1(&v134, v135);
    (*(v51 + 16))(v133, v50, v51);
    v52 = flt_22F778AC4[SLOBYTE(v133[0])];
    v53 = v40[3];
    v54 = v40[4];
    __swift_project_boxed_opaque_existential_1(v40, v53);
    v55 = (*(v54 + 24))(v53, v54);
    v56 = v129;
    sub_22F1C33F8(v41, v55, v123);
    if (v56)
    {

      v58 = v41;
      v59 = v117;
      v49(v117, v58, v32);
      v60 = v56;
      v61 = sub_22F740B70();
      v62 = sub_22F7415E0();

      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v115 = v61;
        v64 = v63;
        v114 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v133[0] = v129;
        *v64 = v111;
        v65 = sub_22F740330();
        v67 = v66;
        v68 = *v121;
        (*v121)(v59, v32);
        v69 = sub_22F145F20(v65, v67, v133);
        v40 = v112;

        *(v64 + 4) = v69;
        *(v64 + 12) = 2112;
        v70 = v56;
        v71 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v71;
        v72 = v114;
        *v114 = v71;
        v73 = v115;
        _os_log_impl(&dword_22F0FC000, v115, v62, "Failed to compute scores for collection %s - %@", v64, 0x16u);
        sub_22F120ADC(v72, &qword_27DAB07D0, &qword_22F779400);
        MEMORY[0x2319033A0](v72, -1, -1);
        v74 = v129;
        __swift_destroy_boxed_opaque_existential_0(v129);
        MEMORY[0x2319033A0](v74, -1, -1);
        MEMORY[0x2319033A0](v64, -1, -1);

        v41 = v118;
        v32 = v110;
        v68(v118, v110);
      }

      else
      {

        v85 = *v121;
        (*v121)(v59, v32);
        v41 = v118;
        v85(v118, v32);
      }

      v48 = v126;
      sub_22F13DBA0(v126);
      v129 = 0;
      v39 = v128;
      goto LABEL_62;
    }

    v75 = v57;

    sub_22F107E14(v120, 0);
    v76 = v128;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v76;
    v78 = sub_22F122DB8(v41);
    v80 = *(v76 + 16);
    v81 = (v79 & 1) == 0;
    v34 = __OFADD__(v80, v81);
    v82 = v80 + v81;
    if (v34)
    {
      goto LABEL_71;
    }

    v83 = v79;
    v129 = 0;
    if (*(v76 + 24) >= v82)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v100 = v78;
        sub_22F134E5C();
        v78 = v100;
        v39 = v133[0];
        if (v83)
        {
          goto LABEL_53;
        }

        goto LABEL_51;
      }
    }

    else
    {
      sub_22F126CA4(v82, isUniquelyReferenced_nonNull_native);
      v78 = sub_22F122DB8(v41);
      if ((v83 & 1) != (v84 & 1))
      {
        goto LABEL_81;
      }
    }

    v39 = v133[0];
    if (v83)
    {
      goto LABEL_53;
    }

LABEL_51:
    v39[(v78 >> 6) + 8] |= 1 << v78;
    v86 = v78;
    v49(v39[6] + *(v113 + 72) * v78, v41, v32);
    *(v39[7] + 8 * v86) = 0;
    v87 = v39[2];
    v34 = __OFADD__(v87, 1);
    v88 = v87 + 1;
    if (v34)
    {
      goto LABEL_73;
    }

    v78 = v86;
    v39[2] = v88;
LABEL_53:
    *(v39[7] + 8 * v78) = v52 + *(v39[7] + 8 * v78);
    sub_22F107E14(v119, 0);
    v89 = swift_isUniquelyReferenced_nonNull_native();
    v133[0] = v39;
    v90 = sub_22F122DB8(v41);
    v92 = v39[2];
    v93 = (v91 & 1) == 0;
    v34 = __OFADD__(v92, v93);
    v94 = v92 + v93;
    if (v34)
    {
      goto LABEL_72;
    }

    v95 = v91;
    if (v39[3] >= v94)
    {
      if ((v89 & 1) == 0)
      {
        v101 = v90;
        sub_22F134E5C();
        v90 = v101;
        v39 = v133[0];
        v48 = v126;
        if ((v95 & 1) == 0)
        {
          goto LABEL_59;
        }

        goto LABEL_61;
      }
    }

    else
    {
      sub_22F126CA4(v94, v89);
      v39 = v133[0];
      v90 = sub_22F122DB8(v41);
      if ((v95 & 1) != (v96 & 1))
      {
        goto LABEL_81;
      }
    }

    v48 = v126;
    if ((v95 & 1) == 0)
    {
LABEL_59:
      v39[(v90 >> 6) + 8] |= 1 << v90;
      v97 = v90;
      v49(v39[6] + *(v113 + 72) * v90, v41, v32);
      *(v39[7] + 8 * v97) = 0;
      v98 = v39[2];
      v34 = __OFADD__(v98, 1);
      v99 = v98 + 1;
      if (v34)
      {
        goto LABEL_74;
      }

      v90 = v97;
      v39[2] = v99;
    }

LABEL_61:
    *(v39[7] + 8 * v90 + 4) = v75;
    (*v121)(v41, v32);
    sub_22F13DBA0(v48);
    v119 = sub_22F1C39C4;
    v120 = sub_22F1C39C4;
LABEL_62:
    v46 = v124;
    v45 = v125;
    goto LABEL_37;
  }

  v24 = 0;
  v25 = MEMORY[0x277D84F90];
  while (1)
  {
    if (v24 >= v17[2])
    {
      goto LABEL_75;
    }

    v26 = v17[v24 + 4];
    v27 = *(v26 + 16);
    v28 = v25[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      break;
    }

    v30 = swift_isUniquelyReferenced_nonNull_native();
    if (!v30 || v29 > v25[3] >> 1)
    {
      if (v28 <= v29)
      {
        v31 = v28 + v27;
      }

      else
      {
        v31 = v28;
      }

      v25 = sub_22F13DB78(v30, v31, 1, v25);
    }

    v32 = v2;
    if (*(v26 + 16))
    {
      if ((v25[3] >> 1) - v25[2] < v27)
      {
        goto LABEL_79;
      }

      swift_arrayInitWithCopy();

      if (v27)
      {
        v33 = v25[2];
        v34 = __OFADD__(v33, v27);
        v35 = v33 + v27;
        if (v34)
        {
          goto LABEL_80;
        }

        v25[2] = v35;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_77;
      }
    }

    if (v23 == ++v24)
    {
      goto LABEL_30;
    }
  }

LABEL_76:
  __break(1u);
LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t CollectionElector.Error.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

uint64_t CollectionElector.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate;
  v4 = sub_22F73F690();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t CollectionElector.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC11PhotosGraph17CollectionElector_presentDate;
  v4 = sub_22F73F690();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t CollectionElector.electAssetsForMagicSlotAndPersistAsSuggestions(collection:curationRecipe:photoLibrary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_22F740460();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_22F740790();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v7 = sub_22F73FF30();
  v4[13] = v7;
  v4[14] = *(v7 - 8);
  v4[15] = swift_task_alloc();
  v8 = sub_22F73FF50();
  v4[16] = v8;
  v4[17] = *(v8 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2198, &unk_22F7789B8);
  v4[20] = swift_task_alloc();
  v9 = sub_22F740390();
  v4[21] = v9;
  v4[22] = *(v9 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F1C00DC, 0, 0);
}

uint64_t sub_22F1C00DC()
{
  v105 = v0;
  v1 = v0[21];
  v2 = v0[22];
  v3 = v0[20];
  sub_22F13BA9C(v0[2], v3, &qword_27DAB2198, &unk_22F7789B8);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_22F120ADC(v0[20], &qword_27DAB2198, &unk_22F7789B8);
    v4 = MEMORY[0x277D84F90];
LABEL_11:
    v0[28] = v4;
    v70 = v0[4];
    sub_22F740310();
    swift_allocObject();
    v71 = v70;
    v0[29] = sub_22F740300();
    v103 = (*MEMORY[0x277D3C2D8] + MEMORY[0x277D3C2D8]);
    v72 = swift_task_alloc();
    v0[30] = v72;
    *v72 = v0;
    v72[1] = sub_22F1C09FC;

    return v103(v4);
  }

  v5 = v0[4];
  (*(v0[22] + 32))(v0[27], v0[20], v0[21]);
  v6 = sub_22F740340();
  v7 = [v5 librarySpecificFetchOptions];
  v8 = sub_22F73FFE0();

  v9 = [v8 count];
  v10 = v0[27];
  v11 = v0[21];
  v12 = v0[16];
  v13 = v0[17];
  if (v9)
  {
    v14 = v0[25];
    v15 = v0[12];
    v16 = v0[10];
    v92 = v0[9];
    v95 = v0[11];
    v17 = v0[22];
    (*(v13 + 16))(v0[18], v0[3], v0[16]);
    v98 = *(v17 + 16);
    (v98)(v14, v10, v11);
    v18 = v8;
    sub_22F740780();
    (*(v16 + 16))(v95, v15, v92);
    v4 = sub_22F13ED40(0, 1, 1, MEMORY[0x277D84F90]);
    v20 = v4[2];
    v19 = v4[3];
    if (v20 >= v19 >> 1)
    {
      v4 = sub_22F13ED40((v19 > 1), v20 + 1, 1, v4);
    }

    v21 = v0[27];
    v23 = v0[23];
    v22 = v0[24];
    v24 = v0[21];
    v26 = v0[10];
    v25 = v0[11];
    v27 = v0[9];
    v4[2] = v20 + 1;
    (*(v26 + 32))(v4 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v20, v25, v27);
    (v98)(v22, v21, v24);
    (v98)(v23, v21, v24);
    v28 = sub_22F740B70();
    v96 = sub_22F7415F0();
    v29 = os_log_type_enabled(v28, v96);
    v30 = v0[27];
    v31 = v0[24];
    v32 = v0[21];
    v33 = v0[22];
    v34 = v0[12];
    v35 = v0[10];
    v99 = v0[23];
    v101 = v0[9];
    if (v29)
    {
      v93 = v0[10];
      v81 = v0[21];
      v36 = v0[7];
      v37 = v0[8];
      v88 = v18;
      v38 = v0[6];
      v90 = v0[27];
      v39 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v104 = v86;
      *v39 = 136315394;
      log = v28;
      sub_22F740370();
      sub_22F1C33B0(&qword_2810A94B0, MEMORY[0x277D3C478], MEMORY[0x277D3C480]);
      v40 = sub_22F742010();
      v84 = v34;
      v42 = v41;
      (*(v36 + 8))(v37, v38);
      v43 = *(v33 + 8);
      v43(v31, v81);
      v44 = sub_22F145F20(v40, v42, &v104);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = sub_22F740330();
      v47 = v46;
      v43(v99, v81);
      v48 = sub_22F145F20(v45, v47, &v104);

      *(v39 + 14) = v48;
      _os_log_impl(&dword_22F0FC000, log, v96, "Suggestion Recipe created for magicSlot with type: %s, localIdentifier: %s", v39, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2319033A0](v86, -1, -1);
      MEMORY[0x2319033A0](v39, -1, -1);

      (*(v93 + 8))(v84, v101);
      v43(v90, v81);
    }

    else
    {

      v69 = *(v33 + 8);
      v69(v99, v32);
      v69(v31, v32);
      (*(v35 + 8))(v34, v101);
      v69(v30, v32);
    }

    goto LABEL_11;
  }

  v102 = v8;
  v49 = v0[19];
  v50 = v0[3];
  v100 = *(v0[22] + 16);
  (v100)(v0[26], v10, v11);
  (*(v13 + 16))(v49, v50, v12);
  v51 = sub_22F740B70();
  v52 = sub_22F7415E0();
  v53 = os_log_type_enabled(v51, v52);
  v54 = v0[26];
  if (v53)
  {
    v55 = v0[25];
    v56 = v0[21];
    v57 = v0[22];
    v89 = v0[17];
    v91 = v0[16];
    v97 = v52;
    v58 = v0[15];
    loga = v0[19];
    v85 = v0[14];
    v87 = v0[13];
    v59 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v104 = v94;
    *v59 = 136315394;
    (v100)(v55, v54, v56);
    v60 = sub_22F740E90();
    v62 = v61;
    v63 = *(v57 + 8);
    v63(v54, v56);
    v64 = sub_22F145F20(v60, v62, &v104);

    *(v59 + 4) = v64;
    *(v59 + 12) = 2080;
    sub_22F73FF40();
    v65 = sub_22F73FF20();
    v67 = v66;
    (*(v85 + 8))(v58, v87);
    (*(v89 + 8))(loga, v91);
    v68 = sub_22F145F20(v65, v67, &v104);

    *(v59 + 14) = v68;
    _os_log_impl(&dword_22F0FC000, v51, v97, "No key asset found for %s. Suggestion will not be persisted for magic slot type %s", v59, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v94, -1, -1);
    MEMORY[0x2319033A0](v59, -1, -1);
  }

  else
  {
    v74 = v0[21];
    v75 = v0[22];
    v76 = v0[19];
    v78 = v0[16];
    v77 = v0[17];

    (*(v77 + 8))(v76, v78);
    v63 = *(v75 + 8);
    v63(v54, v74);
  }

  v63(v0[27], v0[21]);

  v79 = v0[1];
  v80 = MEMORY[0x277D84F90];

  return v79(v80);
}

uint64_t sub_22F1C09FC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 248) = v1;

  if (v1)
  {
    v5 = sub_22F1C0C3C;
  }

  else
  {

    *(v4 + 256) = a1;
    v5 = sub_22F1C0B2C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22F1C0B2C()
{

  v3 = *(v0 + 256);

  v1 = *(v0 + 8);

  return v1(v3);
}

uint64_t sub_22F1C0C3C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22F1C0D50(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0710, &qword_22F772040) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F6530(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F1C1348(v5);
  *a1 = v3;
}

uint64_t sub_22F1C0E04(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

void sub_22F1C0EB0(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v22 = a1;
  v23 = sub_22F740390();
  MEMORY[0x28223BE20](v23);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  v20 = v5 + 16;
  v21 = v5;
  v19 = (v5 + 8);
  v24 = a3;

  v13 = 0;
  while (v11)
  {
    v14 = v23;
LABEL_11:
    (*(v21 + 16))(v7, *(v24 + 56) + *(v21 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v14);
    v16 = v22(v7);
    if (v3)
    {
      (*v19)(v7, v14);

      return;
    }

    v17 = v16;
    v11 &= v11 - 1;
    (*v19)(v7, v14);
    if (v17)
    {
LABEL_13:

      return;
    }
  }

  v14 = v23;
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_13;
    }

    v11 = *(v8 + 8 * v15);
    ++v13;
    if (v11)
    {
      v13 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22F1C10C8(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v12 = *v6;
      v8 = v12;
      v9 = a1(&v12);

      if (v3)
      {
        break;
      }

      v10 = v7-- == 0;
      ++v6;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22F1C1170(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x2319016F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22F741A00();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t sub_22F1C1298(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}