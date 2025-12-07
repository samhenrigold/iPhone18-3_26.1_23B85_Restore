void (*sub_225BDF2F4(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_225BDF5EC(v7);
  v7[9] = sub_225BDF400(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_225BDF3A0;
}

void sub_225BDF3A0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_225BDF400(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = sub_2259F1F14(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_225A45A7C();
      v13 = v21;
      goto LABEL_11;
    }

    sub_225A43358(v18, a4 & 1);
    v13 = sub_2259F1F14(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_225CCFAC4();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return sub_225BDF558;
}

void sub_225BDF558(uint64_t **a1)
{
  v1 = *a1;
  v2 = **a1;
  v3 = *(*a1 + 40);
  if (v2)
  {
    v4 = v1[4];
    v5 = *v1[3];
    if (v3)
    {
      *(v5[7] + 8 * v4) = v2;
    }

    else
    {
      sub_225A9FA20(v4, v1[1], v1[2], v2, v5);
    }
  }

  else if ((*a1)[5])
  {
    sub_225B2BD80(v1[4], *v1[3]);
  }

  free(v1);
}

uint64_t (*sub_225BDF5EC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_225BDF614;
}

uint64_t sub_225BDF638@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_225BDF6C4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225BDF70C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *(result + 40) = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntensityPoint(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for IntensityPoint(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

unint64_t sub_225BDF7CC()
{
  result = qword_27D73FC08;
  if (!qword_27D73FC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FC08);
  }

  return result;
}

id sub_225BDF820()
{
  result = sub_225BDF840();
  qword_281059A80 = result;
  return result;
}

id sub_225BDF840()
{
  v0 = sub_225CCCDA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  MEMORY[0x28223BE20](v4);
  v6 = v22 - v5;
  v7 = sub_225CCCEA4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = v22 - v12;
  if (qword_27D739FB0 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v4, qword_27D73FC10);
  sub_225A33B7C(v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_225B6CC84(v6);
    v15 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v16 = sub_225CCE444();
    v17 = [v15 initWithPath_];
  }

  else
  {
    (*(v8 + 32))(v13, v6, v7);
    v22[0] = 0xD000000000000047;
    v22[1] = 0x8000000225D23B80;
    (*(v1 + 104))(v3, *MEMORY[0x277CC91D8], v0);
    sub_2259D8654();
    sub_225CCCE94();
    (*(v1 + 8))(v3, v0);
    v18 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v19 = sub_225CCCDF4();
    v17 = [v18 initWithURL_];

    v20 = *(v8 + 8);
    v20(v11, v7);
    v20(v13, v7);
  }

  return v17;
}

uint64_t static NSBundle.internalSettings.getter()
{
  if (qword_281059A78 != -1)
  {
    swift_once();
  }

  v0 = qword_281059A80;
  v1 = qword_281059A80;
  return v0;
}

uint64_t sub_225BDFC08()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73E090, &qword_225CD8ED0);
  __swift_allocate_value_buffer(v0, qword_27D73FC10);
  v1 = __swift_project_value_buffer(v0, qword_27D73FC10);
  v2 = sub_225CCCEA4();
  v3 = *(*(v2 - 8) + 56);

  return v3(v1, 1, 1, v2);
}

void sub_225BDFCA8()
{
  v0 = MEMORY[0x22AA6EE60]();
  sub_225BDFD68(&v1);
  objc_autoreleasePoolPop(v0);
  qword_28105B700 = v1;
}

uint64_t static DIPFeatures.sharedInstance.getter(uint64_t a1, uint64_t a2)
{
  if (qword_28105B6F8 != -1)
  {
    swift_once();
  }

  return swift_unknownObjectRetain();
}

void sub_225BDFD68(uint64_t *a1@<X8>)
{
  v76 = sub_225CCD954();
  v3 = *(v76 - 8);
  v4 = MEMORY[0x28223BE20](v76);
  v6 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v67 - v8;
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v67 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v67 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v67 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v67 - v19;
  if (qword_281059A78 != -1)
  {
    swift_once();
  }

  if (!qword_281059A80)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v41 = off_28105B918;
    v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v43));
    v44 = v76;
    (*(v3 + 16))(v20, &v41[v42], v76);
    os_unfair_lock_unlock(&v41[v43]);
    v45 = sub_225CCD934();
    v46 = sub_225CCED34();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_2259A7000, v45, v46, "no settings bundle created", v47, 2u);
      MEMORY[0x22AA6F950](v47, -1, -1);
    }

    (*(v3 + 8))(v20, v44);
    goto LABEL_26;
  }

  v75 = qword_281059A80;
  if (([v75 load] & 1) == 0)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v48 = off_28105B918;
    v49 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v50 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v50));
    v51 = v76;
    (*(v3 + 16))(v6, &v48[v49], v76);
    os_unfair_lock_unlock(&v48[v50]);
    v52 = sub_225CCD934();
    v53 = sub_225CCED34();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_2259A7000, v52, v53, "failed loading Features", v54, 2u);
      MEMORY[0x22AA6F950](v54, -1, -1);
    }

    (*(v3 + 8))(v6, v51);
LABEL_26:
    v32 = 0;
    goto LABEL_35;
  }

  v68 = v9;
  v73 = a1;
  v74 = v1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v21 = off_28105B918;
  v22 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v23));
  v69 = *(v3 + 16);
  v70 = v22;
  v69(v18, &v21[v22], v76);
  v71 = v23;
  os_unfair_lock_unlock(&v21[v23]);
  v24 = sub_225CCD934();
  v25 = sub_225CCED34();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&dword_2259A7000, v24, v25, "successfully loaded Settings Bundle from Preferences", v26, 2u);
    MEMORY[0x22AA6F950](v26, -1, -1);
  }

  v27 = *(v3 + 8);
  v28 = v76;
  v72 = v3 + 8;
  v27(v18, v76);
  v29 = sub_225CCE444();
  v30 = [v75 classNamed_];

  if (!v30)
  {
    v55 = v71;
    os_unfair_lock_lock(&v21[v71]);
    v69(v15, &v21[v70], v28);
    os_unfair_lock_unlock(&v21[v55]);
    v56 = sub_225CCD934();
    v57 = sub_225CCECF4();
    v58 = v28;
    if (os_log_type_enabled(v56, v57))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_2259A7000, v56, v57, "could not find class for Features", v59, 2u);
      MEMORY[0x22AA6F950](v59, -1, -1);
    }

    v60 = v15;
    v61 = v58;
    goto LABEL_33;
  }

  swift_getObjCClassMetadata();
  sub_225BE069C();
  if (!swift_dynamicCastMetatype())
  {
    v62 = v71;
    os_unfair_lock_lock(&v21[v71]);
    v63 = v76;
    v69(v12, &v21[v70], v76);
    os_unfair_lock_unlock(&v21[v62]);
    v64 = sub_225CCD934();
    v65 = sub_225CCED34();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      *v66 = 0;
      _os_log_impl(&dword_2259A7000, v64, v65, "Unable to instantiate class for Features", v66, 2u);
      MEMORY[0x22AA6F950](v66, -1, -1);
    }

    v60 = v12;
    v61 = v63;
LABEL_33:
    v27(v60, v61);
    v32 = 0;
LABEL_34:
    a1 = v73;
    goto LABEL_35;
  }

  v31 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v77 = &unk_283927988;
  v32 = swift_dynamicCastObjCProtocolConditional();
  if (!v32)
  {

    goto LABEL_34;
  }

  v33 = v71;
  os_unfair_lock_lock(&v21[v71]);
  v34 = v68;
  v35 = v76;
  v69(v68, &v21[v70], v76);
  os_unfair_lock_unlock(&v21[v33]);
  v36 = sub_225CCD934();
  v37 = sub_225CCED34();
  if (!os_log_type_enabled(v36, v37))
  {

    v27(v34, v35);
    goto LABEL_34;
  }

  v38 = swift_slowAlloc();
  v39 = swift_slowAlloc();
  *v38 = 138543362;
  a1 = v73;
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  v40 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  *(v38 + 4) = v40;
  *v39 = v40;
  _os_log_impl(&dword_2259A7000, v36, v37, "Features i = %{public}@", v38, 0xCu);
  sub_225BE06E8(v39);
  MEMORY[0x22AA6F950](v39, -1, -1);
  MEMORY[0x22AA6F950](v38, -1, -1);

  v27(v68, v35);
LABEL_35:
  *a1 = v32;
}

unint64_t sub_225BE069C()
{
  result = qword_281059A68;
  if (!qword_281059A68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059A68);
  }

  return result;
}

uint64_t sub_225BE06E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FC90, &unk_225CFA710);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void DIPFeaturesProtocol.triggerTapToRadar(forContext:title:error:attachmentFilePaths:deleteOnAttach:description:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, char a7, uint64_t a8, uint64_t a9)
{
  v12 = sub_225CCE444();
  v13 = sub_225CCE444();
  if (a5)
  {
    a5 = sub_225CCCCB4();
  }

  v14 = sub_225CCE7F4();
  if (a9)
  {
    v15 = sub_225CCE444();
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;
  [v9 triggerTapToRadarForContext:v12 title:v13 error:a5 attachmentFilePaths:v14 deleteOnAttach:a7 & 1 description:?];
}

const char *CoreIDVFeatureFlag.feature.getter()
{
  v1 = "unittesting";
  v2 = "MobileDocumentReaderMACAuthentication";
  if (*v0 != 2)
  {
    v2 = "rac";
  }

  if (*v0)
  {
    v1 = "ISO18013_5SecondEditionSupport";
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

uint64_t CoreIDVFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

Swift::Bool __swiftcall FeatureFlagProvider.isEnabled(_:)(CoreIDVShared::CoreIDVFeatureFlag a1)
{
  v1 = a1;
  v2 = sub_225CCD954();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v25[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v1 > 1u)
  {
    if (*v1 == 2)
    {
      v6 = "MobileDocumentReaderMACAuthentication";
      v7 = 37;
    }

    else
    {
      v6 = "rac";
      v7 = 3;
    }
  }

  else if (*v1)
  {
    v6 = "ISO18013_5SecondEditionSupport";
    v7 = 30;
  }

  else
  {
    v6 = "unittesting";
    v7 = 11;
  }

  v25[3] = &type metadata for FeatureFlag;
  v25[4] = sub_225BE0D50();
  v8 = swift_allocObject();
  v25[0] = v8;
  *(v8 + 16) = "CoreIDV";
  *(v8 + 24) = 7;
  *(v8 + 32) = 2;
  *(v8 + 40) = v6;
  *(v8 + 48) = v7;
  *(v8 + 56) = 2;
  v9 = sub_225CCD4D4();
  __swift_destroy_boxed_opaque_existential_0(v25);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  (*(v3 + 16))(v5, &v10[v11], v2);
  os_unfair_lock_unlock(&v10[v12]);
  v13 = sub_225CCD934();
  v14 = sub_225CCED04();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v25[0] = v16;
    *v15 = 136315394;
    v17 = sub_225CCF234();
    v19 = sub_2259BE198(v17, v18, v25);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    if (v9)
    {
      v20 = 0x64656C62616E65;
    }

    else
    {
      v20 = 0x62616E6520746F6ELL;
    }

    if (v9)
    {
      v21 = 0xE700000000000000;
    }

    else
    {
      v21 = 0xEB0000000064656CLL;
    }

    v22 = sub_2259BE198(v20, v21, v25);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_2259A7000, v13, v14, "Feature flag %s is %s", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA6F950](v16, -1, -1);
    MEMORY[0x22AA6F950](v15, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v9 & 1;
}

unint64_t sub_225BE0D50()
{
  result = qword_28105B6E8;
  if (!qword_28105B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28105B6E8);
  }

  return result;
}

unint64_t sub_225BE0DA8()
{
  result = qword_27D73FCA0;
  if (!qword_27D73FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FCA0);
  }

  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_225BE0E44(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_225BE0E64(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 41) = v3;
  return result;
}

Swift::Bool __swiftcall NSUserDefaults.internalBool(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 != 1)
  {
    return 0;
  }

  v2 = sub_225CCE444();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_225BE0F54(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B180, &qword_225CD7CD8);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_2259CB810(*(a1 + 56) + 32 * v12, v29);
        *&v28 = v14;
        *(&v28 + 1) = v15;
        v26[2] = v28;
        v27[0] = v29[0];
        v27[1] = v29[1];
        v16 = v28;
        sub_2259B9624(v27, &v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AF98, &qword_225CD76B0);
        swift_dynamicCast();
        sub_2259B9624(&v23, v25);
        sub_2259B9624(v25, v26);
        sub_2259B9624(v26, &v24);
        v17 = sub_2259F18D4(v16, *(&v16 + 1));
        if (v18)
        {
          *(v2[6] + 16 * v17) = v16;
          v8 = v17;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_0(v9);
          sub_2259B9624(&v24, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v17;
          *(v2[6] + 16 * v17) = v16;
          sub_2259B9624(&v24, (v2[7] + 32 * v17));
          v19 = v2[2];
          v20 = __OFADD__(v19, 1);
          v21 = v19 + 1;
          if (v20)
          {
            goto LABEL_21;
          }

          v2[2] = v21;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_225BE11E0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970, &qword_225CECAA0);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_2259CB810(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_2259B9624(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_2259B9624(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_2259B9624(v31, v32);
    v16 = sub_225CCF174();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_2259B9624(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_225BE14A8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCA8, &unk_225CF9820);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v10 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v11 = v10 | (v9 << 6);
        v12 = (*(a1 + 48) + 16 * v11);
        v13 = *v12;
        v14 = v12[1];
        sub_2259CB810(*(a1 + 56) + 32 * v11, v32);
        *&v31 = v13;
        *(&v31 + 1) = v14;
        v29 = v31;
        v30[0] = v32[0];
        v30[1] = v32[1];
        v15 = v31;
        sub_2259B9624(v30, &v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
        swift_dynamicCast();
        v27 = v25;
        v28 = v26;
        v24 = v25;
        v25 = v26;
        v16 = sub_2259F18D4(v15, *(&v15 + 1));
        if (v17)
        {
          *(v2[6] + 16 * v16) = v15;
          v8 = v16;

          sub_225BE2FC8(&v24, v2[7] + 32 * v8);
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v16;
          *(v2[6] + 16 * v16) = v15;
          v18 = (v2[7] + 32 * v16);
          v19 = v25;
          *v18 = v24;
          v18[1] = v19;
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v7 = v9;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v9 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_225BE171C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970, &qword_225CECAA0);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = (*(a1 + 48) + ((v8 << 10) | (16 * __clz(__rbit64(v5)))));
    v13 = v12[1];
    *&v30[0] = *v12;
    *(&v30[0] + 1) = v13;

    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_2259B9624(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_2259B9624(v29, v30);
    v14 = sub_225CCF174();
    v15 = -1 << *(v2 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v9 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v22;
    *(v10 + 16) = v23;
    *(v10 + 32) = v24;
    sub_2259B9624(v30, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_225BE19E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73D970, &qword_225CECAA0);
    v2 = sub_225CCF584();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = *(*(a1 + 48) + 8 * v12);
    sub_2259CB810(*(a1 + 56) + 32 * v12, v34 + 8);
    *&v34[0] = v13;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v13;
    type metadata accessor for CFString(0);
    v14 = v13;
    swift_dynamicCast();
    sub_2259B9624((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_2259B9624(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_2259B9624(v30, v31);
    v15 = sub_225CCF174();
    v16 = -1 << *(v2 + 32);
    v17 = v15 & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*(v7 + 8 * (v17 >> 6))) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *(v7 + 8 * v18);
        if (v22 != -1)
        {
          v9 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v17) & ~*(v7 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v23;
    *(v10 + 16) = v24;
    *(v10 + 32) = v25;
    sub_2259B9624(v31, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

Swift::Bool __swiftcall isInternalBuild()()
{
  v0 = sub_225CCD954();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = os_variant_allows_internal_security_policies();
  if (v4)
  {
    v5 = v4;
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v6 = off_28105B918;
    v7 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v8 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v8));
    (*(v1 + 16))(v3, &v6[v7], v0);
    os_unfair_lock_unlock(&v6[v8]);
    v9 = sub_225CCD934();
    v10 = sub_225CCED04();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_2259A7000, v9, v10, "Internal build detected", v11, 2u);
      MEMORY[0x22AA6F950](v11, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    LOBYTE(v4) = v5;
  }

  return v4;
}

BOOL sub_225BE1EA8()
{
  result = isInternalBuild()();
  byte_28105B9F8 = result;
  return result;
}

uint64_t _isInternalBuild.getter()
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  return byte_28105B9F8;
}

Swift::String_optional __swiftcall experimentalGroup()()
{
  if (!isInternalBuild()())
  {
    goto LABEL_6;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = sub_225CCE444();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = sub_225CCE444();
  v5 = [v3 stringForKey_];

  if (!v5)
  {

LABEL_6:
    v10 = 0;
    v9 = 0;
    goto LABEL_7;
  }

  v6 = sub_225CCE474();
  v8 = v7;

  v9 = v8;
  v10 = v6;
LABEL_7:
  result.value._object = v9;
  result.value._countAndFlagsBits = v10;
  return result;
}

Swift::String_optional __swiftcall NSUserDefaults.internalString(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringForKey_], v2, v3))
  {
    v4 = sub_225CCE474();
    v6 = v5;

    v7 = v6;
    v8 = v4;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  result.value._object = v7;
  result.value._countAndFlagsBits = v8;
  return result;
}

Swift::Int_optional __swiftcall NSUserDefaults.internalInt(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v2 = sub_225CCE444();
    v3 = [v1 stringForKey_];

    if (v3)
    {
      v4 = sub_225CCE474();
      v6 = v5;

      v8 = HIBYTE(v6) & 0xF;
      v9 = v4 & 0xFFFFFFFFFFFFLL;
      if ((v6 & 0x2000000000000000) != 0)
      {
        v10 = HIBYTE(v6) & 0xF;
      }

      else
      {
        v10 = v4 & 0xFFFFFFFFFFFFLL;
      }

      if (v10)
      {
        if ((v6 & 0x1000000000000000) != 0)
        {
          v33 = 0;
          v12 = sub_2259F3F08(v4, v6, 10);
          v30 = v31;
LABEL_67:

          if (v30)
          {
            v7 = 0;
          }

          else
          {
            v7 = v12;
          }

          goto LABEL_72;
        }

        if ((v6 & 0x2000000000000000) != 0)
        {
          v32[0] = v4;
          v32[1] = v6 & 0xFFFFFFFFFFFFFFLL;
          if (v4 == 43)
          {
            if (v8)
            {
              if (--v8)
              {
                v12 = 0;
                v22 = v32 + 1;
                while (1)
                {
                  v23 = *v22 - 48;
                  if (v23 > 9)
                  {
                    break;
                  }

                  v24 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    break;
                  }

                  v12 = v24 + v23;
                  if (__OFADD__(v24, v23))
                  {
                    break;
                  }

                  ++v22;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

              goto LABEL_65;
            }

LABEL_78:
            __break(1u);
            goto LABEL_79;
          }

          if (v4 != 45)
          {
            if (v8)
            {
              v12 = 0;
              v27 = v32;
              while (1)
              {
                v28 = *v27 - 48;
                if (v28 > 9)
                {
                  break;
                }

                v29 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v29 + v28;
                if (__OFADD__(v29, v28))
                {
                  break;
                }

                ++v27;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }

          if (v8)
          {
            if (--v8)
            {
              v12 = 0;
              v16 = v32 + 1;
              while (1)
              {
                v17 = *v16 - 48;
                if (v17 > 9)
                {
                  break;
                }

                v18 = 10 * v12;
                if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                {
                  break;
                }

                v12 = v18 - v17;
                if (__OFSUB__(v18, v17))
                {
                  break;
                }

                ++v16;
                if (!--v8)
                {
                  goto LABEL_66;
                }
              }
            }

            goto LABEL_65;
          }
        }

        else
        {
          if ((v4 & 0x1000000000000000) != 0)
          {
            v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v7 = sub_225CCF354();
          }

          v11 = *v7;
          if (v11 == 43)
          {
            if (v9 >= 1)
            {
              v8 = v9 - 1;
              if (v9 != 1)
              {
                v12 = 0;
                if (v7)
                {
                  v19 = v7 + 1;
                  while (1)
                  {
                    v20 = *v19 - 48;
                    if (v20 > 9)
                    {
                      goto LABEL_65;
                    }

                    v21 = 10 * v12;
                    if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                    {
                      goto LABEL_65;
                    }

                    v12 = v21 + v20;
                    if (__OFADD__(v21, v20))
                    {
                      goto LABEL_65;
                    }

                    ++v19;
                    if (!--v8)
                    {
                      goto LABEL_66;
                    }
                  }
                }

                goto LABEL_57;
              }

              goto LABEL_65;
            }

            goto LABEL_77;
          }

          if (v11 != 45)
          {
            if (v9)
            {
              v12 = 0;
              if (v7)
              {
                while (1)
                {
                  v25 = *v7 - 48;
                  if (v25 > 9)
                  {
                    goto LABEL_65;
                  }

                  v26 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v26 + v25;
                  if (__OFADD__(v26, v25))
                  {
                    goto LABEL_65;
                  }

                  ++v7;
                  if (!--v9)
                  {
                    goto LABEL_57;
                  }
                }
              }

              goto LABEL_57;
            }

LABEL_65:
            v12 = 0;
            LOBYTE(v8) = 1;
            goto LABEL_66;
          }

          if (v9 >= 1)
          {
            v8 = v9 - 1;
            if (v9 != 1)
            {
              v12 = 0;
              if (v7)
              {
                v13 = v7 + 1;
                while (1)
                {
                  v14 = *v13 - 48;
                  if (v14 > 9)
                  {
                    goto LABEL_65;
                  }

                  v15 = 10 * v12;
                  if ((v12 * 10) >> 64 != (10 * v12) >> 63)
                  {
                    goto LABEL_65;
                  }

                  v12 = v15 - v14;
                  if (__OFSUB__(v15, v14))
                  {
                    goto LABEL_65;
                  }

                  ++v13;
                  if (!--v8)
                  {
                    goto LABEL_66;
                  }
                }
              }

LABEL_57:
              LOBYTE(v8) = 0;
LABEL_66:
              v33 = v8;
              v30 = v8;
              goto LABEL_67;
            }

            goto LABEL_65;
          }

          __break(1u);
        }

        __break(1u);
LABEL_77:
        __break(1u);
        goto LABEL_78;
      }
    }
  }

  v7 = 0;
  v30 = 1;
LABEL_72:
  LOBYTE(v9) = v30 & 1;
LABEL_79:
  result.is_nil = v9;
  result.value = v7;
  return result;
}

void __swiftcall NSUserDefaults.internalFloat(forKey:)(Swift::Float_optional *__return_ptr retstr, Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1)
  {
    v3 = sub_225CCE444();
    v4 = [v2 stringForKey_];

    if (v4)
    {
      v5 = sub_225CCE474();
      v7 = v6;

      v8 = 0;
      sub_225BE2D60(v5, v7, &v8, MEMORY[0x277D84FB0], sub_225BE3064);
    }
  }
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.internalStringArray(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    object = forKey._object;
    swift_once();
    LOBYTE(forKey._object) = object;
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringArrayForKey_], v2, v3))
  {
    v4 = sub_225CCE814();

    forKey._countAndFlagsBits = v4;
  }

  else
  {
    forKey._countAndFlagsBits = 0;
  }

  return *&forKey._countAndFlagsBits;
}

Swift::Double_optional __swiftcall NSUserDefaults.internalDouble(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 stringForKey_], v2, v3))
  {
    v4 = sub_225CCE474();
    v6 = v5;

    v10 = 0;
    v7 = sub_225BE2D60(v4, v6, &v10, MEMORY[0x277D84FA8], sub_225BE3038);

    v8 = v7 && v10;
  }

  else
  {
    v8 = 0;
  }

  result.value = v9;
  result.is_nil = v8;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSUserDefaults.internalDictionary(forKey:)(Swift::String forKey)
{
  if (qword_28105B9F0 != -1)
  {
    object = forKey._object;
    swift_once();
    LOBYTE(forKey._object) = object;
  }

  if (byte_28105B9F8 == 1 && (v2 = sub_225CCE444(), v3 = [v1 dictionaryForKey_], v2, v3))
  {
    v4 = sub_225CCE2D4();

    sub_225BE14A8(v4);
    v6 = v5;

    forKey._countAndFlagsBits = v6;
  }

  else
  {
    forKey._countAndFlagsBits = 0;
  }

  return *&forKey._countAndFlagsBits;
}

unint64_t static NSUserDefaults.globalInternalInt(forKey:)(uint64_t a1, uint64_t a2)
{
  if (qword_28105B9F0 != -1)
  {
    swift_once();
  }

  if (byte_28105B9F8 != 1)
  {
    return 0;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = [v4 persistentDomainForName_];

  if (!v5)
  {
    return 0;
  }

  v6 = sub_225CCE2D4();

  if (!v6)
  {
    return 0;
  }

  if (*(v6 + 16))
  {

    v7 = sub_2259F18D4(a1, a2);
    if (v8)
    {
      sub_2259CB810(*(v6 + 56) + 32 * v7, v41);

      if (swift_dynamicCast())
      {

        return v39;
      }
    }

    else
    {
    }
  }

  if (!*(v6 + 16))
  {
    goto LABEL_33;
  }

  v10 = sub_2259F18D4(a1, a2);
  if ((v11 & 1) == 0)
  {
    goto LABEL_33;
  }

  sub_2259CB810(*(v6 + 56) + 32 * v10, v41);

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  result = v40;
  v12 = HIBYTE(v40) & 0xF;
  v13 = v39 & 0xFFFFFFFFFFFFLL;
  if (!((v40 & 0x2000000000000000) != 0 ? HIBYTE(v40) & 0xF : v39 & 0xFFFFFFFFFFFFLL))
  {
LABEL_33:

    return 0;
  }

  if ((v40 & 0x1000000000000000) == 0)
  {
    if ((v40 & 0x2000000000000000) != 0)
    {
      v41[0] = v39;
      v41[1] = v40 & 0xFFFFFFFFFFFFFFLL;
      if (v39 == 43)
      {
        if (v12)
        {
          v15 = (v12 - 1);
          if (v12 != 1)
          {
            v18 = 0;
            v29 = v41 + 1;
            while (1)
            {
              v30 = *v29 - 48;
              if (v30 > 9)
              {
                break;
              }

              v31 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v31 + v30;
              if (__OFADD__(v31, v30))
              {
                break;
              }

              ++v29;
              if (!--v15)
              {
                goto LABEL_77;
              }
            }
          }

          goto LABEL_76;
        }

LABEL_86:
        __break(1u);
        return result;
      }

      if (v39 != 45)
      {
        if (v12)
        {
          v18 = 0;
          v34 = v41;
          while (1)
          {
            v35 = *v34 - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++v34;
            if (!--v12)
            {
LABEL_75:
              LOBYTE(v15) = 0;
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }

      if (v12)
      {
        v15 = (v12 - 1);
        if (v12 != 1)
        {
          v18 = 0;
          v22 = v41 + 1;
          while (1)
          {
            v23 = *v22 - 48;
            if (v23 > 9)
            {
              break;
            }

            v24 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v24 - v23;
            if (__OFSUB__(v24, v23))
            {
              break;
            }

            ++v22;
            if (!--v15)
            {
              goto LABEL_77;
            }
          }
        }

        goto LABEL_76;
      }
    }

    else
    {
      if ((v39 & 0x1000000000000000) != 0)
      {
        v15 = ((v40 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v15 = sub_225CCF354();
        result = v40;
      }

      v16 = *v15;
      if (v16 == 43)
      {
        if (v13 >= 1)
        {
          v25 = v13 - 1;
          if (v13 != 1)
          {
            v18 = 0;
            if (v15)
            {
              v26 = v15 + 1;
              while (1)
              {
                v27 = *v26 - 48;
                if (v27 > 9)
                {
                  goto LABEL_76;
                }

                v28 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_76;
                }

                v18 = v28 + v27;
                if (__OFADD__(v28, v27))
                {
                  goto LABEL_76;
                }

                ++v26;
                if (!--v25)
                {
                  goto LABEL_75;
                }
              }
            }

            goto LABEL_77;
          }

          goto LABEL_76;
        }

        goto LABEL_85;
      }

      if (v16 != 45)
      {
        if (v13)
        {
          v18 = 0;
          if (v15)
          {
            while (1)
            {
              v32 = *v15 - 48;
              if (v32 > 9)
              {
                goto LABEL_76;
              }

              v33 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_76;
              }

              v18 = v33 + v32;
              if (__OFADD__(v33, v32))
              {
                goto LABEL_76;
              }

              ++v15;
              if (!--v13)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_77;
        }

LABEL_76:
        v18 = 0;
        LOBYTE(v15) = 1;
        goto LABEL_77;
      }

      if (v13 >= 1)
      {
        v17 = v13 - 1;
        if (v13 != 1)
        {
          v18 = 0;
          if (v15)
          {
            v19 = v15 + 1;
            while (1)
            {
              v20 = *v19 - 48;
              if (v20 > 9)
              {
                goto LABEL_76;
              }

              v21 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                goto LABEL_76;
              }

              v18 = v21 - v20;
              if (__OFSUB__(v21, v20))
              {
                goto LABEL_76;
              }

              ++v19;
              if (!--v17)
              {
                goto LABEL_75;
              }
            }
          }

LABEL_77:
          v37 = v15;
          goto LABEL_78;
        }

        goto LABEL_76;
      }

      __break(1u);
    }

    __break(1u);
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v18 = sub_2259F3F08(v39, v40, 10);
  v37 = v38;
LABEL_78:

  if (v37)
  {
    return 0;
  }

  else
  {
    return v18;
  }
}

BOOL sub_225BE2D60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, uint64_t), uint64_t a5)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v11[0] = a1;
      v11[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        v6 = v11;
LABEL_11:
        v9 = a4(v6, a3);
        return v9 && *v9 == 0;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v7 >= 0x21 || ((0x100003E01uLL >> v7) & 1) == 0)
      {
        goto LABEL_11;
      }

      return 0;
    }
  }

  sub_225CCF1F4();
  if (!v5)
  {
    return v12;
  }

  return v8;
}

uint64_t _sSo14NSUserDefaultsC13CoreIDVSharedE18globalInternalBool6forKeySbSS_tFZ_0(uint64_t a1, uint64_t a2)
{
  if (qword_28105B9F0 != -1)
  {
    v10 = a1;
    v11 = a2;
    swift_once();
    a1 = v10;
    a2 = v11;
  }

  if (byte_28105B9F8 == 1)
  {
    v2 = a1;
    v3 = a2;
    v4 = [objc_opt_self() standardUserDefaults];
    v5 = [v4 persistentDomainForName_];

    if (v5)
    {
      v6 = sub_225CCE2D4();

      if (v6)
      {
        if (*(v6 + 16) && (v7 = sub_2259F18D4(v2, v3), (v8 & 1) != 0))
        {
          sub_2259CB810(*(v6 + 56) + 32 * v7, v13);

          if (swift_dynamicCast())
          {
            return v12;
          }
        }

        else
        {
        }
      }
    }
  }

  return 0;
}

uint64_t sub_225BE2FC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

_BYTE *sub_225BE3090@<X0>(_BYTE *result@<X0>, uint64_t (*a2)(void)@<X1>, BOOL *a3@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  if (v4 || v5 == 0)
  {
    result = a2();
    if (result)
    {
      v8 = *result == 0;
    }

    else
    {
      v8 = 0;
    }

    *a3 = v8;
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

uint64_t ISO18013DocumentValidator.init(signatureValidator:dateProvider:)@<X0>(unint64_t *a1@<X0>, __int128 *a2@<X1>, _WORD *a3@<X8>)
{
  v3 = *a1;
  v4 = *a1 >> 16;
  if (*a1 == 1183)
  {
    LOWORD(v3) = 769;
    LOWORD(v4) = 770;
    v5 = 771;
  }

  else
  {
    v5 = WORD2(*a1);
  }

  if (*a1 == 1183)
  {
    v6 = 772;
  }

  else
  {
    v6 = HIWORD(*a1);
  }

  *a3 = v3;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = v6;
  return sub_2259D8B6C(a2, (a3 + 4));
}

uint64_t ISO18013DocumentValidator.authenticateDocument(_:issuerCertificateChain:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[31] = a3;
  v4[32] = v3;
  v4[29] = a1;
  v4[30] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for ISO18013MobileSecurityObject(0);
  v4[36] = swift_task_alloc();
  v5 = sub_225CCD354();
  v4[37] = v5;
  v4[38] = *(v5 - 8);
  v4[39] = swift_task_alloc();
  v4[40] = type metadata accessor for ISO18013Response.Document(0);
  v4[41] = swift_task_alloc();
  v4[42] = swift_task_alloc();
  v6 = sub_225CCD954();
  v4[43] = v6;
  v4[44] = *(v6 - 8);
  v4[45] = swift_task_alloc();
  v4[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225BE3350, 0, 0);
}

uint64_t sub_225BE3350()
{
  v159 = v0;
  v1 = *(v0 + 240);
  v2 = *v1;
  v3 = v1[1];

  log = v2;
  v4 = sub_225CCF5D4();

  if (v4 > 2)
  {
    v25 = *(v0 + 272);
    sub_225CCF204();

    v153 = 0xD00000000000001ALL;
    v154 = 0x8000000225D23C70;
    MEMORY[0x22AA6CE70](log, v3);
    v26 = MEMORY[0x277D84F90];
    v27 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    swift_allocError();
    v29 = v28;
    v30 = sub_225CCE954();
    v31 = *(v30 - 8);
    (*(v31 + 56))(v25, 1, 1, v30);
    LODWORD(v30) = (*(v31 + 48))(v25, 1, v30);
    sub_2259CB640(v25, &unk_27D73B050, &unk_225CD3AD0);
    if (v30)
    {
      v32 = 755;
    }

    else
    {
      v32 = 23;
    }

    v33 = sub_225B2C374(v26);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v153 = v33;
    sub_225B2C4A0(v27, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v153);

    v35 = v153;
    v36 = sub_225B29AA0(0, 1, 1, v26);
    v38 = *(v36 + 2);
    v37 = *(v36 + 3);
    if (v38 >= v37 >> 1)
    {
      v36 = sub_225B29AA0((v37 > 1), v38 + 1, 1, v36);
    }

    *(v36 + 2) = v38 + 1;
    v39 = &v36[56 * v38];
    *(v39 + 4) = 0xD00000000000001ALL;
    *(v39 + 5) = 0x8000000225D23C70;
    *(v39 + 6) = 0xD00000000000002DLL;
    *(v39 + 7) = 0x8000000225D23C90;
    *(v39 + 8) = 0xD00000000000002FLL;
    *(v39 + 9) = 0x8000000225D23CC0;
    *(v39 + 10) = 63;
    *v29 = v32;
    *(v29 + 8) = v36;
    *(v29 + 16) = 0xD00000000000001ALL;
    *(v29 + 24) = 0x8000000225D23C70;
    *(v29 + 32) = v35;
    *(v29 + 40) = 0;
    swift_willThrow();
    goto LABEL_55;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 368);
  v6 = *(v0 + 344);
  v7 = *(v0 + 352);
  v8 = *(v0 + 336);
  v9 = *(v0 + 240);
  v10 = off_28105B918;
  v11 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v12 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v12));
  v138 = *(v7 + 16);
  v141 = v11;
  v150 = v7 + 16;
  v138(v5, &v10[v11], v6);
  v145 = v12;
  v148 = v10;
  os_unfair_lock_unlock(&v10[v12]);
  sub_225BEB7CC(v9, v8, type metadata accessor for ISO18013Response.Document);
  v13 = sub_225CCD934();
  v14 = sub_225CCED04();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v0 + 368);
  v18 = *(v0 + 344);
  v17 = *(v0 + 352);
  v19 = *(v0 + 336);
  if (v15)
  {
    v11 = swift_slowAlloc();
    v136 = v18;
    v20 = swift_slowAlloc();
    v153 = v20;
    *v11 = 136315138;
    v134 = v16;
    v21 = *v19;
    v22 = v19[1];

    sub_225BEB720(v19, type metadata accessor for ISO18013Response.Document);
    v23 = sub_2259BE198(v21, v22, &v153);

    *(v11 + 4) = v23;
    _os_log_impl(&dword_2259A7000, v13, v14, "ISO18013DocumentValidator begins validating document %s with chain", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v20);
    MEMORY[0x22AA6F950](v20, -1, -1);
    MEMORY[0x22AA6F950](v11, -1, -1);

    v24 = *(v17 + 8);
    v24(v134, v136);
  }

  else
  {

    sub_225BEB720(v19, type metadata accessor for ISO18013Response.Document);
    v24 = *(v17 + 8);
    v24(v16, v18);
  }

  v40 = *(v0 + 312);
  v41 = *(v0 + 296);
  v42 = *(v0 + 304);
  v43 = *(v0 + 248);
  v44 = (*(v0 + 240) + *(*(v0 + 320) + 20));
  v45 = type metadata accessor for ISO18013Response.IssuerSigned(0);
  (*(v42 + 16))(v40, v44 + *(v45 + 20), v41);
  if (v43 >> 62)
  {
    if (sub_225CCF144())
    {
      goto LABEL_15;
    }

LABEL_36:
    v92 = *(v0 + 272);
    v150 = 0x8000000225D23C90;
    log = 0x8000000225D23D60;
    v148 = 0x8000000225D23CC0;
    v93 = MEMORY[0x277D84F90];
    v94 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v19 = swift_allocError();
    v40 = v95;
    v96 = sub_225CCE954();
    v97 = *(v96 - 8);
    (*(v97 + 56))(v92, 1, 1, v96);
    LODWORD(v96) = (*(v97 + 48))(v92, 1, v96);
    sub_2259CB640(v92, &unk_27D73B050, &unk_225CD3AD0);
    if (v96)
    {
      LOWORD(v3) = 794;
    }

    else
    {
      LOWORD(v3) = 23;
    }

    v98 = sub_225B2C374(v93);
    v99 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v98;
    sub_225B2C4A0(v94, sub_225B2AC40, 0, v99, &v153);

    v11 = v153;
    v46 = sub_225B29AA0(0, 1, 1, v93);
    v41 = *(v46 + 2);
    v47 = *(v46 + 3);
    v43 = v41 + 1;
    if (v41 < v47 >> 1)
    {
      goto LABEL_40;
    }

    goto LABEL_60;
  }

  if (!*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_36;
  }

LABEL_15:
  if ((v43 & 0xC000000000000001) != 0)
  {
    v48 = MEMORY[0x22AA6DA80](0, *(v0 + 248));
LABEL_18:
    v49 = v48;
    sub_225BE4630(*(v0 + 288));
    sub_225BE5860(*v44, *(v0 + 288));
    v51 = *(v0 + 280);
    v50 = *(v0 + 288);
    v52 = (v50 + *(v51 + 32));
    if (log == *v52 && v3 == v52[1])
    {
      goto LABEL_22;
    }

    if (sub_225CCF934())
    {
      v51 = *(v0 + 280);
      v50 = *(v0 + 288);
LABEL_22:
      sub_225BE6D54(v50 + *(v51 + 36), v49);
      sub_225BE7F30(*(v0 + 240), *(v0 + 288), v49);
      v71 = *(v0 + 360);
      v72 = *(v0 + 344);
      v73 = *(v0 + 328);
      v74 = *(v0 + 240);
      os_unfair_lock_lock((v148 + v145));
      v138(v71, (v148 + v141), v72);
      os_unfair_lock_unlock((v148 + v145));
      sub_225BEB7CC(v74, v73, type metadata accessor for ISO18013Response.Document);
      v75 = sub_225CCD934();
      v76 = sub_225CCED04();
      loga = v75;
      v77 = os_log_type_enabled(v75, v76);
      v78 = *(v0 + 360);
      v79 = *(v0 + 344);
      v80 = *(v0 + 328);
      v82 = *(v0 + 304);
      v81 = *(v0 + 312);
      v83 = *(v0 + 296);
      if (v77)
      {
        v149 = *(v0 + 344);
        v84 = swift_slowAlloc();
        v147 = v81;
        v85 = swift_slowAlloc();
        v153 = v85;
        *v84 = 136315138;
        v139 = v78;
        v143 = v83;
        v86 = *v80;
        v87 = v80[1];

        sub_225BEB720(v80, type metadata accessor for ISO18013Response.Document);
        v88 = sub_2259BE198(v86, v87, &v153);

        *(v84 + 4) = v88;
        _os_log_impl(&dword_2259A7000, loga, v76, "ISO18013DocumentValidator successfully validated document with type %s", v84, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v85);
        MEMORY[0x22AA6F950](v85, -1, -1);
        MEMORY[0x22AA6F950](v84, -1, -1);

        v24(v139, v149);
        (*(v82 + 8))(v147, v143);
      }

      else
      {

        sub_225BEB720(v80, type metadata accessor for ISO18013Response.Document);
        v24(v78, v79);
        (*(v82 + 8))(v81, v83);
      }

      sub_225BEB414(*(v0 + 288), *(v0 + 232));

      v89 = *(v0 + 8);
      v90 = *(v0 + 248);

      return v89(v90);
    }

    v53 = *(v0 + 272);
    v54 = MEMORY[0x277D84F90];
    v55 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v19 = swift_allocError();
    v57 = v56;
    v58 = sub_225CCE954();
    v59 = *(v58 - 8);
    (*(v59 + 56))(v53, 1, 1, v58);
    LODWORD(v58) = (*(v59 + 48))(v53, 1, v58);
    sub_2259CB640(v53, &unk_27D73B050, &unk_225CD3AD0);
    if (v58)
    {
      v60 = 800;
    }

    else
    {
      v60 = 23;
    }

    v146 = v60;
    v61 = sub_225B2C374(v54);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v153 = v61;
    sub_225B2C4A0(v55, sub_225B2AC40, 0, v62, &v153);

    v142 = v153;
    v63 = sub_225B29AA0(0, 1, 1, v54);
    v65 = *(v63 + 2);
    v64 = *(v63 + 3);
    if (v65 >= v64 >> 1)
    {
      v63 = sub_225B29AA0((v64 > 1), v65 + 1, 1, v63);
    }

    v66 = *(v0 + 304);
    v67 = *(v0 + 312);
    v69 = *(v0 + 288);
    v68 = *(v0 + 296);
    *(v63 + 2) = v65 + 1;
    v70 = &v63[56 * v65];
    *(v70 + 4) = 0xD00000000000001BLL;
    *(v70 + 5) = 0x8000000225D23D40;
    *(v70 + 6) = 0xD00000000000002DLL;
    *(v70 + 7) = 0x8000000225D23C90;
    *(v70 + 8) = 0xD00000000000002FLL;
    *(v70 + 9) = 0x8000000225D23CC0;
    *(v70 + 10) = 82;
    *v57 = v146;
    *(v57 + 8) = v63;
    *(v57 + 16) = 0xD00000000000001BLL;
    *(v57 + 24) = 0x8000000225D23D40;
    *(v57 + 32) = v142;
    *(v57 + 40) = 0;
    swift_willThrow();

    (*(v66 + 8))(v67, v68);
    sub_225BEB720(v69, type metadata accessor for ISO18013MobileSecurityObject);
    goto LABEL_41;
  }

  v47 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v47)
  {
    v48 = *(*(v0 + 248) + 32);
    goto LABEL_18;
  }

  __break(1u);
LABEL_60:
  v46 = sub_225B29AA0((v47 > 1), v43, 1, v46);
LABEL_40:
  v101 = *(v0 + 304);
  v100 = *(v0 + 312);
  v102 = *(v0 + 296);
  *(v46 + 2) = v43;
  v103 = &v46[56 * v41];
  *(v103 + 4) = 0xD00000000000004DLL;
  *(v103 + 5) = log;
  *(v103 + 6) = 0xD00000000000002DLL;
  *(v103 + 7) = v150;
  *(v103 + 8) = 0xD00000000000002FLL;
  *(v103 + 9) = v148;
  *(v103 + 10) = 71;
  *v40 = v3;
  *(v40 + 8) = v46;
  *(v40 + 16) = 0xD00000000000004DLL;
  *(v40 + 24) = log;
  *(v40 + 32) = v11;
  *(v40 + 40) = 0;
  swift_willThrow();
  (*(v101 + 8))(v100, v102);
LABEL_41:
  v104 = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 26;
  *(inited + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AD20, &qword_225CD42C8);
  *(inited + 72) = sub_2259D8B24(&qword_27D73FCB0, &qword_27D73AD20, &qword_225CD42C8, MEMORY[0x277D839A0]);
  *(inited + 40) = v104;

  v106 = v19;
  v107 = sub_225B2C374(inited);
  swift_setDeallocating();
  sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);
  sub_2259CB5EC();
  swift_allocError();
  v109 = v108;
  swift_getErrorValue();
  v110 = *(v0 + 184);
  v111 = v19;
  sub_225B21FAC(v110, &v153);

  v112 = v154;
  if (v154)
  {
    v113 = v107;
    v140 = v155;
    v144 = v153;
    v114 = v157;
    v135 = v158;
    v137 = v156;
  }

  else
  {
    *(v0 + 208) = v19;
    v115 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    v113 = v107;
    if (swift_dynamicCast())
    {
      v116 = *(v0 + 216);
      v117 = swift_initStackObject();
      *(v117 + 16) = xmmword_225CD30F0;
      *(v117 + 32) = 20;
      v118 = [v116 code];
      v119 = MEMORY[0x277D83BF8];
      *(v117 + 64) = MEMORY[0x277D83B88];
      *(v117 + 72) = v119;
      *(v117 + 40) = v118;
      v114 = sub_225B2C374(v117);
      swift_setDeallocating();
      sub_2259CB640(v117 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v120 = v19;
      v140 = 0;
      v144 = 0;
      v137 = 0;
      v112 = MEMORY[0x277D84F90];
    }

    else
    {
      v121 = *(v0 + 264);
      *(v0 + 224) = v19;
      v122 = v19;
      v123 = sub_225CCE954();
      v124 = swift_dynamicCast();
      v125 = *(v123 - 8);
      (*(v125 + 56))(v121, v124 ^ 1u, 1, v123);
      LODWORD(v125) = (*(v125 + 48))(v121, 1, v123);
      sub_2259CB640(v121, &unk_27D73B050, &unk_225CD3AD0);
      if (v125)
      {
        v126 = 0;
      }

      else
      {
        v126 = 23;
      }

      v144 = v126;
      v112 = MEMORY[0x277D84F90];
      v114 = sub_225B2C374(MEMORY[0x277D84F90]);
      v127 = v19;
      v137 = 0x8000000225D23CF0;
      v140 = 0xD00000000000004FLL;
    }

    v135 = v19;
  }

  v128 = swift_isUniquelyReferenced_nonNull_native();
  v153 = v114;
  sub_225B2C4A0(v113, sub_225B2AC40, 0, v128, &v153);

  v129 = v153;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v112 = sub_225B29AA0(0, *(v112 + 2) + 1, 1, v112);
  }

  v131 = *(v112 + 2);
  v130 = *(v112 + 3);
  if (v131 >= v130 >> 1)
  {
    v112 = sub_225B29AA0((v130 > 1), v131 + 1, 1, v112);
  }

  *(v112 + 2) = v131 + 1;
  v132 = &v112[56 * v131];
  *(v132 + 4) = 0xD00000000000004FLL;
  *(v132 + 5) = 0x8000000225D23CF0;
  *(v132 + 6) = 0xD00000000000002DLL;
  *(v132 + 7) = 0x8000000225D23C90;
  *(v132 + 8) = 0xD00000000000002FLL;
  *(v132 + 9) = 0x8000000225D23CC0;
  *(v132 + 10) = 95;
  *v109 = v144;
  *(v109 + 8) = v112;
  *(v109 + 16) = v140;
  *(v109 + 24) = v137;
  *(v109 + 32) = v129;
  *(v109 + 40) = v135;
  swift_willThrow();

LABEL_55:

  v133 = *(v0 + 8);

  return v133();
}

void sub_225BE4630(unint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v134 = &v125 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v125 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCC8, &unk_225CF98E0);
  MEMORY[0x28223BE20](v9);
  v136 = &v125 - v10;
  v11 = sub_225CCD954();
  v135 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v125 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = SecCertificateRef.rawECPublicKeyData()();
  if (v15 >> 60 == 15)
  {
    v138 = 0x8000000225D23C90;
    v137 = 0x8000000225D24370;
    v16 = MEMORY[0x277D84F90];
    v17 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v18 = swift_allocError();
    v20 = v19;
    v21 = sub_225CCE954();
    v22 = *(v21 - 8);
    (*(v22 + 56))(v8, 1, 1, v21);
    LODWORD(v21) = (*(v22 + 48))(v8, 1, v21);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v21)
    {
      v23 = 770;
    }

    else
    {
      v23 = 23;
    }

    v24 = sub_225B2C374(v16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v140 = v24;
    sub_225B2C4A0(v17, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v140);

    v26 = v140;
    v27 = sub_225B29AA0(0, 1, 1, v16);
    v29 = *(v27 + 2);
    v28 = *(v27 + 3);
    if (v29 >= v28 >> 1)
    {
      v27 = sub_225B29AA0((v28 > 1), v29 + 1, 1, v27);
    }

    *(v27 + 2) = v29 + 1;
    v30 = &v27[56 * v29];
    *(v30 + 4) = 0xD000000000000032;
    *(v30 + 5) = 0x8000000225D24330;
    v31 = v138;
    *(v30 + 6) = 0xD00000000000002DLL;
    *(v30 + 7) = v31;
    v32 = v137;
    *(v30 + 8) = 0xD00000000000003ELL;
    *(v30 + 9) = v32;
    *(v30 + 10) = 109;
    *v20 = v23;
    *(v20 + 8) = v27;
    *(v20 + 16) = 0xD000000000000032;
    *(v20 + 24) = 0x8000000225D24330;
    *(v20 + 32) = v26;
    *(v20 + 40) = 0;
    v33 = v18;
    swift_willThrow();
    goto LABEL_23;
  }

  v132 = a1;
  v133 = v2;
  v137 = v14;
  v138 = v15;
  SecCertificateRef.publicKeyAlgorithm()();
  v34 = v140;
  if (v140 == 5)
  {
    v35 = 0x8000000225D243F0;
    v136 = 0x8000000225D23C90;
    v36 = MEMORY[0x277D84F90];
    v37 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v38 = swift_allocError();
    v40 = v39;
    v41 = sub_225CCE954();
    v42 = *(v41 - 8);
    (*(v42 + 56))(v8, 1, 1, v41);
    LODWORD(v41) = (*(v42 + 48))(v8, 1, v41);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v41)
    {
      v43 = 770;
    }

    else
    {
      v43 = 23;
    }

    v44 = sub_225B2C374(v36);
    v45 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v44;
    sub_225B2C4A0(v37, sub_225B2AC40, 0, v45, &v140);

    v46 = v140;
    v47 = sub_225B29AA0(0, 1, 1, v36);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    v51 = 0xD000000000000037;
    *(v50 + 4) = 0xD000000000000037;
    *(v50 + 5) = 0x8000000225D243F0;
    v52 = v136;
    *(v50 + 6) = 0xD00000000000002DLL;
    *(v50 + 7) = v52;
    *(v50 + 8) = 0xD00000000000003ELL;
    *(v50 + 9) = 0x8000000225D24370;
    v53 = 113;
LABEL_22:
    *(v50 + 10) = v53;
    *v40 = v43;
    *(v40 + 8) = v47;
    *(v40 + 16) = v51;
    *(v40 + 24) = v35;
    *(v40 + 32) = v46;
    *(v40 + 40) = 0;
    v33 = v38;
    swift_willThrow();
    sub_2259B97A8(v137, v138);
    goto LABEL_23;
  }

  v54 = sub_225CCD324();
  if (v55 >> 60 == 15)
  {
    v35 = 0x8000000225D24430;
    v136 = 0x8000000225D23C90;
    v56 = MEMORY[0x277D84F90];
    v57 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v38 = swift_allocError();
    v40 = v58;
    v59 = sub_225CCE954();
    v60 = *(v59 - 8);
    (*(v60 + 56))(v8, 1, 1, v59);
    LODWORD(v59) = (*(v60 + 48))(v8, 1, v59);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v59)
    {
      v43 = 773;
    }

    else
    {
      v43 = 23;
    }

    v61 = sub_225B2C374(v56);
    v62 = swift_isUniquelyReferenced_nonNull_native();
    v140 = v61;
    sub_225B2C4A0(v57, sub_225B2AC40, 0, v62, &v140);

    v46 = v140;
    v47 = sub_225B29AA0(0, 1, 1, v56);
    v64 = *(v47 + 2);
    v63 = *(v47 + 3);
    if (v64 >= v63 >> 1)
    {
      v47 = sub_225B29AA0((v63 > 1), v64 + 1, 1, v47);
    }

    *(v47 + 2) = v64 + 1;
    v50 = &v47[56 * v64];
    v51 = 0xD000000000000035;
    *(v50 + 4) = 0xD000000000000035;
    *(v50 + 5) = 0x8000000225D24430;
    v65 = v136;
    *(v50 + 6) = 0xD00000000000002DLL;
    *(v50 + 7) = v65;
    *(v50 + 8) = 0xD00000000000003ELL;
    *(v50 + 9) = 0x8000000225D24370;
    v53 = 117;
    goto LABEL_22;
  }

  v130 = v55;
  v131 = v54;
  v97 = *v1;
  v128 = sub_225CCD334();
  v129 = v98;
  v99 = sub_225CCD304();
  sub_225CCD424();
  swift_allocObject();
  sub_225CCD414();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE28, &unk_225CE4AD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_225CD30F0;
  *(inited + 32) = 1;
  *(inited + 40) = v99;
  v101 = sub_225B2C828(inited);
  swift_setDeallocating();
  v140 = v101;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AE30, &qword_225CD4610);
  sub_2259DB480();
  v102 = v133;
  v103 = sub_225CCD3F4();
  v33 = v102;
  if (v102)
  {

    sub_2259B97A8(v131, v130);
    sub_2259B97A8(v137, v138);
    sub_2259BEF00(v128, v129);
  }

  else
  {
    v105 = v104;
    v126 = v99;
    v106 = v103;

    v127 = v106;
    v140 = v106;
    v141 = v105;
    v142 = xmmword_225CD4150;
    v143 = v131;
    v144 = v130;
    sub_2259CB710(v131, v130);
    sub_2259E44EC();
    v133 = v105;
    v107 = sub_225CCD3F4();
    v140 = v97;
    LOBYTE(v139) = v34;
    v108 = v128;
    v109 = v129;
    v110 = v126;
    v111 = v107;
    v126 = v112;
    sub_2259DBE5C(v128, v129, v137, v138, &v139, v110, v107, v112);
    v125 = 0;
    sub_2259BEF00(v108, v109);

    sub_2259BEF00(v111, v126);
    sub_2259BEF00(v127, v133);
    sub_2259BEF00(0, 0xC000000000000000);
    v113 = v130;
    sub_2259BEF00(v131, v130);
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v114 = off_28105B918;
    v115 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v116 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v116));
    v117 = v135;
    (*(v135 + 16))(v13, &v114[v115], v11);
    os_unfair_lock_unlock(&v114[v116]);
    v118 = sub_225CCD934();
    v119 = sub_225CCED04();
    if (os_log_type_enabled(v118, v119))
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&dword_2259A7000, v118, v119, "ISO18013DocumentValidator successfully validated signature of IssuerAuth", v120, 2u);
      MEMORY[0x22AA6F950](v120, -1, -1);
    }

    (*(v117 + 8))(v13, v11);
    sub_225CCD3A4();
    swift_allocObject();
    sub_225CCD394();
    sub_2259D8B24(&qword_27D73FCD0, &qword_27D73FCC8, &unk_225CF98E0, &protocol conformance descriptor for CBOREncodedCBOR<A>);
    v121 = v136;
    v122 = v131;
    v123 = v125;
    sub_225CCD364();
    v124 = v132;
    if (!v123)
    {

      sub_2259B97A8(v122, v113);
      sub_2259B97A8(v137, v138);
      sub_225BEB7CC(v121 + *(v9 + 48), v124, type metadata accessor for ISO18013MobileSecurityObject);
      sub_2259CB640(v121, &qword_27D73FCC8, &unk_225CF98E0);
      return;
    }

    sub_2259B97A8(v122, v113);
    sub_2259B97A8(v137, v138);
    v33 = v123;
  }

LABEL_23:
  v135 = "ng public key data";
  v66 = v33;
  v136 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v67 = swift_allocError();
  v69 = v68;
  swift_getErrorValue();
  v70 = v145;
  v71 = v33;
  sub_225B21FAC(v70, &v140);

  v72 = v141;
  v138 = v67;
  v137 = 0x8000000225D243B0;
  if (v141)
  {
    v73 = v33;
    v134 = v140;
    v132 = *(&v142 + 1);
    v133 = v142;
    v74 = v143;
    v33 = v144;
  }

  else
  {
    v140 = v33;
    v75 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v76 = v139;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      v77 = swift_initStackObject();
      *(v77 + 16) = xmmword_225CD30F0;
      *(v77 + 32) = 20;
      v78 = [v76 code];
      v79 = MEMORY[0x277D83BF8];
      *(v77 + 64) = MEMORY[0x277D83B88];
      *(v77 + 72) = v79;
      *(v77 + 40) = v78;
      v74 = sub_225B2C374(v77);
      swift_setDeallocating();
      sub_2259CB640(v77 + 32, &qword_27D73B060, &unk_225CD3AE0);

      v80 = v33;
      v134 = 0;
      v133 = 0;
      v132 = 0;
      v72 = MEMORY[0x277D84F90];
      v73 = v33;
    }

    else
    {
      v140 = v33;
      v81 = v33;
      v82 = sub_225CCE954();
      v83 = v33;
      v84 = v134;
      v85 = swift_dynamicCast();
      v86 = *(v82 - 8);
      (*(v86 + 56))(v84, v85 ^ 1u, 1, v82);
      LODWORD(v86) = (*(v86 + 48))(v84, 1, v82);
      sub_2259CB640(v84, &unk_27D73B050, &unk_225CD3AD0);
      if (v86)
      {
        v87 = 0;
      }

      else
      {
        v87 = 23;
      }

      v134 = v87;
      v72 = MEMORY[0x277D84F90];
      v74 = sub_225B2C374(MEMORY[0x277D84F90]);
      v88 = v83;
      v133 = 0xD00000000000003DLL;
      v132 = 0x8000000225D243B0;
      v73 = v83;
      v33 = v83;
    }
  }

  v89 = v135 | 0x8000000000000000;
  v90 = swift_isUniquelyReferenced_nonNull_native();
  v140 = v74;
  sub_225B2C4A0(v136, sub_225B2AC40, 0, v90, &v140);

  v91 = v140;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v72 = sub_225B29AA0(0, *(v72 + 2) + 1, 1, v72);
  }

  v93 = *(v72 + 2);
  v92 = *(v72 + 3);
  if (v93 >= v92 >> 1)
  {
    v72 = sub_225B29AA0((v92 > 1), v93 + 1, 1, v72);
  }

  *(v72 + 2) = v93 + 1;
  v94 = &v72[56 * v93];
  v95 = v137;
  *(v94 + 4) = 0xD00000000000003DLL;
  *(v94 + 5) = v95;
  *(v94 + 6) = 0xD00000000000002DLL;
  *(v94 + 7) = 0x8000000225D23C90;
  *(v94 + 8) = 0xD00000000000003ELL;
  *(v94 + 9) = v89;
  *(v94 + 10) = 134;
  *v69 = v134;
  v96 = v133;
  *(v69 + 8) = v72;
  *(v69 + 16) = v96;
  *(v69 + 24) = v132;
  *(v69 + 32) = v91;
  *(v69 + 40) = v33;
  swift_willThrow();
}

void sub_225BE5860(unint64_t a1, int64_t a2)
{
  v4 = v2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v145 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v147 = &v139 - v10;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v161 = *(v164 - 8);
  v11 = MEMORY[0x28223BE20](v164);
  v167 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v169 = &v139 - v13;
  v168 = sub_225CCD954();
  v14 = *(v168 - 8);
  v15 = MEMORY[0x28223BE20](v168);
  v17 = &v139 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v166 = &v139 - v19;
  MEMORY[0x28223BE20](v18);
  if (a1)
  {
    v144 = &v139 - v20;
    v21 = *(a2 + 24);

    v22 = sub_225CCF5D4();

    v157 = v22;
    if (v22 > 2)
    {
      v168 = 0x8000000225D23C90;
      v167 = 0x8000000225D24290;
      v88 = MEMORY[0x277D84F90];
      v89 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v14 = swift_allocError();
      v91 = v90;
      v92 = sub_225CCE954();
      v93 = *(v92 - 8);
      v94 = v147;
      (*(v93 + 56))(v147, 1, 1, v92);
      LODWORD(v92) = (*(v93 + 48))(v94, 1, v92);
      sub_2259CB640(v94, &unk_27D73B050, &unk_225CD3AD0);
      if (v92)
      {
        v95 = 803;
      }

      else
      {
        v95 = 23;
      }

      v96 = sub_225B2C374(v88);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v171 = v96;
      sub_225B2C4A0(v89, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v171);

      v98 = v171;
      v99 = sub_225B29AA0(0, 1, 1, v88);
      v101 = *(v99 + 2);
      v100 = *(v99 + 3);
      if (v101 >= v100 >> 1)
      {
        v99 = sub_225B29AA0((v100 > 1), v101 + 1, 1, v99);
      }

      *(v99 + 2) = v101 + 1;
      v102 = &v99[56 * v101];
      *(v102 + 4) = 0xD000000000000018;
      *(v102 + 5) = 0x8000000225D24270;
      *(v102 + 6) = 0xD00000000000002DLL;
      *(v102 + 7) = v168;
      *(v102 + 8) = 0xD00000000000002ALL;
      *(v102 + 9) = v167;
      *(v102 + 10) = 147;
      *v91 = v95;
      *(v91 + 8) = v99;
      *(v91 + 16) = 0xD000000000000018;
      *(v91 + 24) = 0x8000000225D24270;
      *(v91 + 32) = v98;
      *(v91 + 40) = 0;
      swift_willThrow();
LABEL_85:
      v166 = 0;
LABEL_86:
      v3 = 0x8000000225D242C0;
      v112 = v14;
      v113 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v114 = swift_allocError();
      a1 = v115;
      swift_getErrorValue();
      v116 = v177;
      v117 = v14;
      sub_225B21FAC(v116, &v171);

      v21 = v172;
      v165 = v114;
      v169 = 0x8000000225D242C0;
      if (v172)
      {
        v164 = v171;
        v4 = v173;
        v3 = v174;
        v118 = v175;
        v27 = v176;
      }

      else
      {
        v171 = v14;
        v119 = v14;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
        sub_2259E4540();
        if (swift_dynamicCast())
        {
          v120 = v170;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_225CD30F0;
          *(inited + 32) = 20;
          v122 = [v120 code];
          v123 = MEMORY[0x277D83BF8];
          *(inited + 64) = MEMORY[0x277D83B88];
          *(inited + 72) = v123;
          *(inited + 40) = v122;
          v118 = sub_225B2C374(inited);
          swift_setDeallocating();
          sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

          v124 = v14;
          v164 = 0;
          v4 = 0;
          v3 = 0;
          v21 = MEMORY[0x277D84F90];
        }

        else
        {
          v171 = v14;
          v125 = v14;
          v126 = sub_225CCE954();
          v127 = v145;
          v128 = swift_dynamicCast();
          v129 = *(v126 - 8);
          (*(v129 + 56))(v127, v128 ^ 1u, 1, v126);
          LODWORD(v126) = (*(v129 + 48))(v127, 1, v126);
          sub_2259CB640(v127, &unk_27D73B050, &unk_225CD3AD0);
          if (v126)
          {
            v130 = 0;
          }

          else
          {
            v130 = 23;
          }

          v164 = v130;
          v21 = MEMORY[0x277D84F90];
          v118 = sub_225B2C374(MEMORY[0x277D84F90]);
          v131 = v14;
          v4 = 0xD000000000000036;
        }

        v27 = v14;
      }

      v132 = swift_isUniquelyReferenced_nonNull_native();
      v171 = v118;
      sub_225B2C4A0(v113, sub_225B2AC40, 0, v132, &v171);

      v26 = v171;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_96;
      }
    }

    else
    {
      v23 = a1 + 64;
      v24 = 1 << *(a1 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(a1 + 64);
      v27 = (v24 + 63) >> 6;
      v158 = (v14 + 16);
      v159 = (v14 + 8);

      v28 = 0;
      *&v29 = 136315138;
      v141 = v29;
      *&v29 = 134217984;
      v143 = v29;
      v150 = a2;
      v140 = a1 + 64;
      v139 = v27;
      if (v26)
      {
        while (1)
        {
          v30 = a1;
          v31 = a2;
LABEL_11:
          v142 = v28;
          v33 = __clz(__rbit64(v26)) | (v28 << 6);
          v34 = v30;
          v35 = (*(v30 + 48) + 16 * v33);
          v3 = *v35;
          v14 = v35[1];
          v36 = *(*(v30 + 56) + 8 * v33);
          v37 = *(v31 + 32);
          v38 = *(v37 + 16);

          v160 = v36;
          v163 = v3;
          if (!v38)
          {
            break;
          }

          v39 = sub_2259F18D4(v3, v14);
          if (v40)
          {
            v146 = *(*(v37 + 56) + 8 * v39);
LABEL_15:
            a2 = v31;

            goto LABEL_17;
          }

          v146 = 0;
          a2 = v31;
LABEL_17:
          a1 = v34;
          v165 = v4;
          if (qword_28105B910 != -1)
          {
            swift_once();
          }

          v41 = off_28105B918;
          v42 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
          v43 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
          os_unfair_lock_lock((off_28105B918 + v43));
          v44 = *v158;
          v154 = v42;
          v45 = &v41[v42];
          v27 = v144;
          v152 = v44;
          v44(v144, v45, v168);
          v155 = v41;
          v153 = v43;
          os_unfair_lock_unlock(&v41[v43]);

          v46 = sub_225CCD934();
          v47 = sub_225CCED04();

          v48 = os_log_type_enabled(v46, v47);
          v156 = v26;
          v49 = v146;
          if (v48)
          {
            v3 = swift_slowAlloc();
            v50 = swift_slowAlloc();
            v171 = v50;
            *v3 = v141;
            *(v3 + 4) = sub_2259BE198(v163, v14, &v171);
            _os_log_impl(&dword_2259A7000, v46, v47, "ISO18013DocumentValidator comparing digests for namespace %s", v3, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v50);
            v51 = v50;
            v26 = v156;
            MEMORY[0x22AA6F950](v51, -1, -1);
            a2 = v150;
            MEMORY[0x22AA6F950](v3, -1, -1);
          }

          v151 = *v159;
          v151(v27, v168);
          v4 = v165;
          v52 = v160;
          v21 = &qword_225CDC650;
          v148 = *(v160 + 16);
          if (v148)
          {
            v3 = 0;
            v149 = v14;
            do
            {
              if (v3 >= *(v52 + 16))
              {
                goto LABEL_102;
              }

              v53 = v169;
              sub_225A0DE54(v52 + ((*(v161 + 80) + 32) & ~*(v161 + 80)) + *(v161 + 72) * v3, v169, &qword_27D73B3D0, &qword_225CDC650);
              LOBYTE(v171) = v157;
              v54 = computeISO18013Digest(algorithm:data:)(&v171, *(v53 + 8), *(v53 + 16));
              if (v4)
              {

                sub_2259CB640(v169, &qword_27D73B3D0, &qword_225CDC650);
                v166 = 0;
                v168 = 0x8000000225D23C90;
                v167 = 0x8000000225D24290;
                v14 = v4;
                goto LABEL_86;
              }

              v165 = v3;
              v162 = v54;
              v163 = v55;
              v56 = v155;
              v57 = v153;
              os_unfair_lock_lock(&v155[v153]);
              v152(v166, &v56[v154], v168);
              os_unfair_lock_unlock(&v56[v57]);
              v27 = v167;
              sub_225A0DE54(v169, v167, &qword_27D73B3D0, &qword_225CDC650);
              v21 = sub_225CCD934();
              v26 = sub_225CCED04();
              if (os_log_type_enabled(v21, v26))
              {
                v58 = swift_slowAlloc();
                *v58 = v143;
                v59 = *(v167 + *(v164 + 48));
                sub_2259CB640(v167, &qword_27D73B3D0, &qword_225CDC650);
                *(v58 + 4) = v59;
                v4 = 0;
                v49 = v146;
                _os_log_impl(&dword_2259A7000, v21, v26, "ISO18013DocumentValidator comparing digests for digestID %lu", v58, 0xCu);
                v60 = v58;
                a2 = v150;
                MEMORY[0x22AA6F950](v60, -1, -1);
              }

              else
              {
                sub_2259CB640(v27, &qword_27D73B3D0, &qword_225CDC650);
              }

              v151(v166, v168);
              v14 = v149;
              v3 = v165;
              if (!v49)
              {
                v166 = a1;
LABEL_78:

LABEL_79:

LABEL_80:
                v49 = 0x8000000225D24300;
                v168 = 0x8000000225D23C90;
                v167 = 0x8000000225D24290;
                v103 = MEMORY[0x277D84F90];
                v104 = sub_225B2C248(MEMORY[0x277D84F90]);
                sub_2259CB5EC();
                v14 = swift_allocError();
                v66 = v105;
                v106 = sub_225CCE954();
                v107 = *(v106 - 8);
                v108 = v147;
                (*(v107 + 56))(v147, 1, 1, v106);
                LODWORD(v106) = (*(v107 + 48))(v108, 1, v106);
                sub_2259CB640(v108, &unk_27D73B050, &unk_225CD3AD0);
                if (v106)
                {
                  LOWORD(v67) = 799;
                }

                else
                {
                  LOWORD(v67) = 23;
                }

                v109 = sub_225B2C374(v103);
                v110 = swift_isUniquelyReferenced_nonNull_native();
                v171 = v109;
                sub_225B2C4A0(v104, sub_225B2AC40, 0, v110, &v171);

                v27 = v171;
                v63 = sub_225B29AA0(0, 1, 1, v103);
                a1 = *(v63 + 2);
                v71 = *(v63 + 3);
                a2 = a1 + 1;
                if (a1 >= v71 >> 1)
                {
LABEL_108:
                  v63 = sub_225B29AA0((v71 > 1), a2, 1, v63);
                }

                *(v63 + 2) = a2;
                v111 = &v63[56 * a1];
                *(v111 + 4) = 0xD00000000000002ELL;
                *(v111 + 5) = v49;
                *(v111 + 6) = 0xD00000000000002DLL;
                *(v111 + 7) = v168;
                *(v111 + 8) = 0xD00000000000002ALL;
                *(v111 + 9) = v167;
                *(v111 + 10) = 160;
                *v66 = v67;
                *(v66 + 8) = v63;
                *(v66 + 16) = 0xD00000000000002ELL;
                *(v66 + 24) = v49;
                *(v66 + 32) = v27;
                *(v66 + 40) = 0;
                swift_willThrow();

                sub_2259BEF00(v162, v163);
                sub_2259CB640(v169, &qword_27D73B3D0, &qword_225CDC650);
                goto LABEL_85;
              }

              v61 = *(v169 + *(v164 + 48));
              if (v61 < 0)
              {
                goto LABEL_103;
              }

              if (!*(v49 + 16) || (v62 = sub_2259F1900(v61), (v64 & 1) == 0))
              {
                v166 = a1;

                goto LABEL_78;
              }

              v65 = (*(v49 + 56) + 16 * v62);
              v67 = *v65;
              v66 = v65[1];
              v68 = v163;
              v69 = v163 >> 62;
              v70 = v66 >> 62;
              if (v163 >> 62 == 3)
              {
                v71 = 0;
                v72 = v162;
                if (!v162 && v163 == 0xC000000000000000 && v66 >> 62 == 3)
                {
                  v71 = 0;
                  if (!v67 && v66 == 0xC000000000000000)
                  {
                    v72 = 0;
                    v68 = 0xC000000000000000;
LABEL_24:
                    sub_2259BEF00(v72, v68);
                    goto LABEL_25;
                  }
                }
              }

              else
              {
                v72 = v162;
                if (v69)
                {
                  if (v69 == 1)
                  {
                    v71 = (HIDWORD(v162) - v162);
                    if (__OFSUB__(HIDWORD(v162), v162))
                    {
                      goto LABEL_106;
                    }

                    v71 = v71;
                  }

                  else
                  {
                    v74 = *(v162 + 2);
                    v73 = *(v162 + 3);
                    v75 = __OFSUB__(v73, v74);
                    v71 = v73 - v74;
                    if (v75)
                    {
                      goto LABEL_107;
                    }
                  }
                }

                else
                {
                  v71 = BYTE6(v163);
                }
              }

              if (v70 > 1)
              {
                if (v70 != 2)
                {
                  if (v71)
                  {
                    goto LABEL_99;
                  }

                  goto LABEL_24;
                }

                v78 = *(v67 + 16);
                v77 = *(v67 + 24);
                v75 = __OFSUB__(v77, v78);
                v76 = v77 - v78;
                if (v75)
                {
                  __break(1u);
LABEL_105:
                  __break(1u);
LABEL_106:
                  __break(1u);
LABEL_107:
                  __break(1u);
                  goto LABEL_108;
                }
              }

              else if (v70)
              {
                LODWORD(v76) = HIDWORD(v67) - v67;
                if (__OFSUB__(HIDWORD(v67), v67))
                {
                  goto LABEL_105;
                }

                v76 = v76;
              }

              else
              {
                v76 = BYTE6(v66);
              }

              if (v71 != v76)
              {
LABEL_99:
                v166 = a1;
                sub_2259CB710(v67, v66);

                sub_2259BEF00(v67, v66);
                goto LABEL_80;
              }

              if (v71 < 1)
              {
                goto LABEL_24;
              }

              v27 = a1;
              v79 = v72;
              v80 = v163;
              sub_2259CB710(v67, v66);
              sub_2259CB710(v67, v66);
              v81 = sub_225BEB284(v79, v80, v67, v66);
              sub_2259BEF00(v67, v66);
              if ((v81 & 1) == 0)
              {
                v166 = v27;

                goto LABEL_79;
              }

              sub_2259BEF00(v79, v80);
              a2 = v150;
              a1 = v27;
              v3 = v165;
LABEL_25:
              ++v3;
              v21 = &qword_225CDC650;
              sub_2259CB640(v169, &qword_27D73B3D0, &qword_225CDC650);
              v26 = v156;
              v52 = v160;
            }

            while (v148 != v3);
          }

          v26 &= v26 - 1;

          v23 = v140;
          v27 = v139;
          v28 = v142;
          if (!v26)
          {
            goto LABEL_7;
          }
        }

        v146 = 0;
        goto LABEL_15;
      }

LABEL_7:
      while (1)
      {
        v32 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v32 >= v27)
        {

          return;
        }

        v26 = *(v23 + 8 * v32);
        ++v28;
        if (v26)
        {
          v30 = a1;
          v31 = a2;
          v28 = v32;
          goto LABEL_11;
        }
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
    }

    v21 = sub_225B29AA0(0, v21[2].isa + 1, 1, v21);
LABEL_96:
    isa = v21[2].isa;
    v133 = v21[3].isa;
    if (isa >= v133 >> 1)
    {
      v21 = sub_225B29AA0((v133 > 1), isa + 1, 1, v21);
    }

    v21[2].isa = (isa + 1);
    v135 = &v21[7 * isa];
    v136 = v169;
    v135[4].isa = 0xD000000000000036;
    v135[5].isa = v136;
    v137 = v168;
    v135[6].isa = 0xD00000000000002DLL;
    v135[7].isa = v137;
    v138 = v167;
    v135[8].isa = 0xD00000000000002ALL;
    v135[9].isa = v138;
    v135[10].isa = 168;
    *a1 = v164;
    *(a1 + 8) = v21;
    *(a1 + 16) = v4;
    *(a1 + 24) = v3;
    *(a1 + 32) = v26;
    *(a1 + 40) = v27;
    swift_willThrow();

    return;
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v82 = off_28105B918;
  v83 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v84 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v84));
  (*(v14 + 16))(v17, &v82[v83], v168);
  os_unfair_lock_unlock(&v82[v84]);
  v85 = sub_225CCD934();
  v86 = sub_225CCED04();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_2259A7000, v85, v86, "ISO18013DocumentValidator found nil issuer signed namespaces. Skipping digests check as there is nothing to compare.", v87, 2u);
    MEMORY[0x22AA6F950](v87, -1, -1);
  }

  (*(v14 + 8))(v17, v168);
}

void sub_225BE6D54(uint64_t a1, void *a2)
{
  v125 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v121 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v124 = &v120 - v6;
  v7 = sub_225CCD0B4();
  v123 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_225CCD954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (*(v11 + 16))(v13, &v14[v15], v10);
  os_unfair_lock_unlock(&v14[v16]);
  MEMORY[0x28223BE20](v17);
  *(&v120 - 2) = a1;
  Logger.sensitive(_:)(sub_225BEB780);
  (*(v11 + 8))(v13, v10);
  sub_225CCD004();
  if (SecCertificateIsValid())
  {
    type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
    if (sub_225CCD054())
    {
      v18 = v122;
      v19 = v122[4];
      v20 = v122[5];
      __swift_project_boxed_opaque_existential_1(v122 + 1, v19);
      (*(v20 + 8))(v19, v20);
      v125 = sub_225BEB788(&qword_27D73D9C0, MEMORY[0x277CC9590]);
      v21 = sub_225CCE3B4();
      v23 = v123 + 8;
      v22 = *(v123 + 8);
      v22(v9, v7);
      if ((v21 & 1) == 0)
      {
        v28 = 0x8000000225D24140;
        v88 = MEMORY[0x277D84F90];
        v89 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v125 = swift_allocError();
        v32 = v90;
        v91 = sub_225CCE954();
        v92 = *(v91 - 8);
        v93 = v124;
        (*(v92 + 56))(v124, 1, 1, v91);
        LODWORD(v91) = (*(v92 + 48))(v93, 1, v91);
        sub_2259CB640(v93, &unk_27D73B050, &unk_225CD3AD0);
        if (v91)
        {
          v94 = 774;
        }

        else
        {
          v94 = 23;
        }

        v95 = sub_225B2C374(v88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v128 = v95;
        sub_225B2C4A0(v89, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v128);

        v39 = v128;
        v40 = sub_225B29AA0(0, 1, 1, v88);
        v98 = *(v40 + 2);
        v97 = *(v40 + 3);
        if (v98 >= v97 >> 1)
        {
          v40 = sub_225B29AA0((v97 > 1), v98 + 1, 1, v40);
        }

        *(v40 + 2) = v98 + 1;
        v99 = &v40[56 * v98];
        *(v99 + 4) = 0xD000000000000031;
        *(v99 + 5) = 0x8000000225D24140;
        *(v99 + 6) = 0xD00000000000002DLL;
        *(v99 + 7) = 0x8000000225D23C90;
        v123 = 0x8000000225D23C90;
        *(v99 + 8) = 0xD000000000000031;
        *(v99 + 9) = 0x8000000225D24090;
        *(v99 + 10) = 189;
        *v32 = v94;
        v44 = 0xD000000000000031;
        goto LABEL_22;
      }

      v123 = v23;
      v24 = v18;
      v25 = v18[4];
      v26 = v18[5];
      __swift_project_boxed_opaque_existential_1(v24 + 1, v25);
      (*(v26 + 8))(v25, v26);
      v27 = sub_225CCE3B4();
      v22(v9, v7);
      if (v27)
      {
        if (sub_225CCE3B4())
        {
          return;
        }

        v28 = 0x8000000225D241B0;
        v110 = MEMORY[0x277D84F90];
        v111 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v125 = swift_allocError();
        v32 = v112;
        v113 = sub_225CCE954();
        v114 = *(v113 - 8);
        v115 = v124;
        (*(v114 + 56))(v124, 1, 1, v113);
        LODWORD(v113) = (*(v114 + 48))(v115, 1, v113);
        sub_2259CB640(v115, &unk_27D73B050, &unk_225CD3AD0);
        if (v113)
        {
          v36 = 801;
        }

        else
        {
          v36 = 23;
        }

        v116 = sub_225B2C374(v110);
        v117 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v116;
        sub_225B2C4A0(v111, sub_225B2AC40, 0, v117, &v128);

        v39 = v128;
        v40 = sub_225B29AA0(0, 1, 1, v110);
        v119 = *(v40 + 2);
        v118 = *(v40 + 3);
        if (v119 >= v118 >> 1)
        {
          v40 = sub_225B29AA0((v118 > 1), v119 + 1, 1, v40);
        }

        *(v40 + 2) = v119 + 1;
        v43 = &v40[56 * v119];
        v44 = 0xD000000000000032;
        *(v43 + 4) = 0xD000000000000032;
        *(v43 + 5) = 0x8000000225D241B0;
        *(v43 + 6) = 0xD00000000000002DLL;
        *(v43 + 7) = 0x8000000225D23C90;
        v123 = 0x8000000225D23C90;
        *(v43 + 8) = 0xD000000000000031;
        *(v43 + 9) = 0x8000000225D24090;
        v45 = 197;
      }

      else
      {
        v28 = 0x8000000225D24180;
        v100 = MEMORY[0x277D84F90];
        v101 = sub_225B2C248(MEMORY[0x277D84F90]);
        sub_2259CB5EC();
        v125 = swift_allocError();
        v32 = v102;
        v103 = sub_225CCE954();
        v104 = *(v103 - 8);
        v105 = v124;
        (*(v104 + 56))(v124, 1, 1, v103);
        LODWORD(v103) = (*(v104 + 48))(v105, 1, v103);
        sub_2259CB640(v105, &unk_27D73B050, &unk_225CD3AD0);
        if (v103)
        {
          v36 = 774;
        }

        else
        {
          v36 = 23;
        }

        v106 = sub_225B2C374(v100);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v128 = v106;
        sub_225B2C4A0(v101, sub_225B2AC40, 0, v107, &v128);

        v39 = v128;
        v40 = sub_225B29AA0(0, 1, 1, v100);
        v109 = *(v40 + 2);
        v108 = *(v40 + 3);
        if (v109 >= v108 >> 1)
        {
          v40 = sub_225B29AA0((v108 > 1), v109 + 1, 1, v40);
        }

        *(v40 + 2) = v109 + 1;
        v43 = &v40[56 * v109];
        v44 = 0xD000000000000023;
        *(v43 + 4) = 0xD000000000000023;
        *(v43 + 5) = 0x8000000225D24180;
        *(v43 + 6) = 0xD00000000000002DLL;
        *(v43 + 7) = 0x8000000225D23C90;
        v123 = 0x8000000225D23C90;
        *(v43 + 8) = 0xD000000000000031;
        *(v43 + 9) = 0x8000000225D24090;
        v45 = 193;
      }
    }

    else
    {
      v28 = 0x8000000225D24110;
      v46 = MEMORY[0x277D84F90];
      v47 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v125 = swift_allocError();
      v32 = v48;
      v49 = sub_225CCE954();
      v50 = *(v49 - 8);
      v51 = v124;
      (*(v50 + 56))(v124, 1, 1, v49);
      LODWORD(v49) = (*(v50 + 48))(v51, 1, v49);
      sub_2259CB640(v51, &unk_27D73B050, &unk_225CD3AD0);
      if (v49)
      {
        v36 = 801;
      }

      else
      {
        v36 = 23;
      }

      v52 = sub_225B2C374(v46);
      v53 = swift_isUniquelyReferenced_nonNull_native();
      v128 = v52;
      sub_225B2C4A0(v47, sub_225B2AC40, 0, v53, &v128);

      v39 = v128;
      v40 = sub_225B29AA0(0, 1, 1, v46);
      v55 = *(v40 + 2);
      v54 = *(v40 + 3);
      if (v55 >= v54 >> 1)
      {
        v40 = sub_225B29AA0((v54 > 1), v55 + 1, 1, v40);
      }

      *(v40 + 2) = v55 + 1;
      v43 = &v40[56 * v55];
      v44 = 0xD00000000000002ELL;
      *(v43 + 4) = 0xD00000000000002ELL;
      *(v43 + 5) = 0x8000000225D24110;
      *(v43 + 6) = 0xD00000000000002DLL;
      *(v43 + 7) = 0x8000000225D23C90;
      v123 = 0x8000000225D23C90;
      *(v43 + 8) = 0xD000000000000031;
      *(v43 + 9) = 0x8000000225D24090;
      v45 = 185;
    }
  }

  else
  {
    v28 = 0x8000000225D24040;
    v29 = MEMORY[0x277D84F90];
    v30 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v125 = swift_allocError();
    v32 = v31;
    v33 = sub_225CCE954();
    v34 = *(v33 - 8);
    v35 = v124;
    (*(v34 + 56))(v124, 1, 1, v33);
    LODWORD(v33) = (*(v34 + 48))(v35, 1, v33);
    sub_2259CB640(v35, &unk_27D73B050, &unk_225CD3AD0);
    if (v33)
    {
      v36 = 801;
    }

    else
    {
      v36 = 23;
    }

    v37 = sub_225B2C374(v29);
    v38 = swift_isUniquelyReferenced_nonNull_native();
    v128 = v37;
    sub_225B2C4A0(v30, sub_225B2AC40, 0, v38, &v128);

    v39 = v128;
    v40 = sub_225B29AA0(0, 1, 1, v29);
    v42 = *(v40 + 2);
    v41 = *(v40 + 3);
    if (v42 >= v41 >> 1)
    {
      v40 = sub_225B29AA0((v41 > 1), v42 + 1, 1, v40);
    }

    *(v40 + 2) = v42 + 1;
    v43 = &v40[56 * v42];
    v44 = 0xD00000000000004DLL;
    *(v43 + 4) = 0xD00000000000004DLL;
    *(v43 + 5) = 0x8000000225D24040;
    *(v43 + 6) = 0xD00000000000002DLL;
    *(v43 + 7) = 0x8000000225D23C90;
    v123 = 0x8000000225D23C90;
    *(v43 + 8) = 0xD000000000000031;
    *(v43 + 9) = 0x8000000225D24090;
    v45 = 181;
  }

  *(v43 + 10) = v45;
  *v32 = v36;
LABEL_22:
  *(v32 + 8) = v40;
  *(v32 + 16) = v44;
  *(v32 + 24) = v28;
  *(v32 + 32) = v39;
  *(v32 + 40) = 0;
  v56 = v125;
  swift_willThrow();
  v124 = 0x8000000225D240D0;
  v57 = v56;
  v58 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v126 = swift_allocError();
  v60 = v59;
  swift_getErrorValue();
  v61 = v134;
  v62 = v56;
  sub_225B21FAC(v61, &v128);

  v63 = v129;
  if (v129)
  {
    v122 = v128;
    v64 = v131;
    v121 = v130;
    v65 = v132;
    v56 = v133;
  }

  else
  {
    v128 = v56;
    v66 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    if (swift_dynamicCast())
    {
      v67 = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v69 = [v67 code];
      v70 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v70;
      *(inited + 40) = v69;
      v65 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v71 = v56;
      v122 = 0;
      v121 = 0;
      v64 = 0;
      v63 = MEMORY[0x277D84F90];
    }

    else
    {
      v128 = v56;
      v72 = v56;
      v73 = sub_225CCE954();
      v74 = v121;
      v75 = swift_dynamicCast();
      v76 = *(v73 - 8);
      (*(v76 + 56))(v74, v75 ^ 1u, 1, v73);
      LODWORD(v76) = (*(v76 + 48))(v74, 1, v73);
      sub_2259CB640(v74, &unk_27D73B050, &unk_225CD3AD0);
      if (v76)
      {
        v77 = 0;
      }

      else
      {
        v77 = 23;
      }

      v122 = v77;
      v63 = MEMORY[0x277D84F90];
      v65 = sub_225B2C374(MEMORY[0x277D84F90]);
      v78 = v56;
      v121 = 0xD000000000000036;
      v64 = v124;
    }
  }

  v79 = swift_isUniquelyReferenced_nonNull_native();
  v128 = v65;
  sub_225B2C4A0(v58, sub_225B2AC40, 0, v79, &v128);

  v80 = v128;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v63 = sub_225B29AA0(0, *(v63 + 2) + 1, 1, v63);
  }

  v82 = *(v63 + 2);
  v81 = *(v63 + 3);
  if (v82 >= v81 >> 1)
  {
    v63 = sub_225B29AA0((v81 > 1), v82 + 1, 1, v63);
  }

  v83 = v125;

  *(v63 + 2) = v82 + 1;
  v84 = &v63[56 * v82];
  v85 = v124;
  *(v84 + 4) = 0xD000000000000036;
  *(v84 + 5) = v85;
  v86 = v123;
  *(v84 + 6) = 0xD00000000000002DLL;
  *(v84 + 7) = v86;
  *(v84 + 8) = 0xD000000000000031;
  *(v84 + 9) = 0x8000000225D24090;
  *(v84 + 10) = 200;
  *v60 = v122;
  v87 = v121;
  *(v60 + 8) = v63;
  *(v60 + 16) = v87;
  *(v60 + 24) = v64;
  *(v60 + 32) = v80;
  *(v60 + 40) = v56;
  swift_willThrow();
}

void sub_225BE7F30(uint64_t *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v196 = a3;
  v190 = a2;
  v214 = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v187 = &v184 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v192 = &v184 - v9;
  v203 = sub_225CCD0B4();
  v202 = *(v203 - 8);
  MEMORY[0x28223BE20](v203);
  v193 = &v184 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v194 = type metadata accessor for ISO18013Response.Document(0);
  MEMORY[0x28223BE20](v194);
  v185 = (&v184 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v184 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v184 - v16;
  v18 = sub_225CCD954();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v189 = &v184 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v188 = &v184 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v191 = &v184 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v186 = &v184 - v27;
  MEMORY[0x28223BE20](v26);
  v29 = &v184 - v28;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v204 = v17;
  v30 = off_28105B918;
  v31 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v32 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v32));
  v33 = *(v19 + 16);
  v197 = v31;
  v206 = v18;
  v199 = v19 + 16;
  v198 = v33;
  v33(v29, &v30[v31], v18);
  v200 = v32;
  os_unfair_lock_unlock(&v30[v32]);
  v34 = sub_225CCD934();
  v35 = sub_225CCED04();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 0;
    _os_log_impl(&dword_2259A7000, v34, v35, "ISO18013DocumentValidator begin validating consistency of response.", v36, 2u);
    v37 = v36;
    v4 = v3;
    MEMORY[0x22AA6F950](v37, -1, -1);
  }

  v205 = v4;

  v38 = *(v19 + 8);
  v201 = v19 + 8;
  v38(v29, v206);
  v39 = *a1;
  v40 = a1[1];
  v41 = *a1 == 0xD000000000000015;
  v195 = v38;
  if (v41 && 0x8000000225D0AC40 == v40 || (sub_225CCF934() & 1) != 0)
  {
    v42 = v204;
    sub_225BE99D4(3, v204);
    sub_225BE9F20(5);
    v44 = v43;
    v46 = v45;
    sub_225BE9F20(22);
LABEL_10:
    v194 = v47;
    v49 = v48;
    v50 = v203;
    v51 = v202;
    goto LABEL_11;
  }

  if ((v39 != 0xD000000000000016 || 0x8000000225D0AC60 != v40) && (sub_225CCF934() & 1) == 0)
  {
    if ((v39 != 0xD000000000000017 || 0x8000000225D0AC80 != v40) && (sub_225CCF934() & 1) == 0)
    {
      v172 = v200;
      os_unfair_lock_lock(&v30[v200]);
      v173 = v186;
      v174 = v206;
      v198(v186, &v30[v197], v206);
      os_unfair_lock_unlock(&v30[v172]);
      v175 = v185;
      sub_225BEB7CC(a1, v185, type metadata accessor for ISO18013Response.Document);
      v176 = sub_225CCD934();
      v177 = sub_225CCED04();
      if (os_log_type_enabled(v176, v177))
      {
        v178 = swift_slowAlloc();
        v179 = swift_slowAlloc();
        v209.data = v179;
        *v178 = 136315138;
        v180 = *v175;
        v181 = v175[1];

        sub_225BEB720(v175, type metadata accessor for ISO18013Response.Document);
        v182 = sub_2259BE198(v180, v181, &v209);

        *(v178 + 4) = v182;
        _os_log_impl(&dword_2259A7000, v176, v177, "ISO18013DocumentValidator skipping consistency check on document with type %s", v178, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v179);
        MEMORY[0x22AA6F950](v179, -1, -1);
        MEMORY[0x22AA6F950](v178, -1, -1);

        v183 = v186;
      }

      else
      {

        sub_225BEB720(v175, type metadata accessor for ISO18013Response.Document);
        v183 = v173;
      }

      v38(v183, v174);
      return;
    }

    v42 = v204;
    sub_225BEA430(13, v204);
    sub_225BEA984(17);
    v44 = v156;
    v46 = v157;
    sub_225BEA984(16);
    goto LABEL_10;
  }

  v51 = v202;
  v42 = v204;
  v50 = v203;
  (*(v202 + 56))(v204, 1, 1, v203);
  v194 = 0;
  v49 = 0;
  v44 = 0;
  v46 = 0;
LABEL_11:
  sub_225A0DE54(v42, v15, &unk_27D73FD00, &qword_225CDC6E0);
  if ((*(v51 + 48))(v15, 1, v50) == 1)
  {
    sub_2259CB640(v15, &unk_27D73FD00, &qword_225CDC6E0);
    if (!v46)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v52 = v44;
    v53 = v193;
    (*(v51 + 32))(v193, v15, v50);
    type metadata accessor for ISO18013MobileSecurityObject(0);
    v54 = v190;
    type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
    if ((sub_225CCD054() & 1) == 0)
    {

      v60 = v200;
      os_unfair_lock_lock(&v30[v200]);
      v61 = v191;
      v62 = v206;
      v198(v191, &v30[v197], v206);
      os_unfair_lock_unlock(&v30[v60]);
      MEMORY[0x28223BE20](v63);
      *(&v184 - 2) = v53;
      *(&v184 - 1) = v54;
      Logger.sensitive(_:)(sub_225BEB718);
      v195(v61, v62);
      v206 = 0x8000000225D23E10;
      v64 = MEMORY[0x277D84F90];
      v65 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v66 = swift_allocError();
      v68 = v67;
      v69 = sub_225CCE954();
      v70 = *(v69 - 8);
      v71 = v192;
      (*(v70 + 56))(v192, 1, 1, v69);
      LODWORD(v69) = (*(v70 + 48))(v71, 1, v69);
      sub_2259CB640(v71, &unk_27D73B050, &unk_225CD3AD0);
      if (v69)
      {
        v72 = 797;
      }

      else
      {
        v72 = 23;
      }

      v73 = sub_225B2C374(v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v209.data = v73;
      sub_225B2C4A0(v65, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v209);

      data = v209.data;
      v76 = sub_225B29AA0(0, 1, 1, v64);
      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      if (v78 >= v77 >> 1)
      {
        v76 = sub_225B29AA0((v77 > 1), v78 + 1, 1, v76);
      }

      *(v76 + 2) = v78 + 1;
      v79 = &v76[56 * v78];
      *(v79 + 4) = 0xD000000000000024;
      *(v79 + 5) = 0x8000000225D23EF0;
      *(v79 + 6) = 0xD00000000000002DLL;
      *(v79 + 7) = 0x8000000225D23C90;
      v201 = 0x8000000225D23C90;
      v80 = v206;
      *(v79 + 8) = 0xD000000000000036;
      *(v79 + 9) = v80;
      *(v79 + 10) = 243;
      *v68 = v72;
      *(v68 + 8) = v76;
      *(v68 + 16) = 0xD000000000000024;
      *(v68 + 24) = 0x8000000225D23EF0;
      *(v68 + 32) = data;
      *(v68 + 40) = 0;
      swift_willThrow();
      sub_2259CB640(v204, &unk_27D73FD00, &qword_225CDC6E0);
      (*(v202 + 8))(v193, v203);
      goto LABEL_48;
    }

    (*(v51 + 8))(v53, v50);
    v44 = v52;
    v42 = v204;
    if (!v46)
    {
      goto LABEL_33;
    }
  }

  v209 = oidCountryName;

  v55 = SecCertificateCopySubjectAttributeValue();
  if (v55)
  {
    v56 = v55;
    v57 = sub_225CCE474();
    v59 = v58;

    if (v44 == v57 && v46 == v59)
    {
      swift_bridgeObjectRelease_n();
LABEL_32:

LABEL_33:
      v82 = v206;
      v83 = v195;
      if (!v49)
      {
LABEL_53:
        v135 = v200;
        os_unfair_lock_lock(&v30[v200]);
        v136 = v189;
        v198(v189, &v30[v197], v82);
        os_unfair_lock_unlock(&v30[v135]);
        v137 = sub_225CCD934();
        v138 = sub_225CCED04();
        if (os_log_type_enabled(v137, v138))
        {
          v139 = swift_slowAlloc();
          *v139 = 0;
          _os_log_impl(&dword_2259A7000, v137, v138, "ISO18013DocumentValidator successfully validated consistency of response.", v139, 2u);
          MEMORY[0x22AA6F950](v139, -1, -1);
        }

        v83(v136, v82);
        sub_2259CB640(v42, &unk_27D73FD00, &qword_225CDC6E0);
        return;
      }

      v209 = oidStateOrProvinceName;
      v84 = SecCertificateCopySubjectAttributeValue();
      if (!v84)
      {
LABEL_52:

        goto LABEL_53;
      }

      v85 = v84;
      v203 = sub_225CCE474();
      v87 = v86;

      v88 = v200;
      os_unfair_lock_lock(&v30[v200]);
      v198(v188, &v30[v197], v82);
      os_unfair_lock_unlock(&v30[v88]);
      v89 = sub_225CCD934();
      v90 = sub_225CCED04();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_2259A7000, v89, v90, "ISO18013DocumentValidator performing issuing jurisdiction consistency check.", v91, 2u);
        v42 = v204;
        MEMORY[0x22AA6F950](v91, -1, -1);
      }

      v82 = v206;
      v83(v188, v206);
      v92 = v194;
      if (v194 == v203 && v49 == v87 || (sub_225CCF934() & 1) != 0)
      {

        goto LABEL_52;
      }

      v158 = v200;
      os_unfair_lock_lock(&v30[v200]);
      v159 = v191;
      v198(v191, &v30[v197], v82);
      os_unfair_lock_unlock(&v30[v158]);
      sub_225B414AC(v159, v92, v49, v203, v87);

      v83(v159, v82);
      v97 = 0x8000000225D23DB0;
      v201 = 0x8000000225D23C90;
      v206 = 0x8000000225D23E10;
      v160 = MEMORY[0x277D84F90];
      v161 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v66 = swift_allocError();
      v101 = v162;
      v163 = sub_225CCE954();
      v164 = *(v163 - 8);
      v165 = v192;
      (*(v164 + 56))(v192, 1, 1, v163);
      LODWORD(v163) = (*(v164 + 48))(v165, 1, v163);
      sub_2259CB640(v165, &unk_27D73B050, &unk_225CD3AD0);
      if (v163)
      {
        v105 = 796;
      }

      else
      {
        v105 = 23;
      }

      v166 = sub_225B2C374(v160);
      v167 = swift_isUniquelyReferenced_nonNull_native();
      v209.data = v166;
      sub_225B2C4A0(v161, sub_225B2AC40, 0, v167, &v209);

      v108 = v209.data;
      v109 = sub_225B29AA0(0, 1, 1, v160);
      v169 = *(v109 + 2);
      v168 = *(v109 + 3);
      if (v169 >= v168 >> 1)
      {
        v109 = sub_225B29AA0((v168 > 1), v169 + 1, 1, v109);
      }

      *(v109 + 2) = v169 + 1;
      v112 = &v109[56 * v169];
      v113 = 0xD000000000000052;
      *(v112 + 4) = 0xD000000000000052;
      *(v112 + 5) = 0x8000000225D23DB0;
      v170 = v201;
      *(v112 + 6) = 0xD00000000000002DLL;
      *(v112 + 7) = v170;
      v171 = v206;
      *(v112 + 8) = 0xD000000000000036;
      *(v112 + 9) = v171;
      v115 = 260;
      goto LABEL_47;
    }

    v81 = sub_225CCF934();

    if (v81)
    {
      goto LABEL_32;
    }
  }

  else
  {
  }

  v93 = v200;
  os_unfair_lock_lock(&v30[v200]);
  v94 = v191;
  v95 = v206;
  v198(v191, &v30[v197], v206);
  os_unfair_lock_unlock(&v30[v93]);
  v96 = v196;
  sub_225B412A4(v94, v44, v46, v96);

  v195(v94, v95);
  v97 = 0x8000000225D23EA0;
  v206 = 0x8000000225D23E10;
  v98 = MEMORY[0x277D84F90];
  v99 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v66 = swift_allocError();
  v101 = v100;
  v102 = sub_225CCE954();
  v103 = *(v102 - 8);
  v104 = v192;
  (*(v103 + 56))(v192, 1, 1, v102);
  LODWORD(v102) = (*(v103 + 48))(v104, 1, v102);
  sub_2259CB640(v104, &unk_27D73B050, &unk_225CD3AD0);
  if (v102)
  {
    v105 = 795;
  }

  else
  {
    v105 = 23;
  }

  v106 = sub_225B2C374(v98);
  v107 = swift_isUniquelyReferenced_nonNull_native();
  v209.data = v106;
  sub_225B2C4A0(v99, sub_225B2AC40, 0, v107, &v209);

  v108 = v209.data;
  v109 = sub_225B29AA0(0, 1, 1, v98);
  v111 = *(v109 + 2);
  v110 = *(v109 + 3);
  if (v111 >= v110 >> 1)
  {
    v109 = sub_225B29AA0((v110 > 1), v111 + 1, 1, v109);
  }

  *(v109 + 2) = v111 + 1;
  v112 = &v109[56 * v111];
  v113 = 0xD000000000000045;
  *(v112 + 4) = 0xD000000000000045;
  *(v112 + 5) = 0x8000000225D23EA0;
  *(v112 + 6) = 0xD00000000000002DLL;
  *(v112 + 7) = 0x8000000225D23C90;
  v201 = 0x8000000225D23C90;
  v114 = v206;
  *(v112 + 8) = 0xD000000000000036;
  *(v112 + 9) = v114;
  v115 = 251;
LABEL_47:
  *(v112 + 10) = v115;
  *v101 = v105;
  *(v101 + 8) = v109;
  *(v101 + 16) = v113;
  *(v101 + 24) = v97;
  *(v101 + 32) = v108;
  *(v101 + 40) = 0;
  swift_willThrow();
  sub_2259CB640(v204, &unk_27D73FD00, &qword_225CDC6E0);
LABEL_48:
  v204 = 0x8000000225D23E50;
  v116 = v66;
  v117 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v118 = swift_allocError();
  v120 = v119;
  swift_getErrorValue();
  v121 = v208;
  v122 = v66;
  sub_225B21FAC(v121, &v209);

  length = v209.length;
  v205 = v118;
  if (v209.length)
  {
    v124 = v66;
    v203 = v209.data;
    v125 = v210;
    v126 = v211;
    v127 = v212;
    v128 = v213;
  }

  else
  {
    v209.data = v66;
    v129 = v66;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259E4540();
    v128 = v66;
    if (swift_dynamicCast())
    {
      v130 = v207;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v132 = [v130 code];
      v133 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v133;
      *(inited + 40) = v132;
      v127 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v134 = v66;
      v203 = 0;
      v125 = 0;
      v126 = 0;
      length = MEMORY[0x277D84F90];
      v124 = v128;
    }

    else
    {
      v209.data = v66;
      v140 = v66;
      v141 = sub_225CCE954();
      v202 = 0;
      v142 = v66;
      v143 = v187;
      v144 = swift_dynamicCast();
      v145 = *(v141 - 8);
      (*(v145 + 56))(v143, v144 ^ 1u, 1, v141);
      LODWORD(v145) = (*(v145 + 48))(v143, 1, v141);
      sub_2259CB640(v143, &unk_27D73B050, &unk_225CD3AD0);
      if (v145)
      {
        v146 = 0;
      }

      else
      {
        v146 = 23;
      }

      v203 = v146;
      length = MEMORY[0x277D84F90];
      v127 = sub_225B2C374(MEMORY[0x277D84F90]);
      v147 = v66;
      v125 = 0xD000000000000042;
      v126 = v204;
      v124 = v142;
      v128 = v142;
    }
  }

  v148 = swift_isUniquelyReferenced_nonNull_native();
  v209.data = v127;
  sub_225B2C4A0(v117, sub_225B2AC40, 0, v148, &v209);

  v149 = v209.data;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    length = sub_225B29AA0(0, *(length + 2) + 1, 1, length);
  }

  v151 = *(length + 2);
  v150 = *(length + 3);
  if (v151 >= v150 >> 1)
  {
    length = sub_225B29AA0((v150 > 1), v151 + 1, 1, length);
  }

  *(length + 2) = v151 + 1;
  v152 = &length[56 * v151];
  v153 = v204;
  *(v152 + 4) = 0xD000000000000042;
  *(v152 + 5) = v153;
  v154 = v201;
  *(v152 + 6) = 0xD00000000000002DLL;
  *(v152 + 7) = v154;
  v155 = v206;
  *(v152 + 8) = 0xD000000000000036;
  *(v152 + 9) = v155;
  *(v152 + 10) = 266;
  *v120 = v203;
  *(v120 + 8) = length;
  *(v120 + 16) = v125;
  *(v120 + 24) = v126;
  *(v120 + 32) = v149;
  *(v120 + 40) = v128;
  swift_willThrow();
}

uint64_t sub_225BE9864()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000033, 0x8000000225D241F0);
  sub_225CCD0B4();
  sub_225BEB788(&qword_27D73FCC0, MEMORY[0x277CC95B8]);
  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  MEMORY[0x22AA6CE70](0xD000000000000014, 0x8000000225D24230);
  type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  MEMORY[0x22AA6CE70](0xD000000000000015, 0x8000000225D24250);
  v2 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v2);

  return 0;
}

void sub_225BE99D4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ISO18013IssuerSignedItem(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8, &unk_225CF98D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = *v2;
  if (!v17 || !*(v17 + 16) || (sub_2259F18D4(0xD000000000000011, 0x8000000225D0ACA0), (v18 & 1) == 0) || (v19 = ) == 0)
  {
    (*(v9 + 56))(v16, 1, 1, v8);
LABEL_16:
    sub_225A0DE54(v16, v14, &qword_27D73FCB8, &unk_225CF98D0);
    if ((*(v9 + 48))(v14, 1, v8) == 1)
    {
      sub_2259CB640(v16, &qword_27D73FCB8, &unk_225CF98D0);
      sub_2259CB640(v14, &qword_27D73FCB8, &unk_225CF98D0);
      memset(v43, 0, sizeof(v43));
    }

    else
    {
      v33 = v40;
      sub_225BEB7CC(&v14[*(v8 + 48)], v40, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v14, &qword_27D73B3D0, &qword_225CDC650);
      v34 = v41;
      sub_225BEB7CC(v33 + *(v39 + 28), v41, type metadata accessor for AnyCodable);
      sub_225BEB720(v33, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v43);
      sub_225BEB720(v34, type metadata accessor for AnyCodable);
      sub_2259CB640(v16, &qword_27D73FCB8, &unk_225CF98D0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
    v35 = sub_225CCD0B4();
    v36 = swift_dynamicCast();
    (*(*(v35 - 8) + 56))(a2, v36 ^ 1u, 1, v35);
    return;
  }

  v20 = *(v19 + 16);
  v37 = a2;
  v38 = v20;
  if (!v20)
  {
LABEL_14:

    (*(v9 + 56))(v16, 1, 1, v8);
LABEL_22:
    a2 = v37;
    goto LABEL_16;
  }

  v21 = 0;
  while (v21 < *(v19 + 16))
  {
    v22 = v16;
    v23 = v19;
    v24 = v42;
    sub_225A0DE54(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v42, &qword_27D73B3D0, &qword_225CDC650);
    v25 = a1;
    LOBYTE(v43[0]) = a1;
    v26 = v8;
    v27 = v24 + *(v8 + 48);
    v29 = *(v27 + 24);
    v28 = *(v27 + 32);
    if (v29 == ISO18013_5_1_ElementIdentifier.rawValue.getter() && v28 == v30)
    {

LABEL_21:

      v8 = v26;
      v16 = v22;
      sub_225A47298(v42, v22);
      (*(v9 + 56))(v22, 0, 1, v26);
      goto LABEL_22;
    }

    v32 = sub_225CCF934();

    if (v32)
    {
      goto LABEL_21;
    }

    ++v21;
    sub_2259CB640(v42, &qword_27D73B3D0, &qword_225CDC650);
    a1 = v25;
    v16 = v22;
    v8 = v26;
    v19 = v23;
    if (v38 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_225BE9F20(uint64_t a1)
{
  v3 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ISO18013IssuerSignedItem(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8, &unk_225CF98D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *v1;
  if (!v16 || !*(v16 + 16) || (sub_2259F18D4(0xD000000000000011, 0x8000000225D0ACA0), (v17 & 1) == 0) || (v18 = ) == 0)
  {
    (*(v8 + 56))(v15, 1, 1, v7);
LABEL_16:
    sub_225A0DE54(v15, v13, &qword_27D73FCB8, &unk_225CF98D0);
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      sub_2259CB640(v15, &qword_27D73FCB8, &unk_225CF98D0);
      sub_2259CB640(v13, &qword_27D73FCB8, &unk_225CF98D0);
      memset(v39, 0, sizeof(v39));
    }

    else
    {
      v32 = v37;
      sub_225BEB7CC(&v13[*(v7 + 48)], v37, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v13, &qword_27D73B3D0, &qword_225CDC650);
      sub_225BEB7CC(v32 + *(v36 + 28), v5, type metadata accessor for AnyCodable);
      sub_225BEB720(v32, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v39);
      sub_225BEB720(v5, type metadata accessor for AnyCodable);
      sub_2259CB640(v15, &qword_27D73FCB8, &unk_225CF98D0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
    swift_dynamicCast();
    return;
  }

  v19 = *(v18 + 16);
  v34 = v5;
  v35 = v19;
  if (!v19)
  {
LABEL_14:

    (*(v8 + 56))(v15, 1, 1, v7);
LABEL_22:
    v5 = v34;
    goto LABEL_16;
  }

  v20 = 0;
  while (v20 < *(v18 + 16))
  {
    v21 = v15;
    v22 = v18;
    v23 = v38;
    sub_225A0DE54(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v38, &qword_27D73B3D0, &qword_225CDC650);
    v24 = a1;
    LOBYTE(v39[0]) = a1;
    v25 = v7;
    v26 = v23 + *(v7 + 48);
    v28 = *(v26 + 24);
    v27 = *(v26 + 32);
    if (v28 == ISO18013_5_1_ElementIdentifier.rawValue.getter() && v27 == v29)
    {

LABEL_21:

      v7 = v25;
      v15 = v21;
      sub_225A47298(v38, v21);
      (*(v8 + 56))(v21, 0, 1, v25);
      goto LABEL_22;
    }

    v31 = sub_225CCF934();

    if (v31)
    {
      goto LABEL_21;
    }

    ++v20;
    sub_2259CB640(v38, &qword_27D73B3D0, &qword_225CDC650);
    a1 = v24;
    v15 = v21;
    v7 = v25;
    v18 = v22;
    if (v35 == v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_225BEA430(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v5 - 8);
  v41 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for ISO18013IssuerSignedItem(0);
  MEMORY[0x28223BE20](v39);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v42 = &v37 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8, &unk_225CF98D0);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = *v2;
  if (!v17 || !*(v17 + 16) || (sub_2259F18D4(0x2E6F73692E67726FLL, 0xEF312E3032323332), (v18 & 1) == 0) || (v19 = ) == 0)
  {
    (*(v9 + 56))(v16, 1, 1, v8);
LABEL_16:
    sub_225A0DE54(v16, v14, &qword_27D73FCB8, &unk_225CF98D0);
    if ((*(v9 + 48))(v14, 1, v8) == 1)
    {
      sub_2259CB640(v16, &qword_27D73FCB8, &unk_225CF98D0);
      sub_2259CB640(v14, &qword_27D73FCB8, &unk_225CF98D0);
      memset(v43, 0, sizeof(v43));
    }

    else
    {
      v33 = v40;
      sub_225BEB7CC(&v14[*(v8 + 48)], v40, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v14, &qword_27D73B3D0, &qword_225CDC650);
      v34 = v41;
      sub_225BEB7CC(v33 + *(v39 + 28), v41, type metadata accessor for AnyCodable);
      sub_225BEB720(v33, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v43);
      sub_225BEB720(v34, type metadata accessor for AnyCodable);
      sub_2259CB640(v16, &qword_27D73FCB8, &unk_225CF98D0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
    v35 = sub_225CCD0B4();
    v36 = swift_dynamicCast();
    (*(*(v35 - 8) + 56))(a2, v36 ^ 1u, 1, v35);
    return;
  }

  v20 = *(v19 + 16);
  v37 = a2;
  v38 = v20;
  if (!v20)
  {
LABEL_14:

    (*(v9 + 56))(v16, 1, 1, v8);
LABEL_22:
    a2 = v37;
    goto LABEL_16;
  }

  v21 = 0;
  while (v21 < *(v19 + 16))
  {
    v22 = v16;
    v23 = v19;
    v24 = v42;
    sub_225A0DE54(v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v42, &qword_27D73B3D0, &qword_225CDC650);
    v25 = a1;
    LOBYTE(v43[0]) = a1;
    v26 = v8;
    v27 = v24 + *(v8 + 48);
    v29 = *(v27 + 24);
    v28 = *(v27 + 32);
    if (v29 == ISO23220_1_ElementIdentifier.rawValue.getter() && v28 == v30)
    {

LABEL_21:

      v8 = v26;
      v16 = v22;
      sub_225A47298(v42, v22);
      (*(v9 + 56))(v22, 0, 1, v26);
      goto LABEL_22;
    }

    v32 = sub_225CCF934();

    if (v32)
    {
      goto LABEL_21;
    }

    ++v21;
    sub_2259CB640(v42, &qword_27D73B3D0, &qword_225CDC650);
    a1 = v25;
    v16 = v22;
    v8 = v26;
    v19 = v23;
    if (v38 == v21)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

void sub_225BEA984(uint64_t a1)
{
  v3 = type metadata accessor for AnyCodable(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for ISO18013IssuerSignedItem(0);
  MEMORY[0x28223BE20](v36);
  v37 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73B3D0, &qword_225CDC650);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v38 = &v33 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FCB8, &unk_225CF98D0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v33 - v14;
  v16 = *v1;
  if (!v16 || !*(v16 + 16) || (sub_2259F18D4(0x2E6F73692E67726FLL, 0xEF312E3032323332), (v17 & 1) == 0) || (v18 = ) == 0)
  {
    (*(v8 + 56))(v15, 1, 1, v7);
LABEL_16:
    sub_225A0DE54(v15, v13, &qword_27D73FCB8, &unk_225CF98D0);
    if ((*(v8 + 48))(v13, 1, v7) == 1)
    {
      sub_2259CB640(v15, &qword_27D73FCB8, &unk_225CF98D0);
      sub_2259CB640(v13, &qword_27D73FCB8, &unk_225CF98D0);
      memset(v39, 0, sizeof(v39));
    }

    else
    {
      v32 = v37;
      sub_225BEB7CC(&v13[*(v7 + 48)], v37, type metadata accessor for ISO18013IssuerSignedItem);
      sub_2259CB640(v13, &qword_27D73B3D0, &qword_225CDC650);
      sub_225BEB7CC(v32 + *(v36 + 28), v5, type metadata accessor for AnyCodable);
      sub_225BEB720(v32, type metadata accessor for ISO18013IssuerSignedItem);
      AnyCodable.value.getter(v39);
      sub_225BEB720(v5, type metadata accessor for AnyCodable);
      sub_2259CB640(v15, &qword_27D73FCB8, &unk_225CF98D0);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73DD90, &unk_225CD4950);
    swift_dynamicCast();
    return;
  }

  v19 = *(v18 + 16);
  v34 = v5;
  v35 = v19;
  if (!v19)
  {
LABEL_14:

    (*(v8 + 56))(v15, 1, 1, v7);
LABEL_22:
    v5 = v34;
    goto LABEL_16;
  }

  v20 = 0;
  while (v20 < *(v18 + 16))
  {
    v21 = v15;
    v22 = v18;
    v23 = v38;
    sub_225A0DE54(v18 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v20, v38, &qword_27D73B3D0, &qword_225CDC650);
    v24 = a1;
    LOBYTE(v39[0]) = a1;
    v25 = v7;
    v26 = v23 + *(v7 + 48);
    v28 = *(v26 + 24);
    v27 = *(v26 + 32);
    if (v28 == ISO23220_1_ElementIdentifier.rawValue.getter() && v27 == v29)
    {

LABEL_21:

      v7 = v25;
      v15 = v21;
      sub_225A47298(v38, v21);
      (*(v8 + 56))(v21, 0, 1, v25);
      goto LABEL_22;
    }

    v31 = sub_225CCF934();

    if (v31)
    {
      goto LABEL_21;
    }

    ++v20;
    sub_2259CB640(v38, &qword_27D73B3D0, &qword_225CDC650);
    a1 = v24;
    v15 = v21;
    v7 = v25;
    v18 = v22;
    if (v35 == v20)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
}

uint64_t sub_225BEAE9C()
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000025, 0x8000000225D23F20);
  sub_225CCD0B4();
  sub_225BEB788(&qword_27D73FCC0, MEMORY[0x277CC95B8]);
  v0 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v0);

  MEMORY[0x22AA6CE70](0xD00000000000001ALL, 0x8000000225D23F50);
  type metadata accessor for ISO18013MobileSecurityObject(0);
  type metadata accessor for ISO18013MobileSecurityObject.ValidityInfo(0);
  v1 = sub_225CCF824();
  MEMORY[0x22AA6CE70](v1);

  return 0;
}

uint64_t sub_225BEAFD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD000000000000029, 0x8000000225D23F70);
  MEMORY[0x22AA6CE70](a1, a2);
  MEMORY[0x22AA6CE70](0xD00000000000002BLL, 0x8000000225D23FA0);
  v5 = SecCertificateCopySubjectAttributeValue();
  if (v5)
  {
    v6 = v5;
    v7 = sub_225CCE474();
    v9 = v8;
  }

  else
  {
    v9 = 0xE300000000000000;
    v7 = 7104878;
  }

  MEMORY[0x22AA6CE70](v7, v9);

  return 0;
}

uint64_t sub_225BEB10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_225CCF204();
  MEMORY[0x22AA6CE70](0xD00000000000002ELL, 0x8000000225D23FD0);
  MEMORY[0x22AA6CE70](a1, a2);
  MEMORY[0x22AA6CE70](0xD000000000000033, 0x8000000225D24000);
  MEMORY[0x22AA6CE70](a3, a4);
  return 0;
}

uint64_t sub_225BEB1D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_225A13BBC;

  return ISO18013DocumentValidator.authenticateDocument(_:issuerCertificateChain:)(a1, a2, a3);
}

uint64_t sub_225BEB284(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_225BEB660(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_2259BEF00(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_225ABC240(v13, a3, a4, &v12);
  v10 = v4;
  sub_2259BEF00(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_225BEB414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ISO18013MobileSecurityObject(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of ISO18013DocumentValidating.authenticateDocument(_:issuerCertificateChain:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_225A206E8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_225BEB5BC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_225BEB604(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_225BEB660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_225CCCA44();
  v11 = result;
  if (result)
  {
    result = sub_225CCCA74();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_225CCCA64();
  sub_225ABC240(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_225BEB720(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_225BEB788(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_225CCD0B4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_225BEB7CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_225BEB8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v7 = sub_225CCD1C4();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_225CCE434();
  MEMORY[0x28223BE20](v8 - 8);
  sub_225CCE3D4();
  if (qword_28105B8B8 != -1)
  {
    swift_once();
  }

  v9 = qword_28105E338;
  sub_225CCD1B4();
  result = sub_225CCE4E4();
  *a4 = result;
  *a5 = v11;
  return result;
}

uint64_t sub_225BEBA1C(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t UserNotificationAction.hashValue.getter()
{
  v1 = *v0;
  sub_225CCFBD4();
  MEMORY[0x22AA6E420](v1);
  return sub_225CCFC24();
}

CoreIDVShared::UserNotificationCategory_optional __swiftcall UserNotificationCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t UserNotificationCategory.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000049;
  }

  else
  {
    return 0xD000000000000034;
  }
}

uint64_t sub_225BEBBC0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000049;
  }

  else
  {
    v3 = 0xD000000000000034;
  }

  if (v2)
  {
    v4 = "ssEqual";
  }

  else
  {
    v4 = "ion-category.default";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000049;
  }

  else
  {
    v6 = 0xD000000000000034;
  }

  if (*a2)
  {
    v7 = "ion-category.default";
  }

  else
  {
    v7 = "ssEqual";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_225CCF934();
  }

  return v9 & 1;
}

uint64_t sub_225BEBC6C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BEBCEC(uint64_t a1)
{
  sub_225CCE5B4();
}

uint64_t sub_225BEBD58()
{
  sub_225CCFBD4();
  sub_225CCE5B4();

  return sub_225CCFC24();
}

uint64_t sub_225BEBDD4@<X0>(char *a2@<X8>)
{
  v3 = sub_225CCF5D4();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_225BEBE34(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000049;
  }

  else
  {
    v2 = 0xD000000000000034;
  }

  if (*v1)
  {
    v3 = "ion-category.default";
  }

  else
  {
    v3 = "ssEqual";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t UserNotificationRequest.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t UserNotificationRequest.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t UserNotificationRequest.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t UserNotificationRequest.body.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t UserNotificationRequest.iconSystemImageName.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t UserNotificationRequest.iconSystemImageName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t UserNotificationRequest.identifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t UserNotificationRequest.identifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

uint64_t UserNotificationRequest.expirationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for UserNotificationRequest(0) + 48);

  return sub_225A94014(v3, a1);
}

uint64_t UserNotificationRequest.expirationDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for UserNotificationRequest(0) + 48);

  return sub_225BEC214(a1, v3);
}

uint64_t sub_225BEC214(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t UserNotificationRequest.init(title:body:category:iconSystemImageName:defaultActionRequiresAuthentication:identifier:playSound:isTimeSensitive:expirationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, char a13, uint64_t a14)
{
  v19 = *a5;
  v20 = *(type metadata accessor for UserNotificationRequest(0) + 48);
  v21 = sub_225CCD0B4();
  (*(*(v21 - 8) + 56))(a9 + v20, 1, 1, v21);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = v19;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 81) = a13;

  return sub_225BEC214(a14, a9 + v20);
}

uint64_t UserNotificationRequest.hash(into:)(uint64_t a1)
{
  v2 = sub_225CCD0B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  sub_225CCE5B4();
  sub_225CCE5B4();
  sub_225CCE5B4();

  if (*(v1 + 48))
  {
    sub_225CCFBF4();
    sub_225CCE5B4();
  }

  else
  {
    sub_225CCFBF4();
  }

  sub_225CCFBF4();
  sub_225CCE5B4();
  sub_225CCFBF4();
  sub_225CCFBF4();
  v9 = type metadata accessor for UserNotificationRequest(0);
  sub_225A94014(v1 + *(v9 + 48), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_225CCFBF4();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_225CCFBF4();
  sub_225BEE864(&qword_27D73D1C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_225CCE354();
  return (*(v3 + 8))(v5, v2);
}

uint64_t UserNotificationRequest.hashValue.getter()
{
  sub_225CCFBD4();
  UserNotificationRequest.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225BEC6AC()
{
  sub_225CCFBD4();
  UserNotificationRequest.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t sub_225BEC6F0()
{
  sub_225CCFBD4();
  UserNotificationRequest.hash(into:)(v1);
  return sub_225CCFC24();
}

uint64_t UserNotificationManager.__allocating_init()()
{
  v0 = swift_allocObject();
  UserNotificationManager.init()();
  return v0;
}

uint64_t UserNotificationManager.init()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v3 = sub_225CCE444();
  v4 = [v2 initWithBundleIdentifier_];

  *(v1 + 16) = v4;
  v5 = [objc_allocWithZone(type metadata accessor for UserNotificationManagerDelegate()) init];
  *(v1 + 24) = v5;
  [*(v1 + 16) setDelegate_];
  v15 = MEMORY[0x277D84F90];
  v6 = *(v1 + 16);
  sub_225CCF394();
  v7 = objc_allocWithZone(MEMORY[0x277CE1F50]);
  v8 = sub_225CCE444();
  v9 = [v7 initWithIdentifier_];

  [v9 setOptions_];
  sub_225CCF364();
  sub_225CCF3A4();
  sub_225CCF3B4();
  sub_225CCF374();
  v10 = objc_allocWithZone(MEMORY[0x277CE1F50]);
  v11 = sub_225CCE444();
  v12 = [v10 initWithIdentifier_];

  [v12 setOptions_];
  sub_225CCF364();
  sub_225CCF3A4();
  sub_225CCF3B4();
  sub_225CCF374();
  sub_225BEE6B8(v15);

  sub_225BEE818();
  sub_225BEE864(&qword_281059AA8, sub_225BEE818, MEMORY[0x277D85378]);
  v13 = sub_225CCEBE4();

  [v6 setNotificationCategories_];

  [*(v1 + 16) setWantsNotificationResponsesDelivered];
  return v1;
}

uint64_t UserNotificationManager.addNotification(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225BECB18, 0, 0);
}

uint64_t sub_225BECB18()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
  v0[24] = v2;
  v3 = sub_225CCE444();
  [v2 setBody_];

  v4 = sub_225CCE444();

  [v2 setCategoryIdentifier_];

  if (*(v1 + 48))
  {
    v5 = sub_225CCE444();
    v6 = [objc_opt_self() iconForSystemImageNamed_];
  }

  else
  {
    v6 = 0;
  }

  v7 = v0[18];
  [v2 setIcon_];

  [v2 setShouldAuthenticateDefaultAction_];
  [v2 setShouldBackgroundDefaultAction_];
  if (*(v7 + 80) == 1)
  {
    v8 = [objc_opt_self() defaultSound];
  }

  else
  {
    v8 = 0;
  }

  v9 = v0[23];
  v10 = v0[18];
  [v2 setSound_];

  v11 = sub_225CCE444();
  [v2 setTitle_];

  v12 = *(v10 + 81);
  [v2 setShouldIgnoreDoNotDisturb_];
  [v2 setShouldIgnoreDowntime_];
  [v2 setInterruptionLevel_];
  v13 = type metadata accessor for UserNotificationRequest(0);
  sub_225A94014(v10 + *(v13 + 48), v9);
  v14 = sub_225CCD0B4();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v9, 1, v14) != 1)
  {
    v17 = v0[23];
    v16 = sub_225CCD034();
    (*(v15 + 8))(v17, v14);
  }

  v19 = v0[21];
  v18 = v0[22];
  v21 = v0[19];
  v20 = v0[20];
  [v2 setExpirationDate_];

  v22 = v2;
  v23 = sub_225CCE444();
  v24 = [objc_opt_self() requestWithIdentifier:v23 content:v22 trigger:0 destinations:15];
  v0[25] = v24;

  v25 = *(v21 + 16);
  v0[2] = v0;
  v0[3] = sub_225BECFD8;
  swift_continuation_init();
  v0[17] = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
  sub_225CCE914();
  (*(v19 + 32))(boxed_opaque_existential_1, v18, v20);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_225BED200;
  v0[13] = &block_descriptor_8;
  [v25 addNotificationRequest:v24 withCompletionHandler:?];
  (*(v19 + 8))(boxed_opaque_existential_1, v20);

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_225BECFD8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_225BED16C;
  }

  else
  {
    v2 = sub_225BED0E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_225BED0E8()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_225BED16C(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

void sub_225BED200(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
    sub_225CCE924();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD10, &unk_225CD7600);
    sub_225CCE934();
  }
}

Swift::Void __swiftcall UserNotificationManager.removeDeliveredNotifications(withIdentifiers:)(Swift::OpaquePointer withIdentifiers)
{
  v2 = *(v1 + 16);
  v3 = sub_225CCE7F4();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t UserNotificationManager.makeResponseStream(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a1;
  v32 = a3;
  v4 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v31 = *(v4 - 8);
  v5 = *(v31 + 64);
  v6 = MEMORY[0x28223BE20](v4);
  v28 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = (&v25 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD20, &unk_225CF9920);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v30 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v14 = &v25 - v13;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FD30, &qword_225CF9930);
  v15 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v17 = &v25 - v16;
  (*(v10 + 104))(v12, *MEMORY[0x277D85778], v9);
  sub_225CCE9A4();
  (*(v10 + 8))(v12, v9);

  sub_225CCD114();
  *v8 = v27;
  v8[1] = a2;
  v18 = v29;
  v19 = *(*(v29 + 24) + OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations);
  v33 = v8;
  v34 = v14;

  os_unfair_lock_lock(v19 + 6);
  sub_225BEE8E4(&v19[4]);
  os_unfair_lock_unlock(v19 + 6);

  v20 = v28;
  sub_2259F6158(v8, v28);
  v21 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v18;
  sub_225A9FBA0(v20, v22 + v21);

  v23 = v26;
  sub_225CCE9B4();
  (*(v15 + 32))(v32, v17, v25);
  sub_2259F61BC(v8);
  return (*(v30 + 8))(v14, v23);
}

uint64_t sub_225BED6D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE20, &qword_225CF9D20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2259F6158(a2, v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v12 = *(v11 - 8);
  (*(v12 + 16))(v7, a3, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  return sub_225A056A4(v7, v10);
}

uint64_t sub_225BED848(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 24) + OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations);

  os_unfair_lock_lock(v2 + 6);
  sub_225BEF9F4(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t sub_225BED8B8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE20, &qword_225CF9D20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  v6 = type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2259F6158(a2, v8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
  return sub_225A056A4(v5, v8);
}

uint64_t UserNotificationManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_225BEDA54(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2259FE39C;

  return UserNotificationManager.addNotification(_:)(a1);
}

void sub_225BEDAE8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_225CCE7F4();
  [v2 removeDeliveredNotificationsWithIdentifiers_];
}

uint64_t sub_225BEDB4C()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCD124();
  sub_225BEE864(&qword_27D73FDF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225BEDBF4(uint64_t a1)
{
  sub_225CCE5B4();
  sub_225CCD124();
  sub_225BEE864(&qword_27D73FDF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_225CCE354();
}

uint64_t sub_225BEDC80()
{
  sub_225CCFBD4();
  sub_225CCE5B4();
  sub_225CCD124();
  sub_225BEE864(&qword_27D73FDF0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_225CCE354();
  return sub_225CCFC24();
}

uint64_t sub_225BEDD24(uint64_t *a1, void *a2, uint64_t a3)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  return sub_225CCD0E4();
}

uint64_t sub_225BEDF38(void *a1, void *a2, void *aBlock, void *a4)
{
  v4[3] = a2;
  v4[4] = a4;
  v4[2] = a1;
  v4[5] = _Block_copy(aBlock);
  v8 = a1;
  v9 = a2;
  a4;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_225BEE008;

  return sub_225BEF0C8(v9);
}

uint64_t sub_225BEE008()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v4 = *(*v0 + 16);
  v7 = *v0;

  v1[2](v1);
  _Block_release(v1);
  v5 = *(v7 + 8);

  return v5();
}

BOOL _s13CoreIDVShared23UserNotificationRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_225CCD0B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73FD00, &qword_225CDC6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE28, &qword_225CF9D28);
  MEMORY[0x28223BE20](v11);
  v13 = &v29 - v12;
  if (*a1 != *a2 && (sub_225CCF934() & 1) == 0 || (*(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24)) && (sub_225CCF934() & 1) == 0)
  {
    return 0;
  }

  v30 = v5;
  if (*(a1 + 32))
  {
    v14 = 0xD000000000000049;
  }

  else
  {
    v14 = 0xD000000000000034;
  }

  if (*(a1 + 32))
  {
    v15 = "ion-category.default";
  }

  else
  {
    v15 = "ssEqual";
  }

  v16 = v15 | 0x8000000000000000;
  if (*(a2 + 32))
  {
    v17 = 0xD000000000000049;
  }

  else
  {
    v17 = 0xD000000000000034;
  }

  if (*(a2 + 32))
  {
    v18 = "ion-category.default";
  }

  else
  {
    v18 = "ssEqual";
  }

  if (v14 == v17 && v16 == (v18 | 0x8000000000000000))
  {
  }

  else
  {
    v19 = sub_225CCF934();

    if ((v19 & 1) == 0)
    {
      return 0;
    }
  }

  v20 = *(a1 + 48);
  v21 = *(a2 + 48);
  if (v20)
  {
    if (!v21 || (*(a1 + 40) != *(a2 + 40) || v20 != v21) && (sub_225CCF934() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (*(a1 + 56) != *(a2 + 56) || (*(a1 + 64) != *(a2 + 64) || *(a1 + 72) != *(a2 + 72)) && (sub_225CCF934() & 1) == 0 || *(a1 + 80) != *(a2 + 80) || *(a1 + 81) != *(a2 + 81))
  {
    return 0;
  }

  v22 = *(type metadata accessor for UserNotificationRequest(0) + 48);
  v23 = *(v11 + 48);
  sub_225A94014(a1 + v22, v13);
  sub_225A94014(a2 + v22, &v13[v23]);
  v24 = v30;
  v25 = *(v30 + 48);
  if (v25(v13, 1, v4) != 1)
  {
    sub_225A94014(v13, v10);
    if (v25(&v13[v23], 1, v4) == 1)
    {
      (*(v24 + 8))(v10, v4);
      goto LABEL_40;
    }

    (*(v24 + 32))(v7, &v13[v23], v4);
    sub_225BEE864(&unk_27D73FE30, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
    v27 = sub_225CCE3C4();
    v28 = *(v24 + 8);
    v28(v7, v4);
    v28(v10, v4);
    sub_2259CB640(v13, &unk_27D73FD00, &qword_225CDC6E0);
    return (v27 & 1) != 0;
  }

  if (v25(&v13[v23], 1, v4) != 1)
  {
LABEL_40:
    sub_2259CB640(v13, &qword_27D73FE28, &qword_225CF9D28);
    return 0;
  }

  sub_2259CB640(v13, &unk_27D73FD00, &qword_225CDC6E0);
  return 1;
}

uint64_t sub_225BEE6B8(unint64_t a1)
{
  j = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_225CCF144())
  {
    v4 = sub_225BEE818();
    v5 = sub_225BEE864(&qword_281059AA8, sub_225BEE818, MEMORY[0x277D85378]);
    result = MEMORY[0x22AA6D450](i, v4, v5);
    v12 = result;
    if (j)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x22AA6DA80](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v9 = *(a1 + 8 * j + 32);
      }

      v10 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_225B1C768(&v11, v9);

      if (v10 == v7)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_225CCF144();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_225BEE818()
{
  result = qword_281059AB0;
  if (!qword_281059AB0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281059AB0);
  }

  return result;
}

uint64_t sub_225BEE864(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_225BEE900(uint64_t a1)
{
  type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0);
  v3 = *(v1 + 16);

  return sub_225BED848(a1, v3);
}

unint64_t sub_225BEE978()
{
  result = qword_27D73FD40;
  if (!qword_27D73FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FD40);
  }

  return result;
}

unint64_t sub_225BEE9D0()
{
  result = qword_27D73FD48;
  if (!qword_27D73FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FD48);
  }

  return result;
}

unint64_t sub_225BEEA28()
{
  result = qword_27D73FD50;
  if (!qword_27D73FD50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D73FD58, &qword_225CF9A40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D73FD50);
  }

  return result;
}

void sub_225BEEB1C(uint64_t a1)
{
  sub_225BEEBD4();
  if (v1 <= 0x3F)
  {
    sub_225A91220(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_225BEEBD4()
{
  if (!qword_281059B50)
  {
    v0 = sub_225CCEFC4();
    if (!v1)
    {
      atomic_store(v0, &qword_281059B50);
    }
  }
}

uint64_t dispatch thunk of UserNotificationManaging.addNotification(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2259FE39C;

  return v9(a1, a2, a3);
}

uint64_t sub_225BEEDEC(uint64_t a1)
{
  result = sub_225CCD124();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_225BEEEB0()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_2259FE39C;

  return sub_225BEDF38(v2, v3, v5, v4);
}

uint64_t sub_225BEEF70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_225A02E94;

  return sub_225CBCAA0(v2, v3, v4);
}

uint64_t sub_225BEF030(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x22AA6D450](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_225B1C618(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_225BEF0C8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE08, &qword_225CF9CE8);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AFA8, &unk_225CD7AB0);
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = *(type metadata accessor for UserNotificationManagerDelegate.ContinuationIdentifier(0) - 8);
  v2[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE10, &unk_225CF9CF0);
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_225BEF2A4, 0, 0);
}

uint64_t sub_225BEF2A4(uint64_t a1, uint64_t a2)
{
  v72 = v2;
  v3 = *(v2[3] + OBJC_IVAR____TtC13CoreIDVSharedP33_881EC008BCF5B7587B4DE56AEEEE7BAF31UserNotificationManagerDelegate_continuations);
  KeyPath = swift_getKeyPath();
  v5 = swift_task_alloc();
  *(v5 + 16) = sub_225BDF630;
  *(v5 + 24) = KeyPath;

  os_unfair_lock_lock((v3 + 24));
  v6 = 0;
  sub_225BEF940((v3 + 16), &v71);
  os_unfair_lock_unlock((v3 + 24));
  v69 = v2[14];
  v70 = v2;
  v66 = v2[11];
  v7 = v2[8];
  v8 = v2[5];

  v9 = v71;

  v11 = v9 + 64;
  v67 = v9;
  v12 = -1;
  v13 = -1 << *(v9 + 32);
  if (-v13 < 64)
  {
    v12 = ~(-1 << -v13);
  }

  v14 = v12 & *(v9 + 64);
  v61 = (63 - v13) >> 6;
  v15 = (v7 + 32);
  v65 = v7;
  v68 = (v7 + 8);
  v62 = (v8 + 8);
  v64 = v11;
  v63 = (v7 + 32);
  while (v14)
  {
    v16 = v6;
LABEL_15:
    v19 = v70;
    v21 = v70[12];
    v20 = v70[13];
    v22 = v70[10];
    v23 = v70[7];
    v24 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v25 = v24 | (v16 << 6);
    sub_2259F6158(*(v67 + 48) + *(v66 + 72) * v25, v21);
    (*(v65 + 16))(v22, *(v67 + 56) + *(v65 + 72) * v25, v23);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE18, &qword_225CF9D18);
    v27 = *(v26 + 48);
    sub_225A9FBA0(v21, v20);
    v28 = v20 + v27;
    v15 = v63;
    (*(v65 + 32))(v28, v22, v23);
    (*(*(v26 - 8) + 56))(v20, 0, 1, v26);
    v11 = v64;
LABEL_16:
    v29 = v19[14];
    sub_225BEF984(v19[13], v29);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE18, &qword_225CF9D18);
    v31 = (*(*(v30 - 8) + 48))(v29, 1, v30);
    v32 = v19[14];
    v33 = v19;
    if (v31 == 1)
    {

      v60 = v19[1];

      return v60();
    }

    v34 = v19[2];
    (*v15)(v19[9], &v32[*(v30 + 48)], v19[7]);
    v35 = *v32;
    v36 = *(v69 + 8);

    sub_2259F61BC(v32);
    v37 = [v34 notification];
    v38 = [v37 request];

    v39 = [v38 identifier];
    v40 = sub_225CCE474();
    v42 = v41;

    if (v35 == v40 && v36 == v42)
    {
    }

    else
    {
      v43 = sub_225CCF934();

      if ((v43 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v44 = [v33[2] actionIdentifier];
    v45 = sub_225CCE474();
    v47 = v46;

    if (sub_225CCE474() == v45 && v48 == v47)
    {

LABEL_25:
      v50 = v33[9];
      v52 = v33[6];
      v51 = v33[7];
      v53 = v33[4];

      *(v33 + 121) = 0;
      sub_225CCE9C4();
      (*v62)(v52, v53);
      goto LABEL_26;
    }

    v49 = sub_225CCF934();

    if (v49)
    {
      goto LABEL_25;
    }

    if (sub_225CCE474() == v45 && v56 == v47)
    {

LABEL_32:
      v50 = v33[9];
      v58 = v33[6];
      v51 = v33[7];
      v59 = v33[4];
      *(v33 + 120) = 1;
      sub_225CCE9C4();
      (*v62)(v58, v59);
LABEL_26:
      result = (*v68)(v50, v51);
    }

    else
    {
      v57 = sub_225CCF934();

      if (v57)
      {
        goto LABEL_32;
      }

LABEL_4:
      result = (*v68)(v33[9], v33[7]);
    }
  }

  if (v61 <= v6 + 1)
  {
    v17 = v6 + 1;
  }

  else
  {
    v17 = v61;
  }

  v18 = v17 - 1;
  while (1)
  {
    v16 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v16 >= v61)
    {
      v19 = v70;
      v54 = v70[13];
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE18, &qword_225CF9D18);
      (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
      v14 = 0;
      v6 = v18;
      goto LABEL_16;
    }

    v14 = *(v11 + 8 * v16);
    ++v6;
    if (v14)
    {
      v6 = v16;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_225BEF940@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_225BEF984(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73FE10, &unk_225CF9CF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_225BEFA10()
{
  qword_27D73FE40 = 0x6230303661636235;
  *algn_27D73FE48 = 0xE800000000000000;
  qword_27D73FE50 = 0xD00000000000001FLL;
  unk_27D73FE58 = 0x8000000225D24620;
}

double static DeviceMigrationMilestone.accountKAKCreated.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FC8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FE48;
  v2 = qword_27D73FE50;
  v3 = unk_27D73FE58;
  *a1 = qword_27D73FE40;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BEFAD4()
{
  qword_27D73FE60 = 0x6265623464636264;
  *algn_27D73FE68 = 0xE800000000000000;
  qword_27D73FE70 = 0xD000000000000021;
  unk_27D73FE78 = 0x8000000225D245F0;
}

double static DeviceMigrationMilestone.accountKAKRetrieved.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FD0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FE68;
  v2 = qword_27D73FE70;
  v3 = unk_27D73FE78;
  *a1 = qword_27D73FE60;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

CoreIDVShared::Milestone __swiftcall Milestone.init(tag:description:)(Swift::String tag, Swift::String description)
{
  *v2 = tag;
  v2[1] = description;
  result.description = description;
  result.tag = tag;
  return result;
}

void sub_225BEFBD0()
{
  qword_27D73FE80 = 0x3263316330383734;
  *algn_27D73FE88 = 0xE800000000000000;
  qword_27D73FE90 = 0xD000000000000030;
  unk_27D73FE98 = 0x8000000225D24BB0;
}

double static MobileDocumentReaderMilestone.readerIdentifierCalled.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FD8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FE88;
  v2 = qword_27D73FE90;
  v3 = unk_27D73FE98;
  *a1 = qword_27D73FE80;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BEFC94()
{
  qword_27D73FEA0 = 0x3465343466356666;
  *algn_27D73FEA8 = 0xE800000000000000;
  qword_27D73FEB0 = 0xD000000000000027;
  unk_27D73FEB8 = 0x8000000225D24B80;
}

double static MobileDocumentReaderMilestone.prepareCalled.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FE0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FEA8;
  v2 = qword_27D73FEB0;
  v3 = unk_27D73FEB8;
  *a1 = qword_27D73FEA0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BEFD58()
{
  qword_27D73FEC0 = 0x6430316161326630;
  *algn_27D73FEC8 = 0xE800000000000000;
  qword_27D73FED0 = 0xD00000000000002ELL;
  unk_27D73FED8 = 0x8000000225D24B50;
}

double static MobileDocumentReaderMilestone.merchantCalled.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FE8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FEC8;
  v2 = qword_27D73FED0;
  v3 = unk_27D73FED8;
  *a1 = qword_27D73FEC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BEFE1C()
{
  qword_27D73FEE0 = 0x3238363537383936;
  *algn_27D73FEE8 = 0xE800000000000000;
  qword_27D73FEF0 = 0xD00000000000002CLL;
  unk_27D73FEF8 = 0x8000000225D24B20;
}

double static MobileDocumentReaderMilestone.readDocumentCalled.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FF0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FEE8;
  v2 = qword_27D73FEF0;
  v3 = unk_27D73FEF8;
  *a1 = qword_27D73FEE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BEFEE0()
{
  qword_27D73FF00 = 0x3661626533643933;
  *algn_27D73FF08 = 0xE800000000000000;
  qword_27D73FF10 = 0xD00000000000002FLL;
  unk_27D73FF18 = 0x8000000225D24AF0;
}

double static MobileDocumentReaderMilestone.canRequestDocumentCalled.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D739FF8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF08;
  v2 = qword_27D73FF10;
  v3 = unk_27D73FF18;
  *a1 = qword_27D73FF00;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BEFFA4()
{
  qword_27D73FF20 = 0x6331386165316233;
  *algn_27D73FF28 = 0xE800000000000000;
  qword_27D73FF30 = 0xD00000000000002ALL;
  unk_27D73FF38 = 0x8000000225D24AC0;
}

double static MobileDocumentReaderMilestone.cancelReadCalled.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A000 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF28;
  v2 = qword_27D73FF30;
  v3 = unk_27D73FF38;
  *a1 = qword_27D73FF20;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0068()
{
  qword_27D73FF40 = 0x3133653862306436;
  *algn_27D73FF48 = 0xE800000000000000;
  qword_27D73FF50 = 0xD000000000000044;
  unk_27D73FF58 = 0x8000000225D24A70;
}

double static MobileDocumentReaderMilestone.readDocumentInProgress.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A008 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF48;
  v2 = qword_27D73FF50;
  v3 = unk_27D73FF58;
  *a1 = qword_27D73FF40;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF012C()
{
  qword_27D73FF60 = 0x3763396539636537;
  *algn_27D73FF68 = 0xE800000000000000;
  qword_27D73FF70 = 0xD00000000000004ALL;
  unk_27D73FF78 = 0x8000000225D24A20;
}

double static MobileDocumentReaderMilestone.noReadInProgressToCancel.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A010 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF68;
  v2 = qword_27D73FF70;
  v3 = unk_27D73FF78;
  *a1 = qword_27D73FF60;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF01F0()
{
  qword_27D73FF80 = 0x6134613935316464;
  *algn_27D73FF88 = 0xE800000000000000;
  qword_27D73FF90 = 0xD000000000000024;
  unk_27D73FF98 = 0x8000000225D249F0;
}

double static MobileDocumentReaderMilestone.readDocumentReaderReady.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A018 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FF88;
  v2 = qword_27D73FF90;
  v3 = unk_27D73FF98;
  *a1 = qword_27D73FF80;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF02B4()
{
  qword_27D73FFA0 = 0x3731383135623932;
  *algn_27D73FFA8 = 0xE800000000000000;
  qword_27D73FFB0 = 0xD00000000000001FLL;
  unk_27D73FFB8 = 0x8000000225D249D0;
}

double static MobileDocumentReaderMilestone.readDocumentReaderConnecting.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A020 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FFA8;
  v2 = qword_27D73FFB0;
  v3 = unk_27D73FFB8;
  *a1 = qword_27D73FFA0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0378()
{
  qword_27D73FFC0 = 0x3164346634623938;
  *algn_27D73FFC8 = 0xE800000000000000;
  qword_27D73FFD0 = 0xD000000000000026;
  unk_27D73FFD8 = 0x8000000225D249A0;
}

double static MobileDocumentReaderMilestone.readDocumentReaderAwaitingApproval.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A028 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FFC8;
  v2 = qword_27D73FFD0;
  v3 = unk_27D73FFD8;
  *a1 = qword_27D73FFC0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF043C()
{
  qword_27D73FFE0 = 0x6430623035333834;
  *algn_27D73FFE8 = 0xE800000000000000;
  qword_27D73FFF0 = 0xD00000000000003ELL;
  unk_27D73FFF8 = 0x8000000225D24960;
}

double static MobileDocumentReaderMilestone.readDocumentResponseReceived.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A030 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D73FFE8;
  v2 = qword_27D73FFF0;
  v3 = unk_27D73FFF8;
  *a1 = qword_27D73FFE0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0500()
{
  qword_27D740000 = 0x3265353634636239;
  *algn_27D740008 = 0xE800000000000000;
  qword_27D740010 = 0xD00000000000002BLL;
  unk_27D740018 = 0x8000000225D24930;
}

double static MobileDocumentReaderMilestone.readDocumentReturningResponse.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A038 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740008;
  v2 = qword_27D740010;
  v3 = unk_27D740018;
  *a1 = qword_27D740000;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF05C4()
{
  qword_27D740020 = 0x6330646664616339;
  *algn_27D740028 = 0xE800000000000000;
  qword_27D740030 = 0xD000000000000032;
  unk_27D740038 = 0x8000000225D248F0;
}

double static MobileDocumentReaderMilestone.readRequestBuilt.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A040 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740028;
  v2 = qword_27D740030;
  v3 = unk_27D740038;
  *a1 = qword_27D740020;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0688()
{
  qword_27D740040 = 0x3562316263326233;
  *algn_27D740048 = 0xE800000000000000;
  qword_27D740050 = 0xD000000000000032;
  unk_27D740058 = 0x8000000225D248B0;
}

double static MobileDocumentReaderMilestone.readRequestSigned.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A048 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740048;
  v2 = qword_27D740050;
  v3 = unk_27D740058;
  *a1 = qword_27D740040;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF074C()
{
  qword_27D740060 = 0x6632396531363235;
  *algn_27D740068 = 0xE800000000000000;
  qword_27D740070 = 0xD000000000000029;
  unk_27D740078 = 0x8000000225D24880;
}

double static MobileDocumentReaderMilestone.readerAuthenticationCertificateFetched.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A050 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740068;
  v2 = qword_27D740070;
  v3 = unk_27D740078;
  *a1 = qword_27D740060;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0810()
{
  qword_27D740080 = 0x3662383539363238;
  *algn_27D740088 = 0xE800000000000000;
  qword_27D740090 = 0xD000000000000034;
  unk_27D740098 = 0x8000000225D24840;
}

double static MobileDocumentReaderMilestone.readerAuthenticationCertificateStored.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A058 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740088;
  v2 = qword_27D740090;
  v3 = unk_27D740098;
  *a1 = qword_27D740080;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF08D4()
{
  qword_27D7400A0 = 0x3635353162613039;
  *algn_27D7400A8 = 0xE800000000000000;
  qword_27D7400B0 = 0xD000000000000029;
  unk_27D7400B8 = 0x8000000225D24810;
}

double static MobileDocumentReaderMilestone.readerAuthenticationCertificateDeleted.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A060 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7400A8;
  v2 = qword_27D7400B0;
  v3 = unk_27D7400B8;
  *a1 = qword_27D7400A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0998()
{
  qword_27D7400C0 = 0x3230313136363138;
  *algn_27D7400C8 = 0xE800000000000000;
  qword_27D7400D0 = 0xD000000000000021;
  unk_27D7400D8 = 0x8000000225D247E0;
}

double static MobileDocumentReaderMilestone.readerAuthenticationKeyFetched.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A068 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7400C8;
  v2 = qword_27D7400D0;
  v3 = unk_27D7400D8;
  *a1 = qword_27D7400C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0A5C()
{
  qword_27D7400E0 = 0x3064376665376264;
  *algn_27D7400E8 = 0xE800000000000000;
  qword_27D7400F0 = 0xD000000000000035;
  unk_27D7400F8 = 0x8000000225D247A0;
}

double static MobileDocumentReaderMilestone.readerAuthenticationKeyCreated.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A070 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7400E8;
  v2 = qword_27D7400F0;
  v3 = unk_27D7400F8;
  *a1 = qword_27D7400E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0B20()
{
  qword_27D740100 = 0x6138653438636464;
  *algn_27D740108 = 0xE800000000000000;
  qword_27D740110 = 0xD000000000000021;
  unk_27D740118 = 0x8000000225D24770;
}

double static MobileDocumentReaderMilestone.readerAuthenticationKeyDeleted.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A078 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740108;
  v2 = qword_27D740110;
  v3 = unk_27D740118;
  *a1 = qword_27D740100;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0BE4()
{
  qword_27D740120 = 0x3535623739396634;
  *algn_27D740128 = 0xE800000000000000;
  qword_27D740130 = 0xD000000000000033;
  unk_27D740138 = 0x8000000225D24730;
}

double static MobileDocumentReaderMilestone.prepareCertificateFound.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A080 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740128;
  v2 = qword_27D740130;
  v3 = unk_27D740138;
  *a1 = qword_27D740120;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0CA8()
{
  qword_27D740140 = 0x3939313732356531;
  *algn_27D740148 = 0xE800000000000000;
  qword_27D740150 = 0xD00000000000003CLL;
  unk_27D740158 = 0x8000000225D246F0;
}

double static MobileDocumentReaderMilestone.prepareCertificateNotFound.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A088 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740148;
  v2 = qword_27D740150;
  v3 = unk_27D740158;
  *a1 = qword_27D740140;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0D6C()
{
  qword_27D740160 = 0x3065613565366264;
  *algn_27D740168 = 0xE800000000000000;
  qword_27D740170 = 0xD000000000000034;
  unk_27D740178 = 0x8000000225D246B0;
}

double static MobileDocumentReaderMilestone.prepareIdentityKeyFound.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A090 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740168;
  v2 = qword_27D740170;
  v3 = unk_27D740178;
  *a1 = qword_27D740160;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0E30()
{
  qword_27D740180 = 0x3733373965383831;
  *algn_27D740188 = 0xE800000000000000;
  qword_27D740190 = 0xD00000000000003DLL;
  unk_27D740198 = 0x8000000225D24670;
}

double static MobileDocumentReaderMilestone.prepareIdentityKeyNotFound.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A098 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740188;
  v2 = qword_27D740190;
  v3 = unk_27D740198;
  *a1 = qword_27D740180;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0EF4()
{
  qword_27D7401A0 = 0x6266636434646163;
  *algn_27D7401A8 = 0xE800000000000000;
  qword_27D7401B0 = 0xD000000000000029;
  unk_27D7401B8 = 0x8000000225D24640;
}

double static MobileDocumentReaderMilestone.prepareCertificateFetched.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0A0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7401A8;
  v2 = qword_27D7401B0;
  v3 = unk_27D7401B8;
  *a1 = qword_27D7401A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF0FC8()
{
  qword_27D7401C0 = 0x3937346566616562;
  *algn_27D7401C8 = 0xE800000000000000;
  qword_27D7401D0 = 0xD000000000000013;
  unk_27D7401D8 = 0x8000000225D24DB0;
}

double static VICALMilestone.loadDocument.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0A8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7401C8;
  v2 = qword_27D7401D0;
  v3 = unk_27D7401D8;
  *a1 = qword_27D7401C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF108C()
{
  qword_27D7401E0 = 0x6337336634633661;
  *algn_27D7401E8 = 0xE800000000000000;
  qword_27D7401F0 = 0xD000000000000020;
  unk_27D7401F8 = 0x8000000225D24D80;
}

double static VICALMilestone.cdnReturnedDocument.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7401E8;
  v2 = qword_27D7401F0;
  v3 = unk_27D7401F8;
  *a1 = qword_27D7401E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF1150()
{
  qword_27D740200 = 0x6262623531663065;
  *algn_27D740208 = 0xE800000000000000;
  qword_27D740210 = 0xD000000000000022;
  unk_27D740218 = 0x8000000225D24D50;
}

double static VICALMilestone.cacheReturnedDocument.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0B8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740208;
  v2 = qword_27D740210;
  v3 = unk_27D740218;
  *a1 = qword_27D740200;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF1214()
{
  qword_27D740220 = 0x3232633134633263;
  *algn_27D740228 = 0xE800000000000000;
  qword_27D740230 = 0xD000000000000029;
  unk_27D740238 = 0x8000000225D24D20;
}

double static VICALMilestone.documentSignerCertificateTrusted.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0C0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740228;
  v2 = qword_27D740230;
  v3 = unk_27D740238;
  *a1 = qword_27D740220;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF12D8()
{
  qword_27D740240 = 0x6233396138383764;
  *algn_27D740248 = 0xE800000000000000;
  qword_27D740250 = 0xD000000000000030;
  unk_27D740258 = 0x8000000225D24CE0;
}

double static VICALMilestone.documentSignerCertificateUntrusted.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0C8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740248;
  v2 = qword_27D740250;
  v3 = unk_27D740258;
  *a1 = qword_27D740240;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF139C()
{
  qword_27D740260 = 0x3962326133626130;
  *algn_27D740268 = 0xE800000000000000;
  qword_27D740270 = 0xD000000000000032;
  unk_27D740278 = 0x8000000225D24CA0;
}

double static VICALMilestone.documentSignerCertificateRevoked.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0D0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740268;
  v2 = qword_27D740270;
  v3 = unk_27D740278;
  *a1 = qword_27D740260;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF1460()
{
  qword_27D740280 = 0x6630346536643161;
  *algn_27D740288 = 0xE800000000000000;
  qword_27D740290 = 0xD00000000000002CLL;
  unk_27D740298 = 0x8000000225D24C70;
}

double static VICALMilestone.documentSignerCertificateExpired.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0D8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D740288;
  v2 = qword_27D740290;
  v3 = unk_27D740298;
  *a1 = qword_27D740280;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF1524()
{
  qword_27D7402A0 = 0x3865616337303564;
  *algn_27D7402A8 = 0xE800000000000000;
  qword_27D7402B0 = 0xD000000000000021;
  unk_27D7402B8 = 0x8000000225D24C40;
}

double static VICALMilestone.documentSignatureValid.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0E0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7402A8;
  v2 = qword_27D7402B0;
  v3 = unk_27D7402B8;
  *a1 = qword_27D7402A0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF15E8()
{
  qword_27D7402C0 = 0x3531346539373062;
  *algn_27D7402C8 = 0xE800000000000000;
  qword_27D7402D0 = 0xD00000000000001FLL;
  unk_27D7402D8 = 0x8000000225D24C20;
}

double static VICALMilestone.storeDocument.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0E8 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7402C8;
  v2 = qword_27D7402D0;
  v3 = unk_27D7402D8;
  *a1 = qword_27D7402C0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

void sub_225BF16AC()
{
  qword_27D7402E0 = 0x3230623063303464;
  *algn_27D7402E8 = 0xE800000000000000;
  qword_27D7402F0 = 0xD000000000000021;
  unk_27D7402F8 = 0x8000000225D24BF0;
}

double static VICALMilestone.missingDocument.getter@<D0>(void *a1@<X8>)
{
  if (qword_27D73A0F0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = *algn_27D7402E8;
  v2 = qword_27D7402F0;
  v3 = unk_27D7402F8;
  *a1 = qword_27D7402E0;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;

  return result;
}

_BYTE *MobileAssetInfo.init(assetType:filters:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *result;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_225BF1790(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_225BF17CC(uint64_t a1, int a2)
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

uint64_t sub_225BF1814(uint64_t result, int a2, int a3)
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

uint64_t MobileAssetManager.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v1 setRequiresPowerPluggedIn_];
  [v1 setAllowsCellularAccess_];
  [v1 setAllowsExpensiveAccess_];
  [v1 setDiscretionary_];
  *(v0 + 16) = v1;
  return v0;
}

uint64_t MobileAssetManager.init()()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D28A10]) init];
  [v1 setRequiresPowerPluggedIn_];
  [v1 setAllowsCellularAccess_];
  [v1 setAllowsExpensiveAccess_];
  [v1 setDiscretionary_];
  *(v0 + 16) = v1;
  return v0;
}

void sub_225BF1994(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a3;
  v9 = sub_225CCD954();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v14 = off_28105B918;
  v15 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v16 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v16));
  (*(v10 + 16))(v12, &v14[v15], v9);
  os_unfair_lock_unlock(&v14[v16]);
  v17 = sub_225CCD934();
  v18 = sub_225CCED04();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_2259A7000, v17, v18, "Start MobileAsset Catalog download", v19, 2u);
    MEMORY[0x22AA6F950](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v20 = objc_opt_self();
  v21 = sub_225CCE444();

  v22 = *(v5 + 16);
  v23 = swift_allocObject();
  *(v23 + 16) = v26;
  *(v23 + 24) = a4;
  *(v23 + 32) = v13;
  *(v23 + 40) = a2;
  aBlock[4] = sub_225BF5C78;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225BF29E8;
  aBlock[3] = &block_descriptor_18;
  v24 = _Block_copy(aBlock);

  [v20 startCatalogDownload:v21 options:v22 then:v24];
  _Block_release(v24);
}

void sub_225BF1CBC(uint64_t a1, void (*a2)(id, uint64_t), uint64_t a3, char a4, uint64_t a5)
{
  v70 = a2;
  v71 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v69 - v8;
  if (a1)
  {
    if (a1 != 44)
    {
      aBlock = 0;
      v73 = 0xE000000000000000;
      sub_225CCF204();
      MEMORY[0x22AA6CE70](0xD00000000000002CLL, 0x8000000225D24E20);
      v78 = a1;
      type metadata accessor for MADownloadResult(0);
      sub_225CCF434();
      v33 = aBlock;
      v32 = v73;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 32) = 20;
      v35 = inited + 32;
      v36 = MEMORY[0x277D83B88];
      *(inited + 16) = xmmword_225CD30F0;
      v37 = MEMORY[0x277D83BF8];
      *(inited + 64) = v36;
      *(inited + 72) = v37;
      *(inited + 40) = a1;
      v38 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(v35, &qword_27D73B060, &unk_225CD3AE0);
      sub_2259CB5EC();
      v15 = swift_allocError();
      v40 = v39;
      v41 = sub_225CCE954();
      v42 = *(v41 - 8);
      (*(v42 + 56))(v9, 1, 1, v41);
      LODWORD(v41) = (*(v42 + 48))(v9, 1, v41);
      sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
      if (v41)
      {
        v43 = 469;
      }

      else
      {
        v43 = 23;
      }

      v44 = MEMORY[0x277D84F90];
      v45 = sub_225B2C374(MEMORY[0x277D84F90]);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v45;
      sub_225B2C4A0(v38, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

      v47 = aBlock;
      v48 = sub_225B29AA0(0, 1, 1, v44);
      v50 = *(v48 + 2);
      v49 = *(v48 + 3);
      if (v50 >= v49 >> 1)
      {
        v48 = sub_225B29AA0((v49 > 1), v50 + 1, 1, v48);
      }

      *(v48 + 2) = v50 + 1;
      v51 = &v48[56 * v50];
      *(v51 + 4) = v33;
      *(v51 + 5) = v32;
      *(v51 + 6) = 0xD000000000000026;
      *(v51 + 7) = 0x8000000225D24E50;
      *(v51 + 8) = 0xD000000000000022;
      *(v51 + 9) = 0x8000000225D24E80;
      *(v51 + 10) = 38;
      *v40 = v43;
      *(v40 + 8) = v48;
      *(v40 + 16) = v33;
      *(v40 + 24) = v32;
      *(v40 + 32) = v47;
      *(v40 + 40) = 0;
      goto LABEL_33;
    }

    v10 = 0x8000000225D24ED0;
    v11 = 0x8000000225D24E50;
    v12 = 0x8000000225D24E80;
    v13 = MEMORY[0x277D84F90];
    v14 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v15 = swift_allocError();
    a5 = v16;
    v17 = sub_225CCE954();
    v18 = *(v17 - 8);
    (*(v18 + 56))(v9, 1, 1, v17);
    LODWORD(v17) = (*(v18 + 48))(v9, 1, v17);
    sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
    if (v17)
    {
      LOWORD(v19) = 465;
    }

    else
    {
      LOWORD(v19) = 23;
    }

    v20 = sub_225B2C374(v13);
    v21 = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v20;
    sub_225B2C4A0(v14, sub_225B2AC40, 0, v21, &aBlock);

    v22 = aBlock;
    v23 = sub_225B29AA0(0, 1, 1, v13);
    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    v26 = (v25 + 1);
    if (v25 < v24 >> 1)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v28 = objc_allocWithZone(MEMORY[0x277D289D8]);
    v22 = sub_225CCE444();

    v15 = [v28 initWithType_];

    if (!v15)
    {
      v69 = 0x8000000225D24E50;
      v56 = MEMORY[0x277D84F90];
      v57 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v15 = swift_allocError();
      a5 = v58;
      v59 = sub_225CCE954();
      v60 = *(v59 - 8);
      (*(v60 + 56))(v9, 1, 1, v59);
      LODWORD(v59) = (*(v60 + 48))(v9, 1, v59);
      sub_2259CB640(v9, &unk_27D73B050, &unk_225CD3AD0);
      if (v59)
      {
        v61 = 470;
      }

      else
      {
        v61 = 23;
      }

      v62 = sub_225B2C374(v56);
      v63 = swift_isUniquelyReferenced_nonNull_native();
      aBlock = v62;
      sub_225B2C4A0(v57, sub_225B2AC40, 0, v63, &aBlock);

      v22 = aBlock;
      v64 = sub_225B29AA0(0, 1, 1, v56);
      v66 = *(v64 + 2);
      v65 = *(v64 + 3);
      if (v66 >= v65 >> 1)
      {
        v64 = sub_225B29AA0((v65 > 1), v66 + 1, 1, v64);
      }

      *(v64 + 2) = v66 + 1;
      v67 = &v64[56 * v66];
      *(v67 + 4) = 0xD000000000000016;
      *(v67 + 5) = 0x8000000225D24EB0;
      v68 = v69;
      *(v67 + 6) = 0xD000000000000026;
      *(v67 + 7) = v68;
      *(v67 + 8) = 0xD000000000000022;
      *(v67 + 9) = 0x8000000225D24E80;
      *(v67 + 10) = 45;
      *a5 = v61;
      *(a5 + 8) = v64;
      *(a5 + 16) = 0xD000000000000016;
      *(a5 + 24) = 0x8000000225D24EB0;
      goto LABEL_32;
    }

    v26 = *MEMORY[0x277D288E8];
    v25 = sub_225CCE444();
    [v15 addKeyValuePair:v26 with:v25];

    v12 = a5 + 64;
    v29 = 1 << *(a5 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v19 = v30 & *(a5 + 64);
    v10 = (v29 + 63) >> 6;

    v11 = 0;
    while (v19)
    {
      v24 = v11;
LABEL_17:
      v31 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v22 = *(*(a5 + 56) + ((v24 << 10) | (16 * v31)));

      v26 = sub_225CCE444();

      v25 = sub_225CCE444();

      [v15 addKeyValuePair:v26 with:v25];
    }

    while (1)
    {
      v24 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v24 >= v10)
      {

        v52 = swift_allocObject();
        v53 = v71;
        v52[2] = v70;
        v52[3] = v53;
        v52[4] = v15;
        v76 = sub_225BF5C88;
        v77 = v52;
        aBlock = MEMORY[0x277D85DD0];
        v73 = 1107296256;
        v74 = sub_225BF29E0;
        v75 = &block_descriptor_24;
        v54 = _Block_copy(&aBlock);

        v55 = v15;

        [v55 queryMetaDataWithError_];
        _Block_release(v54);

        return;
      }

      v19 = *(v12 + 8 * v24);
      ++v11;
      if (v19)
      {
        v11 = v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  v23 = sub_225B29AA0((v24 > 1), v26, 1, v23);
LABEL_7:
  *(v23 + 2) = v26;
  v27 = &v23[56 * v25];
  *(v27 + 4) = 0xD000000000000015;
  *(v27 + 5) = v10;
  *(v27 + 6) = 0xD000000000000026;
  *(v27 + 7) = v11;
  *(v27 + 8) = 0xD000000000000022;
  *(v27 + 9) = v12;
  *(v27 + 10) = 34;
  *a5 = v19;
  *(a5 + 8) = v23;
  *(a5 + 16) = 0xD000000000000015;
  *(a5 + 24) = v10;
LABEL_32:
  *(a5 + 32) = v22;
  *(a5 + 40) = 0;
LABEL_33:
  v70(v15, 1);
}

void sub_225BF2664(uint64_t a1, void *a2, void (*a3)(void *, uint64_t), uint64_t a4, void *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - v9;
  if (a2)
  {
    v11 = a2;
    a3(a2, 1);
  }

  else
  {
    v12 = [a5 results];
    if (v12)
    {
      v13 = v12;
      sub_2259D8718(0, &qword_27D740380, 0x277D289C0);
      v14 = sub_225CCE814();

      a3(v14, 0);
    }

    else
    {
      v32 = 0x8000000225D24E80;
      v33 = 0x8000000225D24E50;
      v15 = MEMORY[0x277D84F90];
      v16 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v17 = swift_allocError();
      v19 = v18;
      v20 = sub_225CCE954();
      v21 = *(v20 - 8);
      (*(v21 + 56))(v10, 1, 1, v20);
      LODWORD(v20) = (*(v21 + 48))(v10, 1, v20);
      sub_2259CB640(v10, &unk_27D73B050, &unk_225CD3AD0);
      if (v20)
      {
        v22 = 471;
      }

      else
      {
        v22 = 23;
      }

      v23 = sub_225B2C374(v15);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v23;
      sub_225B2C4A0(v16, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v34);

      v25 = v34;
      v26 = sub_225B29AA0(0, 1, 1, v15);
      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = sub_225B29AA0((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      v29 = &v26[56 * v28];
      *(v29 + 4) = 0xD000000000000015;
      *(v29 + 5) = 0x8000000225D24EF0;
      v30 = v33;
      *(v29 + 6) = 0xD000000000000026;
      *(v29 + 7) = v30;
      v31 = v32;
      *(v29 + 8) = 0xD000000000000022;
      *(v29 + 9) = v31;
      *(v29 + 10) = 65;
      *v19 = v22;
      *(v19 + 8) = v26;
      *(v19 + 16) = 0xD000000000000015;
      *(v19 + 24) = 0x8000000225D24EF0;
      *(v19 + 32) = v25;
      *(v19 + 40) = 0;
      a3(v17, 1);
    }
  }
}

uint64_t sub_225BF29E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t MobileAssetManager.retrieveMostRecentAsset<A>(info:isFirstMoreRecent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *(a1 + 8);
  v19 = *a1;
  v17 = swift_allocObject();
  v17[2] = a6;
  v17[3] = a7;
  v17[4] = a8;
  v17[5] = a4;
  v17[6] = a5;
  v17[7] = a2;
  v17[8] = a3;
  v17[9] = v8;

  sub_225BF1994(&v19, v16, sub_225BF3B9C, v17);
}

uint64_t sub_225BF2B20(void *a1, char a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v123 = a7;
  v130 = a6;
  v129 = a5;
  v121 = sub_225CCCEA4();
  v120 = *(v121 - 8);
  MEMORY[0x28223BE20](v121);
  v122 = &v111 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v16 - 8);
  v126 = &v111 - v17;
  sub_2259D8718(255, &qword_27D740380, 0x277D289C0);
  v134 = a8;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v131 = sub_225CCEFC4();
  v125 = *(v131 - 8);
  v19 = MEMORY[0x28223BE20](v131);
  v21 = &v111 - v20;
  v22 = *(TupleTypeMetadata2 - 8);
  v23 = MEMORY[0x28223BE20](v19);
  v124 = (&v111 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v23);
  v26 = &v111 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388, &qword_225CF9FD0);
  v28 = MEMORY[0x28223BE20](v27);
  v127 = (&v111 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v28);
  v133 = (&v111 - v30);
  v31 = sub_225CCD954();
  v135 = *(v31 - 8);
  v136 = v31;
  v32 = MEMORY[0x28223BE20](v31);
  v33 = MEMORY[0x28223BE20](v32);
  MEMORY[0x28223BE20](v33);
  v37 = &v111 - v36;
  v137 = a4;
  if (a2)
  {
    if (qword_28105B910 != -1)
    {
      swift_once();
    }

    v38 = off_28105B918;
    v39 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
    v40 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
    os_unfair_lock_lock((off_28105B918 + v40));
    v41 = v135;
    v42 = v136;
    (*(v135 + 16))(v37, &v38[v39], v136);
    os_unfair_lock_unlock(&v38[v40]);
    v43 = a1;
    v44 = sub_225CCD934();
    v45 = sub_225CCED14();
    sub_225BF5CA0(a1, 1);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v132 = a3;
      v47 = v46;
      v48 = swift_slowAlloc();
      v128 = v27;
      v49 = v48;
      *&aBlock = v48;
      *v47 = 136315138;
      swift_getErrorValue();
      v50 = sub_225CCFB24();
      v52 = sub_2259BE198(v50, v51, &aBlock);

      *(v47 + 4) = v52;
      _os_log_impl(&dword_2259A7000, v44, v45, "error : %s", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x22AA6F950](v49, -1, -1);
      v53 = v47;
      a3 = v132;
      MEMORY[0x22AA6F950](v53, -1, -1);
    }

    (*(v41 + 8))(v37, v42);
    v54 = v133;
    *v133 = a1;
    swift_storeEnumTagMultiPayload();
    v55 = a1;
    a3(v54);
    return sub_2259CB640(v54, &qword_27D740388, &qword_225CF9FD0);
  }

  else
  {
    v113 = v35;
    v112 = v34;
    v117 = v26;
    v128 = v27;
    v132 = a3;
    v138 = a1;
    v57 = swift_allocObject();
    v58 = v134;
    v57[2] = v134;
    v57[3] = a9;
    v57[4] = a10;

    v119 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740390, &qword_225CF9E90);
    sub_2259D8B24(&qword_27D740398, &qword_27D740390, &qword_225CF9E90, MEMORY[0x277D840E0]);
    sub_225CCF5B4();

    sub_225BF5CA0(a1, 0);
    v118 = aBlock;
    v116 = v140;
    v115 = v141;
    v114 = v142;
    MEMORY[0x28223BE20](v59);
    *(&v111 - 6) = v58;
    *(&v111 - 5) = a9;
    v60 = v129;
    *(&v111 - 4) = a10;
    *(&v111 - 3) = v60;
    *(&v111 - 2) = v130;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7403A0, &qword_225CF9E98);
    sub_2259D8B24(&qword_27D7403A8, &qword_27D7403A0, &qword_225CF9E98, MEMORY[0x277D83970]);
    v61 = v131;
    sub_225CCF424();
    swift_getWitnessTable();
    sub_225CCF534();
    swift_getWitnessTable();
    sub_225CCF424();
    swift_getWitnessTable();
    sub_225CCE734();
    v62 = v119;
    v63 = TupleTypeMetadata2;
    if ((*(v119 + 48))(v21, 1, TupleTypeMetadata2) == 1)
    {
      (*(v125 + 8))(v21, v61);
      v136 = 0x8000000225D24F50;
      v64 = MEMORY[0x277D84F90];
      v65 = sub_225B2C248(MEMORY[0x277D84F90]);
      sub_2259CB5EC();
      v66 = swift_allocError();
      v68 = v67;
      v69 = sub_225CCE954();
      v70 = *(v69 - 8);
      v71 = v126;
      (*(v70 + 56))(v126, 1, 1, v69);
      LODWORD(v69) = (*(v70 + 48))(v71, 1, v69);
      sub_2259CB640(v71, &unk_27D73B050, &unk_225CD3AD0);
      if (v69)
      {
        v72 = 466;
      }

      else
      {
        v72 = 23;
      }

      v73 = sub_225B2C374(v64);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v73;
      sub_225B2C4A0(v65, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

      v75 = aBlock;
      v76 = sub_225B29AA0(0, 1, 1, v64);
      v78 = *(v76 + 2);
      v77 = *(v76 + 3);
      if (v78 >= v77 >> 1)
      {
        v76 = sub_225B29AA0((v77 > 1), v78 + 1, 1, v76);
      }

      *(v76 + 2) = v78 + 1;
      v79 = &v76[56 * v78];
      *(v79 + 4) = 0xD000000000000028;
      *(v79 + 5) = 0x8000000225D24F20;
      *(v79 + 6) = 0xD000000000000026;
      *(v79 + 7) = 0x8000000225D24E50;
      *(v79 + 8) = 0xD00000000000003BLL;
      *(v79 + 9) = v136;
      *(v79 + 10) = 93;
      *v68 = v72;
      *(v68 + 8) = v76;
      *(v68 + 16) = 0xD000000000000028;
      *(v68 + 24) = 0x8000000225D24F20;
      *(v68 + 32) = v75;
      *(v68 + 40) = 0;
      v80 = v127;
      *v127 = v66;
      swift_storeEnumTagMultiPayload();
      v132(v80);

      return sub_2259CB640(v80, &qword_27D740388, &qword_225CF9FD0);
    }

    else
    {
      v81 = v117;
      (*(v62 + 32))(v117, v21, TupleTypeMetadata2);
      v82 = v124;
      (*(v62 + 16))(v124, v81, TupleTypeMetadata2);
      v83 = *v82;
      (*(*(v134 - 8) + 8))(v82 + *(TupleTypeMetadata2 + 48));
      if ([v83 wasLocal] && (v84 = objc_msgSend(v83, sel_getLocalUrl)) != 0)
      {
        v85 = v84;
        sub_225CCCE34();

        v86 = v136;
        v87 = v135;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v88 = off_28105B918;
        v89 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v90 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v90));
        (*(v87 + 16))(v112, &v88[v89], v86);
        os_unfair_lock_unlock(&v88[v90]);
        v91 = sub_225CCD934();
        v92 = sub_225CCECF4();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&dword_2259A7000, v91, v92, "Already have local asset, returning without download", v93, 2u);
          MEMORY[0x22AA6F950](v93, -1, -1);
        }

        (*(v87 + 8))(v112, v86);
        v94 = v120;
        v95 = v133;
        v96 = v122;
        v97 = v121;
        (*(v120 + 16))(v133, v122, v121);
        swift_storeEnumTagMultiPayload();
        v132(v95);

        sub_2259CB640(v95, &qword_27D740388, &qword_225CF9FD0);
        (*(v94 + 8))(v96, v97);
      }

      else
      {
        v99 = v136;
        v98 = v137;
        v100 = v135;
        if (qword_28105B910 != -1)
        {
          swift_once();
        }

        v101 = off_28105B918;
        v102 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
        v103 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
        os_unfair_lock_lock((off_28105B918 + v103));
        (*(v100 + 16))(v113, &v101[v102], v99);
        os_unfair_lock_unlock(&v101[v103]);
        v104 = sub_225CCD934();
        v105 = sub_225CCECF4();
        if (os_log_type_enabled(v104, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&dword_2259A7000, v104, v105, "Downloading asset", v106, 2u);
          MEMORY[0x22AA6F950](v106, -1, -1);
        }

        (*(v100 + 8))(v113, v99);
        v107 = *(v123 + 16);
        v108 = swift_allocObject();
        v108[2] = v132;
        v108[3] = v98;
        v108[4] = v83;
        *&v141 = sub_225BF5D80;
        *(&v141 + 1) = v108;
        *&aBlock = MEMORY[0x277D85DD0];
        *(&aBlock + 1) = 1107296256;
        *&v140 = sub_225BF51C4;
        *(&v140 + 1) = &block_descriptor_33_0;
        v109 = _Block_copy(&aBlock);

        v110 = v83;

        [v110 startDownload:v107 completionWithError:v109];

        _Block_release(v109);
      }

      return (*(v62 + 8))(v117, v63);
    }
  }
}

id sub_225BF3BD4@<X0>(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, id *a4@<X8>)
{
  v8 = sub_225CCEFC4();
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x28223BE20](v9);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[0] = *a1;
  result = [v22[0] attributes];
  if (result)
  {
    v16 = result;
    v17 = sub_225CCE2D4();

    sub_225BF3F38(v17, a2, a3);

    (*(v12 + 56))(v11, 0, 1, a2);
    v18 = *(v12 + 32);
    v18(v14, v11, a2);
    sub_2259D8718(255, &qword_27D740380, 0x277D289C0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v20 = *(TupleTypeMetadata2 + 48);
    *a4 = v22[0];
    v18(a4 + v20, v14, a2);
    (*(*(TupleTypeMetadata2 - 8) + 56))(a4, 0, 1, TupleTypeMetadata2);
    v21 = v22[0];

    return v21;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_225BF3F38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v48 - v5;
  v7 = objc_allocWithZone(MEMORY[0x277CBEAC0]);
  v8 = sub_225CCE2B4();
  v9 = [v7 initWithDictionary_];

  v10 = objc_opt_self();
  v61 = 0;
  v11 = [v10 dataWithPropertyList:v9 format:200 options:0 error:&v61];
  v12 = v61;
  if (v11)
  {
    v13 = sub_225CCCFA4();
    v15 = v14;

    sub_225CCCC14();
    swift_allocObject();
    sub_225CCCC04();
    sub_225CCCBF4();
    if (!v3)
    {

      sub_2259BEF00(v13, v15);

      return;
    }

    sub_2259BEF00(v13, v15);
    v56 = 0;
    v16 = v3;
  }

  else
  {
    v17 = v12;
    v16 = sub_225CCCCC4();

    swift_willThrow();
    v56 = 0;
  }

  v54 = "ad catalog, returned error: ";
  v53 = "Conversion error";
  v18 = v16;
  v19 = sub_225B2C248(MEMORY[0x277D84F90]);
  sub_2259CB5EC();
  v55 = swift_allocError();
  v21 = v20;
  swift_getErrorValue();
  v22 = v60;
  v23 = v16;
  sub_225B21FAC(v22, &v61);

  v24 = v62;
  v58 = v9;
  if (v62)
  {
    v52 = v61;
    v50 = v63;
    v51 = v64;
    v25 = v65;
    v49 = v66;
  }

  else
  {
    v61 = v16;
    v26 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AC48, &qword_225CD75F0);
    sub_2259D8718(0, &qword_281059A90, 0x277CCA9B8);
    if (swift_dynamicCast())
    {
      v27 = v59;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_225CD30F0;
      *(inited + 32) = 20;
      v29 = [v27 code];
      v30 = MEMORY[0x277D83BF8];
      *(inited + 64) = MEMORY[0x277D83B88];
      *(inited + 72) = v30;
      *(inited + 40) = v29;
      v25 = sub_225B2C374(inited);
      swift_setDeallocating();
      sub_2259CB640(inited + 32, &qword_27D73B060, &unk_225CD3AE0);

      v31 = v16;
      v51 = 0;
      v50 = 0;
      v52 = 0;
      v24 = MEMORY[0x277D84F90];
    }

    else
    {
      v61 = v16;
      v32 = v16;
      v33 = sub_225CCE954();
      v34 = swift_dynamicCast();
      v35 = *(v33 - 8);
      (*(v35 + 56))(v6, v34 ^ 1u, 1, v33);
      v36 = (*(v35 + 48))(v6, 1, v33);
      sub_2259CB640(v6, &unk_27D73B050, &unk_225CD3AD0);
      if (v36)
      {
        v37 = 0;
      }

      else
      {
        v37 = 23;
      }

      v52 = v37;
      v24 = MEMORY[0x277D84F90];
      v25 = sub_225B2C374(MEMORY[0x277D84F90]);
      v38 = v16;
      v51 = 0x8000000225D24FD0;
      v50 = 0xD000000000000010;
    }

    v49 = v16;
  }

  v57 = 0x8000000225D24FD0;
  v39 = v54 | 0x8000000000000000;
  v40 = v53 | 0x8000000000000000;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v61 = v25;
  sub_225B2C4A0(v19, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v61);

  v42 = v61;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v24 = sub_225B29AA0(0, *(v24 + 2) + 1, 1, v24);
  }

  v44 = *(v24 + 2);
  v43 = *(v24 + 3);
  if (v44 >= v43 >> 1)
  {
    v24 = sub_225B29AA0((v43 > 1), v44 + 1, 1, v24);
  }

  *(v24 + 2) = v44 + 1;
  v45 = &v24[56 * v44];
  v46 = v57;
  *(v45 + 4) = 0xD000000000000010;
  *(v45 + 5) = v46;
  *(v45 + 6) = 0xD000000000000026;
  *(v45 + 7) = v39;
  *(v45 + 8) = 0xD000000000000016;
  *(v45 + 9) = v40;
  *(v45 + 10) = 158;
  *v21 = v52;
  v47 = v50;
  *(v21 + 8) = v24;
  *(v21 + 16) = v47;
  *(v21 + 24) = v51;
  *(v21 + 32) = v42;
  *(v21 + 40) = v49;
  swift_willThrow();
}

uint64_t sub_225BF45CC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4, void *a5)
{
  v54 = a5;
  v57 = a3;
  v58 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v52 - v7;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388, &qword_225CF9FD0);
  MEMORY[0x28223BE20](v53);
  v10 = (&v52 - v9);
  v11 = sub_225CCDA34();
  v56 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_225CCDA64();
  v14 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_225CCDA44();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 10 && a1)
  {
    v56 = v10;
    aBlock = 0;
    v60 = 0xE000000000000000;
    sub_225CCF204();

    aBlock = 0xD00000000000001DLL;
    v60 = 0x8000000225D24F90;
    v65 = a1;
    v29 = MEMORY[0x277D83B88];
    v30 = MEMORY[0x277D83BF8];
    v31 = sub_225CCF824();
    MEMORY[0x22AA6CE70](v31);

    v33 = aBlock;
    v32 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D73AA10, &unk_225CD4660);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_225CD30F0;
    *(inited + 32) = 20;
    v35 = inited + 32;
    *(inited + 64) = v29;
    *(inited + 72) = v30;
    *(inited + 40) = a1;
    v36 = sub_225B2C374(inited);
    swift_setDeallocating();
    sub_2259CB640(v35, &qword_27D73B060, &unk_225CD3AE0);
    sub_2259CB5EC();
    v37 = swift_allocError();
    v39 = v38;
    v40 = sub_225CCE954();
    v41 = *(v40 - 8);
    (*(v41 + 56))(v8, 1, 1, v40);
    LODWORD(v40) = (*(v41 + 48))(v8, 1, v40);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v40)
    {
      v42 = 467;
    }

    else
    {
      v42 = 23;
    }

    v43 = MEMORY[0x277D84F90];
    v44 = sub_225B2C374(MEMORY[0x277D84F90]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    aBlock = v44;
    sub_225B2C4A0(v36, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &aBlock);

    v46 = aBlock;
    v47 = sub_225B29AA0(0, 1, 1, v43);
    v49 = *(v47 + 2);
    v48 = *(v47 + 3);
    if (v49 >= v48 >> 1)
    {
      v47 = sub_225B29AA0((v48 > 1), v49 + 1, 1, v47);
    }

    *(v47 + 2) = v49 + 1;
    v50 = &v47[56 * v49];
    *(v50 + 4) = v33;
    *(v50 + 5) = v32;
    *(v50 + 6) = 0xD000000000000026;
    *(v50 + 7) = 0x8000000225D24E50;
    *(v50 + 8) = 0xD00000000000003BLL;
    *(v50 + 9) = 0x8000000225D24F50;
    *(v50 + 10) = 108;
    *v39 = v42;
    *(v39 + 8) = v47;
    *(v39 + 16) = v33;
    *(v39 + 24) = v32;
    *(v39 + 32) = v46;
    *(v39 + 40) = 0;
    v51 = v56;
    *v56 = v37;
    swift_storeEnumTagMultiPayload();
    v57(v51);
    return sub_2259CB640(v51, &qword_27D740388, &qword_225CF9FD0);
  }

  else
  {
    sub_2259D8718(0, &qword_28105BFA8, 0x277D85C78);
    (*(v18 + 104))(v20, *MEMORY[0x277D851C8], v17);
    v21 = sub_225CCEDE4();
    (*(v18 + 8))(v20, v17);
    v22 = swift_allocObject();
    v23 = v54;
    v24 = v57;
    v25 = v58;
    v22[2] = v54;
    v22[3] = v24;
    v22[4] = v25;
    v63 = sub_225BF5D8C;
    v64 = v22;
    aBlock = MEMORY[0x277D85DD0];
    v60 = 1107296256;
    v61 = sub_225A1A000;
    v62 = &block_descriptor_39;
    v26 = _Block_copy(&aBlock);
    v27 = v23;

    sub_225CCDA54();
    v65 = MEMORY[0x277D84F90];
    sub_225BF5C20();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170, &qword_225CD7CD0);
    sub_2259D8B24(&qword_28105BFD0, &unk_27D73B170, &qword_225CD7CD0, MEMORY[0x277D83970]);
    sub_225CCF0E4();
    MEMORY[0x22AA6D600](0, v16, v13, v26);
    _Block_release(v26);

    v56[1](v13, v11);
    (*(v14 + 8))(v16, v55);
  }
}

uint64_t sub_225BF4D10(void *a1, void (*a2)(char *), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B050, &unk_225CD3AD0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D740388, &qword_225CF9FD0);
  v9 = MEMORY[0x28223BE20](v41);
  v11 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = v39 - v12;
  v14 = sub_225CCCEA4();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = v39 - v19;
  if ([a1 refreshState] && objc_msgSend(a1, sel_wasLocal) && (v21 = objc_msgSend(a1, sel_getLocalUrl)) != 0)
  {
    v22 = v21;
    sub_225CCCE34();

    (*(v15 + 32))(v20, v18, v14);
    (*(v15 + 16))(v13, v20, v14);
    swift_storeEnumTagMultiPayload();
    a2(v13);
    sub_2259CB640(v13, &qword_27D740388, &qword_225CF9FD0);
    return (*(v15 + 8))(v20, v14);
  }

  else
  {
    v39[1] = a3;
    v40 = a2;
    v39[0] = 0x8000000225D24F50;
    v24 = MEMORY[0x277D84F90];
    v25 = sub_225B2C248(MEMORY[0x277D84F90]);
    sub_2259CB5EC();
    v26 = swift_allocError();
    v28 = v27;
    v29 = sub_225CCE954();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v8, 1, 1, v29);
    LODWORD(v29) = (*(v30 + 48))(v8, 1, v29);
    sub_2259CB640(v8, &unk_27D73B050, &unk_225CD3AD0);
    if (v29)
    {
      v31 = 468;
    }

    else
    {
      v31 = 23;
    }

    v32 = sub_225B2C374(v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = v32;
    sub_225B2C4A0(v25, sub_225B2AC40, 0, isUniquelyReferenced_nonNull_native, &v42);

    v34 = v42;
    v35 = sub_225B29AA0(0, 1, 1, v24);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_225B29AA0((v36 > 1), v37 + 1, 1, v35);
    }

    *(v35 + 2) = v37 + 1;
    v38 = &v35[56 * v37];
    *(v38 + 4) = 0xD000000000000018;
    *(v38 + 5) = 0x8000000225D24FB0;
    *(v38 + 6) = 0xD000000000000026;
    *(v38 + 7) = 0x8000000225D24E50;
    *(v38 + 8) = 0xD00000000000003BLL;
    *(v38 + 9) = v39[0];
    *(v38 + 10) = 117;
    *v28 = v31;
    *(v28 + 8) = v35;
    *(v28 + 16) = 0xD000000000000018;
    *(v28 + 24) = 0x8000000225D24FB0;
    *(v28 + 32) = v34;
    *(v28 + 40) = 0;
    *v11 = v26;
    swift_storeEnumTagMultiPayload();
    v40(v11);
    return sub_2259CB640(v11, &qword_27D740388, &qword_225CF9FD0);
  }
}

void sub_225BF51CC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t MobileAssetManager.evictAssets(type:completion:)(char *a1, uint64_t a2, uint64_t a3)
{
  v8 = *a1;
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  *(v5 + 24) = a3;

  v6 = sub_225B2E928(MEMORY[0x277D84F90]);
  sub_225BF1994(&v8, v6, sub_225BF56A8, v5);
}

uint64_t sub_225BF52FC(uint64_t a1, char a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v8 = sub_225CCDA34();
  v26 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_225CCDA64();
  v24 = *(v11 - 8);
  v25 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_225CCDA44();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return a3(a1);
  }

  sub_2259D8718(0, &qword_28105BFA8, 0x277D85C78);
  (*(v15 + 104))(v17, *MEMORY[0x277D851C8], v14);

  v23 = sub_225CCEDE4();
  (*(v15 + 8))(v17, v14);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a3;
  v19[4] = a4;
  aBlock[4] = sub_225BF5BFC;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_225A1A000;
  aBlock[3] = &block_descriptor_9;
  v20 = _Block_copy(aBlock);

  sub_225CCDA54();
  v27 = MEMORY[0x277D84F90];
  sub_225BF5C20();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D73B170, &qword_225CD7CD0);
  sub_2259D8B24(&qword_28105BFD0, &unk_27D73B170, &qword_225CD7CD0, MEMORY[0x277D83970]);
  sub_225CCF0E4();
  v21 = v23;
  MEMORY[0x22AA6D600](0, v13, v10, v20);
  _Block_release(v20);

  (*(v26 + 8))(v10, v8);
  (*(v24 + 8))(v13, v25);
}

void sub_225BF56B4(unint64_t a1, void (*a2)(void), uint64_t a3)
{
  v41 = sub_225CCD954();
  v6 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[1] = a3;
  v31 = a2;
  if (a1 >> 62)
  {
LABEL_20:
    v10 = sub_225CCF144();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_21:
    v31(0);
    return;
  }

  v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_21;
  }

LABEL_3:
  v11 = 0;
  v12 = a1 & 0xC000000000000001;
  v36 = a1 & 0xFFFFFFFFFFFFFF8;
  v40 = (v6 + 2);
  v38 = (v6 + 1);
  v6 = &off_278575000;
  *&v7 = 136315138;
  v35 = v7;
  v33 = v9;
  v34 = a1;
  v32 = v10;
  v39 = a1 & 0xC000000000000001;
  while (1)
  {
    if (v12)
    {
      v14 = MEMORY[0x22AA6DA80](v11, a1);
    }

    else
    {
      if (v11 >= *(v36 + 16))
      {
        goto LABEL_19;
      }

      v14 = *(a1 + 8 * v11 + 32);
    }

    v15 = v14;
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    if ([v14 v6[395]])
    {
      break;
    }

LABEL_6:

    ++v11;
    if (v16 == v10)
    {
      goto LABEL_21;
    }
  }

  if (qword_28105B910 != -1)
  {
    swift_once();
  }

  v17 = off_28105B918;
  v18 = *(*off_28105B918 + *MEMORY[0x277D841D0] + 16);
  v19 = (*(*off_28105B918 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((off_28105B918 + v19));
  (*v40)(v9, &v17[v18], v41);
  os_unfair_lock_unlock(&v17[v19]);
  v20 = v15;
  v21 = sub_225CCD934();
  v22 = sub_225CCED04();
  if (!os_log_type_enabled(v21, v22))
  {

    (*v38)(v9, v41);
    v13 = v20;
LABEL_5:
    [v13 purgeSync];
    v12 = v39;
    v6 = &off_278575000;
    goto LABEL_6;
  }

  v23 = swift_slowAlloc();
  v24 = swift_slowAlloc();
  v42 = v24;
  *v23 = v35;
  v25 = [v20 assetId];
  v37 = v20;

  if (v25)
  {
    v26 = sub_225CCE474();
    v28 = v27;

    v29 = sub_2259BE198(v26, v28, &v42);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_2259A7000, v21, v22, "Purging result with id %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x22AA6F950](v24, -1, -1);
    MEMORY[0x22AA6F950](v23, -1, -1);

    v9 = v33;
    (*v38)(v33, v41);
    a1 = v34;
    v10 = v32;
    v13 = v37;
    goto LABEL_5;
  }

  __break(1u);
}